@interface PXGExposureBlurKernel
+ (id)_exposurePipelineStateForDevice:(id)a3;
- (PXGExposureBlurKernel)init;
- (void)_encodeExposure:(float)a3 texture:(id)a4 toCommandBuffer:(id)a5;
- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5 targetScale:(double)a6;
- (void)preloadWithDevice:(id)a3;
@end

@implementation PXGExposureBlurKernel

- (void)preloadWithDevice:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PXGExposureBlurKernel_preloadWithDevice___block_invoke;
  block[3] = &unk_2782ABE50;
  v7 = v3;
  v4 = preloadWithDevice__onceToken;
  v5 = v3;
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

- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5 targetScale:(double)a6
{
  v22 = a3;
  v10 = a4;
  v11 = a5;
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
    [(PXGExposureBlurKernel *)self _encodeExposure:v10 texture:v22 toCommandBuffer:v15];
  }

  v17 = objc_alloc(MEMORY[0x277CD7520]);
  v18 = [v22 device];
  [(PXGExposureBlurKernel *)self radius];
  v20 = v19 * a6;
  *&v20 = v20;
  *&v20 = fabsf(*&v20);
  v21 = [v17 initWithDevice:v18 sigma:v20];

  [v21 setLabel:@"PXGExposureBlur.gaussianBlur"];
  [v21 setEdgeMode:1];
  [v21 setOptions:2];
  [v21 encodeToCommandBuffer:v22 sourceTexture:v10 destinationTexture:v11];
}

- (void)_encodeExposure:(float)a3 texture:(id)a4 toCommandBuffer:(id)a5
{
  v29 = a3;
  v6 = a4;
  v7 = a5;
  v8 = [v7 computeCommandEncoder];
  [v8 pushDebugGroup:@"PXGExposureBlur.exposure"];
  v9 = objc_opt_class();
  v10 = [v7 device];
  v11 = [v9 _exposurePipelineStateForDevice:v10];

  [v8 setComputePipelineState:v11];
  [v8 setTexture:v6 atIndex:0];
  [v8 setTexture:v6 atIndex:1];
  [v8 setBytes:&v29 length:4 atIndex:0];
  v12 = [v6 width];
  v13 = [v6 height];
  v14 = v11;
  v15 = [v14 threadExecutionWidth];
  v16 = [v14 maxTotalThreadsPerThreadgroup];
  v17 = v16 / v15;
  if (v15 <= v16)
  {
    v20 = 2 * v15;
    v21 = -1;
    v22 = -1;
    v23 = v15;
    v19 = v15;
    v18 = v16 / v15;
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

      if ((v17 + v13 - 1) / v17 * v17 * (v12 + v23 - 1) / v23 * v23 - v13 * v12 <= v21)
      {
        v26 = v24 / v25;
        if (v26 <= v22)
        {
          v18 = v17;
          v19 = v23;
          v22 = v26;
          v21 = (v17 + v13 - 1) / v17 * v17 * (v12 + v23 - 1) / v23 * v23 - v13 * v12;
        }
      }

      v23 += v15;
      v17 = v16 / v20;
      v20 += v15;
    }

    while (v23 <= v16);
  }

  else
  {
    v18 = v16 / v15;
    v19 = v15;
  }

  v28[0] = (v12 + v19 - 1) / v19;
  v28[1] = (v13 + v18 - 1) / v18;
  v28[2] = 1;
  v27[0] = v19;
  v27[1] = v18;
  v27[2] = 1;
  [v8 dispatchThreadgroups:v28 threadsPerThreadgroup:v27];
  [v8 popDebugGroup];
  [v8 endEncoding];
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

+ (id)_exposurePipelineStateForDevice:(id)a3
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v6 = objc_getAssociatedObject(v4, sel__exposurePipelineStateForDevice_);
  if (!v6)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = 0;
    v8 = [v4 newDefaultLibraryWithBundle:v7 error:&v14];
    v9 = v14;

    if (v8)
    {
      v10 = [v8 newFunctionWithName:@"PXGExposure"];
      if (v10)
      {
        v13 = v9;
        v6 = [v4 newComputePipelineStateWithFunction:v10 error:&v13];
        v11 = v13;

        if (v6)
        {
          objc_setAssociatedObject(v4, sel__exposurePipelineStateForDevice_, v6, 0x301);
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

  objc_sync_exit(v5);

  return v6;
}

@end