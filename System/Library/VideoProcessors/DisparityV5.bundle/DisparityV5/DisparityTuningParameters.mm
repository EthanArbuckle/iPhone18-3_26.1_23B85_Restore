@interface DisparityTuningParameters
- (DisparityTuningParameters)init;
- (DisparityTuningParameters)initWithTuningDictionary:(id)a3 cameraInfoByPortType:(id)a4;
- (int)readAdaptiveCorrectionConfig:(id)a3 isUpdating:(BOOL)a4;
- (int)readCalibrationConfig:(id)a3 isUpdating:(BOOL)a4;
- (int)readDisparityClampingConfig:(id)a3 isUpdating:(BOOL)a4;
- (int)readLKTConfig:(id)a3 isUpdating:(BOOL)a4;
- (int)readMaxAnalogGain:(id)a3 isUpdating:(BOOL)a4;
- (int)updateTuningParametersWith:(id)a3;
- (void)setDefaultAdaptiveCorrectionParameters;
- (void)setDefaultCalibrationParameters;
- (void)setDefaultLKTParameters;
@end

@implementation DisparityTuningParameters

- (void)setDefaultAdaptiveCorrectionParameters
{
  *&self->_adaptiveCorrectionConfig.overrideConfigPass1.isValid = 0u;
  p_overrideConfigPass1 = &self->_adaptiveCorrectionConfig.overrideConfigPass1;
  *&p_overrideConfigPass1[-2].rangeOCxW_dist = xmmword_29577B5B0;
  *&p_overrideConfigPass1[-2].spgEpsilon = xmmword_29577B5C0;
  *&p_overrideConfigPass1[-1].isValid = xmmword_29577B5D0;
  *&p_overrideConfigPass1[-1].rangePFL_T = xmmword_29577B5D0;
  *&p_overrideConfigPass1[-1].rangeOCxT = xmmword_29577B5E0;
  LODWORD(p_overrideConfigPass1[-1].rangeOCyT) = 50;
  *&p_overrideConfigPass1[-1].rangeOCyW = xmmword_29577B5F0;
  p_overrideConfigPass1[-1].rangePFL_W_dist = 0.1;
  LOBYTE(p_overrideConfigPass1[-1].rangeOCxT_dist) = 1;
  p_overrideConfigPass1[-1].rangeOCxW_dist = 0.001;
  *&p_overrideConfigPass1[-1].minPointsForAdjustment = xmmword_29577B610;
  *&p_overrideConfigPass1[-1].spgMaxIterations = 0;
  *&p_overrideConfigPass1->rangePFL_T = 0u;
  *&p_overrideConfigPass1->rangeOCxT = 0u;
  *&p_overrideConfigPass1->rangeOCyT = 0u;
  *&p_overrideConfigPass1->rangePFL_T_dist = 0u;
  *&p_overrideConfigPass1->rangeOCxT_dist = 0u;
  *&p_overrideConfigPass1->minPointsForAdjustment = 0u;
  *&p_overrideConfigPass1->spgMaxIterations = 0;
  *&p_overrideConfigPass1[1].spgMaxIterations = 0;
  *&p_overrideConfigPass1[1].minPointsForAdjustment = 0u;
  *&p_overrideConfigPass1[1].rangeOCxT_dist = 0u;
  *&p_overrideConfigPass1[1].rangePFL_T_dist = 0u;
  *&p_overrideConfigPass1[1].rangeOCyT = 0u;
  *&p_overrideConfigPass1[1].rangeOCxT = 0u;
  *&p_overrideConfigPass1[1].rangePFL_T = 0u;
  *&p_overrideConfigPass1[1].isValid = 0u;
  *&p_overrideConfigPass1[2].isValid = 0u;
  *&p_overrideConfigPass1[2].rangePFL_T = 0u;
  *&p_overrideConfigPass1[2].rangeOCxT = 0u;
  *&p_overrideConfigPass1[2].rangeOCyT = 0u;
  *&p_overrideConfigPass1[2].rangePFL_T_dist = 0u;
  *&p_overrideConfigPass1[2].rangeOCxT_dist = 0u;
  *&p_overrideConfigPass1[2].minPointsForAdjustment = 0u;
  *&p_overrideConfigPass1[2].spgMaxIterations = 0;
}

- (void)setDefaultCalibrationParameters
{
  self->_defaultFocalLengthWideMaxDeviationMicrometers = 500.0;
  *&self->_keypointsDetectionThreshold = xmmword_29577B5A0;
  self->_alignAuxiliaryImageForKeypoints = 0;
}

- (void)setDefaultLKTParameters
{
  self->_useLKTKeypointDetection = 0;
  *&self->_bidirectionalError = 0x3E8000003DCCCCCDLL;
  self->_confidenceMinimum = 0.1125;
  *&self->_blockSize = 0x100000020;
  self->_nwarps = 4;
}

- (DisparityTuningParameters)init
{
  v53.receiver = self;
  v53.super_class = DisparityTuningParameters;
  v2 = [(DisparityTuningParameters *)&v53 init];
  v11 = v2;
  if (v2)
  {
    objc_msgSend_setDefaultCalibrationParameters(v2, v3, v4, v5, v6, v7, v8, v9, v10);
    objc_msgSend_setDefaultRPDParameters(v11, v12, v13, v14, v15, v16, v17, v18, v19);
    objc_msgSend_setDefaultAdaptiveCorrectionParameters(v11, v20, v21, v22, v23, v24, v25, v26, v27);
    objc_msgSend_setDefaultDisparityClampingParameters(v11, v28, v29, v30, v31, v32, v33, v34, v35);
    objc_msgSend_setDefaultLKTParameters(v11, v36, v37, v38, v39, v40, v41, v42, v43);
    objc_msgSend_setDefaultMaxAnalogGain(v11, v44, v45, v46, v47, v48, v49, v50, v51);
  }

  return v11;
}

- (DisparityTuningParameters)initWithTuningDictionary:(id)a3 cameraInfoByPortType:(id)a4
{
  v5 = a3;
  v84.receiver = self;
  v84.super_class = DisparityTuningParameters;
  v12 = [(DisparityTuningParameters *)&v84 init];
  if (!v12)
  {
    goto LABEL_13;
  }

  v14 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"Calibration", v7, v8, v9, v10, v11, v13);
  isUpdating = objc_msgSend_readCalibrationConfig_isUpdating_(v12, v15, v14, 0, v16, v17, v18, v19, v20);

  if (isUpdating)
  {
    sub_295773098();
LABEL_13:
    v82 = 0;
    goto LABEL_14;
  }

  v29 = objc_msgSend_objectForKeyedSubscript_(v5, v22, @"ADC", v23, v24, v25, v26, v27, v28);
  v36 = objc_msgSend_readAdaptiveCorrectionConfig_isUpdating_(v12, v30, v29, 0, v31, v32, v33, v34, v35);

  if (v36)
  {
    sub_295773110();
    goto LABEL_13;
  }

  v44 = objc_msgSend_objectForKeyedSubscript_(v5, v37, @"DisparityClamping", v38, v39, v40, v41, v42, v43);
  v51 = objc_msgSend_readDisparityClampingConfig_isUpdating_(v12, v45, v44, 0, v46, v47, v48, v49, v50);

  if (v51)
  {
    sub_295773188();
    goto LABEL_13;
  }

  v59 = objc_msgSend_objectForKeyedSubscript_(v5, v52, @"LKTParameters", v53, v54, v55, v56, v57, v58);

  objc_msgSend_setDefaultLKTParameters(v12, v60, v61, v62, v63, v64, v65, v66, v67);
  if (v59)
  {
    v75 = objc_msgSend_objectForKeyedSubscript_(v5, v68, @"LKTParameters", v69, v70, v71, v72, v73, v74);
    objc_msgSend_readLKTConfig_isUpdating_(v12, v76, v75, 0, v77, v78, v79, v80, v81);
  }

  if (objc_msgSend_readMaxAnalogGain_isUpdating_(v12, v68, v5, 0, v70, v71, v72, v73, v74))
  {
    sub_295773200();
    goto LABEL_13;
  }

  v82 = v12;
LABEL_14:

  return v82;
}

- (int)updateTuningParametersWith:(id)a3
{
  v4 = a3;
  v12 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"Calibration", v6, v7, v8, v9, v10, v11);
  isUpdating = objc_msgSend_readCalibrationConfig_isUpdating_(self, v13, v12, 1, v14, v15, v16, v17, v18);

  if (isUpdating)
  {
    sub_295773278();
  }

  else
  {
    v27 = objc_msgSend_objectForKeyedSubscript_(v4, v20, @"ADC", v21, v22, v23, v24, v25, v26);
    isUpdating = objc_msgSend_readAdaptiveCorrectionConfig_isUpdating_(self, v28, v27, 1, v29, v30, v31, v32, v33);

    if (isUpdating)
    {
      sub_2957732F0();
    }

    else
    {
      v41 = objc_msgSend_objectForKeyedSubscript_(v4, v34, @"DisparityClamping", v35, v36, v37, v38, v39, v40);
      isUpdating = objc_msgSend_readDisparityClampingConfig_isUpdating_(self, v42, v41, 1, v43, v44, v45, v46, v47);

      if (isUpdating)
      {
        sub_295773368();
      }

      else
      {
        v55 = objc_msgSend_objectForKeyedSubscript_(v4, v48, @"LKTParameters", v49, v50, v51, v52, v53, v54);

        if (v55)
        {
          v63 = objc_msgSend_objectForKeyedSubscript_(v4, v56, @"LKTParameters", v57, v58, v59, v60, v61, v62);
          objc_msgSend_readLKTConfig_isUpdating_(self, v64, v63, 1, v65, v66, v67, v68, v69);
        }

        isUpdating = objc_msgSend_readMaxAnalogGain_isUpdating_(self, v56, v4, 1, v58, v59, v60, v61, v62);
        if (isUpdating)
        {
          sub_2957733E0();
        }
      }
    }
  }

  return isUpdating;
}

- (int)readCalibrationConfig:(id)a3 isUpdating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    v16 = -12780;
    goto LABEL_4;
  }

  v7 = sub_295763E28();
  v16 = sub_295772098(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v28 = sub_295763E28();
    if (!sub_295772098(v28, v29, v30, v31, v32, v33, v34, v35, v36))
    {
      goto LABEL_12;
    }
  }

  else
  {
    self->_defaultFocalLengthTeleMicrometers = 0.0;
    v19 = sub_295763E28();
    v16 = sub_295772098(v19, v20, v21, v22, v23, v24, v25, v26, v27);
    if (!v16)
    {
LABEL_12:
      self->_defaultFocalLengthWideMicrometers = 0.0;
      goto LABEL_13;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_13:
  v37 = sub_295763E28();
  v16 = sub_295772098(v37, v38, v39, v40, v41, v42, v43, v44, v45);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v46 = sub_295763E28();
    if (!sub_295772098(v46, v47, v48, v49, v50, v51, v52, v53, v54))
    {
      goto LABEL_16;
    }
  }

  else
  {
    self->_defaultFocalLengthTeleMaxDeviationMicrometers = 0.0;
    v73 = sub_295763E28();
    v16 = sub_295772098(v73, v74, v75, v76, v77, v78, v79, v80, v81);
    if (!v16)
    {
LABEL_16:
      self->_defaultFocalLengthWideMaxDeviationMicrometers = 0.0;
      goto LABEL_17;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_17:
  v55 = sub_295763E28();
  v16 = sub_295772098(v55, v56, v57, v58, v59, v60, v61, v62, v63);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v64 = sub_295763E28();
    if (sub_2957720F0(v64, v65, v66, v67, v68, v69, v70, v71, v72))
    {
      goto LABEL_29;
    }
  }

  else
  {
    self->_keypointsDetectionThreshold = 0.0;
    v82 = sub_295763E28();
    v16 = sub_2957720F0(v82, v83, v84, v85, v86, v87, v88, v89, v90);
    if (v16)
    {
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  sub_295763E34();
  self->_alignAuxiliaryImageForKeypoints = v91;
LABEL_29:
  v16 = 0;
LABEL_4:
  if (v4)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (int)readAdaptiveCorrectionConfig:(id)a3 isUpdating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    v17 = 0;
    v18 = 0;
    LODWORD(v16) = -12780;
    goto LABEL_5;
  }

  *__src = 0;
  v7 = sub_295763E04();
  LODWORD(v16) = sub_2957726B4(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    if (!v4)
    {
LABEL_4:
      v17 = 0;
      v18 = 0;
      goto LABEL_5;
    }

    *__src = 0;
    v30 = sub_295763E04();
    if (!sub_2957726B4(v30, v31, v32, v33, v34, v35, v36, v37, v38))
    {
      goto LABEL_13;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.epErrorLimitWidePix_FirstPass = *__src;
    *__src = 0;
    v21 = sub_295763E04();
    LODWORD(v16) = sub_2957726B4(v21, v22, v23, v24, v25, v26, v27, v28, v29);
    if (!v16)
    {
LABEL_13:
      self->_adaptiveCorrectionConfig.epErrorLimitWidePix_SecondPass = *__src;
      goto LABEL_14;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_14:
  *__src = 0;
  v39 = sub_295763E04();
  LODWORD(v16) = sub_2957726B4(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    *__src = 0;
    v48 = sub_295763E04();
    if (!sub_2957726B4(v48, v49, v50, v51, v52, v53, v54, v55, v56))
    {
      goto LABEL_17;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.rangePFL_T = *__src;
    *__src = 0;
    v175 = sub_295763E04();
    LODWORD(v16) = sub_2957726B4(v175, v176, v177, v178, v179, v180, v181, v182, v183);
    if (!v16)
    {
LABEL_17:
      self->_adaptiveCorrectionConfig.rangePFL_W = *__src;
      goto LABEL_18;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_18:
  *__src = 0;
  v57 = sub_295763E04();
  LODWORD(v16) = sub_2957726B4(v57, v58, v59, v60, v61, v62, v63, v64, v65);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    *__src = 0;
    v66 = sub_295763E04();
    if (!sub_2957726B4(v66, v67, v68, v69, v70, v71, v72, v73, v74))
    {
      goto LABEL_21;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.rangeOCxT = *__src;
    *__src = 0;
    v184 = sub_295763E04();
    LODWORD(v16) = sub_2957726B4(v184, v185, v186, v187, v188, v189, v190, v191, v192);
    if (!v16)
    {
LABEL_21:
      self->_adaptiveCorrectionConfig.rangeOCxW = *__src;
      goto LABEL_22;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_22:
  *__src = 0;
  v75 = sub_295763E04();
  LODWORD(v16) = sub_2957726B4(v75, v76, v77, v78, v79, v80, v81, v82, v83);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    *__src = 0;
    v84 = sub_295763E04();
    if (!sub_2957726B4(v84, v85, v86, v87, v88, v89, v90, v91, v92))
    {
      goto LABEL_25;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.rangeOCyT = *__src;
    *__src = 0;
    v193 = sub_295763E04();
    LODWORD(v16) = sub_2957726B4(v193, v194, v195, v196, v197, v198, v199, v200, v201);
    if (!v16)
    {
LABEL_25:
      self->_adaptiveCorrectionConfig.rangeOCyW = *__src;
      goto LABEL_26;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_26:
  *__src = 0;
  v93 = sub_295763E04();
  LODWORD(v16) = sub_2957726B4(v93, v94, v95, v96, v97, v98, v99, v100, v101);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    *__src = 0;
    v102 = sub_295763E04();
    if (!sub_2957726B4(v102, v103, v104, v105, v106, v107, v108, v109, v110))
    {
      goto LABEL_29;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.intermediateMacroDistMM = *__src;
    *__src = 0;
    v202 = sub_295763E04();
    LODWORD(v16) = sub_2957726B4(v202, v203, v204, v205, v206, v207, v208, v209, v210);
    if (!v16)
    {
LABEL_29:
      self->_adaptiveCorrectionConfig.extremeMacroDistMM = *__src;
      goto LABEL_30;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_30:
  __src[0] = 0.0;
  v111 = sub_295763E04();
  LODWORD(v16) = sub_2957720F0(v111, v112, v113, v114, v115, v116, v117, v118, v119);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    *__src = 0;
    v120 = sub_295763E04();
    if (!sub_2957726B4(v120, v121, v122, v123, v124, v125, v126, v127, v128))
    {
      goto LABEL_33;
    }
  }

  else
  {
    *&self->_adaptiveCorrectionConfig.minPointsForAdjustment = __src[0];
    *__src = 0;
    v211 = sub_295763E04();
    LODWORD(v16) = sub_2957726B4(v211, v212, v213, v214, v215, v216, v217, v218, v219);
    if (!v16)
    {
LABEL_33:
      self->_adaptiveCorrectionConfig.errorVal_GreaterThanInf = *__src;
      goto LABEL_34;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_34:
  *__src = 0;
  v129 = sub_295763E04();
  LODWORD(v16) = sub_2957726B4(v129, v130, v131, v132, v133, v134, v135, v136, v137);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    *__src = 0;
    v138 = sub_295763E04();
    if (!sub_2957726B4(v138, v139, v140, v141, v142, v143, v144, v145, v146))
    {
      goto LABEL_37;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.errorVal_LessThanExtremeMacro = *__src;
    *__src = 0;
    v220 = sub_295763E04();
    LODWORD(v16) = sub_2957726B4(v220, v221, v222, v223, v224, v225, v226, v227, v228);
    if (!v16)
    {
LABEL_37:
      self->_adaptiveCorrectionConfig.errorVal_BetweenIntermediate_ExtremeMacro = *__src;
      goto LABEL_38;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_38:
  *__src = 0;
  v147 = sub_295763E04();
  LODWORD(v16) = sub_2957726B4(v147, v148, v149, v150, v151, v152, v153, v154, v155);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    __src[0] = 0.0;
    v156 = sub_295763E04();
    if (!sub_2957720F0(v156, v157, v158, v159, v160, v161, v162, v163, v164))
    {
      goto LABEL_41;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.spgEpsilon = *__src;
    __src[0] = 0.0;
    v229 = sub_295763E04();
    LODWORD(v16) = sub_2957720F0(v229, v230, v231, v232, v233, v234, v235, v236, v237);
    if (!v16)
    {
LABEL_41:
      sub_295763E34();
      self->_adaptiveCorrectionConfig.runAnalyticalPreconditioning = v165;
      goto LABEL_42;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_42:
  __src[0] = 0.0;
  v166 = sub_295763E04();
  LODWORD(v16) = sub_295772098(v166, v167, v168, v169, v170, v171, v172, v173, v174);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.keypointOutliersPercentile = __src[0];
  }

  __src[0] = 0.0;
  v238 = sub_295763E04();
  if (!sub_295772098(v238, v239, v240, v241, v242, v243, v244, v245, v246))
  {
    self->_adaptiveCorrectionConfig.epErrorLimitTelePix_ParallelCorrection = __src[0];
  }

  __src[0] = 0.0;
  v247 = sub_295763E04();
  LODWORD(v16) = sub_295772098(v247, v248, v249, v250, v251, v252, v253, v254, v255);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    __src[0] = 0.0;
    v256 = sub_295763E04();
    if (sub_295772098(v256, v257, v258, v259, v260, v261, v262, v263, v264))
    {
      goto LABEL_74;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.temporalFilteringStrength = __src[0];
    __src[0] = 0.0;
    v304 = sub_295763E04();
    LODWORD(v16) = sub_295772098(v304, v305, v306, v307, v308, v309, v310, v311, v312);
    if (v16)
    {
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_74;
    }
  }

  self->_adaptiveCorrectionConfig.temporalFilteringStrengthParallel = __src[0];
LABEL_74:
  __src[0] = 0.0;
  v265 = sub_295763E04();
  if (!sub_295772098(v265, v266, v267, v268, v269, v270, v271, v272, v273))
  {
    self->_adaptiveCorrectionConfig.temporalInitializationFactor = __src[0];
  }

  __src[0] = 0.0;
  v274 = sub_295763E04();
  if (!sub_295772098(v274, v275, v276, v277, v278, v279, v280, v281, v282))
  {
    v289 = __src[0];
    self->_adaptiveCorrectionConfig.scaleTuningWithDigitalZoomByFactor = __src[0];
  }

  self->_adaptiveCorrectionConfig.spgEpsilon = 0.0;
  v315 = objc_msgSend_objectForKeyedSubscript_(v6, v283, @"overrideConfigPass1", v284, v285, v286, v287, v288, v289);
  if (v315)
  {
    sub_29577270C(&self->_adaptiveCorrectionConfig, v315, 50, __src, self->_adaptiveCorrectionConfig.epErrorLimitWidePix_FirstPass);
    memcpy(&self->_adaptiveCorrectionConfig.overrideConfigPass1, __src, sizeof(self->_adaptiveCorrectionConfig.overrideConfigPass1));
  }

  v314 = objc_msgSend_objectForKeyedSubscript_(v6, v290, @"overrideConfigPass2", v291, v292, v293, v294, v295, v296);
  if (v314)
  {
    sub_29577270C(&self->_adaptiveCorrectionConfig, v314, 50, __src, self->_adaptiveCorrectionConfig.epErrorLimitWidePix_SecondPass);
    memcpy(&self->_adaptiveCorrectionConfig.overrideConfigPass2, __src, sizeof(self->_adaptiveCorrectionConfig.overrideConfigPass2));
  }

  v16 = objc_msgSend_objectForKeyedSubscript_(v6, v297, @"overrideConfigPassDist", v298, v299, v300, v301, v302, v303);
  if (v16)
  {
    v313 = v16;
    sub_29577270C(&self->_adaptiveCorrectionConfig, v16, 100, __src, self->_adaptiveCorrectionConfig.epErrorLimitWidePix_SecondPass);
    memcpy(&self->_adaptiveCorrectionConfig.overrideConfigPassDist, __src, sizeof(self->_adaptiveCorrectionConfig.overrideConfigPassDist));

    LODWORD(v16) = 0;
  }

  v18 = v314;
  v17 = v315;
LABEL_5:
  if (v4)
  {
    v19 = 0;
  }

  else
  {
    v19 = v16;
  }

  return v19;
}

- (int)readDisparityClampingConfig:(id)a3 isUpdating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_23;
  }

  v31 = 0.0;
  v7 = sub_295763E1C();
  v16 = sub_295772098(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v30 = 0.0;
    if (sub_295772098(v6, @"maxDisparityPercentile", &v30, v17, v18, v19, v20, v21, v22))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v25 = v31;
    self->_minDisparityClampingPercentile = v31;
    v30 = 0.0;
    v16 = sub_295772098(v6, @"maxDisparityPercentile", &v30, v17, v18, v19, v20, v21, v25);
    if (v16)
    {
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  self->_maxDisparityClampingPercentile = v30;
LABEL_13:
  minDisparityClampingPercentile = self->_minDisparityClampingPercentile;
  if (minDisparityClampingPercentile >= 0.0 && minDisparityClampingPercentile <= 1.0)
  {
    maxDisparityClampingPercentile = self->_maxDisparityClampingPercentile;
    if (maxDisparityClampingPercentile >= 0.0 && maxDisparityClampingPercentile <= 1.0)
    {
      v16 = 0;
      goto LABEL_4;
    }
  }

  fig_log_get_emitter();
  sub_295763DEC();
  FigDebugAssert3();
LABEL_23:
  v16 = -12780;
LABEL_4:
  if (v4)
  {
    v23 = 0;
  }

  else
  {
    v23 = v16;
  }

  return v23;
}

- (int)readLKTConfig:(id)a3 isUpdating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_43;
  }

  v7 = sub_295763E1C();
  v16 = sub_2957720F0(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v29 = sub_295763E1C();
    if (!sub_295772098(v29, v30, v31, v32, v33, v34, v35, v36, v37))
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_295763E34();
    self->_useLKTKeypointDetection = v19;
    v20 = sub_295763E1C();
    v16 = sub_295772098(v20, v21, v22, v23, v24, v25, v26, v27, v28);
    if (!v16)
    {
LABEL_12:
      self->_bidirectionalError = 0.0;
      goto LABEL_13;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_13:
  v38 = sub_295763E1C();
  v16 = sub_295772098(v38, v39, v40, v41, v42, v43, v44, v45, v46);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v47 = sub_295763E1C();
    if (!sub_295772098(v47, v48, v49, v50, v51, v52, v53, v54, v55))
    {
      goto LABEL_16;
    }
  }

  else
  {
    self->_confidenceRadialWeight = 0.0;
    v83 = sub_295763E1C();
    v16 = sub_295772098(v83, v84, v85, v86, v87, v88, v89, v90, v91);
    if (!v16)
    {
LABEL_16:
      self->_confidenceMinimum = 0.0;
      goto LABEL_17;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_17:
  v56 = sub_295763E1C();
  v16 = sub_2957720F0(v56, v57, v58, v59, v60, v61, v62, v63, v64);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v65 = sub_295763E1C();
    if (sub_2957720F0(v65, v66, v67, v68, v69, v70, v71, v72, v73))
    {
      goto LABEL_21;
    }
  }

  else
  {
    self->_blockSize = 0;
    v92 = sub_295763E1C();
    v16 = sub_2957720F0(v92, v93, v94, v95, v96, v97, v98, v99, v100);
    if (v16)
    {
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  self->_lastScale = 0;
LABEL_21:
  v74 = sub_295763E1C();
  v16 = sub_2957720F0(v74, v75, v76, v77, v78, v79, v80, v81, v82);
  if (v16)
  {
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    self->_nwarps = 0;
  }

  if (self->_bidirectionalError >= 0.0)
  {
    confidenceRadialWeight = self->_confidenceRadialWeight;
    if (confidenceRadialWeight >= 0.0 && confidenceRadialWeight <= 1.0 && self->_confidenceMinimum >= 0.0 && (self->_blockSize & 0x80000000) == 0 && (self->_lastScale & 0x80000000) == 0)
    {
      nwarps = self->_nwarps;
      if (nwarps > 1 && (nwarps & 1) == 0)
      {
        v16 = 0;
        goto LABEL_4;
      }
    }
  }

  fig_log_get_emitter();
  sub_295763DEC();
  FigDebugAssert3();
LABEL_43:
  v16 = -12780;
LABEL_4:
  if (v4)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (int)readMaxAnalogGain:(id)a3 isUpdating:(BOOL)a4
{
  v13 = a3;
  if (!a4)
  {
    objc_msgSend_setDefaultMaxAnalogGain(self, v6, v7, v8, v9, v10, v11, v12, v14);
  }

  v15 = sub_295763E28();
  if (!sub_295772098(v15, v16, v17, v18, v19, v20, v21, v22, v23))
  {
    self->_maxAnalogGain = 0.0;
  }

  return 0;
}

@end