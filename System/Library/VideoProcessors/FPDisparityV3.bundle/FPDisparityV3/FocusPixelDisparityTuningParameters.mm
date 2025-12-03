@interface FocusPixelDisparityTuningParameters
- (FocusPixelDisparityTuningParameters)init;
- (FocusPixelDisparityTuningParameters)initWithTuningDictionary:(id)dictionary cameraInfoByPortType:(id)type;
- (int)readFPDisparity_v3_Config:(id)config;
- (int)setDefaultFPDisparity_v3_Parameters;
@end

@implementation FocusPixelDisparityTuningParameters

- (int)setDefaultFPDisparity_v3_Parameters
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v11 = v9;
  if (!v3)
  {
    sub_29579C208(&v150);
LABEL_26:
    v147 = v150;
    goto LABEL_15;
  }

  if (!v5)
  {
    sub_29579C15C(&v150);
    goto LABEL_26;
  }

  if (!v6)
  {
    sub_29579C0B0(&v150);
    goto LABEL_26;
  }

  if (!v4)
  {
    sub_29579C004(&v150);
    goto LABEL_26;
  }

  if (!v7)
  {
    sub_29579BF58(&v150);
    goto LABEL_26;
  }

  if (!v8)
  {
    sub_29579BEAC(&v150);
    goto LABEL_26;
  }

  if (!v9)
  {
    sub_29579BE00(&v150);
    goto LABEL_26;
  }

  objc_msgSend_setNView_(v4, v10, 4);
  objc_msgSend_setMicrolensSpatialOffset_(v4, v12, v13, 0.0);
  objc_msgSend_setForegroundPush_(v4, v14, v15, 0.0);
  objc_msgSend_setBackgroundPush_(v4, v16, v17, 0.0);
  objc_msgSend_setRigidWindowSupport_(v4, v18, 3);
  LODWORD(v19) = 0.5;
  objc_msgSend_setCostMapAntialiasingStrength_(v4, v20, v21, v19);
  LODWORD(v22) = 953267991;
  objc_msgSend_setCostEpsilon_(v4, v23, v24, v22);
  LODWORD(v25) = 1061673905;
  objc_msgSend_setLensFieldCurvatureA0_(v4, v26, v27, v25);
  LODWORD(v28) = 1054277133;
  objc_msgSend_setLensFieldCurvatureA1_(v4, v29, v30, v28);
  LODWORD(v31) = -1069655439;
  objc_msgSend_setLensFieldCurvatureA2_(v4, v32, v33, v31);
  LODWORD(v34) = 1089940729;
  objc_msgSend_setLensFieldCurvatureA3_(v4, v35, v36, v34);
  LODWORD(v37) = -1066686669;
  objc_msgSend_setLensFieldCurvatureA4_(v4, v38, v39, v37);
  LODWORD(v40) = 1034147594;
  objc_msgSend_setCircleOfConfusionGain_(v4, v41, v42, v40);
  LODWORD(v43) = -1085809743;
  objc_msgSend_setCircleOfConfusionOffset_(v4, v44, v45, v43);
  LODWORD(v46) = 1008981770;
  objc_msgSend_setRadialMin_(v4, v47, v48, v46);
  LODWORD(v49) = 1.0;
  objc_msgSend_setRadialGain_(v4, v50, v51, v49);
  LODWORD(v52) = 1.0;
  objc_msgSend_setRadialExponent_(v4, v53, v54, v52);
  objc_msgSend_setFPcostParameters_(self->_FPDisparityEstimator_Config, v55, v4);
  LODWORD(v56) = 3.0;
  objc_msgSend_setLambda_(v7, v57, v58, v56);
  LODWORD(v59) = 3.0;
  objc_msgSend_setLambda_foreground_(v7, v60, v61, v59);
  LODWORD(v62) = 3.0;
  objc_msgSend_setLambda_background_(v7, v63, v64, v62);
  LODWORD(v65) = 1.0;
  objc_msgSend_setStep_(v7, v66, v67, v65);
  LODWORD(v68) = 16.0;
  objc_msgSend_setAlpha_(v3, v69, v70, v68);
  LODWORD(v71) = 1.0;
  objc_msgSend_setBeta_(v3, v72, v73, v71);
  LODWORD(v74) = 1.0;
  objc_msgSend_setGain_(v3, v75, v76, v74);
  LODWORD(v77) = 981668463;
  objc_msgSend_setOffset_(v3, v78, v79, v77);
  LODWORD(v80) = 1061997773;
  objc_msgSend_setSegmentation_bias_foreground_(v3, v81, v82, v80);
  LODWORD(v83) = 1051931443;
  objc_msgSend_setSegmentation_bias_background_(v3, v84, v85, v83);
  objc_msgSend_setA_checkerboard_(v5, v86, v87, 0.0);
  LODWORD(v88) = 1.0;
  objc_msgSend_setB_checkerboard_(v5, v89, v90, v88);
  LODWORD(v91) = 0.25;
  objc_msgSend_setTau_(v5, v92, v93, v91);
  LODWORD(v94) = 0.5;
  objc_msgSend_setSigma_(v5, v95, v96, v94);
  LODWORD(v97) = 1.0;
  objc_msgSend_setTheta_(v5, v98, v99, v97);
  LODWORD(v100) = 1008981770;
  objc_msgSend_setHuber_eps_(v5, v101, v102, v100);
  objc_msgSend_setWarpings_(v5, v103, 1);
  objc_msgSend_setIterations_(v5, v104, 200);
  LODWORD(v105) = 1015021696;
  objc_msgSend_setBlackLevelOffset_(v8, v106, v107, v105);
  LODWORD(v108) = 1063387136;
  objc_msgSend_setBlackLevelScaling_(v8, v109, v110, v108);
  LODWORD(v111) = -1076007822;
  objc_msgSend_setShiftToDisparityRatio_(v11, v112, v113, v111);
  LODWORD(v114) = 1006834287;
  objc_msgSend_setCalibrationMaxResidual1_(v11, v115, v116, v114);
  LODWORD(v117) = 1018444120;
  objc_msgSend_setCalibrationMaxResidual2_(v11, v118, v119, v117);
  objc_msgSend_setScales_(v6, v120, 1);
  objc_msgSend_setRadius_(v6, v121, 6);
  objc_msgSend_setPadding_(v6, v122, 2);
  LODWORD(v123) = 6.0;
  objc_msgSend_setSigma_0_(v6, v124, v125, v123);
  LODWORD(v126) = 3.0;
  objc_msgSend_setSigma_1_(v6, v127, v128, v126);
  LODWORD(v129) = 3.0;
  objc_msgSend_setSigma_2_(v6, v130, v131, v129);
  v132 = objc_opt_new();
  FPDisparityEstimator_Config = self->_FPDisparityEstimator_Config;
  self->_FPDisparityEstimator_Config = v132;

  v135 = self->_FPDisparityEstimator_Config;
  if (!v135)
  {
    sub_29579BD54(&v150);
    goto LABEL_26;
  }

  objc_msgSend_setFPpreprocessingParameters_(v135, v134, v8);
  v136 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  if (!v136)
  {
    sub_29579BCA8(&v150);
    goto LABEL_26;
  }

  v137 = v136;
  v149 = v8;
  v138 = 0;
  while (1)
  {
    v139 = objc_opt_new();
    if (!v139)
    {
      break;
    }

    v141 = v139;
    objc_msgSend_setSolverParameters_(v139, v140, v5);
    objc_msgSend_setRegularizationParameters_(v141, v142, v3);
    objc_msgSend_setHbfParameters_(v141, v143, v6);
    objc_msgSend_setCostParameters_(v141, v144, v7);
    objc_msgSend_setObject_atIndexedSubscript_(v137, v145, v141, v138);

    if (++v138 == 8)
    {
      objc_msgSend_setLevelsParameters_(self->_FPDisparityEstimator_Config, v146, v137);

      v147 = 0;
      goto LABEL_14;
    }
  }

  sub_29579BBE4(v137, &v150);
  v147 = v150;
LABEL_14:
  v8 = v149;
LABEL_15:

  return v147;
}

- (FocusPixelDisparityTuningParameters)init
{
  v8.receiver = self;
  v8.super_class = FocusPixelDisparityTuningParameters;
  v2 = [(FocusPixelDisparityTuningParameters *)&v8 init];
  v5 = v2;
  if (v2 && objc_msgSend_setDefaultFPDisparity_v3_Parameters(v2, v3, v4))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (int)readFPDisparity_v3_Config:(id)config
{
  configCopy = config;
  v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  if (!v6)
  {
    sub_29579C9A0(&v199);
LABEL_35:
    v182 = v199;
    goto LABEL_32;
  }

  if (!configCopy)
  {
    sub_29579C8F4(&v199);
    goto LABEL_35;
  }

  v198 = objc_msgSend_objectForKeyedSubscript_(configCopy, v5, @"reg");
  if (!v198)
  {
    sub_29579C880();
LABEL_42:
    v182 = -12780;
    goto LABEL_32;
  }

  v8 = objc_msgSend_objectForKeyedSubscript_(configCopy, v7, @"cost");
  if (!v8)
  {
    sub_29579C7F4(v198);
    goto LABEL_42;
  }

  v10 = v8;
  v11 = objc_msgSend_objectForKeyedSubscript_(configCopy, v9, @"solver");
  if (!v11)
  {
    sub_29579C760(v10, v198);
    goto LABEL_42;
  }

  v13 = v11;
  v197 = objc_msgSend_objectForKeyedSubscript_(configCopy, v12, @"hbf");
  if (!v197)
  {
    sub_29579C6BC(v13, v10, v198);
    goto LABEL_42;
  }

  v195 = objc_msgSend_objectForKeyedSubscript_(configCopy, v14, @"preprocessing");
  if (!v195)
  {
    sub_29579C610(v197, v13, v10, v198);
    goto LABEL_42;
  }

  v194 = objc_msgSend_objectForKeyedSubscript_(configCopy, v15, @"postprocessing");
  if (!v194)
  {
    fig_log_get_emitter();
    FigDebugAssert3();

    goto LABEL_42;
  }

  v16 = objc_opt_new();
  FPDisparityEstimator_Config = self->_FPDisparityEstimator_Config;
  self->_FPDisparityEstimator_Config = v16;

  if (!self->_FPDisparityEstimator_Config || (v18 = objc_opt_new()) == 0)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    v182 = FigSignalErrorAtGM();
LABEL_47:

    goto LABEL_32;
  }

  v19 = v18;
  selfCopy = self;
  v199 = 0;
  sub_29578DE10(v10, @"nview", &v199);
  objc_msgSend_setNView_(v19, v20, v199);
  v199 = 0;
  sub_29578DE70(v10, @"microlens_spatial_offset", 0, &v199);
  LODWORD(v21) = v199;
  objc_msgSend_setMicrolensSpatialOffset_(v19, v22, v23, v21);
  v199 = 0;
  sub_29578DE70(v10, @"foreground_push", 0, &v199);
  LODWORD(v24) = v199;
  objc_msgSend_setForegroundPush_(v19, v25, v26, v24);
  v199 = 0;
  sub_29578DE70(v10, @"background_push", 0, &v199);
  LODWORD(v27) = v199;
  objc_msgSend_setBackgroundPush_(v19, v28, v29, v27);
  v199 = 0;
  sub_29578DE10(v10, @"rigid_window_support", &v199);
  objc_msgSend_setRigidWindowSupport_(v19, v30, v199);
  v199 = 0;
  sub_29578DE70(v10, @"cost_map_antialiasing_strength", 0, &v199);
  LODWORD(v31) = v199;
  objc_msgSend_setCostMapAntialiasingStrength_(v19, v32, v33, v31);
  v199 = 0;
  sub_29578DE70(v10, @"cost_epsilon", 0, &v199);
  LODWORD(v34) = v199;
  objc_msgSend_setCostEpsilon_(v19, v35, v36, v34);
  v199 = 0;
  sub_29578DE70(v10, @"lens_field_curvature_a0", 0, &v199);
  LODWORD(v37) = v199;
  objc_msgSend_setLensFieldCurvatureA0_(v19, v38, v39, v37);
  v199 = 0;
  sub_29578DE70(v10, @"lens_field_curvature_a1", 0, &v199);
  LODWORD(v40) = v199;
  objc_msgSend_setLensFieldCurvatureA1_(v19, v41, v42, v40);
  v199 = 0;
  sub_29578DE70(v10, @"lens_field_curvature_a2", 0, &v199);
  LODWORD(v43) = v199;
  objc_msgSend_setLensFieldCurvatureA2_(v19, v44, v45, v43);
  v199 = 0;
  sub_29578DE70(v10, @"lens_field_curvature_a3", 0, &v199);
  LODWORD(v46) = v199;
  objc_msgSend_setLensFieldCurvatureA3_(v19, v47, v48, v46);
  v199 = 0;
  sub_29578DE70(v10, @"lens_field_curvature_a4", 0, &v199);
  LODWORD(v49) = v199;
  objc_msgSend_setLensFieldCurvatureA4_(v19, v50, v51, v49);
  v199 = 0;
  sub_29578DE70(v10, @"circle_of_confusion_gain", 0, &v199);
  LODWORD(v52) = v199;
  objc_msgSend_setCircleOfConfusionGain_(v19, v53, v54, v52);
  v199 = 0;
  sub_29578DE70(v10, @"circle_of_confusion_offset", 0, &v199);
  LODWORD(v55) = v199;
  objc_msgSend_setCircleOfConfusionOffset_(v19, v56, v57, v55);
  v199 = 0;
  sub_29578DE70(v10, @"radial_exponent", 0, &v199);
  LODWORD(v58) = v199;
  objc_msgSend_setRadialExponent_(v19, v59, v60, v58);
  v199 = 0;
  sub_29578DE70(v10, @"radial_gain", 0, &v199);
  LODWORD(v61) = v199;
  objc_msgSend_setRadialGain_(v19, v62, v63, v61);
  v199 = 0;
  sub_29578DE70(v10, @"radial_min", 0, &v199);
  LODWORD(v64) = v199;
  objc_msgSend_setRadialMin_(v19, v65, v66, v64);
  v199 = 0;
  sub_29578DE70(v10, @"AGC_low", 0, &v199);
  LODWORD(v67) = v199;
  objc_msgSend_setAGCLow_(v19, v68, v69, v67);
  v199 = 0;
  sub_29578DE70(v10, @"AGC_high", 0, &v199);
  LODWORD(v70) = v199;
  v193 = v19;
  objc_msgSend_setAGCHigh_(v19, v71, v72, v70);
  v73 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v75 = objc_msgSend_initWithCapacity_(v73, v74, 20);
  for (i = 0; i != 20; ++i)
  {
    v199 = 0;
    sub_29578DE70(v10, @"correction_coefficients_weights", i, &v199);
    LODWORD(v77) = v199;
    v80 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v78, v79, v77);
    objc_msgSend_setObject_atIndexedSubscript_(v75, v81, v80, i);
  }

  objc_msgSend_setCorrectionCoefficientsWeights_(v193, v82, v75);

  objc_msgSend_setFPcostParameters_(self->_FPDisparityEstimator_Config, v83, v193);
  v84 = objc_opt_new();
  if (!v84)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    v182 = FigSignalErrorAtGM();
LABEL_46:

    goto LABEL_47;
  }

  v85 = v84;
  v199 = 0;
  sub_29578DE70(v195, @"black_level_offset", 0, &v199);
  LODWORD(v86) = v199;
  objc_msgSend_setBlackLevelOffset_(v85, v87, v88, v86);
  v199 = 0;
  sub_29578DE70(v195, @"black_level_scaling", 0, &v199);
  LODWORD(v89) = v199;
  objc_msgSend_setBlackLevelScaling_(v85, v90, v91, v89);
  objc_msgSend_setFPpreprocessingParameters_(self->_FPDisparityEstimator_Config, v92, v85);
  v93 = objc_opt_new();
  if (!v93)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    v182 = FigSignalErrorAtGM();

    goto LABEL_46;
  }

  v190 = v85;
  v191 = configCopy;
  v196 = v6;
  v199 = 0;
  v94 = v93;
  sub_29578DE70(v194, @"shift_to_disparity_ratio", 0, &v199);
  LODWORD(v95) = v199;
  objc_msgSend_setShiftToDisparityRatio_(v94, v96, v97, v95);
  v199 = 0;
  sub_29578DE70(v194, @"max_residual1", 0, &v199);
  LODWORD(v98) = v199;
  objc_msgSend_setCalibrationMaxResidual1_(v94, v99, v100, v98);
  v199 = 0;
  sub_29578DE70(v194, @"max_residual2", 0, &v199);
  LODWORD(v101) = v199;
  objc_msgSend_setCalibrationMaxResidual2_(v94, v102, v103, v101);
  v189 = v94;
  objc_msgSend_setFPpostprocessingParameters_(selfCopy->_FPDisparityEstimator_Config, v104, v94);
  v105 = 0;
  while (1)
  {
    v106 = objc_opt_new();
    v107 = objc_opt_new();
    v108 = objc_opt_new();
    v109 = objc_opt_new();
    v110 = objc_opt_new();
    v111 = v110;
    if (v106)
    {
      if (v107)
      {
        if (v108)
        {
          if (v109)
          {
            if (v110)
            {
              v199 = 0;
              sub_29578DE70(v198, @"alpha", v105, &v199);
              LODWORD(v112) = v199;
              objc_msgSend_setAlpha_(v107, v113, v114, v112);
              v199 = 0;
              sub_29578DE70(v198, @"beta", v105, &v199);
              LODWORD(v115) = v199;
              objc_msgSend_setBeta_(v107, v116, v117, v115);
              v199 = 0;
              sub_29578DE70(v198, @"gain", v105, &v199);
              LODWORD(v118) = v199;
              objc_msgSend_setGain_(v107, v119, v120, v118);
              v199 = 0;
              sub_29578DE70(v198, @"offset", v105, &v199);
              LODWORD(v121) = v199;
              objc_msgSend_setOffset_(v107, v122, v123, v121);
              v199 = 0;
              sub_29578DE70(v198, @"segmentation_bias_background", v105, &v199);
              LODWORD(v124) = v199;
              objc_msgSend_setSegmentation_bias_background_(v107, v125, v126, v124);
              v199 = 0;
              sub_29578DE70(v198, @"segmentation_bias_foreground", v105, &v199);
              LODWORD(v127) = v199;
              objc_msgSend_setSegmentation_bias_foreground_(v107, v128, v129, v127);
              v199 = 0;
              sub_29578DE70(v13, @"a_checkerboard", v105, &v199);
              LODWORD(v130) = v199;
              objc_msgSend_setA_checkerboard_(v108, v131, v132, v130);
              v199 = 0;
              sub_29578DE70(v13, @"b_checkerboard", v105, &v199);
              LODWORD(v133) = v199;
              objc_msgSend_setB_checkerboard_(v108, v134, v135, v133);
              v199 = 0;
              sub_29578DE70(v13, @"tau", v105, &v199);
              LODWORD(v136) = v199;
              objc_msgSend_setTau_(v108, v137, v138, v136);
              v199 = 0;
              sub_29578DE70(v13, @"sigma", v105, &v199);
              LODWORD(v139) = v199;
              objc_msgSend_setSigma_(v108, v140, v141, v139);
              v199 = 0;
              sub_29578DE70(v13, @"theta", v105, &v199);
              LODWORD(v142) = v199;
              objc_msgSend_setTheta_(v108, v143, v144, v142);
              v199 = 0;
              sub_29578DE70(v13, @"huber_eps", v105, &v199);
              LODWORD(v145) = v199;
              objc_msgSend_setHuber_eps_(v108, v146, v147, v145);
              v199 = 0;
              sub_29578DECC(v13, @"warpings", v105, &v199);
              objc_msgSend_setWarpings_(v108, v148, v199);
              v199 = 0;
              sub_29578DECC(v13, @"iterations", v105, &v199);
              objc_msgSend_setIterations_(v108, v149, v199);
              v199 = 0;
              sub_29578DECC(v197, @"scales", v105, &v199);
              objc_msgSend_setScales_(v109, v150, v199);
              v199 = 0;
              sub_29578DECC(v197, @"radius", v105, &v199);
              objc_msgSend_setRadius_(v109, v151, v199);
              v199 = 0;
              sub_29578DECC(v197, @"padding", v105, &v199);
              objc_msgSend_setPadding_(v109, v152, v199);
              v199 = 0;
              sub_29578DE70(v197, @"sigma_0", v105, &v199);
              LODWORD(v153) = v199;
              objc_msgSend_setSigma_0_(v109, v154, v155, v153);
              v199 = 0;
              sub_29578DE70(v197, @"sigma_1", v105, &v199);
              LODWORD(v156) = v199;
              objc_msgSend_setSigma_1_(v109, v157, v158, v156);
              v199 = 0;
              sub_29578DE70(v197, @"sigma_2", v105, &v199);
              LODWORD(v159) = v199;
              objc_msgSend_setSigma_2_(v109, v160, v161, v159);
              v199 = 0;
              sub_29578DE70(v10, @"lambda", v105, &v199);
              LODWORD(v162) = v199;
              objc_msgSend_setLambda_(v111, v163, v164, v162);
              v199 = 0;
              sub_29578DE70(v10, @"step", v105, &v199);
              LODWORD(v165) = v199;
              objc_msgSend_setStep_(v111, v166, v167, v165);
              v199 = 0;
              sub_29578DE70(v10, @"step_lowlight", v105, &v199);
              LODWORD(v168) = v199;
              objc_msgSend_setStepLowlight_(v111, v169, v170, v168);
              v199 = 0;
              sub_29578DE70(v10, @"lambda_background", v105, &v199);
              LODWORD(v171) = v199;
              objc_msgSend_setLambda_background_(v111, v172, v173, v171);
              v199 = 0;
              sub_29578DE70(v10, @"lambda_foreground", v105, &v199);
              LODWORD(v174) = v199;
              objc_msgSend_setLambda_foreground_(v111, v175, v176, v174);
              objc_msgSend_setSolverParameters_(v106, v177, v108);
              objc_msgSend_setRegularizationParameters_(v106, v178, v107);
              objc_msgSend_setHbfParameters_(v106, v179, v109);
              objc_msgSend_setCostParameters_(v106, v180, v111);
              objc_msgSend_setObject_atIndexedSubscript_(v196, v181, v106, v105);
              v182 = 0;
              v183 = 1;
              goto LABEL_22;
            }

            sub_29579C2B4(&v199);
          }

          else
          {
            sub_29579C360(&v199);
          }
        }

        else
        {
          sub_29579C40C(&v199);
        }
      }

      else
      {
        sub_29579C4B8(&v199);
      }
    }

    else
    {
      sub_29579C564(&v199);
    }

    v183 = 0;
    v182 = v199;
LABEL_22:

    if ((v183 & 1) == 0)
    {
      break;
    }

    if (++v105 == 8)
    {
      v6 = v196;
      v186 = objc_msgSend_copy(v196, v184, v185);
      objc_msgSend_setLevelsParameters_(selfCopy->_FPDisparityEstimator_Config, v187, v186);

      v182 = 0;
      configCopy = v191;
      goto LABEL_32;
    }
  }

  configCopy = v191;
  v6 = v196;
LABEL_32:

  return v182;
}

- (FocusPixelDisparityTuningParameters)initWithTuningDictionary:(id)dictionary cameraInfoByPortType:(id)type
{
  dictionaryCopy = dictionary;
  v8 = objc_msgSend_init(self, v6, v7);
  v10 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_readFPDisparity_v3_Config_(v8, v9, dictionaryCopy))
  {
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_6:
    v11 = 0;
    goto LABEL_4;
  }

  v11 = v10;
LABEL_4:

  return v11;
}

@end