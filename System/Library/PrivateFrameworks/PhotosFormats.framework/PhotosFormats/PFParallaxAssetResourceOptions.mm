@interface PFParallaxAssetResourceOptions
- (CGSize)imageSize;
@end

@implementation PFParallaxAssetResourceOptions

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end