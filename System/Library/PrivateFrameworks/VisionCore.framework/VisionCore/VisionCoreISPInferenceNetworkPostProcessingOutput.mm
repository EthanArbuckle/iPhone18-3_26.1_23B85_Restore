@interface VisionCoreISPInferenceNetworkPostProcessingOutput
- (VisionCoreISPInferenceNetworkPostProcessingOutput)initWithPostProcessedPersonImageBuffer:(__CVBuffer *)buffer personImageOrientation:(unsigned int)orientation salientPersonImageBuffer:(__CVBuffer *)imageBuffer salientPersonImageBufferOrientation:(unsigned int)bufferOrientation skinImageBuffer:(__CVBuffer *)skinImageBuffer skinImageBufferOrientation:(unsigned int)imageBufferOrientation hairImageBuffer:(__CVBuffer *)hairImageBuffer hairImageBufferOrientation:(unsigned int)self0 skyImageBuffer:(__CVBuffer *)self1 skyImageBufferOrientation:(unsigned int)self2;
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

- (VisionCoreISPInferenceNetworkPostProcessingOutput)initWithPostProcessedPersonImageBuffer:(__CVBuffer *)buffer personImageOrientation:(unsigned int)orientation salientPersonImageBuffer:(__CVBuffer *)imageBuffer salientPersonImageBufferOrientation:(unsigned int)bufferOrientation skinImageBuffer:(__CVBuffer *)skinImageBuffer skinImageBufferOrientation:(unsigned int)imageBufferOrientation hairImageBuffer:(__CVBuffer *)hairImageBuffer hairImageBufferOrientation:(unsigned int)self0 skyImageBuffer:(__CVBuffer *)self1 skyImageBufferOrientation:(unsigned int)self2
{
  v20.receiver = self;
  v20.super_class = VisionCoreISPInferenceNetworkPostProcessingOutput;
  v18 = [(VisionCoreISPInferenceNetworkPostProcessingOutput *)&v20 init];
  if (v18)
  {
    v18->_personImageBuffer = CVPixelBufferRetain(buffer);
    v18->_personImageBufferOrientation = orientation;
    v18->_salientPersonImageBuffer = CVPixelBufferRetain(imageBuffer);
    v18->_salientPersonImageBufferOrientation = bufferOrientation;
    v18->_skinImageBuffer = CVPixelBufferRetain(skinImageBuffer);
    v18->_skinImageBufferOrientation = imageBufferOrientation;
    v18->_hairImageBuffer = CVPixelBufferRetain(hairImageBuffer);
    v18->_hairImageBufferOrientation = hairImageBufferOrientation;
    v18->_skyImageBuffer = CVPixelBufferRetain(skyImageBuffer);
    v18->_skyImageBufferOrientation = skyImageBufferOrientation;
  }

  return v18;
}

@end