@interface PXGMotionBlurKernel
- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture targetScale:(double)scale;
- (void)preloadWithDevice:(id)device;
@end

@implementation PXGMotionBlurKernel

- (void)preloadWithDevice:(id)device
{
  deviceCopy = device;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PXGMotionBlurKernel_preloadWithDevice___block_invoke;
  block[3] = &unk_2782ABE50;
  v7 = deviceCopy;
  v4 = preloadWithDevice__onceToken_8097;
  v5 = deviceCopy;
  if (v4 != -1)
  {
    dispatch_once(&preloadWithDevice__onceToken_8097, block);
  }
}

void __41__PXGMotionBlurKernel_preloadWithDevice___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277CD74E8]) initWithDevice:*(a1 + 32) kernelWidth:11 kernelHeight:11];
}

- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture targetScale:(double)scale
{
  bufferCopy = buffer;
  textureCopy = texture;
  destinationTextureCopy = destinationTexture;
  size = self->_size;
  if (self->_direction == 1)
  {
    v12 = 1;
    v13 = (2 * vcvtad_u64_f64(fabs(size * [textureCopy width]) * 0.5)) | 1;
  }

  else
  {
    v13 = 1;
    v12 = (2 * vcvtad_u64_f64(fabs(size * [textureCopy height]) * 0.5)) | 1;
  }

  if (self->_boxKernel || [0 kernelWidth] != v12 || -[MPSImageBox kernelHeight](self->_boxKernel, "kernelHeight") != v13 || (-[MPSImageBox device](self->_boxKernel, "device"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(bufferCopy, "device"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v14 != v15))
  {
    v16 = objc_alloc(MEMORY[0x277CD74E8]);
    device = [bufferCopy device];
    v18 = [v16 initWithDevice:device kernelWidth:v12 kernelHeight:v13];
    boxKernel = self->_boxKernel;
    self->_boxKernel = v18;

    [(MPSImageBox *)self->_boxKernel setEdgeMode:0];
    [(MPSImageBox *)self->_boxKernel setOptions:2];
    [(MPSImageBox *)self->_boxKernel setLabel:@"PXGMotionBlur"];
  }

  [(MPSImageBox *)self->_boxKernel encodeToCommandBuffer:bufferCopy sourceTexture:textureCopy destinationTexture:destinationTextureCopy];
}

@end