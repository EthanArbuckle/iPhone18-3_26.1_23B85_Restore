@interface DeepFusionOutput
- (void)dealloc;
@end

@implementation DeepFusionOutput

- (void)dealloc
{
  CVPixelBufferRelease(self->_buffer);
  CVPixelBufferRelease(self->_linearOutputPixelBuffer);
  v3.receiver = self;
  v3.super_class = DeepFusionOutput;
  [(DeepFusionOutput *)&v3 dealloc];
}

@end