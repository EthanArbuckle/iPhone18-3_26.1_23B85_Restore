@interface MPAuthoringUtilities
+ (BOOL)alignToBeatsFromOptions:(id)options;
+ (BOOL)alwaysIncludeLastTransitionFromOptions:(id)options;
+ (BOOL)aspectRatioMatchesDefault:(id)default withOptions:(id)options;
+ (BOOL)canAdjustPhaseDurations:(id)durations;
+ (BOOL)canHaveTransitionsFromOptions:(id)options;
+ (BOOL)canRepeatEffectWithPreset:(id)preset;
+ (BOOL)canRepeatPreset:(id)preset;
+ (BOOL)collectVersionInformationFromOptions:(id)options;
+ (BOOL)createBeatsFromOptions:(id)options;
+ (BOOL)easeKenBurnsPanFromOptions:(id)options;
+ (BOOL)effectDecidesTransitionFromOptions:(id)options;
+ (BOOL)effectNeedsPreviousAttributesFromOptions:(id)options;
+ (BOOL)fadeOutAudioFromOptions:(id)options;
+ (BOOL)fitMoviesWhenPossibleFromOptions:(id)options;
+ (BOOL)ignoreClusteringForImages:(id)images withOptions:(id)options;
+ (BOOL)isLayerEffectAuthoredFromOptions:(id)options;
+ (BOOL)kenBurnsAlwaysZoomInFromOptions:(id)options;
+ (BOOL)kenBurnsBreaksFromOptions:(id)options;
+ (BOOL)layerCanSkipScaleCalculation:(id)calculation withOptions:(id)options;
+ (BOOL)layerHasImagesFromOptions:(id)options;
+ (BOOL)lockTransitionDurationFromOptions:(id)options;
+ (BOOL)matchEffectsUsingTagsFromOptions:(id)options;
+ (BOOL)matchPhasesWithTransitionFromOptions:(id)options;
+ (BOOL)needsFitMovieAttributeFromOptions:(id)options;
+ (BOOL)padTextOnlyEffects:(id)effects;
+ (BOOL)performFaceDetectionFromOptions:(id)options;
+ (BOOL)pickEffectsEvenlyByIDWithOptions:(id)options;
+ (BOOL)pickTransitionsEvenlyByIDWithOptions:(id)options;
+ (BOOL)repeatTransitionsFromOptions:(id)options;
+ (BOOL)replaceAudioPlaylistFromOptions:(id)options;
+ (BOOL)requestGeneratedImagesFromOptions:(id)options;
+ (BOOL)scaleEffectsForPanoramasFromOptions:(id)options;
+ (BOOL)scaleOutroEffectFromOptions:(id)options;
+ (BOOL)shouldComputeFramesFromOptions:(id)options;
+ (BOOL)shouldComputeLoopTransitionFromOptions:(id)options;
+ (BOOL)shouldComputeSlideFiltersFromOptions:(id)options;
+ (BOOL)shouldComputeTransitionsFromOptions:(id)options;
+ (BOOL)shouldDuckMoviesFromOptions:(id)options;
+ (BOOL)useBestAspectRatioFromOptions:(id)options;
+ (BOOL)useDefaultAudioFromOptions:(id)options;
+ (BOOL)useImageOnlyTitleEffectFromOptions:(id)options;
+ (BOOL)useIntroTransition:(id)transition;
+ (BOOL)useLargestEffectsFromOptions:(id)options;
+ (BOOL)useROIAspectRatioFromOptions:(id)options;
+ (BOOL)useROIFromOptions:(id)options;
+ (BOOL)useTitleEffectFromOptions:(id)options;
+ (BOOL)useTransitionLayoutTagsWithOptions:(id)options;
+ (BOOL)useUniformDurations:(id)durations;
+ (CGColor)backgroundColorFromOptions:(id)options;
+ (CGPoint)kbCenterPointFromRect:(CGRect)rect;
+ (CGRect)rectToFitIn:(CGRect)in withAspectRatio:(double)ratio;
+ (_NSRange)reconfigureRangeFromOptions:(id)options;
+ (_NSRange)videoPathsRangeFromOptions:(id)options;
+ (double)aspectRatioFromOptions:(id)options;
+ (double)audioDurationFactorFromOptions:(id)options;
+ (double)audioDurationFromOptions:(id)options;
+ (double)baseBreakAspectRatioFromOptions:(id)options;
+ (double)basePortraitBreakAspectRatioFromOptions:(id)options;
+ (double)breakDurationScaleFromOptions:(id)options;
+ (double)durationPerEffectFromOptions:(id)options;
+ (double)effectPadding:(id)padding;
+ (double)exportTransitionDurationFromOptions:(id)options;
+ (double)fadeOutDurationFromOptions:(id)options;
+ (double)introDurationFromOptions:(id)options;
+ (double)kenBurnsEndZoomLevelFromOptions:(id)options;
+ (double)kenBurnsLikelihoodFromOptions:(id)options;
+ (double)kenBurnsPanFactorFromOptions:(id)options;
+ (double)kenBurnsStartZoomLevelFromOptions:(id)options;
+ (double)kenBurnsZoomFactorFromOptions:(id)options;
+ (double)layerOffsetFromOptions:(id)options;
+ (double)layerTimeScaleFromOptions:(id)options;
+ (double)maxKenBurnsZoomFromOptions:(id)options;
+ (double)maximumTransitionDurationFromOptions:(id)options;
+ (double)minimumEffectDurationFromOptions:(id)options;
+ (double)minimumTransitionDurationFromOptions:(id)options;
+ (double)movieVolumeFromOptions:(id)options;
+ (double)multilineSizeFactorFromOptions:(id)options;
+ (double)outroDurationFromOptions:(id)options;
+ (double)portraitBreakDurationScaleFromOptions:(id)options;
+ (double)transitionDurationFromOptions:(id)options;
+ (id)colorSchemeFromOptions:(id)options;
+ (id)effectListFromOptions:(id)options;
+ (id)exportTransitionIDFromOptions:(id)options;
+ (id)idFromPresetID:(id)d;
+ (id)introEffectIDFromOptions:(id)options;
+ (id)lastPresetFromOptions:(id)options;
+ (id)layerDescriptionForLayerWithZIndex:(int64_t)index forStyle:(id)style;
+ (id)layerTypeFromOptions:(id)options;
+ (id)loopTransitionIDFromOptions:(id)options;
+ (id)outroEffectIDFromOptions:(id)options;
+ (id)presetIDFromPresetID:(id)d;
+ (id)styleFromOptions:(id)options;
+ (id)titleEffectFromOptions:(id)options;
+ (id)transitionListFromOptions:(id)options;
+ (id)urlsFromPaths:(id)paths;
+ (int64_t)kenBurnsLevelFromOptions:(id)options;
+ (int64_t)kenBurnsOffsetTypeFromOptions:(id)options;
+ (int64_t)layerIndexFromOptions:(id)options;
+ (int64_t)maxNumberOfSlidesToPreloadFromOptions:(id)options;
+ (int64_t)minimumNumberOfDynamicSlidesToAddFromOptions:(id)options;
+ (int64_t)numberOfLayersFromOptions:(id)options;
+ (unint64_t)audioScalingModeFromOptions:(id)options;
+ (unint64_t)croppingModeForFitMoviesFromOptions:(id)options;
+ (unint64_t)croppingModeFromOptions:(id)options;
+ (unint64_t)presentationOrderFromOptions:(id)options;
+ (unint64_t)randomSeedFromOptions:(id)options;
+ (unint64_t)regionOfInterestPickModeFromOptions:(id)options;
+ (unint64_t)reorderModeFromOptions:(id)options;
+ (unint64_t)screenSizeFromOptions:(id)options;
@end

@implementation MPAuthoringUtilities

+ (BOOL)ignoreClusteringForImages:(id)images withOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringUseClustering];
  if (!v5 || ![v5 BOOLValue])
  {
    LOBYTE(integerValue) = 1;
    return integerValue;
  }

  v6 = [options objectForKey:kMPAuthoringStyleID];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Classic";
  }

  v8 = [options objectForKey:kMPAuthoringImageOrderingMode];
  if (v8)
  {
    integerValue = [v8 integerValue];
    if (!integerValue)
    {
      return integerValue;
    }
  }

  else
  {
    integerValue = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    if (!integerValue)
    {
      return integerValue;
    }
  }

  v10 = [options objectForKey:kMPAuthoringEffectList];
  if (!v10)
  {
    v10 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  }

  integerValue = [v10 count];
  if (integerValue != &dword_0 + 1)
  {
    integerValue = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    if (integerValue != &dword_0 + 1)
    {
      LOBYTE(integerValue) = integerValue == [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    }
  }

  return integerValue;
}

+ (id)urlsFromPaths:(id)paths
{
  v4 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [paths countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(paths);
        }

        [v4 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", *(*(&v10 + 1) + 8 * v8))}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [paths countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)styleFromOptions:(id)options
{
  result = [options objectForKey:kMPAuthoringStyleID];
  if (!result)
  {
    return @"Classic";
  }

  return result;
}

+ (int64_t)layerIndexFromOptions:(id)options
{
  result = [options objectForKey:kMPAuthoringLayerIndex];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

+ (double)audioDurationFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringAudioDuration];
  if (!v3)
  {
    return -1.0;
  }

  [v3 doubleValue];
  return result;
}

+ (double)audioDurationFactorFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringAudioDurationFactor];
  if (!v3)
  {
    return -1.0;
  }

  [v3 doubleValue];
  return result;
}

+ (unint64_t)audioScalingModeFromOptions:(id)options
{
  result = [options objectForKey:kMPAuthoringAudioScalingMode];
  if (result)
  {

    return [result unsignedIntegerValue];
  }

  return result;
}

+ (unint64_t)croppingModeFromOptions:(id)options
{
  result = [options objectForKey:kMPAuthoringCroppingMode];
  if (result || (result = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")]) != 0)
  {

    return [result unsignedIntegerValue];
  }

  return result;
}

+ (unint64_t)croppingModeForFitMoviesFromOptions:(id)options
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (!v3)
  {
    return -1;
  }

  return [v3 integerValue];
}

+ (double)kenBurnsLikelihoodFromOptions:(id)options
{
  v4 = [options objectForKey:kMPAuthoringKenBurnsLikelihood];
  if (v4)
  {
    [v4 floatValue];
    if (v5 != -1.0)
    {
      return v5;
    }
  }

  v6 = [MPAuthoringUtilities styleFromOptions:options];
  v7 = [MPAuthoringUtilities layerIndexFromOptions:options];
  v8 = +[MPStyleManager sharedManager];

  [v8 defaultAutoKenBurnsLikelihoodForZIndex:v7 ofStyle:v6];
  return result;
}

+ (double)maxKenBurnsZoomFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringKenBurnsMaxZoom];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (double)kenBurnsPanFactorFromOptions:(id)options
{
  v4 = [options objectForKey:kMPAuthoringKenBurnsPanFactor];
  if (!v4)
  {
    v4 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", options), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:", options)), "objectForKey:", @"kenBurnsPanFactor"}];
    if (!v4)
    {
      return 1.0;
    }
  }

  [v4 floatValue];
  return v5;
}

+ (double)kenBurnsStartZoomLevelFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", options), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"kenBurnsStartZoom"}];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (double)kenBurnsEndZoomLevelFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", options), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"kenBurnsEndZoom"}];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (BOOL)kenBurnsAlwaysZoomInFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", options), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"kenBurnsAlwaysZoomIn"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)kenBurnsBreaksFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", options), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"kenBurnsBreaks"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)easeKenBurnsPanFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", options), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"easeKenBurnsPan"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (int64_t)kenBurnsLevelFromOptions:(id)options
{
  v4 = [options objectForKey:kMPAuthoringKenBurnsLevel];
  if (!v4 || (result = [v4 integerValue], result == -1))
  {
    result = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  }

  if (result == -1)
  {
    return 1;
  }

  return result;
}

+ (int64_t)kenBurnsOffsetTypeFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", options), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"kenBurnsOffsetType"}];
  if (!v3)
  {
    return -1;
  }

  return [v3 integerValue];
}

+ (BOOL)layerCanSkipScaleCalculation:(id)calculation withOptions:(id)options
{
  if ([calculation isAudioLayer])
  {
    return 1;
  }

  layerID = [calculation layerID];
  if (layerID)
  {
    v9 = [objc_msgSend(objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  }

  else
  {
    v9 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [self layerIndexFromOptions:options], +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:", options));
  }

  v10 = v9;
  v11 = [v9 objectForKey:@"matchDuration"];
  return (v11 | [v10 objectForKey:@"fillDuration"]) != 0;
}

+ (BOOL)alignToBeatsFromOptions:(id)options
{
  if ([objc_msgSend(options objectForKey:{kMPAuthoringIgnoreBeats), "BOOLValue"}])
  {
    return 0;
  }

  v4 = [MPAuthoringUtilities audioScalingModeFromOptions:options]== &dword_0 + 1;
  v5 = [options objectForKey:kMPAuthoringAlignToBeats];
  if (!v5)
  {
    return v4;
  }

  return [v5 BOOLValue];
}

+ (BOOL)createBeatsFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringCreateBeats];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)lockTransitionDurationFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringLockTransitionDuration];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"lockTransitionDuration"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (double)layerTimeScaleFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringLayerTimeScale];
  if (v5)
  {
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  return v7 * v8;
}

+ (BOOL)replaceAudioPlaylistFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringReplaceAudioPlaylist];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (CGColor)backgroundColorFromOptions:(id)options
{
  v4 = [options objectForKey:kMPAuthoringBackgroundColor];
  if (v4)
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = [MPUtilities CGColorFromString:v5];
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    result = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    if (result)
    {
      return result;
    }
  }

  return +[MPUtilities blackCGColor];
}

+ (BOOL)matchPhasesWithTransitionFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringMatchPhasesWithTransition];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"phasesMatchTransition"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (double)durationPerEffectFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringEffectDuration];
  if (!v5 || ([v5 doubleValue], result == -1.0))
  {
    v7 = +[MPStyleManager sharedManager];
    v8 = [self layerIndexFromOptions:options];
    v9 = [self styleFromOptions:options];

    [v7 defaultEffectDurationForLayer:v8 ofStyle:v9];
  }

  return result;
}

+ (double)layerOffsetFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", options), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"offset"}];
  if (!v3)
  {
    return 0.0;
  }

  [v3 doubleValue];
  return result;
}

+ (BOOL)canRepeatEffectWithPreset:(id)preset
{
  v5 = [preset objectForKey:kMPAuthoringCanRepeatEffectWithPreset];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", preset), objc_msgSend(self, "styleFromOptions:", preset)), "objectForKey:", @"canRepeatEffectWithPreset"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (BOOL)effectNeedsPreviousAttributesFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringEffectNeedsPreviousAttributes];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"effectNeedsPreviousAttributes"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (BOOL)canRepeatPreset:(id)preset
{
  v5 = [preset objectForKey:kMPAuthoringCanRepeatPreset];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", preset), objc_msgSend(self, "styleFromOptions:", preset)), "objectForKey:", @"canRepeatPreset"}];
    if (!v5)
    {
      return 1;
    }
  }

  return [v5 BOOLValue];
}

+ (double)transitionDurationFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringTransitionDuration];
  if (!v5 || ([v5 doubleValue], result == -1.0))
  {
    v7 = +[MPStyleManager sharedManager];
    v8 = [self layerIndexFromOptions:options];
    v9 = [self styleFromOptions:options];
    [self aspectRatioFromOptions:options];

    [v7 defaultTransitionDurationForLayer:v8 ofStyle:v9 withAspectRatio:?];
  }

  return result;
}

+ (BOOL)useBestAspectRatioFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringUseBestAspectRatio];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)useROIFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringUseROIForCropping];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"useROIs"}];
    if (!v5)
    {
      return 1;
    }
  }

  return [v5 BOOLValue];
}

+ (BOOL)useTitleEffectFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringUseTitleEffect];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)useImageOnlyTitleEffectFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringUseImageOnlyTitleEffect];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)useDefaultAudioFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringUseDefaultAudio];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)fitMoviesWhenPossibleFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringFitMoviesWhenPossible];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (unint64_t)randomSeedFromOptions:(id)options
{
  v4 = time(0);
  if ([MPAuthoringUtilities presentationOrderFromOptions:options]== &dword_0 + 3)
  {
    return v4;
  }

  v5 = [options objectForKey:kMPAuthoringSeed];
  if (!v5)
  {
    return v4;
  }

  return [v5 unsignedIntegerValue];
}

+ (double)aspectRatioFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringAspectRatio];
  if (!v3)
  {
    return 1.77777778;
  }

  [v3 floatValue];
  return v4;
}

+ (id)effectListFromOptions:(id)options
{
  result = [options objectForKey:kMPAuthoringEffectList];
  if (!result)
  {
    v5 = [MPAuthoringUtilities styleFromOptions:options];
    v6 = [MPAuthoringUtilities layerIndexFromOptions:options];
    v7 = +[MPStyleManager sharedManager];

    return [v7 effectPresetsForLayerIndex:v6 ofStyleID:v5];
  }

  return result;
}

+ (double)kenBurnsZoomFactorFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringKenBurnsZoomFactor];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"animatedCroppingZoomFactor"}];
    if (!v5)
    {
      return 1.0;
    }
  }

  [v5 floatValue];
  return v6;
}

+ (BOOL)collectVersionInformationFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringSaveVersionInformation];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)repeatTransitionsFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringRepeatTransitions];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"repeatTransitions"}];
    if (!v5)
    {
      return 1;
    }
  }

  return [v5 BOOLValue];
}

+ (id)transitionListFromOptions:(id)options
{
  result = [options objectForKey:kMPAuthoringTransitionList];
  if (!result)
  {
    v6 = [self layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)}];

    return [v6 objectForKey:@"transitionPresets"];
  }

  return result;
}

+ (id)outroEffectIDFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringOutroEffectID];
  if ([v5 isEqualToString:&stru_1AC858])
  {
    return 0;
  }

  if (v5)
  {
    return v5;
  }

  v7 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [self layerIndexFromOptions:options], objc_msgSend(self, "styleFromOptions:", options));

  return [v7 objectForKey:@"outroEffect"];
}

+ (double)introDurationFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringIntroDuration];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"introDuration"}];
    if (!v5)
    {
      return -1.0;
    }
  }

  [v5 doubleValue];
  return result;
}

+ (BOOL)useIntroTransition:(id)transition
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:"), objc_msgSend(self, "styleFromOptions:", transition)), "objectForKey:", @"useIntroTransition"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (double)outroDurationFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringOutroDuration];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"outroDuration"}];
    if (!v5)
    {
      return -1.0;
    }
  }

  [v5 doubleValue];
  return result;
}

+ (BOOL)scaleOutroEffectFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringScaleOutroEffect];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"scaleOutroEffect"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (int64_t)minimumNumberOfDynamicSlidesToAddFromOptions:(id)options
{
  result = [options objectForKey:kMPAuthoringDynamicMinimumSlidesToAdd];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

+ (int64_t)maxNumberOfSlidesToPreloadFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringLiveMaxSlidePreload];
  if (!v3)
  {
    return 15;
  }

  return [v3 integerValue];
}

+ (id)introEffectIDFromOptions:(id)options
{
  result = [options objectForKey:kMPAuthoringIntroEffectID];
  if (!result)
  {
    v6 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [self layerIndexFromOptions:options], objc_msgSend(self, "styleFromOptions:", options));

    return [v6 objectForKey:@"introEffect"];
  }

  return result;
}

+ (id)titleEffectFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringTitleEffect];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [NSDictionary dictionaryWithObjectsAndKeys:@"background", @"layer", v6, @"presetID", 0];
  }

LABEL_6:
  v8 = [self styleFromOptions:options];
  v9 = +[MPStyleManager sharedManager];

  return [v9 titleEffectLayoutForStyleID:v8];
}

+ (id)idFromPresetID:(id)d
{
  if ([d rangeOfString:@"/"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return d;
  }

  v5 = [d rangeOfString:@"/"];

  return [d substringToIndex:v5];
}

+ (id)presetIDFromPresetID:(id)d
{
  v3 = [d componentsSeparatedByString:@"/"];
  if ([v3 count] < 2)
  {
    return @"Default";
  }

  return [v3 objectAtIndex:1];
}

+ (BOOL)shouldComputeFramesFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:"), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"frames"}];
  if (v3)
  {
    LOBYTE(v3) = [v3 count] != 0;
  }

  return v3;
}

+ (BOOL)shouldComputeTransitionsFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringSkipTransitions];
  if (v5)
  {

    LOBYTE(v6) = [v5 BOOLValue];
  }

  else
  {
    v6 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"transitionPresets"}];
    if (v6)
    {
      LOBYTE(v6) = [v6 count] != 0;
    }
  }

  return v6;
}

+ (id)lastPresetFromOptions:(id)options
{
  result = [options objectForKey:kMPAuthoringLastPreset];
  if (!result)
  {
    v6 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [self layerIndexFromOptions:options], objc_msgSend(self, "styleFromOptions:", options));

    return [v6 objectForKey:@"lastPreset"];
  }

  return result;
}

+ (BOOL)shouldComputeSlideFiltersFromOptions:(id)options
{
  v3 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [self layerIndexFromOptions:?], objc_msgSend(self, "styleFromOptions:", options));
  v4 = [v3 objectForKey:@"filterPresets"];
  v5 = [v3 objectForKey:@"slideFilterPresetCriteria"];
  result = v4 && ((v6 = v5, [v4 count]) ? (v7 = v6 == 0) : (v7 = 1), !v7) && objc_msgSend(v6, "count") != 0;
  return result;
}

+ (BOOL)shouldComputeLoopTransitionFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringUseLoopTransition];
  if (!v5)
  {
    return [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"loopTransition"}] != 0;
  }

  return [v5 BOOLValue];
}

+ (double)effectPadding:(id)padding
{
  v3 = [padding objectForKey:kMPAuthoringEffectPadding];
  if (!v3)
  {
    return 0.0;
  }

  [v3 floatValue];
  return v4;
}

+ (id)loopTransitionIDFromOptions:(id)options
{
  v3 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [self layerIndexFromOptions:?], objc_msgSend(self, "styleFromOptions:", options));

  return [v3 objectForKey:@"loopTransition"];
}

+ (id)exportTransitionIDFromOptions:(id)options
{
  v3 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [self layerIndexFromOptions:?], objc_msgSend(self, "styleFromOptions:", options));

  return [v3 objectForKey:@"exportTransition"];
}

+ (double)exportTransitionDurationFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:"), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"exportTransitionDuration"}];

  [v3 doubleValue];
  return result;
}

+ (id)layerDescriptionForLayerWithZIndex:(int64_t)index forStyle:(id)style
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [objc_msgSend(objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v14;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v13 + 1) + 8 * i);
      if ([objc_msgSend(v11 objectForKey:{@"zIndex", "integerValue"}] == index)
      {
        v8 = v11;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v7);
  return v8;
}

+ (BOOL)layerHasImagesFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringLayerHasImages];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"hasImages"}];
    if (!v5)
    {
      return 1;
    }
  }

  return [v5 BOOLValue];
}

+ (int64_t)numberOfLayersFromOptions:(id)options
{
  v3 = [self styleFromOptions:options];
  if (!v3)
  {
    return 1;
  }

  v4 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];

  return [v4 count];
}

+ (double)minimumTransitionDurationFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringMinimumTransitionDuration];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"minimumTransitionDuration"}];
    if (!v5)
    {
      return 0.0;
    }
  }

  [v5 doubleValue];
  return result;
}

+ (double)maximumTransitionDurationFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringMaximumTransitionDuration];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"maximumTransitionDuration"}];
    if (!v5)
    {
      return 10000000.0;
    }
  }

  [v5 doubleValue];
  return result;
}

+ (double)minimumEffectDurationFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringMinimumEffectDuration];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"minimumEffectDuration"}];
    if (!v5)
    {
      return 0.0;
    }
  }

  [v5 doubleValue];
  return result;
}

+ (BOOL)useUniformDurations:(id)durations
{
  v3 = [durations objectForKey:kMPAuthoringUniformDurations];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)padTextOnlyEffects:(id)effects
{
  v3 = [effects objectForKey:kMPAuthoringPadTextOnlyEffects];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (double)movieVolumeFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringMovieVolume];
  if (!v3)
  {
    return 1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (BOOL)effectDecidesTransitionFromOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringEffectDecidesTransition];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"effectDecidesTransition"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (id)colorSchemeFromOptions:(id)options
{
  v4 = [self styleFromOptions:?];
  result = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (result)
  {
    v6 = result;
    result = [result objectForKey:{objc_msgSend(options, "objectForKey:", kMPAuthoringColorScheme)}];
    if (!result)
    {
      result = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
      if (result)
      {

        return [v6 objectForKey:result];
      }
    }
  }

  return result;
}

+ (unint64_t)reorderModeFromOptions:(id)options
{
  if (![objc_msgSend(options objectForKey:{@"isChangingAspectRatio", "BOOLValue"}])
  {
    return 3;
  }

  v5 = [self styleFromOptions:options];
  if ([v5 isEqualToString:@"Places"])
  {
    return 3;
  }

  result = [options objectForKey:kMPAuthoringReorderMode];
  if (result || (result = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")]) != 0)
  {

    return [result integerValue];
  }

  return result;
}

+ (BOOL)canHaveTransitionsFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:"), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"canHaveTransitions"}];
  if (!v3)
  {
    return 1;
  }

  [v3 doubleValue];
  return v4 != 0.0;
}

+ (BOOL)useROIAspectRatioFromOptions:(id)options
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)needsFitMovieAttributeFromOptions:(id)options
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)pickTransitionsEvenlyByIDWithOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringPickTransitionEvenlyByID];
  if (v5)
  {

    LOBYTE(v6) = [v5 BOOLValue];
  }

  else
  {
    v6 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"pickTransitionsEvenlyByID"}];
    if (v6)
    {
      [v6 doubleValue];
      LOBYTE(v6) = v7 != 0.0;
    }
  }

  return v6;
}

+ (BOOL)pickEffectsEvenlyByIDWithOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringPickEffectsEvenlyByID];
  if (v5)
  {

    LOBYTE(v6) = [v5 BOOLValue];
  }

  else
  {
    v7 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [self layerIndexFromOptions:options], objc_msgSend(self, "styleFromOptions:", options));
    v6 = [v7 objectForKey:@"pickEffectsEvenlyByID"];
    if (v6 || (v6 = [v7 objectForKey:@"PlatformSpecific"]) != 0 && (v9 = objc_msgSend(v7, "objectForKey:", @"PlatformSpecific"), LODWORD(v6) = MRIsAppleTV(), v6) && (v6 = objc_msgSend(v9, "objectForKey:", @"AppleTV")) != 0 && (v6 = objc_msgSend(objc_msgSend(v9, "objectForKey:", @"AppleTV"), "objectForKey:", @"pickEffectsEvenlyByID")) != 0)
    {
      [v6 doubleValue];
      LOBYTE(v6) = v8 != 0.0;
    }
  }

  return v6;
}

+ (BOOL)canAdjustPhaseDurations:(id)durations
{
  v5 = [durations objectForKey:kMPAuthoringCanAdjustPhaseDurations];
  if (v5)
  {

    return [v5 BOOLValue];
  }

  else
  {
    v7 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", durations), objc_msgSend(self, "styleFromOptions:", durations)), "objectForKey:", @"canAdjustPhaseDurations"}];
    if (v7)
    {
      [v7 doubleValue];
      return v8 != 0.0;
    }

    else
    {
      return 1;
    }
  }
}

+ (BOOL)requestGeneratedImagesFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringRequestGeneratedImages];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)useTransitionLayoutTagsWithOptions:(id)options
{
  v5 = [options objectForKey:kMPAuthoringPickTransitionEvenlyByID];
  if (v5)
  {

    LOBYTE(v6) = [v5 BOOLValue];
  }

  else
  {
    v6 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"useTransitionLayoutTags"}];
    if (v6)
    {
      [v6 doubleValue];
      LOBYTE(v6) = v7 != 0.0;
    }
  }

  return v6;
}

+ (BOOL)fadeOutAudioFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringFadeOutAudio];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)shouldDuckMoviesFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringDuckMovies];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)alwaysIncludeLastTransitionFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringAlwaysIncludeLastTransition];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (unint64_t)presentationOrderFromOptions:(id)options
{
  v4 = [self styleFromOptions:?];
  v5 = [options objectForKey:kMPAuthoringImageOrderingMode];
  if (v5)
  {

    return [v5 integerValue];
  }

  else
  {
    v7 = +[MPStyleManager sharedManager];

    return [v7 mediaPresentationOrderForStyleID:v4];
  }
}

+ (id)layerTypeFromOptions:(id)options
{
  result = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:"), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"type"}];
  if (!result)
  {
    return @"serial";
  }

  return result;
}

+ (_NSRange)reconfigureRangeFromOptions:(id)options
{
  rangeValue = [options objectForKey:kMPAuthoringReconfigureIndices];
  if (rangeValue)
  {

    rangeValue = [rangeValue rangeValue];
  }

  else
  {
    v4 = 0;
  }

  result.length = v4;
  result.location = rangeValue;
  return result;
}

+ (unint64_t)regionOfInterestPickModeFromOptions:(id)options
{
  v4 = [self styleFromOptions:?];
  v5 = [options objectForKey:kMPAuthoringRegionOfInterestPickMode];
  if (v5)
  {

    return [v5 integerValue];
  }

  else
  {
    v7 = +[MPStyleManager sharedManager];

    return [v7 regionOfInterestPickModeForStyleID:v4];
  }
}

+ (BOOL)performFaceDetectionFromOptions:(id)options
{
  v4 = [options objectForKey:kMPAuthoringPerformFaceDetection];
  v5 = [options objectForKey:kMPAuthoringDetectFacesInBackground];
  bOOLValue = [v4 BOOLValue];
  if (bOOLValue)
  {
    LOBYTE(bOOLValue) = [v5 BOOLValue] ^ 1;
  }

  return bOOLValue;
}

+ (double)fadeOutDurationFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:"), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"fadeOut"}];
  if (!v3)
  {
    return 0.0;
  }

  [v3 doubleValue];
  return result;
}

+ (BOOL)scaleEffectsForPanoramasFromOptions:(id)options
{
  v5 = [options objectForKey:@"scaleEffectsForPanoramas"];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:", options), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"scaleEffectsForPanoramas"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (double)breakDurationScaleFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:"), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"breakDurationScale"}];
  if (!v3)
  {
    return 1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (double)portraitBreakDurationScaleFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:"), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"breakPortraitDurationScale"}];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (double)baseBreakAspectRatioFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:"), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"baseBreakAspectRatio"}];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (double)basePortraitBreakAspectRatioFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:"), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"basePortraitBreakAspectRatio"}];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (unint64_t)screenSizeFromOptions:(id)options
{
  result = [options objectForKey:kMPAuthoringScreenSize];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

+ (_NSRange)videoPathsRangeFromOptions:(id)options
{
  rangeValue = [options objectForKey:kMPAuthoringVideoPathIndicies];
  if (rangeValue)
  {

    rangeValue = [rangeValue rangeValue];
  }

  else
  {
    v4 = 0;
  }

  result.length = v4;
  result.location = rangeValue;
  return result;
}

+ (BOOL)useLargestEffectsFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:"), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"useLargestEffects"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)matchEffectsUsingTagsFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:"), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"matchEffectsUsingTags"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)isLayerEffectAuthoredFromOptions:(id)options
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(self forStyle:{"layerIndexFromOptions:"), objc_msgSend(self, "styleFromOptions:", options)), "objectForKey:", @"effectAuthored"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)aspectRatioMatchesDefault:(id)default withOptions:(id)options
{
  if (!default)
  {
    return 1;
  }

  [MPAuthoringUtilities aspectRatioFromOptions:options];
  v6 = v5;
  if ([default isEqualToString:@"4:3"])
  {
    v7 = -1.33333337;
    return fabs(v6 + v7) < 0.00001;
  }

  if ([default isEqualToString:@"3:4"])
  {
    v7 = -0.75;
    return fabs(v6 + v7) < 0.00001;
  }

  if ([default isEqualToString:@"3:2"])
  {
    v7 = -1.5;
    return fabs(v6 + v7) < 0.00001;
  }

  if ([default isEqualToString:@"2:3"])
  {
    v7 = -0.666666687;
    return fabs(v6 + v7) < 0.00001;
  }

  if ([default isEqualToString:@"16:9"])
  {
    v7 = -1.77777779;
    return fabs(v6 + v7) < 0.00001;
  }

  if ([default isEqualToString:@"HiddenAspectRatio"])
  {
    v7 = -0.5625;
    return fabs(v6 + v7) < 0.00001;
  }

  return 1;
}

+ (CGRect)rectToFitIn:(CGRect)in withAspectRatio:(double)ratio
{
  if (in.size.width / ratio >= in.size.height)
  {
    height = in.size.height;
  }

  else
  {
    height = in.size.width / ratio;
  }

  v5 = height * ratio;
  v6 = (in.size.width - v5) * 0.5;
  v7 = (in.size.height - height) * 0.5;
  v8 = v5;
  v9 = height;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGPoint)kbCenterPointFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MidX = CGRectGetMidX(rect);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v8 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v9 = MidX + v8 * (CGRectGetMidX(v16) + -0.5);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MidY = CGRectGetMidY(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v11 = CGRectGetHeight(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v12 = MidY + v11 * (CGRectGetMidY(v19) + -0.5);
  v13 = v9;
  result.y = v12;
  result.x = v13;
  return result;
}

+ (double)multilineSizeFactorFromOptions:(id)options
{
  v3 = [options objectForKey:kMPAuthoringMultilineSizeFactor];
  if (!v3)
  {
    return 1.0;
  }

  [v3 floatValue];
  return v4;
}

@end