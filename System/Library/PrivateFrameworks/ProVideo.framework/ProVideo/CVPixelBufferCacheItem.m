@interface CVPixelBufferCacheItem
- (CGSize)fullSize;
- (CVPixelBufferCacheItem)initWithCVPixelBuffers:(id)a3 DODs:(id)a4 fullSize:(CGSize)a5 colorSpace:(id)a6;
@end

@implementation CVPixelBufferCacheItem

- (CVPixelBufferCacheItem)initWithCVPixelBuffers:(id)a3 DODs:(id)a4 fullSize:(CGSize)a5 colorSpace:(id)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CVPixelBufferCacheItem;
  v15 = [(CVPixelBufferCacheItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_buffers, a3);
    objc_storeStrong(&v16->_DODs, a4);
    v16->_fullSize.width = width;
    v16->_fullSize.height = height;
    objc_storeStrong(&v16->_colorSpace, a6);
  }

  return v16;
}

- (CGSize)fullSize
{
  width = self->_fullSize.width;
  height = self->_fullSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end