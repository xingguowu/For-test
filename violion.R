X1 <- read_excel("~/Desktop/1.xlsx")
X1= arrange(X1, desc(location))
X1<-mutate(X1,location=factor(location,levels=c("Stem-N","Seed-N")))

ggplot(data=X1,aes(x=location,y=content))+
  geom_violin(aes(fill=location))+
  #geom_boxplot(width=0.1)+
  geom_point(position =position_jitter(width=0.15),size=0.4)+
  geom_line(data=X1,aes(group=ID),color='gray',lwd=0.5)+
  scale_fill_npg()
