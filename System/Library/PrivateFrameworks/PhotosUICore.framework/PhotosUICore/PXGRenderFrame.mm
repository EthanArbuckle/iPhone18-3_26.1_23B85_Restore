@interface PXGRenderFrame
- (CGSize)size;
- (PXGRenderFrame)initWithFrameID:(int64_t)d pixelBuffer:(__CVBuffer *)buffer;
- (__CVBuffer)pixelBuffer;
- (void)dealloc;
@end

@implementation PXGRenderFrame

- (__CVBuffer)pixelBuffer
{
  v2 = CVPixelBufferRetain(self->_pixelBuffer);
  CFAutorelease(v2);
  return v2;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  v3.receiver = self;
  v3.super_class = PXGRenderFrame;
  [(PXGRenderFrame *)&v3 dealloc];
}

- (CGSize)size
{
  Width = CVPixelBufferGetWidth(self->_pixelBuffer);
  Height = CVPixelBufferGetHeight(self->_pixelBuffer);
  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (PXGRenderFrame)initWithFrameID:(int64_t)d pixelBuffer:(__CVBuffer *)buffer
{
  v10.receiver = self;
  v10.super_class = PXGRenderFrame;
  v7 = [(PXGRenderFrame *)&v10 init];
  if (v7)
  {
    if (!buffer)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"PXGHostingController.m" lineNumber:520 description:{@"Invalid parameter not satisfying: %@", @"pixelBuffer != nil"}];
    }

    v7->_frameID = d;
    v7->_pixelBuffer = CVPixelBufferRetain(buffer);
  }

  return v7;
}

@end