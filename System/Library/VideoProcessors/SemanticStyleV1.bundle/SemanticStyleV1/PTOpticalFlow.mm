@interface PTOpticalFlow
- (PTOpticalFlow)initWithDevice:(id)device commandQueue:(id)queue colorSize:(id *)size disparitySize:(id *)disparitySize;
- (id)toTextureArray:(id)array;
- (signed)convertCoordToDisplacementMapFWD:(id)d displacementFWD:(id)wD coordFWD:(id)fWD;
- (signed)convertDisplacementToCoordFWD:(id)d displacementFWD:(id)wD coordFWD:(id)fWD;
- (signed)generateDisplacementFWDFromSourceRGBA:(id)a destRGBA:(id)bA;
- (signed)warpCoordFWD:(id)d inTexture:(id)texture coordFWD:(id)wD outTextureWarped:(id)warped;
- (signed)warpValid:(id)valid inTexture:(id)texture outTextureWarped:(id)warped;
- (signed)warpValidFill:(id)fill inTexture:(id)texture inValidTexture:(id)validTexture outTextureWarped:(id)warped;
- (signed)warp_displacementFWD:(id)d inTexture:(id)texture displacementFWD:(id)wD outTextureWarped:(id)warped;
@end

@implementation PTOpticalFlow

- (PTOpticalFlow)initWithDevice:(id)device commandQueue:(id)queue colorSize:(id *)size disparitySize:(id *)disparitySize
{
  deviceCopy = device;
  v38.receiver = self;
  v38.super_class = PTOpticalFlow;
  queueCopy = queue;
  v11 = [(PTOpticalFlow *)&v38 init];
  device = v11->_device;
  v11->_device = deviceCopy;
  v13 = deviceCopy;

  *&v11->_colorWidth = vmovn_s64(vaddq_s64(vandq_s8(*&size->var0, vdupq_n_s64(1uLL)), *&size->var0));
  v14 = [NSBundle bundleForClass:objc_opt_class(), v38.receiver, v38.super_class];
  v15 = [[FigMetalContext alloc] initWithbundle:v14 andOptionalCommandQueue:queueCopy];

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

- (signed)generateDisplacementFWDFromSourceRGBA:(id)a destRGBA:(id)bA
{
  if (![(LKTFlowGPU *)self->_lktflowgpuContext estimateFlowFromTexReference:a target:bA])
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

- (id)toTextureArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy textureType] == &dword_0 + 3)
  {
    v4 = arrayCopy;
  }

  else
  {
    v4 = [arrayCopy newTextureViewWithPixelFormat:objc_msgSend(arrayCopy textureType:"pixelFormat") levels:3 slices:0, 1, 0, 1];
  }

  v5 = v4;

  return v5;
}

- (signed)warp_displacementFWD:(id)d inTexture:(id)texture displacementFWD:(id)wD outTextureWarped:(id)warped
{
  warpedCopy = warped;
  wDCopy = wD;
  textureCopy = texture;
  computeCommandEncoder = [d computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->warpTexture];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:warpedCopy atIndex:1];
  [computeCommandEncoder setTexture:wDCopy atIndex:2];

  width = [warpedCopy width];
  height = [warpedCopy height];

  v19[0] = width;
  v19[1] = height;
  v19[2] = 1;
  v17 = vdupq_n_s64(8uLL);
  v18 = 1;
  [computeCommandEncoder dispatchThreads:v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (signed)warpValid:(id)valid inTexture:(id)texture outTextureWarped:(id)warped
{
  warpedCopy = warped;
  textureCopy = texture;
  computeCommandEncoder = [valid computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->warpValidTexture];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:warpedCopy atIndex:1];
  [computeCommandEncoder setTexture:self->_displacementFWD atIndex:2];
  width = [warpedCopy width];
  height = [warpedCopy height];

  v16[0] = width;
  v16[1] = height;
  v16[2] = 1;
  v14 = vdupq_n_s64(8uLL);
  v15 = 1;
  [computeCommandEncoder dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (signed)warpCoordFWD:(id)d inTexture:(id)texture coordFWD:(id)wD outTextureWarped:(id)warped
{
  warpedCopy = warped;
  wDCopy = wD;
  textureCopy = texture;
  computeCommandEncoder = [d computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->warpCoord];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:warpedCopy atIndex:1];
  [computeCommandEncoder setTexture:wDCopy atIndex:2];
  width = [wDCopy width];
  height = [wDCopy height];

  v19[0] = width;
  v19[1] = height;
  v19[2] = 1;
  v17 = vdupq_n_s64(8uLL);
  v18 = 1;
  [computeCommandEncoder dispatchThreads:v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (signed)convertDisplacementToCoordFWD:(id)d displacementFWD:(id)wD coordFWD:(id)fWD
{
  fWDCopy = fWD;
  wDCopy = wD;
  computeCommandEncoder = [d computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->displacementToCoord];
  [computeCommandEncoder setTexture:wDCopy atIndex:0];
  [computeCommandEncoder setTexture:fWDCopy atIndex:1];

  width = [wDCopy width];
  height = [wDCopy height];

  v16[0] = width;
  v16[1] = height;
  v16[2] = 1;
  v14 = vdupq_n_s64(8uLL);
  v15 = 1;
  [computeCommandEncoder dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (signed)convertCoordToDisplacementMapFWD:(id)d displacementFWD:(id)wD coordFWD:(id)fWD
{
  fWDCopy = fWD;
  wDCopy = wD;
  computeCommandEncoder = [d computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->coordToDisplacement];
  [computeCommandEncoder setTexture:wDCopy atIndex:0];
  [computeCommandEncoder setTexture:fWDCopy atIndex:1];

  width = [wDCopy width];
  height = [wDCopy height];

  v16[0] = width;
  v16[1] = height;
  v16[2] = 1;
  v14 = vdupq_n_s64(8uLL);
  v15 = 1;
  [computeCommandEncoder dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (signed)warpValidFill:(id)fill inTexture:(id)texture inValidTexture:(id)validTexture outTextureWarped:(id)warped
{
  warpedCopy = warped;
  validTextureCopy = validTexture;
  textureCopy = texture;
  computeCommandEncoder = [fill computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->warpValidFillTexture];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:validTextureCopy atIndex:1];
  [computeCommandEncoder setTexture:warpedCopy atIndex:2];
  [computeCommandEncoder setTexture:self->_displacementFWD atIndex:3];
  width = [warpedCopy width];
  height = [warpedCopy height];

  v19[0] = width;
  v19[1] = height;
  v19[2] = 1;
  v17 = vdupq_n_s64(8uLL);
  v18 = 1;
  [computeCommandEncoder dispatchThreads:v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];

  return 0;
}

@end