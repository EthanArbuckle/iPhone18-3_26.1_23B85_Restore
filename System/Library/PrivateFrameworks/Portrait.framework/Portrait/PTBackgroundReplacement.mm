@interface PTBackgroundReplacement
- (PTBackgroundReplacement)initWithMetalContext:(id)context effectDescriptor:(id)descriptor sharedSDOFRenderRequest:(id)request renderPipeline:(id)pipeline;
- (float)transitionTimeNormalized:(id)normalized;
- (id)backgroundBufferCropAndResize:(id)resize background:(__CVBuffer *)background;
- (id)bufferWithContent:(PTBackgroundReplacement *)self;
- (id)lazyInitializeBackgroundForPresenterOverlaySmall:(__CVBuffer *)small;
- (int)applyPortraitBlur:(id)blur inColorBuffer:(id)buffer inColorPyramid:(id)pyramid inBackgroundBuffer:(id)backgroundBuffer effectRenderRequest:(id)request;
- (int)replaceBackground:(id)background inColor:(id)color inColorPyramid:(id)pyramid inSegmentation:(id)segmentation effectRenderRequest:(id)request outColor:(id)outColor frameIndex:(int)index;
- (unint64_t)updateAndGetBackgroundState:(id)state frameIndex:(int)index;
- (void)copyInterruptedTransitionToTransitionPyramid:(id)pyramid;
- (void)dealloc;
- (void)studioLightBackgroundDimming:(id)dimming inCurrentBackground:(id)background effectRenderRequest:(id)request outColorBufferYUV:(id)v;
@end

@implementation PTBackgroundReplacement

- (PTBackgroundReplacement)initWithMetalContext:(id)context effectDescriptor:(id)descriptor sharedSDOFRenderRequest:(id)request renderPipeline:(id)pipeline
{
  v115[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  descriptorCopy = descriptor;
  requestCopy = request;
  pipelineCopy = pipeline;
  v109.receiver = self;
  v109.super_class = PTBackgroundReplacement;
  v15 = [(PTBackgroundReplacement *)&v109 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_33;
  }

  objc_storeStrong(&v15->_metalContext, context);
  objc_storeStrong(&v16->_sharedSDOFRenderRequest, request);
  objc_storeStrong(&v16->_renderPipeline, pipeline);
  objc_storeStrong(&v16->_effectDescriptor, descriptor);
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

  v108 = contextCopy;
  activeEffectType = [descriptorCopy activeEffectType];
  if ((activeEffectType & 4) == 0)
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

  v105 = pipelineCopy;
  v107 = requestCopy;
  prewarmOnly = [descriptorCopy prewarmOnly];
  if ((prewarmOnly & 1) == 0)
  {
    textureUtil = [(PTMetalContext *)v16->_metalContext textureUtil];
    v41 = [textureUtil createWithWidth:2 height:2 pixelFormat:25];
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
    textureUtil2 = [(PTMetalContext *)v16->_metalContext textureUtil];
    [descriptorCopy colorSize];
    v46 = v45;
    [descriptorCopy colorSize];
    v48 = [textureUtil2 createWithWidth:v46 height:v47 pixelFormat:10];
    textureUtil3 = [(PTMetalContext *)v16->_metalContext textureUtil];
    [descriptorCopy colorSize];
    v51 = (v50 * 0.5);
    [descriptorCopy colorSize];
    v53 = [textureUtil3 createWithWidth:v51 height:(v52 * 0.5) pixelFormat:30];
    v54 = [PTTexture createYUV420:v48 chroma:v53];
    backgroundWithSDOF = v16->_backgroundWithSDOF;
    v16->_backgroundWithSDOF = v54;

    textureUtil4 = [(PTMetalContext *)v16->_metalContext textureUtil];
    [descriptorCopy colorSize];
    v58 = v57;
    [descriptorCopy colorSize];
    v60 = [textureUtil4 createWithWidth:v58 height:v59 pixelFormat:10];
    textureUtil5 = [(PTMetalContext *)v16->_metalContext textureUtil];
    [descriptorCopy colorSize];
    v63 = (v62 * 0.5);
    [descriptorCopy colorSize];
    v65 = [textureUtil5 createWithWidth:v63 height:(v64 * 0.5) pixelFormat:30];
    v66 = [PTTexture createYUV420:v60 chroma:v65];
    backgroundWithStudioLight = v16->_backgroundWithStudioLight;
    v16->_backgroundWithStudioLight = v66;
  }

  v68 = 0;
  backgroundTransitionPyramidYUV = v16->_backgroundTransitionPyramidYUV;
  v70 = (activeEffectType >> 2) & 1 | prewarmOnly;
  colorTemperatureCorrectionYUVCubes = v16->_colorTemperatureCorrectionYUVCubes;
  v72 = 1;
  do
  {
    v73 = v72;
    v74 = [PTPyramid alloc];
    metalContext = v16->_metalContext;
    [descriptorCopy colorSize];
    v77 = v76 * 0.5;
    [descriptorCopy colorSize];
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
      device = [(PTMetalContext *)v16->_metalContext device];
      v84 = [device newTextureWithDescriptor:v81];
      v85 = colorTemperatureCorrectionYUVCubes[v68];
      colorTemperatureCorrectionYUVCubes[v68] = v84;
    }

    v72 = 0;
    v68 = 1;
  }

  while ((v73 & 1) != 0);
  [descriptorCopy colorSize];
  v88 = v87;
  [descriptorCopy colorSize];
  contextCopy = v108;
  requestCopy = v107;
  if (v88 <= v89)
  {
    [descriptorCopy colorSize];
    v94 = v93;
    [descriptorCopy colorSize];
    v90 = vcvtd_n_u64_f64(v94 / v95, 8uLL);
  }

  else
  {
    v90 = 256;
  }

  pipelineCopy = v105;
  [descriptorCopy colorSize];
  v97 = v96;
  [descriptorCopy colorSize];
  if (v97 <= v98)
  {
    v102 = 256;
  }

  else
  {
    [descriptorCopy colorSize];
    v100 = v99;
    [descriptorCopy colorSize];
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
  device = [(PTMetalContext *)self->_metalContext device];
  v4 = [device newBufferWithBytes:&v6 length:16 options:0];

  return v4;
}

- (id)backgroundBufferCropAndResize:(id)resize background:(__CVBuffer *)background
{
  device = [(PTMetalContext *)self->_metalContext device];
  v7 = [PTTexture createFromPixelbuffer:background device:device read:1 write:0];

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
    width = [(PTTextureYUV *)self->_backgroundCropped width];
    if (width != [v7 width] || (v14 = -[PTTextureYUV height](self->_backgroundCropped, "height"), v14 != objc_msgSend(v7, "height")))
    {
      textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
      v16 = [textureUtil createWithWidth:v9 height:v11 pixelFormat:10];
      textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
      v18 = [textureUtil2 createWithWidth:(v9 * 0.5) height:(v11 * 0.5) pixelFormat:30];
      v19 = [PTTexture createYUV420:v16 chroma:v18];
      backgroundCropped = self->_backgroundCropped;
      self->_backgroundCropped = v19;
    }

    [v7 copyMetadataTo:self->_backgroundCropped];
    commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];
    computeCommandEncoder = [commandBuffer computeCommandEncoder];

    [computeCommandEncoder setComputePipelineState:self->_backgroundCropAndResize];
    texLuma = [v7 texLuma];
    [computeCommandEncoder setTexture:texLuma atIndex:0];

    texChroma = [v7 texChroma];
    [computeCommandEncoder setTexture:texChroma atIndex:1];

    texLuma2 = [(PTTextureYUV *)self->_backgroundCropped texLuma];
    [computeCommandEncoder setTexture:texLuma2 atIndex:2];

    texChroma2 = [(PTTextureYUV *)self->_backgroundCropped texChroma];
    [computeCommandEncoder setTexture:texChroma2 atIndex:3];

    texLuma3 = [(PTTextureYUV *)self->_backgroundCropped texLuma];
    texChroma3 = [(PTTextureYUV *)self->_backgroundCropped texChroma];
    [PTColorConversion getChromaOffsetFromLuma:texLuma3 texChroma:texChroma3];
    v30 = v29;

    v49 = v30;
    [computeCommandEncoder setBytes:&v49 length:8 atIndex:0];
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
      width2 = [v7 width];
      *&v37 = ((width2 * v34) - v9) * 0.5 / (width2 * v34);
      DWORD1(v37) = 0;
      v36 = *&v37 * -2.0 + 1.0;
      *(&v37 + 2) = v36;
      v38 = 1.0;
    }

    *(&v37 + 3) = v38;
    v48 = v37;
    [computeCommandEncoder setBytes:&v48 length:16 atIndex:1];
    texLuma4 = [(PTTextureYUV *)self->_backgroundCropped texLuma];
    width3 = [texLuma4 width];
    texLuma5 = [(PTTextureYUV *)self->_backgroundCropped texLuma];
    v47[0] = width3;
    v47[1] = [texLuma5 height];
    v47[2] = 1;
    v45 = xmmword_2244A5230;
    v46 = 1;
    [computeCommandEncoder dispatchThreads:v47 threadsPerThreadgroup:&v45];

    [computeCommandEncoder endEncoding];
    v12 = self->_backgroundCropped;
  }

  return v12;
}

- (int)applyPortraitBlur:(id)blur inColorBuffer:(id)buffer inColorPyramid:(id)pyramid inBackgroundBuffer:(id)backgroundBuffer effectRenderRequest:(id)request
{
  requestCopy = request;
  backgroundBufferCopy = backgroundBuffer;
  bufferCopy = buffer;
  blurCopy = blur;
  [pyramid updatePyramid:blurCopy inPTTexture:backgroundBufferCopy];
  [bufferCopy copyMetadataTo:self->_backgroundWithSDOF];

  [(PTRenderRequest *)self->_sharedSDOFRenderRequest setSourceColor:backgroundBufferCopy];
  [(PTRenderRequest *)self->_sharedSDOFRenderRequest setDestinationColor:self->_backgroundWithSDOF];
  [(PTRenderRequest *)self->_sharedSDOFRenderRequest setSourceDisparity:self->_constantDisparity];
  [requestCopy remappedAperture];
  v17 = v16;

  LODWORD(v18) = v17;
  [(PTRenderRequest *)self->_sharedSDOFRenderRequest setFNumber:v18];
  LODWORD(self) = [(PTRenderPipeline *)self->_renderPipeline encodeRenderTo:blurCopy withRenderRequest:self->_sharedSDOFRenderRequest];

  return self;
}

- (void)studioLightBackgroundDimming:(id)dimming inCurrentBackground:(id)background effectRenderRequest:(id)request outColorBufferYUV:(id)v
{
  backgroundWithStudioLight = self->_backgroundWithStudioLight;
  requestCopy = request;
  backgroundCopy = background;
  texLuma = [(PTTextureYUV *)backgroundWithStudioLight texLuma];
  texChroma = [(PTTextureYUV *)self->_backgroundWithStudioLight texChroma];
  [PTColorConversion getChromaOffsetFromLuma:texLuma texChroma:texChroma];
  v14 = v13;

  v29 = v14;
  [requestCopy relightStrengthStudioLight];
  LODWORD(v14) = v15;

  v28 = v14;
  commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_studiolightBackgroundDimming];
  texLuma2 = [backgroundCopy texLuma];
  [computeCommandEncoder setTexture:texLuma2 atIndex:0];

  texChroma2 = [backgroundCopy texChroma];

  [computeCommandEncoder setTexture:texChroma2 atIndex:1];
  texLuma3 = [(PTTextureYUV *)self->_backgroundWithStudioLight texLuma];
  [computeCommandEncoder setTexture:texLuma3 atIndex:2];

  texChroma3 = [(PTTextureYUV *)self->_backgroundWithStudioLight texChroma];
  [computeCommandEncoder setTexture:texChroma3 atIndex:3];

  [computeCommandEncoder setBytes:&v29 length:8 atIndex:0];
  [computeCommandEncoder setBytes:&v28 length:4 atIndex:1];
  texLuma4 = [(PTTextureYUV *)self->_backgroundWithStudioLight texLuma];
  width = [texLuma4 width];
  texLuma5 = [(PTTextureYUV *)self->_backgroundWithStudioLight texLuma];
  v27[0] = width;
  v27[1] = [texLuma5 height];
  v27[2] = 1;
  v25 = xmmword_2244A5230;
  v26 = 1;
  [computeCommandEncoder dispatchThreads:v27 threadsPerThreadgroup:&v25];

  [computeCommandEncoder endEncoding];
}

- (int)replaceBackground:(id)background inColor:(id)color inColorPyramid:(id)pyramid inSegmentation:(id)segmentation effectRenderRequest:(id)request outColor:(id)outColor frameIndex:(int)index
{
  backgroundCopy = background;
  pyramidCopy = pyramid;
  segmentationCopy = segmentation;
  requestCopy = request;
  outColorCopy = outColor;
  asYUV = [color asYUV];
  asYUV2 = [outColorCopy asYUV];

  inBackgroundReplacementBuffer = [requestCopy inBackgroundReplacementBuffer];
  backgroundPixelBuffer = self->_backgroundPixelBuffer;
  if (self->_currentState == 3)
  {
    inBackgroundReplacementBuffer = self->_backgroundPixelBuffer;
  }

  else if (backgroundPixelBuffer != inBackgroundReplacementBuffer)
  {
    CVPixelBufferRelease(backgroundPixelBuffer);
    self->_backgroundPixelBuffer = CVPixelBufferRetain(inBackgroundReplacementBuffer);
  }

  if (inBackgroundReplacementBuffer)
  {
    v131 = segmentationCopy;
    v129 = pyramidCopy;
    v136 = backgroundCopy;
    v24 = asYUV2;
    effectType = [requestCopy effectType];
    effectType2 = [requestCopy effectType];
    texLuma = [asYUV texLuma];
    texLuma2 = [v24 texLuma];
    v29 = texLuma2;
    v135 = v24;
    if (texLuma == texLuma2)
    {
    }

    else
    {
      texChroma = [asYUV texChroma];
      texChroma2 = [v24 texChroma];

      if (texChroma != texChroma2)
      {
LABEL_16:
        v41 = -1.0;
        v42 = -1.0;
        if (effectType)
        {
          [requestCopy apertureSDOF];
          v42 = v43;
        }

        if ((effectType2 & 2) != 0)
        {
          [requestCopy relightStrengthStudioLight];
          v41 = v44;
        }

        v45 = (*&self->_lastBackgroundCroppedKey.apertureSDOF & 0x7FFFFFFF7FFFFFFFLL) != 0 || self->_lastBackgroundCroppedKey.backgroundReplacementBuffer != inBackgroundReplacementBuffer;
        v46 = *&self->_lastEffectUpdateKey.apertureSDOF;
        v47 = v42 != *&v46 || v41 != *(&v46 + 1) || self->_lastEffectUpdateKey.backgroundReplacementBuffer != inBackgroundReplacementBuffer;
        v134 = v47;
        *&self->_lastBackgroundCroppedKey.apertureSDOF = 0;
        self->_lastBackgroundCroppedKey.backgroundReplacementBuffer = inBackgroundReplacementBuffer;
        self->_lastEffectUpdateKey.apertureSDOF = v42;
        self->_lastEffectUpdateKey.relightStrengthStudioLight = v41;
        self->_lastEffectUpdateKey.backgroundReplacementBuffer = inBackgroundReplacementBuffer;
        v48 = self->_backgroundCropped;
        [(PTBackgroundReplacement *)self updateAndGetBackgroundState:requestCopy frameIndex:index];
        [(PTBackgroundReplacement *)self transitionTimeNormalized:requestCopy];
        v50 = v49;
        if (v45)
        {
          textureUtil3 = [(PTBackgroundReplacement *)self backgroundBufferCropAndResize:v136 background:inBackgroundReplacementBuffer];

          ++self->_backgroundTransisionCount;
          if (v50 < 1.0 && v50 > 0.01 && self->_currentState == 4)
          {
            [(PTBackgroundReplacement *)self copyInterruptedTransitionToTransitionPyramid:v136];
          }

          if (index)
          {
            if (self->_currentState == 1)
            {
              self->_currentState = 4;
            }

            [requestCopy frameTimeSeconds];
            *&v51 = v51;
            self->_transitionStart = *&v51;
            v50 = 0.0;
          }

          else
          {
            [requestCopy frameTimeSeconds];
            *&v52 = v52 + self->_transitionDuration * -2.0;
            self->_transitionStart = *&v52;
            self->_currentState = 1;
            v50 = 1.0;
          }

          colorTemperatureCorrection = self->_colorTemperatureCorrection;
          texLuma3 = [textureUtil3 texLuma];
          texChroma3 = [textureUtil3 texChroma];
          if (self->_backgroundTransisionCount >= 0)
          {
            v56 = self->_backgroundTransisionCount & 1;
          }

          else
          {
            v56 = -(self->_backgroundTransisionCount & 1);
          }

          [(PTColorTemperatureCorrection *)colorTemperatureCorrection estimateColorTemperatureFromBackground:v136 inYUV:asYUV inBackgroundLuma:texLuma3 inBackgroundChroma:texChroma3 outColorTemperatureBuffer:self->_colorTemperatureRGB[v56]];
        }

        else
        {
          textureUtil3 = v48;
        }

        backgroundTransisionCount = self->_backgroundTransisionCount;
        if (backgroundTransisionCount == 1 || (self->_currentState & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          mipmapTexture = 0;
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

          mipmapTexture = [(PTPyramid *)self->_backgroundTransitionPyramidYUV[v62] mipmapTexture];
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

        mipmapTexture2 = [(PTPyramid *)backgroundTransitionPyramidYUV[v64] mipmapTexture];
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
        if (effectType)
        {
          if (v134)
          {
            v70 = v136;
            v128 = [(PTBackgroundReplacement *)self applyPortraitBlur:v136 inColorBuffer:asYUV inColorPyramid:v129 inBackgroundBuffer:textureUtil3 effectRenderRequest:requestCopy];
          }

          else
          {
            v128 = 0;
            v70 = v136;
          }

          v71 = self->_backgroundWithSDOF;

          textureUtil3 = v71;
        }

        else
        {
          v128 = 0;
          v70 = v136;
        }

        v127 = v68;
        if ((effectType2 & 2) != 0)
        {
          if (v134)
          {
            [(PTBackgroundReplacement *)self studioLightBackgroundDimming:v70 inCurrentBackground:textureUtil3 effectRenderRequest:requestCopy outColorBufferYUV:v135];
          }

          v72 = self->_backgroundWithStudioLight;

          textureUtil3 = v72;
        }

        if (v134)
        {
          textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
          texLuma4 = [textureUtil3 texLuma];
          texChroma4 = [textureUtil3 texChroma];
          [textureUtil resample420To444:v136 inLuma:texLuma4 inChroma:texChroma4 outYUV:mipmapTexture2];

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
          if ((effectType2 & 2) != 0)
          {
            [requestCopy relightStrengthStudioLight];
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

        texLuma5 = [asYUV texLuma];
        texChroma5 = [asYUV texChroma];
        [PTColorConversion getChromaOffsetFromLuma:texLuma5 texChroma:texChroma5];
        v84 = v83;

        *v143 = v84;
        spillCorrection = self->_spillCorrection;
        texLuma6 = [asYUV texLuma];
        texChroma6 = [asYUV texChroma];
        segmentationCopy = v131;
        [(PTSpillCorrection *)spillCorrection encodeToCommandBuffer:v70 lumaTexture:texLuma6 chromaTexture:texChroma6 normChromaOffset:v131 segmentationTexture:v84];

        if (([requestCopy effectType] & 4) != 0)
        {
          v89 = v135;
          if ([requestCopy presenterOverlayMode] == 3 || objc_msgSend(requestCopy, "presenterOverlayMode") == 4)
          {
            v88 = [(PTBackgroundReplacement *)self lazyInitializeBackgroundForPresenterOverlaySmall:inBackgroundReplacementBuffer];
            width = [v88 width];
            if (width != [v135 width] || (v91 = objc_msgSend(v88, "height"), v91 != objc_msgSend(v135, "height")))
            {
              v92 = _PTLogSystem();
              if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
              {
                [PTBackgroundReplacement replaceBackground:inColor:inColorPyramid:inSegmentation:effectRenderRequest:outColor:frameIndex:];
              }

              v88 = 0;
            }

            [requestCopy setOutBackgroundReplacementPostProcessingBuffer:self->_backgroundForPresenterOverlaySmallPixelBuffer];
            if (!mipmapTexture)
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

        v93 = [requestCopy presenterOverlayMode] != 3 && objc_msgSend(requestCopy, "presenterOverlayMode") != 2;
        v94 = v50 < 1.0 || v134;
        if (v94)
        {
          v95 = 1;
        }

        else
        {
          lastPresenterOverlayMode = self->_lastPresenterOverlayMode;
          v95 = lastPresenterOverlayMode != [requestCopy presenterOverlayMode];
        }

        [requestCopy setOutBackgroundReplacementPostProcessingBufferUpdated:v95];
        if (([requestCopy outBackgroundReplacementPostProcessingBufferUpdated] & 1) == 0)
        {

          v88 = 0;
        }

        self->_lastPresenterOverlayMode = [requestCopy presenterOverlayMode];
        v97 = [[PTImageblockConfig alloc] initWithPTTexture:v89];
        if (v50 >= 1.0)
        {
          commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];
          computeCommandEncoder = [commandBuffer computeCommandEncoder];

          [computeCommandEncoder setComputePipelineState:self->_backgroundReplacement];
          [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v97 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v97, "imageblockSize")}];
          texLuma7 = [asYUV texLuma];
          [computeCommandEncoder setTexture:texLuma7 atIndex:0];

          texChroma7 = [asYUV texChroma];
          [computeCommandEncoder setTexture:texChroma7 atIndex:1];

          [computeCommandEncoder setTexture:v131 atIndex:2];
          texLuma8 = [textureUtil3 texLuma];
          [computeCommandEncoder setTexture:texLuma8 atIndex:3];

          texChroma8 = [textureUtil3 texChroma];
          [computeCommandEncoder setTexture:texChroma8 atIndex:4];

          if (v93)
          {
            texLuma9 = [v135 texLuma];
            [computeCommandEncoder setTexture:texLuma9 atIndex:5];

            texChroma9 = [v135 texChroma];
            [computeCommandEncoder setTexture:texChroma9 atIndex:6];
          }

          else
          {
            [computeCommandEncoder setTexture:0 atIndex:5];
            [computeCommandEncoder setTexture:0 atIndex:6];
          }

          v113 = v127;
          coeffXTexture = [(PTSpillCorrection *)self->_spillCorrection coeffXTexture];
          [computeCommandEncoder setTexture:coeffXTexture atIndex:7];

          coeffYTexture = [(PTSpillCorrection *)self->_spillCorrection coeffYTexture];
          [computeCommandEncoder setTexture:coeffYTexture atIndex:8];

          coeffZTexture = [(PTSpillCorrection *)self->_spillCorrection coeffZTexture];
          [computeCommandEncoder setTexture:coeffZTexture atIndex:9];

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

            [computeCommandEncoder setTexture:colorTemperatureCorrectionYUVCubes[v122] atIndex:10];
          }

          texLuma10 = [v88 texLuma];
          [computeCommandEncoder setTexture:texLuma10 atIndex:11];

          texChroma10 = [v88 texChroma];
          [computeCommandEncoder setTexture:texChroma10 atIndex:12];

          [computeCommandEncoder setBytes:v143 length:8 atIndex:0];
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
          commandBuffer2 = [(PTMetalContext *)self->_metalContext commandBuffer];
          computeCommandEncoder = [commandBuffer2 computeCommandEncoder];

          [computeCommandEncoder setComputePipelineState:self->_backgroundReplacementTransition];
          [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v97 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v97, "imageblockSize")}];
          texLuma11 = [asYUV texLuma];
          [computeCommandEncoder setTexture:texLuma11 atIndex:0];

          texChroma11 = [asYUV texChroma];
          [computeCommandEncoder setTexture:texChroma11 atIndex:1];

          [computeCommandEncoder setTexture:v131 atIndex:2];
          [computeCommandEncoder setTexture:mipmapTexture atIndex:3];
          [computeCommandEncoder setTexture:mipmapTexture2 atIndex:4];
          if (v93)
          {
            texLuma12 = [v135 texLuma];
            [computeCommandEncoder setTexture:texLuma12 atIndex:5];

            texChroma12 = [v135 texChroma];
            [computeCommandEncoder setTexture:texChroma12 atIndex:6];
          }

          else
          {
            [computeCommandEncoder setTexture:0 atIndex:5];
            [computeCommandEncoder setTexture:0 atIndex:6];
          }

          v113 = v127;
          coeffXTexture2 = [(PTSpillCorrection *)self->_spillCorrection coeffXTexture];
          [computeCommandEncoder setTexture:coeffXTexture2 atIndex:7];

          coeffYTexture2 = [(PTSpillCorrection *)self->_spillCorrection coeffYTexture];
          [computeCommandEncoder setTexture:coeffYTexture2 atIndex:8];

          coeffZTexture2 = [(PTSpillCorrection *)self->_spillCorrection coeffZTexture];
          [computeCommandEncoder setTexture:coeffZTexture2 atIndex:9];

          if (self->_colorTemperatureCorrectionYUVCubes[0])
          {
            [computeCommandEncoder setTexture:v127 atIndex:10];
            [computeCommandEncoder setTexture:v130 atIndex:11];
          }

          texLuma13 = [v88 texLuma];
          [computeCommandEncoder setTexture:texLuma13 atIndex:12];

          texChroma13 = [v88 texChroma];
          [computeCommandEncoder setTexture:texChroma13 atIndex:13];

          [computeCommandEncoder setBytes:v143 length:8 atIndex:0];
          [computeCommandEncoder setBytes:&self->_interpolation length:8 atIndex:1];
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

          segmentationCopy = v131;
        }

        [computeCommandEncoder dispatchThreads:&v140 threadsPerThreadgroup:&v137];
        [computeCommandEncoder endEncoding];

        asYUV2 = v135;
        backgroundCopy = v136;
        pyramidCopy = v129;
        texChroma14 = mipmapTexture;
        texChroma15 = mipmapTexture2;
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

  textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
  texLuma14 = [asYUV texLuma];
  texLuma15 = [asYUV2 texLuma];
  [textureUtil2 copy:backgroundCopy inTex:texLuma14 outTex:texLuma15];

  textureUtil3 = [(PTMetalContext *)self->_metalContext textureUtil];
  texChroma14 = [asYUV texChroma];
  texChroma15 = [asYUV2 texChroma];
  [textureUtil3 copy:backgroundCopy inTex:texChroma14 outTex:texChroma15];
  v39 = 0;
LABEL_128:

  return v39;
}

- (id)lazyInitializeBackgroundForPresenterOverlaySmall:(__CVBuffer *)small
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
    PixelFormatType = CVPixelBufferGetPixelFormatType(small);
    v18 = *MEMORY[0x277CC4DE8];
    v19[0] = MEMORY[0x277CBEC10];
    CVPixelBufferCreate(v6, v8, v10, PixelFormatType, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1], &self->_backgroundForPresenterOverlaySmallPixelBuffer);
    v12 = *p_backgroundForPresenterOverlaySmallPixelBuffer;
    device = [(PTMetalContext *)self->_metalContext device];
    v14 = [PTTexture createFromPixelbuffer:v12 device:device read:0 write:1];
    backgroundForPresenterOverlaySmall = self->_backgroundForPresenterOverlaySmall;
    self->_backgroundForPresenterOverlaySmall = v14;
  }

  CVBufferRemoveAllAttachments(self->_backgroundForPresenterOverlaySmallPixelBuffer);
  CVBufferPropagateAttachments(small, self->_backgroundForPresenterOverlaySmallPixelBuffer);
  v16 = self->_backgroundForPresenterOverlaySmall;

  return v16;
}

- (void)copyInterruptedTransitionToTransitionPyramid:(id)pyramid
{
  pyramidCopy = pyramid;
  v5 = [PTImageblockConfig alloc];
  backgroundTransitionPyramidYUV = self->_backgroundTransitionPyramidYUV;
  mipmapTexture = [(PTPyramid *)self->_backgroundTransitionPyramidYUV[0] mipmapTexture];
  v8 = [(PTImageblockConfig *)v5 initWithTexture:mipmapTexture];

  computeCommandEncoder = [pyramidCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_backgroundReplacementCopyTransition];
  [computeCommandEncoder setImageblockWidth:-[PTImageblockConfig imageblockSize](v8 height:{"imageblockSize"), -[PTImageblockConfig imageblockSize](v8, "imageblockSize")}];
  if (self->_backgroundTransisionCount >= 0)
  {
    v10 = self->_backgroundTransisionCount & 1;
  }

  else
  {
    v10 = -(self->_backgroundTransisionCount & 1);
  }

  mipmapTexture2 = [(PTPyramid *)backgroundTransitionPyramidYUV[v10] mipmapTexture];
  [computeCommandEncoder setTexture:mipmapTexture2 atIndex:0];

  backgroundTransisionCount = self->_backgroundTransisionCount;
  v13 = __OFADD__(backgroundTransisionCount++, 1);
  v14 = (backgroundTransisionCount < 0) ^ v13;
  v15 = backgroundTransisionCount & 1;
  if (v14)
  {
    v15 = -v15;
  }

  mipmapTexture3 = [(PTPyramid *)backgroundTransitionPyramidYUV[v15] mipmapTexture];
  [computeCommandEncoder setTexture:mipmapTexture3 atIndex:1];

  v17 = self->_backgroundTransisionCount;
  v13 = __OFADD__(v17++, 1);
  v14 = (v17 < 0) ^ v13;
  v18 = v17 & 1;
  if (v14)
  {
    v18 = -v18;
  }

  mipmapTexture4 = [(PTPyramid *)backgroundTransitionPyramidYUV[v18] mipmapTexture];
  [computeCommandEncoder setTexture:mipmapTexture4 atIndex:2];

  [computeCommandEncoder setBytes:&self->_interpolation length:8 atIndex:0];
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

  [computeCommandEncoder dispatchThreads:&v26 threadsPerThreadgroup:&v23];
  [computeCommandEncoder endEncoding];
  v21 = self->_backgroundTransisionCount;
  v13 = __OFADD__(v21++, 1);
  v14 = (v21 < 0) ^ v13;
  v22 = v21 & 1;
  if (v14)
  {
    v22 = -v22;
  }

  LODWORD(v20) = 1.5;
  [(PTPyramid *)backgroundTransitionPyramidYUV[v22] updatePyramid:pyramidCopy offset:0 samplingRadius:v20, v23, v24, v25, v26, v27, v28];
}

- (float)transitionTimeNormalized:(id)normalized
{
  [normalized frameTimeSeconds];
  *&v4 = v4 - self->_transitionStart;
  return *&v4 / self->_transitionDuration;
}

- (unint64_t)updateAndGetBackgroundState:(id)state frameIndex:(int)index
{
  stateCopy = state;
  v7 = stateCopy;
  if (!index && ([stateCopy effectType] & 0x40) != 0)
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

  effectType = [v7 effectType];
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

    if (currentState != 1 || (effectType & 0x40) != 0)
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
    if ((effectType & 0x40) != 0)
    {
      goto LABEL_35;
    }

    [v7 frameTimeSeconds];
    v13 = v17 - v10;
    goto LABEL_23;
  }

  if (currentState != 3)
  {
    if (currentState == 4 && (effectType & 0x40) == 0)
    {
      *p_currentState = 3;
    }

    goto LABEL_35;
  }

LABEL_15:
  if ((effectType & 0x40) != 0)
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