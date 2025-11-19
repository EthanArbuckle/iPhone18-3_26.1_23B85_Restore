@interface CalibrationTuningParameters
- (CalibrationTuningParameters)init;
- (CalibrationTuningParameters)initWithTuningDictionary:(id)a3 cameraInfoByPortType:(id)a4;
- (int)readAdaptiveCorrectionConfig:(id)a3 isUpdating:(BOOL)a4;
- (int)readCalibrationConfig:(id)a3 isUpdating:(BOOL)a4;
- (int)updateTuningParametersWith:(id)a3;
- (void)setDefaultAdaptiveCorrectionParameters;
@end

@implementation CalibrationTuningParameters

- (void)setDefaultAdaptiveCorrectionParameters
{
  *&self->_adaptiveCorrectionConfig.epErrorLimitWidePix_FirstPass = xmmword_29570C870;
  *&self->_adaptiveCorrectionConfig.rangePFL_T = xmmword_29570C880;
  *&self->_adaptiveCorrectionConfig.rangeOCxT = xmmword_29570C890;
  *&self->_adaptiveCorrectionConfig.rangeOCyW = xmmword_29570C8A0;
  self->_adaptiveCorrectionConfig.extremeMacroDistMM = 300.0;
  self->_adaptiveCorrectionConfig.minPointsForAdjustment = 50;
  *&self->_adaptiveCorrectionConfig.errorVal_GreaterThanInf = xmmword_29570C8B0;
  self->_adaptiveCorrectionConfig.errorVal_BetweenIntermediate_ExtremeMacro = 0.1;
  self->_adaptiveCorrectionConfig.runAnalyticalPreconditioning = 1;
  self->_adaptiveCorrectionConfig.spgEpsilon = 0.001;
  *&self->_adaptiveCorrectionConfig.keypointOutliersPercentile = 0x4080000000000000;
  *&self->_adaptiveCorrectionConfig.temporalFilteringStrength = 0;
  *&self->_adaptiveCorrectionConfig.temporalInitializationFactor = 0;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass1.isValid = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass1.rangePFL_T = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass1.rangeOCxT = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass1.rangeOCyT = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass1.rangePFL_T_dist = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass1.rangeOCxT_dist = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass1.minPointsForAdjustment = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass1.spgMaxIterations = 0;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass2.spgMaxIterations = 0;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass2.rangeOCxT_dist = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass2.minPointsForAdjustment = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass2.rangeOCyT = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass2.rangePFL_T_dist = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass2.rangePFL_T = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass2.rangeOCxT = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPass2.isValid = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPassDist.isValid = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPassDist.rangePFL_T = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPassDist.rangeOCxT = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPassDist.rangeOCyT = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPassDist.rangePFL_T_dist = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPassDist.rangeOCxT_dist = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPassDist.minPointsForAdjustment = 0u;
  *&self->_adaptiveCorrectionConfig.overrideConfigPassDist.spgMaxIterations = 0;
}

- (CalibrationTuningParameters)init
{
  v20.receiver = self;
  v20.super_class = CalibrationTuningParameters;
  v2 = [(CalibrationTuningParameters *)&v20 init];
  v8 = v2;
  if (v2)
  {
    objc_msgSend_setDefaultCalibrationParameters(v2, v3, v4, v5, v6, v7);
    objc_msgSend_setDefaultRPDParameters(v8, v9, v10, v11, v12, v13);
    objc_msgSend_setDefaultAdaptiveCorrectionParameters(v8, v14, v15, v16, v17, v18);
  }

  return v8;
}

- (CalibrationTuningParameters)initWithTuningDictionary:(id)a3 cameraInfoByPortType:(id)a4
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = CalibrationTuningParameters;
  v10 = [(CalibrationTuningParameters *)&v27 init];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"Calibration", v7, v8, v9);
  isUpdating = objc_msgSend_readCalibrationConfig_isUpdating_(v10, v12, v11, 0, v13, v14);

  if (isUpdating)
  {
    sub_295703ECC();
LABEL_7:
    v25 = 0;
    goto LABEL_8;
  }

  v20 = objc_msgSend_objectForKeyedSubscript_(v5, v16, @"ADC", v17, v18, v19);
  v24 = objc_msgSend_readAdaptiveCorrectionConfig_isUpdating_(v10, v21, v20, 0, v22, v23);

  if (v24)
  {
    sub_295703F44();
    goto LABEL_7;
  }

  v25 = v10;
LABEL_8:

  return v25;
}

- (int)updateTuningParametersWith:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"Calibration", v6, v7, v8);
  isUpdating = objc_msgSend_readCalibrationConfig_isUpdating_(self, v10, v9, 1, v11, v12);

  if (isUpdating)
  {
    sub_295703FBC();
  }

  else
  {
    v18 = objc_msgSend_objectForKeyedSubscript_(v4, v14, @"ADC", v15, v16, v17);
    isUpdating = objc_msgSend_readAdaptiveCorrectionConfig_isUpdating_(self, v19, v18, 1, v20, v21);

    if (isUpdating)
    {
      sub_295704034();
    }
  }

  return isUpdating;
}

- (int)readCalibrationConfig:(id)a3 isUpdating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v13 = v6;
  if (!v6)
  {
    LODWORD(v14) = -12780;
    goto LABEL_4;
  }

  v14 = sub_2956F6FCC(v6, @"defaultFocalLengthTeleMicrometers", v7, v8, v9, v10, v11, v12, v41, v46, 0);
  if (v14)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v14 = sub_2956F6FCC(v14, @"defaultFocalLengthWideMicrometers", v15, v16, v17, v18, v19, v20, v42, v47, 0);
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    self->_defaultFocalLengthTeleMicrometers = v51;
    v14 = sub_2956F6FCC(v14, @"defaultFocalLengthWideMicrometers", v15, v16, v17, v18, v19, v20, v42, v47, 0);
    if (!v14)
    {
LABEL_12:
      self->_defaultFocalLengthWideMicrometers = v52;
      goto LABEL_13;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_13:
  v14 = sub_2956F6FCC(v14, @"defaultFocalLengthTeleMaxDeviationMicrometers", v23, v24, v25, v26, v27, v28, v43, v48, 0);
  if (v14)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v14 = sub_2956F6FCC(v14, @"defaultFocalLengthWideMaxDeviationMicrometers", v29, v30, v31, v32, v33, v34, v44, v49, 0);
    if (v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    self->_defaultFocalLengthTeleMaxDeviationMicrometers = v53;
    v14 = sub_2956F6FCC(v14, @"defaultFocalLengthWideMaxDeviationMicrometers", v29, v30, v31, v32, v33, v34, v44, v49, 0);
    if (v14)
    {
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  self->_defaultFocalLengthWideMaxDeviationMicrometers = v54;
LABEL_17:
  LODWORD(v14) = sub_2956F6FCC(v14, @"keypointsDetectionThreshold", v35, v36, v37, v38, v39, v40, v45, v50, 0);
  if (v14)
  {
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    self->_keypointsDetectionThreshold = v55;
  }

  LODWORD(v14) = 0;
LABEL_4:
  if (v4)
  {
    v21 = 0;
  }

  else
  {
    v21 = v14;
  }

  return v21;
}

- (int)readAdaptiveCorrectionConfig:(id)a3 isUpdating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    v13 = -12780;
    goto LABEL_4;
  }

  v7 = sub_2956F6FC0();
  v13 = sub_295703D68(v7, v8, v9, v10, v11, v12);
  if (v13)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v22 = sub_2956F6FC0();
    if (!sub_295703D68(v22, v23, v24, v25, v26, v27))
    {
      goto LABEL_12;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.epErrorLimitWidePix_FirstPass = 0.0;
    v16 = sub_2956F6FC0();
    v13 = sub_295703D68(v16, v17, v18, v19, v20, v21);
    if (!v13)
    {
LABEL_12:
      self->_adaptiveCorrectionConfig.epErrorLimitWidePix_SecondPass = 0.0;
      goto LABEL_13;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_13:
  v28 = sub_2956F6FC0();
  v13 = sub_295703D68(v28, v29, v30, v31, v32, v33);
  if (v13)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v34 = sub_2956F6FC0();
    if (!sub_295703D68(v34, v35, v36, v37, v38, v39))
    {
      goto LABEL_16;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.rangePFL_T = 0.0;
    v142 = sub_2956F6FC0();
    v13 = sub_295703D68(v142, v143, v144, v145, v146, v147);
    if (!v13)
    {
LABEL_16:
      self->_adaptiveCorrectionConfig.rangePFL_W = 0.0;
      goto LABEL_17;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_17:
  v40 = sub_2956F6FC0();
  v13 = sub_295703D68(v40, v41, v42, v43, v44, v45);
  if (v13)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v46 = sub_2956F6FC0();
    if (!sub_295703D68(v46, v47, v48, v49, v50, v51))
    {
      goto LABEL_20;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.rangeOCxT = 0.0;
    v148 = sub_2956F6FC0();
    v13 = sub_295703D68(v148, v149, v150, v151, v152, v153);
    if (!v13)
    {
LABEL_20:
      self->_adaptiveCorrectionConfig.rangeOCxW = 0.0;
      goto LABEL_21;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_21:
  v52 = sub_2956F6FC0();
  v13 = sub_295703D68(v52, v53, v54, v55, v56, v57);
  if (v13)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v58 = sub_2956F6FC0();
    if (!sub_295703D68(v58, v59, v60, v61, v62, v63))
    {
      goto LABEL_24;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.rangeOCyW = 0.0;
    v154 = sub_2956F6FC0();
    v13 = sub_295703D68(v154, v155, v156, v157, v158, v159);
    if (!v13)
    {
LABEL_24:
      self->_adaptiveCorrectionConfig.intermediateMacroDistMM = 0.0;
      goto LABEL_25;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_25:
  v64 = sub_2956F6FC0();
  v13 = sub_295703D68(v64, v65, v66, v67, v68, v69);
  if (v13)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v70 = sub_2956F6FC0();
    if (!sub_295703DC0(v70, v71, v72, v73, v74, v75))
    {
      goto LABEL_28;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.extremeMacroDistMM = 0.0;
    v160 = sub_2956F6FC0();
    v13 = sub_295703DC0(v160, v161, v162, v163, v164, v165);
    if (!v13)
    {
LABEL_28:
      self->_adaptiveCorrectionConfig.minPointsForAdjustment = 0;
      goto LABEL_29;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_29:
  v76 = sub_2956F6FC0();
  v13 = sub_295703D68(v76, v77, v78, v79, v80, v81);
  if (v13)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v82 = sub_2956F6FC0();
    if (!sub_295703D68(v82, v83, v84, v85, v86, v87))
    {
      goto LABEL_32;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.errorVal_GreaterThanInf = 0.0;
    v166 = sub_2956F6FC0();
    v13 = sub_295703D68(v166, v167, v168, v169, v170, v171);
    if (!v13)
    {
LABEL_32:
      self->_adaptiveCorrectionConfig.errorVal_LessThanExtremeMacro = 0.0;
      goto LABEL_33;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_33:
  v88 = sub_2956F6FC0();
  v13 = sub_295703D68(v88, v89, v90, v91, v92, v93);
  if (v13)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v94 = sub_2956F6FC0();
    if (!sub_295703D68(v94, v95, v96, v97, v98, v99))
    {
      goto LABEL_36;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.errorVal_BetweenIntermediate_ExtremeMacro = 0.0;
    v172 = sub_2956F6FC0();
    v13 = sub_295703D68(v172, v173, v174, v175, v176, v177);
    if (!v13)
    {
LABEL_36:
      self->_adaptiveCorrectionConfig.spgEpsilon = 0.0;
      goto LABEL_37;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_37:
  v100 = sub_2956F6FC0();
  v13 = sub_295703DC0(v100, v101, v102, v103, v104, v105);
  if (v13)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v106 = sub_2956F6FC0();
    if (!sub_2957038C4(v106, v107, v108, v109, v110, v111))
    {
      goto LABEL_40;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.runAnalyticalPreconditioning = 0;
    v178 = sub_2956F6FC0();
    v13 = sub_2957038C4(v178, v179, v180, v181, v182, v183);
    if (!v13)
    {
LABEL_40:
      self->_adaptiveCorrectionConfig.keypointOutliersPercentile = 0.0;
      goto LABEL_41;
    }

    if (!v4)
    {
      goto LABEL_4;
    }
  }

LABEL_41:
  v112 = sub_2956F6FC0();
  if (!sub_2957038C4(v112, v113, v114, v115, v116, v117))
  {
    self->_adaptiveCorrectionConfig.epErrorLimitTelePix_ParallelCorrection = 0.0;
  }

  v118 = sub_2956F6FC0();
  v13 = sub_2957038C4(v118, v119, v120, v121, v122, v123);
  if (v13)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

    v124 = sub_2956F6FC0();
    if (sub_2957038C4(v124, v125, v126, v127, v128, v129))
    {
      goto LABEL_47;
    }
  }

  else
  {
    self->_adaptiveCorrectionConfig.temporalFilteringStrength = 0.0;
    v184 = sub_2956F6FC0();
    v13 = sub_2957038C4(v184, v185, v186, v187, v188, v189);
    if (v13)
    {
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  self->_adaptiveCorrectionConfig.temporalFilteringStrengthParallel = 0.0;
LABEL_47:
  v130 = sub_2956F6FC0();
  if (!sub_2957038C4(v130, v131, v132, v133, v134, v135))
  {
    self->_adaptiveCorrectionConfig.temporalInitializationFactor = 0.0;
  }

  v136 = sub_2956F6FC0();
  if (!sub_2957038C4(v136, v137, v138, v139, v140, v141))
  {
    self->_adaptiveCorrectionConfig.scaleTuningWithDigitalZoomByFactor = 0.0;
  }

  v13 = 0;
LABEL_4:
  if (v4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

@end