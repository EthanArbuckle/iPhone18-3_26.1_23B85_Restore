@interface PTSyntheticLight
- (PTSyntheticLight)initWithMetalContext:(id)a3 msrColorPyramid:(id)a4 colorSize:(id *)a5 prewarmOnly:(BOOL)a6 sharedResources:(id)a7;
- (id)debugTextures;
- (void)dealloc;
- (void)estimateLightIntensity:(id)a3 relightStrength:(float)a4;
- (void)estimateLightIntensityWithFaceRects:(PTSyntheticLight *)self inColor:(SEL)a2 numberOfFaceRects:transform:humanDetections:asyncWork:;
- (void)interpolateLightIntensity:(float)a3;
- (void)updateSubjectRelighting:(uint64_t)a3 inLuma:(void *)a4 inChroma:(void *)a5 inFaceRects:(uint64_t)a6 runOnAsyncCommandQueue:(int)a7 transform:(__int128 *)a8 dependentCommandBuffer:(void *)a9;
@end

@implementation PTSyntheticLight

- (PTSyntheticLight)initWithMetalContext:(id)a3 msrColorPyramid:(id)a4 colorSize:(id *)a5 prewarmOnly:(BOOL)a6 sharedResources:(id)a7
{
  v8 = a6;
  v72[2] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v69 = a4;
  v14 = a7;
  v70.receiver = self;
  v70.super_class = PTSyntheticLight;
  v15 = [(PTSyntheticLight *)&v70 init];
  v16 = v15;
  v17 = v15;
  if (!v15)
  {
    goto LABEL_40;
  }

  objc_storeStrong(&v15->_mainMetalContext, a3);
  v18 = [v13 copy];
  asyncMetalContext = v17->_asyncMetalContext;
  v17->_asyncMetalContext = v18;

  v20 = [(PTMetalContext *)v17->_asyncMetalContext device];
  v21 = [v20 newCommandQueue];
  [(PTMetalContext *)v17->_asyncMetalContext setCommandQueue:v21];

  v22 = [(PTMetalContext *)v17->_asyncMetalContext commandQueue];
  v23 = v22 == 0;

  if (v23)
  {
    v30 = _PTLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
    }

    goto LABEL_25;
  }

  v24 = [v14 effectUtil];
  effectUtil = v17->_effectUtil;
  v17->_effectUtil = v24;

  objc_storeStrong(&v16->_msrColorPyramid, a4);
  v17->_config.firstFrame = 1;
  *&v17->_config.framesSinceLightEstimate = 0x1E00000000;
  v17->_config.emaCoefficient = 0.3;
  v17->_subjectRelightingRunning = 0;
  v26 = [v13 computePipelineStateFor:@"lightEstimation" withConstants:0];
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

  if (v8)
  {
    p_personSemanticsNetwork = &v17->_personSemanticsNetwork;
    personSemanticsNetwork = v17->_personSemanticsNetwork;
    v17->_personSemanticsNetwork = 0;
  }

  else
  {
    v31 = [[PTPersonSemanticsNetwork alloc] initWithMetalContext:v13 sharedResources:v14];
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
  v34 = [v14 effectUtil];
  v35 = [(PTSubjectRelighting *)v33 initWithMetalContext:v13 effectUtil:v34 prewarmOnly:v8];
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

  if (!v8)
  {
    v38 = [v14 faceAttributesNetwork];
    faceAttributesNetwork = v17->_faceAttributesNetwork;
    v17->_faceAttributesNetwork = v38;

    v40 = [v13 device];
    v41 = [v40 newBufferWithLength:64 options:0];
    lightEstimationBuffer = v17->_lightEstimationBuffer;
    v17->_lightEstimationBuffer = v41;

    v43 = [v69 targetRGBA];
    v44 = [v43 width];
    v45 = [v69 targetRGBA];
    v46 = [v45 height];
    v47 = *MEMORY[0x277CC4D60];
    v71[0] = *MEMORY[0x277CC4DE8];
    v71[1] = v47;
    v72[0] = MEMORY[0x277CBEC10];
    v72[1] = &unk_2837F3118;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
    LODWORD(v44) = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v44, v46, 0x42475241u, v48, &v16->_rgbaPixelBufferCopy);

    if (!v44)
    {
      v49 = MEMORY[0x277CD7058];
      Width = CVPixelBufferGetWidth(v16->_rgbaPixelBufferCopy);
      v51 = [v49 texture2DDescriptorWithPixelFormat:81 width:Width height:CVPixelBufferGetHeight(v16->_rgbaPixelBufferCopy) mipmapped:0];
      [v51 setUsage:{+[PTPixelBufferUtil getNoConcurrentAccessHint:](PTPixelBufferUtil, "getNoConcurrentAccessHint:", v16->_rgbaPixelBufferCopy) | 3}];
      v52 = [v13 device];
      v53 = [v52 newTextureWithDescriptor:v51 iosurface:CVPixelBufferGetIOSurface(v16->_rgbaPixelBufferCopy) plane:0];
      rgbaTextureCopy = v17->_rgbaTextureCopy;
      v17->_rgbaTextureCopy = v53;

      if (v17->_rgbaTextureCopy)
      {
        v55 = [v13 textureUtil];
        v56 = [v55 createWithWidth:a5->var0 >> 1 height:a5->var1 >> 1 pixelFormat:10];
        quarterSizeLumaCopy = v17->_quarterSizeLumaCopy;
        v17->_quarterSizeLumaCopy = v56;

        if (v17->_quarterSizeLumaCopy)
        {
          v58 = [v13 textureUtil];
          v59 = [v58 createWithWidth:a5->var0 >> 2 height:a5->var1 >> 2 pixelFormat:30];
          quarterSizeChromaCopy = v17->_quarterSizeChromaCopy;
          v17->_quarterSizeChromaCopy = v59;

          if (v17->_quarterSizeChromaCopy)
          {
            v61 = [v13 textureUtil];
            v62 = [*p_personSemanticsNetwork inRGBA];
            v63 = [v62 width];
            v64 = [*p_personSemanticsNetwork inRGBA];
            v65 = [v61 createWithWidth:v63 height:objc_msgSend(v64 pixelFormat:"height"), 71];
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

- (void)updateSubjectRelighting:(uint64_t)a3 inLuma:(void *)a4 inChroma:(void *)a5 inFaceRects:(uint64_t)a6 runOnAsyncCommandQueue:(int)a7 transform:(__int128 *)a8 dependentCommandBuffer:(void *)a9
{
  v34 = a4;
  v15 = a5;
  [a9 waitUntilScheduled];
  v16 = a8[1];
  v35 = *a8;
  v36 = v16;
  v37 = a8[2];
  v17 = [PTUtil orientationFromTransform:&v35 inverse:1];
  kdebug_trace();
  v18 = 16;
  if (a7)
  {
    v18 = 24;
  }

  v19 = *(a1 + v18);
  [*(a1 + 32) executeNetwork:v19];
  v20 = [v19 commandBuffer];

  if (!v20)
  {
    v21 = _PTLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PTEspressoGenericExecutor convertBindInput:];
    }
  }

  v22 = [v19 commandBuffer];
  [v22 setLabel:@"PTSyntheticLight updateSubjectRelighting"];

  v23 = *(a6 + 64);
  v24 = a8[1];
  v35 = *a8;
  v36 = v24;
  v37 = a8[2];
  v25 = [PTEffectUtil faceRectsForVision:a6 numberOfFaceRects:v23 transform:&v35];
  v26 = [*(a1 + 104) faceLandmarksInPixelBuffer:a3 faceRects:v25 orientation:v17];
  v27 = *(a1 + 96);
  *(a1 + 96) = v26;

  v28 = *(a1 + 88);
  v29 = [v19 commandBuffer];
  v30 = [*(a1 + 32) outSkinMask];
  v31 = [*(a1 + 32) outPersonMask];
  v32 = *(a1 + 96);
  v33 = a8[1];
  v35 = *a8;
  v36 = v33;
  v37 = a8[2];
  [v28 runSRLForLivePhotosWithInputBuffer:v29 lumaTexture:v34 chromaTexture:v15 skinMaskTexture:v30 personMaskTexture:v31 skinToneClassification:v32 validROI:0.0 expBias:0.0 faceExpRatio:1.0 transform:{1.0, 0.0, 0.0, &v35}];

  if (a7)
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

- (void)estimateLightIntensityWithFaceRects:(PTSyntheticLight *)self inColor:(SEL)a2 numberOfFaceRects:transform:humanDetections:asyncWork:
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
  v51 = [v12 asYUV];
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
      v19 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];

      if (!v19)
      {
        v20 = _PTLogSystem();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [PTEspressoGenericExecutor convertBindInput:];
        }
      }

      v21 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      [v21 setLabel:@"PTSyntheticLight estimateLightIntensityWithFaceRects"];

      v22 = [(PTMetalContext *)self->_mainMetalContext textureUtil];
      v23 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      v24 = [(PTMSRResize *)self->_msrColorPyramid targetRGBA];
      v25 = [(PTPersonSemanticsNetwork *)self->_personSemanticsNetwork inRGBA];
      [v22 copy:v23 inTex:v24 outTex:v25];

      self->_config.framesSinceLightEstimate = 0;
      v26 = [(PTMetalContext *)self->_mainMetalContext textureUtil];
      v27 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      v28 = [(PTMSRResize *)self->_msrColorPyramid targetRGBA];
      [v26 copy:v27 inTex:v28 outTex:self->_rgbaTextureCopy];

      v29 = [(PTMetalContext *)self->_mainMetalContext textureUtil];
      v30 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      v31 = [v51 texLuma];
      [v29 copy:v30 inTex:v31 outTex:self->_quarterSizeLumaCopy];

      v32 = [(PTMetalContext *)self->_mainMetalContext textureUtil];
      v33 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      v34 = [v51 texChroma];
      [v32 copy:v33 inTex:v34 outTex:self->_quarterSizeChromaCopy];

      v35 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
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
        [(PTSyntheticLight *)self updateSubjectRelighting:rgbaPixelBufferCopy inLuma:quarterSizeLumaCopy inChroma:quarterSizeChromaCopy inFaceRects:location runOnAsyncCommandQueue:0 transform:v59 dependentCommandBuffer:v35];
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
        v53 = v35;
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

- (void)interpolateLightIntensity:(float)a3
{
  os_unfair_lock_lock(&sSRLAsyncLock);
  subjectRelightingRunning = self->_subjectRelightingRunning;
  os_unfair_lock_unlock(&sSRLAsyncLock);
  if (!subjectRelightingRunning)
  {
    framesSinceLightEstimate = self->_config.framesSinceLightEstimate;
    if (framesSinceLightEstimate < self->_config.lightEstimateFrequency)
    {
      v7 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      *&v8 = a3;
      [(PTSyntheticLight *)self estimateLightIntensity:v7 relightStrength:v8];

      framesSinceLightEstimate = self->_config.framesSinceLightEstimate;
    }

    self->_config.firstFrame = 0;
    self->_config.framesSinceLightEstimate = framesSinceLightEstimate + 1;
  }
}

- (void)estimateLightIntensity:(id)a3 relightStrength:(float)a4
{
  v6 = a3;
  v7 = v6;
  v8 = (a4 * 0.6) + 0.5;
  if (!self->_config.firstFrame && v8 != self->_lastRelightStrength)
  {
    self->_config.firstFrame = 1;
    self->_config.framesSinceLightEstimate = 0;
  }

  v9 = [v6 computeCommandEncoder];
  [v9 setComputePipelineState:self->_lightEstimation];
  v10 = [(PTSubjectRelighting *)self->_subjectRelighting srlV2CoeffsBuffer];
  [v9 setBuffer:v10 offset:0 atIndex:0];

  [v9 setBuffer:self->_lightEstimationBuffer offset:0 atIndex:1];
  [v9 setBytes:&self->_config length:16 atIndex:2];
  v15 = 0x3F4CCCCD3F19999ALL;
  v17 = vdupq_n_s32(0x3EB33333u);
  v16 = v8;
  [v9 setBytes:&v15 length:28 atIndex:3];
  v13 = vdupq_n_s64(1uLL);
  v14 = 1;
  v11 = [(MTLComputePipelineState *)self->_lightEstimation threadExecutionWidth];
  v12[0] = 8;
  v12[1] = v11 >> 3;
  v12[2] = 1;
  [v9 dispatchThreads:&v13 threadsPerThreadgroup:v12];
  [v9 endEncoding];
  self->_lastRelightStrength = v8;
}

- (id)debugTextures
{
  v3 = MEMORY[0x277CBEA60];
  v4 = [(PTPersonSemanticsNetwork *)self->_personSemanticsNetwork outSkinMask];
  v5 = [(PTPersonSemanticsNetwork *)self->_personSemanticsNetwork outPersonMask];
  v6 = [(PTSubjectRelighting *)self->_subjectRelighting samplePosDebug];
  v7 = [v3 arrayWithObjects:{v4, v5, v6, 0}];

  return v7;
}

@end