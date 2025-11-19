@interface VUIGradientMaskProperties
+ (id)defaultGradientMaskProperties;
- (CGSize)minLengths;
- (UIEdgeInsets)minPadding;
@end

@implementation VUIGradientMaskProperties

+ (id)defaultGradientMaskProperties
{
  v2 = objc_alloc_init(VUIGradientMaskProperties);
  [(VUIGradientMaskProperties *)v2 setMinPadding:100.0, 100.0, 150.0, 100.0];
  [(VUIGradientMaskProperties *)v2 setMinLengths:90.0, 90.0];

  return v2;
}

- (UIEdgeInsets)minPadding
{
  top = self->_minPadding.top;
  left = self->_minPadding.left;
  bottom = self->_minPadding.bottom;
  right = self->_minPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)minLengths
{
  width = self->_minLengths.width;
  height = self->_minLengths.height;
  result.height = height;
  result.width = width;
  return result;
}

@end