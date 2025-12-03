@interface NRFUBFusionOutput
- (__n128)refFrameTransform;
- (__n128)setRefFrameTransform:(__n128)transform;
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
  result = *(self + 96);
  v2 = *(self + 112);
  v3 = *(self + 128);
  return result;
}

- (__n128)setRefFrameTransform:(__n128)transform
{
  result[6] = a2;
  result[7] = transform;
  result[8] = a4;
  return result;
}

@end