@interface _PLPlaceholderThumbnailCachedData
- (_PLPlaceholderThumbnailCachedData)initWithImageData:(id)data width:(int)width height:(int)height bytesPerRow:(int)row dataWidth:(int)dataWidth dataHeight:(int)dataHeight imageDataOffset:(int)offset;
- (id)imageDataWithWidth:(int *)width height:(int *)height bytesPerRow:(int *)row dataWidth:(int *)dataWidth dataHeight:(int *)dataHeight imageDataOffset:(int *)offset;
@end

@implementation _PLPlaceholderThumbnailCachedData

- (id)imageDataWithWidth:(int *)width height:(int *)height bytesPerRow:(int *)row dataWidth:(int *)dataWidth dataHeight:(int *)dataHeight imageDataOffset:(int *)offset
{
  *width = self->_width;
  *height = self->_height;
  *row = self->_bytesPerRow;
  *dataWidth = self->_dataWidth;
  *dataHeight = self->_dataHeight;
  *offset = self->_imageDataOffset;
  return self->_imageData;
}

- (_PLPlaceholderThumbnailCachedData)initWithImageData:(id)data width:(int)width height:(int)height bytesPerRow:(int)row dataWidth:(int)dataWidth dataHeight:(int)dataHeight imageDataOffset:(int)offset
{
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = _PLPlaceholderThumbnailCachedData;
  v17 = [(_PLPlaceholderThumbnailCachedData *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_width = width;
    v17->_height = height;
    v17->_bytesPerRow = row;
    v17->_dataWidth = dataWidth;
    v17->_dataHeight = dataHeight;
    v17->_imageDataOffset = offset;
    objc_storeStrong(&v17->_imageData, data);
  }

  return v18;
}

@end