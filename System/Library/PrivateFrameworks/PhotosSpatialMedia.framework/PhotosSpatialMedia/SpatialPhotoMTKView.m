@interface SpatialPhotoMTKView
- (_TtC18PhotosSpatialMediaP33_316EEE9A3719DF1F49F4981B8747918219SpatialPhotoMTKView)initWithFrame:(CGRect)a3 device:(id)a4;
- (void)draw;
@end

@implementation SpatialPhotoMTKView

- (void)draw
{
  v2 = self;
  sub_25E6C4590();
}

- (_TtC18PhotosSpatialMediaP33_316EEE9A3719DF1F49F4981B8747918219SpatialPhotoMTKView)initWithFrame:(CGRect)a3 device:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectRetain();
  return sub_25E6C4640(a4, x, y, width, height);
}

@end