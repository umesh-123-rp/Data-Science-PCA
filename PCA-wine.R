wine<-read.csv("D:\\Data\\IN102385\\My Documents\\Wine.csv")
sum(is.na(wine))
wine1<-scale(wine)
summary(wine1)
pairs(wine1)
pca<-princomp(wine1, cor = TRUE,scores = TRUE, covmat = NULL)
summary(pca)
pca$scores
pca_w<-pca$scores[,1:7]
new_data<-cbind(wine1,pca_w)
View(new_data)
clust_data <- new_data[,15:21]
#pca$loadings
plot(pca$scores[,1:2],col="Red",cex = 0.6)
text(pca$scores[,1:2], labels=c(1:178), cex= .7)
 
