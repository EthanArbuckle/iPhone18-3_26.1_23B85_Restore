@interface VEFrame
- (VEFrame)initWithBuffer:(__CVBuffer *)a3 presentationTimeStamp:(id *)a4;
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

- (VEFrame)initWithBuffer:(__CVBuffer *)a3 presentationTimeStamp:(id *)a4
{
  v12.receiver = self;
  v12.super_class = VEFrame;
  v6 = [(VEFrame *)&v12 init];
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    if (CVPixelBufferGetIOSurface(a3) && (v9 = CVPixelBufferRetain(a3), v7->_buffer = v9, var3 = a4->var3, *&v7->_presentationTimeStamp.value = *&a4->var0, v7->_presentationTimeStamp.epoch = var3, v9))
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