@interface VisionCoreISPInferenceNetworkPostProcessingInput
- (VisionCoreISPInferenceNetworkPostProcessingInput)initWithInputImageBuffer:(__CVBuffer *)a3 inputImageOrientation:(unsigned int)a4 inferenceOutputNamedObjects:(id)a5;
- (void)dealloc;
@end

@implementation VisionCoreISPInferenceNetworkPostProcessingInput

- (void)dealloc
{
  CVPixelBufferRelease(self->_inputImageBuffer);
  v3.receiver = self;
  v3.super_class = VisionCoreISPInferenceNetworkPostProcessingInput;
  [(VisionCoreISPInferenceNetworkPostProcessingInput *)&v3 dealloc];
}

- (VisionCoreISPInferenceNetworkPostProcessingInput)initWithInputImageBuffer:(__CVBuffer *)a3 inputImageOrientation:(unsigned int)a4 inferenceOutputNamedObjects:(id)a5
{
  v9 = a5;
  v12.receiver = self;
  v12.super_class = VisionCoreISPInferenceNetworkPostProcessingInput;
  v10 = [(VisionCoreISPInferenceNetworkPostProcessingInput *)&v12 init];
  if (v10)
  {
    v10->_inputImageBuffer = CVPixelBufferRetain(a3);
    v10->_inputImageOrientation = a4;
    objc_storeStrong(&v10->_inferenceOutputNamedObjects, a5);
  }

  return v10;
}

@end