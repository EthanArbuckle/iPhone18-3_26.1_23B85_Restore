@interface PTSyntheticLight
- (PTSyntheticLight)initWithMetalContext:(id)context msrColorPyramid:(id)pyramid colorSize:(id *)size prewarmOnly:(BOOL)only sharedResources:(id)resources;
- (id)debugTextures;
- (void)dealloc;
- (void)estimateLightIntensity:(id)intensity relightStrength:(float)strength;
- (void)estimateLightIntensityWithFaceRects:(PTSyntheticLight *)self inColor:(SEL)color numberOfFaceRects:transform:humanDetections:asyncWork:;
- (void)interpolateLightIntensity:(float)intensity;
- (void)updateSubjectRelighting:(uint64_t)relighting inLuma:(void *)luma inChroma:(void *)chroma inFaceRects:(uint64_t)rects runOnAsyncCommandQueue:(int)queue transform:(__int128 *)transform dependentCommandBuffer:(void *)buffer;
@end

@implementation PTSyntheticLight

- (PTSyntheticLight)initWithMetalContext:(id)context msrColorPyramid:(id)pyramid colorSize:(id *)size prewarmOnly:(BOOL)only sharedResources:(id)resources
{
  onlyCopy = only;
  v72[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  pyramidCopy = pyramid;
  resourcesCopy = resources;
  v70.receiver = self;
  v70.super_class = PTSyntheticLight;
  v15 = [(PTSyntheticLight *)&v70 init];
  v16 = v15;
  v17 = v15;
  if (!v15)
  {
    goto LABEL_40;
  }

  objc_storeStrong(&v15->_mainMetalContext, context);
  v18 = [contextCopy copy];
  asyncMetalContext = v17->_asyncMetalContext;
  v17->_asyncMetalContext = v18;

  device = [(PTMetalContext *)v17->_asyncMetalContext device];
  newCommandQueue = [device newCommandQueue];
  [(PTMetalContext *)v17->_asyncMetalContext setCommandQueue:newCommandQueue];

  commandQueue = [(PTMetalContext *)v17->_asyncMetalContext commandQueue];
  v23 = commandQueue == 0;

  if (v23)
  {
    v30 = _PTLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
    }

    goto LABEL_25;
  }

  effectUtil = [resourcesCopy effectUtil];
  effectUtil = v17->_effectUtil;
  v17->_effectUtil = effectUtil;

  objc_storeStrong(&v16->_msrColorPyramid, pyramid);
  v17->_config.firstFrame = 1;
  *&v17->_config.framesSinceLightEstimate = 0x1E00000000;
  v17->_config.emaCoefficient = 0.3;
  v17->_subjectRelightingRunning = 0;
  v26 = [contextCopy computePipelineStateFor:@"lightEstimation" withConstants:0];
  lightEstimation = v17->_lightEstimation;
  v17->_lightEstimation = v26;

  if (!v17->_lightEstimation)
  {
    v30 = _PTLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
    }

    goto LABEL_25;
  }

  if (onlyCopy)
  {
    p_personSemanticsNetwork = &v17->_personSemanticsNetwork;
    personSemanticsNetwork = v17->_personSemanticsNetwork;
    v17->_personSemanticsNetwork = 0;
  }

  else
  {
    v31 = [[PTPersonSemanticsNetwork alloc] initWithMetalContext:contextCopy sharedResources:resourcesCopy];
    p_personSemanticsNetwork = &v17->_personSemanticsNetwork;
    v32 = v17->_personSemanticsNetwork;
    v17->_personSemanticsNetwork = v31;

    if (!v17->_personSemanticsNetwork)
    {
      v30 = _PTLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
      }

      goto LABEL_25;
    }
  }

  v33 = [PTSubjectRelighting alloc];
  effectUtil2 = [resourcesCopy effectUtil];
  v35 = [(PTSubjectRelighting *)v33 initWithMetalContext:contextCopy effectUtil:effectUtil2 prewarmOnly:onlyCopy];
  subjectRelighting = v17->_subjectRelighting;
  v17->_subjectRelighting = v35;

  if (!v17->_subjectRelighting)
  {
    v30 = _PTLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
    }

    goto LABEL_25;
  }

  if (!onlyCopy)
  {
    faceAttributesNetwork = [resourcesCopy faceAttributesNetwork];
    faceAttributesNetwork = v17->_faceAttributesNetwork;
    v17->_faceAttributesNetwork = faceAttributesNetwork;

    device2 = [contextCopy device];
    v41 = [device2 newBufferWithLength:64 options:0];
    lightEstimationBuffer = v17->_lightEstimationBuffer;
    v17->_lightEstimationBuffer = v41;

    targetRGBA = [pyramidCopy targetRGBA];
    width = [targetRGBA width];
    targetRGBA2 = [pyramidCopy targetRGBA];
    height = [targetRGBA2 height];
    v47 = *MEMORY[0x277CC4D60];
    v71[0] = *MEMORY[0x277CC4DE8];
    v71[1] = v47;
    v72[0] = MEMORY[0x277CBEC10];
    v72[1] = &unk_2837F3118;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
    LODWORD(width) = CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, 0x42475241u, v48, &v16->_rgbaPixelBufferCopy);

    if (!width)
    {
      v49 = MEMORY[0x277CD7058];
      Width = CVPixelBufferGetWidth(v16->_rgbaPixelBufferCopy);
      v51 = [v49 texture2DDescriptorWithPixelFormat:81 width:Width height:CVPixelBufferGetHeight(v16->_rgbaPixelBufferCopy) mipmapped:0];
      [v51 setUsage:{+[PTPixelBufferUtil getNoConcurrentAccessHint:](PTPixelBufferUtil, "getNoConcurrentAccessHint:", v16->_rgbaPixelBufferCopy) | 3}];
      device3 = [contextCopy device];
      v53 = [device3 newTextureWithDescriptor:v51 iosurface:CVPixelBufferGetIOSurface(v16->_rgbaPixelBufferCopy) plane:0];
      rgbaTextureCopy = v17->_rgbaTextureCopy;
      v17->_rgbaTextureCopy = v53;

      if (v17->_rgbaTextureCopy)
      {
        textureUtil = [contextCopy textureUtil];
        v56 = [textureUtil createWithWidth:size->var0 >> 1 height:size->var1 >> 1 pixelFormat:10];
        quarterSizeLumaCopy = v17->_quarterSizeLumaCopy;
        v17->_quarterSizeLumaCopy = v56;

        if (v17->_quarterSizeLumaCopy)
        {
          textureUtil2 = [contextCopy textureUtil];
          v59 = [textureUtil2 createWithWidth:size->var0 >> 2 height:size->var1 >> 2 pixelFormat:30];
          quarterSizeChromaCopy = v17->_quarterSizeChromaCopy;
          v17->_quarterSizeChromaCopy = v59;

          if (v17->_quarterSizeChromaCopy)
          {
            textureUtil3 = [contextCopy textureUtil];
            inRGBA = [*p_personSemanticsNetwork inRGBA];
            width2 = [inRGBA width];
            inRGBA2 = [*p_personSemanticsNetwork inRGBA];
            v65 = [textureUtil3 createWithWidth:width2 height:objc_msgSend(inRGBA2 pixelFormat:"height"), 71];
            skinMaskRGBA = v17->_skinMaskRGBA;
            v17->_skinMaskRGBA = v65;

            if (v17->_skinMaskRGBA)
            {

              goto LABEL_15;
            }

            v67 = _PTLogSystem();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
            }
          }

          else
          {
            v67 = _PTLogSystem();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
            }
          }
        }

        else
        {
          v67 = _PTLogSystem();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
          }
        }
      }

      else
      {
        v67 = _PTLogSystem();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
        }
      }

LABEL_40:
      v37 = 0;
      goto LABEL_41;
    }

    v30 = _PTLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
    }

LABEL_25:

    goto LABEL_40;
  }

LABEL_15:
  v37 = v17;
LABEL_41:

  return v37;
}

- (void)dealloc
{
  rgbaPixelBufferCopy = self->_rgbaPixelBufferCopy;
  if (rgbaPixelBufferCopy)
  {
    CVPixelBufferRelease(rgbaPixelBufferCopy);
  }

  v4.receiver = self;
  v4.super_class = PTSyntheticLight;
  [(PTSyntheticLight *)&v4 dealloc];
}

- (void)updateSubjectRelighting:(uint64_t)relighting inLuma:(void *)luma inChroma:(void *)chroma inFaceRects:(uint64_t)rects runOnAsyncCommandQueue:(int)queue transform:(__int128 *)transform dependentCommandBuffer:(void *)buffer
{
  lumaCopy = luma;
  chromaCopy = chroma;
  [buffer waitUntilScheduled];
  v16 = transform[1];
  v35 = *transform;
  v36 = v16;
  v37 = transform[2];
  v17 = [PTUtil orientationFromTransform:&v35 inverse:1];
  kdebug_trace();
  v18 = 16;
  if (queue)
  {
    v18 = 24;
  }

  v19 = *(self + v18);
  [*(self + 32) executeNetwork:v19];
  commandBuffer = [v19 commandBuffer];

  if (!commandBuffer)
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PTEspressoGenericExecutor convertBindInput:];
    }
  }

  commandBuffer2 = [v19 commandBuffer];
  [commandBuffer2 setLabel:@"PTSyntheticLight updateSubjectRelighting"];

  v23 = *(rects + 64);
  v24 = transform[1];
  v35 = *transform;
  v36 = v24;
  v37 = transform[2];
  v25 = [PTEffectUtil faceRectsForVision:rects numberOfFaceRects:v23 transform:&v35];
  v26 = [*(self + 104) faceLandmarksInPixelBuffer:relighting faceRects:v25 orientation:v17];
  v27 = *(self + 96);
  *(self + 96) = v26;

  v28 = *(self + 88);
  commandBuffer3 = [v19 commandBuffer];
  outSkinMask = [*(self + 32) outSkinMask];
  outPersonMask = [*(self + 32) outPersonMask];
  v32 = *(self + 96);
  v33 = transform[1];
  v35 = *transform;
  v36 = v33;
  v37 = transform[2];
  [v28 runSRLForLivePhotosWithInputBuffer:commandBuffer3 lumaTexture:lumaCopy chromaTexture:chromaCopy skinMaskTexture:outSkinMask personMaskTexture:outPersonMask skinToneClassification:v32 validROI:0.0 expBias:0.0 faceExpRatio:1.0 transform:{1.0, 0.0, 0.0, &v35}];

  if (queue)
  {
    [v19 commitAndWaitUntilCompleted];
  }

  else
  {
    [v19 commit];
  }

  [v19 commit];
  kdebug_trace();
}

- (void)estimateLightIntensityWithFaceRects:(PTSyntheticLight *)self inColor:(SEL)color numberOfFaceRects:transform:humanDetections:asyncWork:
{
  v8 = v7;
  v9 = v6;
  v47 = v5;
  v48 = v2;
  v10 = v4;
  v12 = v3;
  v13 = v9;
  v49 = v12;
  v50 = v8;
  asYUV = [v12 asYUV];
  os_unfair_lock_lock(&sSRLAsyncLock);
  LOBYTE(v12) = self->_subjectRelightingRunning;
  os_unfair_lock_unlock(&sSRLAsyncLock);
  if ((v12 & 1) == 0 && (self->_config.firstFrame || v10 >= 1 && self->_config.framesSinceLightEstimate >= self->_config.lightEstimateFrequency))
  {
    v14 = 0;
    v15 = 0;
    v16 = 64;
    while (v14 < [v13 detectionsRawCount])
    {
      v15 |= fabsf(fmodf(*([v13 detectionsRaw] + v16) + 180.0, 360.0) + -180.0) < 60.0;
      ++v14;
      v16 += 144;
    }

    if (((v10 > 0) & v15) != 0)
    {
      v65 = 0;
      v66 = &v65;
      v67 = 0x8012000000;
      v68 = __Block_byref_object_copy__0;
      v69 = __Block_byref_object_dispose__0;
      v70 = "";
      v17 = v48[1];
      v71 = *v48;
      v72 = v17;
      v18 = v48[3];
      v73 = v48[2];
      v74 = v18;
      v75 = v10;
      commandBuffer = [(PTMetalContext *)self->_mainMetalContext commandBuffer];

      if (!commandBuffer)
      {
        v20 = _PTLogSystem();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [PTEspressoGenericExecutor convertBindInput:];
        }
      }

      commandBuffer2 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      [commandBuffer2 setLabel:@"PTSyntheticLight estimateLightIntensityWithFaceRects"];

      textureUtil = [(PTMetalContext *)self->_mainMetalContext textureUtil];
      commandBuffer3 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      targetRGBA = [(PTMSRResize *)self->_msrColorPyramid targetRGBA];
      inRGBA = [(PTPersonSemanticsNetwork *)self->_personSemanticsNetwork inRGBA];
      [textureUtil copy:commandBuffer3 inTex:targetRGBA outTex:inRGBA];

      self->_config.framesSinceLightEstimate = 0;
      textureUtil2 = [(PTMetalContext *)self->_mainMetalContext textureUtil];
      commandBuffer4 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      targetRGBA2 = [(PTMSRResize *)self->_msrColorPyramid targetRGBA];
      [textureUtil2 copy:commandBuffer4 inTex:targetRGBA2 outTex:self->_rgbaTextureCopy];

      textureUtil3 = [(PTMetalContext *)self->_mainMetalContext textureUtil];
      commandBuffer5 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      texLuma = [asYUV texLuma];
      [textureUtil3 copy:commandBuffer5 inTex:texLuma outTex:self->_quarterSizeLumaCopy];

      textureUtil4 = [(PTMetalContext *)self->_mainMetalContext textureUtil];
      commandBuffer6 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      texChroma = [asYUV texChroma];
      [textureUtil4 copy:commandBuffer6 inTex:texChroma outTex:self->_quarterSizeChromaCopy];

      commandBuffer7 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      [(PTMetalContext *)self->_mainMetalContext commit];
      if (self->_config.firstFrame || sPTEffectDisableAsyncWork == 1)
      {
        self->_subjectRelightingRunning = 0;
        v36 = *(v66 + 4);
        v37 = *(v66 + 5);
        v38 = *(v66 + 7);
        v63 = *(v66 + 6);
        v64 = v38;
        rgbaPixelBufferCopy = self->_rgbaPixelBufferCopy;
        quarterSizeLumaCopy = self->_quarterSizeLumaCopy;
        quarterSizeChromaCopy = self->_quarterSizeChromaCopy;
        v61 = v36;
        v62 = v37;
        v42 = *(v66 + 3);
        v43 = v47[1];
        v59[0] = *v47;
        v59[1] = v43;
        v59[2] = v47[2];
        *location = v42;
        [(PTSyntheticLight *)self updateSubjectRelighting:rgbaPixelBufferCopy inLuma:quarterSizeLumaCopy inChroma:quarterSizeChromaCopy inFaceRects:location runOnAsyncCommandQueue:0 transform:v59 dependentCommandBuffer:commandBuffer7];
      }

      else
      {
        v44 = self->_rgbaPixelBufferCopy;
        CVPixelBufferRetain(v44);
        self->_subjectRelightingRunning = 1;
        objc_initWeak(location, self);
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __118__PTSyntheticLight_estimateLightIntensityWithFaceRects_inColor_numberOfFaceRects_transform_humanDetections_asyncWork___block_invoke;
        v52[3] = &unk_278523338;
        objc_copyWeak(v55, location);
        v55[1] = v44;
        v54 = &v65;
        v45 = v47[1];
        v56 = *v47;
        v57 = v45;
        v58 = v47[2];
        v53 = commandBuffer7;
        v46 = MEMORY[0x22AA50020](v52);
        [v50 addObject:v46];

        objc_destroyWeak(v55);
        objc_destroyWeak(location);
      }

      _Block_object_dispose(&v65, 8);
    }
  }
}

void __118__PTSyntheticLight_estimateLightIntensityWithFaceRects_inColor_numberOfFaceRects_transform_humanDetections_asyncWork___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 40) + 8);
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[7];
    v15[3] = v5[6];
    v15[4] = v8;
    v9 = *(a1 + 56);
    v15[1] = v6;
    v15[2] = v7;
    v10 = v5[3];
    v11 = WeakRetained[17];
    v12 = WeakRetained[18];
    v13 = *(a1 + 80);
    v14[0] = *(a1 + 64);
    v14[1] = v13;
    v14[2] = *(a1 + 96);
    v15[0] = v10;
    [WeakRetained updateSubjectRelighting:v9 inLuma:v11 inChroma:v12 inFaceRects:v15 runOnAsyncCommandQueue:1 transform:v14 dependentCommandBuffer:v4];
    os_unfair_lock_lock(&sSRLAsyncLock);
    v3[112] = 0;
    os_unfair_lock_unlock(&sSRLAsyncLock);
  }

  CVPixelBufferRelease(*(a1 + 56));
}

- (void)interpolateLightIntensity:(float)intensity
{
  os_unfair_lock_lock(&sSRLAsyncLock);
  subjectRelightingRunning = self->_subjectRelightingRunning;
  os_unfair_lock_unlock(&sSRLAsyncLock);
  if (!subjectRelightingRunning)
  {
    framesSinceLightEstimate = self->_config.framesSinceLightEstimate;
    if (framesSinceLightEstimate < self->_config.lightEstimateFrequency)
    {
      commandBuffer = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      *&v8 = intensity;
      [(PTSyntheticLight *)self estimateLightIntensity:commandBuffer relightStrength:v8];

      framesSinceLightEstimate = self->_config.framesSinceLightEstimate;
    }

    self->_config.firstFrame = 0;
    self->_config.framesSinceLightEstimate = framesSinceLightEstimate + 1;
  }
}

- (void)estimateLightIntensity:(id)intensity relightStrength:(float)strength
{
  intensityCopy = intensity;
  v7 = intensityCopy;
  v8 = (strength * 0.6) + 0.5;
  if (!self->_config.firstFrame && v8 != self->_lastRelightStrength)
  {
    self->_config.firstFrame = 1;
    self->_config.framesSinceLightEstimate = 0;
  }

  computeCommandEncoder = [intensityCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_lightEstimation];
  srlV2CoeffsBuffer = [(PTSubjectRelighting *)self->_subjectRelighting srlV2CoeffsBuffer];
  [computeCommandEncoder setBuffer:srlV2CoeffsBuffer offset:0 atIndex:0];

  [computeCommandEncoder setBuffer:self->_lightEstimationBuffer offset:0 atIndex:1];
  [computeCommandEncoder setBytes:&self->_config length:16 atIndex:2];
  v15 = 0x3F4CCCCD3F19999ALL;
  v17 = vdupq_n_s32(0x3EB33333u);
  v16 = v8;
  [computeCommandEncoder setBytes:&v15 length:28 atIndex:3];
  v13 = vdupq_n_s64(1uLL);
  v14 = 1;
  threadExecutionWidth = [(MTLComputePipelineState *)self->_lightEstimation threadExecutionWidth];
  v12[0] = 8;
  v12[1] = threadExecutionWidth >> 3;
  v12[2] = 1;
  [computeCommandEncoder dispatchThreads:&v13 threadsPerThreadgroup:v12];
  [computeCommandEncoder endEncoding];
  self->_lastRelightStrength = v8;
}

- (id)debugTextures
{
  v3 = MEMORY[0x277CBEA60];
  outSkinMask = [(PTPersonSemanticsNetwork *)self->_personSemanticsNetwork outSkinMask];
  outPersonMask = [(PTPersonSemanticsNetwork *)self->_personSemanticsNetwork outPersonMask];
  samplePosDebug = [(PTSubjectRelighting *)self->_subjectRelighting samplePosDebug];
  v7 = [v3 arrayWithObjects:{outSkinMask, outPersonMask, samplePosDebug, 0}];

  return v7;
}

@end