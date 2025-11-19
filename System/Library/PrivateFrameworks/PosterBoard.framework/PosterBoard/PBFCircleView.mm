@interface PBFCircleView
+ (Class)layerClass;
- (double)strokeWidth;
- (void)layoutSubviews;
- (void)setStrokeWidth:(double)a3;
@end

@implementation PBFCircleView

- (double)strokeWidth
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_21B6C9124();

  return v5;
}

- (void)setStrokeWidth:(double)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_21B6C9134();
}

+ (Class)layerClass
{
  sub_21B61785C(0, &qword_27CD93BF0);

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  v2 = self;
  PBFCircleView.layoutSubviews()();
}

@end