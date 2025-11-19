@interface _PLPlaceholderThumbnailCachedData
- (_PLPlaceholderThumbnailCachedData)initWithImageData:(id)a3 width:(int)a4 height:(int)a5 bytesPerRow:(int)a6 dataWidth:(int)a7 dataHeight:(int)a8 imageDataOffset:(int)a9;
- (id)imageDataWithWidth:(int *)a3 height:(int *)a4 bytesPerRow:(int *)a5 dataWidth:(int *)a6 dataHeight:(int *)a7 imageDataOffset:(int *)a8;
@end

@implementation _PLPlaceholderThumbnailCachedData

- (id)imageDataWithWidth:(int *)a3 height:(int *)a4 bytesPerRow:(int *)a5 dataWidth:(int *)a6 dataHeight:(int *)a7 imageDataOffset:(int *)a8
{
  *a3 = self->_width;
  *a4 = self->_height;
  *a5 = self->_bytesPerRow;
  *a6 = self->_dataWidth;
  *a7 = self->_dataHeight;
  *a8 = self->_imageDataOffset;
  return self->_imageData;
}

- (_PLPlaceholderThumbnailCachedData)initWithImageData:(id)a3 width:(int)a4 height:(int)a5 bytesPerRow:(int)a6 dataWidth:(int)a7 dataHeight:(int)a8 imageDataOffset:(int)a9
{
  v16 = a3;
  v20.receiver = self;
  v20.super_class = _PLPlaceholderThumbnailCachedData;
  v17 = [(_PLPlaceholderThumbnailCachedData *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_width = a4;
    v17->_height = a5;
    v17->_bytesPerRow = a6;
    v17->_dataWidth = a7;
    v17->_dataHeight = a8;
    v17->_imageDataOffset = a9;
    objc_storeStrong(&v17->_imageData, a3);
  }

  return v18;
}

@end