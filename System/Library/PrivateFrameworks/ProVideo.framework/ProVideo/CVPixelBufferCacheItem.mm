@interface CVPixelBufferCacheItem
- (CGSize)fullSize;
- (CVPixelBufferCacheItem)initWithCVPixelBuffers:(id)buffers DODs:(id)ds fullSize:(CGSize)size colorSpace:(id)space;
@end

@implementation CVPixelBufferCacheItem

- (CVPixelBufferCacheItem)initWithCVPixelBuffers:(id)buffers DODs:(id)ds fullSize:(CGSize)size colorSpace:(id)space
{
  height = size.height;
  width = size.width;
  buffersCopy = buffers;
  dsCopy = ds;
  spaceCopy = space;
  v18.receiver = self;
  v18.super_class = CVPixelBufferCacheItem;
  v15 = [(CVPixelBufferCacheItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_buffers, buffers);
    objc_storeStrong(&v16->_DODs, ds);
    v16->_fullSize.width = width;
    v16->_fullSize.height = height;
    objc_storeStrong(&v16->_colorSpace, space);
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