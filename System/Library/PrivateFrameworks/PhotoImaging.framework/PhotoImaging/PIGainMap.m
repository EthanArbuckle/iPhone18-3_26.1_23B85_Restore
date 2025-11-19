@interface PIGainMap
+ (BOOL)shouldUseGainMapExposureCompensationForRawProperties:(id)a3;
+ (id)gainMapParametersFromRawProperties:(id)a3;
@end

@implementation PIGainMap

+ (BOOL)shouldUseGainMapExposureCompensationForRawProperties:(id)a3
{
  v3 = a3;
  if (![v3 isAppleProRaw])
  {
    goto LABEL_7;
  }

  v4 = [MEMORY[0x1E69B3AB0] meteorGainMapExposureCompensationMode];

  if (!v4)
  {
    if ([v3 hasLensCorrection] && objc_msgSend(v3, "isSensorRawCapture"))
    {
      v5 = [v3 isUnifiedBracketingHDRCapture] ^ 1;
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

+ (id)gainMapParametersFromRawProperties:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isAppleProRaw] && objc_msgSend(a1, "shouldUseGainMapExposureCompensationForRawProperties:", v4))
  {
    v5 = [v4 rawToneCurveProperties];
    v7 = v5;
    if (v5)
    {
      LODWORD(v6) = 1043878380;
      [v5 inverseAggregatedCurveValueAt:v6];
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