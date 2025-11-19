@interface TiledFusionStage
- (TiledFusionStage)initWithContext:(id)a3 preEspressoStage:(id)a4 networkVersion:(int)a5;
- (id)availableImagingNetworksWithNetExtension;
- (id)getFilePathForNetworkIdentifier:(id)a3;
- (id)platformIdentifier;
- (int)allocateEspressoBuffers;
- (int)compileShaders;
- (int)computeAMBNRDenoiseBoostMap:(id)a3 longFusionMap:(id)a4 ev0FusionMap:(id)a5 ev0Metadata:(frameMetadata *)a6 longMetadata:(frameMetadata *)a7 numEV0:(int)a8 deferredProcessingPlist:(id)a9 espressoModel:(int)a10 isSyntheticLongWithRealLong:(BOOL)a11 totalGain:(float)a12;
- (int)initializePyramids;
- (int)loadEspressoNetworkFromPath:(const char *)a3 andStoreNetwork:(id *)a4 andPlan:(void *)a5;
- (int)stage1GPUonTile:(TileBounds *)a3 refLuma:(id)a4 referenceChroma:(id)a5 longLuma:(id)a6 longChroma:(id)a7 lscGains:(id)a8 slFusionMap:(id)a9 longFusionMap:(id)a10 eitRatio:(float)a11 hasSIFR:(BOOL)a12 noiseEstimationParams:(NoiseEstimationParameters *)a13 intermediateEncodingParams:(const IntermediateEncodingParameters *)a14;
- (int)stage2ANEonTile:(TileBounds *)a3;
- (int)stage3GPUonTile:(TileBounds *)a3 preFusionMap:(id)a4 slFusionMap:(id)a5 longFusionMap:(id)a6 skinMask:(id)a7 skyMask:(id)a8 lscGains:(id)a9 outLuma:(id)a10 outChroma:(id)a11 espressoModelForTuning:(int)a12;
- (uint64_t)runWithReferenceLuma:(float)a3 referenceChroma:(float)a4 longLuma:(float)a5 longChroma:(float)a6 preFusionMap:(float32x4_t)a7 slFusionMap:(float32x4_t)a8 slQuantBounds:(float32x4_t)a9 longFusionMap:(uint64_t)a10 skinMask:(void *)a11 skyMask:(void *)a12 lscGains:(void *)a13 totalGain:(void *)a14 outLuma:(void *)a15 outChroma:(void *)a16 deferredProcessingPlist:(NoiseDivisorQuantizationBoundaries *)a17 lscGainGreenMax:(id)a18 EVM_EV0_motionScore:(id)a19 eitRatio:(id)a20 aeShutterTimeRatio:(id)a21 hasSIFR:(id)a22 isStationary:(id)a23 isSyntheticLongWithRealLong:(id)a24 colorCorrection:(BOOL)a25 espressoModel:(BOOL)a26 noiseEstimationParams:(BOOL)a27 espressoModelForTuning:(unsigned int)a28 sideCar:(uint64_t)a29 intermediateEncodingParams:(unsigned __int32)a30;
- (unint64_t)computeTileSizeForPixelFormat:(unint64_t)a3;
- (void)dealloc;
- (void)freeEspressoBuffers:(BOOL)a3;
- (void)unloadEspressoNetwork;
@end

@implementation TiledFusionStage

- (int)loadEspressoNetworkFromPath:(const char *)a3 andStoreNetwork:(id *)a4 andPlan:(void *)a5
{
  espresso_ctx = self->_espresso_ctx;
  plan = espresso_create_plan();
  *a5 = plan;
  if (plan)
  {
    v8 = espresso_plan_add_network();
    if (v8)
    {
      sub_2958A81F0(a5);
    }
  }

  else
  {
    sub_2958A826C(&v10);
    return v10;
  }

  return v8;
}

- (TiledFusionStage)initWithContext:(id)a3 preEspressoStage:(id)a4 networkVersion:(int)a5
{
  v9 = a3;
  v10 = a4;
  v11 = 1550;
  if (a5 == 2)
  {
    v11 = 248;
  }

  qword_2A18C2210 = v11;
  v18.receiver = self;
  v18.super_class = TiledFusionStage;
  v12 = [(TiledFusionStage *)&v18 init];
  v13 = v12;
  if (!v12)
  {
    sub_2958A8420();
LABEL_11:
    v16 = 0;
    goto LABEL_7;
  }

  v12->_networkVersion = a5;
  v14 = dispatch_queue_create("deepfusion-sync", 0);
  espressoCallbackQueue = v13->_espressoCallbackQueue;
  v13->_espressoCallbackQueue = v14;

  objc_storeStrong(&v13->_metal, a3);
  if (!v13->_metal)
  {
    sub_2958A8394();
    goto LABEL_11;
  }

  objc_storeStrong(&v13->_preEspressoStage, a4);
  if (!v13->_preEspressoStage)
  {
    sub_2958A8308();
    goto LABEL_11;
  }

  v13->_loadedEspressoModel = 0x3FFFFFF;
  v16 = v13;
LABEL_7:

  return v16;
}

- (int)allocateEspressoBuffers
{
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  *surface = 0u;
  v58 = 0u;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *buffer = 0u;
  v47 = 0u;
  if (self->_loadedEspressoModel == 0x3FFFFFF)
  {
    return 0;
  }

  v2 = 0;
  v4 = 0;
  v5 = *MEMORY[0x29EDB8ED8];
  v41 = *MEMORY[0x29EDB96D0];
  v6 = 1;
  while (2)
  {
    v7 = 0;
    v8 = v6;
    v9 = 4 * v4;
    v10 = 4 * v4;
    v11 = &off_29EDDC100;
    do
    {
      if (!self->_inputSurfPb[0][v10])
      {
        v12 = &self->_inputSurfPb[0][v10];
        if (v8)
        {
          v13 = *v11;
          plan = self->_espresso_net.plan;
          v15 = *&self->_espresso_net.network_index;
          v16 = espresso_network_bind_buffer();
          if (v16)
          {
            v2 = v16;
            sub_2958A84AC(self);
            return v2;
          }

          v2 = CVPixelBufferCreateWithIOSurface(v5, surface[0], 0, v12);
          if (IOSurfaceGetWidth(surface[0]) != 568)
          {
            sub_2958A8528(v68);
            return v68[0];
          }

          if (IOSurfaceGetHeight(surface[0]) != 1488)
          {
            sub_2958A85C4(v68);
            return v68[0];
          }
        }

        else
        {
          PixelFormatType = CVPixelBufferGetPixelFormatType(self->_inputSurfPb[0][v7]);
          v44 = v41;
          v45 = MEMORY[0x29EDB8EA0];
          v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v18, &v45, &v44, 1);
          v2 = CVPixelBufferCreate(v5, 0x238uLL, 0x5D0uLL, PixelFormatType, v19, v12);
        }

        IOSurface = CVPixelBufferGetIOSurface(*v12);
        self->_inputSurf[0][v10] = IOSurface;
        if (!IOSurface)
        {
          sub_2958A8B20(v68);
          return v68[0];
        }

        if (!*v12)
        {
          sub_2958A8A84(v68);
          return v68[0];
        }

        v22 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v21, *v12, 25, 7, 0);
        v23 = self->_dfTexIn[0][v10];
        self->_dfTexIn[0][v10] = v22;

        if (!self->_dfTexIn[0][v10])
        {
          sub_2958A89E8(v68);
          return v68[0];
        }
      }

      ++v7;
      v11 += 3;
      ++v10;
    }

    while (v7 != 4);
    v24 = 0;
    v25 = &qword_2A18C21C8;
    do
    {
      if (!self->_outputSurfPb[0][v9])
      {
        v26 = &self->_outputSurfPb[0][v9];
        if (v8)
        {
          v27 = *(v25 - 2);
          v28 = self->_espresso_net.plan;
          v29 = *&self->_espresso_net.network_index;
          v30 = espresso_network_bind_buffer();
          if (v30)
          {
            v2 = v30;
            sub_2958A8660(self);
            return v2;
          }

          v2 = CVPixelBufferCreateWithIOSurface(v5, buffer[0], 0, v26);
          if (IOSurfaceGetWidth(buffer[0]) != *(v25 - 1))
          {
            sub_2958A86DC(v68);
            return v68[0];
          }

          if (IOSurfaceGetHeight(buffer[0]) != *v25)
          {
            sub_2958A8778(v68);
            return v68[0];
          }
        }

        else
        {
          v31 = *(v25 - 1);
          v32 = *v25;
          v33 = CVPixelBufferGetPixelFormatType(self->_outputSurfPb[0][v24]);
          v42 = v41;
          v43 = MEMORY[0x29EDB8EA0];
          v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v34, &v43, &v42, 1);
          v2 = CVPixelBufferCreate(v5, v31, v32, v33, v35, v26);
        }

        v36 = CVPixelBufferGetIOSurface(*v26);
        self->_outputSurf[0][v9] = v36;
        if (!v36)
        {
          sub_2958A894C(v68);
          return v68[0];
        }

        if (!*v26)
        {
          sub_2958A88B0(v68);
          return v68[0];
        }

        v38 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v37, *v26, 25, 7, 0);
        v39 = self->_dfTexOut[0][v9];
        self->_dfTexOut[0][v9] = v38;

        if (!self->_dfTexOut[0][v9])
        {
          sub_2958A8814(v68);
          return v68[0];
        }
      }

      ++v24;
      v25 += 3;
      ++v9;
    }

    while (v24 != 4);
    v6 = 0;
    v4 = 1;
    if (v8)
    {
      continue;
    }

    break;
  }

  return v2;
}

- (id)platformIdentifier
{
  v2 = FigCapturePlatformIdentifierString();

  return v2;
}

- (id)getFilePathForNetworkIdentifier:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_platformIdentifier(self, v5, v6, v7);
  if (!v8)
  {
    sub_2958A8C40();
LABEL_16:
    v42 = 0;
    goto LABEL_17;
  }

  ModelSpecificName = FigCaptureGetModelSpecificName();
  if (!ModelSpecificName)
  {
    sub_2958A8BBC();
    goto LABEL_16;
  }

  v12 = ModelSpecificName;
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v10, @"^.+(\\.|_)(%@|%@)(\\.|_).+$", v11, v8, ModelSpecificName);
  v14 = objc_alloc(MEMORY[0x29EDBA0D0]);
  v50[0] = 0;
  v16 = objc_msgSend_initWithPattern_options_error_(v14, v15, v13, 1, v50);
  v44 = v50[0];
  objc_msgSend_availableImagingNetworksWithNetExtension(self, v17, v18, v19);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = v49 = 0u;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v46, v45, 16);
  if (!v22)
  {
LABEL_12:

LABEL_13:
    v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    goto LABEL_16;
  }

  v25 = v22;
  v26 = *v47;
LABEL_5:
  v27 = 0;
  while (1)
  {
    if (*v47 != v26)
    {
      objc_enumerationMutation(v20);
    }

    v28 = *(*(&v46 + 1) + 8 * v27);
    if (objc_msgSend_hasPrefix_(v28, v23, v4, v24))
    {
      v30 = objc_msgSend_length(v28, v23, v29, v24);
      if (objc_msgSend_numberOfMatchesInString_options_range_(v16, v31, v28, 0, 0, v30))
      {
        break;
      }
    }

    if (v25 == ++v27)
    {
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v46, v45, 16);
      if (v25)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  v33 = v28;

  if (!v33)
  {
    goto LABEL_13;
  }

  v34 = MEMORY[0x29EDBA0F8];
  v35 = v33;
  v39 = objc_msgSend_UTF8String(v35, v36, v37, v38);
  v42 = objc_msgSend_stringWithFormat_(v34, v40, @"%s/%s", v41, "/System/Library/ImagingNetworks", v39);

LABEL_17:

  return v42;
}

- (void)freeEspressoBuffers:(BOOL)a3
{
  v4 = 0;
  v5 = 0;
  inputSurfPb = self->_inputSurfPb;
  outputSurfPb = self->_outputSurfPb;
  do
  {
    v8 = v5;
    v9 = 4;
    v10 = inputSurfPb[v5];
    do
    {
      v11 = v10[33];
      v10[33] = 0;

      CVPixelBufferRelease(*v10);
      *v10++ = 0;
      --v9;
    }

    while (v9);
    v12 = outputSurfPb[v8];
    v13 = 4;
    do
    {
      v14 = v12[33];
      v12[33] = 0;

      CVPixelBufferRelease(*v12);
      *v12++ = 0;
      --v13;
    }

    while (v13);
    v15 = v4 | a3;
    v4 = 1;
    v5 = 1;
  }

  while ((v15 & 1) == 0);
}

- (void)unloadEspressoNetwork
{
  objc_msgSend_freeEspressoBuffers_(self, a2, 1, v2);
  espresso_plan = self->_espresso_plan;
  espresso_plan_destroy();
  self->_espresso_plan = 0;
  espresso_ctx = self->_espresso_ctx;
  espresso_context_destroy();
  self->_espresso_ctx = 0;
  self->_loadedEspressoModel = 0x3FFFFFF;
}

- (int)compileShaders
{
  v3 = 0;
  v4 = self->_networkVersion != 1;
  YUVLaplacian = self->_YUVLaplacian;
  YUVGaussian = self->_YUVGaussian;
  YUVNoisePyramid = self->_YUVNoisePyramid;
  v5 = 1;
LABEL_2:
  v6 = 0;
  v7 = YUVGaussian[v3];
  v8 = v5;
  v9 = 1;
  v10 = YUVLaplacian[v3];
  v11 = YUVNoisePyramid[v3];
  while (1)
  {
    v12 = v9;
    v13 = [DeepFusionGaussianPyramid alloc];
    v15 = objc_msgSend_initWithMetalContext_withFilter_(v13, v14, self->_metal, v4);
    v16 = v7[v6];
    v7[v6] = v15;

    if (!v7[v6])
    {
      sub_2958A9314(&v51);
      return v51;
    }

    v17 = [DeepFusionLaplacianPyramid alloc];
    v20 = objc_msgSend_initWithMetalContext_(v17, v18, self->_metal, v19);
    v21 = v10[v6];
    v10[v6] = v20;

    if (!v10[v6])
    {
      break;
    }

    if (self->_networkVersion == 2)
    {
      v25 = [DeepFusionGaussianPyramid alloc];
      v27 = objc_msgSend_initWithMetalContext_withFilter_(v25, v26, self->_metal, 2);
      v28 = v11[v6];
      v11[v6] = v27;

      if (!v11[v6])
      {
        sub_2958A91DC(&v51);
        return v51;
      }
    }

    v9 = 0;
    v6 = 1;
    if ((v12 & 1) == 0)
    {
      v5 = 0;
      v3 = 1;
      if (v8)
      {
        goto LABEL_2;
      }

      if (!self->_isHarvesting)
      {
        objc_msgSend_allocateEspressoBuffers(self, v22, v23, v24);
        self->_tileHeight = 496;
        *&self->_padding = 0x23800000020;
      }

      v29 = [DeepFusionPostEspressoStage alloc];
      v31 = objc_msgSend_initWithMetalContext_networkVersion_(v29, v30, self->_metal, self->_networkVersion);
      postEspresso = self->_postEspresso;
      self->_postEspresso = v31;

      v34 = self->_postEspresso;
      if (!v34)
      {
        sub_2958A9140(&v51);
        return v51;
      }

      if (objc_msgSend_setWidth_andHeight_andPixelFormat_(v34, v33, self->_tileWidth, self->_tileHeight, 115))
      {
        sub_2958A8F04(&v51);
        return v51;
      }

      v35 = objc_opt_new();
      v37 = v35;
      if (v35)
      {
        v50 = self->_networkVersion == 2;
        objc_msgSend_setConstantValue_type_atIndex_(v35, v36, &v50, 53, 0);
        objc_msgSend_setConstantValue_type_atIndex_(v37, v38, &v50, 53, 1);
        v40 = objc_msgSend_computePipelineStateFor_constants_(self->_metal, v39, @"kernelYUV420ToTile", v37);
        kernelYUV420ToTile = self->_kernelYUV420ToTile;
        self->_kernelYUV420ToTile = v40;

        if (self->_kernelYUV420ToTile)
        {
          v43 = objc_msgSend_computePipelineStateFor_constants_(self->_metal, v42, @"kernelSyntheticLongHighlightFixYUV420ToTile", v37);
          kernelSyntheticLongHighlightFixYUV420ToTile = self->_kernelSyntheticLongHighlightFixYUV420ToTile;
          self->_kernelSyntheticLongHighlightFixYUV420ToTile = v43;

          if (self->_kernelSyntheticLongHighlightFixYUV420ToTile)
          {
            goto LABEL_16;
          }

          sub_2958A8FA0(&v51);
        }

        else
        {
          sub_2958A903C(&v51);
        }

        v45 = v51;
      }

      else
      {
        sub_2958A90D8();
LABEL_16:
        v45 = 0;
      }

      return v45;
    }
  }

  sub_2958A9278(&v51);
  return v51;
}

- (void)dealloc
{
  objc_msgSend_unloadEspressoNetwork(self, a2, v2, v3);
  objc_msgSend_freeAllEspressoBuffers(self, v5, v6, v7);
  v8 = 0;
  synthRefNoisePretuning = self->_synthRefNoisePretuning;
  YUVGaussian = self->_YUVGaussian;
  YUVLaplacian = self->_YUVLaplacian;
  v27 = self;
  YUVNoisePyramid = self->_YUVNoisePyramid;
  v13 = 1;
  do
  {
    v14 = v13;
    v15 = synthRefNoisePretuning[v8];
    synthRefNoisePretuning[v8] = 0;

    v16 = 0;
    v17 = YUVGaussian[v8];
    v18 = YUVLaplacian[v8];
    v19 = 1;
    v20 = YUVNoisePyramid[v8];
    do
    {
      v21 = v19;
      v22 = v17[v16];
      v17[v16] = 0;

      v23 = v18[v16];
      v18[v16] = 0;

      v24 = v20[v16];
      v20[v16] = 0;

      v19 = 0;
      v16 = 1;
    }

    while ((v21 & 1) != 0);
    v13 = 0;
    v8 = 1;
  }

  while ((v14 & 1) != 0);
  postEspresso = v27->_postEspresso;
  v27->_postEspresso = 0;

  espressoCallbackQueue = v27->_espressoCallbackQueue;
  v27->_espressoCallbackQueue = 0;

  v28.receiver = v27;
  v28.super_class = TiledFusionStage;
  [(TiledFusionStage *)&v28 dealloc];
}

- (unint64_t)computeTileSizeForPixelFormat:(unint64_t)a3
{
  v6 = objc_msgSend_device(self->_metal, a2, a3, v3);
  v9 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v6, v7, a3, v8);

  v13 = objc_msgSend_device(self->_metal, v10, v11, v12, 0, 0, 0);
  MTLPixelFormatGetInfoForDevice();

  self->_tileWidth;
  v14 = 0 / v9 * v9;
  self->tileBufferStride = v14;
  return v14 * self->_tileHeight;
}

- (int)initializePyramids
{
  v3 = 0;
  YUVGaussian = self->_YUVGaussian;
  YUVLaplacian = self->_YUVLaplacian;
  YUVNoisePyramid = self->_YUVNoisePyramid;
  v6 = 1;
  while (2)
  {
    v7 = 0;
    v8 = YUVGaussian[v3];
    v9 = v6;
    v10 = YUVLaplacian[v3];
    v11 = 1;
    v12 = YUVNoisePyramid[v3];
    do
    {
      v13 = v11;
      v14 = objc_msgSend_setWidth_height_pixelFormat_numLevels_(v8[v7], a2, self->_tileWidth, self->_tileHeight, 115, 4);
      if (v14)
      {
        v18 = v14;
        sub_2958A93B0();
        return v18;
      }

      v16 = objc_msgSend_setWidth_height_pixelFormat_numLevels_(v10[v7], v15, self->_tileWidth, self->_tileHeight, 115, 3);
      if (v16)
      {
        v18 = v16;
        sub_2958A9414();
        return v18;
      }

      if (self->_networkVersion == 2)
      {
        v17 = objc_msgSend_setWidth_height_pixelFormat_numLevels_(v12[v7], a2, self->_tileWidth, self->_tileHeight, 115, 4);
        if (v17)
        {
          v18 = v17;
          sub_2958A9478();
          return v18;
        }
      }

      v11 = 0;
      v7 = 1;
    }

    while ((v13 & 1) != 0);
    v6 = 0;
    v3 = 1;
    if (v9)
    {
      continue;
    }

    break;
  }

  return 0;
}

- (int)stage2ANEonTile:(TileBounds *)a3
{
  if (self->_loadedEspressoModel > 2u)
  {
    FigDebugAssert3();

    return FigSignalErrorAtGM();
  }

  else
  {
    v4 = 0;
    if (a3->var0 >= 0)
    {
      v5 = a3->var0 & 1;
    }

    else
    {
      v5 = -(a3->var0 & 1);
    }

    v6 = self + 32 * v5;
    v7 = &off_29EDDC100;
    do
    {
      v8 = *v7;
      v9 = *&v6[v4 + 1552];
      plan = self->_espresso_net.plan;
      v11 = *&self->_espresso_net.network_index;
      v12 = espresso_network_bind_direct_cvpixelbuffer();
      if (v12)
      {
        v23 = v12;
        sub_2958A94DC();
        return v23;
      }

      v7 += 3;
      v4 += 8;
    }

    while (v4 != 32);
    v13 = 0;
    v14 = v6 + 1616;
    v15 = &off_2A18C21B8;
    do
    {
      v16 = *v15;
      v15 += 3;
      v17 = *&v14[v13];
      v18 = self->_espresso_net.plan;
      v19 = *&self->_espresso_net.network_index;
      espresso_network_bind_direct_cvpixelbuffer();
      v13 += 8;
    }

    while (v13 != 32);
    if (self->_espressoCallbackQueue)
    {
      v20 = 5;
      while (1)
      {
        espresso_plan = self->_espresso_plan;
        espressoCallbackQueue = self->_espressoCallbackQueue;
        v23 = espresso_plan_submit();
        if (!v23)
        {
          break;
        }

        if (!--v20)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v25 = self->_espresso_plan;
      v23 = espresso_plan_execute_sync();
      if (v23)
      {
LABEL_14:
        sub_2958A9540(&self->_espresso_plan);
      }
    }

    return v23;
  }
}

- (int)stage1GPUonTile:(TileBounds *)a3 refLuma:(id)a4 referenceChroma:(id)a5 longLuma:(id)a6 longChroma:(id)a7 lscGains:(id)a8 slFusionMap:(id)a9 longFusionMap:(id)a10 eitRatio:(float)a11 hasSIFR:(BOOL)a12 noiseEstimationParams:(NoiseEstimationParameters *)a13 intermediateEncodingParams:(const IntermediateEncodingParameters *)a14
{
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v221 = a8;
  v219 = a9;
  v217 = a10;
  v244 = 0;
  if (a3->var0 >= 0)
  {
    v25 = a3->var0 & 1;
  }

  else
  {
    v25 = -(a3->var0 & 1);
  }

  v220 = v21;
  v236 = v220;
  v218 = v22;
  v237 = v218;
  v26 = v25;
  v27 = (&self->super.isa + 4 * v25);
  v238 = v27[227];
  v222 = self;
  YUVGaussian = self->_YUVGaussian;
  v29 = YUVGaussian[v25];
  v33 = objc_msgSend_outputTextureArray(*v29, v30, v31, v32);
  objc_msgSend_objectAtIndexedSubscript_(v33, v34, 0, v35);
  v239 = v36 = (v27 + 227);
  v216 = v23;
  v240 = v216;
  v215 = v24;
  v241 = v215;
  v242 = *(v36 + 1);
  v40 = objc_msgSend_outputTextureArray(v29[1], v37, v38, v39);
  v243 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, 0, v42);

  if (!a13)
  {
    sub_2958A9D04(&v229);
LABEL_51:
    v214 = 0;
    goto LABEL_58;
  }

  v223 = YUVGaussian;
  v46 = objc_msgSend_allocator(v222->_metal, v43, v44, v45);
  v50 = objc_msgSend_newTextureDescriptor(v46, v47, v48, v49);

  if (!v50)
  {
    sub_2958A9C68(&v229);
    goto LABEL_51;
  }

  v54 = objc_msgSend_desc(v50, v51, v52, v53);
  objc_msgSend_setCompressionMode_(v54, v55, 2, v56);

  v60 = objc_msgSend_desc(v50, v57, v58, v59);
  objc_msgSend_setCompressionFootprint_(v60, v61, 0, v62);

  tileWidth = v222->_tileWidth;
  v67 = objc_msgSend_desc(v50, v64, v65, v66);
  objc_msgSend_setWidth_(v67, v68, tileWidth, v69);

  tileHeight = v222->_tileHeight;
  v74 = objc_msgSend_desc(v50, v71, v72, v73);
  objc_msgSend_setHeight_(v74, v75, tileHeight, v76);

  v80 = objc_msgSend_desc(v50, v77, v78, v79);
  objc_msgSend_setUsage_(v80, v81, 7, v82);

  v86 = objc_msgSend_desc(v50, v83, v84, v85);
  objc_msgSend_setPixelFormat_(v86, v87, 115, v88);

  objc_msgSend_setLabel_(v50, v89, 0, v90);
  v94 = objc_msgSend_allocator(v222->_metal, v91, v92, v93);
  v97 = objc_msgSend_newTextureWithDescriptor_(v94, v95, v50, v96);
  v244 = v97;

  v214 = v50;
  if (!v97)
  {
    sub_2958A9BCC(&v229);
    goto LABEL_58;
  }

  v100 = *&a3->var3;
  v101 = *&a3->var1;
  if (v222->_networkVersion != 2)
  {
    preEspressoStage = v222->_preEspressoStage;
    v110 = *(v36 + 2);
    v109 = *(v36 + 3);
    v111 = v222->_synthRefNoisePretuning[v26];
    goto LABEL_16;
  }

  v210 = *&a3->var3;
  v225 = *&a3->var1;
  v102 = 0;
  v103 = 1;
  v104 = v222->_YUVNoisePyramid[v26];
  while (1)
  {
    v105 = v103;
    Textures = objc_msgSend_allocateTextures_(*(v104 + 8 * v102), v98, 0, v99);
    if (Textures)
    {
      break;
    }

    v103 = 0;
    v102 = 1;
    if ((v105 & 1) == 0)
    {
      preEspressoStage = v222->_preEspressoStage;
      v110 = *(v36 + 2);
      v109 = *(v36 + 3);
      v111 = v222->_synthRefNoisePretuning[v26];
      if (v222->_networkVersion == 2)
      {
        v211 = v26;
        v209 = objc_msgSend_outputTextureArray(v222->_YUVNoisePyramid[v26][0], v98, v107, v99);
        v114 = objc_msgSend_objectAtIndexedSubscript_(v209, v112, 0, v113);
        v118 = v114;
        if (v222->_networkVersion == 2)
        {
          v119 = objc_msgSend_outputTextureArray(*(v104 + 8), v115, v116, v117);
          v122 = objc_msgSend_objectAtIndexedSubscript_(v119, v120, 0, v121);
          HIWORD(v206) = WORD2(v210);
          WORD2(v206) = v210;
          WORD1(v206) = WORD2(v225);
          LOWORD(v206) = v225;
          v123 = v118;
          v125 = objc_msgSend_estimateNoiseRefNoise_synthLongNoise_synthRefNoisePretuning_synthLongNoisePretuning_synthRefLuma_synthRefChroma_synthLongLuma_synthLongChroma_lscGains_slFusionMap_longFusionMap_outRefNoisePyramid_outSLNoisePyramid_noiseEstimationParams_offset_tileDimension_(preEspressoStage, v124, v110, v109, v111, v97, v220, v218, v216, v215, v221, v219, v217, v118, v122, a13, v206);
        }

        else
        {
          v123 = v114;
          HIWORD(v208) = WORD2(v210);
          WORD2(v208) = v210;
          WORD1(v208) = WORD2(v225);
          LOWORD(v208) = v225;
          v125 = objc_msgSend_estimateNoiseRefNoise_synthLongNoise_synthRefNoisePretuning_synthLongNoisePretuning_synthRefLuma_synthRefChroma_synthLongLuma_synthLongChroma_lscGains_slFusionMap_longFusionMap_outRefNoisePyramid_outSLNoisePyramid_noiseEstimationParams_offset_tileDimension_(preEspressoStage, v115, v110, v109, v111, v97, v220, v218, v216, v215, v221, v219, v217, v114, 0, a13, v208);
        }

        v129 = v222;
        v26 = v211;
        if (v125)
        {
LABEL_44:
          sub_2958A9670(v125, &v229);
          goto LABEL_58;
        }

LABEL_17:
        v130 = *&a3->var4;
        v232[0] = *&a3->var0;
        v232[1] = v130;
        v233 = *&a3->var8;
        v234 = 1.0;
        v235 = *a14;
        v131 = objc_msgSend_commandQueue(v129->_metal, v126, v127, v128);
        v135 = objc_msgSend_commandBuffer(v131, v132, v133, v134);

        if (a12)
        {
          if (!v135)
          {
            sub_2958A9B30(&v229);
            goto LABEL_58;
          }

          v139 = objc_msgSend_computeCommandEncoder(v135, v136, v137, v138);
          if (!v139)
          {
            sub_2958A9A7C(v135, &v229);
            goto LABEL_58;
          }

          v142 = v139;
          objc_msgSend_setComputePipelineState_(v139, v140, v129->_kernelSyntheticLongHighlightFixYUV420ToTile, v141);
          v234 = sqrtf(a11);
          objc_msgSend_setBytes_length_atIndex_(v142, v143, v232, 52, 0);
          objc_msgSend_setTexture_atIndex_(v142, v144, v240, 0);
          objc_msgSend_setTexture_atIndex_(v142, v145, v241, 1);
          objc_msgSend_setTexture_atIndex_(v142, v146, v236, 2);
          objc_msgSend_setTexture_atIndex_(v142, v147, v237, 3);
          objc_msgSend_setTexture_atIndex_(v142, v148, v97, 4);
          objc_msgSend_setTexture_atIndex_(v142, v149, v242, 5);
          objc_msgSend_setTexture_atIndex_(v142, v150, v243, 6);
          objc_msgSend_setTexture_atIndex_(v142, v151, v238, 7);
          objc_msgSend_setTexture_atIndex_(v142, v152, v239, 8);
          v153 = *&a3->var3;
          *&v154 = v153;
          *(&v154 + 1) = HIDWORD(v153);
          v229 = v154;
          v230 = 1;
          v227 = xmmword_2959D5ED0;
          v228 = 1;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v142, v155, &v229, &v227);
        }

        else
        {
          if (!v135)
          {
            sub_2958A97C8(&v229);
            goto LABEL_58;
          }

          v212 = v26;
          v159 = objc_msgSend_computeCommandEncoder(v135, v136, v137, v138);
          if (!v159)
          {
            sub_2958A9714(v135, &v229);
            goto LABEL_58;
          }

          v162 = v159;
          objc_msgSend_setComputePipelineState_(v159, v160, v129->_kernelYUV420ToTile, v161);
          v163 = &v236;
          v164 = 1.0;
          v165 = 1;
          v166 = sqrtf(a11);
          do
          {
            v234 = v164;
            objc_msgSend_setBytes_length_atIndex_(v162, v156, v232, 52, 0);
            v168 = v165 & 1;
            if (v165)
            {
              v169 = 0;
            }

            else
            {
              v169 = 4;
            }

            v231 = *(&a14->syntheticReferenceLumaPedestal + v169);
            objc_msgSend_setBytes_length_atIndex_(v162, v167, &v231, 4, 1);
            objc_msgSend_setTextures_withRange_(v162, v170, v163, 0, 4);
            v171 = *&a3->var3;
            *&v172 = v171;
            *(&v172 + 1) = HIDWORD(v171);
            v229 = v172;
            v230 = 1;
            v227 = xmmword_2959D5ED0;
            v228 = 1;
            objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v162, v173, &v229, &v227);
            v165 = 0;
            v164 = v166;
            v163 = &v240;
          }

          while (v168);
          v129 = v222;
          v142 = v162;
          v26 = v212;
        }

        objc_msgSend_endEncoding(v142, v156, v157, v158);
        objc_msgSend_commit(v135, v174, v175, v176);
        FigMetalDecRef();
        v226 = v129->_networkVersion == 2;
        v180 = objc_msgSend_commandQueue(v129->_metal, v177, v178, v179);
        v184 = objc_msgSend_commandBuffer(v180, v181, v182, v183);

        if (v184)
        {
          v213 = v142;
          v186 = 0;
          v187 = &v239;
          v188 = v223[v26];
          v189 = 1;
          v190 = v129->_YUVLaplacian[v26];
          v224 = v129->_YUVNoisePyramid[v26];
          while (1)
          {
            v191 = v189;
            v192 = objc_msgSend_computeUsing_inTex_(v188[v186], v185, v184, *v187);
            if (v192)
            {
              LODWORD(v203) = v192;
              sub_2958A9864(v192, v213, v184);
              goto LABEL_39;
            }

            v194 = objc_msgSend_computeUsing_gaussianPyramid_upsamplingFilter_(*(v190 + 8 * v186), v193, v184, v188[v186], v226);
            if (v194)
            {
              LODWORD(v203) = v194;
              sub_2958A98E0(v194, v213, v184);
              goto LABEL_39;
            }

            if (v129->_networkVersion == 2)
            {
              v197 = *(v224 + 8 * v186);
              v198 = objc_msgSend_outputTextureArray(v197, v185, v195, v196);
              v201 = objc_msgSend_objectAtIndexedSubscript_(v198, v199, 0, v200);
              v203 = objc_msgSend_computeUsing_inTex_(v197, v202, v184, v201);

              if (v203)
              {
                sub_2958A995C(v203, v213, v184);
                goto LABEL_39;
              }

              v129 = v222;
              if (v222->_networkVersion == 2)
              {
                objc_msgSend_makeTexturesAliasableWithRange_(*(v224 + 8 * v186), v185, 0, 3);
              }
            }

            v189 = 0;
            v187 = &v243;
            v186 = 1;
            if ((v191 & 1) == 0)
            {
              objc_msgSend_commit(v184, v185, v195, v196);

              LODWORD(v203) = 0;
              goto LABEL_39;
            }
          }
        }

        sub_2958A99D8(v142, &v229);
LABEL_58:
        LODWORD(v203) = v229;
        goto LABEL_39;
      }

      v101 = v225;
      v100 = v210;
LABEL_16:
      HIWORD(v207) = WORD2(v100);
      WORD2(v207) = v100;
      WORD1(v207) = WORD2(v101);
      LOWORD(v207) = v101;
      v125 = objc_msgSend_estimateNoiseRefNoise_synthLongNoise_synthRefNoisePretuning_synthLongNoisePretuning_synthRefLuma_synthRefChroma_synthLongLuma_synthLongChroma_lscGains_slFusionMap_longFusionMap_outRefNoisePyramid_outSLNoisePyramid_noiseEstimationParams_offset_tileDimension_(preEspressoStage, v98, v110, v109, v111, v97, v220, v218, v216, v215, v221, v219, v217, 0, 0, a13, v207);
      v129 = v222;
      if (v125)
      {
        goto LABEL_44;
      }

      goto LABEL_17;
    }
  }

  LODWORD(v203) = Textures;
  sub_2958A9610();
LABEL_39:
  for (i = 56; i != -8; i -= 8)
  {
  }

  return v203;
}

- (int)stage3GPUonTile:(TileBounds *)a3 preFusionMap:(id)a4 slFusionMap:(id)a5 longFusionMap:(id)a6 skinMask:(id)a7 skyMask:(id)a8 lscGains:(id)a9 outLuma:(id)a10 outChroma:(id)a11 espressoModelForTuning:(int)a12
{
  v154 = a4;
  v153 = a5;
  v152 = a6;
  v151 = a7;
  v150 = a8;
  v149 = a9;
  v18 = a10;
  v22 = a11;
  v158 = 0;
  if (a3->var0 >= 0)
  {
    v23 = a3->var0 & 1;
  }

  else
  {
    v23 = -(a3->var0 & 1);
  }

  v24 = *&a3->var5;
  a3->var5 = 0;
  a3->var6 = 0;
  v147 = a3;
  v25 = v23;
  v26 = (&self->super.isa + 2 * v23);
  v27 = objc_msgSend_outputTextureArray(v26[215], v19, v20, v21);
  v31 = objc_msgSend_outputTextureArray(v26[216], v28, v29, v30);
  v35 = objc_msgSend_outputTextureArray(v26[219], v32, v33, v34);
  v148 = objc_msgSend_outputTextureArray(v26[220], v36, v37, v38);
  v155 = 0;
  v156 = 0;
  if (self->_networkVersion == 2)
  {
    v42 = (&self->super.isa + 2 * v25);
    v43 = objc_msgSend_outputTextureArray(v42[223], v39, v40, v41);
    v156 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, 3, v45);

    v49 = objc_msgSend_outputTextureArray(v42[224], v46, v47, v48);
    v155 = objc_msgSend_objectAtIndexedSubscript_(v49, v50, 3, v51);
  }

  v52 = objc_msgSend_allocator(self->_metal, v39, v40, v41);
  v56 = objc_msgSend_newTextureDescriptor(v52, v53, v54, v55);

  if (v56)
  {
    v60 = objc_msgSend_desc(v56, v57, v58, v59);
    objc_msgSend_setCompressionMode_(v60, v61, 2, v62);

    v66 = objc_msgSend_desc(v56, v63, v64, v65);
    objc_msgSend_setCompressionFootprint_(v66, v67, 0, v68);

    tileWidth = self->_tileWidth;
    v73 = objc_msgSend_desc(v56, v70, v71, v72);
    objc_msgSend_setWidth_(v73, v74, tileWidth, v75);

    tileHeight = self->_tileHeight;
    v80 = objc_msgSend_desc(v56, v77, v78, v79);
    objc_msgSend_setHeight_(v80, v81, tileHeight, v82);

    v86 = objc_msgSend_desc(v56, v83, v84, v85);
    objc_msgSend_setUsage_(v86, v87, 7, v88);

    v92 = objc_msgSend_desc(v56, v89, v90, v91);
    objc_msgSend_setPixelFormat_(v92, v93, 115, v94);

    objc_msgSend_setLabel_(v56, v95, 0, v96);
    v100 = objc_msgSend_allocator(self->_metal, v97, v98, v99);
    v146 = v56;
    v103 = objc_msgSend_newTextureWithDescriptor_(v100, v101, v56, v102);
    v158 = v103;

    if (v103)
    {
      v144 = v22;
      v145 = v18;
      postEspresso = self->_postEspresso;
      v140 = objc_msgSend_commandQueue(self->_metal, v104, v105, v106);
      v107 = *&self->_dfTexOut[v25][0];
      v157[1] = *&self->_dfTexOut[v25][2];
      v157[0] = v107;
      v109 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v108, v157, 4);
      v112 = objc_msgSend_objectAtIndexedSubscript_(v27, v110, 3, v111);
      v141 = v35;
      objc_msgSend_arrayByAddingObject_(v35, v113, v112, v114);
      v116 = v115 = v27;
      v119 = objc_msgSend_objectAtIndexedSubscript_(v31, v117, 3, v118);
      v122 = objc_msgSend_arrayByAddingObject_(v148, v120, v119, v121);
      v123 = postEspresso;
      v143 = v115;
      v124 = v115;
      v125 = v31;
      v127 = objc_msgSend_applyWeightsOnTile_uniforms_espressoOutputTextureArray_inRefGaussianArray_inSLGaussianArray_inRefLaplacianArray_inSLLaplacianArray_inRefNoisePyramidLevel3_inSLNoisePyramidLevel3_slFusionMap_longFusionMap_prefusionWeightsTexture_skinMaskTexture_skyMaskTexture_lscGains_refNoisePretuning_tile_finalOutputTexture_lowLightMode_(v123, v126, v140, self->_uniforms, v109, v124, v31, v116, v122, v156, v155, v153, v152, v154, v151, v150, v149, self->_synthRefNoisePretuning[v25], v147, v103, a12 == 1);

      if (v127)
      {
        sub_2958A9DA0(v127, v103, v159);
        LODWORD(v138) = v159[0];
        v22 = v144;
        v18 = v145;
        v27 = v143;
        v31 = v125;
      }

      else
      {
        v22 = v144;
        if (self->_networkVersion == 2)
        {
          v131 = (&self->super.isa + 2 * v25);
          objc_msgSend_makeTexturesAliasable(v131[223], v128, v129, v130);
          objc_msgSend_makeTexturesAliasable(v131[224], v132, v133, v134);
        }

        *&v147->var5 = v24;
        v135 = self->_postEspresso;
        v136 = objc_msgSend_commandQueue(self->_metal, v128, v129, v130);
        v18 = v145;
        v138 = objc_msgSend_convert444to420_input444_outputLuma_outputChroma_outputOffset_(v135, v137, v136, v103, v145, v144, v147);

        v27 = v143;
        v31 = v125;
        if (v138)
        {
          sub_2958A9E4C(v138, v103);
        }

        else
        {
          FigMetalDecRef();
        }
      }

      v35 = v141;
    }

    else
    {
      sub_2958A9EC0(v159);
      LODWORD(v138) = v159[0];
    }

    v56 = v146;
  }

  else
  {
    sub_2958A9F5C(v159);
    LODWORD(v138) = v159[0];
  }

  return v138;
}

- (uint64_t)runWithReferenceLuma:(float)a3 referenceChroma:(float)a4 longLuma:(float)a5 longChroma:(float)a6 preFusionMap:(float32x4_t)a7 slFusionMap:(float32x4_t)a8 slQuantBounds:(float32x4_t)a9 longFusionMap:(uint64_t)a10 skinMask:(void *)a11 skyMask:(void *)a12 lscGains:(void *)a13 totalGain:(void *)a14 outLuma:(void *)a15 outChroma:(void *)a16 deferredProcessingPlist:(NoiseDivisorQuantizationBoundaries *)a17 lscGainGreenMax:(id)a18 EVM_EV0_motionScore:(id)a19 eitRatio:(id)a20 aeShutterTimeRatio:(id)a21 hasSIFR:(id)a22 isStationary:(id)a23 isSyntheticLongWithRealLong:(id)a24 colorCorrection:(BOOL)a25 espressoModel:(BOOL)a26 noiseEstimationParams:(BOOL)a27 espressoModelForTuning:(unsigned int)a28 sideCar:(uint64_t)a29 intermediateEncodingParams:(unsigned __int32)a30
{
  v218 = a11;
  v216 = a12;
  v217 = a13;
  v215 = a14;
  v208 = a15;
  v223 = a16;
  v222 = a18;
  v207 = a19;
  v206 = a20;
  v221 = a21;
  v210 = a22;
  v209 = a23;
  v43 = a24;
  EspressoNetwork = objc_msgSend_maybeLoadEspressoNetwork_(a1, v44, a28, v45);
  if (EspressoNetwork)
  {
    v166 = EspressoNetwork;
    sub_2958A9FF8();
    goto LABEL_62;
  }

  v47 = 0;
  v229[0] = xmmword_2959D5FA0;
  v229[1] = xmmword_2959D5FB0;
  v229[2] = xmmword_2959D5FC0;
  memset(&v230, 0, sizeof(v230));
  do
  {
    v230.columns[v47] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, COERCE_FLOAT(v229[v47])), a8, *&v229[v47], 1), a9, v229[v47], 2);
    ++v47;
  }

  while (v47 != 3);
  v219 = v230.columns[0];
  v214 = v230.columns[1].i32[1];
  __invert_f3(v230);
  if (!v218)
  {
    sub_2958AAC70(&v230);
    goto LABEL_57;
  }

  if (!v216)
  {
    sub_2958AABD4(&v230);
    goto LABEL_57;
  }

  if (!v217)
  {
    sub_2958AAB38(&v230);
    goto LABEL_57;
  }

  if (!v215)
  {
    sub_2958AAA9C(&v230);
    goto LABEL_57;
  }

  if (!v210)
  {
    sub_2958AAA00(&v230);
    goto LABEL_57;
  }

  if (!v209)
  {
    sub_2958AA964(&v230);
    goto LABEL_57;
  }

  if (!v208)
  {
    sub_2958AA8C8(&v230);
    goto LABEL_57;
  }

  if (!v223)
  {
    sub_2958AA82C(&v230);
    goto LABEL_57;
  }

  if (!a17)
  {
    sub_2958AA790(&v230);
    goto LABEL_57;
  }

  v51 = *(a1 + 72);
  v52 = objc_msgSend_width(v218, v48, v49, v50);
  objc_msgSend_height(v218, v53, v54, v55);
  *&v56 = a17->var0;
  *&v57 = a17->var1;
  v195 = v219;
  *&v58 = a3;
  *&v59 = a6;
  if (objc_msgSend_createShaderUniforms_totalGain_EVM_EV0_motionScore_lscGainGreenMax_slQuantBounds_espressoModel_fullSize_uniforms_hasLong_hasSIFR_isStationary_isSyntheticLongWithRealLong_aeShutterTimeRatio_colorCorrection_inverseColorCorrection_(v51, v60, v43, a30, a1 + 80, v222 != 0, a25, a26, COERCE_DOUBLE(__PAIR64__(v219.u32[1], LODWORD(a2))), COERCE_DOUBLE(__PAIR64__(v214, LODWORD(a4))), v58, v56, v57, *&v52, v59, a27))
  {
    sub_2958AA058(&v230);
    goto LABEL_57;
  }

  v220 = objc_msgSend_width(v210, v61, v62, v63);
  v201 = objc_msgSend_height(v210, v64, v65, v66);
  v67 = *(a1 + 1684);
  v68 = *(a1 + 1680);
  v69 = *(a1 + 1688);
  LOWORD(v224) = objc_msgSend_width(v217, v70, v71, v72);
  HIWORD(v224) = objc_msgSend_height(v217, v73, v74, v75);
  objc_msgSend_setEstimateNoiseParams_fullDimension_intermediateEncodingParams_(*(a1 + 32), v76, a29, v224, a32);
  memset(&v228[4], 0, 32);
  v225 = 0u;
  v226 = 0u;
  v227 = 0;
  *v228 = -1;
  *&v228[36] = *(a1 + 1680);
  *&v228[12] = *(a1 + 1684);
  v80 = objc_msgSend_allocator(*(a1 + 8), v77, v78, v79);
  v84 = objc_msgSend_newTextureDescriptor(v80, v81, v82, v83);

  if (!v84)
  {
    sub_2958AA6F4(&v230);
    goto LABEL_57;
  }

  v88 = 2 * v68;
  v89 = v67 - 2 * v68;
  v200 = v69 - 2 * v68;
  v90 = objc_msgSend_desc(v84, v85, v86, v87);
  objc_msgSend_setCompressionMode_(v90, v91, 2, v92);

  v96 = objc_msgSend_desc(v84, v93, v94, v95);
  objc_msgSend_setCompressionFootprint_(v96, v97, 0, v98);

  v99 = *(a1 + 1684);
  v103 = objc_msgSend_desc(v84, v100, v101, v102);
  objc_msgSend_setWidth_(v103, v104, v99, v105);

  v106 = *(a1 + 1688);
  v110 = objc_msgSend_desc(v84, v107, v108, v109);
  objc_msgSend_setHeight_(v110, v111, v106, v112);

  v116 = objc_msgSend_desc(v84, v113, v114, v115);
  objc_msgSend_setUsage_(v116, v117, 7, v118);

  v122 = objc_msgSend_desc(v84, v119, v120, v121);
  objc_msgSend_setPixelFormat_(v122, v123, 115, v124);

  v127 = 0;
  v128 = a1 + 1944;
  v129 = 1;
  do
  {
    v130 = v129;
    objc_msgSend_setLabel_(v84, v125, 0, v126);
    v134 = objc_msgSend_allocator(*(a1 + 8), v131, v132, v133);
    v137 = objc_msgSend_newTextureWithDescriptor_(v134, v135, v84, v136);
    v138 = *(v128 + 8 * v127);
    *(v128 + 8 * v127) = v137;

    if (!*(v128 + 8 * v127))
    {
      sub_2958AA640(v84, &v230);
      goto LABEL_57;
    }

    v129 = 0;
    v127 = 1;
  }

  while ((v130 & 1) != 0);
  v198 = v88;
  v212 = v67;
  v199 = a1 + 1944;
  objc_msgSend_allocateTextures(*(a1 + 72), v125, v139, v126);
  v142 = 0;
  v205 = a1 + 1720;
  v203 = a1 + 1752;
  v143 = 1;
  while (2)
  {
    v144 = 0;
    v145 = v143;
    v146 = 1;
    v147 = v205 + 16 * v142;
    v148 = v203 + 16 * v142;
    do
    {
      v149 = v146;
      Textures = objc_msgSend_allocateTextures_(*(v147 + 8 * v144), v140, 0, v141);
      if (Textures)
      {
        v166 = Textures;
        sub_2958AA0F4();
LABEL_54:

        goto LABEL_62;
      }

      v153 = objc_msgSend_allocateTextures_(*(v148 + 8 * v144), v151, 0, v152);
      if (v153)
      {
        v166 = v153;
        sub_2958AA154();
        goto LABEL_54;
      }

      v146 = 0;
      v144 = 1;
    }

    while ((v149 & 1) != 0);
    v143 = 0;
    v142 = 1;
    if (v145)
    {
      continue;
    }

    break;
  }

  v196 = v84;
  v197 = v43;
  v155 = a1;
  if (v201 >= 1)
  {
    v156 = 0;
    v157 = -*(a1 + 1680);
    v213 = v198 - v212;
    do
    {
      if (v220 >= 1)
      {
        v158 = 0;
        v159 = -*(v155 + 1680);
        if (v201 - v156 >= v200)
        {
          v160 = v200;
        }

        else
        {
          v160 = v201 - v156;
        }

        v161 = v220;
        do
        {
          v162 = (*v228)++;
          *&v228[4] = v159 + v158;
          *&v228[8] = v157;
          *&v228[20] = v158;
          if (v161 >= v89)
          {
            v163 = v89;
          }

          else
          {
            v163 = v161;
          }

          *&v228[24] = v156;
          *&v228[28] = v163;
          *&v228[32] = v160;
          v195.i8[0] = a25;
          *&v154 = a5;
          hasSIFR_noiseEstimationParams_intermediateEncodingParams = objc_msgSend_stage1GPUonTile_refLuma_referenceChroma_longLuma_longChroma_lscGains_slFusionMap_longFusionMap_eitRatio_hasSIFR_noiseEstimationParams_intermediateEncodingParams_(v155, v140, v228, v218, v216, v217, v215, v221, v154, v223, v222, v195.i64[0], a29, a32);
          v166 = hasSIFR_noiseEstimationParams_intermediateEncodingParams;
          if (v162 == -1)
          {
            if (hasSIFR_noiseEstimationParams_intermediateEncodingParams)
            {
              sub_2958AA304(hasSIFR_noiseEstimationParams_intermediateEncodingParams, v196);
              goto LABEL_61;
            }
          }

          else
          {
            if (hasSIFR_noiseEstimationParams_intermediateEncodingParams)
            {
              sub_2958AA1B4(hasSIFR_noiseEstimationParams_intermediateEncodingParams, v196);
              goto LABEL_61;
            }

            objc_msgSend_waitForSchedule(*(v155 + 8), v140, v165, v141);
            v169 = objc_msgSend_stage2ANEonTile_(v155, v167, &v225, v168);
            if (v169)
            {
              v166 = v169;
              sub_2958AA224(v169, v196);
              goto LABEL_61;
            }

            v195.i32[2] = a30;
            v171 = objc_msgSend_stage3GPUonTile_preFusionMap_slFusionMap_longFusionMap_skinMask_skyMask_lscGains_outLuma_outChroma_espressoModelForTuning_(v155, v170, &v225, v208, v223, v222, v207, v206, v221, v210, v209, v195.i64[1]);
            if (v171)
            {
              v166 = v171;
              sub_2958AA294(v171, v196);
              goto LABEL_61;
            }
          }

          HIDWORD(v154) = *&v228[4];
          v225 = *v228;
          v226 = *&v228[16];
          v227 = *&v228[32];
          v158 += v89;
          v161 += v213;
        }

        while (v158 < v220);
      }

      v156 += v200;
      v157 += v200;
    }

    while (v156 < v201);
  }

  v172 = objc_msgSend_stage2ANEonTile_(v155, v140, v228, v141);
  if (!v172)
  {
    v195.i32[2] = a30;
    v174 = objc_msgSend_stage3GPUonTile_preFusionMap_slFusionMap_longFusionMap_skinMask_skyMask_lscGains_outLuma_outChroma_espressoModelForTuning_(v155, v173, v228, v208, v223, v222, v207, v206, v221, v210, v209, v195.i64[1]);
    v43 = v197;
    if (v174)
    {
      v166 = v174;
      sub_2958AA3E4(v174, v196);
      goto LABEL_62;
    }

    objc_msgSend_makeTextureAliasable(*(v155 + 72), v175, v176, v177);
    v178 = 0;
    v179 = 1;
    while (2)
    {
      v180 = v179;
      if (*(v199 + 8 * v178))
      {
        FigMetalDecRef();
        v184 = 0;
        v185 = 1;
        v186 = v205 + 16 * v178;
        v187 = v203 + 16 * v178;
        do
        {
          v188 = *(v186 + 8 * v184);
          if (!v188)
          {
            sub_2958AA4F8(v196, &v230);
            goto LABEL_57;
          }

          v189 = v185;
          objc_msgSend_makeTexturesAliasable(v188, v181, v182, v183);
          v193 = *(v187 + 8 * v184);
          if (!v193)
          {
            sub_2958AA454(v196, &v230);
            goto LABEL_57;
          }

          objc_msgSend_makeTexturesAliasable(v193, v190, v191, v192);
          v185 = 0;
          v184 = 1;
        }

        while ((v189 & 1) != 0);
        v179 = 0;
        v178 = 1;
        if (v180)
        {
          continue;
        }

        v166 = 0;
        goto LABEL_62;
      }

      break;
    }

    sub_2958AA59C(v196, &v230);
LABEL_57:
    v166 = v230.columns[0].u32[0];
    goto LABEL_62;
  }

  v166 = v172;
  sub_2958AA374(v172, v196);
LABEL_61:
  v43 = v197;
LABEL_62:

  return v166;
}

- (int)computeAMBNRDenoiseBoostMap:(id)a3 longFusionMap:(id)a4 ev0FusionMap:(id)a5 ev0Metadata:(frameMetadata *)a6 longMetadata:(frameMetadata *)a7 numEV0:(int)a8 deferredProcessingPlist:(id)a9 espressoModel:(int)a10 isSyntheticLongWithRealLong:(BOOL)a11 totalGain:(float)a12
{
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v23 = objc_msgSend_noiseTuningForModel_(a9, v21, a10, v22);
  v24 = v23;
  if (a11)
  {
    v25 = &OBJC_IVAR___DeepFusionNoiseTuningPlist_slEV0Long;
  }

  else
  {
    v25 = &OBJC_IVAR___DeepFusionNoiseTuningPlist_slEV0;
  }

  v26 = *(*(v23 + *v25) + 16);
  v27 = *(*&v24[*v25] + 24);
  v28 = sub_29584472C(v26, a12);
  v29 = sub_29584472C(v27, a12);
  postEspresso = self->_postEspresso;
  v34 = objc_msgSend_commandQueue(self->_metal, v31, v32, v33);
  *&v35 = v28;
  *&v36 = v29;
  LODWORD(postEspresso) = objc_msgSend_computeAMBNRDenoiseBoostMap_boostMap_longFusionMap_ev0FusionMap_ev0Metadata_longMetadata_numEV0_ev0FusionTarget_longFusionTarget_(postEspresso, v37, v34, v20, v19, v18, a6, a7, v35, v36, a8);

  return postEspresso;
}

- (id)availableImagingNetworksWithNetExtension
{
  v2 = objc_opt_new();
  v6 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v3, v4, v5);
  v28 = 0;
  v8 = objc_msgSend_contentsOfDirectoryAtPath_error_(v6, v7, @"/System/Library/ImagingNetworks", &v28);
  v9 = v28;

  if (v8)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v8;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v24, v23, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = *(*(&v24 + 1) + 8 * i);
          if (objc_msgSend_hasSuffix_(v21, v16, @".net", v17))
          {
            objc_msgSend_addObject_(v2, v16, v21, v17);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v24, v23, 16);
      }

      while (v18);
    }
  }

  if (!objc_msgSend_count(v2, v10, v11, v12))
  {

    v2 = 0;
  }

  return v2;
}

@end