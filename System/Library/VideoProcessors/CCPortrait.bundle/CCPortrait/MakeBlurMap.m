@interface MakeBlurMap
+ (CGSize)blurMapSize:(CGSize)a3;
+ (unint64_t)maxBlurMapSize;
- (MakeBlurMap)init;
- (MakeBlurMap)initWithMetalQueue:(id)a3;
- (id)_scaleImage:(id)a3 targetSize:(CGSize)a4 device:(id)a5 useBoxFiltering:(BOOL)a6 outputImage:(id)a7 context:(id)a8;
- (id)_scaleImage:(id)a3 targetSize:(CGSize)a4 sourceSize:(CGSize)a5 device:(id)a6 outputImage:(id)a7 context:(id)a8;
- (id)_smallerTextureFromTexture:(id)a3 modelTexture:(id)a4 targetSize:(CGSize)a5 numTextures:(unsigned int)a6 pixelFormat:(unint64_t)a7;
- (id)_smallerTextureFromTexture:(id)a3 modelTexture:(id)a4 targetSize:(CGSize)a5 pixelFormat:(unint64_t)a6;
- (id)createBlurMapUsingMetadata:(id)a3 simulatedAperture:(float)a4 focusWindow:(CGRect)a5 focalLengthInPixels:(float)a6 normalizedFocalLength:(float)a7 facePoints:(CGPoint *)a8 maxBlur:(float)a9 inputScale:(float)a10 inputsAlreadyScaled:(BOOL)a11 inputShiftMap:(id)a12 inputSegmentation:(id)a13 inputHair:(id)a14 inputGlasses:(id)a15 inputImageLuma:(id)a16 inputImageChroma:(id)a17 inputFaceMaskAdjBlur:(id)a18 inputWeightsX:(id)a19 inputWeightsY:(id)a20 inputPreproc:(id)a21 inputSampledD:(id)a22 inputDisparityRefineBlur:(id)a23 inputAlphaMaskDelta:(id)a24 inputHairMaskDelta:(id)a25 inputBlurRefineIntermediate:(id)a26 resultAdjBlurMap:(id)a27 coreImageRender:(BOOL)a28 context:(id)a29 captureFolderMiscPath:(id)a30;
- (id)enqueueBoundaryMaskPassForInputTex:(id)a3 inputSecondaryTex:(id)a4 intermediateTex:(id)a5 thresholdValue:(float)a6 boundaryScalingFactor:(float)a7 outputTex:(id)a8 blurRadius:(float)a9 passName:(id)a10 scale:(float)a11 context:(id)a12;
- (id)enqueueRefinementUsingParams:(const blurmap_refinement_params *)a3 maskParams:(const face_mask_params *)a4 inputBlurMap:(id)a5 inputAlpha:(id)a6 inputHair:(id)a7 inputGlasses:(id)a8 inputAlphaMaskDelta:(id)a9 inputHairMaskDelta:(id)a10 inputBlurRefineIntermediate:(id)a11 outputBlurMap:(id)a12 scale:(float)a13 inputsAlreadyScaled:(BOOL)a14 context:(id)a15;
- (id)imageUsingArgs:(id)a3;
- (id)performBlurmapSmoothingUsingSmoothingConfig:(const blurmap_smoothing_params *)a3 inputBlurMap:(id)a4 inputIntermediateTex:(id)a5 outputSmoothedBlurmap:(id)a6 scale:(float)a7 version:(int)a8 context:(id)a9;
- (id)performCrispHairRefinementWithParams:(const crisp_hair_params *)a3 alpha:(id)a4 disparity:(id)a5 tmpImage0:(id)a6 tmpImage1:(id)a7 tmpImage2:(id)a8 editTimeRender:(BOOL)a9 context:(id)a10;
- (id)performDisparityRefinementUsingParams:(const disparity_refinement_params *)a3 inputDisparity:(id)a4 inputSegmentation:(id)a5 inputImageLuma:(id)a6 inputImageChroma:(id)a7 inputSlmParams:(id)a8 inputWeightsX:(id)a9 inputWeightsY:(id)a10 inputPreproc:(id)a11 inputSampledD:(id)a12 outputBlurMap:(id)a13 scale:(float)a14 havePerformedMatting:(BOOL)a15 editTimeRender:(BOOL)a16 context:(id)a17 enableFGBlur:(BOOL)a18;
- (id)performDisparityRefinementViaMatting:(id)a3 inputShiftmap:(id)a4 focusRect:(CGRect)a5 inputLuma:(id)a6 inputChroma:(id)a7 simpleLensModelCalculatorImage:(id)a8 disparityConfigIndex:(int)a9 outputRefinedImage:(id)a10 tmpRGB:(id)a11 tmpDisparity:(id)a12 tmpRGBA:(id)a13 SDOFVersion:(int)a14 mattingParams:(id *)a15 context:(id)a16;
- (id)performSLMCalculatorUsingParams:(const simple_lens_model_params *)a3 inputShiftMap:(id)a4 faceMaskParams:(const face_mask_params *)a5 version:(int)a6 context:(id)a7 isFGBlurEnabled:(BOOL)a8;
- (int)allocateFakeResources;
- (int)allocateResourcesForShiftMapWidth:(unint64_t)a3 shiftMapHeight:(unint64_t)a4;
- (int)enqueueBlurMapGenerationUsingArgs:(id)a3;
- (int)loadShaders;
- (int)setOptions:(const void *)a3 isPrewarm:(BOOL)a4;
- (unint64_t)calcShaderParamsFromConfigParams:(float *)a3;
- (void)dealloc;
- (void)deallocateResources;
@end

@implementation MakeBlurMap

- (int)setOptions:(const void *)a3 isPrewarm:(BOOL)a4
{
  if (!a3)
  {
    sub_2956CA7BC();
  }

  v5 = *(a3 + 1);
  *&self->_disparity_refinement_config_params.radius = *a3;
  *&self->_disparity_refinement_config_params.outerSamplingRadius = v5;
  v6 = *(a3 + 2);
  v7 = *(a3 + 3);
  v8 = *(a3 + 4);
  self->_disparity_refinement_config_params.fgBgDilationSize = *(a3 + 20);
  *&self->_disparity_refinement_config_params.aaLumaSigma = v7;
  *&self->_disparity_refinement_config_params.fgBlurScale = v8;
  *&self->_disparity_refinement_config_params.segmentationSigma = v6;

  return objc_msgSend_loadShaders(self, a2, a3, a4);
}

+ (unint64_t)maxBlurMapSize
{
  if (qword_2A18BA2C8 != -1)
  {
    sub_2956CA7E8();
  }

  return qword_2A1388810;
}

+ (CGSize)blurMapSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = fmin(objc_msgSend_maxBlurMapSize(MakeBlurMap, a2, v3) / fmax(a3.height, a3.width), 0.5);
  v7 = ceil(v6 * width + -0.001);
  v8 = ceil(v6 * height + -0.001);
  result.height = v8;
  result.width = v7;
  return result;
}

- (MakeBlurMap)init
{
  v2 = uni_logger_api();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = objc_opt_class();
    v6 = 136446466;
    v7 = "[MakeBlurMap init]";
    v8 = 2080;
    v9 = objc_msgSend_UTF8String(v3, v4, v5);
    _os_log_error_impl(&dword_295691000, v2, OS_LOG_TYPE_ERROR, "%{public}s invalid initialization method for %s", &v6, 0x16u);
  }

  abort();
}

- (MakeBlurMap)initWithMetalQueue:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_device(v5, v6, v7);
  }

  else
  {
    v9 = 0;
  }

  v241.receiver = self;
  v241.super_class = MakeBlurMap;
  v10 = [(MakeBlurMap *)&v241 init];
  if (!v10)
  {
    sub_2956CADFC();
  }

  v11 = v10;
  objc_storeStrong(&v10->_mtlQueue, a3);
  v12 = MEMORY[0x29EDB9F48];
  v13 = objc_opt_class();
  v15 = objc_msgSend_bundleForClass_(v12, v14, v13);
  if (!v15)
  {
    sub_2956CADD0();
  }

  v16 = v15;
  v17 = [UniLibrary alloc];
  v19 = objc_msgSend_initWithDevice_metalOnly_(v17, v18, v9, v8 != 0);
  library = v11->_library;
  v11->_library = v19;

  if (!v11->_library)
  {
    sub_2956CADA4();
  }

  v21 = [UniKernel alloc];
  v23 = objc_msgSend_initWithName_library_(v21, v22, @"slm_shiftmap_calcminmax", v11->_library);
  slmMinMax = v11->_slmMinMax;
  v11->_slmMinMax = v23;

  v26 = v11->_slmMinMax;
  if (!v26)
  {
    sub_2956CAD78();
  }

  objc_msgSend_setPreferredOutputFormat_(v26, v25, &unk_2A1C94A38);
  objc_msgSend_setRoiCallback_(v11->_slmMinMax, v27, &unk_2A1C8A1E8);
  v28 = [UniKernel alloc];
  v30 = objc_msgSend_initWithName_library_(v28, v29, @"slm_calc", v11->_library);
  slmCalc = v11->_slmCalc;
  v11->_slmCalc = v30;

  v33 = v11->_slmCalc;
  if (!v33)
  {
    sub_2956CAD4C();
  }

  objc_msgSend_setPreferredOutputFormat_(v33, v32, &unk_2A1C94A38);
  objc_msgSend_setRoiCallback_(v11->_slmCalc, v34, &unk_2A1C8A208);
  v35 = [UniKernel alloc];
  v37 = objc_msgSend_initWithName_library_(v35, v36, @"slm_calc_eyes", v11->_library);
  slmCalcEyes = v11->_slmCalcEyes;
  v11->_slmCalcEyes = v37;

  if (!v11->_slmCalcEyes)
  {
    sub_2956CAD20();
  }

  v41 = objc_msgSend_preferredOutputFormat(v11->_slmCalc, v39, v40);
  objc_msgSend_setPreferredOutputFormat_(v11->_slmCalcEyes, v42, v41);

  objc_msgSend_setRoiCallback_(v11->_slmCalcEyes, v43, &unk_2A1C8A228);
  v11->_disparity_refinement_config_params.radius = 3;
  *&v11->_disparity_refinement_config_params.weightScaling = xmmword_2956D2BA0;
  v11->_disparity_refinement_config_params.nSamples = 20;
  *&v11->_disparity_refinement_config_params.lumaSigma = xmmword_2956D2BB0;
  *&v11->_disparity_refinement_config_params.accumulatedWeightT0 = xmmword_2956D2BC0;
  *&v11->_disparity_refinement_config_params.aaSegmentationSigma = 0x3FB33333447A0000;
  *&v11->_disparity_refinement_config_params.fgBlurScale = 0;
  *&v11->_disparity_refinement_config_params.fgDeadZoneOffset = 0;
  v11->_disparity_refinement_config_params.fgBgDilationSize = 0;
  v44 = [UniKernel alloc];
  v46 = objc_msgSend_initWithName_library_(v44, v45, @"disparity_refinement_slm_passthrough", v11->_library);
  passthrough = v11->_passthrough;
  v11->_passthrough = v46;

  v49 = v11->_passthrough;
  if (!v49)
  {
    sub_2956CACF4();
  }

  objc_msgSend_setPreferredOutputFormat_(v49, v48, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(v11->_passthrough, v50, &unk_2A1C8A248);
  v51 = [UniKernel alloc];
  v53 = objc_msgSend_initWithName_library_(v51, v52, @"disparity_refinement_extract_positive_blur_values", v11->_library);
  extractPositiveBlurValues = v11->_extractPositiveBlurValues;
  v11->_extractPositiveBlurValues = v53;

  v56 = v11->_extractPositiveBlurValues;
  if (!v56)
  {
    sub_2956CACC8();
  }

  objc_msgSend_setPreferredOutputFormat_(v56, v55, &unk_2A1C94A50);
  v57 = [UniKernel alloc];
  v59 = objc_msgSend_initWithName_library_(v57, v58, @"disparity_refinement_insert_positive_blur_values", v11->_library);
  insertPositiveBlurValues = v11->_insertPositiveBlurValues;
  v11->_insertPositiveBlurValues = v59;

  v62 = v11->_insertPositiveBlurValues;
  if (!v62)
  {
    sub_2956CAC9C();
  }

  objc_msgSend_setPreferredOutputFormat_(v62, v61, &unk_2A1C94A68);
  v63 = [UniKernel alloc];
  v65 = objc_msgSend_initWithName_library_(v63, v64, @"threshold_hard_apply", v11->_library);
  thresholdHard = v11->_thresholdHard;
  v11->_thresholdHard = v65;

  v68 = v11->_thresholdHard;
  if (!v68)
  {
    sub_2956CAC70();
  }

  objc_msgSend_setPreferredOutputFormat_(v68, v67, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(v11->_thresholdHard, v69, &unk_2A1C8A268);
  v70 = [UniGaussianBlur alloc];
  v73 = objc_msgSend_device(v11->_mtlQueue, v71, v72);
  v75 = objc_msgSend_initWithDevice_(v70, v74, v73);
  gaussian = v11->_gaussian;
  v11->_gaussian = v75;

  if (!v11->_gaussian)
  {
    sub_2956CAC44();
  }

  v77 = [UniKernel alloc];
  v79 = objc_msgSend_initWithName_library_(v77, v78, @"map_linear_apply", v11->_library);
  mapLinear = v11->_mapLinear;
  v11->_mapLinear = v79;

  v82 = v11->_mapLinear;
  if (!v82)
  {
    sub_2956CAC18();
  }

  objc_msgSend_setPreferredOutputFormat_(v82, v81, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(v11->_mapLinear, v83, &unk_2A1C8A288);
  v84 = [UniKernel alloc];
  v86 = objc_msgSend_initWithName_library_(v84, v85, @"map_linear_no_secondary_tex_apply", v11->_library);
  mapLinearNoSecondary = v11->_mapLinearNoSecondary;
  v11->_mapLinearNoSecondary = v86;

  v89 = v11->_mapLinearNoSecondary;
  if (!v89)
  {
    sub_2956CABEC();
  }

  objc_msgSend_setPreferredOutputFormat_(v89, v88, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(v11->_mapLinearNoSecondary, v90, &unk_2A1C8A2A8);
  if (qword_2A18BA360 != -1)
  {
    sub_2956CA7FC();
  }

  v91 = [UniKernel alloc];
  v93 = objc_msgSend_initWithName_library_(v91, v92, @"eye_protection_face_calc", v11->_library);
  eyeProtectionFace = v11->_eyeProtectionFace;
  v11->_eyeProtectionFace = v93;

  if (!v11->_eyeProtectionFace)
  {
    sub_2956CABC0();
  }

  v95 = [UniKernel alloc];
  v97 = objc_msgSend_initWithName_library_(v95, v96, @"eye_protection_glasses_face_calc", v11->_library);
  eyeProtectionGlassesFace = v11->_eyeProtectionGlassesFace;
  v11->_eyeProtectionGlassesFace = v97;

  if (!v11->_eyeProtectionGlassesFace)
  {
    sub_2956CAB94();
  }

  objc_msgSend_setPreferredOutputFormat_(v11->_eyeProtectionFace, v99, &unk_2A1C94A38);
  objc_msgSend_setPreferredOutputFormat_(v11->_eyeProtectionGlassesFace, v100, &unk_2A1C94A38);
  objc_msgSend_setRoiCallback_(v11->_eyeProtectionFace, v101, &unk_2A1C8A2E8);
  v104 = objc_msgSend_roiCallback(v11->_eyeProtectionFace, v102, v103);
  objc_msgSend_setRoiCallback_(v11->_eyeProtectionGlassesFace, v105, v104);

  v106 = [UniKernel alloc];
  v108 = objc_msgSend_initWithName_library_(v106, v107, @"modify_blurmap_apply", v11->_library);
  modifyBlurmap = v11->_modifyBlurmap;
  v11->_modifyBlurmap = v108;

  v111 = v11->_modifyBlurmap;
  if (!v111)
  {
    sub_2956CAB68();
  }

  objc_msgSend_setPreferredOutputFormat_(v111, v110, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(v11->_modifyBlurmap, v112, &unk_2A1C8A308);
  v113 = [UniKernel alloc];
  v115 = objc_msgSend_initWithName_library_(v113, v114, @"modify_blurmap_glasses_apply", v11->_library);
  modifyBlurmapGlasses = v11->_modifyBlurmapGlasses;
  v11->_modifyBlurmapGlasses = v115;

  v118 = v11->_modifyBlurmapGlasses;
  if (!v118)
  {
    sub_2956CAB3C();
  }

  objc_msgSend_setPreferredOutputFormat_(v118, v117, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(v11->_modifyBlurmapGlasses, v119, &unk_2A1C8A328);
  v120 = [UniKernel alloc];
  v122 = objc_msgSend_initWithName_library_(v120, v121, @"segmentation_fusion_apply", v11->_library);
  segmentationFusion = v11->_segmentationFusion;
  v11->_segmentationFusion = v122;

  v125 = v11->_segmentationFusion;
  if (!v125)
  {
    sub_2956CAB10();
  }

  objc_msgSend_setPreferredOutputFormat_(v125, v124, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(v11->_segmentationFusion, v126, &unk_2A1C8A348);
  v127 = [UniKernel alloc];
  v129 = objc_msgSend_initWithName_library_(v127, v128, @"facemask_calc", v11->_library);
  faceMaskCalc = v11->_faceMaskCalc;
  v11->_faceMaskCalc = v129;

  v132 = v11->_faceMaskCalc;
  if (!v132)
  {
    sub_2956CAAE4();
  }

  objc_msgSend_setPreferredOutputFormat_(v132, v131, &unk_2A1C94A38);
  objc_msgSend_setRoiCallback_(v11->_faceMaskCalc, v133, &unk_2A1C8A368);
  v134 = [UniKernel alloc];
  v136 = objc_msgSend_initWithName_library_(v134, v135, @"facemask_apply", v11->_library);
  faceMaskApply = v11->_faceMaskApply;
  v11->_faceMaskApply = v136;

  v139 = v11->_faceMaskApply;
  if (!v139)
  {
    sub_2956CAAB8();
  }

  objc_msgSend_setPreferredOutputFormat_(v139, v138, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(v11->_faceMaskApply, v140, &unk_2A1C8A388);
  v141 = [UniKernel alloc];
  v143 = objc_msgSend_initWithName_library_(v141, v142, @"sparserendering_preprocess_scaled", v11->_library);
  sparseRenderingPreprocessingScaled = v11->_sparseRenderingPreprocessingScaled;
  v11->_sparseRenderingPreprocessingScaled = v143;

  v146 = v11->_sparseRenderingPreprocessingScaled;
  if (!v146)
  {
    sub_2956CAA8C();
  }

  objc_msgSend_setRoiCallback_(v146, v145, &unk_2A1C8A3A8);
  v149 = objc_msgSend_device(v11->_mtlQueue, v147, v148);

  if (v149)
  {
    v150 = [UniGuidedFilter alloc];
    v153 = objc_msgSend_device(v11->_mtlQueue, v151, v152);
    v155 = objc_msgSend_initWithDevice_(v150, v154, v153);
    guidedFilter = v11->_guidedFilter;
    v11->_guidedFilter = v155;

    if (!v11->_guidedFilter)
    {
      sub_2956CA824();
    }
  }

  else
  {
    v157 = objc_alloc_init(UniGuidedFilter);
    v158 = v11->_guidedFilter;
    v11->_guidedFilter = &v157->super;

    if (!v11->_guidedFilter)
    {
      sub_2956CAA60();
    }
  }

  v159 = [UniKernel alloc];
  v161 = objc_msgSend_initWithName_library_(v159, v160, @"fpDisparityRefinementPreprocessing", v11->_library);
  fpDisparityRefinementPreprocessing = v11->_fpDisparityRefinementPreprocessing;
  v11->_fpDisparityRefinementPreprocessing = v161;

  if (!v11->_fpDisparityRefinementPreprocessing)
  {
    sub_2956CAA34();
  }

  v163 = [UniKernel alloc];
  v165 = objc_msgSend_initWithName_library_(v163, v164, @"crispHair_BlurX", v11->_library);
  crispHairBlurX = v11->_crispHairBlurX;
  v11->_crispHairBlurX = v165;

  v168 = v11->_crispHairBlurX;
  if (!v168)
  {
    sub_2956CAA08();
  }

  objc_msgSend_setPreferredOutputFormat_(v168, v167, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(v11->_crispHairBlurX, v169, &unk_2A1C8A3C8);
  v170 = [UniKernel alloc];
  v172 = objc_msgSend_initWithName_library_(v170, v171, @"crispHair_BlurY", v11->_library);
  crispHairBlurY = v11->_crispHairBlurY;
  v11->_crispHairBlurY = v172;

  v175 = v11->_crispHairBlurY;
  if (!v175)
  {
    sub_2956CA9DC();
  }

  objc_msgSend_setPreferredOutputFormat_(v175, v174, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(v11->_crispHairBlurY, v176, &unk_2A1C8A3E8);
  v177 = [UniKernel alloc];
  v179 = objc_msgSend_initWithName_library_(v177, v178, @"crispHair_BlurSingleX", v11->_library);
  crispHairBlurSingleX = v11->_crispHairBlurSingleX;
  v11->_crispHairBlurSingleX = v179;

  v182 = v11->_crispHairBlurSingleX;
  if (!v182)
  {
    sub_2956CA9B0();
  }

  objc_msgSend_setPreferredOutputFormat_(v182, v181, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(v11->_crispHairBlurSingleX, v183, &unk_2A1C8A408);
  v184 = [UniKernel alloc];
  v186 = objc_msgSend_initWithName_library_(v184, v185, @"crispHair_BlurSingleY", v11->_library);
  crispHairBlurSingleY = v11->_crispHairBlurSingleY;
  v11->_crispHairBlurSingleY = v186;

  v189 = v11->_crispHairBlurSingleY;
  if (!v189)
  {
    sub_2956CA984();
  }

  objc_msgSend_setPreferredOutputFormat_(v189, v188, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(v11->_crispHairBlurSingleY, v190, &unk_2A1C8A428);
  v191 = [UniKernel alloc];
  v193 = objc_msgSend_initWithName_library_(v191, v192, @"crispHair_expandedDispX", v11->_library);
  crispHairExpandedDisparityX = v11->_crispHairExpandedDisparityX;
  v11->_crispHairExpandedDisparityX = v193;

  v196 = v11->_crispHairExpandedDisparityX;
  if (!v196)
  {
    sub_2956CA958();
  }

  objc_msgSend_setPreferredOutputFormat_(v196, v195, &unk_2A1C94A80);
  objc_msgSend_setRoiCallback_(v11->_crispHairExpandedDisparityX, v197, &unk_2A1C8A448);
  v198 = [UniKernel alloc];
  v200 = objc_msgSend_initWithName_library_(v198, v199, @"crispHair_expandedDispY", v11->_library);
  crispHairExpandedDisparityY = v11->_crispHairExpandedDisparityY;
  v11->_crispHairExpandedDisparityY = v200;

  v203 = v11->_crispHairExpandedDisparityY;
  if (!v203)
  {
    sub_2956CA92C();
  }

  objc_msgSend_setPreferredOutputFormat_(v203, v202, &unk_2A1C94A80);
  objc_msgSend_setRoiCallback_(v11->_crispHairExpandedDisparityY, v204, &unk_2A1C8A468);
  v205 = [UniKernel alloc];
  v207 = objc_msgSend_initWithName_library_(v205, v206, @"crispHair_expandedDispSingleY", v11->_library);
  crispHairExpandedDisparitySingleY = v11->_crispHairExpandedDisparitySingleY;
  v11->_crispHairExpandedDisparitySingleY = v207;

  v210 = v11->_crispHairExpandedDisparitySingleY;
  if (!v210)
  {
    sub_2956CA900();
  }

  objc_msgSend_setPreferredOutputFormat_(v210, v209, &unk_2A1C94A80);
  objc_msgSend_setRoiCallback_(v11->_crispHairExpandedDisparitySingleY, v211, &unk_2A1C8A488);
  v212 = [UniKernel alloc];
  v214 = objc_msgSend_initWithName_library_(v212, v213, @"crispHairDownsamplingSingle", v11->_library);
  crispHairDownsamplingSingle = v11->_crispHairDownsamplingSingle;
  v11->_crispHairDownsamplingSingle = v214;

  v217 = v11->_crispHairDownsamplingSingle;
  if (!v217)
  {
    sub_2956CA8D4();
  }

  objc_msgSend_setPreferredOutputFormat_(v217, v216, &unk_2A1C94A80);
  objc_msgSend_setRoiCallback_(v11->_crispHairDownsamplingSingle, v218, &unk_2A1C8A4A8);
  v219 = [UniKernel alloc];
  v221 = objc_msgSend_initWithName_library_(v219, v220, @"blendBackgroundBlur", v11->_library);
  blendBackgroundBlur = v11->_blendBackgroundBlur;
  v11->_blendBackgroundBlur = v221;

  v224 = v11->_blendBackgroundBlur;
  if (!v224)
  {
    sub_2956CA8A8();
  }

  objc_msgSend_setPreferredOutputFormat_(v224, v223, &unk_2A1C94A98);
  v225 = [UniKernel alloc];
  v227 = objc_msgSend_initWithName_library_(v225, v226, @"sobel_yChannel_Thresholded", v11->_library);
  thresholdedSobel = v11->_thresholdedSobel;
  v11->_thresholdedSobel = v227;

  v230 = v11->_thresholdedSobel;
  if (!v230)
  {
    sub_2956CA87C();
  }

  objc_msgSend_setRoiCallback_(v230, v229, &unk_2A1C8A4C8);
  objc_msgSend_setPreferredOutputFormat_(v11->_thresholdedSobel, v231, &unk_2A1C94A98);
  v232 = [UniMorphology alloc];
  v234 = objc_msgSend_initWithDevice_(v232, v233, v9);
  morphology = v11->_morphology;
  v11->_morphology = v234;

  v237 = v11->_morphology;
  if (!v237)
  {
    sub_2956CA850();
  }

  objc_msgSend_setPreferredOutputFormat_(v237, v236, &unk_2A1C94A98);
  v238 = [UniScaleImage alloc];

  return v11;
}

- (int)allocateResourcesForShiftMapWidth:(unint64_t)a3 shiftMapHeight:(unint64_t)a4
{
  v5 = objc_msgSend_device(self->_mtlQueue, a2, a3, a4);
  v6 = sub_29569F94C(1, v5);
  minMaxTex = self->_minMaxTex;
  self->_minMaxTex = v6;

  if (!self->_minMaxTex)
  {
    sub_2956CB390();
  }

  v10 = objc_msgSend_device(self->_mtlQueue, v8, v9);
  v11 = sub_29569F94C(1, v10);
  outputParamsImage = self->_outputParamsImage;
  self->_outputParamsImage = v11;

  if (!self->_outputParamsImage)
  {
    sub_2956CB364();
  }

  v15 = objc_msgSend_device(self->_mtlQueue, v13, v14);
  v16 = sub_29569F94C(9, v15);
  faceParamsTex = self->_faceParamsTex;
  self->_faceParamsTex = v16;

  if (!self->_faceParamsTex)
  {
    sub_2956CB338();
  }

  v20 = objc_msgSend_device(self->_mtlQueue, v18, v19);
  v21 = sub_29569F94C(8, v20);
  eyeProtectionFacesTex = self->_eyeProtectionFacesTex;
  self->_eyeProtectionFacesTex = v21;

  if (!self->_eyeProtectionFacesTex)
  {
    sub_2956CB30C();
  }

  v25 = objc_msgSend_device(self->_mtlQueue, v23, v24);
  v26 = sub_29569F94C(9, v25);
  faceMaskOutputParamsTex = self->_faceMaskOutputParamsTex;
  self->_faceMaskOutputParamsTex = v26;

  if (!self->_faceMaskOutputParamsTex)
  {
    sub_2956CB2E0();
  }

  return 0;
}

- (int)allocateFakeResources
{
  v4 = MEMORY[0x29EDB9178];
  v5 = objc_msgSend_whiteColor(MEMORY[0x29EDB9158], a2, v2);
  v7 = objc_msgSend_imageWithColor_(v4, v6, v5);

  v10 = objc_msgSend_imageByCroppingToRect_(v7, v8, v9, 0.0, 0.0, 1.0, 1.0);
  v12 = objc_msgSend_imageWithCIImage_(UniImage, v11, v10);
  minMaxTex = self->_minMaxTex;
  self->_minMaxTex = v12;

  v16 = objc_msgSend_imageByCroppingToRect_(v7, v14, v15, 0.0, 0.0, 1.0, 1.0);
  v18 = objc_msgSend_imageWithCIImage_(UniImage, v17, v16);
  outputParamsImage = self->_outputParamsImage;
  self->_outputParamsImage = v18;

  v22 = objc_msgSend_imageByCroppingToRect_(v7, v20, v21, 0.0, 0.0, 9.0, 1.0);
  v24 = objc_msgSend_imageWithCIImage_(UniImage, v23, v22);
  faceParamsTex = self->_faceParamsTex;
  self->_faceParamsTex = v24;

  v28 = objc_msgSend_imageByCroppingToRect_(v7, v26, v27, 0.0, 0.0, 8.0, 1.0);
  v30 = objc_msgSend_imageWithCIImage_(UniImage, v29, v28);
  eyeProtectionFacesTex = self->_eyeProtectionFacesTex;
  self->_eyeProtectionFacesTex = v30;

  v34 = objc_msgSend_imageByCroppingToRect_(v7, v32, v33, 0.0, 0.0, 9.0, 1.0);
  v36 = objc_msgSend_imageWithCIImage_(UniImage, v35, v34);
  faceMaskOutputParamsTex = self->_faceMaskOutputParamsTex;
  self->_faceMaskOutputParamsTex = v36;

  return 0;
}

- (int)loadShaders
{
  _S8 = -1.0 / (self->_disparity_refinement_config_params.weightScaling * (self->_disparity_refinement_config_params.weightScaling + self->_disparity_refinement_config_params.weightScaling));
  _S15 = -1.0 / (self->_disparity_refinement_config_params.lumaSigma * (self->_disparity_refinement_config_params.lumaSigma + self->_disparity_refinement_config_params.lumaSigma));
  _S14 = -1.0 / (self->_disparity_refinement_config_params.chromaSigma * (self->_disparity_refinement_config_params.chromaSigma + self->_disparity_refinement_config_params.chromaSigma));
  _S13 = -1.0 / (self->_disparity_refinement_config_params.segmentationSigma * (self->_disparity_refinement_config_params.segmentationSigma + self->_disparity_refinement_config_params.segmentationSigma));
  _S12 = -1.0 / (self->_disparity_refinement_config_params.disparitySigma * (self->_disparity_refinement_config_params.disparitySigma + self->_disparity_refinement_config_params.disparitySigma));
  _S11 = -1.0 / (self->_disparity_refinement_config_params.aaLumaSigma * (self->_disparity_refinement_config_params.aaLumaSigma + self->_disparity_refinement_config_params.aaLumaSigma));
  _S10 = -1.0 / (self->_disparity_refinement_config_params.aaChromaSigma * (self->_disparity_refinement_config_params.aaChromaSigma + self->_disparity_refinement_config_params.aaChromaSigma));
  aaSpatialSigma = self->_disparity_refinement_config_params.aaSpatialSigma;
  _S9 = -1.0 / (self->_disparity_refinement_config_params.aaSegmentationSigma * (self->_disparity_refinement_config_params.aaSegmentationSigma + self->_disparity_refinement_config_params.aaSegmentationSigma));
  v228 = @"DisparityRefinement::kRadius";
  v218 = -1.0 / (aaSpatialSigma * (aaSpatialSigma + aaSpatialSigma));
  v12 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], a2, self->_disparity_refinement_config_params.radius);
  v229 = v12;
  v219 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v13, &v229, &v228, 1);

  v226[0] = @"DisparityRefinement::kRadius";
  v15 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v14, self->_disparity_refinement_config_params.radius);
  v226[1] = @"DisparityRefinement::kWeightScaling_ushort";
  v227[0] = v15;
  __asm { FCVT            H0, S8 }

  v22 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v21, _S0);
  v227[1] = v22;
  v212 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v23, v227, v226, 2);

  v224[0] = @"DisparityRefinement::kNumSamples";
  v217 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v24, self->_disparity_refinement_config_params.nSamples);
  v225[0] = v217;
  v224[1] = @"DisparityRefinement::kInnerSamplingRadius_ushort";
  _S0 = self->_disparity_refinement_config_params.innerSamplingRadius;
  __asm { FCVT            H0, S0 }

  v216 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v26, LODWORD(_S0));
  v225[1] = v216;
  v224[2] = @"DisparityRefinement::kOuterSamplingRadius_ushort";
  _S0 = self->_disparity_refinement_config_params.outerSamplingRadius;
  __asm { FCVT            H0, S0 }

  v215 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v28, LODWORD(_S0));
  v225[2] = v215;
  v224[3] = @"DisparityRefinement::kColorSegScaling_ushort";
  __asm { FCVT            H0, S15 }

  v214 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v30, _S0);
  v223[0] = v214;
  __asm { FCVT            H0, S14 }

  v32 = _S0;
  v213 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v33, _S0);
  v223[1] = v213;
  v35 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v34, v32);
  v223[2] = v35;
  __asm { FCVT            H0, S13 }

  v38 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v37, _S0);
  v223[3] = v38;
  v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v39, v223, 4);
  v225[3] = v40;
  v224[4] = @"DisparityRefinement::kDisparityVarianceScaling_ushort";
  __asm { FCVT            H0, S12 }

  v43 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v42, _S0);
  v225[4] = v43;
  v224[5] = @"DisparityRefinement::kAccumulatedWeightT0_ushort";
  _S0 = self->_disparity_refinement_config_params.accumulatedWeightT0;
  __asm { FCVT            H0, S0 }

  v46 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v45, LODWORD(_S0));
  v225[5] = v46;
  v224[6] = @"DisparityRefinement::kAccumulatedWeightT1_ushort";
  _S0 = self->_disparity_refinement_config_params.accumulatedWeightT1;
  __asm { FCVT            H0, S0 }

  v49 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v48, LODWORD(_S0));
  v225[6] = v49;
  v224[7] = @"DisparityRefinement::kRadius";
  v51 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v50, self->_disparity_refinement_config_params.radius);
  v225[7] = v51;
  v224[8] = @"DisparityRefinement::kMaxReconstructionWeight_ushort";
  _S0 = self->_disparity_refinement_config_params.maxReconstructionWeight;
  __asm { FCVT            H0, S0 }

  v54 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v53, LODWORD(_S0));
  v224[9] = @"CoreImageMetalAbstraction::kEmulateBicubic";
  v225[8] = v54;
  v225[9] = &unk_2A1C94AB0;
  v211 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v55, v225, v224, 10);

  v221[0] = @"DisparityRefinement::kMaxReconstructionWeight_ushort";
  _S0 = self->_disparity_refinement_config_params.maxReconstructionWeight;
  __asm { FCVT            H0, S0 }

  v58 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v57, LODWORD(_S0));
  v222[0] = v58;
  v221[1] = @"DisparityRefinement::kAAColorSegScaling_ushort";
  __asm { FCVT            H0, S11 }

  v61 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v60, _S0);
  v220[0] = v61;
  __asm { FCVT            H0, S10 }

  v63 = _S0;
  v65 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v64, _S0);
  v220[1] = v65;
  v67 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v66, v63);
  v220[2] = v67;
  __asm { FCVT            H0, S9 }

  v70 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v69, _S0);
  v220[3] = v70;
  v72 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v71, v220, 4);
  v222[1] = v72;
  v221[2] = @"DisparityRefinement::kAASpatialScaling_ushort";
  _S0 = v218;
  __asm { FCVT            H0, S0 }

  v75 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v74, LODWORD(_S0));
  v221[3] = @"CoreImageMetalAbstraction::kEmulateBicubic";
  v222[2] = v75;
  v222[3] = &unk_2A1C94AB0;
  v77 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v76, v222, v221, 4);

  v79 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8E00], v78, v77);
  _S0 = self->_disparity_refinement_config_params.fgBlurScale;
  __asm { FCVT            H0, S0 }

  v82 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v81, LODWORD(_S0));
  objc_msgSend_setObject_forKeyedSubscript_(v79, v83, v82, @"DisparityRefinement::kFgBlurScale_ushort");

  _S0 = self->_disparity_refinement_config_params.fgBlurClamp;
  __asm { FCVT            H0, S0 }

  v86 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v85, LODWORD(_S0));
  objc_msgSend_setObject_forKeyedSubscript_(v79, v87, v86, @"DisparityRefinement::kFgBlurClamp_ushort");

  _S0 = self->_disparity_refinement_config_params.fgDeadZoneOffset;
  __asm { FCVT            H0, S0 }

  v90 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x29EDBA070], v89, LODWORD(_S0));
  objc_msgSend_setObject_forKeyedSubscript_(v79, v91, v90, @"DisparityRefinement::kFgDeadZoneOffset_ushort");

  v92 = [UniKernel alloc];
  v94 = objc_msgSend_initWithName_library_constants_(v92, v93, @"disparity_refinement_calcweightsX", self->_library, v219);
  calcWeightsX = self->_calcWeightsX;
  self->_calcWeightsX = v94;

  v97 = self->_calcWeightsX;
  if (!v97)
  {
    sub_2956CB5F8();
  }

  objc_msgSend_setPreferredOutputFormat_(v97, v96, &unk_2A1C94A98);
  objc_msgSend_setRoiCallback_(self->_calcWeightsX, v98, &unk_2A1C8A4E8);
  v99 = [UniKernel alloc];
  v101 = objc_msgSend_initWithName_library_constants_(v99, v100, @"disparity_refinement_calcweightsY", self->_library, v212);
  calcWeightsY = self->_calcWeightsY;
  self->_calcWeightsY = v101;

  v104 = self->_calcWeightsY;
  if (!v104)
  {
    sub_2956CB5CC();
  }

  objc_msgSend_setPreferredOutputFormat_(v104, v103, &unk_2A1C94A98);
  objc_msgSend_setRoiCallback_(self->_calcWeightsY, v105, &unk_2A1C8A508);
  v106 = [UniKernel alloc];
  v108 = objc_msgSend_initWithName_library_(v106, v107, @"disparity_refinement_preproc", self->_library);
  preprocessing = self->_preprocessing;
  self->_preprocessing = v108;

  v111 = self->_preprocessing;
  if (!v111)
  {
    sub_2956CB5A0();
  }

  objc_msgSend_setPreferredOutputFormat_(v111, v110, &unk_2A1C94AC8);
  objc_msgSend_setRoiCallback_(self->_preprocessing, v112, &unk_2A1C8A528);
  v113 = [UniKernel alloc];
  v115 = objc_msgSend_initWithName_library_constants_(v113, v114, @"disparity_refinement_sample", self->_library, v211);
  sample = self->_sample;
  self->_sample = v115;

  v118 = self->_sample;
  if (!v118)
  {
    sub_2956CB574();
  }

  objc_msgSend_setPreferredOutputFormat_(v118, v117, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(self->_sample, v119, &unk_2A1C8A548);
  v120 = [UniKernel alloc];
  v122 = objc_msgSend_initWithName_library_constants_(v120, v121, @"disparity_refinement_antialias", self->_library, v77);
  antialias = self->_antialias;
  self->_antialias = v122;

  v125 = self->_antialias;
  if (!v125)
  {
    sub_2956CB548();
  }

  objc_msgSend_setPreferredOutputFormat_(v125, v124, &unk_2A1C94A50);
  objc_msgSend_setRoiCallback_(self->_antialias, v126, &unk_2A1C8A568);
  v127 = [UniKernel alloc];
  v129 = objc_msgSend_initWithName_library_constants_(v127, v128, @"disparity_refinement_antialias_with_foreground_blur", self->_library, v79);
  antialiasWithForegroundBlur = self->_antialiasWithForegroundBlur;
  self->_antialiasWithForegroundBlur = v129;

  v132 = self->_antialiasWithForegroundBlur;
  if (!v132)
  {
    sub_2956CB51C();
  }

  objc_msgSend_setPreferredOutputFormat_(v132, v131, &unk_2A1C94A68);
  objc_msgSend_setRoiCallback_(self->_antialiasWithForegroundBlur, v133, &unk_2A1C8A588);
  v134 = [UniKernel alloc];
  v136 = objc_msgSend_initWithName_library_(v134, v135, @"blurmap_x_smoothing", self->_library);
  blurmap_x_smoothing = self->_blurmap_x_smoothing;
  self->_blurmap_x_smoothing = v136;

  v139 = self->_blurmap_x_smoothing;
  if (!v139)
  {
    sub_2956CB4F0();
  }

  objc_msgSend_setPreferredOutputFormat_(v139, v138, &unk_2A1C94A68);
  v140 = [UniKernel alloc];
  v142 = objc_msgSend_initWithName_library_(v140, v141, @"blurmap_y_smoothing", self->_library);
  blurmap_y_smoothing = self->_blurmap_y_smoothing;
  self->_blurmap_y_smoothing = v142;

  v145 = self->_blurmap_y_smoothing;
  if (!v145)
  {
    sub_2956CB4C4();
  }

  objc_msgSend_setPreferredOutputFormat_(v145, v144, &unk_2A1C94A50);
  v146 = [UniKernel alloc];
  v148 = objc_msgSend_initWithName_library_(v146, v147, @"blurmap_x_smoothing_scaled", self->_library);
  blurmap_x_smoothing_scaled = self->_blurmap_x_smoothing_scaled;
  self->_blurmap_x_smoothing_scaled = v148;

  v151 = self->_blurmap_x_smoothing_scaled;
  if (!v151)
  {
    sub_2956CB498();
  }

  objc_msgSend_setPreferredOutputFormat_(v151, v150, &unk_2A1C94A68);
  v152 = [UniKernel alloc];
  v154 = objc_msgSend_initWithName_library_(v152, v153, @"blurmap_y_smoothing_scaled", self->_library);
  blurmap_y_smoothing_scaled = self->_blurmap_y_smoothing_scaled;
  self->_blurmap_y_smoothing_scaled = v154;

  v157 = self->_blurmap_y_smoothing_scaled;
  if (!v157)
  {
    sub_2956CB46C();
  }

  objc_msgSend_setPreferredOutputFormat_(v157, v156, &unk_2A1C94A50);
  v158 = [UniKernel alloc];
  v160 = objc_msgSend_initWithName_library_(v158, v159, @"blurmap_x_smoothing_unbiased", self->_library);
  blurmap_x_smoothing_unbiased = self->_blurmap_x_smoothing_unbiased;
  self->_blurmap_x_smoothing_unbiased = v160;

  if (!self->_blurmap_x_smoothing_unbiased)
  {
    sub_2956CB440();
  }

  v164 = objc_msgSend_preferredOutputFormat(self->_blurmap_x_smoothing, v162, v163);
  objc_msgSend_setPreferredOutputFormat_(self->_blurmap_x_smoothing_unbiased, v165, v164);

  v166 = [UniKernel alloc];
  v168 = objc_msgSend_initWithName_library_(v166, v167, @"blurmap_y_smoothing_unbiased", self->_library);
  blurmap_y_smoothing_unbiased = self->_blurmap_y_smoothing_unbiased;
  self->_blurmap_y_smoothing_unbiased = v168;

  if (!self->_blurmap_y_smoothing_unbiased)
  {
    sub_2956CB414();
  }

  v172 = objc_msgSend_preferredOutputFormat(self->_blurmap_y_smoothing, v170, v171);
  objc_msgSend_setPreferredOutputFormat_(self->_blurmap_y_smoothing_unbiased, v173, v172);

  v174 = [UniKernel alloc];
  v176 = objc_msgSend_initWithName_library_(v174, v175, @"blurmap_x_smoothing_scaled_unbiased", self->_library);
  blurmap_x_smoothing_scaled_unbiased = self->_blurmap_x_smoothing_scaled_unbiased;
  self->_blurmap_x_smoothing_scaled_unbiased = v176;

  if (!self->_blurmap_x_smoothing_scaled_unbiased)
  {
    sub_2956CB3E8();
  }

  v180 = objc_msgSend_preferredOutputFormat(self->_blurmap_x_smoothing_scaled, v178, v179);
  objc_msgSend_setPreferredOutputFormat_(self->_blurmap_x_smoothing_scaled_unbiased, v181, v180);

  v182 = [UniKernel alloc];
  v184 = objc_msgSend_initWithName_library_(v182, v183, @"blurmap_y_smoothing_scaled_unbiased", self->_library);
  blurmap_y_smoothing_scaled_unbiased = self->_blurmap_y_smoothing_scaled_unbiased;
  self->_blurmap_y_smoothing_scaled_unbiased = v184;

  if (!self->_blurmap_y_smoothing_scaled_unbiased)
  {
    sub_2956CB3BC();
  }

  v188 = objc_msgSend_preferredOutputFormat(self->_blurmap_y_smoothing_scaled, v186, v187);
  objc_msgSend_setPreferredOutputFormat_(self->_blurmap_y_smoothing_scaled_unbiased, v189, v188);

  objc_msgSend_setRoiCallback_(self->_blurmap_x_smoothing, v190, &unk_2A1C8A5A8);
  v193 = objc_msgSend_roiCallback(self->_blurmap_x_smoothing, v191, v192);
  objc_msgSend_setRoiCallback_(self->_blurmap_x_smoothing_unbiased, v194, v193);

  objc_msgSend_setRoiCallback_(self->_blurmap_y_smoothing, v195, &unk_2A1C8A5C8);
  v198 = objc_msgSend_roiCallback(self->_blurmap_y_smoothing, v196, v197);
  objc_msgSend_setRoiCallback_(self->_blurmap_y_smoothing_unbiased, v199, v198);

  objc_msgSend_setRoiCallback_(self->_blurmap_x_smoothing_scaled, v200, &unk_2A1C8A5E8);
  v203 = objc_msgSend_roiCallback(self->_blurmap_x_smoothing_scaled, v201, v202);
  objc_msgSend_setRoiCallback_(self->_blurmap_x_smoothing_scaled_unbiased, v204, v203);

  objc_msgSend_setRoiCallback_(self->_blurmap_y_smoothing_scaled, v205, &unk_2A1C8A608);
  v208 = objc_msgSend_roiCallback(self->_blurmap_y_smoothing_scaled, v206, v207);
  objc_msgSend_setRoiCallback_(self->_blurmap_y_smoothing_scaled_unbiased, v209, v208);

  return 0;
}

- (void)deallocateResources
{
  minMaxTex = self->_minMaxTex;
  self->_minMaxTex = 0;

  outputParamsImage = self->_outputParamsImage;
  self->_outputParamsImage = 0;

  faceParamsTex = self->_faceParamsTex;
  self->_faceParamsTex = 0;

  eyeProtectionFacesTex = self->_eyeProtectionFacesTex;
  self->_eyeProtectionFacesTex = 0;

  faceMaskOutputParamsTex = self->_faceMaskOutputParamsTex;
  self->_faceMaskOutputParamsTex = 0;
}

- (void)dealloc
{
  objc_msgSend_deallocateResources(self, a2, v2);
  v4.receiver = self;
  v4.super_class = MakeBlurMap;
  [(MakeBlurMap *)&v4 dealloc];
}

- (id)performBlurmapSmoothingUsingSmoothingConfig:(const blurmap_smoothing_params *)a3 inputBlurMap:(id)a4 inputIntermediateTex:(id)a5 outputSmoothedBlurmap:(id)a6 scale:(float)a7 version:(int)a8 context:(id)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v20 = v16;
  v23 = v20;
  v24 = v20;
  if (a3->var0 >= 1)
  {
    objc_msgSend_extent(v20, v21, v22);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = objc_msgSend_conformsToProtocol_(v17, v33, &unk_2A1CA0A70);
    v35 = v17;
    v38 = v35;
    v106 = v19;
    v111 = v18;
    if (v34)
    {
      v39 = objc_msgSend_pixelFormat(v35, v36, v37);
      v40 = tmpTexturesFromTexture(v38, 1u, v39);

      v42 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, 0);
      v112 = objc_msgSend_texture(v42, v43, v44);
    }

    else
    {
      v112 = v35;
    }

    v121[0] = @"nIterations";
    v45 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v36, a3->var0);
    v122[0] = v45;
    v121[1] = @"originalBlurValueT0";
    *&v46 = a3->var1;
    v49 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v47, v48, v46);
    v122[1] = v49;
    v121[2] = @"originalBlurValueT1";
    *&v50 = a3->var2;
    v53 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v51, v52, v50);
    v122[2] = v53;
    v121[3] = @"localMinimumBlurValueT0";
    *&v54 = a3->var3;
    v57 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v55, v56, v54);
    v122[3] = v57;
    v121[4] = @"localMinimumBlurValueT1";
    v105 = a3;
    *&v58 = a3->var4;
    v61 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v59, v60, v58);
    v122[4] = v61;
    v110 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v62, v122, v121, 5);

    v24 = v23;
    v63 = 464;
    if (a7 >= 1.0)
    {
      v63 = 448;
    }

    v64 = *(&self->super.isa + v63);
    if (a7 < 1.0)
    {
      v65 = 472;
    }

    else
    {
      v65 = 456;
    }

    v66 = v64;
    v67 = *(&self->super.isa + v65);
    if (a8 >= 4)
    {
      v68 = 496;
      if (a7 >= 1.0)
      {
        v68 = 480;
      }

      v69 = *(&self->super.isa + v68);
      if (a7 < 1.0)
      {
        v70 = 504;
      }

      else
      {
        v70 = 488;
      }

      v71 = v69;

      v72 = *(&self->super.isa + v70);
      v66 = v71;
      v67 = v72;
    }

    v73 = [UniRunInfo alloc];
    v118 = (v30 * 0.5);
    v119 = (v32 * 0.5);
    v120 = 1;
    v74 = v66;
    v76 = objc_msgSend_initWithGridSize_kernel_(v73, v75, &v118, v66);
    objc_msgSend_setCoreImageOutputExtent_(v76, v77, v78, v26, v28, v30, v32);
    v79 = [UniRunInfo alloc];
    v118 = (v30 * 0.5);
    v119 = (v32 * 0.5);
    v120 = 1;
    v80 = v67;
    v82 = objc_msgSend_initWithGridSize_kernel_(v79, v81, &v118, v67);
    objc_msgSend_setCoreImageOutputExtent_(v82, v83, v84, v26, v28, v30, v32);
    v88 = v112;
    v107 = v23;
    if (a7 > 1.0)
    {

      v76 = 0;
      v82 = 0;
    }

    v108 = v80;
    v113 = v24;
    v89 = 0x29EDB8000uLL;
    v109 = v74;
    if (v105->var0 >= 1)
    {
      v90 = 0;
      do
      {
        v116[0] = @"inputTex";
        v116[1] = @"outputTex";
        v117[0] = v24;
        v117[1] = v88;
        v117[2] = v106;
        v116[2] = @"_renderContext";
        v116[3] = @"_kernelScale";
        *&v87 = a7;
        v91 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v85, v86, v87);
        v117[3] = v91;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(*(v89 + 3520), v92, v117, v116, 4);
        v94 = v93 = v89;
        v96 = objc_msgSend_imageByApplyingParameters_runInfo_(v109, v95, v94, v76);

        v114[0] = @"params";
        v114[1] = @"referenceTex";
        v115[0] = v110;
        v115[1] = v113;
        v114[2] = @"inputTex";
        v114[3] = @"outputTex";
        v115[2] = v96;
        v115[3] = v111;
        v115[4] = v106;
        v114[4] = @"_renderContext";
        v114[5] = @"_kernelScale";
        *&v97 = a7;
        v100 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v98, v99, v97);
        v115[5] = v100;
        v102 = objc_msgSend_dictionaryWithObjects_forKeys_count_(*(v93 + 3520), v101, v115, v114, 6);
        v24 = objc_msgSend_imageByApplyingParameters_runInfo_(v108, v103, v102, v82);

        v88 = v112;
        v89 = v93;

        ++v90;
      }

      while (v90 < v105->var0);
    }

    v23 = v107;
    v18 = v111;
    v19 = v106;
  }

  return v24;
}

- (id)performDisparityRefinementViaMatting:(id)a3 inputShiftmap:(id)a4 focusRect:(CGRect)a5 inputLuma:(id)a6 inputChroma:(id)a7 simpleLensModelCalculatorImage:(id)a8 disparityConfigIndex:(int)a9 outputRefinedImage:(id)a10 tmpRGB:(id)a11 tmpDisparity:(id)a12 tmpRGBA:(id)a13 SDOFVersion:(int)a14 mattingParams:(id *)a15 context:(id)a16
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v24 = a3;
  v25 = a4;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v188 = a10;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  v32 = a16;
  if (!v24)
  {
    v43 = v25;
    v38 = v25;
    goto LABEL_42;
  }

  v181 = v28;
  v182 = v26;
  v178 = v27;
  v180 = v25;
  v33 = &v198 + 2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v196 = xmmword_2956D2C30;
  v197 = unk_2956D2C40;
  v198 = xmmword_2956D2C50;
  v179 = v30;
  if (a9 == 5 && a14 > 3)
  {
    v36 = 4.0;
    v37 = 0.35;
    v38 = v25;
    v39 = v188;
    v40 = a15;
LABEL_5:
    *v33 = v37;
    *&v198 = v36;
    goto LABEL_6;
  }

  v40 = a15;
  if (a9 == 4 && a14 <= 3)
  {
    DWORD2(v198) = 1051931443;
    v38 = v25;
    v26 = v182;
    v39 = v188;
    goto LABEL_14;
  }

  v38 = v25;
  v39 = v188;
  if (a9 == 6)
  {
    v36 = 8.0;
    v37 = 0.1;
    goto LABEL_5;
  }

  if (a9 == 7)
  {
    v33 = &v197 + 3;
    DWORD2(v198) = 1048576000;
    LODWORD(v197) = 1065353216;
    v36 = 1.0;
    v37 = 5.0;
    goto LABEL_5;
  }

LABEL_6:
  if (a14 > 4)
  {
    v26 = v182;
    if (!v40)
    {
      v41 = v24;
      v42 = uni_logger_api();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_2956CB810(v42, v117, v118, v119, v120, v121, v122, v123);
      }

      goto LABEL_40;
    }

    if (a9 != 0xFFFF)
    {
      v41 = v24;
      v42 = uni_logger_api();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_2956CB7C4(v42, v167, v168, v169, v170, v171, v172, v173);
      }

      goto LABEL_40;
    }

    goto LABEL_18;
  }

  v26 = v182;
  if ((a9 - 7) > 0xFFFFFFF9)
  {
LABEL_14:
    if (!v40)
    {
      v44 = isKindOfClass;
      v185 = v31;
      v45 = v29;
      v46 = 0.75;
LABEL_19:
      v48 = x;
      v49 = y;
      *v195 = v48;
      *&v195[1] = v49;
      v50 = width;
      v51 = height;
      *&v195[2] = v50;
      *&v195[3] = v51;
      *&v195[4] = v46;
      v52 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v35, &v196, 48);
      v54 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v53, v195, 20);
      fpDisparityRefinementPreprocessing = self->_fpDisparityRefinementPreprocessing;
      v193[0] = @"alpha";
      v193[1] = @"inputDisparity";
      v194[0] = v24;
      v194[1] = v38;
      v193[2] = @"outputDisparity";
      v193[3] = @"focusRect";
      v194[2] = v179;
      v194[3] = v54;
      v177 = v54;
      v193[4] = @"config";
      v193[5] = @"zeroShiftTex";
      v184 = v52;
      v194[4] = v52;
      v194[5] = v181;
      v193[6] = @"_renderContext";
      v194[6] = v32;
      v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v56, v194, v193, 7);
      v59 = objc_msgSend_imageByApplyingParameters_(fpDisparityRefinementPreprocessing, v58, v57);

      if (!v59)
      {
        sub_2956CB8B4();
      }

      v62 = v59;
      sparseRenderingPreprocessingScaled = self->_sparseRenderingPreprocessingScaled;
      v191[0] = @"inputChromaTex";
      v191[1] = @"inputLumaTex";
      v192[0] = v178;
      v192[1] = v26;
      v192[2] = v24;
      v64 = v45;
      v191[2] = @"inputBlurMapTex";
      v191[3] = @"outputTex";
      if (!v45)
      {
        v64 = objc_msgSend_null(MEMORY[0x29EDB8E28], v60, v61);
      }

      v191[4] = @"_renderContext";
      v192[3] = v64;
      v192[4] = v32;
      v65 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v60, v192, v191, 5);
      v67 = objc_msgSend_imageByApplyingParameters_(sparseRenderingPreprocessingScaled, v66, v65);

      v176 = v45;
      if (!v45)
      {
      }

      objc_msgSend_extent(v67, v68, v69);
      v71 = v70;
      v73 = v72;
      v75 = v74;
      v77 = v76;
      objc_msgSend_extent(v39, v78, v79);
      v202.origin.x = v80;
      v202.origin.y = v81;
      v202.size.width = v82;
      v202.size.height = v83;
      v200.origin.x = v71;
      v200.origin.y = v73;
      v200.size.width = v75;
      v200.size.height = v77;
      if (!CGRectEqualToRect(v200, v202))
      {
        sub_2956CB85C();
      }

      objc_msgSend_extent(v24, v84, v85);
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v93 = v92;
      objc_msgSend_extent(v39, v94, v95);
      v203.origin.x = v96;
      v203.origin.y = v97;
      v203.size.width = v98;
      v203.size.height = v99;
      v201.origin.x = v87;
      v201.origin.y = v89;
      v201.size.width = v91;
      v201.size.height = v93;
      v186 = v67;
      if (CGRectEqualToRect(v201, v203))
      {
        v103 = v32;
        v41 = v24;
        v104 = self;
      }

      else
      {
        if (v44)
        {
          v105 = MEMORY[0x29EDB9178];
          v106 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v100, v101);
          v108 = objc_msgSend_imageWithColor_(v105, v107, v106);
          objc_msgSend_extent(v39, v109, v110);
          v113 = objc_msgSend_imageByCroppingToRect_(v108, v111, v112);

          v114 = [UniFakeImage alloc];
          v116 = objc_msgSend_initWithCIImage_format_(v114, v115, v113, 10);
          v104 = self;
        }

        else
        {
          v124 = MEMORY[0x29EDBB670];
          objc_msgSend_extent(v39, v100, v101);
          v126 = v125;
          objc_msgSend_extent(v39, v127, v128);
          v113 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v124, v130, 10, v126, v129, 0);
          objc_msgSend_setUsage_(v113, v131, 19);
          v104 = self;
          v134 = objc_msgSend_device(self->_mtlQueue, v132, v133);
          v136 = objc_msgSend_newTextureWithDescriptor_(v134, v135, v113);

          v116 = objc_msgSend_imageWithMTLTexture_(UniImage, v137, v136);
        }

        objc_msgSend_extent(v39, v138, v139);
        v141 = v140;
        v143 = v142;
        v146 = objc_msgSend_device(v104->_mtlQueue, v144, v145);
        v103 = v32;
        v41 = objc_msgSend__scaleImage_targetSize_device_useBoxFiltering_outputImage_context_(v104, v147, v24, v146, 0, v116, v32, v141, v143);

        if (!v41)
        {
          sub_2956CB888();
        }

        v67 = v186;
      }

      guidedFilter = v104->_guidedFilter;
      v189[0] = @"source";
      v189[1] = @"guidance";
      v190[0] = v62;
      v190[1] = v67;
      v189[2] = @"weights";
      v189[3] = @"destinationCoefficients";
      v190[2] = v41;
      v190[3] = v39;
      v189[4] = @"spatialDiameter";
      *&v102 = (*(&v197 + 3) * 2.0) + 1.0;
      v149 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v100, v101, v102, v62);
      v190[4] = v149;
      v189[5] = @"subsampleFactor";
      LODWORD(v150) = v198;
      v153 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v151, v152, v150);
      v190[5] = v153;
      v189[6] = @"epsilon";
      LODWORD(v154) = DWORD1(v198);
      v157 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v155, v156, v154);
      v190[6] = v157;
      v189[7] = @"iterations";
      v159 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v158, HIDWORD(v198));
      v190[7] = v159;
      v190[8] = v103;
      v32 = v103;
      v189[8] = @"_renderContext";
      v189[9] = @"rgbWeight";
      LODWORD(v160) = DWORD2(v198);
      v163 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v161, v162, v160);
      v190[9] = v163;
      v165 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v164, v190, v189, 10);
      v43 = objc_msgSend_imageByApplyingParameters_(guidedFilter, v166, v165);

      v30 = v179;
      v38 = v180;
      v26 = v182;
      v27 = v178;
      v29 = v176;
      v31 = v185;
      goto LABEL_41;
    }

LABEL_18:
    v44 = isKindOfClass;
    v185 = v31;
    v45 = v29;
    v47 = *&v40->var4;
    v196 = *&v40->var0;
    v197 = v47;
    v198 = *&v40->var8;
    v46 = *&v196;
    goto LABEL_19;
  }

  v41 = v24;
  v42 = uni_logger_api();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    sub_2956CB8E0(a9, v42);
  }

LABEL_40:

  v43 = 0;
  v30 = v179;
LABEL_41:

  v28 = v181;
LABEL_42:

  return v43;
}

- (id)performDisparityRefinementUsingParams:(const disparity_refinement_params *)a3 inputDisparity:(id)a4 inputSegmentation:(id)a5 inputImageLuma:(id)a6 inputImageChroma:(id)a7 inputSlmParams:(id)a8 inputWeightsX:(id)a9 inputWeightsY:(id)a10 inputPreproc:(id)a11 inputSampledD:(id)a12 outputBlurMap:(id)a13 scale:(float)a14 havePerformedMatting:(BOOL)a15 editTimeRender:(BOOL)a16 context:(id)a17 enableFGBlur:(BOOL)a18
{
  v165 = a4;
  v169 = a5;
  v25 = a6;
  v167 = a7;
  v168 = a8;
  v26 = a9;
  v166 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a13;
  v30 = a17;
  v158 = a3;
  if (!objc_msgSend_setOptions_isPrewarm_(self, v31, a3, 0))
  {
    objc_msgSend_extent(v29, v32, v33);
    v35 = v34;
    v37 = v36;
    objc_msgSend_extent(v165, v38, v39);
    v41 = v40;
    v43 = v42;
    v164 = v27;
    objc_msgSend_extent(v27, v44, v45);
    v51 = v41 != v35;
    if (v43 != v37)
    {
      v51 = 1;
    }

    v52 = (v51 || a16) && !a15;
    v53 = v165;
    v163 = v28;
    if (!v52)
    {
      v54 = v26;
      passthrough = self->_passthrough;
      v191[0] = @"slmParamsTex";
      v191[1] = @"inputShiftMapTex";
      v192[0] = v168;
      v192[1] = v165;
      v191[2] = @"outputBlurmapTex";
      v56 = v29;
      if (!v29)
      {
        v56 = objc_msgSend_null(MEMORY[0x29EDB8E28], v46, v47);
      }

      v191[3] = @"_renderContext";
      v192[2] = v56;
      v192[3] = v30;
      v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v46, v192, v191, 4);
      v59 = objc_msgSend_imageByApplyingParameters_(passthrough, v58, v57);

      if (!v29)
      {
      }

      v26 = v54;
      goto LABEL_67;
    }

    v60 = v49;
    v61 = v50;
    v156 = v25;
    v170 = self;
    calcWeightsX = self->_calcWeightsX;
    v190[0] = v165;
    v189[0] = @"inputDisparityTex";
    v189[1] = @"outputMinMaxTex";
    v63 = v26;
    if (!v26)
    {
      v63 = objc_msgSend_null(MEMORY[0x29EDB8E28], v46, v47);
    }

    v190[1] = v63;
    v190[2] = v30;
    v189[2] = @"_renderContext";
    v189[3] = @"_kernelScale";
    *&v48 = a14;
    v64 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v46, v47, v48);
    v190[3] = v64;
    v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v65, v190, v189, 4);
    v68 = objc_msgSend_imageByApplyingParameters_(calcWeightsX, v67, v66);

    if (!v26)
    {
    }

    calcWeightsY = v170->_calcWeightsY;
    v187[0] = @"inputDisparityTex";
    v187[1] = @"inputMinMaxTex";
    v188[0] = v165;
    v188[1] = v68;
    v187[2] = @"outputDisparityWeightTex";
    v73 = v166;
    if (!v166)
    {
      v73 = objc_msgSend_null(MEMORY[0x29EDB8E28], v69, v70);
    }

    v188[2] = v73;
    v188[3] = v30;
    v187[3] = @"_renderContext";
    v187[4] = @"_kernelScale";
    *&v71 = a14;
    v74 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v69, v70, v71);
    v188[4] = v74;
    v76 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v75, v188, v187, 5);
    v162 = objc_msgSend_imageByApplyingParameters_(calcWeightsY, v77, v76);

    if (!v166)
    {
    }

    preprocessing = v170->_preprocessing;
    v185[0] = @"inputSegmentationTex";
    v81 = v169;
    if (!v169)
    {
      v81 = objc_msgSend_null(MEMORY[0x29EDB8E28], v78, v79);
    }

    v186[0] = v81;
    v186[1] = v156;
    v185[1] = @"inputLumaTex";
    v185[2] = @"inputChromaTex";
    v186[2] = v167;
    v185[3] = @"outputCombinedTex";
    v82 = v164;
    if (!v164)
    {
      v82 = objc_msgSend_null(MEMORY[0x29EDB8E28], v78, v79);
    }

    v185[4] = @"_renderContext";
    v186[3] = v82;
    v186[4] = v30;
    v83 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v78, v186, v185, 5);
    v161 = objc_msgSend_imageByApplyingParameters_(preprocessing, v84, v83);

    if (!v164)
    {
    }

    if (!v169)
    {
    }

    v184[0] = v60;
    v184[1] = v61;
    sample = v170->_sample;
    v182[0] = @"outputDimension";
    v89 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v85, v184, 4, v26);
    v183[0] = v89;
    v183[1] = v161;
    v182[1] = @"inputPreprocTex";
    v182[2] = @"inputDisparityWeightTex";
    v183[2] = v162;
    v182[3] = @"outputDisparityTex";
    v90 = v28;
    if (!v28)
    {
      v90 = objc_msgSend_null(MEMORY[0x29EDB8E28], v87, v88);
    }

    v182[4] = @"_renderContext";
    v183[3] = v90;
    v183[4] = v30;
    v91 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v87, v183, v182, 5);
    v93 = objc_msgSend_imageByApplyingParameters_(sample, v92, v91);

    if (!v28)
    {
    }

    v94 = 184;
    if (a18)
    {
      v94 = 192;
    }

    v155 = *(&v170->super.isa + v94);
    fgFgBgThreshold = v158->fgFgBgThreshold;
    fgBgDilationSize = v158->fgBgDilationSize;
    v99 = fgFgBgThreshold > 0.0 && a18;
    v159 = v158->fgBgDilationSize;
    v100 = fgBgDilationSize > 0 && v99;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v101 = v29;
    if (v100)
    {
      for (i = 0; i != 24; i += 8)
      {
        objc_msgSend_extent(v29, v95, v96);
        v106 = objc_msgSend__smallerTextureFromTexture_modelTexture_targetSize_pixelFormat_(v170, v103, v29, v29, 65, v104, v105);
        v107 = *(&v179 + i);
        *(&v179 + i) = v106;
      }

      v101 = v179;
    }

    v110 = v101;
    v177[0] = @"slmParamsTex";
    v177[1] = @"inputDisparityWeightTex";
    v178[0] = v168;
    v178[1] = v162;
    v177[2] = @"inputPreprocTex";
    v177[3] = @"inputSampledDisparityTex";
    v178[2] = v161;
    v178[3] = v93;
    v112 = v110;
    v177[4] = @"outputBlurMapTex";
    if (!v110)
    {
      v112 = objc_msgSend_null(MEMORY[0x29EDB8E28], v108, v109);
    }

    v178[4] = v112;
    v178[5] = v30;
    v177[5] = @"_renderContext";
    v177[6] = @"_kernelScale";
    *&v111 = a14;
    v113 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v108, v109, v111);
    v178[6] = v113;
    v115 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v114, v178, v177, 7);
    v59 = objc_msgSend_imageByApplyingParameters_(v155, v116, v115);

    if (v110)
    {
      if (v100)
      {
LABEL_49:
        v117 = v59;
        thresholdedSobel = v170->_thresholdedSobel;
        v157 = v117;
        v176[0] = v117;
        v175[0] = @"inputTex";
        v175[1] = @"threshold";
        *&v119 = fgFgBgThreshold;
        v124 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v120, v121, v119);
        v176[1] = v124;
        v175[2] = @"outputTex";
        v126 = v180;
        v127 = v180;
        if (!v180)
        {
          v127 = objc_msgSend_null(MEMORY[0x29EDB8E28], v122, v123);
        }

        v176[2] = v127;
        v176[3] = v30;
        v175[3] = @"_renderContext";
        v175[4] = @"_kernelScale";
        *&v125 = a14;
        v128 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v122, v123, v125);
        v176[4] = v128;
        v130 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v129, v176, v175, 5);
        v132 = objc_msgSend_imageByApplyingParameters_(thresholdedSobel, v131, v130);

        if (!v126)
        {
        }

        morphology = v170->_morphology;
        v173[0] = *MEMORY[0x29EDB9240];
        v137 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v134, v159 | 1u);
        v138 = *MEMORY[0x29EDB9238];
        v174[0] = v137;
        v174[1] = v132;
        v160 = v132;
        v173[1] = v138;
        v173[2] = @"inputDoMin";
        v174[2] = &unk_2A1C94AB0;
        v174[3] = v30;
        v139 = *MEMORY[0x29EDB9258];
        v173[3] = @"_renderContext";
        v173[4] = v139;
        v140 = v181;
        v141 = v181;
        if (!v181)
        {
          v141 = objc_msgSend_null(MEMORY[0x29EDB8E28], v135, v136);
        }

        v174[4] = v141;
        v142 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v135, v174, v173, 5);
        v144 = objc_msgSend_imageByApplyingParameters_(morphology, v143, v142);

        v53 = v165;
        if (!v140)
        {
        }

        blendBackgroundBlur = v170->_blendBackgroundBlur;
        v171[0] = @"disparityRefinementTex";
        v171[1] = @"modifiedBackgroundTex";
        v172[0] = v157;
        v172[1] = v144;
        v171[2] = @"dstTex";
        v148 = v29;
        if (!v29)
        {
          v148 = objc_msgSend_null(MEMORY[0x29EDB8E28], v145, v146);
        }

        v171[3] = @"_renderContext";
        v172[2] = v148;
        v172[3] = v30;
        v149 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v145, v172, v171, 4);
        v59 = objc_msgSend_imageByApplyingParameters_(blendBackgroundBlur, v150, v149);

        if (!v29)
        {
        }

        goto LABEL_64;
      }
    }

    else
    {

      if (v100)
      {
        goto LABEL_49;
      }
    }

    v53 = v165;
LABEL_64:
    v25 = v156;
    v26 = v154;
    for (j = 16; j != -8; j -= 8)
    {
    }

LABEL_67:
    v152 = v166;
    v28 = v163;
    v27 = v164;
    goto LABEL_68;
  }

  sub_2956CB964();
  v59 = 0;
  v53 = v165;
  v152 = v166;
LABEL_68:

  return v59;
}

- (id)performSLMCalculatorUsingParams:(const simple_lens_model_params *)a3 inputShiftMap:(id)a4 faceMaskParams:(const face_mask_params *)a5 version:(int)a6 context:(id)a7 isFGBlurEnabled:(BOOL)a8
{
  v8 = a8;
  v14 = a4;
  v15 = a7;
  if (!v14)
  {
    sub_2956CBA58();
  }

  if (!a3)
  {
    sub_2956CBA2C();
  }

  v16 = v15;
  v61 = v8;
  v17 = [UniRunInfo alloc];
  v76 = vdupq_n_s64(1uLL);
  v77 = 1;
  v74 = xmmword_2956D2BE0;
  v75 = 1;
  v19 = objc_msgSend_initWithThreadgroupsPerGrid_threadsPerThreadGroup_(v17, v18, &v76, &v74);
  slmMinMax = self->_slmMinMax;
  v72[0] = @"inputBlurMapTex";
  v72[1] = @"outputMinMaxParamsTex";
  minMaxTex = self->_minMaxTex;
  v73[0] = v14;
  v73[1] = minMaxTex;
  v72[2] = @"_renderContext";
  v62 = v16;
  v73[2] = v16;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v22, v73, v72, 3);
  v25 = objc_msgSend_imageByApplyingParameters_runInfo_(slmMinMax, v24, v23, v19);

  if (!v25)
  {
    sub_2956CBA00();
  }

  v26 = [UniRunInfo alloc];
  v76 = vdupq_n_s64(1uLL);
  v77 = 1;
  v74 = xmmword_2956D2BF0;
  v75 = 1;
  v28 = objc_msgSend_initWithThreadgroupsPerGrid_threadsPerThreadGroup_(v26, v27, &v76, &v74);
  v31 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v29, a3, 56);
  if (qword_2A18BA368 != -1)
  {
    sub_2956CB9AC();
  }

  v32 = 0;
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  memset(v69, 0, sizeof(v69));
  v33 = byte_2A1388949;
  if (!byte_2A1388948)
  {
    v33 = a6 > 3;
  }

  if (a5 && v33)
  {
    v34 = 0;
    v35 = *&a5->var12;
    v36 = *&a5[1].var1;
    v37 = *&a5[1].var5;
    v38 = *&a5[1].var9;
    v39 = v70;
    do
    {
      v63 = v35;
      LODWORD(v40) = *(&v63 & 0xFFFFFFFFFFFFFFF3 | (4 * (v34 & 3)));
      v64 = v36;
      v41 = *(&v64 & 0xFFFFFFFFFFFFFFF3 | (4 * (v34 & 3)));
      v44 = *&v40 == -1.0;
      *(&v40 + 1) = v41;
      *(v39 - 4) = v40;
      v65 = v37;
      v42 = *(&v65 & 0xFFFFFFFFFFFFFFF3 | (4 * (v34 & 3)));
      v66 = v38;
      v43 = *(&v66 & 0xFFFFFFFFFFFFFFF3 | (4 * (v34 & 3)));
      *v39 = __PAIR64__(LODWORD(v43), LODWORD(v42));
      v44 = v44 || v41 == -1.0;
      if (!v44 || (v42 != -1.0 ? (v45 = v43 == -1.0) : (v45 = 1), !v45))
      {
        LODWORD(v71) = v71 + 1;
      }

      ++v34;
      ++v39;
    }

    while (v34 != 4);
    v32 = v71 > 0;
  }

  v67[0] = @"inputParams";
  v67[1] = @"minMaxParamsTex";
  v68[0] = v31;
  v68[1] = v25;
  v67[2] = @"inputShiftMapTex";
  v67[3] = @"outputParamTexture";
  outputParamsImage = self->_outputParamsImage;
  v68[2] = v14;
  v68[3] = outputParamsImage;
  v67[4] = @"_renderContext";
  v68[4] = v62;
  v47 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v30, v68, v67, 5);
  v49 = self->_slmCalc;
  if (v32)
  {
    v50 = self->_slmCalcEyes;

    v52 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8E00], v51, v47);

    v54 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v53, v69, 72);
    objc_msgSend_setObject_forKeyedSubscript_(v52, v55, v54, @"inputEyes");

    if (v61)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v52, v56, &unk_2A1C95530, @"nearestEyeWeight");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v52, v56, &unk_2A1C95540, @"nearestEyeWeight");
    }

    v47 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8DC0], v57, v52);

    v49 = v50;
  }

  v58 = objc_msgSend_imageByApplyingParameters_runInfo_(v49, v48, v47, v28);
  if (!v58)
  {
    sub_2956CB9D4();
  }

  v59 = v58;

  return v59;
}

- (id)enqueueBoundaryMaskPassForInputTex:(id)a3 inputSecondaryTex:(id)a4 intermediateTex:(id)a5 thresholdValue:(float)a6 boundaryScalingFactor:(float)a7 outputTex:(id)a8 blurRadius:(float)a9 passName:(id)a10 scale:(float)a11 context:(id)a12
{
  v21 = a3;
  v98 = a4;
  v22 = a5;
  v23 = a8;
  v24 = a12;
  objc_msgSend_extent(v23, v25, v26);
  v28 = v27;
  v30 = v29;
  v31 = [UniRunInfo alloc];
  v107 = (v28 * 0.5);
  v108 = (v30 * 0.5);
  v109 = 1;
  v33 = objc_msgSend_initWithGridSize_kernel_(v31, v32, &v107, self->_thresholdHard);
  objc_msgSend_setCoreImageOutputExtent_(v33, v34, v35, 0.0, 0.0, v28, v30);
  thresholdHard = self->_thresholdHard;
  v105[0] = @"inputTex";
  v105[1] = @"outputTex";
  v97 = v21;
  v106[0] = v21;
  v106[1] = v23;
  v93 = v23;
  v105[2] = @"value";
  *&v37 = a6;
  v40 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v38, v39, v37);
  v106[2] = v40;
  v106[3] = v24;
  v105[3] = @"_renderContext";
  v105[4] = @"_scale";
  *&v41 = a11;
  v44 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v42, v43, v41);
  v106[4] = v44;
  v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v45, v106, v105, 5);
  v94 = v33;
  v48 = objc_msgSend_imageByApplyingParameters_runInfo_(thresholdHard, v47, v46, v33);

  gaussian = self->_gaussian;
  v104[0] = v48;
  v103[0] = @"inputImage";
  v103[1] = @"outputImage";
  v53 = v22;
  if (!v22)
  {
    v53 = objc_msgSend_null(MEMORY[0x29EDB8E28], v49, v50);
  }

  v104[1] = v53;
  v103[2] = @"inputRadius";
  *&v51 = a9;
  v54 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v49, v50, v51);
  v104[2] = v54;
  v104[3] = v24;
  v95 = v24;
  v103[3] = @"_renderContext";
  v103[4] = @"_scale";
  *&v55 = a11;
  v58 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v56, v57, v55);
  v104[4] = v58;
  v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v59, v104, v103, 5);
  v62 = objc_msgSend_imageByApplyingParameters_(gaussian, v61, v60);

  v96 = v22;
  if (!v22)
  {
  }

  v63 = [UniRunInfo alloc];
  if (v98)
  {
    v107 = (v28 * 0.5);
    v108 = (v30 * 0.5);
    v109 = 1;
    v65 = objc_msgSend_initWithGridSize_kernel_(v63, v64, &v107, self->_mapLinear);
    objc_msgSend_setCoreImageOutputExtent_(v65, v66, v67, 0.0, 0.0, v28, v30);
    mapLinear = self->_mapLinear;
    v101[0] = @"inputTex0";
    v101[1] = @"inputTex1";
    v102[0] = v62;
    v102[1] = v98;
    v101[2] = @"outputTex";
    v72 = v93;
    v73 = v95;
    if (!v93)
    {
      v72 = objc_msgSend_null(MEMORY[0x29EDB8E28], v68, v69);
    }

    v102[2] = v72;
    v101[3] = @"scalingFactor";
    *&v70 = a7;
    v74 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v68, v69, v70);
    v102[3] = v74;
    v102[4] = v95;
    v101[4] = @"_renderContext";
    v101[5] = @"_scale";
    *&v75 = a11;
    v78 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v76, v77, v75);
    v102[5] = v78;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v79, v102, v101, 6);
  }

  else
  {
    v107 = (v28 * 0.5);
    v108 = (v30 * 0.5);
    v109 = 1;
    v65 = objc_msgSend_initWithGridSize_kernel_(v63, v64, &v107, self->_mapLinearNoSecondary);
    objc_msgSend_setCoreImageOutputExtent_(v65, v80, v81, 0.0, 0.0, v28, v30);
    mapLinear = self->_mapLinearNoSecondary;
    v100[0] = v62;
    v99[0] = @"inputTex0";
    v99[1] = @"outputTex";
    v72 = v93;
    v73 = v95;
    if (!v93)
    {
      v72 = objc_msgSend_null(MEMORY[0x29EDB8E28], v82, v83);
    }

    v100[1] = v72;
    v99[2] = @"scalingFactor";
    *&v84 = a7;
    v74 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v82, v83, v84);
    v100[2] = v74;
    v100[3] = v95;
    v99[3] = @"_renderContext";
    v99[4] = @"_scale";
    *&v85 = a11;
    v78 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v86, v87, v85);
    v100[4] = v78;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v88, v100, v99, 5);
  }
  v89 = ;
  v91 = objc_msgSend_imageByApplyingParameters_runInfo_(mapLinear, v90, v89, v65);

  if (!v93)
  {
  }

  return v91;
}

- (id)_smallerTextureFromTexture:(id)a3 modelTexture:(id)a4 targetSize:(CGSize)a5 numTextures:(unsigned int)a6 pixelFormat:(unint64_t)a7
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v13 = a4;
  v15 = objc_msgSend__mtlTextureForImage_(UniKernel, v14, v13);
  v17 = objc_msgSend__mtlTextureForImage_(UniKernel, v16, v12);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v106 = v17;
      v20 = MEMORY[0x29EDB9178];
      v21 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v18, v19);
      v23 = objc_msgSend_imageWithColor_(v20, v22, v21);

      v26 = objc_msgSend_imageByCroppingToRect_(v23, v24, v25, 0.0, 0.0, width, height);

      v27 = a6;
      v31 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v28, a6);
      if (!a7)
      {
        objc_msgSend_fakeFormat(v13, v29, v30);
        v33 = v32 = v15;
        a7 = objc_msgSend_unsignedIntValue(v33, v34, v35);

        v15 = v32;
      }

      v36 = [UniFakeImage alloc];
      v39 = objc_msgSend_initWithCIImage_format_(v36, v37, v26, a7);
      if (a6)
      {
        do
        {
          objc_msgSend_addObject_(v31, v38, v39);
          --v27;
        }

        while (v27);
      }

      v40 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v38, v31);

LABEL_40:
      v17 = v106;
      goto LABEL_41;
    }
  }

  if (v15)
  {
    v41 = v17 == 0;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    v107 = objc_msgSend_device(v17, v18, v19);
    v52 = objc_msgSend_buffer(v17, v50, v51);
    v106 = v17;
    v55 = objc_msgSend_bufferOffset(v17, v53, v54);
    v58 = v55;
    if (!a7)
    {
      a7 = objc_msgSend_pixelFormat(v15, v56, v57);
    }

    v104 = v15;
    v59 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], v56, a7, width, height, 0);
    objc_msgSend_setUsage_(v59, v60, 19);
    v105 = v13;
    if (v52)
    {
      v63 = objc_msgSend_resourceOptions(v52, v61, v62);
      objc_msgSend_setResourceOptions_(v59, v64, v63);
    }

    else
    {
      objc_msgSend_setResourceOptions_(v59, v61, 0);
    }

    v66 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v107, v65, a7);
    v117 = 0;
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    MTLPixelFormatGetInfoForDevice();
    v67 = (v66 - 1) & -v66;
    v68 = v67 * height;
    v69 = a6;
    if (v68 * a6 > objc_msgSend_allocatedSize(v106, v70, v71))
    {
      v73 = uni_logger_performance();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v109 = "[MakeBlurMap _smallerTextureFromTexture:modelTexture:targetSize:numTextures:pixelFormat:]";
        v110 = 2048;
        v111 = objc_msgSend_allocatedSize(v106, v74, v75);
        v112 = 2048;
        v113 = v68 * a6;
        _os_log_impl(&dword_295691000, v73, OS_LOG_TYPE_INFO, "%{public}s Insufficient backing size = %ld need %ld", buf, 0x20u);
      }

      v52 = 0;
    }

    v77 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v72, a6);
    if (a6)
    {
      while (1)
      {
        v78 = uni_logger_performance();
        v79 = v78;
        if (v52)
        {
          if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
          {
            v82 = objc_msgSend_description(v59, v80, v81);
            v83 = v82;
            v86 = objc_msgSend_UTF8String(v83, v84, v85);
            *buf = 136446466;
            v109 = "[MakeBlurMap _smallerTextureFromTexture:modelTexture:targetSize:numTextures:pixelFormat:]";
            v110 = 2080;
            v111 = v86;
            _os_log_impl(&dword_295691000, v79, OS_LOG_TYPE_INFO, "%{public}s Creating texture at runtime from existing buffer %s", buf, 0x16u);
          }

          v88 = objc_msgSend_newTextureWithDescriptor_offset_bytesPerRow_(v52, v87, v59, v58, v67);
        }

        else
        {
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
          {
            v96 = objc_msgSend_description(v59, v90, v91);
            v97 = v96;
            v100 = objc_msgSend_UTF8String(v97, v98, v99);
            *buf = 136446466;
            v109 = "[MakeBlurMap _smallerTextureFromTexture:modelTexture:targetSize:numTextures:pixelFormat:]";
            v110 = 2080;
            v111 = v100;
            _os_log_debug_impl(&dword_295691000, v79, OS_LOG_TYPE_DEBUG, "%{public}s Creating texture at runtime %s", buf, 0x16u);
          }

          v88 = objc_msgSend_newTextureWithDescriptor_(v107, v92, v59);
        }

        v93 = v88;
        if (!v88)
        {
          break;
        }

        v94 = objc_msgSend_imageWithMTLTexture_(UniImage, v89, v88);
        objc_msgSend_addObject_(v77, v95, v94);

        v58 += v68;
        if (!--v69)
        {
          goto LABEL_35;
        }
      }

      v101 = uni_logger_performance();
      v13 = v105;
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
      {
        sub_2956CBA84(v59, v101, v102);
      }

      v40 = MEMORY[0x29EDB8E90];
    }

    else
    {
LABEL_35:
      v40 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v76, v77);
      v13 = v105;
    }

    v15 = v104;
    goto LABEL_40;
  }

  v42 = uni_logger_api();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    sub_2956CBB0C(v42, v43, v44, v45, v46, v47, v48, v49);
  }

  v40 = 0;
LABEL_41:

  return v40;
}

- (id)_smallerTextureFromTexture:(id)a3 modelTexture:(id)a4 targetSize:(CGSize)a5 pixelFormat:(unint64_t)a6
{
  v6 = objc_msgSend__smallerTextureFromTexture_modelTexture_targetSize_numTextures_pixelFormat_(self, a2, a3, a4, 1, a6, a5.width, a5.height);
  v8 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, 0);

  return v8;
}

- (id)_scaleImage:(id)a3 targetSize:(CGSize)a4 sourceSize:(CGSize)a5 device:(id)a6 outputImage:(id)a7 context:(id)a8
{
  height = a5.height;
  width = a5.width;
  v13 = a4.height;
  v14 = a4.width;
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v15 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v17) && (isKindOfClass & 1) != 0 && ((v20 = v14 / width, v21 = v13 / height, v20 == 1.0) ? (v22 = v21 == 1.0) : (v22 = 0), !v22))
  {
    v23 = v16;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = objc_msgSend__mtlTextureForImage_(UniKernel, v24, v17);
      v27 = v25;
      if (v25 && objc_msgSend_conformsToProtocol_(v25, v26, &unk_2A1CA0A70))
      {
        v30 = objc_msgSend_device(v27, v28, v29);

        v23 = v30;
      }
    }

    v31 = [UniScaleImage alloc];
    v33 = objc_msgSend_initWithDevice_(v31, v32, v23);
    v36 = objc_msgSend_vectorWithX_Y_(MEMORY[0x29EDB9198], v34, v35, v20, v21, *MEMORY[0x29EDB9248]);
    v37 = *MEMORY[0x29EDB9258];
    v44[1] = *MEMORY[0x29EDB9238];
    v44[2] = v37;
    v45[0] = v36;
    v45[1] = v15;
    v44[3] = @"_renderContext";
    v45[2] = v17;
    v45[3] = v18;
    v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v38, v45, v44, 4);
    v41 = objc_msgSend_imageByApplyingParameters_(v33, v40, v39);

    v42 = v41;
  }

  else
  {
    v42 = v15;
  }

  return v42;
}

- (id)_scaleImage:(id)a3 targetSize:(CGSize)a4 device:(id)a5 useBoxFiltering:(BOOL)a6 outputImage:(id)a7 context:(id)a8
{
  height = a4.height;
  width = a4.width;
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ((objc_msgSend_extent(v15, v19, v20), v22 = width / v21, objc_msgSend_extent(v15, v23, v24), v26 = height / v25, v22 == 1.0) ? (v27 = v26 == 1.0) : (v27 = 0), v27))
  {
    v65 = v15;
    goto LABEL_13;
  }

  v29 = v16;
  if (v29)
  {
    if (a6)
    {
LABEL_9:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_extent(v15, v30, v31);
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        CGAffineTransformMakeScale(&v82, v22, v26);
        v86.origin.x = v33;
        v86.origin.y = v35;
        v86.size.width = v37;
        v86.size.height = v39;
        v87 = CGRectApplyAffineTransform(v86, &v82);
        x = v87.origin.x;
        y = v87.origin.y;
        v42 = v87.size.width;
        v43 = v87.size.height;
        v44 = MEMORY[0x29EDB9178];
        v47 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v45, v46);
        v49 = objc_msgSend_imageWithColor_(v44, v48, v47);
        v52 = objc_msgSend_imageByCroppingToRect_(v49, v50, v51, x, y, v42, v43);

        v53 = [UniFakeImage alloc];
        v55 = objc_msgSend_initWithCIImage_(v53, v54, v52);

        v17 = v55;
      }

      crispHairDownsamplingSingle = self->_crispHairDownsamplingSingle;
      v57 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v30, v31, v22, @"inputScaleX");
      v81[0] = v57;
      v80[1] = @"inputScaleY";
      v60 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v58, v59, v26);
      v61 = *MEMORY[0x29EDB9258];
      v80[2] = *MEMORY[0x29EDB9238];
      v80[3] = v61;
      v81[1] = v60;
      v81[2] = v15;
      v80[4] = @"_renderContext";
      v81[3] = v17;
      v81[4] = v18;
      v63 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v62, v81, v80, 5);
      objc_msgSend_imageByApplyingParameters_(crispHairDownsamplingSingle, v64, v63);
      goto LABEL_22;
    }
  }

  else
  {
    v67 = objc_msgSend__mtlTextureForImage_(UniKernel, v28, v17);
    v69 = v67;
    if (v67 && objc_msgSend_conformsToProtocol_(v67, v68, &unk_2A1CA0A70))
    {
      v29 = objc_msgSend_device(v69, v70, v71);
    }

    else
    {
      v29 = 0;
    }

    if (a6)
    {
      goto LABEL_9;
    }
  }

  v72 = [UniScaleImage alloc];
  v57 = objc_msgSend_initWithDevice_(v72, v73, v29);
  v83[0] = *MEMORY[0x29EDB9248];
  v60 = objc_msgSend_vectorWithX_Y_(MEMORY[0x29EDB9198], v74, v75, v22, v26);
  v76 = *MEMORY[0x29EDB9258];
  v83[1] = *MEMORY[0x29EDB9238];
  v83[2] = v76;
  v84[0] = v60;
  v84[1] = v15;
  v83[3] = @"_renderContext";
  v84[2] = v17;
  v84[3] = v18;
  v63 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v77, v84, v83, 4);
  objc_msgSend_imageByApplyingParameters_(v57, v78, v63);
  v79 = LABEL_22:;

  v65 = v79;
LABEL_13:

  return v65;
}

- (id)enqueueRefinementUsingParams:(const blurmap_refinement_params *)a3 maskParams:(const face_mask_params *)a4 inputBlurMap:(id)a5 inputAlpha:(id)a6 inputHair:(id)a7 inputGlasses:(id)a8 inputAlphaMaskDelta:(id)a9 inputHairMaskDelta:(id)a10 inputBlurRefineIntermediate:(id)a11 outputBlurMap:(id)a12 scale:(float)a13 inputsAlreadyScaled:(BOOL)a14 context:(id)a15
{
  v297 = a5;
  v306 = a6;
  v305 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v292 = a11;
  v24 = a12;
  v25 = a15;
  v26 = v22;
  v27 = v23;
  if (qword_2A18BA370 != -1)
  {
    sub_2956CBB58();
  }

  if (!a3)
  {
    sub_2956CBBF0();
  }

  if (!a4)
  {
    sub_2956CBBC4();
  }

  v296 = v21;
  var15 = a3->var15;
  v29 = a3->var13 - var15 * 0.5;
  v30 = (v21 != 0) & byte_2A1388818;
  var16 = a3->var16;
  v32 = 1.0 - a3->var14 - var16 * 0.5;
  v33 = sub_2956A889C(a4, 0);
  LOBYTE(v321) = v33;
  v34 = sub_2956A889C(a4, 1);
  BYTE1(v321) = v34;
  v35 = sub_2956A889C(a4, 2);
  BYTE2(v321) = v35;
  v36 = sub_2956A889C(a4, 3);
  v42 = 0;
  BYTE3(v321) = v36;
  v43 = v34 + v33 + v35 + v36;
  while ((*(&v321 + v42) & 1) == 0)
  {
    if (++v42 == 4)
    {
      v44 = 0;
      goto LABEL_10;
    }
  }

  v44 = v42;
LABEL_10:
  if (v43 >= 2)
  {
    v45 = 0;
    v46 = 0.0;
    do
    {
      if (*(&v321 + v45) == 1)
      {
        v47 = &a4->var0 + (v45 & 3);
        v48 = (1.0 - v47[32]);
        v49 = v47[12];
        v50 = 1.0 - v47[16];
        if ((1.0 - v47[24]) >= v50)
        {
          v50 = 1.0 - v47[24];
        }

        v52 = v50 - v48;
        v335.origin.x = v29;
        v335.origin.y = v32;
        v335.size.width = var15;
        v335.size.height = var16;
        v51 = v47[20] - v49;
        v336 = CGRectIntersection(v335, *&v49);
        width = v336.size.width;
        height = v336.size.height;
        if (!CGRectIsNull(v336))
        {
          v38 = width * height;
          if (width * height > v46)
          {
            v46 = width * height;
            v44 = v45;
          }
        }
      }

      ++v45;
    }

    while (v45 != 4);
  }

  var0 = a3->var9.var0;
  var1 = a3->var9.var1;
  v57 = (&a4->var0 + (v44 & 3));
  v58.i32[0] = *(v57 + 12);
  if (fminf(v58.f32[0], *(v57 + 16)) < 0.0 || (v59.i32[0] = *(v57 + 20), fminf(v59.f32[0], *(v57 + 24)) < 0.0) || (v60.i32[0] = *(v57 + 4), fminf(v60.f32[0], *(v57 + 8)) < 0.0) || (v61.i32[0] = *(v57 + 28), fminf(v61.f32[0], *(v57 + 32)) < 0.0))
  {
    v74 = (var1 + var1) * 0.5;
  }

  else
  {
    v61.i32[1] = *(v57 + 32);
    v60.i32[1] = *(v57 + 8);
    v59.i32[1] = *(v57 + 24);
    v58.i32[1] = *(v57 + 16);
    v62 = vsub_f32(v58, v59);
    v63 = vmul_f32(v62, v62);
    v64 = vsub_f32(v58, v60);
    v65 = vsub_f32(v59, v60);
    v66 = vsub_f32(v60, v61);
    v67 = vmul_f32(v66, v66);
    v68 = vmaxnm_f32(vsqrt_f32(vadd_f32(vzip1_s32(v63, v67), vzip2_s32(v63, v67))), vdup_n_s32(0x3A83126Fu));
    v69 = vsub_f32(v58, v61);
    v70 = vsub_f32(v59, v61);
    v71 = fmaxf(sqrtf(vaddv_f32(vmul_f32(v64, v64))), 0.001) * -3.3737 + v68.f32[0] * -12.1925 + fmaxf(sqrtf(vaddv_f32(vmul_f32(v65, v65))), 0.001) * -3.025 + v68.f32[1] * -11.9485 + fmaxf(sqrtf(vaddv_f32(vmul_f32(v69, v69))), 0.001) * 1.6734 + fmaxf(sqrtf(vaddv_f32(vmul_f32(v70, v70))), 0.001) * 1.8423;
    var2 = a3->var9.var2;
    v72 = a3->var9.var3 + (v71 + vmuls_lane_f32(v68.f32[0], v68, 1) * 47.7061 + 3.1214) * var2;
    v39 = var1;
    if (v72 < v39)
    {
      v39 = v72;
    }

    v40 = var0;
    if (v39 >= var0)
    {
      v73 = v39;
      v74 = v73;
    }

    else
    {
      v74 = a3->var9.var0;
    }
  }

  v75 = v306;
  v76 = fmaxf(fmaxf(var0, v74), 0.00001);
  v77 = (1.0 / v76) - (1.0 / (a3->var8 + v76));
  v288 = v26;
  v289 = v27;
  v301 = v25;
  v291 = v24;
  v300 = v30;
  if (v306 && (var3 = a3->var0.var3, var3 > 0.0))
  {
    v79 = (v77 * var3) * a3->var3;
    if (a13 != 1.0 && !a14)
    {
      v80 = objc_msgSend__mtlTextureForImage_(UniKernel, v37, v26);
      v82 = v80;
      if (v80 && objc_msgSend_conformsToProtocol_(v80, v81, &unk_2A1CA0A70))
      {
        v85 = objc_msgSend_device(v82, v83, v84);
      }

      else
      {
        v85 = 0;
      }

      v91 = [UniScaleImage alloc];
      v93 = objc_msgSend_initWithDevice_(v91, v92, v85);
      v332[0] = *MEMORY[0x29EDB9248];
      v96 = objc_msgSend_vectorWithX_Y_(MEMORY[0x29EDB9198], v94, v95, a13, a13);
      v97 = *MEMORY[0x29EDB9238];
      v333[0] = v96;
      v333[1] = v306;
      v98 = *MEMORY[0x29EDB9258];
      v332[1] = v97;
      v332[2] = v98;
      v101 = objc_msgSend_null(MEMORY[0x29EDB8E28], v99, v100);
      v332[3] = @"_renderContext";
      v333[2] = v101;
      v333[3] = v25;
      v103 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v102, v333, v332, 4);
      v105 = objc_msgSend_imageByApplyingParameters_(v93, v104, v103);

      v75 = v105;
      v25 = v301;
      v26 = v288;
      v27 = v289;
    }

    *&v38 = a3->var0.var2;
    *&v40 = a3->var0.var1;
    *&v39 = v79;
    *&var2 = a13;
    v299 = objc_msgSend_enqueueBoundaryMaskPassForInputTex_inputSecondaryTex_intermediateTex_thresholdValue_boundaryScalingFactor_outputTex_blurRadius_passName_scale_context_(self, v37, v75, 0, v292, v26, @"Person", v25, v38, v39, v40, var2);
  }

  else
  {

    v299 = 0;
  }

  v106 = v305;
  v107 = self;
  v307 = v75;
  if (v305 && (v108 = a3->var1.var3, v108 > 0.0))
  {
    v109 = (v77 * v108) * a3->var3;
    if (a13 != 1.0 && !a14)
    {
      v110 = objc_msgSend__mtlTextureForImage_(UniKernel, v86, v27);
      v112 = v110;
      if (v110 && objc_msgSend_conformsToProtocol_(v110, v111, &unk_2A1CA0A70))
      {
        v115 = objc_msgSend_device(v112, v113, v114);
      }

      else
      {
        v115 = 0;
      }

      v116 = [UniScaleImage alloc];
      v118 = objc_msgSend_initWithDevice_(v116, v117, v115);
      v330[0] = *MEMORY[0x29EDB9248];
      v121 = objc_msgSend_vectorWithX_Y_(MEMORY[0x29EDB9198], v119, v120, a13, a13);
      v122 = *MEMORY[0x29EDB9238];
      v331[0] = v121;
      v331[1] = v305;
      v123 = *MEMORY[0x29EDB9258];
      v330[1] = v122;
      v330[2] = v123;
      v126 = objc_msgSend_null(MEMORY[0x29EDB8E28], v124, v125);
      v330[3] = @"_renderContext";
      v331[2] = v126;
      v331[3] = v25;
      v128 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v127, v331, v330, 4);
      v130 = objc_msgSend_imageByApplyingParameters_(v118, v129, v128);

      v106 = v130;
      v25 = v301;
      v27 = v289;
      v75 = v307;
      v107 = self;
    }

    *&v87 = a3->var1.var2;
    *&v89 = a3->var1.var1;
    v305 = v106;
    *&v88 = v109;
    *&v90 = a13;
    v290 = objc_msgSend_enqueueBoundaryMaskPassForInputTex_inputSecondaryTex_intermediateTex_thresholdValue_boundaryScalingFactor_outputTex_blurRadius_passName_scale_context_(v107, v86, v106, v75, v292, v27, @"Hair", v25, v87, v88, v89, v90);
  }

  else
  {
    v290 = 0;
  }

  v295 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v131, a4, 192);
  v132 = a3->var1.var0.var0;
  v133 = a3->var1.var0.var1 - v132;
  _Q0.f32[0] = 1.0 / v133;
  _Q0.f32[1] = ((-1.0 / v133) * v132) + 0.0;
  _Q0.i32[2] = LODWORD(a3->var1.var0.var2);
  v135 = a3->var1.var0.var3;
  v136 = a3->var1.var0.var4 - v135;
  *&_Q1 = -1.0 / v136;
  *(&_Q1 + 1) = ((1.0 / v136) * v135) + 1.0;
  DWORD2(_Q1) = LODWORD(a3->var1.var0.var5);
  v138 = a3->var0.var0.var1 - a3->var0.var0.var0;
  *&v139 = 1.0 / v138;
  *(&v139 + 1) = ((-1.0 / v138) * a3->var0.var0.var0) + 0.0;
  DWORD2(v139) = LODWORD(a3->var0.var0.var2);
  v140 = a3->var0.var0.var3;
  v141 = a3->var0.var0.var4 - v140;
  *&v142 = -1.0 / v141;
  *(&v142 + 1) = ((1.0 / v141) * v140) + 1.0;
  DWORD2(v142) = LODWORD(a3->var0.var0.var5);
  v321 = 0u;
  v322 = 0u;
  v325 = 0u;
  v326 = 0u;
  v327 = 0u;
  v328 = 0u;
  memset(v329, 0, sizeof(v329));
  _S6 = a3->var10.var13;
  _S5 = a3->var10.var14;
  __asm { FCVT            H5, S5 }

  LOWORD(v321) = LOWORD(_S5);
  _S5 = a3->var10.var15;
  __asm { FCVT            H5, S5 }

  WORD1(v321) = LOWORD(_S5);
  v322 = _Q0;
  v323 = _Q1;
  v324 = 0u;
  *&_Q1 = a3->var1.var2;
  _Q0.f32[0] = a3->var1.var1;
  __asm { FCVT            H0, S0 }

  LOWORD(v324) = _Q0.i16[0];
  __asm { FCVT            H0, S1 }

  WORD1(v324) = _Q0.i16[0];
  _Q0.i32[0] = LODWORD(a3->var1.var3);
  __asm { FCVT            H0, S0 }

  WORD2(v324) = _Q0.i16[0];
  v325 = v139;
  v326 = v142;
  _Q0.f32[0] = a3->var0.var1;
  _Q0.i32[1] = LODWORD(a3->var0.var2);
  _Q0.i32[2] = LODWORD(a3->var0.var3);
  _Q0.i32[3] = LODWORD(a3->var2);
  v327 = vcvt_hight_f16_f32(vcvt_f16_f32(_Q0), *&a3->var3);
  _Q0.i32[0] = LODWORD(a3->var7);
  *&_Q1 = a3->var8;
  __asm { FCVT            H0, S0 }

  LOWORD(v328) = _Q0.i16[0];
  __asm
  {
    FCVT            H0, S1
    FCVT            S0, H0
  }

  DWORD1(v328) = _Q0.i32[0];
  *(&v328 + 1) = *&a3->var11;
  LODWORD(v329[0]) = a3->var10.var0;
  *(v329 + 4) = vcvt_hight_f16_f32(vcvt_f16_f32(*&a3->var10.var1), *&a3->var10.var5);
  *(&v329[1] + 4) = vcvt_f16_f32(*&a3->var10.var9);
  __asm { FCVT            H0, S6 }

  WORD6(v329[1]) = _Q0.i16[0];
  v151 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v150, &v321, 160);
  v152 = [UniRunInfo alloc];
  v303 = vdupq_n_s64(1uLL);
  v319 = v303;
  v320 = 1;
  v317 = xmmword_2956D2C00;
  v318 = 1;
  v154 = objc_msgSend_initWithThreadgroupsPerGrid_threadsPerThreadGroup_(v152, v153, &v319, &v317);
  v315[0] = @"inputBlurMapTex";
  v315[1] = @"outputParamsTex";
  v155 = v297;
  v316[1] = v107->_faceParamsTex;
  faceMaskCalc = v107->_faceMaskCalc;
  v315[2] = @"inputParams";
  v315[3] = @"_renderContext";
  v316[0] = v297;
  v316[2] = v295;
  v316[3] = v301;
  v158 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v157, v316, v315, 4);
  v287 = v154;
  v293 = objc_msgSend_imageByApplyingParameters_runInfo_(faceMaskCalc, v159, v158, v154);

  v160 = [UniRunInfo alloc];
  v319 = v303;
  v320 = 1;
  v317 = xmmword_2956D2C10;
  v318 = 1;
  v162 = objc_msgSend_initWithThreadgroupsPerGrid_threadsPerThreadGroup_(v160, v161, &v319, &v317);
  v163 = 256;
  if (v30)
  {
    v163 = 264;
  }

  v164 = *(&v107->super.isa + v163);
  v313[0] = @"inputBlurMapTex";
  v313[1] = @"outputEyeProtectionFacesTex";
  eyeProtectionFacesTex = v107->_eyeProtectionFacesTex;
  v314[0] = v297;
  v314[1] = eyeProtectionFacesTex;
  v313[2] = @"faceParams";
  v313[3] = @"tuningParams";
  v314[2] = v295;
  v314[3] = v151;
  v294 = v151;
  v313[4] = @"_renderContext";
  v314[4] = v301;
  v167 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v166, v314, v313, 5);
  v285 = v164;
  v286 = v162;
  v169 = objc_msgSend_imageByApplyingParameters_runInfo_(v164, v168, v167, v162);

  objc_msgSend_extent(v297, v170, v171);
  v173 = v291;
  v302 = v174;
  v304 = v175;
  if (v291)
  {
    objc_opt_class();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_extent(v291, v172, v176);
      if (v178 != v302 || v177 != v304)
      {
        sub_2956CBB6C();
      }
    }
  }

  if (a13 == 1.0)
  {
    v179 = v30;
    v180 = v307;
    goto LABEL_67;
  }

  v179 = v30;
  v180 = v307;
  if (a14)
  {
LABEL_67:
    v201 = self;
    goto LABEL_88;
  }

  v181 = objc_msgSend__mtlTextureForImage_(UniKernel, v172, v291);
  v184 = v181;
  v284 = v169;
  if (v181 && objc_msgSend_conformsToProtocol_(v181, v182, &unk_2A1CA0A70))
  {
    v185 = v307;
    v186 = objc_msgSend_device(v184, v182, v183);
  }

  else
  {
    v185 = v307;
    v186 = 0;
  }

  v187 = MEMORY[0x29EDB8E00];
  v311[0] = @"inputAlpha";
  v188 = objc_msgSend_null(MEMORY[0x29EDB8E28], v182, v183);
  v312[0] = v188;
  v311[1] = @"inputGlasses";
  v191 = objc_msgSend_null(MEMORY[0x29EDB8E28], v189, v190);
  v312[1] = v191;
  v311[2] = @"inputHair";
  v194 = objc_msgSend_null(MEMORY[0x29EDB8E28], v192, v193);
  v312[2] = v194;
  v196 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v195, v312, v311, 3);
  v198 = objc_msgSend_dictionaryWithDictionary_(v187, v197, v196);

  if (!v184)
  {
    goto LABEL_85;
  }

  v200 = v185;
  if (v185)
  {
    objc_opt_class();
    v200 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v185 = 0;
  }

  if (v305)
  {
    objc_opt_class();
    v202 = objc_opt_isKindOfClass() ^ 1;
    if (v296)
    {
LABEL_71:
      objc_opt_class();
      v203 = objc_opt_isKindOfClass() ^ 1;
      goto LABEL_74;
    }
  }

  else
  {
    v202 = 0;
    if (v296)
    {
      goto LABEL_71;
    }
  }

  v203 = 0;
LABEL_74:
  v204 = (v202 & 1) + (v200 & 1);
  v205 = v204 + (v203 & 1);
  if (v205)
  {
    v206 = objc_msgSend__smallerTextureFromTexture_modelTexture_targetSize_numTextures_(self, v199, v292, v185, v204 + (v203 & 1u), v302, v304);
    if (!v206 || (v209 = v206, objc_msgSend_count(v206, v207, v208) != v205))
    {
      sub_2956CBB98();
    }

    if (v200)
    {
      v211 = objc_msgSend_objectAtIndexedSubscript_(v209, v210, 0);
      objc_msgSend_setObject_forKeyedSubscript_(v198, v212, v211, @"inputAlpha");

      v213 = 1;
      if ((v202 & 1) == 0)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v213 = 0;
      if ((v202 & 1) == 0)
      {
LABEL_82:
        if (v203)
        {
          v217 = objc_msgSend_objectAtIndexedSubscript_(v209, v210, v213);
          objc_msgSend_setObject_forKeyedSubscript_(v198, v218, v217, @"inputGlasses");
        }

        goto LABEL_85;
      }
    }

    v214 = v213 + 1;
    v215 = objc_msgSend_objectAtIndexedSubscript_(v209, v210, v213);
    objc_msgSend_setObject_forKeyedSubscript_(v198, v216, v215, @"inputHair");

    v213 = v214;
    goto LABEL_82;
  }

LABEL_85:
  v219 = objc_msgSend_objectForKeyedSubscript_(v198, v199, @"inputAlpha");
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v223 = MEMORY[0x29EDB9178];
    v224 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v221, v222);
    v226 = objc_msgSend_imageWithColor_(v223, v225, v224);
    v229 = objc_msgSend_imageByCroppingToRect_(v226, v227, v228, 0.0, 0.0, v302, v304);

    v230 = [UniFakeImage alloc];
    v232 = objc_msgSend_initWithCIImage_format_(v230, v231, v229, 10);
    objc_msgSend_setObject_forKeyedSubscript_(v198, v233, v232, @"inputAlpha");
  }

  v234 = objc_msgSend_objectForKeyedSubscript_(v198, v221, @"inputAlpha");
  v180 = objc_msgSend__scaleImage_targetSize_device_useBoxFiltering_outputImage_context_(self, v235, v185, v186, 1, v234, v301, v302, v304);

  v237 = objc_msgSend_objectForKeyedSubscript_(v198, v236, @"inputHair");
  v239 = objc_msgSend__scaleImage_targetSize_device_useBoxFiltering_outputImage_context_(self, v238, v305, v186, 0, v237, v301, v302, v304);

  v241 = objc_msgSend_objectForKeyedSubscript_(v198, v240, @"inputGlasses");
  v243 = objc_msgSend__scaleImage_targetSize_device_useBoxFiltering_outputImage_context_(self, v242, v296, v186, 0, v241, v301, v302, v304);

  v201 = self;
  v296 = v243;
  v305 = v239;
  v155 = v297;
  v173 = v291;
  v179 = v300;
  v169 = v284;
LABEL_88:
  v244 = 272;
  if (v179)
  {
    v244 = 280;
  }

  v245 = *(&v201->super.isa + v244);
  v246 = [UniRunInfo alloc];
  v247.f64[0] = v302;
  v247.f64[1] = v304;
  __asm { FMOV            V1.2D, #0.5 }

  v319 = vcvtq_u64_f64(vmulq_f64(v247, _Q1));
  v320 = 1;
  v250 = objc_msgSend_initWithGridSize_kernel_(v246, v249, &v319, v245);
  objc_msgSend_setCoreImageOutputExtent_(v250, v251, v252, 0.0, 0.0, v302, v304);
  v256 = MEMORY[0x29EDB8E00];
  v310[0] = v155;
  v309[0] = @"inputBlurMapTex";
  v309[1] = @"inputPersonTex";
  v257 = v180;
  if (!v180)
  {
    v257 = objc_msgSend_null(MEMORY[0x29EDB8E28], v253, v254);
  }

  v308 = v180;
  v310[1] = v257;
  v309[2] = @"inputPersonDeltaTex";
  v258 = v299;
  if (!v299)
  {
    v258 = objc_msgSend_null(MEMORY[0x29EDB8E28], v253, v254);
  }

  v310[2] = v258;
  v309[3] = @"outputHairDeltaTex";
  v259 = v173;
  if (!v173)
  {
    v259 = objc_msgSend_null(MEMORY[0x29EDB8E28], v253, v254);
  }

  v310[3] = v259;
  v310[4] = v169;
  v260 = v169;
  v309[4] = @"eyeProtectionFacesTex";
  v309[5] = @"faceParamsTex";
  v310[5] = v293;
  v310[6] = v294;
  v309[6] = @"params";
  v309[7] = @"_renderContext";
  v310[7] = v301;
  v309[8] = @"_scale";
  *&v255 = a13;
  v261 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v253, v254, v255);
  v310[8] = v261;
  v263 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v262, v310, v309, 9);
  v265 = objc_msgSend_dictionaryWithDictionary_(v256, v264, v263);

  v268 = v173;
  if (!v173)
  {
  }

  if (!v299)
  {
  }

  if (!v308)
  {
  }

  if (v300)
  {
    v269 = v292;
    v270 = v289;
    if (v296)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v265, v266, v296, @"inputGlassesTex");
    }

    else
    {
      v274 = objc_msgSend_null(MEMORY[0x29EDB8E28], v266, v267);
      objc_msgSend_setObject_forKeyedSubscript_(v265, v275, v274, @"inputGlassesTex");
    }

    v276 = objc_msgSend_null(MEMORY[0x29EDB8E28], v271, v272);
    objc_msgSend_setObject_forKeyedSubscript_(v265, v277, v276, @"inputGlassesDeltaTex");
  }

  else
  {
    v269 = v292;
    v270 = v289;
    if (v305)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v265, v266, v305, @"inputHairTex");
    }

    else
    {
      v278 = objc_msgSend_null(MEMORY[0x29EDB8E28], v266, 0);
      objc_msgSend_setObject_forKeyedSubscript_(v265, v279, v278, @"inputHairTex");
    }

    if (v290)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v265, v273, v290, @"inputHairDeltaTex");
      goto LABEL_114;
    }

    v276 = objc_msgSend_null(MEMORY[0x29EDB8E28], v273, 0);
    objc_msgSend_setObject_forKeyedSubscript_(v265, v281, v276, @"inputHairDeltaTex");
  }

LABEL_114:
  v282 = objc_msgSend_imageByApplyingParameters_runInfo_(v245, v280, v265, v250);

  return v282;
}

- (unint64_t)calcShaderParamsFromConfigParams:(float *)a3
{
  v3 = *a3;
  v4 = a3[1];
  v5 = v4 <= 0.0 || v3 <= 0.0;
  v6 = v4 / v3;
  if (v5)
  {
    v6 = 1.0;
  }

  v7 = a3[2];
  v8 = a3[3];
  *&_S1 = (a3[5] * v6) / v7;
  v10 = a3[4] - v8;
  _S6 = *&_S1 / v10;
  *&_S3 = ((-*&_S1 / v10) * v8) + 0.0;
  _S0 = (v6 * a3[8]) / v7;
  _S4 = a3[6];
  *&_S5 = a3[7] - _S4;
  _S7 = (0.0 - _S0) / *&_S5;
  _S2 = _S0 + ((-(0.0 - _S0) / *&_S5) * _S4);
  __asm
  {
    FCVT            H4, S6
    FCVT            H3, S3
    FCVT            H1, S1
    FCVT            H5, S7
    FCVT            H2, S2
    FCVT            H0, S0
  }

  return (_S1 << 32) | (_S5 << 48) | (_S3 << 16) | LODWORD(_S4);
}

- (id)performCrispHairRefinementWithParams:(const crisp_hair_params *)a3 alpha:(id)a4 disparity:(id)a5 tmpImage0:(id)a6 tmpImage1:(id)a7 tmpImage2:(id)a8 editTimeRender:(BOOL)a9 context:(id)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v23 = a10;
  if (!v16)
  {
LABEL_7:
    v33 = v17;
    goto LABEL_18;
  }

  if (v17)
  {
    if (!a3 || a3->var2 <= 0.0 && a3->var1 <= 0.0)
    {
      goto LABEL_7;
    }

    objc_msgSend_extent(v17, v21, v22);
    v25 = v24;
    __asm { FMOV            V1.2S, #-1.0 }

    v31 = vcvt_s32_f32(vadd_f32(vrnda_f32(vmul_n_f32(*&a3->var1, v25)), _D1));
    v32 = vclez_s32(v31);
    if (v32.i32[0] & v32.i32[1])
    {
      goto LABEL_7;
    }

    v171 = v31;
    var0 = a3->var0;
    var3 = a3->var3;
    var4 = a3->var4;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v40 = v20;
    if ((isKindOfClass & 1) == 0)
    {
      v41 = objc_msgSend__mtlTextureForImage_(UniKernel, v38, v17);
      objc_msgSend_extent(v17, v42, v43);
      v45 = v44;
      v47 = v46;
      v50 = objc_msgSend_pixelFormat(v41, v48, v49);
      v52 = objc_msgSend__smallerTextureFromTexture_modelTexture_targetSize_pixelFormat_(self, v51, v40, v40, v50, v45, v47);

      v40 = v52;
    }

    v172 = v19;
    v173 = v40;
    objc_msgSend_extent(v16, v38, v39);
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    objc_msgSend_extent(v17, v61, v62);
    v187.origin.x = v63;
    v187.origin.y = v64;
    v187.size.width = v65;
    v187.size.height = v66;
    v186.origin.x = v54;
    v186.origin.y = v56;
    v186.size.width = v58;
    v186.size.height = v60;
    if (!CGRectEqualToRect(v186, v187))
    {
      sub_2956CBC1C();
    }

    v67 = [UniRunInfo alloc];
    objc_msgSend_extent(v17, v68, v69);
    v71 = (v70 * 0.5);
    objc_msgSend_extent(v17, v72, v73);
    v182 = v71;
    v183 = (v74 * 0.5);
    v184 = 1;
    v76 = objc_msgSend_initWithGridSize_kernel_(v67, v75, &v182, self->_crispHairBlurX);
    objc_msgSend_extent(v17, v77, v78);
    v80 = v79;
    objc_msgSend_extent(v17, v81, v82);
    objc_msgSend_setCoreImageOutputExtent_(v76, v83, v84, 0.0, 0.0, v80);
    crispHairBlurX = self->_crispHairBlurX;
    v180[0] = @"inputTex";
    v180[1] = @"outputTex";
    v181[0] = v16;
    v181[1] = v18;
    v180[2] = @"trustedRegionAlphaThreshold";
    *&v85 = var0;
    v88 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v86, v87, v85);
    v181[2] = v88;
    v180[3] = @"windowSize";
    v90 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v89, (2 * v171.i32[0]));
    v180[4] = @"_renderContext";
    v181[3] = v90;
    v181[4] = v23;
    v92 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v91, v181, v180, 5);
    v168 = objc_msgSend_imageByApplyingParameters_runInfo_(crispHairBlurX, v93, v92, v76);

    crispHairBlurY = self->_crispHairBlurY;
    v178[0] = @"inputTex";
    v178[1] = @"outputTex";
    v179[0] = v168;
    v179[1] = v172;
    v178[2] = @"trustedRegionAlphaThreshold";
    *&v94 = var0;
    v97 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v95, v96, v94);
    v179[2] = v97;
    v178[3] = @"windowSize";
    v99 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v98, (2 * v171.i32[0]));
    v178[4] = @"_renderContext";
    v179[3] = v99;
    v179[4] = v23;
    v101 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v100, v179, v178, 5);
    v170 = objc_msgSend_imageByApplyingParameters_runInfo_(crispHairBlurY, v102, v101, v76);

    v103 = [UniRunInfo alloc];
    objc_msgSend_extent(v17, v104, v105);
    v107 = (v106 * 0.5);
    objc_msgSend_extent(v17, v108, v109);
    v182 = v107;
    v183 = (v110 * 0.5);
    v184 = 1;
    v112 = objc_msgSend_initWithGridSize_kernel_(v103, v111, &v182, self->_crispHairExpandedDisparityX);

    objc_msgSend_extent(v17, v113, v114);
    v116 = v115;
    objc_msgSend_extent(v17, v117, v118);
    v119 = v112;
    v163 = v112;
    objc_msgSend_setCoreImageOutputExtent_(v112, v120, v121, 0.0, 0.0, v116);
    crispHairExpandedDisparityX = self->_crispHairExpandedDisparityX;
    v176[0] = @"disparity";
    v176[1] = @"trustedRegion";
    v177[0] = v17;
    v177[1] = v170;
    v176[2] = @"outputTex";
    v176[3] = @"expandingVeryLargeDisparity";
    v177[2] = v18;
    v177[3] = &unk_2A1C95550;
    v176[4] = @"windowSize";
    v124 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v123, (2 * v171.i32[1]));
    v176[5] = @"_renderContext";
    v177[4] = v124;
    v177[5] = v23;
    v126 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v125, v177, v176, 6);
    v128 = objc_msgSend_imageByApplyingParameters_runInfo_(crispHairExpandedDisparityX, v127, v126, v119);
    v165 = v128;

    v129 = [UniRunInfo alloc];
    objc_msgSend_extent(v17, v130, v131);
    v133 = (v132 * 0.5);
    objc_msgSend_extent(v17, v134, v135);
    v182 = v133;
    v183 = (v136 * 0.5);
    v184 = 1;
    v138 = objc_msgSend_initWithGridSize_kernel_(v129, v137, &v182, self->_crispHairExpandedDisparityY);

    objc_msgSend_extent(v17, v139, v140);
    v142 = v141;
    objc_msgSend_extent(v17, v143, v144);
    v166 = v138;
    objc_msgSend_setCoreImageOutputExtent_(v138, v145, v146, 0.0, 0.0, v142);
    v148 = 424;
    if (a9)
    {
      v148 = 432;
    }

    v169 = *(&self->super.isa + v148);
    v174[0] = @"expandedDispXTex";
    v174[1] = @"alphaTex";
    if (a9)
    {
      v149 = 0;
    }

    else
    {
      v149 = v138;
    }

    v175[0] = v128;
    v175[1] = v16;
    v174[2] = @"disparityTex";
    v174[3] = @"outputTex";
    v175[2] = v17;
    v175[3] = v173;
    v174[4] = @"windowSize";
    v150 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v147, (2 * v171.i32[1]));
    v175[4] = v150;
    v175[5] = &unk_2A1C95560;
    v174[5] = @"expandingVeryLargeDisparityThreshold";
    v174[6] = @"expandingVerySmallDisparity";
    v175[6] = &unk_2A1C95570;
    v175[7] = &unk_2A1C95550;
    v174[7] = @"expandingVeryLargeDisparity";
    v174[8] = @"compositingThresholdLow";
    *&v151 = var3;
    v154 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v152, v153, v151);
    v175[8] = v154;
    v174[9] = @"compositingThresholdHigh";
    *&v155 = var4;
    v158 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v156, v157, v155);
    v174[10] = @"_renderContext";
    v175[9] = v158;
    v175[10] = v23;
    v160 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v159, v175, v174, 11);
    v33 = objc_msgSend_imageByApplyingParameters_runInfo_(v169, v161, v160, v149);

    v19 = v172;
  }

  else
  {
    v33 = 0;
  }

LABEL_18:

  return v33;
}

- (id)createBlurMapUsingMetadata:(id)a3 simulatedAperture:(float)a4 focusWindow:(CGRect)a5 focalLengthInPixels:(float)a6 normalizedFocalLength:(float)a7 facePoints:(CGPoint *)a8 maxBlur:(float)a9 inputScale:(float)a10 inputsAlreadyScaled:(BOOL)a11 inputShiftMap:(id)a12 inputSegmentation:(id)a13 inputHair:(id)a14 inputGlasses:(id)a15 inputImageLuma:(id)a16 inputImageChroma:(id)a17 inputFaceMaskAdjBlur:(id)a18 inputWeightsX:(id)a19 inputWeightsY:(id)a20 inputPreproc:(id)a21 inputSampledD:(id)a22 inputDisparityRefineBlur:(id)a23 inputAlphaMaskDelta:(id)a24 inputHairMaskDelta:(id)a25 inputBlurRefineIntermediate:(id)a26 resultAdjBlurMap:(id)a27 coreImageRender:(BOOL)a28 context:(id)a29 captureFolderMiscPath:(id)a30
{
  height = a5.size.height;
  y = a5.origin.y;
  width = a5.size.width;
  x = a5.origin.x;
  v38 = a10;
  v39 = a3;
  v40 = a12;
  v41 = a13;
  v42 = a14;
  v492 = a15;
  v43 = v41;
  v44 = a16;
  v510 = a17;
  v481 = a18;
  v511 = a19;
  v502 = a20;
  v508 = a21;
  v495 = a22;
  v503 = a23;
  v490 = a24;
  v489 = a25;
  v45 = a26;
  v509 = a27;
  v46 = a29;
  v480 = a30;
  v47 = v40;
  v491 = v42;
  v496 = v43;
  RenderingParametersFromMetaData = objc_msgSend_getRenderingParametersFromMetaData_(SDOFMetadata, v48, v39);
  if (!RenderingParametersFromMetaData)
  {
    v84 = 0;
    v85 = v47;
    v86 = v509;
    v87 = v510;
    goto LABEL_135;
  }

  objc_msgSend_extent(v44, v49, v50);
  v497 = v44;
  v515 = v46;
  if (a7 == 0.0)
  {
    v504 = a6;
    v55 = height;
    v56 = v54;
    v57 = v53;
    v58 = objc_msgSend_image(v47, v51, v52);
    v61 = objc_msgSend_depthData(v58, v59, v60);
    v64 = v61;
    if (v61)
    {
      v65 = objc_msgSend_cameraCalibrationData(v61, v62, v63);
      objc_msgSend_intrinsicMatrixReferenceDimensions(v65, v66, v67);
      v69 = v68;

      v72 = objc_msgSend_cameraCalibrationData(v64, v70, v71);
      objc_msgSend_intrinsicMatrixReferenceDimensions(v72, v73, v74);
      v76 = v75;

      v79 = objc_msgSend_cameraCalibrationData(v64, v77, v78);
      v82 = v79;
      if (v79)
      {
        objc_msgSend_intrinsicMatrix(v79, v80, v81);
      }

      else
      {
        v83 = 0.0;
      }

      if (v69 < v76)
      {
        v69 = v76;
      }

      v88 = vabds_f32(0.5, v83 / v69);

      if (v88 <= 0.1)
      {
        v92 = objc_msgSend_cameraCalibrationData(v64, v89, v90, v88);
        v95 = v92;
        if (v92)
        {
          objc_msgSend_intrinsicMatrix(v92, v93, v94);
        }

        else
        {
          v96 = 0.0;
        }

        v498 = v96;

        a7 = v498 / v69;
      }

      else
      {
        v91 = uni_logger_general();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          sub_2956CBC48(v91);
        }

        a7 = 0.0;
      }

      v46 = v515;
    }

    else
    {
      a7 = 0.0;
    }

    v44 = v497;
    v53 = v57;
    v54 = v56;
    height = v55;
    v38 = a10;
    a6 = v504;
  }

  v473 = (v43 | v42) != 0;
  if (a7 == 0.0)
  {
    v97 = v53;
    if (v97 < v54)
    {
      v97 = v54;
    }

    a7 = (a6 * v38) / v97;
  }

  v472 = v54;
  v98 = v54;
  v474 = v53;
  v99 = v53;
  v505 = v98 / v99;
  objc_msgSend_defaultSimulatedAperture_(SDOFMetadata, v51, RenderingParametersFromMetaData);
  v104 = v101 <= 0.0 || a4 <= 0.0;
  v105 = v101 / a4;
  if (v104)
  {
    v105 = 1.0;
  }

  v499 = v105;
  v565 = 0;
  memset(v564, 0, sizeof(v564));
  *&v102 = a7;
  *&v103 = a9;
  objc_msgSend_loadLensModelParams_simulatedAperture_focusWindow_frameNormalizedFocalLength_maxBlur_(SDOFMetadata, v100, RenderingParametersFromMetaData, COERCE_DOUBLE(LODWORD(a4)), x, y, width, height, v102, v103);
  v561 = 0;
  v562 = 0;
  v563 = 0;
  objc_msgSend_loadCrispHairParams_(SDOFMetadata, v106, RenderingParametersFromMetaData);
  v560 = 0;
  memset(v559, 0, sizeof(v559));
  objc_msgSend_loadDisparityRefinementParams_(SDOFMetadata, v107, RenderingParametersFromMetaData);
  v558 = 0;
  memset(v557, 0, sizeof(v557));
  *&v108 = a9;
  objc_msgSend_loadSegmentationFusionParams_simulatedAperture_maxBlur_(SDOFMetadata, v109, RenderingParametersFromMetaData, COERCE_DOUBLE(LODWORD(a4)), v108);
  memset(v556, 0, 204);
  *&v110 = v38;
  objc_msgSend_loadBlurmapRefinementParams_apertureScaling_inputScale_focusWindow_segmentationFusionParams_(SDOFMetadata, v111, RenderingParametersFromMetaData, v557, COERCE_DOUBLE(LODWORD(v499)), v110, x, y, width, height);
  v555 = 0u;
  v554 = 0u;
  v553 = 0u;
  v552 = 0u;
  v551 = 0u;
  v550 = 0u;
  v549 = 0u;
  v548 = 0u;
  v547 = 0u;
  memset(v546, 0, sizeof(v546));
  *&v112 = v505;
  *&v113 = a9;
  objc_msgSend_loadFaceMaskParams_facePoints_simulatedAperture_aspectRatio_maxBlur_(SDOFMetadata, v114, RenderingParametersFromMetaData, a8, COERCE_DOUBLE(LODWORD(a4)), v112, v113);
  v116 = objc_msgSend_disparityRefinementVersion_(SDOFMetadata, v115, RenderingParametersFromMetaData);
  RenderingVersion = objc_msgSend_getRenderingVersion_(SDOFMetadata, v117, RenderingParametersFromMetaData);
  v120 = v116;
  v121 = 0;
  memset(v545, 0, sizeof(v545));
  v123 = RenderingVersion > 3 && v116 > 0;
  v494 = RenderingVersion;
  if (RenderingVersion >= 5 && v120 == 0xFFFF)
  {
    MattingParams_config = objc_msgSend_loadMattingParams_config_(SDOFMetadata, v119, RenderingParametersFromMetaData, v545);
    v123 = MattingParams_config == 0;
    if (MattingParams_config)
    {
      v121 = 0;
    }

    else
    {
      v121 = v545;
    }

    v46 = v515;
    if (MattingParams_config)
    {
      v120 = 0;
    }

    else
    {
      v120 = 0xFFFF;
    }
  }

  v475 = v121;
  v478 = v120;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v125 = v43;
  v483 = v125;
  if (v43)
  {
    v128 = v125;
    objc_msgSend_extent(v125, v126, v127);
    v130 = v129;
    v132 = v131;
    v134 = v133;
    v136 = v135;
    objc_msgSend_extent(v47, v137, v138);
    v569.origin.x = v139;
    v569.origin.y = v140;
    v569.size.width = v141;
    v569.size.height = v142;
    v567.origin.x = v130;
    v567.origin.y = v132;
    v567.size.width = v134;
    v567.size.height = v136;
    v482 = v128;
    if (!CGRectEqualToRect(v567, v569))
    {
      if (isKindOfClass)
      {
        v144 = MEMORY[0x29EDB9178];
        v145 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v126, v143);
        v147 = objc_msgSend_imageWithColor_(v144, v146, v145);
        objc_msgSend_extent(v47, v148, v149);
        v152 = objc_msgSend_imageByCroppingToRect_(v147, v150, v151);

        v44 = v497;
        v153 = [UniFakeImage alloc];
        v155 = objc_msgSend_initWithCIImage_format_(v153, v154, v152, 10);
        v156 = v483;
        v157 = v483;
      }

      else
      {
        v158 = MEMORY[0x29EDBB670];
        objc_msgSend_extent(v47, v126, v143);
        v160 = v159;
        objc_msgSend_extent(v47, v161, v162);
        v152 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v158, v164, 10, v160, v163, 0);
        objc_msgSend_setUsage_(v152, v165, 19);
        v168 = objc_msgSend_device(self->_mtlQueue, v166, v167);
        v157 = objc_msgSend_newTextureWithDescriptor_(v168, v169, v152);

        v155 = objc_msgSend_imageWithMTLTexture_(UniImage, v170, v157);
        v156 = v483;
      }

      if (!v155)
      {
        sub_2956CBCB8();
      }

      objc_msgSend_extent(v47, v171, v172);
      v174 = v173;
      v176 = v175;
      v179 = objc_msgSend_device(self->_mtlQueue, v177, v178);
      v181 = objc_msgSend__scaleImage_targetSize_device_useBoxFiltering_outputImage_context_(self, v180, v156, v179, 1, v155, v515, v174, v176);

      v46 = v515;
      v482 = v181;
      if (!v181)
      {
        sub_2956CBC8C();
      }
    }
  }

  else
  {
    v482 = 0;
  }

  UnifiedRenderingForegroundBlurEnabled = objc_msgSend_getUnifiedRenderingForegroundBlurEnabled_(SDOFMetadata, v126, v39);
  v500 = enableFGBlur(UnifiedRenderingForegroundBlurEnabled);
  v479 = v45;
  if (v123)
  {
    v185 = self;
    if (isKindOfClass)
    {
      v186 = MEMORY[0x29EDB9178];
      v187 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v183, v184);
      v189 = objc_msgSend_imageWithColor_(v186, v188, v187);
      objc_msgSend_extent(v47, v190, v191);
      v194 = objc_msgSend_imageByCroppingToRect_(v189, v192, v193);

      v195 = [UniFakeImage alloc];
      v197 = objc_msgSend_initWithCIImage_format_(v195, v196, v194, 25);
    }

    else
    {
      v199 = MEMORY[0x29EDBB670];
      objc_msgSend_extent(v47, v183, v184);
      v201 = v200;
      objc_msgSend_extent(v47, v202, v203);
      v194 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v199, v205, 25, v201, v204, 0);
      objc_msgSend_setUsage_(v194, v206, 19);
      v209 = objc_msgSend_device(self->_mtlQueue, v207, v208);
      v211 = objc_msgSend_newTextureWithDescriptor_(v209, v210, v194);

      v197 = objc_msgSend_imageWithMTLTexture_(UniImage, v212, v211);
    }

    v213 = v494;

    v215 = objc_msgSend_performSLMCalculatorUsingParams_inputShiftMap_faceMaskParams_version_context_isFGBlurEnabled_(self, v214, v564, v47, 0, v494, v515, v500);
    if (!v215)
    {
      sub_2956CBDB8();
    }

    v198 = v215;
    objc_msgSend_extent(v47, v216, v217);
    v223 = objc_msgSend__smallerTextureFromTexture_modelTexture_targetSize_(self, v218, v508, v508, v219, v220);
    if (isKindOfClass)
    {
      v224 = MEMORY[0x29EDB9178];
      v225 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v221, v222);
      v227 = objc_msgSend_imageWithColor_(v224, v226, v225);
      objc_msgSend_extent(v47, v228, v229);
      v232 = objc_msgSend_imageByCroppingToRect_(v227, v230, v231);

      v185 = self;
      v234 = objc_msgSend_imageWithCIImage_format_(UniFakeImage, v233, v232, 70);

      v213 = v494;
      v223 = v234;
    }

    v235 = objc_msgSend_performDisparityRefinementViaMatting_inputShiftmap_focusRect_inputLuma_inputChroma_simpleLensModelCalculatorImage_disparityConfigIndex_outputRefinedImage_tmpRGB_tmpDisparity_tmpRGBA_SDOFVersion_mattingParams_context_(v185, v221, v482, v47, v497, v510, v198, v478, x, y, width, height, v197, v223, v511, 0, v213, v475, v515);

    if (!v235)
    {
      sub_2956CBD8C();
    }

    v236 = v235;

    v47 = v236;
    v44 = v497;
    v46 = v515;
  }

  else
  {
    v198 = 0;
    v185 = self;
  }

  if (qword_2A18BA378 != -1)
  {
    sub_2956CBCE4();
  }

  v544 = 0u;
  memset(&v543, 0, sizeof(v543));
  objc_msgSend_loadHairnetParams_(SDOFMetadata, v183, RenderingParametersFromMetaData);
  v240 = v494;
  if (qword_2A18BA380 != -1)
  {
    sub_2956CBD0C();
  }

  v241 = byte_2A1388958;
  if (byte_2A1388958 == 121)
  {
    if (*(&v543.b + 1) != 0.0)
    {
      goto LABEL_73;
    }

    LODWORD(v239) = LODWORD(v543.c);
    if (*&v543.c != 0.0)
    {
      goto LABEL_73;
    }

    objc_msgSend_defaultHairnetParams(SDOFMetadata, v237, v238, v239);
    v543 = v541;
    v544 = v542;
    v241 = byte_2A1388958;
  }

  if (v241 == 110)
  {
    LODWORD(v543.c) = 0;
    HIDWORD(v543.b) = 0;
    v242 = 1;
    goto LABEL_79;
  }

LABEL_73:
  v242 = *&v543.c == 0.0 && *(&v543.b + 1) == 0.0;
LABEL_79:
  v470 = v242;
  if (byte_2A1388950 == 1)
  {
    v244 = byte_2A1388951;
LABEL_81:
    v245 = v47;
    if (v244)
    {
      if (isKindOfClass)
      {
        v246 = MEMORY[0x29EDB9178];
        v247 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v237, v238);
        v249 = objc_msgSend_imageWithColor_(v246, v248, v247);
        objc_msgSend_extent(v47, v250, v251);
        v254 = objc_msgSend_imageByCroppingToRect_(v249, v252, v253);

        v255 = [UniFakeImage alloc];
        v257 = objc_msgSend_initWithCIImage_format_(v255, v256, v254, 25);
      }

      else
      {
        v258 = MEMORY[0x29EDBB670];
        objc_msgSend_extent(v47, v237, v238);
        v260 = v259;
        objc_msgSend_extent(v47, v261, v262);
        v254 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v258, v264, 25, v260, v263, 0);
        objc_msgSend_setUsage_(v254, v265, 19);
        v268 = objc_msgSend_device(v185->_mtlQueue, v266, v267);
        v270 = objc_msgSend_newTextureWithDescriptor_(v268, v269, v254);

        v257 = objc_msgSend_imageWithMTLTexture_(UniImage, v271, v270);

        v44 = v497;
      }

      LOBYTE(v466) = isKindOfClass & 1;
      v245 = objc_msgSend_performCrispHairRefinementWithParams_alpha_disparity_tmpImage0_tmpImage1_tmpImage2_editTimeRender_context_(v185, v272, &v561, v482, v47, v511, v502, v257, v466, v515);

      v240 = v494;
      if (!v245)
      {
        sub_2956CBD34();
      }

      v46 = v515;
    }

    goto LABEL_92;
  }

  v245 = v47;
  if (v494 >= 4)
  {
    v245 = v47;
    if (v482)
    {
      v245 = v47;
      if (v47)
      {
        v244 = *&v562 > 0.0;
        if (*(&v561 + 1) > 0.0)
        {
          v244 = 1;
        }

        goto LABEL_81;
      }
    }
  }

LABEL_92:
  v273 = objc_msgSend_performSLMCalculatorUsingParams_inputShiftMap_faceMaskParams_version_context_isFGBlurEnabled_(v185, v237, v564, v245, v546, v240, v46, v500);

  v484 = v273;
  if (!v273)
  {
    sub_2956CBD60();
  }

  v471 = v47;
  v476 = v39;
  v275 = -1;
  v276 = -2;
  HIDWORD(v277) = DWORD1(v551);
  do
  {
    ++v275;
    v522 = v551;
    v276 += 2;
  }

  while (v275 <= 3 && *(&v522 & 0xFFFFFFFFFFFFFFF3 | (4 * (v275 & 3))) >= 0.0);
  v279 = v240 < 4 && v478 > 0;
  v280 = v279 & isKindOfClass;
  v281 = v510;
  if ((v279 & isKindOfClass) == 1)
  {
    LODWORD(v467) = v240;
    v282 = objc_msgSend_performDisparityRefinementViaMatting_inputShiftmap_focusRect_inputLuma_inputChroma_simpleLensModelCalculatorImage_disparityConfigIndex_outputRefinedImage_tmpRGB_tmpDisparity_tmpRGBA_SDOFVersion_mattingParams_context_(self, v274, v483, v245, v44, v510, v484, x, y, width, height, v503, v508, v511, 0, v467, v475, v46);

    if (v38 != 1.0 && !a11)
    {
      v284 = objc_msgSend_image(v282, v274, v283);
      objc_msgSend_extent(v284, v285, v286);
      v288 = v287;
      v290 = v289;
      v292 = v291;
      v294 = v293;
      objc_msgSend_extent(v510, v295, v296);
      v570.origin.x = v297;
      v570.origin.y = v298;
      v570.size.width = v299;
      v570.size.height = v300;
      v568.origin.x = v288;
      v568.origin.y = v290;
      v568.size.width = v292;
      v568.size.height = v294;
      if (!CGRectEqualToRect(v568, v570))
      {
        v303 = MEMORY[0x29EDB9178];
        v304 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v301, v302);
        v306 = objc_msgSend_imageWithColor_(v303, v305, v304);
        objc_msgSend_extent(v510, v307, v308);
        v311 = objc_msgSend_imageByCroppingToRect_(v306, v309, v310);

        v312 = [UniFakeImage alloc];
        v314 = objc_msgSend_initWithCIImage_(v312, v313, v311);

        v281 = v510;
        objc_msgSend_extent(v510, v315, v316);
        v318 = v317;
        v320 = v319;
        objc_msgSend_extent(v284, v321, v322);
        v324 = objc_msgSend__scaleImage_targetSize_sourceSize_device_outputImage_context_(self, v323, v282, 0, v314, v515, v318, v320);

        v46 = v515;
        v282 = v324;
        v44 = v497;
      }
    }

    v245 = v282;
  }

  BYTE1(v469) = isKindOfClass & 1;
  LOBYTE(v469) = v280;
  v86 = v509;
  *&v277 = v38;
  v325 = objc_msgSend_performDisparityRefinementUsingParams_inputDisparity_inputSegmentation_inputImageLuma_inputImageChroma_inputSlmParams_inputWeightsX_inputWeightsY_inputPreproc_inputSampledD_outputBlurMap_scale_havePerformedMatting_editTimeRender_context_enableFGBlur_(self, v274, v559, v245, v483, v44, v281, v484, v277, v511, v502, v508, v495, v503, v469, v46, v500);
  v507 = v325;
  if (v500)
  {
    v327 = v46;
    extractPositiveBlurValues = self->_extractPositiveBlurValues;
    v539[0] = @"signedBlurMapTex";
    v539[1] = @"outputBlurMapTex";
    v540[0] = v325;
    v540[1] = v509;
    v539[2] = @"_renderContext";
    v540[2] = v327;
    v329 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v326, v540, v539, 3);
    v331 = objc_msgSend_imageByApplyingParameters_(extractPositiveBlurValues, v330, v329);

    v245 = v329;
  }

  else
  {
    v331 = v325;
  }

  v45 = v479;

  if (v473)
  {
    v46 = v515;
    LOBYTE(v468) = a11;
    v334 = self;
    *&v333 = v38;
    v335 = objc_msgSend_enqueueRefinementUsingParams_maskParams_inputBlurMap_inputAlpha_inputHair_inputGlasses_inputAlphaMaskDelta_inputHairMaskDelta_inputBlurRefineIntermediate_outputBlurMap_scale_inputsAlreadyScaled_context_(self, v332, v556, v546, v331, v483, v491, v492, v333, v490, v489, v479, v509, v468, v515);
  }

  else
  {
    v336 = [UniRunInfo alloc];
    *&v541.a = vdupq_n_s64(1uLL);
    *&v541.c = 1;
    *&v527.a = xmmword_2956D2C00;
    *&v527.c = 1;
    v338 = objc_msgSend_initWithThreadgroupsPerGrid_threadsPerThreadGroup_(v336, v337, &v541, &v527);
    v488 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v339, v546, 192);
    v334 = self;
    faceMaskCalc = self->_faceMaskCalc;
    v537[0] = @"inputBlurMapTex";
    v537[1] = @"inputParams";
    v538[0] = v331;
    v538[1] = v488;
    faceMaskOutputParamsTex = self->_faceMaskOutputParamsTex;
    v537[2] = @"outputParamsTex";
    v537[3] = @"_renderContext";
    v538[2] = faceMaskOutputParamsTex;
    v46 = v515;
    v538[3] = v515;
    v342 = MEMORY[0x29EDB8DC0];
    v343 = v331;
    v345 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v342, v344, v538, v537, 4);
    v347 = objc_msgSend_imageByApplyingParameters_runInfo_(faceMaskCalc, v346, v345, v338);

    faceMaskApply = self->_faceMaskApply;
    v535[0] = @"paramsTex";
    v535[1] = @"inputBlurMapTex";
    v536[0] = v347;
    v536[1] = v343;
    v535[2] = @"outputBlurMapTex";
    v535[3] = @"_renderContext";
    v536[2] = v509;
    v536[3] = v515;
    v350 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v349, v536, v535, 4);
    v335 = objc_msgSend_imageByApplyingParameters_runInfo_(faceMaskApply, v351, v350, 0);

    v86 = v509;
    v45 = v479;

    v331 = v338;
  }

  v533[1] = 0;
  v533[0] = 0;
  v534 = 0;
  objc_msgSend_loadBlurmapSmoothingParams_(SDOFMetadata, v352, RenderingParametersFromMetaData);
  *&v353 = v38;
  v355 = objc_msgSend_performBlurmapSmoothingUsingSmoothingConfig_inputBlurMap_inputIntermediateTex_outputSmoothedBlurmap_scale_version_context_(v334, v354, v533, v335, v45, v86, v494, v46, v353);

  if (v500)
  {
    insertPositiveBlurValues = v334->_insertPositiveBlurValues;
    v531[0] = @"signedBlurMapTex";
    v531[1] = @"positiveBlurMapTex";
    v532[0] = v507;
    v532[1] = v355;
    v531[2] = @"outputBlurMapTex";
    v531[3] = @"_renderContext";
    v532[2] = v86;
    v532[3] = v46;
    v359 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v356, v532, v531, 4);
    v361 = objc_msgSend_imageByApplyingParameters_(insertPositiveBlurValues, v360, v359);

    v86 = v509;
    v355 = v361;
  }

  v87 = v510;
  objc_msgSend_blurMapSize_(MakeBlurMap, v356, v357, v474, v472);
  if (a28)
  {
    v366 = v364;
    v367 = v365;
    v368 = v275 == 0 || v470;
    objc_msgSend_extent(v355, v362, v363);
    if (v371 != v366 || (objc_msgSend_extent(v355, v369, v370), v372 != v366))
    {
      v373 = MEMORY[0x29EDB9178];
      v374 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v369, v370);
      v376 = objc_msgSend_imageWithColor_(v373, v375, v374);
      v379 = objc_msgSend_imageByCroppingToRect_(v376, v377, v378, 0.0, 0.0, v366, v367);

      v380 = [UniFakeImage alloc];
      v382 = objc_msgSend_initWithCIImage_format_(v380, v381, v379, 115);

      v383 = objc_alloc_init(UniScaleImage);
      objc_msgSend_extent(v355, v384, v385);
      v387 = v366 / v386;
      objc_msgSend_extent(v355, v388, v389);
      v529[0] = *MEMORY[0x29EDB9248];
      v393 = objc_msgSend_vectorWithX_Y_(MEMORY[0x29EDB9198], v391, v392, v387, v367 / v390);
      v394 = *MEMORY[0x29EDB9238];
      v530[0] = v393;
      v530[1] = v355;
      v395 = *MEMORY[0x29EDB9258];
      v529[1] = v394;
      v529[2] = v395;
      v529[3] = @"_renderContext";
      v530[2] = v382;
      v530[3] = v515;
      v397 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v396, v530, v529, 4);
      v399 = objc_msgSend_imageByApplyingParameters_(v383, v398, v397);

      v87 = v510;
      v46 = v515;

      v368 = v275 == 0 || v470;
      v355 = v399;
      v45 = v479;
    }

    if (v368 || (objc_msgSend_image(v497, v369, v370), v400 = objc_claimAutoreleasedReturnValue(), v400, !v400))
    {
      v39 = v476;
      v86 = v509;
    }

    else
    {
      v501 = objc_msgSend_image(v497, v401, v402);
      v405 = objc_msgSend_image(v355, v403, v404);
      v408 = objc_msgSend_image(v483, v406, v407);
      v411 = objc_msgSend_image(v491, v409, v410);
      v513 = objc_msgSend_image(v492, v412, v413);
      v415 = 0;
      v416 = 0;
      v542 = 0u;
      memset(&v541, 0, sizeof(v541));
      v528 = 0u;
      memset(&v527, 0, sizeof(v527));
      memset(v526, 0, sizeof(v526));
      v417 = v547;
      v418 = v548;
      v419 = v549;
      v420 = v550;
      v421 = v551;
      v422 = v552;
      do
      {
        v516 = v417;
        v423 = (&v541.a + v415 * 16);
        *v423 = *(&v516 & 0xFFFFFFFFFFFFFFF3 | (4 * (v416 & 3)));
        v517 = v418;
        v423[1] = *(&v517 & 0xFFFFFFFFFFFFFFF3 | (4 * (v416 & 3)));
        v518 = v419;
        v424 = (&v527.a + v415 * 16);
        *v424 = *(&v518 & 0xFFFFFFFFFFFFFFF3 | (4 * (v416 & 3)));
        v519 = v420;
        v424[1] = *(&v519 & 0xFFFFFFFFFFFFFFF3 | (4 * (v416 & 3)));
        v520 = v421;
        v425 = &v526[v415];
        *v425 = *(&v520 & 0xFFFFFFFFFFFFFFF3 | (4 * (v416 & 3)));
        v521 = v422;
        v425[1] = *(&v521 & 0xFFFFFFFFFFFFFFF3 | (4 * (v416++ & 3)));
        ++v415;
      }

      while (v275 != v416);
      v524[0] = @"lEye";
      v426 = objc_msgSend_vectorWithValues_count_(MEMORY[0x29EDB9198], v414, &v541, v276);
      v525[0] = v426;
      v524[1] = @"rEye";
      v428 = objc_msgSend_vectorWithValues_count_(MEMORY[0x29EDB9198], v427, &v527, v276);
      v525[1] = v428;
      v524[2] = @"chin";
      v430 = objc_msgSend_vectorWithValues_count_(MEMORY[0x29EDB9198], v429, v526, v276);
      v525[2] = v430;
      v432 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v431, v525, v524, 3);

      if (v408)
      {
        v39 = v476;
        v86 = v509;
        v46 = v515;
        v433 = v513;
        if (v411 && v405 && v432)
        {
          v541 = v543;
          v542 = v544;
          v434 = createInpaintingMask(v501, v408, v411, v513, v405, v432, &v541);
          objc_msgSend_extent(v405, v435, v436);
          v438 = v437;
          objc_msgSend_extent(v434, v439, v440);
          memset(&v541, 0, sizeof(v541));
          CGAffineTransformMakeScale(&v541, v438 / v441, v438 / v441);
          v444 = objc_msgSend_imageBySamplingNearest(v434, v442, v443);

          v527 = v541;
          v446 = objc_msgSend_imageByApplyingTransform_highQualityDownsample_(v444, v445, &v527, 0);

          v448 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v447, @"ccp_insertMask");
          objc_msgSend_extent(v355, v449, v450);
          v452 = v451;
          v454 = v453;
          v456 = v455;
          v458 = v457;
          v523[0] = v405;
          v523[1] = v446;
          v460 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v459, v523, 2);
          v462 = objc_msgSend_applyWithExtent_arguments_(v448, v461, v460, v452, v454, v456, v458);

          v464 = objc_msgSend_imageWithObject_(UniImage, v463, v462);

          v433 = v513;
          v46 = v515;
          v405 = v462;
          v39 = v476;
          v355 = v464;
          v86 = v509;
        }
      }

      else
      {
        v39 = v476;
        v86 = v509;
        v46 = v515;
        v433 = v513;
      }

      v87 = v510;
      v45 = v479;
    }
  }

  else
  {
    v39 = v476;
  }

  free(RenderingParametersFromMetaData);
  v47 = v355;

  v84 = v47;
  v44 = v497;
  v85 = v471;
LABEL_135:

  return v84;
}

- (int)enqueueBlurMapGenerationUsingArgs:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v180 = objc_alloc_init(UniContext);
  if (objc_msgSend_validateForMetal(v4, v6, v7))
  {
    v173 = self;
    v10 = objc_msgSend_inputShiftMap(v4, v8, v9);
    v12 = objc_msgSend_imageWithObject_(UniImage, v11, v10);

    v15 = objc_msgSend_inputSegmentation(v4, v13, v14);
    v177 = objc_msgSend_imageWithObject_(UniImage, v16, v15);

    v19 = objc_msgSend_inputHair(v4, v17, v18);
    v176 = objc_msgSend_imageWithObject_(UniImage, v20, v19);

    v23 = objc_msgSend_inputGlasses(v4, v21, v22);
    v175 = objc_msgSend_imageWithObject_(UniImage, v24, v23);

    v27 = objc_msgSend_inputImageLuma(v4, v25, v26);
    v29 = objc_msgSend_imageWithObject_(UniImage, v28, v27);

    v32 = objc_msgSend_inputImageChroma(v4, v30, v31);
    v34 = objc_msgSend_imageWithObject_(UniImage, v33, v32);

    v37 = objc_msgSend_outputBlurMap(v4, v35, v36);
    v181 = objc_msgSend_imageWithObject_(UniImage, v38, v37);

    v41 = objc_msgSend_intermediates(v4, v39, v40);
    v44 = objc_msgSend_inputDisparityRefineBlurTex(v41, v42, v43);
    v46 = objc_msgSend_imageWithObject_(UniImage, v45, v44);

    v49 = objc_msgSend_intermediates(v4, v47, v48);
    v52 = objc_msgSend_inputPreprocTex(v49, v50, v51);
    v182 = objc_msgSend_imageWithObject_(UniImage, v53, v52);

    v56 = objc_msgSend_intermediates(v4, v54, v55);
    v59 = objc_msgSend_inputAlphaMaskDeltaTex(v56, v57, v58);
    v179 = objc_msgSend_imageWithObject_(UniImage, v60, v59);

    v63 = objc_msgSend_intermediates(v4, v61, v62);
    v66 = objc_msgSend_inputHairMaskDeltaTex(v63, v64, v65);
    v178 = objc_msgSend_imageWithObject_(UniImage, v67, v66);

    if (!v12)
    {
      sub_2956CBF70();
    }

    if (!v46)
    {
      sub_2956CBF44();
    }

    if (!v182)
    {
      sub_2956CBF18();
    }

    v70 = objc_msgSend_intermediates(v4, v68, v69);
    v73 = objc_msgSend_inputAlphaMaskDeltaTex(v70, v71, v72);

    if (v73 && !v179)
    {
      sub_2956CBEEC();
    }

    v76 = objc_msgSend_intermediates(v4, v74, v75);
    v79 = objc_msgSend_inputHairMaskDeltaTex(v76, v77, v78);

    if (v79 && !v178)
    {
      sub_2956CBEC0();
    }

    if (!v29)
    {
      sub_2956CBE94();
    }

    if (!v34)
    {
      sub_2956CBE68();
    }

    if (!v181)
    {
      sub_2956CBE3C();
    }

    v82 = objc_msgSend_inputSegmentation(v4, v80, v81);

    if (v82 && !v177)
    {
      sub_2956CBE10();
    }

    v85 = objc_msgSend_inputHair(v4, v83, v84);

    if (v85 && !v176)
    {
      sub_2956CBDE4();
    }

    v171 = v5;
    v88 = objc_msgSend_facePoints(v4, v86, v87);
    sub_2956A7CF0(v183, v88);

    v168 = objc_msgSend_metadata(v4, v89, v90);
    objc_msgSend_simulatedAperture(v4, v91, v92);
    v172 = v93;
    objc_msgSend_focusWindow(v4, v94, v95);
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    objc_msgSend_focalLengthInPixels(v4, v104, v105);
    v107 = v106;
    objc_msgSend_normalizedFocalLength(v4, v108, v109);
    v111 = v110;
    objc_msgSend_maxBlur(v4, v112, v113);
    v115 = v114;
    objc_msgSend_inputScale(v4, v116, v117);
    v119 = v118;
    v169 = objc_msgSend_intermediates(v4, v120, v121);
    v174 = objc_msgSend_inputFaceMaskAdjBlurTex(v169, v122, v123);
    v167 = objc_msgSend_intermediates(v4, v124, v125);
    v128 = objc_msgSend_inputWeightsXTex(v167, v126, v127);
    v166 = objc_msgSend_intermediates(v4, v129, v130);
    v133 = objc_msgSend_inputWeightsYTex(v166, v131, v132);
    v165 = objc_msgSend_intermediates(v4, v134, v135);
    v164 = objc_msgSend_inputSampledDTex(v165, v136, v137);
    v140 = objc_msgSend_intermediates(v4, v138, v139);
    v143 = objc_msgSend_inputBlurRefineIntermediateTex(v140, v141, v142);
    v146 = objc_msgSend_captureFolderMiscPath(v4, v144, v145);
    v147 = v34;
    v148 = v146;
    v170 = v147;
    LODWORD(v149) = v172;
    LODWORD(v150) = v107;
    LODWORD(v151) = v111;
    LODWORD(v152) = v115;
    v154 = objc_msgSend_createBlurMapUsingMetadata_simulatedAperture_focusWindow_focalLengthInPixels_normalizedFocalLength_facePoints_maxBlur_inputScale_inputsAlreadyScaled_inputShiftMap_inputSegmentation_inputHair_inputGlasses_inputImageLuma_inputImageChroma_inputFaceMaskAdjBlur_inputWeightsX_inputWeightsY_inputPreproc_inputSampledD_inputDisparityRefineBlur_inputAlphaMaskDelta_inputHairMaskDelta_inputBlurRefineIntermediate_resultAdjBlurMap_coreImageRender_context_captureFolderMiscPath_(v173, v153, v168, v183, 1, v12, v177, v176, v149, v97, v99, v101, v103, v150, v151, v152, v119, v175, v29, v147, v174, v128, v133, v182, v164, v46, v179, v178, v143, v181, 0, v180, v146);

    if (v154)
    {
      objc_msgSend_metalRender_waitUntilScheduled_waitUntilCompleted_(v154, v155, v173[1], 0, 0);
      objc_msgSend_empty(v180, v156, v157);

      v158 = 0;
    }

    else
    {
      v158 = -1;
    }

    v5 = v171;
    v159 = v12;
    v161 = v170;
    v160 = v29;
    v162 = v46;
  }

  else
  {
    v175 = 0;
    v176 = 0;
    v160 = 0;
    v161 = 0;
    v181 = 0;
    v182 = 0;
    v162 = 0;
    v178 = 0;
    v179 = 0;
    v177 = 0;
    v159 = 0;
    v158 = -1;
  }

  objc_autoreleasePoolPop(v5);
  return v158;
}

- (id)imageUsingArgs:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(UniContext);
  if (objc_msgSend_validateForCoreImage(v4, v7, v8))
  {
    v195 = v5;
    v193 = self;
    objc_msgSend_allocateFakeResources(self, v9, v10);
    v15 = objc_msgSend_inputImage(v4, v11, v12);
    v16 = v15;
    if (!v15)
    {
      v16 = objc_msgSend_inputImageLuma(v4, v13, v14);
    }

    v17 = 0x29EDB9000uLL;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (!v15)
    {
    }

    v194 = v6;

    v20 = objc_msgSend_inputImage(v4, v18, v19);

    if (v20)
    {
      v23 = CGColorSpaceCreateWithName(*MEMORY[0x29EDB90F0]);
      v26 = objc_msgSend_inputImage(v4, v24, v25);
      v28 = objc_msgSend_imageYCC444_matrix_fullRange_colorSpace_(MEMORY[0x29EDB9178], v27, v26, 601, 1, v23);
      CGColorSpaceRelease(v23);
      objc_msgSend_extent(v28, v29, v30);
      v32 = v31;
      v200 = v33;
      v202 = v31;
      v34 = v33;
      v36 = v35;
      v196 = v37;
      v198 = v35;
      v38 = v37;
      v40 = objc_msgSend_colorKernelWithName_andOutputFormat_(CoreImageOnlyLibrary, v39, @"ccp_chroma", *MEMORY[0x29EDB9210]);
      v42 = objc_msgSend_colorKernelWithName_andOutputFormat_(CoreImageOnlyLibrary, v41, @"ccp_luma", *MEMORY[0x29EDB9218]);
      memset(&v208, 0, sizeof(v208));
      CGAffineTransformMakeScale(&v208, 0.5, 0.5);
      v207 = v208;
      v210.origin.x = v32;
      v210.origin.y = v34;
      v210.size.width = v36;
      v210.size.height = v38;
      v211 = CGRectApplyAffineTransform(v210, &v207);
      v212 = CGRectIntegral(v211);
      x = v212.origin.x;
      y = v212.origin.y;
      width = v212.size.width;
      height = v212.size.height;
      v49 = objc_msgSend_imageByClampingToExtent(v28, v47, v48);
      v207 = v208;
      v51 = objc_msgSend_imageByApplyingTransform_(v49, v50, &v207);

      objc_msgSend_extent(v51, v52, v53);
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v206 = v51;
      v63 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v62, &v206, 1);
      v65 = objc_msgSend_applyWithExtent_arguments_(v40, v64, v63, v55, v57, v59, v61);

      v68 = objc_msgSend_imageByCroppingToRect_(v65, v66, v67, x, y, width, height);

      v205 = v28;
      v70 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v69, &v205, 1);
      v201 = objc_msgSend_applyWithExtent_arguments_(v42, v71, v70, v202, v200, v198, v196);

      v17 = 0x29EDB9000;
    }

    else
    {
      v201 = objc_msgSend_inputImageLuma(v4, v21, v22);
      v68 = objc_msgSend_inputImageChroma(v4, v74, v75);
    }

    v76 = *(v17 + 376);
    v77 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v72, v73);
    v79 = objc_msgSend_imageWithColor_(v76, v78, v77);
    v188 = v68;
    objc_msgSend_extent(v68, v80, v81);
    v84 = objc_msgSend_imageByCroppingToRect_(v79, v82, v83);

    v85 = [UniFakeImage alloc];
    v87 = objc_msgSend_initWithCIImage_format_(v85, v86, v84, 25);
    v88 = [UniFakeImage alloc];
    v203 = objc_msgSend_initWithCIImage_format_(v88, v89, v84, 65);
    v90 = [UniFakeImage alloc];
    v199 = objc_msgSend_initWithCIImage_format_(v90, v91, v84, 115);
    v191 = objc_msgSend_inputShiftMap(v4, v92, v93);
    v94 = *(v17 + 376);
    v97 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v95, v96);
    v99 = objc_msgSend_imageWithColor_(v94, v98, v97);
    objc_msgSend_extent(v191, v100, v101);
    v190 = objc_msgSend_imageByCroppingToRect_(v99, v102, v103);

    v104 = [UniFakeImage alloc];
    v197 = objc_msgSend_initWithCIImage_format_(v104, v105, v190, 25);
    v108 = objc_msgSend_facePoints(v4, v106, v107);
    sub_2956A7CF0(v204, v108);

    v187 = objc_msgSend_metadata(v4, v109, v110);
    objc_msgSend_simulatedAperture(v4, v111, v112);
    v185 = v113;
    objc_msgSend_focusWindow(v4, v114, v115);
    v117 = v116;
    v119 = v118;
    v121 = v120;
    v123 = v122;
    objc_msgSend_focalLengthInPixels(v4, v124, v125);
    v127 = v126;
    objc_msgSend_normalizedFocalLength(v4, v128, v129);
    v131 = v130;
    objc_msgSend_maxBlur(v4, v132, v133);
    v135 = v134;
    objc_msgSend_inputScale(v4, v136, v137);
    v139 = v138;
    v189 = objc_msgSend_inputShiftMap(v4, v140, v141);
    v143 = objc_msgSend_imageWithCIImage_(UniImage, v142, v189);
    v186 = objc_msgSend_inputSegmentation(v4, v144, v145);
    v182 = objc_msgSend_imageWithCIImage_(UniImage, v146, v186);
    v184 = objc_msgSend_inputHair(v4, v147, v148);
    v181 = objc_msgSend_imageWithCIImage_(UniImage, v149, v184);
    v183 = objc_msgSend_inputGlasses(v4, v150, v151);
    v153 = objc_msgSend_imageWithCIImage_(UniImage, v152, v183);
    v155 = objc_msgSend_imageWithCIImage_(UniImage, v154, v201);
    v157 = objc_msgSend_imageWithCIImage_(UniImage, v156, v68);
    v180 = objc_msgSend_metadata(v4, v158, v159);
    if (objc_msgSend_getUnifiedRenderingForegroundBlurEnabled_(SDOFMetadata, v160, v180))
    {
      v163 = v203;
    }

    else
    {
      v163 = v87;
    }

    v164 = objc_msgSend_captureFolderMiscPath(v4, v161, v162);
    v6 = v194;
    LODWORD(v165) = v185;
    LODWORD(v166) = v127;
    LODWORD(v167) = v131;
    LODWORD(v168) = v135;
    v170 = objc_msgSend_createBlurMapUsingMetadata_simulatedAperture_focusWindow_focalLengthInPixels_normalizedFocalLength_facePoints_maxBlur_inputScale_inputsAlreadyScaled_inputShiftMap_inputSegmentation_inputHair_inputGlasses_inputImageLuma_inputImageChroma_inputFaceMaskAdjBlur_inputWeightsX_inputWeightsY_inputPreproc_inputSampledD_inputDisparityRefineBlur_inputAlphaMaskDelta_inputHairMaskDelta_inputBlurRefineIntermediate_resultAdjBlurMap_coreImageRender_context_captureFolderMiscPath_(v193, v169, v187, v204, 0, v143, v182, v181, v165, v117, v119, v121, v123, v166, v167, v168, v139, v153, v155, v157, v87, v197, v197, v199, v87, v87, v87, v87, v87, v163, isKindOfClass & 1, v194, v164);

    v173 = objc_msgSend_image(v170, v171, v172);
    objc_msgSend_empty(v194, v174, v175);

    v5 = v195;
  }

  else
  {
    v173 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v9, v10);
  }

  objc_autoreleasePoolPop(v5);
  if (v173)
  {
    v178 = v173;
  }

  else
  {
    v178 = objc_msgSend_inputImage(v4, v176, v177);
  }

  return v178;
}

@end