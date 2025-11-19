@interface _UIContextMenuGradientMaskingConfiguration
- (UIEdgeInsets)gradientMaskEdgeInsets;
- (UIEdgeInsets)gradientMaskLengths;
@end

@implementation _UIContextMenuGradientMaskingConfiguration

- (UIEdgeInsets)gradientMaskEdgeInsets
{
  top = self->_gradientMaskEdgeInsets.top;
  left = self->_gradientMaskEdgeInsets.left;
  bottom = self->_gradientMaskEdgeInsets.bottom;
  right = self->_gradientMaskEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)gradientMaskLengths
{
  top = self->_gradientMaskLengths.top;
  left = self->_gradientMaskLengths.left;
  bottom = self->_gradientMaskLengths.bottom;
  right = self->_gradientMaskLengths.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end