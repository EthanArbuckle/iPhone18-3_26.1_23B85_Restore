@interface TSDMetalMotionBlurEffect
- (CATransform3D)adjustTransformForMotionBlurBuffer:(SEL)a3;
- (CGSize)p_squashedVelocityFramebufferSize;
- (CGSize)p_updateMaxVelocityInShadersWithScale:(double)a3 isColorFBO:(BOOL)a4;
- (CGSize)p_velocityFramebufferSize;
- (CGSize)p_velocityFramebufferTextureScale;
- (CGSize)velocityScale;
- (CGSize)velocityScaleForColorFBO:(BOOL)a3;
- (TSDMetalMotionBlurEffect)initWithFramebufferSize:(CGSize)a3 slideSize:(CGSize)a4 randomGenerator:(id)a5 metalContext:(id)a6;
- (id)bindColorAndVelocityWithMetalContext:(id)a3 shouldFillBackground:(BOOL)a4;
- (id)colorAndVelocityBlendingShader;
- (id)colorAndVelocityShader;
- (void)drawResultWithWorkingRenderEncoder:(id)a3 destinationRenderEncoder:(id)a4 opacity:(double)a5;
- (void)p_blitIntoVelocityTexture;
- (void)p_debugDrawModeColorBufferWithEncoder:(id)a3;
- (void)p_debugDrawModeVelocityBufferDilatedWithEncoder:(id)a3;
- (void)p_debugDrawModeVelocityBufferWithEncoder:(id)a3;
- (void)p_dilateVelocityTexture;
- (void)p_drawWithEncoder:(id)a3 opacity:(double)a4;
- (void)p_setupBuffers;
- (void)p_setupRenderPasses;
- (void)p_setupShaders;
- (void)p_setupTextures;
- (void)setupMotionBlurEffectIfNecessary;
@end

@implementation TSDMetalMotionBlurEffect

- (TSDMetalMotionBlurEffect)initWithFramebufferSize:(CGSize)a3 slideSize:(CGSize)a4 randomGenerator:(id)a5 metalContext:(id)a6
{
  width = a4.width;
  height = a3.height;
  v10 = a3.width;
  v12 = a5;
  v13 = a6;
  v33.receiver = self;
  v33.super_class = TSDMetalMotionBlurEffect;
  v14 = [(TSDMetalMotionBlurEffect *)&v33 init];
  if (v14)
  {
    v15 = TSDMultiplySizeScalar(v10, height, 1.2);
    v14->_framebufferSize.width = TSDFlooredSize(v15);
    v14->_framebufferSize.height = v16;
    v14->_slideSize.width = TSDFlooredSize(width);
    v14->_slideSize.height = v17;
    v14->_isSingleObject = 1;
    v14->_motionBlurStrength = 1.0;
    v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v19 = [v18 objectForKey:@"MotionBlurStrength"];

    if (v19)
    {
      [v19 doubleValue];
      v14->_motionBlurStrength = motionBlurStrength;
    }

    else
    {
      motionBlurStrength = v14->_motionBlurStrength;
    }

    if (motionBlurStrength != *&s_previousMotionBlurStrength)
    {
      s_previousMotionBlurStrength = *&motionBlurStrength;
      v32 = motionBlurStrength;
      v31 = @"MotionBlurStrength";
      TSULogErrorInFunction();
    }

    v14->_framebufferScale = 1.0;
    v21 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v22 = [v21 objectForKey:@"TSDGLMotionBlurEffectFramebufferScale"];

    if (v22)
    {
      [v22 doubleValue];
      v14->_framebufferScale = framebufferScale;
    }

    else
    {
      framebufferScale = v14->_framebufferScale;
    }

    if (framebufferScale != *&s_previousFramebufferScale)
    {
      s_previousFramebufferScale = *&framebufferScale;
      TSULogErrorInFunction();
    }

    if (!v12)
    {
      v24 = [MEMORY[0x277D6C290] currentHandler];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalMotionBlurEffect initWithFramebufferSize:slideSize:randomGenerator:metalContext:]"];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMetalMotionBlurEffect.m"];
      [v24 handleFailureInFunction:v25 file:v26 lineNumber:152 description:{@"invalid nil value for '%s'", "randomGenerator"}];
    }

    objc_storeStrong(&v14->_randomGenerator, a5);
    if (!v13)
    {
      v27 = [MEMORY[0x277D6C290] currentHandler];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalMotionBlurEffect initWithFramebufferSize:slideSize:randomGenerator:metalContext:]"];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMetalMotionBlurEffect.m"];
      [v27 handleFailureInFunction:v28 file:v29 lineNumber:155 description:{@"invalid nil value for '%s'", "metalContext"}];
    }

    objc_storeStrong(&v14->_metalContext, a6);
  }

  return v14;
}

- (CGSize)velocityScaleForColorFBO:(BOOL)a3
{
  v3 = 0.2;
  v4 = 0.2;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)velocityScale
{
  [(TSDMetalMotionBlurEffect *)self velocityScaleForColorFBO:0];
  v3 = 1.0 / v2;
  v5 = 1.0 / v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGSize)p_updateMaxVelocityInShadersWithScale:(double)a3 isColorFBO:(BOOL)a4
{
  [(TSDMetalMotionBlurEffect *)self velocityScaleForColorFBO:a4];
  v8 = TSDMultiplySizeScalar(v6, v7, a3);
  v10 = v9;
  [(TSDMetalMotionBlurEffect *)self motionBlurStrength];
  v12 = TSDMultiplySizeScalar(v8, v10, v11);
  v14 = TSDMultiplySizeScalar(v12, v13, 0.5);

  v16 = TSDMultiplySizeScalar(v14, v15, 0.5);
  result.height = v17;
  result.width = v16;
  return result;
}

- (CATransform3D)adjustTransformForMotionBlurBuffer:(SEL)a3
{
  memset(&v15, 0, sizeof(v15));
  CATransform3DMakeTranslation(&v15, (self->_framebufferSize.width - self->_slideSize.width) * 0.5, (self->_framebufferSize.height - self->_slideSize.height) * 0.5, 0.0);
  memset(&v14, 0, sizeof(v14));
  CATransform3DMakeScale(&v14, 0.833333333, 0.833333333, 1.0);
  a = v15;
  v11 = v14;
  CATransform3DConcat(&v13, &a, &v11);
  v6 = *&a4->m33;
  *&a.m31 = *&a4->m31;
  *&a.m33 = v6;
  v7 = *&a4->m43;
  *&a.m41 = *&a4->m41;
  *&a.m43 = v7;
  v8 = *&a4->m13;
  *&a.m11 = *&a4->m11;
  *&a.m13 = v8;
  v9 = *&a4->m23;
  *&a.m21 = *&a4->m21;
  *&a.m23 = v9;
  return CATransform3DConcat(retstr, &v13, &a);
}

- (id)bindColorAndVelocityWithMetalContext:(id)a3 shouldFillBackground:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  objc_storeStrong(&self->_metalContext, a3);
  v8 = [(TSDMetalContext *)self->_metalContext commandQueue];
  v9 = [v8 commandBuffer];
  currentCommandBuffer = self->_currentCommandBuffer;
  self->_currentCommandBuffer = v9;

  [(TSDMetalMotionBlurEffect *)self setupMotionBlurEffectIfNecessary];
  if (v4)
  {
    v11 = [(MTLRenderPassDescriptor *)self->_colorAndVelocityPassDescriptor colorAttachments];
    v12 = [v11 objectAtIndexedSubscript:0];
    [v12 setClearColor:{1.0, 0.0, 0.0, 1.0}];
  }

  v13 = [(MTLCommandBuffer *)self->_currentCommandBuffer renderCommandEncoderWithDescriptor:self->_colorAndVelocityPassDescriptor];
  if (v4)
  {
    v14 = [(MTLRenderPassDescriptor *)self->_colorAndVelocityPassDescriptor colorAttachments];
    v15 = [v14 objectAtIndexedSubscript:0];
    [v15 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  }

  return v13;
}

- (id)colorAndVelocityShader
{
  colorAndVelocityShader = self->_colorAndVelocityShader;
  if (!colorAndVelocityShader)
  {
    [(TSDMetalMotionBlurEffect *)self setupMotionBlurEffectIfNecessary];
    colorAndVelocityShader = self->_colorAndVelocityShader;
  }

  return colorAndVelocityShader;
}

- (id)colorAndVelocityBlendingShader
{
  colorAndVelocityBlendingShader = self->_colorAndVelocityBlendingShader;
  if (!colorAndVelocityBlendingShader)
  {
    [(TSDMetalMotionBlurEffect *)self setupMotionBlurEffectIfNecessary];
    colorAndVelocityBlendingShader = self->_colorAndVelocityBlendingShader;
  }

  return colorAndVelocityBlendingShader;
}

- (void)drawResultWithWorkingRenderEncoder:(id)a3 destinationRenderEncoder:(id)a4 opacity:(double)a5
{
  v21 = a3;
  v8 = a4;
  if (!self->_randomGenerator)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalMotionBlurEffect drawResultWithWorkingRenderEncoder:destinationRenderEncoder:opacity:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMetalMotionBlurEffect.m"];
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:251 description:{@"invalid nil value for '%s'", "_randomGenerator"}];
  }

  v12 = v21;
  if (!v21)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalMotionBlurEffect drawResultWithWorkingRenderEncoder:destinationRenderEncoder:opacity:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMetalMotionBlurEffect.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:252 description:{@"invalid nil value for '%s'", "workingRenderEncoder"}];

    v12 = 0;
  }

  [v12 endEncoding];
  v16 = [(MTLTexture *)self->_combinedTextureColor1 width];
  if (v16 == [(MTLTexture *)self->_colorTexture1 width])
  {
    v17 = [(MTLTexture *)self->_combinedTextureColor1 height];
    v18 = v17 == [(MTLTexture *)self->_colorTexture1 height];
  }

  else
  {
    v18 = 0;
  }

  if ([(TSDMetalMotionBlurEffect *)self debugDrawMode]!= 1)
  {
    [(TSDMetalMotionBlurEffect *)self p_blitIntoVelocityTexture];
  }

  if (!v18)
  {
    [(TSDMetalMotionBlurEffect *)self p_blitIntoColorFramebuffer];
  }

  v19 = [(TSDMetalMotionBlurEffect *)self debugDrawMode];
  if (v19 <= 1)
  {
    if (v19)
    {
      if (v19 == 1)
      {
        [(TSDMetalMotionBlurEffect *)self p_debugDrawModeColorBufferWithEncoder:v8];
      }

      goto LABEL_24;
    }

    [(TSDMetalMotionBlurEffect *)self p_dilateVelocityTexture];
LABEL_23:
    [(TSDMetalMotionBlurEffect *)self p_drawWithEncoder:v8 opacity:a5];
    goto LABEL_24;
  }

  switch(v19)
  {
    case 2:
      [(TSDMetalMotionBlurEffect *)self p_debugDrawModeVelocityBufferWithEncoder:v8];
      break;
    case 3:
      [(TSDMetalMotionBlurEffect *)self p_dilateVelocityTexture];
      [(TSDMetalMotionBlurEffect *)self p_debugDrawModeVelocityBufferDilatedWithEncoder:v8];
      break;
    case 4:
      goto LABEL_23;
  }

LABEL_24:
  currentCommandBuffer = self->_currentCommandBuffer;
  self->_currentCommandBuffer = 0;
}

- (CGSize)p_velocityFramebufferSize
{
  v2 = TSDCeilSize(vmulq_f64(self->_framebufferSize, vdupq_n_s64(0x3FA0000000000000uLL)).f64[0]);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)p_velocityFramebufferTextureScale
{
  [(TSDMetalMotionBlurEffect *)self p_velocityFramebufferSize];
  v5.f64[0] = TSDMultiplySizeScalar(v3, v4, 32.0);
  v5.f64[1] = v6;
  __asm { FMOV            V1.2D, #1.0 }

  v12 = vdivq_f64(_Q1, vdivq_f64(v5, self->_framebufferSize));
  v13 = v12.f64[1];
  result.width = v12.f64[0];
  result.height = v13;
  return result;
}

- (CGSize)p_squashedVelocityFramebufferSize
{
  [(TSDMetalMotionBlurEffect *)self p_velocityFramebufferSize];
  height = self->_framebufferSize.height;
  result.height = height;
  result.width = v3;
  return result;
}

- (void)p_debugDrawModeColorBufferWithEncoder:(id)a3
{
  v7 = 0uLL;
  framebufferSize = self->_framebufferSize;
  v9 = xmmword_26CA66250;
  v4 = a3;
  [v4 setViewport:&v7];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  framebufferSize = 0u;
  TSDTransform3DMakeOrtho(&v7, 0.0, self->_framebufferSize.width, 0.0, self->_framebufferSize.height, -1.0, 1.0);
  v6[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v7), framebufferSize);
  v6[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v10);
  v6[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
  v6[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v13), v14);
  v5 = 1065353216;
  [(TSDMetalShader *)self->_defaultTextureShader setPipelineStateWithEncoder:v4 vertexBytes:v6 fragmentBytes:&v5];
  [v4 setFragmentTexture:self->_combinedTextureColor1 atIndex:0];
  [(TSDMTLDataBuffer *)self->_FBODataBufferFlipped drawWithEncoder:v4 atIndex:[(TSDMetalShader *)self->_defaultTextureShader bufferIndex]];
}

- (void)p_debugDrawModeVelocityBufferWithEncoder:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  width = self->_framebufferSize.width;
  height = self->_framebufferSize.height;
  v6 = a3;
  TSDTransform3DMakeOrtho(&v8, 0.0, width, 0.0, height, -1.0, 1.0);
  v7[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v8), v9);
  v7[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v11);
  v7[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v12), v13);
  v7[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v14), v15);
  [(TSDMetalShader *)self->_velocityVisualizerShader setPipelineStateWithEncoder:v6 vertexBytes:v7];
  [v6 setFragmentTexture:self->_combinedTextureVelocity atIndex:0];
  [(TSDMTLDataBuffer *)self->_FBODataBufferFlipped drawWithEncoder:v6 atIndex:[(TSDMetalShader *)self->_velocityVisualizerShader bufferIndex]];
}

- (void)p_debugDrawModeVelocityBufferDilatedWithEncoder:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  width = self->_framebufferSize.width;
  height = self->_framebufferSize.height;
  v6 = a3;
  TSDTransform3DMakeOrtho(&v8, 0.0, width, 0.0, height, -1.0, 1.0);
  v7[0] = vcvt_hight_f32_f64(vcvt_f32_f64(v8), v9);
  v7[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v11);
  v7[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v12), v13);
  v7[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v14), v15);
  [(TSDMetalShader *)self->_velocityVisualizerShader setPipelineStateWithEncoder:v6 vertexBytes:v7];
  [v6 setFragmentTexture:self->_velocityTexture1 atIndex:0];
  [(TSDMTLDataBuffer *)self->_FBODataBuffer drawWithEncoder:v6 atIndex:[(TSDMetalShader *)self->_velocityVisualizerShader bufferIndex]];
}

- (void)p_blitIntoVelocityTexture
{
  if (!self->_velocityTextureSquashed)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalMotionBlurEffect p_blitIntoVelocityTexture]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMetalMotionBlurEffect.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:382 description:{@"invalid nil value for '%s'", "_velocityTextureSquashed"}];
  }

  if (!self->_velocitySquashedFBODataBuffer)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalMotionBlurEffect p_blitIntoVelocityTexture]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMetalMotionBlurEffect.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:383 description:{@"invalid nil value for '%s'", "_velocitySquashedFBODataBuffer"}];
  }

  [(TSDMetalMotionBlurEffect *)self p_squashedVelocityFramebufferSize];
  v10 = v9;
  v12 = v11;
  v13 = [(MTLCommandBuffer *)self->_currentCommandBuffer renderCommandEncoderWithDescriptor:self->_tileHorizontalPassDescriptor];
  v49 = 0uLL;
  v50.f64[0] = v10;
  v50.f64[1] = v12;
  v51 = xmmword_26CA66250;
  [v13 setViewport:&v49];
  [(TSDMetalMotionBlurEffect *)self p_velocityFramebufferTextureScale];
  v15 = v14;
  v17 = v16;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  TSDTransform3DMakeOrtho(&v49, 0.0, v10, 0.0, v12, -1.0, 1.0);
  v47 = 0;
  v48 = 0;
  v41 = vcvt_hight_f32_f64(vcvt_f32_f64(v49), v50);
  v42 = vcvt_hight_f32_f64(vcvt_f32_f64(v51), v52);
  v43 = vcvt_hight_f32_f64(vcvt_f32_f64(v53), v54);
  v44 = vcvt_hight_f32_f64(vcvt_f32_f64(v55), v56);
  __asm { FMOV            V1.2D, #1.0 }

  v23 = vcvt_f32_f64(vdivq_f64(_Q1, self->_framebufferSize));
  *_Q1.f64 = v15;
  __asm { FMOV            V2.2S, #1.0 }

  v31 = _D2;
  LODWORD(_D2) = LODWORD(_Q1.f64[0]);
  v45 = v23;
  v46 = _D2;
  LODWORD(v47) = 1107296256;
  WORD2(v47) = 8;
  BYTE6(v47) = 1;
  v40 = 8;
  BYTE2(v40) = self->_isSingleObject;
  [(TSDMetalShader *)self->_velocityTileMaxHorizontalShader setPipelineStateWithEncoder:v13 vertexBytes:&v41 fragmentBytes:&v40];
  [v13 setFragmentTexture:self->_combinedTextureVelocity atIndex:0];
  [(TSDMTLDataBuffer *)self->_velocitySquashedFBODataBuffer drawWithEncoder:v13 atIndex:[(TSDMetalShader *)self->_velocityTileMaxHorizontalShader bufferIndex]];
  [v13 endEncoding];
  [(TSDMetalMotionBlurEffect *)self p_velocityFramebufferSize];
  v26 = v25;
  v28 = v27;
  v29 = [(MTLCommandBuffer *)self->_currentCommandBuffer renderCommandEncoderWithDescriptor:self->_tileVerticalPassDescriptor];

  v32 = 0uLL;
  v33.f64[0] = v26;
  v33.f64[1] = v28;
  v34 = xmmword_26CA66250;
  [v29 setViewport:&v32];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  TSDTransform3DMakeOrtho(&v32, 0.0, v26, 0.0, v28, -1.0, 1.0);
  v41 = vcvt_hight_f32_f64(vcvt_f32_f64(v32), v33);
  v42 = vcvt_hight_f32_f64(vcvt_f32_f64(v34), v35);
  v43 = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v37);
  v44 = vcvt_hight_f32_f64(vcvt_f32_f64(v38), v39);
  *&v30 = v17;
  v46 = __PAIR64__(v30, v31);
  BYTE6(v47) = 0;
  [(TSDMetalShader *)self->_velocityTileMaxVerticalShader setPipelineStateWithEncoder:v29 vertexBytes:&v41 fragmentBytes:&v40];
  [v29 setFragmentTexture:self->_velocityTextureSquashed atIndex:0];
  [(TSDMTLDataBuffer *)self->_velocityFBODataBuffer drawWithEncoder:v29 atIndex:[(TSDMetalShader *)self->_velocityTileMaxVerticalShader bufferIndex]];
  [v29 endEncoding];
}

- (void)p_dilateVelocityTexture
{
  [(TSDMetalMotionBlurEffect *)self p_velocityFramebufferSize];
  v14 = v3;
  v15 = v4;
  v5 = [(MTLCommandBuffer *)self->_currentCommandBuffer renderCommandEncoderWithDescriptor:self->_neighborHorizontalPassDescriptor];
  v25 = 0uLL;
  v26.f64[0] = v14;
  v26.f64[1] = v15;
  v27 = xmmword_26CA66250;
  [v5 setViewport:&v25];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  TSDTransform3DMakeOrtho(&v25, 0.0, v14, 0.0, v15, -1.0, 1.0);
  v21 = vcvt_hight_f32_f64(vcvt_f32_f64(v25), v26);
  v22 = vcvt_hight_f32_f64(vcvt_f32_f64(v27), v28);
  v23 = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v30);
  v24 = vcvt_hight_f32_f64(vcvt_f32_f64(v31), v32);
  v18[0] = v21;
  v18[1] = v22;
  v6.f64[0] = v14;
  v6.f64[1] = v15;
  v18[2] = v23;
  v18[3] = v24;
  __asm { FMOV            V1.2D, #1.0 }

  v19 = vcvt_f32_f64(vdivq_f64(_Q1, v6));
  v20 = 65539;
  BYTE3(v20) = self->_isSingleObject;
  v12 = [(TSDMetalShader *)self->_velocityNeighborMaxHorizontalShader bufferIndex];
  [(TSDMetalShader *)self->_velocityNeighborMaxHorizontalShader setPipelineStateWithEncoder:v5 vertexBytes:&v21 fragmentBytes:v18];
  [v5 setFragmentTexture:self->_velocityTexture1 atIndex:0];
  [(TSDMTLDataBuffer *)self->_velocityFBODataBuffer drawWithEncoder:v5 atIndex:v12];
  [v5 endEncoding];
  v13 = [(MTLCommandBuffer *)self->_currentCommandBuffer renderCommandEncoderWithDescriptor:self->_neighborVerticalPassDescriptor];

  v16[0] = 0;
  v16[1] = 0;
  *&v16[2] = v14;
  *&v16[3] = v15;
  v17 = xmmword_26CA66250;
  [v13 setViewport:v16];
  BYTE2(v20) = 0;
  [(TSDMetalShader *)self->_velocityNeighborMaxVerticalShader setPipelineStateWithEncoder:v13 vertexBytes:&v21 fragmentBytes:v18];
  [v13 setFragmentTexture:self->_velocityTexture2 atIndex:0];
  [(TSDMTLDataBuffer *)self->_velocityFBODataBuffer drawWithEncoder:v13 atIndex:v12];
  [v13 endEncoding];
}

- (void)p_drawWithEncoder:(id)a3 opacity:(double)a4
{
  v6 = a3;
  v7 = [(MTLTexture *)self->_combinedTextureColor1 width];
  p_colorTexture1 = &self->_colorTexture1;
  if (v7 == [(MTLTexture *)self->_colorTexture1 width])
  {
    v9 = [(MTLTexture *)self->_combinedTextureColor1 height];
    v10 = [(MTLTexture *)*p_colorTexture1 height];
    v11 = v9 == v10;
    if (v9 == v10)
    {
      p_colorTexture1 = &self->_combinedTextureColor1;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *p_colorTexture1;
  [(TSDMetalMotionBlurEffect *)self p_velocityFramebufferSize];
  v39 = v14;
  v40 = v13;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  TSDTransform3DMakeOrtho(&v58, 0.0, self->_framebufferSize.width, 0.0, self->_framebufferSize.height, -1.0, 1.0);
  [(TSDMetalMotionBlurEffect *)self p_updateMaxVelocityInShadersWithScale:1 isColorFBO:0.4];
  v37 = v16;
  v38 = v15;
  [(TSDMetalMotionBlurEffect *)self p_velocityFramebufferTextureScale];
  v57 = 0;
  v52 = vcvt_hight_f32_f64(vcvt_f32_f64(v58), v59);
  v53 = vcvt_hight_f32_f64(vcvt_f32_f64(v60), v61);
  v54 = vcvt_hight_f32_f64(vcvt_f32_f64(v62), v63);
  v55 = vcvt_hight_f32_f64(vcvt_f32_f64(v64), v65);
  LOBYTE(v57) = self->_isSingleObject;
  v18.f64[1] = v17;
  __asm { FMOV            V1.2D, #1.0 }

  v56 = vcvt_f32_f64(vdivq_f64(_Q1, v18));
  v51 = 0;
  v50 = 0;
  v18.f64[0] = v40;
  v18.f64[1] = v39;
  _Q1.f64[0] = v38;
  _Q1.f64[1] = v37;
  v48 = vcvt_f32_f64(v18);
  v49 = vcvt_f32_f64(_Q1);
  if (![(TSDMetalMotionBlurEffect *)self isSingleObject])
  {
    [(TSDAnimationRandomGenerator *)self->_randomGenerator randomDouble];
    v41 = v24;
    [(TSDAnimationRandomGenerator *)self->_randomGenerator randomDouble];
    v25.f64[0] = v41;
    v25.f64[1] = v26;
    v50 = vcvt_f32_f64(v25);
  }

  LODWORD(v51) = 1065353216;
  WORD2(v51) = 5;
  BYTE6(v51) = self->_isSingleObject;
  v27 = [(MTLCommandBuffer *)self->_currentCommandBuffer renderCommandEncoderWithDescriptor:self->_combined1PassDescriptor];
  [(TSDMetalShader *)self->_velocityCollectionShader setPipelineStateWithEncoder:v27 vertexBytes:&v52 fragmentBytes:&v48];
  v28 = [(MTLTexture *)self->_colorTexture2 width];
  v29 = [(MTLTexture *)self->_colorTexture2 height];
  v47.m12 = 0.0;
  v47.m11 = 0.0;
  v47.m13 = v28;
  v47.m14 = v29;
  *&v47.m21 = xmmword_26CA66250;
  [v27 setViewport:&v47];
  v30 = [(TSDMetalShader *)self->_velocityCollectionShader bufferIndex];
  [v27 setFragmentTexture:v12 atIndex:0];
  [v27 setFragmentTexture:self->_velocityTexture1 atIndex:1];
  [v27 setFragmentTexture:self->_combinedTextureVelocity atIndex:2];
  [(TSDMTLDataBuffer *)self->_colorFBODataBuffer drawWithEncoder:v27 atIndex:v30];
  [v27 endEncoding];
  [(MTLCommandBuffer *)self->_currentCommandBuffer commit];
  v31 = self->_colorTexture2;

  if (v11)
  {
    memset(&v47, 0, sizeof(v47));
    CATransform3DMakeTranslation(&v47, (self->_framebufferSize.width - self->_slideSize.width) * -0.5, (self->_framebufferSize.height - self->_slideSize.height) * -0.5, 0.0);
    memset(&v46, 0, sizeof(v46));
    TSDTransform3DMakeOrtho(&v46, 0.0, self->_slideSize.width, 0.0, self->_slideSize.height, -1.0, 1.0);
    a = v47;
    b = v46;
    CATransform3DConcat(&v45, &a, &b);
    v62 = *&v45.m31;
    v63 = *&v45.m33;
    v64 = *&v45.m41;
    v65 = *&v45.m43;
    v58 = *&v45.m11;
    v59 = *&v45.m13;
    v60 = *&v45.m21;
    v61 = *&v45.m23;
    v52 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v45.m11), *&v45.m13);
    v53 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v45.m21), *&v45.m23);
    v54 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v45.m31), *&v45.m33);
    v55 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v45.m41), *&v45.m43);
    v45.m11 = 0.0;
    v45.m12 = 0.0;
    *&v45.m13 = self->_slideSize;
    *&v45.m21 = xmmword_26CA66250;
    [v6 setViewport:&v45];
    [(TSDMetalMotionBlurEffect *)self p_updateMaxVelocityInShadersWithScale:1 isColorFBO:1.0];
    v33.f64[1] = v32;
    v49 = vcvt_f32_f64(v33);
    *v33.f64 = a4;
    LODWORD(v51) = LODWORD(v33.f64[0]);
    if (![(TSDMetalMotionBlurEffect *)self isSingleObject])
    {
      [(TSDAnimationRandomGenerator *)self->_randomGenerator randomDouble];
      v42 = v34;
      [(TSDAnimationRandomGenerator *)self->_randomGenerator randomDouble];
      v35.f64[0] = v42;
      v35.f64[1] = v36;
      v50 = vcvt_f32_f64(v35);
    }

    [(TSDMetalShader *)self->_velocityCollectionShader setPipelineStateWithEncoder:v6 vertexBytes:&v52 fragmentBytes:&v48];
    [v6 setFragmentTexture:v31 atIndex:0];
    [v6 setFragmentTexture:self->_velocityTexture1 atIndex:1];
    [v6 setFragmentTexture:self->_combinedTextureVelocity atIndex:2];
    [(TSDMTLDataBuffer *)self->_FBODataBuffer drawWithEncoder:v6 atIndex:v30];
  }
}

- (void)setupMotionBlurEffectIfNecessary
{
  [(TSDMetalMotionBlurEffect *)self p_setupTextures];
  [(TSDMetalMotionBlurEffect *)self p_setupBuffers];
  [(TSDMetalMotionBlurEffect *)self p_setupShaders];

  [(TSDMetalMotionBlurEffect *)self p_setupRenderPasses];
}

- (void)p_setupShaders
{
  if (!self->_velocityTileMaxHorizontalShader)
  {
    v22 = [(TSDMetalContext *)self->_metalContext device];
    v4 = objc_alloc_init(MEMORY[0x277CD6F68]);
    [v4 setPixelFormat:-[TSDMetalContext pixelFormat](self->_metalContext, "pixelFormat")];
    [v4 setBlendingEnabled:1];
    [v4 setRgbBlendOperation:0];
    [v4 setAlphaBlendOperation:0];
    [v4 setSourceRGBBlendFactor:1];
    [v4 setSourceAlphaBlendFactor:1];
    [v4 setDestinationRGBBlendFactor:5];
    [v4 setDestinationAlphaBlendFactor:5];
    v5 = [[TSDMetalShader alloc] initDefaultTextureAndOpacityShaderWithDevice:v22 colorAttachment:v4];
    defaultTextureShader = self->_defaultTextureShader;
    self->_defaultTextureShader = v5;

    v7 = [[TSDMetalShader alloc] initDefaultVelocityCollectionShaderWithDevice:v22 colorAttachment:v4];
    velocityCollectionShader = self->_velocityCollectionShader;
    self->_velocityCollectionShader = v7;

    [v4 setBlendingEnabled:0];
    v9 = [[TSDMetalShader alloc] initDefaultTileMaxBlurShaderWithDevice:v22 colorAttachment:v4];
    velocityTileMaxHorizontalShader = self->_velocityTileMaxHorizontalShader;
    self->_velocityTileMaxHorizontalShader = v9;

    v11 = [[TSDMetalShader alloc] initDefaultTileMaxBlurShaderWithDevice:v22 colorAttachment:v4];
    velocityTileMaxVerticalShader = self->_velocityTileMaxVerticalShader;
    self->_velocityTileMaxVerticalShader = v11;

    v13 = [[TSDMetalShader alloc] initDefaultNeighborMaxBlurShaderWithDevice:v22 colorAttachment:v4];
    velocityNeighborMaxHorizontalShader = self->_velocityNeighborMaxHorizontalShader;
    self->_velocityNeighborMaxHorizontalShader = v13;

    v15 = [[TSDMetalShader alloc] initDefaultNeighborMaxBlurShaderWithDevice:v22 colorAttachment:v4];
    velocityNeighborMaxVerticalShader = self->_velocityNeighborMaxVerticalShader;
    self->_velocityNeighborMaxVerticalShader = v15;

    [v4 setBlendingEnabled:1];
    v17 = objc_alloc_init(MEMORY[0x277CD6F68]);
    [v17 setPixelFormat:-[TSDMetalContext pixelFormat](self->_metalContext, "pixelFormat")];
    v18 = [[TSDMetalShader alloc] initDefaultTextureAndOpacityMotionBlurShaderWithDevice:v22 colorAttachment:v4 velocityAttachment:v17 motionBlur:1];
    colorAndVelocityShader = self->_colorAndVelocityShader;
    self->_colorAndVelocityShader = v18;

    v20 = [[TSDMetalShader alloc] initDefaultBlendShaderWithDevice:v22 colorAttachment:v4 velocityAttachment:v17 motionBlur:1];
    colorAndVelocityBlendingShader = self->_colorAndVelocityBlendingShader;
    self->_colorAndVelocityBlendingShader = v20;
  }
}

- (void)p_setupTextures
{
  v40 = [(TSDMetalContext *)self->_metalContext device];
  v3 = [(TSDMetalContext *)self->_metalContext pixelFormat];
  if (!self->_combinedTextureColor1)
  {
    v4 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v3 width:self->_framebufferSize.width height:self->_framebufferSize.height mipmapped:0];
    [v4 setUsage:5];
    [v4 setStorageMode:2];
    v5 = [v40 newTextureWithDescriptor:v4];
    combinedTextureColor1 = self->_combinedTextureColor1;
    self->_combinedTextureColor1 = v5;

    v7 = [v40 newTextureWithDescriptor:v4];
    combinedTextureColor2 = self->_combinedTextureColor2;
    self->_combinedTextureColor2 = v7;

    v9 = [v40 newTextureWithDescriptor:v4];
    combinedTextureVelocity = self->_combinedTextureVelocity;
    self->_combinedTextureVelocity = v9;
  }

  if (!self->_colorTexture1)
  {
    v11 = TSDMultiplySizeScalar(self->_framebufferSize.width, self->_framebufferSize.height, self->_framebufferScale);
    v12 = TSDCeilSize(v11);
    v14 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v3 width:v12 height:v13 mipmapped:0];
    [v14 setUsage:5];
    [v14 setStorageMode:2];
    v15 = [v40 newTextureWithDescriptor:v14];
    colorTexture1 = self->_colorTexture1;
    self->_colorTexture1 = v15;

    v17 = [v40 newTextureWithDescriptor:v14];
    colorTexture2 = self->_colorTexture2;
    self->_colorTexture2 = v17;
  }

  [(TSDMetalMotionBlurEffect *)self p_velocityFramebufferSize];
  v20 = v19;
  v22 = v21;
  velocityTexture1 = self->_velocityTexture1;
  if (!velocityTexture1 || v19 != [(MTLTexture *)velocityTexture1 width]|| v22 != [(MTLTexture *)self->_velocityTexture1 height])
  {
    [(TSDMetalMotionBlurEffect *)self p_squashedVelocityFramebufferSize];
    v25 = v24;
    v27 = v26;
    v28 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v3 width:v20 height:v22 mipmapped:0];
    [v28 setUsage:5];
    [v28 setStorageMode:2];
    v29 = [v40 newTextureWithDescriptor:v28];
    v30 = self->_velocityTexture1;
    self->_velocityTexture1 = v29;

    v31 = [v40 newTextureWithDescriptor:v28];
    velocityTexture2 = self->_velocityTexture2;
    self->_velocityTexture2 = v31;

    v33 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:-[TSDMetalContext pixelFormat](self->_metalContext width:"pixelFormat") height:v25 mipmapped:v27, 0];

    [v33 setUsage:5];
    [v33 setStorageMode:2];
    v34 = [v40 newTextureWithDescriptor:v33];
    velocityTextureSquashed = self->_velocityTextureSquashed;
    self->_velocityTextureSquashed = v34;

    v36 = [TSDGPUDataBuffer newDataBufferWithVertexRect:0 textureRect:v40 textureFlipped:TSDRectWithSize() device:?];
    velocityFBODataBuffer = self->_velocityFBODataBuffer;
    self->_velocityFBODataBuffer = v36;

    v38 = [TSDGPUDataBuffer newDataBufferWithVertexRect:1 textureRect:v40 textureFlipped:TSDRectWithSize() device:?];
    velocitySquashedFBODataBuffer = self->_velocitySquashedFBODataBuffer;
    self->_velocitySquashedFBODataBuffer = v38;
  }
}

- (void)p_setupBuffers
{
  if (!self->_FBODataBuffer)
  {
    v10 = [(TSDMetalContext *)self->_metalContext device];
    v4 = [TSDGPUDataBuffer newDataBufferWithVertexRect:0 textureRect:v10 textureFlipped:TSDRectWithSize() device:?];
    FBODataBuffer = self->_FBODataBuffer;
    self->_FBODataBuffer = v4;

    v6 = [TSDGPUDataBuffer newDataBufferWithVertexRect:1 textureRect:v10 textureFlipped:TSDRectWithSize() device:?];
    FBODataBufferFlipped = self->_FBODataBufferFlipped;
    self->_FBODataBufferFlipped = v6;

    [(MTLTexture *)self->_colorTexture1 width];
    [(MTLTexture *)self->_colorTexture1 height];
    v8 = [TSDGPUDataBuffer newDataBufferWithVertexRect:0 textureRect:v10 textureFlipped:TSDRectWithSize() device:?];
    colorFBODataBuffer = self->_colorFBODataBuffer;
    self->_colorFBODataBuffer = v8;
  }
}

- (void)p_setupRenderPasses
{
  if (!self->_colorAndVelocityPassDescriptor)
  {
    v4 = [MEMORY[0x277CD6F50] renderPassDescriptor];
    colorAndVelocityPassDescriptor = self->_colorAndVelocityPassDescriptor;
    self->_colorAndVelocityPassDescriptor = v4;

    combinedTextureColor1 = self->_combinedTextureColor1;
    v7 = [(MTLRenderPassDescriptor *)self->_colorAndVelocityPassDescriptor colorAttachments];
    v8 = [v7 objectAtIndexedSubscript:0];
    [v8 setTexture:combinedTextureColor1];

    v9 = [(MTLRenderPassDescriptor *)self->_colorAndVelocityPassDescriptor colorAttachments];
    v10 = [v9 objectAtIndexedSubscript:0];
    [v10 setLoadAction:2];

    v11 = [(MTLRenderPassDescriptor *)self->_colorAndVelocityPassDescriptor colorAttachments];
    v12 = [v11 objectAtIndexedSubscript:0];
    [v12 setStoreAction:1];

    v13 = [(MTLRenderPassDescriptor *)self->_colorAndVelocityPassDescriptor colorAttachments];
    v14 = [v13 objectAtIndexedSubscript:0];
    [v14 setClearColor:{0.0, 0.0, 0.0, 0.0}];

    combinedTextureVelocity = self->_combinedTextureVelocity;
    v16 = [(MTLRenderPassDescriptor *)self->_colorAndVelocityPassDescriptor colorAttachments];
    v17 = [v16 objectAtIndexedSubscript:1];
    [v17 setTexture:combinedTextureVelocity];

    v18 = [(MTLRenderPassDescriptor *)self->_colorAndVelocityPassDescriptor colorAttachments];
    v19 = [v18 objectAtIndexedSubscript:1];
    [v19 setLoadAction:2];

    v20 = [(MTLRenderPassDescriptor *)self->_colorAndVelocityPassDescriptor colorAttachments];
    v21 = [v20 objectAtIndexedSubscript:1];
    [v21 setStoreAction:1];

    v22 = [(MTLRenderPassDescriptor *)self->_colorAndVelocityPassDescriptor colorAttachments];
    v23 = [v22 objectAtIndexedSubscript:1];
    [v23 setClearColor:{0.0, 0.0, 0.0, 0.0}];

    v24 = [MEMORY[0x277CD6F50] renderPassDescriptor];
    tileHorizontalPassDescriptor = self->_tileHorizontalPassDescriptor;
    self->_tileHorizontalPassDescriptor = v24;

    velocityTextureSquashed = self->_velocityTextureSquashed;
    v27 = [(MTLRenderPassDescriptor *)self->_tileHorizontalPassDescriptor colorAttachments];
    v28 = [v27 objectAtIndexedSubscript:0];
    [v28 setTexture:velocityTextureSquashed];

    v29 = [(MTLRenderPassDescriptor *)self->_tileHorizontalPassDescriptor colorAttachments];
    v30 = [v29 objectAtIndexedSubscript:0];
    [v30 setLoadAction:2];

    v31 = [(MTLRenderPassDescriptor *)self->_tileHorizontalPassDescriptor colorAttachments];
    v32 = [v31 objectAtIndexedSubscript:0];
    [v32 setStoreAction:1];

    v33 = [(MTLRenderPassDescriptor *)self->_tileHorizontalPassDescriptor colorAttachments];
    v34 = [v33 objectAtIndexedSubscript:0];
    [v34 setClearColor:{0.0, 0.0, 0.0, 0.0}];

    v35 = [MEMORY[0x277CD6F50] renderPassDescriptor];
    tileVerticalPassDescriptor = self->_tileVerticalPassDescriptor;
    self->_tileVerticalPassDescriptor = v35;

    velocityTexture1 = self->_velocityTexture1;
    v38 = [(MTLRenderPassDescriptor *)self->_tileVerticalPassDescriptor colorAttachments];
    v39 = [v38 objectAtIndexedSubscript:0];
    [v39 setTexture:velocityTexture1];

    v40 = [(MTLRenderPassDescriptor *)self->_tileVerticalPassDescriptor colorAttachments];
    v41 = [v40 objectAtIndexedSubscript:0];
    [v41 setLoadAction:2];

    v42 = [(MTLRenderPassDescriptor *)self->_tileVerticalPassDescriptor colorAttachments];
    v43 = [v42 objectAtIndexedSubscript:0];
    [v43 setStoreAction:1];

    v44 = [(MTLRenderPassDescriptor *)self->_tileVerticalPassDescriptor colorAttachments];
    v45 = [v44 objectAtIndexedSubscript:0];
    [v45 setClearColor:{0.0, 0.0, 0.0, 0.0}];

    v46 = [MEMORY[0x277CD6F50] renderPassDescriptor];
    neighborHorizontalPassDescriptor = self->_neighborHorizontalPassDescriptor;
    self->_neighborHorizontalPassDescriptor = v46;

    velocityTexture2 = self->_velocityTexture2;
    v49 = [(MTLRenderPassDescriptor *)self->_neighborHorizontalPassDescriptor colorAttachments];
    v50 = [v49 objectAtIndexedSubscript:0];
    [v50 setTexture:velocityTexture2];

    v51 = [(MTLRenderPassDescriptor *)self->_neighborHorizontalPassDescriptor colorAttachments];
    v52 = [v51 objectAtIndexedSubscript:0];
    [v52 setLoadAction:2];

    v53 = [(MTLRenderPassDescriptor *)self->_neighborHorizontalPassDescriptor colorAttachments];
    v54 = [v53 objectAtIndexedSubscript:0];
    [v54 setStoreAction:1];

    v55 = [(MTLRenderPassDescriptor *)self->_neighborHorizontalPassDescriptor colorAttachments];
    v56 = [v55 objectAtIndexedSubscript:0];
    [v56 setClearColor:{0.0, 0.0, 0.0, 0.0}];

    v57 = [MEMORY[0x277CD6F50] renderPassDescriptor];
    neighborVerticalPassDescriptor = self->_neighborVerticalPassDescriptor;
    self->_neighborVerticalPassDescriptor = v57;

    v59 = self->_velocityTexture1;
    v60 = [(MTLRenderPassDescriptor *)self->_neighborVerticalPassDescriptor colorAttachments];
    v61 = [v60 objectAtIndexedSubscript:0];
    [v61 setTexture:v59];

    v62 = [(MTLRenderPassDescriptor *)self->_neighborVerticalPassDescriptor colorAttachments];
    v63 = [v62 objectAtIndexedSubscript:0];
    [v63 setLoadAction:2];

    v64 = [(MTLRenderPassDescriptor *)self->_neighborVerticalPassDescriptor colorAttachments];
    v65 = [v64 objectAtIndexedSubscript:0];
    [v65 setStoreAction:1];

    v66 = [(MTLRenderPassDescriptor *)self->_neighborVerticalPassDescriptor colorAttachments];
    v67 = [v66 objectAtIndexedSubscript:0];
    [v67 setClearColor:{0.0, 0.0, 0.0, 0.0}];

    v68 = [MEMORY[0x277CD6F50] renderPassDescriptor];
    combined1PassDescriptor = self->_combined1PassDescriptor;
    self->_combined1PassDescriptor = v68;

    colorTexture2 = self->_colorTexture2;
    v71 = [(MTLRenderPassDescriptor *)self->_combined1PassDescriptor colorAttachments];
    v72 = [v71 objectAtIndexedSubscript:0];
    [v72 setTexture:colorTexture2];

    v73 = [(MTLRenderPassDescriptor *)self->_combined1PassDescriptor colorAttachments];
    v74 = [v73 objectAtIndexedSubscript:0];
    [v74 setLoadAction:2];

    v75 = [(MTLRenderPassDescriptor *)self->_combined1PassDescriptor colorAttachments];
    v76 = [v75 objectAtIndexedSubscript:0];
    [v76 setStoreAction:1];

    v78 = [(MTLRenderPassDescriptor *)self->_combined1PassDescriptor colorAttachments];
    v77 = [v78 objectAtIndexedSubscript:0];
    [v77 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  }
}

@end