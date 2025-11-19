@interface FigDisparityGenerator
- ($EE1E03F6ACF96C4AE943C45337DCA2FD)disparityConfig;
- (BOOL)_extractAndRunSanityChecks;
- (BOOL)allocateResources;
- (BOOL)allocateResources:(id *)a3;
- (BOOL)isImageScalerOutputResolution:(__CVBuffer *)a3;
- (BOOL)isTextureScalerOutputResolution:(id)a3;
- (CGRect)normalizedReferenceCropRect;
- (DisparityProcessorInferenceDelegate)disparityInferenceProcessorDelegate;
- (FigDisparityGenerator)initWithCommandQueue:(id)a3;
- (id)selectTuningParametersForCapture;
- (int)_demosaic:(float)a3 andPreshift:(id)a4 tuningParameters:;
- (int)_detectKeypointsLKTFlow:(float)a3 preShift:(id)a4 parameters:;
- (int)prewarm;
- (int)prewarmWithTuningParameters:(id)a3;
- (int)process;
- (void)dealloc;
- (void)fillShiftMapMetadataWithCalModel:(CalModel *)a3 referenceGDC:(id *)a4 auxiliaryGDC:(id *)a5;
- (void)releaseResources;
- (void)setDisparityConfig:(id *)a3;
- (void)setOptions:(id)a3;
@end

@implementation FigDisparityGenerator

- (int)prewarm
{
  v3 = [FigDisparityGenerator alloc];
  v11 = objc_msgSend_initWithCommandQueue_(v3, v4, self->_metalCommandQueue, v5, v6, v7, v8, v9, v10);
  LODWORD(self) = objc_msgSend_prewarmWithTuningParameters_(v11, v12, self->_tuningParameters, v13, v14, v15, v16, v17, v18);

  return self;
}

- (FigDisparityGenerator)initWithCommandQueue:(id)a3
{
  v4 = a3;
  v100.receiver = self;
  v100.super_class = FigDisparityGenerator;
  v5 = [(FigDisparityGenerator *)&v100 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v5->_isShaderHarvesting = FigGetCFPreferenceNumberWithDefault() != 0;
  v5->_shouldComputeDisparityWhenCalibrationFails = 0;
  v6 = MEMORY[0x29EDB9F48];
  v7 = objc_opt_class();
  v15 = objc_msgSend_bundleForClass_(v6, v8, v7, v9, v10, v11, v12, v13, v14);
  v16 = objc_alloc(MEMORY[0x29EDC0A40]);
  inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v16, v17, v15, v4, v18, v19, v20, v21, v22);
  metalContext = v5->_metalContext;
  v5->_metalContext = inited;

  v33 = v5->_metalContext;
  if (!v33)
  {
    sub_29576A908();
LABEL_20:

    v98 = 0;
    goto LABEL_12;
  }

  v34 = objc_msgSend_commandQueue(v33, v25, v26, v27, v28, v29, v30, v31, v32);
  metalCommandQueue = v5->_metalCommandQueue;
  v5->_metalCommandQueue = v34;

  if (!v5->_isShaderHarvesting)
  {
    v36 = objc_alloc(MEMORY[0x29EDC0A58]);
    v45 = objc_msgSend_commandQueue(v5->_metalContext, v37, v38, v39, v40, v41, v42, v43, v44);
    v53 = objc_msgSend_initWithCommandQueue_(v36, v46, v45, v47, v48, v49, v50, v51, v52);
    keypointDetRtb = v5->_keypointDetRtb;
    v5->_keypointDetRtb = v53;

    if (!v5->_keypointDetRtb)
    {
      sub_29576A6B0();
      goto LABEL_20;
    }

    v55 = objc_alloc(MEMORY[0x29EDC0A78]);
    v63 = objc_msgSend_initWithOptionalCommandQueue_(v55, v56, v4, v57, v58, v59, v60, v61, v62);
    gdcTransform = v5->_gdcTransform;
    v5->_gdcTransform = v63;

    if (!v5->_gdcTransform)
    {
      sub_29576A638();
      goto LABEL_20;
    }
  }

  disparityTuningParameters = v5->_disparityTuningParameters;
  v5->_disparityTuningParameters = 0;

  v66 = [Demosaic alloc];
  v74 = objc_msgSend_initWithMetalContext_(v66, v67, v5->_metalContext, v68, v69, v70, v71, v72, v73);
  referenceDemosaic = v5->_referenceDemosaic;
  v5->_referenceDemosaic = v74;

  if (!v5->_referenceDemosaic)
  {
    sub_29576A890();
    goto LABEL_20;
  }

  v76 = [Demosaic alloc];
  v84 = objc_msgSend_initWithMetalContext_(v76, v77, v5->_metalContext, v78, v79, v80, v81, v82, v83);
  auxiliaryDemosaic = v5->_auxiliaryDemosaic;
  v5->_auxiliaryDemosaic = v84;

  if (!v5->_auxiliaryDemosaic)
  {
    sub_29576A818();
    goto LABEL_20;
  }

  v86 = objc_opt_new();
  calibration = v5->_calibration;
  v5->_calibration = v86;

  if (!v5->_calibration)
  {
    sub_29576A7A0();
    goto LABEL_20;
  }

  v88 = [AdaptiveClamping alloc];
  v96 = objc_msgSend_initWithMetalContext_(v88, v89, v5->_metalContext, v90, v91, v92, v93, v94, v95);
  clamping = v5->_clamping;
  v5->_clamping = v96;

  if (!v5->_clamping)
  {
    sub_29576A728();
    goto LABEL_20;
  }

LABEL_11:
  v98 = v5;
LABEL_12:

  return v98;
}

- (int)prewarmWithTuningParameters:(id)a3
{
  v11 = a3;
  metalContext = self->_metalContext;
  if (metalContext)
  {
    v14 = objc_msgSend_commandQueue(metalContext, v4, v5, v6, v7, v8, v9, v10, v12);

    if (!v14)
    {
      objc_msgSend_setCommandQueue_(self->_metalContext, v15, self->_metalCommandQueue, v16, v17, v18, v19, v20, v21);
    }
  }

  else
  {
    v22 = objc_alloc(MEMORY[0x29EDC0A40]);
    v23 = MEMORY[0x29EDB9F48];
    v24 = objc_opt_class();
    v32 = objc_msgSend_bundleForClass_(v23, v25, v24, v26, v27, v28, v29, v30, v31);
    inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v22, v33, v32, self->_metalCommandQueue, v34, v35, v36, v37, v38);
    v40 = self->_metalContext;
    self->_metalContext = inited;

    if (!self->_metalContext)
    {
      sub_29576A980();
      v41 = -1;
      goto LABEL_9;
    }
  }

  self->_isPrewarming = 1;
  self->_disparityConfig.inputImageWidth = 1024;
  *&self->_disparityConfig.inputImageHeight = xmmword_29577A8B0;
  *&self->_disparityConfig.outputDisparityWidth = vdupq_n_s64(0x40uLL);
  *&self->_disparityConfig.maxPaddingFactor = 0x2000000000;
  *&self->_disparityConfig.keypointGridHeight = 24;
  if (objc_msgSend_prepareToProcess_(self, v15, 0, v16, v17, v18, v19, v20, COERCE_FLOAT(24)))
  {
    v41 = -12786;
  }

  else
  {
    v41 = 0;
  }

  self->_isPrewarming = 0;
LABEL_9:

  return v41;
}

- (void)setOptions:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_options, a3);
  v13 = objc_msgSend_objectForKeyedSubscript_(v5, v6, *MEMORY[0x29EDC0298], v7, v8, v9, v10, v11, v12);
  v21 = objc_msgSend_objectForKeyedSubscript_(v5, v14, *MEMORY[0x29EDC0288], v15, v16, v17, v18, v19, v20);
  v102 = v21;
  if (v13)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    disparityTuningParameters = self->_disparityTuningParameters;
    self->_disparityTuningParameters = 0;
  }

  else
  {
    v101 = v5;
    v24 = objc_opt_new();
    v25 = self->_disparityTuningParameters;
    self->_disparityTuningParameters = v24;

    v33 = objc_msgSend_objectForKeyedSubscript_(v13, v26, @"portsToConfig", v27, v28, v29, v30, v31, v32);
    portsToConfig = self->_portsToConfig;
    self->_portsToConfig = v33;

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    obj = self->_portsToConfig;
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v105, v104, 16, v36, v37, v38, v39);
    if (v40)
    {
      v48 = v40;
      v49 = *v106;
      while (2)
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v106 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v51 = *(*(&v105 + 1) + 8 * i);
          v52 = objc_msgSend_objectForKeyedSubscript_(v51, v41, @"DisparityVersion", v42, v43, v44, v45, v46, v47);
          v61 = objc_msgSend_intValue(v52, v53, v54, v55, v56, v57, v58, v59, v60);

          if (v61 == 5)
          {
            v62 = objc_msgSend_objectForKeyedSubscript_(v51, v41, @"Config", v42, v43, v44, v45, v46, v47);
            v63 = [DisparityTuningParameters alloc];
            v71 = objc_msgSend_objectForKeyedSubscript_(v13, v64, @"BaseConfiguration", v65, v66, v67, v68, v69, v70);
            v78 = objc_msgSend_initWithTuningDictionary_cameraInfoByPortType_(v63, v72, v71, v102, v73, v74, v75, v76, v77);

            v86 = objc_msgSend_objectForKeyedSubscript_(v13, v79, v62, v80, v81, v82, v83, v84, v85);
            updated = objc_msgSend_updateTuningParametersWith_(v78, v87, v86, v88, v89, v90, v91, v92, v93);

            if (updated)
            {
              sub_29576A9F4(updated, v78, v62);
              goto LABEL_19;
            }

            objc_msgSend_setObject_forKeyedSubscript_(self->_disparityTuningParameters, v95, v78, v62, v96, v97, v98, v99, v100);
          }
        }

        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v105, v104, 16, v44, v45, v46, v47);
        if (v48)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v5 = v101;
  }
}

- (BOOL)allocateResources:(id *)a3
{
  v8 = *&a3->var0;
  v9 = *&a3->var2;
  v10 = *&a3->var4;
  *&self->_disparityConfig.keypointGridHeight = *&a3->var7;
  *&self->_disparityConfig.inputIsLinearRGB = v9;
  *&self->_disparityConfig.outputDisparityHeight = v10;
  *&self->_disparityConfig.inputImageWidth = v8;
  return objc_msgSend_allocateResources(self, a2, a3, v3, v4, v5, v6, v7, *&v8);
}

- (BOOL)allocateResources
{
  if ((self->_disparityConfig.inputImageWidth & 3) != 0)
  {
    sub_29576AA8C();
LABEL_42:
    v29 = 0;
    v21 = 0;
    goto LABEL_43;
  }

  if ((self->_disparityConfig.inputImageHeight & 3) != 0)
  {
    sub_29576AB04();
    goto LABEL_42;
  }

  outputDisparityWidth = self->_disparityConfig.outputDisparityWidth;
  if ((outputDisparityWidth & 7) != 0)
  {
    sub_29576AB7C();
    goto LABEL_42;
  }

  outputDisparityHeight = self->_disparityConfig.outputDisparityHeight;
  if ((outputDisparityHeight & 7) != 0)
  {
    sub_29576ABF4();
    goto LABEL_42;
  }

  if (outputDisparityWidth > 0x300 || outputDisparityHeight >= 0x241)
  {
    sub_29576B414();
    goto LABEL_42;
  }

  v12 = objc_msgSend_allKeys(self->_disparityTuningParameters, a2, v2, v3, v4, v5, v6, v7, v8);
  v21 = objc_msgSend_firstObject(v12, v13, v14, v15, v16, v17, v18, v19, v20);

  v29 = objc_msgSend_objectForKeyedSubscript_(self->_disparityTuningParameters, v22, v21, v23, v24, v25, v26, v27, v28);
  objc_msgSend_useLKTKeypointDetection(v29, v30, v31, v32, v33, v34, v35, v36, v37);
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  self->_useLktKeypoints = CFPreferenceNumberWithDefault != 0;
  inputImageWidth = self->_disparityConfig.inputImageWidth;
  if (self->_disparityConfig.inputIsLinearRGB)
  {
    inputImageWidth *= 2;
    inputImageHeight = 2 * LODWORD(self->_disparityConfig.inputImageHeight);
  }

  else
  {
    inputImageHeight = self->_disparityConfig.inputImageHeight;
  }

  self->_inputCalibrationWidth = inputImageWidth;
  self->_inputCalibrationHeight = inputImageHeight;
  v42 = inputImageWidth >> 1;
  v43 = inputImageHeight >> 1;
  self->_scalerOutputWidth = v42;
  self->_scalerOutputHeight = v43;
  v44 = vmovn_s64(*&self->_disparityConfig.outputDisparityWidth);
  *&self->_disparityWidth = v44;
  v45 = vcvt_f32_u32(v44);
  v46 = v43 / v45.f32[1];
  if (v46 >= (v42 / v45.f32[0]))
  {
    v46 = v42 / v45.f32[0];
  }

  v47 = vcvt_u32_f32(vmla_n_f32(0x3F0000003F000000, v45, v46));
  v48 = vcvtq_f64_f32(vmul_f32(vdiv_f32(0x4300000043000000, v45), vcvt_f32_u32(v47)));
  __asm { FMOV            V2.2D, #0.5 }

  *&self->_rectifiedOutputWidth = v47;
  *&self->_auxiliaryPaddedHalfResWidth = *&vadd_s32(vmovn_s64(vcvtq_u64_f64(vaddq_f64(v48, _Q2))), vadd_s32(v47, 0x700000007)) & 0xFFFFFFF8FFFFFFF8;
  if (CFPreferenceNumberWithDefault)
  {
    v54 = [LKTKeypointDetector alloc];
    metalContext = self->_metalContext;
    scalerOutputWidth = self->_scalerOutputWidth;
    scalerOutputHeight = self->_scalerOutputHeight;
    Scale = objc_msgSend_lastScale(v29, v58, v59, v60, v61, v62, v63, v64, v65);
    v70 = objc_msgSend_initWithMetalContext_width_height_nscales_lastScale_(v54, v67, metalContext, scalerOutputWidth, scalerOutputHeight, 0xFFFFFFFFLL, Scale, v68, v69);
    lktKeypointDetector = self->_lktKeypointDetector;
    self->_lktKeypointDetector = v70;

    if (!self->_lktKeypointDetector)
    {
      sub_29576B39C();
      goto LABEL_43;
    }

    v80 = objc_msgSend_nwarps(v29, v72, v73, v74, v75, v76, v77, v78, v79);
    objc_msgSend_setNwarpings_(self->_lktKeypointDetector, v81, v80, v82, v83, v84, v85, v86, v87);
    v88 = self->_scalerOutputWidth;
    v97 = v88 >> objc_msgSend_lastScale(v29, v89, v90, v91, v92, v93, v94, v95, v96);
    self->_keypointGridWidth = v97 / objc_msgSend_blockSize(v29, v98, v99, v100, v101, v102, v103, v104, v105);
    v106 = self->_scalerOutputHeight;
    v115 = v106 >> objc_msgSend_lastScale(v29, v107, v108, v109, v110, v111, v112, v113, v114);
    v130 = v115 / objc_msgSend_blockSize(v29, v116, v117, v118, v119, v120, v121, v122, v123);
    self->_keypointGridHeight = v130;
  }

  else
  {
    keypointGridWidth = self->_disparityConfig.keypointGridWidth;
    keypointGridHeight = self->_disparityConfig.keypointGridHeight;
    self->_keypointGridWidth = keypointGridWidth;
    self->_keypointGridHeight = keypointGridHeight;
    *&self->_keypointsTemplateRadius = 0x500000007;
    self->_keypointsMinCornerScore = 0.0;
    self->_keypointsMinNccScore = 0.0;
    self->_keypointsMinSelectionScore = 1.7;
    if (objc_msgSend_allocateResources_imageWidth_imageHeight_gridWidth_gridHeight_templateRadius_searchRadius_minNCCThreshold_(self->_keypointDetRtb, v39, 4, v42, v43, keypointGridWidth, keypointGridHeight, 7, 0.0, 5))
    {
      sub_29576AC6C();
      goto LABEL_43;
    }

    v130 = self->_keypointGridHeight;
  }

  v134 = v130 * self->_keypointGridWidth;
  objc_msgSend_allocateResourcesForMaxNumPoints_(self->_calibration, v124, v134, v125, v126, v127, v128, v129, v131);
  v135 = malloc_type_malloc(24 * v134, 0x1000040504FFAC1uLL);
  self->_keypointListRtb = v135;
  if (!v135)
  {
    sub_29576B324();
    goto LABEL_43;
  }

  v136 = 16 * v134;
  v137 = malloc_type_malloc(v136, 0x100004000313F17uLL);
  self->_adaptiveCorrectionKeypointsReferenceDistorted = v137;
  if (!v137)
  {
    sub_29576B2AC();
    goto LABEL_43;
  }

  v138 = malloc_type_malloc(v136, 0x100004000313F17uLL);
  self->_adaptiveCorrectionKeypointsAuxiliaryDistorted = v138;
  if (!v138)
  {
    sub_29576B234();
    goto LABEL_43;
  }

  if (!self->_disparityConfig.inputIsLinearRGB)
  {
    v139 = objc_alloc(MEMORY[0x29EDC0A20]);
    v148 = objc_msgSend_device(self->_metalContext, v140, v141, v142, v143, v144, v145, v146, v147);
    v155 = objc_msgSend_initWithDevice_allocatorType_(v139, v149, v148, 2, v150, v151, v152, v153, v154);
    objc_msgSend_setAllocator_(self->_metalContext, v156, v155, v157, v158, v159, v160, v161, v162);

    v171 = objc_msgSend_allocator(self->_metalContext, v163, v164, v165, v166, v167, v168, v169, v170);

    if (!v171)
    {
      sub_29576ADFC();
      goto LABEL_43;
    }

    v172 = objc_opt_new();
    if (!v172)
    {
      sub_29576AD84();
      goto LABEL_43;
    }

    v179 = v172;
    v180 = vand_s8(vadd_s32(vshl_u32(*&self->_scalerOutputWidth, 0x200000001), 0x3FC000001FELL), 0xFFFFFC003FFFFE00);
    v180.i32[0] = vmul_lane_s32(v180, v180, 1).u32[0];
    objc_msgSend_setMemSize_(v172, v173, v180.u32[0], v174, v175, v176, v177, v178, *v180.i32);
    objc_msgSend_setWireMemory_(v179, v181, 1, v182, v183, v184, v185, v186, v187);
    objc_msgSend_setLabel_(v179, v188, @"FigMetalAllocator_Disparity", v189, v190, v191, v192, v193, v194);
    v203 = objc_msgSend_allocator(self->_metalContext, v195, v196, v197, v198, v199, v200, v201, v202);
    v211 = objc_msgSend_setupWithDescriptor_(v203, v204, v179, v205, v206, v207, v208, v209, v210);

    if (v211)
    {
      sub_29576ACEC(v211, v179);
      goto LABEL_43;
    }
  }

  if ((sub_295755F0C(&self->_refHalfResLumaPixelBuffer, self->_scalerOutputWidth, self->_scalerOutputHeight, 1278226488) & 1) == 0)
  {
    sub_29576AE74();
    goto LABEL_43;
  }

  if ((sub_295755F0C(&self->_auxHalfResRectifiedRGBAPixelBuffer, self->_scalerOutputWidth, self->_scalerOutputHeight, 1278226488) & 1) == 0)
  {
    sub_29576AEEC();
    goto LABEL_43;
  }

  if ((sub_295755F0C(&self->_refHalfResRectifiedRGBAPixelBuffer, self->_rectifiedOutputWidth, self->_rectifiedOutputHeight, 1815162994) & 1) == 0)
  {
    sub_29576AF64();
    goto LABEL_43;
  }

  if ((sub_295755F0C(&self->_auxHalfResRectifiedRGBAPixelBuffer, self->_auxiliaryPaddedHalfResWidth, self->_auxiliaryPaddedHalfResHeight, 1815162994) & 1) == 0)
  {
    sub_29576AFDC();
    goto LABEL_43;
  }

  if ((sub_295755F0C(&self->_refLowResRectifiedRGBAPixelBuffer, 768, 576, 1380411457) & 1) == 0)
  {
    sub_29576B054();
    goto LABEL_43;
  }

  if ((sub_295755F0C(&self->_auxLowResRectifiedRGBAPixelBuffer, 896, 704, 1380411457) & 1) == 0)
  {
    sub_29576B0CC();
    goto LABEL_43;
  }

  if ((sub_295755F0C(&self->_rectifiedDisparityMap, 768, 576, 1751411059) & 1) == 0)
  {
    sub_29576B144();
    goto LABEL_43;
  }

  if (CVPixelBufferGetBytesPerRow(self->_auxHalfResRectifiedRGBAPixelBuffer) < self->_scalerOutputWidth || CVPixelBufferGetHeight(self->_auxHalfResRectifiedRGBAPixelBuffer) < self->_scalerOutputHeight)
  {
    sub_29576B1BC();
LABEL_43:
    objc_msgSend_releaseResources(self, v214, v215, v216, v217, v218, v219, v220, v221);
    v212 = 0;
    goto LABEL_35;
  }

  v212 = 1;
LABEL_35:

  return v212;
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5, v6, v7, v8);
  v10.receiver = self;
  v10.super_class = FigDisparityGenerator;
  [(FigDisparityGenerator *)&v10 dealloc];
}

- (void)releaseResources
{
  shiftMapMetadata = self->_shiftMapMetadata;
  self->_shiftMapMetadata = 0;

  disparityDiagnosticMetadata = self->_disparityDiagnosticMetadata;
  self->_disparityDiagnosticMetadata = 0;

  refHalfResLumaPixelBuffer = self->_refHalfResLumaPixelBuffer;
  if (refHalfResLumaPixelBuffer)
  {
    CFRelease(refHalfResLumaPixelBuffer);
    self->_refHalfResLumaPixelBuffer = 0;
  }

  auxHalfResRectifiedRGBAPixelBuffer = self->_auxHalfResRectifiedRGBAPixelBuffer;
  if (auxHalfResRectifiedRGBAPixelBuffer)
  {
    CFRelease(auxHalfResRectifiedRGBAPixelBuffer);
    self->_auxHalfResRectifiedRGBAPixelBuffer = 0;
  }

  refHalfResRectifiedRGBAPixelBuffer = self->_refHalfResRectifiedRGBAPixelBuffer;
  if (refHalfResRectifiedRGBAPixelBuffer)
  {
    CFRelease(refHalfResRectifiedRGBAPixelBuffer);
    self->_refHalfResRectifiedRGBAPixelBuffer = 0;
    v16 = self->_auxHalfResRectifiedRGBAPixelBuffer;
    if (v16)
    {
      CFRelease(v16);
      self->_auxHalfResRectifiedRGBAPixelBuffer = 0;
    }
  }

  refLowResRectifiedRGBAPixelBuffer = self->_refLowResRectifiedRGBAPixelBuffer;
  if (refLowResRectifiedRGBAPixelBuffer)
  {
    CFRelease(refLowResRectifiedRGBAPixelBuffer);
    self->_refLowResRectifiedRGBAPixelBuffer = 0;
  }

  auxLowResRectifiedRGBAPixelBuffer = self->_auxLowResRectifiedRGBAPixelBuffer;
  if (auxLowResRectifiedRGBAPixelBuffer)
  {
    CFRelease(auxLowResRectifiedRGBAPixelBuffer);
    self->_auxLowResRectifiedRGBAPixelBuffer = 0;
  }

  rectifiedDisparityMap = self->_rectifiedDisparityMap;
  if (rectifiedDisparityMap)
  {
    CFRelease(rectifiedDisparityMap);
    self->_rectifiedDisparityMap = 0;
  }

  objc_msgSend_releaseResources(self->_keypointDetRtb, v5, v6, v7, v8, v9, v10, v11, v12);
  adaptiveCorrectionKeypointsReferenceDistorted = self->_adaptiveCorrectionKeypointsReferenceDistorted;
  if (adaptiveCorrectionKeypointsReferenceDistorted)
  {
    self->_adaptiveCorrectionKeypointsReferenceDistorted = 0;
    free(adaptiveCorrectionKeypointsReferenceDistorted);
  }

  adaptiveCorrectionKeypointsAuxiliaryDistorted = self->_adaptiveCorrectionKeypointsAuxiliaryDistorted;
  if (adaptiveCorrectionKeypointsAuxiliaryDistorted)
  {
    self->_adaptiveCorrectionKeypointsAuxiliaryDistorted = 0;
    free(adaptiveCorrectionKeypointsAuxiliaryDistorted);
  }

  keypointListRtb = self->_keypointListRtb;
  if (keypointListRtb)
  {
    self->_keypointListRtb = 0;

    free(keypointListRtb);
  }
}

- (BOOL)_extractAndRunSanityChecks
{
  referenceSampleBuffer = self->_referenceSampleBuffer;
  if (referenceSampleBuffer)
  {
    if (self->_auxiliarySampleBuffer)
    {
      if (self->_outputShiftmap)
      {
        if (self->_options)
        {
          v4 = *MEMORY[0x29EDBFF98];
          v5 = CMGetAttachment(referenceSampleBuffer, *MEMORY[0x29EDBFF98], 0);
          referenceMeta = self->_referenceMeta;
          self->_referenceMeta = v5;

          if (self->_referenceMeta)
          {
            v7 = CMGetAttachment(self->_auxiliarySampleBuffer, v4, 0);
            auxiliaryMeta = self->_auxiliaryMeta;
            self->_auxiliaryMeta = v7;

            if (self->_auxiliaryMeta)
            {
              if (objc_msgSend_isTextureScalerOutputResolution_(self, v9, self->_refHalfResRGBATexture, v10, v11, v12, v13, v14, v15))
              {
                if (objc_msgSend_isTextureScalerOutputResolution_(self, v16, self->_auxHalfResRGBATexture, v17, v18, v19, v20, v21, v22))
                {
                  if (objc_msgSend_isImageScalerOutputResolution_(self, v23, self->_refHalfResLumaPixelBuffer, v24, v25, v26, v27, v28, v29))
                  {
                    auxHalfResRectifiedRGBAPixelBuffer = self->_auxHalfResRectifiedRGBAPixelBuffer;
                    auxiliaryPaddedHalfResWidth = self->_auxiliaryPaddedHalfResWidth;
                    auxiliaryPaddedHalfResHeight = self->_auxiliaryPaddedHalfResHeight;
                    if (auxiliaryPaddedHalfResWidth == CVPixelBufferGetWidth(auxHalfResRectifiedRGBAPixelBuffer) && auxiliaryPaddedHalfResHeight == CVPixelBufferGetHeight(auxHalfResRectifiedRGBAPixelBuffer))
                    {
                      if (objc_msgSend_pixelFormat(self->_refHalfResRGBATexture, v33, v34, v35, v36, v37, v38, v39, v40) == 90)
                      {
                        if (objc_msgSend_pixelFormat(self->_auxHalfResRGBATexture, v41, v42, v43, v44, v45, v46, v47, v48) == 90)
                        {
                          if (CVPixelBufferGetPixelFormatType(self->_auxHalfResRectifiedRGBAPixelBuffer) == 1815162994)
                          {
                            if (CVPixelBufferGetPixelFormatType(self->_refLowResRectifiedRGBAPixelBuffer) == 1380411457)
                            {
                              if (CVPixelBufferGetPixelFormatType(self->_auxLowResRectifiedRGBAPixelBuffer) == 1380411457)
                              {
                                if (CVPixelBufferGetPixelFormatType(self->_rectifiedDisparityMap) == 1278226536 || CVPixelBufferGetPixelFormatType(self->_rectifiedDisparityMap) == 1751411059)
                                {
                                  if (CVPixelBufferGetWidth(self->_rectifiedDisparityMap) == 768)
                                  {
                                    if (CVPixelBufferGetHeight(self->_rectifiedDisparityMap) == 576)
                                    {
                                      return 1;
                                    }

                                    sub_29576BAA4();
                                  }

                                  else
                                  {
                                    sub_29576BA2C();
                                  }
                                }

                                else
                                {
                                  sub_29576B9B4();
                                }
                              }

                              else
                              {
                                sub_29576B93C();
                              }
                            }

                            else
                            {
                              sub_29576B8C4();
                            }
                          }

                          else
                          {
                            sub_29576B84C();
                          }
                        }

                        else
                        {
                          sub_29576B7D4();
                        }
                      }

                      else
                      {
                        sub_29576B75C();
                      }
                    }

                    else
                    {
                      sub_29576B6E4();
                    }
                  }

                  else
                  {
                    sub_29576B66C();
                  }
                }

                else
                {
                  sub_29576B5F4();
                }
              }

              else
              {
                sub_29576B57C();
              }
            }

            else
            {
              sub_29576BB1C();
            }
          }

          else
          {
            sub_29576BB94();
          }
        }

        else
        {
          sub_29576BC0C();
        }
      }

      else
      {
        sub_29576BC84();
      }
    }

    else
    {
      sub_29576BCFC();
    }
  }

  else
  {
    sub_29576BD74();
  }

  return 0;
}

- (void)fillShiftMapMetadataWithCalModel:(CalModel *)a3 referenceGDC:(id *)a4 auxiliaryGDC:(id *)a5
{
  *(v235[0].i64 + 4) = 0;
  v235[0].i32[0] = 0;
  v233 = 0u;
  v234 = 0u;
  v232 = 0u;
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v227 = 0u;
  sub_2957620D0(a3, &v232, &v229, &v226, v235, 0, 0);
  v223 = *MEMORY[0x29EDCA928];
  v224 = *(MEMORY[0x29EDCA928] + 16);
  v225 = *(MEMORY[0x29EDCA928] + 32);
  v212 = v227;
  v214 = v228;
  v216 = v226;
  v218 = v235[0];
  v7 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v15 = objc_msgSend_initWithCapacity_(v7, v8, 8, v9, v10, v11, v12, v13, v14);
  v16 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v24 = objc_msgSend_initWithCapacity_(v16, v17, 8, v18, v19, v20, v21, v22, v23);
  v25 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v33 = objc_msgSend_initWithCapacity_(v25, v26, 8, v27, v28, v29, v30, v31, v32);
  v34 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v49 = objc_msgSend_initWithCapacity_(v34, v35, 8, v36, v37, v38, v39, v40, v41);
  v50 = 0;
  v220 = a4;
  var1 = a4->var1;
  do
  {
    v52 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v42, v43, v44, v45, v46, v47, v48, *var1, *&v212, *&v214, *&v216, *&v218);
    objc_msgSend_setObject_atIndexedSubscript_(v15, v53, v52, v50, v54, v55, v56, v57, v58);

    v66 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v59, v60, v61, v62, v63, v64, v65, *(var1 - 8));
    objc_msgSend_setObject_atIndexedSubscript_(v24, v67, v66, v50, v68, v69, v70, v71, v72);

    v73 = &a5->var0[v50];
    v81 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v74, v75, v76, v77, v78, v79, v80, v73[8]);
    objc_msgSend_setObject_atIndexedSubscript_(v33, v82, v81, v50, v83, v84, v85, v86, v87);

    v95 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v88, v89, v90, v91, v92, v93, v94, *v73);
    objc_msgSend_setObject_atIndexedSubscript_(v49, v96, v95, v50, v97, v98, v99, v100, v101);

    ++v50;
    ++var1;
  }

  while (v50 != 8);
  v102 = vzip1q_s32(v216, v214);
  v103 = vzip1q_s32(v102, v212);
  v104 = vtrn2q_s32(v216, v212);
  v104.i32[2] = v214.i32[1];
  v105 = vzip1q_s32(vzip2q_s32(v216, v214), vdupq_laneq_s32(v212, 2));
  v217 = *v105.i64;
  *&v219 = vnegq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, v218.f32[0]), v104, *v218.f32, 1), v105, v218, 2)).u64[0];
  v102.i64[0] = vzip2q_s32(v102, vdupq_lane_s32(*v212.i8, 1)).u64[0];
  v213 = v103.f32[0];
  v215 = *v102.i64;
  v106 = vmulq_f32(v235[0], v235[0]);
  objc_msgSend_setBaseline_(self->_shiftMapMetadata, v42, v43, v44, v45, v46, v47, v48, sqrtf(v106.f32[2] + vaddv_f32(*v106.f32)));
  objc_msgSend_setTeleExtrinsicMatrix_(self->_shiftMapMetadata, v107, v108, v109, v110, v111, v112, v113, *&v223, *&v224, *&v225, 0.0);
  objc_msgSend_setTeleIntrinsicMatrix_(self->_shiftMapMetadata, v114, v115, v116, v117, v118, v119, v120, *&v232, *&v233, *&v234);
  objc_msgSend_setTeleIntrinsicMatrixReferenceDimensions_(self->_shiftMapMetadata, v121, v122, v123, v124, v125, v126, v127, COERCE_FLOAT(*&a3->calibrationDimensions[0]), a3->calibrationDimensions[1]);
  objc_msgSend_setTeleInverseLensDistortionCoefficients_(self->_shiftMapMetadata, v128, v24, v129, v130, v131, v132, v133, v134);
  objc_msgSend_setTeleLensDistortionCoefficients_(self->_shiftMapMetadata, v135, v15, v136, v137, v138, v139, v140, v141);
  objc_msgSend_setTeleLensDistortionOpticalCenter_(self->_shiftMapMetadata, v142, v143, v144, v145, v146, v147, v148, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v220->var2)), v220->var3);
  objc_msgSend_setTelePixelSizeInMillimeters_(self->_shiftMapMetadata, v149, v150, v151, v152, v153, v154, v155, v220->var8);
  objc_msgSend_setWideExtrinsicMatrix_(self->_shiftMapMetadata, v156, v157, v158, v159, v160, v161, v162, v213, v215, v217, v219);
  objc_msgSend_setWideIntrinsicMatrix_(self->_shiftMapMetadata, v163, v164, v165, v166, v167, v168, v169, *&v229, *&v230, *&v231);
  objc_msgSend_setWideIntrinsicMatrixReferenceDimensions_(self->_shiftMapMetadata, v170, v171, v172, v173, v174, v175, v176, COERCE_FLOAT(*&a3->calibrationDimensions[0]), a3->calibrationDimensions[1]);
  objc_msgSend_setWideInverseLensDistortionCoefficients_(self->_shiftMapMetadata, v177, v49, v178, v179, v180, v181, v182, v183);
  objc_msgSend_setWideLensDistortionCoefficients_(self->_shiftMapMetadata, v184, v33, v185, v186, v187, v188, v189, v190);
  objc_msgSend_setWideLensDistortionOpticalCenter_(self->_shiftMapMetadata, v191, v192, v193, v194, v195, v196, v197, COERCE_FLOAT(COERCE_UNSIGNED_INT64(a5->var2)), a5->var3);
  objc_msgSend_setWidePixelSizeInMillimeters_(self->_shiftMapMetadata, v198, v199, v200, v201, v202, v203, v204, a5->var8);
  objc_msgSend_setVersion_(self->_shiftMapMetadata, v205, 5, v206, v207, v208, v209, v210, v211);
}

- (int)process
{
  ImageBuffer = CMSampleBufferGetImageBuffer(self->_referenceSampleBuffer);
  v4 = CMSampleBufferGetImageBuffer(self->_auxiliarySampleBuffer);
  inputIsLinearRGB = self->_disparityConfig.inputIsLinearRGB;
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  pixelBuffer = ImageBuffer;
  if (inputIsLinearRGB)
  {
    if (PixelFormatType != 1815162994 || CVPixelBufferGetPixelFormatType(v4) != 1815162994)
    {
      sub_29576BE64();
      goto LABEL_170;
    }

    if (CVPixelBufferGetWidth(ImageBuffer) != self->_scalerOutputWidth || CVPixelBufferGetHeight(ImageBuffer) != self->_scalerOutputHeight)
    {
      sub_29576BEDC();
      goto LABEL_170;
    }

    if (CVPixelBufferGetWidth(v4) != self->_scalerOutputWidth || CVPixelBufferGetHeight(v4) != self->_scalerOutputHeight)
    {
      sub_29576BF54();
LABEL_170:
      LODWORD(v37) = 0;
      v778 = 0;
      v188 = 0;
      v780 = 0;
      v492 = 0;
      v408 = 0;
      goto LABEL_171;
    }
  }

  else
  {
    v7 = PixelFormatType == 1919379252 || CVPixelBufferGetPixelFormatType(ImageBuffer) == 1650943796;
    v8 = CVPixelBufferGetPixelFormatType(v4) == 1919379252 || CVPixelBufferGetPixelFormatType(v4) == 1650943796;
    if (!v7 || !v8)
    {
      sub_29576BDEC();
      goto LABEL_170;
    }
  }

  v16 = CVPixelBufferGetPixelFormatType(ImageBuffer);
  metalContext = self->_metalContext;
  if (v16 == 1815162994)
  {
    LODWORD(v17) = self->_scalerOutputWidth;
    LODWORD(v18) = self->_scalerOutputHeight;
    v20 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(metalContext, v9, ImageBuffer, 90, 17, 0, v14, v15, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v17)), v18);
    refHalfResRGBATexture = self->_refHalfResRGBATexture;
    self->_refHalfResRGBATexture = v20;

    if (!self->_refHalfResRGBATexture)
    {
      sub_29576D260();
      goto LABEL_170;
    }

    LODWORD(v25) = self->_scalerOutputWidth;
    LODWORD(v26) = self->_scalerOutputHeight;
    v27 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_metalContext, v22, v4, 90, 17, 0, v23, v24, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v25)), v26);
    auxHalfResRGBATexture = self->_auxHalfResRGBATexture;
    self->_auxHalfResRGBATexture = v27;

    v37 = 0;
    v38 = MEMORY[0x29EDB9270];
    if (!self->_auxHalfResRGBATexture)
    {
      sub_29576D1B0();
      LODWORD(v37) = 0;
LABEL_173:
      v778 = 0;
LABEL_177:
      v188 = 0;
LABEL_180:
      v780 = 0;
      goto LABEL_181;
    }
  }

  else
  {
    v39 = objc_msgSend_allocator(metalContext, v9, v10, v11, v12, v13, v14, v15, *&v17);
    v37 = objc_msgSend_newTextureDescriptor(v39, v40, v41, v42, v43, v44, v45, v46, v47);

    v38 = MEMORY[0x29EDB9270];
    if (!v37)
    {
      sub_29576C12C();
      goto LABEL_173;
    }

    v56 = objc_msgSend_desc(v37, v48, v49, v50, v51, v52, v53, v54, v55);
    objc_msgSend_setCompressionMode_(v56, v57, 2, v58, v59, v60, v61, v62, v63);

    v72 = objc_msgSend_desc(v37, v64, v65, v66, v67, v68, v69, v70, v71);
    objc_msgSend_setUsage_(v72, v73, 7, v74, v75, v76, v77, v78, v79);

    v88 = objc_msgSend_desc(v37, v80, v81, v82, v83, v84, v85, v86, v87);
    objc_msgSend_setPixelFormat_(v88, v89, 90, v90, v91, v92, v93, v94, v95);

    scalerOutputWidth = self->_scalerOutputWidth;
    v105 = objc_msgSend_desc(v37, v97, v98, v99, v100, v101, v102, v103, v104);
    objc_msgSend_setWidth_(v105, v106, scalerOutputWidth, v107, v108, v109, v110, v111, v112);

    scalerOutputHeight = self->_scalerOutputHeight;
    v122 = objc_msgSend_desc(v37, v114, v115, v116, v117, v118, v119, v120, v121);
    objc_msgSend_setHeight_(v122, v123, scalerOutputHeight, v124, v125, v126, v127, v128, v129);

    objc_msgSend_setLabel_(v37, v130, 0, v131, v132, v133, v134, v135, v136);
    v145 = objc_msgSend_allocator(self->_metalContext, v137, v138, v139, v140, v141, v142, v143, v144);
    v153 = objc_msgSend_newTextureWithDescriptor_(v145, v146, v37, v147, v148, v149, v150, v151, v152);
    v154 = self->_refHalfResRGBATexture;
    self->_refHalfResRGBATexture = v153;

    if (!self->_refHalfResRGBATexture)
    {
      v778 = v37;
      sub_29576C07C();
      goto LABEL_176;
    }

    objc_msgSend_setLabel_(v37, v155, 0, v156, v157, v158, v159, v160, v161);
    v170 = objc_msgSend_allocator(self->_metalContext, v162, v163, v164, v165, v166, v167, v168, v169);
    v178 = objc_msgSend_newTextureWithDescriptor_(v170, v171, v37, v172, v173, v174, v175, v176, v177);
    v179 = self->_auxHalfResRGBATexture;
    self->_auxHalfResRGBATexture = v178;

    if (!self->_auxHalfResRGBATexture)
    {
      v778 = v37;
      sub_29576BFCC();
      goto LABEL_176;
    }
  }

  v778 = v37;
  if ((objc_msgSend__extractAndRunSanityChecks(self, v29, v30, v31, v32, v33, v34, v35, v36) & 1) == 0)
  {
    sub_29576C1DC();
LABEL_176:
    LODWORD(v37) = 0;
    goto LABEL_177;
  }

  v188 = objc_msgSend_selectTuningParametersForCapture(self, v180, v181, v182, v183, v184, v185, v186, v187);
  if (!v188)
  {
    sub_29576D138();
LABEL_179:
    LODWORD(v37) = 0;
    goto LABEL_180;
  }

  v189 = objc_opt_new();
  shiftMapMetadata = self->_shiftMapMetadata;
  self->_shiftMapMetadata = v189;

  disparityDiagnosticMetadata = self->_disparityDiagnosticMetadata;
  self->_disparityDiagnosticMetadata = 0;

  objc_msgSend_clearDiagnostics(self->_diagnostics, v192, v193, v194, v195, v196, v197, v198, v199);
  objc_msgSend_setReferenceBufferDimensions_auxillaryBufferDimensions_normalizedReferenceFinalCropRect_(self->_calibration, v200, *&self->_inputCalibrationWidth, *&self->_inputCalibrationWidth, v201, v202, v203, v204, COERCE_FLOAT(*&self->_normalizedReferenceCropRect.origin.x), self->_normalizedReferenceCropRect.origin.y, self->_normalizedReferenceCropRect.size.width, self->_normalizedReferenceCropRect.size.height);
  calibration = self->_calibration;
  auxiliaryMeta = self->_auxiliaryMeta;
  referenceMeta = self->_referenceMeta;
  options = self->_options;
  objc_msgSend_adaptiveCorrectionConfig(v188, v209, v210, v211, v212, v213, v214, v215, v216);
  if (objc_msgSend_extractParametersFromReferenceMetadata_auxiliaryMetadata_options_adaptiveCorrectionConfig_useReferenceFrame_(calibration, v217, referenceMeta, auxiliaryMeta, options, &v805, 1, v218, v219))
  {
    sub_29576C254();
    goto LABEL_179;
  }

  if (objc_msgSend_computeInitialCalibration(self->_calibration, v220, v221, v222, v223, v224, v225, v226, v227))
  {
    sub_29576C2D4();
    goto LABEL_179;
  }

  objc_msgSend_referenceMagnification(self->_calibration, v228, v229, v230, v231, v232, v233, v234, v235);
  if (v243 <= 0.0)
  {
    sub_29576D0C0();
    goto LABEL_179;
  }

  v244 = v243;
  v804 = 0.0;
  if (objc_msgSend_alignAuxiliaryImageForKeypoints(v188, v236, v237, v238, v239, v240, v241, v242, v243) && objc_msgSend_computeAuxiliaryImageShiftForKeypoints_(self->_calibration, v245, &v804, v246, v247, v248, v249, v250, v251))
  {
    sub_29576C354();
    goto LABEL_179;
  }

  v252 = *&self->_inputCalibrationWidth;
  v253 = *&self->_scalerOutputWidth;
  v254 = *&self->_rectifiedOutputWidth;
  if (objc_msgSend__demosaic_andPreshift_tuningParameters_(self, v245, v188, v246, v247, v248, v249, v250, v244, v804))
  {
    sub_29576C3D4();
    goto LABEL_179;
  }

  self->_keypointsCount = 0;
  if (self->_useLktKeypoints)
  {
    v262 = objc_msgSend__detectKeypointsLKTFlow_preShift_parameters_(self, v255, v188, v257, v258, v259, v260, v261, v244, v804);
  }

  else
  {
    v262 = objc_msgSend__detectKeypoints_preShift_(self, v255, v256, v257, v258, v259, v260, v261, v244, v804);
  }

  if (v262)
  {
    sub_29576C454();
    LODWORD(v37) = 0;
    v780 = 0;
    v492 = 0;
    v408 = 0;
    v765 = 0;
    v764 = 1;
    goto LABEL_108;
  }

  if (*v38 == 1)
  {
    kdebug_trace();
  }

  objc_msgSend_setKeypointsForReference_auxiliary_keypointCount_(self->_calibration, v263, self->_adaptiveCorrectionKeypointsReferenceDistorted, self->_adaptiveCorrectionKeypointsAuxiliaryDistorted, self->_keypointsCount, v264, v265, v266, v267);
  v780 = objc_msgSend_computeCalibration(self->_calibration, v268, v269, v270, v271, v272, v273, v274, v275);
  if (v780 && !self->_shouldComputeDisparityWhenCalibrationFails)
  {
    if (v780 == 1)
    {
      v492 = 0;
      v408 = 0;
      v765 = 0;
      v764 = 2;
      goto LABEL_140;
    }

    if (v780 == 2)
    {
      v492 = 0;
      v408 = 0;
      v765 = 0;
      v764 = 3;
      goto LABEL_140;
    }

LABEL_139:
    v492 = 0;
    v408 = 0;
    v765 = 0;
    v764 = 4;
LABEL_140:
    LODWORD(v37) = 1;
    goto LABEL_108;
  }

  self->_gdcParametersReference.originalCropRect.size.height = 0.0;
  *&self->_gdcParametersReference.applyRollingShutterCorrection = 0u;
  *&self->_gdcParametersReference.originalCropRect.origin.y = 0u;
  *&self->_gdcParametersReference.canvasResolution.height = 0u;
  *&self->_gdcParametersReference.rollingShutterCorrectionHomographies = 0u;
  *&self->_gdcParametersReference.inverseHomography[4] = 0u;
  *&self->_gdcParametersReference.inverseHomography[8] = 0u;
  *&self->_gdcParametersReference.homography[5] = 0u;
  *self->_gdcParametersReference.inverseHomography = 0u;
  *&self->_gdcParametersReference.originalImageWidth = 0u;
  *&self->_gdcParametersReference.homography[1] = 0u;
  *&self->_gdcParametersReference.undistortPolynomCoefficients[4] = 0u;
  *&self->_gdcParametersReference.centerX = 0u;
  *&self->_gdcParametersReference.distortPolynomCoefficients[4] = 0u;
  *self->_gdcParametersReference.undistortPolynomCoefficients = 0u;
  *self->_gdcParametersReference.distortPolynomCoefficients = 0u;
  *self->_gdcParametersAuxiliary.distortPolynomCoefficients = 0u;
  *&self->_gdcParametersAuxiliary.distortPolynomCoefficients[4] = 0u;
  *self->_gdcParametersAuxiliary.undistortPolynomCoefficients = 0u;
  *&self->_gdcParametersAuxiliary.undistortPolynomCoefficients[4] = 0u;
  *&self->_gdcParametersAuxiliary.centerX = 0u;
  *&self->_gdcParametersAuxiliary.originalImageWidth = 0u;
  *&self->_gdcParametersAuxiliary.homography[1] = 0u;
  *&self->_gdcParametersAuxiliary.homography[5] = 0u;
  *self->_gdcParametersAuxiliary.inverseHomography = 0u;
  *&self->_gdcParametersAuxiliary.inverseHomography[4] = 0u;
  *&self->_gdcParametersAuxiliary.inverseHomography[8] = 0u;
  *&self->_gdcParametersAuxiliary.canvasResolution.height = 0u;
  *&self->_gdcParametersAuxiliary.rollingShutterCorrectionHomographies = 0u;
  *&self->_gdcParametersAuxiliary.applyRollingShutterCorrection = 0u;
  *&self->_gdcParametersAuxiliary.originalCropRect.origin.y = 0u;
  self->_gdcParametersAuxiliary.originalCropRect.size.height = 0.0;
  v802 = 0u;
  v803 = 0u;
  v800 = 0u;
  v801 = 0u;
  v798 = 0u;
  v799 = 0u;
  v796 = 0u;
  v797 = 0u;
  v794 = 0u;
  v795 = 0u;
  v792 = 0u;
  v793 = 0u;
  v790 = 0u;
  v791 = 0u;
  v788 = 0u;
  v789 = 0u;
  v786 = 0u;
  v787 = 0u;
  v784 = 0u;
  v785 = 0u;
  v282 = self->_calibration;
  if (v282)
  {
    objc_msgSend_distModelFor_(v282, v276, 0, v277, v278, v279, v280, v281, 0.0);
    v289 = self->_calibration;
    v800 = v811;
    v801 = v812;
    v802 = v813;
    v803 = v814;
    v796 = v807;
    v797 = v808;
    v798 = v809;
    v799 = v810;
    v794 = v805;
    v795 = v806;
    if (v289)
    {
      objc_msgSend_undistModelFor_(v289, v283, 0, v284, v285, v286, v287, v288, *v805.f64);
      goto LABEL_44;
    }
  }

  else
  {
    v802 = 0uLL;
    v803 = 0uLL;
    v800 = 0uLL;
    v801 = 0uLL;
    v798 = 0uLL;
    v799 = 0uLL;
    v796 = 0uLL;
    v797 = 0uLL;
    v794 = 0uLL;
    v795 = 0uLL;
  }

  v813 = 0u;
  v814 = 0u;
  v811 = 0u;
  v812 = 0u;
  v809 = 0u;
  v810 = 0u;
  v807 = 0u;
  v808 = 0u;
  v805 = 0u;
  v806 = 0u;
LABEL_44:
  v790 = v811;
  v791 = v812;
  v792 = v813;
  v793 = v814;
  v786 = v807;
  v787 = v808;
  v788 = v809;
  v789 = v810;
  v784 = v805;
  v785 = v806;
  if (sub_295757980(&v794, v784.f64, &self->_gdcParametersReference, self->_inputCalibrationWidth, self->_inputCalibrationHeight))
  {
    sub_29576C4CC();
    goto LABEL_139;
  }

  v297 = self->_calibration;
  if (v297)
  {
    objc_msgSend_distModelFor_(v297, v290, 1, v291, v292, v293, v294, v295, v296);
    v304 = self->_calibration;
    v800 = v811;
    v801 = v812;
    v802 = v813;
    v803 = v814;
    v796 = v807;
    v797 = v808;
    v798 = v809;
    v799 = v810;
    v794 = v805;
    v795 = v806;
    if (v304)
    {
      objc_msgSend_undistModelFor_(v304, v298, 1, v299, v300, v301, v302, v303, *v805.f64);
      goto LABEL_50;
    }
  }

  else
  {
    v802 = 0u;
    v803 = 0u;
    v800 = 0u;
    v801 = 0u;
    v798 = 0u;
    v799 = 0u;
    v796 = 0u;
    v797 = 0u;
    v794 = 0u;
    v795 = 0u;
  }

  v813 = 0u;
  v814 = 0u;
  v811 = 0u;
  v812 = 0u;
  v809 = 0u;
  v810 = 0u;
  v807 = 0u;
  v808 = 0u;
  v805 = 0u;
  v806 = 0u;
LABEL_50:
  v790 = v811;
  v791 = v812;
  v792 = v813;
  v793 = v814;
  v786 = v807;
  v787 = v808;
  v788 = v809;
  v789 = v810;
  v784 = v805;
  v785 = v806;
  if (sub_295757980(&v794, v784.f64, &self->_gdcParametersAuxiliary, self->_inputCalibrationWidth, self->_inputCalibrationHeight))
  {
    sub_29576C548();
    goto LABEL_139;
  }

  LODWORD(v312) = 15.0;
  if (objc_msgSend_computeStereoRectificationHomographies_alignedToAngle_(self->_calibration, v305, v306, v307, v308, v309, v310, v311, 300.0, v312))
  {
    sub_29576C5C4();
    goto LABEL_139;
  }

  v320 = vcvt_f32_u32(v252);
  v321 = vmul_f32(vdiv_f32(v320, vcvt_f32_u32(v253)), vcvt_f32_u32(v254));
  v322 = vmul_f32(vsub_f32(v320, v321), 0x3F0000003F000000);
  v781 = vcvtq_f64_f32(v322);
  v782 = vcvtq_f64_f32(v321);
  objc_msgSend_rectReferenceToReference(self->_calibration, v313, v314, v315, v316, v317, v318, v319, *&v781.x);
  v330 = 0;
  homography = self->_gdcParametersReference.homography;
  v805 = v332;
  v806 = v333;
  v807 = v334;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v336 = ((&v805 + i) & 0xFFFFFFFFFFFFFFF3 | (4 * (v330 & 3)));
      v337 = *v336;
      homography[i] = *v336;
    }

    ++v330;
    homography += 3;
  }

  while (v330 != 3);
  objc_msgSend_referenceToRectReference(self->_calibration, v323, v324, v325, v326, v327, v328, v329, v337);
  v346 = 0;
  inverseHomography = self->_gdcParametersReference.inverseHomography;
  v805 = v348;
  v806 = v345;
  v807 = v349;
  do
  {
    for (j = 0; j != 3; ++j)
    {
      inverseHomography[j] = *((&v805 + j) & 0xFFFFFFFFFFFFFFF3 | (4 * (v346 & 3)));
    }

    ++v346;
    inverseHomography += 3;
  }

  while (v346 != 3);
  *v345.f32 = vcvt_f32_u32(*&self->_rectifiedOutputWidth);
  v351 = vdiv_f32(vcvt_f32_u32(*&self->_auxiliaryPaddedHalfResWidth), *v345.f32);
  __asm { FMOV            V11.2S, #1.0 }

  *v345.f32 = vmul_f32(vmul_f32(v322, vsub_f32(_D11, v351)), vdiv_f32(vcvt_f32_u32(*&self->_scalerOutputWidth), *v345.f32));
  v775 = v351.u32[0];
  v776 = v351.i32[1];
  v345.i32[2] = 1.0;
  v777 = v345;
  objc_msgSend_rectReferenceToAuxiliary(self->_calibration, v338, v339, v340, v341, v342, v343, v344, 1.0);
  v773 = v358;
  v774 = v357;
  v772 = v359;
  objc_msgSend_auxiliaryPaddingHInv(self->_calibration, v360, v361, v362, v363, v364, v365, v366, v357.f32[0]);
  v374 = 0;
  v817 = v375;
  v818 = v376;
  v819 = v377;
  v805 = 0u;
  v806 = 0u;
  v807 = 0u;
  do
  {
    *(&v805 + v374) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v774, COERCE_FLOAT(*(&v817 + v374))), v773, *(&v817 + v374), 1), v772, *(&v817 + v374), 2);
    v374 += 16;
  }

  while (v374 != 48);
  v378 = 0;
  LODWORD(v379) = 0;
  v380 = v777;
  HIDWORD(v379) = v776;
  v380.i32[3] = 0;
  v381 = v805;
  v382 = v806;
  v383 = v807;
  v817 = v775;
  v818 = v379;
  v819 = v380;
  v805 = 0u;
  v806 = 0u;
  v807 = 0u;
  do
  {
    *(&v805 + v378) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v381, COERCE_FLOAT(*(&v817 + v378))), v382, *(&v817 + v378), 1), v383, *(&v817 + v378), 2);
    v378 += 16;
  }

  while (v378 != 48);
  v384 = 0;
  v385 = v805;
  v386 = v806;
  v387 = v807;
  HIDWORD(v385.f64[1]) = 0;
  v386.i32[3] = 0;
  v387.i32[3] = 0;
  v388 = self->_gdcParametersAuxiliary.homography;
  v805 = v385;
  v806 = v386;
  v807 = v387;
  do
  {
    for (k = 0; k != 3; ++k)
    {
      v390 = ((&v805 + k) & 0xFFFFFFFFFFFFFFF3 | (4 * (v384 & 3)));
      v391 = *v390;
      v388[k] = *v390;
    }

    ++v384;
    v388 += 3;
  }

  while (v384 != 3);
  v392 = self->_calibration;
  if (v392)
  {
    objc_msgSend_correctedCalibration(v392, v367, v368, v369, v370, v371, v372, v373, v391);
  }

  else
  {
    v816 = 0.0;
    v814 = 0u;
    v815 = 0u;
    v812 = 0u;
    v813 = 0u;
    v810 = 0u;
    v811 = 0u;
    v808 = 0u;
    v809 = 0u;
    v806 = 0u;
    v807 = 0u;
    v805 = 0u;
  }

  v393 = v814;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[10] = v813;
  *&self->_correctedCalibration.canonicalDisparityScale = v393;
  *&self->_correctedCalibration.calibrationDimensions[1] = v815;
  self->_correctedCalibration.pixelSize_um[1] = v816;
  v394 = v810;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[2] = v809;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[4] = v394;
  v395 = v812;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[6] = v811;
  *&self->_correctedCalibration.extrinRotRefefenceToAuxiliary[8] = v395;
  v396 = v806;
  *self->_correctedCalibration.focalLengthPix = v805;
  *self->_correctedCalibration.opticalCenterX = v396;
  v397 = v807.f32[0];
  v398 = v808;
  *self->_correctedCalibration.opticalCenterY = v807;
  *self->_correctedCalibration.extrinRotRefefenceToAuxiliary = v398;
  if (*v38 == 1)
  {
    kdebug_trace();
  }

  if (!self->_gdcTransform)
  {
    sub_29576D048();
    LODWORD(v37) = 0;
LABEL_181:
    v492 = 0;
    goto LABEL_182;
  }

  v399 = objc_msgSend_commandQueue(self->_metalContext, v367, v368, v369, v370, v371, v372, v373, v397);
  v408 = objc_msgSend_commandBuffer(v399, v400, v401, v402, v403, v404, v405, v406, v407);

  if (!v408)
  {
    sub_29576CFA4();
LABEL_148:
    LODWORD(v37) = 0;
    v492 = 0;
    goto LABEL_126;
  }

  LODWORD(v412) = self->_auxiliaryPaddedHalfResWidth;
  LODWORD(v413) = self->_auxiliaryPaddedHalfResHeight;
  v416 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_metalContext, v409, self->_auxHalfResRectifiedRGBAPixelBuffer, 90, 22, 0, v410, v411, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v412)), v413);
  if (!v416)
  {
    sub_29576CF2C();
LABEL_147:

    goto LABEL_148;
  }

  v417 = *&self->_auxiliaryPaddedHalfResWidth;
  v418.i64[0] = v417;
  v418.i64[1] = HIDWORD(v417);
  self->_gdcParametersAuxiliary.canvasResolution = vcvtq_f64_u64(v418);
  self->_gdcParametersAuxiliary.applyZTransform = 0;
  self->_gdcParametersAuxiliary.samplerType = 2;
  self->_gdcParametersAuxiliary.originalCropRect.origin = v781;
  self->_gdcParametersAuxiliary.originalCropRect.size = v782;
  if (objc_msgSend_transformFrom_to_withParameters_withScale_withMode_andCommandBuffer_(self->_gdcTransform, v414, self->_auxHalfResRGBATexture, v416, &self->_gdcParametersAuxiliary, 1, v408, v415, 1.0))
  {
    sub_29576C640();
    goto LABEL_147;
  }

  LODWORD(v419) = self->_rectifiedOutputWidth;
  LODWORD(v420) = self->_rectifiedOutputHeight;
  v416 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_metalContext, v421, self->_refHalfResRectifiedRGBAPixelBuffer, 90, 22, 0, v422, v423, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v419)), v420);
  if (!v416)
  {
    sub_29576CEB4();
    goto LABEL_147;
  }

  v426 = *&self->_rectifiedOutputWidth;
  v427.i64[0] = v426;
  v427.i64[1] = HIDWORD(v426);
  self->_gdcParametersReference.canvasResolution = vcvtq_f64_u64(v427);
  self->_gdcParametersReference.applyZTransform = 0;
  self->_gdcParametersReference.samplerType = 2;
  self->_gdcParametersReference.originalCropRect.origin = v781;
  self->_gdcParametersReference.originalCropRect.size = v782;
  if (objc_msgSend_transformFrom_to_withParameters_withScale_withMode_andCommandBuffer_(self->_gdcTransform, v424, self->_refHalfResRGBATexture, v416, &self->_gdcParametersReference, 1, v408, v425, 1.0))
  {
    sub_29576C6BC();
    goto LABEL_147;
  }

  if (*v38)
  {
    v436 = objc_msgSend_commandQueue(v408, v428, v429, v430, v431, v432, v433, v434, v435);
    v445 = objc_msgSend_commandBuffer(v436, v437, v438, v439, v440, v441, v442, v443, v444);

    objc_msgSend_setLabel_(v445, v446, @"KTRACE_MTLCMDBUF", v447, v448, v449, v450, v451, v452);
    objc_msgSend_addCompletedHandler_(v445, v453, &unk_2A1C9B3D8, v454, v455, v456, v457, v458, v459);
    objc_msgSend_commit(v445, v460, v461, v462, v463, v464, v465, v466, v467);
    objc_msgSend_addCompletedHandler_(v408, v468, &unk_2A1C9B3F8, v469, v470, v471, v472, v473, v474);
  }

  objc_msgSend_commit(v408, v428, v429, v430, v431, v432, v433, v434, v435);
  v483 = objc_msgSend_commandQueue(self->_metalContext, v475, v476, v477, v478, v479, v480, v481, v482);
  v492 = objc_msgSend_commandBuffer(v483, v484, v485, v486, v487, v488, v489, v490, v491);

  if (!v492)
  {
    sub_29576CE10();
    goto LABEL_125;
  }

  disparityWidth = self->_disparityWidth;
  disparityHeight = self->_disparityHeight;
  rectifiedOutputWidth = self->_rectifiedOutputWidth;
  rectifiedOutputHeight = self->_rectifiedOutputHeight;
  v500 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_metalContext, v493, self->_refHalfResRectifiedRGBAPixelBuffer, 90, 17, 0, v494, v495, COERCE_FLOAT(COERCE_UNSIGNED_INT64(rectifiedOutputWidth)), rectifiedOutputHeight);
  if (v500)
  {
    v505 = v500;
    v510 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v501, self->_refLowResRectifiedRGBAPixelBuffer, 115, 22, 0, v502, v503, v504);
    if (v510)
    {
      *v511.i32 = fminf(disparityWidth / rectifiedOutputWidth, disparityHeight / rectifiedOutputHeight);
      LODWORD(v512) = vdup_lane_s32(v511, 0).u32[0];
      if (!objc_msgSend_downscaleRGBA_toRGBA_scalingFactor_commandBuffer_(self->_referenceDemosaic, v506, v505, v510, v492, v507, v508, v509, v512))
      {

        v517 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v513, self->_auxHalfResRectifiedRGBAPixelBuffer, 90, 17, 0, v514, v515, v516);
        v38 = MEMORY[0x29EDB9270];
        if (v517)
        {
          v505 = v517;
          v510 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v518, self->_auxLowResRectifiedRGBAPixelBuffer, 115, 22, 0, v519, v520, v521);
          if (v510)
          {
            if (!objc_msgSend_downscaleRGBA_toRGBA_scalingFactor_commandBuffer_(self->_referenceDemosaic, v522, v505, v510, v492, v523, v524, v525, v512))
            {

              self->_canonicalDisparityScaleFactorOut = 1.0;
              objc_msgSend_orientationVector(self->_calibration, v526, v527, v528, v529, v530, v531, v532, v533);
              if (v541 < 0.0)
              {
                sub_29576CBB8();
              }

              else
              {
                objc_msgSend_orientationVector(self->_calibration, v534, v535, v536, v537, v538, v539, v540, v541);
                if (v549 < 0.0)
                {
                  sub_29576CB40();
                }

                else
                {
                  v550 = vcvt_f32_u32(*&self->_disparityWidth);
                  v551 = vdiv_f32(v550, vcvt_f32_f64(*self->_correctedCalibration.calibrationDimensions));
                  objc_msgSend_orientationVector(self->_calibration, v542, v543, v544, v545, v546, v547, v548, v550.f32[0]);
                  v560 = vmul_f32(v559, v551);
                  canonicalDisparityScale = self->_correctedCalibration.canonicalDisparityScale;
                  v562 = canonicalDisparityScale / sqrtf(vaddv_f32(vmul_f32(v560, v560)));
                  self->_canonicalDisparityScaleFactorOut = v562;
                  if (*v38)
                  {
                    v563 = objc_msgSend_commandQueue(v492, v552, v553, v554, v555, v556, v557, v558, v562);
                    v572 = objc_msgSend_commandBuffer(v563, v564, v565, v566, v567, v568, v569, v570, v571);

                    objc_msgSend_setLabel_(v572, v573, @"KTRACE_MTLCMDBUF", v574, v575, v576, v577, v578, v579);
                    objc_msgSend_addCompletedHandler_(v572, v580, &unk_2A1C9B418, v581, v582, v583, v584, v585, v586);
                    objc_msgSend_commit(v572, v587, v588, v589, v590, v591, v592, v593, v594);
                    objc_msgSend_addCompletedHandler_(v492, v595, &unk_2A1C9B438, v596, v597, v598, v599, v600, v601);
                  }

                  if (FigGetCFPreferenceNumberWithDefault())
                  {
                    objc_msgSend_addCompletedHandler_(v492, v602, &unk_2A1C9B458, v604, v605, v606, v607, v608, v609);
                  }

                  objc_msgSend_commit(v492, v602, v603, v604, v605, v606, v607, v608, v609);
                  objc_msgSend_waitForSchedule(self->_metalContext, v610, v611, v612, v613, v614, v615, v616, v617);
                  if (FigGetCFPreferenceNumberWithDefault())
                  {
                    WeakRetained = objc_loadWeakRetained(&self->_disparityInferenceProcessorDelegate);
                    v624 = objc_msgSend_processDisparityInferenceWithReferenceBuffer_auxBuffer_outputDisparityBuffer_(WeakRetained, v619, self->_refLowResRectifiedRGBAPixelBuffer, self->_auxLowResRectifiedRGBAPixelBuffer, self->_rectifiedDisparityMap, v620, v621, v622, v623);

                    if (*v38 == 1)
                    {
                      kdebug_trace();
                    }

                    if (!v624)
                    {
                      v633 = objc_msgSend_commandQueue(self->_metalContext, v625, v626, v627, v628, v629, v630, v631, v632);
                      v642 = objc_msgSend_commandBuffer(v633, v634, v635, v636, v637, v638, v639, v640, v641);

                      if (!v642)
                      {
                        sub_29576CA1C();
                        LODWORD(v37) = 0;
LABEL_182:
                        v408 = 0;
                        goto LABEL_126;
                      }

                      objc_msgSend_minDisparityClampingPercentile(v188, v643, v644, v645, v646, v647, v648, v649, v650);
                      v783 = v651;
                      objc_msgSend_maxDisparityClampingPercentile(v188, v652, v653, v654, v655, v656, v657, v658, v651);
                      v664.f32[0] = v783;
                      if (v783 != 0.0 && (v664.i32[1] = v663, objc_msgSend_clampFromPixelBuffer_Mask_MaxDisparity_Percentiles_CommandBuffer_(self->_clamping, v659, self->_rectifiedDisparityMap, self->_refLowResRectifiedRGBAPixelBuffer, v642, v660, v661, v662, 124.0, COERCE_DOUBLE(vminnm_f32(vmaxnm_f32(v664, 0), _D11)))))
                      {
                        sub_29576C830();
                      }

                      else
                      {
                        v665 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_metalContext, v659, self->_rectifiedDisparityMap, 25, 17, 0, v661, v662, 0.0, 576.0);
                        if (v665)
                        {
                          v671 = v665;
                          LODWORD(v669) = self->_disparityWidth;
                          LODWORD(v670) = self->_disparityHeight;
                          v679 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_metalContext, v666, self->_outputShiftmap, 25, 22, 0, v667, v668, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v669)), v670);
                          if (v679)
                          {
                            self->_gdcParametersReference.canvasResolution = xmmword_29577A8C0;
                            self->_gdcParametersReference.applyZTransform = 1;
                            self->_gdcParametersReference.samplerType = 0;
                            *&self->_gdcParametersReference.originalImageOriginX = v322;
                            *&self->_gdcParametersReference.originalImageWidth = v321;
                            objc_msgSend_referenceFinalCropRect(self->_calibration, v672, v673, v674, v675, v676, v677, v678, 0.0);
                            v681 = v680;
                            objc_msgSend_referenceFinalCropRect(self->_calibration, v682, v683, v684, v685, v686, v687, v688, *&v680);
                            v690 = v689;
                            objc_msgSend_referenceFinalCropRect(self->_calibration, v691, v692, v693, v694, v695, v696, v697, v698);
                            v700 = v699;
                            objc_msgSend_referenceFinalCropRect(self->_calibration, v701, v702, v703, v704, v705, v706, v707, v708);
                            self->_gdcParametersReference.originalCropRect.origin.x = v681;
                            self->_gdcParametersReference.originalCropRect.origin.y = v690;
                            self->_gdcParametersReference.originalCropRect.size.width = v700;
                            self->_gdcParametersReference.originalCropRect.size.height = v709;
                            if (!objc_msgSend_transformFrom_to_withParameters_withScale_withMode_andCommandBuffer_(self->_gdcTransform, v710, v671, v679, &self->_gdcParametersReference, 2, v642, v711, self->_canonicalDisparityScaleFactorOut))
                            {
                              if (*v38)
                              {
                                v720 = objc_msgSend_commandQueue(v642, v712, v713, v714, v715, v716, v717, v718, v719);
                                v729 = objc_msgSend_commandBuffer(v720, v721, v722, v723, v724, v725, v726, v727, v728);

                                objc_msgSend_setLabel_(v729, v730, @"KTRACE_MTLCMDBUF", v731, v732, v733, v734, v735, v736);
                                objc_msgSend_addCompletedHandler_(v729, v737, &unk_2A1C9B478, v738, v739, v740, v741, v742, v743);
                                objc_msgSend_commit(v729, v744, v745, v746, v747, v748, v749, v750, v751);
                                objc_msgSend_addCompletedHandler_(v642, v752, &unk_2A1C9B498, v753, v754, v755, v756, v757, v758);
                              }

                              objc_msgSend_commit(v642, v712, v713, v714, v715, v716, v717, v718, v719);

                              objc_msgSend_fillShiftMapMetadataWithCalModel_referenceGDC_auxiliaryGDC_(self, v759, &self->_correctedCalibration, &self->_gdcParametersReference, &self->_gdcParametersAuxiliary, v760, v761, v762, v763);
                              LODWORD(v37) = 0;
                              v764 = 0;
                              v765 = 1;
                              goto LABEL_107;
                            }

                            sub_29576C8B0();
                          }

                          else
                          {
                            sub_29576C92C();
                          }
                        }

                        else
                        {
                          sub_29576C9A4();
                        }
                      }

                      LODWORD(v37) = 0;
                      v765 = 0;
                      v764 = 4;
LABEL_107:
                      v408 = v642;
                      goto LABEL_108;
                    }
                  }

                  sub_29576CAC0();
                }
              }

              goto LABEL_125;
            }

            sub_29576C7B4();
          }

          else
          {
            sub_29576CC30();
          }

          goto LABEL_157;
        }

        sub_29576CCA8();
LABEL_125:
        LODWORD(v37) = 0;
LABEL_126:
        v765 = 0;
        v764 = 4;
        goto LABEL_108;
      }

      sub_29576C738();
    }

    else
    {
      sub_29576CD20();
    }

    v38 = MEMORY[0x29EDB9270];
LABEL_157:

    goto LABEL_125;
  }

  sub_29576CD98();
  LODWORD(v37) = 0;
LABEL_171:
  v765 = 0;
  v764 = 4;
  v38 = MEMORY[0x29EDB9270];
LABEL_108:
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) != 1815162994)
  {
    FigMetalDecRef();
    FigMetalDecRef();
  }

  if (*v38 == 1)
  {
    v766 = v37;
  }

  else
  {
    v766 = 0;
  }

  if (v766 == 1)
  {
    kdebug_trace();
  }

  if (v780 == 1)
  {
    v767 = 2;
  }

  else
  {
    v767 = 4;
  }

  if (v780 == 2)
  {
    v767 = 3;
  }

  if (((v780 != 0) & v765) != 0)
  {
    v768 = v767;
  }

  else
  {
    v768 = v764;
  }

  v769 = self->_referenceMeta;
  self->_referenceMeta = 0;

  v770 = self->_auxiliaryMeta;
  self->_auxiliaryMeta = 0;

  return v768;
}

- (int)_demosaic:(float)a3 andPreshift:(id)a4 tuningParameters:
{
  v5 = v4;
  auxiliarySampleBuffer = self->_auxiliarySampleBuffer;
  v9 = a4;
  ImageBuffer = CMSampleBufferGetImageBuffer(auxiliarySampleBuffer);
  v11 = CMSampleBufferGetImageBuffer(self->_referenceSampleBuffer);
  v12 = *&self->_inputCalibrationWidth;
  v158 = *&self->_scalerOutputWidth;
  v16 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_metalContext, v13, self->_refHalfResLumaPixelBuffer, 10, 23, 0, v14, v15, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v158.u32[0])), v158.u32[1]);
  LODWORD(v17) = self->_scalerOutputWidth;
  LODWORD(v18) = self->_scalerOutputHeight;
  v22 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_metalContext, v19, self->_auxHalfResRectifiedRGBAPixelBuffer, 10, 22, 0, v20, v21, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v17)), v18);
  objc_msgSend_setOutputImageHeight_(self->_referenceDemosaic, v23, self->_inputCalibrationHeight, v24, v25, v26, v27, v28, v29);
  objc_msgSend_setOutputImageHeight_(self->_auxiliaryDemosaic, v30, self->_inputCalibrationHeight, v31, v32, v33, v34, v35, v36);
  objc_msgSend_maxAnalogGain(v9, v37, v38, v39, v40, v41, v42, v43, v44);
  objc_msgSend_setMaxAnalogGain_(self->_referenceDemosaic, v45, v46, v47, v48, v49, v50, v51, v52);
  objc_msgSend_maxAnalogGain(v9, v53, v54, v55, v56, v57, v58, v59, v60);
  v62 = v61;

  objc_msgSend_setMaxAnalogGain_(self->_auxiliaryDemosaic, v63, v64, v65, v66, v67, v68, v69, v62);
  referenceDemosaic = self->_referenceDemosaic;
  referenceMeta = self->_referenceMeta;
  v72 = *MEMORY[0x29EDC0288];
  v80 = objc_msgSend_objectForKeyedSubscript_(self->_options, v73, *MEMORY[0x29EDC0288], v74, v75, v76, v77, v78, v79);
  v87 = objc_msgSend_preProcessMetadata_cameraInfoByPortType_(referenceDemosaic, v81, referenceMeta, v80, v82, v83, v84, v85, v86);

  if (v87)
  {
    sub_29576D4E4();
  }

  else
  {
    auxiliaryDemosaic = self->_auxiliaryDemosaic;
    auxiliaryMeta = self->_auxiliaryMeta;
    v97 = objc_msgSend_objectForKeyedSubscript_(self->_options, v88, v72, v89, v90, v91, v92, v93, v94);
    v87 = objc_msgSend_preProcessMetadata_cameraInfoByPortType_(auxiliaryDemosaic, v98, auxiliaryMeta, v97, v99, v100, v101, v102, v103);

    if (v87)
    {
      sub_29576D564();
    }

    else
    {
      v104 = COERCE_DOUBLE(vmul_f32(vdiv_f32(vcvt_f32_u32(v158), vcvt_f32_u32(v12)), v5));
      PixelFormatType = CVPixelBufferGetPixelFormatType(v11);
      metalContext = self->_metalContext;
      if (PixelFormatType == 1815162994)
      {
        v111 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metalContext, v105, ImageBuffer, 90, 17, 0, v106, v107, v109);
        objc_msgSend_convertLinearRGB_toLuma_(self->_auxiliaryDemosaic, v112, v111, v16, v113, v114, v115, v116, v117);
        objc_msgSend_resampleLuma_toLuma_magnification_preShift_(self->_auxiliaryDemosaic, v118, v16, v22, v119, v120, v121, v122, a3, v104);
        v127 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v123, v11, 90, 17, 0, v124, v125, v126);
        objc_msgSend_convertLinearRGB_toLuma_(self->_referenceDemosaic, v128, v127, v16, v129, v130, v131, v132, v133);
      }

      else
      {
        v134 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metalContext, v105, ImageBuffer, 23, 17, 0, v106, v107, v109);
        v135 = self->_auxiliaryDemosaic;
        v136 = CVPixelBufferGetPixelFormatType(ImageBuffer);
        objc_msgSend_demosaic2x_rawImagePixelFormat_toLuma_toRGBA_(v135, v137, v134, v136, v16, self->_auxHalfResRGBATexture, v138, v139, v140);
        objc_msgSend_resampleLuma_toLuma_magnification_preShift_(self->_auxiliaryDemosaic, v141, v16, v22, v142, v143, v144, v145, a3, v104);
        v150 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v146, v11, 23, 17, 0, v147, v148, v149);
        v151 = self->_referenceDemosaic;
        v152 = CVPixelBufferGetPixelFormatType(v11);
        objc_msgSend_demosaic2x_rawImagePixelFormat_toLuma_toRGBA_(v151, v153, v150, v152, v16, self->_refHalfResRGBATexture, v154, v155, v156);
      }

      v87 = 0;
    }
  }

  return v87;
}

- (int)_detectKeypointsLKTFlow:(float)a3 preShift:(id)a4 parameters:
{
  v6 = v4;
  v9 = a4;
  v188 = 0;
  LODWORD(v10) = self->_scalerOutputWidth;
  LODWORD(v11) = self->_scalerOutputHeight;
  v18 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_metalContext, v12, self->_refHalfResLumaPixelBuffer, 10, 17, 0, v13, v14, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v10)), v11);
  if (!v18)
  {
    sub_29576D8B4();
    v28 = 0;
LABEL_14:
    v185 = -12782;
    goto LABEL_11;
  }

  LODWORD(v19) = self->_scalerOutputWidth;
  LODWORD(v20) = self->_scalerOutputHeight;
  v28 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_metalContext, v15, self->_auxHalfResRectifiedRGBAPixelBuffer, 10, 17, 0, v16, v17, COERCE_FLOAT(COERCE_UNSIGNED_INT64(v19)), v20);
  if (!v28)
  {
    sub_29576D83C();
    goto LABEL_14;
  }

  Scale = objc_msgSend_lastScale(self->_lktKeypointDetector, v21, v22, v23, v24, v25, v26, v27, v29);
  v31 = *&self->_inputCalibrationWidth;
  v32 = *&self->_scalerOutputWidth;
  objc_msgSend_estimateFlowFromReference_target_(self->_lktKeypointDetector, v33, v18, v28, v34, v35, v36, v37, v38);
  lktKeypointDetector = self->_lktKeypointDetector;
  v48 = objc_msgSend_uv_fwd(lktKeypointDetector, v40, v41, v42, v43, v44, v45, v46, v47);
  v57 = objc_msgSend_uv_bwd(self->_lktKeypointDetector, v49, v50, v51, v52, v53, v54, v55, v56);
  v66 = objc_msgSend_conf_fwd(self->_lktKeypointDetector, v58, v59, v60, v61, v62, v63, v64, v65);
  v75 = objc_msgSend_conf_bwd(self->_lktKeypointDetector, v67, v68, v69, v70, v71, v72, v73, v74);
  objc_msgSend_bidirectionalError(v9, v76, v77, v78, v79, v80, v81, v82, v83);
  v85 = v84;
  objc_msgSend_confidenceRadialWeight(v9, v86, v87, v88, v89, v90, v91, v92, v84);
  v94 = v93;
  objc_msgSend_confidenceMinimum(v9, v95, v96, v97, v98, v99, v100, v101, v93);
  v103 = v102;
  v111 = objc_msgSend_blockSize(v9, v104, v105, v106, v107, v108, v109, v110, v102);
  *&v112 = v94;
  *&v113 = v103;
  objc_msgSend_computeKeypointsFromForwardFlow_backwardFlow_forwardConfidence_backwardConfidence_bidirectionalError_confidenceRadialWeight_confidenceMinimum_blockSize_outNumKeypoints_(lktKeypointDetector, v114, v48, v57, v66, v75, v111, &v188, v85, v112, v113);

  objc_msgSend_waitUntilCompleted(self->_lktKeypointDetector, v115, v116, v117, v118, v119, v120, v121, v122);
  if (self->_keypointGridHeight * self->_keypointGridWidth < v188)
  {
    sub_29576D7C4();
    v185 = -12780;
  }

  else
  {
    v131 = objc_msgSend_keypoints(self->_lktKeypointDetector, v123, v124, v125, v126, v127, v128, v129, v130);
    v132 = v131;
    v141 = objc_msgSend_contents(v132, v133, v134, v135, v136, v137, v138, v139, v140);

    v150 = objc_msgSend_keypoints_confidence(self->_lktKeypointDetector, v142, v143, v144, v145, v146, v147, v148, v149);
    v151 = v150;
    v160 = objc_msgSend_contents(v151, v152, v153, v154, v155, v156, v157, v158, v159);

    self->_keypointsCount = 0;
    if (v188)
    {
      v169 = 0;
      v170 = 1.0 / a3;
      v171 = vcvt_f32_u32(v31);
      v172 = vdiv_f32(vmul_n_f32(v171, (1 << Scale)), vcvt_f32_u32(v32));
      v173 = vmul_n_f32(v172, v170);
      v174 = vmla_n_f32(v6, v171, (1.0 - v170) * 0.5);
      v175 = (v160 + 6);
      v176 = (v141 + 4);
      do
      {
        LODWORD(_Q0.f64[0]) = *(v176 - 1);
        *&_Q0.f64[0] = vmul_f32(v172, vadd_f32(*&vcvtq_f32_f16(*&_Q0.f64[0]), 0));
        if ((LODWORD(_Q0.f64[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v5.i32[0] = *v176;
          v187 = *&_Q0.f64[0];
          LOWORD(_Q0.f64[0]) = *v175;
          __asm { FCVT            S13, H0 }

          objc_msgSend_confidenceMinimum(v9, v161, v162, v163, v164, v165, v166, v167, *_Q0.f64);
          HIDWORD(_Q0.f64[0]) = v187.i32[1];
          if (*_Q0.f64 <= _S13)
          {
            keypointsCount = self->_keypointsCount;
            v183 = 2 * keypointsCount;
            adaptiveCorrectionKeypointsAuxiliaryDistorted = self->_adaptiveCorrectionKeypointsAuxiliaryDistorted;
            *&self->_adaptiveCorrectionKeypointsReferenceDistorted[v183] = vcvtq_f64_f32(v187);
            _Q0 = vcvtq_f64_f32(vmla_f32(v174, v173, vadd_f32(*&vcvtq_f32_f16(v5), 0)));
            *&adaptiveCorrectionKeypointsAuxiliaryDistorted[v183] = _Q0;
            self->_keypointsCount = keypointsCount + 1;
          }
        }

        ++v169;
        v175 += 4;
        v176 += 2;
      }

      while (v169 < v188);
    }

    v185 = 0;
  }

LABEL_11:

  return v185;
}

- (id)selectTuningParametersForCapture
{
  v9 = objc_msgSend_objectForKeyedSubscript_(self->_referenceMeta, a2, @"PortType", v2, v3, v4, v5, v6, v7);
  v71 = objc_msgSend_objectForKeyedSubscript_(self->_auxiliaryMeta, v10, @"PortType", v11, v12, v13, v14, v15, v16);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v17 = self->_portsToConfig;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v73, v72, 16, v19, v20, v21, v22);
  if (v23)
  {
    v31 = v23;
    v70 = self;
    v32 = *v74;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v74 != v32)
        {
          objc_enumerationMutation(v17);
        }

        v34 = *(*(&v73 + 1) + 8 * i);
        v35 = objc_msgSend_objectForKeyedSubscript_(v34, v24, @"Reference", v25, v26, v27, v28, v29, v30, v70);
        if (objc_msgSend_isEqualToString_(v35, v36, v9, v37, v38, v39, v40, v41, v42))
        {
          v50 = objc_msgSend_objectForKeyedSubscript_(v34, v43, @"Auxiliary", v44, v45, v46, v47, v48, v49);
          isEqualToString = objc_msgSend_isEqualToString_(v50, v51, v71, v52, v53, v54, v55, v56, v57);

          if (isEqualToString)
          {
            disparityTuningParameters = v70->_disparityTuningParameters;
            v60 = objc_msgSend_objectForKeyedSubscript_(v34, v24, @"Config", v25, v26, v27, v28, v29, v30);
            v68 = objc_msgSend_objectForKeyedSubscript_(disparityTuningParameters, v61, v60, v62, v63, v64, v65, v66, v67);

            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v24, &v73, v72, 16, v27, v28, v29, v30);
    }

    while (v31);
  }

  v68 = 0;
LABEL_13:

  return v68;
}

- (BOOL)isImageScalerOutputResolution:(__CVBuffer *)a3
{
  scalerOutputWidth = self->_scalerOutputWidth;
  scalerOutputHeight = self->_scalerOutputHeight;
  return scalerOutputWidth == CVPixelBufferGetWidth(a3) && scalerOutputHeight == CVPixelBufferGetHeight(a3);
}

- (BOOL)isTextureScalerOutputResolution:(id)a3
{
  v4 = a3;
  scalerOutputWidth = self->_scalerOutputWidth;
  scalerOutputHeight = self->_scalerOutputHeight;
  v23 = scalerOutputWidth == objc_msgSend_width(v4, v7, v8, v9, v10, v11, v12, v13, v14) && scalerOutputHeight == objc_msgSend_height(v4, v15, v16, v17, v18, v19, v20, v21, v22);

  return v23;
}

- (DisparityProcessorInferenceDelegate)disparityInferenceProcessorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_disparityInferenceProcessorDelegate);

  return WeakRetained;
}

- ($EE1E03F6ACF96C4AE943C45337DCA2FD)disparityConfig
{
  *&retstr->var7 = self[20].var3;
  v3 = *&self[19].var7;
  *&retstr->var0 = *&self[19].var4;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[20].var1;
  return self;
}

- (void)setDisparityConfig:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var2;
  v5 = *&a3->var4;
  *&self->_disparityConfig.keypointGridHeight = *&a3->var7;
  *&self->_disparityConfig.inputIsLinearRGB = v4;
  *&self->_disparityConfig.outputDisparityHeight = v5;
  *&self->_disparityConfig.inputImageWidth = v3;
}

- (CGRect)normalizedReferenceCropRect
{
  x = self->_normalizedReferenceCropRect.origin.x;
  y = self->_normalizedReferenceCropRect.origin.y;
  width = self->_normalizedReferenceCropRect.size.width;
  height = self->_normalizedReferenceCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end