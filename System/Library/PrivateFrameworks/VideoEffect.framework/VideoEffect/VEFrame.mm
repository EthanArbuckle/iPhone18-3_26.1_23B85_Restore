@interface VEFrame
- (VEFrame)initWithBuffer:(__CVBuffer *)buffer presentationTimeStamp:(id *)stamp;
- (void)dealloc;
@end

@implementation VEFrame

- (void)dealloc
{
  CVPixelBufferRelease(self->_buffer);
  v3.receiver = self;
  v3.super_class = VEFrame;
  [(VEFrame *)&v3 dealloc];
}

- (VEFrame)initWithBuffer:(__CVBuffer *)buffer presentationTimeStamp:(id *)stamp
{
  v12.receiver = self;
  v12.super_class = VEFrame;
  v6 = [(VEFrame *)&v12 init];
  v7 = v6;
  v8 = 0;
  if (buffer && v6)
  {
    if (CVPixelBufferGetIOSurface(buffer) && (v9 = CVPixelBufferRetain(buffer), v7->_buffer = v9, var3 = stamp->var3, *&v7->_presentationTimeStamp.value = *&stamp->var0, v7->_presentationTimeStamp.epoch = var3, v9))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end