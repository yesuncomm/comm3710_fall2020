## LA.3: Examining Data
## Student Name
# Sat Jan 30 11:45:35 2021 ------------------------------

 

## Load packages
library(tidyverse)
library(descr)

## Set working directory
setwd("C: xxxxxx")

## 1. Load dataset
hdata <- read.csv("HELP.csv") # load HELP.csv
        # loaded data of 453 observations of 27 variables
        # `hdata` can be a name of the student's choice

## 2. Make frequency tables for sex and d1
freq(hdata$sex) # freq table for sex
freq(hdata$d1) # freq table for d1

### They may also use `table` to get the frequency
#table(hdata$sex)
#table(hdata$d1)

## 2a. How many patients in the study are female?
freq(hdata$sex) # 107 female patients

## 2b. How many have never been hospitalized for medical problems?
freq(hdata$d1) # 92 have never been hospitalized for medical problems

## 2c. What percentage of patients in the study have been hospitalized fewer than 5 times?
## We won't expect students to produce these commands in .R file. Just look for the right answer. 

lessfive <- (92 + 120 + 92 + 36 + 37 + 18) / 453
lessfive # 87.2%

# OR 
freq(as.ordered(hdata$d1)) ## will give the cumulative percentage. 


## 3. Subset data to incl substance == cocaine and over 40 years old
hsub <- subset(hdata, substance == "cocaine" & age >= 40) # subset data
        # contains 27 obs of 27 var

### equivalent--
#hsub <- hdata[hdata$substance == "cocaine" & hdata$age >= 40, ] -- covered in the video

## 4. Make freq table based on subset
freq(hsub$sex) # freq table for sex (subset of data)
#or table(hsub$sex)

## 4a. 27 patients are at least 40 years old and have cocaine listed as his/her primary abuse substance.

## 4b. 20 patients are at least 40 years old, have cocaine listed as his/her primary abuse substance, and are male.