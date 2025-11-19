@interface _UILightEffectContainerFillSurface.SurfaceView
- (_TtCV5UIKit34_UILightEffectContainerFillSurface11SurfaceView)initWithCoder:(id)a3;
- (_TtCV5UIKit34_UILightEffectContainerFillSurface11SurfaceView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation _UILightEffectContainerFillSurface.SurfaceView

- (_TtCV5UIKit34_UILightEffectContainerFillSurface11SurfaceView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for _UILightEffectContainerFillSurface.SurfaceView();
  v7 = [(UIView *)&v12 initWithFrame:x, y, width, height];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 whiteColor];
  [(UIView *)v9 setBackgroundColor:v10];

  return v9;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_188DF3218();
}

- (_TtCV5UIKit34_UILightEffectContainerFillSurface11SurfaceView)initWithCoder:(id)a3
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

@end