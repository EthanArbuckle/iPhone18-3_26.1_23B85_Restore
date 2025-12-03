@interface _PXGAssetImageCacheEntry
- (CGImage)cgImage;
- (CGSize)imageSize;
- (CGSize)targetSize;
- (_PXGAssetImageCacheEntry)init;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setCgImage:(CGImage *)image;
@end

@implementation _PXGAssetImageCacheEntry

- (_PXGAssetImageCacheEntry)init
{
  v6.receiver = self;
  v6.super_class = _PXGAssetImageCacheEntry;
  v2 = [(_PXGAssetImageCacheEntry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
    requestIDs = v2->_requestIDs;
    v2->_requestIDs = v3;
  }

  return v2;
}

- (CGImage)cgImage
{
  v2 = CGImageRetain(self->_cgImage);
  v3 = v2;
  if (v2)
  {
    CFAutorelease(v2);
  }

  return v3;
}

- (CGSize)imageSize
{
  [(_PXGAssetImageCacheEntry *)self cgImage];
  [(_PXGAssetImageCacheEntry *)self imageOrientation];

  PXCGImageGetSizeWithOrientation();
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)prepareForReuse
{
  requestIDs = [(_PXGAssetImageCacheEntry *)self requestIDs];
  [requestIDs removeAllIndexes];

  [(_PXGAssetImageCacheEntry *)self setAsset:0];
  [(_PXGAssetImageCacheEntry *)self setCgImage:0];
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);

  [(_PXGAssetImageCacheEntry *)self setTargetSize:v4, v5];
}

- (void)setCgImage:(CGImage *)image
{
  cgImage = self->_cgImage;
  if (cgImage != image)
  {
    CGImageRelease(cgImage);
    self->_cgImage = image;

    CGImageRetain(image);
  }
}

- (void)dealloc
{
  CGImageRelease(self->_cgImage);
  v3.receiver = self;
  v3.super_class = _PXGAssetImageCacheEntry;
  [(_PXGAssetImageCacheEntry *)&v3 dealloc];
}

@end