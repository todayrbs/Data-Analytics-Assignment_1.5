# Session 2 Asssignment 3

m <- replicate(10, rnorm(10), simplify = "matrix")  # matrix 10 x 10 with random normal numbers
m
m <- as.data.frame(m) # transforming into data frame
View(m)

library(rbenchmark)
benchmark(
  vect = as.vector(m),          # vecotrized form
  conc = (n <- as.vector(for (i in seq(nrow(m))) { 
    for (j in seq(ncol(m))) {   # nested for 
      print(2*sin(m[i, j]))  # performing algebraic function on each element
    }
  }))
)