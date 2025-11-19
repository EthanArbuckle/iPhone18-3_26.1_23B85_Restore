@interface MPAuthoringUtilities
+ (BOOL)alignToBeatsFromOptions:(id)a3;
+ (BOOL)alwaysIncludeLastTransitionFromOptions:(id)a3;
+ (BOOL)aspectRatioMatchesDefault:(id)a3 withOptions:(id)a4;
+ (BOOL)canAdjustPhaseDurations:(id)a3;
+ (BOOL)canHaveTransitionsFromOptions:(id)a3;
+ (BOOL)canRepeatEffectWithPreset:(id)a3;
+ (BOOL)canRepeatPreset:(id)a3;
+ (BOOL)collectVersionInformationFromOptions:(id)a3;
+ (BOOL)createBeatsFromOptions:(id)a3;
+ (BOOL)easeKenBurnsPanFromOptions:(id)a3;
+ (BOOL)effectDecidesTransitionFromOptions:(id)a3;
+ (BOOL)effectNeedsPreviousAttributesFromOptions:(id)a3;
+ (BOOL)fadeOutAudioFromOptions:(id)a3;
+ (BOOL)fitMoviesWhenPossibleFromOptions:(id)a3;
+ (BOOL)ignoreClusteringForImages:(id)a3 withOptions:(id)a4;
+ (BOOL)isLayerEffectAuthoredFromOptions:(id)a3;
+ (BOOL)kenBurnsAlwaysZoomInFromOptions:(id)a3;
+ (BOOL)kenBurnsBreaksFromOptions:(id)a3;
+ (BOOL)layerCanSkipScaleCalculation:(id)a3 withOptions:(id)a4;
+ (BOOL)layerHasImagesFromOptions:(id)a3;
+ (BOOL)lockTransitionDurationFromOptions:(id)a3;
+ (BOOL)matchEffectsUsingTagsFromOptions:(id)a3;
+ (BOOL)matchPhasesWithTransitionFromOptions:(id)a3;
+ (BOOL)needsFitMovieAttributeFromOptions:(id)a3;
+ (BOOL)padTextOnlyEffects:(id)a3;
+ (BOOL)performFaceDetectionFromOptions:(id)a3;
+ (BOOL)pickEffectsEvenlyByIDWithOptions:(id)a3;
+ (BOOL)pickTransitionsEvenlyByIDWithOptions:(id)a3;
+ (BOOL)repeatTransitionsFromOptions:(id)a3;
+ (BOOL)replaceAudioPlaylistFromOptions:(id)a3;
+ (BOOL)requestGeneratedImagesFromOptions:(id)a3;
+ (BOOL)scaleEffectsForPanoramasFromOptions:(id)a3;
+ (BOOL)scaleOutroEffectFromOptions:(id)a3;
+ (BOOL)shouldComputeFramesFromOptions:(id)a3;
+ (BOOL)shouldComputeLoopTransitionFromOptions:(id)a3;
+ (BOOL)shouldComputeSlideFiltersFromOptions:(id)a3;
+ (BOOL)shouldComputeTransitionsFromOptions:(id)a3;
+ (BOOL)shouldDuckMoviesFromOptions:(id)a3;
+ (BOOL)useBestAspectRatioFromOptions:(id)a3;
+ (BOOL)useDefaultAudioFromOptions:(id)a3;
+ (BOOL)useImageOnlyTitleEffectFromOptions:(id)a3;
+ (BOOL)useIntroTransition:(id)a3;
+ (BOOL)useLargestEffectsFromOptions:(id)a3;
+ (BOOL)useROIAspectRatioFromOptions:(id)a3;
+ (BOOL)useROIFromOptions:(id)a3;
+ (BOOL)useTitleEffectFromOptions:(id)a3;
+ (BOOL)useTransitionLayoutTagsWithOptions:(id)a3;
+ (BOOL)useUniformDurations:(id)a3;
+ (CGColor)backgroundColorFromOptions:(id)a3;
+ (CGPoint)kbCenterPointFromRect:(CGRect)a3;
+ (CGRect)rectToFitIn:(CGRect)a3 withAspectRatio:(double)a4;
+ (_NSRange)reconfigureRangeFromOptions:(id)a3;
+ (_NSRange)videoPathsRangeFromOptions:(id)a3;
+ (double)aspectRatioFromOptions:(id)a3;
+ (double)audioDurationFactorFromOptions:(id)a3;
+ (double)audioDurationFromOptions:(id)a3;
+ (double)baseBreakAspectRatioFromOptions:(id)a3;
+ (double)basePortraitBreakAspectRatioFromOptions:(id)a3;
+ (double)breakDurationScaleFromOptions:(id)a3;
+ (double)durationPerEffectFromOptions:(id)a3;
+ (double)effectPadding:(id)a3;
+ (double)exportTransitionDurationFromOptions:(id)a3;
+ (double)fadeOutDurationFromOptions:(id)a3;
+ (double)introDurationFromOptions:(id)a3;
+ (double)kenBurnsEndZoomLevelFromOptions:(id)a3;
+ (double)kenBurnsLikelihoodFromOptions:(id)a3;
+ (double)kenBurnsPanFactorFromOptions:(id)a3;
+ (double)kenBurnsStartZoomLevelFromOptions:(id)a3;
+ (double)kenBurnsZoomFactorFromOptions:(id)a3;
+ (double)layerOffsetFromOptions:(id)a3;
+ (double)layerTimeScaleFromOptions:(id)a3;
+ (double)maxKenBurnsZoomFromOptions:(id)a3;
+ (double)maximumTransitionDurationFromOptions:(id)a3;
+ (double)minimumEffectDurationFromOptions:(id)a3;
+ (double)minimumTransitionDurationFromOptions:(id)a3;
+ (double)movieVolumeFromOptions:(id)a3;
+ (double)multilineSizeFactorFromOptions:(id)a3;
+ (double)outroDurationFromOptions:(id)a3;
+ (double)portraitBreakDurationScaleFromOptions:(id)a3;
+ (double)transitionDurationFromOptions:(id)a3;
+ (id)colorSchemeFromOptions:(id)a3;
+ (id)effectListFromOptions:(id)a3;
+ (id)exportTransitionIDFromOptions:(id)a3;
+ (id)idFromPresetID:(id)a3;
+ (id)introEffectIDFromOptions:(id)a3;
+ (id)lastPresetFromOptions:(id)a3;
+ (id)layerDescriptionForLayerWithZIndex:(int64_t)a3 forStyle:(id)a4;
+ (id)layerTypeFromOptions:(id)a3;
+ (id)loopTransitionIDFromOptions:(id)a3;
+ (id)outroEffectIDFromOptions:(id)a3;
+ (id)presetIDFromPresetID:(id)a3;
+ (id)styleFromOptions:(id)a3;
+ (id)titleEffectFromOptions:(id)a3;
+ (id)transitionListFromOptions:(id)a3;
+ (id)urlsFromPaths:(id)a3;
+ (int64_t)kenBurnsLevelFromOptions:(id)a3;
+ (int64_t)kenBurnsOffsetTypeFromOptions:(id)a3;
+ (int64_t)layerIndexFromOptions:(id)a3;
+ (int64_t)maxNumberOfSlidesToPreloadFromOptions:(id)a3;
+ (int64_t)minimumNumberOfDynamicSlidesToAddFromOptions:(id)a3;
+ (int64_t)numberOfLayersFromOptions:(id)a3;
+ (unint64_t)audioScalingModeFromOptions:(id)a3;
+ (unint64_t)croppingModeForFitMoviesFromOptions:(id)a3;
+ (unint64_t)croppingModeFromOptions:(id)a3;
+ (unint64_t)presentationOrderFromOptions:(id)a3;
+ (unint64_t)randomSeedFromOptions:(id)a3;
+ (unint64_t)regionOfInterestPickModeFromOptions:(id)a3;
+ (unint64_t)reorderModeFromOptions:(id)a3;
+ (unint64_t)screenSizeFromOptions:(id)a3;
@end

@implementation MPAuthoringUtilities

+ (BOOL)ignoreClusteringForImages:(id)a3 withOptions:(id)a4
{
  v5 = [a4 objectForKey:kMPAuthoringUseClustering];
  if (!v5 || ![v5 BOOLValue])
  {
    LOBYTE(v9) = 1;
    return v9;
  }

  v6 = [a4 objectForKey:kMPAuthoringStyleID];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Classic";
  }

  v8 = [a4 objectForKey:kMPAuthoringImageOrderingMode];
  if (v8)
  {
    v9 = [v8 integerValue];
    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    v9 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
    if (!v9)
    {
      return v9;
    }
  }

  v10 = [a4 objectForKey:kMPAuthoringEffectList];
  if (!v10)
  {
    v10 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  }

  v9 = [v10 count];
  if (v9 != &dword_0 + 1)
  {
    v9 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    if (v9 != &dword_0 + 1)
    {
      LOBYTE(v9) = v9 == [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    }
  }

  return v9;
}

+ (id)urlsFromPaths:(id)a3
{
  v4 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(a3);
        }

        [v4 addObject:{+[NSURL fileURLWithPath:](NSURL, "fileURLWithPath:", *(*(&v10 + 1) + 8 * v8))}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)styleFromOptions:(id)a3
{
  result = [a3 objectForKey:kMPAuthoringStyleID];
  if (!result)
  {
    return @"Classic";
  }

  return result;
}

+ (int64_t)layerIndexFromOptions:(id)a3
{
  result = [a3 objectForKey:kMPAuthoringLayerIndex];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

+ (double)audioDurationFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringAudioDuration];
  if (!v3)
  {
    return -1.0;
  }

  [v3 doubleValue];
  return result;
}

+ (double)audioDurationFactorFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringAudioDurationFactor];
  if (!v3)
  {
    return -1.0;
  }

  [v3 doubleValue];
  return result;
}

+ (unint64_t)audioScalingModeFromOptions:(id)a3
{
  result = [a3 objectForKey:kMPAuthoringAudioScalingMode];
  if (result)
  {

    return [result unsignedIntegerValue];
  }

  return result;
}

+ (unint64_t)croppingModeFromOptions:(id)a3
{
  result = [a3 objectForKey:kMPAuthoringCroppingMode];
  if (result || (result = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")]) != 0)
  {

    return [result unsignedIntegerValue];
  }

  return result;
}

+ (unint64_t)croppingModeForFitMoviesFromOptions:(id)a3
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (!v3)
  {
    return -1;
  }

  return [v3 integerValue];
}

+ (double)kenBurnsLikelihoodFromOptions:(id)a3
{
  v4 = [a3 objectForKey:kMPAuthoringKenBurnsLikelihood];
  if (v4)
  {
    [v4 floatValue];
    if (v5 != -1.0)
    {
      return v5;
    }
  }

  v6 = [MPAuthoringUtilities styleFromOptions:a3];
  v7 = [MPAuthoringUtilities layerIndexFromOptions:a3];
  v8 = +[MPStyleManager sharedManager];

  [v8 defaultAutoKenBurnsLikelihoodForZIndex:v7 ofStyle:v6];
  return result;
}

+ (double)maxKenBurnsZoomFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringKenBurnsMaxZoom];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (double)kenBurnsPanFactorFromOptions:(id)a3
{
  v4 = [a3 objectForKey:kMPAuthoringKenBurnsPanFactor];
  if (!v4)
  {
    v4 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", a3), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:", a3)), "objectForKey:", @"kenBurnsPanFactor"}];
    if (!v4)
    {
      return 1.0;
    }
  }

  [v4 floatValue];
  return v5;
}

+ (double)kenBurnsStartZoomLevelFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", a3), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"kenBurnsStartZoom"}];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (double)kenBurnsEndZoomLevelFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", a3), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"kenBurnsEndZoom"}];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (BOOL)kenBurnsAlwaysZoomInFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", a3), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"kenBurnsAlwaysZoomIn"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)kenBurnsBreaksFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", a3), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"kenBurnsBreaks"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)easeKenBurnsPanFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", a3), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"easeKenBurnsPan"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (int64_t)kenBurnsLevelFromOptions:(id)a3
{
  v4 = [a3 objectForKey:kMPAuthoringKenBurnsLevel];
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

+ (int64_t)kenBurnsOffsetTypeFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", a3), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"kenBurnsOffsetType"}];
  if (!v3)
  {
    return -1;
  }

  return [v3 integerValue];
}

+ (BOOL)layerCanSkipScaleCalculation:(id)a3 withOptions:(id)a4
{
  if ([a3 isAudioLayer])
  {
    return 1;
  }

  v8 = [a3 layerID];
  if (v8)
  {
    v9 = [objc_msgSend(objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  }

  else
  {
    v9 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [a1 layerIndexFromOptions:a4], +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:", a4));
  }

  v10 = v9;
  v11 = [v9 objectForKey:@"matchDuration"];
  return (v11 | [v10 objectForKey:@"fillDuration"]) != 0;
}

+ (BOOL)alignToBeatsFromOptions:(id)a3
{
  if ([objc_msgSend(a3 objectForKey:{kMPAuthoringIgnoreBeats), "BOOLValue"}])
  {
    return 0;
  }

  v4 = [MPAuthoringUtilities audioScalingModeFromOptions:a3]== &dword_0 + 1;
  v5 = [a3 objectForKey:kMPAuthoringAlignToBeats];
  if (!v5)
  {
    return v4;
  }

  return [v5 BOOLValue];
}

+ (BOOL)createBeatsFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringCreateBeats];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)lockTransitionDurationFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringLockTransitionDuration];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"lockTransitionDuration"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (double)layerTimeScaleFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringLayerTimeScale];
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

+ (BOOL)replaceAudioPlaylistFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringReplaceAudioPlaylist];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (CGColor)backgroundColorFromOptions:(id)a3
{
  v4 = [a3 objectForKey:kMPAuthoringBackgroundColor];
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

+ (BOOL)matchPhasesWithTransitionFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringMatchPhasesWithTransition];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"phasesMatchTransition"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (double)durationPerEffectFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringEffectDuration];
  if (!v5 || ([v5 doubleValue], result == -1.0))
  {
    v7 = +[MPStyleManager sharedManager];
    v8 = [a1 layerIndexFromOptions:a3];
    v9 = [a1 styleFromOptions:a3];

    [v7 defaultEffectDurationForLayer:v8 ofStyle:v9];
  }

  return result;
}

+ (double)layerOffsetFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:+[MPAuthoringUtilities layerIndexFromOptions:](MPAuthoringUtilities forStyle:{"layerIndexFromOptions:", a3), +[MPAuthoringUtilities styleFromOptions:](MPAuthoringUtilities, "styleFromOptions:")), "objectForKey:", @"offset"}];
  if (!v3)
  {
    return 0.0;
  }

  [v3 doubleValue];
  return result;
}

+ (BOOL)canRepeatEffectWithPreset:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringCanRepeatEffectWithPreset];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"canRepeatEffectWithPreset"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (BOOL)effectNeedsPreviousAttributesFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringEffectNeedsPreviousAttributes];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"effectNeedsPreviousAttributes"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (BOOL)canRepeatPreset:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringCanRepeatPreset];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"canRepeatPreset"}];
    if (!v5)
    {
      return 1;
    }
  }

  return [v5 BOOLValue];
}

+ (double)transitionDurationFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringTransitionDuration];
  if (!v5 || ([v5 doubleValue], result == -1.0))
  {
    v7 = +[MPStyleManager sharedManager];
    v8 = [a1 layerIndexFromOptions:a3];
    v9 = [a1 styleFromOptions:a3];
    [a1 aspectRatioFromOptions:a3];

    [v7 defaultTransitionDurationForLayer:v8 ofStyle:v9 withAspectRatio:?];
  }

  return result;
}

+ (BOOL)useBestAspectRatioFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringUseBestAspectRatio];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)useROIFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringUseROIForCropping];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"useROIs"}];
    if (!v5)
    {
      return 1;
    }
  }

  return [v5 BOOLValue];
}

+ (BOOL)useTitleEffectFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringUseTitleEffect];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)useImageOnlyTitleEffectFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringUseImageOnlyTitleEffect];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)useDefaultAudioFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringUseDefaultAudio];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)fitMoviesWhenPossibleFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringFitMoviesWhenPossible];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (unint64_t)randomSeedFromOptions:(id)a3
{
  v4 = time(0);
  if ([MPAuthoringUtilities presentationOrderFromOptions:a3]== &dword_0 + 3)
  {
    return v4;
  }

  v5 = [a3 objectForKey:kMPAuthoringSeed];
  if (!v5)
  {
    return v4;
  }

  return [v5 unsignedIntegerValue];
}

+ (double)aspectRatioFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringAspectRatio];
  if (!v3)
  {
    return 1.77777778;
  }

  [v3 floatValue];
  return v4;
}

+ (id)effectListFromOptions:(id)a3
{
  result = [a3 objectForKey:kMPAuthoringEffectList];
  if (!result)
  {
    v5 = [MPAuthoringUtilities styleFromOptions:a3];
    v6 = [MPAuthoringUtilities layerIndexFromOptions:a3];
    v7 = +[MPStyleManager sharedManager];

    return [v7 effectPresetsForLayerIndex:v6 ofStyleID:v5];
  }

  return result;
}

+ (double)kenBurnsZoomFactorFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringKenBurnsZoomFactor];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"animatedCroppingZoomFactor"}];
    if (!v5)
    {
      return 1.0;
    }
  }

  [v5 floatValue];
  return v6;
}

+ (BOOL)collectVersionInformationFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringSaveVersionInformation];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)repeatTransitionsFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringRepeatTransitions];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"repeatTransitions"}];
    if (!v5)
    {
      return 1;
    }
  }

  return [v5 BOOLValue];
}

+ (id)transitionListFromOptions:(id)a3
{
  result = [a3 objectForKey:kMPAuthoringTransitionList];
  if (!result)
  {
    v6 = [a1 layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)}];

    return [v6 objectForKey:@"transitionPresets"];
  }

  return result;
}

+ (id)outroEffectIDFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringOutroEffectID];
  if ([v5 isEqualToString:&stru_1AC858])
  {
    return 0;
  }

  if (v5)
  {
    return v5;
  }

  v7 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [a1 layerIndexFromOptions:a3], objc_msgSend(a1, "styleFromOptions:", a3));

  return [v7 objectForKey:@"outroEffect"];
}

+ (double)introDurationFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringIntroDuration];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"introDuration"}];
    if (!v5)
    {
      return -1.0;
    }
  }

  [v5 doubleValue];
  return result;
}

+ (BOOL)useIntroTransition:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:"), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"useIntroTransition"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (double)outroDurationFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringOutroDuration];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"outroDuration"}];
    if (!v5)
    {
      return -1.0;
    }
  }

  [v5 doubleValue];
  return result;
}

+ (BOOL)scaleOutroEffectFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringScaleOutroEffect];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"scaleOutroEffect"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (int64_t)minimumNumberOfDynamicSlidesToAddFromOptions:(id)a3
{
  result = [a3 objectForKey:kMPAuthoringDynamicMinimumSlidesToAdd];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

+ (int64_t)maxNumberOfSlidesToPreloadFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringLiveMaxSlidePreload];
  if (!v3)
  {
    return 15;
  }

  return [v3 integerValue];
}

+ (id)introEffectIDFromOptions:(id)a3
{
  result = [a3 objectForKey:kMPAuthoringIntroEffectID];
  if (!result)
  {
    v6 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [a1 layerIndexFromOptions:a3], objc_msgSend(a1, "styleFromOptions:", a3));

    return [v6 objectForKey:@"introEffect"];
  }

  return result;
}

+ (id)titleEffectFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringTitleEffect];
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
  v8 = [a1 styleFromOptions:a3];
  v9 = +[MPStyleManager sharedManager];

  return [v9 titleEffectLayoutForStyleID:v8];
}

+ (id)idFromPresetID:(id)a3
{
  if ([a3 rangeOfString:@"/"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a3;
  }

  v5 = [a3 rangeOfString:@"/"];

  return [a3 substringToIndex:v5];
}

+ (id)presetIDFromPresetID:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"/"];
  if ([v3 count] < 2)
  {
    return @"Default";
  }

  return [v3 objectAtIndex:1];
}

+ (BOOL)shouldComputeFramesFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:"), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"frames"}];
  if (v3)
  {
    LOBYTE(v3) = [v3 count] != 0;
  }

  return v3;
}

+ (BOOL)shouldComputeTransitionsFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringSkipTransitions];
  if (v5)
  {

    LOBYTE(v6) = [v5 BOOLValue];
  }

  else
  {
    v6 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"transitionPresets"}];
    if (v6)
    {
      LOBYTE(v6) = [v6 count] != 0;
    }
  }

  return v6;
}

+ (id)lastPresetFromOptions:(id)a3
{
  result = [a3 objectForKey:kMPAuthoringLastPreset];
  if (!result)
  {
    v6 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [a1 layerIndexFromOptions:a3], objc_msgSend(a1, "styleFromOptions:", a3));

    return [v6 objectForKey:@"lastPreset"];
  }

  return result;
}

+ (BOOL)shouldComputeSlideFiltersFromOptions:(id)a3
{
  v3 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [a1 layerIndexFromOptions:?], objc_msgSend(a1, "styleFromOptions:", a3));
  v4 = [v3 objectForKey:@"filterPresets"];
  v5 = [v3 objectForKey:@"slideFilterPresetCriteria"];
  result = v4 && ((v6 = v5, [v4 count]) ? (v7 = v6 == 0) : (v7 = 1), !v7) && objc_msgSend(v6, "count") != 0;
  return result;
}

+ (BOOL)shouldComputeLoopTransitionFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringUseLoopTransition];
  if (!v5)
  {
    return [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"loopTransition"}] != 0;
  }

  return [v5 BOOLValue];
}

+ (double)effectPadding:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringEffectPadding];
  if (!v3)
  {
    return 0.0;
  }

  [v3 floatValue];
  return v4;
}

+ (id)loopTransitionIDFromOptions:(id)a3
{
  v3 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [a1 layerIndexFromOptions:?], objc_msgSend(a1, "styleFromOptions:", a3));

  return [v3 objectForKey:@"loopTransition"];
}

+ (id)exportTransitionIDFromOptions:(id)a3
{
  v3 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [a1 layerIndexFromOptions:?], objc_msgSend(a1, "styleFromOptions:", a3));

  return [v3 objectForKey:@"exportTransition"];
}

+ (double)exportTransitionDurationFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:"), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"exportTransitionDuration"}];

  [v3 doubleValue];
  return result;
}

+ (id)layerDescriptionForLayerWithZIndex:(int64_t)a3 forStyle:(id)a4
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
      if ([objc_msgSend(v11 objectForKey:{@"zIndex", "integerValue"}] == a3)
      {
        v8 = v11;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v7);
  return v8;
}

+ (BOOL)layerHasImagesFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringLayerHasImages];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"hasImages"}];
    if (!v5)
    {
      return 1;
    }
  }

  return [v5 BOOLValue];
}

+ (int64_t)numberOfLayersFromOptions:(id)a3
{
  v3 = [a1 styleFromOptions:a3];
  if (!v3)
  {
    return 1;
  }

  v4 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];

  return [v4 count];
}

+ (double)minimumTransitionDurationFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringMinimumTransitionDuration];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"minimumTransitionDuration"}];
    if (!v5)
    {
      return 0.0;
    }
  }

  [v5 doubleValue];
  return result;
}

+ (double)maximumTransitionDurationFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringMaximumTransitionDuration];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"maximumTransitionDuration"}];
    if (!v5)
    {
      return 10000000.0;
    }
  }

  [v5 doubleValue];
  return result;
}

+ (double)minimumEffectDurationFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringMinimumEffectDuration];
  if (!v5)
  {
    v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"minimumEffectDuration"}];
    if (!v5)
    {
      return 0.0;
    }
  }

  [v5 doubleValue];
  return result;
}

+ (BOOL)useUniformDurations:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringUniformDurations];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)padTextOnlyEffects:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringPadTextOnlyEffects];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (double)movieVolumeFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringMovieVolume];
  if (!v3)
  {
    return 1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (BOOL)effectDecidesTransitionFromOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringEffectDecidesTransition];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"effectDecidesTransition"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (id)colorSchemeFromOptions:(id)a3
{
  v4 = [a1 styleFromOptions:?];
  result = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (result)
  {
    v6 = result;
    result = [result objectForKey:{objc_msgSend(a3, "objectForKey:", kMPAuthoringColorScheme)}];
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

+ (unint64_t)reorderModeFromOptions:(id)a3
{
  if (![objc_msgSend(a3 objectForKey:{@"isChangingAspectRatio", "BOOLValue"}])
  {
    return 3;
  }

  v5 = [a1 styleFromOptions:a3];
  if ([v5 isEqualToString:@"Places"])
  {
    return 3;
  }

  result = [a3 objectForKey:kMPAuthoringReorderMode];
  if (result || (result = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")]) != 0)
  {

    return [result integerValue];
  }

  return result;
}

+ (BOOL)canHaveTransitionsFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:"), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"canHaveTransitions"}];
  if (!v3)
  {
    return 1;
  }

  [v3 doubleValue];
  return v4 != 0.0;
}

+ (BOOL)useROIAspectRatioFromOptions:(id)a3
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)needsFitMovieAttributeFromOptions:(id)a3
{
  v3 = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)pickTransitionsEvenlyByIDWithOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringPickTransitionEvenlyByID];
  if (v5)
  {

    LOBYTE(v6) = [v5 BOOLValue];
  }

  else
  {
    v6 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"pickTransitionsEvenlyByID"}];
    if (v6)
    {
      [v6 doubleValue];
      LOBYTE(v6) = v7 != 0.0;
    }
  }

  return v6;
}

+ (BOOL)pickEffectsEvenlyByIDWithOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringPickEffectsEvenlyByID];
  if (v5)
  {

    LOBYTE(v6) = [v5 BOOLValue];
  }

  else
  {
    v7 = +[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities, "layerDescriptionForLayerWithZIndex:forStyle:", [a1 layerIndexFromOptions:a3], objc_msgSend(a1, "styleFromOptions:", a3));
    v6 = [v7 objectForKey:@"pickEffectsEvenlyByID"];
    if (v6 || (v6 = [v7 objectForKey:@"PlatformSpecific"]) != 0 && (v9 = objc_msgSend(v7, "objectForKey:", @"PlatformSpecific"), LODWORD(v6) = MRIsAppleTV(), v6) && (v6 = objc_msgSend(v9, "objectForKey:", @"AppleTV")) != 0 && (v6 = objc_msgSend(objc_msgSend(v9, "objectForKey:", @"AppleTV"), "objectForKey:", @"pickEffectsEvenlyByID")) != 0)
    {
      [v6 doubleValue];
      LOBYTE(v6) = v8 != 0.0;
    }
  }

  return v6;
}

+ (BOOL)canAdjustPhaseDurations:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringCanAdjustPhaseDurations];
  if (v5)
  {

    return [v5 BOOLValue];
  }

  else
  {
    v7 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"canAdjustPhaseDurations"}];
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

+ (BOOL)requestGeneratedImagesFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringRequestGeneratedImages];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)useTransitionLayoutTagsWithOptions:(id)a3
{
  v5 = [a3 objectForKey:kMPAuthoringPickTransitionEvenlyByID];
  if (v5)
  {

    LOBYTE(v6) = [v5 BOOLValue];
  }

  else
  {
    v6 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"useTransitionLayoutTags"}];
    if (v6)
    {
      [v6 doubleValue];
      LOBYTE(v6) = v7 != 0.0;
    }
  }

  return v6;
}

+ (BOOL)fadeOutAudioFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringFadeOutAudio];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)shouldDuckMoviesFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringDuckMovies];
  if (!v3)
  {
    return 1;
  }

  return [v3 BOOLValue];
}

+ (BOOL)alwaysIncludeLastTransitionFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringAlwaysIncludeLastTransition];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (unint64_t)presentationOrderFromOptions:(id)a3
{
  v4 = [a1 styleFromOptions:?];
  v5 = [a3 objectForKey:kMPAuthoringImageOrderingMode];
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

+ (id)layerTypeFromOptions:(id)a3
{
  result = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:"), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"type"}];
  if (!result)
  {
    return @"serial";
  }

  return result;
}

+ (_NSRange)reconfigureRangeFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringReconfigureIndices];
  if (v3)
  {

    v3 = [v3 rangeValue];
  }

  else
  {
    v4 = 0;
  }

  result.length = v4;
  result.location = v3;
  return result;
}

+ (unint64_t)regionOfInterestPickModeFromOptions:(id)a3
{
  v4 = [a1 styleFromOptions:?];
  v5 = [a3 objectForKey:kMPAuthoringRegionOfInterestPickMode];
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

+ (BOOL)performFaceDetectionFromOptions:(id)a3
{
  v4 = [a3 objectForKey:kMPAuthoringPerformFaceDetection];
  v5 = [a3 objectForKey:kMPAuthoringDetectFacesInBackground];
  v6 = [v4 BOOLValue];
  if (v6)
  {
    LOBYTE(v6) = [v5 BOOLValue] ^ 1;
  }

  return v6;
}

+ (double)fadeOutDurationFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:"), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"fadeOut"}];
  if (!v3)
  {
    return 0.0;
  }

  [v3 doubleValue];
  return result;
}

+ (BOOL)scaleEffectsForPanoramasFromOptions:(id)a3
{
  v5 = [a3 objectForKey:@"scaleEffectsForPanoramas"];
  if (v5 || (v5 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:", a3), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"scaleEffectsForPanoramas"}]) != 0)
  {

    LOBYTE(v5) = [v5 BOOLValue];
  }

  return v5;
}

+ (double)breakDurationScaleFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:"), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"breakDurationScale"}];
  if (!v3)
  {
    return 1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (double)portraitBreakDurationScaleFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:"), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"breakPortraitDurationScale"}];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (double)baseBreakAspectRatioFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:"), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"baseBreakAspectRatio"}];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (double)basePortraitBreakAspectRatioFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:"), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"basePortraitBreakAspectRatio"}];
  if (!v3)
  {
    return -1.0;
  }

  [v3 floatValue];
  return v4;
}

+ (unint64_t)screenSizeFromOptions:(id)a3
{
  result = [a3 objectForKey:kMPAuthoringScreenSize];
  if (result)
  {

    return [result integerValue];
  }

  return result;
}

+ (_NSRange)videoPathsRangeFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringVideoPathIndicies];
  if (v3)
  {

    v3 = [v3 rangeValue];
  }

  else
  {
    v4 = 0;
  }

  result.length = v4;
  result.location = v3;
  return result;
}

+ (BOOL)useLargestEffectsFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:"), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"useLargestEffects"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)matchEffectsUsingTagsFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:"), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"matchEffectsUsingTags"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)isLayerEffectAuthoredFromOptions:(id)a3
{
  v3 = [+[MPAuthoringUtilities layerDescriptionForLayerWithZIndex:forStyle:](MPAuthoringUtilities layerDescriptionForLayerWithZIndex:objc_msgSend(a1 forStyle:{"layerIndexFromOptions:"), objc_msgSend(a1, "styleFromOptions:", a3)), "objectForKey:", @"effectAuthored"}];
  if (v3)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

+ (BOOL)aspectRatioMatchesDefault:(id)a3 withOptions:(id)a4
{
  if (!a3)
  {
    return 1;
  }

  [MPAuthoringUtilities aspectRatioFromOptions:a4];
  v6 = v5;
  if ([a3 isEqualToString:@"4:3"])
  {
    v7 = -1.33333337;
    return fabs(v6 + v7) < 0.00001;
  }

  if ([a3 isEqualToString:@"3:4"])
  {
    v7 = -0.75;
    return fabs(v6 + v7) < 0.00001;
  }

  if ([a3 isEqualToString:@"3:2"])
  {
    v7 = -1.5;
    return fabs(v6 + v7) < 0.00001;
  }

  if ([a3 isEqualToString:@"2:3"])
  {
    v7 = -0.666666687;
    return fabs(v6 + v7) < 0.00001;
  }

  if ([a3 isEqualToString:@"16:9"])
  {
    v7 = -1.77777779;
    return fabs(v6 + v7) < 0.00001;
  }

  if ([a3 isEqualToString:@"HiddenAspectRatio"])
  {
    v7 = -0.5625;
    return fabs(v6 + v7) < 0.00001;
  }

  return 1;
}

+ (CGRect)rectToFitIn:(CGRect)a3 withAspectRatio:(double)a4
{
  if (a3.size.width / a4 >= a3.size.height)
  {
    height = a3.size.height;
  }

  else
  {
    height = a3.size.width / a4;
  }

  v5 = height * a4;
  v6 = (a3.size.width - v5) * 0.5;
  v7 = (a3.size.height - height) * 0.5;
  v8 = v5;
  v9 = height;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGPoint)kbCenterPointFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MidX = CGRectGetMidX(a3);
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

+ (double)multilineSizeFactorFromOptions:(id)a3
{
  v3 = [a3 objectForKey:kMPAuthoringMultilineSizeFactor];
  if (!v3)
  {
    return 1.0;
  }

  [v3 floatValue];
  return v4;
}

@end