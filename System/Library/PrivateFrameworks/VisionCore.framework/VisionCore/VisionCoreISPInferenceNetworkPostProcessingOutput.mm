@interface VisionCoreISPInferenceNetworkPostProcessingOutput
- (VisionCoreISPInferenceNetworkPostProcessingOutput)initWithPostProcessedPersonImageBuffer:(__CVBuffer *)a3 personImageOrientation:(unsigned int)a4 salientPersonImageBuffer:(__CVBuffer *)a5 salientPersonImageBufferOrientation:(unsigned int)a6 skinImageBuffer:(__CVBuffer *)a7 skinImageBufferOrientation:(unsigned int)a8 hairImageBuffer:(__CVBuffer *)a9 hairImageBufferOrientation:(unsigned int)a10 skyImageBuffer:(__CVBuffer *)a11 skyImageBufferOrientation:(unsigned int)a12;
- (void)dealloc;
@end

@implementation VisionCoreISPInferenceNetworkPostProcessingOutput

- (void)dealloc
{
  CVPixelBufferRelease(self->_personImageBuffer);
  CVPixelBufferRelease(self->_salientPersonImageBuffer);
  CVPixelBufferRelease(self->_skinImageBuffer);
  CVPixelBufferRelease(self->_hairImageBuffer);
  CVPixelBufferRelease(self->_skyImageBuffer);
  v3.receiver = self;
  v3.super_class = VisionCoreISPInferenceNetworkPostProcessingOutput;
  [(VisionCoreISPInferenceNetworkPostProcessingOutput *)&v3 dealloc];
}

- (VisionCoreISPInferenceNetworkPostProcessingOutput)initWithPostProcessedPersonImageBuffer:(__CVBuffer *)a3 personImageOrientation:(unsigned int)a4 salientPersonImageBuffer:(__CVBuffer *)a5 salientPersonImageBufferOrientation:(unsigned int)a6 skinImageBuffer:(__CVBuffer *)a7 skinImageBufferOrientation:(unsigned int)a8 hairImageBuffer:(__CVBuffer *)a9 hairImageBufferOrientation:(unsigned int)a10 skyImageBuffer:(__CVBuffer *)a11 skyImageBufferOrientation:(unsigned int)a12
{
  v20.receiver = self;
  v20.super_class = VisionCoreISPInferenceNetworkPostProcessingOutput;
  v18 = [(VisionCoreISPInferenceNetworkPostProcessingOutput *)&v20 init];
  if (v18)
  {
    v18->_personImageBuffer = CVPixelBufferRetain(a3);
    v18->_personImageBufferOrientation = a4;
    v18->_salientPersonImageBuffer = CVPixelBufferRetain(a5);
    v18->_salientPersonImageBufferOrientation = a6;
    v18->_skinImageBuffer = CVPixelBufferRetain(a7);
    v18->_skinImageBufferOrientation = a8;
    v18->_hairImageBuffer = CVPixelBufferRetain(a9);
    v18->_hairImageBufferOrientation = a10;
    v18->_skyImageBuffer = CVPixelBufferRetain(a11);
    v18->_skyImageBufferOrientation = a12;
  }

  return v18;
}

@end