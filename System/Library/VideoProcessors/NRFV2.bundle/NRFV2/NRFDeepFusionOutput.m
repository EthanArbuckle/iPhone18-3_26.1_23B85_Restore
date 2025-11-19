@interface NRFDeepFusionOutput
- (__n128)refFrameTransform;
- (__n128)setRefFrameTransform:(__n128)a3;
- (void)dealloc;
@end

@implementation NRFDeepFusionOutput

- (void)dealloc
{
  CVPixelBufferRelease(self->_proxyPixelBuffer);
  CVPixelBufferRelease(self->_syntheticReferencePixelBuffer);
  CVPixelBufferRelease(self->_syntheticReferenceFusionMapPixelBuffer);
  CVPixelBufferRelease(self->_syntheticLongPixelBuffer);
  CVPixelBufferRelease(self->_syntheticLongFusionMapPixelBuffer);
  CVPixelBufferRelease(self->_longFusionMapPixelBuffer);
  CVPixelBufferRelease(self->_inferenceInputPixelBuffer);
  CVPixelBufferRelease(self->_gainMapOutputPixelBuffer);
  CVPixelBufferRelease(self->_linearOutputPixelBuffer);
  v3.receiver = self;
  v3.super_class = NRFDeepFusionOutput;
  [(NRFDeepFusionOutput *)&v3 dealloc];
}

- (__n128)refFrameTransform
{
  result = *(a1 + 176);
  v2 = *(a1 + 192);
  v3 = *(a1 + 208);
  return result;
}

- (__n128)setRefFrameTransform:(__n128)a3
{
  result[11] = a2;
  result[12] = a3;
  result[13] = a4;
  return result;
}

@end