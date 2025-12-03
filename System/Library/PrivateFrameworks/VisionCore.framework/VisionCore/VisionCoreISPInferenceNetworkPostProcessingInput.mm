@interface VisionCoreISPInferenceNetworkPostProcessingInput
- (VisionCoreISPInferenceNetworkPostProcessingInput)initWithInputImageBuffer:(__CVBuffer *)buffer inputImageOrientation:(unsigned int)orientation inferenceOutputNamedObjects:(id)objects;
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

- (VisionCoreISPInferenceNetworkPostProcessingInput)initWithInputImageBuffer:(__CVBuffer *)buffer inputImageOrientation:(unsigned int)orientation inferenceOutputNamedObjects:(id)objects
{
  objectsCopy = objects;
  v12.receiver = self;
  v12.super_class = VisionCoreISPInferenceNetworkPostProcessingInput;
  v10 = [(VisionCoreISPInferenceNetworkPostProcessingInput *)&v12 init];
  if (v10)
  {
    v10->_inputImageBuffer = CVPixelBufferRetain(buffer);
    v10->_inputImageOrientation = orientation;
    objc_storeStrong(&v10->_inferenceOutputNamedObjects, objects);
  }

  return v10;
}

@end