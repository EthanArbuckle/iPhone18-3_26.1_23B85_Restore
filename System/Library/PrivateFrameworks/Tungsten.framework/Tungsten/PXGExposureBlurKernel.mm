@interface PXGExposureBlurKernel
+ (id)_exposurePipelineStateForDevice:(id)device;
- (PXGExposureBlurKernel)init;
- (void)_encodeExposure:(float)exposure texture:(id)texture toCommandBuffer:(id)buffer;
- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture targetScale:(double)scale;
- (void)preloadWithDevice:(id)device;
@end

@implementation PXGExposureBlurKernel

- (void)preloadWithDevice:(id)device
{
  deviceCopy = device;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PXGExposureBlurKernel_preloadWithDevice___block_invoke;
  block[3] = &unk_2782ABE50;
  v7 = deviceCopy;
  v4 = preloadWithDevice__onceToken;
  v5 = deviceCopy;
  if (v4 != -1)
  {
    dispatch_once(&preloadWithDevice__onceToken, block);
  }
}

void __43__PXGExposureBlurKernel_preloadWithDevice___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CD7520]);
  LODWORD(v3) = 1.0;
  v4 = [v2 initWithDevice:*(a1 + 32) sigma:v3];
}

- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture targetScale:(double)scale
{
  bufferCopy = buffer;
  textureCopy = texture;
  destinationTextureCopy = destinationTexture;
  [(PXGExposureBlurKernel *)self multiplier];
  v13 = v12;
  [(PXGExposureBlurKernel *)self exposure];
  v15 = fabs(v14);
  if (v15 > 0.001)
  {
    [(PXGExposureBlurKernel *)self exposure];
    v15 = exp2(v16);
    *&v15 = v15;
    v13 = v13 * *&v15;
  }

  if (v13 != 1.0)
  {
    *&v15 = v13;
    [(PXGExposureBlurKernel *)self _encodeExposure:textureCopy texture:bufferCopy toCommandBuffer:v15];
  }

  v17 = objc_alloc(MEMORY[0x277CD7520]);
  device = [bufferCopy device];
  [(PXGExposureBlurKernel *)self radius];
  v20 = v19 * scale;
  *&v20 = v20;
  *&v20 = fabsf(*&v20);
  v21 = [v17 initWithDevice:device sigma:v20];

  [v21 setLabel:@"PXGExposureBlur.gaussianBlur"];
  [v21 setEdgeMode:1];
  [v21 setOptions:2];
  [v21 encodeToCommandBuffer:bufferCopy sourceTexture:textureCopy destinationTexture:destinationTextureCopy];
}

- (void)_encodeExposure:(float)exposure texture:(id)texture toCommandBuffer:(id)buffer
{
  exposureCopy = exposure;
  textureCopy = texture;
  bufferCopy = buffer;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder pushDebugGroup:@"PXGExposureBlur.exposure"];
  v9 = objc_opt_class();
  device = [bufferCopy device];
  v11 = [v9 _exposurePipelineStateForDevice:device];

  [computeCommandEncoder setComputePipelineState:v11];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:textureCopy atIndex:1];
  [computeCommandEncoder setBytes:&exposureCopy length:4 atIndex:0];
  width = [textureCopy width];
  height = [textureCopy height];
  v14 = v11;
  threadExecutionWidth = [v14 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [v14 maxTotalThreadsPerThreadgroup];
  v17 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  if (threadExecutionWidth <= maxTotalThreadsPerThreadgroup)
  {
    v20 = 2 * threadExecutionWidth;
    v21 = -1;
    v22 = -1;
    v23 = threadExecutionWidth;
    v19 = threadExecutionWidth;
    v18 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    do
    {
      if (v23 <= v17)
      {
        v24 = v17;
      }

      else
      {
        v24 = v23;
      }

      if (v23 >= v17)
      {
        v25 = v17;
      }

      else
      {
        v25 = v23;
      }

      if ((v17 + height - 1) / v17 * v17 * (width + v23 - 1) / v23 * v23 - height * width <= v21)
      {
        v26 = v24 / v25;
        if (v26 <= v22)
        {
          v18 = v17;
          v19 = v23;
          v22 = v26;
          v21 = (v17 + height - 1) / v17 * v17 * (width + v23 - 1) / v23 * v23 - height * width;
        }
      }

      v23 += threadExecutionWidth;
      v17 = maxTotalThreadsPerThreadgroup / v20;
      v20 += threadExecutionWidth;
    }

    while (v23 <= maxTotalThreadsPerThreadgroup);
  }

  else
  {
    v18 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    v19 = threadExecutionWidth;
  }

  v28[0] = (width + v19 - 1) / v19;
  v28[1] = (height + v18 - 1) / v18;
  v28[2] = 1;
  v27[0] = v19;
  v27[1] = v18;
  v27[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v28 threadsPerThreadgroup:v27];
  [computeCommandEncoder popDebugGroup];
  [computeCommandEncoder endEncoding];
}

- (PXGExposureBlurKernel)init
{
  v3.receiver = self;
  v3.super_class = PXGExposureBlurKernel;
  result = [(PXGExposureBlurKernel *)&v3 init];
  if (result)
  {
    result->_multiplier = 1.0;
  }

  return result;
}

+ (id)_exposurePipelineStateForDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_getAssociatedObject(deviceCopy, sel__exposurePipelineStateForDevice_);
  if (!v6)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = 0;
    v8 = [deviceCopy newDefaultLibraryWithBundle:v7 error:&v14];
    v9 = v14;

    if (v8)
    {
      v10 = [v8 newFunctionWithName:@"PXGExposure"];
      if (v10)
      {
        v13 = v9;
        v6 = [deviceCopy newComputePipelineStateWithFunction:v10 error:&v13];
        v11 = v13;

        if (v6)
        {
          objc_setAssociatedObject(deviceCopy, sel__exposurePipelineStateForDevice_, v6, 0x301);
        }

        else
        {
          NSLog(&cfstr_CouldNotLoadMe.isa, v11);
          v6 = 0;
        }
      }

      else
      {
        NSLog(&cfstr_CouldNotLoadMe_0.isa);
        v6 = 0;
        v11 = v9;
      }

      v9 = v11;
    }

    else
    {
      NSLog(&cfstr_CouldNotLoadMe.isa, v9);
      v6 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return v6;
}

@end