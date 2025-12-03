@interface PUOneUpSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
+ (id)transientProperties;
- (BOOL)allowAutoplayVideoForAsset:(id)asset;
- (BOOL)allowVisualIntelligence;
- (BOOL)allowsVisualIntelligenceInVideoFrame;
- (BOOL)allowsVisualIntelligenceRemoveBackground;
- (BOOL)allowsVisualIntelligenceV2;
- (BOOL)allowsVisualIntelligenceVisualLookupInfoPanelMode;
- (UIColor)videoHighlightColor;
- (void)createChildren;
- (void)preferencesDidChange;
- (void)setDefaultValues;
@end

@implementation PUOneUpSettings

- (void)createChildren
{
  self->_scrubberSettings = [(PTSettings *)[PUScrubberSettings alloc] initWithDefaultValues];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDefaultValues
{
  v11.receiver = self;
  v11.super_class = PUOneUpSettings;
  [(PTSettings *)&v11 setDefaultValues];
  [(PUOneUpSettings *)self setFullQualityCrossfadeDuration:0.8];
  [(PUOneUpSettings *)self setFullQualityCrossfadeBehavior:2];
  v3 = MGGetBoolAnswer() ^ 1;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [(PUOneUpSettings *)self setTitleTapAction:0];
  v6 = 1;
  [(PUOneUpSettings *)self setAllowUserTransform:1];
  [(PUOneUpSettings *)self setAllowBadges:1];
  if (userInterfaceIdiom == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v3;
  }

  if (userInterfaceIdiom == 1)
  {
    v8 = 100.0;
  }

  else
  {
    v8 = 40.0;
  }

  [(PUOneUpSettings *)self setAllowScrubber:v7];
  [(PUOneUpSettings *)self setAllowChromeHiding:1];
  [(PUOneUpSettings *)self setAllowDoubleTapZoom:1];
  [(PUOneUpSettings *)self setAllowFullsizeJPEGDisplay:1];
  [(PUOneUpSettings *)self setUserNavigationMaximumDistance:2];
  [(PUOneUpSettings *)self setShowSaliencyRects:0];
  [(PUOneUpSettings *)self setShowObjectRects:0];
  [(PUOneUpSettings *)self setShowFacesRect:0];
  [(PUOneUpSettings *)self setShowPaddedFacesRect:0];
  [(PUOneUpSettings *)self setShowBestSquareRect:0];
  [(PUOneUpSettings *)self setShowFacesTorsosRects:0];
  [(PUOneUpSettings *)self setShowGazeRects:0];
  [(PUOneUpSettings *)self setShowWallpaperCropRect:0];
  [(PUOneUpSettings *)self setEnableFigPhotoTiledLayer:1];
  [(PUOneUpSettings *)self setUseURLForLargePhotosWithFigPhotoTiledLayer:1];
  [(PUOneUpSettings *)self setForceURLWithFigPhotoTiledLayer:0];
  [(PUOneUpSettings *)self setEnableFigPhotoBackgroundSizeBasedDisplay:0];
  [(PUOneUpSettings *)self setSimulateWorstCaseFigPhotoBackgroundSize:0];
  [(PUOneUpSettings *)self setUseHDRVideoThumbnails:0];
  [(PUOneUpSettings *)self setEnableHDRImages:1];
  [(PUOneUpSettings *)self setPreferredImageDynamicRangeAnimationDuration:2.0];
  [(PUOneUpSettings *)self setHdrSuppressionAnimationDuration:1.0];
  [(PUOneUpSettings *)self setHdrShareSheetCrossfadeAnimationDuration:2.0];
  [(PUOneUpSettings *)self setAccessoryViewType:1];
  [(PUOneUpSettings *)self setAccessoryInitialTopPosition:0.300000012];
  [(PUOneUpSettings *)self setMinimumVisibleContentHeight:-180.0];
  [(PUOneUpSettings *)self setMinimumVisibleCommentedContentHeight:100.0];
  [(PUOneUpSettings *)self setMinimumFullCommentTitleViewWidth:375.0];
  [(PUOneUpSettings *)self setAllowsDetailsToggleButtonInBars:1];
  [(PUOneUpSettings *)self setSquareImageCapToHalfHeight:1];
  [(PUOneUpSettings *)self setHideFloatingInfoPanelWhenHidingChrome:0];
  [(PUOneUpSettings *)self setHideToolbarWhenShowingAccessoryView:0];
  [(PUOneUpSettings *)self setShouldFadeAccessoryView:1];
  [(PUOneUpSettings *)self setChromeDefaultAnimationDuration:*MEMORY[0x1E69DE248]];
  [(PUOneUpSettings *)self setChromeAutoHideBehaviorOnLivePhoto:0];
  [(PUOneUpSettings *)self setChromeAutoHideBehaviorOnPlayButton:2];
  [(PUOneUpSettings *)self setChromeAutoHideBehaviorOnSwipe:0];
  [(PUOneUpSettings *)self setChromeAutoHideBehaviorOnZoom:2];
  [(PUOneUpSettings *)self setChromeAutoHideDelay:0.0];
  [(PUOneUpSettings *)self setPersistChromeVisibility:PFIsCamera()];
  [(PUOneUpSettings *)self setChromeTimedAutoHideAnimationDuration:1.0];
  [(PUOneUpSettings *)self setChromeAnimationType:1];
  [(PUOneUpSettings *)self setChromeBackgroundAnimationType:1];
  [(PUOneUpSettings *)self setAllowParallax:1];
  [(PUOneUpSettings *)self setInterpageSpacing:v8];
  [(PUOneUpSettings *)self setPagingSpringPullAdjustment:0.0];
  [(PUOneUpSettings *)self setPagingFrictionAdjustment:2.0];
  [(PUOneUpSettings *)self setParallaxModel:1];
  [(PUOneUpSettings *)self setParallaxFactor:12.5];
  [(PUOneUpSettings *)self setItemContentCornerRadius:0.0];
  [(PUOneUpSettings *)self setAllowStatusBar:1];
  [(PUOneUpSettings *)self setBarsAreaVerticalOutset:10.0];
  [(PUOneUpSettings *)self setVisualLookupGlyphAnimationFadeOutDelay:3.0];
  [(PUOneUpSettings *)self setScaleToFitBehavior:1];
  [(PUOneUpSettings *)self setMinimumContentInset:0.0];
  [(PUOneUpSettings *)self setDefaultZoomInFactor:6.0];
  [(PUOneUpSettings *)self setDoubleTapZoomFactor:2.5];
  [(PUOneUpSettings *)self setDoubleTapZoomAreaExcludesBars:1];
  [(PUOneUpSettings *)self setDoubleTapZoomAreaExcludesBackground:1];
  if ((PFIsiOSPhotosApp() & 1) == 0)
  {
    if (PFIsCamera())
    {
      v6 = 1;
    }

    else
    {
      v6 = PFIsSpotlight();
    }
  }

  [(PUOneUpSettings *)self setAutoplayVideo:v6];
  [(PUOneUpSettings *)self setVideoAutoplayThreshold:0.800000012];
  [(PUOneUpSettings *)self setVideoPauseThreshold:1.0];
  if (PFIsiOSPhotosApp() & 1) != 0 || (PFIsCamera() & 1) != 0 || (PFIsSpotlight())
  {
    v9 = 1;
  }

  else
  {
    v9 = PFIsPreferences();
  }

  [(PUOneUpSettings *)self setAllowPlayButtonInBars:v9];
  [(PUOneUpSettings *)self setAutoplayScrubberWidth:100.0];
  [(PUOneUpSettings *)self setVideoShowDebugBorders:0];
  [(PUOneUpSettings *)self setVideoShowLiveEffectsRenderingIndicator:0];
  v10 = 1;
  [(PUOneUpSettings *)self setLivePhotoSRLCompensationEnabled:1];
  [(PUOneUpSettings *)self setLivePhotoSRLCompensationManualMode:0];
  [(PUOneUpSettings *)self setLivePhotoSRLCompensationManualValue:0.0];
  [(PUOneUpSettings *)self setLivePhotoSRLCompensationFilterName:@"srl"];
  [(PUOneUpSettings *)self setLivePhotoInteractionThreshold:0.5];
  [(PUOneUpSettings *)self setVitalityMaxAllowedInsetPoints:25.0];
  [(PUOneUpSettings *)self setVitalityMaxAllowedLargeInsetPoints:40.0];
  [(PUOneUpSettings *)self setVitalityUseInsetLimiting:1];
  [(PUOneUpSettings *)self setApplyPerspectiveTransformDuringVitality:1];
  [(PUOneUpSettings *)self setLockScrollDuringLivePhotoPlayback:1];
  [(PUOneUpSettings *)self setLivePhotoScrubberShowForPlayback:0];
  if ((PFIsiOSPhotosApp() & 1) == 0)
  {
    v10 = PFIsCamera();
  }

  [(PUOneUpSettings *)self setShouldMergeOverlappingLivePhotos:v10];
  [(PUOneUpSettings *)self setLivePhotoMinimumOverlappingDuration:0.0];
  [(PUOneUpSettings *)self setOverlappingLivePhotosCountLimit:16];
  [(PUOneUpSettings *)self setVitalityMaskBlur:4.0];
  [(PUOneUpSettings *)self setVitalityFeatherScale:0.005];
  [(PUOneUpSettings *)self setShowReframedBadge:1];
  [(PUOneUpSettings *)self setShowVideoSearchHighlightLabel:1];
  [(PUOneUpSettings *)self setVideoStartAtFirstHighlight:1];
  [(PUOneUpSettings *)self setVideoHighlightColorName:0];
  [(PUOneUpSettings *)self setVideoHighlightPreroll:0.25];
  [(PUOneUpSettings *)self setViewModelCacheCountLimit:100];
  [(PUOneUpSettings *)self setVisibilityDurationForEnteringQuickPagingRegime:0.5];
  [(PUOneUpSettings *)self setVisibilityDurationForExitingQuickPagingRegime:0.55];
  [(PUOneUpSettings *)self setMinNavigationDistanceForQuickPagingRegime:3];
  [(PUOneUpSettings *)self setVisibilityDurationForEnteringFastRegime:0.07];
  [(PUOneUpSettings *)self setVisibilityDurationForExitingFastRegime:0.11];
  [(PUOneUpSettings *)self setMinNavigationDistanceForFastRegime:10];
  [(PUOneUpSettings *)self setBounceDuration:0.5];
  [(PUOneUpSettings *)self setBounceDelay:0.0];
  [(PUOneUpSettings *)self setBounceInitialVelocity:100.0];
  [(PUOneUpSettings *)self setBounceSpringDamping:1.0];
  [(PUOneUpSettings *)self setAllowGIFPlayback:1];
  [(PUOneUpSettings *)self setShowGIFLoadingDelays:0];
  [(PUOneUpSettings *)self setPlayGIFSettledThreshold:0.25];
  [(PUOneUpSettings *)self setPlayGIFEnterThreshold:0.899999976];
  [(PUOneUpSettings *)self setPlayGIFMoveOutThreshold:0.25];
  [(PUOneUpSettings *)self setUserAllowsVisualIntelligence:1];
  [(PUOneUpSettings *)self setUserAllowsVisualIntelligenceV2:1];
  [(PUOneUpSettings *)self setUserAllowsVisualIntelligenceInVideoFrame:1];
  [(PUOneUpSettings *)self setUserAllowsVisualIntelligenceRemoveBackground:1];
  [(PUOneUpSettings *)self setUserAllowsVisualIntelligenceVisualLookupInfoPanelMode:1];
  [(PUOneUpSettings *)self setSimulateAssetContentLoading:0];
  [(PUOneUpSettings *)self setSimulatedAssetContentLoadingDuration:5.0];
  [(PUOneUpSettings *)self setSimulateLoadingError:0];
  [(PUOneUpSettings *)self setSimulatedLoadingErrorType:0];
  [(PUOneUpSettings *)self setShowFileRadarButtonForOneUpErrorPresentationsOnInternalInstalls:1];
  [(PUOneUpSettings *)self setQuickCropEnabled:1];
  [(PUOneUpSettings *)self setQuickCropInvisibilityTimer:3.5];
  [(PUOneUpSettings *)self setQuickCropFadeIn:0.5];
  [(PUOneUpSettings *)self setQuickCropFadeOut:0.2];
  [(PUOneUpSettings *)self setQuickCropHideOtherToolsInEdit:0];
  [(PUOneUpSettings *)self setQuickCropUseSymbol:0];
  [(PUOneUpSettings *)self setUseDebuggingColors:0];
  [(PUOneUpSettings *)self setDebuggingTitleType:0];
  [(PUOneUpSettings *)self setDebuggingBadges:0];
  [(PUOneUpSettings *)self setDebuggingBadgesWhenFavorite:0];
  [(PUOneUpSettings *)self setUseDebuggingProgressLabel:0];
  [(PUOneUpSettings *)self setShowBufferingIndicatorDuringPlay:0];
  [(PUOneUpSettings *)self setShowLoadingIndicatorDuringDownload:0];
  [(PUOneUpSettings *)self setAlwaysShowRenderIndicator:0];
  [(PUOneUpSettings *)self setSimulatedRenderProgress:0.33];
  [(PUOneUpSettings *)self setAlwaysShowAirPlayButton:0];
  [(PUOneUpSettings *)self setFinalFadeOutDuration:0.2];
  [(PUOneUpSettings *)self setMinimumDurationForIncrementingViewCount:1.0];
  [(PUOneUpSettings *)self setSimulateDisabledCommentButtonState:0];
  [(PUOneUpSettings *)self setForcePublicEventForAllAssets:0];
}

- (void)preferencesDidChange
{
  cachedAutoplayVideoEnabled = self->_cachedAutoplayVideoEnabled;
  self->_cachedAutoplayVideoEnabled = 0;

  PXUnregisterPreferencesObserver();
}

- (UIColor)videoHighlightColor
{
  videoHighlightColorName = [(PUOneUpSettings *)self videoHighlightColorName];
  if (videoHighlightColorName == 1)
  {
    videoHighlightColorName = [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else if (!videoHighlightColorName)
  {
    videoHighlightColorName = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  return videoHighlightColorName;
}

- (BOOL)allowAutoplayVideoForAsset:(id)asset
{
  assetCopy = asset;
  if (!self->_cachedAutoplayVideoEnabled)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:PXPreferencesIsVideoAutoplayEnabled()];
    cachedAutoplayVideoEnabled = self->_cachedAutoplayVideoEnabled;
    self->_cachedAutoplayVideoEnabled = v5;

    PXRegisterPreferencesObserver();
  }

  if ([(PUOneUpSettings *)self autoplayVideo])
  {
    bOOLValue = [(NSNumber *)self->_cachedAutoplayVideoEnabled BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)allowsVisualIntelligenceVisualLookupInfoPanelMode
{
  LODWORD(v2) = [(PUOneUpSettings *)self userAllowsVisualIntelligenceVisualLookupInfoPanelMode];
  if (v2)
  {
    if (_visualIntelligenceSupport_onceToken != -1)
    {
      dispatch_once(&_visualIntelligenceSupport_onceToken, &__block_literal_global_2072);
    }

    return (_visualIntelligenceSupport_sharedSupport >> 24) & 1;
  }

  return v2;
}

- (BOOL)allowsVisualIntelligenceRemoveBackground
{
  LODWORD(v2) = [(PUOneUpSettings *)self userAllowsVisualIntelligenceRemoveBackground];
  if (v2)
  {
    if (_visualIntelligenceSupport_onceToken != -1)
    {
      dispatch_once(&_visualIntelligenceSupport_onceToken, &__block_literal_global_2072);
    }

    return (_visualIntelligenceSupport_sharedSupport >> 16) & 1;
  }

  return v2;
}

- (BOOL)allowsVisualIntelligenceInVideoFrame
{
  userAllowsVisualIntelligenceInVideoFrame = [(PUOneUpSettings *)self userAllowsVisualIntelligenceInVideoFrame];
  if (userAllowsVisualIntelligenceInVideoFrame)
  {
    if (_visualIntelligenceSupport_onceToken != -1)
    {
      dispatch_once(&_visualIntelligenceSupport_onceToken, &__block_literal_global_2072);
    }

    LOBYTE(userAllowsVisualIntelligenceInVideoFrame) = byte_1EB866924 & 1;
  }

  return userAllowsVisualIntelligenceInVideoFrame;
}

- (BOOL)allowsVisualIntelligenceV2
{
  LODWORD(v2) = [(PUOneUpSettings *)self userAllowsVisualIntelligenceV2];
  if (v2)
  {
    if (_visualIntelligenceSupport_onceToken != -1)
    {
      dispatch_once(&_visualIntelligenceSupport_onceToken, &__block_literal_global_2072);
    }

    return (_visualIntelligenceSupport_sharedSupport >> 8) & 1;
  }

  return v2;
}

- (BOOL)allowVisualIntelligence
{
  if ([(PUOneUpSettings *)self userAllowsVisualIntelligence])
  {
    if (_visualIntelligenceSupport_onceToken != -1)
    {
      dispatch_once(&_visualIntelligenceSupport_onceToken, &__block_literal_global_2072);
    }

    v2 = _visualIntelligenceSupport_sharedSupport;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

+ (id)transientProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PUOneUpSettings_transientProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transientProperties_onceToken != -1)
  {
    dispatch_once(&transientProperties_onceToken, block);
  }

  v2 = transientProperties_transientProperties;

  return v2;
}

void __38__PUOneUpSettings_transientProperties__block_invoke(uint64_t a1)
{
  v12[6] = *MEMORY[0x1E69E9840];
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___PUOneUpSettings;
  v1 = objc_msgSendSuper2(&v11, sel_transientProperties);
  v2 = NSStringFromSelector(sel_videoHighlightColor);
  v12[0] = v2;
  v3 = NSStringFromSelector(sel_allowVisualIntelligence);
  v12[1] = v3;
  v4 = NSStringFromSelector(sel_allowsVisualIntelligenceV2);
  v12[2] = v4;
  v5 = NSStringFromSelector(sel_allowsVisualIntelligenceInVideoFrame);
  v12[3] = v5;
  v6 = NSStringFromSelector(sel_allowsVisualIntelligenceRemoveBackground);
  v12[4] = v6;
  v7 = NSStringFromSelector(sel_allowsVisualIntelligenceVisualLookupInfoPanelMode);
  v12[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:6];
  v9 = [v1 setByAddingObjectsFromArray:v8];
  v10 = transientProperties_transientProperties;
  transientProperties_transientProperties = v9;
}

+ (id)settingsControllerModule
{
  v528[22] = *MEMORY[0x1E69E9840];
  v504 = MEMORY[0x1E69C6638];
  v501 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Title Tap Action" valueKeyPath:@"titleTapAction"];
  v497 = [v501 possibleValues:&unk_1F2B7D070 titles:&unk_1F2B7D088];
  v528[0] = v497;
  v493 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Scale Content To Fit" valueKeyPath:@"scaleToFitBehavior"];
  v488 = [v493 possibleValues:&unk_1F2B7D0A0 titles:&unk_1F2B7D0B8];
  v528[1] = v488;
  v483 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Minimum Content Inset" valueKeyPath:@"minimumContentInset"];
  v477 = [v483 minValue:0.0 maxValue:300.0];
  v471 = [v477 pu_increment:1.0];
  v466 = [MEMORY[0x1E696AE18] predicateWithFormat:@"scaleToFitBehavior == %@", &unk_1F2B7E3A8];
  v461 = [v471 condition:v466];
  v528[2] = v461;
  v455 = [MEMORY[0x1E69C66A8] rowWithTitle:@"User Transform" valueKeyPath:@"allowUserTransform"];
  v528[3] = v455;
  v449 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Badges" valueKeyPath:@"allowBadges"];
  v528[4] = v449;
  v442 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Chrome Hiding" valueKeyPath:@"allowChromeHiding"];
  v528[5] = v442;
  v434 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Double Tap Zoom" valueKeyPath:@"allowDoubleTapZoom"];
  v528[6] = v434;
  v425 = [MEMORY[0x1E69C66A8] rowWithTitle:@"1:1 Zoom" valueKeyPath:@"allowFullsizeJPEGDisplay"];
  v528[7] = v425;
  v416 = [MEMORY[0x1E69C66A0] rowWithTitle:@"User Swipe Direction Memory" valueKeyPath:@"userNavigationMaximumDistance"];
  v407 = [v416 minValue:0.0 maxValue:20.0];
  v399 = [v407 pu_increment:1.0];
  v528[8] = v399;
  v2 = MEMORY[0x1E69C6610];
  mEMORY[0x1E69C3B50] = [MEMORY[0x1E69C3B50] sharedInstance];
  v383 = [v2 pu_rowWithTitle:@"Swipe Down" settings:mEMORY[0x1E69C3B50]];
  v528[9] = v383;
  v375 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Library Scrubber" valueKeyPath:@"allowScrubber"];
  v528[10] = v375;
  v366 = [MEMORY[0x1E69C6610] rowWithTitle:@"Scrubber" childSettingsKeyPath:@"scrubberSettings"];
  v528[11] = v366;
  v358 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Saliency Rects" valueKeyPath:@"showSaliencyRects"];
  v528[12] = v358;
  v351 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Object Rects" valueKeyPath:@"showObjectRects"];
  v528[13] = v351;
  v344 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Faces Rect" valueKeyPath:@"showFacesRect"];
  v528[14] = v344;
  v337 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Padded Faces Rect" valueKeyPath:@"showPaddedFacesRect"];
  v330 = [v337 conditionFormat:@"showFacesRect == YES"];
  v528[15] = v330;
  v326 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Best Square Rect" valueKeyPath:@"showBestSquareRect"];
  v528[16] = v326;
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Faces and Torsos Rects" valueKeyPath:@"showFacesTorsosRects"];
  v528[17] = v3;
  v4 = MEMORY[0x1E69C66A8];
  v5 = NSStringFromSelector(sel_showGazeRects);
  v6 = [v4 rowWithTitle:@"Show Gaze Rects" valueKeyPath:v5];
  v528[18] = v6;
  v7 = MEMORY[0x1E69C66A8];
  v8 = NSStringFromSelector(sel_showWallpaperCropRect);
  v9 = [v7 rowWithTitle:@"Show Wallpaper Crop Rects" valueKeyPath:v8];
  v528[19] = v9;
  v10 = MEMORY[0x1E69C66A8];
  v11 = NSStringFromSelector(sel_useHDRVideoThumbnails);
  v12 = [v10 rowWithTitle:@"HDR Video Thumbnails" valueKeyPath:v11];
  v528[20] = v12;
  v13 = MEMORY[0x1E69C66A8];
  v14 = NSStringFromSelector(sel_enableHDRImages);
  v15 = [v13 rowWithTitle:@"Enable HDR Images" valueKeyPath:v14];
  v528[21] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v528 count:22];
  v505 = [v504 sectionWithRows:v16 title:@"Features"];

  v502 = MEMORY[0x1E69C6638];
  v17 = MEMORY[0x1E69C66A0];
  v498 = NSStringFromSelector(sel_preferredImageDynamicRangeAnimationDuration);
  v494 = [v17 rowWithTitle:@"Preferred Image Dynamic Range Animation Duration" valueKeyPath:v498];
  v489 = [v494 minValue:0.0 maxValue:10.0];
  v18 = [v489 pu_increment:0.0500000007];
  v527[0] = v18;
  v19 = MEMORY[0x1E69C66A0];
  v20 = NSStringFromSelector(sel_hdrSuppressionAnimationDuration);
  v21 = [v19 rowWithTitle:@"HDR Suppress Duration" valueKeyPath:v20];
  v22 = [v21 minValue:0.0 maxValue:10.0];
  v23 = [v22 pu_increment:0.100000001];
  v527[1] = v23;
  v24 = MEMORY[0x1E69C66A0];
  v25 = NSStringFromSelector(sel_hdrShareSheetCrossfadeAnimationDuration);
  v26 = [v24 rowWithTitle:@"HDR Share Sheet Crossfade Duration" valueKeyPath:v25];
  v27 = [v26 minValue:0.0 maxValue:10.0];
  v28 = [v27 pu_increment:0.0500000007];
  v527[2] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v527 count:3];
  v503 = [v502 sectionWithRows:v29 title:@"HDR Animations"];

  v499 = MEMORY[0x1E69C6638];
  v30 = MEMORY[0x1E69C66A8];
  v495 = NSStringFromSelector(sel_userAllowsVisualIntelligence);
  v490 = [v30 rowWithTitle:@"Allow V1" valueKeyPath:v495];
  v526[0] = v490;
  v31 = MEMORY[0x1E69C66A8];
  v484 = NSStringFromSelector(sel_userAllowsVisualIntelligenceV2);
  v478 = [v31 rowWithTitle:@"Allow V2" valueKeyPath:v484];
  v526[1] = v478;
  v32 = MEMORY[0x1E69C66A8];
  v472 = NSStringFromSelector(sel_userAllowsVisualIntelligenceInVideoFrame);
  v33 = [v32 rowWithTitle:@"Allow Video" valueKeyPath:v472];
  v34 = [v33 conditionFormat:@"allowVisualIntelligence == YES && allowsVisualIntelligenceV2 == YES"];
  v526[2] = v34;
  v35 = MEMORY[0x1E69C66A8];
  v36 = NSStringFromSelector(sel_userAllowsVisualIntelligenceRemoveBackground);
  v37 = [v35 rowWithTitle:@"Allow Remove Background" valueKeyPath:v36];
  v38 = [v37 conditionFormat:@"allowVisualIntelligence == YES"];
  v526[3] = v38;
  v39 = MEMORY[0x1E69C66A8];
  v40 = NSStringFromSelector(sel_userAllowsVisualIntelligenceVisualLookupInfoPanelMode);
  v41 = [v39 rowWithTitle:@"Allow Info Panel Mode" valueKeyPath:v40];
  v42 = [v41 conditionFormat:@"allowVisualIntelligence == YES"];
  v526[4] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v526 count:5];
  v44 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_436];
  v500 = [v499 sectionWithRows:v43 title:@"Visual Intelligence" condition:v44];

  v45 = MEMORY[0x1E69C6638];
  v46 = MEMORY[0x1E69C66A8];
  v47 = NSStringFromSelector(sel_forcePublicEventForAllAssets);
  v48 = [v46 rowWithTitle:@"Force Event for All Assets" valueKeyPath:v47];
  v525 = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v525 count:1];
  v50 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_448];
  v496 = [v45 sectionWithRows:v49 title:@"Shazam Events" condition:v50];

  v491 = MEMORY[0x1E69C6638];
  v485 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Accessory Views" valueKeyPath:@"accessoryViewType"];
  v479 = [v485 possibleValues:&unk_1F2B7D0D0 titles:&unk_1F2B7D0E8];
  v524[0] = v479;
  v473 = [MEMORY[0x1E69C6610] pu_rowWithTitle:@"Sample Accessory View Settings" settingsProvider:&__block_literal_global_485];
  v467 = [MEMORY[0x1E696AE18] predicateWithFormat:@"accessoryViewType == %@", &unk_1F2B7E3D8];
  v462 = [v473 condition:v467];
  v524[1] = v462;
  v456 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Initial Top Position" valueKeyPath:@"accessoryInitialTopPosition"];
  v450 = [v456 minValue:0.0 maxValue:1.0];
  v443 = [v450 pu_increment:0.0500000007];
  v524[2] = v443;
  v435 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Min Visible Content Height" valueKeyPath:@"minimumVisibleContentHeight"];
  v426 = [v435 minValue:-180.0 maxValue:500.0];
  v417 = [v426 pu_increment:10.0];
  v524[3] = v417;
  v51 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Min Visible Commented Content Height" valueKeyPath:@"minimumVisibleCommentedContentHeight"];
  v52 = [v51 minValue:-100.0 maxValue:500.0];
  v53 = [v52 pu_increment:10.0];
  v524[4] = v53;
  v54 = MEMORY[0x1E69C66A8];
  v55 = NSStringFromSelector(sel_squareImageCapToHalfHeight);
  v56 = [v54 rowWithTitle:@"Square Image Cap to Half Height" valueKeyPath:v55];
  v524[5] = v56;
  v57 = MEMORY[0x1E69C66A8];
  v58 = NSStringFromSelector(sel_hideFloatingInfoPanelWhenHidingChrome);
  v59 = [v57 rowWithTitle:@"Hide Floating Info Panel When Hiding Chrome" valueKeyPath:v58];
  v524[6] = v59;
  v60 = MEMORY[0x1E69C66A8];
  v61 = NSStringFromSelector(sel_shouldFadeAccessoryView);
  v62 = [v60 rowWithTitle:@"Fading Details View" valueKeyPath:v61];
  v524[7] = v62;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v524 count:8];
  v492 = [v491 sectionWithRows:v63 title:@"Accessory View"];

  v486 = MEMORY[0x1E69C6638];
  v480 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Default Animation Duration" valueKeyPath:@"chromeDefaultAnimationDuration"];
  v474 = [v480 minValue:0.0 maxValue:1.0];
  v468 = [v474 pu_increment:0.0500000007];
  v523[0] = v468;
  v463 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Auto Hide on Play Button" valueKeyPath:@"chromeAutoHideBehaviorOnPlayButton"];
  v457 = [v463 possibleValues:&unk_1F2B7D100 titles:&unk_1F2B7D118];
  v523[1] = v457;
  v451 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Auto Hide on Live Photo" valueKeyPath:@"chromeAutoHideBehaviorOnLivePhoto"];
  v444 = [v451 possibleValues:&unk_1F2B7D100 titles:&unk_1F2B7D118];
  v523[2] = v444;
  v436 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Auto Hide on Swipe" valueKeyPath:@"chromeAutoHideBehaviorOnSwipe"];
  v427 = [v436 possibleValues:&unk_1F2B7D100 titles:&unk_1F2B7D118];
  v523[3] = v427;
  v418 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Auto Hide on Zoom" valueKeyPath:@"chromeAutoHideBehaviorOnZoom"];
  v408 = [v418 possibleValues:&unk_1F2B7D100 titles:&unk_1F2B7D118];
  v523[4] = v408;
  v400 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Auto Hide Delay" valueKeyPath:@"chromeAutoHideDelay"];
  v392 = [v400 minValue:0.0 maxValue:5.0];
  v384 = [v392 pu_increment:0.100000001];
  v523[5] = v384;
  v64 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Auto Hide Animation Duration" valueKeyPath:@"chromeTimedAutoHideAnimationDuration"];
  v65 = [v64 minValue:0.0 maxValue:5.0];
  v66 = [v65 pu_increment:0.0500000007];
  v67 = [v66 conditionFormat:@"chromeAutoHideDelay > 0.0"];
  v523[6] = v67;
  v68 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Persist Visibility" valueKeyPath:@"persistChromeVisibility"];
  v523[7] = v68;
  v69 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Animation Type" valueKeyPath:@"chromeAnimationType"];
  v70 = [v69 possibleValues:&unk_1F2B7D130 titles:&unk_1F2B7D148];
  v523[8] = v70;
  v71 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Background Animation" valueKeyPath:@"chromeBackgroundAnimationType"];
  v72 = [v71 possibleValues:&unk_1F2B7D160 titles:&unk_1F2B7D178];
  v523[9] = v72;
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v523 count:10];
  v487 = [v486 sectionWithRows:v73 title:@"Chrome" conditionFormat:@"allowChromeHiding != 0"];

  v481 = MEMORY[0x1E69C6638];
  v475 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Interpage Spacing" valueKeyPath:@"interpageSpacing"];
  v469 = [v475 minValue:1.0 maxValue:100.0];
  v464 = [v469 pu_increment:1.0];
  v522[0] = v464;
  v458 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Paging Spring Pull Adjustment" valueKeyPath:@"pagingSpringPullAdjustment"];
  v452 = [v458 minValue:-3.0 maxValue:3.0];
  v445 = [v452 pu_increment:0.100000001];
  v522[1] = v445;
  v437 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Paging Friction Adjustment" valueKeyPath:@"pagingFrictionAdjustment"];
  v428 = [v437 minValue:-3.0 maxValue:3.0];
  v419 = [v428 pu_increment:0.100000001];
  v522[2] = v419;
  v409 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow Parallax" valueKeyPath:@"allowParallax"];
  v522[3] = v409;
  v74 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Parallax Model" valueKeyPath:@"parallaxModel"];
  v75 = [v74 possibleValues:&unk_1F2B7D190 titles:&unk_1F2B7D1A8];
  v522[4] = v75;
  v76 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Parallax Factor" valueKeyPath:@"parallaxFactor"];
  v77 = [v76 minValue:0.0 maxValue:100.0];
  v78 = [v77 pu_increment:0.5];
  v522[5] = v78;
  v79 = MEMORY[0x1E69C66A0];
  v80 = NSStringFromSelector(sel_itemContentCornerRadius);
  v81 = [v79 rowWithTitle:@"Item Content Corner Radius" valueKeyPath:v80];
  v82 = [v81 minValue:0.0 maxValue:100.0];
  v83 = [v82 pu_increment:0.5];
  v522[6] = v83;
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v522 count:7];
  v482 = [v481 sectionWithRows:v84 title:@"Layout"];

  v85 = MEMORY[0x1E69C6638];
  v86 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Status Bar" valueKeyPath:@"allowStatusBar"];
  v521[0] = v86;
  v87 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Area Vertical Outset" valueKeyPath:@"barsAreaVerticalOutset"];
  v88 = [v87 minValue:0.0 maxValue:500.0];
  v89 = [v88 pu_increment:1.0];
  v521[1] = v89;
  v90 = MEMORY[0x1E69C66A0];
  v91 = NSStringFromSelector(sel_visualLookupGlyphAnimationFadeOutDelay);
  v92 = [v90 rowWithTitle:@"LookUp Glyph FadeOut Delay" valueKeyPath:v91];
  v93 = [v92 minValue:0.0 maxValue:5.0];
  v94 = [v93 pu_increment:1.0];
  v521[2] = v94;
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v521 count:3];
  v476 = [v85 sectionWithRows:v95 title:@"Bars"];

  v96 = MEMORY[0x1E69C6638];
  v97 = MEMORY[0x1E69C66A0];
  v98 = NSStringFromSelector(sel_defaultZoomInFactor);
  v99 = [v97 rowWithTitle:@"ZoomIn Factor" valueKeyPath:v98];
  v100 = [v99 minValue:1.0 maxValue:5.0];
  v101 = [v100 pu_increment:0.100000001];
  v520[0] = v101;
  v102 = MEMORY[0x1E69C6610];
  mEMORY[0x1E69C3738] = [MEMORY[0x1E69C3738] sharedInstance];
  v104 = [v102 pu_rowWithTitle:@"Core Settings" settings:mEMORY[0x1E69C3738]];
  v520[1] = v104;
  v105 = [MEMORY[0x1E69C6610] pu_rowWithTitle:@"Review Initial Zoom Scales" action:&__block_literal_global_727];
  v520[2] = v105;
  v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:v520 count:3];
  v470 = [v96 sectionWithRows:v106 title:@"Zoom" conditionFormat:@"allowDoubleTapZoom != 0"];

  v107 = MEMORY[0x1E69C6638];
  v108 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Zoom Factor" valueKeyPath:@"doubleTapZoomFactor"];
  v109 = [v108 minValue:1.0 maxValue:5.0];
  v110 = [v109 pu_increment:0.100000001];
  v519[0] = v110;
  v111 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Area Excludes Bars" valueKeyPath:@"doubleTapZoomAreaExcludesBars"];
  v519[1] = v111;
  v112 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Area Excludes Background" valueKeyPath:@"doubleTapZoomAreaExcludesBackground"];
  v519[2] = v112;
  v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v519 count:3];
  v465 = [v107 sectionWithRows:v113 title:@"Double Tap Zoom" conditionFormat:@"allowDoubleTapZoom != 0"];

  v459 = MEMORY[0x1E69C6638];
  v114 = MEMORY[0x1E69C65F8];
  v453 = NSStringFromSelector(sel_fullQualityCrossfadeBehavior);
  v446 = [v114 rowWithTitle:@"Full Quality Crossfade" valueKeyPath:v453];
  v438 = [v446 possibleValues:&unk_1F2B7D1C0 titles:&unk_1F2B7D1D8];
  v518[0] = v438;
  v115 = MEMORY[0x1E69C66A8];
  v429 = NSStringFromSelector(sel_retainProxyUntilZoom);
  v116 = [v115 rowWithTitle:@"Retain DP Proxy Until Zoom" valueKeyPath:v429];
  v117 = NSStringFromSelector(sel_fullQualityCrossfadeBehavior);
  v117 = [v116 conditionFormat:@"%@ != 0", v117];
  v518[1] = v117;
  v119 = MEMORY[0x1E69C66A0];
  v120 = NSStringFromSelector(sel_fullQualityCrossfadeDuration);
  v121 = [v119 rowWithTitle:@"Duration" valueKeyPath:v120];
  v122 = [v121 minValue:0.0 maxValue:3.0];
  v123 = [v122 pu_increment:0.1];
  v124 = NSStringFromSelector(sel_fullQualityCrossfadeBehavior);
  v124 = [v123 conditionFormat:@"%@ != 0", v124];
  v518[2] = v124;
  v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:v518 count:3];
  v460 = [v459 sectionWithRows:v126 title:@"Image Loading"];

  v127 = MEMORY[0x1E69C6638];
  v128 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable FigPhotoTiledLayer" valueKeyPath:@"enableFigPhotoTiledLayer"];
  v517[0] = v128;
  v129 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use URL for large photos" valueKeyPath:@"useURLForLargePhotosWithFigPhotoTiledLayer"];
  v517[1] = v129;
  v130 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Force URL for all photos" valueKeyPath:@"forceURLWithFigPhotoTiledLayer"];
  v517[2] = v130;
  v131 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable background size based display" valueKeyPath:@"enableFigPhotoBackgroundSizeBasedDisplay"];
  v517[3] = v131;
  v132 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Simulate worst case background size" valueKeyPath:@"simulateWorstCaseFigPhotoBackgroundSize"];
  v517[4] = v132;
  v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:v517 count:5];
  v454 = [v127 sectionWithRows:v133 title:@"Fig Photo Tiled Layer"];

  v447 = MEMORY[0x1E69C6638];
  v134 = MEMORY[0x1E69C66A8];
  v439 = NSStringFromSelector(sel_autoplayVideo);
  v430 = [v134 rowWithTitle:@"Autoplay" valueKeyPath:v439];
  v516[0] = v430;
  v135 = MEMORY[0x1E69C66A0];
  v420 = NSStringFromSelector(sel_videoAutoplayThreshold);
  v410 = [v135 rowWithTitle:@"Threshold" valueKeyPath:v420];
  v401 = [v410 minValue:0.100000001 maxValue:1.0];
  v393 = [v401 conditionFormat:@"autoplayVideo == YES"];
  v516[1] = v393;
  v136 = MEMORY[0x1E69C66A0];
  v385 = NSStringFromSelector(sel_videoPauseThreshold);
  v376 = [v136 rowWithTitle:@"Video Pause Threshold" valueKeyPath:v385];
  v367 = [v376 minValue:0.100000001 maxValue:1.0];
  v516[2] = v367;
  v137 = MEMORY[0x1E69C66A8];
  v359 = NSStringFromSelector(sel_allowPlayButtonInBars);
  v352 = [v137 rowWithTitle:@"Play Button in Bars" valueKeyPath:v359];
  v516[3] = v352;
  v138 = MEMORY[0x1E69C66A0];
  v345 = NSStringFromSelector(sel_autoplayScrubberWidth);
  v338 = [v138 rowWithTitle:@"Autoplay Scrubber Width" valueKeyPath:v345];
  v331 = [v338 minValue:80.0 maxValue:200.0];
  v516[4] = v331;
  v139 = MEMORY[0x1E69C66A8];
  v327 = NSStringFromSelector(sel_videoShowDebugBorders);
  v323 = [v139 rowWithTitle:@"Debug Borders" valueKeyPath:v327];
  v516[5] = v323;
  v140 = MEMORY[0x1E69C66A8];
  v320 = NSStringFromSelector(sel_videoShowLiveEffectsRenderingIndicator);
  v317 = [v140 rowWithTitle:@"Live Effects Indicator" valueKeyPath:v320];
  v516[6] = v317;
  v141 = MEMORY[0x1E69C66A8];
  v314 = NSStringFromSelector(sel_insertDummyHighlightTimeRanges);
  v311 = [v141 rowWithTitle:@"Dummy Highlights" valueKeyPath:v314];
  v516[7] = v311;
  v142 = MEMORY[0x1E69C66A8];
  v308 = NSStringFromSelector(sel_showVideoSearchHighlightLabel);
  v305 = [v142 rowWithTitle:@"Search Highlight Label" valueKeyPath:v308];
  v516[8] = v305;
  v143 = MEMORY[0x1E69C66A8];
  v301 = NSStringFromSelector(sel_showSearchQueryInVideoHighlightLabel);
  v298 = [v143 rowWithTitle:@"Show Query" valueKeyPath:v301];
  v295 = NSStringFromSelector(sel_showVideoSearchHighlightLabel);
  v295 = [v298 conditionFormat:@"%@ == YES", v295];
  v516[9] = v295;
  v145 = MEMORY[0x1E69C66A8];
  v146 = NSStringFromSelector(sel_videoStartAtFirstHighlight);
  v147 = [v145 rowWithTitle:@"Seek To Highlight" valueKeyPath:v146];
  v516[10] = v147;
  v148 = MEMORY[0x1E69C65F8];
  v149 = NSStringFromSelector(sel_videoHighlightColorName);
  v150 = [v148 rowWithTitle:@"Highlight Color" valueKeyPath:v149];
  v151 = [v150 possibleValues:&unk_1F2B7D1F0 titles:&unk_1F2B7D208];
  v516[11] = v151;
  v152 = MEMORY[0x1E69C66A0];
  v153 = NSStringFromSelector(sel_videoHighlightPreroll);
  v154 = [v152 rowWithTitle:@"Highlight Preroll" valueKeyPath:v153];
  v155 = [v154 minValue:0.0 maxValue:1.0];
  v516[12] = v155;
  v156 = [MEMORY[0x1E695DEC8] arrayWithObjects:v516 count:13];
  v448 = [v447 sectionWithRows:v156 title:@"Video"];

  v440 = MEMORY[0x1E69C6638];
  v157 = MEMORY[0x1E69C66A8];
  v431 = NSStringFromSelector(sel_livePhotoSRLCompensationEnabled);
  v421 = [v157 rowWithTitle:@"SRL Compensation" valueKeyPath:v431];
  v515[0] = v421;
  v158 = MEMORY[0x1E69C66A8];
  v411 = NSStringFromSelector(sel_livePhotoSRLCompensationManualMode);
  v402 = [v158 rowWithTitle:@"SRL Manual Mode" valueKeyPath:v411];
  v394 = [v402 conditionFormat:@"livePhotoSRLCompensationEnabled == 1"];
  v515[1] = v394;
  v159 = MEMORY[0x1E69C66A0];
  v386 = NSStringFromSelector(sel_livePhotoSRLCompensationManualValue);
  v377 = [v159 rowWithTitle:@"Manual Value" valueKeyPath:v386];
  v368 = [v377 minValue:0.0 maxValue:1.0];
  v360 = [v368 conditionFormat:@"livePhotoSRLCompensationEnabled == 1 && livePhotoSRLCompensationManualMode == 1"];
  v515[2] = v360;
  v160 = MEMORY[0x1E69C65F8];
  v353 = NSStringFromSelector(sel_livePhotoSRLCompensationFilterName);
  v346 = [v160 rowWithTitle:@"Filter Type" valueKeyPath:v353];
  v339 = [v346 possibleValues:&unk_1F2B7D220 titles:&unk_1F2B7D238];
  v332 = [v339 conditionFormat:@"livePhotoSRLCompensationEnabled == 1"];
  v515[3] = v332;
  v328 = [MEMORY[0x1E69C6680] rowWithTitle:@"Vitality Max Inset" valueKeyPath:@"vitalityMaxAllowedInsetPoints"];
  v324 = [v328 minValue:0.0 maxValue:40.0];
  v515[4] = v324;
  v321 = [MEMORY[0x1E69C6680] rowWithTitle:@"Vitality Max Large Inset" valueKeyPath:@"vitalityMaxAllowedLargeInsetPoints"];
  v318 = [v321 minValue:0.0 maxValue:120.0];
  v515[5] = v318;
  v315 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Transform Limiting" valueKeyPath:@"vitalityUseInsetLimiting"];
  v515[6] = v315;
  v312 = [MEMORY[0x1E69C6680] rowWithTitle:@"Vitality Edge Blur" valueKeyPath:@"vitalityMaskBlur"];
  v309 = [v312 minValue:0.0 maxValue:20.0];
  v515[7] = v309;
  v306 = [MEMORY[0x1E69C6680] rowWithTitle:@"Vitality Feather Scale" valueKeyPath:@"vitalityFeatherScale"];
  v302 = [v306 minValue:0.0 maxValue:0.05];
  v515[8] = v302;
  v299 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Interaction Threshold" valueKeyPath:@"livePhotoInteractionThreshold"];
  v296 = [v299 minValue:0.0 maxValue:1.0];
  v515[9] = v296;
  v293 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Transform During Vitality" valueKeyPath:@"applyPerspectiveTransformDuringVitality"];
  v515[10] = v293;
  v291 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Lock Scroll During Playback" valueKeyPath:@"lockScrollDuringLivePhotoPlayback"];
  v515[11] = v291;
  v161 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Scrubber on Play" valueKeyPath:@"livePhotoScrubberShowForPlayback"];
  v515[12] = v161;
  v162 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Merge Overlapping Captures" valueKeyPath:@"shouldMergeOverlappingLivePhotos"];
  v515[13] = v162;
  v163 = [MEMORY[0x1E69C6680] rowWithTitle:@"Minimum Overlap" valueKeyPath:@"livePhotoMinimumOverlappingDuration"];
  v164 = [v163 minValue:-120.0 maxValue:0.0];
  v165 = [v164 conditionFormat:@"shouldMergeOverlappingLivePhotos == YES"];
  v515[14] = v165;
  v166 = [MEMORY[0x1E69C6680] rowWithTitle:@"Overlapping Live Photos Count Limit" valueKeyPath:@"overlappingLivePhotosCountLimit"];
  v167 = [v166 minValue:2.0 maxValue:100.0];
  v168 = [v167 conditionFormat:@"shouldMergeOverlappingLivePhotos == YES"];
  v515[15] = v168;
  v169 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Reframed Badge" valueKeyPath:@"showReframedBadge"];
  v515[16] = v169;
  v170 = [MEMORY[0x1E695DEC8] arrayWithObjects:v515 count:17];
  v441 = [v440 sectionWithRows:v170 title:@"Live Photo"];

  v432 = MEMORY[0x1E69C6638];
  v422 = [MEMORY[0x1E69C66A0] rowWithTitle:@"View Model Cache Count Limit" valueKeyPath:@"viewModelCacheCountLimit"];
  v412 = [v422 minValue:0.0 maxValue:2000.0];
  v403 = [v412 pu_increment:50.0];
  v514[0] = v403;
  v395 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Entering Quick Paging Regime Duration" valueKeyPath:@"visibilityDurationForEnteringQuickPagingRegime"];
  v387 = [v395 minValue:0.0 maxValue:2.0];
  v378 = [v387 pu_increment:0.00999999978];
  v514[1] = v378;
  v369 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Exiting Quick Paging Regime Duration" valueKeyPath:@"visibilityDurationForExitingQuickPagingRegime"];
  v361 = [v369 minValue:0.0 maxValue:2.0];
  v354 = [v361 pu_increment:0.00999999978];
  v514[2] = v354;
  v347 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Min Scrub Distance For Quick Paging Regime" valueKeyPath:@"minNavigationDistanceForQuickPagingRegime"];
  v340 = [v347 minValue:0.0 maxValue:100.0];
  v333 = [v340 pu_increment:1.0];
  v514[3] = v333;
  v171 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Entering Fast Regime Duration" valueKeyPath:@"visibilityDurationForEnteringFastRegime"];
  v172 = [v171 minValue:0.0 maxValue:0.300000012];
  v173 = [v172 pu_increment:0.00999999978];
  v514[4] = v173;
  v174 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Exiting Fast Regime Duration" valueKeyPath:@"visibilityDurationForExitingFastRegime"];
  v175 = [v174 minValue:0.0 maxValue:0.300000012];
  v176 = [v175 pu_increment:0.00999999978];
  v514[5] = v176;
  v177 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Min Scrub Distance For Fast Regime" valueKeyPath:@"minNavigationDistanceForFastRegime"];
  v178 = [v177 minValue:0.0 maxValue:100.0];
  v179 = [v178 pu_increment:1.0];
  v514[6] = v179;
  v180 = [MEMORY[0x1E695DEC8] arrayWithObjects:v514 count:7];
  v433 = [v432 sectionWithRows:v180 title:@"Performance"];

  v423 = MEMORY[0x1E69C6638];
  v413 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Duration" valueKeyPath:@"bounceDuration"];
  v404 = [v413 minValue:0.0 maxValue:1.0];
  v396 = [v404 pu_increment:0.100000001];
  v513[0] = v396;
  v181 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Delay" valueKeyPath:@"bounceDelay"];
  v182 = [v181 minValue:0.0 maxValue:0.5];
  v183 = [v182 pu_increment:0.100000001];
  v513[1] = v183;
  v184 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Spring Damping" valueKeyPath:@"bounceSpringDamping"];
  v185 = [v184 minValue:0.0 maxValue:1.0];
  v186 = [v185 pu_increment:0.100000001];
  v513[2] = v186;
  v187 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Initial Velocity" valueKeyPath:@"bounceInitialVelocity"];
  v188 = [v187 minValue:0.0 maxValue:500.0];
  v189 = [v188 pu_increment:50.0];
  v513[3] = v189;
  v190 = [MEMORY[0x1E695DEC8] arrayWithObjects:v513 count:4];
  v424 = [v423 sectionWithRows:v190 title:@"Orb Bounce"];

  v414 = MEMORY[0x1E69C6638];
  v405 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow GIF playback" valueKeyPath:@"allowGIFPlayback"];
  v512[0] = v405;
  v397 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Loading Delays" valueKeyPath:@"showGIFLoadingDelays"];
  v388 = [v397 conditionFormat:@"allowGIFPlayback != 0"];
  v512[1] = v388;
  v379 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Enter Threshold" valueKeyPath:@"playGIFEnterThreshold"];
  v370 = [v379 minValue:0.0 maxValue:1.0];
  v362 = [v370 pu_increment:0.0500000007];
  v191 = [v362 conditionFormat:@"allowGIFPlayback != 0"];
  v512[2] = v191;
  v192 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Settle Threshold" valueKeyPath:@"playGIFSettledThreshold"];
  v193 = [v192 minValue:0.0 maxValue:1.0];
  v194 = [v193 pu_increment:0.0500000007];
  v195 = [v194 conditionFormat:@"allowGIFPlayback != 0"];
  v512[3] = v195;
  v196 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Leaving Threshold" valueKeyPath:@"playGIFMoveOutThreshold"];
  v197 = [v196 minValue:0.0 maxValue:1.0];
  v198 = [v197 pu_increment:0.0500000007];
  v199 = [v198 conditionFormat:@"allowGIFPlayback != 0"];
  v512[4] = v199;
  v200 = [MEMORY[0x1E695DEC8] arrayWithObjects:v512 count:5];
  v415 = [v414 sectionWithRows:v200 title:@"GIF Playback"];

  v201 = MEMORY[0x1E696AE18];
  v202 = NSStringFromSelector(sel_simulateAssetContentLoading);
  v202 = [v201 predicateWithFormat:@"%@ != 0", v202];

  v204 = MEMORY[0x1E696AE18];
  v205 = NSStringFromSelector(sel_simulateAssetContentLoading);
  v206 = NSStringFromSelector(sel_simulateLoadingError);
  v206 = [v204 predicateWithFormat:@"%@ != 0 AND %@ != 0", v205, v206];

  v389 = MEMORY[0x1E69C6638];
  v207 = MEMORY[0x1E69C66A8];
  v380 = NSStringFromSelector(sel_simulateAssetContentLoading);
  v371 = [v207 rowWithTitle:@"Simulate Content Loading" valueKeyPath:v380];
  v511[0] = v371;
  v208 = MEMORY[0x1E69C66A0];
  v363 = NSStringFromSelector(sel_simulatedAssetContentLoadingDuration);
  v355 = [v208 rowWithTitle:@"Loading Speed" valueKeyPath:v363];
  v348 = [v355 minValue:0.0 maxValue:10.0];
  v341 = [v348 pu_increment:0.5];
  v406 = v202;
  v334 = [v341 condition:v202];
  v511[1] = v334;
  v209 = MEMORY[0x1E69C66A8];
  v210 = NSStringFromSelector(sel_simulateLoadingError);
  v211 = [v209 rowWithTitle:@"Simulate Loading Error" valueKeyPath:v210];
  v212 = [v211 condition:v202];
  v511[2] = v212;
  v213 = MEMORY[0x1E69C65F8];
  v214 = NSStringFromSelector(sel_simulatedLoadingErrorType);
  v215 = [v213 rowWithTitle:@"Simulated Error" valueKeyPath:v214];
  v216 = [v215 possibleValues:&unk_1F2B7D250 titles:&unk_1F2B7D268];
  v217 = [v216 condition:v206];
  v511[3] = v217;
  v218 = MEMORY[0x1E69C66A8];
  v219 = NSStringFromSelector(sel_showFileRadarButtonForOneUpErrorPresentationsOnInternalInstalls);
  v220 = [v218 rowWithTitle:@"Show File Radar Button (Internal Only)" valueKeyPath:v219];
  v511[4] = v220;
  v221 = [MEMORY[0x1E695DEC8] arrayWithObjects:v511 count:5];
  v390 = [v389 sectionWithRows:v221 title:@"Loading & Playback Errors"];

  v381 = MEMORY[0x1E69C6638];
  v222 = MEMORY[0x1E69C66A8];
  v372 = NSStringFromSelector(sel_quickCropEnabled);
  v364 = [v222 rowWithTitle:@"Enabled" valueKeyPath:v372];
  v510[0] = v364;
  v223 = MEMORY[0x1E69C66A0];
  v356 = NSStringFromSelector(sel_quickCropInvisibilityTimer);
  v349 = [v223 rowWithTitle:@"Hide Timer" valueKeyPath:v356];
  v342 = [v349 minValue:0.0 maxValue:10.0];
  v510[1] = v342;
  v224 = MEMORY[0x1E69C66A0];
  v335 = NSStringFromSelector(sel_quickCropFadeIn);
  v225 = [v224 rowWithTitle:@"Fade In" valueKeyPath:v335];
  v226 = [v225 minValue:0.0 maxValue:2.0];
  v510[2] = v226;
  v227 = MEMORY[0x1E69C66A0];
  v228 = NSStringFromSelector(sel_quickCropFadeOut);
  v229 = [v227 rowWithTitle:@"Fade Out" valueKeyPath:v228];
  v230 = [v229 minValue:0.0 maxValue:2.0];
  v510[3] = v230;
  v231 = MEMORY[0x1E69C66A8];
  v232 = NSStringFromSelector(sel_quickCropHideOtherToolsInEdit);
  v233 = [v231 rowWithTitle:@"Hide Other Edit Tools" valueKeyPath:v232];
  v510[4] = v233;
  v234 = MEMORY[0x1E69C66A8];
  v235 = NSStringFromSelector(sel_quickCropUseSymbol);
  v236 = [v234 rowWithTitle:@"Use Symbol" valueKeyPath:v235];
  v510[5] = v236;
  v237 = [MEMORY[0x1E695DEC8] arrayWithObjects:v510 count:6];
  v382 = [v381 sectionWithRows:v237 title:@"Quick Crop"];

  v238 = MEMORY[0x1E696AE18];
  v239 = NSStringFromSelector(sel_alwaysShowRenderIndicator);
  v239 = [v238 predicateWithFormat:@"%@ != 0", v239];

  v303 = MEMORY[0x1E69C6638];
  v240 = MEMORY[0x1E69C66A8];
  v373 = NSStringFromSelector(sel_useDebuggingColors);
  v365 = [v240 rowWithTitle:@"Debugging Colors" valueKeyPath:v373];
  v509[0] = v365;
  v241 = MEMORY[0x1E69C65F8];
  v350 = NSStringFromSelector(sel_debuggingTitleType);
  v343 = [v241 rowWithTitle:@"Debugging Title" valueKeyPath:v350];
  v336 = [v343 possibleValues:&unk_1F2B7D2B0 titles:&unk_1F2B7D2C8];
  v509[1] = v336;
  v242 = MEMORY[0x1E69C65F8];
  v329 = NSStringFromSelector(sel_debuggingBadges);
  v325 = [v242 rowWithTitle:@"Debugging Badge" valueKeyPath:v329];
  v322 = [v325 possibleValues:&unk_1F2B7D280 titles:&unk_1F2B7D298];
  v319 = [v322 conditionFormat:@"allowBadges != 0"];
  v509[2] = v319;
  v243 = MEMORY[0x1E69C65F8];
  v316 = NSStringFromSelector(sel_debuggingBadgesWhenFavorite);
  v313 = [v243 rowWithTitle:@"Debugging Badge (Favorite)" valueKeyPath:v316];
  v310 = [v313 possibleValues:&unk_1F2B7D280 titles:&unk_1F2B7D298];
  v307 = [v310 conditionFormat:@"allowBadges != 0"];
  v509[3] = v307;
  v244 = MEMORY[0x1E69C66A8];
  v300 = NSStringFromSelector(sel_useDebuggingProgressLabel);
  v297 = [v244 rowWithTitle:@"Progress Label" valueKeyPath:v300];
  v509[4] = v297;
  v245 = MEMORY[0x1E69C66A8];
  v294 = NSStringFromSelector(sel_showBufferingIndicatorDuringPlay);
  v292 = [v245 rowWithTitle:@"Buffering Indicator During Play" valueKeyPath:v294];
  v509[5] = v292;
  v246 = MEMORY[0x1E69C66A8];
  v290 = NSStringFromSelector(sel_showLoadingIndicatorDuringDownload);
  v289 = [v246 rowWithTitle:@"Loading Indicator During Download" valueKeyPath:v290];
  v509[6] = v289;
  v247 = MEMORY[0x1E69C66A8];
  v288 = NSStringFromSelector(sel_alwaysShowRenderIndicator);
  v287 = [v247 rowWithTitle:@"Always Show Render Indicator" valueKeyPath:v288];
  v509[7] = v287;
  v248 = MEMORY[0x1E69C66A0];
  v286 = NSStringFromSelector(sel_simulatedRenderProgress);
  v285 = [v248 rowWithTitle:@"Fake Render Progress" valueKeyPath:v286];
  v284 = [v285 minValue:0.0 maxValue:1.0];
  v283 = [v284 pu_increment:1.0];
  v282 = [v283 condition:v239];
  v509[8] = v282;
  v249 = MEMORY[0x1E69C66A8];
  v281 = NSStringFromSelector(sel_alwaysShowAirPlayButton);
  v280 = [v249 rowWithTitle:@"Always Show AirPlay Button" valueKeyPath:v281];
  v509[9] = v280;
  v250 = MEMORY[0x1E69C66A0];
  v279 = NSStringFromSelector(sel_finalFadeOutDuration);
  v251 = [v250 rowWithTitle:@"Final Fade Out Duration" valueKeyPath:v279];
  v252 = [v251 minValue:0.0 maxValue:2.0];
  v253 = [v252 pu_increment:0.1];
  v509[10] = v253;
  v254 = MEMORY[0x1E69C66A0];
  v255 = NSStringFromSelector(sel_minimumDurationForIncrementingViewCount);
  v256 = [v254 rowWithTitle:@"Increment View Count Delay" valueKeyPath:v255];
  v257 = [v256 minValue:0.0 maxValue:5.0];
  v258 = [v257 pu_increment:0.1];
  v509[11] = v258;
  v259 = MEMORY[0x1E69C66A8];
  v260 = NSStringFromSelector(sel_simulateDisabledCommentButtonState);
  v261 = [v259 rowWithTitle:@"Simulate Comment Button Disabled" valueKeyPath:v260];
  v509[12] = v261;
  v262 = [MEMORY[0x1E695DEC8] arrayWithObjects:v509 count:13];
  v304 = [v303 sectionWithRows:v262 title:@"Debugging"];

  v263 = MEMORY[0x1E69C6638];
  v264 = MEMORY[0x1E69C65E8];
  v265 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_1347];
  v266 = [v264 rowWithTitle:@"Show Title Palette Playground" action:v265];
  v508 = v266;
  v267 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v508 count:1];
  v374 = [v263 sectionWithRows:v267 title:@"Playgrounds"];

  v268 = MEMORY[0x1E69C6638];
  v269 = MEMORY[0x1E69C65E8];
  v270 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v271 = [v269 rowWithTitle:@"Restore Defaults" action:v270];
  v507 = v271;
  v272 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v507 count:1];
  v273 = [v268 sectionWithRows:v272];

  v274 = objc_alloc(MEMORY[0x1E695DF70]);
  v506[0] = v505;
  v506[1] = v374;
  v506[2] = v503;
  v506[3] = v500;
  v506[4] = v496;
  v506[5] = v492;
  v506[6] = v487;
  v506[7] = v482;
  v506[8] = v476;
  v506[9] = v470;
  v506[10] = v465;
  v506[11] = v460;
  v506[12] = v454;
  v506[13] = v448;
  v506[14] = v441;
  v506[15] = v433;
  v506[16] = v424;
  v506[17] = v415;
  v506[18] = v390;
  v506[19] = v382;
  v506[20] = v304;
  v506[21] = v273;
  v275 = [MEMORY[0x1E695DEC8] arrayWithObjects:v506 count:22];
  v276 = [v274 initWithArray:v275];

  v277 = [MEMORY[0x1E69C6638] moduleWithTitle:@"One Up" contents:v276];

  return v277;
}

uint64_t __43__PUOneUpSettings_settingsControllerModule__block_invoke_1344(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_alloc_init(PUOneUpTitlePalettePlaygroundViewController);
  v5 = [v3 navigationController];

  [v5 pushViewController:v4 animated:1];
  return 1;
}

void __43__PUOneUpSettings_settingsControllerModule__block_invoke_2_724(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getPUTesterOneUpInitialZoomScalesReviewViewControllerClass_softClass;
  v11 = getPUTesterOneUpInitialZoomScalesReviewViewControllerClass_softClass;
  if (!getPUTesterOneUpInitialZoomScalesReviewViewControllerClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getPUTesterOneUpInitialZoomScalesReviewViewControllerClass_block_invoke;
    v7[3] = &unk_1E7B800F0;
    v7[4] = &v8;
    __getPUTesterOneUpInitialZoomScalesReviewViewControllerClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v6 = objc_alloc_init(v4);
  v5 = [v2 navigationController];

  [v5 pushViewController:v6 animated:1];
}

id __43__PUOneUpSettings_settingsControllerModule__block_invoke_482()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getPUTesterSampleAccessoryViewSettingsClass_softClass;
  v8 = getPUTesterSampleAccessoryViewSettingsClass_softClass;
  if (!getPUTesterSampleAccessoryViewSettingsClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getPUTesterSampleAccessoryViewSettingsClass_block_invoke;
    v4[3] = &unk_1E7B800F0;
    v4[4] = &v5;
    __getPUTesterSampleAccessoryViewSettingsClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 sharedInstance];

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_46177 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_46177, &__block_literal_global_46178);
  }

  v3 = sharedInstance_sharedInstance_46179;

  return v3;
}

void __33__PUOneUpSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 oneUpSettings];
  v1 = sharedInstance_sharedInstance_46179;
  sharedInstance_sharedInstance_46179 = v0;
}

@end