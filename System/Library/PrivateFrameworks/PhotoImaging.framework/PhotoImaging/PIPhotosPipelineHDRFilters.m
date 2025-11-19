@interface PIPhotosPipelineHDRFilters
+ (id)HDRFilterForSDRFilter:(id)a3;
+ (id)_map;
+ (id)getMap;
@end

@implementation PIPhotosPipelineHDRFilters

+ (id)HDRFilterForSDRFilter:(id)a3
{
  v4 = a3;
  v5 = [a1 getMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = (v6)[2](v6, v4);
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

+ (id)getMap
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PIPhotosPipelineHDRFilters_getMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (getMap_onceToken != -1)
  {
    dispatch_once(&getMap_onceToken, block);
  }

  v2 = getMap_map;

  return v2;
}

uint64_t __36__PIPhotosPipelineHDRFilters_getMap__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _map];
  v2 = getMap_map;
  getMap_map = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)_map
{
  v5[46] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIMix";
  v4[1] = @"CIDissolveTransition";
  v5[0] = &__block_literal_global_18886;
  v5[1] = &__block_literal_global_18886;
  v4[2] = @"CIGammaAdjust";
  v4[3] = @"CIExposureAdjust";
  v5[2] = &__block_literal_global_18886;
  v5[3] = &__block_literal_global_18886;
  v4[4] = @"CIProSharpenEdges";
  v4[5] = @"CIFaceBalance";
  v5[4] = &__block_literal_global_18886;
  v5[5] = &__block_literal_global_18886;
  v4[6] = @"CIPhotoEffectMono";
  v4[7] = @"CIPhotoEffectTonal";
  v5[6] = &__block_literal_global_2;
  v5[7] = &__block_literal_global_2;
  v4[8] = @"CIPhotoEffectNoir";
  v4[9] = @"CIPhotoEffectFade";
  v5[8] = &__block_literal_global_2;
  v5[9] = &__block_literal_global_2;
  v4[10] = @"CIPhotoEffectChrome";
  v4[11] = @"CIPhotoEffectProcess";
  v5[10] = &__block_literal_global_2;
  v5[11] = &__block_literal_global_2;
  v4[12] = @"CIPhotoEffectTransfer";
  v4[13] = @"CIPhotoEffectInstant";
  v5[12] = &__block_literal_global_2;
  v5[13] = &__block_literal_global_2;
  v4[14] = @"CIPhotoEffect3DVivid";
  v4[15] = @"CIPhotoEffect3DVividWarm";
  v5[14] = &__block_literal_global_2;
  v5[15] = &__block_literal_global_2;
  v4[16] = @"CIPhotoEffect3DVividCool";
  v4[17] = @"CIPhotoEffect3DDramatic";
  v5[16] = &__block_literal_global_2;
  v5[17] = &__block_literal_global_2;
  v4[18] = @"CIPhotoEffect3DDramaticWarm";
  v4[19] = @"CIPhotoEffect3DDramaticCool";
  v5[18] = &__block_literal_global_2;
  v5[19] = &__block_literal_global_2;
  v4[20] = @"CIPhotoEffect3DSilverplate";
  v4[21] = @"CIPhotoEffect3DNoir";
  v5[20] = &__block_literal_global_2;
  v5[21] = &__block_literal_global_2;
  v4[22] = @"CIHighKey";
  v4[23] = @"CILocalContrast";
  v5[22] = &__block_literal_global_2;
  v5[23] = &__block_literal_global_2;
  v4[24] = @"PILocalContrastHDR";
  v4[25] = @"CILocalLightFilter";
  v5[24] = &__block_literal_global_18886;
  v5[25] = &__block_literal_global_2;
  v4[26] = @"CILocalLightMapPrepare";
  v4[27] = @"CIPhotoGrain";
  v5[26] = &__block_literal_global_2;
  v5[27] = &__block_literal_global_2;
  v4[28] = @"CISmartBlackAndWhite";
  v4[29] = @"CISmartColorFilter";
  v5[28] = &__block_literal_global_2;
  v5[29] = &__block_literal_global_2;
  v4[30] = @"CISmartToneFilter";
  v4[31] = @"CIVibrance";
  v5[30] = &__block_literal_global_2;
  v5[31] = &__block_literal_global_8;
  v4[32] = @"CIVignetteEffect";
  v4[33] = @"CILocalLight";
  v5[32] = &__block_literal_global_8;
  v5[33] = &__block_literal_global_2;
  v4[34] = @"CISmartColor";
  v4[35] = @"CISmartTone";
  v5[34] = &__block_literal_global_2;
  v5[35] = &__block_literal_global_2;
  v4[36] = @"PIFalseColorHDRDebug";
  v4[37] = @"PIColorBalanceFilter";
  v5[36] = &__block_literal_global_18886;
  v5[37] = &__block_literal_global_18886;
  v4[38] = @"PITempTintFilter";
  v4[39] = @"PIRAWFaceBalance";
  v5[38] = &__block_literal_global_18886;
  v5[39] = &__block_literal_global_18886;
  v4[40] = @"PINeutralGrayWhiteBalanceFilter";
  v4[41] = @"PIBilateralFilter";
  v5[40] = &__block_literal_global_18886;
  v5[41] = &__block_literal_global_18886;
  v4[42] = @"PICurvesLUTFilter";
  v4[43] = @"PICurvesFilter";
  v5[42] = &__block_literal_global_8;
  v5[43] = &__block_literal_global_2;
  v4[44] = @"PISelectiveColorFilter";
  v4[45] = @"PILevelsFilter";
  v5[44] = &__block_literal_global_18886;
  v5[45] = &__block_literal_global_2;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:46];

  return v2;
}

id __34__PIPhotosPipelineHDRFilters__map__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 substringFromIndex:2];
  v3 = [v2 stringByAppendingString:@"HDR"];
  v4 = [@"PI" stringByAppendingString:v3];

  return v4;
}

@end