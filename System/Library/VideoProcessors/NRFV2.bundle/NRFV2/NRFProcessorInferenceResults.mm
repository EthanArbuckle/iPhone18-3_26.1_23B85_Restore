@interface NRFProcessorInferenceResults
- (void)dealloc;
@end

@implementation NRFProcessorInferenceResults

- (void)dealloc
{
  CVPixelBufferRelease(self->_skinMask);
  CVPixelBufferRelease(self->_hairMask);
  CVPixelBufferRelease(self->_skyMask);
  CVPixelBufferRelease(self->_personMask);
  CVPixelBufferRelease(self->_highResPersonMask);
  v3.receiver = self;
  v3.super_class = NRFProcessorInferenceResults;
  [(NRFProcessorInferenceResults *)&v3 dealloc];
}

@end