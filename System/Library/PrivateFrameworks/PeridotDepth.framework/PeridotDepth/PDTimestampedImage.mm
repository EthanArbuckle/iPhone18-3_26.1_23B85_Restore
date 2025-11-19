@interface PDTimestampedImage
- (PDTimestampedImage)initWithImage:(__CVBuffer *)a3 metadataDictionary:(id)a4 andTimestamp:(id *)a5;
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

- (PDTimestampedImage)initWithImage:(__CVBuffer *)a3 metadataDictionary:(id)a4 andTimestamp:(id *)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = PDTimestampedImage;
  v10 = [(PDTimestampedImage *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_image = a3;
    CVPixelBufferRetain(a3);
    objc_storeStrong(&v11->_metadataDictionary, a4);
    v12 = *&a5->var0;
    v11->_timestamp.epoch = a5->var3;
    *&v11->_timestamp.value = v12;
  }

  return v11;
}

@end