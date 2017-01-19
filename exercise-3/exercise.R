# Load R's "USPersonalExpenditure" dataest using the "data()" function
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you.  Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
my.data <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(my.data)

# Why are they so strange?

# What are the row names of your dataframe?
rownames(my.data)

# Create a column "category" that is equal to your rownames
my.data$category = rownames(my.data)

# How much money was spent on personal care in 1940?
my.data["Personal Care", "X1940"]

# How much money was spent on Food and Tobacco in 1960
my.data["Food and Tobacco", "X1960"]

# What was the highest expenditure category in 1960?
my.data[my.data$X1960 == max(my.data$X1960), "category"]

# Write a function that takes in a year as a parameter, and
# returns the highest spending category of that year
HighestSpending <- function(year) {
    return (my.data[my.data[year] == max(my.data[year]), "category"])
}

# Using your function, determine the highest spending category of each year
HighestSpending("X1940")
HighestSpending("X1945")
HighestSpending("X1950")
HighestSpending("X1955")
HighestSpending("X1960")

### Bonus ###
# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
