@interface _TVStarBar
- (UIEdgeInsets)barMargin;
@end

@implementation _TVStarBar

- (UIEdgeInsets)barMargin
{
  top = self->_barMargin.top;
  left = self->_barMargin.left;
  bottom = self->_barMargin.bottom;
  right = self->_barMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end