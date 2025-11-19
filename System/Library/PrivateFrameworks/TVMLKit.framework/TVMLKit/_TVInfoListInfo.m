@interface _TVInfoListInfo
- (UIEdgeInsets)headerMargin;
- (UIEdgeInsets)headerPadding;
@end

@implementation _TVInfoListInfo

- (UIEdgeInsets)headerMargin
{
  top = self->_headerMargin.top;
  left = self->_headerMargin.left;
  bottom = self->_headerMargin.bottom;
  right = self->_headerMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)headerPadding
{
  top = self->_headerPadding.top;
  left = self->_headerPadding.left;
  bottom = self->_headerPadding.bottom;
  right = self->_headerPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end