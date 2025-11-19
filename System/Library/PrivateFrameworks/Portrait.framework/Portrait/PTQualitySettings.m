@interface PTQualitySettings
+ (id)createWithQuality:(int)a3 options:(id)a4;
- (void)updateDescription;
@end

@implementation PTQualitySettings

+ (id)createWithQuality:(int)a3 options:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:&unk_2837F3058];
  if (v6)
  {
    goto LABEL_40;
  }

  v6 = objc_opt_new();
  [v6 setQuality:v4];
  [v6 setDoFirstLevelGaussianDownsample:v4 > 26];
  [v6 setUseExportQualityNoise:v4 > 26];
  LODWORD(v7) = 2.0;
  [v6 setRenderDownscale:v7];
  [v6 setDoMacroApertureLimit:1];
  [v6 setDoCenterDisparity:1];
  [v6 setIntermediatePixelFormat:115];
  [v6 setRayMarch:1];
  if (v4 <= 25)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  *&v8 = v9;
  [v6 setDisparityUpsampleFactor:v8];
  v10 = [v5 objectForKeyedSubscript:&unk_2837F3070];

  if (v10)
  {
    v11 = [v5 objectForKeyedSubscript:&unk_2837F3070];
    [v11 floatValue];
    [v6 setDisparityUpsampleFactor:?];
  }

  [v6 setDoFocusEdgeMask:v4 > 25];
  if (v4 > 25)
  {
    if (v4 > 74)
    {
      if (v4 == 75)
      {
        v12 = v6;
        v13 = 4;
        goto LABEL_25;
      }

      if (v4 == 100)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v4 == 26)
      {
        v12 = v6;
        v13 = 2;
        goto LABEL_25;
      }

      if (v4 == 51)
      {
        v12 = v6;
        v13 = 3;
LABEL_25:
        [v12 setNumberOfPatternCircles:v13];
        goto LABEL_26;
      }
    }

LABEL_18:
    v14 = _PTLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PTQualitySettings createWithQuality:v4 options:v14];
    }

LABEL_21:
    v12 = v6;
    v13 = 5;
    goto LABEL_25;
  }

  if (v4)
  {
    if (v4 != 24 && v4 != 25)
    {
      goto LABEL_18;
    }

    [v6 setNumberOfPatternCircles:2];
    [v6 setRayMarch:0];
  }

  else
  {
    [v6 setNumberOfPatternCircles:2];
    LODWORD(v15) = 4.0;
    [v6 setRenderDownscale:v15];
  }

LABEL_26:
  v16 = [v5 objectForKeyedSubscript:&unk_2837F3088];

  if (v16)
  {
    v17 = [v5 objectForKeyedSubscript:&unk_2837F3088];
    [v17 floatValue];
    [v6 setRenderDownscale:?];
  }

  [v6 renderDownscale];
  [v6 setDoIntermediate2XUpscale:v18 > 3.0];
  v19 = [v5 objectForKeyedSubscript:&unk_2837F30A0];

  if (v19)
  {
    v21 = [v5 objectForKeyedSubscript:&unk_2837F30A0];
    [v6 setDoMacroApertureLimit:{objc_msgSend(v21, "BOOLValue")}];
  }

  LODWORD(v20) = 2143289344;
  [v6 setCircleOfConfusionLimitBackground:v20];
  LODWORD(v22) = 2143289344;
  [v6 setCircleOfConfusionLimitForeground:v22];
  v23 = [v5 objectForKeyedSubscript:&unk_2837F30B8];

  if (v23)
  {
    v24 = [v5 objectForKeyedSubscript:&unk_2837F30B8];
    [v24 floatValue];
    [v6 setCircleOfConfusionLimitBackground:?];
  }

  v25 = [v5 objectForKeyedSubscript:&unk_2837F30D0];

  if (v25)
  {
    v26 = [v5 objectForKeyedSubscript:&unk_2837F30D0];
    [v26 floatValue];
    [v6 setCircleOfConfusionLimitForeground:?];
  }

  [v6 setPortraitPreviewDeadzone:0];
  v27 = [v5 objectForKeyedSubscript:&unk_2837F30E8];

  if (v27)
  {
    v28 = [v5 objectForKeyedSubscript:&unk_2837F30E8];
    [v6 setPortraitPreviewDeadzone:{objc_msgSend(v28, "BOOLValue")}];
  }

  [v6 setRayMarch:{objc_msgSend(v6, "rayMarch")}];
  [v6 disparityUpsampleFactor];
  [v6 setDisparityUpsampleFactor:?];
  [v6 setDoFocusEdgeMask:{objc_msgSend(v6, "doFocusEdgeMask")}];
  [v6 renderDownscale];
  [v6 setRenderDownscale:?];
  [v6 setDoMacroApertureLimit:{objc_msgSend(v6, "doMacroApertureLimit")}];
  [v6 setDoIntermediate2XUpscale:{objc_msgSend(v6, "doIntermediate2XUpscale")}];
  if ([v6 doFocusEdgeMask])
  {
    v29 = [v6 rayMarch];
  }

  else
  {
    v29 = 0;
  }

  [v6 setDoFocusEdgeMask:v29];
  [v6 updateDescription];
LABEL_40:
  v30 = v6;

  return v30;
}

- (void)updateDescription
{
  if (self->_rayMarch)
  {
    v3 = @"Raymarch adaptive";
  }

  else
  {
    v3 = @"1-step";
  }

  v4 = &stru_2837D16E8;
  if (self->_doFirstLevelGaussianDownsample)
  {
    v4 = @"FirstLevelGaussianDownsample";
  }

  self->_description = [MEMORY[0x277CCACA8] stringWithFormat:@"%@. Circles: %i. upscale-disp:%f %@", v3, self->_numberOfPatternCircles, self->_disparityUpsampleFactor, v4];

  MEMORY[0x2821F96F8]();
}

+ (void)createWithQuality:(int)a1 options:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "Unknow quality level, got: %i, assuming maximum quality: 100", v2, 8u);
}

@end