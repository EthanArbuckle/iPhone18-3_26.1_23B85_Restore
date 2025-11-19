@interface WLEasyToHitCustomView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIEdgeInsets)margins;
@end

@implementation WLEasyToHitCustomView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(WLEasyToHitCustomView *)self bounds];
  [(WLEasyToHitCustomView *)self margins];
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