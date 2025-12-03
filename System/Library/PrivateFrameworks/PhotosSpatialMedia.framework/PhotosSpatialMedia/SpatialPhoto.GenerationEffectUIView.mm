@interface SpatialPhoto.GenerationEffectUIView
+ (Class)layerClass;
- (void)didMoveToWindow;
- (void)drawFrameWithDisplayLink:(id)link;
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
  selfCopy = self;
  sub_25E6D0270();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_25E6D0430();
}

- (void)drawFrameWithDisplayLink:(id)link
{
  linkCopy = link;
  selfCopy = self;
  sub_25E6D068C(linkCopy);
}

@end