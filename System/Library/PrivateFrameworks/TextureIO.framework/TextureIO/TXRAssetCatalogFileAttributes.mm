@interface TXRAssetCatalogFileAttributes
- (TXRAssetCatalogFileAttributes)init;
- (void)setColorSpace:(CGColorSpace *)a3;
@end

@implementation TXRAssetCatalogFileAttributes

- (void)setColorSpace:(CGColorSpace *)a3
{
  CGColorSpaceRetain(a3);
  CGColorSpaceRelease(self->_colorSpace);
  self->_colorSpace = a3;
}

- (TXRAssetCatalogFileAttributes)init
{
  v3.receiver = self;
  v3.super_class = TXRAssetCatalogFileAttributes;
  result = [(TXRAssetCatalogFileAttributes *)&v3 init];
  if (result)
  {
    result->_exifOrientation = 1;
    result->_fileFormat = 0;
  }

  return result;
}

@end