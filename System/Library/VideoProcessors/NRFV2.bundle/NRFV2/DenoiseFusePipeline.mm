@interface DenoiseFusePipeline
+ (int)prewarmShaders:(id)a3;
+ (unint64_t)calculateBackingBufferSizeForDesc:(id)a3 nrfConfig:(id)a4 metal:(id)a5;
- (DenoiseFusePipeline)initWithContext:(id)a3 nrfConfig:(id)a4 dasTuningOptions:(id)a5 toneMappingOptions:(id)a6;
- (SidecarWriter)sidecarWriter;
- (id)_runInferenceProvider:(id)a3;
- (id)getAMBNRStage:(const DenoiseRemixStageOptions *)a3;
- (int)_freeInputBandPyramidForFrame:(int)a3;
- (int)allocateCoallesedFusionInputPyramidsForWidth:(unint64_t)a3 height:(unint64_t)a4 levels:(int)a5 frames:(int)a6;
- (int)allocateResourcesIfNeededForDesc:(id)a3 didAllocate:(BOOL *)a4;
- (int)applyGlobalDistortionCorrectionInplaceWithPixelBuffer:(__CVBuffer *)a3 amount:(float)a4 gdcPlist:(id)a5 cscParams:(const ColorSpaceConversionParameters *)a6;
- (int)baseLayer:(__CVBuffer *)a3;
- (int)collectSyntheticReferenceDetectorsResultsSync:(float *)a3 srMode:(int *)a4 nrfPlist:(id)a5;
- (int)computeMotionScore:(int)a3 ev0FrameIndex:(int)a4 evmProperties:(const frameProperties_t *)a5 ev0Properties:(const frameProperties_t *)a6 motionScore:(float *)a7 nrfPlist:(id)a8;
- (int)createPyramidForFrame:(id)a3 cfp:(const frameProperties_t *)a4;
- (int)denoiseFrameWithOutput:(id)a3 input:(id)a4 localGainMap:(id)a5 skinMask:(id)a6 skyMask:(id)a7 maskExtent:(CGRect)a8 exposure:(const exposureParameters *)a9 staticScene:(BOOL)a10 nrfPlist:(id)a11 defringeEnabled:(BOOL)a12 isLowLight:(BOOL)a13 greenGhostEnabled:(BOOL)a14 faceLandMarks:(id)a15 ev0FrameMetadata:(const frameMetadata *)a16 evmFrameMetadata:(const frameMetadata *)a17 gainMap:(id)a18;
- (int)denoiseSingleImage:(__CVBuffer *)a3 linearOutput:(__CVBuffer *)a4 input:(__CVBuffer *)a5 cfp:(frameProperties_t *)a6 nrfPlist:(id)a7 style:(id)MetalYCbCrFormat inferenceProvider:(id)a9 defringeEnabled:(BOOL)a10 colorCubeFixType:(int)a11;
- (int)doDeepFusionProxyAsset:(id)a3 syntheticReference:(id)a4 evmProperties:(const frameProperties_t *)a5 ev0Properties:(const frameProperties_t *)a6 inferenceResults:(id)a7 style:(id)a8 nrfPlist:(id)a9;
- (int)doDeepFusionPyramidGeneration:(const FusionConfiguration *)a3 properties:(const frameProperties_t *)a4 syntheticReferenceFramesOnly:(BOOL)a5 pyramidHasBeenBuiltArray:(BOOL *)a6;
- (int)doGainMap:(const FusionConfiguration *)a3 properties:(const frameProperties_t *)a4 output:(id)a5 outputHeadroom:(float *)a6 nrfPlist:(id)a7 useFusedFrame:(BOOL)a8;
- (int)doSyntheticLong:(id)a3 noiseDivisorTex:(id)a4 realLongNoiseDivisorTex:(id)a5 lscGainsTex:(id)a6 config:(const FusionConfiguration *)a7 properties:(const frameProperties_t *)a8 motionScore:(float)a9 nrfPlist:(id)a10 intermediateMetadata:(id)a11;
- (int)downsampleBand0Frame:(id)a3 sourceFrameIndex:(int)a4;
- (int)freeInputBandPyramids;
- (int)fuseFramesWithConfig:(const FusionConfiguration *)a3 properties:(frameProperties_t *)a4 nrfPlist:(id)a5 batchN:(int)a6 isLastBatch:(BOOL)a7 usePatchBasedFusion:(BOOL)a8 isLowLight:(BOOL)a9;
- (int)greenGhostMitigationWithRefIndex:(int)a3 bracketIndex:(int)a4 refProperties:(frameProperties_t *)a5 otherProperties:(frameProperties_t *)a6 tuningParams:(id)a7;
- (int)lowLightHybridRegister:(int)a3 refFrameIdx:(int)a4 nonRefFrameProps:(frameProperties_t *)a5 refFrameProps:(const frameProperties_t *)a6 canCopyBack:(BOOL)a7 nrfPlist:(id)a8;
- (int)sanityCheckRansacColorModel:(RansacModel *)a3;
- (int)selectNRFFusionReferenceFrame:(int)a3 ev0FrameIndex:(int)a4 evmProperties:(const frameProperties_t *)a5 ev0Properties:(frameProperties_t *)a6 nrfPlist:(id)a7;
- (int)startSyntheticReferenceDetectors:(const FusionConfiguration *)a3 properties:(const frameProperties_t *)a4 nrfPlist:(id)a5;
- (int)toneMapAndDenoiseFusedFramesWithConfig:(const FusionConfiguration *)a3 properties:(const frameProperties_t *)a4 nrfPlist:(id)a5 style:(id)a6 output:(__CVBuffer *)a7 inferenceProvider:(id)a8 colorCubeFixType:(int)a9 isLowLight:(BOOL)a10 gainMap:(id)a11;
- (int)toneMapBand1Frame:(id)a3 properties:(const frameProperties_t *)a4 sourceFrameType:(int)a5 sourceFrameIndex:(int)a6 ltcFrameIndex:(int)a7 gtcFrameIndex:(int)a8 nrfPlist:(id)a9;
- (uint64_t)deepFusionBuildNoiseMap:(double)a3 lscGainsTex:(uint64_t)a4 config:(void *)a5 evmProperties:(void *)a6 evmGreenTintAdjustment:(uint64_t)a7 ev0Properties:(uint64_t)a8 nrfPlist:(uint64_t)a9;
- (uint64_t)doSyntheticReference:(double)a3 noiseDivisorOutputTex:(uint64_t)a4 lscGainsTex:(void *)a5 config:(void *)a6 evmProperties:(void *)a7 evmGreenTintAdjustment:(uint64_t)a8 ev0Properties:(uint64_t)a9 nrfPlist:(uint64_t)a10 intermediateMetadata:(id)a11;
- (unsigned)filterOutlierPairsInPlace:(float *)a3 and:(float *)a4 withMinX:(float)a5 maxX:(float)a6 inputSize:(int)a7;
- (void)dealloc;
- (void)releaseAllBindings;
- (void)releaseInputBindings;
- (void)releaseResources;
- (void)reset;
- (void)setSidecarWriter:(id)a3;
@end

@implementation DenoiseFusePipeline

- (id)getAMBNRStage:(const DenoiseRemixStageOptions *)a3
{
  count = self->_ambnrStageCache.count;
  if (count)
  {
    v6 = 0;
    p_enableGdFlatness = &self->_ambnrStageCache.entries[0].options.enableGdFlatness;
    while (a3->lgaAlgorithm != *(p_enableGdFlatness - 9) || a3->enableBandZeroDenoising != *(p_enableGdFlatness - 5) || a3->enableBilateralRegression != *(p_enableGdFlatness - 4) || a3->enableLoGOffset != *(p_enableGdFlatness - 3) || a3->enableLowVarSharpening != *(p_enableGdFlatness - 2) || a3->enableNoiseMap != *(p_enableGdFlatness - 1) || a3->enableGdFlatness != *p_enableGdFlatness)
    {
      ++v6;
      p_enableGdFlatness += 16;
      if (count == v6)
      {
        v8 = 0;
        goto LABEL_12;
      }
    }

    v8 = objc_msgSend_objectAtIndexedSubscript_(self->_ambnrStages, a2, v6, v3);
LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_prewarmShaders_(WarpStage, v4, v3, v5);
  v7 = [DenoiseFusePipelineShaders alloc];
  v10 = objc_msgSend_initWithMetal_(v7, v8, v3, v9);
  if (!v10)
  {
    v6 = -12786;
  }

  objc_msgSend_prewarmShaders_(ColorCubeCorrectionStage, v11, v3, v12);
  objc_msgSend_prewarmShaders_(BlinkDetectionStage, v13, v3, v14);

  return v6;
}

- (DenoiseFusePipeline)initWithContext:(id)a3 nrfConfig:(id)a4 dasTuningOptions:(id)a5 toneMappingOptions:(id)a6
{
  v11 = a3;
  v12 = a4;
  v286 = a5;
  v13 = a6;
  v348.receiver = self;
  v348.super_class = DenoiseFusePipeline;
  v14 = [(DenoiseFusePipeline *)&v348 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_152;
  }

  if (v12[61])
  {
    v16 = 0;
  }

  else
  {
    v16 = v12[66];
  }

  v14->_progressiveFusionEnabled = v16 & 1;
  if (v12[61])
  {
    v17 = 0;
  }

  else
  {
    v17 = v12[63];
  }

  v14->_deepFusionEnabled = v17 & 1;
  if (v12[61])
  {
    v18 = 0;
  }

  else
  {
    v18 = v12[65];
  }

  v14->_ubFusionEnabled = v18 & 1;
  objc_storeStrong(&v14->_metal, a3);
  objc_storeStrong(&v15->_nrfConfig, a4);
  v22 = objc_msgSend_sharedInstance(DenoiseFusePipelineShared, v19, v20, v21);
  v25 = objc_msgSend_getShaders_(v22, v23, v15->_metal, v24);
  shaders = v15->_shaders;
  v15->_shaders = v25;

  if (!v15->_shaders)
  {
    sub_2958808C0();
    goto LABEL_152;
  }

  v27 = [PyramidStage_NRF alloc];
  v346[0] = @"PyrGen.UseHW";
  v346[1] = @"PyrGen.SupportFP16";
  v347[0] = &unk_2A1CC3FD0;
  v347[1] = &unk_2A1CC3FE8;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v28, v347, v346, 2);
  v31 = objc_msgSend_initWithOptions_context_(v27, v30, v29, v11);
  pyramidStage = v15->_pyramidStage;
  v15->_pyramidStage = v31;

  if (!v15->_pyramidStage)
  {
    sub_295880880();
    goto LABEL_152;
  }

  v33 = [TextureUtils alloc];
  v36 = objc_msgSend_initWithMetalContext_(v33, v34, v11, v35);
  textureUtils = v15->_textureUtils;
  v15->_textureUtils = v36;

  if (!v15->_textureUtils)
  {
    sub_295880840();
    goto LABEL_152;
  }

  v38 = [ColorConvertStage alloc];
  v41 = objc_msgSend_initWithMetalContext_(v38, v39, v11, v40);
  colorConvertStage = v15->_colorConvertStage;
  v15->_colorConvertStage = v41;

  if (!v15->_colorConvertStage)
  {
    sub_295880800();
    goto LABEL_152;
  }

  v43 = [GlobalDistortionCorrectionStage alloc];
  v46 = objc_msgSend_initWithMetalContext_(v43, v44, v11, v45);
  globalDistortionCorrectionStage = v15->_globalDistortionCorrectionStage;
  v15->_globalDistortionCorrectionStage = v46;

  if (!v15->_globalDistortionCorrectionStage)
  {
    sub_295880774();
    goto LABEL_152;
  }

  v284 = v11;
  v285 = v13;
  v15->_ambnrStageCache.count = 0;
  v48 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  ambnrStages = v15->_ambnrStages;
  v15->_ambnrStages = v48;

  v15->_doGreenGhostMitigation = 0;
  v298 = v15;
  v50 = MEMORY[0x29EDB8EB0];
  v345[0] = MEMORY[0x29EDB8EB0];
  v344[0] = @"SingleImageParameters";
  v344[1] = @"DefaultUBModeParameters";
  v53 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v51, v12[61] ^ 1u, v52);
  v345[1] = v53;
  v344[2] = @"ToneMappedUBParameters";
  v283 = v12;
  v56 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v54, v12[61] ^ 1u, v55);
  v345[2] = v56;
  v344[3] = @"LowLightUBParameters";
  v59 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v57, v298->_progressiveFusionEnabled, v58);
  v345[3] = v59;
  v344[4] = @"LowLightUBParameters_max";
  v62 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v60, v298->_progressiveFusionEnabled, v61);
  v345[4] = v62;
  v344[5] = @"ProxyAssetEV0RefParameters";
  v65 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v63, v298->_deepFusionEnabled, v64);
  v345[5] = v65;
  v344[6] = @"ProxyAssetEVMRefParameters";
  v68 = objc_msgSend_numberWithBool_(MEMORY[0x29EDBA070], v66, v298->_deepFusionEnabled, v67);
  v344[7] = @"SingleImageParametersForLearnedNR";
  v345[6] = v68;
  v345[7] = v50;
  v15 = v298;
  v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v69, v345, v344, 8);

  v343 = 0u;
  v342 = 0u;
  v341 = 0u;
  v340 = 0u;
  obj = v286;
  v288 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v71, &v340, v339, 16);
  if (!v288)
  {
    goto LABEL_41;
  }

  v290 = *v341;
  do
  {
    v72 = 0;
    do
    {
      if (*v341 != v290)
      {
        objc_enumerationMutation(obj);
      }

      v293 = v72;
      v73 = *(*(&v340 + 1) + 8 * v72);
      v335 = 0u;
      v336 = 0u;
      v337 = 0u;
      v338 = 0u;
      v74 = v73;
      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v335, v334, 16);
      if (!v76)
      {
        goto LABEL_39;
      }

      v80 = v76;
      v81 = *v336;
      while (2)
      {
        for (i = 0; i != v80; ++i)
        {
          if (*v336 != v81)
          {
            objc_enumerationMutation(v74);
          }

          v83 = *(*(&v335 + 1) + 8 * i);
          v84 = objc_msgSend_getSharedInstance(DenoiseRemixStageConfig, v77, v78, v79);
          v87 = objc_msgSend_objectForKeyedSubscript_(v84, v85, v83, v86);

          v90 = objc_msgSend_objectForKeyedSubscript_(v74, v88, v83, v89);
          v93 = objc_msgSend_objectForKeyedSubscript_(v70, v91, v83, v92);

          if (v93)
          {
            v97 = v87 == 0;
          }

          else
          {
            v97 = 1;
          }

          if (!v97 && v90 != 0)
          {
            v333 = 0;
            v332 = 0;
            LODWORD(v332) = objc_msgSend_lgaAlgorithm(v87, v94, v95, v96);
            BYTE4(v332) = objc_msgSend_enableBandZeroDenoising(v87, v99, v100, v101);
            BYTE5(v332) = v90[18];
            BYTE6(v332) = v90[40];
            BYTE1(v333) = v90[20];
            HIBYTE(v332) = v90[19];
            LOBYTE(v333) = objc_msgSend_enableNoiseMap(v87, v102, v103, v104);
            nrfConfig = v298->_nrfConfig;
            BYTE2(v333) = nrfConfig->_enableChromaticAberrationCorrection;
            HIBYTE(v333) = nrfConfig->_greenGhostMitigationType & 1;
            v108 = objc_msgSend_getAMBNRStage_(v298, v106, &v332, v107);

            if (!v108)
            {
              v109 = [AMBNRStage alloc];
              v113 = objc_msgSend_initWithContext_denoisingOptions_(v109, v110, v298->_metal, &v332);
              if (v113)
              {
                count = v298->_ambnrStageCache.count;
                if (count < 0xA)
                {
                  v298->_ambnrStageCache.count = count + 1;
                  v115 = &v298->_ambnrStageCache.entries[count];
                  v116 = v333;
                  *(v115 + 4) = v332;
                  *(v115 + 12) = v116;
                  objc_msgSend_addObject_(v298->_ambnrStages, v111, v113, v112);

                  goto LABEL_37;
                }

                sub_29587FD78();
              }

              else
              {
                sub_29587FE04();
              }

              goto LABEL_116;
            }
          }

LABEL_37:
        }

        v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v77, &v335, v334, 16);
        if (v80)
        {
          continue;
        }

        break;
      }

LABEL_39:

      v72 = v293 + 1;
    }

    while ((v293 + 1) != v288);
    v288 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v117, &v340, v339, 16);
  }

  while (v288);
LABEL_41:

  v331 = 0u;
  v330 = 0u;
  v329 = 0u;
  v328 = 0u;
  v289 = v285;
  v294 = objc_msgSend_countByEnumeratingWithState_objects_count_(v289, v118, &v328, v327, 16);
  v120 = 0;
  if (v294)
  {
    v291 = *v329;
    do
    {
      v121 = 0;
      do
      {
        if (*v329 != v291)
        {
          objc_enumerationMutation(v289);
        }

        v122 = *(*(&v328 + 1) + 8 * v121);
        v296 = v121;
        if (v15->_nrfConfig->_isOnlySingleImage)
        {
          v326[0] = @"SingleImageParameters";
          v326[1] = @"SingleImageParametersForLearnedNR";
          objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v119, v326, 2);
        }

        else if (v15->_progressiveFusionEnabled)
        {
          v325[0] = @"SingleImageParameters";
          v325[1] = @"DefaultUBModeParameters";
          v325[2] = @"ToneMappedUBParameters";
          v325[3] = @"LowLightUBParameters";
          v325[4] = @"LowLightUBParameters_max";
          objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v119, v325, 5);
        }

        else
        {
          v324[0] = @"SingleImageParameters";
          v324[1] = @"DefaultUBModeParameters";
          v324[2] = @"ToneMappedUBParameters";
          objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v119, v324, 3);
        }
        v123 = ;
        v323 = 0u;
        v322 = 0u;
        v321 = 0u;
        v320 = 0u;
        v124 = v123;
        v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v320, v319, 16);
        if (v126)
        {
          v129 = v126;
          v130 = *v321;
          do
          {
            for (j = 0; j != v129; ++j)
            {
              if (*v321 != v130)
              {
                objc_enumerationMutation(v124);
              }

              v132 = *(*(&v320 + 1) + 8 * j);
              v133 = objc_msgSend_objectForKeyedSubscript_(v122, v127, v132, v128);
              v136 = v133;
              if (v133)
              {
                v120 = (*(v133 + 56) | v120) != 0;
                if (objc_msgSend_isEqual_(v132, v134, @"DefaultUBModeParameters", v135))
                {
                  v298->_srlVersion = v136[18];
                }
              }
            }

            v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v127, &v320, v319, 16);
          }

          while (v129);
        }

        v121 = v296 + 1;
        v15 = v298;
      }

      while (v296 + 1 != v294);
      v294 = objc_msgSend_countByEnumeratingWithState_objects_count_(v289, v119, &v328, v327, 16);
    }

    while (v294);
  }

  v137 = objc_alloc_init(FusionInputBands);
  inputBands = v15->_inputBands;
  v15->_inputBands = v137;

  v139 = objc_alloc_init(AMBNRBuffers);
  ambnrBuffers = v15->_ambnrBuffers;
  v15->_ambnrBuffers = v139;

  fusedBand = v15->_fusedBand;
  v15->_fusedBand = 0;

  accWeightPyramid = v15->_accWeightPyramid;
  v15->_accWeightPyramid = 0;

  v143 = [OutliersRemovalStage alloc];
  v146 = objc_msgSend_initWithMetalContext_(v143, v144, v15->_metal, v145);
  outliersRemovalStage = v15->_outliersRemovalStage;
  v15->_outliersRemovalStage = v146;

  v13 = v285;
  if (v15->_nrfConfig->_isOnlySingleImage)
  {
LABEL_76:
    v192 = [ToneMappingStage alloc];
    v194 = objc_msgSend_initWithContext_mtlSuballocatorID_(v192, v193, v15->_metal, 255);
    toneMappingStage = v15->_toneMappingStage;
    v15->_toneMappingStage = v194;

    v198 = v15->_toneMappingStage;
    if (!v198)
    {
      sub_2958806E8();
      goto LABEL_157;
    }

    objc_msgSend_setEnableSTF_(v198, v196, v15->_nrfConfig->_enableSTF, v197);
    v202 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v199, v200, v201);
    objc_msgSend_setStfTuningParameters_(v15->_toneMappingStage, v203, v202, v204);

    v317 = 0u;
    v318 = 0u;
    v315 = 0u;
    v316 = 0u;
    v205 = v289;
    v297 = objc_msgSend_countByEnumeratingWithState_objects_count_(v205, v206, &v315, v314, 16);
    if (v297)
    {
      v210 = 0;
      v295 = *v316;
      v292 = v205;
      do
      {
        for (k = 0; k != v297; ++k)
        {
          if (*v316 != v295)
          {
            objc_enumerationMutation(v292);
          }

          v212 = *(*(&v315 + 1) + 8 * k);
          v213 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v207, v208, v209);
          v310 = 0u;
          v311 = 0u;
          v312 = 0u;
          v313 = 0u;
          v214 = v212;
          v216 = objc_msgSend_countByEnumeratingWithState_objects_count_(v214, v215, &v310, v309, 16);
          if (v216)
          {
            v219 = v216;
            v220 = *v311;
            do
            {
              for (m = 0; m != v219; ++m)
              {
                if (*v311 != v220)
                {
                  objc_enumerationMutation(v214);
                }

                v222 = *(*(&v310 + 1) + 8 * m);
                v224 = objc_msgSend_objectForKeyedSubscript_(v214, v217, v222, v218);
                v225 = v224[10];
                if (v225)
                {
                  objc_msgSend_setObject_forKey_(v213, v223, v225, v222);
                }
              }

              v219 = objc_msgSend_countByEnumeratingWithState_objects_count_(v214, v217, &v310, v309, 16);
            }

            while (v219);
          }

          v15 = v298;
          v229 = objc_msgSend_stfTuningParameters(v298->_toneMappingStage, v226, v227, v228);
          v232 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v230, v210, v231);
          objc_msgSend_setObject_forKey_(v229, v233, v213, v232);

          v210 = (v210 + 1);
        }

        v205 = v292;
        v297 = objc_msgSend_countByEnumeratingWithState_objects_count_(v292, v207, &v315, v314, 16);
      }

      while (v297);
    }

    v234 = [ColorCubeCorrectionStage alloc];
    v237 = objc_msgSend_init_(v234, v235, v11, v236);
    ColorCubeCorrectionStage = v15->_ColorCubeCorrectionStage;
    v15->_ColorCubeCorrectionStage = v237;

    if (v15->_ColorCubeCorrectionStage)
    {
      v307 = 0u;
      v308 = 0u;
      v305 = 0u;
      v306 = 0u;
      v239 = v205;
      v241 = objc_msgSend_countByEnumeratingWithState_objects_count_(v239, v240, &v305, v304, 16);
      if (v241)
      {
        v242 = v241;
        v243 = 0;
        v244 = *v306;
        do
        {
          for (n = 0; n != v242; ++n)
          {
            if (*v306 != v244)
            {
              objc_enumerationMutation(v239);
            }

            v246 = *(*(&v305 + 1) + 8 * n);
            v300 = 0u;
            v301 = 0u;
            v302 = 0u;
            v303 = 0u;
            v247 = v246;
            v249 = objc_msgSend_countByEnumeratingWithState_objects_count_(v247, v248, &v300, v299, 16);
            if (v249)
            {
              v252 = v249;
              v253 = *v301;
              while (2)
              {
                for (ii = 0; ii != v252; ++ii)
                {
                  if (*v301 != v253)
                  {
                    objc_enumerationMutation(v247);
                  }

                  v255 = objc_msgSend_objectForKeyedSubscript_(v247, v250, *(*(&v300 + 1) + 8 * ii), v251);
                  if (v255)
                  {
                    v243 = v255[31];

                    goto LABEL_109;
                  }
                }

                v252 = objc_msgSend_countByEnumeratingWithState_objects_count_(v247, v250, &v300, v299, 16);
                if (v252)
                {
                  continue;
                }

                break;
              }

LABEL_109:
              v15 = v298;
            }
          }

          v242 = objc_msgSend_countByEnumeratingWithState_objects_count_(v239, v256, &v305, v304, 16);
        }

        while (v242);
      }

      else
      {
        v243 = 0;
      }

      if (!objc_msgSend_setMaskedSkyCubeVersion_(v15->_ColorCubeCorrectionStage, v258, v243, v259))
      {
        v260 = v15->_nrfConfig;
        v12 = v283;
        v11 = v284;
        v13 = v285;
        if (v260->_enableGainMap)
        {
          v261 = [GainMapStage alloc];
          v264 = objc_msgSend_initWithMetalContext_(v261, v262, v284, v263);
          gainMapStage = v15->_gainMapStage;
          v15->_gainMapStage = v264;

          if (!v15->_gainMapStage)
          {
            sub_295880620();
            goto LABEL_152;
          }

          v260 = v15->_nrfConfig;
        }

        if (v260->_enableSemanticStyles)
        {
          v266 = [SemanticStylesStage alloc];
          v269 = objc_msgSend_initWithMetalContext_(v266, v267, v284, v268);
          styleStage = v15->_styleStage;
          v15->_styleStage = v269;

          if (!v15->_styleStage)
          {
            sub_2958805BC();
            goto LABEL_152;
          }

          v260 = v15->_nrfConfig;
        }

        if ((v260->_greenGhostMitigationType & 2) != 0)
        {
          v271 = [GreenGhostLowLightStage alloc];
          v274 = objc_msgSend_initWithMetalContext_(v271, v272, v284, v273);
          greenGhostLowLightStage = v15->_greenGhostLowLightStage;
          v15->_greenGhostLowLightStage = v274;

          if (!v15->_greenGhostLowLightStage)
          {
            sub_295880440();
            goto LABEL_152;
          }

          v276 = objc_opt_new();
          greenGhostBuffers = v15->_greenGhostBuffers;
          v15->_greenGhostBuffers = v276;

          if (!v15->_greenGhostBuffers)
          {
            sub_2958803DC();
            goto LABEL_152;
          }
        }

        v278 = objc_alloc_init(FusionBuffers);
        fusionBuffers = v15->_fusionBuffers;
        v15->_fusionBuffers = v278;

        if (v15->_fusionBuffers)
        {
          v15->_currentFrame = 0;
          v15->_isStaticScene = 0;
          v15->_fusionReferenceFrame = 0;
          v280 = objc_opt_new();
          v281 = v15->_fusedBand;
          v15->_fusedBand = v280;

          if (v15->_fusedBand)
          {
            v257 = v15;
            goto LABEL_153;
          }

          sub_2958804A4();
        }

        else
        {
          sub_295880530();
        }

LABEL_152:
        v257 = 0;
        goto LABEL_153;
      }

      sub_29588037C();
LABEL_116:
      v257 = 0;
      v11 = v284;
    }

    else
    {
      sub_295880684();
      v257 = 0;
    }

    v12 = v283;
    v13 = v285;
    goto LABEL_153;
  }

  v148 = [WarpStage alloc];
  inited = objc_msgSend_initWarpStage_(v148, v149, v15->_metal, v150);
  warpStage = v15->_warpStage;
  v15->_warpStage = inited;

  if (v15->_warpStage)
  {
    v153 = [FusionRemixStage alloc];
    isPrewarm = objc_msgSend_initBandFusion_nrfConfig_isPrewarm_(v153, v154, v15->_metal, v15->_nrfConfig, 0);
    fusionRemixStage = v15->_fusionRemixStage;
    v15->_fusionRemixStage = isPrewarm;

    if (v15->_fusionRemixStage)
    {
      v157 = [MotionDetection alloc];
      v160 = objc_msgSend_initWithMetalContext_(v157, v158, v15->_metal, v159);
      motionDetection = v15->_motionDetection;
      v15->_motionDetection = v160;

      if (v15->_motionDetection)
      {
        v162 = [GrayGhostDetection alloc];
        v165 = objc_msgSend_initWithMetalContext_(v162, v163, v15->_metal, v164);
        grayGhostDetection = v15->_grayGhostDetection;
        v15->_grayGhostDetection = v165;

        if (v15->_grayGhostDetection)
        {
          v167 = [BlinkDetectionStage alloc];
          v170 = objc_msgSend_init_(v167, v168, v15->_metal, v169);
          blinkDetectionStage = v15->_blinkDetectionStage;
          v15->_blinkDetectionStage = v170;

          if (v15->_blinkDetectionStage)
          {
            if ((v120 || v15->_nrfConfig->_enableBilateralGridForHybridRegistration) && (v172 = [BilateralGrid alloc], v175 = objc_msgSend_initWithContext_(v172, v173, v15->_metal, v174), bilateralGrid = v15->_bilateralGrid, v15->_bilateralGrid = v175, bilateralGrid, !v15->_bilateralGrid))
            {
              sub_295880034();
            }

            else
            {
              v177 = [RegDense alloc];
              v180 = objc_msgSend_initWithMetalContext_(v177, v178, v15->_metal, v179);
              regDense = v15->_regDense;
              v15->_regDense = v180;

              if (v15->_regDense)
              {
                if (!v15->_nrfConfig->_enableDeepFusion)
                {
                  goto LABEL_76;
                }

                v182 = [SyntheticReferenceStage alloc];
                v185 = objc_msgSend_initWithMetalContext_(v182, v183, v15->_metal, v184);
                syntheticReferenceStage = v15->_syntheticReferenceStage;
                v15->_syntheticReferenceStage = v185;

                if (v15->_syntheticReferenceStage)
                {
                  v187 = [SyntheticLongStage alloc];
                  v190 = objc_msgSend_initWithMetalContext_(v187, v188, v15->_metal, v189);
                  syntheticLongStage = v15->_syntheticLongStage;
                  v15->_syntheticLongStage = v190;

                  if (v15->_syntheticLongStage)
                  {
                    goto LABEL_76;
                  }

                  sub_29587FE90();
                }

                else
                {
                  sub_29587FF1C();
                }
              }

              else
              {
                sub_29587FFA8();
              }
            }
          }

          else
          {
            sub_2958800C0();
          }
        }

        else
        {
          sub_29588014C();
        }
      }

      else
      {
        sub_2958801D8();
      }
    }

    else
    {
      sub_295880264();
    }
  }

  else
  {
    sub_2958802F0();
  }

LABEL_157:
  v257 = 0;
  v12 = v283;
LABEL_153:

  return v257;
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = DenoiseFusePipeline;
  [(DenoiseFusePipeline *)&v5 dealloc];
}

- (void)reset
{
  objc_msgSend_releaseInputBindings(self, a2, v2, v3);
  objc_msgSend_reset(self->_toneMappingStage, v5, v6, v7);
  objc_msgSend_releasePyramidsBottom(self->_ambnrBuffers, v8, v9, v10);
  if (!self->_nrfConfig->_isOnlySingleImage)
  {
    objc_msgSend_reset(self->_regDense, v11, v12, v13);
  }

  self->_isStaticScene = 0;
  self->_currentFrame = 0;
}

- (void)releaseResources
{
  objc_msgSend_waitForIdle(self->_metal, a2, v2, v3);
  objc_msgSend_releaseAllBindings(self, v5, v6, v7);
  objc_msgSend_releaseTextures(self->_bilateralGrid, v8, v9, v10);
  toneMappingCurvesUBFusion = self->_toneMappingCurvesUBFusion;
  self->_toneMappingCurvesUBFusion = 0;

  toneMappingCurvesSkinMapInput = self->_toneMappingCurvesSkinMapInput;
  self->_toneMappingCurvesSkinMapInput = 0;

  accWeightPyramid = self->_accWeightPyramid;
  self->_accWeightPyramid = 0;
}

- (void)releaseAllBindings
{
  objc_msgSend_reset(self, a2, v2, v3);
  objc_msgSend_reset(self->_greenGhostLowLightStage, v5, v6, v7);
  objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v8, self->_fusedBand, self->_metal);
  objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v9, self->_accWeightPyramid, self->_metal);
  if (self->_fusionBuffers)
  {
    FigMetalDecRef();
    fusionBuffers = self->_fusionBuffers;
    FigMetalDecRef();
    v14 = self->_fusionBuffers;
    FigMetalDecRef();
    v15 = self->_fusionBuffers;
    FigMetalDecRef();
    if (self->_fusionBuffers)
    {
      FigMetalDecRef();
    }
  }

  if (self->_greenGhostBuffers)
  {
    FigMetalDecRef();
    greenGhostBuffers = self->_greenGhostBuffers;
    FigMetalDecRef();
    v17 = self->_greenGhostBuffers;
    FigMetalDecRef();
  }

  objc_msgSend_releaseBuffers(self->_ambnrBuffers, v10, v11, v12);
  objc_msgSend_releaseResources(self->_motionDetection, v18, v19, v20);
  for (i = 0; i != 5; ++i)
  {
    inputBands = self->_inputBands;
    if (inputBands)
    {
      objc_msgSend_makePyramidAliasable_metal_releaseBand0_(PyramidStorage_NRF, v21, inputBands->bands[i], self->_metal, 1);
      objc_msgSend_releaseBuffers(self->_inputBands->bands[i], v24, v25, v26);
    }

    v27 = self + i * 8;
    v28 = self->_inputLuma[i];
    self->_inputLuma[i] = 0;

    v29 = self->_inputChroma[i];
    *(v27 + 8) = 0;

    v30 = self->_inputYCbCr[i];
    *(v27 + 13) = 0;
  }
}

- (void)releaseInputBindings
{
  for (i = 0; i != 5; ++i)
  {
    inputBands = self->_inputBands;
    if (inputBands)
    {
      objc_msgSend_clearLevel_(inputBands->bands[i], a2, 0, v2);
    }

    v6 = self + i * 8;
    v7 = self->_inputLuma[i];
    self->_inputLuma[i] = 0;

    v8 = self->_inputChroma[i];
    *(v6 + 8) = 0;

    v9 = self->_inputYCbCr[i];
    *(v6 + 13) = 0;
  }
}

+ (unint64_t)calculateBackingBufferSizeForDesc:(id)a3 nrfConfig:(id)a4 metal:(id)a5
{
  v6 = a4;
  v7 = *(v6 + 61);
  v8 = v6[5];
  v9 = v6[7];
  v10 = v6[24];
  v11 = a3;
  v15 = objc_msgSend_width(v11, v12, v13, v14);
  v19 = objc_msgSend_height(v11, v16, v17, v18);

  if (v6[5] == 1 && (v6[7] & 0x80000000) == 0)
  {
    sub_2958809E4();
    goto LABEL_20;
  }

  if (v7)
  {
    v20 = 100.0;
    if ((v15 / v19) > 1.5)
    {
      v20 = 85.0;
    }

    v21 = v20;
    if (!v20)
    {
      sub_29588094C();
LABEL_20:
      v21 = 0;
    }
  }

  else
  {
    v22 = 173;
    if (v8 == 2)
    {
      v22 = 183;
    }

    if (v6[19])
    {
      v21 = v22 + ((4 * v10) & 8);
    }

    else
    {
      v21 = 250;
      if (*(v6 + 77))
      {
        v21 = 320;
      }
    }
  }

  v23 = 0.78;
  if (v9 <= 0)
  {
    v23 = 1.0;
  }

  if (!v9)
  {
    v23 = 1.03;
  }

  v24 = vcvts_n_u32_f32(v23 * v21, 0x14uLL);

  return v24;
}

- (int)allocateCoallesedFusionInputPyramidsForWidth:(unint64_t)a3 height:(unint64_t)a4 levels:(int)a5 frames:(int)a6
{
  v7 = a4;
  v8 = a3;
  if (a6 >= 1)
  {
    for (i = 0; i != a6; ++i)
    {
      self->_inputBands->bands[i]->levels = a5;
    }
  }

  v11 = objc_msgSend_allocator(self->_metal, a2, a3, a4);
  v15 = objc_msgSend_newTextureDescriptor(v11, v12, v13, v14);

  if (v15)
  {
    v19 = objc_msgSend_desc(v15, v16, v17, v18);
    objc_msgSend_setUsage_(v19, v20, 7, v21);

    if (a5 >= 2)
    {
      v24 = 8 * a6;
      v25 = 1;
      v85 = a5;
      while (1)
      {
        if ((v8 & 2) != 0)
        {
          sub_295880A7C();
          goto LABEL_20;
        }

        if ((v7 & 2) != 0)
        {
          sub_295880B14();
          goto LABEL_20;
        }

        v88 = v7 >> 1;
        v89 = v8 >> 1;
        if (a6 >= 1)
        {
          break;
        }

LABEL_16:
        ++v25;
        v7 = v88;
        v8 = v89;
        if (v25 == v85)
        {
          goto LABEL_20;
        }
      }

      v87 = v7;
      v26 = 0;
      do
      {
        objc_msgSend_setLabel_(v15, v22, 0, v23);
        v30 = objc_msgSend_desc(v15, v27, v28, v29);
        objc_msgSend_setWidth_(v30, v31, (v8 >> 1) & 0xFFFFFFFE, v32);

        v36 = objc_msgSend_desc(v15, v33, v34, v35);
        objc_msgSend_setHeight_(v36, v37, v88 & 0xFFFFFFFE, v38);

        v42 = objc_msgSend_desc(v15, v39, v40, v41);
        objc_msgSend_setPixelFormat_(v42, v43, 25, v44);

        v48 = objc_msgSend_allocator(self->_metal, v45, v46, v47);
        v51 = objc_msgSend_newTextureWithDescriptor_(v48, v49, v15, v50);
        textureY = self->_inputBands->bands[v26 / 8]->textureY;
        v53 = textureY[v25];
        textureY[v25] = v51;

        if (!self->_inputBands->bands[v26 / 8]->textureY[v25])
        {
          sub_295880C44();
          goto LABEL_20;
        }

        v26 += 8;
      }

      while (v24 != v26);
      v54 = 0;
      v55 = (v8 >> 2) & 0x7FFFFFFF;
      while (1)
      {
        objc_msgSend_setLabel_(v15, v22, 0, v23);
        v59 = objc_msgSend_desc(v15, v56, v57, v58);
        objc_msgSend_setWidth_(v59, v60, v55, v61);

        v65 = objc_msgSend_desc(v15, v62, v63, v64);
        objc_msgSend_setHeight_(v65, v66, (v87 >> 2) & 0x7FFFFFFF, v67);

        v71 = objc_msgSend_desc(v15, v68, v69, v70);
        objc_msgSend_setPixelFormat_(v71, v72, 65, v73);

        v77 = objc_msgSend_allocator(self->_metal, v74, v75, v76);
        v80 = objc_msgSend_newTextureWithDescriptor_(v77, v78, v15, v79);
        textureUV = self->_inputBands->bands[v54 / 8]->textureUV;
        v82 = textureUV[v25];
        textureUV[v25] = v80;

        v83 = self->_inputBands->bands[v54 / 8];
        if (!v83->textureUV[v25])
        {
          break;
        }

        v83->isFP16[v25] = 1;
        v54 += 8;
        if (v24 == v54)
        {
          goto LABEL_16;
        }
      }

      sub_295880BAC();
    }
  }

  else
  {
    sub_295880CDC();
  }

LABEL_20:

  return 0;
}

- (int)allocateResourcesIfNeededForDesc:(id)a3 didAllocate:(BOOL *)a4
{
  v6 = a3;
  v10 = objc_msgSend_width(v6, v7, v8, v9);
  v14 = objc_msgSend_height(v6, v11, v12, v13);
  v18 = MEMORY[0x29EDB9270];
  if (((v10 | v14) & 0xF) != 0)
  {
    sub_295881068(&v59);
    v36 = v59;
    goto LABEL_31;
  }

  v19 = v10;
  v20 = v14;
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  if (self->_lastWidth == v10 && self->_lastHeight == v20)
  {
    lastPixelFormat = self->_lastPixelFormat;
    if (lastPixelFormat == objc_msgSend_pixelFormat(v6, v15, v16, v17))
    {
      v22 = 0;
      goto LABEL_19;
    }
  }

  v23 = objc_opt_new();
  v26 = v23;
  if (!v23)
  {
    sub_295880FCC(&v59);
LABEL_29:
    v36 = v59;
    goto LABEL_30;
  }

  objc_msgSend_setUsage_(v23, v24, 7, v25);
  objc_msgSend_releaseResources(self, v27, v28, v29);
  ResourcesForWidth_height_srlVersion = objc_msgSend_allocateResourcesForWidth_height_srlVersion_(self->_toneMappingStage, v30, v19, v20, self->_srlVersion);
  if (ResourcesForWidth_height_srlVersion)
  {
    v36 = ResourcesForWidth_height_srlVersion;
    sub_295880D74();
    goto LABEL_30;
  }

  nrfConfig = self->_nrfConfig;
  if (nrfConfig->_isOnlySingleImage)
  {
    goto LABEL_16;
  }

  bilateralGrid = self->_bilateralGrid;
  if (!bilateralGrid)
  {
    goto LABEL_16;
  }

  if (!nrfConfig->_enableBilateralGridForHybridRegistration)
  {
    v60 = 0;
    v59 = xmmword_2958D5BD8;
    v37 = objc_msgSend_setupWithConfig_width_height_(bilateralGrid, v32, &v59, v19, v20);
    if (v37)
    {
      v36 = v37;
      sub_295880DD4();
      goto LABEL_30;
    }

    goto LABEL_16;
  }

  v60 = 0;
  v59 = xmmword_2958D5BC0;
  v35 = objc_msgSend_setupWithConfig_width_height_(bilateralGrid, v32, &v59, v19 >> 3, v20 >> 3);
  if (!v35)
  {
LABEL_16:
    v38 = [ToneMappingCurves alloc];
    v41 = objc_msgSend_initWithWithContext_(v38, v39, self->_metal, v40);
    toneMappingCurvesUBFusion = self->_toneMappingCurvesUBFusion;
    self->_toneMappingCurvesUBFusion = v41;

    if (self->_toneMappingCurvesUBFusion)
    {
      v43 = [ToneMappingCurves alloc];
      v46 = objc_msgSend_initWithWithContext_(v43, v44, self->_metal, v45);
      toneMappingCurvesSkinMapInput = self->_toneMappingCurvesSkinMapInput;
      self->_toneMappingCurvesSkinMapInput = v46;

      if (self->_toneMappingCurvesSkinMapInput)
      {
        objc_msgSend_setEnableSTF_(self->_toneMappingCurvesUBFusion, v48, self->_nrfConfig->_enableSTF, v49);
        objc_msgSend_setEnableSTF_(self->_toneMappingCurvesSkinMapInput, v50, self->_nrfConfig->_enableSTF, v51);
        self->_lastWidth = v19;
        self->_lastHeight = v20;
        self->_lastPixelFormat = objc_msgSend_pixelFormat(v6, v52, v53, v54);

        v22 = 1;
LABEL_19:
        v36 = 0;
        if (a4)
        {
          *a4 = v22;
        }

        goto LABEL_21;
      }

      sub_295880E94(&v59);
    }

    else
    {
      sub_295880F30(&v59);
    }

    goto LABEL_29;
  }

  v36 = v35;
  sub_295880E34();
LABEL_30:

LABEL_31:
  if (v36)
  {
    objc_msgSend_releaseResources(self, v56, v57, v58);
  }

LABEL_21:
  if (*v18 == 1)
  {
    kdebug_trace();
  }

  return v36;
}

- (void)setSidecarWriter:(id)a3
{
  obj = a3;
  if (!self->_nrfConfig->_isOnlySingleImage)
  {
    objc_msgSend_setSidecarWriter_(self->_fusionRemixStage, v4, obj, v5);
    objc_msgSend_setSidecarWriter_(self->_toneMappingStage, v6, obj, v7);
    objc_msgSend_setSidecarWriter_(self->_syntheticReferenceStage, v8, obj, v9);
    objc_msgSend_setSidecarWriter_(self->_syntheticLongStage, v10, obj, v11);
  }

  objc_msgSend_setSidecarWriter_(self->_greenGhostLowLightStage, v4, obj, v5);
  objc_storeWeak(&self->_sidecarWriter, obj);
}

- (int)denoiseFrameWithOutput:(id)a3 input:(id)a4 localGainMap:(id)a5 skinMask:(id)a6 skyMask:(id)a7 maskExtent:(CGRect)a8 exposure:(const exposureParameters *)a9 staticScene:(BOOL)a10 nrfPlist:(id)a11 defringeEnabled:(BOOL)a12 isLowLight:(BOOL)a13 greenGhostEnabled:(BOOL)a14 faceLandMarks:(id)a15 ev0FrameMetadata:(const frameMetadata *)a16 evmFrameMetadata:(const frameMetadata *)a17 gainMap:(id)a18
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v172 = a3;
  v173 = a4;
  v27 = a5;
  v171 = a6;
  v170 = a7;
  v28 = a11;
  v169 = a15;
  v168 = a18;
  v32 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270])
  {
    v33 = objc_msgSend_commandQueue(self->_metal, v29, v30, v31);
    v37 = objc_msgSend_commandBuffer(v33, v34, v35, v36);

    objc_msgSend_setLabel_(v37, v38, @"KTRACE_START_MTL", v39);
    objc_msgSend_addCompletedHandler_(v37, v40, &unk_2A1CA91E0, v41);
    objc_msgSend_commit(v37, v42, v43, v44);
  }

  v45 = v173[2];
  v174 = v173[3];
  v49 = objc_msgSend_allocator(self->_metal, v46, v47, v48);
  v53 = objc_msgSend_newTextureDescriptor(v49, v50, v51, v52);

  if (!v53)
  {
    sub_2958815A0(v182);
LABEL_33:
    v151 = v182[0];
    goto LABEL_28;
  }

  v57 = objc_msgSend_desc(v53, v54, v55, v56);
  objc_msgSend_setUsage_(v57, v58, 7, v59);

  v181 = 0;
  v176 = v27 != 0;
  fusionAlgo = self->_fusionAlgo;
  if (fusionAlgo)
  {
    learnedNREnabled = 1;
  }

  else
  {
    learnedNREnabled = self->_nrfConfig->_learnedNREnabled;
  }

  v177 = learnedNREnabled;
  v64 = v28[2];
  v178 = v64[18];
  v179 = v64[40];
  v180 = v64[19];
  LOBYTE(v181) = fusionAlgo != 0;
  BYTE1(v181) = v64[20];
  v65 = objc_msgSend_getAMBNRStage_(self, v60, &v176, v61);
  if (!v65)
  {
    sub_295881504(v182);
    goto LABEL_33;
  }

  v66 = v65;
  v167 = v27;
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);
  objc_msgSend_setSidecarWriter_(v66, v68, WeakRetained, v69);

  self->_ambnrBuffers->pyramid->levels = 4;
  metal = self->_metal;
  v74 = objc_msgSend_width(v45, v71, v72, v73);
  v78 = objc_msgSend_height(v45, v75, v76, v77);
  isFP16_pyramid = objc_msgSend_allocatePyramidWithMetalContext_label_width_height_isFP16_pyramid_(PyramidStorage_NRF, v79, metal, @"_ambnrBuffers->pyramid", v74, v78, 1, self->_ambnrBuffers->pyramid);
  if (isFP16_pyramid)
  {
    v151 = isFP16_pyramid;
    sub_295881104(isFP16_pyramid, v66);
    v27 = v167;
  }

  else
  {
    v27 = v167;
    if (objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_ambnrBuffers->pyramid, v81, v45, v174, 0, self->_metal))
    {
      sub_295881174();
    }

    else
    {
      if (v181 != 1 || !objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_ambnrBuffers->noiseMapPyramid, v82, self->_fusionBuffers->noiseMapLumaTex, self->_fusionBuffers->noiseMapChromaTex, 0, self->_metal))
      {
        if ((v180 & 1) != 0 || BYTE2(v181) == 1)
        {
          self->_ambnrBuffers->sharpeningPyramid->levels = 4;
          v85 = self->_metal;
          v86 = objc_msgSend_width(v45, v82, v83, v84);
          v90 = objc_msgSend_height(v45, v87, v88, v89);
          Chroma_pyramid = objc_msgSend_allocatePyramidWithMetalContext_label_width_height_isFP16_createLuma_createChroma_pyramid_(PyramidStorage_NRF, v91, v85, @"_ambnrBuffers->sharpeningPyramid", v86, v90, 1, 0, 1, self->_ambnrBuffers->sharpeningPyramid);
          if (Chroma_pyramid)
          {
            v151 = Chroma_pyramid;
            sub_2958812B4(Chroma_pyramid, v66);
            v27 = v167;
            goto LABEL_27;
          }

          v96 = objc_msgSend_width(v174, v93, v94, v95);
          v100 = objc_msgSend_desc(v53, v97, v98, v99);
          objc_msgSend_setWidth_(v100, v101, v96, v102);

          v106 = objc_msgSend_height(v174, v103, v104, v105);
          v110 = objc_msgSend_desc(v53, v107, v108, v109);
          objc_msgSend_setHeight_(v110, v111, v106, v112);

          v116 = objc_msgSend_desc(v53, v113, v114, v115);
          objc_msgSend_setPixelFormat_(v116, v117, 65, v118);

          objc_msgSend_setLabel_(v53, v119, 0, v120);
          v124 = objc_msgSend_allocator(self->_metal, v121, v122, v123);
          v127 = objc_msgSend_newTextureWithDescriptor_(v124, v125, v53, v126);
          sharpeningPyramid = self->_ambnrBuffers->sharpeningPyramid;
          v129 = sharpeningPyramid->textureUV[0];
          sharpeningPyramid->textureUV[0] = v127;

          v27 = v167;
          if (!self->_ambnrBuffers->sharpeningPyramid->textureUV[0])
          {
            sub_295881464();
            v151 = v182[0];
            goto LABEL_27;
          }

          v133 = objc_msgSend_desc(v53, v130, v131, v132);
          self->_ambnrBuffers->sharpeningPyramid->isFP16[0] = objc_msgSend_pixelFormat(v133, v134, v135, v136) == 65;
        }

        ambnrBuffers = self->_ambnrBuffers;
        pyramid = ambnrBuffers->pyramid;
        if (v181 == 1)
        {
          noiseMapPyramid = ambnrBuffers->noiseMapPyramid;
        }

        else
        {
          noiseMapPyramid = 0;
        }

        if ((v180 & 1) != 0 || BYTE2(v181) == 1)
        {
          v140 = objc_msgSend_setResourcesWithOutput_inputPyramid_noiseMapPyramid_sharpeningPyramid_localGainMapTex_(v66, v82, v172, pyramid, noiseMapPyramid, ambnrBuffers->sharpeningPyramid, v27);
        }

        else
        {
          v140 = objc_msgSend_setResourcesWithOutput_inputPyramid_noiseMapPyramid_sharpeningPyramid_localGainMapTex_(v66, v82, v172, pyramid, noiseMapPyramid, 0, v27);
        }

        if (v140)
        {
          sub_295881324();
        }

        else
        {
          LOBYTE(v165) = a14;
          if (!objc_msgSend_runWithExposure_staticScene_dasPlist_nmPlist_defringingTuning_greenGhostBrightLightTuning_greenGhostEnabled_skinMask_skyMask_maskExtent_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_defringeEnabled_isLowLight_gainMap_(v66, v141, a9, a10, v28[2], v28[4], v28[12], v28[14], x, y, width, height, v165, v171, v170, v169, a16, a17, __PAIR16__(a13, a12), v168))
          {
            v142 = self->_ambnrBuffers->noiseMapPyramid;
            FigMetalDecRef();
            v143 = self->_ambnrBuffers->noiseMapPyramid;
            FigMetalDecRef();
            objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v144, self->_ambnrBuffers->noiseMapPyramid, self->_metal);
            v145 = self->_ambnrBuffers->sharpeningPyramid;
            FigMetalDecRef();
            objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v146, self->_ambnrBuffers->sharpeningPyramid, self->_metal);
            objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v147, self->_ambnrBuffers->pyramid, self->_metal);

            v151 = 0;
LABEL_27:
            v32 = MEMORY[0x29EDB9270];
            goto LABEL_28;
          }

          sub_2958813C4();
        }

        v151 = v182[0];
        goto LABEL_27;
      }

      sub_295881214();
    }

    v151 = v182[0];
  }

LABEL_28:
  if (*v32)
  {
    v152 = objc_msgSend_commandQueue(self->_metal, v148, v149, v150);
    v156 = objc_msgSend_commandBuffer(v152, v153, v154, v155);

    objc_msgSend_setLabel_(v156, v157, @"KTRACE_END_MTL", v158);
    v175[0] = MEMORY[0x29EDCA5F8];
    v175[1] = 3221225472;
    v175[2] = sub_2958016DC;
    v175[3] = &unk_29EDDBE78;
    memset(&v175[4], 0, 24);
    objc_msgSend_addCompletedHandler_(v156, v159, v175, v160);
    objc_msgSend_commit(v156, v161, v162, v163);
  }

  return v151;
}

- (int)applyGlobalDistortionCorrectionInplaceWithPixelBuffer:(__CVBuffer *)a3 amount:(float)a4 gdcPlist:(id)a5 cscParams:(const ColorSpaceConversionParameters *)a6
{
  if (a5)
  {
    v11 = *(a5 + 20) / 1000.0;
    v12 = a5;
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
    *v20 = a4;
    *&v20[1] = v11 * v11;
    *&v15 = vcvts_n_f32_u64(WidthOfPlane, 1uLL) + *(v12 + 18);
    *(&v15 + 1) = vcvts_n_f32_u64(HeightOfPlane, 1uLL) + *(v12 + 19);
    v21 = v15;
    v16 = *(v12 + 40);
    v23 = *(v12 + 56);
    v22 = v16;
    v18 = objc_msgSend_applyInplace_gdcParams_cscParams_(self->_globalDistortionCorrectionStage, v17, a3, v20, a6);
  }

  else
  {
    sub_29588163C(0, &v24);
    v18 = v24;
  }

  return v18;
}

- (int)baseLayer:(__CVBuffer *)a3
{
  MetalLumaFormat = objc_msgSend_getMetalLumaFormat_(LumaChromaImage, a2, a3, v3);
  v9 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(self->_metal, v7, a3, MetalLumaFormat, 1, 0, 16);
  if (v9)
  {
    if (objc_msgSend_filter_output_(self->_bilateralGrid, v8, v9, 0))
    {
      sub_2958816E8(&v12);
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_295881784(&v13);
    v10 = v13;
  }

  return v10;
}

- (int)createPyramidForFrame:(id)a3 cfp:(const frameProperties_t *)a4
{
  if (objc_msgSend_setResourcesWithPyramid_(self->_pyramidStage, a2, a3, a4))
  {
    sub_295881820(&v11);
    return v11;
  }

  objc_msgSend_setColorSpace_withParams_(self->_pyramidStage, v6, LODWORD(a4[1].meta.ROI.origin.y), &a4[1].meta.ROI.size.height);
  v10 = 1084227584;
  v9[0] = xmmword_2958D5BF0;
  v9[1] = unk_2958D5C00;
  if (self->_fusionAlgo == 2)
  {
    return 0;
  }

  result = objc_msgSend_runGPUWithFilters_doShift_(self->_pyramidStage, v7, v9, 1);
  if (result)
  {
    sub_2958818BC(&v11);
    return v11;
  }

  return result;
}

- (int)selectNRFFusionReferenceFrame:(int)a3 ev0FrameIndex:(int)a4 evmProperties:(const frameProperties_t *)a5 ev0Properties:(frameProperties_t *)a6 nrfPlist:(id)a7
{
  v12 = a7;
  v13 = self->_inputBands->bands[a3];
  v15 = self->_inputBands->bands[a4];
  if (!self->_fusionReferenceFrame)
  {
    v16 = MEMORY[0x29EDB9270];
    if (*MEMORY[0x29EDB9270] == 1)
    {
      kdebug_trace();
    }

    motionDetection = self->_motionDetection;
    v18 = objc_msgSend_selectNRFFusionReferenceFrame_ev0Bands_evmProperties_ev0Properties_nrfPlist_outputFusionMode_staticScene_motionDetection_grayGhostDetection_(self->_fusionRemixStage, v14, v13, v15, a5, a6, v12, &self->_fusionReferenceFrame, &self->_isStaticScene, motionDetection, self->_grayGhostDetection);
    if (v18)
    {
      v20 = v18;
      sub_295881958();
      goto LABEL_10;
    }

    if (*v16 == 1)
    {
      kdebug_trace();
    }
  }

  if (dword_2A18C2398)
  {
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v20 = 0;
LABEL_10:

  return v20;
}

- (int)lowLightHybridRegister:(int)a3 refFrameIdx:(int)a4 nonRefFrameProps:(frameProperties_t *)a5 refFrameProps:(const frameProperties_t *)a6 canCopyBack:(BOOL)a7 nrfPlist:(id)a8
{
  v133 = a7;
  v12 = a8;
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  v135 = self->_inputBands->bands[a4];
  v13 = self->_inputBands->bands[a3];
  v17 = objc_msgSend_allocator(self->_metal, v14, v15, v16);
  v21 = objc_msgSend_newTextureDescriptor(v17, v18, v19, v20);

  if (!v21)
  {
    sub_295882144(v138);
LABEL_31:
    v100 = v138[0];
    goto LABEL_24;
  }

  v25 = objc_msgSend_desc(v21, v22, v23, v24);
  objc_msgSend_setUsage_(v25, v26, 7, v27);

  v132 = objc_opt_new();
  if (!v132)
  {
    sub_2958820A8(v138);
    goto LABEL_31;
  }

  v130 = a3;
  if (v133)
  {
    goto LABEL_7;
  }

  v31 = objc_msgSend_width(v135->textureUV[0], v28, v29, v30);
  v35 = objc_msgSend_desc(v21, v32, v33, v34);
  objc_msgSend_setWidth_(v35, v36, v31, v37);

  v41 = objc_msgSend_height(v135->textureUV[0], v38, v39, v40);
  v45 = objc_msgSend_desc(v21, v42, v43, v44);
  objc_msgSend_setHeight_(v45, v46, v41, v47);

  v51 = objc_msgSend_desc(v21, v48, v49, v50);
  objc_msgSend_setPixelFormat_(v51, v52, 65, v53);

  objc_msgSend_setLabel_(v21, v54, 0, v55);
  v59 = objc_msgSend_allocator(self->_metal, v56, v57, v58);
  v62 = objc_msgSend_newTextureWithDescriptor_(v59, v60, v21, v61);
  v63 = v132[3];
  v132[3] = v62;

  if (v132[3])
  {
LABEL_7:
    v128 = v21;
    v134 = v13;
    v64 = sub_295820728(&a6->meta.exposureParams, &a5->meta.exposureParams, a5);
    v65 = sub_29584472C(*(*(v12 + 3) + 104), a6->meta.exposureParams.AETargetGain);
    v66 = sub_29584472C(*(*(v12 + 3) + 112), a6->meta.exposureParams.AETargetGain);
    v67 = *(v12 + 3);
    v68 = *(v67 + 88);
    if (v68)
    {
      *(*(v12 + 3) + 80) = sub_29584472C(v68, a6->meta.exposureParams.AETargetGain);
      v67 = *(v12 + 3);
    }

    v69 = *(v67 + 80);
    memset(v146, 0, 24);
    sub_2958133B0(v146, *(v12 + 4), &a6->meta.exposureParams, 3);
    v70 = objc_opt_new();
    objc_storeStrong((v70 + 16), v135->textureY[0]);
    v129 = v70;
    objc_storeStrong((v70 + 24), v135->textureUV[0]);
    v71 = objc_opt_new();
    objc_storeStrong(v71 + 2, v13->textureY[0]);
    objc_storeStrong(v71 + 3, v13->textureUV[0]);
    v142 = 0;
    v143 = 0;
    v140 = *(*(v12 + 3) + 96);
    v139 = v146;
    *v138 = v65;
    *&v138[1] = v66;
    v138[2] = v69;
    objc_storeStrong(&v142, self->_bilateralGrid);
    v141 = v130;
    if (objc_msgSend_setToneCurvesWithLTC_GTC_colorCorrectionMatrix_dump_(self->_toneMappingCurvesUBFusion, v72, &a6->meta.ltmCurves, &a6->meta.ltmCurves, 0, *&a6[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid, *&a6[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows, *&a6[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights))
    {
      FigDebugAssert3();
      v100 = FigSignalErrorAtGM();

      goto LABEL_23;
    }

    v73 = objc_alloc_init(ToneMappingBuffers);
    objc_storeStrong(&v73->curves, self->_toneMappingCurvesUBFusion);
    v131 = v73;
    objc_storeStrong(&v143, v73);
    v74 = sub_29583737C(&a6->meta.ltmCurves.ltmLut.version);
    v75 = sub_2958373B8(&a6->meta.ltmCurves.ltmLut.version);
    v76 = sub_29583725C(&a6->meta.ltmCurves.ltmLut.version);
    v77 = sub_2958372C4(&a6->meta.ltmCurves.ltmLut.version);
    LODWORD(v73) = objc_msgSend_width(v129[3], v78, v79, v80);
    v84 = objc_msgSend_height(v129[3], v81, v82, v83);
    v88 = v74 / 2 * v76;
    v89 = v75 / 2 * v77;
    LODWORD(v90) = ((2 * v73 - v88) / 2 + v74 / 4) / 2;
    DWORD1(v90) = ((2 * v84 - v89) / 2 + v75 / 4) / 2;
    DWORD2(v90) = (v88 - v74 / 2) / 2;
    HIDWORD(v90) = (v89 - v75 / 2) / 2;
    v144 = v90;
    if (self->_nrfConfig->_compressionLevel <= 0)
    {
      v91 = 0;
    }

    else
    {
      v91 = 255;
    }

    regDense = self->_regDense;
    v13 = v134;
    v93 = objc_msgSend_width(v129[2], v85, v86, v87);
    v97 = objc_msgSend_height(v129[2], v94, v95, v96);
    v100 = objc_msgSend_prepareWithRegDenseParams_subAllocatorID_imageWidth_imageHeight_(regDense, v98, v138, v91, v93, v97);
    if (v100)
    {
      FigDebugAssert3();
      goto LABEL_22;
    }

    v145 = BYTE1(a5[1].meta.exposureParams.normalized_snr);
    *&v101 = v64;
    if (!objc_msgSend_runLowLightWithReferenceImage_nonReferenceImage_warpedImage_refWeightsLuma_nonRefWeightsLuma_relativeBrightness_homography_regDenseParams_(self->_regDense, v99, v129, v71, v132, v135->textureY[3], v134->textureY[3], &a5[1].meta.exposureParams.conversion_gain, v101, v138))
    {
      objc_msgSend_resetIncludingConfidence_(self->_regDense, v102, v140 == 2, v103);
      a5[1].meta.ltmCurves.ltmLut.bytes[244] = 1;
      if (v133)
      {
        v105 = v134->textureY[0];
        v106 = v134->textureUV[0];
        v100 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v107, v132[2], v105);
        if (v100 || (v100 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v108, v132[3], v106)) != 0)
        {
          FigDebugAssert3();
          FigSignalErrorAtGM();

          v13 = v134;
          goto LABEL_22;
        }

        FigMetalDecRef();
        FigMetalDecRef();

        v13 = v134;
      }

      else if (objc_msgSend_setLumaTexture_chromaTexture_level_metal_(v134, v104, v132[2], v132[3], 0, self->_metal))
      {
        goto LABEL_38;
      }

      v110 = MEMORY[0x29EDCA928];
      v111 = *(MEMORY[0x29EDCA928] + 16);
      *&a5[1].meta.exposureParams.conversion_gain = *MEMORY[0x29EDCA928];
      *&a5[1].meta.exposureParams.luxLevel = v111;
      *&a5[1].meta.exposureParams.CCT = *(v110 + 32);
      if (!objc_msgSend_createPyramidForFrame_cfp_(self, v109, v13, a5))
      {
        v100 = 0;
LABEL_22:

LABEL_23:
        v21 = v128;
        goto LABEL_24;
      }
    }

LABEL_38:
    FigDebugAssert3();
    v100 = FigSignalErrorAtGM();
    goto LABEL_22;
  }

  sub_295881FF4(v132, v138);
  v100 = v138[0];
LABEL_24:
  if (*MEMORY[0x29EDB9270])
  {
    v115 = objc_msgSend_commandQueue(self->_metal, v112, v113, v114);
    v119 = objc_msgSend_commandBuffer(v115, v116, v117, v118);

    objc_msgSend_setLabel_(v119, v120, @"KTRACE_END_MTL", v121);
    v137[0] = MEMORY[0x29EDCA5F8];
    v137[1] = 3221225472;
    v137[2] = sub_295802EE4;
    v137[3] = &unk_29EDDBE78;
    memset(&v137[4], 0, 24);
    objc_msgSend_addCompletedHandler_(v119, v122, v137, v123);
    objc_msgSend_commit(v119, v124, v125, v126);
  }

  if (v100)
  {
    LOWORD(a5[1].meta.exposureParams.normalized_snr) = 1;
  }

  return v100;
}

- (int)toneMapBand1Frame:(id)a3 properties:(const frameProperties_t *)a4 sourceFrameType:(int)a5 sourceFrameIndex:(int)a6 ltcFrameIndex:(int)a7 gtcFrameIndex:(int)a8 nrfPlist:(id)a9
{
  v15 = a3;
  v16 = a9;
  v17 = objc_alloc_init(ToneMappingBuffers);
  if (a6 >= 5)
  {
    sub_2958823B4(&v42);
LABEL_22:
    v39 = v42;
    goto LABEL_17;
  }

  if (a7 >= 5)
  {
    sub_295882318(&v42);
    goto LABEL_22;
  }

  if (a8 >= 5)
  {
    sub_29588227C(&v42);
    goto LABEL_22;
  }

  v18 = a4 + 224224 * a7;
  v19 = (&a4->meta.sensorID + 56056 * a6);
  v20 = sub_295820728((v18 + 16), (v19 + 2), a4);
  if (a5 == 2)
  {
    p_fusedBand = &self->_fusedBand;
    objc_storeStrong(&v17->inLumaTex, self->_fusedBand->textureY[1]);
  }

  else
  {
    objc_storeStrong(&v17->inLumaTex, self->_inputBands->bands[a6]->textureY[1]);
    p_fusedBand = &self->_inputBands->bands[a6];
  }

  objc_storeStrong(&v17->inChromaTex, (*p_fusedBand)->textureUV[1]);
  localGainMapTex = v17->localGainMapTex;
  v17->localGainMapTex = 0;

  objc_storeStrong(&v17->outLumaTex, v15[2]);
  objc_storeStrong(&v17->outChromaTex, v15[3]);
  objc_storeStrong(&v17->curves, self->_toneMappingCurvesSkinMapInput);
  skinMask = v17->skinMask;
  v17->skinMask = 0;

  personMask = v17->personMask;
  v17->personMask = 0;

  skyMask = v17->skyMask;
  v17->skyMask = 0;

  faceLandmarks = v17->faceLandmarks;
  v17->faceLandmarks = 0;

  for (i = 0; i != 4; ++i)
  {
    v28 = v17->instanceMasks[i];
    v17->instanceMasks[i] = 0;
  }

  skinToneClassification = v17->skinToneClassification;
  v17->skinToneClassification = 0;

  maskConfidences = v17->maskConfidences;
  v17->maskConfidences = 0;

  v31 = a4 + 224224 * a8;
  objc_msgSend_setToneCurvesWithLTC_GTC_colorCorrectionMatrix_dump_(self->_toneMappingCurvesSkinMapInput, v32, (v18 + 168), (v31 + 168), 0, v19[28006], v19[28008], v19[28010]);
  if (*(v19 + 224146))
  {
    v35 = MEMORY[0x29EDCA928];
  }

  else
  {
    v35 = v19 + 28006;
  }

  v36 = (MEMORY[0x29EDCA928] + 32);
  if (!*(v19 + 224146))
  {
    v36 = v19 + 28010;
  }

  v37 = (MEMORY[0x29EDCA928] + 16);
  if (!*(v19 + 224146))
  {
    v37 = v19 + 28008;
  }

  BYTE4(v41) = v18[224144];
  LODWORD(v41) = 3;
  *&v34 = v20;
  IsLinear = objc_msgSend_runToneMapping_bilateralGrid_bilateralGridHomography_tmPlist_darkestFrameMetadata_ev0FrameMetadata_scaleInput_colorCorrection_hasChromaBias_quality_inputIsLinear_(self->_toneMappingStage, v33, v17, 0, v16[5], v18, v31, 0, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32), v34, *v35, *v37, *v36, v41);
  v39 = 0;
  if (IsLinear)
  {
    sub_2958821E0(IsLinear, &v42);
    goto LABEL_22;
  }

LABEL_17:

  return v39;
}

- (int)downsampleBand0Frame:(id)a3 sourceFrameIndex:(int)a4
{
  v6 = a3;
  if (a4 >= 5)
  {
    sub_2958825E0(v44);
LABEL_9:
    v40 = v44[0];
    goto LABEL_5;
  }

  v7 = self->_inputBands->bands[a4]->textureY[0];
  v8 = self->_inputBands->bands[a4]->textureUV[0];
  v12 = objc_msgSend_commandBuffer(self->_metal, v9, v10, v11);
  if (!v12)
  {
    sub_295882524(v8, v7, v44);
    goto LABEL_9;
  }

  v16 = v12;
  v17 = objc_msgSend_computeCommandEncoder(v12, v13, v14, v15);
  if (!v17)
  {
    sub_295882450(v8, v7, v16, v44);
    goto LABEL_9;
  }

  v20 = v17;
  objc_msgSend_setComputePipelineState_(v17, v18, self->_shaders->_downsampleInference, v19);
  objc_msgSend_setTexture_atIndex_(v20, v21, v7, 21);
  objc_msgSend_setTexture_atIndex_(v20, v22, v8, 22);
  objc_msgSend_setTexture_atIndex_(v20, v23, v6[2], 29);
  objc_msgSend_setTexture_atIndex_(v20, v24, v6[3], 30);
  v28 = objc_msgSend_width(v6[3], v25, v26, v27);
  v32 = objc_msgSend_height(v6[3], v29, v30, v31);
  v44[0] = v28;
  v44[1] = v32;
  v44[2] = 1;
  v42 = vdupq_n_s64(0x10uLL);
  v43 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v20, v33, v44, &v42);
  objc_msgSend_endEncoding(v20, v34, v35, v36);
  objc_msgSend_commit(self->_metal, v37, v38, v39);

  v40 = 0;
LABEL_5:

  return v40;
}

- (int)fuseFramesWithConfig:(const FusionConfiguration *)a3 properties:(frameProperties_t *)a4 nrfPlist:(id)a5 batchN:(int)a6 isLastBatch:(BOOL)a7 usePatchBasedFusion:(BOOL)a8 isLowLight:(BOOL)a9
{
  v10 = a7;
  v12 = a5;
  v16 = objc_msgSend_allocator(self->_metal, v13, v14, v15);
  v20 = objc_msgSend_newTextureDescriptor(v16, v17, v18, v19);

  if (!v20)
  {
    sub_295882BEC(&v297);
    v275 = v297;
    goto LABEL_56;
  }

  v280 = a8;
  v24 = objc_msgSend_desc(v20, v21, v22, v23);
  objc_msgSend_setUsage_(v24, v25, 7, v26);

  v292 = objc_msgSend_width(self->_inputBands->bands[0]->textureY[0], v27, v28, v29);
  v293 = objc_msgSend_height(self->_inputBands->bands[0]->textureY[0], v30, v31, v32);
  v36 = v12[3];
  v281 = v20;
  if (*(v36 + 24) == 1 && *(v36 + 96) != 2)
  {
    v296 = 0;
    v37 = objc_msgSend_desc(v20, v33, v34, v35);
    objc_msgSend_setWidth_(v37, v38, v292, v39);

    v43 = objc_msgSend_desc(v20, v40, v41, v42);
    objc_msgSend_setHeight_(v43, v44, v293, v45);

    v49 = objc_msgSend_desc(v20, v46, v47, v48);
    objc_msgSend_setPixelFormat_(v49, v50, 25, v51);

    objc_msgSend_setLabel_(v20, v52, 0, v53);
    v57 = objc_msgSend_allocator(self->_metal, v54, v55, v56);
    v297 = objc_msgSend_newTextureWithDescriptor_(v57, v58, v20, v59);

    if (v297)
    {
      v278 = v10;
      v63 = objc_msgSend_allocator(self->_metal, v60, v61, v62);
      v66 = objc_msgSend_newTextureDescriptor_(v63, v64, 0, v65);

      v70 = objc_msgSend_width(self->_inputBands->bands[0]->textureUV[0], v67, v68, v69);
      v74 = objc_msgSend_desc(v66, v71, v72, v73);
      objc_msgSend_setWidth_(v74, v75, v70, v76);

      v80 = objc_msgSend_height(self->_inputBands->bands[0]->textureUV[0], v77, v78, v79);
      v84 = objc_msgSend_desc(v66, v81, v82, v83);
      objc_msgSend_setHeight_(v84, v85, v80, v86);

      v90 = objc_msgSend_desc(v66, v87, v88, v89);
      objc_msgSend_setPixelFormat_(v90, v91, 65, v92);

      objc_msgSend_setLabel_(v66, v93, 0, v94);
      v98 = objc_msgSend_allocator(self->_metal, v95, v96, v97);
      v296 = objc_msgSend_newTextureWithDescriptor_subAllocatorID_(v98, v99, v66, 0);

      if (v296)
      {

        finalScaleFwd = a3[4].colorSpaceConversionParameters[1].finalScaleFwd;
        if (SLODWORD(finalScaleFwd) >= 1)
        {
          v101 = 0;
          v286 = *(MEMORY[0x29EDCA928] + 16);
          v287 = *MEMORY[0x29EDCA928];
          p_nonLinearScale = &a3->colorSpaceConversionParameters[0].transferFunctionInv.nonLinearScale;
          v284 = vdupq_n_s32(0x358637BDu);
          v285 = *(MEMORY[0x29EDCA928] + 32);
          v103 = a4;
          do
          {
            v104 = vandq_s8(vandq_s8(vcgeq_f32(v284, vabdq_f32(p_nonLinearScale[-1], v286)), vcgeq_f32(v284, vabdq_f32(p_nonLinearScale[-2], v287))), vcgeq_f32(v284, vabdq_f32(*p_nonLinearScale, v285)));
            v104.i32[3] = v104.i32[2];
            if ((vminvq_u32(v104) & 0x80000000) == 0)
            {
              v105 = self->_inputBands->bands[v101];
              v106 = v105->textureY[0];
              v107 = v105->textureUV[0];
              warpStage = self->_warpStage;
              v288 = p_nonLinearScale[-2];
              v289 = *p_nonLinearScale[-1].i64;
              v290 = *p_nonLinearScale->i64;
              v109 = v105->textureYCbCrBand0;
              v110 = v107;
              v111 = v106;
              objc_msgSend_runWarpUsingTransform_inputLumaTex_inputChromaTex_outputLumaTex_outputChromaTex_(warpStage, v112, v111, v110, v297, v296, *v288.i64, v289, v290);
              objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_inputBands->bands[v101], v113, v297, v296, 0, self->_metal);
              objc_msgSend_createPyramidForFrame_cfp_(self, v114, self->_inputBands->bands[v101], v103);
              objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_inputBands->bands[v101], v115, v111, v110, 0, self->_metal);
              objc_msgSend_setYCbCrBand0Texture_(self->_inputBands->bands[v101], v116, v109, v117);

              finalScaleFwd = a3[4].colorSpaceConversionParameters[1].finalScaleFwd;
            }

            ++v101;
            v103 = (v103 + 224224);
            p_nonLinearScale += 3;
          }

          while (v101 < SLODWORD(finalScaleFwd));
        }

        FigMetalDecRef();
        FigMetalDecRef();

        v20 = v281;
        v10 = v278;
        goto LABEL_12;
      }

      sub_29588267C(v66, v298);
      v275 = v298[0];
    }

    else
    {
      sub_295882730(v298);
      v275 = v298[0];
    }

    goto LABEL_56;
  }

LABEL_12:
  finalScaleFwd_low = LODWORD(a3[4].colorSpaceConversionParameters[1].finalScaleFwd);
  if (finalScaleFwd_low < 1)
  {
    v120 = 0;
LABEL_23:
    self->_fusedBand->levels = 4;
    fusedBand = self->_fusedBand;
    if (!a6)
    {
      v155 = fusedBand->textureY[3];
      if (FigMetalIsValid())
      {
        v159 = self->_fusedBand;
      }

      else
      {
        v160 = objc_msgSend_desc(v281, v156, v157, v158);
        objc_msgSend_setWidth_(v160, v161, (v292 >> 3), v162);

        v166 = objc_msgSend_desc(v281, v163, v164, v165);
        objc_msgSend_setHeight_(v166, v167, (v293 >> 3), v168);

        v172 = objc_msgSend_desc(v281, v169, v170, v171);
        objc_msgSend_setPixelFormat_(v172, v173, 25, v174);

        objc_msgSend_setLabel_(v281, v175, 0, v176);
        v180 = objc_msgSend_allocator(self->_metal, v177, v178, v179);
        v183 = objc_msgSend_newTextureWithDescriptor_(v180, v181, v281, v182);
        v184 = self->_fusedBand->textureY[3];
        self->_fusedBand->textureY[3] = v183;

        v159 = self->_fusedBand;
        if (!v159->textureY[3])
        {
          sub_29588282C();
          goto LABEL_68;
        }
      }

      v185 = v159->textureUV[3];
      if (FigMetalIsValid())
      {
        fusedBand = self->_fusedBand;
      }

      else
      {
        v188 = objc_msgSend_desc(v281, v33, v186, v187);
        objc_msgSend_setWidth_(v188, v189, (v292 >> 4) & 0x7FFFFFFF, v190);

        v194 = objc_msgSend_desc(v281, v191, v192, v193);
        objc_msgSend_setHeight_(v194, v195, (v293 >> 4) & 0x7FFFFFFF, v196);

        v200 = objc_msgSend_desc(v281, v197, v198, v199);
        objc_msgSend_setPixelFormat_(v200, v201, 65, v202);

        objc_msgSend_setLabel_(v281, v203, 0, v204);
        v208 = objc_msgSend_allocator(self->_metal, v205, v206, v207);
        v211 = objc_msgSend_newTextureWithDescriptor_(v208, v209, v281, v210);
        v212 = self->_fusedBand->textureUV[3];
        self->_fusedBand->textureUV[3] = v211;

        fusedBand = self->_fusedBand;
        if (!fusedBand->textureUV[3])
        {
          sub_2958828CC();
          goto LABEL_68;
        }
      }
    }

    if (objc_msgSend_prepareForFusion_config_fusedPyramid_properties_nrfPlist_staticScene_isLowLight_(self->_fusionRemixStage, v33, self->_inputBands, a3, fusedBand, a4, v12, self->_isStaticScene, a9))
    {
      sub_29588296C();
    }

    else if (self->_doGreenGhostMitigation && v10 && a9 && objc_msgSend_mixFusedTexturesWithRefLuma_refChroma_refProperties_tuningParams_(self->_greenGhostLowLightStage, v213, self->_inputBands->bands[0]->textureY[0], self->_inputBands->bands[0]->textureUV[0], a4, v12[15]))
    {
      sub_295882A0C();
    }

    else
    {
      v216 = MEMORY[0x29EDB9270];
      if (*MEMORY[0x29EDB9270])
      {
        v217 = objc_msgSend_commandQueue(self->_metal, v213, v214, v215);
        v221 = objc_msgSend_commandBuffer(v217, v218, v219, v220);

        objc_msgSend_setLabel_(v221, v222, @"KTRACE_START_MTL", v223);
        objc_msgSend_addCompletedHandler_(v221, v224, &unk_2A1CA9220, v225);
        objc_msgSend_commit(v221, v226, v227, v228);
      }

      v229 = 0.0;
      if (LOBYTE(a3[4].colorSpaceConversionParameters[2].transferFunctionFwd.nonLinearBias))
      {
        *&v229 = 0.5;
      }

      BYTE6(v277) = v280;
      BYTE5(v277) = a9;
      BYTE4(v277) = v10;
      LODWORD(v277) = a6;
      if (objc_msgSend_runImageFusion_config_fusedPyramid_accWeightPyramid_buffers_properties_nrfPlist_confidence_batchN_isLastBatch_isLowLight_usePatchBasedFusion_outputChromaBias_(self->_fusionRemixStage, v213, self->_inputBands, a3, self->_fusedBand, self->_accWeightPyramid, self->_fusionBuffers, a4, v229, v12, v120, v277))
      {
        sub_295882AAC();
      }

      else
      {
        if (*v216)
        {
          v233 = objc_msgSend_commandQueue(self->_metal, v230, v231, v232);
          v237 = objc_msgSend_commandBuffer(v233, v234, v235, v236);

          objc_msgSend_setLabel_(v237, v238, @"KTRACE_END_MTL", v239);
          v295[0] = MEMORY[0x29EDCA5F8];
          v295[1] = 3221225472;
          v295[2] = sub_2958042A4;
          v295[3] = &unk_29EDDBE78;
          memset(&v295[4], 0, 24);
          objc_msgSend_addCompletedHandler_(v237, v240, v295, v241);
          objc_msgSend_commit(v237, v242, v243, v244);
        }

        if (!self->_doGreenGhostMitigation || !a9 || !v10)
        {
          goto LABEL_50;
        }

        if (*v216)
        {
          v245 = objc_msgSend_commandQueue(self->_metal, v230, v231, v232);
          v249 = objc_msgSend_commandBuffer(v245, v246, v247, v248);

          objc_msgSend_setLabel_(v249, v250, @"KTRACE_START_MTL", v251);
          objc_msgSend_addCompletedHandler_(v249, v252, &unk_2A1CA9240, v253);
          objc_msgSend_commit(v249, v254, v255, v256);
        }

        if (!objc_msgSend_inpaintLuma_andChroma_tuningParams_(self->_greenGhostLowLightStage, v230, self->_fusionBuffers->fusedLumaTex, self->_fusionBuffers->fusedChromaTex, v12[15]))
        {
          if (*v216)
          {
            v260 = objc_msgSend_commandQueue(self->_metal, v257, v258, v259);
            v264 = objc_msgSend_commandBuffer(v260, v261, v262, v263);

            objc_msgSend_setLabel_(v264, v265, @"KTRACE_END_MTL", v266);
            v294[0] = MEMORY[0x29EDCA5F8];
            v294[1] = 3221225472;
            v294[2] = sub_295804400;
            v294[3] = &unk_29EDDBE78;
            memset(&v294[4], 0, 24);
            objc_msgSend_addCompletedHandler_(v264, v267, v294, v268);
            objc_msgSend_commit(v264, v269, v270, v271);
          }

LABEL_50:
          for (i = 0; i != 5; ++i)
          {
            if (self->_inputBands->bands[i])
            {
              FigMetalDecRef();
              v273 = self->_inputBands->bands[i];
              FigMetalDecRef();
              objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v274, self->_inputBands->bands[i], self->_metal);
            }
          }

          v275 = 0;
          goto LABEL_55;
        }

        sub_295882B4C();
      }
    }

LABEL_68:
    v275 = v297;
LABEL_55:
    v20 = v281;
    goto LABEL_56;
  }

  v119 = &a4[1].meta.ltmCurves.ltmLut.bytes[244];
  while (*v119 != 1 || !self->_regDense->_pyrConfidence->textureY[0])
  {
    v119 += 224224;
    if (!--finalScaleFwd_low)
    {
      v120 = 0;
      goto LABEL_23;
    }
  }

  v279 = v10;
  FigMetalIncRef();
  objc_storeStrong(&self->_regDense->_pyrConfidence->textureY[1], self->_regDense->_pyrConfidence->textureY[0]);
  v124 = 0;
  while (1)
  {
    v125 = objc_msgSend_desc(v20, v121, v122, v123);
    objc_msgSend_setWidth_(v125, v126, (v292 >> (v124 + 2)), v127);

    v131 = objc_msgSend_desc(v20, v128, v129, v130);
    objc_msgSend_setHeight_(v131, v132, (v293 >> (v124 + 2)), v133);

    v137 = objc_msgSend_desc(v20, v134, v135, v136);
    objc_msgSend_setPixelFormat_(v137, v138, 25, v139);

    objc_msgSend_setLabel_(v20, v140, 0, v141);
    v145 = objc_msgSend_allocator(self->_metal, v142, v143, v144);
    v148 = objc_msgSend_newTextureWithDescriptor_(v145, v146, v20, v147);
    v149 = &self->_regDense->_pyrConfidence->textureY[v124];
    v150 = v149[2];
    v149[2] = v148;

    regDense = self->_regDense;
    v152 = &regDense->_pyrConfidence->textureY[v124];
    if (objc_msgSend_pyramidConfidence_input_(regDense, v153, *(v152 + 16), *(v152 + 8)))
    {
      break;
    }

    if (++v124 == 2)
    {
      v120 = self->_regDense->_pyrConfidence;
      v10 = v279;
      goto LABEL_23;
    }
  }

  sub_2958827CC();
  v275 = 0;
LABEL_56:

  return v275;
}

- (int)computeMotionScore:(int)a3 ev0FrameIndex:(int)a4 evmProperties:(const frameProperties_t *)a5 ev0Properties:(const frameProperties_t *)a6 motionScore:(float *)a7 nrfPlist:(id)a8
{
  *a7 = 0.0;
  v8 = objc_msgSend_runMotionDetection_evm_ev0_evmProperties_ev0Properties_nrfPlist_(self->_motionDetection, a2, a7, self->_inputBands->bands[a3]->textureY[1], self->_inputBands->bands[a4]->textureY[1], a5, a6, a8);
  if (v8)
  {
    sub_295882C88();
  }

  else if (dword_2A18C2398)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v8;
}

- (int)startSyntheticReferenceDetectors:(const FusionConfiguration *)a3 properties:(const frameProperties_t *)a4 nrfPlist:(id)a5
{
  v9 = a5;
  if (!self->_nrfConfig->_enableDeepFusion)
  {
    sub_295882CE8(&v15);
LABEL_11:
    v13 = v15;
    goto LABEL_6;
  }

  linearScale_low = LODWORD(a3[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale);
  if ((linearScale_low & 0x80000000) != 0)
  {
    sub_295882EBC(&v15);
    goto LABEL_11;
  }

  v11 = *&a3[4].colorSpaceConversionParameters[1].outputToLinearYCbCr;
  if ((v11 & 0x80000000) != 0)
  {
    sub_295882E20(&v15);
    goto LABEL_11;
  }

  started = objc_msgSend_startDetectorsWithGrayGhost_motionDetection_evm_ev0_evmProperties_ev0Properties_nrfPlist_(self->_syntheticReferenceStage, v8, self->_grayGhostDetection, self->_motionDetection, self->_inputBands->bands[v11], self->_inputBands->bands[linearScale_low], a4 + 224224 * v11, a4 + 224224 * linearScale_low, v9);
  if (started)
  {
    sub_295882D84(started, &v15);
    goto LABEL_11;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (int)collectSyntheticReferenceDetectorsResultsSync:(float *)a3 srMode:(int *)a4 nrfPlist:(id)a5
{
  if (self->_nrfConfig->_enableDeepFusion)
  {
    v8 = objc_msgSend_collectDetectorsResultsWithGrayGhost_motionDetection_nrfPlist_(self->_syntheticReferenceStage, a2, self->_grayGhostDetection, self->_motionDetection, a5);
    if (v8)
    {
      sub_295882FF4(v8, &v16);
      return v16;
    }

    else
    {
      if (a3)
      {
        objc_msgSend_getMotionDetectionResultSync(self->_motionDetection, v9, v10, v11);
        *a3 = v12;
      }

      if (a4)
      {
        SyntheticReferenceMode = objc_msgSend_getSyntheticReferenceMode(self->_syntheticReferenceStage, v9, v10, v11);
        result = 0;
        *a4 = SyntheticReferenceMode;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    sub_295882F58(&v15);
    return v15;
  }

  return result;
}

- (uint64_t)doSyntheticReference:(double)a3 noiseDivisorOutputTex:(uint64_t)a4 lscGainsTex:(void *)a5 config:(void *)a6 evmProperties:(void *)a7 evmGreenTintAdjustment:(uint64_t)a8 ev0Properties:(uint64_t)a9 nrfPlist:(uint64_t)a10 intermediateMetadata:(id)a11
{
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v182 = a11;
  v181 = a12;
  v21 = v18;
  v25 = v21;
  if (!v21)
  {
    sub_2958837E0(&v183);
    v44 = 0;
    v30 = 0;
    v172 = v183;
    goto LABEL_40;
  }

  if (!v21[1])
  {
    sub_295883744(&v183);
LABEL_35:
    v30 = 0;
LABEL_39:
    v172 = v183;
    v44 = v25;
    goto LABEL_40;
  }

  if (!v21[2])
  {
    sub_2958836A8(&v183);
    goto LABEL_35;
  }

  if (!v21[3])
  {
    sub_29588360C(&v183);
    goto LABEL_35;
  }

  v178 = a10;
  v26 = objc_msgSend_allocator(*(a1 + 144), v22, v23, v24);
  v30 = objc_msgSend_newTextureDescriptor(v26, v27, v28, v29);

  if (!v30)
  {
    sub_295883570(&v183);
    goto LABEL_39;
  }

  if ((*(*(a1 + 152) + 63) & 1) == 0)
  {
    sub_295883090(&v183);
    goto LABEL_39;
  }

  v34 = *(a8 + 1308);
  if ((v34 & 0x80000000) != 0)
  {
    sub_2958834D4(&v183);
    goto LABEL_39;
  }

  v177 = v20;
  v35 = *(a8 + 1304);
  v39 = objc_msgSend_pixelFormat(v25[2], v31, v32, v33) == 588 && objc_msgSend_pixelFormat(v25[3], v36, v37, v38) == 589;
  v176 = a9;
  if (objc_msgSend_isCompressed(v25[2], v36, v37, v38))
  {
    v43 = objc_msgSend_isCompressed(v25[3], v40, v41, v42) ^ 1;
  }

  else
  {
    v43 = 1;
  }

  v44 = v25;
  v175 = v39 & v43;
  if ((v39 & v43) == 1)
  {
    v44 = objc_opt_new();

    if (v44)
    {
      v174 = v19;
      v48 = objc_msgSend_width(v25[2], v45, v46, v47);
      v52 = objc_msgSend_desc(v30, v49, v50, v51);
      objc_msgSend_setWidth_(v52, v53, v48, v54);

      v58 = objc_msgSend_height(v25[2], v55, v56, v57);
      v62 = objc_msgSend_desc(v30, v59, v60, v61);
      objc_msgSend_setHeight_(v62, v63, v58, v64);

      v68 = objc_msgSend_desc(v30, v65, v66, v67);
      objc_msgSend_setUsage_(v68, v69, 3, v70);

      v74 = objc_msgSend_desc(v30, v71, v72, v73);
      objc_msgSend_setPixelFormat_(v74, v75, 25, v76);

      v80 = objc_msgSend_desc(v30, v77, v78, v79);
      objc_msgSend_setCompressionMode_(v80, v81, 2, v82);

      v86 = objc_msgSend_desc(v30, v83, v84, v85);
      objc_msgSend_setCompressionFootprint_(v86, v87, 0, v88);

      objc_msgSend_setLabel_(v30, v89, 0, v90);
      v94 = objc_msgSend_allocator(*(a1 + 144), v91, v92, v93);
      v97 = objc_msgSend_newTextureWithDescriptor_(v94, v95, v30, v96);
      v98 = v44[2];
      v44[2] = v97;

      if (objc_msgSend_isCompressed(v44[2], v99, v100, v101))
      {
        sub_29588339C(&v183);
      }

      else
      {
        v105 = objc_msgSend_width(v25[3], v102, v103, v104);
        v109 = objc_msgSend_desc(v30, v106, v107, v108);
        objc_msgSend_setWidth_(v109, v110, v105, v111);

        v115 = objc_msgSend_height(v25[3], v112, v113, v114);
        v119 = objc_msgSend_desc(v30, v116, v117, v118);
        objc_msgSend_setHeight_(v119, v120, v115, v121);

        v125 = objc_msgSend_desc(v30, v122, v123, v124);
        objc_msgSend_setUsage_(v125, v126, 3, v127);

        v131 = objc_msgSend_desc(v30, v128, v129, v130);
        objc_msgSend_setPixelFormat_(v131, v132, 65, v133);

        v137 = objc_msgSend_desc(v30, v134, v135, v136);
        objc_msgSend_setCompressionMode_(v137, v138, 2, v139);

        v143 = objc_msgSend_desc(v30, v140, v141, v142);
        objc_msgSend_setCompressionFootprint_(v143, v144, 0, v145);

        objc_msgSend_setLabel_(v30, v146, 0, v147);
        v151 = objc_msgSend_allocator(*(a1 + 144), v148, v149, v150);
        v154 = objc_msgSend_newTextureWithDescriptor_(v151, v152, v30, v153);
        v155 = v44[3];
        v44[3] = v154;

        if (!objc_msgSend_isCompressed(v44[3], v156, v157, v158))
        {
          v19 = v174;
          goto LABEL_19;
        }

        sub_295883300(&v183);
      }

      v172 = v183;
      v19 = v174;
    }

    else
    {
      sub_295883438(&v183);
      v172 = v183;
    }

    v20 = v177;
LABEL_40:
    v165 = v182;
    v164 = v181;
    goto LABEL_30;
  }

LABEL_19:
  v159 = *(a1 + 448) + 8;
  v20 = v177;
  if ((v35 & 0x80000000) != 0)
  {
    v160 = 0;
    v161 = MEMORY[0x29EDCA928];
  }

  else
  {
    v160 = *(v159 + 8 * v35);
    v161 = (a8 + 48 * *(a8 + 1304));
  }

  v162 = *(v159 + 8 * v34);
  v163 = (a8 + 48 * *(a8 + 1308));
  v164 = v181;
  v165 = v182;
  v166 = objc_msgSend_doSyntheticReference_noiseDivisorOutputTex_lscGainsTex_evm_ev0_evmHomography_ev0Homography_evmProperties_evmGreenTintAdjustment_ev0Properties_nrfPlist_intermediateMetadata_(*(a1 + 496), v40, v44, v19, v177, v160, v162, v176, *v161, v161[2], v161[4], *v163, v163[2], v163[4], a2, a3, v178, v182, v181);
  if (v166)
  {
    sub_29588312C(v166, &v183);
    goto LABEL_49;
  }

  if (v175)
  {
    v169 = objc_msgSend_copyTexture_outTex_(*(a1 + 184), v167, v44[2], v25[2]);
    if (v169)
    {
      sub_2958831C8(v169, &v183);
    }

    else
    {
      FigMetalDecRef();
      v171 = objc_msgSend_copyTexture_outTex_(*(a1 + 184), v170, v44[3], v25[3]);
      if (!v171)
      {
        FigMetalDecRef();
        goto LABEL_27;
      }

      sub_295883264(v171, &v183);
    }

LABEL_49:
    v172 = v183;
    goto LABEL_30;
  }

LABEL_27:
  if ((v35 & 0x80000000) == 0)
  {
    objc_msgSend__freeInputBandPyramidForFrame_(a1, v167, v35, v168);
  }

  v172 = 0;
LABEL_30:

  return v172;
}

- (uint64_t)deepFusionBuildNoiseMap:(double)a3 lscGainsTex:(uint64_t)a4 config:(void *)a5 evmProperties:(void *)a6 evmGreenTintAdjustment:(uint64_t)a7 ev0Properties:(uint64_t)a8 nrfPlist:(uint64_t)a9
{
  v14 = a5;
  v15 = a6;
  v16 = *(a7 + 1308);
  v17 = *(a7 + 1304);
  v21 = objc_msgSend_allocator(*(a1 + 144), v18, v19, v20);
  v25 = objc_msgSend_newTextureDescriptor(v21, v22, v23, v24);

  if (!v25)
  {
    sub_295883C48(&v123);
LABEL_16:
    v30 = 0;
LABEL_18:
    NoiseMap_outputNoiseMapChroma_lscGainsTex_ev0_ev0Homography_ev0Properties = v123;
    goto LABEL_12;
  }

  v26 = *(a1 + 448);
  if (!v26)
  {
    sub_295883BAC(&v123);
    goto LABEL_16;
  }

  if ((v16 & 0x80000000) != 0)
  {
    sub_295883B10(&v123);
    goto LABEL_16;
  }

  v30 = *(v26 + 8 + 8 * v16);
  v31 = v30[42];
  if (!v31)
  {
    sub_295883A74(&v123);
    goto LABEL_18;
  }

  v119 = a8;
  v122 = v14;
  v32 = objc_msgSend_width(v31, v27, v28, v29);
  v36 = objc_msgSend_height(v30[42], v33, v34, v35);
  v40 = objc_msgSend_desc(v25, v37, v38, v39);
  objc_msgSend_setUsage_(v40, v41, 3, v42);

  v46 = objc_msgSend_desc(v25, v43, v44, v45);
  objc_msgSend_setWidth_(v46, v47, v32, v48);

  v52 = objc_msgSend_desc(v25, v49, v50, v51);
  objc_msgSend_setHeight_(v52, v53, v36, v54);

  v58 = objc_msgSend_desc(v25, v55, v56, v57);
  objc_msgSend_setPixelFormat_(v58, v59, 25, v60);

  objc_msgSend_setLabel_(v25, v61, 0, v62);
  v66 = objc_msgSend_allocator(*(a1 + 144), v63, v64, v65);
  v69 = objc_msgSend_newTextureWithDescriptor_(v66, v67, v25, v68);
  v70 = *(a1 + 640);
  v71 = *(v70 + 16);
  *(v70 + 16) = v69;

  if (!*(*(a1 + 640) + 16))
  {
    sub_2958839D8(&v123);
LABEL_21:
    NoiseMap_outputNoiseMapChroma_lscGainsTex_ev0_ev0Homography_ev0Properties = v123;
    v14 = v122;
    goto LABEL_12;
  }

  v75 = objc_msgSend_desc(v25, v72, v73, v74);
  v79 = objc_msgSend_width(v75, v76, v77, v78);
  objc_msgSend_setWidth_(v75, v80, v79 >> 1, v81);

  v85 = objc_msgSend_desc(v25, v82, v83, v84);
  v89 = objc_msgSend_height(v85, v86, v87, v88);
  objc_msgSend_setHeight_(v85, v90, v89 >> 1, v91);

  v95 = objc_msgSend_desc(v25, v92, v93, v94);
  objc_msgSend_setPixelFormat_(v95, v96, 65, v97);

  objc_msgSend_setLabel_(v25, v98, 0, v99);
  v103 = objc_msgSend_allocator(*(a1 + 144), v100, v101, v102);
  v106 = objc_msgSend_newTextureWithDescriptor_(v103, v104, v25, v105);
  v107 = *(a1 + 640);
  v108 = *(v107 + 24);
  *(v107 + 24) = v106;

  v110 = *(a1 + 640);
  v111 = *(v110 + 24);
  if (!v111)
  {
    sub_29588393C(&v123);
    goto LABEL_21;
  }

  v112 = *(a1 + 496);
  v113 = *(v110 + 16);
  if ((v17 & 0x80000000) != 0)
  {
    v117 = (a7 + 48 * *(a7 + 1308));
    NoiseMap_outputNoiseMapChroma_lscGainsTex_ev0_ev0Homography_ev0Properties = objc_msgSend_generateNoiseMap_outputNoiseMapChroma_lscGainsTex_ev0_ev0Homography_ev0Properties_(v112, v109, v113, v111, v15, v30, a9, *v117, v117[2], v117[4]);
    v14 = v122;
    if (NoiseMap_outputNoiseMapChroma_lscGainsTex_ev0_ev0Homography_ev0Properties)
    {
      sub_29588387C();
    }
  }

  else
  {
    v114 = (a7 + 48 * *(a7 + 1304));
    v115 = (a7 + 48 * *(a7 + 1308));
    v14 = v122;
    NoiseMap_outputNoiseMapChroma_lscGainsTex_ev0_ev0Homography_ev0Properties = objc_msgSend_generateNoiseMap_outputNoiseMapChroma_noiseDivisorTex_lscGainsTex_evm_ev0_evmHomography_ev0Homography_evmProperties_evmGreenTintAdjustmentParams_ev0Properties_(v112, v109, v113, v111, v122, v15, *(*(a1 + 448) + 8 + 8 * v17), v30, *v114, v114[2], v114[4], *v115, v115[2], v115[4], a2, a3, v119, a9);
    if (NoiseMap_outputNoiseMapChroma_lscGainsTex_ev0_ev0Homography_ev0Properties)
    {
      sub_2958838DC();
    }
  }

LABEL_12:

  return NoiseMap_outputNoiseMapChroma_lscGainsTex_ev0_ev0Homography_ev0Properties;
}

- (int)sanityCheckRansacColorModel:(RansacModel *)a3
{
  if (fabsf(a3->var0) > 0.0078 || fabsf(a3->var0 + (a3->var1 + -1.0)) > 0.0235)
  {
    *a3 = 0x3F80000000000000;
  }

  return 0;
}

- (unsigned)filterOutlierPairsInPlace:(float *)a3 and:(float *)a4 withMinX:(float)a5 maxX:(float)a6 inputSize:(int)a7
{
  result = 0;
  if (a7)
  {
    v8 = a4;
    v9 = a3;
    v10 = a7;
    do
    {
      v11 = *v9;
      if (*v9 >= a5 && v11 <= a6)
      {
        a3[result] = v11;
        a4[result++] = *v8;
      }

      ++v9;
      ++v8;
      --v10;
    }

    while (v10);
  }

  return result;
}

- (int)doSyntheticLong:(id)a3 noiseDivisorTex:(id)a4 realLongNoiseDivisorTex:(id)a5 lscGainsTex:(id)a6 config:(const FusionConfiguration *)a7 properties:(const frameProperties_t *)a8 motionScore:(float)a9 nrfPlist:(id)a10 intermediateMetadata:(id)a11
{
  v17 = a3;
  v18 = a4;
  v216 = a5;
  v220 = a6;
  v19 = a10;
  v219 = a11;
  obj = v17[2];
  v227 = obj;
  v221 = v17[3];
  v226 = v221;
  v225 = objc_opt_new();
  if (a7[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearThreshold < 0.0)
  {
    objc_msgSend_objectForKeyedSubscript_(v19[6], v20, @"4EV0", v21);
  }

  else
  {
    objc_msgSend_objectForKeyedSubscript_(v19[6], v20, @"3EV0_LONG", v21);
  }
  v22 = ;
  v25 = objc_msgSend_objectForKeyedSubscript_(v22, v23, @"StaticSceneMotionThreshold", v24);
  objc_msgSend_floatValue(v25, v26, v27, v28);
  v30 = v29;

  v31 = @"StaticParameters";
  if (v30 < a9)
  {
    v31 = @"DefaultParameters";
  }

  v32 = v31;
  v35 = objc_msgSend_objectForKeyedSubscript_(v19[6], v33, @"4EV0", v34);
  v38 = objc_msgSend_objectForKeyedSubscript_(v35, v36, v32, v37);

  v215 = v19;
  v41 = objc_msgSend_objectForKeyedSubscript_(v19[6], v39, @"3EV0_LONG", v40);
  v214 = v32;
  v44 = objc_msgSend_objectForKeyedSubscript_(v41, v42, v32, v43);

  v218 = v38;
  if (!v38)
  {
    sub_295884A30(v228);
LABEL_49:
    v198 = 0;
    goto LABEL_50;
  }

  if (!v44)
  {
    sub_295884994(v228);
    v198 = 0;
    v38 = 0;
LABEL_50:
    v208 = v228[0];
LABEL_58:
    v199 = v216;
    goto LABEL_44;
  }

  v51 = objc_msgSend_pixelFormat(v17[2], v45, v46, v47) == 588 && objc_msgSend_pixelFormat(v17[3], v48, v49, v50) == 589;
  if (objc_msgSend_isCompressed(v17[2], v48, v49, v50))
  {
    v55 = objc_msgSend_isCompressed(v17[3], v52, v53, v54) ^ 1;
  }

  else
  {
    v55 = 1;
  }

  v210 = v51 & v55;
  if ((v51 & v55) == 1)
  {
    v56 = objc_msgSend_allocator(self->_metal, v52, v53, v54);
    v60 = objc_msgSend_newTextureDescriptor(v56, v57, v58, v59);

    if (v60)
    {
      v64 = v44;
      v65 = objc_msgSend_width(v17[2], v61, v62, v63);
      v69 = objc_msgSend_desc(v60, v66, v67, v68);
      objc_msgSend_setWidth_(v69, v70, v65, v71);

      v75 = objc_msgSend_height(v17[2], v72, v73, v74);
      v79 = objc_msgSend_desc(v60, v76, v77, v78);
      objc_msgSend_setHeight_(v79, v80, v75, v81);

      v85 = objc_msgSend_desc(v60, v82, v83, v84);
      objc_msgSend_setUsage_(v85, v86, 3, v87);

      v91 = objc_msgSend_desc(v60, v88, v89, v90);
      objc_msgSend_setPixelFormat_(v91, v92, 25, v93);

      v97 = objc_msgSend_desc(v60, v94, v95, v96);
      objc_msgSend_setCompressionMode_(v97, v98, 2, v99);

      v103 = objc_msgSend_desc(v60, v100, v101, v102);
      objc_msgSend_setCompressionFootprint_(v103, v104, 0, v105);

      objc_msgSend_setLabel_(v60, v106, 0, v107);
      v111 = objc_msgSend_allocator(self->_metal, v108, v109, v110);
      v114 = objc_msgSend_newTextureWithDescriptor_(v111, v112, v60, v113);
      v227 = v114;

      if (objc_msgSend_isCompressed(v114, v115, v116, v117))
      {
        sub_29588485C(v228);
      }

      else
      {
        v121 = objc_msgSend_width(v17[3], v118, v119, v120);
        v125 = objc_msgSend_desc(v60, v122, v123, v124);
        objc_msgSend_setWidth_(v125, v126, v121, v127);

        v131 = objc_msgSend_height(v17[3], v128, v129, v130);
        v135 = objc_msgSend_desc(v60, v132, v133, v134);
        objc_msgSend_setHeight_(v135, v136, v131, v137);

        v141 = objc_msgSend_desc(v60, v138, v139, v140);
        objc_msgSend_setUsage_(v141, v142, 3, v143);

        v147 = objc_msgSend_desc(v60, v144, v145, v146);
        objc_msgSend_setPixelFormat_(v147, v148, 65, v149);

        v153 = objc_msgSend_desc(v60, v150, v151, v152);
        objc_msgSend_setCompressionMode_(v153, v154, 2, v155);

        v159 = objc_msgSend_desc(v60, v156, v157, v158);
        objc_msgSend_setCompressionFootprint_(v159, v160, 0, v161);

        objc_msgSend_setLabel_(v60, v162, 0, v163);
        v167 = objc_msgSend_allocator(self->_metal, v164, v165, v166);
        v170 = objc_msgSend_newTextureWithDescriptor_(v167, v168, v60, v169);
        v226 = v170;

        if (!objc_msgSend_isCompressed(v170, v171, v172, v173))
        {

          v221 = v170;
          obj = v114;
          v44 = v64;
          goto LABEL_19;
        }

        sub_2958847C0(v228);
      }

      v208 = v228[0];
      v44 = v64;
    }

    else
    {
      sub_2958848F8(v228);
      v208 = v228[0];
    }

    v198 = 0;
    v38 = 0;
    goto LABEL_58;
  }

LABEL_19:
  v174 = objc_opt_new();
  v38 = v174;
  if (!v174)
  {
    sub_295884724(v228);
    goto LABEL_49;
  }

  objc_storeStrong((v174 + 16), obj);
  objc_storeStrong(v38 + 3, v221);
  v175 = malloc_type_calloc(1uLL, 0xDAE10uLL, 0x1020040BB5A49F1uLL);
  if (!v175)
  {
    sub_2958846C4();
    v198 = 0;
    v208 = -12786;
    goto LABEL_58;
  }

  v217 = v38;
  v211 = v44;
  v212 = v18;
  v213 = v17;
  *v175 = 0xFFFFFFFF00000000;
  v175[2] = -1;
  finalScaleFwd = a7[4].colorSpaceConversionParameters[1].finalScaleFwd;
  v224 = v175;
  if (SLODWORD(finalScaleFwd) >= 1)
  {
    v179 = 0;
    v180 = 0;
    v181 = (v175 + 4);
    p_finalScale = &a7->colorSpaceConversionParameters[4].finalScale;
    p_exposureParams = &a8->meta.exposureParams;
    v184 = a7;
    while (1)
    {
      if (v179 != *&a7[4].colorSpaceConversionParameters[1].outputToLinearYCbCr)
      {
        objc_msgSend_addObject_(v225, v176, self->_inputBands->bands[v179], v177);
        v185 = sub_295820670(&a8->meta.exposureParams + 224224 * SLODWORD(a7[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale), p_exposureParams, 2);
        if (v180 > 3)
        {
          sub_295884454(v228);
          v208 = v228[0];
          v18 = v212;
          v17 = v213;
          v199 = v216;
          v44 = v211;
          goto LABEL_43;
        }

        v186 = &v181[224128 * v180];
        *v186 = *p_finalScale;
        v187 = *(p_finalScale + 1);
        v188 = *(p_finalScale + 2);
        v189 = *(p_finalScale + 4);
        *(v186 + 3) = *(p_finalScale + 3);
        *(v186 + 4) = v189;
        *(v186 + 1) = v187;
        *(v186 + 2) = v188;
        v190 = *(p_finalScale + 5);
        v191 = *(p_finalScale + 6);
        v192 = *(p_finalScale + 8);
        *(v186 + 7) = *(p_finalScale + 7);
        *(v186 + 8) = v192;
        *(v186 + 5) = v190;
        *(v186 + 6) = v191;
        v193 = *(p_finalScale + 9);
        v194 = *(p_finalScale + 10);
        v195 = *(p_finalScale + 12);
        *(v186 + 11) = *(p_finalScale + 11);
        *(v186 + 12) = v195;
        *(v186 + 9) = v193;
        *(v186 + 10) = v194;
        *(v186 + 52) = v185;
        v196 = *&v184->preWarpEnabled;
        v197 = *&v184->colorSpaceConversionParameters[0].transferFunctionInv.nonLinearScale;
        *(v186 + 15) = *&v184->colorSpaceConversionParameters[0].transferFunctionFwd.nonLinearBias;
        *(v186 + 16) = v197;
        *(v186 + 14) = v196;
        memcpy(v186 + 272, &p_exposureParams[-1].ltm_locked, 0x36A70uLL);
        if (v179 == LODWORD(a7[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale))
        {
          v224[1] = v180;
        }

        if (v179 == LODWORD(a7[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearThreshold))
        {
          v224[2] = v180;
        }

        ++v180;
        finalScaleFwd = a7[4].colorSpaceConversionParameters[1].finalScaleFwd;
      }

      ++v179;
      p_exposureParams = (p_exposureParams + 224224);
      p_finalScale += 52;
      v184 = (v184 + 48);
      if (v179 >= SLODWORD(finalScaleFwd))
      {
        goto LABEL_33;
      }
    }
  }

  v180 = 0;
LABEL_33:
  v198 = v224;
  *v224 = v180;
  v199 = v216;
  v38 = v217;
  v44 = v211;
  v18 = v212;
  v200 = objc_msgSend_doSyntheticLongWithBands_slFuseEv0Plist_slFuseLongPlist_slParameters_slOutput_noiseDivisorTex_realLongNoiseDivisorTex_lscGainsTex_intermediateMetadata_(self->_syntheticLongStage, v176, v225, v218, v211, v224, v217, v212, v216, v220, v219);
  if (v200)
  {
    sub_2958844F0(v200, v228);
    v208 = v228[0];
    v17 = v213;
    goto LABEL_44;
  }

  v17 = v213;
  if (v210)
  {
    v202 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v201, obj, v213[2]);
    if (v202)
    {
      sub_29588458C(v202, v228);
    }

    else
    {
      FigMetalDecRef();
      v204 = objc_msgSend_copyTexture_outTex_(self->_textureUtils, v203, v221, v213[3]);
      if (!v204)
      {
        FigMetalDecRef();
        goto LABEL_38;
      }

      sub_295884628(v204, v228);
    }

    v208 = v228[0];
    goto LABEL_44;
  }

LABEL_38:
  for (i = 0; i != 5; ++i)
  {
    if (self->_inputBands->bands[i])
    {
      FigMetalDecRef();
      v206 = self->_inputBands->bands[i];
      FigMetalDecRef();
      objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, v207, self->_inputBands->bands[i], self->_metal);
    }
  }

  v208 = 0;
LABEL_43:
  v38 = v217;
  v198 = v224;
LABEL_44:
  free(v198);

  return v208;
}

- (int)doDeepFusionProxyAsset:(id)a3 syntheticReference:(id)a4 evmProperties:(const frameProperties_t *)a5 ev0Properties:(const frameProperties_t *)a6 inferenceResults:(id)a7 style:(id)a8 nrfPlist:(id)a9
{
  v312 = a3;
  v15 = a4;
  v16 = a7;
  v314 = a8;
  v17 = a9;
  v21 = objc_alloc_init(ToneMappingBuffers);
  v22 = MEMORY[0x29EDB9270];
  v23 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v23 = *v22;
  }

  if (v23)
  {
    v24 = objc_msgSend_commandQueue(self->_metal, v18, v19, v20);
    v28 = objc_msgSend_commandBuffer(v24, v25, v26, v27);

    objc_msgSend_setLabel_(v28, v29, @"KTRACE_START_MTL", v30);
    objc_msgSend_addCompletedHandler_(v28, v31, &unk_2A1CA9280, v32);
    objc_msgSend_commit(v28, v33, v34, v35);
  }

  v308 = v16;
  if (!v21)
  {
    sub_295885108(v319);
LABEL_41:
    v285 = 0;
    v317 = 0;
    v313 = 0;
    v127 = 0;
    v315 = 0;
    obj = 0;
    isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap = v319[0];
    goto LABEL_34;
  }

  v36 = objc_msgSend_allocator(self->_metal, v18, v19, v20);
  v40 = objc_msgSend_newTextureDescriptor(v36, v37, v38, v39);

  if (!v40)
  {
    sub_29588506C(v319);
    goto LABEL_41;
  }

  v44 = objc_msgSend_desc(v40, v41, v42, v43);
  objc_msgSend_setUsage_(v44, v45, 3, v46);

  v47 = objc_opt_new();
  if (!v47)
  {
    sub_295884FD0(v319);
    v285 = 0;
    v317 = 0;
    v313 = 0;
    v315 = 0;
    obj = 0;
    isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap = v319[0];
    v127 = v40;
    goto LABEL_34;
  }

  v311 = v17;
  v313 = v47;
  if (v16)
  {
    v51 = [BoundInferenceResults alloc];
    v317 = objc_msgSend_initWithResult_andMetal_(v51, v52, v16, self->_metal);
  }

  else
  {
    v317 = 0;
  }

  v53 = objc_msgSend_width(v15[2], v48, v49, v50);
  v57 = objc_msgSend_desc(v40, v54, v55, v56);
  objc_msgSend_setWidth_(v57, v58, v53, v59);

  v63 = objc_msgSend_height(v15[2], v60, v61, v62);
  v67 = objc_msgSend_desc(v40, v64, v65, v66);
  objc_msgSend_setHeight_(v67, v68, v63, v69);

  v73 = objc_msgSend_desc(v40, v70, v71, v72);
  objc_msgSend_setPixelFormat_(v73, v74, 25, v75);

  objc_msgSend_setLabel_(v40, v76, 0, v77);
  v81 = objc_msgSend_allocator(self->_metal, v78, v79, v80);
  v84 = objc_msgSend_newTextureWithDescriptor_(v81, v82, v40, v83);

  obj = v84;
  if (!v84)
  {
    sub_295884F34(v319);
    v285 = 0;
    v315 = 0;
    obj = 0;
LABEL_45:
    isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap = v319[0];
    v127 = v40;
    goto LABEL_34;
  }

  v88 = objc_msgSend_desc(v40, v85, v86, v87);
  v92 = objc_msgSend_width(v88, v89, v90, v91);
  objc_msgSend_setWidth_(v88, v93, v92 >> 1, v94);

  v98 = objc_msgSend_desc(v40, v95, v96, v97);
  v102 = objc_msgSend_height(v98, v99, v100, v101);
  objc_msgSend_setHeight_(v98, v103, v102 >> 1, v104);

  v108 = objc_msgSend_desc(v40, v105, v106, v107);
  objc_msgSend_setPixelFormat_(v108, v109, 65, v110);

  objc_msgSend_setLabel_(v40, v111, 0, v112);
  v116 = objc_msgSend_allocator(self->_metal, v113, v114, v115);
  v119 = objc_msgSend_newTextureWithDescriptor_(v116, v117, v40, v118);

  v315 = v119;
  if (!v119)
  {
    sub_295884E98(v319);
    v285 = 0;
    v315 = 0;
    goto LABEL_45;
  }

  v309 = a5;
  v123 = objc_msgSend_allocator(self->_metal, v120, v121, v122);
  v127 = objc_msgSend_newTextureDescriptor(v123, v124, v125, v126);

  if (!v127)
  {
    sub_295884DFC(v319);
    v285 = 0;
    isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap = v319[0];
    goto LABEL_34;
  }

  v131 = objc_msgSend_width(v15[2], v128, v129, v130) >> 1;
  v135 = objc_msgSend_desc(v127, v132, v133, v134);
  objc_msgSend_setWidth_(v135, v136, v131, v137);

  v141 = objc_msgSend_height(v15[2], v138, v139, v140) >> 1;
  v145 = objc_msgSend_desc(v127, v142, v143, v144);
  objc_msgSend_setHeight_(v145, v146, v141, v147);

  v151 = objc_msgSend_desc(v127, v148, v149, v150);
  objc_msgSend_setUsage_(v151, v152, 7, v153);

  v157 = objc_msgSend_desc(v127, v154, v155, v156);
  objc_msgSend_setPixelFormat_(v157, v158, 25, v159);

  objc_msgSend_setLabel_(v127, v160, 0, v161);
  v165 = objc_msgSend_allocator(self->_metal, v162, v163, v164);
  v168 = objc_msgSend_newTextureWithDescriptor_(v165, v166, v127, v167);
  localGainMapTex = v21->localGainMapTex;
  v21->localGainMapTex = v168;

  if (!v21->localGainMapTex)
  {
    sub_295884D60(v319);
    v285 = 0;
    isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap = v319[0];
LABEL_49:
    v22 = MEMORY[0x29EDB9270];
    goto LABEL_34;
  }

  objc_storeStrong(&v21->inLumaTex, v15[2]);
  v307 = v15;
  objc_storeStrong(&v21->inChromaTex, v15[3]);
  objc_storeStrong(&v21->outLumaTex, obj);
  objc_storeStrong(&v21->outChromaTex, v119);
  objc_storeStrong(&v21->curves, self->_toneMappingCurvesSkinMapInput);
  v173 = objc_msgSend_skinMask(v317, v170, v171, v172);
  skinMask = v21->skinMask;
  v21->skinMask = v173;

  v178 = objc_msgSend_personMask(v317, v175, v176, v177);
  personMask = v21->personMask;
  v21->personMask = v178;

  v183 = objc_msgSend_skyMask(v317, v180, v181, v182);
  skyMask = v21->skyMask;
  v21->skyMask = v183;

  v188 = objc_msgSend_faceLandmarks(v317, v185, v186, v187);
  faceLandmarks = v21->faceLandmarks;
  v21->faceLandmarks = v188;

  for (i = 0; i != 4; ++i)
  {
    v191 = v21->instanceMasks[i];
    v21->instanceMasks[i] = 0;
  }

  skinToneClassification = v21->skinToneClassification;
  v21->skinToneClassification = 0;

  maskConfidences = v21->maskConfidences;
  v21->maskConfidences = 0;

  v195 = v309;
  if (v309)
  {
    p_sensorID = &v309->meta.sensorID;
  }

  else
  {
    p_sensorID = &a6->meta.sensorID;
  }

  objc_msgSend_setToneCurvesWithLTC_GTC_colorCorrectionMatrix_dump_(self->_toneMappingCurvesSkinMapInput, v194, (p_sensorID + 21), &a6->meta.ltmCurves, 0, p_sensorID[27870], p_sensorID[27872], p_sensorID[27874]);
  objc_msgSend_getLumaPedestalWithProperties_plistSource_(DeepFusionCommon, v197, &a6->meta.exposureParams, *(*(v17 + 7) + 56));
  v21->inputLumaPedestal = v198;
  BYTE4(v301) = 0;
  LODWORD(v301) = 2;
  LODWORD(v199) = 1.0;
  IsLinear = objc_msgSend_runToneMapping_bilateralGrid_bilateralGridHomography_tmPlist_darkestFrameMetadata_ev0FrameMetadata_scaleInput_colorCorrection_hasChromaBias_quality_inputIsLinear_(self->_toneMappingStage, v200, v21, 0, *(v17 + 5), p_sensorID, a6, 1, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32), v199, *&a6[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid, *&a6[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows, *&a6[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights, v301);
  if (IsLinear)
  {
    sub_295884B2C(IsLinear, v319);
    v285 = 0;
    isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap = v319[0];
    v15 = v307;
    goto LABEL_49;
  }

  if (!v314 || !self->_styleStage || !*(v17 + 13) || !v317)
  {
    goto LABEL_28;
  }

  v205 = objc_msgSend_width(v21->localGainMapTex, v202, v203, v204);
  v209 = objc_msgSend_desc(v127, v206, v207, v208);
  objc_msgSend_setWidth_(v209, v210, v205, v211);

  v215 = objc_msgSend_height(v21->localGainMapTex, v212, v213, v214);
  v219 = objc_msgSend_desc(v127, v216, v217, v218);
  objc_msgSend_setHeight_(v219, v220, v215, v221);

  v225 = objc_msgSend_desc(v127, v222, v223, v224);
  objc_msgSend_setUsage_(v225, v226, 7, v227);

  v231 = objc_msgSend_pixelFormat(v21->localGainMapTex, v228, v229, v230);
  v235 = objc_msgSend_desc(v127, v232, v233, v234);
  objc_msgSend_setPixelFormat_(v235, v236, v231, v237);

  objc_msgSend_setLabel_(v127, v238, 0, v239);
  v243 = objc_msgSend_allocator(self->_metal, v240, v241, v242);
  v246 = objc_msgSend_newTextureWithDescriptor_(v243, v244, v127, v245);

  if (!v246)
  {
    sub_295884CC4(v319);
    isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap = v319[0];
    v22 = MEMORY[0x29EDB9270];
LABEL_54:

    v285 = 0;
    v15 = v307;
    goto LABEL_34;
  }

  v250 = *(v17 + 13);
  v305 = v250;
  styleStage = self->_styleStage;
  v304 = objc_msgSend_sceneType(v317, v247, v248, v249);
  v251 = v21->localGainMapTex;
  v255 = objc_msgSend_personMask(v317, v252, v253, v254);
  v259 = objc_msgSend_skinMask(v317, v256, v257, v258);
  v263 = objc_msgSend_skyMask(v317, v260, v261, v262);
  isLowLight = objc_msgSend_runWithStyle_tuningParams_refFrameMetadata_sceneType_lumaTex_chromaTex_gainMapTex_outputGainMapTex_personMaskTex_skinMaskTex_skyMaskTex_isLowLight_(styleStage, v264, v314, v305, p_sensorID, v304, obj, v315, v251, v246, v255, v259, v263, 0);

  if (isLowLight)
  {
    isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap = FigSignalErrorAtGM();
    v17 = v311;
    v22 = MEMORY[0x29EDB9270];
    goto LABEL_54;
  }

  FigMetalDecRef();
  v266 = v21->localGainMapTex;
  v21->localGainMapTex = v246;

  v195 = v309;
  v17 = v311;
LABEL_28:
  v267 = *(v17 + 2);
  v310 = v267;
  v268 = &OBJC_IVAR___NRFPlist_proxyAssetEVMRefDenoising;
  if (!v195)
  {
    v268 = &OBJC_IVAR___NRFPlist_proxyAssetEV0RefDenoising;
  }

  objc_storeStrong(v17 + 2, *&v17[*v268]);
  objc_storeStrong(v313 + 2, obj);
  objc_storeStrong(v313 + 3, v315);
  v272 = v21->localGainMapTex;
  if (v272)
  {
    v273 = objc_msgSend_skinMask(v317, v269, v270, v271);
    v277 = objc_msgSend_skyMask(v317, v274, v275, v276);
    BYTE2(v303) = 0;
    LOWORD(v303) = 0;
    LOBYTE(v302) = 0;
    isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap = objc_msgSend_denoiseFrameWithOutput_input_localGainMap_skinMask_skyMask_maskExtent_exposure_staticScene_nrfPlist_defringeEnabled_isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap_(self, v278, v312, v313, v272, v273, v277, &a6->meta.exposureParams, a6->meta.ROI.origin.x, a6->meta.ROI.origin.y, a6->meta.ROI.size.width, a6->meta.ROI.size.height, v302, v17, v303, 0, 0, 0, 0);

    if (isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap)
    {
      sub_295884BC8();
    }

    else
    {
      objc_storeStrong(v17 + 2, v267);
      FigMetalDecRef();
      FigMetalDecRef();
      FigMetalDecRef();
      fusionBuffers = self->_fusionBuffers;
      FigMetalDecRef();
      v281 = self->_fusionBuffers;
      FigMetalDecRef();
    }
  }

  else
  {
    sub_295884C28(v319);
    isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap = v319[0];
  }

  v15 = v307;
  v22 = MEMORY[0x29EDB9270];
  v285 = v310;
LABEL_34:
  v286 = *v22;
  if (*v22 == 1)
  {
    kdebug_trace();
    v286 = *v22;
  }

  if (v286)
  {
    v287 = objc_msgSend_commandQueue(self->_metal, v282, v283, v284);
    objc_msgSend_commandBuffer(v287, v288, v289, v290);
    v292 = v291 = v15;

    objc_msgSend_setLabel_(v292, v293, @"KTRACE_END_MTL", v294);
    v318[0] = MEMORY[0x29EDCA5F8];
    v318[1] = 3221225472;
    v318[2] = sub_295807264;
    v318[3] = &unk_29EDDBE78;
    memset(&v318[4], 0, 24);
    objc_msgSend_addCompletedHandler_(v292, v295, v318, v296);
    objc_msgSend_commit(v292, v297, v298, v299);

    v15 = v291;
  }

  return isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap;
}

- (id)_runInferenceProvider:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  v6 = v4[2](v4);
  v10 = v6;
  if (!v6)
  {
    sub_295885264();
LABEL_13:
    v13 = 0;
    goto LABEL_8;
  }

  if (objc_msgSend_status(v6, v7, v8, v9))
  {
    sub_2958851A4();
    goto LABEL_13;
  }

  v11 = [BoundInferenceResults alloc];
  v13 = objc_msgSend_initWithResult_andMetal_(v11, v12, v10, self->_metal);
  if (v13)
  {
    if (*v5 == 1)
    {
      kdebug_trace();
    }
  }

  else
  {
    sub_295885204();
  }

LABEL_8:

  return v13;
}

- (int)_freeInputBandPyramidForFrame:(int)a3
{
  v4 = self->_inputBands->bands[a3];
  if (v4->levels >= 1)
  {
    objc_msgSend_makePyramidAliasable_metal_(PyramidStorage_NRF, a2, v4, self->_metal);
    self->_inputBands->bands[a3]->levels = 0;
  }

  return 0;
}

- (int)doDeepFusionPyramidGeneration:(const FusionConfiguration *)a3 properties:(const frameProperties_t *)a4 syntheticReferenceFramesOnly:(BOOL)a5 pyramidHasBeenBuiltArray:(BOOL *)a6
{
  v156 = a5;
  v170 = 0;
  v171 = 0;
  v7 = MEMORY[0x29EDB9270];
  if (!a3)
  {
    sub_295885AE4(v172);
LABEL_66:
    v28 = 0;
LABEL_68:
    v153 = v172[0];
    goto LABEL_43;
  }

  if (!a4)
  {
    sub_295885A48(v172);
    goto LABEL_66;
  }

  v10 = a3;
  v11 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v11 = *v7;
  }

  if (v11)
  {
    v12 = objc_msgSend_commandQueue(self->_metal, a2, a3, a4);
    v16 = objc_msgSend_commandBuffer(v12, v13, v14, v15);

    objc_msgSend_setLabel_(v16, v17, @"KTRACE_START_MTL", v18);
    objc_msgSend_addCompletedHandler_(v16, v19, &unk_2A1CA92A0, v20);
    objc_msgSend_commit(v16, v21, v22, v23);
  }

  v24 = objc_msgSend_allocator(self->_metal, a2, a3, a4);
  v28 = objc_msgSend_newTextureDescriptor(v24, v25, v26, v27);

  if (!v28)
  {
    sub_2958859AC(v172);
    goto LABEL_68;
  }

  v32 = objc_msgSend_desc(v28, v29, v30, v31);
  objc_msgSend_setUsage_(v32, v33, 7, v34);

  finalScaleFwd_low = LODWORD(v10[4].colorSpaceConversionParameters[1].finalScaleFwd);
  if (finalScaleFwd_low < 1)
  {
    v153 = 0;
    goto LABEL_43;
  }

  v155 = v28;
  v39 = 0;
  v162 = *(MEMORY[0x29EDCA928] + 16);
  v163 = *MEMORY[0x29EDCA928];
  v159 = a4;
  p_height = &a4[1].meta.ROI.size.height;
  v160 = vdupq_n_s32(0x358637BDu);
  v161 = *(MEMORY[0x29EDCA928] + 32);
  p_nonLinearBias = &v10->colorSpaceConversionParameters[0].transferFunctionFwd.nonLinearBias;
  v154 = &a4[1].meta.ROI.size.height;
  v157 = v10;
  v158 = a6;
  while (1)
  {
    if (a6 && a6[v39] || v39 != LODWORD(v10[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale) && v156 && v39 != *&v10[4].colorSpaceConversionParameters[1].outputToLinearYCbCr)
    {
      goto LABEL_39;
    }

    IsAllocatedForFrame = objc_msgSend__ensureInputBandPyramidIsAllocatedForFrame_(self, v35, v39, v37, v154);
    if (IsAllocatedForFrame)
    {
      v153 = IsAllocatedForFrame;
      sub_295885324();
      goto LABEL_41;
    }

    v165 = p_nonLinearBias[-1];
    v166 = *p_nonLinearBias;
    v167 = p_nonLinearBias[1];
    v43 = vandq_s8(vandq_s8(vcgeq_f32(v160, vabdq_f32(*p_nonLinearBias, v162)), vcgeq_f32(v160, vabdq_f32(v165, v163))), vcgeq_f32(v160, vabdq_f32(v167, v161)));
    v43.i32[3] = v43.i32[2];
    v44 = vminvq_u32(v43);
    v45 = (&self->super.isa + v39);
    v46 = v45[3];
    v47 = v45[8];
    v51 = v45[13];
    v168 = v47;
    if ((v44 & 0x80000000) == 0)
    {
      v164 = v44;
      v52 = objc_msgSend_width(v46, v48, v49, v50);
      v56 = objc_msgSend_desc(v155, v53, v54, v55);
      objc_msgSend_setWidth_(v56, v57, v52, v58);

      v62 = objc_msgSend_height(v46, v59, v60, v61);
      v66 = objc_msgSend_desc(v155, v63, v64, v65);
      objc_msgSend_setHeight_(v66, v67, v62, v68);

      v72 = objc_msgSend_desc(v155, v69, v70, v71);
      objc_msgSend_setPixelFormat_(v72, v73, 25, v74);

      objc_msgSend_setLabel_(v155, v75, 0, v76);
      v80 = objc_msgSend_allocator(self->_metal, v77, v78, v79);
      v83 = objc_msgSend_newTextureWithDescriptor_(v80, v81, v155, v82);
      v84 = v171;
      v171 = v83;

      if (v171)
      {
        v88 = objc_msgSend_desc(v155, v85, v86, v87);
        v92 = objc_msgSend_width(v88, v89, v90, v91);
        objc_msgSend_setWidth_(v88, v93, v92 >> 1, v94);

        v98 = objc_msgSend_desc(v155, v95, v96, v97);
        v102 = objc_msgSend_height(v98, v99, v100, v101);
        objc_msgSend_setHeight_(v98, v103, v102 >> 1, v104);

        v108 = objc_msgSend_desc(v155, v105, v106, v107);
        objc_msgSend_setPixelFormat_(v108, v109, 65, v110);

        objc_msgSend_setLabel_(v155, v111, 0, v112);
        v116 = objc_msgSend_allocator(self->_metal, v113, v114, v115);
        v119 = objc_msgSend_newTextureWithDescriptor_(v116, v117, v155, v118);
        v120 = v170;
        v170 = v119;

        if (v170)
        {
          v122 = v159[1].meta.ltmCurves.ltmLut.bytes[179];
          if (v122 != 1)
          {
            v131 = objc_msgSend_runWarpUsingTransform_inputLumaTex_inputChromaTex_outputLumaTex_outputChromaTex_(self->_warpStage, v121, v46, v168, v171, *v165.i64, *v166.i64, *v167.i64);
            if (v131)
            {
              v153 = v131;
              sub_295885384(v131, v51);
              goto LABEL_59;
            }

LABEL_30:
            v132 = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_inputBands->bands[v39], v124, v171, v170, 0, self->_metal);
            if (v132)
            {
              v153 = v132;
              sub_295885464(v132, v51);
              goto LABEL_59;
            }

            v125 = v164;
            IsLinearYCbCr = objc_msgSend_pyramidDownscale_cscParams_band0IsLinearYCbCr_(self->_syntheticLongStage, v133, self->_inputBands->bands[v39], p_height, v122);
            goto LABEL_32;
          }

          if (v51)
          {
            v123 = objc_msgSend_runWarpUsingTransform_inputYCbCrTex_inputCscParams_outputLinearLumaTex_outputLinearChromaTex_(self->_warpStage, v121, v51, v154, v171, *v165.i64, *v166.i64, *v167.i64);
            if (v123)
            {
              v153 = v123;
              sub_2958853F4(v123, v51);
LABEL_59:
              v47 = v168;
              goto LABEL_60;
            }

            goto LABEL_30;
          }

          sub_2958854D4(v172);
        }

        else
        {
          sub_295885570();
        }
      }

      else
      {
        sub_295885610();
      }

      v153 = v172[0];
      goto LABEL_59;
    }

    v125 = v44;
    v126 = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_inputBands->bands[v39], v48, v46, v47, 0, self->_metal);
    if (v126)
    {
      v153 = v126;
      sub_2958856B0(v126, v51);
      goto LABEL_60;
    }

    if (v159[1].meta.ltmCurves.ltmLut.bytes[179] == 1)
    {
      break;
    }

LABEL_28:
    IsLinearYCbCr = objc_msgSend_pyramidDownscale_cscParams_band0IsLinearYCbCr_(self->_syntheticLongStage, v127, self->_inputBands->bands[v39], p_height, 0);
LABEL_32:
    if (IsLinearYCbCr)
    {
      sub_295885790();
      v153 = v172[0];
LABEL_55:
      v47 = v168;
      goto LABEL_60;
    }

    a6 = v158;
    if ((v125 & 0x80000000) == 0)
    {
      FigMetalDecRef();
      FigMetalDecRef();
      v135 = objc_msgSend_setLumaTexture_chromaTexture_level_metal_(self->_inputBands->bands[v39], v134, v46, v168, 0, self->_metal);
      if (v135)
      {
        v153 = v135;
        sub_295885830(v135, v51);
        goto LABEL_55;
      }

      v138 = objc_msgSend_setYCbCrBand0Texture_(self->_inputBands->bands[v39], v136, v51, v137);
      if (v138)
      {
        v153 = v138;
        sub_2958858A0(v138, v51);
        goto LABEL_55;
      }
    }

    if (v158)
    {
      v158[v39] = 1;
    }

    v10 = v157;
    finalScaleFwd_low = LODWORD(v157[4].colorSpaceConversionParameters[1].finalScaleFwd);
LABEL_39:
    ++v39;
    p_height += 224224;
    p_nonLinearBias += 3;
    if (v39 >= finalScaleFwd_low)
    {
      v153 = 0;
      goto LABEL_41;
    }
  }

  if (v51)
  {
    v129 = objc_msgSend_setYCbCrBand0Texture_(self->_inputBands->bands[v39], v127, v51, v128);
    if (v129)
    {
      v153 = v129;
      sub_295885720(v129, v51);
      goto LABEL_60;
    }

    goto LABEL_28;
  }

  sub_295885910(v172);
  v153 = v172[0];
LABEL_60:

LABEL_41:
  v7 = MEMORY[0x29EDB9270];
  v28 = v155;
LABEL_43:
  v139 = *v7;
  if (*v7 == 1)
  {
    kdebug_trace();
    v139 = *v7;
  }

  if (v139)
  {
    v140 = objc_msgSend_commandQueue(self->_metal, v35, v36, v37);
    v144 = objc_msgSend_commandBuffer(v140, v141, v142, v143);

    objc_msgSend_setLabel_(v144, v145, @"KTRACE_END_MTL", v146);
    v169[0] = MEMORY[0x29EDCA5F8];
    v169[1] = 3221225472;
    v169[2] = sub_295807E50;
    v169[3] = &unk_29EDDBE78;
    v169[5] = 0;
    v169[6] = 0;
    v169[4] = -1;
    objc_msgSend_addCompletedHandler_(v144, v147, v169, v148);
    objc_msgSend_commit(v144, v149, v150, v151);
  }

  return v153;
}

- (int)doGainMap:(const FusionConfiguration *)a3 properties:(const frameProperties_t *)a4 output:(id)a5 outputHeadroom:(float *)a6 nrfPlist:(id)a7 useFusedFrame:(BOOL)a8
{
  v8 = a8;
  v14 = a5;
  v15 = a7;
  v19 = v15;
  if (!v15)
  {
    sub_295885EA0();
    goto LABEL_51;
  }

  v20 = *(v15 + 11);
  if (!v20)
  {
    sub_295885E3C();
    goto LABEL_51;
  }

  if (!a3)
  {
    sub_295885DD8();
    goto LABEL_51;
  }

  if (!a4)
  {
    sub_295885D74();
    goto LABEL_51;
  }

  if (!v14)
  {
    sub_295885D10();
    goto LABEL_51;
  }

  v21 = *(v20 + 8);
  v22 = *(v20 + 12);
  v23 = fabsf(v22);
  if (fabsf(v21) > 1.0 || v22 <= v21 || v23 > 1.0)
  {
    sub_295885CAC();
    goto LABEL_51;
  }

  v62 = objc_msgSend_width(v14, v16, v17, v18);
  v29 = objc_msgSend_height(v14, v26, v27, v28);
  v33 = v29;
  if (v8)
  {
    v34 = self->_fusedBand->textureY[1];
    linearScale = a3[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale;
LABEL_31:
    v44 = 1.0;
    if (*&a3[4].colorSpaceConversionParameters[1].outputToLinearYCbCr == -1)
    {
      v44 = *(&a4->meta.exposureParams.ltm_soft_gain + 56056 * SLODWORD(linearScale)) * 0.25;
    }

    goto LABEL_33;
  }

  linearScale = *&a3[4].colorSpaceConversionParameters[1].outputToLinearYCbCr;
  if (linearScale != NAN)
  {
    v36 = 0;
    if ((LODWORD(linearScale) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

  linearScale = a3[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale;
  v36 = LODWORD(linearScale) != -1;
  if ((LODWORD(linearScale) & 0x80000000) != 0)
  {
LABEL_43:
    sub_295885B80();
LABEL_51:
    v34 = 0;
    goto LABEL_52;
  }

LABEL_17:
  v60 = a3;
  v61 = v29;
  v37 = self->_inputBands->bands[LODWORD(linearScale)];
  levels = v37->levels;
  if (levels >= 2)
  {
    v55 = __PAIR64__(v8, v36);
    v56 = a4;
    v57 = a6;
    v58 = v19;
    v59 = v14;
    v34 = 0;
    while (1)
    {
      v39 = v34;
      v34 = v37->textureY[levels - 1];

      if (v62 <= objc_msgSend_width(v34, v40, v41, v42))
      {
        if (v61 <= objc_msgSend_height(v34, v30, v31, v32) || levels <= 2)
        {
LABEL_28:
          a6 = v57;
          v36 = v55;
          goto LABEL_30;
        }
      }

      else if (levels < 3)
      {
        goto LABEL_28;
      }

      v37 = self->_inputBands->bands[LODWORD(linearScale)];
      --levels;
    }
  }

  v34 = 0;
LABEL_30:
  v44 = 1.0;
  a3 = v60;
  v33 = v61;
  if (v36)
  {
    goto LABEL_31;
  }

LABEL_33:
  if (!v34)
  {
    sub_295885C48();
    goto LABEL_52;
  }

  if (objc_msgSend_width(v34, v30, v31, v32) < v62 || objc_msgSend_height(v34, v45, v46, v47) < v33)
  {
    sub_295885BE4();
LABEL_52:
    IsLinear_inputScaling = -12780;
    goto LABEL_41;
  }

  if (v8)
  {
    v52 = *&a3[4].colorSpaceConversionParameters[1].outputToLinearYCbCr == -1;
  }

  else
  {
    v52 = a4[1].meta.ltmCurves.ltmLut.bytes[224224 * SLODWORD(linearScale) + 176];
  }

  *&v49 = v21;
  *&v50 = v22;
  *&v51 = v44;
  IsLinear_inputScaling = objc_msgSend_runWithInput_output_minThreshold_maxThreshold_inputIsLinear_inputScaling_(self->_gainMapStage, v48, v34, v14, v52, v49, v50, v51, v55, v56, v57, v58, v59);
  if (a6)
  {
    *a6 = v44 * 4.0;
  }

LABEL_41:

  return IsLinear_inputScaling;
}

- (int)greenGhostMitigationWithRefIndex:(int)a3 bracketIndex:(int)a4 refProperties:(frameProperties_t *)a5 otherProperties:(frameProperties_t *)a6 tuningParams:(id)a7
{
  v13 = a7;
  if (*MEMORY[0x29EDB9270])
  {
    v14 = objc_msgSend_commandQueue(self->_metal, v10, v11, v12);
    v18 = objc_msgSend_commandBuffer(v14, v15, v16, v17);

    objc_msgSend_setLabel_(v18, v19, @"KTRACE_START_MTL", v20);
    v64[0] = MEMORY[0x29EDCA5F8];
    v64[1] = 3221225472;
    v64[2] = sub_295808758;
    v64[3] = &unk_29EDDBE98;
    v65 = a3;
    v66 = a4;
    objc_msgSend_addCompletedHandler_(v18, v21, v64, v22);
    objc_msgSend_commit(v18, v23, v24, v25);
  }

  v26 = a3;
  v27 = self->_inputBands->bands[a3];
  fusionRemixStage = self->_fusionRemixStage;
  fusionBuffers = self->_fusionBuffers;
  v33 = objc_msgSend_width(v27->textureY[0], v30, v31, v32);
  v37 = objc_msgSend_height(v27->textureY[0], v34, v35, v36);
  objc_msgSend_allocateFusionBuffersIfNeeded_width_height_(fusionRemixStage, v38, fusionBuffers, v33, v37);
  objc_storeStrong(&self->_greenGhostBuffers->_fusedLuma, self->_fusionBuffers->fusedLumaTex);
  objc_storeStrong(&self->_greenGhostBuffers->_fusedChroma, self->_fusionBuffers->fusedChromaTex);
  if (dword_2A18C2398)
  {
    v63 = 0;
    v62 = 0;
    v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  isRefProcessing_refProperties_otherProperties_greenGhostBuffers_tuningParams = objc_msgSend_mitigationWithRefPyramid_otherPyramid_isRefProcessing_refProperties_otherProperties_greenGhostBuffers_tuningParams_(self->_greenGhostLowLightStage, v39, self->_inputBands->bands[a3], self->_inputBands->bands[a4], a3 == a4, a5, a6, self->_greenGhostBuffers, v13);
  objc_storeStrong(&self->_fusionBuffers->ggMaxFusionWeights, self->_greenGhostBuffers->_ggMaxFusionWeights);
  if (*MEMORY[0x29EDB9270])
  {
    v45 = a4;
    v46 = objc_msgSend_commandQueue(self->_metal, v42, v43, v44);
    v50 = objc_msgSend_commandBuffer(v46, v47, v48, v49);

    objc_msgSend_setLabel_(v50, v51, @"KTRACE_END_MTL", v52);
    v61[0] = MEMORY[0x29EDCA5F8];
    v61[1] = 3221225472;
    v61[2] = sub_2958087F8;
    v61[3] = &unk_29EDDBE78;
    v61[4] = v26;
    v61[5] = v45;
    v61[6] = 0;
    objc_msgSend_addCompletedHandler_(v50, v53, v61, v54);
    objc_msgSend_commit(v50, v55, v56, v57);
  }

  return isRefProcessing_refProperties_otherProperties_greenGhostBuffers_tuningParams;
}

- (int)freeInputBandPyramids
{
  if (self->_currentFrame < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = objc_msgSend__freeInputBandPyramidForFrame_(self, a2, v4, v2);
    if (v5)
    {
      break;
    }

    v4 = (v4 + 1);
    if (v4 >= self->_currentFrame)
    {
      return 0;
    }
  }

  v6 = v5;
  sub_295885F04();
  return v6;
}

- (SidecarWriter)sidecarWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);

  return WeakRetained;
}

- (int)denoiseSingleImage:(__CVBuffer *)a3 linearOutput:(__CVBuffer *)a4 input:(__CVBuffer *)a5 cfp:(frameProperties_t *)a6 nrfPlist:(id)a7 style:(id)MetalYCbCrFormat inferenceProvider:(id)a9 defringeEnabled:(BOOL)a10 colorCubeFixType:(int)a11
{
  MetalLumaFormat = a9;
  v352 = a7;
  v349 = MetalYCbCrFormat;
  v16 = a9;
  v357 = 0;
  v344 = objc_opt_new();
  if (!v344 || (v350 = objc_opt_new()) == 0)
  {
    sub_2957F888C();
    FigDebugAssert3();
    sub_2957F8880();
    FigSignalErrorAtGM();
    sub_295808C84();
    v339 = 0;
    v45 = 0;
    v342 = 0;
    v62 = 0;
    v347 = 0;
    v323 = 0;
    v276 = v344;
    goto LABEL_70;
  }

  v348 = v16;
  MetalLumaFormat = objc_msgSend_getMetalLumaFormat_(LumaChromaImage, v17, a5, v18);
  objc_msgSend_getMetalChromaFormat_(LumaChromaImage, v19, a5, v20);
  MetalYCbCrFormat = objc_msgSend_getMetalYCbCrFormat_(LumaChromaImage, v21, a5, v22);
  objc_msgSend_getMetalLumaFormat_(LumaChromaImage, v23, a3, v24);
  objc_msgSend_getMetalChromaFormat_(LumaChromaImage, v25, a3, v26);
  objc_msgSend_reset(self, v27, v28, v29);
  objc_msgSend_setFusionMode_(self, v30, 0, v31);
  metal = self->_metal;
  sub_295808D9C();
  v37 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v33, v34, v35, v36);
  if (!v37)
  {
    sub_295808BB8();
    FigDebugAssert3();
    v325 = *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm;
    sub_2957F8880();
    FigSignalErrorAtGM();
    sub_295808C84();
    v339 = 0;
    v45 = 0;
    v342 = 0;
LABEL_76:
    v62 = 0;
    v347 = 0;
LABEL_100:
    v276 = v344;
    v323 = v350;
    goto LABEL_70;
  }

  v38 = v37;
  v39 = self->_metal;
  sub_295808D90();
  v45 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v40, v41, v42, v43);
  if (!v45)
  {
    v342 = v38;
    sub_295808BB8();
    FigDebugAssert3();
    v326 = *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm;
    sub_2957F8880();
    FigSignalErrorAtGM();
    sub_295808C84();
    v339 = 0;
    goto LABEL_76;
  }

  if (MetalYCbCrFormat)
  {
    v46 = self->_metal;
    v356 = 0;
    LODWORD(MetalYCbCrFormat) = objc_msgSend_bindYCbCrMetalTextureWithMetalContext_pixelBuffer_pixelFormat_textureToBind_alignmentFactor_(LumaChromaImage, v44, v46, a5, MetalYCbCrFormat, &v356, 16);
    v339 = v356;
    if (MetalYCbCrFormat)
    {
      v342 = v38;
LABEL_75:
      v351 = 0;
      MetalLumaFormat = 0;
      a5 = 0;
      goto LABEL_76;
    }
  }

  else
  {
    v339 = 0;
  }

  v47 = self->_metal;
  sub_295808D9C();
  v52 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v48, v49, v50, v51);
  v53 = a6;
  if (!v52)
  {
    v342 = v38;
    sub_295808BB8();
    FigDebugAssert3();
    v327 = *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm;
    sub_2957F8880();
    LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM();
    goto LABEL_75;
  }

  MetalYCbCrFormat = v52;
  v54 = self->_metal;
  sub_295808D90();
  v62 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v55, v56, v57, v58);
  v347 = MetalYCbCrFormat;
  if (!v62)
  {
    v342 = v38;
    sub_295808BB8();
    FigDebugAssert3();
    v328 = *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm;
    sub_2957F8880();
LABEL_79:
    FigSignalErrorAtGM();
    sub_295808C84();
    goto LABEL_100;
  }

  if ((objc_msgSend_width(v38, v59, v60, v61) & 0xF) != 0 || (objc_msgSend_height(v38, v63, v64, v65) & 0xF) != 0 || (objc_msgSend_width(MetalYCbCrFormat, v66, v67, v68) & 0xF) != 0 || (objc_msgSend_height(MetalYCbCrFormat, v69, v70, v71) & 0xF) != 0)
  {
    v342 = v38;
    sub_295808BB8();
    FigDebugAssert3();
    v329 = *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm;
    goto LABEL_79;
  }

  a5 = v38;
  v45 = v45;
  v342 = a5;
  if (v16)
  {
    v351 = objc_msgSend__runInferenceProvider_(self, v72, v16, v74);
    if (!v351)
    {
      sub_295808BF4();
      FigDebugAssert3();
      LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM();
      v351 = 0;
LABEL_81:
      MetalLumaFormat = v45;
      goto LABEL_100;
    }
  }

  else
  {
    v351 = 0;
  }

  y_low = LODWORD(a6[1].meta.ROI.origin.y);
  if (a4 && y_low != 2)
  {
    sub_295808C44();
    LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM();
    goto LABEL_81;
  }

  v345 = v62;
  v346 = v45;
  if (y_low == 2)
  {
    v79 = objc_opt_new();
    if (v79)
    {
      v80 = objc_msgSend_allocator(self->_metal, v76, v77, v78);
      v84 = objc_msgSend_newTextureDescriptor(v80, v81, v82, v83);

      if (v84)
      {
        v88 = objc_msgSend_desc(v84, v85, v86, v87);
        objc_msgSend_setUsage_(v88, v89, 7, v90);

        if (self->_nrfConfig->_learnedNREnabled)
        {
          objc_msgSend_width(v346, v91, v92, v93);
          v94 = sub_295808D84();
          objc_msgSend_desc(v94, v95, v96, v97);
          objc_claimAutoreleasedReturnValue();
          sub_295808DB4();
          objc_msgSend_setWidth_(v98, v99, v100, v101);

          objc_msgSend_height(v346, v102, v103, v104);
          v105 = sub_295808D84();
          objc_msgSend_desc(v105, v106, v107, v108);
          objc_claimAutoreleasedReturnValue();
          sub_295808DB4();
          objc_msgSend_setHeight_(v109, v110, v111, v112);

          v116 = objc_msgSend_desc(v84, v113, v114, v115);
          objc_msgSend_setPixelFormat_(v116, v117, 25, v118);

          sub_295808D34(v119, v120, v121, v122);
          v126 = objc_msgSend_allocator(self->_metal, v123, v124, v125);
          MetalYCbCrFormat = sub_295808D4C(v126, v127, v128, v129);
          v357 = MetalYCbCrFormat;

          v130 = v342;
          obj = MetalYCbCrFormat;
          if (!MetalYCbCrFormat)
          {
LABEL_27:
            sub_295808BB8();
            FigDebugAssert3();
            v131 = *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm;
            sub_2957F8880();
            v130 = v342;
            LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM();
LABEL_99:

            v45 = v346;
            MetalLumaFormat = v346;
            a5 = v130;
            goto LABEL_100;
          }
        }

        else
        {
          obj = 0;
          v130 = v342;
        }

        objc_msgSend_width(v130, v91, v92, v93);
        v132 = sub_295808D84();
        objc_msgSend_desc(v132, v133, v134, v135);
        objc_claimAutoreleasedReturnValue();
        sub_295808DB4();
        objc_msgSend_setWidth_(v136, v137, v138, v139);

        objc_msgSend_height(v130, v140, v141, v142);
        v143 = sub_295808D84();
        objc_msgSend_desc(v143, v144, v145, v146);
        objc_claimAutoreleasedReturnValue();
        sub_295808DB4();
        objc_msgSend_setHeight_(v147, v148, v149, v150);

        v154 = objc_msgSend_desc(v84, v151, v152, v153);
        objc_msgSend_setPixelFormat_(v154, v155, 25, v156);

        sub_295808D34(v157, v158, v159, v160);
        v164 = objc_msgSend_allocator(self->_metal, v161, v162, v163);
        v168 = sub_295808D4C(v164, v165, v166, v167);
        sub_295808D04(v168, 8);

        if (!*(v79 + 8))
        {
          goto LABEL_27;
        }

        sub_295808D34(v169, v170, v171, v172);
        v176 = objc_msgSend_allocator(self->_metal, v173, v174, v175);
        v180 = sub_295808D4C(v176, v177, v178, v179);
        sub_295808D04(v180, 32);

        if (!*(v79 + 32))
        {
          goto LABEL_27;
        }

        v184 = objc_msgSend_desc(v84, v181, v182, v183);
        v188 = objc_msgSend_width(v184, v185, v186, v187);
        objc_msgSend_setWidth_(v184, v189, v188 >> 1, v190);

        v194 = objc_msgSend_desc(v84, v191, v192, v193);
        v198 = objc_msgSend_height(v194, v195, v196, v197);
        objc_msgSend_setHeight_(v194, v199, v198 >> 1, v200);

        v204 = objc_msgSend_desc(v84, v201, v202, v203);
        objc_msgSend_setPixelFormat_(v204, v205, 65, v206);

        sub_295808D34(v207, v208, v209, v210);
        v214 = objc_msgSend_allocator(self->_metal, v211, v212, v213);
        v218 = sub_295808D4C(v214, v215, v216, v217);
        sub_295808D04(v218, 16);

        if (*(v79 + 16) && (sub_295808D34(v219, v220, v221, v222), objc_msgSend_allocator(self->_metal, v223, v224, v225), v226 = objc_claimAutoreleasedReturnValue(), v230 = sub_295808D4C(v226, v227, v228, v229), sub_295808D04(v230, 40), v204, *(v79 + 40)))
        {
          if (dword_2A18C2398)
          {
            v355 = 0;
            v354 = 0;
            v232 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();

            v53 = a6;
          }

          if (!self->_toneMappingStage || !self->_toneMappingCurvesUBFusion || !v53->meta.metadataHasLtmCurves || !v352[5])
          {
            sub_295808C44();
LABEL_97:
            v234 = FigSignalErrorAtGM();
LABEL_98:
            LODWORD(MetalYCbCrFormat) = v234;
            goto LABEL_99;
          }

          if (a6[1].meta.ltmCurves.ltmLut.bytes[179] != 1)
          {
            objc_msgSend_convertColor_inputLuma_inputChroma_outputLuma_outputChroma_(self->_colorConvertStage, v231, &v53[1].meta.ROI.size.height, v130, v346, *(v79 + 8), *(v79 + 16));
LABEL_43:
            if (a4)
            {
              v234 = objc_msgSend_extractLinearBufferWithLumaInput_chromaInput_inputIsLinear_removeChromaBias_lumaPedestal_exposureParams_ccm_output_(self->_colorConvertStage, v233, *(v79 + 8), *(v79 + 16), 1, 0, &v53->meta.exposureParams, 0.0, a6->meta.faces[0].rect.origin.x, a6->meta.faces[0].rect.size.width, *&a6->meta.faces[0].confidence);
              if (v234)
              {
                goto LABEL_98;
              }
            }

            if (!objc_msgSend_setToneCurvesWithLTC_GTC_colorCorrectionMatrix_dump_(self->_toneMappingCurvesUBFusion, v233, &v53->meta.ltmCurves, &v53->meta.ltmCurves, 0, *&a6[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid, *&a6[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows, *&a6[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights))
            {
              objc_storeStrong((v79 + 24), obj);
              objc_storeStrong((v79 + 128), self->_toneMappingCurvesUBFusion);
              v238 = objc_msgSend_skinMask(v351, v235, v236, v237);
              sub_295808D04(v238, 48);
              v242 = objc_msgSend_personMask(v351, v239, v240, v241);
              sub_295808D04(v242, 56);
              v246 = objc_msgSend_skyMask(v351, v243, v244, v245);
              sub_295808D04(v246, 64);
              v250 = objc_msgSend_faceLandmarks(v351, v247, v248, v249);
              sub_295808D04(v250, 120);
              for (i = 0; i != 32; i += 8)
              {
                v252 = *(v79 + 72 + i);
                *(v79 + 72 + i) = 0;
              }

              v253 = *(v79 + 104);
              *(v79 + 104) = 0;

              v254 = *(v79 + 112);
              *(v79 + 112) = 0;

              BYTE4(v336) = 1;
              LODWORD(v336) = 0;
              LODWORD(v255) = 1.0;
              if (!objc_msgSend_runToneMapping_bilateralGrid_bilateralGridHomography_tmPlist_darkestFrameMetadata_ev0FrameMetadata_scaleInput_colorCorrection_hasChromaBias_quality_inputIsLinear_(self->_toneMappingStage, v256, v79, 0, v352[5], v53, v53, 0, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32), v255, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32), v336))
              {
                FigMetalDecRef();
                FigMetalDecRef();
                a5 = *(v79 + 32);

                MetalLumaFormat = *(v79 + 40);
                goto LABEL_50;
              }
            }

            sub_295808BD8();
            FigDebugAssert3();
            v333 = *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm;
            goto LABEL_96;
          }

          if (v339)
          {
            objc_msgSend_convertColor_inputYCbCr_outputLuma_outputChroma_(self->_colorConvertStage, v231, &v53[1].meta.ROI.size.height, v339, *(v79 + 8), *(v79 + 16));
            goto LABEL_43;
          }

          sub_295808BB8();
          FigDebugAssert3();
          v334 = *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm;
          sub_2957F8880();
        }

        else
        {
          sub_295808BB8();
          FigDebugAssert3();
          v332 = *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm;
          sub_2957F8880();
        }

LABEL_96:
        v130 = v342;
        goto LABEL_97;
      }

      sub_295808BB8();
      FigDebugAssert3();
      v331 = *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm;
      sub_2957F8880();
      LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM();
    }

    else
    {
      sub_295808BB8();
      FigDebugAssert3();
      v330 = *&self[1]._ambnrStageCache.entries[1].options.lgaAlgorithm;
      sub_2957F8880();
      LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM();
      v84 = 0;
    }

    v130 = v342;
    goto LABEL_99;
  }

  obj = 0;
  MetalLumaFormat = v45;
LABEL_50:
  if (v349)
  {
    styleStage = self->_styleStage;
    if (styleStage)
    {
      v258 = v352[13];
      if (v258)
      {
        v259 = objc_msgSend_sceneType(v351, v72, v73, v74);
        v263 = objc_msgSend_personMask(v351, v260, v261, v262);
        objc_msgSend_skinMask(v351, v264, v265, v266);
        v267 = v53;
        v269 = v268 = MetalLumaFormat;
        v273 = objc_msgSend_skyMask(v351, v270, v271, v272);
        isLowLight = objc_msgSend_runWithStyle_tuningParams_refFrameMetadata_sceneType_lumaTex_chromaTex_gainMapTex_outputGainMapTex_personMaskTex_skinMaskTex_skyMaskTex_isLowLight_(styleStage, v274, v349, v258, v267, v259, a5, v268, 0, 0, v263, v269, v273, 0);

        MetalLumaFormat = v268;
        v53 = v267;

        v62 = v345;
        if (isLowLight)
        {
          sub_295808C44();
          LODWORD(MetalYCbCrFormat) = FigSignalErrorAtGM();
          v16 = v348;
          v276 = v344;
          v323 = v350;
          v45 = v346;
          goto LABEL_70;
        }
      }
    }
  }

  v276 = v344;
  objc_storeStrong((v344 + 16), a5);
  v338 = MetalLumaFormat;
  objc_storeStrong((v344 + 24), MetalLumaFormat);
  objc_storeStrong((v350 + 16), v347);
  if (a11 == -1)
  {
    v277 = v62;
  }

  else
  {
    v277 = 0;
  }

  objc_storeStrong((v350 + 24), v277);
  v281 = objc_msgSend_skinMask(v351, v278, v279, v280);
  v285 = objc_msgSend_skyMask(v351, v282, v283, v284);
  v289 = objc_msgSend_faceLandmarks(v351, v286, v287, v288);
  *(&v337 + 1) = 0;
  LOBYTE(v337) = a10;
  LOBYTE(v335) = 0;
  LODWORD(MetalYCbCrFormat) = objc_msgSend_denoiseFrameWithOutput_input_localGainMap_skinMask_skyMask_maskExtent_exposure_staticScene_nrfPlist_defringeEnabled_isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap_(self, v290, v350, v344, obj, v281, v285, &v53->meta.exposureParams, v53->meta.ROI.origin.x, v53->meta.ROI.origin.y, v53->meta.ROI.size.width, v53->meta.ROI.size.height, v335, v352, v337, v289, 0, 0, 0);

  if (MetalYCbCrFormat)
  {
    FigDebugAssert3();
    v16 = v348;
    v323 = v350;
    v62 = v345;
    v45 = v346;
  }

  else
  {
    FigMetalDecRef();
    FigMetalDecRef();
    if (self->_nrfConfig->_learnedNREnabled)
    {
      FigMetalDecRef();
    }

    v62 = v345;
    v45 = v346;
    if (a11 == -1)
    {
      LODWORD(MetalYCbCrFormat) = 0;
    }

    else
    {
      v294 = MEMORY[0x29EDB9270];
      if (*MEMORY[0x29EDB9270])
      {
        v295 = objc_msgSend_commandQueue(self->_metal, v291, v292, v293);
        v299 = objc_msgSend_commandBuffer(v295, v296, v297, v298);

        v276 = v344;
        objc_msgSend_setLabel_(v299, v300, @"KTRACE_START_MTL", v301);
        objc_msgSend_addCompletedHandler_(v299, v302, &unk_2A1CA9200, v303);
        objc_msgSend_commit(v299, v304, v305, v306);
      }

      fixed = objc_msgSend_runOnLuma_andChroma_outChroma_colorCubeFixType_(self->_ColorCubeCorrectionStage, v291, *(v350 + 16), *(v350 + 24), v345, a11);
      if (!fixed)
      {
        if (*v294)
        {
          v311 = objc_msgSend_commandQueue(self->_metal, v308, v309, v310);
          v315 = objc_msgSend_commandBuffer(v311, v312, v313, v314);

          v276 = v344;
          objc_msgSend_setLabel_(v315, v316, @"KTRACE_END_MTL", v317);
          v353[0] = MEMORY[0x29EDCA5F8];
          v353[1] = 3221225472;
          v353[2] = sub_295801968;
          v353[3] = &unk_29EDDBE78;
          memset(&v353[4], 0, 24);
          objc_msgSend_addCompletedHandler_(v315, v318, v353, v319);
          objc_msgSend_commit(v315, v320, v321, v322);
        }

        v323 = v350;
        FigMetalDecRef();
        LODWORD(MetalYCbCrFormat) = 0;
        v16 = v348;
        goto LABEL_69;
      }

      LODWORD(MetalYCbCrFormat) = fixed;
      sub_295808C24();
      FigDebugAssert3();
    }

    v16 = v348;
    v323 = v350;
  }

LABEL_69:
  MetalLumaFormat = v338;
LABEL_70:

  return MetalYCbCrFormat;
}

- (int)toneMapAndDenoiseFusedFramesWithConfig:(const FusionConfiguration *)a3 properties:(const frameProperties_t *)a4 nrfPlist:(id)a5 style:(id)a6 output:(__CVBuffer *)a7 inferenceProvider:(id)a8 colorCubeFixType:(int)a9 isLowLight:(BOOL)a10 gainMap:(id)a11
{
  v13 = v12;
  v460 = a5;
  v454 = a6;
  v18 = a8;
  v449 = a11;
  v455 = objc_alloc_init(ToneMappingBuffers);
  v459 = objc_opt_new();
  if (!v459 || (v19 = objc_opt_new()) == 0)
  {
    sub_295808C08();
    FigDebugAssert3();
    sub_295808C98();
    sub_2957F8880();
    LODWORD(v23) = FigSignalErrorAtGM();
    v28 = 0;
    sub_295808CC0();
    a6 = 0;
    goto LABEL_79;
  }

  v23 = v19;
  v24 = objc_msgSend_allocator(self->_metal, v20, v21, v22);
  v28 = objc_msgSend_newTextureDescriptor(v24, v25, v26, v27);

  if (!v28)
  {
    sub_295808C08();
    FigDebugAssert3();
    sub_295808C98();
    sub_2957F8880();
    FigSignalErrorAtGM();
    sub_295808CD0();
    sub_295808CC0();
    goto LABEL_79;
  }

  v32 = objc_msgSend_desc(v28, v29, v30, v31);
  objc_msgSend_setUsage_(v32, v33, 7, v34);

  if (!a7)
  {
    sub_295808C08();
    FigDebugAssert3();
    v433 = *(v11 + 912);
LABEL_87:
    FigSignalErrorAtGM();
    sub_295808CD0();
    sub_295808CC0();
    goto LABEL_89;
  }

  v38 = objc_msgSend_allocator(self->_metal, v35, v36, v37);
  a6 = objc_msgSend_usedSize_(v38, v39, 0, v40);

  if (a6)
  {
    sub_295808CC0();
    a6 = v23;
    LODWORD(v23) = 0;
LABEL_89:
    v11 = v455;
    goto LABEL_79;
  }

  metal = self->_metal;
  sub_295808D9C();
  obj = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v42, v43, v44, v45);
  if (!obj)
  {
    sub_295808C08();
    FigDebugAssert3();
    v434 = *(v11 + 912);
    sub_2957F8880();
    goto LABEL_87;
  }

  v46 = self->_metal;
  sub_295808D90();
  v457 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(v47, v48, v49, v50);
  if (!v457)
  {
    sub_295808C08();
    FigDebugAssert3();
    v435 = *(v11 + 912);
    sub_2957F8880();
    FigSignalErrorAtGM();
    sub_295808CD0();
    v13 = 0;
    v457 = 0;
    goto LABEL_89;
  }

  if (v18)
  {
    v53 = objc_msgSend__runInferenceProvider_(self, v51, v18, v52);
    v11 = v455;
    if (!v53)
    {
      sub_295808C08();
      FigDebugAssert3();
      sub_295808C98();
      FigSignalErrorAtGM();
      sub_295808CD0();
      v13 = 0;
      goto LABEL_79;
    }
  }

  else
  {
    v53 = 0;
    v11 = v455;
  }

  v462 = v53;
  v453 = v28;
  sub_295808D1C(16);
  if (*(v57 + 41) == 1)
  {
    v58 = sub_295808CF4();
    objc_msgSend_width(v58, v59, v60, v61);
    objc_msgSend_desc(v28, v62, v63, v64);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setWidth_(v65, v66, v67, v68);

    sub_295808D78();
    objc_msgSend_height(*(v69 + v70), v71, v72, v73);
    objc_msgSend_desc(v28, v74, v75, v76);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setHeight_(v77, v78, v79, v80);

    v84 = objc_msgSend_desc(v28, v81, v82, v83);
    objc_msgSend_setPixelFormat_(v84, v85, 25, v86);

    objc_msgSend_setLabel_(v28, v87, 0, v88);
    a6 = objc_msgSend_allocator(self->_metal, v89, v90, v91);
    v94 = objc_msgSend_newTextureWithDescriptor_(a6, v92, v28, v93);

    if (!v94)
    {
      sub_295808BB8();
      FigDebugAssert3();
      sub_295808C98();
      sub_2957F8880();
      FigSignalErrorAtGM();
      sub_295808CD0();
      goto LABEL_80;
    }

    sub_295808D78();
    LODWORD(v97) = *(*(v460 + 2) + 44);
    objc_msgSend_runWithInput_output_gamma_(self->_outliersRemovalStage, v98, *(v95 + v96), v94, v97);
    sub_295808D78();
    FigMetalDecRef();
    sub_295808D78();
    v101 = *(v99 + v100);
    *(v99 + v100) = v94;
  }

  v447 = v18;
  v102 = a3;
  nonLinearBias_low = LOBYTE(a3[4].colorSpaceConversionParameters[2].transferFunctionFwd.nonLinearBias);
  fusionBuffers = self->_fusionBuffers;
  v456 = v23;
  v461 = self;
  if (nonLinearBias_low)
  {
    objc_storeStrong((v11 + 32), fusionBuffers->fusedLumaTex);
    objc_storeStrong((v11 + 40), self->_fusionBuffers->fusedChromaTex);
    v13 = v462;
  }

  else
  {
    objc_msgSend_width(fusionBuffers->fusedChromaTex, v54, v55, v56);
    objc_msgSend_desc(v28, v105, v106, v107);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setWidth_(v108, v109, v110, v111);

    objc_msgSend_height(self->_fusionBuffers->fusedChromaTex, v112, v113, v114);
    v115 = sub_295808D28();
    objc_msgSend_desc(v115, v116, v117, v118);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setHeight_(v119, v120, v121, v122);

    v126 = objc_msgSend_desc(v28, v123, v124, v125);
    objc_msgSend_setPixelFormat_(v126, v127, 25, v128);

    objc_msgSend_setLabel_(v28, v129, 0, v130);
    v134 = objc_msgSend_allocator(self->_metal, v131, v132, v133);
    v137 = objc_msgSend_newTextureWithDescriptor_(v134, v135, v28, v136);
    sub_295808CDC(v137, 24);

    if (!*(v11 + 24))
    {
      goto LABEL_93;
    }

    objc_storeStrong((v11 + 8), self->_fusionBuffers->fusedLumaTex);
    objc_storeStrong((v11 + 16), self->_fusionBuffers->fusedChromaTex);
    v138 = sub_295808CF4();
    objc_msgSend_width(v138, v139, v140, v141);
    v142 = sub_295808D28();
    objc_msgSend_desc(v142, v143, v144, v145);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setWidth_(v146, v147, v148, v149);

    v150 = sub_295808CF4();
    objc_msgSend_height(v150, v151, v152, v153);
    v154 = sub_295808D28();
    objc_msgSend_desc(v154, v155, v156, v157);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setHeight_(v158, v159, v160, v161);

    v165 = objc_msgSend_desc(v28, v162, v163, v164);
    objc_msgSend_setPixelFormat_(v165, v166, 25, v167);

    objc_msgSend_setLabel_(v28, v168, 0, v169);
    v173 = objc_msgSend_allocator(self->_metal, v170, v171, v172);
    v176 = objc_msgSend_newTextureWithDescriptor_(v173, v174, v28, v175);
    sub_295808CDC(v176, 32);

    if (!*(v11 + 32))
    {
LABEL_93:
      sub_295808BB8();
      FigDebugAssert3();
      sub_295808C98();
      sub_2957F8880();
      FigSignalErrorAtGM();
      sub_295808CD0();
      v18 = v447;
      goto LABEL_81;
    }

    objc_msgSend_width(self->_fusionBuffers->fusedChromaTex, v177, v178, v179);
    v180 = sub_295808D28();
    objc_msgSend_desc(v180, v181, v182, v183);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setWidth_(v184, v185, v186, v187);

    objc_msgSend_height(self->_fusionBuffers->fusedChromaTex, v188, v189, v190);
    v191 = sub_295808D28();
    objc_msgSend_desc(v191, v192, v193, v194);
    objc_claimAutoreleasedReturnValue();
    sub_295808CA4();
    objc_msgSend_setHeight_(v195, v196, v197, v198);

    v202 = objc_msgSend_desc(v28, v199, v200, v201);
    objc_msgSend_setPixelFormat_(v202, v203, 65, v204);

    objc_msgSend_setLabel_(v28, v205, 0, v206);
    v210 = objc_msgSend_allocator(self->_metal, v207, v208, v209);
    v213 = objc_msgSend_newTextureWithDescriptor_(v210, v211, v28, v212);
    sub_295808CDC(v213, 40);

    if (!*(v11 + 40))
    {
LABEL_26:
      sub_295808BB8();
      FigDebugAssert3();
      sub_295808C98();
      sub_2957F8880();
      LODWORD(v23) = FigSignalErrorAtGM();
      v18 = v447;
      a6 = v456;
LABEL_80:
      v28 = v453;
LABEL_81:
      v13 = v462;
      goto LABEL_79;
    }

    objc_storeStrong((v11 + 128), self->_toneMappingCurvesUBFusion);
    v13 = v462;
    v217 = objc_msgSend_skinMask(v462, v214, v215, v216);
    sub_295808CDC(v217, 48);
    v221 = objc_msgSend_personMask(v462, v218, v219, v220);
    sub_295808CDC(v221, 56);
    v225 = objc_msgSend_skyMask(v462, v222, v223, v224);
    sub_295808CDC(v225, 64);
    v229 = objc_msgSend_faceLandmarks(v462, v226, v227, v228);
    sub_295808CDC(v229, 120);
    v233 = objc_msgSend_skinToneClassification(v462, v230, v231, v232);
    sub_295808CDC(v233, 104);
    v237 = objc_msgSend_maskConfidences(v462, v234, v235, v236);
    sub_295808CDC(v237, 112);
    for (i = 0; i != 32; i += 8)
    {
      v239 = *(v11 + 72 + i);
      *(v11 + 72 + i) = 0;
    }

    v243 = objc_msgSend_instanceMasks(v462, v240, v241, v242);
    v247 = objc_msgSend_count(v243, v244, v245, v246);

    if (v247)
    {
      v251 = 0;
      v252 = v11;
      do
      {
        v253 = objc_msgSend_instanceMasks(v13, v248, v249, v250);
        v256 = objc_msgSend_objectAtIndexedSubscript_(v253, v254, v251, v255);

        if (v256)
        {
          v258 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metal, v257, v256, 25, 1, 0);
          v259 = *(v252 + 72);
          *(v252 + 72) = v258;

          if (!*(v252 + 72))
          {
            goto LABEL_26;
          }
        }

        else
        {
          v263 = *(v252 + 72);
          *(v252 + 72) = 0;
        }

        ++v251;
        v13 = v462;
        v264 = objc_msgSend_instanceMasks(v462, v260, v261, v262);
        v268 = objc_msgSend_count(v264, v265, v266, v267);

        v252 += 8;
        v269 = v268 > v251;
        self = v461;
      }

      while (v269);
    }

    a6 = &OBJC_IVAR___NRFPlist_toneMapping;
    sub_295808D1C(40);
    v102 = a3;
    if (*(v273 + 78) == 1 && objc_msgSend_skyMaskPixelBuffer(v13, v270, v271, v272))
    {
      v276 = objc_msgSend_width(*(v11 + 8), v270, v274, v275);
      v448 = COERCE_DOUBLE(__PAIR64__(objc_msgSend_height(*(v11 + 8), v277, v278, v279), v276));
      sub_295808D1C(40);
      if (*(*(v283 + 24) + 36))
      {
        objc_msgSend_skinMaskPixelBuffer(v13, v280, v281, v282);
      }

      else
      {
        objc_msgSend_skyMaskPixelBuffer(v13, v280, v281, v282);
      }

      toneMappingCurvesUBFusion = self->_toneMappingCurvesUBFusion;
      sub_295808D64(LODWORD(a3[4].colorSpaceConversionParameters[1].finalScale));
      v289 = objc_msgSend_regularizeLocalToneCurves_mask_tcrParams_imageDims_(v286, v287, v285 + 168, v288, *(*(v460 + 5) + 24), v448);
      if (v289)
      {
        goto LABEL_101;
      }
    }

    v290 = (&a4->meta.sensorID + 56056 * SLODWORD(a3[4].colorSpaceConversionParameters[1].finalScale));
    v289 = objc_msgSend_setToneCurvesWithLTC_GTC_colorCorrectionMatrix_dump_(self->_toneMappingCurvesUBFusion, v270, (v290 + 21), &a4->meta.ltmCurves + 224224 * SLODWORD(a3[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale), 0, v290[27870], v290[27872], v290[27874]);
    if (v289)
    {
LABEL_101:
      LODWORD(v23) = v289;
      sub_295808C24();
      FigDebugAssert3();
      goto LABEL_102;
    }

    v293 = *(v460 + 5);
    v294 = *(v293 + 56) == 1 && *&a3[4].colorSpaceConversionParameters[1].outputToLinearYCbCr >= 0;
    finalScale = a3[4].colorSpaceConversionParameters[1].finalScale;
    v296 = a4[1].meta.ltmCurves.ltmLut.bytes[224224 * SLODWORD(finalScale) + 176];
    linearScale = a3[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale;
    v298 = (&a4->meta.sensorID + 56056 * SLODWORD(linearScale));
    if (*(v298 + 102) == 1)
    {
      if (a4[1].meta.ltmCurves.ltmLut.bytes[224224 * SLODWORD(finalScale) + 176])
      {
        v299 = *(v293 + 8);
        if (v298[28] < *(v299 + 192) && *(v299 + 180) == 1)
        {
          *(v299 + 116) = *(v299 + 184);
          *(*(*(v460 + 5) + 8) + 120) = *(*(*(v460 + 5) + 8) + 188);
        }
      }
    }

    if (v294)
    {
      bilateralGrid = self->_bilateralGrid;
      v301 = (&a3->preWarpEnabled + 48 * *&a3[4].colorSpaceConversionParameters[1].outputToLinearYCbCr);
    }

    else
    {
      bilateralGrid = 0;
      v301 = MEMORY[0x29EDCA928];
    }

    BYTE4(v437) = v296;
    LODWORD(v437) = !self->_srlEnabled;
    LODWORD(v292) = 1.0;
    if (objc_msgSend_runToneMapping_bilateralGrid_bilateralGridHomography_tmPlist_darkestFrameMetadata_ev0FrameMetadata_scaleInput_colorCorrection_hasChromaBias_quality_inputIsLinear_(self->_toneMappingStage, v291, v11, bilateralGrid, *(v460 + 5), a4 + 224224 * SLODWORD(finalScale), a4 + 224224 * SLODWORD(linearScale), 0, *v301, v301[2], v301[4], v292, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32), v437))
    {
      sub_295808BB8();
      FigDebugAssert3();
      sub_295808C98();
      FigSignalErrorAtGM();
      sub_295808CD0();
      goto LABEL_72;
    }

    v302 = self->_fusionBuffers;
    FigMetalDecRef();
    v303 = self->_fusionBuffers;
    FigMetalDecRef();
  }

  if (v454)
  {
    if (self->_styleStage)
    {
      sub_295808D1C(104);
      if (v307)
      {
        objc_msgSend_width(*(v11 + 24), v304, v305, v306);
        objc_msgSend_desc(v28, v308, v309, v310);
        objc_claimAutoreleasedReturnValue();
        sub_295808CA4();
        objc_msgSend_setWidth_(v311, v312, v313, v314);

        objc_msgSend_height(*(v11 + 24), v315, v316, v317);
        objc_msgSend_desc(v28, v318, v319, v320);
        objc_claimAutoreleasedReturnValue();
        sub_295808CA4();
        objc_msgSend_setHeight_(v321, v322, v323, v324);

        v328 = objc_msgSend_desc(v28, v325, v326, v327);
        objc_msgSend_setUsage_(v328, v329, 7, v330);

        objc_msgSend_pixelFormat(*(v11 + 24), v331, v332, v333);
        objc_msgSend_desc(v28, v334, v335, v336);
        objc_claimAutoreleasedReturnValue();
        sub_295808CA4();
        objc_msgSend_setPixelFormat_(v337, v338, v339, v340);

        objc_msgSend_setLabel_(v28, v341, 0, v342);
        v346 = objc_msgSend_allocator(self->_metal, v343, v344, v345);
        v349 = objc_msgSend_newTextureWithDescriptor_(v346, v347, v28, v348);

        if (v349)
        {
          styleStage = self->_styleStage;
          sub_295808D1C(104);
          v443 = v350;
          sub_295808D64(LODWORD(a3[4].colorSpaceConversionParameters[1].finalScale));
          v441 = v351;
          v355 = objc_msgSend_sceneType(v13, v352, v353, v354);
          v356 = *(v11 + 32);
          v357 = *(v11 + 40);
          v358 = v13;
          v359 = *(v11 + 24);
          v363 = objc_msgSend_personMask(v358, v360, v361, v362);
          v367 = objc_msgSend_skinMask(v358, v364, v365, v366);
          v371 = objc_msgSend_skyMask(v358, v368, v369, v370);
          LODWORD(v359) = objc_msgSend_runWithStyle_tuningParams_refFrameMetadata_sceneType_lumaTex_chromaTex_gainMapTex_outputGainMapTex_personMaskTex_skinMaskTex_skyMaskTex_isLowLight_(styleStage, v372, v454, v443, v441, v355, v356, v357, v359, v349, v363, v367, v371, a10);

          if (!v359)
          {
            FigMetalDecRef();
            v373 = *(v11 + 24);
            *(v11 + 24) = v349;

            v23 = v456;
            self = v461;
            v13 = v462;
            v102 = a3;
            goto LABEL_55;
          }

          sub_295808C44();
          LODWORD(v23) = FigSignalErrorAtGM();
          v13 = v462;
        }

        else
        {
          sub_295808BB8();
          FigDebugAssert3();
          sub_295808C98();
          sub_2957F8880();
          LODWORD(v23) = FigSignalErrorAtGM();
        }

        goto LABEL_102;
      }
    }
  }

LABEL_55:
  objc_storeStrong(v459 + 2, *(v11 + 32));
  objc_storeStrong(v459 + 3, *(v11 + 40));
  objc_storeStrong(v23 + 2, obj);
  if (a9 == -1)
  {
    v374 = v457;
  }

  else
  {
    v374 = 0;
  }

  objc_storeStrong(v23 + 3, v374);
  v378 = 0;
  if ((nonLinearBias_low & 1) == 0)
  {
    v378 = *(v11 + 24);
    if (!v378)
    {
      sub_2957F884C();
      FigDebugAssert3();
      LODWORD(v23) = 0;
LABEL_102:
      v18 = v447;
      a6 = v456;
      goto LABEL_73;
    }
  }

  v452 = v378;
  v379 = *&v102[4].colorSpaceConversionParameters[1].outputToLinearYCbCr;
  if (v379 < 0)
  {
    v380 = 0;
  }

  else
  {
    v380 = a4 + 224224 * v379;
  }

  v446 = objc_msgSend_skinMask(v13, v375, v376, v377);
  v444 = objc_msgSend_skyMask(v13, v381, v382, v383);
  v384 = (&a4->meta.sensorID + 56056 * SLODWORD(v102[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale));
  isStaticScene = self->_isStaticScene;
  v440 = objc_msgSend_defringingEnabled(*(v460 + 12), v385, v386, v387);
  v388 = !a10 && self->_doGreenGhostMitigation;
  v392 = objc_msgSend_faceLandmarks(v13, v389, v390, v391);
  v439 = v380;
  BYTE2(v438) = v388;
  BYTE1(v438) = a10;
  LOBYTE(v438) = v440;
  LOBYTE(v437) = isStaticScene;
  a6 = v456;
  isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap = objc_msgSend_denoiseFrameWithOutput_input_localGainMap_skinMask_skyMask_maskExtent_exposure_staticScene_nrfPlist_defringeEnabled_isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap_(self, v393, v456, v459, v452, v446, v444, v384 + 2, v384[16], v384[17], v384[18], v384[19], v437, v460, v438, v392, a4 + 224224 * SLODWORD(v102[4].colorSpaceConversionParameters[2].transferFunctionFwd.linearScale), v439, v449);

  if (isLowLight_greenGhostEnabled_faceLandMarks_ev0FrameMetadata_evmFrameMetadata_gainMap)
  {
    sub_295808BB8();
    FigDebugAssert3();
    v436 = v444[114];
    LODWORD(v23) = FigSignalErrorAtGM();
    v18 = v447;
    v11 = v455;
    goto LABEL_80;
  }

  FigMetalDecRef();
  FigMetalDecRef();
  v11 = v455;
  if ((nonLinearBias_low & 1) == 0)
  {
    FigMetalDecRef();
  }

  v395 = v461->_fusionBuffers;
  FigMetalDecRef();
  v396 = v461->_fusionBuffers;
  FigMetalDecRef();
  v13 = v462;
  if (a9 == -1)
  {
    LODWORD(v23) = 0;
LABEL_72:
    v18 = v447;
LABEL_73:
    v28 = v453;
    goto LABEL_79;
  }

  v400 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270])
  {
    v401 = objc_msgSend_commandQueue(v461->_metal, v397, v398, v399);
    v405 = objc_msgSend_commandBuffer(v401, v402, v403, v404);

    objc_msgSend_setLabel_(v405, v406, @"KTRACE_START_MTL", v407);
    objc_msgSend_addCompletedHandler_(v405, v408, &unk_2A1CA9260, v409);
    objc_msgSend_commit(v405, v410, v411, v412);
  }

  v413 = v456[2];
  v414 = v456[3];
  if (a9 == 3)
  {
    objc_msgSend_skyMask(v462, v397, v398, v399);
    objc_claimAutoreleasedReturnValue();
    v415 = sub_295808DA8();
    LODWORD(v23) = objc_msgSend_runOnLuma_andChroma_withMask_outChroma_colorCubeFixType_(v415, v416, v413, v414, v462, v457, 3);

    v13 = v462;
  }

  else
  {
    LODWORD(v23) = objc_msgSend_runOnLuma_andChroma_withMask_outChroma_colorCubeFixType_(v461->_ColorCubeCorrectionStage, v397, v413, v414, 0, v457, a9);
  }

  v28 = v453;
  if (v23)
  {
    FigDebugAssert3();
    v18 = v447;
    a6 = v456;
  }

  else
  {
    if (*v400)
    {
      v420 = objc_msgSend_commandQueue(v461->_metal, v417, v418, v419);
      v424 = objc_msgSend_commandBuffer(v420, v421, v422, v423);

      objc_msgSend_setLabel_(v424, v425, @"KTRACE_END_MTL", v426);
      v463[0] = MEMORY[0x29EDCA5F8];
      v463[1] = 3221225472;
      v463[2] = sub_29580455C;
      v463[3] = &unk_29EDDBE78;
      v463[5] = 0;
      v463[6] = 0;
      v463[4] = 1;
      objc_msgSend_addCompletedHandler_(v424, v427, v463, v428);
      objc_msgSend_commit(v424, v429, v430, v431);

      v11 = v455;
    }

    a6 = v456;
    FigMetalDecRef();
    LODWORD(v23) = 0;
    v18 = v447;
  }

LABEL_79:

  return v23;
}

@end