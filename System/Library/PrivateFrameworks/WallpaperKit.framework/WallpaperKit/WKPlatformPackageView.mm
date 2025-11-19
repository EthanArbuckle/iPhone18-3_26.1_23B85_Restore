@interface WKPlatformPackageView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC12WallpaperKit21WKPlatformPackageView)initWithCoder:(id)a3;
- (_TtC12WallpaperKit21WKPlatformPackageView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation WKPlatformPackageView

- (_TtC12WallpaperKit21WKPlatformPackageView)initWithFrame:(CGRect)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize);
  *v3 = 0;
  v3[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(&self->super.super + OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_currentScaleEffect) = _Q0;
  result = sub_1E4AAACB0();
  __break(1u);
  return result;
}

- (_TtC12WallpaperKit21WKPlatformPackageView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize);
  *v3 = 0;
  v3[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(&self->super.super + OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_currentScaleEffect) = _Q0;
  result = sub_1E4AAACB0();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = vmulq_f64(*(&self->super.super + OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_originalSize), *(&self->super.super + OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_currentScaleEffect));
  v4 = v3.f64[1];
  result.width = v3.f64[0];
  result.height = v4;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1E4A7B414(x, y, width, height);
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(WKPlatformPackageView *)&v7 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC12WallpaperKit21WKPlatformPackageView_package];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 rootLayer];
    if (v5)
    {
      v6 = v5;
      [v2 bounds];
      UIRectGetCenter();
      [v6 setPosition_];

      v4 = v6;
    }
  }
}

@end