@interface ADCTuningParameters
- (ADCTuningParameters)init;
- (ADCTuningParameters)initWithDictionary:(id)a3;
- (BOOL)readAdaptiveCorrectionConfig:(id)a3;
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
    *(v2 + 8) = xmmword_29570C8C0;
    *(v2 + 2) = xmmword_29570C870;
    *(v2 + 3) = xmmword_29570C880;
    *(v2 + 4) = xmmword_29570C890;
    *(v2 + 5) = xmmword_29570C890;
    *(v2 + 6) = xmmword_29570C990;
    *(v2 + 28) = 50;
    *(v2 + 120) = xmmword_29570C8B0;
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

- (BOOL)readAdaptiveCorrectionConfig:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_28;
  }

  sub_2956FD874(v4, "epErrorLimitWidePix_FirstPass", &self->_adaptiveCorrectionConfig.epErrorLimitWidePix_FirstPass);
  if (!v6)
  {
    goto LABEL_28;
  }

  sub_2956FD874(v5, "epErrorLimitWidePix_SecondPass", &self->_adaptiveCorrectionConfig.epErrorLimitWidePix_SecondPass);
  if (!v7)
  {
    goto LABEL_28;
  }

  sub_2956FD874(v5, "rangePFL_T", &self->_adaptiveCorrectionConfig.rangePFL_T);
  if (!v8)
  {
    goto LABEL_28;
  }

  sub_2956FD874(v5, "rangePFL_W", &self->_adaptiveCorrectionConfig.rangePFL_W);
  if (!v9)
  {
    goto LABEL_28;
  }

  sub_2956FD874(v5, "rangeOCxT", &self->_adaptiveCorrectionConfig.rangeOCxT);
  if (!v10)
  {
    goto LABEL_28;
  }

  sub_2956FD874(v5, "rangeOCxW", &self->_adaptiveCorrectionConfig.rangeOCxW);
  if (!v11)
  {
    goto LABEL_28;
  }

  sub_2956FD874(v5, "rangeOCyT", &self->_adaptiveCorrectionConfig.rangeOCyT);
  if (!v12)
  {
    goto LABEL_28;
  }

  sub_2956FD874(v5, "rangeOCyW", &self->_adaptiveCorrectionConfig.rangeOCyW);
  if (!v13)
  {
    goto LABEL_28;
  }

  sub_2956FD874(v5, "intermediateMacroDistMM", &self->_adaptiveCorrectionConfig.intermediateMacroDistMM);
  if (!v14)
  {
    goto LABEL_28;
  }

  sub_2956FD874(v5, "extremeMacroDistMM", &self->_adaptiveCorrectionConfig.extremeMacroDistMM);
  if (!v15)
  {
    goto LABEL_28;
  }

  v16 = MEMORY[0x29EDBA0F8];
  v17 = v5;
  objc_msgSend_stringWithUTF8String_(v16, v18, "minPointsForAdjustment", v19, v20, v21);
  LODWORD(v16) = FigCFDictionaryGetInt32IfPresent();

  if (!v16)
  {
    goto LABEL_28;
  }

  self->_adaptiveCorrectionConfig.minPointsForAdjustment = 0;
  sub_2956FD874(v17, "errorVal_GreaterThanInf", &self->_adaptiveCorrectionConfig.errorVal_GreaterThanInf);
  if (!v22)
  {
    goto LABEL_28;
  }

  sub_2956FD874(v17, "errorVal_LessThanExtremeMacro", &self->_adaptiveCorrectionConfig.errorVal_LessThanExtremeMacro);
  if (v23 && (sub_2956FD874(v17, "errorVal_BetweenIntermediate_ExtremeMacro", &self->_adaptiveCorrectionConfig.errorVal_BetweenIntermediate_ExtremeMacro), v24) && (sub_2956FD874(v17, "spgEpsilon", &self->_adaptiveCorrectionConfig.spgEpsilon), v25) && (sub_2956FD910(v17, "keypointOutliersPercentile", &self->_adaptiveCorrectionConfig.keypointOutliersPercentile), v26) && (sub_2956FD910(v17, "temporalFilteringStrength", &self->_adaptiveCorrectionConfig.temporalFilteringStrength), v27) && (*&v32 = sub_2956FD910(v17, "temporalFilteringStrengthParallel", &self->_adaptiveCorrectionConfig.temporalFilteringStrengthParallel), v33))
  {
    v34 = objc_msgSend_objectForKeyedSubscript_(v17, v28, @"runAnalyticalPreconditioning", v29, v30, v31, v32);
    v40 = v34;
    if (v34)
    {
      self->_adaptiveCorrectionConfig.runAnalyticalPreconditioning = objc_msgSend_intValue(v34, v35, v36, v37, v38, v39) != 0;
      sub_2956FD910(v17, "epErrorLimitTelePix_ParallelCorrection", &self->_adaptiveCorrectionConfig.epErrorLimitTelePix_ParallelCorrection);
      if ((v41 & 1) == 0)
      {
        epErrorLimitWidePix_SecondPass = self->_adaptiveCorrectionConfig.epErrorLimitWidePix_SecondPass;
        self->_adaptiveCorrectionConfig.epErrorLimitTelePix_ParallelCorrection = epErrorLimitWidePix_SecondPass;
      }

      sub_2956FD910(v17, "temporalInitializationFactor", &self->_adaptiveCorrectionConfig.temporalInitializationFactor);
      if ((v43 & 1) == 0)
      {
        self->_adaptiveCorrectionConfig.temporalInitializationFactor = 0.0;
      }

      sub_2956FD910(v17, "scaleTuningWithDigitalZoomByFactor", &self->_adaptiveCorrectionConfig.scaleTuningWithDigitalZoomByFactor);
      if ((v44 & 1) == 0)
      {
        self->_adaptiveCorrectionConfig.scaleTuningWithDigitalZoomByFactor = 0.0;
      }

      v45 = 1;
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
LABEL_28:
    v45 = 0;
    v40 = 0;
  }

  return v45;
}

- (ADCTuningParameters)initWithDictionary:(id)a3
{
  v4 = a3;
  v14 = objc_msgSend_init(self, v5, v6, v7, v8, v9);
  if (!v14)
  {
    v32 = 0;
    v16 = 0;
    goto LABEL_12;
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(v4, v10, @"Calibration", v11, v12, v13);
  v16 = v15;
  if (!v15 || (sub_2956FD910(v15, "defaultFocalLengthTeleMicrometers", v14 + 3), !v17) || (sub_2956FD910(v16, "defaultFocalLengthWideMicrometers", v14 + 5), !v18) || (sub_2956FD910(v16, "defaultFocalLengthTeleMaxDeviationMicrometers", v14 + 4), !v19) || (sub_2956FD910(v16, "defaultFocalLengthWideMaxDeviationMicrometers", v14 + 6), !v20) || (*&v25 = sub_2956FD910(v16, "keypointsDetectionThreshold", v14 + 2), !v26))
  {
    v32 = 0;
LABEL_12:
    v27 = 0;
    goto LABEL_10;
  }

  v27 = objc_msgSend_objectForKeyedSubscript_(v4, v21, @"ADC", v22, v23, v24, v25);
  if (objc_msgSend_readAdaptiveCorrectionConfig_(v14, v28, v27, v29, v30, v31))
  {
    v32 = v14;
  }

  else
  {
    v32 = 0;
  }

LABEL_10:

  return v32;
}

@end