@interface PVCameraPreviewRequest
- (void)dealloc;
- (void)setSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)setTime:(id *)a3;
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

- (void)setSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer != a3)
  {
    if (sampleBuffer)
    {
      CFRelease(sampleBuffer);
    }

    self->_sampleBuffer = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (void)setTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_time.epoch = a3->var3;
  *&self->_time.value = v3;
}

@end