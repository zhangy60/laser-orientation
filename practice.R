setwd("C:/Users/yzh7381/Documents/GitHub")
install.packages(tidyverse)
library(tidyverse)
?library(tidyverse)
read.csv("C:/Users/yzh7381/Documents/GitHub/laser-orientation/data/sci-online-classes.csv")
data=read.csv("C:/Users/yzh7381/Documents/GitHub/laser-orientation/data/sci-online-classes.csv")
dim(data)
ls(data)
head(data, 10)
typeof(data)
view(data)

setwd("C:/Users/yzh7381/Documents/GitHub/laser-orientation")


# pipes, |> can be replaced with %%
sci_data <- read_csv("data/sci-online-classes.csv") %>% # read in data
  select(student_id, FinalGradeCEMS, course_id, ) %>% # select variables
  rename(final_grade = FinalGradeCEMS) %>% # rename FinalGradeCEMS
  filter(final_grade > .5) %>% # keep grades higher than 50% 
  drop_na() # remove rows with missing data

sci_data


add_numbers <- function(x, y) {
  x+y
}

add_numbers(3,5)

ggplot(sci_data, aes(x = final_grade)) +
  geom_histogram(fill = "blue")
