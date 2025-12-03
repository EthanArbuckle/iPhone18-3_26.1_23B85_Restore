@interface _UILightEffectContainerFillSurface.SurfaceView
- (_TtCV5UIKit34_UILightEffectContainerFillSurface11SurfaceView)initWithCoder:(id)coder;
- (_TtCV5UIKit34_UILightEffectContainerFillSurface11SurfaceView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _UILightEffectContainerFillSurface.SurfaceView

- (_TtCV5UIKit34_UILightEffectContainerFillSurface11SurfaceView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for _UILightEffectContainerFillSurface.SurfaceView();
  height = [(UIView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = height;
  whiteColor = [v8 whiteColor];
  [(UIView *)v9 setBackgroundColor:whiteColor];

  return v9;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188DF3218();
}

- (_TtCV5UIKit34_UILightEffectContainerFillSurface11SurfaceView)initWithCoder:(id)coder
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

@end