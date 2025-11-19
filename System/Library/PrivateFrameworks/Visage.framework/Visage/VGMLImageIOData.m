@interface VGMLImageIOData
- (BOOL)isEqual:(id)a3;
- (VGMLImageIOData)initWithCVPixelBufferRef:(__CVBuffer *)a3;
- (VGMLImageIOData)initWithCoder:(id)a3;
- (void)dealloc;
@end

@implementation VGMLImageIOData

- (VGMLImageIOData)initWithCVPixelBufferRef:(__CVBuffer *)a3
{
  v8.receiver = self;
  v8.super_class = VGMLImageIOData;
  v4 = [(VGMLImageIOData *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_pixelBuffer = a3;
    CVPixelBufferRetain(a3);
    v6 = v5;
  }

  return v5;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = VGMLImageIOData;
  [(VGMLImageIOData *)&v3 dealloc];
}

- (VGMLImageIOData)initWithCoder:(id)a3
{
  v4 = [VGCoderUtilities decodePixelBufferForKey:@"pixelBuffer" decoder:a3];
  v5 = [(VGMLImageIOData *)self initWithCVPixelBufferRef:v4];
  CVPixelBufferRelease(v4);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = checkEqualPixelBuffers(-[VGMLImageIOData cvPixelBufferRef](self, "cvPixelBufferRef"), [v5 cvPixelBufferRef]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end