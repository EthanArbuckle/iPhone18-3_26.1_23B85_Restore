@interface UIImage(SBFImageTiling)
- (uint64_t)sbf_imageByTilingCenterPixel;
@end

@implementation UIImage(SBFImageTiling)

- (uint64_t)sbf_imageByTilingCenterPixel
{
  [self size];
  [self scale];
  UIFloorToScale();
  v3 = v2;
  UIFloorToScale();

  return [self resizableImageWithCapInsets:{v4, v3, v4, v3}];
}

@end