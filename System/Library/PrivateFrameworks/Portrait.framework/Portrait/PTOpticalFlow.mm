@interface PTOpticalFlow
- (PTOpticalFlow)initWithMetalContext:(id)context colorSize:(id *)size lktPreset:(int64_t)preset allocateDisplacementFWD:(BOOL)d needConversionBGRA2YUVA:(BOOL)a inverseFlow:(BOOL)flow;
- (id)toTextureArray:(id)array;
- (signed)estimateDisplacementFWD:(id)d sourceRGBA:(id)a destRGBA:(id)bA;
- (signed)estimateDisplacementStream:(id)stream destRGBA:(id)a outDisplacement:(id)displacement;
- (signed)estimateDisplacementStream:(id)stream index:(int)index doOpticalFlow:(BOOL)flow destRGBA:(id)a;
- (signed)setDisplacementFWD:(id)d;
- (signed)warp:(id)warp inTexture:(id)texture inDisplacement:(id)displacement outTextureWarped:(id)warped;
@end

@implementation PTOpticalFlow

- (PTOpticalFlow)initWithMetalContext:(id)context colorSize:(id *)size lktPreset:(int64_t)preset allocateDisplacementFWD:(BOOL)d needConversionBGRA2YUVA:(BOOL)a inverseFlow:(BOOL)flow
{
  aCopy = a;
  dCopy = d;
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = PTOpticalFlow;
  v16 = [(PTOpticalFlow *)&v29 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_15;
  }

  v16->_inverseFlow = flow;
  objc_storeStrong(&v16->_metalContext, context);
  v17[5] = vmovn_s64(vaddq_s64(vandq_s8(*&size->var0, vdupq_n_s64(1uLL)), *&size->var0));
  v18 = [contextCopy computePipelineStateFor:@"warpTexture" withConstants:0];
  v19 = v17[2];
  v17[2] = v18;

  if (!*&v17[2])
  {
    v27 = _PTLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PTOpticalFlow initWithMetalContext:colorSize:lktPreset:allocateDisplacementFWD:needConversionBGRA2YUVA:inverseFlow:];
    }

    goto LABEL_14;
  }

  v20 = [[PTLKTFlow alloc] initWithMetalContext:contextCopy width:v17[5].u32[0] height:v17[5].u32[1] nscales:0xFFFFFFFFLL];
  v21 = v17[3];
  v17[3] = v20;

  v22 = v17[3];
  if (!v22)
  {
    v27 = _PTLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PTOpticalFlow initWithMetalContext:colorSize:lktPreset:allocateDisplacementFWD:needConversionBGRA2YUVA:inverseFlow:];
    }

LABEL_14:

LABEL_15:
    v26 = 0;
    goto LABEL_16;
  }

  [v22 setIsInverse:v17[6].u8[1]];
  [*&v17[3] setNeedConversionBGRA2YUVA:aCopy];
  [*&v17[3] setUseNonLocalRegularization:1];
  [*&v17[3] setIsBidirectional:0];
  [*&v17[3] setPreset:preset];
  if (dCopy)
  {
    textureUtil = [contextCopy textureUtil];
    v24 = [textureUtil createWithWidth:v17[5].i32[0] height:v17[5].i32[1] pixelFormat:65];
    v25 = v17[4];
    v17[4] = v24;

    if (v17[4])
    {
      [*&v17[3] setOutputTexUV:?];
      goto LABEL_7;
    }

    v27 = _PTLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PTOpticalFlow initWithMetalContext:colorSize:lktPreset:allocateDisplacementFWD:needConversionBGRA2YUVA:inverseFlow:];
    }

    goto LABEL_14;
  }

LABEL_7:
  v26 = v17;
LABEL_16:

  return v26;
}

- (signed)estimateDisplacementStream:(id)stream index:(int)index doOpticalFlow:(BOOL)flow destRGBA:(id)a
{
  v6 = [(PTLKTFlow *)self->_lktflowgpuContext estimateFlowStreamTex:a index:*&index doOpticalFlow:flow commandBuffer:stream];
  if (v6)
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTOpticalFlow estimateDisplacementStream:index:doOpticalFlow:destRGBA:];
    }
  }

  return v6;
}

- (signed)estimateDisplacementStream:(id)stream destRGBA:(id)a outDisplacement:(id)displacement
{
  v9 = self->_displacementFWD;
  aCopy = a;
  streamCopy = stream;
  [(PTOpticalFlow *)self setDisplacementFWD:displacement];
  LOWORD(displacement) = [(PTLKTFlow *)self->_lktflowgpuContext estimateFlowStreamTex:aCopy commandBuffer:streamCopy];

  if (displacement)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PTOpticalFlow estimateDisplacementStream:destRGBA:outDisplacement:];
    }

    v13 = -1;
  }

  else
  {
    v13 = [(PTOpticalFlow *)self setDisplacementFWD:v9];
  }

  return v13;
}

- (signed)estimateDisplacementFWD:(id)d sourceRGBA:(id)a destRGBA:(id)bA
{
  v5 = [(PTLKTFlow *)self->_lktflowgpuContext estimateFlowFromTexReference:a target:bA commandBuffer:d];
  v6 = v5;
  if (v5 << 16)
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTOpticalFlow estimateDisplacementFWD:sourceRGBA:destRGBA:];
    }
  }

  return v6;
}

- (id)toTextureArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy textureType] == 3)
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

- (signed)warp:(id)warp inTexture:(id)texture inDisplacement:(id)displacement outTextureWarped:(id)warped
{
  warpedCopy = warped;
  displacementCopy = displacement;
  textureCopy = texture;
  computeCommandEncoder = [warp computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_warpTexture];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:warpedCopy atIndex:1];
  [computeCommandEncoder setTexture:displacementCopy atIndex:2];

  if (self->_inverseFlow)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = -1.0;
  }

  v20 = v14 / [warpedCopy width];
  height = [warpedCopy height];
  *&v16 = v20;
  *(&v16 + 1) = v14 / height;
  v24 = v16;
  [computeCommandEncoder setBytes:&v24 length:8 atIndex:0];
  width = [warpedCopy width];
  height2 = [warpedCopy height];

  v23[0] = width;
  v23[1] = height2;
  v23[2] = 1;
  v21 = vdupq_n_s64(8uLL);
  v22 = 1;
  [computeCommandEncoder dispatchThreads:v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (signed)setDisplacementFWD:(id)d
{
  dCopy = d;
  v6 = dCopy;
  if (!self->_allocateDisplacementFWD || self->_displacementFWD == dCopy)
  {
    objc_storeStrong(&self->_displacementFWD, d);
    [(PTLKTFlow *)self->_lktflowgpuContext setOutputTexUV:self->_displacementFWD];
    v8 = 0;
  }

  else
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTOpticalFlow setDisplacementFWD:];
    }

    v8 = -1;
  }

  return v8;
}

@end