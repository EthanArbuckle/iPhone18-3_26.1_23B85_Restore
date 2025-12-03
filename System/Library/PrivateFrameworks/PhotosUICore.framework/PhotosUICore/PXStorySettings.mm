@interface PXStorySettings
+ (BOOL)isAppleMusicSharingEnabled;
+ (id)possibleClipCompositionFallbacks;
+ (id)possibleNormalizationModes;
+ (id)possibleTransitionFallbackTitles;
+ (id)possibleTransitionFallbacks;
+ (id)settingsControllerModule;
+ (id)sharedInstance;
+ (id)transientProperties;
- (BOOL)allowsRandomFallbackForShowcaseMode:(int64_t)mode;
- (BOOL)shouldShowAppleMusicRelatedUI;
- (CGSize)inlinePlaybackCriticalInsets;
- (id)feedItemShadow;
- (id)possibleClipCompositionsForFallback:(id)fallback;
- (id)possibleTransitionKindsForFallback:(int64_t)fallback;
- (unint64_t)fullsizePaperTrailOptions;
- (void)createChildren;
- (void)didChangeValueForKey:(id)key;
- (void)performPostSaveActions;
- (void)setDefaultValues;
@end

@implementation PXStorySettings

- (void)createChildren
{
  initWithDefaultValues = [(PTSettings *)[PXStoryConcreteTimelineSettings alloc] initWithDefaultValues];
  concreteTimelineSettings = self->_concreteTimelineSettings;
  self->_concreteTimelineSettings = initWithDefaultValues;

  initWithDefaultValues2 = [(PTSettings *)[PXStoryScrubberLayoutSettings alloc] initWithDefaultValues];
  scrubberLayoutSettings = self->_scrubberLayoutSettings;
  self->_scrubberLayoutSettings = initWithDefaultValues2;

  initWithDefaultValues3 = [(PTSettings *)[PXStoryTransitionsSettings alloc] initWithDefaultValues];
  transitionsSettings = self->_transitionsSettings;
  self->_transitionsSettings = initWithDefaultValues3;

  initWithDefaultValues4 = [(PTSettings *)[PXStoryMultipartPanoramaSettings alloc] initWithDefaultValues];
  multipartPanoramaSettings = self->_multipartPanoramaSettings;
  self->_multipartPanoramaSettings = initWithDefaultValues4;

  initWithDefaultValues5 = [(PTSettings *)[PXStoryChapterSettings alloc] initWithDefaultValues];
  chapterSettings = self->_chapterSettings;
  self->_chapterSettings = initWithDefaultValues5;
}

- (void)setDefaultValues
{
  v10.receiver = self;
  v10.super_class = PXStorySettings;
  [(PTSettings *)&v10 setDefaultValues];
  if (PXStoryIsSlowDevice_onceToken != -1)
  {
    dispatch_once(&PXStoryIsSlowDevice_onceToken, &__block_literal_global_1674);
  }

  [(PXStorySettings *)self setAllowsShowcase:0];
  [(PXStorySettings *)self setClipCompositionShowcaseMode:1];
  [(PXStorySettings *)self setClipCompositionFallback:@"All"];
  [(PXStorySettings *)self setTransitionShowcaseMode:1];
  [(PXStorySettings *)self setTransitionFallback:-1];
  [(PXStorySettings *)self setSeparatorEffectsShowcaseMode:1];
  [(PXStorySettings *)self setKenBurnsShowcaseMode:1];
  [(PXStorySettings *)self setOverrideDurations:0];
  [(PXStorySettings *)self setShowcaseSegmentDuration:5.0];
  v3 = 1.0;
  [(PXStorySettings *)self setShowcaseTransitionDuration:1.0];
  [(PXStorySettings *)self setDisableShowcaseBadge:0];
  [(PXStorySettings *)self setIncludeImagesInVisualDiagnosticsForTTR:0];
  [(PXStorySettings *)self setIncludeDeviceDiagnosticsForTTR:1];
  [(PXStorySettings *)self setSimulatedError:0];
  [(PXStorySettings *)self setAllowLimitingImagesTo3MP:1];
  [(PXStorySettings *)self setAllowAspectModeToggle:0];
  [(PXStorySettings *)self setIsHUDEnabled:0];
  [(PXStorySettings *)self setIsHUDVisible:0];
  [(PXStorySettings *)self setAreRelatedHUDsVisible:0];
  [(PXStorySettings *)self setDefaultHUDType:1];
  [(PXStorySettings *)self setIsExportHUDEnabled:0];
  [(PXStorySettings *)self setExportHUDType:0];
  [(PXStorySettings *)self setFeedHUDType:19];
  [(PXStorySettings *)self setEnableDemoAction:0];
  [(PXStorySettings *)self setEnableProtoPlayground:0];
  [(PXStorySettings *)self setWantsTitles:1];
  [(PXStorySettings *)self setWantsRelated:1];
  [(PXStorySettings *)self setWantsResourcesPreloading:1];
  [(PXStorySettings *)self setWantsScrubber:1];
  [(PXStorySettings *)self setWantsGridLayout:1];
  [(PXStorySettings *)self setWantsPersistence:1];
  [(PXStorySettings *)self setPersistenceConfirmationStyle:2];
  [(PXStorySettings *)self setPersistenceConfirmationDuration:2.0];
  [(PXStorySettings *)self setWantsAnimations:1];
  [(PXStorySettings *)self setWantsTransitions:1];
  [(PXStorySettings *)self setWantsHighContrastColors:0];
  [(PXStorySettings *)self setWantsValidation:PFOSVariantHasInternalDiagnostics()];
  [(PXStorySettings *)self setTwoFingerTapAction:0];
  [(PXStorySettings *)self setPreferredFullsizePaperTrailOptions:1];
  [(PXStorySettings *)self setSwipeDownAction:1];
  [(PXStorySettings *)self setRenderTitlesForRelated:1];
  [(PXStorySettings *)self setMaximumAppBackgroundDurationBeforeAutoPause:30.0];
  [(PXStorySettings *)self setFeedPresentationType:0];
  [(PXStorySettings *)self setPlayerPresentationType:0];
  [(PXStorySettings *)self setPreferAssetLocationAndCreationDateForClipTitleAndSubtitle:0];
  [(PXStorySettings *)self setShouldHideSidebarWhenDisplayed:0];
  [(PXStorySettings *)self setTimelineProducerKind:0];
  [(PXStorySettings *)self setAllowsTimelineRecombination:1];
  [(PXStorySettings *)self setShouldRecombineTimelineWithSameVisibleSegments:0];
  [(PXStorySettings *)self setValidationShouldWaitForTimelineToBeReadyToPlay:1];
  [(PXStorySettings *)self setAllowNonFillingCompositionsForKeyAsset:1];
  [(PXStorySettings *)self setLimitKeyAssetAspectRatioToFeedCard:1];
  [(PXStorySettings *)self setKeyAssetAspectRatioOverride:0];
  [(PXStorySettings *)self setOtherAssetsAspectRatioOverride:0];
  [(PXStorySettings *)self setAspectFillOneUpCropTolerance:0.9];
  [(PXStorySettings *)self setLivePhotoSameOrientationCompactMaximumScale:1.7];
  [(PXStorySettings *)self setLivePhotoSameOrientationRegularMaximumScale:1.3];
  [(PXStorySettings *)self setLivePhotoOppositeOrientationCompactMaximumScale:1.45];
  [(PXStorySettings *)self setLivePhotoOppositeOrientationRegularMaximumScale:1.1];
  [(PXStorySettings *)self setViewModeTransitionSpringStiffness:150.0];
  [(PXStorySettings *)self setViewModeTransitionAccessoryFadepoint:0.5];
  [(PXStorySettings *)self setTimelineManagerPaperTrailLength:20];
  [(PXStorySettings *)self setEstimatedMinimumDurationPerCuratedAsset:1.0];
  [(PXStorySettings *)self setCuratedAssetsLimit:2000];
  [(PXStorySettings *)self setShowStyleSwitcher:1];
  [(PXStorySettings *)self setShowMusicAndColorGradeEditor:1];
  [(PXStorySettings *)self setShouldStylesAlwaysIncludePersistedSong:1];
  LODWORD(v4) = 1060453346;
  [(PXStorySettings *)self setMusicDuckedVolume:v4];
  LODWORD(v5) = 1048615863;
  [(PXStorySettings *)self setMusicBackgroundVolume:v5];
  LODWORD(v6) = 1048615863;
  [(PXStorySettings *)self setMusicFadeOutVolume:v6];
  [(PXStorySettings *)self setDuckingFadeDuration:1.0];
  [(PXStorySettings *)self setFocusChangeFadeDuration:0.5];
  [(PXStorySettings *)self setMusicSimulatedFailureMode:0];
  LODWORD(v7) = -24.0;
  [(PXStorySettings *)self setMusicTargetLoudnessLKFS:v7];
  [(PXStorySettings *)self setMusicTouchDuckingDelay:0.3];
  [(PXStorySettings *)self setSimulateNoAppleMusicSubscription:0];
  [(PXStorySettings *)self setSongsProducerKind:0];
  [(PXStorySettings *)self setUseMusicCuesForPacing:1];
  [(PXStorySettings *)self setUseMusicCuesForTimeline:1];
  [(PXStorySettings *)self setForcePacingToSegmentMaxDuration:0];
  [(PXStorySettings *)self setAdjustToWallClockTime:1];
  [(PXStorySettings *)self setMusicDemoVolumeAdjustment:1];
  [(PXStorySettings *)self setAppleMusicPromptTrigger:1];
  [(PXStorySettings *)self setUseFakeAppleMusicAndPrivacyPrompt:0];
  [(PXStorySettings *)self setExportAppleMetadataWithMemories:1];
  [(PXStorySettings *)self setForceFlexForNonPHMemory:0];
  [(PXStorySettings *)self setForceFlexForPHMemory:0];
  [(PXStorySettings *)self setForceFlexIncludesAppleMusic:1];
  [(PXStorySettings *)self setAllowsContinuousKenBurnsAnimations:1];
  [(PXStorySettings *)self setContinuousKenBurnsAnimationsTolerance:0.1];
  [(PXStorySettings *)self setForceMinDurationKenBurnsAnimations:0];
  [(PXStorySettings *)self setForcePanUpOrDownInOneUpKenBurnsWithPortraitAspectAsset:0];
  [(PXStorySettings *)self setDisableVideoPlayback:0];
  [(PXStorySettings *)self setForceLivePhotoVideo:0];
  [(PXStorySettings *)self setWantsMovieHighlights:1];
  [(PXStorySettings *)self setUseBestHighlightTrim:1];
  [(PXStorySettings *)self setAllowOnDemandVideoAnalysis:0];
  [(PXStorySettings *)self setVideoInlineStabilization:1];
  [(PXStorySettings *)self setDebugShowVideoPlaybackDetails:0];
  [(PXStorySettings *)self setVideoMaximumAspectFillScale:1.4];
  [(PXStorySettings *)self setLivePhotoLocalVideoQuality:1];
  [(PXStorySettings *)self setExportVideoQuality:1];
  [(PXStorySettings *)self setVideoQuality:1];
  [(PXStorySettings *)self setDetectVideoLags:0];
  [(PXStorySettings *)self setSignificantPlayedDuration:1.0];
  [(PXStorySettings *)self setMuteToggleButtonAutoHideDelay:4.0];
  [(PXStorySettings *)self setIsAppleMusicAllowed:1];
  [(PXStorySettings *)self setWantsAudioFromVideo:1];
  [(PXStorySettings *)self setMuteBackgroundMusic:1];
  [(PXStorySettings *)self setForegroundAudioLoudnessTarget:-15.0];
  [(PXStorySettings *)self setBackgroundAudioLoudnessTarget:-35.0];
  [(PXStorySettings *)self setVideoAudioStrategy:5];
  [(PXStorySettings *)self setSlomoVideoAudioStrategy:0];
  [(PXStorySettings *)self setLivePhotoAudioStrategy:5];
  [(PXStorySettings *)self setLoopingVideoAudioStrategy:1];
  [(PXStorySettings *)self setWantsAudioFade:1];
  [(PXStorySettings *)self setAudioFadeMinDuration:0.167];
  [(PXStorySettings *)self setAudioFadeMaxDuration:0.667];
  [(PXStorySettings *)self setAudioFadeCurve:2];
  [(PXStorySettings *)self setWantsAudioJLCuts:1];
  [(PXStorySettings *)self setAudioJCutStrategy:3];
  [(PXStorySettings *)self setAudioLCutStrategy:3];
  [(PXStorySettings *)self setAudioJCutDuration:0.5];
  [(PXStorySettings *)self setAudioLCutDuration:0.25];
  [(PXStorySettings *)self setDebugShowAudioPlaybackDetails:0];
  [(PXStorySettings *)self setSimulatedAudioCuesLoadingDelay:0.0];
  LODWORD(v8) = 0.5;
  [(PXStorySettings *)self setAudioQualityMin:v8];
  [(PXStorySettings *)self setWantsBufferingIndicatorOverScrubber:1];
  [(PXStorySettings *)self setNoncriticalBufferingTimeout:3.0];
  [(PXStorySettings *)self setBufferingHUDAutoPresentationTimeout:10.0];
  [(PXStorySettings *)self setPlayerShowsBufferingStatus:1];
  [(PXStorySettings *)self setSimulateResourcesBufferingError:0];
  [(PXStorySettings *)self setSimulateSlowResourcesBuffering:0];
  [(PXStorySettings *)self setSimulatedSlowResourcesBufferingDelay:2.5];
  [(PXStorySettings *)self setExaggerateResourceDownloadTimes:0];
  [(PXStorySettings *)self setPlaybackShouldWaitForBufferingToBeReady:1];
  [(PXStorySettings *)self setSimultaneousPreloadingOperationsCount:4];
  [(PXStorySettings *)self setPreloadingSegmentsBatchSize:2];
  [(PXStorySettings *)self setPreloadingEstimationStrategy:0];
  [(PXStorySettings *)self setMinPreloadedeSegments:4];
  [(PXStorySettings *)self setPreloadNonKeyRelated:0];
  [(PXStorySettings *)self setEstimateTimeLeftPerPlaybackStyle:0];
  [(PXStorySettings *)self setReduceVideoDurationForInlinePlayback:1];
  [(PXStorySettings *)self setScrubberDisplayMode:0];
  [(PXStorySettings *)self setScrubberDimsMainContent:0];
  [(PXStorySettings *)self setScrubberEdgeFadeMode:0];
  [(PXStorySettings *)self setScrubberEdgeFadeDistance:50.0];
  [(PXStorySettings *)self setScrubberEdgeFadeOffset:15.0];
  [(PXStorySettings *)self setScrubberAutoHideDelay:1.5];
  [(PXStorySettings *)self setScrubberLayoutStretchesSmallNumberOfAssets:0];
  [(PXStorySettings *)self setScrubberSelectionStartsPlayback:0];
  [(PXStorySettings *)self setChromeAllowAutoHide:1];
  [(PXStorySettings *)self setChromeAutoHideDelay:4.0];
  [(PXStorySettings *)self setLegibilityGradientOpacity:0.2];
  [(PXStorySettings *)self setOverrideLegibilityGradientHeights:0];
  [(PXStorySettings *)self setTopLegibilityGradientHeight:200.0];
  [(PXStorySettings *)self setBottomLegibilityGradientHeight:260.0];
  [(PXStorySettings *)self setUseBottomLegibilityGradientForBufferingIndicator:0];
  [(PXStorySettings *)self setLegibilityRelatedDimming:0.7];
  [(PXStorySettings *)self setLegibilityPlaybackEndDimming:0.7];
  [(PXStorySettings *)self setLegibilityPlaybackEndDimmingDuration:0.5];
  [(PXStorySettings *)self setLegibilityPlaybackEndDimmingDurationAutoReplay:1.0];
  [(PXStorySettings *)self setLegibilityPlaybackEndUndimmingDuration:0.3];
  [(PXStorySettings *)self setLegibilityPlaybackEndUndimmingDurationAutoReplay:0.6];
  [(PXStorySettings *)self setPlayButtonRewindSymbolName:@"play.fill"];
  [(PXStorySettings *)self setSimulateLongChromeStrings:0];
  [(PXStorySettings *)self setPreferTopChromeItemsInAppNavigationBar:0];
  [(PXStorySettings *)self setTapNavigationAreaFraction:0.1];
  [(PXStorySettings *)self setRelatedProducerKind:0];
  [(PXStorySettings *)self setRelatedProductionPlaybackFractionCompletedThreshold:0.25];
  [(PXStorySettings *)self setAllowRelatedProductionBeforeReadyToPlay:0];
  [(PXStorySettings *)self setWantsRelatedCountdown:1];
  [(PXStorySettings *)self setRelatedAnimationDuration:1.0];
  [(PXStorySettings *)self setSmartGradientEnabled:1];
  [(PXStorySettings *)self setSmartGradientUseSmartColor:0];
  [(PXStorySettings *)self setSmartGradientUseSimpleBlur:1];
  [(PXStorySettings *)self setSmartGradientBlurRadius:40.0];
  [(PXStorySettings *)self setSmartGradientExposureValue:-0.4];
  [(PXStorySettings *)self setSmartGradientRepeatEdges:1];
  [(PXStorySettings *)self setSmartGradientEdgeStretchFactor:8.0];
  [(PXStorySettings *)self setBackgroundQualityScale:1.0];
  [(PXStorySettings *)self setAllowsNUpBackground:1];
  [(PXStorySettings *)self setMovementAnimationCurve:5];
  if (![(PXStorySettings *)self useMusicCuesForTimeline])
  {
    if ([(PXStorySettings *)self useMusicCuesForPacing])
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.85;
    }
  }

  [(PXStorySettings *)self setMovementAnimationLinearFraction:v3];
  [(PXStorySettings *)self setMovementAnimationPauseDeceleration:1.25];
  [(PXStorySettings *)self setMovementAnimationPausedVelocity:0.0];
  [(PXStorySettings *)self setMovementAnimationResumeAcceleration:2.5];
  [(PXStorySettings *)self setCurrentPPTPreset:2];
  [(PXStorySettings *)self setCurrentPPTSubpreset:0];
  [(PXStorySettings *)self setCurrentFeedPPTPreset:3];
  [(PXStorySettings *)self setShowErrorAlertsDuringTestExecution:0];
  [(PXStorySettings *)self setDisableColorGrading:0];
  [(PXStorySettings *)self setColorGradeEditorPreviewMode:0];
  [(PXStorySettings *)self setColorGradeSmoothingFactor:0.0];
  [(PXStorySettings *)self setColorGradeSmoothingPasses:0];
  [(PXStorySettings *)self setColorGradeBlendingFactor:0.0];
  [(PXStorySettings *)self setColorNormalizationMode:2];
  [(PXStorySettings *)self setColorNormalizationTechnique:0];
  [(PXStorySettings *)self setEnableBrowseViewColorNormalization:1];
  [(PXStorySettings *)self setEnableScrubberColorNormalization:1];
  [(PXStorySettings *)self setDebugShowColorNormalizationValues:0];
  [(PXStorySettings *)self setEnableFalseColorNormalization:0];
  [(PXStorySettings *)self setColorNormalizationUseColorCube:0];
  [(PXStorySettings *)self setColorNormalizationCubeEdgeSize:32];
  [(PXStorySettings *)self setEnableColorNormalizationWithoutColorGrade:0];
  LODWORD(v9) = 1.0;
  [(PXStorySettings *)self setColorNormalizationIntensity:v9];
  [(PXStorySettings *)self setReportColorNormalizationErrors:0];
  [(PXStorySettings *)self setWantsFullscreenFeedExperience:0];
  [(PXStorySettings *)self setShowFeedChromeOnHover:0];
  [(PXStorySettings *)self setWantsInlinePlayback:1];
  [(PXStorySettings *)self setInlinePlaybackCriticalInsetX:90.0];
  [(PXStorySettings *)self setInlinePlaybackCriticalInsetY:30.0];
  [(PXStorySettings *)self setPressedScale:0.96];
  [(PXStorySettings *)self setFeedInitialLimit:500];
  [(PXStorySettings *)self setFeedCardLandscapeAspectRatio:1.5];
  [(PXStorySettings *)self setFeedCardPortraitAspectRatio:0.75];
  [(PXStorySettings *)self setFeedCardWideLandscapeAspectRatio:2.9];
  [(PXStorySettings *)self setFeedItemCornerRadius:23.0];
  [(PXStorySettings *)self setUseSimpleOverlayFeedLayout:0];
  [(PXStorySettings *)self setUseFeedPlaceholderItems:0];
  [(PXStorySettings *)self setWantsFeedItemShadow:1];
  [(PXStorySettings *)self setAllowsFormSheetPresentation:0];
  [(PXStorySettings *)self setSwipeDownBehavior:0];
  [(PXStorySettings *)self setSwipeDownDismissalDelay:0.5];
  [(PXStorySettings *)self setSwipeDownDismissalDistanceThreshold:250.0];
  [(PXStorySettings *)self setSwipeDownSignificantDuration:0.0];
  [(PXStorySettings *)self setSwipeDownThresholdFadeDuration:0.3];
  [(PXStorySettings *)self setNeeds79067616Workaround:1];
  [(PXStorySettings *)self setAutoEditDiptychCropAspectMax:1.5];
  [(PXStorySettings *)self setAutoEditTriptychCropAspectMax:2.25];
  [(PXStorySettings *)self setAutoEditPortraitAreaMin:0.0289];
  [(PXStorySettings *)self setAutoEditPortraitAspectLargeVerticalFaceAreaMin:0.3];
  [(PXStorySettings *)self setAutoEditModuleLengthMax:4];
  [(PXStorySettings *)self setAutoEditRotateMotionMax:3];
  [(PXStorySettings *)self setAutoEditEmptySpaceLengthMax:5];
  [(PXStorySettings *)self setAutoEditProductionSimulatedDelay:0.0];
  [(PXStorySettings *)self setAutoEditDisableNUp:0];
  [(PXStorySettings *)self setDisabledClipMotionStyles:0];
  [(PXStorySettings *)self setAutoEditSongPaceOverride:0];
  [(PXStorySettings *)self setAutoEditUseMomentRecipes:0];
  [(PXStorySettings *)self setScaleRecipeRelativeFrequency:1.0];
  [(PXStorySettings *)self setPanRecipeRelativeFrequency:1.0];
  [(PXStorySettings *)self setExposeToBlackRecipeRelativeFrequency:1.0];
  [(PXStorySettings *)self setAutoEditSceneConfidenceThreshold:0.5];
  [(PXStorySettings *)self setAutoEditHighCurationScoreThreshold:0.75];
  [(PXStorySettings *)self setAutoEditDoublePlaceMultiplier:0.5];
  [(PXStorySettings *)self setUseReferenceWidthBasedTitleLayout:1];
  [(PXStorySettings *)self setTitleReferenceWidthPortrait:260.0];
  [(PXStorySettings *)self setTitleReferenceWidthLandscape:285.0];
  [(PXStorySettings *)self setTitleFeedPortraitWidthScale:0.0];
  [(PXStorySettings *)self setTitleFeedLandscapeWidthScale:0.0];
  [(PXStorySettings *)self setTitleFullScreenPortraitWidthScale:0.0];
  [(PXStorySettings *)self setTitleFullScreenLandscapeWidthScale:0.0];
  [(PXStorySettings *)self setTitleRegularPaddingBottomScale:0.21];
  [(PXStorySettings *)self setTitlePaddingTopScale:0.0];
  [(PXStorySettings *)self setTitleWidthMin:0.0];
  [(PXStorySettings *)self setTitleWidthMax:0.0];
  [(PXStorySettings *)self setTitleSizeScale:0.0];
  [(PXStorySettings *)self setSubtitleSizeScale:0.0];
  [(PXStorySettings *)self setTitleMinimumScale:0.4];
  [(PXStorySettings *)self setSubtitleMinimumScale:0.5];
  [(PXStorySettings *)self setTitleUseCenterAlignment:0];
  [(PXStorySettings *)self setTitleFarthestDistanceThreshold:0.06];
  [(PXStorySettings *)self setEnableTitlePositioningLogs:0];
  [(PXStorySettings *)self setTitleMaximumNumberOfLines:3];
  [(PXStorySettings *)self setVerticalTextMode:0];
  [(PXStorySettings *)self setKashidaTextMode:0];
  [(PXStorySettings *)self setSimulateSlowTextLayout:0];
  [(PXStorySettings *)self setShowTVPreviewInDiagnostics:1];
  [(PXStorySettings *)self setCurationScorePercentileThreshold:*MEMORY[0x1E6978BD0]];
  [(PXStorySettings *)self setAestheticsScorePercentileThreshold:*MEMORY[0x1E6978BC8]];
  [(PXStorySettings *)self setUseCommonActionInfrastructureForActionMenu:0];
}

- (BOOL)shouldShowAppleMusicRelatedUI
{
  if (![(PXStorySettings *)self forceFlexForPHMemory]&& ![(PXStorySettings *)self forceFlexForNonPHMemory])
  {
    return 1;
  }

  return [(PXStorySettings *)self forceFlexIncludesAppleMusic];
}

- (id)possibleTransitionKindsForFallback:(int64_t)fallback
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (fallback == -1)
  {
    v4 = +[PXStoryTransitionsSettings supportedTransitions];
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithChar:fallback];
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  return v4;
}

- (id)possibleClipCompositionsForFallback:(id)fallback
{
  v9[1] = *MEMORY[0x1E69E9840];
  fallbackCopy = fallback;
  availableClipCompositions = [objc_opt_class() availableClipCompositions];
  if (![fallbackCopy isEqualToString:@"All"])
  {
    fallbackCopy;
    PXFilter();
  }

  v5 = availableClipCompositions;
  if (![v5 count])
  {
    v6 = +[PXStoryClipCompositionFactory oneUpComposition];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

    v5 = v7;
  }

  return v5;
}

uint64_t __55__PXStorySettings_possibleClipCompositionsForFallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (CGSize)inlinePlaybackCriticalInsets
{
  [(PXStorySettings *)self inlinePlaybackCriticalInsetX];
  v4 = v3;
  [(PXStorySettings *)self inlinePlaybackCriticalInsetY];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (id)feedItemShadow
{
  v3 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
  v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.25];
  [v3 setShadowColor:v4];

  [v3 setShadowOffset:{0.0, 8.0}];
  [v3 setShadowBlurRadius:20.0];
  if ([(PXStorySettings *)self wantsHighContrastColors])
  {
    redColor = [MEMORY[0x1E69DC888] redColor];
    v6 = [redColor colorWithAlphaComponent:0.75];
    [v3 setShadowColor:v6];
  }

  return v3;
}

- (BOOL)allowsRandomFallbackForShowcaseMode:(int64_t)mode
{
  result = [(PXStorySettings *)self allowsShowcase];
  if ((mode - 1) >= 2)
  {
    return 0;
  }

  return result;
}

- (unint64_t)fullsizePaperTrailOptions
{
  v3 = +[PXRootSettings sharedInstance];
  canShowInternalUI = [v3 canShowInternalUI];

  if (!canShowInternalUI)
  {
    return 0;
  }

  return [(PXStorySettings *)self preferredFullsizePaperTrailOptions];
}

- (void)didChangeValueForKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = PXStorySettings;
  [(PXStorySettings *)&v9 didChangeValueForKey:keyCopy];
  v5 = NSStringFromSelector(sel_curationScorePercentileThreshold);
  if (v5 != keyCopy && ([keyCopy isEqualToString:v5] & 1) == 0)
  {
    v6 = NSStringFromSelector(sel_aestheticsScorePercentileThreshold);
    v7 = v6;
    if (v6 != keyCopy)
    {
      v8 = [keyCopy isEqualToString:v6];

      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

LABEL_8:
  [(PXStorySettings *)self performPostSaveActions];
LABEL_9:
}

- (void)performPostSaveActions
{
  v11.receiver = self;
  v11.super_class = PXStorySettings;
  [(PXSettings *)&v11 performPostSaveActions];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = *MEMORY[0x1E696A400];
  v5 = [standardUserDefaults persistentDomainForName:*MEMORY[0x1E696A400]];
  v6 = [v5 mutableCopy];

  v7 = MEMORY[0x1E696AD98];
  [(PXStorySettings *)self curationScorePercentileThreshold];
  v8 = [v7 numberWithDouble:?];
  [v6 setObject:v8 forKey:*MEMORY[0x1E6978BC0]];

  v9 = MEMORY[0x1E696AD98];
  [(PXStorySettings *)self aestheticsScorePercentileThreshold];
  v10 = [v9 numberWithDouble:?];
  [v6 setObject:v10 forKey:*MEMORY[0x1E6978BB8]];

  [standardUserDefaults setPersistentDomain:v6 forName:v4];
}

+ (id)possibleNormalizationModes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getPIColorNormalizationFilterClass_softClass_43181;
  v9 = getPIColorNormalizationFilterClass_softClass_43181;
  if (!getPIColorNormalizationFilterClass_softClass_43181)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getPIColorNormalizationFilterClass_block_invoke_43182;
    v5[3] = &unk_1E774BD00;
    v5[4] = &v6;
    __getPIColorNormalizationFilterClass_block_invoke_43182(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  if ([v2 isAnalysisAvailable])
  {
    return &unk_1F190FEB0;
  }

  else
  {
    return &unk_1F190FEC8;
  }
}

+ (id)possibleTransitionFallbackTitles
{
  [self possibleTransitionFallbacks];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

__CFString *__51__PXStorySettings_possibleTransitionFallbackTitles__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 == -1)
  {
    v4 = @"All";
  }

  else
  {
    if (v2 > 0xAu)
    {
      v3 = @"??";
    }

    else
    {
      v3 = off_1E7740168[v2 & 0xF];
    }

    v4 = v3;
  }

  return v4;
}

+ (id)possibleTransitionFallbacks
{
  v2 = +[PXStoryTransitionsSettings supportedTransitions];
  v3 = [v2 arrayByAddingObject:&unk_1F190A870];

  return v3;
}

+ (id)possibleClipCompositionFallbacks
{
  [self availableClipCompositions];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

+ (id)transientProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PXStorySettings_transientProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transientProperties_onceToken_43198 != -1)
  {
    dispatch_once(&transientProperties_onceToken_43198, block);
  }

  v2 = transientProperties_transientProperties_43199;

  return v2;
}

void __38__PXStorySettings_transientProperties__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6.receiver = *(a1 + 32);
  v6.super_class = &OBJC_METACLASS___PXStorySettings;
  v1 = objc_msgSendSuper2(&v6, sel_transientProperties);
  v2 = NSStringFromSelector(sel_fullsizePaperTrailOptions);
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [v1 setByAddingObjectsFromArray:v3];
  v5 = transientProperties_transientProperties_43199;
  transientProperties_transientProperties_43199 = v4;
}

+ (BOOL)isAppleMusicSharingEnabled
{
  v2 = +[PXStorySettings sharedInstance];
  if ([v2 exportAppleMetadataWithMemories])
  {
    v3 = _os_feature_enabled_impl();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_43205 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_43205, &__block_literal_global_43206);
  }

  v3 = sharedInstance_sharedInstance_43207;

  return v3;
}

void __33__PXStorySettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 storySettings];
  v1 = sharedInstance_sharedInstance_43207;
  sharedInstance_sharedInstance_43207 = v0;
}

+ (id)settingsControllerModule
{
  MEMORY[0x1EEE9AC00](self);
  v3 = v2;
  v1293[32] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AE18];
  v5 = NSStringFromSelector(sel_allowsShowcase);
  v1258 = [v4 predicateWithFormat:@"%K != 0", v5];

  v6 = MEMORY[0x1E696AE18];
  v7 = NSStringFromSelector(sel_wantsScrubber);
  v1261 = [v6 predicateWithFormat:@"%K != 0", v7];

  v8 = MEMORY[0x1E696AE18];
  v9 = NSStringFromSelector(sel_swipeDownBehavior);
  v1256 = [v8 predicateWithFormat:@"%K == %li", v9, 1];

  v10 = MEMORY[0x1E696AE18];
  v11 = NSStringFromSelector(sel_overrideDurations);
  v1259 = [v10 predicateWithFormat:@"%K != 0", v11];

  v12 = MEMORY[0x1E696AE18];
  v13 = NSStringFromSelector(sel_overrideLegibilityGradientHeights);
  v1257 = [v12 predicateWithFormat:@"%K != 0", v13];

  v14 = &unk_1F190FEF8;
  v1260 = +[PXStorySettings possiblePaperTrailOptions];
  v15 = MEMORY[0x1E69C6638];
  v960 = MEMORY[0x1E69C6638];
  v16 = MEMORY[0x1E69C66A8];
  v1255 = NSStringFromSelector(sel_allowsShowcase);
  v1254 = [v16 rowWithTitle:@"Showcase Mode" valueKeyPath:v1255];
  v1292 = v1254;
  v1253 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1292 count:1];
  v1252 = [v15 sectionWithRows:v1253];
  v1293[0] = v1252;
  v1209 = MEMORY[0x1E69C6638];
  v17 = MEMORY[0x1E69C65F8];
  v1251 = NSStringFromSelector(sel_clipCompositionShowcaseMode);
  v1250 = [v17 rowWithTitle:@"Clip Compositions" valueKeyPath:v1251];
  v1249 = [v1250 px_possibleValues:&unk_1F190FEF8 formatter:&__block_literal_global_186130];
  v1291[0] = v1249;
  v18 = MEMORY[0x1E69C65F8];
  v1248 = NSStringFromSelector(sel_clipCompositionFallback);
  v1247 = [v18 rowWithTitle:@"Fallback Composition(s)" valueKeyPath:v1248];
  v19 = v3;
  possibleClipCompositionFallbacks = [v3 possibleClipCompositionFallbacks];
  possibleClipCompositionFallbackTitles = [v3 possibleClipCompositionFallbackTitles];
  v1243 = [v1247 possibleValues:possibleClipCompositionFallbacks titles:possibleClipCompositionFallbackTitles];
  v20 = MEMORY[0x1E696AE18];
  v1244 = NSStringFromSelector(sel_clipCompositionShowcaseMode);
  v1242 = [v20 predicateWithFormat:@"%K != %li", v1244, 0];
  v1241 = [v1243 condition:v1242];
  v1291[1] = v1241;
  v21 = MEMORY[0x1E69C65F8];
  v1240 = NSStringFromSelector(sel_transitionShowcaseMode);
  v1239 = [v21 rowWithTitle:@"Transitions" valueKeyPath:v1240];
  v1238 = [v1239 px_possibleValues:&unk_1F190FEF8 formatter:&__block_literal_global_186130];
  v1291[2] = v1238;
  v22 = MEMORY[0x1E69C65F8];
  v1237 = NSStringFromSelector(sel_transitionFallback);
  v1236 = [v22 rowWithTitle:@"Fallback Transition(s)" valueKeyPath:v1237];
  possibleTransitionFallbacks = [v19 possibleTransitionFallbacks];
  possibleTransitionFallbackTitles = [v19 possibleTransitionFallbackTitles];
  v1232 = [v1236 possibleValues:possibleTransitionFallbacks titles:possibleTransitionFallbackTitles];
  v23 = MEMORY[0x1E696AE18];
  v1233 = NSStringFromSelector(sel_transitionShowcaseMode);
  v1231 = [v23 predicateWithFormat:@"%K != %li", v1233, 0];
  v1230 = [v1232 condition:v1231];
  v1291[3] = v1230;
  v24 = MEMORY[0x1E69C65F8];
  v1229 = NSStringFromSelector(sel_separatorEffectsShowcaseMode);
  v1228 = [v24 rowWithTitle:@"Separator Effects" valueKeyPath:v1229];
  v1227 = [v1228 px_possibleValues:&unk_1F190FEF8 formatter:&__block_literal_global_186130];
  v1291[4] = v1227;
  v25 = MEMORY[0x1E69C65F8];
  v1226 = NSStringFromSelector(sel_kenBurnsShowcaseMode);
  v1225 = [v25 rowWithTitle:@"Ken Burns" valueKeyPath:v1226];
  v1224 = [v1225 px_possibleValues:&unk_1F190FEF8 formatter:&__block_literal_global_186130];
  v1291[5] = v1224;
  v26 = MEMORY[0x1E69C66A8];
  aSelector = NSStringFromSelector(sel_overrideDurations);
  v1222 = [v26 rowWithTitle:@"Override Durations" valueKeyPath:aSelector];
  v1291[6] = v1222;
  v27 = MEMORY[0x1E69C66A0];
  v1221 = NSStringFromSelector(sel_showcaseSegmentDuration);
  v1220 = [v27 rowWithTitle:@"Segment Duration" valueKeyPath:v1221];
  v1219 = [v1220 minValue:1.0 maxValue:10.0];
  v1218 = [v1219 condition:v1259];
  v1291[7] = v1218;
  v28 = MEMORY[0x1E69C66A0];
  v1217 = NSStringFromSelector(sel_showcaseTransitionDuration);
  v1216 = [v28 rowWithTitle:@"Transition Duration" valueKeyPath:v1217];
  v1215 = [v1216 minValue:0.3 maxValue:10.0];
  v1214 = [v1215 condition:v1259];
  v1291[8] = v1214;
  v29 = MEMORY[0x1E69C66A8];
  v1213 = NSStringFromSelector(sel_disableShowcaseBadge);
  v1212 = [v29 rowWithTitle:@"Disable Badge" valueKeyPath:v1213];
  v1291[9] = v1212;
  v1211 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1291 count:10];
  v1210 = [v1209 sectionWithRows:v1211 title:@"Showcase Mode" condition:v1258];
  v1293[1] = v1210;
  v30 = MEMORY[0x1E69C6638];
  v31 = MEMORY[0x1E69C66A8];
  v1208 = NSStringFromSelector(sel_allowLimitingImagesTo3MP);
  v1207 = [v31 rowWithTitle:@"Allow limiting images to 3MP" valueKeyPath:v1208];
  v1290[0] = v1207;
  v32 = MEMORY[0x1E69C66A8];
  v1206 = NSStringFromSelector(sel_allowAspectModeToggle);
  v1205 = [v32 rowWithTitle:@"Aspect Mode Toggle" valueKeyPath:v1206];
  v1290[1] = v1205;
  v33 = MEMORY[0x1E69C66A8];
  v1204 = NSStringFromSelector(sel_isHUDEnabled);
  v1203 = [v33 rowWithTitle:@"HUD Enabled" valueKeyPath:v1204];
  v1290[2] = v1203;
  v34 = MEMORY[0x1E69C66A8];
  v1202 = NSStringFromSelector(sel_isHUDVisible);
  v1200 = [v34 rowWithTitle:@"HUD Visible" valueKeyPath:v1202];
  v35 = MEMORY[0x1E696AE18];
  v1201 = NSStringFromSelector(sel_isHUDEnabled);
  v1201 = [v35 predicateWithFormat:@"%K != 0", v1201];
  v1198 = [v1200 condition:v1201];
  v1290[3] = v1198;
  v36 = MEMORY[0x1E69C65F8];
  v1197 = NSStringFromSelector(sel_defaultHUDType);
  v1196 = [v36 rowWithTitle:@"HUD Type" valueKeyPath:v1197];
  possibleDefaultHUDTypes = [v19 possibleDefaultHUDTypes];
  v1193 = [v1196 px_possibleValues:possibleDefaultHUDTypes formatter:&__block_literal_global_466];
  v37 = MEMORY[0x1E696AE18];
  v1194 = NSStringFromSelector(sel_isHUDEnabled);
  v1194 = [v37 predicateWithFormat:@"%K != 0", v1194];
  v1191 = [v1193 condition:v1194];
  v1290[4] = v1191;
  v38 = MEMORY[0x1E69C66A8];
  v1190 = NSStringFromSelector(sel_isExportHUDEnabled);
  v1189 = [v38 rowWithTitle:@"Export HUD Enabled" valueKeyPath:v1190];
  v1290[5] = v1189;
  v39 = MEMORY[0x1E69C65F8];
  v1188 = NSStringFromSelector(sel_exportHUDType);
  v1187 = [v39 rowWithTitle:@"Export HUD Type" valueKeyPath:v1188];
  possibleDefaultHUDTypes2 = [v19 possibleDefaultHUDTypes];
  v1184 = [v1187 px_possibleValues:possibleDefaultHUDTypes2 formatter:&__block_literal_global_478];
  v40 = MEMORY[0x1E696AE18];
  v1185 = NSStringFromSelector(sel_isExportHUDEnabled);
  v1185 = [v40 predicateWithFormat:@"%K != 0", v1185];
  v1182 = [v1184 condition:v1185];
  v1290[6] = v1182;
  v41 = MEMORY[0x1E69C66A8];
  v1181 = NSStringFromSelector(sel_enableDemoAction);
  v1180 = [v41 rowWithTitle:@"Demo Action" valueKeyPath:v1181];
  v1290[7] = v1180;
  v42 = MEMORY[0x1E69C66A8];
  v1179 = NSStringFromSelector(sel_enableProtoPlayground);
  v1178 = [v42 rowWithTitle:@"Proto Playground" valueKeyPath:v1179];
  v1290[8] = v1178;
  v1176 = [MEMORY[0x1E69C6610] px_rowWithTitle:@"Proto Playground Settings" action:&__block_literal_global_495_186151];
  v43 = MEMORY[0x1E696AE18];
  v1177 = NSStringFromSelector(sel_enableProtoPlayground);
  v1177 = [v43 predicateWithFormat:@"%K != 0", v1177];
  v1174 = [v1176 condition:v1177];
  v1290[9] = v1174;
  v44 = MEMORY[0x1E69C65F8];
  v1173 = NSStringFromSelector(sel_preferredFullsizePaperTrailOptions);
  v1172 = [v44 rowWithTitle:@"Fullsize Paper Trail" valueKeyPath:v1173];
  v1171 = [v1172 px_possibleValues:v1260 formatter:&__block_literal_global_377];
  v1290[10] = v1171;
  v45 = MEMORY[0x1E69C66A8];
  v1170 = NSStringFromSelector(sel_wantsTitles);
  v1169 = [v45 rowWithTitle:@"Titles" valueKeyPath:v1170];
  v1290[11] = v1169;
  v46 = MEMORY[0x1E69C66A8];
  v1168 = NSStringFromSelector(sel_wantsRelated);
  v1167 = [v46 rowWithTitle:@"Related" valueKeyPath:v1168];
  v1290[12] = v1167;
  v47 = MEMORY[0x1E69C66A8];
  v1166 = NSStringFromSelector(sel_wantsResourcesPreloading);
  v1165 = [v47 rowWithTitle:@"Resources Preloading" valueKeyPath:v1166];
  v1290[13] = v1165;
  v48 = MEMORY[0x1E69C66A8];
  v1164 = NSStringFromSelector(sel_wantsScrubber);
  v1163 = [v48 rowWithTitle:@"Scrubber" valueKeyPath:v1164];
  v1290[14] = v1163;
  v49 = MEMORY[0x1E69C66A8];
  v1162 = NSStringFromSelector(sel_wantsGridLayout);
  v1161 = [v49 rowWithTitle:@"Grid" valueKeyPath:v1162];
  v1290[15] = v1161;
  v50 = MEMORY[0x1E69C66A8];
  v1160 = NSStringFromSelector(sel_wantsPersistence);
  v1159 = [v50 rowWithTitle:@"Persistence" valueKeyPath:v1160];
  v1290[16] = v1159;
  v51 = MEMORY[0x1E69C65F8];
  v1158 = NSStringFromSelector(sel_persistenceConfirmationStyle);
  v1157 = [v51 rowWithTitle:@"Persistence Confirmation Style" valueKeyPath:v1158];
  v1156 = [MEMORY[0x1E695DEC8] px_integersFrom:0 to:2];
  v1155 = [v1157 px_possibleValues:v1156 formatter:&__block_literal_global_539_186160];
  v1290[17] = v1155;
  v52 = MEMORY[0x1E69C66A0];
  v1154 = NSStringFromSelector(sel_persistenceConfirmationDuration);
  v1153 = [v52 rowWithTitle:@"Persistence Confirmation Duration" valueKeyPath:v1154];
  v1152 = [v1153 minValue:0.0 maxValue:10.0];
  v1151 = [v1152 px_increment:0.5];
  v1290[18] = v1151;
  v53 = MEMORY[0x1E69C66A8];
  v1150 = NSStringFromSelector(sel_wantsAnimations);
  v1149 = [v53 rowWithTitle:@"Animations" valueKeyPath:v1150];
  v1290[19] = v1149;
  v54 = MEMORY[0x1E69C66A8];
  v1148 = NSStringFromSelector(sel_wantsHighContrastColors);
  v1147 = [v54 rowWithTitle:@"High Contrast Colors" valueKeyPath:v1148];
  v1290[20] = v1147;
  v55 = MEMORY[0x1E69C66A8];
  v1146 = NSStringFromSelector(sel_wantsValidation);
  v1145 = [v55 rowWithTitle:@"Validation" valueKeyPath:v1146];
  v1290[21] = v1145;
  v56 = MEMORY[0x1E69C65F8];
  v1144 = NSStringFromSelector(sel_twoFingerTapAction);
  v1143 = [v56 rowWithTitle:@"Two Finger Tap" valueKeyPath:v1144];
  v1142 = [v1143 possibleValues:&unk_1F1911308 titles:&unk_1F1911320];
  v1290[22] = v1142;
  v57 = MEMORY[0x1E69C66A0];
  v1141 = NSStringFromSelector(sel_maximumAppBackgroundDurationBeforeAutoPause);
  v1140 = [v57 rowWithTitle:@"App Background Auto-Pause Delay" valueKeyPath:v1141];
  v1139 = [v1140 minValue:1.0 maxValue:300.0];
  v1290[23] = v1139;
  v58 = MEMORY[0x1E69C65F8];
  v1138 = NSStringFromSelector(sel_playerPresentationType);
  v1137 = [v58 rowWithTitle:@"Player Presentation Type" valueKeyPath:v1138];
  v1136 = [v1137 possibleValues:&unk_1F1911338 titles:&unk_1F1911350];
  v1290[24] = v1136;
  v59 = MEMORY[0x1E69C65F8];
  v1135 = NSStringFromSelector(sel_feedPresentationType);
  v1134 = [v59 rowWithTitle:@"Feed Presentation Type" valueKeyPath:v1135];
  v1133 = [v1134 possibleValues:&unk_1F1911368 titles:&unk_1F1911380];
  v1290[25] = v1133;
  v60 = MEMORY[0x1E69C66A8];
  v1132 = NSStringFromSelector(sel_preferAssetLocationAndCreationDateForClipTitleAndSubtitle);
  v1131 = [v60 rowWithTitle:@"Location & Date For Clip Title and Subtitle" valueKeyPath:v1132];
  v1290[26] = v1131;
  v1130 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1290 count:27];
  v1129 = [v30 sectionWithRows:v1130 title:@"General"];
  v1293[2] = v1129;
  v61 = MEMORY[0x1E69C6638];
  v62 = MEMORY[0x1E69C66A8];
  v1128 = NSStringFromSelector(sel_includeImagesInVisualDiagnosticsForTTR);
  v1127 = [v62 rowWithTitle:@"Include photos in Visual Diagnosics" valueKeyPath:v1128];
  v1289 = v1127;
  v1126 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1289 count:1];
  v1125 = [v61 sectionWithRows:v1126 title:@"Tap-To-Radar"];
  v1293[3] = v1125;
  v63 = MEMORY[0x1E69C6638];
  v64 = MEMORY[0x1E69C65F8];
  v1124 = NSStringFromSelector(sel_simulatedError);
  v1123 = [v64 rowWithTitle:@"Simulated Error" valueKeyPath:v1124];
  v65 = &unk_1F190FF10;
  v1122 = [v1123 px_possibleValues:&unk_1F190FF10 formatter:&__block_literal_global_653];
  v1288 = v1122;
  v1121 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1288 count:1];
  v1120 = [v63 sectionWithRows:v1121 title:@"Errors"];
  v1293[4] = v1120;
  v66 = MEMORY[0x1E69C6638];
  v67 = MEMORY[0x1E69C65F8];
  v1119 = NSStringFromSelector(sel_timelineProducerKind);
  v1118 = [v67 rowWithTitle:@"Producer Kind" valueKeyPath:v1119];
  v1117 = [v1118 possibleValues:&unk_1F1911398 titles:&unk_1F19113B0];
  v1287[0] = v1117;
  v68 = MEMORY[0x1E69C66A8];
  v1116 = NSStringFromSelector(sel_allowsTimelineRecombination);
  v1115 = [v68 rowWithTitle:@"Timeline Recombination" valueKeyPath:v1116];
  v1287[1] = v1115;
  v69 = MEMORY[0x1E69C66A8];
  v1114 = NSStringFromSelector(sel_shouldRecombineTimelineWithSameVisibleSegments);
  v1112 = [v69 rowWithTitle:@"Recombine with Same Visible Segments" valueKeyPath:v1114];
  v70 = MEMORY[0x1E696AE18];
  v1113 = NSStringFromSelector(sel_allowsTimelineRecombination);
  v1113 = [v70 predicateWithFormat:@"%K != 0", v1113];
  v1110 = [v1112 condition:v1113];
  v1287[2] = v1110;
  v71 = MEMORY[0x1E69C6610];
  v1109 = NSStringFromSelector(sel_multipartPanoramaSettings);
  v1108 = [v71 rowWithTitle:@"Multipart Panoramas" childSettingsKeyPath:v1109];
  v1287[3] = v1108;
  v72 = MEMORY[0x1E69C66A8];
  v1107 = NSStringFromSelector(sel_validationShouldWaitForTimelineToBeReadyToPlay);
  v1106 = [v72 rowWithTitle:@"Validate When Ready" valueKeyPath:v1107];
  v1287[4] = v1106;
  v73 = MEMORY[0x1E69C66A8];
  v1105 = NSStringFromSelector(sel_allowNonFillingCompositionsForKeyAsset);
  v1104 = [v73 rowWithTitle:@"Non-Filling Key Asset" valueKeyPath:v1105];
  v1287[5] = v1104;
  v74 = MEMORY[0x1E69C66A8];
  v1103 = NSStringFromSelector(sel_limitKeyAssetAspectRatioToFeedCard);
  v1101 = [v74 rowWithTitle:@"Limit A/R to Card" valueKeyPath:v1103];
  v75 = MEMORY[0x1E696AE18];
  v1102 = NSStringFromSelector(sel_allowNonFillingCompositionsForKeyAsset);
  v1102 = [v75 predicateWithFormat:@"%K != 0", v1102];
  v1099 = [v1101 condition:v1102];
  v1287[6] = v1099;
  v76 = MEMORY[0x1E69C65F8];
  v1098 = NSStringFromSelector(sel_keyAssetAspectRatioOverride);
  v1097 = [v76 rowWithTitle:@"Key Asset Aspect Ratio Override" valueKeyPath:v1098];
  v77 = &unk_1F190FF70;
  v1096 = [v1097 px_possibleValues:&unk_1F190FF70 formatter:&__block_literal_global_711_186184];
  v1287[7] = v1096;
  v78 = MEMORY[0x1E69C65F8];
  v1095 = NSStringFromSelector(sel_otherAssetsAspectRatioOverride);
  v1094 = [v78 rowWithTitle:@"Other Assets Aspect Ratio Override" valueKeyPath:v1095];
  v79 = &unk_1F190FF70;
  v1093 = [v1094 px_possibleValues:&unk_1F190FF70 formatter:&__block_literal_global_719];
  v1287[8] = v1093;
  v80 = MEMORY[0x1E69C66A0];
  v1092 = NSStringFromSelector(sel_aspectFillOneUpCropTolerance);
  v1091 = [v80 rowWithTitle:@"Aspect Fill 1-Up Crop Tolerance" valueKeyPath:v1092];
  v1090 = [v1091 minValue:0.0 maxValue:1.0];
  v1287[9] = v1090;
  v81 = MEMORY[0x1E69C66A0];
  v1089 = NSStringFromSelector(sel_livePhotoSameOrientationCompactMaximumScale);
  v1088 = [v81 rowWithTitle:@"LP ||C Max Scale" valueKeyPath:v1089];
  v1087 = [v1088 minValue:1.0 maxValue:3.0];
  v1287[10] = v1087;
  v82 = MEMORY[0x1E69C66A0];
  v1086 = NSStringFromSelector(sel_livePhotoSameOrientationRegularMaximumScale);
  v1085 = [v82 rowWithTitle:@"LP ||R Max Scale" valueKeyPath:v1086];
  v1084 = [v1085 minValue:1.0 maxValue:3.0];
  v1287[11] = v1084;
  v83 = MEMORY[0x1E69C66A0];
  v1083 = NSStringFromSelector(sel_livePhotoOppositeOrientationCompactMaximumScale);
  v1082 = [v83 rowWithTitle:@"LP –|C Max Scale" valueKeyPath:v1083];
  v1081 = [v1082 minValue:1.0 maxValue:3.0];
  v1287[12] = v1081;
  v84 = MEMORY[0x1E69C66A0];
  v1080 = NSStringFromSelector(sel_livePhotoOppositeOrientationRegularMaximumScale);
  v1079 = [v84 rowWithTitle:@"LP –|R Max Scale" valueKeyPath:v1080];
  v1078 = [v1079 minValue:1.0 maxValue:3.0];
  v1287[13] = v1078;
  v85 = MEMORY[0x1E69C6610];
  v1077 = NSStringFromSelector(sel_concreteTimelineSettings);
  v1076 = [v85 rowWithTitle:@"Concrete Timeline" childSettingsKeyPath:v1077];
  v1287[14] = v1076;
  v86 = MEMORY[0x1E69C65F8];
  v1075 = NSStringFromSelector(sel_timelineManagerPaperTrailLength);
  v1074 = [v86 rowWithTitle:@"Paper Trail Length" valueKeyPath:v1075];
  v1073 = [v1074 px_possibleValues:&unk_1F19113C8];
  v1287[15] = v1073;
  v87 = MEMORY[0x1E69C66A0];
  v1072 = NSStringFromSelector(sel_estimatedMinimumDurationPerCuratedAsset);
  v1071 = [v87 rowWithTitle:@"Estim Min Asset Duration" valueKeyPath:v1072];
  v1070 = [v1071 minValue:0.0 maxValue:3.0];
  v1287[16] = v1070;
  v88 = MEMORY[0x1E69C65F8];
  v1069 = NSStringFromSelector(sel_curatedAssetsLimit);
  v1068 = [v88 rowWithTitle:@"Curated Assets Limit" valueKeyPath:v1069];
  v1067 = [v1068 px_possibleValues:&unk_1F19113E0];
  v1287[17] = v1067;
  v1066 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1287 count:18];
  v1065 = [v66 sectionWithRows:v1066 title:@"Timeline"];
  v1293[5] = v1065;
  v89 = MEMORY[0x1E69C6638];
  v90 = MEMORY[0x1E69C66A0];
  v1064 = NSStringFromSelector(sel_viewModeTransitionSpringStiffness);
  v1063 = [v90 rowWithTitle:@"Spring Stiffness" valueKeyPath:v1064];
  v1062 = [v1063 minValue:0.0 maxValue:300.0];
  v1061 = [v1062 px_increment:1.0];
  v1286[0] = v1061;
  v91 = MEMORY[0x1E69C66A0];
  v1060 = NSStringFromSelector(sel_viewModeTransitionAccessoryFadepoint);
  v1059 = [v91 rowWithTitle:@"Accessory Fadepoint" valueKeyPath:v1060];
  v1058 = [v1059 minValue:0.0 maxValue:1.0];
  v1057 = [v1058 px_increment:0.05];
  v1286[1] = v1057;
  v1056 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1286 count:2];
  v1055 = [v89 sectionWithRows:v1056 title:@"Player <-> Grid Transition"];
  v1293[6] = v1055;
  v92 = MEMORY[0x1E69C6638];
  v93 = MEMORY[0x1E69C66A8];
  v1054 = NSStringFromSelector(sel_wantsTransitions);
  v1053 = [v93 rowWithTitle:@"Enabled" valueKeyPath:v1054];
  v1285[0] = v1053;
  v94 = MEMORY[0x1E69C6610];
  v1052 = NSStringFromSelector(sel_transitionsSettings);
  v1051 = [v94 rowWithTitle:@"Transitions Settings" childSettingsKeyPath:v1052];
  v1285[1] = v1051;
  v1050 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1285 count:2];
  v1049 = [v92 sectionWithRows:v1050 title:@"Transitions"];
  v1293[7] = v1049;
  v95 = MEMORY[0x1E69C6638];
  v96 = MEMORY[0x1E69C66A8];
  v1048 = NSStringFromSelector(sel_showStyleSwitcher);
  v1047 = [v96 rowWithTitle:@"Show Style Switcher" valueKeyPath:v1048];
  v1284[0] = v1047;
  v97 = MEMORY[0x1E69C66A8];
  v1046 = NSStringFromSelector(sel_shouldPauseInStyleSwitcher);
  v1045 = [v97 rowWithTitle:@"Pause In Switcher" valueKeyPath:v1046];
  v1284[1] = v1045;
  v98 = MEMORY[0x1E69C66A8];
  v1044 = NSStringFromSelector(sel_useVerboseStyleHUDText);
  v1043 = [v98 rowWithTitle:@"Verbose Style/Movement HUD Text" valueKeyPath:v1044];
  v1284[2] = v1043;
  v99 = MEMORY[0x1E69C66A8];
  v1042 = NSStringFromSelector(sel_shouldStylesAlwaysIncludePersistedSong);
  v1041 = [v99 rowWithTitle:@"Mixes Include Persisted Song" valueKeyPath:v1042];
  v1284[3] = v1041;
  v1040 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1284 count:4];
  v1039 = [v95 sectionWithRows:v1040 title:@"Style"];
  v1293[8] = v1039;
  v100 = MEMORY[0x1E69C6638];
  v101 = MEMORY[0x1E69C66A8];
  v1038 = NSStringFromSelector(sel_useMusicCuesForTimeline);
  v1037 = [v101 rowWithTitle:@"Timeline Sync" valueKeyPath:v1038];
  v1283[0] = v1037;
  v102 = MEMORY[0x1E69C66A8];
  v1036 = NSStringFromSelector(sel_useMusicCuesForPacing);
  v1035 = [v102 rowWithTitle:@"Live Sync" valueKeyPath:v1036];
  v1283[1] = v1035;
  v103 = MEMORY[0x1E69C66A8];
  v1034 = NSStringFromSelector(sel_forcePacingToSegmentMaxDuration);
  v1033 = [v103 rowWithTitle:@"Force Segment Durations To Max" valueKeyPath:v1034];
  v1283[2] = v1033;
  v104 = MEMORY[0x1E69C66A8];
  v1032 = NSStringFromSelector(sel_adjustToWallClockTime);
  v1031 = [v104 rowWithTitle:@"Adjust to Wall Clock Time" valueKeyPath:v1032];
  v1283[3] = v1031;
  v105 = MEMORY[0x1E69C66A0];
  v1030 = NSStringFromSelector(sel_musicDuckedVolume);
  v1029 = [v105 rowWithTitle:@"Ducked Volume" valueKeyPath:v1030];
  v1028 = [v1029 minValue:0.0 maxValue:1.0];
  v1283[4] = v1028;
  v106 = MEMORY[0x1E69C66A0];
  v1027 = NSStringFromSelector(sel_musicFadeOutVolume);
  v1026 = [v106 rowWithTitle:@"Fade-Out Volume" valueKeyPath:v1027];
  v1025 = [v1026 minValue:0.0 maxValue:1.0];
  v1283[5] = v1025;
  v107 = MEMORY[0x1E69C66A0];
  v1024 = NSStringFromSelector(sel_musicBackgroundVolume);
  v1023 = [v107 rowWithTitle:@"Background Volume" valueKeyPath:v1024];
  v1022 = [v1023 minValue:0.0 maxValue:1.0];
  v1283[6] = v1022;
  v108 = MEMORY[0x1E69C66A0];
  v1021 = NSStringFromSelector(sel_duckingFadeDuration);
  v1020 = [v108 rowWithTitle:@"Duck Fade" valueKeyPath:v1021];
  v1019 = [v1020 minValue:0.3 maxValue:1.5];
  v1283[7] = v1019;
  v109 = MEMORY[0x1E69C66A0];
  v1018 = NSStringFromSelector(sel_musicTouchDuckingDelay);
  v1017 = [v109 rowWithTitle:@"Touch Duck Delay" valueKeyPath:v1018];
  v1016 = [v1017 minValue:0.0 maxValue:1.0];
  v1283[8] = v1016;
  v110 = MEMORY[0x1E69C66A0];
  v1015 = NSStringFromSelector(sel_focusChangeFadeDuration);
  v1014 = [v110 rowWithTitle:@"Style Fade" valueKeyPath:v1015];
  v1013 = [v1014 minValue:0.3 maxValue:1.5];
  v1283[9] = v1013;
  v111 = MEMORY[0x1E69C66A0];
  v1012 = NSStringFromSelector(sel_musicTargetLoudnessLKFS);
  v1011 = [v111 rowWithTitle:@"Music Loudness LKFS" valueKeyPath:v1012];
  v1010 = [v1011 minValue:-60.0 maxValue:0.0];
  v1283[10] = v1010;
  v112 = MEMORY[0x1E69C66A0];
  v1009 = NSStringFromSelector(sel_musicDemoVolumeAdjustment);
  v1008 = [v112 rowWithTitle:@"Demo Volume Adjustment" valueKeyPath:v1009];
  v1007 = [v1008 minValue:0.0 maxValue:1.0];
  v1283[11] = v1007;
  v113 = MEMORY[0x1E69C6660];
  v1006 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_907];
  v1005 = [v113 rowWithTitle:@"Flex Music Library" action:v1006];
  v1283[12] = v1005;
  v114 = MEMORY[0x1E69C6668];
  v1004 = NSStringFromSelector(sel_appleMusicPromptTrigger);
  v1003 = [v114 rowWithTitle:@"Apple Music Prompt Trigger" valueKeyPath:v1004];
  v1002 = [v1003 possibleValues:&unk_1F19113F8 titles:&unk_1F1911410];
  v1283[13] = v1002;
  v115 = MEMORY[0x1E69C66A8];
  v1001 = NSStringFromSelector(sel_useFakeAppleMusicAndPrivacyPrompt);
  v1000 = [v115 rowWithTitle:@"Use Fake AM&P Alert" valueKeyPath:v1001];
  v1283[14] = v1000;
  v116 = MEMORY[0x1E69C66A8];
  v999 = NSStringFromSelector(sel_exportAppleMetadataWithMemories);
  v998 = [v116 rowWithTitle:@"Export 🍎Music Metadata w/Memories" valueKeyPath:v999];
  v1283[15] = v998;
  v997 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1283 count:16];
  v996 = [v100 sectionWithRows:v997 title:@"Music"];
  v1293[9] = v996;
  v117 = MEMORY[0x1E69C6638];
  v118 = MEMORY[0x1E69C65F8];
  v995 = NSStringFromSelector(sel_songsProducerKind);
  v994 = [v118 rowWithTitle:@"Producer Kind" valueKeyPath:v995];
  v993 = [v994 possibleValues:&unk_1F1911428 titles:&unk_1F1911440];
  v1282[0] = v993;
  v119 = MEMORY[0x1E69C66A8];
  v992 = NSStringFromSelector(sel_isAppleMusicAllowed);
  v991 = [v119 rowWithTitle:@"Allow  Music" valueKeyPath:v992];
  v1282[1] = v991;
  v120 = MEMORY[0x1E69C6668];
  v990 = NSStringFromSelector(sel_musicSimulatedFailureMode);
  v989 = [v120 rowWithTitle:@"Simulated Error" valueKeyPath:v990];
  v988 = [v989 possibleValues:&unk_1F1911458 titles:&unk_1F1911470];
  v1282[2] = v988;
  v121 = MEMORY[0x1E69C66A8];
  v987 = NSStringFromSelector(sel_forceFlexForPHMemory);
  v986 = [v121 rowWithTitle:@"Force Flex for PHMemory" valueKeyPath:v987];
  v1282[3] = v986;
  v122 = MEMORY[0x1E69C66A8];
  v985 = NSStringFromSelector(sel_forceFlexForNonPHMemory);
  v984 = [v122 rowWithTitle:@"Force Flex for non-PHMemory" valueKeyPath:v985];
  v1282[4] = v984;
  v123 = MEMORY[0x1E69C66A8];
  v983 = NSStringFromSelector(sel_forceFlexIncludesAppleMusic);
  v982 = [v123 rowWithTitle:@"Force Flex includes Music" valueKeyPath:v983];
  v1282[5] = v982;
  v981 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1282 count:6];
  v980 = [v117 sectionWithRows:v981 title:@"Music Curation"];
  v1293[10] = v980;
  v124 = MEMORY[0x1E69C6638];
  v125 = MEMORY[0x1E69C66A8];
  v979 = NSStringFromSelector(sel_allowsContinuousKenBurnsAnimations);
  v978 = [v125 rowWithTitle:@"Continuous Animations" valueKeyPath:v979];
  v1281[0] = v978;
  v126 = MEMORY[0x1E69C66A0];
  v977 = NSStringFromSelector(sel_continuousKenBurnsAnimationsTolerance);
  v976 = [v126 rowWithTitle:@"Tolerance" valueKeyPath:v977];
  v974 = [v976 minValue:0.0 maxValue:1.0];
  v127 = MEMORY[0x1E696AE18];
  v975 = NSStringFromSelector(sel_allowsContinuousKenBurnsAnimations);
  v975 = [v127 predicateWithFormat:@"%K != 0", v975];
  v972 = [v974 condition:v975];
  v1281[1] = v972;
  v128 = MEMORY[0x1E69C66A8];
  v971 = NSStringFromSelector(sel_forceMinDurationKenBurnsAnimations);
  v970 = [v128 rowWithTitle:@"Force Short Animations" valueKeyPath:v971];
  v1281[2] = v970;
  v129 = MEMORY[0x1E69C66A8];
  v969 = NSStringFromSelector(sel_forcePanUpOrDownInOneUpKenBurnsWithPortraitAspectAsset);
  v968 = [v129 rowWithTitle:@"Pan Up Or Down Portrait Aspect Asset" valueKeyPath:v969];
  v1281[3] = v968;
  v967 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1281 count:4];
  v966 = [v124 sectionWithRows:v967 title:@"Ken Burns"];
  v1293[11] = v966;
  v130 = MEMORY[0x1E69C6638];
  v131 = MEMORY[0x1E69C66A8];
  v965 = NSStringFromSelector(sel_disableVideoPlayback);
  v964 = [v131 rowWithTitle:@"Disable Video Playback" valueKeyPath:v965];
  v1280[0] = v964;
  v132 = MEMORY[0x1E69C66A8];
  v963 = NSStringFromSelector(sel_forceLivePhotoVideo);
  v962 = [v132 rowWithTitle:@"Force LP Video" valueKeyPath:v963];
  v1280[1] = v962;
  v133 = MEMORY[0x1E69C66A8];
  v959 = NSStringFromSelector(sel_wantsMovieHighlights);
  v958 = [v133 rowWithTitle:@"Movie Highlights" valueKeyPath:v959];
  v1280[2] = v958;
  v134 = MEMORY[0x1E69C66A8];
  v957 = NSStringFromSelector(sel_useBestHighlightTrim);
  v956 = [v134 rowWithTitle:@"Best Highlight Trim" valueKeyPath:v957];
  v1280[3] = v956;
  v135 = MEMORY[0x1E69C66A8];
  v955 = NSStringFromSelector(sel_allowOnDemandVideoAnalysis);
  v954 = [v135 rowWithTitle:@"On-Demand Video Analysis" valueKeyPath:v955];
  v1280[4] = v954;
  v136 = MEMORY[0x1E69C66A8];
  v953 = NSStringFromSelector(sel_videoInlineStabilization);
  v952 = [v136 rowWithTitle:@"Inline Stabilization" valueKeyPath:v953];
  v1280[5] = v952;
  v137 = MEMORY[0x1E69C66A8];
  v951 = NSStringFromSelector(sel_debugShowVideoPlaybackDetails);
  v950 = [v137 rowWithTitle:@"Show Video Playback Details" valueKeyPath:v951];
  v1280[6] = v950;
  v138 = MEMORY[0x1E69C66A0];
  v949 = NSStringFromSelector(sel_videoMaximumAspectFillScale);
  v948 = [v138 rowWithTitle:@"Max Aspect Fill Scale" valueKeyPath:v949];
  v947 = [v948 minValue:1.0 maxValue:2.0];
  v1280[7] = v947;
  v139 = MEMORY[0x1E69C65F8];
  v946 = NSStringFromSelector(sel_livePhotoLocalVideoQuality);
  v945 = [v139 rowWithTitle:@"LP Local Quality" valueKeyPath:v946];
  v140 = &unk_1F190FF88;
  v944 = [v945 px_possibleValues:&unk_1F190FF88 formatter:&__block_literal_global_374_186236];
  v1280[8] = v944;
  v141 = MEMORY[0x1E69C65F8];
  v943 = NSStringFromSelector(sel_exportVideoQuality);
  v942 = [v141 rowWithTitle:@"Export Quality" valueKeyPath:v943];
  v142 = &unk_1F190FF88;
  v941 = [v942 px_possibleValues:&unk_1F190FF88 formatter:&__block_literal_global_374_186236];
  v1280[9] = v941;
  v143 = MEMORY[0x1E69C65F8];
  v940 = NSStringFromSelector(sel_videoQuality);
  v939 = [v143 rowWithTitle:@"Quality" valueKeyPath:v940];
  v144 = &unk_1F190FF88;
  v938 = [v939 px_possibleValues:&unk_1F190FF88 formatter:&__block_literal_global_374_186236];
  v1280[10] = v938;
  v145 = MEMORY[0x1E69C66A8];
  v937 = NSStringFromSelector(sel_detectVideoLags);
  v936 = [v145 rowWithTitle:@"Detect Video Lags" valueKeyPath:v937];
  v1280[11] = v936;
  v146 = MEMORY[0x1E69C66A0];
  v935 = NSStringFromSelector(sel_significantPlayedDuration);
  v934 = [v146 rowWithTitle:@"Significant Played Duration" valueKeyPath:v935];
  v933 = [v934 minValue:0.0 maxValue:2.0];
  v932 = [v933 px_increment:0.1];
  v1280[12] = v932;
  v931 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1280 count:13];
  v930 = [v130 sectionWithRows:v931 title:@"Video"];
  v1293[12] = v930;
  v847 = MEMORY[0x1E69C6638];
  v147 = MEMORY[0x1E69C66A0];
  v929 = NSStringFromSelector(sel_muteToggleButtonAutoHideDelay);
  v928 = [v147 rowWithTitle:@"Mute Button Auto-Hide Delay" valueKeyPath:v929];
  v927 = [v928 minValue:0.0 maxValue:10.0];
  v926 = [v927 px_increment:0.5];
  v1279[0] = v926;
  v148 = MEMORY[0x1E69C66A8];
  v925 = NSStringFromSelector(sel_wantsAudioFromVideo);
  v924 = [v148 rowWithTitle:@"Play Audio from Video" valueKeyPath:v925];
  v1279[1] = v924;
  v149 = MEMORY[0x1E69C65F8];
  v923 = NSStringFromSelector(sel_videoAudioStrategy);
  v922 = [v149 rowWithTitle:@"Video Audio Strategy" valueKeyPath:v923];
  v150 = &unk_1F190FF28;
  v921 = [v922 px_possibleValues:&unk_1F190FF28 formatter:&__block_literal_global_1108];
  v1279[2] = v921;
  v151 = MEMORY[0x1E69C65F8];
  v920 = NSStringFromSelector(sel_slomoVideoAudioStrategy);
  v919 = [v151 rowWithTitle:@"Slomo Audio Strategy" valueKeyPath:v920];
  v152 = &unk_1F190FF28;
  v918 = [v919 px_possibleValues:&unk_1F190FF28 formatter:&__block_literal_global_1116];
  v1279[3] = v918;
  v153 = MEMORY[0x1E69C65F8];
  v917 = NSStringFromSelector(sel_livePhotoAudioStrategy);
  v916 = [v153 rowWithTitle:@"Live Photo Audio Strategy" valueKeyPath:v917];
  v154 = &unk_1F190FF28;
  v915 = [v916 px_possibleValues:&unk_1F190FF28 formatter:&__block_literal_global_1124];
  v1279[4] = v915;
  v155 = MEMORY[0x1E69C65F8];
  v914 = NSStringFromSelector(sel_loopingVideoAudioStrategy);
  v913 = [v155 rowWithTitle:@"Looping Video Audio Strategy" valueKeyPath:v914];
  v156 = &unk_1F190FF28;
  v912 = [v913 px_possibleValues:&unk_1F190FF28 formatter:&__block_literal_global_1132_186243];
  v1279[5] = v912;
  v157 = MEMORY[0x1E69C66A8];
  v911 = NSStringFromSelector(sel_muteBackgroundMusic);
  v910 = [v157 rowWithTitle:@"Mute Background Music" valueKeyPath:v911];
  v1279[6] = v910;
  v158 = MEMORY[0x1E69C66A0];
  v909 = NSStringFromSelector(sel_foregroundAudioLoudnessTarget);
  v908 = [v158 rowWithTitle:@"Loudness Target Foreground" valueKeyPath:v909];
  v907 = [v908 minValue:-60.0 maxValue:0.0];
  v1279[7] = v907;
  v159 = MEMORY[0x1E69C66A0];
  v906 = NSStringFromSelector(sel_backgroundAudioLoudnessTarget);
  v905 = [v159 rowWithTitle:@"Loudness Target Background" valueKeyPath:v906];
  v904 = [v905 minValue:-60.0 maxValue:0.0];
  v1279[8] = v904;
  v160 = MEMORY[0x1E69C66A8];
  v903 = NSStringFromSelector(sel_wantsAudioFade);
  v902 = [v160 rowWithTitle:@"Fade Audio In/Out" valueKeyPath:v903];
  v1279[9] = v902;
  v161 = MEMORY[0x1E69C66A0];
  v901 = NSStringFromSelector(sel_audioFadeMinDuration);
  v900 = [v161 rowWithTitle:@"Min Fade Duration" valueKeyPath:v901];
  v898 = [v900 minValue:0.0 maxValue:1.0];
  v162 = MEMORY[0x1E696AE18];
  v899 = NSStringFromSelector(sel_wantsAudioFade);
  v899 = [v162 predicateWithFormat:@"%K != 0", v899];
  v896 = [v898 condition:v899];
  v1279[10] = v896;
  v163 = MEMORY[0x1E69C66A0];
  v895 = NSStringFromSelector(sel_audioFadeMaxDuration);
  v894 = [v163 rowWithTitle:@"Max Fade Duration" valueKeyPath:v895];
  v892 = [v894 minValue:0.0 maxValue:1.0];
  v164 = MEMORY[0x1E696AE18];
  v893 = NSStringFromSelector(sel_wantsAudioFade);
  v893 = [v164 predicateWithFormat:@"%K != 0", v893];
  v890 = [v892 condition:v893];
  v1279[11] = v890;
  v165 = MEMORY[0x1E69C65F8];
  v889 = NSStringFromSelector(sel_audioFadeCurve);
  v888 = [v165 rowWithTitle:@"Fade Curve" valueKeyPath:v889];
  v166 = &unk_1F190FF58;
  v886 = [v888 px_possibleValues:&unk_1F190FF58 formatter:&__block_literal_global_1170];
  v167 = MEMORY[0x1E696AE18];
  v887 = NSStringFromSelector(sel_wantsAudioFade);
  v887 = [v167 predicateWithFormat:@"%K != 0", v887];
  v884 = [v886 condition:v887];
  v1279[12] = v884;
  v168 = MEMORY[0x1E69C66A8];
  v883 = NSStringFromSelector(sel_wantsAudioJLCuts);
  v882 = [v168 rowWithTitle:@"Enable J&L Cuts" valueKeyPath:v883];
  v1279[13] = v882;
  v169 = MEMORY[0x1E69C65F8];
  v881 = NSStringFromSelector(sel_audioJCutStrategy);
  v880 = [v169 rowWithTitle:@"J Cut Strategy" valueKeyPath:v881];
  v170 = &unk_1F190FF40;
  v878 = [v880 px_possibleValues:&unk_1F190FF40 formatter:&__block_literal_global_1183];
  v171 = MEMORY[0x1E696AE18];
  v879 = NSStringFromSelector(sel_wantsAudioJLCuts);
  v879 = [v171 predicateWithFormat:@"%K != 0", v879];
  v876 = [v878 condition:v879];
  v1279[14] = v876;
  v172 = MEMORY[0x1E69C65F8];
  v875 = NSStringFromSelector(sel_audioLCutStrategy);
  v874 = [v172 rowWithTitle:@"L Cut Strategy" valueKeyPath:v875];
  v173 = &unk_1F190FF40;
  v872 = [v874 px_possibleValues:&unk_1F190FF40 formatter:&__block_literal_global_1191];
  v174 = MEMORY[0x1E696AE18];
  v873 = NSStringFromSelector(sel_wantsAudioJLCuts);
  v873 = [v174 predicateWithFormat:@"%K != 0", v873];
  v870 = [v872 condition:v873];
  v1279[15] = v870;
  v175 = MEMORY[0x1E69C66A0];
  v869 = NSStringFromSelector(sel_audioJCutDuration);
  v868 = [v175 rowWithTitle:@"J Cut Duration" valueKeyPath:v869];
  v866 = [v868 minValue:0.0 maxValue:2.0];
  v176 = MEMORY[0x1E696AE18];
  v867 = NSStringFromSelector(sel_wantsAudioJLCuts);
  v867 = [v176 predicateWithFormat:@"%K != 0", v867];
  v864 = [v866 condition:v867];
  v1279[16] = v864;
  v177 = MEMORY[0x1E69C66A0];
  v863 = NSStringFromSelector(sel_audioLCutDuration);
  v862 = [v177 rowWithTitle:@"L Cut Duration" valueKeyPath:v863];
  v860 = [v862 minValue:0.0 maxValue:2.0];
  v178 = MEMORY[0x1E696AE18];
  v861 = NSStringFromSelector(sel_wantsAudioJLCuts);
  v861 = [v178 predicateWithFormat:@"%K != 0", v861];
  v858 = [v860 condition:v861];
  v1279[17] = v858;
  v179 = MEMORY[0x1E69C66A8];
  v857 = NSStringFromSelector(sel_debugShowAudioPlaybackDetails);
  v856 = [v179 rowWithTitle:@"Show Audio Playback Details" valueKeyPath:v857];
  v1279[18] = v856;
  v180 = MEMORY[0x1E69C66A0];
  v855 = NSStringFromSelector(sel_simulatedAudioCuesLoadingDelay);
  v854 = [v180 rowWithTitle:@"Simulated Cues Loading Delay" valueKeyPath:v855];
  v853 = [v854 minValue:0.0 maxValue:30.0];
  v1279[19] = v853;
  v181 = MEMORY[0x1E69C66A0];
  v852 = NSStringFromSelector(sel_audioQualityMin);
  v851 = [v181 rowWithTitle:@"Minimum Audio Score" valueKeyPath:v852];
  v850 = [v851 minValue:0.0 maxValue:1.0];
  v1279[20] = v850;
  v849 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1279 count:21];
  v848 = [v847 sectionWithRows:v849 title:@"Audio"];
  v1293[13] = v848;
  v182 = MEMORY[0x1E69C6638];
  v183 = MEMORY[0x1E69C66A8];
  v846 = NSStringFromSelector(sel_wantsBufferingIndicatorOverScrubber);
  v844 = [v183 rowWithTitle:@"Spinner Over Scrubber" valueKeyPath:v846];
  v1278[0] = v844;
  v184 = MEMORY[0x1E69C66A0];
  v843 = NSStringFromSelector(sel_noncriticalBufferingTimeout);
  v842 = [v184 rowWithTitle:@"Noncritical Buffering Timeout" valueKeyPath:v843];
  v841 = [v842 minValue:0.0 maxValue:10.0];
  v1278[1] = v841;
  v185 = MEMORY[0x1E69C66A0];
  v840 = NSStringFromSelector(sel_bufferingHUDAutoPresentationTimeout);
  v839 = [v185 rowWithTitle:@"Show Spinner HUD After" valueKeyPath:v840];
  v838 = [v839 minValue:2.0 maxValue:20.0];
  v1278[2] = v838;
  v186 = MEMORY[0x1E69C66A8];
  v837 = NSStringFromSelector(sel_playerShowsBufferingStatus);
  v836 = [v186 rowWithTitle:@"Player Shows Buffering Status" valueKeyPath:v837];
  v1278[3] = v836;
  v187 = MEMORY[0x1E69C66A8];
  v835 = NSStringFromSelector(sel_simulateResourcesBufferingError);
  v834 = [v187 rowWithTitle:@"Simulate Assets Buffering Error" valueKeyPath:v835];
  v1278[4] = v834;
  v188 = MEMORY[0x1E69C66A8];
  v833 = NSStringFromSelector(sel_simulateSlowResourcesBuffering);
  v832 = [v188 rowWithTitle:@"Simulate Slow Assets Buffering" valueKeyPath:v833];
  v1278[5] = v832;
  v189 = MEMORY[0x1E69C66A0];
  v831 = NSStringFromSelector(sel_simulatedSlowResourcesBufferingDelay);
  v830 = [v189 rowWithTitle:@"Assets Buffering Delay" valueKeyPath:v831];
  v828 = [v830 minValue:0.0 maxValue:20.0];
  v190 = MEMORY[0x1E696AE18];
  v829 = NSStringFromSelector(sel_simulateSlowResourcesBuffering);
  v829 = [v190 predicateWithFormat:@"%K != 0", v829];
  v826 = [v828 condition:v829];
  v1278[6] = v826;
  v191 = MEMORY[0x1E69C66A8];
  v825 = NSStringFromSelector(sel_exaggerateResourceDownloadTimes);
  v824 = [v191 rowWithTitle:@"Exaggerate Resource Download Times" valueKeyPath:v825];
  v1278[7] = v824;
  v192 = MEMORY[0x1E69C66A8];
  v823 = NSStringFromSelector(sel_playbackShouldWaitForBufferingToBeReady);
  v822 = [v192 rowWithTitle:@"Prevents Playback" valueKeyPath:v823];
  v1278[8] = v822;
  v193 = MEMORY[0x1E69C66A0];
  v821 = NSStringFromSelector(sel_simultaneousPreloadingOperationsCount);
  v820 = [v193 rowWithTitle:@"Simultaneous Preloading Operations" valueKeyPath:v821];
  v819 = [v820 minValue:1.0 maxValue:10.0];
  v1278[9] = v819;
  v194 = MEMORY[0x1E69C66A0];
  v818 = NSStringFromSelector(sel_preloadingSegmentsBatchSize);
  v817 = [v194 rowWithTitle:@"Simultaneous Segments Preloading" valueKeyPath:v818];
  v816 = [v817 minValue:1.0 maxValue:4.0];
  v1278[10] = v816;
  v195 = MEMORY[0x1E69C65F8];
  v815 = NSStringFromSelector(sel_preloadingEstimationStrategy);
  v814 = [v195 rowWithTitle:@"Estimation Strategy" valueKeyPath:v815];
  v813 = [v814 possibleValues:&unk_1F1911488 titles:&unk_1F19114A0];
  v1278[11] = v813;
  v196 = MEMORY[0x1E69C66A0];
  v812 = NSStringFromSelector(sel_minPreloadedeSegments);
  v811 = [v196 rowWithTitle:@"Min Preloaded Segments" valueKeyPath:v812];
  v809 = [v811 minValue:1.0 maxValue:8.0];
  v197 = MEMORY[0x1E696AE18];
  v810 = NSStringFromSelector(sel_preloadingEstimationStrategy);
  v808 = [v197 predicateWithFormat:@"%K == %@", v810, &unk_1F190D2D0];
  v807 = [v809 condition:v808];
  v1278[12] = v807;
  v198 = MEMORY[0x1E69C66A8];
  v806 = NSStringFromSelector(sel_preloadNonKeyRelated);
  v805 = [v198 rowWithTitle:@"Preload Non-Key Related" valueKeyPath:v806];
  v1278[13] = v805;
  v199 = MEMORY[0x1E69C66A8];
  v804 = NSStringFromSelector(sel_reduceVideoDurationForInlinePlayback);
  v803 = [v199 rowWithTitle:@"Reduce Video Duration for Inline" valueKeyPath:v804];
  v1278[14] = v803;
  v802 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1278 count:15];
  v801 = [v182 sectionWithRows:v802 title:@"Buffering"];
  v1293[14] = v801;
  v200 = MEMORY[0x1E69C6638];
  v201 = MEMORY[0x1E69C65F8];
  v800 = NSStringFromSelector(sel_scrubberDisplayMode);
  v799 = [v201 rowWithTitle:@"Display Mode" valueKeyPath:v800];
  v798 = [v799 possibleValues:&unk_1F19114B8 titles:&unk_1F19114D0];
  v1277[0] = v798;
  v202 = MEMORY[0x1E69C66A0];
  v797 = NSStringFromSelector(sel_scrubberAutoHideDelay);
  v796 = [v202 rowWithTitle:@"Auto-Hide Delay" valueKeyPath:v797];
  v795 = [v796 minValue:0.0 maxValue:10.0];
  v1277[1] = v795;
  v203 = MEMORY[0x1E69C66A8];
  v794 = NSStringFromSelector(sel_scrubberDimsMainContent);
  v793 = [v203 rowWithTitle:@"Dims Main Content When Present" valueKeyPath:v794];
  v1277[2] = v793;
  v204 = MEMORY[0x1E69C65F8];
  v792 = NSStringFromSelector(sel_scrubberEdgeFadeMode);
  v791 = [v204 rowWithTitle:@"Edge Fade Mode" valueKeyPath:v792];
  v790 = [v791 possibleValues:&unk_1F19114E8 titles:&unk_1F1911500];
  v1277[3] = v790;
  v205 = MEMORY[0x1E69C66A0];
  v789 = NSStringFromSelector(sel_scrubberEdgeFadeDistance);
  v788 = [v205 rowWithTitle:@"Edge Fade Distance" valueKeyPath:v789];
  v787 = [v788 minValue:0.0 maxValue:250.0];
  v1277[4] = v787;
  v206 = MEMORY[0x1E69C66A0];
  v786 = NSStringFromSelector(sel_scrubberEdgeFadeOffset);
  v785 = [v206 rowWithTitle:@"Edge Fade Offset" valueKeyPath:v786];
  v784 = [v785 minValue:0.0 maxValue:250.0];
  v1277[5] = v784;
  v207 = MEMORY[0x1E69C6610];
  v783 = NSStringFromSelector(sel_scrubberLayoutSettings);
  v782 = [v207 rowWithTitle:@"Layout Settings" childSettingsKeyPath:v783];
  v1277[6] = v782;
  v781 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1277 count:7];
  v780 = [v200 sectionWithRows:v781 title:@"Scrubber" condition:v1261];
  v1293[15] = v780;
  v208 = MEMORY[0x1E69C6638];
  v209 = MEMORY[0x1E69C66A8];
  v779 = NSStringFromSelector(sel_chromeAllowAutoHide);
  v778 = [v209 rowWithTitle:@"Allow Auto-Hide" valueKeyPath:v779];
  v1276[0] = v778;
  v210 = MEMORY[0x1E69C66A0];
  v777 = NSStringFromSelector(sel_chromeAutoHideDelay);
  v776 = [v210 rowWithTitle:@"Auto-Hide Delay" valueKeyPath:v777];
  v774 = [v776 minValue:0.0 maxValue:10.0];
  v211 = MEMORY[0x1E696AE18];
  v775 = NSStringFromSelector(sel_chromeAllowAutoHide);
  v775 = [v211 predicateWithFormat:@"%K != 0", v775];
  v772 = [v774 condition:v775];
  v1276[1] = v772;
  v212 = MEMORY[0x1E69C66A0];
  v771 = NSStringFromSelector(sel_legibilityGradientOpacity);
  v770 = [v212 rowWithTitle:@"Gradient Opacity" valueKeyPath:v771];
  v769 = [v770 minValue:0.0 maxValue:1.0];
  v1276[2] = v769;
  v213 = MEMORY[0x1E69C66A8];
  v768 = NSStringFromSelector(sel_overrideLegibilityGradientHeights);
  v767 = [v213 rowWithTitle:@"Override Gradient Heights" valueKeyPath:v768];
  v1276[3] = v767;
  v214 = MEMORY[0x1E69C66A0];
  v766 = NSStringFromSelector(sel_topLegibilityGradientHeight);
  v765 = [v214 rowWithTitle:@"Top Gradient" valueKeyPath:v766];
  v764 = [v765 minValue:0.0 maxValue:300.0];
  v763 = [v764 px_increment:10.0];
  v762 = [v763 condition:v1257];
  v1276[4] = v762;
  v215 = MEMORY[0x1E69C66A0];
  v761 = NSStringFromSelector(sel_bottomLegibilityGradientHeight);
  v760 = [v215 rowWithTitle:@"Bottom Gradient" valueKeyPath:v761];
  v759 = [v760 minValue:0.0 maxValue:300.0];
  v758 = [v759 px_increment:10.0];
  v757 = [v758 condition:v1257];
  v1276[5] = v757;
  v216 = MEMORY[0x1E69C66A8];
  v756 = NSStringFromSelector(sel_useBottomLegibilityGradientForBufferingIndicator);
  v755 = [v216 rowWithTitle:@"Bottom Gradient for Buffering Indicator" valueKeyPath:v756];
  v1276[6] = v755;
  v217 = MEMORY[0x1E69C66A0];
  v754 = NSStringFromSelector(sel_legibilityRelatedDimming);
  v753 = [v217 rowWithTitle:@"Related Dimming" valueKeyPath:v754];
  v752 = [v753 minValue:0.0 maxValue:1.0];
  v1276[7] = v752;
  v218 = MEMORY[0x1E69C66A0];
  v751 = NSStringFromSelector(sel_legibilityPlaybackEndDimming);
  v750 = [v218 rowWithTitle:@"End Dimming" valueKeyPath:v751];
  v749 = [v750 minValue:0.0 maxValue:1.0];
  v1276[8] = v749;
  v219 = MEMORY[0x1E69C66A0];
  v748 = NSStringFromSelector(sel_legibilityPlaybackEndDimmingDuration);
  v747 = [v219 rowWithTitle:@"End Dimming Duration" valueKeyPath:v748];
  v746 = [v747 minValue:0.0 maxValue:1.0];
  v1276[9] = v746;
  v220 = MEMORY[0x1E69C66A0];
  v745 = NSStringFromSelector(sel_legibilityPlaybackEndDimmingDurationAutoReplay);
  v744 = [v220 rowWithTitle:@"[Loop] End Dimming Duration" valueKeyPath:v745];
  v743 = [v744 minValue:0.0 maxValue:3.0];
  v1276[10] = v743;
  v221 = MEMORY[0x1E69C66A0];
  v742 = NSStringFromSelector(sel_legibilityPlaybackEndUndimmingDuration);
  v741 = [v221 rowWithTitle:@"End Undimming Duration" valueKeyPath:v742];
  v740 = [v741 minValue:0.0 maxValue:1.0];
  v1276[11] = v740;
  v222 = MEMORY[0x1E69C66A0];
  v738 = NSStringFromSelector(sel_legibilityPlaybackEndUndimmingDurationAutoReplay);
  v737 = [v222 rowWithTitle:@"[Loop] End Undimming Duration" valueKeyPath:v738];
  v736 = [v737 minValue:0.0 maxValue:1.0];
  v1276[12] = v736;
  v223 = MEMORY[0x1E69C65F8];
  v735 = NSStringFromSelector(sel_playButtonRewindSymbolName);
  v734 = [v223 rowWithTitle:@"Play Button Rewind Symbol" valueKeyPath:v735];
  v733 = [v734 px_possibleValues:&unk_1F1911518];
  v1276[13] = v733;
  v224 = MEMORY[0x1E69C66A8];
  v732 = NSStringFromSelector(sel_simulateLongChromeStrings);
  v731 = [v224 rowWithTitle:@"Simulate Long Chrome Strings" valueKeyPath:v732];
  v1276[14] = v731;
  v730 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1276 count:15];
  v729 = [v208 sectionWithRows:v730 title:@"Chrome"];
  v1293[16] = v729;
  v225 = MEMORY[0x1E69C6638];
  v226 = MEMORY[0x1E69C66A0];
  v728 = NSStringFromSelector(sel_tapNavigationAreaFraction);
  v727 = [v226 rowWithTitle:@"Tappable Width" valueKeyPath:v728];
  v726 = [v727 minValue:0.0 maxValue:0.5];
  v725 = [v726 px_increment:0.05];
  v724 = [v725 valueStringFormatter:&__block_literal_global_1461];
  v1275 = v724;
  v723 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1275 count:1];
  v722 = [v225 sectionWithRows:v723 title:@"Side Tap Navigation"];
  v1293[17] = v722;
  v227 = MEMORY[0x1E69C6638];
  v228 = MEMORY[0x1E69C65F8];
  v721 = NSStringFromSelector(sel_relatedProducerKind);
  v720 = [v228 rowWithTitle:@"Producer Kind" valueKeyPath:v721];
  v719 = [v720 possibleValues:&unk_1F1911530 titles:&unk_1F1911548];
  v1274[0] = v719;
  v229 = MEMORY[0x1E69C66A0];
  v718 = NSStringFromSelector(sel_relatedProductionPlaybackFractionCompletedThreshold);
  v717 = [v229 rowWithTitle:@"Completed Playback Threshold" valueKeyPath:v718];
  v716 = [v717 minValue:0.0 maxValue:0.9];
  v1274[1] = v716;
  v230 = MEMORY[0x1E69C66A8];
  v715 = NSStringFromSelector(sel_allowRelatedProductionBeforeReadyToPlay);
  v714 = [v230 rowWithTitle:@"Produce Before Playback Ready" valueKeyPath:v715];
  v1274[2] = v714;
  v231 = MEMORY[0x1E69C66A8];
  v713 = NSStringFromSelector(sel_wantsRelatedCountdown);
  v712 = [v231 rowWithTitle:@"Countdown" valueKeyPath:v713];
  v1274[3] = v712;
  v232 = MEMORY[0x1E69C66A0];
  v711 = NSStringFromSelector(sel_relatedAnimationDuration);
  v710 = [v232 rowWithTitle:@"Animation Duration" valueKeyPath:v711];
  v709 = [v710 minValue:0.0 maxValue:2.0];
  v1274[4] = v709;
  v233 = MEMORY[0x1E69C66A8];
  v708 = NSStringFromSelector(sel_areRelatedHUDsVisible);
  v707 = [v233 rowWithTitle:@"Related HUDs" valueKeyPath:v708];
  v1274[5] = v707;
  v706 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1274 count:6];
  v705 = [v227 sectionWithRows:v706 title:@"Related"];
  v1293[18] = v705;
  v234 = MEMORY[0x1E69C6638];
  v235 = MEMORY[0x1E69C66A8];
  v704 = NSStringFromSelector(sel_smartGradientEnabled);
  v703 = [v235 rowWithTitle:@"Smart Gradient" valueKeyPath:v704];
  v1273[0] = v703;
  v236 = MEMORY[0x1E69C66A8];
  v702 = NSStringFromSelector(sel_smartGradientUseSmartColor);
  v701 = [v236 rowWithTitle:@"Single Color Smart Gradient" valueKeyPath:v702];
  v1273[1] = v701;
  v237 = MEMORY[0x1E69C66A8];
  v700 = NSStringFromSelector(sel_smartGradientUseSimpleBlur);
  v699 = [v237 rowWithTitle:@"Use Simple Blur" valueKeyPath:v700];
  v1273[2] = v699;
  v238 = MEMORY[0x1E69C66A0];
  v698 = NSStringFromSelector(sel_smartGradientBlurRadius);
  v697 = [v238 rowWithTitle:@"Simple Blur Radius" valueKeyPath:v698];
  v696 = [v697 minValue:0.0 maxValue:100.0];
  v1273[3] = v696;
  v239 = MEMORY[0x1E69C66A0];
  v695 = NSStringFromSelector(sel_smartGradientExposureValue);
  v694 = [v239 rowWithTitle:@"Simple Blur Exposure" valueKeyPath:v695];
  v693 = [v694 minValue:-2.0 maxValue:2.0];
  v1273[4] = v693;
  v240 = MEMORY[0x1E69C66A8];
  v692 = NSStringFromSelector(sel_smartGradientRepeatEdges);
  v691 = [v240 rowWithTitle:@"Simple Blur Edge Only" valueKeyPath:v692];
  v1273[5] = v691;
  v241 = MEMORY[0x1E69C66A0];
  v690 = NSStringFromSelector(sel_smartGradientEdgeStretchFactor);
  v689 = [v241 rowWithTitle:@"Edge Stretch Factor" valueKeyPath:v690];
  v688 = [v689 minValue:1.0 maxValue:10.0];
  v1273[6] = v688;
  v242 = MEMORY[0x1E69C66A8];
  v687 = NSStringFromSelector(sel_allowsNUpBackground);
  v686 = [v242 rowWithTitle:@"N-Up Background" valueKeyPath:v687];
  v1273[7] = v686;
  v243 = MEMORY[0x1E69C66A0];
  v685 = NSStringFromSelector(sel_backgroundQualityScale);
  v684 = [v243 rowWithTitle:@"Quality Scale" valueKeyPath:v685];
  v683 = [v684 minValue:0.1 maxValue:1.0];
  v1273[8] = v683;
  v682 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1273 count:9];
  v681 = [v234 sectionWithRows:v682 title:@"Background"];
  v1293[19] = v681;
  v244 = MEMORY[0x1E69C6638];
  v245 = MEMORY[0x1E69C65F8];
  v680 = NSStringFromSelector(sel_movementAnimationCurve);
  v679 = [v245 rowWithTitle:@"Curve" valueKeyPath:v680];
  v246 = &unk_1F190FAA8;
  v678 = [v679 px_possibleValues:&unk_1F190FAA8 formatter:&__block_literal_global_1556];
  v1272[0] = v678;
  v247 = MEMORY[0x1E69C66A0];
  v677 = NSStringFromSelector(sel_movementAnimationLinearFraction);
  v676 = [v247 rowWithTitle:@"Linear Fraction" valueKeyPath:v677];
  v675 = [v676 minValue:0.0 maxValue:1.0];
  v1272[1] = v675;
  v248 = MEMORY[0x1E69C66A0];
  v674 = NSStringFromSelector(sel_movementAnimationPauseDeceleration);
  v673 = [v248 rowWithTitle:@"Pause Deceleration" valueKeyPath:v674];
  v672 = [v673 minValue:0.1 maxValue:5.0];
  v1272[2] = v672;
  v249 = MEMORY[0x1E69C66A0];
  v671 = NSStringFromSelector(sel_movementAnimationPausedVelocity);
  v670 = [v249 rowWithTitle:@"Paused Velocity" valueKeyPath:v671];
  v669 = [v670 minValue:0.0 maxValue:0.9];
  v1272[3] = v669;
  v250 = MEMORY[0x1E69C66A0];
  v668 = NSStringFromSelector(sel_movementAnimationResumeAcceleration);
  v667 = [v250 rowWithTitle:@"Resume Acceleration" valueKeyPath:v668];
  v666 = [v667 minValue:0.1 maxValue:5.0];
  v1272[4] = v666;
  v665 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1272 count:5];
  v664 = [v244 sectionWithRows:v665 title:@"Movement Animations"];
  v1293[20] = v664;
  v251 = MEMORY[0x1E69C6638];
  v252 = MEMORY[0x1E69C65F8];
  v663 = NSStringFromSelector(sel_currentPPTPreset);
  v662 = [v252 rowWithTitle:@"Player Configuration(s)" valueKeyPath:v663];
  v661 = PXStoryPPTPresetPossibleValues();
  v660 = [v662 px_possibleValues:v661 formatter:&__block_literal_global_1586];
  v1271[0] = v660;
  v253 = MEMORY[0x1E69C65F8];
  v659 = NSStringFromSelector(sel_currentPPTSubpreset);
  v658 = [v253 rowWithTitle:@"Player Subconfiguration" valueKeyPath:v659];
  v657 = PXStoryPPTSubpresetPossibleValues();
  v656 = [v658 px_possibleValues:v657 formatter:&__block_literal_global_1593];
  v1271[1] = v656;
  v254 = MEMORY[0x1E69C65F8];
  v655 = NSStringFromSelector(sel_currentFeedPPTPreset);
  v654 = [v254 rowWithTitle:@"Feed Configuration(s)" valueKeyPath:v655];
  v653 = PXFeedPPTPresetPossibleValues();
  v652 = [v654 px_possibleValues:v653 formatter:&__block_literal_global_1600];
  v1271[2] = v652;
  v255 = MEMORY[0x1E69C66A8];
  v651 = NSStringFromSelector(sel_showErrorAlertsDuringTestExecution);
  v650 = [v255 rowWithTitle:@"Show Error Alerts" valueKeyPath:v651];
  v1271[3] = v650;
  v649 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1271 count:4];
  v648 = [v251 sectionWithRows:v649 title:@"Performance Testing"];
  v1293[21] = v648;
  v256 = MEMORY[0x1E69C6638];
  v257 = MEMORY[0x1E69C66A8];
  v647 = NSStringFromSelector(sel_showMusicAndColorGradeEditor);
  v646 = [v257 rowWithTitle:@"Enable Edit Sheet" valueKeyPath:v647];
  v1270 = v646;
  v645 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1270 count:1];
  v644 = [v256 sectionWithRows:v645 title:@"Edit Sheet"];
  v1293[22] = v644;
  v258 = MEMORY[0x1E69C6638];
  v259 = MEMORY[0x1E69C66A8];
  v643 = NSStringFromSelector(sel_disableColorGrading);
  v642 = [v259 rowWithTitle:@"Disable Color Grading" valueKeyPath:v643];
  v1269[0] = v642;
  v260 = MEMORY[0x1E69C65F8];
  v641 = NSStringFromSelector(sel_colorGradeEditorPreviewMode);
  v640 = [v260 rowWithTitle:@"Preview Mode" valueKeyPath:v641];
  v639 = [v640 possibleValues:&unk_1F1911560 titles:&unk_1F1911578];
  v1269[1] = v639;
  v261 = MEMORY[0x1E69C66A0];
  v638 = NSStringFromSelector(sel_colorGradeSmoothingFactor);
  v637 = [v261 rowWithTitle:@"Color Grade Smoothing Amount" valueKeyPath:v638];
  v636 = [v637 minValue:0.0 maxValue:1.0];
  v1269[2] = v636;
  v262 = MEMORY[0x1E69C66A0];
  v635 = NSStringFromSelector(sel_colorGradeSmoothingPasses);
  v634 = [v262 rowWithTitle:@"Color Grade Smoothing Passes" valueKeyPath:v635];
  v633 = [v634 minValue:0.0 maxValue:10.0];
  v632 = [v633 px_increment:1.0];
  v1269[3] = v632;
  v263 = MEMORY[0x1E69C66A0];
  v631 = NSStringFromSelector(sel_colorGradeBlendingFactor);
  v630 = [v263 rowWithTitle:@"Color Grade Neutral Blending" valueKeyPath:v631];
  v629 = [v630 minValue:0.0 maxValue:1.0];
  v1269[4] = v629;
  v628 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1269 count:5];
  v627 = [v258 sectionWithRows:v628 title:@"Color Grade"];
  v1293[23] = v627;
  v264 = MEMORY[0x1E69C6638];
  v265 = MEMORY[0x1E69C65F8];
  v626 = NSStringFromSelector(sel_colorNormalizationMode);
  v625 = [v265 rowWithTitle:@"Mode" valueKeyPath:v626];
  possibleNormalizationModes = [v19 possibleNormalizationModes];
  v623 = [v625 px_possibleValues:possibleNormalizationModes formatter:&__block_literal_global_1666];
  v1268[0] = v623;
  v266 = MEMORY[0x1E69C65F8];
  v622 = NSStringFromSelector(sel_colorNormalizationTechnique);
  v621 = [v266 rowWithTitle:@"Technique" valueKeyPath:v622];
  possibleNormalizationTechniques = [v19 possibleNormalizationTechniques];
  v619 = [v621 px_possibleValues:possibleNormalizationTechniques formatter:&__block_literal_global_1673];
  v1268[1] = v619;
  v267 = MEMORY[0x1E69C66A8];
  v618 = NSStringFromSelector(sel_enableScrubberColorNormalization);
  v617 = [v267 rowWithTitle:@"Scrubber" valueKeyPath:v618];
  v1268[2] = v617;
  v268 = MEMORY[0x1E69C66A8];
  v616 = NSStringFromSelector(sel_enableBrowseViewColorNormalization);
  v615 = [v268 rowWithTitle:@"Browse View" valueKeyPath:v616];
  v1268[3] = v615;
  v269 = MEMORY[0x1E69C66A8];
  v614 = NSStringFromSelector(sel_debugShowColorNormalizationValues);
  v613 = [v269 rowWithTitle:@"Show Values in HUD" valueKeyPath:v614];
  v1268[4] = v613;
  v270 = MEMORY[0x1E69C66A8];
  v612 = NSStringFromSelector(sel_enableFalseColorNormalization);
  v611 = [v270 rowWithTitle:@"False Colors" valueKeyPath:v612];
  v1268[5] = v611;
  v271 = MEMORY[0x1E69C66A8];
  v610 = NSStringFromSelector(sel_colorNormalizationUseColorCube);
  v609 = [v271 rowWithTitle:@"CI Adjustment Use Color Cube" valueKeyPath:v610];
  v1268[6] = v609;
  v272 = MEMORY[0x1E69C66A0];
  v608 = NSStringFromSelector(sel_colorNormalizationCubeEdgeSize);
  v607 = [v272 rowWithTitle:@"LUT Cube Size" valueKeyPath:v608];
  v606 = [v607 minValue:2.0 maxValue:64.0];
  v605 = [v606 px_increment:2.0];
  v1268[7] = v605;
  v273 = MEMORY[0x1E69C66A8];
  v604 = NSStringFromSelector(sel_enableColorNormalizationWithoutColorGrade);
  v603 = [v273 rowWithTitle:@"Apply to Original" valueKeyPath:v604];
  v1268[8] = v603;
  v274 = MEMORY[0x1E69C66A0];
  v602 = NSStringFromSelector(sel_colorNormalizationIntensity);
  v601 = [v274 rowWithTitle:@"Intensity" valueKeyPath:v602];
  v600 = [v601 minValue:0.0 maxValue:1.0];
  v1268[9] = v600;
  v275 = MEMORY[0x1E69C66A8];
  v599 = NSStringFromSelector(sel_reportColorNormalizationErrors);
  v598 = [v275 rowWithTitle:@"Report Errors" valueKeyPath:v599];
  v1268[10] = v598;
  v597 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1268 count:11];
  v596 = [v264 sectionWithRows:v597 title:@"Color Normalization"];
  v1293[24] = v596;
  v276 = MEMORY[0x1E69C6638];
  v277 = MEMORY[0x1E69C66A8];
  v595 = NSStringFromSelector(sel_wantsFullscreenFeedExperience);
  v594 = [v277 rowWithTitle:@"Fullscreen Experience" valueKeyPath:v595];
  v1267[0] = v594;
  v278 = MEMORY[0x1E69C66A8];
  v593 = NSStringFromSelector(sel_showFeedChromeOnHover);
  v592 = [v278 rowWithTitle:@"Show Chrome on Hover" valueKeyPath:v593];
  v1267[1] = v592;
  v279 = MEMORY[0x1E69C66A8];
  v591 = NSStringFromSelector(sel_wantsInlinePlayback);
  v590 = [v279 rowWithTitle:@"Inline Playback" valueKeyPath:v591];
  v1267[2] = v590;
  v280 = MEMORY[0x1E69C66A0];
  v589 = NSStringFromSelector(sel_pressedScale);
  v588 = [v280 rowWithTitle:@"Pressed Scale" valueKeyPath:v589];
  v587 = [v588 minValue:0.7 maxValue:1.0];
  v1267[3] = v587;
  v281 = MEMORY[0x1E69C66A8];
  v586 = NSStringFromSelector(sel_isFeedHUDVisible);
  v585 = [v281 rowWithTitle:@"HUD" valueKeyPath:v586];
  v1267[4] = v585;
  v282 = MEMORY[0x1E69C65F8];
  v584 = NSStringFromSelector(sel_feedHUDType);
  v583 = [v282 rowWithTitle:@"HUD Type" valueKeyPath:v584];
  possibleFeedHUDTypes = [v19 possibleFeedHUDTypes];
  v581 = [v583 px_possibleValues:possibleFeedHUDTypes formatter:&__block_literal_global_1747];
  v283 = MEMORY[0x1E696AE18];
  v582 = NSStringFromSelector(sel_isFeedHUDVisible);
  v582 = [v283 predicateWithFormat:@"%K != 0", v582];
  v579 = [v581 condition:v582];
  v1267[5] = v579;
  v284 = MEMORY[0x1E69C66A0];
  v578 = NSStringFromSelector(sel_feedInitialLimit);
  v577 = [v284 rowWithTitle:@"Initial Memories" valueKeyPath:v578];
  v576 = [v577 minValue:0.0 maxValue:1000.0];
  v575 = [v576 px_increment:100.0];
  v1267[6] = v575;
  v285 = MEMORY[0x1E69C66A0];
  v574 = NSStringFromSelector(sel_feedCardLandscapeAspectRatio);
  v573 = [v285 rowWithTitle:@"Landscape A/R" valueKeyPath:v574];
  v572 = [v573 minValue:1.0 maxValue:2.0];
  v1267[7] = v572;
  v286 = MEMORY[0x1E69C66A0];
  v571 = NSStringFromSelector(sel_feedCardPortraitAspectRatio);
  v570 = [v286 rowWithTitle:@"Portrait A/R" valueKeyPath:v571];
  v569 = [v570 minValue:0.5 maxValue:1.0];
  v1267[8] = v569;
  v287 = MEMORY[0x1E69C66A0];
  v568 = NSStringFromSelector(sel_feedCardWideLandscapeAspectRatio);
  v567 = [v287 rowWithTitle:@"Wide Landscape A/R" valueKeyPath:v568];
  v566 = [v567 minValue:2.0 maxValue:4.0];
  v1267[9] = v566;
  v288 = MEMORY[0x1E69C66A0];
  v565 = NSStringFromSelector(sel_feedItemCornerRadius);
  v564 = [v288 rowWithTitle:@"Item Corner Radius" valueKeyPath:v565];
  v563 = [v564 minValue:0.0 maxValue:30.0];
  v1267[10] = v563;
  v289 = MEMORY[0x1E69C66A8];
  v562 = NSStringFromSelector(sel_useSimpleOverlayFeedLayout);
  v561 = [v289 rowWithTitle:@"Use Simple Overlay Feed Layout" valueKeyPath:v562];
  v1267[11] = v561;
  v290 = MEMORY[0x1E69C66A8];
  v560 = NSStringFromSelector(sel_wantsFeedItemShadow);
  v559 = [v290 rowWithTitle:@"Item Drop Shadow" valueKeyPath:v560];
  v1267[12] = v559;
  v291 = MEMORY[0x1E69C66A0];
  v558 = NSStringFromSelector(sel_inlinePlaybackCriticalInsetX);
  v557 = [v291 rowWithTitle:@"Playback Inset X" valueKeyPath:v558];
  v556 = [v557 minValue:0.0 maxValue:1000.0];
  v555 = [v556 px_increment:1.0];
  v1267[13] = v555;
  v292 = MEMORY[0x1E69C66A0];
  v554 = NSStringFromSelector(sel_inlinePlaybackCriticalInsetY);
  v553 = [v292 rowWithTitle:@"Playback Inset Y" valueKeyPath:v554];
  v552 = [v553 minValue:0.0 maxValue:1000.0];
  v551 = [v552 px_increment:1.0];
  v1267[14] = v551;
  v293 = MEMORY[0x1E69C66A8];
  v550 = NSStringFromSelector(sel_useFeedPlaceholderItems);
  v549 = [v293 rowWithTitle:@"Placeholder Items" valueKeyPath:v550];
  v1267[15] = v549;
  v548 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1267 count:16];
  v547 = [v276 sectionWithRows:v548 title:@"For You & Feed"];
  v1293[25] = v547;
  v294 = MEMORY[0x1E69C6638];
  v295 = MEMORY[0x1E69C66A8];
  v546 = NSStringFromSelector(sel_allowsFormSheetPresentation);
  v545 = [v295 rowWithTitle:@"Sheet Presentation" valueKeyPath:v546];
  v1266[0] = v545;
  v296 = MEMORY[0x1E69C65F8];
  v845 = NSStringFromSelector(sel_swipeDownBehavior);
  v544 = [v296 rowWithTitle:@"Swipe Down" valueKeyPath:v845];
  v543 = [v544 possibleValues:&unk_1F1911590 titles:&unk_1F19115A8];
  v1266[1] = v543;
  v297 = MEMORY[0x1E69C66A0];
  v542 = NSStringFromSelector(sel_swipeDownSignificantDuration);
  v541 = [v297 rowWithTitle:@"Significant Duration" valueKeyPath:v542];
  v540 = [v541 minValue:0.0 maxValue:0.5];
  v539 = [v540 px_increment:0.01];
  v538 = [v539 condition:v1256];
  v1266[2] = v538;
  v298 = MEMORY[0x1E69C66A0];
  v537 = NSStringFromSelector(sel_swipeDownDismissalDistanceThreshold);
  v536 = [v298 rowWithTitle:@"Distance Threshold" valueKeyPath:v537];
  v535 = [v536 minValue:0.0 maxValue:600.0];
  v534 = [v535 px_increment:20.0];
  v533 = [v534 condition:v1256];
  v1266[3] = v533;
  v299 = MEMORY[0x1E69C66A0];
  v532 = NSStringFromSelector(sel_swipeDownDismissalDelay);
  v531 = [v299 rowWithTitle:@"Delay" valueKeyPath:v532];
  v530 = [v531 minValue:0.0 maxValue:2.0];
  v529 = [v530 px_increment:0.1];
  v528 = [v529 condition:v1256];
  v1266[4] = v528;
  v300 = MEMORY[0x1E69C66A0];
  v527 = NSStringFromSelector(sel_swipeDownThresholdFadeDuration);
  v526 = [v300 rowWithTitle:@"Fade Duration" valueKeyPath:v527];
  v525 = [v526 minValue:0.0 maxValue:2.0];
  v524 = [v525 px_increment:0.1];
  v523 = [v524 condition:v1256];
  v1266[5] = v523;
  v301 = MEMORY[0x1E69C66A8];
  v522 = NSStringFromSelector(sel_needs79067616Workaround);
  v521 = [v301 rowWithTitle:@"79067616 Workaround" valueKeyPath:v522];
  v1266[6] = v521;
  v520 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1266 count:7];
  v519 = [v294 sectionWithRows:v520 title:@"View Controller Transition"];
  v1293[26] = v519;
  v302 = MEMORY[0x1E69C6638];
  v303 = MEMORY[0x1E69C66A0];
  v518 = NSStringFromSelector(sel_autoEditPortraitAreaMin);
  v517 = [v303 rowWithTitle:@"Portrait Min Face Area" valueKeyPath:v518];
  v516 = [v517 minValue:0.0 maxValue:1.0];
  v1265[0] = v516;
  v304 = MEMORY[0x1E69C66A0];
  v515 = NSStringFromSelector(sel_autoEditPortraitAspectLargeVerticalFaceAreaMin);
  v514 = [v304 rowWithTitle:@"Portrait Aspect Asset Min Large Vertical Face Area" valueKeyPath:v515];
  v513 = [v514 minValue:0.0 maxValue:1.0];
  v1265[1] = v513;
  v305 = MEMORY[0x1E69C66A0];
  v512 = NSStringFromSelector(sel_autoEditModuleLengthMax);
  v511 = [v305 rowWithTitle:@"Module Max Length" valueKeyPath:v512];
  v510 = [v511 minValue:1.0 maxValue:20.0];
  v509 = [v510 px_increment:1.0];
  v1265[2] = v509;
  v306 = MEMORY[0x1E69C66A0];
  v508 = NSStringFromSelector(sel_autoEditRotateMotionMax);
  v507 = [v306 rowWithTitle:@"Rotate Max Length" valueKeyPath:v508];
  v506 = [v507 minValue:1.0 maxValue:20.0];
  v505 = [v506 px_increment:1.0];
  v1265[3] = v505;
  v307 = MEMORY[0x1E69C66A0];
  v504 = NSStringFromSelector(sel_autoEditEmptySpaceLengthMax);
  v503 = [v307 rowWithTitle:@"Empty Space Max" valueKeyPath:v504];
  v502 = [v503 minValue:1.0 maxValue:20.0];
  v501 = [v502 px_increment:1.0];
  v1265[4] = v501;
  v308 = MEMORY[0x1E69C66A0];
  v500 = NSStringFromSelector(sel_autoEditDiptychCropAspectMax);
  v499 = [v308 rowWithTitle:@"2-Up Crop Ratio" valueKeyPath:v500];
  v498 = [v499 minValue:1.0 maxValue:10.0];
  v1265[5] = v498;
  v309 = MEMORY[0x1E69C66A0];
  v497 = NSStringFromSelector(sel_autoEditTriptychCropAspectMax);
  v496 = [v309 rowWithTitle:@"3-Up Crop Ratio" valueKeyPath:v497];
  v495 = [v496 minValue:1.0 maxValue:10.0];
  v1265[6] = v495;
  v310 = MEMORY[0x1E69C66A0];
  v494 = NSStringFromSelector(sel_autoEditProductionSimulatedDelay);
  v493 = [v310 rowWithTitle:@"Simulated Delay" valueKeyPath:v494];
  v492 = [v493 minValue:0.0 maxValue:30.0];
  v491 = [v492 px_increment:1.0];
  v1265[7] = v491;
  v311 = MEMORY[0x1E69C66A8];
  v490 = NSStringFromSelector(sel_autoEditDisableNUp);
  v489 = [v311 rowWithTitle:@"Disable N-Up" valueKeyPath:v490];
  v1265[8] = v489;
  v312 = MEMORY[0x1E69C65F8];
  v488 = NSStringFromSelector(sel_disabledClipMotionStyles);
  v487 = [v312 rowWithTitle:@"Disabled Motion Styles" valueKeyPath:v488];
  v486 = [v487 possibleValues:&unk_1F19115C0 titles:&unk_1F19115D8];
  v1265[9] = v486;
  v313 = MEMORY[0x1E69C65F8];
  v485 = NSStringFromSelector(sel_autoEditSongPaceOverride);
  v484 = [v313 rowWithTitle:@"Song Pace" valueKeyPath:v485];
  v483 = [v484 possibleValues:&unk_1F19115F0 titles:&unk_1F1911608];
  v1265[10] = v483;
  v314 = MEMORY[0x1E69C66A8];
  v482 = NSStringFromSelector(sel_autoEditUseMomentRecipes);
  v481 = [v314 rowWithTitle:@"Use Moment Recipes" valueKeyPath:v482];
  v1265[11] = v481;
  v315 = MEMORY[0x1E69C66A0];
  v480 = NSStringFromSelector(sel_scaleRecipeRelativeFrequency);
  v479 = [v315 rowWithTitle:@"Scale Recipe Relative Frequency" valueKeyPath:v480];
  v477 = [v479 minValue:0.0 maxValue:1.0];
  v316 = MEMORY[0x1E696AE18];
  v478 = NSStringFromSelector(sel_autoEditUseMomentRecipes);
  v478 = [v316 predicateWithFormat:@"%K != 0", v478];
  v475 = [v477 condition:v478];
  v1265[12] = v475;
  v317 = MEMORY[0x1E69C66A0];
  v474 = NSStringFromSelector(sel_panRecipeRelativeFrequency);
  v473 = [v317 rowWithTitle:@"Pan Recipe Relative Frequency" valueKeyPath:v474];
  v471 = [v473 minValue:0.0 maxValue:1.0];
  v318 = MEMORY[0x1E696AE18];
  v472 = NSStringFromSelector(sel_autoEditUseMomentRecipes);
  v472 = [v318 predicateWithFormat:@"%K != 0", v472];
  v469 = [v471 condition:v472];
  v1265[13] = v469;
  v319 = MEMORY[0x1E69C66A0];
  v468 = NSStringFromSelector(sel_exposeToBlackRecipeRelativeFrequency);
  v467 = [v319 rowWithTitle:@"Exposure-Bleed/Fade-to-Black Recipe Relative Frequency" valueKeyPath:v468];
  v465 = [v467 minValue:0.0 maxValue:1.0];
  v320 = MEMORY[0x1E696AE18];
  v466 = NSStringFromSelector(sel_autoEditUseMomentRecipes);
  v466 = [v320 predicateWithFormat:@"%K != 0", v466];
  v463 = [v465 condition:v466];
  v1265[14] = v463;
  v321 = MEMORY[0x1E69C66A0];
  v462 = NSStringFromSelector(sel_autoEditSceneConfidenceThreshold);
  v461 = [v321 rowWithTitle:@"Scene Confidence Threshold" valueKeyPath:v462];
  v459 = [v461 minValue:0.0 maxValue:1.0];
  v322 = MEMORY[0x1E696AE18];
  v460 = NSStringFromSelector(sel_autoEditUseMomentRecipes);
  v460 = [v322 predicateWithFormat:@"%K != 0", v460];
  v457 = [v459 condition:v460];
  v1265[15] = v457;
  v323 = MEMORY[0x1E69C66A0];
  v456 = NSStringFromSelector(sel_autoEditHighCurationScoreThreshold);
  v455 = [v323 rowWithTitle:@"High Curation Score Threshold" valueKeyPath:v456];
  v453 = [v455 minValue:0.0 maxValue:1.0];
  v324 = MEMORY[0x1E696AE18];
  v454 = NSStringFromSelector(sel_autoEditUseMomentRecipes);
  v454 = [v324 predicateWithFormat:@"%K != 0", v454];
  v451 = [v453 condition:v454];
  v1265[16] = v451;
  v325 = MEMORY[0x1E69C66A0];
  v450 = NSStringFromSelector(sel_autoEditDoublePlaceMultiplier);
  v449 = [v325 rowWithTitle:@"Double-Pace Multiplier" valueKeyPath:v450];
  v447 = [v449 minValue:0.1 maxValue:1.0];
  v326 = MEMORY[0x1E696AE18];
  v448 = NSStringFromSelector(sel_autoEditUseMomentRecipes);
  v448 = [v326 predicateWithFormat:@"%K != 0", v448];
  v445 = [v447 condition:v448];
  v1265[17] = v445;
  v444 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1265 count:18];
  v443 = [v302 sectionWithRows:v444 title:@"Auto Edit"];
  v1293[27] = v443;
  v327 = MEMORY[0x1E69C6638];
  v328 = MEMORY[0x1E69C66A0];
  v442 = NSStringFromSelector(sel_titleRegularPaddingBottomScale);
  v441 = [v328 rowWithTitle:@"Full Screen Padding Bottom Scale" valueKeyPath:v442];
  v440 = [v441 minValue:0.0 maxValue:1.0];
  v1264[0] = v440;
  v329 = MEMORY[0x1E69C66A0];
  v439 = NSStringFromSelector(sel_titlePaddingTopScale);
  v438 = [v329 rowWithTitle:@"Top Padding Scale" valueKeyPath:v439];
  v437 = [v438 minValue:0.0 maxValue:1.0];
  v1264[1] = v437;
  v330 = MEMORY[0x1E69C66A0];
  v436 = NSStringFromSelector(sel_titleWidthMin);
  v435 = [v330 rowWithTitle:@"Width Min" valueKeyPath:v436];
  v434 = [v435 minValue:0.0 maxValue:300.0];
  v1264[2] = v434;
  v331 = MEMORY[0x1E69C66A0];
  v433 = NSStringFromSelector(sel_titleWidthMax);
  v432 = [v331 rowWithTitle:@"Width Max" valueKeyPath:v433];
  v431 = [v432 minValue:0.0 maxValue:900.0];
  v1264[3] = v431;
  v332 = MEMORY[0x1E69C66A0];
  v430 = NSStringFromSelector(sel_titleMinimumScale);
  v429 = [v332 rowWithTitle:@"Title Min Scale" valueKeyPath:v430];
  v428 = [v429 minValue:0.0 maxValue:1.0];
  v1264[4] = v428;
  v333 = MEMORY[0x1E69C66A0];
  v427 = NSStringFromSelector(sel_subtitleMinimumScale);
  v426 = [v333 rowWithTitle:@"Subtitle Min Scale" valueKeyPath:v427];
  v425 = [v426 minValue:0.0 maxValue:1.0];
  v1264[5] = v425;
  v334 = MEMORY[0x1E69C66A8];
  v424 = NSStringFromSelector(sel_titleUseCenterAlignment);
  v423 = [v334 rowWithTitle:@"Use Center Alignment" valueKeyPath:v424];
  v1264[6] = v423;
  v335 = MEMORY[0x1E69C66A0];
  v422 = NSStringFromSelector(sel_titleFarthestDistanceThreshold);
  v421 = [v335 rowWithTitle:@"Farthest Distance Threshold" valueKeyPath:v422];
  v420 = [v421 minValue:0.0 maxValue:2.0];
  v1264[7] = v420;
  v336 = MEMORY[0x1E69C66A8];
  v419 = NSStringFromSelector(sel_enableTitlePositioningLogs);
  v418 = [v336 rowWithTitle:@"Enable Title Positioning Logs" valueKeyPath:v419];
  v1264[8] = v418;
  v337 = MEMORY[0x1E69C65F8];
  v417 = NSStringFromSelector(sel_verticalTextMode);
  v416 = [v337 rowWithTitle:@"Vertical Text Mode" valueKeyPath:v417];
  v415 = [v416 possibleValues:&unk_1F1911620 titles:&unk_1F1911638];
  v1264[9] = v415;
  v338 = MEMORY[0x1E69C65F8];
  v414 = NSStringFromSelector(sel_kashidaTextMode);
  v413 = [v338 rowWithTitle:@"Kashida Mode" valueKeyPath:v414];
  v412 = [v413 possibleValues:&unk_1F1911650 titles:&unk_1F1911668];
  v1264[10] = v412;
  v339 = MEMORY[0x1E69C66A0];
  v411 = NSStringFromSelector(sel_titleMaximumNumberOfLines);
  v410 = [v339 rowWithTitle:@"Title Max num Of Lines" valueKeyPath:v411];
  v409 = [v410 minValue:1.0 maxValue:5.0];
  v408 = [v409 px_increment:1.0];
  v1264[11] = v408;
  v340 = MEMORY[0x1E69C66A8];
  v407 = NSStringFromSelector(sel_useReferenceWidthBasedTitleLayout);
  v406 = [v340 rowWithTitle:@"Use Reference Width Based Title Layout" valueKeyPath:v407];
  v1264[12] = v406;
  v341 = MEMORY[0x1E69C66A0];
  v405 = NSStringFromSelector(sel_titleReferenceWidthPortrait);
  v404 = [v341 rowWithTitle:@"Reference Width Portrait" valueKeyPath:v405];
  v403 = [v404 minValue:0.0 maxValue:500.0];
  v1264[13] = v403;
  v342 = MEMORY[0x1E69C66A0];
  v402 = NSStringFromSelector(sel_titleReferenceWidthLandscape);
  v401 = [v342 rowWithTitle:@"Reference Width Landscape" valueKeyPath:v402];
  v400 = [v401 minValue:0.0 maxValue:500.0];
  v1264[14] = v400;
  v343 = MEMORY[0x1E69C66A0];
  v399 = NSStringFromSelector(sel_titleFullScreenPortraitWidthScale);
  v398 = [v343 rowWithTitle:@"Full Screen Portrait Width Scale" valueKeyPath:v399];
  v397 = [v398 minValue:0.0 maxValue:1.0];
  v1264[15] = v397;
  v344 = MEMORY[0x1E69C66A0];
  v396 = NSStringFromSelector(sel_titleFullScreenLandscapeWidthScale);
  v395 = [v344 rowWithTitle:@"Full Screen Landscape Width Scale" valueKeyPath:v396];
  v394 = [v395 minValue:0.0 maxValue:1.0];
  v1264[16] = v394;
  v345 = MEMORY[0x1E69C66A0];
  v393 = NSStringFromSelector(sel_titleFeedPortraitWidthScale);
  v392 = [v345 rowWithTitle:@"Feed Portrait Width Scale" valueKeyPath:v393];
  v391 = [v392 minValue:0.0 maxValue:1.0];
  v1264[17] = v391;
  v346 = MEMORY[0x1E69C66A0];
  v390 = NSStringFromSelector(sel_titleFeedLandscapeWidthScale);
  v389 = [v346 rowWithTitle:@"Feed Landscape Width Scale" valueKeyPath:v390];
  v388 = [v389 minValue:0.0 maxValue:1.0];
  v1264[18] = v388;
  v347 = MEMORY[0x1E69C66A0];
  v387 = NSStringFromSelector(sel_titleSizeScale);
  v386 = [v347 rowWithTitle:@"(Old Version)Full Screen Title Font Size Scale" valueKeyPath:v387];
  v385 = [v386 minValue:0.0 maxValue:4.0];
  v1264[19] = v385;
  v348 = MEMORY[0x1E69C66A0];
  v384 = NSStringFromSelector(sel_subtitleSizeScale);
  v383 = [v348 rowWithTitle:@"(Old Version)Full Screen Subtitle Font Size Scale" valueKeyPath:v384];
  v382 = [v383 minValue:0.0 maxValue:4.0];
  v1264[20] = v382;
  v349 = MEMORY[0x1E69C66A8];
  v381 = NSStringFromSelector(sel_simulateSlowTextLayout);
  v380 = [v349 rowWithTitle:@"Simulate Slow Layout" valueKeyPath:v381];
  v1264[21] = v380;
  v350 = MEMORY[0x1E69C6610];
  v379 = NSStringFromSelector(sel_chapterSettings);
  v378 = [v350 rowWithTitle:@"Chapters" childSettingsKeyPath:v379];
  v1264[22] = v378;
  v377 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1264 count:23];
  v376 = [v327 sectionWithRows:v377 title:@"Titles"];
  v1293[28] = v376;
  v351 = MEMORY[0x1E69C6638];
  v352 = MEMORY[0x1E69C66A8];
  v375 = NSStringFromSelector(sel_showTVPreviewInDiagnostics);
  v374 = [v352 rowWithTitle:@"Show TV Preview in Diagnostics" valueKeyPath:v375];
  v1263[0] = v374;
  v353 = MEMORY[0x1E69C66A0];
  v373 = NSStringFromSelector(sel_curationScorePercentileThreshold);
  v372 = [v353 rowWithTitle:@"Curation Score Threshold" valueKeyPath:v373];
  v371 = [v372 minValue:0.0 maxValue:1.0];
  v370 = [v371 px_increment:0.05];
  v1263[1] = v370;
  v354 = MEMORY[0x1E69C66A0];
  v369 = NSStringFromSelector(sel_aestheticsScorePercentileThreshold);
  v368 = [v354 rowWithTitle:@"Aesthetic Score Threshold" valueKeyPath:v369];
  v367 = [v368 minValue:0.0 maxValue:1.0];
  v355 = [v367 px_increment:0.05];
  v1263[2] = v355;
  v356 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1263 count:3];
  v357 = [v351 sectionWithRows:v356 title:@"TV Preview"];
  v1293[29] = v357;
  v358 = MEMORY[0x1E69C6638];
  v359 = MEMORY[0x1E69C66A8];
  v360 = NSStringFromSelector(sel_useCommonActionInfrastructureForActionMenu);
  v361 = [v359 rowWithTitle:@"Common Infra. for Menu" valueKeyPath:v360];
  v1262 = v361;
  v362 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1262 count:1];
  v363 = [v358 sectionWithRows:v362 title:@"Actions"];
  v1293[30] = v363;
  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v1293[31] = px_restoreDefaultsSection;
  v365 = [MEMORY[0x1E695DEC8] arrayWithObjects:v1293 count:32];
  v961 = [v960 moduleWithTitle:@"Interactive Memories" contents:v365];

  return v961;
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if ((v2 - 1) > 0x12)
  {
    return @"None";
  }

  else
  {
    return off_1E77401C0[v2 - 1];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  v3 = @"??";
  if (v2 == 1)
  {
    v3 = @"CoreImage Adjustment";
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return @"Shader LUT";
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 4)
  {
    return @"??";
  }

  else
  {
    return off_1E7731728[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 3)
  {
    return @"??";
  }

  else
  {
    return off_1E7749960[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 3)
  {
    return @"??";
  }

  else
  {
    return off_1E7733B98[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 7)
  {
    return @"??";
  }

  else
  {
    return off_1E7733B58[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 6)
  {
    return @"??";
  }

  else
  {
    return off_1E772F9D8[v2];
  }
}

uint64_t __47__PXStorySettings_UI__settingsControllerModule__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  [a2 floatValue];
  return [v2 stringWithFormat:@"%d%%", (v3 * 100.0)];
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_7_1189(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 3)
  {
    return @"??";
  }

  else
  {
    return off_1E7731780[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_6_1181(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 3)
  {
    return @"??";
  }

  else
  {
    return off_1E7731780[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_5_1168(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 4)
  {
    return @"??";
  }

  else
  {
    return off_1E773BE68[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_4_1130(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 5)
  {
    return @"??";
  }

  else
  {
    return off_1E7731750[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_3_1122(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 5)
  {
    return @"??";
  }

  else
  {
    return off_1E7731750[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_2_1114(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 5)
  {
    return @"??";
  }

  else
  {
    return off_1E7731750[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_1106(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 5)
  {
    return @"??";
  }

  else
  {
    return off_1E7731750[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 5)
  {
    return @"??";
  }

  else
  {
    return off_1E77317F0[v2];
  }
}

uint64_t __47__PXStorySettings_UI__settingsControllerModule__block_invoke_904(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_alloc_init(PXFlexMusicViewController);
  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
  [v3 presentViewController:v5 animated:1 completion:0];

  return 1;
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_3_717(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 9)
  {
    return @"??";
  }

  else
  {
    return off_1E77317A0[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_2_709(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 9)
  {
    return @"??";
  }

  else
  {
    return off_1E77317A0[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_651(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 3)
  {
    return @"??";
  }

  else
  {
    return off_1E7731708[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E7740388[v2];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return PXStoryPaperTrailOptionsDescription(v2);
}

void __47__PXStorySettings_UI__settingsControllerModule__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PXSoftLinkedProtoRootSettingsLoadIfNecessary(1);
  v5 = [NSClassFromString(&cfstr_Pxprotomemorie_0.isa) sharedInstance];
  v4 = [MEMORY[0x1E69DD258] px_viewControllerWithSettings:v5];
  [v2 pushViewController:v4 animated:1];
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if ((v2 - 1) > 0x12)
  {
    return @"None";
  }

  else
  {
    return off_1E77401C0[v2 - 1];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if ((v2 - 1) > 0x12)
  {
    return @"None";
  }

  else
  {
    return off_1E77401C0[v2 - 1];
  }
}

__CFString *__47__PXStorySettings_UI__settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 2)
  {
    return @"??";
  }

  else
  {
    return off_1E77316F0[v2];
  }
}

@end