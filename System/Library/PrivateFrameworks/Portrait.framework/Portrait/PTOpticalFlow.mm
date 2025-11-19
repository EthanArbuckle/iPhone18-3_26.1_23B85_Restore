@interface PTOpticalFlow
- (PTOpticalFlow)initWithMetalContext:(id)a3 colorSize:(id *)a4 lktPreset:(int64_t)a5 allocateDisplacementFWD:(BOOL)a6 needConversionBGRA2YUVA:(BOOL)a7 inverseFlow:(BOOL)a8;
- (id)toTextureArray:(id)a3;
- (signed)estimateDisplacementFWD:(id)a3 sourceRGBA:(id)a4 destRGBA:(id)a5;
- (signed)estimateDisplacementStream:(id)a3 destRGBA:(id)a4 outDisplacement:(id)a5;
- (signed)estimateDisplacementStream:(id)a3 index:(int)a4 doOpticalFlow:(BOOL)a5 destRGBA:(id)a6;
- (signed)setDisplacementFWD:(id)a3;
- (signed)warp:(id)a3 inTexture:(id)a4 inDisplacement:(id)a5 outTextureWarped:(id)a6;
@end

@implementation PTOpticalFlow

- (PTOpticalFlow)initWithMetalContext:(id)a3 colorSize:(id *)a4 lktPreset:(int64_t)a5 allocateDisplacementFWD:(BOOL)a6 needConversionBGRA2YUVA:(BOOL)a7 inverseFlow:(BOOL)a8
{
  v9 = a7;
  v10 = a6;
  v15 = a3;
  v29.receiver = self;
  v29.super_class = PTOpticalFlow;
  v16 = [(PTOpticalFlow *)&v29 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_15;
  }

  v16->_inverseFlow = a8;
  objc_storeStrong(&v16->_metalContext, a3);
  v17[5] = vmovn_s64(vaddq_s64(vandq_s8(*&a4->var0, vdupq_n_s64(1uLL)), *&a4->var0));
  v18 = [v15 computePipelineStateFor:@"warpTexture" withConstants:0];
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

  v20 = [[PTLKTFlow alloc] initWithMetalContext:v15 width:v17[5].u32[0] height:v17[5].u32[1] nscales:0xFFFFFFFFLL];
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
  [*&v17[3] setNeedConversionBGRA2YUVA:v9];
  [*&v17[3] setUseNonLocalRegularization:1];
  [*&v17[3] setIsBidirectional:0];
  [*&v17[3] setPreset:a5];
  if (v10)
  {
    v23 = [v15 textureUtil];
    v24 = [v23 createWithWidth:v17[5].i32[0] height:v17[5].i32[1] pixelFormat:65];
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

- (signed)estimateDisplacementStream:(id)a3 index:(int)a4 doOpticalFlow:(BOOL)a5 destRGBA:(id)a6
{
  v6 = [(PTLKTFlow *)self->_lktflowgpuContext estimateFlowStreamTex:a6 index:*&a4 doOpticalFlow:a5 commandBuffer:a3];
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

- (signed)estimateDisplacementStream:(id)a3 destRGBA:(id)a4 outDisplacement:(id)a5
{
  v9 = self->_displacementFWD;
  v10 = a4;
  v11 = a3;
  [(PTOpticalFlow *)self setDisplacementFWD:a5];
  LOWORD(a5) = [(PTLKTFlow *)self->_lktflowgpuContext estimateFlowStreamTex:v10 commandBuffer:v11];

  if (a5)
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

- (signed)estimateDisplacementFWD:(id)a3 sourceRGBA:(id)a4 destRGBA:(id)a5
{
  v5 = [(PTLKTFlow *)self->_lktflowgpuContext estimateFlowFromTexReference:a4 target:a5 commandBuffer:a3];
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

- (id)toTextureArray:(id)a3
{
  v3 = a3;
  if ([v3 textureType] == 3)
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

- (signed)warp:(id)a3 inTexture:(id)a4 inDisplacement:(id)a5 outTextureWarped:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [a3 computeCommandEncoder];
  [v13 setComputePipelineState:self->_warpTexture];
  [v13 setTexture:v12 atIndex:0];

  [v13 setTexture:v10 atIndex:1];
  [v13 setTexture:v11 atIndex:2];

  if (self->_inverseFlow)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = -1.0;
  }

  v20 = v14 / [v10 width];
  v15 = [v10 height];
  *&v16 = v20;
  *(&v16 + 1) = v14 / v15;
  v24 = v16;
  [v13 setBytes:&v24 length:8 atIndex:0];
  v17 = [v10 width];
  v18 = [v10 height];

  v23[0] = v17;
  v23[1] = v18;
  v23[2] = 1;
  v21 = vdupq_n_s64(8uLL);
  v22 = 1;
  [v13 dispatchThreads:v23 threadsPerThreadgroup:&v21];
  [v13 endEncoding];

  return 0;
}

- (signed)setDisplacementFWD:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!self->_allocateDisplacementFWD || self->_displacementFWD == v5)
  {
    objc_storeStrong(&self->_displacementFWD, a3);
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