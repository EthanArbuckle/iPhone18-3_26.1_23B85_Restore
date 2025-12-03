@interface ADCTuningParameters
- (ADCTuningParameters)init;
- (ADCTuningParameters)initWithDictionary:(id)dictionary;
- (BOOL)readAdaptiveCorrectionConfig:(id)config;
- (float)checkAndCorrectFocalLengthTele:(float)result;
- (float)checkAndCorrectFocalLengthWide:(float)result;
@end

@implementation ADCTuningParameters

- (ADCTuningParameters)init
{
  v6.receiver = self;
  v6.super_class = ADCTuningParameters;
  v2 = [(ADCTuningParameters *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 6) = 1140457472;
    *(v2 + 8) = xmmword_29577B5A0;
    *(v2 + 2) = xmmword_29577B5B0;
    *(v2 + 3) = xmmword_29577B5C0;
    *(v2 + 4) = xmmword_29577B5D0;
    *(v2 + 5) = xmmword_29577B5D0;
    *(v2 + 6) = xmmword_29577B5E0;
    *(v2 + 28) = 50;
    *(v2 + 120) = xmmword_29577B5F0;
    *(v2 + 17) = 0x3FB999999999999ALL;
    v2[144] = 1;
    *(v2 + 19) = 0x3F50624DD2F1A9FCLL;
    *(v2 + 20) = 0x4080000000000000;
    *(v2 + 21) = 0;
    *(v2 + 22) = 0;
    *(v2 + 200) = 0u;
    *(v2 + 216) = 0u;
    *(v2 + 232) = 0u;
    *(v2 + 248) = 0u;
    *(v2 + 37) = 0;
    *(v2 + 184) = 0u;
    *(v2 + 264) = 0u;
    *(v2 + 280) = 0u;
    *(v2 + 52) = 0;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 424) = 0u;
    *(v2 + 440) = 0u;
    *(v2 + 456) = 0u;
    *(v2 + 472) = 0u;
    *(v2 + 488) = 0u;
    *(v2 + 504) = 0u;
    *(v2 + 520) = 0u;
    *(v2 + 67) = 0;
    v4 = v2;
  }

  return v3;
}

- (float)checkAndCorrectFocalLengthTele:(float)result
{
  defaultFocalLengthTeleMicrometers = self->_defaultFocalLengthTeleMicrometers;
  defaultFocalLengthTeleMaxDeviationMicrometers = self->_defaultFocalLengthTeleMaxDeviationMicrometers;
  if ((defaultFocalLengthTeleMicrometers + defaultFocalLengthTeleMaxDeviationMicrometers) < result || (defaultFocalLengthTeleMicrometers - defaultFocalLengthTeleMaxDeviationMicrometers) > result)
  {
    return self->_defaultFocalLengthTeleMicrometers;
  }

  return result;
}

- (float)checkAndCorrectFocalLengthWide:(float)result
{
  defaultFocalLengthWideMicrometers = self->_defaultFocalLengthWideMicrometers;
  defaultFocalLengthWideMaxDeviationMicrometers = self->_defaultFocalLengthWideMaxDeviationMicrometers;
  if ((defaultFocalLengthWideMicrometers + defaultFocalLengthWideMaxDeviationMicrometers) < result || (defaultFocalLengthWideMicrometers - defaultFocalLengthWideMaxDeviationMicrometers) > result)
  {
    return self->_defaultFocalLengthWideMicrometers;
  }

  return result;
}

- (BOOL)readAdaptiveCorrectionConfig:(id)config
{
  configCopy = config;
  v5 = configCopy;
  if (!configCopy)
  {
    goto LABEL_28;
  }

  sub_29576283C(configCopy, "epErrorLimitWidePix_FirstPass", &self->_adaptiveCorrectionConfig.epErrorLimitWidePix_FirstPass);
  if (!v6)
  {
    goto LABEL_28;
  }

  sub_29576283C(v5, "epErrorLimitWidePix_SecondPass", &self->_adaptiveCorrectionConfig.epErrorLimitWidePix_SecondPass);
  if (!v7)
  {
    goto LABEL_28;
  }

  sub_29576283C(v5, "rangePFL_T", &self->_adaptiveCorrectionConfig.rangePFL_T);
  if (!v8)
  {
    goto LABEL_28;
  }

  sub_29576283C(v5, "rangePFL_W", &self->_adaptiveCorrectionConfig.rangePFL_W);
  if (!v9)
  {
    goto LABEL_28;
  }

  sub_29576283C(v5, "rangeOCxT", &self->_adaptiveCorrectionConfig.rangeOCxT);
  if (!v10)
  {
    goto LABEL_28;
  }

  sub_29576283C(v5, "rangeOCxW", &self->_adaptiveCorrectionConfig.rangeOCxW);
  if (!v11)
  {
    goto LABEL_28;
  }

  sub_29576283C(v5, "rangeOCyT", &self->_adaptiveCorrectionConfig.rangeOCyT);
  if (!v12)
  {
    goto LABEL_28;
  }

  sub_29576283C(v5, "rangeOCyW", &self->_adaptiveCorrectionConfig.rangeOCyW);
  if (!v13)
  {
    goto LABEL_28;
  }

  sub_29576283C(v5, "intermediateMacroDistMM", &self->_adaptiveCorrectionConfig.intermediateMacroDistMM);
  if (!v14)
  {
    goto LABEL_28;
  }

  sub_29576283C(v5, "extremeMacroDistMM", &self->_adaptiveCorrectionConfig.extremeMacroDistMM);
  if (!v15)
  {
    goto LABEL_28;
  }

  v16 = MEMORY[0x29EDBA0F8];
  v17 = v5;
  objc_msgSend_stringWithUTF8String_(v16, v18, "minPointsForAdjustment", v19, v20, v21, v22, v23, v24);
  LODWORD(v16) = FigCFDictionaryGetInt32IfPresent();

  if (!v16)
  {
    goto LABEL_28;
  }

  self->_adaptiveCorrectionConfig.minPointsForAdjustment = 0;
  sub_29576283C(v17, "errorVal_GreaterThanInf", &self->_adaptiveCorrectionConfig.errorVal_GreaterThanInf);
  if (!v25)
  {
    goto LABEL_28;
  }

  sub_29576283C(v17, "errorVal_LessThanExtremeMacro", &self->_adaptiveCorrectionConfig.errorVal_LessThanExtremeMacro);
  if (v26 && (sub_29576283C(v17, "errorVal_BetweenIntermediate_ExtremeMacro", &self->_adaptiveCorrectionConfig.errorVal_BetweenIntermediate_ExtremeMacro), v27) && (sub_29576283C(v17, "spgEpsilon", &self->_adaptiveCorrectionConfig.spgEpsilon), v28) && (sub_2957628D8(v17, "keypointOutliersPercentile", &self->_adaptiveCorrectionConfig.keypointOutliersPercentile), v29) && (sub_2957628D8(v17, "temporalFilteringStrength", &self->_adaptiveCorrectionConfig.temporalFilteringStrength), v30) && (v37 = sub_2957628D8(v17, "temporalFilteringStrengthParallel", &self->_adaptiveCorrectionConfig.temporalFilteringStrengthParallel), v38))
  {
    v39 = objc_msgSend_objectForKeyedSubscript_(v17, v31, @"runAnalyticalPreconditioning", v32, v33, v34, v35, v36, v37);
    v48 = v39;
    if (v39)
    {
      self->_adaptiveCorrectionConfig.runAnalyticalPreconditioning = objc_msgSend_intValue(v39, v40, v41, v42, v43, v44, v45, v46, v47) != 0;
      sub_2957628D8(v17, "epErrorLimitTelePix_ParallelCorrection", &self->_adaptiveCorrectionConfig.epErrorLimitTelePix_ParallelCorrection);
      if ((v49 & 1) == 0)
      {
        epErrorLimitWidePix_SecondPass = self->_adaptiveCorrectionConfig.epErrorLimitWidePix_SecondPass;
        self->_adaptiveCorrectionConfig.epErrorLimitTelePix_ParallelCorrection = epErrorLimitWidePix_SecondPass;
      }

      sub_2957628D8(v17, "temporalInitializationFactor", &self->_adaptiveCorrectionConfig.temporalInitializationFactor);
      if ((v51 & 1) == 0)
      {
        self->_adaptiveCorrectionConfig.temporalInitializationFactor = 0.0;
      }

      sub_2957628D8(v17, "scaleTuningWithDigitalZoomByFactor", &self->_adaptiveCorrectionConfig.scaleTuningWithDigitalZoomByFactor);
      if ((v52 & 1) == 0)
      {
        self->_adaptiveCorrectionConfig.scaleTuningWithDigitalZoomByFactor = 0.0;
      }

      v53 = 1;
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
LABEL_28:
    v53 = 0;
    v48 = 0;
  }

  return v53;
}

- (ADCTuningParameters)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19 = objc_msgSend_init(self, v5, v6, v7, v8, v9, v10, v11, v12);
  if (!v19)
  {
    v43 = 0;
    v22 = 0;
    goto LABEL_12;
  }

  v21 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v13, @"Calibration", v14, v15, v16, v17, v18, v20);
  v22 = v21;
  if (!v21 || (sub_2957628D8(v21, "defaultFocalLengthTeleMicrometers", v19 + 3), !v23) || (sub_2957628D8(v22, "defaultFocalLengthWideMicrometers", v19 + 5), !v24) || (sub_2957628D8(v22, "defaultFocalLengthTeleMaxDeviationMicrometers", v19 + 4), !v25) || (sub_2957628D8(v22, "defaultFocalLengthWideMaxDeviationMicrometers", v19 + 6), !v26) || (v33 = sub_2957628D8(v22, "keypointsDetectionThreshold", v19 + 2), !v34))
  {
    v43 = 0;
LABEL_12:
    v35 = 0;
    goto LABEL_10;
  }

  v35 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v27, @"ADC", v28, v29, v30, v31, v32, v33);
  if (objc_msgSend_readAdaptiveCorrectionConfig_(v19, v36, v35, v37, v38, v39, v40, v41, v42))
  {
    v43 = v19;
  }

  else
  {
    v43 = 0;
  }

LABEL_10:

  return v43;
}

@end