@interface PDTimestampedImage
- (PDTimestampedImage)initWithImage:(__CVBuffer *)image metadataDictionary:(id)dictionary andTimestamp:(id *)timestamp;
- (void)dealloc;
@end

@implementation PDTimestampedImage

- (void)dealloc
{
  image = self->_image;
  if (image)
  {
    CVPixelBufferRelease(image);
    self->_image = 0;
  }

  v4.receiver = self;
  v4.super_class = PDTimestampedImage;
  [(PDTimestampedImage *)&v4 dealloc];
}

- (PDTimestampedImage)initWithImage:(__CVBuffer *)image metadataDictionary:(id)dictionary andTimestamp:(id *)timestamp
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PDTimestampedImage;
  v10 = [(PDTimestampedImage *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_image = image;
    CVPixelBufferRetain(image);
    objc_storeStrong(&v11->_metadataDictionary, dictionary);
    v12 = *&timestamp->var0;
    v11->_timestamp.epoch = timestamp->var3;
    *&v11->_timestamp.value = v12;
  }

  return v11;
}

@end