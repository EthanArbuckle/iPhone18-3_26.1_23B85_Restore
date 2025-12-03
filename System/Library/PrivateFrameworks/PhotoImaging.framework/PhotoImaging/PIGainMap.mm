@interface PIGainMap
+ (BOOL)shouldUseGainMapExposureCompensationForRawProperties:(id)properties;
+ (id)gainMapParametersFromRawProperties:(id)properties;
@end

@implementation PIGainMap

+ (BOOL)shouldUseGainMapExposureCompensationForRawProperties:(id)properties
{
  propertiesCopy = properties;
  if (![propertiesCopy isAppleProRaw])
  {
    goto LABEL_7;
  }

  meteorGainMapExposureCompensationMode = [MEMORY[0x1E69B3AB0] meteorGainMapExposureCompensationMode];

  if (!meteorGainMapExposureCompensationMode)
  {
    if ([propertiesCopy hasLensCorrection] && objc_msgSend(propertiesCopy, "isSensorRawCapture"))
    {
      v5 = [propertiesCopy isUnifiedBracketingHDRCapture] ^ 1;
      goto LABEL_8;
    }

LABEL_7:
    LOBYTE(v5) = 0;
    goto LABEL_8;
  }

  LOBYTE(v5) = 1;
LABEL_8:

  return v5;
}

+ (id)gainMapParametersFromRawProperties:(id)properties
{
  v13[1] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if ([propertiesCopy isAppleProRaw] && objc_msgSend(self, "shouldUseGainMapExposureCompensationForRawProperties:", propertiesCopy))
  {
    rawToneCurveProperties = [propertiesCopy rawToneCurveProperties];
    v7 = rawToneCurveProperties;
    if (rawToneCurveProperties)
    {
      LODWORD(v6) = 1043878380;
      [rawToneCurveProperties inverseAggregatedCurveValueAt:v6];
      *&v9 = (0.18 / v8) * 0.5;
      v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
      v13[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end