@interface WLEasyToHitCustomView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIEdgeInsets)margins;
@end

@implementation WLEasyToHitCustomView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
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