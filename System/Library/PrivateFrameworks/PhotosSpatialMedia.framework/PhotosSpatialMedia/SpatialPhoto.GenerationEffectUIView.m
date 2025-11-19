@interface SpatialPhoto.GenerationEffectUIView
+ (Class)layerClass;
- (void)didMoveToWindow;
- (void)drawFrameWithDisplayLink:(id)a3;
- (void)layoutSubviews;
@end

@implementation SpatialPhoto.GenerationEffectUIView

+ (Class)layerClass
{
  sub_25E6CFE54();

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_25E6D0270();
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_25E6D0430();
}

- (void)drawFrameWithDisplayLink:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_25E6D068C(v4);
}

@end