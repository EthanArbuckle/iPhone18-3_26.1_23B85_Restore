@interface VKAVCaptureFrame
- (__CVBuffer)CVImageBuffer;
- (id)imageRequestHandler;
- (void)dealloc;
- (void)setSampleBuffer:(opaqueCMSampleBuffer *)a3;
@end

@implementation VKAVCaptureFrame

- (void)dealloc
{
  [(VKAVCaptureFrame *)self setSampleBuffer:0];
  v3.receiver = self;
  v3.super_class = VKAVCaptureFrame;
  [(VKAVCaptureFrame *)&v3 dealloc];
}

- (void)setSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer != a3)
  {
    if (sampleBuffer)
    {
      CFRelease(sampleBuffer);
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_sampleBuffer = a3;
  }
}

- (id)imageRequestHandler
{
  v3 = objc_alloc(MEMORY[0x1E69845B8]);
  v4 = [(VKAVCaptureFrame *)self sampleBuffer];
  v5 = [(VKAVCaptureFrame *)self orientation];
  v6 = [v3 initWithCMSampleBuffer:v4 orientation:v5 options:MEMORY[0x1E695E0F8]];

  return v6;
}

- (__CVBuffer)CVImageBuffer
{
  v2 = [(VKAVCaptureFrame *)self sampleBuffer];

  return CMSampleBufferGetImageBuffer(v2);
}

@end