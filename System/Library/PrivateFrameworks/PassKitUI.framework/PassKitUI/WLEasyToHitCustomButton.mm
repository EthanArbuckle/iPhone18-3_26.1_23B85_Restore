@interface WLEasyToHitCustomButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIEdgeInsets)margins;
- (WLEasyToHitCustomButton)initWithMargins:(UIEdgeInsets)margins;
@end

@implementation WLEasyToHitCustomButton

- (WLEasyToHitCustomButton)initWithMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
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

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
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