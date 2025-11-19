@interface PTBackgroundReplacement
- (PTBackgroundReplacement)initWithMetalContext:(id)a3 effectDescriptor:(id)a4 sharedSDOFRenderRequest:(id)a5 renderPipeline:(id)a6;
- (float)transitionTimeNormalized:(id)a3;
- (id)backgroundBufferCropAndResize:(id)a3 background:(__CVBuffer *)a4;
- (id)bufferWithContent:(PTBackgroundReplacement *)self;
- (id)lazyInitializeBackgroundForPresenterOverlaySmall:(__CVBuffer *)a3;
- (int)applyPortraitBlur:(id)a3 inColorBuffer:(id)a4 inColorPyramid:(id)a5 inBackgroundBuffer:(id)a6 effectRenderRequest:(id)a7;
- (int)replaceBackground:(id)a3 inColor:(id)a4 inColorPyramid:(id)a5 inSegmentation:(id)a6 effectRenderRequest:(id)a7 outColor:(id)a8 frameIndex:(int)a9;
- (unint64_t)updateAndGetBackgroundState:(id)a3 frameIndex:(int)a4;
- (void)copyInterruptedTransitionToTransitionPyramid:(id)a3;
- (void)dealloc;
- (void)studioLightBackgroundDimming:(id)a3 inCurrentBackground:(id)a4 effectRenderRequest:(id)a5 outColorBufferYUV:(id)a6;
@end

@implementation PTBackgroundReplacement

- (PTBackgroundReplacement)initWithMetalContext:(id)a3 effectDescriptor:(id)a4 sharedSDOFRenderRequest:(id)a5 renderPipeline:(id)a6
{
  v115[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v109.receiver = self;
  v109.super_class = PTBackgroundReplacement;
  v15 = [(PTBackgroundReplacement *)&v109 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_33;
  }

  objc_storeStrong(&v15->_metalContext, a3);
  objc_storeStrong(&v16->_sharedSDOFRenderRequest, a5);
  objc_storeStrong(&v16->_renderPipeline, a6);
  objc_storeStrong(&v16->_effectDescriptor, a4);
  v16->_backgroundTransisionCount = 0;
  v16->_transitionDuration = 0.8;
  v16->_currentState = 0;
  v16->_lastPresenterOverlayMode = 0;
  v17 = [(PTMetalContext *)v16->_metalContext computePipelineStateFor:@"backgroundCropAndResize" withConstants:0];
  backgroundCropAndResize = v16->_backgroundCropAndResize;
  v16->_backgroundCropAndResize = v17;

  if (!v16->_backgroundCropAndResize)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTBackgroundReplacement initWithMetalContext:effectDescriptor:sharedSDOFRenderRequest:renderPipeline:];
    }

    goto LABEL_32;
  }

  v19 = [(PTMetalContext *)v16->_metalContext computePipelineStateFor:@"backgroundReplacement" withConstants:0];
  backgroundReplacement = v16->_backgroundReplacement;
  v16->_backgroundReplacement = v19;

  if (!v16->_backgroundReplacement)
  {
    v86 = _PTLogSystem();
    if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
LABEL_32:

LABEL_33:
      v91 = 0;
      goto LABEL_34;
    }

LABEL_23:
    [PTBackgroundReplacement initWithMetalContext:effectDescriptor:sharedSDOFRenderRequest:renderPipeline:];
    goto LABEL_32;
  }

  v21 = [(PTMetalContext *)v16->_metalContext computePipelineStateFor:@"backgroundReplacementTransition" withConstants:0];
  backgroundReplacementTransition = v16->_backgroundReplacementTransition;
  v16->_backgroundReplacementTransition = v21;

  if (!v16->_backgroundReplacement)
  {
    v86 = _PTLogSystem();
    if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v23 = [(PTMetalContext *)v16->_metalContext computePipelineStateFor:@"studiolightBackgroundDimming" withConstants:0];
  studiolightBackgroundDimming = v16->_studiolightBackgroundDimming;
  v16->_studiolightBackgroundDimming = v23;

  if (!v16->_studiolightBackgroundDimming)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTBackgroundReplacement initWithMetalContext:effectDescriptor:sharedSDOFRenderRequest:renderPipeline:];
    }

    goto LABEL_32;
  }

  v25 = [(PTMetalContext *)v16->_metalContext computePipelineStateFor:@"backgroundReplacementCopyTransition" withConstants:0];
  backgroundReplacementCopyTransition = v16->_backgroundReplacementCopyTransition;
  v16->_backgroundReplacementCopyTransition = v25;

  if (!v16->_backgroundReplacementCopyTransition)
  {
    v86 = _PTLogSystem();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [PTBackgroundReplacement initWithMetalContext:effectDescriptor:sharedSDOFRenderRequest:renderPipeline:];
    }

    goto LABEL_32;
  }

  v108 = v11;
  v27 = [v12 activeEffectType];
  if ((v27 & 4) == 0)
  {
    v28 = [[PTColorTemperatureCorrection alloc] initWithMetalContext:v16->_metalContext];
    colorTemperatureCorrection = v16->_colorTemperatureCorrection;
    v16->_colorTemperatureCorrection = v28;

    __asm { FMOV            V0.4S, #1.0 }

    v106 = *&_Q0;
    v35 = [(PTBackgroundReplacement *)v16 bufferWithContent:?];
    v36 = v16->_colorTemperatureRGB[0];
    v16->_colorTemperatureRGB[0] = v35;

    v37 = [(PTBackgroundReplacement *)v16 bufferWithContent:v106];
    v38 = v16->_colorTemperatureRGB[1];
    v16->_colorTemperatureRGB[1] = v37;
  }

  v105 = v14;
  v107 = v13;
  v39 = [v12 prewarmOnly];
  if ((v39 & 1) == 0)
  {
    v40 = [(PTMetalContext *)v16->_metalContext textureUtil];
    v41 = [v40 createWithWidth:2 height:2 pixelFormat:25];
    constantDisparity = v16->_constantDisparity;
    v16->_constantDisparity = v41;

    v43 = v16->_constantDisparity;
    *buf = 0;
    v111 = 0;
    v112 = 0;
    v113 = vdupq_n_s64(2uLL);
    v114 = 1;
    v115[0] = 0x3C003C003C003C00;
    [(MTLTexture *)v43 replaceRegion:buf mipmapLevel:0 withBytes:v115 bytesPerRow:4];
    v44 = [(PTMetalContext *)v16->_metalContext textureUtil];
    [v12 colorSize];
    v46 = v45;
    [v12 colorSize];
    v48 = [v44 createWithWidth:v46 height:v47 pixelFormat:10];
    v49 = [(PTMetalContext *)v16->_metalContext textureUtil];
    [v12 colorSize];
    v51 = (v50 * 0.5);
    [v12 colorSize];
    v53 = [v49 createWithWidth:v51 height:(v52 * 0.5) pixelFormat:30];
    v54 = [PTTexture createYUV420:v48 chroma:v53];
    backgroundWithSDOF = v16->_backgroundWithSDOF;
    v16->_backgroundWithSDOF = v54;

    v56 = [(PTMetalContext *)v16->_metalContext textureUtil];
    [v12 colorSize];
    v58 = v57;
    [v12 colorSize];
    v60 = [v56 createWithWidth:v58 height:v59 pixelFormat:10];
    v61 = [(PTMetalContext *)v16->_metalContext textureUtil];
    [v12 colorSize];
    v63 = (v62 * 0.5);
    [v12 colorSize];
    v65 = [v61 createWithWidth:v63 height:(v64 * 0.5) pixelFormat:30];
    v66 = [PTTexture createYUV420:v60 chroma:v65];
    backgroundWithStudioLight = v16->_backgroundWithStudioLight;
    v16->_backgroundWithStudioLight = v66;
  }

  v68 = 0;
  backgroundTransitionPyramidYUV = v16->_backgroundTransitionPyramidYUV;
  v70 = (v27 >> 2) & 1 | v39;
  colorTemperatureCorrectionYUVCubes = v16->_colorTemperatureCorrectionYUVCubes;
  v72 = 1;
  do
  {
    v73 = v72;
    v74 = [PTPyramid alloc];
    metalContext = v16->_metalContext;
    [v12 colorSize];
    v77 = v76 * 0.5;
    [v12 colorSize];
    v79 = [(PTPyramid *)v74 initWithMetalContext:metalContext colorSize:70 pixelFormat:0 skipFullSizeLayer:1 doFirstLevelGaussianDownsample:3 mipmapLevelCount:v77, v78 * 0.5];
    v80 = backgroundTransitionPyramidYUV[v68];
    backgroundTransitionPyramidYUV[v68] = v79;

    if ((v70 & 1) == 0)
    {
      v81 = objc_alloc_init(MEMORY[0x277CD7058]);
      if (!v81)
      {
        v82 = _PTLogSystem();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          [PTBackgroundReplacement initWithMetalContext:buf effectDescriptor:&buf[4] sharedSDOFRenderRequest:v82 renderPipeline:?];
        }
      }

      [v81 setTextureType:7];
      [v81 setWidth:16];
      [v81 setHeight:16];
      [v81 setDepth:16];
      [v81 setPixelFormat:70];
      [v81 setUsage:3];
      v83 = [(PTMetalContext *)v16->_metalContext device];
      v84 = [v83 newTextureWithDescriptor:v81];
      v85 = colorTemperatureCorrectionYUVCubes[v68];
      colorTemperatureCorrectionYUVCubes[v68] = v84;
    }

    v72 = 0;
    v68 = 1;
  }

  while ((v73 & 1) != 0);
  [v12 colorSize];
  v88 = v87;
  [v12 colorSize];
  v11 = v108;
  v13 = v107;
  if (v88 <= v89)
  {
    [v12 colorSize];
    v94 = v93;
    [v12 colorSize];
    v90 = vcvtd_n_u64_f64(v94 / v95, 8uLL);
  }

  else
  {
    v90 = 256;
  }

  v14 = v105;
  [v12 colorSize];
  v97 = v96;
  [v12 colorSize];
  if (v97 <= v98)
  {
    v102 = 256;
  }

  else
  {
    [v12 colorSize];
    v100 = v99;
    [v12 colorSize];
    v102 = vcvtd_n_u64_f64(v100 / v101, 8uLL);
  }

  v103 = [[PTSpillCorrection alloc] initWithMetalContext:v16->_metalContext refinementWidth:v90 refinementHeight:v102];
  spillCorrection = v16->_spillCorrection;
  v16->_spillCorrection = v103;

  v91 = v16;
LABEL_34:

  return v91;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_backgroundPixelBuffer);
  CVPixelBufferRelease(self->_backgroundForPresenterOverlaySmallPixelBuffer);
  v3.receiver = self;
  v3.super_class = PTBackgroundReplacement;
  [(PTBackgroundReplacement *)&v3 dealloc];
}

- (id)bufferWithContent:(PTBackgroundReplacement *)self
{
  v3 = [(PTMetalContext *)self->_metalContext device];
  v4 = [v3 newBufferWithBytes:&v6 length:16 options:0];

  return v4;
}

- (id)backgroundBufferCropAndResize:(id)a3 background:(__CVBuffer *)a4
{
  v6 = [(PTMetalContext *)self->_metalContext device];
  v7 = [PTTexture createFromPixelbuffer:a4 device:v6 read:1 write:0];

  [(PTEffectDescriptor *)self->_effectDescriptor colorSize];
  v9 = v8;
  v11 = v10;
  if (v8 == [v7 width] && v11 == objc_msgSend(v7, "height"))
  {
    objc_storeStrong(&self->_backgroundCropped, v7);
    v12 = v7;
  }

  else
  {
    v13 = [(PTTextureYUV *)self->_backgroundCropped width];
    if (v13 != [v7 width] || (v14 = -[PTTextureYUV height](self->_backgroundCropped, "height"), v14 != objc_msgSend(v7, "height")))
    {
      v15 = [(PTMetalContext *)self->_metalContext textureUtil];
      v16 = [v15 createWithWidth:v9 height:v11 pixelFormat:10];
      v17 = [(PTMetalContext *)self->_metalContext textureUtil];
      v18 = [v17 createWithWidth:(v9 * 0.5) height:(v11 * 0.5) pixelFormat:30];
      v19 = [PTTexture createYUV420:v16 chroma:v18];
      backgroundCropped = self->_backgroundCropped;
      self->_backgroundCropped = v19;
    }

    [v7 copyMetadataTo:self->_backgroundCropped];
    v21 = [(PTMetalContext *)self->_metalContext commandBuffer];
    v22 = [v21 computeCommandEncoder];

    [v22 setComputePipelineState:self->_backgroundCropAndResize];
    v23 = [v7 texLuma];
    [v22 setTexture:v23 atIndex:0];

    v24 = [v7 texChroma];
    [v22 setTexture:v24 atIndex:1];

    v25 = [(PTTextureYUV *)self->_backgroundCropped texLuma];
    [v22 setTexture:v25 atIndex:2];

    v26 = [(PTTextureYUV *)self->_backgroundCropped texChroma];
    [v22 setTexture:v26 atIndex:3];

    v27 = [(PTTextureYUV *)self->_backgroundCropped texLuma];
    v28 = [(PTTextureYUV *)self->_backgroundCropped texChroma];
    [PTColorConversion getChromaOffsetFromLuma:v27 texChroma:v28];
    v30 = v29;

    v49 = v30;
    [v22 setBytes:&v49 length:8 atIndex:0];
    *&v30 = [v7 width];
    v31 = *&v30 / [v7 height];
    v32 = v11;
    v33 = v9 / v32;
    if (v31 <= v33)
    {
      v39 = v9 / [v7 width];
      *&v37 = ([v7 height] * v39);
      v40 = (*&v37 - v11) * 0.5 / *&v37;
      LODWORD(v37) = 0;
      *(&v37 + 1) = v40;
      v38 = v40 * -2.0 + 1.0;
      DWORD2(v37) = 1.0;
    }

    else
    {
      v34 = v11 / [v7 height];
      v35 = [v7 width];
      *&v37 = ((v35 * v34) - v9) * 0.5 / (v35 * v34);
      DWORD1(v37) = 0;
      v36 = *&v37 * -2.0 + 1.0;
      *(&v37 + 2) = v36;
      v38 = 1.0;
    }

    *(&v37 + 3) = v38;
    v48 = v37;
    [v22 setBytes:&v48 length:16 atIndex:1];
    v41 = [(PTTextureYUV *)self->_backgroundCropped texLuma];
    v42 = [v41 width];
    v43 = [(PTTextureYUV *)self->_backgroundCropped texLuma];
    v47[0] = v42;
    v47[1] = [v43 height];
    v47[2] = 1;
    v45 = xmmword_2244A5230;
    v46 = 1;
    [v22 dispatchThreads:v47 threadsPerThreadgroup:&v45];

    [v22 endEncoding];
    v12 = self->_backgroundCropped;
  }

  return v12;
}

- (int)applyPortraitBlur:(id)a3 inColorBuffer:(id)a4 inColorPyramid:(id)a5 inBackgroundBuffer:(id)a6 effectRenderRequest:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  [a5 updatePyramid:v15 inPTTexture:v13];
  [v14 copyMetadataTo:self->_backgroundWithSDOF];

  [(PTRenderRequest *)self->_sharedSDOFRenderRequest setSourceColor:v13];
  [(PTRenderRequest *)self->_sharedSDOFRenderRequest setDestinationColor:self->_backgroundWithSDOF];
  [(PTRenderRequest *)self->_sharedSDOFRenderRequest setSourceDisparity:self->_constantDisparity];
  [v12 remappedAperture];
  v17 = v16;

  LODWORD(v18) = v17;
  [(PTRenderRequest *)self->_sharedSDOFRenderRequest setFNumber:v18];
  LODWORD(self) = [(PTRenderPipeline *)self->_renderPipeline encodeRenderTo:v15 withRenderRequest:self->_sharedSDOFRenderRequest];

  return self;
}

- (void)studioLightBackgroundDimming:(id)a3 inCurrentBackground:(id)a4 effectRenderRequest:(id)a5 outColorBufferYUV:(id)a6
{
  backgroundWithStudioLight = self->_backgroundWithStudioLight;
  v9 = a5;
  v10 = a4;
  v11 = [(PTTextureYUV *)backgroundWithStudioLight texLuma];
  v12 = [(PTTextureYUV *)self->_backgroundWithStudioLight texChroma];
  [PTColorConversion getChromaOffsetFromLuma:v11 texChroma:v12];
  v14 = v13;

  v29 = v14;
  [v9 relightStrengthStudioLight];
  LODWORD(v14) = v15;

  v28 = v14;
  v16 = [(PTMetalContext *)self->_metalContext commandBuffer];
  v17 = [v16 computeCommandEncoder];

  [v17 setComputePipelineState:self->_studiolightBackgroundDimming];
  v18 = [v10 texLuma];
  [v17 setTexture:v18 atIndex:0];

  v19 = [v10 texChroma];

  [v17 setTexture:v19 atIndex:1];
  v20 = [(PTTextureYUV *)self->_backgroundWithStudioLight texLuma];
  [v17 setTexture:v20 atIndex:2];

  v21 = [(PTTextureYUV *)self->_backgroundWithStudioLight texChroma];
  [v17 setTexture:v21 atIndex:3];

  [v17 setBytes:&v29 length:8 atIndex:0];
  [v17 setBytes:&v28 length:4 atIndex:1];
  v22 = [(PTTextureYUV *)self->_backgroundWithStudioLight texLuma];
  v23 = [v22 width];
  v24 = [(PTTextureYUV *)self->_backgroundWithStudioLight texLuma];
  v27[0] = v23;
  v27[1] = [v24 height];
  v27[2] = 1;
  v25 = xmmword_2244A5230;
  v26 = 1;
  [v17 dispatchThreads:v27 threadsPerThreadgroup:&v25];

  [v17 endEncoding];
}

- (int)replaceBackground:(id)a3 inColor:(id)a4 inColorPyramid:(id)a5 inSegmentation:(id)a6 effectRenderRequest:(id)a7 outColor:(id)a8 frameIndex:(int)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [a4 asYUV];
  v21 = [v19 asYUV];

  v22 = [v18 inBackgroundReplacementBuffer];
  backgroundPixelBuffer = self->_backgroundPixelBuffer;
  if (self->_currentState == 3)
  {
    v22 = self->_backgroundPixelBuffer;
  }

  else if (backgroundPixelBuffer != v22)
  {
    CVPixelBufferRelease(backgroundPixelBuffer);
    self->_backgroundPixelBuffer = CVPixelBufferRetain(v22);
  }

  if (v22)
  {
    v131 = v17;
    v129 = v16;
    v136 = v15;
    v24 = v21;
    v25 = [v18 effectType];
    v26 = [v18 effectType];
    v27 = [v20 texLuma];
    v28 = [v24 texLuma];
    v29 = v28;
    v135 = v24;
    if (v27 == v28)
    {
    }

    else
    {
      v30 = [v20 texChroma];
      v31 = [v24 texChroma];

      if (v30 != v31)
      {
LABEL_16:
        v41 = -1.0;
        v42 = -1.0;
        if (v25)
        {
          [v18 apertureSDOF];
          v42 = v43;
        }

        if ((v26 & 2) != 0)
        {
          [v18 relightStrengthStudioLight];
          v41 = v44;
        }

        v45 = (*&self->_lastBackgroundCroppedKey.apertureSDOF & 0x7FFFFFFF7FFFFFFFLL) != 0 || self->_lastBackgroundCroppedKey.backgroundReplacementBuffer != v22;
        v46 = *&self->_lastEffectUpdateKey.apertureSDOF;
        v47 = v42 != *&v46 || v41 != *(&v46 + 1) || self->_lastEffectUpdateKey.backgroundReplacementBuffer != v22;
        v134 = v47;
        *&self->_lastBackgroundCroppedKey.apertureSDOF = 0;
        self->_lastBackgroundCroppedKey.backgroundReplacementBuffer = v22;
        self->_lastEffectUpdateKey.apertureSDOF = v42;
        self->_lastEffectUpdateKey.relightStrengthStudioLight = v41;
        self->_lastEffectUpdateKey.backgroundReplacementBuffer = v22;
        v48 = self->_backgroundCropped;
        [(PTBackgroundReplacement *)self updateAndGetBackgroundState:v18 frameIndex:a9];
        [(PTBackgroundReplacement *)self transitionTimeNormalized:v18];
        v50 = v49;
        if (v45)
        {
          v36 = [(PTBackgroundReplacement *)self backgroundBufferCropAndResize:v136 background:v22];

          ++self->_backgroundTransisionCount;
          if (v50 < 1.0 && v50 > 0.01 && self->_currentState == 4)
          {
            [(PTBackgroundReplacement *)self copyInterruptedTransitionToTransitionPyramid:v136];
          }

          if (a9)
          {
            if (self->_currentState == 1)
            {
              self->_currentState = 4;
            }

            [v18 frameTimeSeconds];
            *&v51 = v51;
            self->_transitionStart = *&v51;
            v50 = 0.0;
          }

          else
          {
            [v18 frameTimeSeconds];
            *&v52 = v52 + self->_transitionDuration * -2.0;
            self->_transitionStart = *&v52;
            self->_currentState = 1;
            v50 = 1.0;
          }

          colorTemperatureCorrection = self->_colorTemperatureCorrection;
          v54 = [v36 texLuma];
          v55 = [v36 texChroma];
          if (self->_backgroundTransisionCount >= 0)
          {
            v56 = self->_backgroundTransisionCount & 1;
          }

          else
          {
            v56 = -(self->_backgroundTransisionCount & 1);
          }

          [(PTColorTemperatureCorrection *)colorTemperatureCorrection estimateColorTemperatureFromBackground:v136 inYUV:v20 inBackgroundLuma:v54 inBackgroundChroma:v55 outColorTemperatureBuffer:self->_colorTemperatureRGB[v56]];
        }

        else
        {
          v36 = v48;
        }

        backgroundTransisionCount = self->_backgroundTransisionCount;
        if (backgroundTransisionCount == 1 || (self->_currentState & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v132 = 0;
          v58 = 1;
        }

        else
        {
          v59 = __OFADD__(backgroundTransisionCount, 1);
          v61 = backgroundTransisionCount + 1;
          v60 = (v61 < 0) ^ v59;
          v62 = v61 & 1;
          if (v60)
          {
            v62 = -v62;
          }

          v132 = [(PTPyramid *)self->_backgroundTransitionPyramidYUV[v62] mipmapTexture];
          v58 = 0;
        }

        backgroundTransitionPyramidYUV = self->_backgroundTransitionPyramidYUV;
        if (self->_backgroundTransisionCount >= 0)
        {
          v64 = self->_backgroundTransisionCount & 1;
        }

        else
        {
          v64 = -(self->_backgroundTransisionCount & 1);
        }

        v133 = [(PTPyramid *)backgroundTransitionPyramidYUV[v64] mipmapTexture];
        if (v58)
        {
          v65 = 0;
        }

        else
        {
          v66 = self->_backgroundTransisionCount;
          v59 = __OFADD__(v66++, 1);
          v60 = (v66 < 0) ^ v59;
          v67 = v66 & 1;
          if (v60)
          {
            v67 = -v67;
          }

          v65 = self->_colorTemperatureCorrectionYUVCubes[v67];
        }

        v68 = v65;
        if (self->_backgroundTransisionCount >= 0)
        {
          v69 = self->_backgroundTransisionCount & 1;
        }

        else
        {
          v69 = -(self->_backgroundTransisionCount & 1);
        }

        colorTemperatureCorrectionYUVCubes = self->_colorTemperatureCorrectionYUVCubes;
        v130 = self->_colorTemperatureCorrectionYUVCubes[v69];
        if (v25)
        {
          if (v134)
          {
            v70 = v136;
            v128 = [(PTBackgroundReplacement *)self applyPortraitBlur:v136 inColorBuffer:v20 inColorPyramid:v129 inBackgroundBuffer:v36 effectRenderRequest:v18];
          }

          else
          {
            v128 = 0;
            v70 = v136;
          }

          v71 = self->_backgroundWithSDOF;

          v36 = v71;
        }

        else
        {
          v128 = 0;
          v70 = v136;
        }

        v127 = v68;
        if ((v26 & 2) != 0)
        {
          if (v134)
          {
            [(PTBackgroundReplacement *)self studioLightBackgroundDimming:v70 inCurrentBackground:v36 effectRenderRequest:v18 outColorBufferYUV:v135];
          }

          v72 = self->_backgroundWithStudioLight;

          v36 = v72;
        }

        if (v134)
        {
          v73 = [(PTMetalContext *)self->_metalContext textureUtil];
          v74 = [v36 texLuma];
          v75 = [v36 texChroma];
          [v73 resample420To444:v136 inLuma:v74 inChroma:v75 outYUV:v133];

          v70 = v136;
          if (self->_backgroundTransisionCount >= 0)
          {
            v77 = self->_backgroundTransisionCount & 1;
          }

          else
          {
            v77 = -(self->_backgroundTransisionCount & 1);
          }

          LODWORD(v76) = 1.5;
          [(PTPyramid *)backgroundTransitionPyramidYUV[v77] updatePyramid:v136 offset:0 samplingRadius:v76];
          LODWORD(v78) = 1.0;
          if ((v26 & 2) != 0)
          {
            [v18 relightStrengthStudioLight];
            v78 = v79 * -0.5 + 1.0;
            *&v78 = v78;
          }

          if (self->_backgroundTransisionCount >= 0)
          {
            v80 = self->_backgroundTransisionCount & 1;
          }

          else
          {
            v80 = -(self->_backgroundTransisionCount & 1);
          }

          [(PTColorTemperatureCorrection *)self->_colorTemperatureCorrection colorTemperatureCorrectionYUVCube:v136 inYUV:v135 outColorTemperatureCorrectionCube:colorTemperatureCorrectionYUVCubes[v80] colorTemperatureRGB:self->_colorTemperatureRGB[v80] colorCorrectionIntensity:v78];
        }

        v81 = [v20 texLuma];
        v82 = [v20 texChroma];
        [PTColorConversion getChromaOffsetFromLuma:v81 texChroma:v82];
        v84 = v83;

        *v143 = v84;
        spillCorrection = self->_spillCorrection;
        v86 = [v20 texLuma];
        v87 = [v20 texChroma];
        v17 = v131;
        [(PTSpillCorrection *)spillCorrection encodeToCommandBuffer:v70 lumaTexture:v86 chromaTexture:v87 normChromaOffset:v131 segmentationTexture:v84];

        if (([v18 effectType] & 4) != 0)
        {
          v89 = v135;
          if ([v18 presenterOverlayMode] == 3 || objc_msgSend(v18, "presenterOverlayMode") == 4)
          {
            v88 = [(PTBackgroundReplacement *)self lazyInitializeBackgroundForPresenterOverlaySmall:v22];
            v90 = [v88 width];
            if (v90 != [v135 width] || (v91 = objc_msgSend(v88, "height"), v91 != objc_msgSend(v135, "height")))
            {
              v92 = _PTLogSystem();
              if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
              {
                [PTBackgroundReplacement replaceBackground:inColor:inColorPyramid:inSegmentation:effectRenderRequest:outColor:frameIndex:];
              }

              v88 = 0;
            }

            [v18 setOutBackgroundReplacementPostProcessingBuffer:self->_backgroundForPresenterOverlaySmallPixelBuffer];
            if (!v132)
            {
              v50 = 1.0;
            }
          }

          else
          {
            v88 = 0;
          }
        }

        else
        {
          v88 = 0;
          v89 = v135;
        }

        v93 = [v18 presenterOverlayMode] != 3 && objc_msgSend(v18, "presenterOverlayMode") != 2;
        v94 = v50 < 1.0 || v134;
        if (v94)
        {
          v95 = 1;
        }

        else
        {
          lastPresenterOverlayMode = self->_lastPresenterOverlayMode;
          v95 = lastPresenterOverlayMode != [v18 presenterOverlayMode];
        }

        [v18 setOutBackgroundReplacementPostProcessingBufferUpdated:v95];
        if (([v18 outBackgroundReplacementPostProcessingBufferUpdated] & 1) == 0)
        {

          v88 = 0;
        }

        self->_lastPresenterOverlayMode = [v18 presenterOverlayMode];
        v97 = [[PTImageblockConfig alloc] initWithPTTexture:v89];
        if (v50 >= 1.0)
        {
          v106 = [(PTMetalContext *)self->_metalContext commandBuffer];
          v101 = [v106 computeCommandEncoder];

          [v101 setComputePipelineState:self->_backgroundReplacement];
          [v101 setImageblockWidth:-[PTImageblockConfig imageblockSize](v97 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v97, "imageblockSize")}];
          v107 = [v20 texLuma];
          [v101 setTexture:v107 atIndex:0];

          v108 = [v20 texChroma];
          [v101 setTexture:v108 atIndex:1];

          [v101 setTexture:v131 atIndex:2];
          v109 = [v36 texLuma];
          [v101 setTexture:v109 atIndex:3];

          v110 = [v36 texChroma];
          [v101 setTexture:v110 atIndex:4];

          if (v93)
          {
            v111 = [v135 texLuma];
            [v101 setTexture:v111 atIndex:5];

            v112 = [v135 texChroma];
            [v101 setTexture:v112 atIndex:6];
          }

          else
          {
            [v101 setTexture:0 atIndex:5];
            [v101 setTexture:0 atIndex:6];
          }

          v113 = v127;
          v119 = [(PTSpillCorrection *)self->_spillCorrection coeffXTexture];
          [v101 setTexture:v119 atIndex:7];

          v120 = [(PTSpillCorrection *)self->_spillCorrection coeffYTexture];
          [v101 setTexture:v120 atIndex:8];

          v121 = [(PTSpillCorrection *)self->_spillCorrection coeffZTexture];
          [v101 setTexture:v121 atIndex:9];

          if (self->_colorTemperatureCorrectionYUVCubes[0])
          {
            if (self->_backgroundTransisionCount >= 0)
            {
              v122 = self->_backgroundTransisionCount & 1;
            }

            else
            {
              v122 = -(self->_backgroundTransisionCount & 1);
            }

            [v101 setTexture:colorTemperatureCorrectionYUVCubes[v122] atIndex:10];
          }

          v123 = [v88 texLuma];
          [v101 setTexture:v123 atIndex:11];

          v124 = [v88 texChroma];
          [v101 setTexture:v124 atIndex:12];

          [v101 setBytes:v143 length:8 atIndex:0];
          if (v97)
          {
            [(PTImageblockConfig *)v97 threads];
            [(PTImageblockConfig *)v97 threadsPerGroup];
          }

          else
          {
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
          }

          v39 = v128;
        }

        else
        {
          v98 = 1.0 - v50;
          if (self->_currentState != 3)
          {
            v98 = v50;
          }

          v99 = fminf(fmaxf((v98 + -0.05) / 0.9, 0.0), 1.0);
          self->_interpolation.alphaBlend = (v99 * v99) * ((v99 * -2.0) + 3.0);
          self->_interpolation.lodLevel = 0.0;
          v100 = [(PTMetalContext *)self->_metalContext commandBuffer];
          v101 = [v100 computeCommandEncoder];

          [v101 setComputePipelineState:self->_backgroundReplacementTransition];
          [v101 setImageblockWidth:-[PTImageblockConfig imageblockSize](v97 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v97, "imageblockSize")}];
          v102 = [v20 texLuma];
          [v101 setTexture:v102 atIndex:0];

          v103 = [v20 texChroma];
          [v101 setTexture:v103 atIndex:1];

          [v101 setTexture:v131 atIndex:2];
          [v101 setTexture:v132 atIndex:3];
          [v101 setTexture:v133 atIndex:4];
          if (v93)
          {
            v104 = [v135 texLuma];
            [v101 setTexture:v104 atIndex:5];

            v105 = [v135 texChroma];
            [v101 setTexture:v105 atIndex:6];
          }

          else
          {
            [v101 setTexture:0 atIndex:5];
            [v101 setTexture:0 atIndex:6];
          }

          v113 = v127;
          v114 = [(PTSpillCorrection *)self->_spillCorrection coeffXTexture];
          [v101 setTexture:v114 atIndex:7];

          v115 = [(PTSpillCorrection *)self->_spillCorrection coeffYTexture];
          [v101 setTexture:v115 atIndex:8];

          v116 = [(PTSpillCorrection *)self->_spillCorrection coeffZTexture];
          [v101 setTexture:v116 atIndex:9];

          if (self->_colorTemperatureCorrectionYUVCubes[0])
          {
            [v101 setTexture:v127 atIndex:10];
            [v101 setTexture:v130 atIndex:11];
          }

          v117 = [v88 texLuma];
          [v101 setTexture:v117 atIndex:12];

          v118 = [v88 texChroma];
          [v101 setTexture:v118 atIndex:13];

          [v101 setBytes:v143 length:8 atIndex:0];
          [v101 setBytes:&self->_interpolation length:8 atIndex:1];
          v39 = v128;
          if (v97)
          {
            [(PTImageblockConfig *)v97 threads];
            [(PTImageblockConfig *)v97 threadsPerGroup];
          }

          else
          {
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
          }

          v17 = v131;
        }

        [v101 dispatchThreads:&v140 threadsPerThreadgroup:&v137];
        [v101 endEncoding];

        v21 = v135;
        v15 = v136;
        v16 = v129;
        v37 = v132;
        v38 = v133;
        goto LABEL_128;
      }
    }

    v40 = _PTLogSystem();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [PTBackgroundReplacement replaceBackground:inColor:inColorPyramid:inSegmentation:effectRenderRequest:outColor:frameIndex:];
    }

    goto LABEL_16;
  }

  v32 = _PTLogSystem();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [PTBackgroundReplacement replaceBackground:inColor:inColorPyramid:inSegmentation:effectRenderRequest:outColor:frameIndex:];
  }

  v33 = [(PTMetalContext *)self->_metalContext textureUtil];
  v34 = [v20 texLuma];
  v35 = [v21 texLuma];
  [v33 copy:v15 inTex:v34 outTex:v35];

  v36 = [(PTMetalContext *)self->_metalContext textureUtil];
  v37 = [v20 texChroma];
  v38 = [v21 texChroma];
  [v36 copy:v15 inTex:v37 outTex:v38];
  v39 = 0;
LABEL_128:

  return v39;
}

- (id)lazyInitializeBackgroundForPresenterOverlaySmall:(__CVBuffer *)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (!self->_backgroundForPresenterOverlaySmall)
  {
    p_backgroundForPresenterOverlaySmallPixelBuffer = &self->_backgroundForPresenterOverlaySmallPixelBuffer;
    CVPixelBufferRelease(self->_backgroundForPresenterOverlaySmallPixelBuffer);
    v6 = *MEMORY[0x277CBECE8];
    [(PTEffectDescriptor *)self->_effectDescriptor colorSize];
    v8 = v7;
    [(PTEffectDescriptor *)self->_effectDescriptor colorSize];
    v10 = v9;
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    v18 = *MEMORY[0x277CC4DE8];
    v19[0] = MEMORY[0x277CBEC10];
    CVPixelBufferCreate(v6, v8, v10, PixelFormatType, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1], &self->_backgroundForPresenterOverlaySmallPixelBuffer);
    v12 = *p_backgroundForPresenterOverlaySmallPixelBuffer;
    v13 = [(PTMetalContext *)self->_metalContext device];
    v14 = [PTTexture createFromPixelbuffer:v12 device:v13 read:0 write:1];
    backgroundForPresenterOverlaySmall = self->_backgroundForPresenterOverlaySmall;
    self->_backgroundForPresenterOverlaySmall = v14;
  }

  CVBufferRemoveAllAttachments(self->_backgroundForPresenterOverlaySmallPixelBuffer);
  CVBufferPropagateAttachments(a3, self->_backgroundForPresenterOverlaySmallPixelBuffer);
  v16 = self->_backgroundForPresenterOverlaySmall;

  return v16;
}

- (void)copyInterruptedTransitionToTransitionPyramid:(id)a3
{
  v4 = a3;
  v5 = [PTImageblockConfig alloc];
  backgroundTransitionPyramidYUV = self->_backgroundTransitionPyramidYUV;
  v7 = [(PTPyramid *)self->_backgroundTransitionPyramidYUV[0] mipmapTexture];
  v8 = [(PTImageblockConfig *)v5 initWithTexture:v7];

  v9 = [v4 computeCommandEncoder];
  [v9 setComputePipelineState:self->_backgroundReplacementCopyTransition];
  [v9 setImageblockWidth:-[PTImageblockConfig imageblockSize](v8 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v8, "imageblockSize")}];
  if (self->_backgroundTransisionCount >= 0)
  {
    v10 = self->_backgroundTransisionCount & 1;
  }

  else
  {
    v10 = -(self->_backgroundTransisionCount & 1);
  }

  v11 = [(PTPyramid *)backgroundTransitionPyramidYUV[v10] mipmapTexture];
  [v9 setTexture:v11 atIndex:0];

  backgroundTransisionCount = self->_backgroundTransisionCount;
  v13 = __OFADD__(backgroundTransisionCount++, 1);
  v14 = (backgroundTransisionCount < 0) ^ v13;
  v15 = backgroundTransisionCount & 1;
  if (v14)
  {
    v15 = -v15;
  }

  v16 = [(PTPyramid *)backgroundTransitionPyramidYUV[v15] mipmapTexture];
  [v9 setTexture:v16 atIndex:1];

  v17 = self->_backgroundTransisionCount;
  v13 = __OFADD__(v17++, 1);
  v14 = (v17 < 0) ^ v13;
  v18 = v17 & 1;
  if (v14)
  {
    v18 = -v18;
  }

  v19 = [(PTPyramid *)backgroundTransitionPyramidYUV[v18] mipmapTexture];
  [v9 setTexture:v19 atIndex:2];

  [v9 setBytes:&self->_interpolation length:8 atIndex:0];
  if (v8)
  {
    [(PTImageblockConfig *)v8 threads];
    [(PTImageblockConfig *)v8 threadsPerGroup];
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  [v9 dispatchThreads:&v26 threadsPerThreadgroup:&v23];
  [v9 endEncoding];
  v21 = self->_backgroundTransisionCount;
  v13 = __OFADD__(v21++, 1);
  v14 = (v21 < 0) ^ v13;
  v22 = v21 & 1;
  if (v14)
  {
    v22 = -v22;
  }

  LODWORD(v20) = 1.5;
  [(PTPyramid *)backgroundTransitionPyramidYUV[v22] updatePyramid:v4 offset:0 samplingRadius:v20, v23, v24, v25, v26, v27, v28];
}

- (float)transitionTimeNormalized:(id)a3
{
  [a3 frameTimeSeconds];
  *&v4 = v4 - self->_transitionStart;
  return *&v4 / self->_transitionDuration;
}

- (unint64_t)updateAndGetBackgroundState:(id)a3 frameIndex:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (!a4 && ([v6 effectType] & 0x40) != 0)
  {
    if ([v7 inBackgroundReplacementBuffer])
    {
      [v7 frameTimeSeconds];
      *&v16 = v16 + self->_transitionDuration * -2.0;
      self->_transitionStart = *&v16;
      self->_currentState = 1;
    }

    else
    {
      v19 = _PTLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [PTBackgroundReplacement updateAndGetBackgroundState:frameIndex:];
      }
    }

    p_currentState = &self->_currentState;
    goto LABEL_41;
  }

  v8 = [v7 effectType];
  [(PTBackgroundReplacement *)self transitionTimeNormalized:v7];
  v10 = 0.0;
  if (v9 < 1.0)
  {
    v10 = ((1.0 - v9) * self->_transitionDuration);
  }

  p_currentState = &self->_currentState;
  currentState = self->_currentState;
  if (currentState <= 1)
  {
    if (!currentState)
    {
      goto LABEL_15;
    }

    if (currentState != 1 || (v8 & 0x40) != 0)
    {
      goto LABEL_35;
    }

    [v7 frameTimeSeconds];
LABEL_23:
    v18 = v13;
    self->_transitionStart = v18;
    v15 = 3;
LABEL_24:
    self->_currentState = v15;
    goto LABEL_35;
  }

  if (currentState == 2)
  {
    if ((v8 & 0x40) != 0)
    {
      goto LABEL_35;
    }

    [v7 frameTimeSeconds];
    v13 = v17 - v10;
    goto LABEL_23;
  }

  if (currentState != 3)
  {
    if (currentState == 4 && (v8 & 0x40) == 0)
    {
      *p_currentState = 3;
    }

    goto LABEL_35;
  }

LABEL_15:
  if ((v8 & 0x40) != 0)
  {
    if (![v7 inBackgroundReplacementBuffer])
    {
      v20 = _PTLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PTBackgroundReplacement updateAndGetBackgroundState:frameIndex:];
      }

      goto LABEL_35;
    }

    if (([v7 effectType] & 4) != 0)
    {
      [v7 inScreenCaptureRect];
      if (v21 > 0.8 || ([v7 inScreenCaptureRect], v22 > 0.8))
      {
        self->_currentState = 1;
        [v7 frameTimeSeconds];
        *&v23 = v23 + self->_transitionDuration * -2.0;
        self->_transitionStart = *&v23;
        goto LABEL_35;
      }
    }

    [v7 frameTimeSeconds];
    *&v14 = v14 - v10;
    self->_transitionStart = *&v14;
    v15 = 2;
    goto LABEL_24;
  }

LABEL_35:
  [(PTBackgroundReplacement *)self transitionTimeNormalized:v7];
  if (v24 >= 1.0)
  {
    v25 = *p_currentState;
    if (*p_currentState == 4)
    {
      goto LABEL_39;
    }

    if (v25 == 3)
    {
      *p_currentState = 0;
      goto LABEL_41;
    }

    if (v25 == 2)
    {
LABEL_39:
      *p_currentState = 1;
    }
  }

LABEL_41:
  v26 = *p_currentState;

  return v26;
}

- (void)initWithMetalContext:(os_log_t)log effectDescriptor:sharedSDOFRenderRequest:renderPipeline:.cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "texDesc";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", buf, 0xCu);
}

- (void)replaceBackground:inColor:inColorPyramid:inSegmentation:effectRenderRequest:outColor:frameIndex:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)replaceBackground:inColor:inColorPyramid:inSegmentation:effectRenderRequest:outColor:frameIndex:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)replaceBackground:inColor:inColorPyramid:inSegmentation:effectRenderRequest:outColor:frameIndex:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAndGetBackgroundState:frameIndex:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)updateAndGetBackgroundState:frameIndex:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end