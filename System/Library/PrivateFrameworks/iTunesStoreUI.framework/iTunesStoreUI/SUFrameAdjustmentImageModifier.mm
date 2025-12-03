@interface SUFrameAdjustmentImageModifier
- (BOOL)isEqual:(id)equal;
- (CGRect)imageFrameForImage:(id)image currentFrame:(CGRect)result finalSize:(CGSize)size;
@end

@implementation SUFrameAdjustmentImageModifier

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  sizingMask = [(SUFrameAdjustmentImageModifier *)self sizingMask];
  return sizingMask == [equal sizingMask];
}

- (CGRect)imageFrameForImage:(id)image currentFrame:(CGRect)result finalSize:(CGSize)size
{
  v5 = size.height / result.size.height;
  if (size.height / result.size.height >= size.width / result.size.width)
  {
    v5 = size.width / result.size.width;
  }

  if (self->_shouldSizeDownToFit && v5 < 1.0)
  {
    v6 = result.size.height * v5;
    result.size.height = ceilf(v6);
    v7 = result.size.width * v5;
    result.size.width = ceilf(v7);
  }

  sizingMask = self->_sizingMask;
  v9 = floor((size.width - result.size.width) * 0.5);
  if ((sizingMask & 5) != 0)
  {
    result.origin.x = v9;
  }

  v10 = floor((size.height - result.size.height) * 0.5);
  if ((sizingMask & 0x28) != 0)
  {
    result.origin.y = v10;
  }

  return result;
}

@end