@interface UIImage(SBFImageTiling)
- (uint64_t)sbf_imageByTilingCenterPixel;
@end

@implementation UIImage(SBFImageTiling)

- (uint64_t)sbf_imageByTilingCenterPixel
{
  [a1 size];
  [a1 scale];
  UIFloorToScale();
  v3 = v2;
  UIFloorToScale();

  return [a1 resizableImageWithCapInsets:{v4, v3, v4, v3}];
}

@end