@interface _UIFlexInteractionLittleGlowView
- (CGRect)bounds;
- (_UIFlexInteractionLittleGlowView)initWithCoder:(id)coder;
- (_UIFlexInteractionLittleGlowView)initWithFrame:(CGRect)frame;
- (void)setBounds:(CGRect)bounds;
@end

@implementation _UIFlexInteractionLittleGlowView

- (_UIFlexInteractionLittleGlowView)initWithFrame:(CGRect)frame
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9.receiver = self;
  v9.super_class = _s14LittleGlowViewCMa();
  v7 = v9.receiver;
  [(UIView *)&v9 setBounds:x, y, width, height];
  layer = [v7 layer];
  [v7 bounds];
  [layer setShadowRadius_];
}

- (_UIFlexInteractionLittleGlowView)initWithCoder:(id)coder
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

@end