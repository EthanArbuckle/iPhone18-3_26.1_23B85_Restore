@interface SpatialPhotoMTKView
- (_TtC18PhotosSpatialMediaP33_316EEE9A3719DF1F49F4981B8747918219SpatialPhotoMTKView)initWithFrame:(CGRect)frame device:(id)device;
- (void)draw;
@end

@implementation SpatialPhotoMTKView

- (void)draw
{
  selfCopy = self;
  sub_25E6C4590();
}

- (_TtC18PhotosSpatialMediaP33_316EEE9A3719DF1F49F4981B8747918219SpatialPhotoMTKView)initWithFrame:(CGRect)frame device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectRetain();
  return sub_25E6C4640(device, x, y, width, height);
}

@end