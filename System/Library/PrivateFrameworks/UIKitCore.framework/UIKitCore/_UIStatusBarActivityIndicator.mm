@interface _UIStatusBarActivityIndicator
- (UIEdgeInsets)alignmentRectInsets;
- (void)applyStyleAttributes:(id)attributes;
@end

@implementation _UIStatusBarActivityIndicator

- (void)applyStyleAttributes:(id)attributes
{
  imageTintColor = [attributes imageTintColor];
  [(UIActivityIndicatorView *)self setColor:imageTintColor];
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