@interface _UILiquidLensView.DestOutView
- (_TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView)initWithCoder:(id)coder;
- (_TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView)initWithFrame:(CGRect)frame;
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

- (_TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView_matchMoveAnimation) = 0;
  v8.receiver = self;
  v8.super_class = _s11DestOutViewCMa();
  return [(UIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2711DestOutView_matchMoveAnimation) = 0;
  v7.receiver = self;
  v7.super_class = _s11DestOutViewCMa();
  coderCopy = coder;
  v5 = [(UIView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end