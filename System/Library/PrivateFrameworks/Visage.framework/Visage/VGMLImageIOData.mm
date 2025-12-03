@interface VGMLImageIOData
- (BOOL)isEqual:(id)equal;
- (VGMLImageIOData)initWithCVPixelBufferRef:(__CVBuffer *)ref;
- (VGMLImageIOData)initWithCoder:(id)coder;
- (void)dealloc;
@end

@implementation VGMLImageIOData

- (VGMLImageIOData)initWithCVPixelBufferRef:(__CVBuffer *)ref
{
  v8.receiver = self;
  v8.super_class = VGMLImageIOData;
  v4 = [(VGMLImageIOData *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_pixelBuffer = ref;
    CVPixelBufferRetain(ref);
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

- (VGMLImageIOData)initWithCoder:(id)coder
{
  v4 = [VGCoderUtilities decodePixelBufferForKey:@"pixelBuffer" decoder:coder];
  v5 = [(VGMLImageIOData *)self initWithCVPixelBufferRef:v4];
  CVPixelBufferRelease(v4);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = checkEqualPixelBuffers(-[VGMLImageIOData cvPixelBufferRef](self, "cvPixelBufferRef"), [v5 cvPixelBufferRef]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end