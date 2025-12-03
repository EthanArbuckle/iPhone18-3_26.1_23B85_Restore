@interface PUPhotoEditProtoSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (BOOL)disableAsynchronousRenderingVideos;
- (BOOL)disableTimelineAnimations;
- (BOOL)disableVideoFilmstrip;
- (BOOL)enableDynamicVideoScaling;
- (BOOL)enableEnterEditCropAutoCalc;
- (BOOL)enableEnterEditDepthEffectAutoCalc;
- (BOOL)enableEnterEditFilterThumbnailGeneration;
- (BOOL)enableEnterEditPerspectiveAutoCalc;
- (BOOL)enableEnterEditPortraitAutoCalc;
- (BOOL)enableEnterEditSemanticStyleAutoCalc;
- (BOOL)enableEnterEditSmartColorAutoCalc;
- (BOOL)enableEnterEditSmartToneAutoCalc;
- (BOOL)enableFinalizerGesture;
- (BOOL)enableFuzzball;
- (BOOL)enableLiveVideoRender;
- (BOOL)enableLiveVideoRenderAtSetSize;
- (BOOL)enablePerfDebugHUD;
- (BOOL)isStyleCaptureEnabled;
- (BOOL)lightModeEditor;
- (BOOL)perspectiveViewDebugCropEnabled;
- (BOOL)retouchDumpsCoreImageInputs;
- (BOOL)showFrameNumberOnVideoScrubber;
- (BOOL)showHDRDebugAdjustment;
- (BOOL)showHDRHeadroomControl;
- (BOOL)showSmartBlackAndWhiteAdjustment;
- (BOOL)tapTimelineToSeek;
- (BOOL)useAsynchronousRenderingPhotos;
- (void)setAllowSpillMatteOnOlderPortraitV2Captures:(BOOL)captures;
- (void)setDefaultValues;
- (void)setDisableTimelineAnimations:(BOOL)animations;
- (void)setEnableFuzzball:(BOOL)fuzzball;
- (void)setEnableNURenderJobDebug:(BOOL)debug;
- (void)setForceGlassesMatteOff:(BOOL)off;
- (void)setForceSpillMatteOff:(BOOL)off;
- (void)setRenderBackfillBlue:(BOOL)blue;
- (void)setRenderZoomPurple:(BOOL)purple;
- (void)setRetouchDumpsCoreImageInputs:(BOOL)inputs;
- (void)updateCoreImageDebug;
@end

@implementation PUPhotoEditProtoSettings

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditProtoSettings;
  [(PTSettings *)&v4 setDefaultValues];
  [(PUPhotoEditProtoSettings *)self setEnableVideoStabilizion:0];
  [(PUPhotoEditProtoSettings *)self setVideoStabilizeMaxCropFraction:0.2];
  [(PUPhotoEditProtoSettings *)self setEnableFinalizerGesture:0];
  [(PUPhotoEditProtoSettings *)self setUseAsynchronousRenderingPhotos:0];
  [(PUPhotoEditProtoSettings *)self setDisableAsynchronousRenderingVideos:0];
  [(PUPhotoEditProtoSettings *)self setEnableLiveVideoRender:+[PUPhotoEditProtoSettings isCapableOfLivePhotoRender]];
  [(PUPhotoEditProtoSettings *)self setEnableLiveVideoRenderAtSetSize:0];
  [(PUPhotoEditProtoSettings *)self setEnableDynamicVideoScaling:0];
  [(PUPhotoEditProtoSettings *)self setUseEditToastProgress:1];
  [(PUPhotoEditProtoSettings *)self setAllowSynchronousBatchRendering:1];
  [(PUPhotoEditProtoSettings *)self setShowResetToolButton:0];
  [(PUPhotoEditProtoSettings *)self setEnableSelectiveCopyEdits:1];
  [(PUPhotoEditProtoSettings *)self setAllowAnyPlugin:0];
  [(PUPhotoEditProtoSettings *)self setAttemptEditExtensionUndoAutoSetup:0];
  [(PUPhotoEditProtoSettings *)self setCropSideMargins:10.0];
  [(PUPhotoEditProtoSettings *)self setCropWheelSize:380.0];
  [(PUPhotoEditProtoSettings *)self setCropMaskBlurred:1];
  [(PUPhotoEditProtoSettings *)self setAutoCropEnabled:1];
  [(PUPhotoEditProtoSettings *)self setTrackBallSize:100.0];
  [(PUPhotoEditProtoSettings *)self setCropRecomposeDelay:1.0];
  [(PUPhotoEditProtoSettings *)self setSimulateDownload:0];
  [(PUPhotoEditProtoSettings *)self setSimulateDownloadFailure:0];
  [(PUPhotoEditProtoSettings *)self setSkipPHContentEditingInputDisplaySizeImage:1];
  [(PUPhotoEditProtoSettings *)self setSimulateEditEntryError:0];
  [(PUPhotoEditProtoSettings *)self setSimulatedEditingEntryErrorType:0];
  [(PUPhotoEditProtoSettings *)self setShowFileRadarButtonForEditEntryOnInternalInstalls:1];
  [(PUPhotoEditProtoSettings *)self setAutoStraightenMaxAngle:10.0];
  [(PUPhotoEditProtoSettings *)self setAutoPerspectiveMaxYaw:5.0];
  [(PUPhotoEditProtoSettings *)self setAutoPerspectiveMaxPitch:20.0];
  [(PUPhotoEditProtoSettings *)self setAutoPerspectiveMaxAngle:10.0];
  [(PUPhotoEditProtoSettings *)self setAutoPerspectiveMaxFaceSize:0.0];
  [(PUPhotoEditProtoSettings *)self setAutoPerspectiveDisableOnPanos:1];
  [(PUPhotoEditProtoSettings *)self setAutoPerspectiveDisableOnFrontFacingCameraImages:1];
  [(PUPhotoEditProtoSettings *)self setPerspectiveViewDebugCropEnabled:0];
  [(PUPhotoEditProtoSettings *)self setPreviewOriginalDuration:1.25];
  [(PUPhotoEditProtoSettings *)self setPreviewOriginalTimesOut:1];
  [(PUPhotoEditProtoSettings *)self setAlwaysShowDoneButton:0];
  [(PUPhotoEditProtoSettings *)self setChangeLightingDisablesLive:0];
  [(PUPhotoEditProtoSettings *)self setApertureSliderHasOffPosition:1];
  [(PUPhotoEditProtoSettings *)self setLoopBounceTrimAllowed:0];
  [(PUPhotoEditProtoSettings *)self setRenderPriority:3];
  [(PUPhotoEditProtoSettings *)self setLightModeEditor:1];
  [(PUPhotoEditProtoSettings *)self setBlurToolBackgrounds:1];
  [(PUPhotoEditProtoSettings *)self setSwipeToExitEdit:0];
  [(PUPhotoEditProtoSettings *)self setPauseAfterMovingPlayhead:1];
  [(PUPhotoEditProtoSettings *)self setRetouchShowsIntersectedMasks:0];
  [(PUPhotoEditProtoSettings *)self setRetouchEnablesSensitivityCheck:1];
  [(PUPhotoEditProtoSettings *)self setRetouchShowsTargetPointBrushPoints:0];
  [(PUPhotoEditProtoSettings *)self setRetouchShowVFXControls:0];
  [(PUPhotoEditProtoSettings *)self setSimulatedModelCatalogDownload:0];
  [(PUPhotoEditProtoSettings *)self setCleanupMaskDisplayMode:0];
  [(PUPhotoEditProtoSettings *)self setFeedbackUIFCS:0];
  [(PUPhotoEditProtoSettings *)self setRetouchShowsFaceRects:0];
  [(PUPhotoEditProtoSettings *)self setRetouchPixellatesFaces:1];
  [(PUPhotoEditProtoSettings *)self setReplayStrokesPauseInterval:0.0];
  [(PUPhotoEditProtoSettings *)self setAlwaysAllowKeyPhotoEditing:0];
  [(PUPhotoEditProtoSettings *)self setRequireTapToShowMakePosterFrame:0];
  [(PUPhotoEditProtoSettings *)self setAllowMakePosterFrameForVideo:0];
  [(PUPhotoEditProtoSettings *)self setShowVideoScrubberDebugOverlay:0];
  [(PUPhotoEditProtoSettings *)self setStrokeWidth:2.0];
  [(PUPhotoEditProtoSettings *)self setSelectionRingStrokeWidth:2.0];
  [(PUPhotoEditProtoSettings *)self setAdjustmentLabelPlatterAlpha:1.0];
  [(PUPhotoEditProtoSettings *)self setAlwaysShowValueWhenAdjustmentIsSelected:0];
  [(PUPhotoEditProtoSettings *)self setShowSuggestedKeyFrame:0];
  [(PUPhotoEditProtoSettings *)self setShowSmartBlackAndWhiteAdjustment:0];
  [(PUPhotoEditProtoSettings *)self setShowHDRDebugAdjustments:0];
  [(PUPhotoEditProtoSettings *)self setShowHDRHeadroomControl:0];
  [(PUPhotoEditProtoSettings *)self setEnablePerfDebugHUD:0];
  [(PUPhotoEditProtoSettings *)self setEnablePerfTTRButton:1];
  [(PUPhotoEditProtoSettings *)self setTtrButtonDurationThreshold:2.0];
  [(PUPhotoEditProtoSettings *)self setShowSemanticDevelopmentSwitch:0];
  [(PUPhotoEditProtoSettings *)self setEnableSemanticDevelopmentHUD:0];
  [(PUPhotoEditProtoSettings *)self setShowStabilizationWatermark:0];
  [(PUPhotoEditProtoSettings *)self setApplyVideoOrientationAsMetadata:1];
  [(PUPhotoEditProtoSettings *)self setOverrideVideoEditability:0];
  [(PUPhotoEditProtoSettings *)self setHideTrackersDuringPlayback:0];
  [(PUPhotoEditProtoSettings *)self setDebugTrackerMask:0];
  [(PUPhotoEditProtoSettings *)self setDisableVideoFilmstrip:0];
  [(PUPhotoEditProtoSettings *)self setShowFrameNumberOnVideoScrubber:0];
  [(PUPhotoEditProtoSettings *)self setTapTimelineToSeek:0];
  [(PUPhotoEditProtoSettings *)self setHideUIForInteractionEnabled:1];
  [(PUPhotoEditProtoSettings *)self setEditMenuEnabled:1];
  [(PUPhotoEditProtoSettings *)self setSecondaryToolbarShadowLength:240.0];
  [(PUPhotoEditProtoSettings *)self setHideUIForInteractionFadeInDuration:0.2];
  [(PUPhotoEditProtoSettings *)self setHideUIForInteractionFadeOutDuration:0.5];
  [(PUPhotoEditProtoSettings *)self setHideUIForInteractionFadeOutDelay:0.25];
  [(PUPhotoEditProtoSettings *)self setShouldMoveToolbarToRevealStylesDPadInLandscapeOrientation:0];
  [(PUPhotoEditProtoSettings *)self setMaintainCropAspectLockState:1];
  [(PUPhotoEditProtoSettings *)self setAllowDisabledTools:0];
  [(PUPhotoEditProtoSettings *)self setImageStartsZoomedIn:PLPhysicalDeviceIsIPad() ^ 1];
  [(PUPhotoEditProtoSettings *)self setHideStatusBariPad:0];
  [(PUPhotoEditProtoSettings *)self setEnableSpatialMediaEditing:1];
  [(PUPhotoEditProtoSettings *)self setEnableSemanticStyleInEdit:1];
  [(PUPhotoEditProtoSettings *)self setEnableEnterEditSemanticStyleAutoCalc:1];
  [(PUPhotoEditProtoSettings *)self setShouldConstraintDpadValuesToGrid:0];
  [(PUPhotoEditProtoSettings *)self setSynchronousStylesCopyPaste:0];
  [(PUPhotoEditProtoSettings *)self setSynchronousLivePhotoStylesCopyPaste:1];
  [(PUPhotoEditProtoSettings *)self setShouldUseFlipAnimationForValuePlatter:1];
  [(PUPhotoEditProtoSettings *)self setSmartCopyPasteReviewUIEnabled:0];
  [(PUPhotoEditProtoSettings *)self setSmartCopyPasteGateOnCaptureTime:0];
  [(PUPhotoEditProtoSettings *)self setSmartCopyPasteSimilarityGatingThreshold:0.8];
  [(PUPhotoEditProtoSettings *)self setAffectManuallyEditedSlidersOnly:0];
  [(PUPhotoEditProtoSettings *)self setFetchAndSendScenePrintsForSliderNet:0];
  [(PUPhotoEditProtoSettings *)self setEnableEnterEditSmartToneAutoCalc:1];
  [(PUPhotoEditProtoSettings *)self setEnableEnterEditSmartColorAutoCalc:1];
  [(PUPhotoEditProtoSettings *)self setEnableEnterEditCropAutoCalc:1];
  [(PUPhotoEditProtoSettings *)self setEnableEnterEditPerspectiveAutoCalc:1];
  [(PUPhotoEditProtoSettings *)self setEnableEnterEditDepthEffectAutoCalc:1];
  [(PUPhotoEditProtoSettings *)self setEnableEnterEditPortraitAutoCalc:1];
  [(PUPhotoEditProtoSettings *)self setEnableEnterEditFilterThumbnailGeneration:1];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults registerDefaults:&unk_1F2B7F170];

  [MEMORY[0x1E69C4290] injectSettings:self];
}

- (BOOL)isStyleCaptureEnabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.camera"];
  v3 = v2;
  if (v2)
  {
    standardUserDefaults = [v2 valueForKey:@"CAMFeatureDevelopmentAllowSmartStyles"];
    bOOLValue = [standardUserDefaults BOOLValue];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [standardUserDefaults valueForKey:@"CAMFeatureDevelopmentAllowSmartStyles"];
    bOOLValue = [v6 BOOLValue];
  }

  return bOOLValue;
}

- (void)setRetouchDumpsCoreImageInputs:(BOOL)inputs
{
  inputsCopy = inputs;
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.coreimage"];
  [v4 setBool:inputsCopy forKey:@"dumpInpaintImages"];
  CFPreferencesAppSynchronize(*MEMORY[0x1E695E8A8]);
  CFPreferencesAppSynchronize(@"com.apple.coreimage");
}

- (BOOL)retouchDumpsCoreImageInputs
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.coreimage"];
  v3 = [v2 integerForKey:@"dumpInpaintImages"] != 0;

  return v3;
}

- (BOOL)tapTimelineToSeek
{
  if (self->_tapTimelineToSeek)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"tapTimelineToSeek"];

  return v4;
}

- (BOOL)showFrameNumberOnVideoScrubber
{
  if (self->_showFrameNumberOnVideoScrubber)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"showFrameNumberOnVideoScrubber"];

  return v4;
}

- (BOOL)disableVideoFilmstrip
{
  if (self->_disableVideoFilmstrip)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"disableVideoFilmstrip"];

  return v4;
}

- (void)setDisableTimelineAnimations:(BOOL)animations
{
  animationsCopy = animations;
  self->_disableTimelineAnimations = animations;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:animationsCopy forKey:@"disableTimelineAnimations"];
}

- (void)setAllowSpillMatteOnOlderPortraitV2Captures:(BOOL)captures
{
  capturesCopy = captures;
  self->_allowSpillMatteOnOlderPortraitV2Captures = captures;
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  [globalSettings setAllowSpillMatteOnOlderPortraitV2Captures:capturesCopy];
}

- (void)setForceSpillMatteOff:(BOOL)off
{
  offCopy = off;
  self->_forceSpillMatteOff = off;
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  [globalSettings setForceSpillMatteOff:offCopy];
}

- (void)setForceGlassesMatteOff:(BOOL)off
{
  offCopy = off;
  self->_forceGlassesMatteOff = off;
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  [globalSettings setForceGlassesMatteOff:offCopy];
}

- (BOOL)showHDRHeadroomControl
{
  if (self->_showHDRHeadroomControl)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"showHDRHeadroomControl"];

  return v4;
}

- (BOOL)showHDRDebugAdjustment
{
  if (self->_showHDRDebugAdjustments)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"showHDRDebugAdjustment"];

  return v4;
}

- (BOOL)showSmartBlackAndWhiteAdjustment
{
  if (self->_showSmartBlackAndWhiteAdjustment)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"showSmartBlackAndWhiteAdjustment"];

  return v4;
}

- (BOOL)lightModeEditor
{
  if (self->_lightModeEditor)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"lightModeEditor"];

  return v4;
}

- (void)updateCoreImageDebug
{
  enableCoreImageDebugMode = [(PUPhotoEditProtoSettings *)self enableCoreImageDebugMode];
  enableCoreImageDebugInputs = [(PUPhotoEditProtoSettings *)self enableCoreImageDebugInputs];
  enableCoreImageDebugOutputs = [(PUPhotoEditProtoSettings *)self enableCoreImageDebugOutputs];
  enableCoreImageDebugIntermediates = [(PUPhotoEditProtoSettings *)self enableCoreImageDebugIntermediates];
  enableCoreImageDebugTiming = [(PUPhotoEditProtoSettings *)self enableCoreImageDebugTiming];

  [PURenderDebugController setCoreImageDebugMode:enableCoreImageDebugMode dumpInputs:enableCoreImageDebugInputs dumpOutputs:enableCoreImageDebugOutputs dumpIntermediates:enableCoreImageDebugIntermediates dumpTiming:enableCoreImageDebugTiming];
}

- (void)setRenderZoomPurple:(BOOL)purple
{
  self->_renderZoomPurple = purple;
  if (purple)
  {
    [MEMORY[0x1E69B3AB0] setDebugRenderPurple:@"roi"];
  }
}

- (void)setRenderBackfillBlue:(BOOL)blue
{
  self->_renderBackfillBlue = blue;
  if (blue)
  {
    [MEMORY[0x1E69B3AB0] setDebugRenderBlue:@"zoomedToFit"];
  }
}

- (void)setEnableNURenderJobDebug:(BOOL)debug
{
  debugCopy = debug;
  self->_enableNURenderJobDebug = debug;
  [MEMORY[0x1E69B3AB0] setRenderJobDebug:?];
  if (debugCopy)
  {
    v4 = NSTemporaryDirectory();
    v6 = [v4 stringByAppendingString:@"NURenderDebug/"];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

    [MEMORY[0x1E69B3AB0] setTempDir:v6];
  }
}

- (BOOL)enableEnterEditFilterThumbnailGeneration
{
  if (!self->_enableEnterEditFilterThumbnailGeneration)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"enableEnterEditFilterThumbnailGeneration"];

  return v3;
}

- (BOOL)enableEnterEditPortraitAutoCalc
{
  if (!self->_enableEnterEditPortraitAutoCalc)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"enableEnterEditPortraitAutoCalc"];

  return v3;
}

- (BOOL)enableEnterEditDepthEffectAutoCalc
{
  if (!self->_enableEnterEditDepthEffectAutoCalc)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"enableEnterEditDepthEffectAutoCalc"];

  return v3;
}

- (BOOL)enableEnterEditPerspectiveAutoCalc
{
  if (!self->_enableEnterEditPerspectiveAutoCalc)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"enableEnterEditPerspectiveAutoCalc"];

  return v3;
}

- (BOOL)enableEnterEditCropAutoCalc
{
  if (!self->_enableEnterEditCropAutoCalc)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"enableEnterEditCropAutoCalc"];

  return v3;
}

- (BOOL)enableEnterEditSemanticStyleAutoCalc
{
  if (!self->_enableEnterEditSemanticStyleAutoCalc)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"enableEnterEditSemanticStyleAutoCalc"];

  return v3;
}

- (BOOL)enableEnterEditSmartColorAutoCalc
{
  if (!self->_enableEnterEditSmartColorAutoCalc)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"enableEnterEditSmartColorAutoCalc"];

  return v3;
}

- (BOOL)enableEnterEditSmartToneAutoCalc
{
  if (!self->_enableEnterEditSmartToneAutoCalc)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"enableEnterEditSmartToneAutoCalc"];

  return v3;
}

- (BOOL)disableTimelineAnimations
{
  if (self->_disableTimelineAnimations)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"disableTimelineAnimations"];

  return v4;
}

- (BOOL)enablePerfDebugHUD
{
  if (self->_enablePerfDebugHUD)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"enablePerfDebugHUD"];

  return v4;
}

- (BOOL)perspectiveViewDebugCropEnabled
{
  if (self->_perspectiveViewDebugCropEnabled)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"perspectiveViewDebugCropEnabled"];

  return v4;
}

- (void)setEnableFuzzball:(BOOL)fuzzball
{
  fuzzballCopy = fuzzball;
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  [globalSettings setPortraitDisableFuzzball:!fuzzballCopy];
}

- (BOOL)enableFuzzball
{
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  portraitDisableFuzzball = [globalSettings portraitDisableFuzzball];

  return portraitDisableFuzzball ^ 1;
}

- (BOOL)enableDynamicVideoScaling
{
  if (self->_enableDynamicVideoScaling)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"enableDynamicVideoScaling"];

  return v4;
}

- (BOOL)enableLiveVideoRenderAtSetSize
{
  if (self->_enableLiveVideoRenderAtSetSize)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"enableLiveVideoRenderAtSetSize"];

  return v4;
}

- (BOOL)enableLiveVideoRender
{
  if (self->_enableLiveVideoRender)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"enableLiveVideoRender"];

  return v4;
}

- (BOOL)disableAsynchronousRenderingVideos
{
  if (self->_disableAsynchronousRenderingVideos)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"disableAsynchronousRenderingVideos"];

  return v4;
}

- (BOOL)useAsynchronousRenderingPhotos
{
  if (self->_useAsynchronousRenderingPhotos)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"useAsynchronousRenderingPhotos"];

  return v4;
}

- (BOOL)enableFinalizerGesture
{
  if (self->_enableFinalizerGesture)
  {
    return 1;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"enableFinalizerGesture"];

  return v4;
}

+ (id)settingsControllerModule
{
  v339[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Render Photo Adjustments Async" valueKeyPath:@"useAsynchronousRenderingPhotos"];
  v339[0] = v3;
  v4 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Video Render Adjustments Async" valueKeyPath:@"disableAsynchronousRenderingVideos"];
  v339[1] = v4;
  v5 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Live Video Render" valueKeyPath:@"enableLiveVideoRender"];
  v339[2] = v5;
  v6 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Specify Live Video Render Size" valueKeyPath:@"enableLiveVideoRenderAtSetSize"];
  v339[3] = v6;
  v7 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Dynamic Video Scaling" valueKeyPath:@"enableDynamicVideoScaling"];
  v339[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v339 count:5];
  v306 = [v2 sectionWithRows:v8 title:@"Async Save Settings"];

  v9 = MEMORY[0x1E69C6638];
  v10 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable For All Assets (SDR/OpenExr/etc)" valueKeyPath:@"allAssetsCanUseHDRPipeline"];
  v338[0] = v10;
  v11 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show HDR Debug Adjustments" valueKeyPath:@"showHDRDebugAdjustments"];
  v338[1] = v11;
  v12 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show HDR Headroom Control" valueKeyPath:@"showHDRHeadroomControl"];
  v338[2] = v12;
  v13 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Packed 10-bit Pixel Formats" valueKeyPath:@"disablePacked10BitPixelFormats"];
  v338[3] = v13;
  v14 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Render M+ as HDR" valueKeyPath:@"disableRenderMeteorPlusAsHDR"];
  v338[4] = v14;
  v15 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Decode M+ as Linear" valueKeyPath:@"decodeMeteorPlusAsLinear"];
  v338[5] = v15;
  v16 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Force M++ Gain Map" valueKeyPath:@"forceMeteorPlusPlus"];
  v338[6] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v338 count:7];
  v305 = [v9 sectionWithRows:v17 title:@"HDR Settings"];

  v18 = MEMORY[0x1E69C6638];
  v19 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Fuzzball" valueKeyPath:@"enableFuzzball"];
  v337[0] = v19;
  v20 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Aperture Slider Has Off Position" valueKeyPath:@"apertureSliderHasOffPosition"];
  v337[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v337 count:2];
  v304 = [v18 sectionWithRows:v21 title:@"Portrait Settings"];

  v22 = MEMORY[0x1E69C6638];
  v23 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Override Video Editability Check" valueKeyPath:@"overrideVideoEditability"];
  v336[0] = v23;
  v24 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Hide Trackers During Playback" valueKeyPath:@"hideTrackersDuringPlayback"];
  v336[1] = v24;
  v25 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Timeline Animations" valueKeyPath:@"disableTimelineAnimations"];
  v336[2] = v25;
  v26 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Debug Tracker Mask" valueKeyPath:@"debugTrackerMask"];
  v336[3] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v336 count:4];
  v303 = [v22 sectionWithRows:v27 title:@"CPV Settings"];

  v28 = MEMORY[0x1E69C6638];
  v29 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Run Neutrino Synchronously" valueKeyPath:@"runNeutrinoSynchronously"];
  v335[0] = v29;
  v30 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Video Compositor Debug" valueKeyPath:@"videoCompositorDebugMode"];
  v31 = [v30 possibleValues:&unk_1F2B7D358 titles:&unk_1F2B7D370];
  v335[1] = v31;
  v32 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Render Priority" valueKeyPath:@"renderPriority"];
  v33 = [v32 possibleValues:&unk_1F2B7D388 titles:&unk_1F2B7D3A0];
  v335[2] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v335 count:3];
  v302 = [v28 sectionWithRows:v34 title:@"Neutrino Settings"];

  v35 = MEMORY[0x1E69C6638];
  v36 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Always Show 'Done' Button" valueKeyPath:@"alwaysShowDoneButton"];
  v334[0] = v36;
  v37 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Apply Video Orientation As Metadata" valueKeyPath:@"applyVideoOrientationAsMetadata"];
  v334[1] = v37;
  v38 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable IOSurface Portrait Export" valueKeyPath:@"disableIOSurfacePortaitExport"];
  v334[2] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v334 count:3];
  v301 = [v35 sectionWithRows:v39 title:@"Export Settings"];

  v299 = MEMORY[0x1E69C6638];
  v297 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Neutrino Debug" valueKeyPath:@"enableNURenderJobDebug"];
  v333[0] = v297;
  v295 = [MEMORY[0x1E69C66A8] rowWithTitle:@"   Capture Node Graphs" valueKeyPath:@"nuRenderJobDebugCaptureNodeGraphs"];
  v292 = [v295 conditionFormat:@"enableNURenderJobDebug != 0"];
  v333[1] = v292;
  v288 = [MEMORY[0x1E69C66A8] rowWithTitle:@"   Capture Node Cache" valueKeyPath:@"nuRenderJobDebugCaptureNodeCache"];
  v284 = [v288 conditionFormat:@"enableNURenderJobDebug != 0"];
  v333[2] = v284;
  v280 = [MEMORY[0x1E69C66A8] rowWithTitle:@"   Capture Canceled Jobs" valueKeyPath:@"nuRenderJobDebugCaptureCanceledJobs"];
  v276 = [v280 conditionFormat:@"enableNURenderJobDebug != 0"];
  v333[3] = v276;
  v272 = [MEMORY[0x1E69C66A8] rowWithTitle:@"   Capture Perf Stat History" valueKeyPath:@"nuRenderJobDebugCapturePerfStatHistory"];
  v268 = [v272 conditionFormat:@"enableNURenderJobDebug != 0"];
  v333[4] = v268;
  v265 = [MEMORY[0x1E69C66A8] rowWithTitle:@"   Capture Only Perf Stats (fast)" valueKeyPath:@"nuRenderJobDebugCaptureOnlyPerfStats"];
  v261 = [v265 conditionFormat:@"enableNURenderJobDebug != 0"];
  v333[5] = v261;
  v259 = [MEMORY[0x1E69C66A8] rowWithTitle:@"   Capture 5% of Jobs (fast)" valueKeyPath:@"nuRenderJobDebugCapture5PercentOfJobs"];
  v256 = [v259 conditionFormat:@"enableNURenderJobDebug != 0"];
  v333[6] = v256;
  v252 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Core Image Debug (Must Relaunch)" valueKeyPath:@"enableCoreImageDebugMode"];
  v333[7] = v252;
  v248 = [MEMORY[0x1E69C66A8] rowWithTitle:@"   Capture Inputs" valueKeyPath:@"enableCoreImageDebugInputs"];
  v245 = [v248 conditionFormat:@"enableCoreImageDebugMode != 0"];
  v333[8] = v245;
  v242 = [MEMORY[0x1E69C66A8] rowWithTitle:@"   Capture Outputs" valueKeyPath:@"enableCoreImageDebugOutputs"];
  v240 = [v242 conditionFormat:@"enableCoreImageDebugMode != 0"];
  v333[9] = v240;
  v237 = [MEMORY[0x1E69C66A8] rowWithTitle:@"   Capture Intermediates (Slow)" valueKeyPath:@"enableCoreImageDebugIntermediates"];
  v40 = [v237 conditionFormat:@"enableCoreImageDebugMode != 0"];
  v333[10] = v40;
  v41 = [MEMORY[0x1E69C66A8] rowWithTitle:@"   Capture Timing" valueKeyPath:@"enableCoreImageDebugTiming"];
  v42 = [v41 conditionFormat:@"enableCoreImageDebugMode != 0"];
  v333[11] = v42;
  v43 = MEMORY[0x1E69C65E8];
  v44 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_361];
  v45 = [v43 rowWithTitle:@"View" action:v44];
  v333[12] = v45;
  v46 = MEMORY[0x1E69C65E8];
  v47 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_367];
  v48 = [v46 rowWithTitle:@"Share" action:v47];
  v333[13] = v48;
  v49 = MEMORY[0x1E69C65E8];
  v50 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_372_55572];
  v51 = [v49 rowWithTitle:@"Delete" action:v50];
  v333[14] = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v333 count:15];
  v300 = [v299 sectionWithRows:v52 title:@"Render Debug"];

  v53 = MEMORY[0x1E69C6638];
  v54 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Render Backfill Blue" valueKeyPath:@"renderBackfillBlue"];
  v332[0] = v54;
  v55 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Render Zoom Purple" valueKeyPath:@"renderZoomPurple"];
  v332[1] = v55;
  v56 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Media View Debug Mode" valueKeyPath:@"mediaViewDebugMode"];
  v332[2] = v56;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v332 count:3];
  v298 = [v53 sectionWithRows:v57 title:@"NUMediaView Settings"];

  v58 = MEMORY[0x1E69C6638];
  v59 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Force Glasses Matte Off (Robust Portait 2)" valueKeyPath:@"forceGlassesMatteOff"];
  v331[0] = v59;
  v60 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Force Spill Matte Off (Robust Portait 2)" valueKeyPath:@"forceSpillMatteOff"];
  v331[1] = v60;
  v61 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow Spill Matte on older V2 Captures (Robust Portait 2)" valueKeyPath:@"allowSpillMatteOnOlderPortraitV2Captures"];
  v331[2] = v61;
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v331 count:3];
  v296 = [v58 sectionWithRows:v62 title:@"Portrait Settings"];

  v293 = MEMORY[0x1E69C6638];
  v289 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Light Mode Editor" valueKeyPath:@"lightModeEditor"];
  v330[0] = v289;
  v285 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Edit Toast progress" valueKeyPath:@"useEditToastProgress"];
  v330[1] = v285;
  v63 = MEMORY[0x1E69C66A8];
  v281 = NSStringFromSelector(sel_allowSynchronousBatchRendering);
  v277 = [v63 rowWithTitle:@"Allow synchronous batch rendering" valueKeyPath:v281];
  v330[2] = v277;
  v273 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Reset Tool Button" valueKeyPath:@"showResetToolButton"];
  v330[3] = v273;
  v269 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Smart B&W Adjustment" valueKeyPath:@"showSmartBlackAndWhiteAdjustment"];
  v330[4] = v269;
  v64 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Semantic Development Switch" valueKeyPath:@"showSemanticDevelopmentSwitch"];
  v330[5] = v64;
  v65 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Maintain Crop Aspect Lock State" valueKeyPath:@"maintainCropAspectLockState"];
  v330[6] = v65;
  v66 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Glass Tool Backgrounds" valueKeyPath:@"blurToolBackgrounds"];
  v330[7] = v66;
  v67 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Swipe to Exit Edit" valueKeyPath:@"swipeToExitEdit"];
  v330[8] = v67;
  v68 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Spatial Media Editing" valueKeyPath:@"enableSpatialMediaEditing"];
  v330[9] = v68;
  v69 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow disabled tools" valueKeyPath:@"allowDisabledTools"];
  v330[10] = v69;
  v70 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Image Starts Zoomed In" valueKeyPath:@"imageStartsZoomedIn"];
  v330[11] = v70;
  v71 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Hide Status Bar on iPad" valueKeyPath:@"hideStatusBariPad"];
  v330[12] = v71;
  v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v330 count:13];
  v294 = [v293 sectionWithRows:v72 title:@"Edit Tool Controller"];

  v290 = MEMORY[0x1E69C6638];
  v286 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable On All Hardware" valueKeyPath:@"overrideCleanupHardwareCheck"];
  v329[0] = v286;
  v282 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Sensitivity Check" valueKeyPath:@"retouchEnablesSensitivityCheck"];
  v329[1] = v282;
  v278 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Intersected Masks (debug)" valueKeyPath:@"retouchShowsIntersectedMasks"];
  v329[2] = v278;
  v274 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Target Point Brush (debug)" valueKeyPath:@"retouchShowsTargetPointBrushPoints"];
  v329[3] = v274;
  v270 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Object Detection From Strokes" valueKeyPath:@"retouchStrokeDisableObjectStrokes"];
  v329[4] = v270;
  v266 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Dump CoreImage Images" valueKeyPath:@"retouchDumpsCoreImageInputs"];
  v329[5] = v266;
  v262 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show VFX Controls" valueKeyPath:@"retouchShowVFXControls"];
  v329[6] = v262;
  v73 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Mask Display Mode" valueKeyPath:@"cleanupMaskDisplayMode"];
  v74 = [v73 possibleValues:&unk_1F2B7D3B8 titles:&unk_1F2B7D3D0];
  v329[7] = v74;
  v75 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Face Rects" valueKeyPath:@"retouchShowsFaceRects"];
  v329[8] = v75;
  v76 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Feedback Controls FCS Mode" valueKeyPath:@"feedbackUIFCS"];
  v329[9] = v76;
  v77 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Pixellate Faces" valueKeyPath:@"retouchPixellatesFaces"];
  v329[10] = v77;
  v78 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Replay Strokes Pause Interval" valueKeyPath:@"replayStrokesPauseInterval"];
  v79 = [v78 minValue:0.0 maxValue:10.0];
  v80 = [v79 pu_increment:1.0];
  v329[11] = v80;
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v329 count:12];
  v291 = [v290 sectionWithRows:v81 title:@"Cleanup Tool"];

  v82 = MEMORY[0x1E69C6638];
  v83 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Styles Tab in Edit" valueKeyPath:@"enableSemanticStyleInEdit"];
  v328[0] = v83;
  v84 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Sync Styles Copy&Paste" valueKeyPath:@"synchronousStylesCopyPaste"];
  v328[1] = v84;
  v85 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Sync Live Photo Styles Copy&Paste" valueKeyPath:@"synchronousLivePhotoStylesCopyPaste"];
  v328[2] = v85;
  v86 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Should Use Flip Animation for Platter" valueKeyPath:@"shouldUseFlipAnimationForValuePlatter"];
  v328[3] = v86;
  v87 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Should Constraint Pad Values to Grid" valueKeyPath:@"shouldConstraintDpadValuesToGrid"];
  v328[4] = v87;
  v88 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Styles for ProRaw" valueKeyPath:@"shouldEnableStylesForProRaw"];
  v328[5] = v88;
  v89 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable On All Hardware" valueKeyPath:@"overrideSemanticStylesHardwareCheck"];
  v328[6] = v89;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v328 count:7];
  v287 = [v82 sectionWithRows:v90 title:@"Semantic Styles v2"];

  v91 = MEMORY[0x1E69C6638];
  v92 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Auto Enhance Action" valueKeyPath:@"showAutoEnhanceAction"];
  v327[0] = v92;
  v93 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Rotate Action" valueKeyPath:@"showRotateAction"];
  v327[1] = v93;
  v94 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Selective Copy Edits" valueKeyPath:@"enableSelectiveCopyEdits"];
  v327[2] = v94;
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v327 count:3];
  v283 = [v91 sectionWithRows:v95 title:@"Edit Actions"];

  v96 = MEMORY[0x1E69C6638];
  v97 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Preview Times Out" valueKeyPath:@"previewOriginalTimesOut"];
  v326[0] = v97;
  v98 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Preview Duration" valueKeyPath:@"previewOriginalDuration"];
  v99 = [v98 minValue:1.0 maxValue:3.0];
  v326[1] = v99;
  v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:v326 count:2];
  v279 = [v96 sectionWithRows:v100 title:@"Preview Original Tap"];

  v101 = MEMORY[0x1E69C6638];
  v102 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Simulate Download" valueKeyPath:@"simulateDownload"];
  v325[0] = v102;
  v103 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Simulate Failure" valueKeyPath:@"simulateDownloadFailure"];
  v104 = [v103 conditionFormat:@"simulateDownload != 0"];
  v325[1] = v104;
  v105 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Skip Loading displaySizeImage (Needs Relaunch)" valueKeyPath:@"skipPHContentEditingInputDisplaySizeImage"];
  v325[2] = v105;
  v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:v325 count:3];
  v275 = [v101 sectionWithRows:v106 title:@"PhotoKit Settings"];

  v107 = MEMORY[0x1E69C6638];
  v108 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Simulate Error" valueKeyPath:@"simulateEditEntryError"];
  v324[0] = v108;
  v109 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Simulated Error" valueKeyPath:@"simulatedEditingEntryErrorType"];
  v110 = [v109 possibleValues:&unk_1F2B7D3E8 titles:&unk_1F2B7D400];
  v111 = [v110 conditionFormat:@"simulateEditEntryError != 0"];
  v324[1] = v111;
  v112 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show File Radar Button (Internal Only)" valueKeyPath:@"showFileRadarButtonForEditEntryOnInternalInstalls"];
  v324[2] = v112;
  v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v324 count:3];
  v271 = [v107 sectionWithRows:v113 title:@"Edit Entry Error Handling"];

  v114 = MEMORY[0x1E69C6638];
  v115 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow Any Plugin" valueKeyPath:@"allowAnyPlugin"];
  v323[0] = v115;
  v116 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Attempt Extension Undo Auto-Setup" valueKeyPath:@"attemptEditExtensionUndoAutoSetup"];
  v323[1] = v116;
  v117 = [MEMORY[0x1E695DEC8] arrayWithObjects:v323 count:2];
  v267 = [v114 sectionWithRows:v117 title:@"Extension Settings"];

  v263 = MEMORY[0x1E69C6638];
  v118 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Stroke Width" valueKeyPath:@"strokeWidth"];
  v119 = [v118 minValue:0.0 maxValue:5.0];
  v322[0] = v119;
  v120 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Selection Ring Stroke" valueKeyPath:@"selectionRingStrokeWidth"];
  v121 = [v120 minValue:0.0 maxValue:5.0];
  v322[1] = v121;
  v122 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Label Platter Alpha" valueKeyPath:@"adjustmentLabelPlatterAlpha"];
  v123 = [v122 minValue:0.0 maxValue:1.0];
  v322[2] = v123;
  v124 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Always Show Adjustment Values" valueKeyPath:@"alwaysShowValueWhenAdjustmentIsSelected"];
  v322[3] = v124;
  v125 = MEMORY[0x1E69C65E8];
  v126 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_773];
  v127 = [v125 rowWithTitle:@"Clear Adjustments Pasteboard" action:v126];
  v322[4] = v127;
  v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:v322 count:5];
  v264 = [v263 sectionWithRows:v128 title:@"Adjustment Tool Settings"];

  v129 = MEMORY[0x1E69C6638];
  v130 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Debug HUD" valueKeyPath:@"enableSemanticDevelopmentHUD"];
  v321 = v130;
  v131 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v321 count:1];
  v260 = [v129 sectionWithRows:v131 title:@"Semantic Development Settings"];

  v257 = MEMORY[0x1E69C6638];
  v253 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Auto Crop" valueKeyPath:@"autoCropEnabled"];
  v320[0] = v253;
  v249 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max Auto Crop (Degrees)" valueKeyPath:@"autoStraightenMaxAngle"];
  v246 = [v249 minValue:0.0 maxValue:10.0];
  v320[1] = v246;
  v243 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Crop Side Margins" valueKeyPath:@"cropSideMargins"];
  v132 = [v243 minValue:0.0 maxValue:32.0];
  v320[2] = v132;
  v133 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Straighten Wheel Radius" valueKeyPath:@"cropWheelSize"];
  v134 = [v133 minValue:300.0 maxValue:568.0];
  v320[3] = v134;
  v135 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Perspective Track Ball Radius" valueKeyPath:@"trackBallSize"];
  v136 = [v135 minValue:70.0 maxValue:150.0];
  v320[4] = v136;
  v137 = [MEMORY[0x1E69C66A8] rowWithTitle:@"New Perspective Debug Crop Rect" valueKeyPath:@"perspectiveViewDebugCropEnabled"];
  v320[5] = v137;
  v138 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Crop Mask Blur" valueKeyPath:@"cropMaskBlurred"];
  v320[6] = v138;
  v139 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Crop Recompose Delay" valueKeyPath:@"cropRecomposeDelay"];
  v140 = [v139 minValue:0.0 maxValue:1.5];
  v320[7] = v140;
  v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:v320 count:8];
  v258 = [v257 sectionWithRows:v141 title:@"Crop Tool Settings"];

  v254 = MEMORY[0x1E69C6638];
  v250 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max Auto Yaw (Degrees)" valueKeyPath:@"autoPerspectiveMaxYaw"];
  v142 = [v250 minValue:0.0 maxValue:45.0];
  v319[0] = v142;
  v143 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max Auto Pitch (Degrees)" valueKeyPath:@"autoPerspectiveMaxPitch"];
  v144 = [v143 minValue:0.0 maxValue:45.0];
  v319[1] = v144;
  v145 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max Auto Angle (Degrees)" valueKeyPath:@"autoPerspectiveMaxAngle"];
  v146 = [v145 minValue:0.0 maxValue:45.0];
  v319[2] = v146;
  v147 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max Face Size (% of image)" valueKeyPath:@"autoPerspectiveMaxFaceSize"];
  v148 = [v147 minValue:0.0 maxValue:100.0];
  v319[3] = v148;
  v149 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable On Panos (> 2:1 aspect)" valueKeyPath:@"autoPerspectiveDisableOnPanos"];
  v319[4] = v149;
  v150 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable On FFC Images" valueKeyPath:@"autoPerspectiveDisableOnFrontFacingCameraImages"];
  v319[5] = v150;
  v151 = [MEMORY[0x1E695DEC8] arrayWithObjects:v319 count:6];
  v255 = [v254 sectionWithRows:v151 title:@"Auto Perspective Settings"];

  v152 = MEMORY[0x1E69C6638];
  v153 = [MEMORY[0x1E69C66A8] rowWithTitle:@"LPP: Changing lighting disables Live" valueKeyPath:@"changeLightingDisablesLive"];
  v318[0] = v153;
  v154 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow Bounce/Loop Trim" valueKeyPath:@"loopBounceTrimAllowed"];
  v318[1] = v154;
  v155 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Always allow key photo editing" valueKeyPath:@"alwaysAllowKeyPhotoEditing"];
  v318[2] = v155;
  v156 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Require tap to show Make Key/Poster Frame" valueKeyPath:@"requireTapToShowMakePosterFrame"];
  v318[3] = v156;
  v157 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Suggested Key Frames" valueKeyPath:@"showSuggestedKeyFrame"];
  v318[4] = v157;
  v158 = [MEMORY[0x1E695DEC8] arrayWithObjects:v318 count:5];
  v251 = [v152 sectionWithRows:v158 title:@"Live Photo Settings"];

  v159 = MEMORY[0x1E69C6638];
  v160 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Pause after moving playhead" valueKeyPath:@"pauseAfterMovingPlayhead"];
  v317[0] = v160;
  v161 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Video: Allow Make Poster Frame" valueKeyPath:@"allowMakePosterFrameForVideo"];
  v317[1] = v161;
  v162 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Video Scrubber Debug Overlay" valueKeyPath:@"showVideoScrubberDebugOverlay"];
  v317[2] = v162;
  v163 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Filmstrip Thumbnails" valueKeyPath:@"disableVideoFilmstrip"];
  v317[3] = v163;
  v164 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Frame Number on Video Scrubber" valueKeyPath:@"showFrameNumberOnVideoScrubber"];
  v317[4] = v164;
  v165 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Tap Timeline to Seek" valueKeyPath:@"tapTimelineToSeek"];
  v317[5] = v165;
  v166 = [MEMORY[0x1E695DEC8] arrayWithObjects:v317 count:6];
  v247 = [v159 sectionWithRows:v166 title:@"Video Settings"];

  v167 = MEMORY[0x1E69C6638];
  v168 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Stabilization Watermark" valueKeyPath:@"showStabilizationWatermark"];
  v316[0] = v168;
  v169 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Stabilization Adjustment" valueKeyPath:@"enableVideoStabilizion"];
  v316[1] = v169;
  v170 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Stabilize Crop Fraction" valueKeyPath:@"videoStabilizeMaxCropFraction"];
  v171 = [v170 minValue:0.0 maxValue:1.0];
  v316[2] = v171;
  v172 = [MEMORY[0x1E695DEC8] arrayWithObjects:v316 count:3];
  v244 = [v167 sectionWithRows:v172 title:@"Video Stabilization Settings"];

  v173 = MEMORY[0x1E69C6638];
  v174 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Perf Debug HUD" valueKeyPath:@"enablePerfDebugHUD"];
  v315[0] = v174;
  v175 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Perf TTR Button" valueKeyPath:@"enablePerfTTRButton"];
  v315[1] = v175;
  v176 = [MEMORY[0x1E69C66A0] rowWithTitle:@"TTR Duration Threshold(s)" valueKeyPath:@"ttrButtonDurationThreshold"];
  v177 = [v176 minValue:0.1 maxValue:5.0];
  v315[2] = v177;
  v178 = [MEMORY[0x1E695DEC8] arrayWithObjects:v315 count:3];
  v241 = [v173 sectionWithRows:v178 title:@"Edit Performance"];

  v238 = MEMORY[0x1E69C6638];
  v179 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable SmartTone AutoCalc" valueKeyPath:@"enableEnterEditSmartToneAutoCalc"];
  v314[0] = v179;
  v180 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable SmartColor AutoCalc" valueKeyPath:@"enableEnterEditSmartColorAutoCalc"];
  v314[1] = v180;
  v181 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable SemStyle AutoCalc" valueKeyPath:@"enableEnterEditSemanticStyleAutoCalc"];
  v314[2] = v181;
  v182 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Crop AutoCalc" valueKeyPath:@"enableEnterEditCropAutoCalc"];
  v314[3] = v182;
  v183 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Perspective AutoCalc" valueKeyPath:@"enableEnterEditPerspectiveAutoCalc"];
  v314[4] = v183;
  v184 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable DepthEffect AutoCalc" valueKeyPath:@"enableEnterEditDepthEffectAutoCalc"];
  v314[5] = v184;
  v185 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Portrait AutoCalc" valueKeyPath:@"enableEnterEditPortraitAutoCalc"];
  v314[6] = v185;
  v186 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Filter Thumbs" valueKeyPath:@"enableEnterEditFilterThumbnailGeneration"];
  v314[7] = v186;
  v187 = [MEMORY[0x1E695DEC8] arrayWithObjects:v314 count:8];
  v239 = [v238 sectionWithRows:v187 title:@"Misc Enter Edit Perf"];

  v188 = MEMORY[0x1E69C6638];
  v189 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show SCAP Review Action" valueKeyPath:@"smartCopyPasteReviewUIEnabled"];
  v313[0] = v189;
  v190 = [MEMORY[0x1E69C66A8] rowWithTitle:@"[Gating] Use Capture Time Gating" valueKeyPath:@"smartCopyPasteGateOnCaptureTime"];
  v313[1] = v190;
  v191 = [MEMORY[0x1E69C66A0] rowWithTitle:@"[Gating]  Similarity Gating Threshold" valueKeyPath:@"smartCopyPasteSimilarityGatingThreshold"];
  v192 = [v191 minValue:0.0 maxValue:100.0];
  v193 = [v192 px_increment:0.5];
  v313[2] = v193;
  v194 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Affect Manually Edited Sliders Only" valueKeyPath:@"affectManuallyEditedSlidersOnly"];
  v313[3] = v194;
  v195 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Send ScenePrint if available" valueKeyPath:@"fetchAndSendScenePrintsForSliderNet"];
  v313[4] = v195;
  v196 = [MEMORY[0x1E695DEC8] arrayWithObjects:v313 count:5];
  v236 = [v188 sectionWithRows:v196 title:@"Smart Copy Paste"];

  v197 = MEMORY[0x1E69C6638];
  v198 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Shadow Length" valueKeyPath:@"secondaryToolbarShadowLength"];
  v199 = [v198 minValue:0.0 maxValue:500.0];
  v312 = v199;
  v200 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v312 count:1];
  v235 = [v197 sectionWithRows:v200 title:@"Toolbar Shadow"];

  v201 = MEMORY[0x1E69C6638];
  v202 = MEMORY[0x1E69C66A8];
  v203 = NSStringFromSelector(sel_editMenuEnabled);
  v204 = [v202 rowWithTitle:@"Edit Menu Enabled" valueKeyPath:v203];
  v311 = v204;
  v205 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v311 count:1];
  v234 = [v201 sectionWithRows:v205 title:@"Edit Menu"];

  v232 = MEMORY[0x1E69C6638];
  v206 = MEMORY[0x1E69C66A8];
  v207 = NSStringFromSelector(sel_hideUIForInteractionEnabled);
  v208 = [v206 rowWithTitle:@"Enabled" valueKeyPath:v207];
  v310[0] = v208;
  v209 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Fade In" valueKeyPath:@"hideUIForInteractionFadeInDuration"];
  v210 = [v209 minValue:0.0 maxValue:3.0];
  v310[1] = v210;
  v211 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Fade Out" valueKeyPath:@"hideUIForInteractionFadeOutDuration"];
  v212 = [v211 minValue:0.0 maxValue:3.0];
  v310[2] = v212;
  v213 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Delay" valueKeyPath:@"hideUIForInteractionFadeOutDelay"];
  v214 = [v213 minValue:0.0 maxValue:4.0];
  v310[3] = v214;
  v215 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Should Move toolbar offscreen in Landscape" valueKeyPath:@"shouldMoveToolbarToRevealStylesDPadInLandscapeOrientation"];
  v310[4] = v215;
  v216 = [MEMORY[0x1E695DEC8] arrayWithObjects:v310 count:5];
  v233 = [v232 sectionWithRows:v216 title:@"Hide UI for Interaction"];

  v217 = MEMORY[0x1E69C6638];
  v218 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Simulated Download" valueKeyPath:@"simulatedModelCatalogDownload"];
  v219 = [v218 possibleValues:&unk_1F2B7D418 titles:&unk_1F2B7D430];
  v309 = v219;
  v220 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v309 count:1];
  v221 = [v217 sectionWithRows:v220 title:@"Model Catalog"];

  v222 = MEMORY[0x1E69C6638];
  v223 = MEMORY[0x1E69C65E8];
  v224 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v225 = [v223 rowWithTitle:@"Restore Defaults" action:v224];
  v308 = v225;
  v226 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v308 count:1];
  v227 = [v222 sectionWithRows:v226];

  v230 = MEMORY[0x1E69C6638];
  v307[0] = v294;
  v307[1] = v291;
  v307[2] = v287;
  v307[3] = v283;
  v307[4] = v306;
  v307[5] = v305;
  v307[6] = v304;
  v307[7] = v303;
  v307[8] = v302;
  v307[9] = v301;
  v307[10] = v300;
  v307[11] = v298;
  v307[12] = v296;
  v307[13] = v279;
  v307[14] = v275;
  v307[15] = v271;
  v307[16] = v236;
  v307[17] = v267;
  v307[18] = v260;
  v307[19] = v258;
  v307[20] = v255;
  v307[21] = v251;
  v307[22] = v247;
  v307[23] = v244;
  v307[24] = v241;
  v307[25] = v239;
  v307[26] = v264;
  v307[27] = v235;
  v307[28] = v234;
  v307[29] = v233;
  v307[30] = v221;
  v307[31] = v227;
  v228 = [MEMORY[0x1E695DEC8] arrayWithObjects:v307 count:32];
  v231 = [v230 moduleWithTitle:@"Photo Editing" contents:v228];

  return v231;
}

uint64_t __52__PUPhotoEditProtoSettings_settingsControllerModule__block_invoke_4()
{
  v0 = [MEMORY[0x1E69C4220] sharedPresetManager];
  [v0 clearPasteboard];

  return 1;
}

uint64_t __52__PUPhotoEditProtoSettings_settingsControllerModule__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[PURenderDebugController shareSheetViewController];
  [v3 presentViewController:v4 animated:1 completion:0];

  return 1;
}

uint64_t __52__PUPhotoEditProtoSettings_settingsControllerModule__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[PURenderDebugController listDebugFilesViewController];
  [v3 presentViewController:v4 animated:1 completion:0];

  return 1;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_56369 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_56369, &__block_literal_global_56370);
  }

  v3 = sharedInstance_sharedInstance_56371;

  return v3;
}

void __42__PUPhotoEditProtoSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 photoEditingSettings];
  v1 = sharedInstance_sharedInstance_56371;
  sharedInstance_sharedInstance_56371 = v0;
}

@end