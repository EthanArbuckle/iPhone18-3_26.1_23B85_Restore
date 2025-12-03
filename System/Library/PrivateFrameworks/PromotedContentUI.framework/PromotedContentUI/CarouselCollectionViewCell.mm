@interface CarouselCollectionViewCell
- (void)prepareForReuse;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation CarouselCollectionViewCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1C19AFDE4();
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_1C198FB8C(0, &qword_1EDE60C78);
  sub_1C19B077C();
  v6 = sub_1C1A6F5FC();
  eventCopy = event;
  selfCopy = self;
  sub_1C19AFF84(v6, event);
}

@end