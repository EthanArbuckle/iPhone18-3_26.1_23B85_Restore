@interface PIGlobalSettings
+ (id)IPXEditSettings;
+ (id)PUEditSettings;
+ (id)globalSettings;
- (BOOL)cinematicAllowRGB10Packed;
- (BOOL)cinematicAllowYUVSourceInput;
- (BOOL)debugUseStyleEngine;
- (BOOL)disableHeadroom;
- (BOOL)disableMADForSettlingEffect;
- (BOOL)disableSegmentation;
- (BOOL)forceEnableSegmentation;
- (BOOL)forceEnableSettlingEffect;
- (BOOL)forceEnableSpatialPhoto;
- (BOOL)inpaintApplySafetyFilterOnFaceLandmarks;
- (BOOL)inpaintDumpsOriginalMasks;
- (BOOL)inpaintDumpsProcessedMasks;
- (BOOL)inpaintFillsMaskHoles;
- (BOOL)inpaintOrientInputImages;
- (BOOL)inpaintOverlaysMaskBounds;
- (BOOL)inpaintOverlaysMasks;
- (BOOL)objectRemovalRegionOverride;
- (BOOL)parallaxStyleEnableGreenScreen;
- (BOOL)parallaxWallpaperDisableUpgrade;
- (BOOL)portraitDisableFuzzball;
- (BOOL)portraitDrawDebugInfo;
- (BOOL)portraitForceLightMapLinear;
- (BOOL)posterDisableCropVariant;
- (BOOL)rawApplyBoostFirst;
- (BOOL)segmentationDebugPreviewDisableClock;
- (BOOL)segmentationDebugPreviewHighQuality;
- (BOOL)segmentationDebugRoundTripProxyImage;
- (BOOL)segmentationDebugTintLayers;
- (BOOL)segmentationDisableCaching;
- (BOOL)semanticStyleDisableStyleEngine;
- (BOOL)sensitivityCheckDumpsImages;
- (BOOL)useStyleRecipeConfigDirectory;
- (NSString)inpaintDumpPath;
- (NSString)parallaxLayoutConfigurationOverride;
- (NSString)styleRecipeConfigDirectoryPath;
- (double)inpaintGainMapMixFactor;
- (double)inpaintMaxAreaPercentage;
- (double)inpaintPixellationIntersectionAreaToFaceAreaThreshold;
- (double)inpaintPixellationIntersectionAreaToMaskAreaThreshold;
- (double)segmentationInfillDilationPercent;
- (double)segmentationManualGatingLenience;
- (float)settlingEffectMinimumMotionScore;
- (int64_t)segmentationInfillAlgorithm;
- (void)setCinematicAllowRGB10Packed:(BOOL)packed;
- (void)setCinematicAllowYUVSourceInput:(BOOL)input;
- (void)setDebugUseStyleEngine:(BOOL)engine;
- (void)setDisableHeadroom:(BOOL)headroom;
- (void)setDisableMADForSettlingEffect:(BOOL)effect;
- (void)setDisableSegmentation:(BOOL)segmentation;
- (void)setForceEnableSegmentation:(BOOL)segmentation;
- (void)setForceEnableSettlingEffect:(BOOL)effect;
- (void)setForceEnableSpatialPhoto:(BOOL)photo;
- (void)setInpaintApplySafetyFilterOnFaceLandmarks:(BOOL)landmarks;
- (void)setInpaintDumpPath:(id)path;
- (void)setInpaintDumpsOriginalMasks:(BOOL)masks;
- (void)setInpaintDumpsProcessedMasks:(BOOL)masks;
- (void)setInpaintFillsMaskHoles:(BOOL)holes;
- (void)setInpaintGainMapMixFactor:(double)factor;
- (void)setInpaintMaxAreaPercentage:(double)percentage;
- (void)setInpaintOrientInputImages:(BOOL)images;
- (void)setInpaintOverlaysMaskBounds:(BOOL)bounds;
- (void)setInpaintOverlaysMasks:(BOOL)masks;
- (void)setInpaintPixellationIntersectionAreaToFaceAreaThreshold:(double)threshold;
- (void)setInpaintPixellationIntersectionAreaToMaskAreaThreshold:(double)threshold;
- (void)setObjectRemovalRegionOverride:(BOOL)override;
- (void)setParallaxLayoutConfigurationOverride:(id)override;
- (void)setParallaxStyleEnableGreenScreen:(BOOL)screen;
- (void)setParallaxWallpaperDisableUpgrade:(BOOL)upgrade;
- (void)setPortraitDisableFuzzball:(BOOL)fuzzball;
- (void)setPortraitDrawDebugInfo:(BOOL)info;
- (void)setPortraitForceLightMapLinear:(BOOL)linear;
- (void)setPosterDisableCropVariant:(BOOL)variant;
- (void)setRawApplyBoostFirst:(BOOL)first;
- (void)setSegmentationDebugPreviewDisableClock:(BOOL)clock;
- (void)setSegmentationDebugPreviewHighQuality:(BOOL)quality;
- (void)setSegmentationDebugRoundTripProxyImage:(BOOL)image;
- (void)setSegmentationDebugTintLayers:(BOOL)layers;
- (void)setSegmentationDisableCaching:(BOOL)caching;
- (void)setSegmentationInfillAlgorithm:(int64_t)algorithm;
- (void)setSegmentationInfillDilationPercent:(double)percent;
- (void)setSegmentationManualGatingLenience:(double)lenience;
- (void)setSemanticStyleDisableStyleEngine:(BOOL)engine;
- (void)setSensitivityCheckDumpsImages:(BOOL)images;
- (void)setSettlingEffectMinimumMotionScore:(float)score;
- (void)setStyleRecipeConfigDirectoryPath:(id)path;
- (void)setUseStyleRecipeConfigDirectory:(BOOL)directory;
@end

@implementation PIGlobalSettings

- (void)setSensitivityCheckDumpsImages:(BOOL)images
{
  imagesCopy = images;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:imagesCopy forKey:@"PI_DUMP_SENSITIVITY_IMAGES"];
}

- (BOOL)sensitivityCheckDumpsImages
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_DUMP_SENSITIVITY_IMAGES"];

  LOBYTE(standardUserDefaults) = [v3 BOOLValue];
  return standardUserDefaults;
}

- (void)setInpaintApplySafetyFilterOnFaceLandmarks:(BOOL)landmarks
{
  landmarksCopy = landmarks;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:landmarksCopy forKey:@"PI_INPAINT_APPLY_SAFETY_FILTER_FACE_LANDMARKS"];
}

- (BOOL)inpaintApplySafetyFilterOnFaceLandmarks
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_INPAINT_APPLY_SAFETY_FILTER_FACE_LANDMARKS"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setInpaintFillsMaskHoles:(BOOL)holes
{
  holesCopy = holes;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:holesCopy forKey:@"PI_INPAINT_FILL_MASK_HOLES"];
}

- (BOOL)inpaintFillsMaskHoles
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_INPAINT_FILL_MASK_HOLES"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setInpaintMaxAreaPercentage:(double)percentage
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:percentage];
  [standardUserDefaults setObject:v4 forKey:@"PI_INPAINT_MAX_AREA_PERCENTAGE"];
}

- (double)inpaintMaxAreaPercentage
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_INPAINT_MAX_AREA_PERCENTAGE"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.25;
  }

  return v5;
}

- (void)setObjectRemovalRegionOverride:(BOOL)override
{
  overrideCopy = override;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:overrideCopy forKey:@"PI_OBJECT_REMOVAL_REGION_ELIGIBILITY_OVERRIDE"];
}

- (BOOL)objectRemovalRegionOverride
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_OBJECT_REMOVAL_REGION_ELIGIBILITY_OVERRIDE"];

  return v3;
}

- (void)setInpaintPixellationIntersectionAreaToFaceAreaThreshold:(double)threshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setDouble:@"PI_INPAINT_PIXELLATION_INTERSECTION_AREA_TO_FACE_AREA_THRESHOLD" forKey:threshold];
}

- (double)inpaintPixellationIntersectionAreaToFaceAreaThreshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_INPAINT_PIXELLATION_INTERSECTION_AREA_TO_FACE_AREA_THRESHOLD"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.35;
  }

  return v5;
}

- (void)setInpaintPixellationIntersectionAreaToMaskAreaThreshold:(double)threshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setDouble:@"PI_INPAINT_PIXELLATION_INTERSECTION_AREA_TO_MASK_AREA_THRESHOLD" forKey:threshold];
}

- (double)inpaintPixellationIntersectionAreaToMaskAreaThreshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_INPAINT_PIXELLATION_INTERSECTION_AREA_TO_MASK_AREA_THRESHOLD"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.3;
  }

  return v5;
}

- (void)setInpaintDumpsProcessedMasks:(BOOL)masks
{
  masksCopy = masks;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:masksCopy forKey:@"PI_INPAINT_DUMPS_PROCESSED_MASKS"];
}

- (BOOL)inpaintDumpsProcessedMasks
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_INPAINT_DUMPS_PROCESSED_MASKS"];

  return v3;
}

- (void)setInpaintDumpsOriginalMasks:(BOOL)masks
{
  masksCopy = masks;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:masksCopy forKey:@"PI_INPAINT_DUMPS_ORIGINAL_MASKS"];
}

- (BOOL)inpaintDumpsOriginalMasks
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_INPAINT_DUMPS_ORIGINAL_MASKS"];

  return v3;
}

- (void)setInpaintOverlaysMaskBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:boundsCopy forKey:@"PI_INPAINT_OVERLAYS_MASK_BOUNDS"];
}

- (BOOL)inpaintOverlaysMaskBounds
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_INPAINT_OVERLAYS_MASK_BOUNDS"];

  return v3;
}

- (void)setInpaintOverlaysMasks:(BOOL)masks
{
  masksCopy = masks;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:masksCopy forKey:@"PI_INPAINT_OVERLAYS_MASKS"];
}

- (BOOL)inpaintOverlaysMasks
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_INPAINT_OVERLAYS_MASKS"];

  return v3;
}

- (void)setInpaintDumpPath:(id)path
{
  v3 = MEMORY[0x1E695E000];
  pathCopy = path;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:pathCopy forKey:@"PI_INPAINT_DUMP_PATH"];
}

- (NSString)inpaintDumpPath
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Photos"];
  v4 = [v3 stringByAppendingPathComponent:@"inpaint"];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults stringForKey:@"PI_INPAINT_DUMP_PATH"];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

- (void)setInpaintOrientInputImages:(BOOL)images
{
  imagesCopy = images;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:imagesCopy forKey:@"PI_INPAINT_ORIENT_INPUTS"];
}

- (BOOL)inpaintOrientInputImages
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_INPAINT_ORIENT_INPUTS"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setInpaintGainMapMixFactor:(double)factor
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:factor];
  [standardUserDefaults setObject:v4 forKey:@"PI_INPAINT_GAIN_MAP_MIX_FACTOR"];
}

- (double)inpaintGainMapMixFactor
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_INPAINT_GAIN_MAP_MIX_FACTOR"];

  if (v3)
  {
    [v3 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.75;
  }

  return v5;
}

- (void)setSemanticStyleDisableStyleEngine:(BOOL)engine
{
  engineCopy = engine;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:engineCopy forKey:@"PI_SEMANTIC_STYLE_DISABLE_STYLE_ENGINE"];
}

- (BOOL)semanticStyleDisableStyleEngine
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_SEMANTIC_STYLE_DISABLE_STYLE_ENGINE"];

  return v3;
}

- (void)setDebugUseStyleEngine:(BOOL)engine
{
  engineCopy = engine;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:engineCopy forKey:@"PI_DEBUG_USE_STYLE_ENGINE"];
}

- (BOOL)debugUseStyleEngine
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_DEBUG_USE_STYLE_ENGINE"];

  return v3;
}

- (void)setPosterDisableCropVariant:(BOOL)variant
{
  variantCopy = variant;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:variantCopy forKey:@"PI_POSTER_DISABLE_CROP_VARIANT"];
}

- (BOOL)posterDisableCropVariant
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_POSTER_DISABLE_CROP_VARIANT"];

  return v3;
}

- (void)setSettlingEffectMinimumMotionScore:(float)score
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = score;
  [standardUserDefaults setFloat:@"PI_PARALLAX_MINIMUM_MOTION_SCORE" forKey:v4];
}

- (float)settlingEffectMinimumMotionScore
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_PARALLAX_MINIMUM_MOTION_SCORE"];

  if (v3)
  {
    [v3 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.7;
  }

  return v5;
}

- (void)setForceEnableSpatialPhoto:(BOOL)photo
{
  photoCopy = photo;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:photoCopy forKey:@"PI_PARALLAX_FORCE_ENABLE_SPATIAL_PHOTO"];
}

- (BOOL)forceEnableSpatialPhoto
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_PARALLAX_FORCE_ENABLE_SPATIAL_PHOTO"];

  return v3;
}

- (void)setForceEnableSettlingEffect:(BOOL)effect
{
  effectCopy = effect;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:effectCopy forKey:@"PI_PARALLAX_FORCE_ENABLE_SETTLING_EFFECT"];
}

- (BOOL)forceEnableSettlingEffect
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_PARALLAX_FORCE_ENABLE_SETTLING_EFFECT"];

  return v3;
}

- (void)setDisableMADForSettlingEffect:(BOOL)effect
{
  effectCopy = effect;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:effectCopy forKey:@"PI_PARALLAX_DISABLE_MAD_SETTLING_EFFECT"];
}

- (BOOL)disableMADForSettlingEffect
{
  v2 = _os_feature_enabled_impl();
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"PI_PARALLAX_DISABLE_MAD_SETTLING_EFFECT"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = v2 ^ 1;
  }

  return bOOLValue;
}

- (void)setRawApplyBoostFirst:(BOOL)first
{
  firstCopy = first;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:firstCopy forKey:@"PI_RAW_APPLY_BOOST_FIRST"];
}

- (BOOL)rawApplyBoostFirst
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_RAW_APPLY_BOOST_FIRST"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setCinematicAllowRGB10Packed:(BOOL)packed
{
  packedCopy = packed;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:packedCopy forKey:@"PI_CINEMATIC_ALLOW_RGB10_PACKED"];
}

- (BOOL)cinematicAllowRGB10Packed
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_CINEMATIC_ALLOW_RGB10_PACKED"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setCinematicAllowYUVSourceInput:(BOOL)input
{
  inputCopy = input;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:inputCopy forKey:@"PI_CINEMATIC_ALLOW_YUV_SOURCE"];
}

- (BOOL)cinematicAllowYUVSourceInput
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_CINEMATIC_ALLOW_YUV_SOURCE"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setParallaxWallpaperDisableUpgrade:(BOOL)upgrade
{
  upgradeCopy = upgrade;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:upgradeCopy forKey:@"PI_PARALLAX_DISABLE_UPGRADE"];
}

- (BOOL)parallaxWallpaperDisableUpgrade
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_PARALLAX_DISABLE_UPGRADE"];

  return v3;
}

- (void)setParallaxLayoutConfigurationOverride:(id)override
{
  v3 = MEMORY[0x1E695E000];
  overrideCopy = override;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:overrideCopy forKey:@"PI_PARALLAX_LAYOUT_CONFIG"];
}

- (NSString)parallaxLayoutConfigurationOverride
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PI_PARALLAX_LAYOUT_CONFIG"];

  return v3;
}

- (void)setParallaxStyleEnableGreenScreen:(BOOL)screen
{
  screenCopy = screen;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:screenCopy forKey:@"PI_PARALLAX_STYLE_ENABLE_GREEN_SCREEN"];
}

- (BOOL)parallaxStyleEnableGreenScreen
{
  v2 = _os_feature_enabled_impl();
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"PI_PARALLAX_STYLE_ENABLE_GREEN_SCREEN"];

  return (v2 | v4) & 1;
}

- (void)setUseStyleRecipeConfigDirectory:(BOOL)directory
{
  directoryCopy = directory;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:directoryCopy forKey:@"PI_USE_STYLE_RECIPE_CONFIG"];
}

- (BOOL)useStyleRecipeConfigDirectory
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_USE_STYLE_RECIPE_CONFIG"];

  return v3;
}

- (void)setStyleRecipeConfigDirectoryPath:(id)path
{
  v3 = MEMORY[0x1E695E000];
  pathCopy = path;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:pathCopy forKey:@"PI_STYLE_RECIPE_DIR_PATH"];
}

- (NSString)styleRecipeConfigDirectoryPath
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PI_STYLE_RECIPE_DIR_PATH"];

  return v3;
}

- (void)setSegmentationManualGatingLenience:(double)lenience
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setDouble:@"PI_SEGMENT_MANUAL_GATING_LENIENCE" forKey:lenience];
}

- (double)segmentationManualGatingLenience
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PI_SEGMENT_MANUAL_GATING_LENIENCE"];
  v4 = v3;

  return v4;
}

- (void)setSegmentationDebugPreviewHighQuality:(BOOL)quality
{
  qualityCopy = quality;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:qualityCopy forKey:@"PI_SEGMENT_PREVIEW_HIGH_QUALITY"];
}

- (BOOL)segmentationDebugPreviewHighQuality
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_SEGMENT_PREVIEW_HIGH_QUALITY"];

  return v3;
}

- (void)setSegmentationDebugPreviewDisableClock:(BOOL)clock
{
  clockCopy = clock;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:clockCopy forKey:@"PI_SEGMENT_PREVIEW_DISABLE_CLOCK"];
}

- (BOOL)segmentationDebugPreviewDisableClock
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_SEGMENT_PREVIEW_DISABLE_CLOCK"];

  return v3;
}

- (void)setSegmentationDisableCaching:(BOOL)caching
{
  cachingCopy = caching;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:cachingCopy forKey:@"PI_SEGMENT_DISABLE_CACHE"];
}

- (BOOL)segmentationDisableCaching
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_SEGMENT_DISABLE_CACHE"];

  return v3;
}

- (void)setSegmentationDebugTintLayers:(BOOL)layers
{
  layersCopy = layers;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:layersCopy forKey:@"PI_SEGMENT_TINT_LAYERS"];
}

- (BOOL)segmentationDebugTintLayers
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_SEGMENT_TINT_LAYERS"];

  return v3;
}

- (void)setSegmentationInfillDilationPercent:(double)percent
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setDouble:@"PI_SEGMENT_INFILL_DILATION_PCT" forKey:percent];
}

- (double)segmentationInfillDilationPercent
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PI_SEGMENT_INFILL_DILATION_PCT"];
  v4 = v3;

  return v4;
}

- (void)setSegmentationInfillAlgorithm:(int64_t)algorithm
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setInteger:algorithm forKey:@"PI_SEGMENT_INFILL_ALGO"];
}

- (int64_t)segmentationInfillAlgorithm
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PI_SEGMENT_INFILL_ALGO"];

  return v3;
}

- (void)setDisableHeadroom:(BOOL)headroom
{
  headroomCopy = headroom;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:headroomCopy forKey:@"PI_DISABLE_HEADROOM"];
}

- (BOOL)disableHeadroom
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_DISABLE_HEADROOM"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setForceEnableSegmentation:(BOOL)segmentation
{
  segmentationCopy = segmentation;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:segmentationCopy forKey:@"PI_SEGMENT_FORCE_ENABLE_SEGMENTATION"];
}

- (BOOL)forceEnableSegmentation
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_SEGMENT_FORCE_ENABLE_SEGMENTATION"];

  return v3;
}

- (void)setDisableSegmentation:(BOOL)segmentation
{
  segmentationCopy = segmentation;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:segmentationCopy forKey:@"PI_SEGMENT_DISABLE_SEGMENTATION"];
}

- (BOOL)disableSegmentation
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_SEGMENT_DISABLE_SEGMENTATION"];

  return v3;
}

- (void)setSegmentationDebugRoundTripProxyImage:(BOOL)image
{
  imageCopy = image;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:imageCopy forKey:@"PI_SEGMENT_ROUND_TRIP_PROXY"];
}

- (BOOL)segmentationDebugRoundTripProxyImage
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_SEGMENT_ROUND_TRIP_PROXY"];

  return v3;
}

- (void)setPortraitDrawDebugInfo:(BOOL)info
{
  infoCopy = info;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:infoCopy forKey:@"PI_PORTRAIT_DRAW_DEBUG_INFO"];
}

- (BOOL)portraitDrawDebugInfo
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_PORTRAIT_DRAW_DEBUG_INFO"];

  return v3;
}

- (void)setPortraitForceLightMapLinear:(BOOL)linear
{
  linearCopy = linear;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:linearCopy forKey:@"PI_PORTRAIT_FORCE_LIGHT_MAP_LINEAR"];
}

- (BOOL)portraitForceLightMapLinear
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PI_PORTRAIT_FORCE_LIGHT_MAP_LINEAR"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setPortraitDisableFuzzball:(BOOL)fuzzball
{
  fuzzballCopy = fuzzball;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:fuzzballCopy forKey:@"PI_PORTRAIT_DISABLE_FUZZBALL"];
}

- (BOOL)portraitDisableFuzzball
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PI_PORTRAIT_DISABLE_FUZZBALL"];

  return v3;
}

+ (id)PUEditSettings
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PURootSettings"];

  v4 = [v3 objectForKey:@"PXSettingsArchiveKey"];
  v5 = [v4 objectForKey:@"photoEditingSettings"];

  return v5;
}

+ (id)IPXEditSettings
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"IPXRootSettings"];

  v4 = [v3 objectForKey:@"PXSettingsArchiveKey"];
  v5 = [v4 objectForKey:@"editSettings"];

  return v5;
}

+ (id)globalSettings
{
  if (globalSettings_onceToken != -1)
  {
    dispatch_once(&globalSettings_onceToken, &__block_literal_global_19496);
  }

  v3 = globalSettings_globalSettings;

  return v3;
}

uint64_t __34__PIGlobalSettings_globalSettings__block_invoke()
{
  v0 = objc_alloc_init(PIGlobalSettings);
  v1 = globalSettings_globalSettings;
  globalSettings_globalSettings = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end