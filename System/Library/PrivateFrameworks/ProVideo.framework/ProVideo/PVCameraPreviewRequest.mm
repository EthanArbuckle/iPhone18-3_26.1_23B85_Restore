@interface PVCameraPreviewRequest
- (void)dealloc;
- (void)setSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)setTime:(id *)time;
@end

@implementation PVCameraPreviewRequest

- (void)dealloc
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer)
  {
    CFRelease(sampleBuffer);
  }

  v4.receiver = self;
  v4.super_class = PVCameraPreviewRequest;
  [(PVCameraPreviewRequest *)&v4 dealloc];
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

    self->_sampleBuffer = buffer;
    if (buffer)
    {

      CFRetain(buffer);
    }
  }
}

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

@end