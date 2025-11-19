@interface SUFrameAdjustmentImageModifier
- (BOOL)isEqual:(id)a3;
- (CGRect)imageFrameForImage:(id)a3 currentFrame:(CGRect)result finalSize:(CGSize)a5;
@end

@implementation SUFrameAdjustmentImageModifier

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(SUFrameAdjustmentImageModifier *)self sizingMask];
  return v5 == [a3 sizingMask];
}

- (CGRect)imageFrameForImage:(id)a3 currentFrame:(CGRect)result finalSize:(CGSize)a5
{
  v5 = a5.height / result.size.height;
  if (a5.height / result.size.height >= a5.width / result.size.width)
  {
    v5 = a5.width / result.size.width;
  }

  if (self->_shouldSizeDownToFit && v5 < 1.0)
  {
    v6 = result.size.height * v5;
    result.size.height = ceilf(v6);
    v7 = result.size.width * v5;
    result.size.width = ceilf(v7);
  }

  sizingMask = self->_sizingMask;
  v9 = floor((a5.width - result.size.width) * 0.5);
  if ((sizingMask & 5) != 0)
  {
    result.origin.x = v9;
  }

  v10 = floor((a5.height - result.size.height) * 0.5);
  if ((sizingMask & 0x28) != 0)
  {
    result.origin.y = v10;
  }

  return result;
}

@end