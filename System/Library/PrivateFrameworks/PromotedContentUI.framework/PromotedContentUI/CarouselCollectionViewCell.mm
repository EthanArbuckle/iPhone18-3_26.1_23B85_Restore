@interface CarouselCollectionViewCell
- (void)prepareForReuse;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation CarouselCollectionViewCell

- (void)prepareForReuse
{
  v2 = self;
  sub_1C19AFDE4();
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_1C198FB8C(0, &qword_1EDE60C78);
  sub_1C19B077C();
  v6 = sub_1C1A6F5FC();
  v7 = a4;
  v8 = self;
  sub_1C19AFF84(v6, a4);
}

@end