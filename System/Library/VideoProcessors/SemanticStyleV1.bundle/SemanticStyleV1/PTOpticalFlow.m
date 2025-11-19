@interface PTOpticalFlow
- (PTOpticalFlow)initWithDevice:(id)a3 commandQueue:(id)a4 colorSize:(id *)a5 disparitySize:(id *)a6;
- (id)toTextureArray:(id)a3;
- (signed)convertCoordToDisplacementMapFWD:(id)a3 displacementFWD:(id)a4 coordFWD:(id)a5;
- (signed)convertDisplacementToCoordFWD:(id)a3 displacementFWD:(id)a4 coordFWD:(id)a5;
- (signed)generateDisplacementFWDFromSourceRGBA:(id)a3 destRGBA:(id)a4;
- (signed)warpCoordFWD:(id)a3 inTexture:(id)a4 coordFWD:(id)a5 outTextureWarped:(id)a6;
- (signed)warpValid:(id)a3 inTexture:(id)a4 outTextureWarped:(id)a5;
- (signed)warpValidFill:(id)a3 inTexture:(id)a4 inValidTexture:(id)a5 outTextureWarped:(id)a6;
- (signed)warp_displacementFWD:(id)a3 inTexture:(id)a4 displacementFWD:(id)a5 outTextureWarped:(id)a6;
@end

@implementation PTOpticalFlow

- (PTOpticalFlow)initWithDevice:(id)a3 commandQueue:(id)a4 colorSize:(id *)a5 disparitySize:(id *)a6
{
  v9 = a3;
  v38.receiver = self;
  v38.super_class = PTOpticalFlow;
  v10 = a4;
  v11 = [(PTOpticalFlow *)&v38 init];
  device = v11->_device;
  v11->_device = v9;
  v13 = v9;

  *&v11->_colorWidth = vmovn_s64(vaddq_s64(vandq_s8(*&a5->var0, vdupq_n_s64(1uLL)), *&a5->var0));
  v14 = [NSBundle bundleForClass:objc_opt_class(), v38.receiver, v38.super_class];
  v15 = [[FigMetalContext alloc] initWithbundle:v14 andOptionalCommandQueue:v10];

  metalContext = v11->_metalContext;
  v11->_metalContext = v15;

  v17 = [(FigMetalContext *)v11->_metalContext computePipelineStateFor:@"warpTexture" constants:0];
  warpTexture = v11->warpTexture;
  v11->warpTexture = v17;

  v19 = [(FigMetalContext *)v11->_metalContext computePipelineStateFor:@"warpCoord" constants:0];
  warpCoord = v11->warpCoord;
  v11->warpCoord = v19;

  v21 = [(FigMetalContext *)v11->_metalContext computePipelineStateFor:@"displacementToCoord" constants:0];
  displacementToCoord = v11->displacementToCoord;
  v11->displacementToCoord = v21;

  v23 = [(FigMetalContext *)v11->_metalContext computePipelineStateFor:@"warpValidTexture" constants:0];
  warpValidTexture = v11->warpValidTexture;
  v11->warpValidTexture = v23;

  v25 = [(FigMetalContext *)v11->_metalContext computePipelineStateFor:@"coordToDisplacement" constants:0];
  coordToDisplacement = v11->coordToDisplacement;
  v11->coordToDisplacement = v25;

  v27 = [(FigMetalContext *)v11->_metalContext computePipelineStateFor:@"warpValidFillTexture" constants:0];
  warpValidFillTexture = v11->warpValidFillTexture;
  v11->warpValidFillTexture = v27;

  v29 = [[LKTFlowGPU alloc] initWithMetalContext:v11->_metalContext width:v11->_colorWidth height:v11->_colorHeight nscales:0xFFFFFFFFLL];
  lktflowgpuContext = v11->_lktflowgpuContext;
  v11->_lktflowgpuContext = v29;

  colorWidth = v11->_colorWidth;
  colorHeight = v11->_colorHeight;
  v33 = v11->_device;
  v34 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:65 width:colorWidth height:colorHeight mipmapped:0];
  [v34 setUsage:19];
  [v34 setMipmapLevelCount:1];
  v35 = [(MTLDevice *)v33 newTextureWithDescriptor:v34];

  displacementFWD = v11->_displacementFWD;
  v11->_displacementFWD = v35;

  [(LKTFlowGPU *)v11->_lktflowgpuContext setNeedConversionBGRA2YUVA:0];
  [(LKTFlowGPU *)v11->_lktflowgpuContext setUseNonLocalRegularization:1];
  [(LKTFlowGPU *)v11->_lktflowgpuContext setIsBidirectional:0];
  [(LKTFlowGPU *)v11->_lktflowgpuContext setPreset:1];
  [(LKTFlowGPU *)v11->_lktflowgpuContext setOutputTexUV:v11->_displacementFWD];

  return v11;
}

- (signed)generateDisplacementFWDFromSourceRGBA:(id)a3 destRGBA:(id)a4
{
  if (![(LKTFlowGPU *)self->_lktflowgpuContext estimateFlowFromTexReference:a3 target:a4])
  {
    return 0;
  }

  if (qword_1E200 != -1)
  {
    sub_D8F0();
  }

  v4 = qword_1E1F8;
  if (os_log_type_enabled(qword_1E1F8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Err", v7, 2u);
  }

  return -1;
}

- (id)toTextureArray:(id)a3
{
  v3 = a3;
  if ([v3 textureType] == &dword_0 + 3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 newTextureViewWithPixelFormat:objc_msgSend(v3 textureType:"pixelFormat") levels:3 slices:0, 1, 0, 1];
  }

  v5 = v4;

  return v5;
}

- (signed)warp_displacementFWD:(id)a3 inTexture:(id)a4 displacementFWD:(id)a5 outTextureWarped:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 computeCommandEncoder];
  [v13 setComputePipelineState:self->warpTexture];
  [v13 setTexture:v12 atIndex:0];

  [v13 setTexture:v10 atIndex:1];
  [v13 setTexture:v11 atIndex:2];

  v14 = [v10 width];
  v15 = [v10 height];

  v19[0] = v14;
  v19[1] = v15;
  v19[2] = 1;
  v17 = vdupq_n_s64(8uLL);
  v18 = 1;
  [v13 dispatchThreads:v19 threadsPerThreadgroup:&v17];
  [v13 endEncoding];

  return 0;
}

- (signed)warpValid:(id)a3 inTexture:(id)a4 outTextureWarped:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->warpValidTexture];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  [v10 setTexture:self->_displacementFWD atIndex:2];
  v11 = [v8 width];
  v12 = [v8 height];

  v16[0] = v11;
  v16[1] = v12;
  v16[2] = 1;
  v14 = vdupq_n_s64(8uLL);
  v15 = 1;
  [v10 dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [v10 endEncoding];

  return 0;
}

- (signed)warpCoordFWD:(id)a3 inTexture:(id)a4 coordFWD:(id)a5 outTextureWarped:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 computeCommandEncoder];
  [v13 setComputePipelineState:self->warpCoord];
  [v13 setTexture:v12 atIndex:0];

  [v13 setTexture:v10 atIndex:1];
  [v13 setTexture:v11 atIndex:2];
  v14 = [v11 width];
  v15 = [v11 height];

  v19[0] = v14;
  v19[1] = v15;
  v19[2] = 1;
  v17 = vdupq_n_s64(8uLL);
  v18 = 1;
  [v13 dispatchThreads:v19 threadsPerThreadgroup:&v17];
  [v13 endEncoding];

  return 0;
}

- (signed)convertDisplacementToCoordFWD:(id)a3 displacementFWD:(id)a4 coordFWD:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->displacementToCoord];
  [v10 setTexture:v9 atIndex:0];
  [v10 setTexture:v8 atIndex:1];

  v11 = [v9 width];
  v12 = [v9 height];

  v16[0] = v11;
  v16[1] = v12;
  v16[2] = 1;
  v14 = vdupq_n_s64(8uLL);
  v15 = 1;
  [v10 dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [v10 endEncoding];

  return 0;
}

- (signed)convertCoordToDisplacementMapFWD:(id)a3 displacementFWD:(id)a4 coordFWD:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->coordToDisplacement];
  [v10 setTexture:v9 atIndex:0];
  [v10 setTexture:v8 atIndex:1];

  v11 = [v9 width];
  v12 = [v9 height];

  v16[0] = v11;
  v16[1] = v12;
  v16[2] = 1;
  v14 = vdupq_n_s64(8uLL);
  v15 = 1;
  [v10 dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [v10 endEncoding];

  return 0;
}

- (signed)warpValidFill:(id)a3 inTexture:(id)a4 inValidTexture:(id)a5 outTextureWarped:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 computeCommandEncoder];
  [v13 setComputePipelineState:self->warpValidFillTexture];
  [v13 setTexture:v12 atIndex:0];

  [v13 setTexture:v11 atIndex:1];
  [v13 setTexture:v10 atIndex:2];
  [v13 setTexture:self->_displacementFWD atIndex:3];
  v14 = [v10 width];
  v15 = [v10 height];

  v19[0] = v14;
  v19[1] = v15;
  v19[2] = 1;
  v17 = vdupq_n_s64(8uLL);
  v18 = 1;
  [v13 dispatchThreads:v19 threadsPerThreadgroup:&v17];
  [v13 endEncoding];

  return 0;
}

@end