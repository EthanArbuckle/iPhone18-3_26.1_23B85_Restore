@interface PXGMotionBlurKernel
- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5 targetScale:(double)a6;
- (void)preloadWithDevice:(id)a3;
@end

@implementation PXGMotionBlurKernel

- (void)preloadWithDevice:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PXGMotionBlurKernel_preloadWithDevice___block_invoke;
  block[3] = &unk_2782ABE50;
  v7 = v3;
  v4 = preloadWithDevice__onceToken_8097;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&preloadWithDevice__onceToken_8097, block);
  }
}

void __41__PXGMotionBlurKernel_preloadWithDevice___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277CD74E8]) initWithDevice:*(a1 + 32) kernelWidth:11 kernelHeight:11];
}

- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5 targetScale:(double)a6
{
  v20 = a3;
  v9 = a4;
  v10 = a5;
  size = self->_size;
  if (self->_direction == 1)
  {
    v12 = 1;
    v13 = (2 * vcvtad_u64_f64(fabs(size * [v9 width]) * 0.5)) | 1;
  }

  else
  {
    v13 = 1;
    v12 = (2 * vcvtad_u64_f64(fabs(size * [v9 height]) * 0.5)) | 1;
  }

  if (self->_boxKernel || [0 kernelWidth] != v12 || -[MPSImageBox kernelHeight](self->_boxKernel, "kernelHeight") != v13 || (-[MPSImageBox device](self->_boxKernel, "device"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "device"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v14 != v15))
  {
    v16 = objc_alloc(MEMORY[0x277CD74E8]);
    v17 = [v20 device];
    v18 = [v16 initWithDevice:v17 kernelWidth:v12 kernelHeight:v13];
    boxKernel = self->_boxKernel;
    self->_boxKernel = v18;

    [(MPSImageBox *)self->_boxKernel setEdgeMode:0];
    [(MPSImageBox *)self->_boxKernel setOptions:2];
    [(MPSImageBox *)self->_boxKernel setLabel:@"PXGMotionBlur"];
  }

  [(MPSImageBox *)self->_boxKernel encodeToCommandBuffer:v20 sourceTexture:v9 destinationTexture:v10];
}

@end