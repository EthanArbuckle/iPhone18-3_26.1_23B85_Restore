@interface ScrollEdgeEffectView.BackdropView
+ (Class)layerClass;
- (NSString)description;
- (_TtCC5UIKit20ScrollEdgeEffectView12BackdropView)initWithCoder:(id)a3;
- (_TtCC5UIKit20ScrollEdgeEffectView12BackdropView)initWithFrame:(CGRect)a3;
- (void)backdropLayer:(id)a3 didChangeLuma:(double)a4;
@end

@implementation ScrollEdgeEffectView.BackdropView

+ (Class)layerClass
{
  sub_188FF7B1C();

  return swift_getObjCClassFromMetadata();
}

- (void)backdropLayer:(id)a3 didChangeLuma:(double)a4
{
  v6 = a3;
  v7 = self;
  sub_188FF7A70(a4);
}

- (NSString)description
{
  v2 = self;
  sub_188FF778C();

  v3 = sub_18A4A7258();

  return v3;
}

- (_TtCC5UIKit20ScrollEdgeEffectView12BackdropView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_lumaDidChangeHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = self + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma;
  *v8 = 0;
  v8[8] = 1;
  v10.receiver = self;
  v10.super_class = _s12BackdropViewCMa();
  return [(UIView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtCC5UIKit20ScrollEdgeEffectView12BackdropView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_lumaDidChangeHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = self + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma;
  *v5 = 0;
  v5[8] = 1;
  v9.receiver = self;
  v9.super_class = _s12BackdropViewCMa();
  v6 = a3;
  v7 = [(UIView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end