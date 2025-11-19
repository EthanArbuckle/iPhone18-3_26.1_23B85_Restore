@interface FusionRemixStage
+ (BOOL)isSupported;
+ (int)prewarmShaders:(id)a3;
- (SidecarWriter)sidecarWriter;
- (id)initBandFusion:(id)a3 nrfConfig:(id)a4 isPrewarm:(BOOL)a5;
- (int)computeFusionParams:(id)a3 properties:(const frameProperties_t *)a4 config:(const FusionConfiguration *)a5 fusionMode:(int)a6 staticScene:(BOOL)a7 isLowLight:(BOOL)a8;
- (int)computeGrayGhostCount:(id)a3 ev0Bands:(id)a4 evmProperties:(const frameProperties_t *)a5 ev0Properties:(const frameProperties_t *)a6 atBand:(int)a7 nrfPlist:(id)a8 size:(int *)a9;
- (int)correctGTC:(id)a3;
- (int)detectFlicker:(id)a3 ev0Bands:(id)a4 evmProperties:(const frameProperties_t *)a5 ev0Properties:(const frameProperties_t *)a6 height:(int *)a7;
- (int)prepareForFusion:(id)a3 config:(const FusionConfiguration *)a4 fusedPyramid:(id)a5 properties:(const frameProperties_t *)a6 nrfPlist:(id)a7 staticScene:(BOOL)a8 isLowLight:(BOOL)a9;
- (int)runImageFusion:(id)a3 config:(const FusionConfiguration *)a4 fusedPyramid:(id)a5 accWeightPyramid:(id)a6 buffers:(id)a7 properties:(const frameProperties_t *)a8 nrfPlist:(id)a9 confidence:(id)a10 batchN:(int)a11 isLastBatch:(BOOL)a12 isLowLight:(BOOL)a13 usePatchBasedFusion:(BOOL)a14 outputChromaBias:(float)a15;
- (int)runStationaryFusionWithParams:(const FusionRemixStageUniformsIBP *)a3 inputs:(id)a4 fusedLumaTex:(id)a5 fusedChromaTex:(id)a6 noiseMapLumaTex:(id)a7 noiseMapChromaTex:(id)a8 accWeightLumaTex:(id)a9 accWeightChromaTex:(id)a10 inferenceLumaTex:(id)a11 inferenceChromaTex:(id)a12 batchN:(int)a13;
- (int)selectNRFFusionReferenceFrame:(id)a3 ev0Bands:(id)a4 evmProperties:(const frameProperties_t *)a5 ev0Properties:(const frameProperties_t *)a6 nrfPlist:(id)a7 outputFusionMode:(int *)a8 staticScene:(BOOL *)a9 motionDetection:(id)a10 grayGhostDetection:(id)a11;
@end

@implementation FusionRemixStage

+ (BOOL)isSupported
{
  v4 = objc_msgSend_metalDevice(MEMORY[0x29EDC0A40], a2, v2, v3);
  v7 = objc_msgSend_supportsFamily_(v4, v5, 1003, v6);

  return v7;
}

- (id)initBandFusion:(id)a3 nrfConfig:(id)a4 isPrewarm:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v93.receiver = self;
  v93.super_class = FusionRemixStage;
  v11 = [(FusionRemixStage *)&v93 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_32;
  }

  objc_storeStrong(&v11->_metal, a3);
  objc_storeStrong(&v12->_nrfConfig, a4);
  v13 = objc_opt_new();
  if (!v13)
  {
    sub_2958C5CA8();
    goto LABEL_32;
  }

  v16 = v13;
  objc_msgSend_setStorageMode_(v13, v14, 0, v15);
  objc_msgSend_setHazardTrackingMode_(v16, v17, 2, v18);
  objc_msgSend_setSize_(v16, v19, 51200, v20);
  v24 = objc_msgSend_device(v9, v21, v22, v23);
  v27 = objc_msgSend_newHeapWithDescriptor_(v24, v25, v16, v26);
  uniformsHeap = v12->_uniformsHeap;
  v12->_uniformsHeap = v27;

  if (!v12->_uniformsHeap)
  {
    sub_2958C5C0C(v16);
    goto LABEL_32;
  }

  v29 = objc_opt_new();
  if (!v29)
  {
    sub_2958C5B70(v16);
    goto LABEL_32;
  }

  v33 = v29;
  v34 = objc_msgSend_resourceOptions(v12->_uniformsHeap, v30, v31, v32);
  objc_msgSend_setResourceOptions_(v33, v35, v34, v36);
  if (a5)
  {
LABEL_16:
    v81 = objc_msgSend_computePipelineStateFor_constants_(v9, v37, @"computeGrayGhostCount", 0);
    computeGrayGhostCount = v12->_computeGrayGhostCount;
    v12->_computeGrayGhostCount = v81;

    if (!v12->_computeGrayGhostCount)
    {
      sub_2958C5AD0();
      goto LABEL_32;
    }

    v84 = objc_msgSend_computePipelineStateFor_constants_(v9, v83, @"detectFlicker", 0);
    detectFlicker = v12->_detectFlicker;
    v12->_detectFlicker = v84;

    if (!v12->_detectFlicker)
    {
      sub_2958C5A30();
      goto LABEL_32;
    }

    v87 = objc_msgSend_computePipelineStateFor_constants_(v9, v86, @"correctGTC", 0);
    correctGTC = v12->_correctGTC;
    v12->_correctGTC = v87;

    if (!v12->_correctGTC)
    {
      sub_2958C5990();
      goto LABEL_32;
    }

    objc_msgSend_prewarmInternalMetalShadersForFormatsList_(v12->_metal, v89, &unk_2A1CC4528, v90);
    v45 = v12;

    goto LABEL_33;
  }

  v92 = v10;
  v40 = 0;
  v41 = 1;
  do
  {
    v42 = v41;
    v43 = objc_msgSend_sharedInstance(FusionRemixStageShared, v37, v38, v39);
    v45 = objc_msgSend_getShaders_fp16_(v43, v44, v12->_metal, v40 & 1);

    if (!v45)
    {
      sub_2958C58F0();
LABEL_22:
      v10 = v92;
      goto LABEL_33;
    }

    v41 = 0;
    v40 = 1;
  }

  while ((v42 & 1) != 0);
  v46 = 0;
  uniforms = v12->_uniforms;
  do
  {
    v48 = [FusionRemixUniforms alloc];
    v50 = objc_msgSend_initWithMetal_heap_(v48, v49, v9, v12->_uniformsHeap);
    v51 = uniforms[v46];
    uniforms[v46] = v50;

    if (!uniforms[v46])
    {
      sub_2958C5850();
      v45 = 0;
      goto LABEL_22;
    }

    ++v46;
  }

  while (v46 != 10);
  v45 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v52, 10, 1, 1, 0);

  if (!v45)
  {
    sub_2958C57B4(v16);
    goto LABEL_22;
  }

  objc_msgSend_setUsage_(v45, v53, 1, v54);
  v58 = objc_msgSend_resourceOptions(v12->_uniformsHeap, v55, v56, v57);
  objc_msgSend_setResourceOptions_(v45, v59, v58, v60);
  v63 = objc_msgSend_newTextureWithDescriptor_(v12->_uniformsHeap, v61, v45, v62);
  placeHolderTex = v12->_placeHolderTex;
  v12->_placeHolderTex = v63;

  v65 = v12->_uniformsHeap;
  v69 = objc_msgSend_resourceOptions(v65, v66, v67, v68);
  v71 = objc_msgSend_newBufferWithLength_options_(v65, v70, 4, v69);
  grayGhostCountBuffer = v12->_grayGhostCountBuffer;
  v12->_grayGhostCountBuffer = v71;

  v10 = v92;
  if (v12->_grayGhostCountBuffer)
  {
    v76 = v12->_uniformsHeap;
    v77 = objc_msgSend_resourceOptions(v76, v73, v74, v75);
    v79 = objc_msgSend_newBufferWithLength_options_(v76, v78, 4, v77);
    flickerCountBuffer = v12->_flickerCountBuffer;
    v12->_flickerCountBuffer = v79;

    if (v12->_flickerCountBuffer)
    {
      v33 = v45;
      goto LABEL_16;
    }

    sub_2958C5674();
  }

  else
  {
    sub_2958C5714();
  }

LABEL_32:
  v45 = 0;
LABEL_33:

  return v45;
}

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v4 = [FuseRemixShaders alloc];
  v6 = objc_msgSend_initWithMetal_pixelFormatLuma_pixelFormatChroma_(v4, v5, v3, 25, 65);
  v7 = [FuseRemixShaders alloc];
  v9 = objc_msgSend_initWithMetal_pixelFormatLuma_pixelFormatChroma_(v7, v8, v3, 10, 30);

  v10 = [FusionRemixStage alloc];
  isPrewarm = objc_msgSend_initBandFusion_nrfConfig_isPrewarm_(v10, v11, v3, 0, 1);

  v16 = objc_msgSend_device(v3, v13, v14, v15);
  v18 = objc_msgSend_newBufferWithLength_options_(v16, v17, 1024, 0);

  if (v18)
  {
    v22 = objc_msgSend_commandQueue(v3, v19, v20, v21);
    v26 = objc_msgSend_commandBuffer(v22, v23, v24, v25);

    objc_msgSend_setLabel_(v26, v27, @"FusionRemixStage.prewarmShaders", v28);
    if (v26)
    {
      v35 = objc_msgSend_blitCommandEncoder(v26, v29, v30, v31);
      if (v35)
      {
        v36 = objc_msgSend_length(v18, v32, v33, v34);
        objc_msgSend_fillBuffer_range_value_(v35, v37, v18, 0, v36, 0);
        objc_msgSend_endEncoding(v35, v38, v39, v40);
        objc_msgSend_commit(v26, v41, v42, v43);
      }
    }
  }

  if (v6)
  {
    v44 = v9 == 0;
  }

  else
  {
    v44 = 1;
  }

  if (v44 || isPrewarm == 0)
  {
    v46 = -12786;
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

- (int)computeFusionParams:(id)a3 properties:(const frameProperties_t *)a4 config:(const FusionConfiguration *)a5 fusionMode:(int)a6 staticScene:(BOOL)a7 isLowLight:(BOOL)a8
{
  v8 = a8;
  v68 = a7;
  v14 = a3;
  v15 = 0;
  v16 = a4 + 224224 * SLODWORD(a5[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale);
  v17 = v16 + 16;
  v18 = (v16 + 112);
  if (!v8)
  {
    v18 = v17;
  }

  v19 = *v18;
  arrayOfinputParams = self->_arrayOfinputParams;
  v20 = a4 + 224224 * SLODWORD(a5[4].colorSpaceConversionParameters[1].finalScale);
  v70 = !v8;
  do
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(v14 + 3) + 8), v12, v15, v13);
    v22 = (&arrayOfinputParams->config.preWarpEnabled + 3040 * v15);
    v23 = &arrayOfinputParams->config.preWarpEnabled + 1520 * ((2 * v15) | 1);
    v24 = sub_29584472C(v21[1], v19);
    *(v23 + 336) = v24;
    v22[336] = v24;
    *(v23 + 337) = sub_29584472C(v21[2], v19);
    v22[337] = sub_29584472C(v21[3], v19);
    *(v23 + 338) = *(*(v14 + 3) + 136);
    *(v23 + 341) = sub_29584472C(v21[4], v19);
    v28 = *(v14 + 15);
    if (v28)
    {
      objc_msgSend_tuningParams(v28, v25, v26, v27);
      v29 = v77;
    }

    else
    {
      v29 = 0;
    }

    *(v22 + 377) = v29;
    *(v23 + 377) = v29;
    v30 = v21[5];
    v73 = v15;
    v74 = v21;
    if (a6 == 2)
    {
      v31 = sub_29584472C(*(*(v30 + 16) + 8), v19);
      *(v23 + 342) = v31;
      v22[342] = v31;
      v32 = sub_29584472C(*(*(v21[5] + 16) + 24), v19);
      *(v23 + 343) = v32;
      v22[343] = v32;
      v22[344] = sub_29584472C(*(*(v21[7] + 16) + 8), v19);
      v22[345] = sub_29584472C(*(*(v21[7] + 16) + 24), v19);
      v33 = v21;
      v34 = sub_29584472C(*(*(v21[6] + 16) + 8), v19);
      v35 = &OBJC_IVAR___PerReferenceBandata_evm;
    }

    else
    {
      v36 = sub_29584472C(*(*(v30 + 8) + 8), v19);
      *(v23 + 342) = v36;
      v22[342] = v36;
      v37 = sub_29584472C(*(*(v21[5] + 8) + 24), v19);
      *(v23 + 343) = v37;
      v22[343] = v37;
      v22[344] = sub_29584472C(*(*(v21[7] + 8) + 8), v19);
      v22[345] = sub_29584472C(*(*(v21[7] + 8) + 24), v19);
      v38 = *(v21[6] + 8);
      if (v68)
      {
        v39 = *(v38 + 16);
        if (!v39)
        {
          sub_2958C5D3C();
          v67 = v75;
          goto LABEL_36;
        }
      }

      else
      {
        v39 = *(v38 + 8);
      }

      v34 = sub_29584472C(v39, v19);
      v35 = &OBJC_IVAR___PerReferenceBandata_ev0;
      v33 = v21;
    }

    *(v23 + 344) = v34;
    *(v23 + 345) = sub_29584472C(*(*(v33[6] + *v35) + 24), v19);
    v40 = *(v14 + 3);
    v41 = *(v40 + 88);
    if (v41)
    {
      *(*(v14 + 3) + 80) = sub_29584472C(v41, v19);
      v40 = *(v14 + 3);
    }

    v42 = &arrayOfinputParams->config.preWarpEnabled + 3040 * v15;
    v43 = *(v40 + 80);
    *(v23 + 364) = v43;
    *(v22 + 364) = v43;
    v44 = *(*(*(v14 + 2) + 8) + 32);
    v45 = 0.0;
    v46 = 0.0;
    if (*(v44 + 8) >= 1)
    {
      v46 = sub_29584472C(v44, v19);
    }

    *(v23 + 339) = v46;
    v47 = *(*(*(v14 + 2) + 8) + 40);
    if (*(v47 + 8) >= 1)
    {
      v45 = sub_29584472C(v47, v19);
    }

    *(v23 + 340) = v45;
    if (!v15)
    {
      v48 = *(v14 + 3);
      if (*(v48 + 120))
      {
        *(v23 + 369) = sub_29584472C(*(*(v48 + 128) + 8), v19);
        *(v23 + 370) = sub_29584472C(*(*(*(v14 + 3) + 128) + 16), v19);
        *(v23 + 371) = sub_29584472C(*(*(*(v14 + 3) + 128) + 24), v19);
        *(v23 + 372) = sub_29584472C(*(*(*(v14 + 3) + 128) + 32), v19);
        *(v23 + 373) = sub_29584472C(*(*(*(v14 + 3) + 128) + 40), v19);
        *(v23 + 374) = sub_29584472C(*(*(*(v14 + 3) + 128) + 48), v19);
        *(v23 + 375) = sub_29584472C(*(*(*(v14 + 3) + 128) + 56), v19);
        v42 = &arrayOfinputParams->config.preWarpEnabled + 3040 * v15;
        *(v23 + 376) = sub_29584472C(*(*(*(v14 + 3) + 128) + 64), v19);
      }
    }

    v75 = 0uLL;
    v76 = 0;
    sub_2958133B0(&v75, *(v14 + 4), &a4->meta.exposureParams + 224224 * SLODWORD(a5[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale), v15);
    v49 = sub_295820728((v20 + 16), &a4->meta.exposureParams + 224224 * SLODWORD(a5[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale), v20);
    nonLinearBias_low = LOBYTE(a5[4].colorSpaceConversionParameters[2].transferFunctionFwd.nonLinearBias);
    if ((v70 | nonLinearBias_low))
    {
      if (nonLinearBias_low)
      {
        goto LABEL_28;
      }

      linearScale = a5[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale;
    }

    else
    {
      linearScale = a5[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale;
      if (!*(&a4->meta.exposureParams.hr_enabled + 224224 * SLODWORD(linearScale)))
      {
        goto LABEL_28;
      }
    }

    v49 = (v49 * sqrtf(*(&a4->meta.exposureParams.hard_gain + 56056 * SLODWORD(linearScale)) / *(&a4->meta.exposureParams.gain + 56056 * SLODWORD(linearScale)))) / sqrtf(*(&a4->meta.exposureParams.hr_gain_down_ratio + 56056 * SLODWORD(linearScale)));
LABEL_28:
    sub_295813774(&v75, v49);
    v52 = v75;
    *(v42 + 1384) = v75;
    v53 = v76;
    *(v42 + 175) = v76;
    *(v23 + 1384) = v52;
    *(v23 + 175) = v53;
    memcpy(v42, a5, 0x540uLL);
    memmove(v23, a5, 0x540uLL);
    if (SLODWORD(a5[4].colorSpaceConversionParameters[1].finalScaleFwd) >= 1)
    {
      v54 = 0;
      v55 = 2944;
      v56 = a4;
      do
      {
        v57 = sub_295820728((v20 + 16), &v56->meta.exposureParams, v20);
        v58 = (self + 4 * v54);
        v58[356] = v57;
        v59 = (self + v55);
        *v59 = v57;
        exposure_time = v56->meta.exposureParams.exposure_time;
        v58[364] = exposure_time;
        v59[8] = exposure_time;
        v61 = &OBJC_IVAR___DenoiseAndSharpeningTuning_shortFrameDenoiseBoost;
        if (v54 == *&a5[4].colorSpaceConversionParameters[1].outputToLinearYCbCr || (v62 = 1.0, v61 = &OBJC_IVAR___DenoiseAndSharpeningTuning_ev0FrameDenoiseBoost, v54 != LODWORD(a5[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearThreshold)))
        {
          v62 = sub_29584472C(*(*(*(v14 + 2) + 8) + *v61), v19);
        }

        v63 = v62 * powf(*(&a4->meta.exposureParams.exposure_time + 56056 * SLODWORD(a5[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale)) / v56->meta.exposureParams.exposure_time, 0.25);
        v64 = (self + v55);
        v64[4] = v63;
        v58[360] = v63;
        v65 = *&v56[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].BG.highlights;
        *(v64 + 13) = v65;
        *(v58 + 369) = v65;
        ++v54;
        v56 = (v56 + 224224);
        v55 += 4;
      }

      while (v54 < SLODWORD(a5[4].colorSpaceConversionParameters[1].finalScaleFwd));
    }

    v15 = v73 + 1;
    self = (self + 3040);
  }

  while (v73 != 3);
  v67 = 0;
LABEL_36:

  return v67;
}

- (int)detectFlicker:(id)a3 ev0Bands:(id)a4 evmProperties:(const frameProperties_t *)a5 ev0Properties:(const frameProperties_t *)a6 height:(int *)a7
{
  v12 = a3;
  v13 = a4;
  v17 = objc_msgSend_commandQueue(self->_metal, v14, v15, v16);
  v21 = objc_msgSend_commandBuffer(v17, v18, v19, v20);

  if (!v21)
  {
    sub_2958C5E78(&v65);
LABEL_7:
    v60 = v65;
    goto LABEL_4;
  }

  v25 = objc_msgSend_computeCommandEncoder(v21, v22, v23, v24);
  if (!v25)
  {
    sub_2958C5DDC(&v65);
    goto LABEL_7;
  }

  v28 = v25;
  objc_msgSend_setComputePipelineState_(v25, v26, self->_detectFlicker, v27);
  v29 = v12[45];
  v62 = v13[45];
  v30 = v29;
  objc_msgSend_setTexture_atIndex_(v28, v31, v30, 0);
  objc_msgSend_setTexture_atIndex_(v28, v32, v62, 1);
  objc_msgSend_setBytes_length_atIndex_(v28, v33, &a5[1].meta.exposureParams.conversion_gain, 48, 0);
  objc_msgSend_setBytes_length_atIndex_(v28, v34, &a6[1].meta.exposureParams.conversion_gain, 48, 1);
  v68 = sub_295820728(&a5->meta.exposureParams, &a6->meta.exposureParams, a5);
  objc_msgSend_setBytes_length_atIndex_(v28, v35, &v68, 4, 2);
  *a7 = objc_msgSend_height(v30, v36, v37, v38);
  v42 = objc_msgSend_width(v30, v39, v40, v41);
  v46 = objc_msgSend_height(v30, v43, v44, v45);
  *&v47 = 0;
  *(&v47 + 1) = __PAIR64__(v46, v42);
  v67 = v47;
  objc_msgSend_setBytes_length_atIndex_(v28, v48, &v67, 16, 3);
  objc_msgSend_setBuffer_offset_atIndex_(v28, v49, self->_flickerCountBuffer, 0, 4);
  v64 = 1;
  v65 = objc_msgSend_height(v30, v50, v51, v52);
  v66 = vdupq_n_s64(1uLL);
  v63 = xmmword_2958D5BB0;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v28, v53, &v65, &v63);
  objc_msgSend_endEncoding(v28, v54, v55, v56);
  objc_msgSend_commit(v21, v57, v58, v59);

  v60 = 0;
LABEL_4:

  return v60;
}

- (int)computeGrayGhostCount:(id)a3 ev0Bands:(id)a4 evmProperties:(const frameProperties_t *)a5 ev0Properties:(const frameProperties_t *)a6 atBand:(int)a7 nrfPlist:(id)a8 size:(int *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v21 = objc_msgSend_commandQueue(self->_metal, v18, v19, v20);
  v25 = objc_msgSend_commandBuffer(v21, v22, v23, v24);

  if (!v25)
  {
    sub_2958C6118(v97);
LABEL_11:
    v90 = v97[0];
    goto LABEL_6;
  }

  v29 = objc_msgSend_computeCommandEncoder(v25, v26, v27, v28);
  if (!v29)
  {
    sub_2958C607C(v97);
    goto LABEL_11;
  }

  v32 = v29;
  objc_msgSend_setComputePipelineState_(v29, v30, self->_computeGrayGhostCount, v31);
  if (!a5->meta.isEVMFrame)
  {
    sub_2958C5F14(v32, v97);
    goto LABEL_11;
  }

  if (a6->meta.isEVMFrame)
  {
    sub_2958C5FC8(v32, v97);
    goto LABEL_11;
  }

  v92 = v25;
  v33 = v17;
  v34 = v15[a7 + 42];
  v35 = v15[a7 + 62];
  v94 = v15;
  v36 = v16[a7 + 42];
  v37 = v16[a7 + 62];
  v38 = v36;
  v39 = v35;
  v93 = v16;
  v40 = v34;
  objc_msgSend_setTexture_atIndex_(v32, v41, v40, 0);
  objc_msgSend_setTexture_atIndex_(v32, v42, v39, 1);
  objc_msgSend_setTexture_atIndex_(v32, v43, v38, 2);
  objc_msgSend_setTexture_atIndex_(v32, v44, v37, 3);
  objc_msgSend_setBytes_length_atIndex_(v32, v45, &a5[1].meta.exposureParams.conversion_gain, 48, 0);
  objc_msgSend_setBytes_length_atIndex_(v32, v46, &a6[1].meta.exposureParams.conversion_gain, 48, 1);
  v101 = sub_295820728(&a5->meta.exposureParams, &a6->meta.exposureParams, a5);
  objc_msgSend_setBytes_length_atIndex_(v32, v47, &v101, 4, 2);
  v48 = v33[3];
  LODWORD(v49) = v48[9];
  HIDWORD(v49) = v48[8];
  v100 = v48[10];
  v99 = v49;
  objc_msgSend_setBytes_length_atIndex_(v32, v50, &v99, 16, 3);
  v54 = objc_msgSend_width(v37, v51, v52, v53);
  v58 = objc_msgSend_width(v37, v55, v56, v57);
  v62 = objc_msgSend_height(v37, v59, v60, v61);
  v66 = objc_msgSend_height(v37, v63, v64, v65);
  v67.i64[0] = v62;
  v17 = v33;
  v25 = v92;
  v67.i64[1] = v66;
  v68.i64[0] = v54;
  v68.i64[1] = v58;
  v98 = vcvtq_u32_f32(vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v68)), vcvtq_f64_u64(v67)), xmmword_2959D5F10));
  objc_msgSend_setBytes_length_atIndex_(v32, v69, &v98, 16, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v32, v70, self->_grayGhostCountBuffer, 0, 5);
  v97[0] = (objc_msgSend_width(v37, v71, v72, v73) + 7) >> 3;
  v97[1] = (objc_msgSend_height(v37, v74, v75, v76) + 7) >> 3;
  v97[2] = 1;
  v95 = vdupq_n_s64(8uLL);
  v96 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v32, v77, v97, &v95);
  objc_msgSend_endEncoding(v32, v78, v79, v80);
  objc_msgSend_commit(v92, v81, v82, v83);
  LODWORD(v54) = objc_msgSend_width(v38, v84, v85, v86);
  *a9 = objc_msgSend_height(v38, v87, v88, v89) * v54;

  v16 = v93;
  v15 = v94;

  v90 = 0;
LABEL_6:

  return v90;
}

- (int)runStationaryFusionWithParams:(const FusionRemixStageUniformsIBP *)a3 inputs:(id)a4 fusedLumaTex:(id)a5 fusedChromaTex:(id)a6 noiseMapLumaTex:(id)a7 noiseMapChromaTex:(id)a8 accWeightLumaTex:(id)a9 accWeightChromaTex:(id)a10 inferenceLumaTex:(id)a11 inferenceChromaTex:(id)a12 batchN:(int)a13
{
  v241 = a4;
  v19 = a5;
  v20 = a6;
  v236 = a7;
  v235 = a8;
  v21 = a9;
  v22 = a10;
  v234 = a11;
  v242 = a12;
  v248 = 0;
  v249 = 0;
  v26 = objc_msgSend_allocator(self->_metal, v23, v24, v25);
  v30 = objc_msgSend_newTextureDescriptor(v26, v27, v28, v29);

  if (!v30)
  {
    sub_2958C6F28(&v245);
LABEL_32:
    v230 = v245;
    goto LABEL_29;
  }

  v34 = objc_msgSend_desc(v30, v31, v32, v33);
  objc_msgSend_setUsage_(v34, v35, 7, v36);

  v40 = objc_msgSend_width(v19, v37, v38, v39);
  v44 = objc_msgSend_desc(v30, v41, v42, v43);
  objc_msgSend_setWidth_(v44, v45, v40, v46);

  v50 = objc_msgSend_height(v19, v47, v48, v49);
  v54 = objc_msgSend_desc(v30, v51, v52, v53);
  objc_msgSend_setHeight_(v54, v55, v50, v56);

  v60 = objc_msgSend_desc(v30, v57, v58, v59);
  objc_msgSend_setPixelFormat_(v60, v61, 25, v62);

  objc_msgSend_setLabel_(v30, v63, 0, v64);
  v68 = objc_msgSend_allocator(self->_metal, v65, v66, v67);
  v71 = objc_msgSend_newTextureWithDescriptor_(v68, v69, v30, v70);
  v249 = v71;

  if (!v71)
  {
    sub_2958C6E8C(&v245);
    goto LABEL_32;
  }

  v75 = objc_msgSend_allocator(self->_metal, v72, v73, v74);
  v78 = objc_msgSend_newTextureDescriptor_(v75, v76, 0, v77);

  if (!v78)
  {
    sub_2958C6DF0(&v245);
    v230 = v245;
LABEL_35:
    v152 = v235;
    v150 = v236;
    v215 = v234;

    goto LABEL_25;
  }

  v240 = v19;
  v82 = objc_msgSend_desc(v78, v79, v80, v81);
  objc_msgSend_setUsage_(v82, v83, 7, v84);

  v88 = objc_msgSend_width(v20, v85, v86, v87);
  v92 = objc_msgSend_desc(v78, v89, v90, v91);
  objc_msgSend_setWidth_(v92, v93, v88, v94);

  v98 = objc_msgSend_height(v20, v95, v96, v97);
  v102 = objc_msgSend_desc(v78, v99, v100, v101);
  objc_msgSend_setHeight_(v102, v103, v98, v104);

  v108 = objc_msgSend_desc(v78, v105, v106, v107);
  objc_msgSend_setPixelFormat_(v108, v109, 65, v110);

  objc_msgSend_setLabel_(v78, v111, 0, v112);
  v116 = objc_msgSend_allocator(self->_metal, v113, v114, v115);
  v118 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v116, v117, v78, 0);
  v248 = v118;

  if (!v118)
  {
    sub_2958C6D54(&v245);
    v230 = v245;
    v19 = v240;
    goto LABEL_35;
  }

  v19 = v240;
  if ((BYTE2(a3[2].blurryFrameWeight[1]) & 1) == 0)
  {
    sub_2958C6AD8();
LABEL_28:
    v230 = -12782;
LABEL_29:
    v152 = v235;
    v150 = v236;
    v215 = v234;
    goto LABEL_25;
  }

  v122 = LODWORD(a3[2].exposureEffectiveTime[0]);
  if (v122 >= 1)
  {
    p_nonLinearPower = &a3[3].config.colorSpaceConversionParameters[0].transferFunctionInv.nonLinearPower;
    p_fusionBoostMatchedTexture = &a3->patchBasedFusionParameters.fusionBoostMatchedTexture;
    while (1)
    {
      v126 = *p_fusionBoostMatchedTexture;
      p_fusionBoostMatchedTexture += 52;
      if ((v126 & 1) == 0)
      {
        sub_2958C6B3C();
        goto LABEL_28;
      }

      v124 = *(&a3[3].config.colorSpaceConversionParameters[0].transferFunctionInv.nonLinearPower + SLODWORD(a3[2].blurryFrameWeight[0]));
      if ((vabds_f32(*p_nonLinearPower, v124) / v124) >= 0.05)
      {
        break;
      }

      ++p_nonLinearPower;
      if (!--v122)
      {
        goto LABEL_11;
      }
    }

    sub_2958C6CF0();
    goto LABEL_28;
  }

LABEL_11:
  v127 = objc_msgSend_sharedInstance(FusionRemixStageShared, v119, v120, v121);
  v129 = objc_msgSend_getShaders_fp16_(v127, v128, self->_metal, 1);

  if (!v129)
  {
    sub_2958C6C54(&v245);
LABEL_39:
    v230 = v245;
    v19 = v240;
    goto LABEL_29;
  }

  v237 = v71;
  v133 = objc_msgSend_commandQueue(self->_metal, v130, v131, v132);
  v137 = objc_msgSend_commandBuffer(v133, v134, v135, v136);

  if (!v137)
  {
    sub_2958C6BA0(v129, &v245);
    goto LABEL_39;
  }

  v239 = v129;
  v233 = v30;
  v141 = v21;
  v232 = v137;
  v143 = objc_msgSend_computeCommandEncoder(v137, v138, v139, v140);
  v144 = 0;
  p_placeHolderTex = &self->_placeHolderTex;
  v146 = v241 + 8;
  do
  {
    if (v144 >= SLODWORD(a3[2].exposureEffectiveTime[0]))
    {
      objc_msgSend_setTexture_atIndex_(v143, v142, *p_placeHolderTex, v144);
      v148 = p_placeHolderTex;
    }

    else
    {
      objc_msgSend_setTexture_atIndex_(v143, v142, *(*&v146[8 * v144] + 336), v144);
      v148 = (*&v146[8 * v144] + 496);
    }

    objc_msgSend_setTexture_atIndex_(v143, v147, *v148, v144 + 4);
    ++v144;
  }

  while (v144 != 4);
  v19 = v240;
  objc_msgSend_setTexture_atIndex_(v143, v142, v240, 21);
  objc_msgSend_setTexture_atIndex_(v143, v149, v20, 22);
  v150 = v236;
  objc_msgSend_setTexture_atIndex_(v143, v151, v236, 23);
  v152 = v235;
  objc_msgSend_setTexture_atIndex_(v143, v153, v235, 24);
  objc_msgSend_setTexture_atIndex_(v143, v154, v237, 25);
  v21 = v141;
  objc_msgSend_setTexture_atIndex_(v143, v155, v141, 26);
  objc_msgSend_setTexture_atIndex_(v143, v156, v118, 27);
  objc_msgSend_setTexture_atIndex_(v143, v157, v22, 28);
  objc_msgSend_setBytes_length_atIndex_(v143, v158, a3, 1520, 0);
  objc_msgSend_setImageblockWidth_height_(v143, v159, 32, 32);
  v162 = v239;
  if (a13)
  {
    objc_msgSend_setComputePipelineState_(v143, v160, v239[262], v161);
    v245 = objc_msgSend_width(v118, v163, v164, v165);
    v246 = objc_msgSend_height(v118, v166, v167, v168);
    v247 = 1;
    v238 = vdupq_n_s64(0x10uLL);
    v243 = v238;
    v244 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v143, v169, &v245, &v243);
    objc_msgSend_setComputePipelineState_(v143, v170, v239[263], v171);
    v175 = objc_msgSend_width(v22, v172, v173, v174);
    v179 = objc_msgSend_height(v22, v176, v177, v178);
    v245 = v175;
    v246 = v179;
    v247 = 1;
    v243 = v238;
    v244 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v143, v180, &v245, &v243);
    objc_msgSend_setComputePipelineState_(v143, v181, v239[259], v182);
    v186 = objc_msgSend_width(v20, v183, v184, v185);
    v190 = objc_msgSend_height(v20, v187, v188, v189);
    v245 = v186;
    v246 = v190;
    v247 = 1;
    v243 = v238;
    v244 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v143, v191, &v245, &v243);
    objc_msgSend_setComputePipelineState_(v143, v192, v239[261], v193);
  }

  else
  {
    objc_msgSend_setComputePipelineState_(v143, v160, v239[258], v161);
    v245 = objc_msgSend_width(v20, v197, v198, v199);
    v246 = objc_msgSend_height(v20, v200, v201, v202);
    v247 = 1;
    v238 = vdupq_n_s64(0x10uLL);
    v243 = v238;
    v244 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v143, v203, &v245, &v243);
    objc_msgSend_setComputePipelineState_(v143, v204, v239[260], v205);
  }

  v206 = objc_msgSend_width(v21, v194, v195, v196);
  v210 = objc_msgSend_height(v21, v207, v208, v209);
  v245 = v206;
  v246 = v210;
  v247 = 1;
  v243 = v238;
  v244 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v143, v211, &v245, &v243);
  v215 = v234;
  if (v234 && v242)
  {
    objc_msgSend_setComputePipelineState_(v143, v212, v239[264], v214);
    objc_msgSend_setTexture_atIndex_(v143, v216, v234, 29);
    objc_msgSend_setTexture_atIndex_(v143, v217, v242, 30);
    v221 = objc_msgSend_width(v242, v218, v219, v220);
    v162 = v239;
    v225 = objc_msgSend_height(v242, v222, v223, v224);
    v245 = v221;
    v246 = v225;
    v247 = 1;
    v243 = vdupq_n_s64(0x10uLL);
    v244 = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v143, v226, &v245, &v243);
  }

  objc_msgSend_endEncoding(v143, v212, v213, v214);
  objc_msgSend_commit(v232, v227, v228, v229);
  FigMetalDecRef();
  FigMetalDecRef();

  v230 = 0;
  v30 = v233;
LABEL_25:

  return v230;
}

- (int)prepareForFusion:(id)a3 config:(const FusionConfiguration *)a4 fusedPyramid:(id)a5 properties:(const frameProperties_t *)a6 nrfPlist:(id)a7 staticScene:(BOOL)a8 isLowLight:(BOOL)a9
{
  v14 = a3;
  v15 = a5;
  v17 = a7;
  if (LODWORD(a4[4].colorSpaceConversionParameters[2].transferFunctionFwd.nonLinearPower))
  {
    if (SLODWORD(a4[4].colorSpaceConversionParameters[1].finalScaleFwd) >= 5)
    {
      sub_2958C710C(&v40);
      v38 = v40;
    }

    else
    {
      v18 = v15[2];
      isLowLight = objc_msgSend_computeFusionParams_properties_config_fusionMode_staticScene_isLowLight_(self, v16, v17, a6, a4);
      if (isLowLight)
      {
        v38 = isLowLight;
        sub_2958C6FC4();
      }

      else
      {
        memcpy(&self->_vertexUniforms, a4, 0x540uLL);
        v23 = objc_msgSend_width(*(v14[1] + 336 + 8 * (v18 - 1)), v20, v21, v22);
        v27 = objc_msgSend_height(*(v14[1] + 336 + 8 * (v18 - 1)), v24, v25, v26);
        v31 = objc_msgSend_width(*&v15[2 * v18 + 82], v28, v29, v30);
        v35 = objc_msgSend_height(*&v15[2 * v18 + 82], v32, v33, v34);
        if (v23 == v31 && v27 == v35)
        {
          v38 = 0;
        }

        else
        {
          sub_2958C7070(&v39);
          v38 = v39;
        }
      }
    }
  }

  else
  {
    sub_2958C71A8(&v41);
    v38 = v41;
  }

  return v38;
}

- (int)selectNRFFusionReferenceFrame:(id)a3 ev0Bands:(id)a4 evmProperties:(const frameProperties_t *)a5 ev0Properties:(const frameProperties_t *)a6 nrfPlist:(id)a7 outputFusionMode:(int *)a8 staticScene:(BOOL *)a9 motionDetection:(id)a10 grayGhostDetection:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a7;
  v49 = a10;
  v20 = a11;
  v52 = 0;
  *objc_msgSend_contents(self->_flickerCountBuffer, v21, v22, v23) = 0;
  nrfConfig = self->_nrfConfig;
  if (nrfConfig->_enableFlickerDetection)
  {
    if (objc_msgSend_detectFlicker_ev0Bands_evmProperties_ev0Properties_height_(self, v24, v17, v18, a5, a6, &v52))
    {
      sub_2958C7244(v51);
      v47 = v51[0];
      goto LABEL_27;
    }

    nrfConfig = self->_nrfConfig;
  }

  if (nrfConfig->_enableGrayGhostDetection)
  {
    v28 = v19[3];
    v51[0] = v28[9];
    v51[1] = v28[8];
    v51[2] = v28[10];
    if (objc_msgSend_runGrayGhostDetection_ev0Bands_evmProperties_ev0Properties_hasChromaBias_atBand_params_(v20, v24, v17, v18, a5, a6, LODWORD(a6[1].meta.ROI.origin.y) != 2, 2, v51))
    {
      sub_2958C72E0(v51, &v53);
      v47 = v53;
      goto LABEL_27;
    }
  }

  objc_msgSend_waitForIdle(self->_metal, v24, v25, v26);
  v32 = 0.0;
  if (self->_nrfConfig->_enableGrayGhostDetection)
  {
    objc_msgSend_getGrayGhostResultSync(v20, v29, v30, v31);
    v32 = v33;
  }

  v34 = objc_msgSend_contents(self->_flickerCountBuffer, v29, v30, v31);
  v36 = v19[3];
  v37 = *(v36 + 28);
  if (v32 < v37)
  {
    v38 = 1;
  }

  else
  {
    v38 = 2;
  }

  if ((*v34 / v52) > 0.08 && v32 >= v37)
  {
    v47 = FigSignalErrorAtGM();
LABEL_27:
    v43 = v49;
    goto LABEL_32;
  }

  v40 = *(v36 + 44);
  v50 = 0.0;
  v41 = v40 == 1 && v32 < v37;
  if ((v41 || self->_nrfConfig->_forceEnableMotionDetection) && ((v42 = a5->meta.exposureParams.exposure_time * a5->meta.exposureParams.gain, v42 <= (*(v36 + 56) / 0.98)) && v42 >= (*(v36 + 60) * 0.98) || self->_nrfConfig->_forceEnableMotionDetection))
  {
    v43 = v49;
    v44 = objc_msgSend_runMotionDetection_evm_ev0_evmProperties_ev0Properties_nrfPlist_(v49, v35, &v50, v17[43], v18[43], a5, a6, v19);
    if (v44)
    {
      sub_2958C737C(v44, v51);
      v47 = v51[0];
      goto LABEL_32;
    }

    v45 = v19[3];
    if (v50 >= *(v45 + 76))
    {
      v46 = 0;
      if (v50 > *(v45 + 72))
      {
        v38 = 2;
      }
    }

    else
    {
      v46 = 1;
    }
  }

  else
  {
    v46 = 0;
    v43 = v49;
  }

  v47 = 0;
  *a8 = v38;
  *a9 = v46;
LABEL_32:

  return v47;
}

- (int)correctGTC:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_commandQueue(self->_metal, v5, v6, v7);
  v12 = objc_msgSend_commandBuffer(v8, v9, v10, v11);

  if (!v12)
  {
    sub_2958C74DC(v60);
LABEL_11:
    v55 = v60[0];
    goto LABEL_9;
  }

  if (v4[2] >= 2)
  {
    v16 = v4 + 2;
    v57 = xmmword_2959D5ED0;
    v17 = 1;
    while (1)
    {
      v18 = *(v16 + 42);
      v19 = *(v16 + 62);
      v23 = objc_msgSend_computeCommandEncoder(v12, v20, v21, v22);
      if (!v23)
      {
        break;
      }

      v26 = v23;
      objc_msgSend_setComputePipelineState_(v23, v24, self->_correctGTC, v25);
      objc_msgSend_setTexture_atIndex_(v26, v27, v18, 0);
      objc_msgSend_setTexture_atIndex_(v26, v28, v19, 1);
      v32 = (objc_msgSend_width(v19, v29, v30, v31) + 7) >> 3;
      v36 = objc_msgSend_height(v19, v33, v34, v35);
      v60[0] = v32;
      v60[1] = (v36 + 3) >> 2;
      v60[2] = 1;
      v58 = xmmword_2959D5ED0;
      v59 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v26, v37, v60, &v58);
      objc_msgSend_endEncoding(v26, v38, v39, v40);

      ++v17;
      v16 += 2;
      if (v17 >= v4[2])
      {
        goto LABEL_6;
      }
    }

    sub_2958C7420(v19, v18, v60);
    goto LABEL_11;
  }

LABEL_6:
  if (*MEMORY[0x29EDB9270])
  {
    v41 = objc_msgSend_commandQueue(v12, v13, v14, v15);
    v45 = objc_msgSend_commandBuffer(v41, v42, v43, v44);

    objc_msgSend_setLabel_(v45, v46, @"KTRACE_MTLCMDBUF", v47);
    objc_msgSend_addCompletedHandler_(v45, v48, &unk_2A1CA9880, v49);
    objc_msgSend_commit(v45, v50, v51, v52);
    objc_msgSend_addCompletedHandler_(v12, v53, &unk_2A1CA98A0, v54);
  }

  objc_msgSend_commit(v12, v13, v14, v15, v57);
  v55 = 0;
LABEL_9:

  return v55;
}

- (int)runImageFusion:(id)a3 config:(const FusionConfiguration *)a4 fusedPyramid:(id)a5 accWeightPyramid:(id)a6 buffers:(id)a7 properties:(const frameProperties_t *)a8 nrfPlist:(id)a9 confidence:(id)a10 batchN:(int)a11 isLastBatch:(BOOL)a12 isLowLight:(BOOL)a13 usePatchBasedFusion:(BOOL)a14 outputChromaBias:(float)a15
{
  v395 = a3;
  v21 = a5;
  v386 = a6;
  v397 = a7;
  v25 = a10;
  if (a11)
  {
    v26 = 0;
  }

  else
  {
    v26 = a12;
  }

  v394 = v26;
  v396 = a4;
  v27 = BYTE1(a4[4].colorSpaceConversionParameters[2].transferFunctionInv.linearScale);
  v28 = *(v21 + 2);
  v387 = self;
  v29 = objc_msgSend_allocator(self->_metal, v22, v23, v24);
  v33 = objc_msgSend_newTextureDescriptor(v29, v30, v31, v32);

  if (!v33)
  {
    sub_2958C7FF0(&location);
    v370 = location;
    v372 = v397;
    v44 = v395;
    goto LABEL_132;
  }

  v37 = objc_msgSend_desc(v33, v34, v35, v36);
  objc_msgSend_setUsage_(v37, v38, 7, v39);

  v43 = a11;
  v44 = v395;
  if (!a11 && a13)
  {
    v45 = objc_msgSend_width(*(*(v395 + 1) + 336), v40, v41, v42);
    v49 = objc_msgSend_height(*(*(v395 + 1) + 336), v46, v47, v48);
    sub_29586AF94(v397, v45, v49, v387->_metal, 1, 1);
  }

  if (v27)
  {
    v50 = v397[1];
    v397[1] = 0;

    if (a12)
    {
      if (v21[43])
      {
        sub_2958C7DF0();
      }

      else
      {
        v54 = objc_msgSend_width(*(*(v395 + 1) + 344), v51, v52, v53);
        v58 = objc_msgSend_desc(v33, v55, v56, v57);
        objc_msgSend_setWidth_(v58, v59, v54, v60);

        v64 = objc_msgSend_height(*(*(v395 + 1) + 344), v61, v62, v63);
        v68 = objc_msgSend_desc(v33, v65, v66, v67);
        objc_msgSend_setHeight_(v68, v69, v64, v70);

        v74 = objc_msgSend_desc(v33, v71, v72, v73);
        objc_msgSend_setPixelFormat_(v74, v75, 25, v76);

        objc_msgSend_setLabel_(v33, v77, 0, v78);
        v82 = objc_msgSend_allocator(v387->_metal, v79, v80, v81);
        v85 = objc_msgSend_newTextureWithDescriptor_(v82, v83, v33, v84);
        v86 = v21[43];
        v21[43] = v85;

        if (!v21[43])
        {
          sub_2958C7F54(&location);
          goto LABEL_148;
        }

        if (!v21[63])
        {
          v90 = objc_msgSend_width(*(*(v395 + 1) + 504), v87, v88, v89);
          v94 = objc_msgSend_desc(v33, v91, v92, v93);
          objc_msgSend_setWidth_(v94, v95, v90, v96);

          v100 = objc_msgSend_height(*(*(v395 + 1) + 504), v97, v98, v99);
          v104 = objc_msgSend_desc(v33, v101, v102, v103);
          objc_msgSend_setHeight_(v104, v105, v100, v106);

          v110 = objc_msgSend_desc(v33, v107, v108, v109);
          objc_msgSend_setPixelFormat_(v110, v111, 65, v112);

          objc_msgSend_setLabel_(v33, v113, 0, v114);
          v118 = objc_msgSend_allocator(v387->_metal, v115, v116, v117);
          v121 = objc_msgSend_newTextureWithDescriptor_(v118, v119, v33, v120);
          v122 = v21[63];
          v21[63] = v121;

          if (!v21[63])
          {
            sub_2958C7EB8(&location);
LABEL_148:
            v370 = location;
LABEL_151:
            v372 = v397;
            goto LABEL_132;
          }

          goto LABEL_113;
        }

        sub_2958C7E54();
      }

      v370 = 0;
      goto LABEL_151;
    }

LABEL_113:
    if (a12)
    {
      v366 = v21[43];
      v367 = v21[63];
    }

    else
    {
      v366 = 0;
      v367 = 0;
    }

    v370 = objc_msgSend_runStationaryFusionWithParams_inputs_fusedLumaTex_fusedChromaTex_noiseMapLumaTex_noiseMapChromaTex_accWeightLumaTex_accWeightChromaTex_inferenceLumaTex_inferenceChromaTex_batchN_(v387, v51, &v387->_arrayOfinputParams[3].config.colorSpaceConversionParameters[2].finalScale, v395, v397[4], v397[5], v397[2], v397[3], v386[42], v386[62], v366, v367, a11);
    for (i = 0; i != 32; i += 8)
    {
      objc_msgSend_makePyramidAliasable_metal_releaseBand0_(PyramidStorage_NRF, v369, *&v395[i + 8], v387->_metal, 1);
    }

    v372 = v397;
LABEL_131:
    FigMetalDecRef();
    goto LABEL_132;
  }

  v123 = (v28 - 1);
  v124 = v387;
  v399 = v123;
  if (SLODWORD(a4[4].colorSpaceConversionParameters[1].finalScaleFwd) < 2)
  {
    v368 = v397[1];
    v397[1] = 0;

    if (a11)
    {
      goto LABEL_19;
    }

    goto LABEL_116;
  }

  v125 = objc_msgSend_width(*(*(v395 + 1) + 336), v40, v41, v42) >> 3;
  v129 = objc_msgSend_desc(v33, v126, v127, v128);
  objc_msgSend_setWidth_(v129, v130, v125, v131);

  v135 = objc_msgSend_height(*(*(v395 + 1) + 336), v132, v133, v134) >> 3;
  v139 = objc_msgSend_desc(v33, v136, v137, v138);
  objc_msgSend_setHeight_(v139, v140, v135, v141);

  v145 = objc_msgSend_desc(v33, v142, v143, v144);
  objc_msgSend_setPixelFormat_(v145, v146, 10, v147);

  objc_msgSend_setLabel_(v33, v148, 0, v149);
  v153 = objc_msgSend_allocator(v387->_metal, v150, v151, v152);
  v156 = objc_msgSend_newTextureWithDescriptor_(v153, v154, v33, v155);
  v157 = v397[1];
  v397[1] = v156;

  if (!v397[1])
  {
    sub_2958C7D54(&location);
    goto LABEL_148;
  }

  BYTE6(v384) = 0;
  WORD2(v384) = 257;
  v43 = a11;
  LODWORD(v384) = a11;
  WORD2(v380) = 257;
  LODWORD(v380) = 0;
  v123 = (v28 - 1);
  *&v159 = a15;
  if (objc_msgSend_runFusionForBandIndex_config_oldFusedUpTex_oldFusedTex_fusedUpTex_fusedTex_accWeightTex_bandFusionParams_fragmentBufferIndex_processLuma_processTopBand_computeSpecialMap_inputs_simMapTex_confidence_noiseMap_batchN_isFirstBatch_isLastBatch_usePatchBasedFusion_minVarWeightSum_outputChromaBias_ggMaxFusionWeights_(v387, v158, v399, a4, 0, 0, 0, 0.0, v159, 0, &v387->_anon_e50[6992], v380, 1, v395, v387->_placeHolderTex, 0, 0, v384, 0))
  {
    sub_2958C7884(&location);
    goto LABEL_148;
  }

  if (!a11)
  {
LABEL_116:
    v387->_exposureEffectiveTimeSumSoFar = 0.0;
  }

LABEL_19:
  finalScaleFwd_low = LODWORD(a4[4].colorSpaceConversionParameters[1].finalScaleFwd);
  nonLinearScale_low = LODWORD(a4[4].colorSpaceConversionParameters[2].transferFunctionFwd.nonLinearScale);
  if (finalScaleFwd_low >= 1)
  {
    for (j = 0; j != finalScaleFwd_low; ++j)
    {
      if ((!v43 || nonLinearScale_low != j) && (v43 || j != *&a4[4].colorSpaceConversionParameters[1].outputToLinearYCbCr || (HIBYTE(a4[4].colorSpaceConversionParameters[2].transferFunctionFwd.nonLinearBias) & 1) == 0))
      {
        v387->_exposureEffectiveTimeSumSoFar = *(&v387->_arrayOfinputParams[6].config.colorSpaceConversionParameters[4].transferFunctionFwd.nonLinearBias + j) + v387->_exposureEffectiveTimeSumSoFar;
      }
    }
  }

  exposureEffectiveTimeSumSoFar = v387->_exposureEffectiveTimeSumSoFar;
  v167 = *(&v387->_arrayOfinputParams[6].config.colorSpaceConversionParameters[4].transferFunctionFwd.nonLinearBias + nonLinearScale_low);
  v403 = 0;
  location = 0;
  if (v28 >= 1)
  {
    v401 = 0;
    v400 = 0;
    arrayOfinputParams = v387->_arrayOfinputParams;
    v168 = v395 + 8;
    v169 = v123;
    v170 = exposureEffectiveTimeSumSoFar / v167;
    v402 = v21;
    v393 = v25;
    while (1)
    {
      if (v169)
      {
        v171 = v169 == v123;
      }

      else
      {
        v171 = 1;
      }

      v172 = a11 != 0;
      if (v171)
      {
        v172 = 1;
      }

      if (v172)
      {
        if (!v169)
        {

          v176 = a11;
          if (a11)
          {
            v398 = 0;
            v177 = 0;
            v388 = 1;
            v178 = v397 + 4;
            v179 = v397;
          }

          else
          {
            v361 = objc_msgSend_width(*(*v168 + 336), v173, v174, v175);
            v365 = objc_msgSend_height(*(*v168 + 336), v362, v363, v364);
            v179 = v397;
            sub_29586AF94(v397, v361, v365, v124->_metal, 1, 0);
            v398 = 0;
            v177 = 0;
            v388 = 0;
            v178 = v397 + 4;
          }

          goto LABEL_48;
        }
      }

      else
      {
        if (v21[v169 + 42])
        {
          sub_2958C7920();
          v378 = 0;
          v370 = 0;
          goto LABEL_129;
        }

        v180 = objc_msgSend_width(*(*v168 + 336 + 8 * v169), v160, v161, v162);
        v184 = objc_msgSend_desc(v33, v181, v182, v183);
        objc_msgSend_setWidth_(v184, v185, v180, v186);

        v190 = objc_msgSend_height(*(*v168 + 336 + 8 * v169), v187, v188, v189);
        v194 = objc_msgSend_desc(v33, v191, v192, v193);
        objc_msgSend_setHeight_(v194, v195, v190, v196);

        v200 = objc_msgSend_desc(v33, v197, v198, v199);
        objc_msgSend_setPixelFormat_(v200, v201, 25, v202);

        objc_msgSend_setLabel_(v33, v203, 0, v204);
        v208 = objc_msgSend_allocator(v124->_metal, v205, v206, v207);
        v211 = objc_msgSend_newTextureWithDescriptor_(v208, v209, v33, v210);
        v212 = v21[v169 + 42];
        v21[v169 + 42] = v211;

        if (!v21[v169 + 42])
        {
          sub_2958C7984(v405);
LABEL_141:
          v378 = 0;
          v370 = v405[0];
LABEL_129:
          v44 = v395;
          goto LABEL_130;
        }
      }

      if (v169 == 1)
      {
        v213 = 0;
      }

      else
      {
        v213 = 255;
      }

      v214 = objc_msgSend_allocator(v124->_metal, v160, v161, v162);
      v217 = objc_msgSend_newTextureDescriptor_(v214, v215, v213, v216);

      if (!v217)
      {
        sub_2958C7ABC(v405);
        v370 = v405[0];
        v21 = v402;
LABEL_138:

        v378 = 0;
        goto LABEL_129;
      }

      v221 = objc_msgSend_desc(v217, v218, v219, v220);
      objc_msgSend_setUsage_(v221, v222, 7, v223);

      v227 = objc_msgSend_width(v402[v169 + 42], v224, v225, v226);
      v231 = objc_msgSend_desc(v217, v228, v229, v230);
      objc_msgSend_setWidth_(v231, v232, v227, v233);

      v237 = objc_msgSend_height(v402[v169 + 42], v234, v235, v236);
      v241 = objc_msgSend_desc(v217, v238, v239, v240);
      objc_msgSend_setHeight_(v241, v242, v237, v243);

      v247 = objc_msgSend_desc(v217, v244, v245, v246);
      objc_msgSend_setPixelFormat_(v247, v248, 25, v249);

      objc_msgSend_setLabel_(v217, v250, 0, v251);
      v255 = objc_msgSend_allocator(v124->_metal, v252, v253, v254);
      v177 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v255, v256, v217, v213);

      if (!v177)
      {
        sub_2958C7A20(v405);
        v400 = 0;
        v370 = v405[0];
        v21 = v402;
        v25 = v393;
        goto LABEL_138;
      }

      v178 = &v402[v169 + 42];
      v398 = 1;
      v388 = 1;
      v179 = v397;
      v176 = a11;
LABEL_48:
      v257 = *v178;
      v260 = 0;
      v261 = v169 == v399 || v176 == 0;
      if (v261)
      {
        v262 = 0;
      }

      else
      {
        v262 = location;
      }

      if (v169)
      {
        v263 = v176 == 0;
      }

      else
      {
        v263 = 1;
      }

      v264 = v399;
      v389 = v263;
      v390 = v261;
      if (v263)
      {
        v265 = 0;
      }

      else
      {
        v265 = v177;
      }

      if (v169 != v399)
      {
        v260 = v402[v169 + 43];
      }

      if (v394)
      {
        v266 = 0;
      }

      else
      {
        v266 = v386[v169 + 42];
      }

      v400 = v177;
      placeHolderTex = v179[1];
      if (!placeHolderTex)
      {
        placeHolderTex = v124->_placeHolderTex;
      }

      v268 = a14;
      if (v169)
      {
        v268 = 0;
      }

      BYTE6(v384) = v268;
      BYTE5(v384) = a12;
      BYTE4(v384) = v176 == 0;
      LODWORD(v384) = v176;
      LODWORD(v382) = 0;
      BYTE5(v380) = v169 == v399;
      BYTE4(v380) = 1;
      LODWORD(v380) = 2 * v169 + 3;
      *&v258 = v170;
      *&v259 = a15;
      v391 = v257;
      if (objc_msgSend_runFusionForBandIndex_config_oldFusedUpTex_oldFusedTex_fusedUpTex_fusedTex_accWeightTex_bandFusionParams_fragmentBufferIndex_processLuma_processTopBand_computeSpecialMap_inputs_simMapTex_confidence_noiseMap_batchN_isFirstBatch_isLastBatch_usePatchBasedFusion_minVarWeightSum_outputChromaBias_ggMaxFusionWeights_(v124, v257, v169, v396, v262, v265, v260, v257, v258, v259, v266, arrayOfinputParams + 1520 * ((2 * (v169 & 0x3FFFFFFFFFFFFFFFLL)) | 1), v380, v382, v395, placeHolderTex, v393, v179[2], v384, v179[6]))
      {
        sub_2958C7B58();
LABEL_134:
        v378 = 0;
        v370 = v405[0];
        v44 = v395;
        v21 = v402;
        v25 = v393;
        goto LABEL_130;
      }

      FigMetalDecRef();
      objc_storeStrong(&location, v177);
      if (v169 < v399)
      {
        for (k = 0; k != 32; k += 8)
        {
          v273 = *&v168[k] + 336;
          FigMetalDecRef();
        }

        v264 = v399;
        if (v398 & a12)
        {
          FigMetalDecRef();
        }
      }

      v274 = a11 != 0;
      if (!v169)
      {
        v274 = 1;
      }

      if (!v274 && v169 != v264)
      {
        v275 = v402[v169 + 62];
        if ((FigMetalIsValid() & 1) == 0)
        {
          v276 = objc_msgSend_width(*(*v168 + 496 + 8 * v169), v269, v270, v271);
          v280 = objc_msgSend_desc(v33, v277, v278, v279);
          objc_msgSend_setWidth_(v280, v281, v276, v282);

          v286 = objc_msgSend_height(*(*v168 + 496 + 8 * v169), v283, v284, v285);
          v290 = objc_msgSend_desc(v33, v287, v288, v289);
          objc_msgSend_setHeight_(v290, v291, v286, v292);

          v296 = objc_msgSend_desc(v33, v293, v294, v295);
          objc_msgSend_setPixelFormat_(v296, v297, 65, v298);

          objc_msgSend_setLabel_(v33, v299, 0, v300);
          v304 = objc_msgSend_allocator(v387->_metal, v301, v302, v303);
          v124 = v387;
          v307 = objc_msgSend_newTextureWithDescriptor_(v304, v305, v33, v306);
          v308 = v402[v169 + 62];
          v402[v169 + 62] = v307;

          if (!v402[v169 + 62])
          {
            sub_2958C7BF8();
            goto LABEL_134;
          }
        }
      }

      if (v398)
      {
        v309 = objc_msgSend_width(v402[v169 + 62], v269, v270, v271);
        v313 = objc_msgSend_desc(v33, v310, v311, v312);
        objc_msgSend_setWidth_(v313, v314, v309, v315);

        v179 = v397;
        v319 = objc_msgSend_height(v402[v169 + 62], v316, v317, v318);
        v323 = objc_msgSend_desc(v33, v320, v321, v322);
        objc_msgSend_setHeight_(v323, v324, v319, v325);

        v329 = objc_msgSend_desc(v33, v326, v327, v328);
        objc_msgSend_setPixelFormat_(v329, v330, 65, v331);

        objc_msgSend_setLabel_(v33, v332, 0, v333);
        v337 = objc_msgSend_allocator(v387->_metal, v334, v335, v336);
        v124 = v387;
        v340 = objc_msgSend_newTextureWithDescriptor_(v337, v338, v33, v339);

        v401 = v340;
      }

      else
      {
        v337 = v401;
        v401 = 0;
      }

      if ((v388 & 1) == 0)
      {
        v344 = objc_msgSend_width(*(*v168 + 336), v341, v342, v343);
        v348 = objc_msgSend_height(*(*v168 + 336), v345, v346, v347);
        sub_29586AF94(v179, v344, v348, v124->_metal, 0, 1);
      }

      v349 = v397 + 5;
      v123 = v399;
      if (v169)
      {
        v349 = &v402[v169 + 62];
      }

      v351 = *v349;
      v353 = 0;
      v21 = v402;
      if (v390)
      {
        v354 = 0;
      }

      else
      {
        v354 = v403;
      }

      if (v389)
      {
        v355 = 0;
      }

      else
      {
        v355 = v401;
      }

      if (v169 != v399)
      {
        v353 = v402[v169 + 63];
      }

      if (v394)
      {
        v356 = 0;
      }

      else
      {
        v356 = v386[v169 + 62];
      }

      v357 = v397[1];
      if (!v357)
      {
        v357 = v124->_placeHolderTex;
      }

      *(&v385 + 5) = a12;
      BYTE4(v385) = a11 == 0;
      LODWORD(v385) = a11;
      v25 = v393;
      LODWORD(v383) = 0;
      BYTE5(v381) = v169 == v399;
      BYTE4(v381) = 0;
      LODWORD(v381) = 2 * v169 + 2;
      *&v352 = a15;
      if (objc_msgSend_runFusionForBandIndex_config_oldFusedUpTex_oldFusedTex_fusedUpTex_fusedTex_accWeightTex_bandFusionParams_fragmentBufferIndex_processLuma_processTopBand_computeSpecialMap_inputs_simMapTex_confidence_noiseMap_batchN_isFirstBatch_isLastBatch_usePatchBasedFusion_minVarWeightSum_outputChromaBias_ggMaxFusionWeights_(v124, v350, v169, v396, v354, v355, v353, v351, 0.0, v352, v356, arrayOfinputParams + 3040 * v169, v381, v383, v395, v357, v393, v397[3], v385, v397[6]))
      {
        sub_2958C7C98(v351, v391, v405);
        goto LABEL_141;
      }

      FigMetalDecRef();
      objc_storeStrong(&v403, v401);
      if (v169 < v399)
      {
        for (m = 0; m != 32; m += 8)
        {
          v359 = *&v168[m] + 496;
          FigMetalDecRef();
        }

        v123 = v399;
        if (v398 & a12)
        {
          FigMetalDecRef();
        }
      }

      if (v393)
      {
        FigMetalDecRef();
      }

      if (v169-- < 1)
      {
        goto LABEL_122;
      }
    }
  }

  v400 = 0;
  v401 = 0;
LABEL_122:
  if (*(v21 + 2) < 1)
  {
    v370 = 0;
    v378 = 1;
    goto LABEL_129;
  }

  v373 = 0;
  v44 = v395;
  v374 = v395 + 8;
  do
  {
    for (n = 0; n != 32; n += 8)
    {
      v376 = *&v374[n] + 336;
      FigMetalDecRef();
      v377 = *&v374[n] + 496;
      FigMetalDecRef();
    }

    ++v373;
  }

  while (v373 < *(v21 + 2));
  v370 = 0;
  v378 = 1;
LABEL_130:

  v372 = v397;
  if (v378)
  {
    goto LABEL_131;
  }

LABEL_132:

  return v370;
}

- (SidecarWriter)sidecarWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);

  return WeakRetained;
}

@end