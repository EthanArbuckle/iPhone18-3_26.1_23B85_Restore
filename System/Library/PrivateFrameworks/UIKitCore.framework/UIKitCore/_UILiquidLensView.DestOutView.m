@interface _UILiquidLensView.DestOutView
- (_TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView)initWithCoder:(id)a3;
- (_TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
@end

@implementation _UILiquidLensView.DestOutView

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = _s11DestOutViewCMa();
  v2 = v3.receiver;
  [(UIView *)&v3 didMoveToWindow];
  sub_1891F8BC4();
}

- (_TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView_matchMoveAnimation) = 0;
  v8.receiver = self;
  v8.super_class = _s11DestOutViewCMa();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView_matchMoveAnimation) = 0;
  v7.receiver = self;
  v7.super_class = _s11DestOutViewCMa();
  v4 = a3;
  v5 = [(UIView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end