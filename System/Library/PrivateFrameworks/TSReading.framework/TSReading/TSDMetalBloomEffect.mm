@interface TSDMetalBloomEffect
- (TSDMetalBloomEffect)initWithEffectSize:(CGSize)size blurScale:(double)scale metalContext:(id)context;
- (id)p_blurTextureWithTexture:(id)texture metalContext:(id)context MVPMatrix:(CATransform3D *)matrix;
- (void)drawBloomEffectWithTexture:(id)texture metalContext:(id)context encoder:(id)encoder MVPMatrix:(CATransform3D *)matrix bloomAmount:(double)amount;
- (void)p_setupBuffersWithMetalContext:(id)context;
- (void)p_setupShadersWithMetalContext:(id)context;
- (void)teardown;
@end

@implementation TSDMetalBloomEffect

- (TSDMetalBloomEffect)initWithEffectSize:(CGSize)size blurScale:(double)scale metalContext:(id)context
{
  v22 = *&size.height;
  v24 = *&scale;
  contextCopy = context;
  v25.receiver = self;
  v25.super_class = TSDMetalBloomEffect;
  v7 = [(TSDMetalBloomEffect *)&v25 init];
  v8 = v7;
  if (v7)
  {
    v9 = *&v22;
    v7->_effectSize.width = size.width;
    *&v7->_effectSize.height = v22;
    v10 = v24;
    v11.f64[0] = size.width;
    if (*&v24 < 1.0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalBloomEffect initWithEffectSize:blurScale:metalContext:]"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalBloomEffect.m"];
      [currentHandler handleFailureInFunction:v13 file:v14 lineNumber:47 description:@"blurScale must be >= 1.0!"];

      v9 = *&v22;
      v11.f64[0] = size.width;
      v10 = v24;
    }

    v11.f64[1] = v9;
    v15 = vrndp_f32(vcvt_f32_f64(vdivq_f64(v11, vdupq_lane_s64(v10, 0))));
    __asm { FMOV            V1.2S, #16.0 }

    v8->_blurBufferSize = vcvtq_f64_f32(vbsl_s8(vcge_f32(_D1, v15), _D1, v15));
    [(TSDMetalBloomEffect *)v8 p_setupShadersWithMetalContext:contextCopy, v22, size, v24];
    [(TSDMetalBloomEffect *)v8 p_setupBuffersWithMetalContext:contextCopy];
  }

  return v8;
}

- (void)teardown
{
  dataBuffer = self->_dataBuffer;
  self->_dataBuffer = 0;

  blurDataBuffer = self->_blurDataBuffer;
  self->_blurDataBuffer = 0;

  blurShader = self->_blurShader;
  self->_blurShader = 0;

  bloomShader = self->_bloomShader;
  self->_bloomShader = 0;

  fboTransferShader = self->_fboTransferShader;
  self->_fboTransferShader = 0;

  downSampleRenderTarget = self->_downSampleRenderTarget;
  self->_downSampleRenderTarget = 0;

  horizontalBlurRenderTarget = self->_horizontalBlurRenderTarget;
  self->_horizontalBlurRenderTarget = 0;

  verticalBlurRenderTarget = self->_verticalBlurRenderTarget;
  self->_verticalBlurRenderTarget = 0;
}

- (void)p_setupShadersWithMetalContext:(id)context
{
  v4 = MEMORY[0x277CD6F68];
  contextCopy = context;
  v6 = objc_alloc_init(v4);
  [v6 setPixelFormat:objc_msgSend(contextCopy, "pixelFormat")];
  v7 = [TSDMetalShader alloc];
  device = [contextCopy device];
  v9 = [(TSDMetalShader *)v7 initDefaultTextureShaderWithDevice:device colorAttachment:v6];
  fboTransferShader = self->_fboTransferShader;
  self->_fboTransferShader = v9;

  v11 = [TSDMetalShader alloc];
  device2 = [contextCopy device];
  v13 = [(TSDMetalShader *)v11 initDefaultGaussianBlurShaderWithDevice:device2 colorAttachment:v6 halfSizedRadius:0];
  blurShader = self->_blurShader;
  self->_blurShader = v13;

  [v6 setBlendingEnabled:1];
  [v6 setDestinationRGBBlendFactor:5];
  [v6 setDestinationAlphaBlendFactor:5];
  v15 = [TSDMetalShader alloc];
  device3 = [contextCopy device];

  v17 = [(TSDMetalShader *)v15 initDefaultBloomShaderWithDevice:device3 colorAttachment:v6];
  bloomShader = self->_bloomShader;
  self->_bloomShader = v17;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  TSDTransform3DMakeOrtho(&v27, 0.0, self->_blurBufferSize.width, 0.0, self->_blurBufferSize.height, -1.0, 1.0);
  v19 = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v30);
  v20 = vcvt_hight_f32_f64(vcvt_f32_f64(v31), v32);
  v21 = vcvt_hight_f32_f64(vcvt_f32_f64(v33), v34);
  *self->_anon_70 = vcvt_hight_f32_f64(vcvt_f32_f64(v27), v28);
  *&self->_anon_70[16] = v19;
  *&self->_anon_70[32] = v20;
  *&self->_anon_70[48] = v21;
  __asm { FMOV            V1.2D, #1.0 }

  self[1].super.isa = vcvt_f32_f64(vdivq_f64(_Q1, self->_blurBufferSize));
}

- (void)p_setupBuffersWithMetalContext:(id)context
{
  v5 = TSDRectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  contextCopy = context;
  device = [contextCopy device];
  v14 = [TSDGPUDataBuffer newDataBufferWithVertexRect:device textureRect:v5 device:v7, v9, v11, 0.0, 0.0, 1.0, 1.0];
  dataBuffer = self->_dataBuffer;
  self->_dataBuffer = v14;

  v16 = TSDRectWithSize();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  device2 = [contextCopy device];
  v24 = [TSDGPUDataBuffer newDataBufferWithVertexRect:device2 textureRect:v16 device:v18, v20, v22, 0.0, 0.0, 1.0, 1.0];
  blurDataBuffer = self->_blurDataBuffer;
  self->_blurDataBuffer = v24;

  v26 = [[TSDMetalRenderTarget alloc] initWithSize:contextCopy metalContext:self->_blurBufferSize.width, self->_blurBufferSize.height];
  downSampleRenderTarget = self->_downSampleRenderTarget;
  self->_downSampleRenderTarget = v26;

  v28 = [[TSDMetalRenderTarget alloc] initWithSize:contextCopy metalContext:self->_blurBufferSize.width, self->_blurBufferSize.height];
  horizontalBlurRenderTarget = self->_horizontalBlurRenderTarget;
  self->_horizontalBlurRenderTarget = v28;

  v30 = [[TSDMetalRenderTarget alloc] initWithSize:contextCopy metalContext:self->_blurBufferSize.width, self->_blurBufferSize.height];
  verticalBlurRenderTarget = self->_verticalBlurRenderTarget;
  self->_verticalBlurRenderTarget = v30;
}

- (id)p_blurTextureWithTexture:(id)texture metalContext:(id)context MVPMatrix:(CATransform3D *)matrix
{
  textureCopy = texture;
  commandQueue = [context commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  v11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m21), *&matrix->m23);
  v12 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m31), *&matrix->m33);
  v13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m41), *&matrix->m43);
  v24 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m11), *&matrix->m13);
  v14 = [(TSDMetalRenderTarget *)self->_downSampleRenderTarget passDescriptor:*&v24];
  v15 = [commandBuffer renderCommandEncoderWithDescriptor:v14];

  [(TSDMetalShader *)self->_fboTransferShader setPipelineStateWithEncoder:v15 vertexBytes:&v24];
  [v15 setFragmentTexture:textureCopy atIndex:0];

  [(TSDMTLDataBuffer *)self->_dataBuffer drawWithEncoder:v15 atIndex:[(TSDMetalShader *)self->_fboTransferShader bufferIndex]];
  [v15 endEncoding];
  passDescriptor = [(TSDMetalRenderTarget *)self->_horizontalBlurRenderTarget passDescriptor];
  v17 = [commandBuffer renderCommandEncoderWithDescriptor:passDescriptor];

  LOBYTE(self[1]._effectSize.width) = 1;
  [(TSDMetalShader *)self->_blurShader setPipelineStateWithEncoder:v17 vertexBytes:self->_anon_70 fragmentBytes:&self[1]];
  texture = [(TSDMetalRenderTarget *)self->_downSampleRenderTarget texture];
  [v17 setFragmentTexture:texture atIndex:0];

  [(TSDMTLDataBuffer *)self->_blurDataBuffer drawWithEncoder:v17 atIndex:[(TSDMetalShader *)self->_blurShader bufferIndex]];
  [v17 endEncoding];
  passDescriptor2 = [(TSDMetalRenderTarget *)self->_verticalBlurRenderTarget passDescriptor];
  v20 = [commandBuffer renderCommandEncoderWithDescriptor:passDescriptor2];

  LOBYTE(self[1]._effectSize.width) = 0;
  [(TSDMetalShader *)self->_blurShader setPipelineStateWithEncoder:v20 vertexBytes:self->_anon_70 fragmentBytes:&self[1]];
  texture2 = [(TSDMetalRenderTarget *)self->_horizontalBlurRenderTarget texture];
  [v20 setFragmentTexture:texture2 atIndex:0];

  [(TSDMTLDataBuffer *)self->_blurDataBuffer drawWithEncoder:v20 atIndex:[(TSDMetalShader *)self->_blurShader bufferIndex]];
  [v20 endEncoding];
  [commandBuffer commit];
  texture3 = [(TSDMetalRenderTarget *)self->_verticalBlurRenderTarget texture];

  return texture3;
}

- (void)drawBloomEffectWithTexture:(id)texture metalContext:(id)context encoder:(id)encoder MVPMatrix:(CATransform3D *)matrix bloomAmount:(double)amount
{
  v12 = *&matrix->m33;
  v28 = *&matrix->m31;
  v29 = v12;
  v13 = *&matrix->m43;
  v30 = *&matrix->m41;
  v31 = v13;
  v14 = *&matrix->m13;
  v24 = *&matrix->m11;
  v25 = v14;
  v15 = *&matrix->m23;
  v26 = *&matrix->m21;
  v27 = v15;
  encoderCopy = encoder;
  textureCopy = texture;
  v18 = [(TSDMetalBloomEffect *)self p_blurTextureWithTexture:textureCopy metalContext:context MVPMatrix:&v24];
  v19 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m21), *&matrix->m23);
  v20 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m31), *&matrix->m33);
  v21 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m41), *&matrix->m43);
  v24 = vcvt_hight_f32_f64(vcvt_f32_f64(*&matrix->m11), *&matrix->m13);
  v25 = v19;
  v26 = v20;
  v27 = v21;
  amountCopy = amount;
  v23 = amountCopy;
  [(TSDMetalShader *)self->_bloomShader setPipelineStateWithEncoder:encoderCopy vertexBytes:&v24 fragmentBytes:&v23];
  [encoderCopy setFragmentTexture:textureCopy atIndex:0];

  [encoderCopy setFragmentTexture:v18 atIndex:1];
  [(TSDMTLDataBuffer *)self->_dataBuffer drawWithEncoder:encoderCopy atIndex:[(TSDMetalShader *)self->_bloomShader bufferIndex]];
}

@end