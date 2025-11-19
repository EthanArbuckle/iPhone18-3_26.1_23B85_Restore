@interface STUIStatusBarActivityIndicator
- (UIEdgeInsets)alignmentRectInsets;
- (void)applyStyleAttributes:(id)a3;
@end

@implementation STUIStatusBarActivityIndicator

- (void)applyStyleAttributes:(id)a3
{
  v4 = [a3 imageTintColor];
  [(STUIStatusBarActivityIndicator *)self setColor:v4];
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end