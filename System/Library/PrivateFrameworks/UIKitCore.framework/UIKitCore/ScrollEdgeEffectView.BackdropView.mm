@interface ScrollEdgeEffectView.BackdropView
+ (Class)layerClass;
- (NSString)description;
- (_TtCC5UIKit20ScrollEdgeEffectView12BackdropView)initWithCoder:(id)coder;
- (_TtCC5UIKit20ScrollEdgeEffectView12BackdropView)initWithFrame:(CGRect)frame;
- (void)backdropLayer:(id)layer didChangeLuma:(double)luma;
@end

@implementation ScrollEdgeEffectView.BackdropView

+ (Class)layerClass
{
  sub_188FF7B1C();

  return swift_getObjCClassFromMetadata();
}

- (void)backdropLayer:(id)layer didChangeLuma:(double)luma
{
  layerCopy = layer;
  selfCopy = self;
  sub_188FF7A70(luma);
}

- (NSString)description
{
  selfCopy = self;
  sub_188FF778C();

  v3 = sub_18A4A7258();

  return v3;
}

- (_TtCC5UIKit20ScrollEdgeEffectView12BackdropView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtCC5UIKit20ScrollEdgeEffectView12BackdropView)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_lumaDidChangeHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = self + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma;
  *v5 = 0;
  v5[8] = 1;
  v9.receiver = self;
  v9.super_class = _s12BackdropViewCMa();
  coderCopy = coder;
  v7 = [(UIView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end