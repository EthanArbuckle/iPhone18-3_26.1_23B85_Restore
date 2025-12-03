@interface VKAVCaptureFrame
- (__CVBuffer)CVImageBuffer;
- (id)imageRequestHandler;
- (void)dealloc;
- (void)setSampleBuffer:(opaqueCMSampleBuffer *)buffer;
@end

@implementation VKAVCaptureFrame

- (void)dealloc
{
  [(VKAVCaptureFrame *)self setSampleBuffer:0];
  v3.receiver = self;
  v3.super_class = VKAVCaptureFrame;
  [(VKAVCaptureFrame *)&v3 dealloc];
}

- (void)setSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer != buffer)
  {
    if (sampleBuffer)
    {
      CFRelease(sampleBuffer);
    }

    if (buffer)
    {
      CFRetain(buffer);
    }

    self->_sampleBuffer = buffer;
  }
}

- (id)imageRequestHandler
{
  v3 = objc_alloc(MEMORY[0x1E69845B8]);
  sampleBuffer = [(VKAVCaptureFrame *)self sampleBuffer];
  orientation = [(VKAVCaptureFrame *)self orientation];
  v6 = [v3 initWithCMSampleBuffer:sampleBuffer orientation:orientation options:MEMORY[0x1E695E0F8]];

  return v6;
}

- (__CVBuffer)CVImageBuffer
{
  sampleBuffer = [(VKAVCaptureFrame *)self sampleBuffer];

  return CMSampleBufferGetImageBuffer(sampleBuffer);
}

@end