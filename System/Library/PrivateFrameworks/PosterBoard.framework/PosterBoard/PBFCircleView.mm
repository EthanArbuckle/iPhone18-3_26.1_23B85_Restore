@interface PBFCircleView
+ (Class)layerClass;
- (double)strokeWidth;
- (void)layoutSubviews;
- (void)setStrokeWidth:(double)width;
@end

@implementation PBFCircleView

- (double)strokeWidth
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_21B6C9124();

  return v5;
}

- (void)setStrokeWidth:(double)width
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_21B6C9134();
}

+ (Class)layerClass
{
  sub_21B61785C(0, &qword_27CD93BF0);

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  selfCopy = self;
  PBFCircleView.layoutSubviews()();
}

@end