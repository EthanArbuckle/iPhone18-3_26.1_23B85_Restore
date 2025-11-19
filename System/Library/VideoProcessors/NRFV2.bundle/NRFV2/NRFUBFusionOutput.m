@interface NRFUBFusionOutput
- (__n128)refFrameTransform;
- (__n128)setRefFrameTransform:(__n128)a3;
- (void)dealloc;
@end

@implementation NRFUBFusionOutput

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  CVPixelBufferRelease(self->_linearOutputPixelBuffer);
  CVPixelBufferRelease(self->_inferenceInputPixelBuffer);
  CVPixelBufferRelease(self->_gainMapOutputPixelBuffer);
  v3.receiver = self;
  v3.super_class = NRFUBFusionOutput;
  [(NRFUBFusionOutput *)&v3 dealloc];
}

- (__n128)refFrameTransform
{
  result = *(a1 + 96);
  v2 = *(a1 + 112);
  v3 = *(a1 + 128);
  return result;
}

- (__n128)setRefFrameTransform:(__n128)a3
{
  result[6] = a2;
  result[7] = a3;
  result[8] = a4;
  return result;
}

@end