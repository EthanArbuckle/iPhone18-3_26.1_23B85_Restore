@interface _UIFlexInteractionLittleGlowView
- (CGRect)bounds;
- (_UIFlexInteractionLittleGlowView)initWithCoder:(id)a3;
- (_UIFlexInteractionLittleGlowView)initWithFrame:(CGRect)a3;
- (void)setBounds:(CGRect)a3;
@end

@implementation _UIFlexInteractionLittleGlowView

- (_UIFlexInteractionLittleGlowView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = _s14LittleGlowViewCMa();
  [(UIView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = _s14LittleGlowViewCMa();
  v7 = v9.receiver;
  [(UIView *)&v9 setBounds:x, y, width, height];
  v8 = [v7 layer];
  [v7 bounds];
  [v8 setShadowRadius_];
}

- (_UIFlexInteractionLittleGlowView)initWithCoder:(id)a3
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

@end