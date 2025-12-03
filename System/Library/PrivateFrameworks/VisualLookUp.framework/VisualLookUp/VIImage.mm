@interface VIImage
+ (VIImage)imageWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation;
- (BOOL)isEqual:(id)equal;
- (CGSize)imageSize;
- (VIImage)initWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation;
- (void)dealloc;
@end

@implementation VIImage

- (VIImage)initWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation
{
  v8.receiver = self;
  v8.super_class = VIImage;
  v6 = [(VIImage *)&v8 init];
  if (v6)
  {
    v6->_pixelBuffer = CVPixelBufferRetain(buffer);
    v6->_orientation = orientation;
  }

  return v6;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = VIImage;
  [(VIImage *)&v3 dealloc];
}

+ (VIImage)imageWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation
{
  v4 = [objc_alloc(objc_opt_class()) initWithPixelBuffer:buffer orientation:*&orientation];

  return v4;
}

- (CGSize)imageSize
{
  Width = CVPixelBufferGetWidth(self->_pixelBuffer);
  Height = CVPixelBufferGetHeight(self->_pixelBuffer);
  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [(VIImage *)v6 pixelBuffer]== self->_pixelBuffer && [(VIImage *)v6 orientation]== self->_orientation;
  }

  return v7;
}

@end