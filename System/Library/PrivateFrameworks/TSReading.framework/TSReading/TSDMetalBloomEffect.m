@interface TSDMetalBloomEffect
- (TSDMetalBloomEffect)initWithEffectSize:(CGSize)a3 blurScale:(double)a4 metalContext:(id)a5;
- (id)p_blurTextureWithTexture:(id)a3 metalContext:(id)a4 MVPMatrix:(CATransform3D *)a5;
- (void)drawBloomEffectWithTexture:(id)a3 metalContext:(id)a4 encoder:(id)a5 MVPMatrix:(CATransform3D *)a6 bloomAmount:(double)a7;
- (void)p_setupBuffersWithMetalContext:(id)a3;
- (void)p_setupShadersWithMetalContext:(id)a3;
- (void)teardown;
@end

@implementation TSDMetalBloomEffect

- (TSDMetalBloomEffect)initWithEffectSize:(CGSize)a3 blurScale:(double)a4 metalContext:(id)a5
{
  v22 = *&a3.height;
  v24 = *&a4;
  v6 = a5;
  v25.receiver = self;
  v25.super_class = TSDMetalBloomEffect;
  v7 = [(TSDMetalBloomEffect *)&v25 init];
  v8 = v7;
  if (v7)
  {
    v9 = *&v22;
    v7->_effectSize.width = a3.width;
    *&v7->_effectSize.height = v22;
    v10 = v24;
    v11.f64[0] = a3.width;
    if (*&v24 < 1.0)
    {
      v12 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalBloomEffect initWithEffectSize:blurScale:metalContext:]"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalBloomEffect.m"];
      [v12 handleFailureInFunction:v13 file:v14 lineNumber:47 description:@"blurScale must be >= 1.0!"];

      v9 = *&v22;
      v11.f64[0] = a3.width;
      v10 = v24;
    }

    v11.f64[1] = v9;
    v15 = vrndp_f32(vcvt_f32_f64(vdivq_f64(v11, vdupq_lane_s64(v10, 0))));
    __asm { FMOV            V1.2S, #16.0 }

    v8->_blurBufferSize = vcvtq_f64_f32(vbsl_s8(vcge_f32(_D1, v15), _D1, v15));
    [(TSDMetalBloomEffect *)v8 p_setupShadersWithMetalContext:v6, v22, a3, v24];
    [(TSDMetalBloomEffect *)v8 p_setupBuffersWithMetalContext:v6];
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

- (void)p_setupShadersWithMetalContext:(id)a3
{
  v4 = MEMORY[0x277CD6F68];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setPixelFormat:objc_msgSend(v5, "pixelFormat")];
  v7 = [TSDMetalShader alloc];
  v8 = [v5 device];
  v9 = [(TSDMetalShader *)v7 initDefaultTextureShaderWithDevice:v8 colorAttachment:v6];
  fboTransferShader = self->_fboTransferShader;
  self->_fboTransferShader = v9;

  v11 = [TSDMetalShader alloc];
  v12 = [v5 device];
  v13 = [(TSDMetalShader *)v11 initDefaultGaussianBlurShaderWithDevice:v12 colorAttachment:v6 halfSizedRadius:0];
  blurShader = self->_blurShader;
  self->_blurShader = v13;

  [v6 setBlendingEnabled:1];
  [v6 setDestinationRGBBlendFactor:5];
  [v6 setDestinationAlphaBlendFactor:5];
  v15 = [TSDMetalShader alloc];
  v16 = [v5 device];

  v17 = [(TSDMetalShader *)v15 initDefaultBloomShaderWithDevice:v16 colorAttachment:v6];
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

- (void)p_setupBuffersWithMetalContext:(id)a3
{
  v5 = TSDRectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a3;
  v13 = [v12 device];
  v14 = [TSDGPUDataBuffer newDataBufferWithVertexRect:v13 textureRect:v5 device:v7, v9, v11, 0.0, 0.0, 1.0, 1.0];
  dataBuffer = self->_dataBuffer;
  self->_dataBuffer = v14;

  v16 = TSDRectWithSize();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v12 device];
  v24 = [TSDGPUDataBuffer newDataBufferWithVertexRect:v23 textureRect:v16 device:v18, v20, v22, 0.0, 0.0, 1.0, 1.0];
  blurDataBuffer = self->_blurDataBuffer;
  self->_blurDataBuffer = v24;

  v26 = [[TSDMetalRenderTarget alloc] initWithSize:v12 metalContext:self->_blurBufferSize.width, self->_blurBufferSize.height];
  downSampleRenderTarget = self->_downSampleRenderTarget;
  self->_downSampleRenderTarget = v26;

  v28 = [[TSDMetalRenderTarget alloc] initWithSize:v12 metalContext:self->_blurBufferSize.width, self->_blurBufferSize.height];
  horizontalBlurRenderTarget = self->_horizontalBlurRenderTarget;
  self->_horizontalBlurRenderTarget = v28;

  v30 = [[TSDMetalRenderTarget alloc] initWithSize:v12 metalContext:self->_blurBufferSize.width, self->_blurBufferSize.height];
  verticalBlurRenderTarget = self->_verticalBlurRenderTarget;
  self->_verticalBlurRenderTarget = v30;
}

- (id)p_blurTextureWithTexture:(id)a3 metalContext:(id)a4 MVPMatrix:(CATransform3D *)a5
{
  v8 = a3;
  v9 = [a4 commandQueue];
  v10 = [v9 commandBuffer];

  v11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a5->m21), *&a5->m23);
  v12 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a5->m31), *&a5->m33);
  v13 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a5->m41), *&a5->m43);
  v24 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a5->m11), *&a5->m13);
  v14 = [(TSDMetalRenderTarget *)self->_downSampleRenderTarget passDescriptor:*&v24];
  v15 = [v10 renderCommandEncoderWithDescriptor:v14];

  [(TSDMetalShader *)self->_fboTransferShader setPipelineStateWithEncoder:v15 vertexBytes:&v24];
  [v15 setFragmentTexture:v8 atIndex:0];

  [(TSDMTLDataBuffer *)self->_dataBuffer drawWithEncoder:v15 atIndex:[(TSDMetalShader *)self->_fboTransferShader bufferIndex]];
  [v15 endEncoding];
  v16 = [(TSDMetalRenderTarget *)self->_horizontalBlurRenderTarget passDescriptor];
  v17 = [v10 renderCommandEncoderWithDescriptor:v16];

  LOBYTE(self[1]._effectSize.width) = 1;
  [(TSDMetalShader *)self->_blurShader setPipelineStateWithEncoder:v17 vertexBytes:self->_anon_70 fragmentBytes:&self[1]];
  v18 = [(TSDMetalRenderTarget *)self->_downSampleRenderTarget texture];
  [v17 setFragmentTexture:v18 atIndex:0];

  [(TSDMTLDataBuffer *)self->_blurDataBuffer drawWithEncoder:v17 atIndex:[(TSDMetalShader *)self->_blurShader bufferIndex]];
  [v17 endEncoding];
  v19 = [(TSDMetalRenderTarget *)self->_verticalBlurRenderTarget passDescriptor];
  v20 = [v10 renderCommandEncoderWithDescriptor:v19];

  LOBYTE(self[1]._effectSize.width) = 0;
  [(TSDMetalShader *)self->_blurShader setPipelineStateWithEncoder:v20 vertexBytes:self->_anon_70 fragmentBytes:&self[1]];
  v21 = [(TSDMetalRenderTarget *)self->_horizontalBlurRenderTarget texture];
  [v20 setFragmentTexture:v21 atIndex:0];

  [(TSDMTLDataBuffer *)self->_blurDataBuffer drawWithEncoder:v20 atIndex:[(TSDMetalShader *)self->_blurShader bufferIndex]];
  [v20 endEncoding];
  [v10 commit];
  v22 = [(TSDMetalRenderTarget *)self->_verticalBlurRenderTarget texture];

  return v22;
}

- (void)drawBloomEffectWithTexture:(id)a3 metalContext:(id)a4 encoder:(id)a5 MVPMatrix:(CATransform3D *)a6 bloomAmount:(double)a7
{
  v12 = *&a6->m33;
  v28 = *&a6->m31;
  v29 = v12;
  v13 = *&a6->m43;
  v30 = *&a6->m41;
  v31 = v13;
  v14 = *&a6->m13;
  v24 = *&a6->m11;
  v25 = v14;
  v15 = *&a6->m23;
  v26 = *&a6->m21;
  v27 = v15;
  v16 = a5;
  v17 = a3;
  v18 = [(TSDMetalBloomEffect *)self p_blurTextureWithTexture:v17 metalContext:a4 MVPMatrix:&v24];
  v19 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a6->m21), *&a6->m23);
  v20 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a6->m31), *&a6->m33);
  v21 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a6->m41), *&a6->m43);
  v24 = vcvt_hight_f32_f64(vcvt_f32_f64(*&a6->m11), *&a6->m13);
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v22 = a7;
  v23 = v22;
  [(TSDMetalShader *)self->_bloomShader setPipelineStateWithEncoder:v16 vertexBytes:&v24 fragmentBytes:&v23];
  [v16 setFragmentTexture:v17 atIndex:0];

  [v16 setFragmentTexture:v18 atIndex:1];
  [(TSDMTLDataBuffer *)self->_dataBuffer drawWithEncoder:v16 atIndex:[(TSDMetalShader *)self->_bloomShader bufferIndex]];
}

@end