@interface _UIStatusBarActivityIndicator
- (UIEdgeInsets)alignmentRectInsets;
- (void)applyStyleAttributes:(id)a3;
@end

@implementation _UIStatusBarActivityIndicator

- (void)applyStyleAttributes:(id)a3
{
  v4 = [a3 imageTintColor];
  [(UIActivityIndicatorView *)self setColor:v4];
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