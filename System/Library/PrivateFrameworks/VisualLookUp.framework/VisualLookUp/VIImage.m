@interface VIImage
+ (VIImage)imageWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4;
- (BOOL)isEqual:(id)a3;
- (CGSize)imageSize;
- (VIImage)initWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4;
- (void)dealloc;
@end

@implementation VIImage

- (VIImage)initWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4
{
  v8.receiver = self;
  v8.super_class = VIImage;
  v6 = [(VIImage *)&v8 init];
  if (v6)
  {
    v6->_pixelBuffer = CVPixelBufferRetain(a3);
    v6->_orientation = a4;
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

+ (VIImage)imageWithPixelBuffer:(__CVBuffer *)a3 orientation:(unsigned int)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithPixelBuffer:a3 orientation:*&a4];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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