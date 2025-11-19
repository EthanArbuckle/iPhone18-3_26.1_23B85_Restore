@interface WLEasyToHitCustomButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIEdgeInsets)margins;
- (WLEasyToHitCustomButton)initWithMargins:(UIEdgeInsets)a3;
@end

@implementation WLEasyToHitCustomButton

- (WLEasyToHitCustomButton)initWithMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v10.receiver = self;
  v10.super_class = WLEasyToHitCustomButton;
  v7 = [(WLEasyToHitCustomButton *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    [(WLEasyToHitCustomButton *)v7 setMargins:top, left, bottom, right];
  }

  return v8;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(WLEasyToHitCustomButton *)self bounds];
  [(WLEasyToHitCustomButton *)self margins];
  UIRectInset();
  v11 = x;
  v12 = y;

  return CGRectContainsPoint(*&v7, *&v11);
}

- (UIEdgeInsets)margins
{
  top = self->_margins.top;
  left = self->_margins.left;
  bottom = self->_margins.bottom;
  right = self->_margins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end