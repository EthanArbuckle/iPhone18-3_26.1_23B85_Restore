@interface PXCornerMaskCacheEntry
- (CGSize)size;
- (PXCornerMaskCacheEntry)initWithCornerRadius:(PXCornerRadius)radius size:(CGSize)size image:(id)image;
- (PXCornerRadius)cornerRadius;
- (id)description;
@end

@implementation PXCornerMaskCacheEntry

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXCornerRadius)cornerRadius
{
  topLeft = self->_cornerRadius.topLeft;
  topRight = self->_cornerRadius.topRight;
  bottomLeft = self->_cornerRadius.bottomLeft;
  bottomRight = self->_cornerRadius.bottomRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topRight = topRight;
  result.topLeft = topLeft;
  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  [(PXCornerMaskCacheEntry *)self size];
  NSStringFromCGSize(v5);
  objc_claimAutoreleasedReturnValue();
  [(PXCornerMaskCacheEntry *)self cornerRadius];
  PXCornerRadiusDescription();
}

- (PXCornerMaskCacheEntry)initWithCornerRadius:(PXCornerRadius)radius size:(CGSize)size image:(id)image
{
  height = size.height;
  width = size.width;
  bottomRight = radius.bottomRight;
  bottomLeft = radius.bottomLeft;
  topRight = radius.topRight;
  topLeft = radius.topLeft;
  imageCopy = image;
  v17.receiver = self;
  v17.super_class = PXCornerMaskCacheEntry;
  v14 = [(PXCornerMaskCacheEntry *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_cornerRadius.topLeft = topLeft;
    v14->_cornerRadius.topRight = topRight;
    v14->_cornerRadius.bottomLeft = bottomLeft;
    v14->_cornerRadius.bottomRight = bottomRight;
    v14->_size.width = width;
    v14->_size.height = height;
    objc_storeStrong(&v14->_image, image);
  }

  return v15;
}

@end