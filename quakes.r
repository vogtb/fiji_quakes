# Read in csv data
quakes = read.csv("quakes.csv")

# Load library
library("rworldmap")

# Heatmap colors
colors = rainbow(100, alpha = 1)

# Get map, set limits
newmap <- getMap(resolution = "low")  
plot(newmap, ylim = c(-40, -10), xlim = c(165, 190), asp = 1)

# Plotting data points
points(quakes$long, quakes$lat, col = colors[quakes$mag*10], cex = 0.4, pch = 19)

# Adding legend
legend("bottomleft", seq(4, 6.4, 0.2), cex = .8, col = colors[seq(40, 64, 2)], pch = c(19,19), legend = seq(4, 6.4, 0.2), title = "Magnitude Key")

# Adding titles and ticks
title(main = "Fiji Earthquakes", xlab = "Latitude", ylab = "Longitude")
axis(side = 1, tck = 10, lty = 0)
axis(side = 2, tck = 10, lty = 0)
