@interface PUPhotoEditMediaToolController
- (BOOL)_isSlomoEnabled;
- (BOOL)_isTrimAllowed;
- (BOOL)_updateAutoFocusToolbarButton;
- (BOOL)_wantsPortraitVideoControls;
- (BOOL)_wantsRateControl;
- (BOOL)_wantsTrimControl;
- (BOOL)apertureToolbarShouldRotateLabelsWithOrientation:(id)orientation;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)hasTrimmedVideo;
- (PUPhotoEditMediaToolController)init;
- (id)_localizedTitleForCurrentPlaybackVariation;
- (id)_rateToolbarButtonMenuElements;
- (id)accessibilityHUDItemForButton:(id)button;
- (id)axDescriptionForFocusDecisionAtTime:(id *)time;
- (id)centerToolbarView;
- (id)leadingToolbarViews;
- (id)livePortraitBehaviorController;
- (id)localizedName;
- (id)makeTrimToolController;
- (id)selectedToolbarIconGlyphName;
- (id)toolbarIconAccessibilityLabel;
- (id)toolbarIconGlyphName;
- (id)trailingToolbarViews;
- (void)_handleAutoFocusButton:(id)button;
- (void)_handleLivePhotoButton:(id)button;
- (void)_handleMuteButton:(id)button;
- (void)_handlePortraitVideoButton:(id)button;
- (void)_handlePortraitVideoButtonLongPress:(id)press;
- (void)_handleStabilizeButton:(id)button;
- (void)_initializeCinematographyScript;
- (void)_invalidateConstraints;
- (void)_layoutToolGradient;
- (void)_presentPortraitVideoDebugControls;
- (void)_reportStabilizeProgress:(double)progress;
- (void)_setPlaybackRate:(double)rate;
- (void)_setToolMode:(int64_t)mode;
- (void)_showPrimaryViewIfNeeded;
- (void)_updateApertureControlsAnimated:(BOOL)animated;
- (void)_updateApertureSliderLength;
- (void)_updateBackgroundAnimated:(BOOL)animated;
- (void)_updateLivePhotoButtonAnimated:(BOOL)animated;
- (void)_updateMuteButtonAnimated:(BOOL)animated;
- (void)_updatePortraitVideoButtonAnimated:(BOOL)animated;
- (void)_updateRateToolbarButton;
- (void)_updateStabilizationInProgress:(BOOL)progress;
- (void)_updateStabilizeButtonAnimated:(BOOL)animated;
- (void)_updateStabilizeProgressViewAnimated:(BOOL)animated;
- (void)_updateToolVisibilityAnimated:(BOOL)animated;
- (void)_updateTrackerDisplay:(BOOL)display;
- (void)_updateTrimControlAndToolbarButtons;
- (void)addCropToolGainMapIfNeeded;
- (void)apertureToolbar:(id)toolbar didChangeValue:(double)value;
- (void)apertureToolbar:(id)toolbar didUpdateDepthActive:(BOOL)active;
- (void)apertureToolbarDidStartSliding:(id)sliding;
- (void)apertureToolbarDidStopSliding:(id)sliding;
- (void)baseMediaInvalidated;
- (void)cineScriptBecameAvailable:(id)available;
- (void)cineScriptCouldNotInitializeWithError:(id)error;
- (void)cinematographyWasEdited;
- (void)cinematographyWasEditedAtTime:(id *)time;
- (void)compositionControllerDidChangeForAdjustments:(id)adjustments;
- (void)configureForAdjustmentCategory:(int64_t)category;
- (void)decreaseScrubberValue:(BOOL)value;
- (void)didBecomeActiveTool;
- (void)didResignActiveTool;
- (void)disableCinematicUIForLoadingAsset;
- (void)increaseScrubberValue:(BOOL)value;
- (void)interactionBegan;
- (void)loadView;
- (void)mediaView:(id)view didZoom:(double)zoom;
- (void)mediaViewInsetsUpdated;
- (void)objectTrackingFinishedWithSuccess:(BOOL)success;
- (void)objectTrackingStartedAtTime:(id *)time;
- (void)reactivate;
- (void)reloadToolbarButtons:(BOOL)buttons;
- (void)removeCropToolGainMap;
- (void)removeFocusDecisionAtTime:(id *)time;
- (void)setBackdropViewGroupName:(id)name;
- (void)setHorizontalControlPadding:(double)padding;
- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator;
- (void)setOriginalStillImageTime:(id *)time;
- (void)setPlaceholderImage:(id)image;
- (void)setPrimaryView:(id)view;
- (void)setUseGradientBackground:(BOOL)background animated:(BOOL)animated;
- (void)setVerticalButtonOffset:(double)offset;
- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator;
- (void)togglePlayback:(id)playback;
- (void)trackedObjectWasUpdatedAtTime:(id *)time shouldStop:(BOOL *)stop;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
- (void)trimToolController:(id)controller didBeginInteractivelyEditingElement:(int64_t)element;
- (void)trimToolController:(id)controller didEndInteractivelyEditingElement:(int64_t)element;
- (void)trimToolControllerDidChange:(id)change state:(unint64_t)state;
- (void)updateCinematicVideoControlsEnableState;
- (void)updateForIncomingAnimation;
- (void)updateToolbarButtonsAnimated:(BOOL)animated;
- (void)updateViewConstraints;
- (void)videoRenderingChanged;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)willBecomeActiveTool;
- (void)willResignActiveTool;
@end

@implementation PUPhotoEditMediaToolController

- (void)apertureToolbar:(id)toolbar didUpdateDepthActive:(BOOL)active
{
  [(PXCinematicEditController *)self->_cinematographyController setCinematicAdjustmentActive:active];

  [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
}

- (void)apertureToolbarDidStopSliding:(id)sliding
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
  v4 = PULocalizedString(@"PHOTOEDIT_PORTRAIT_APERTURE_ACTION_TITLE");
  [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v4];

  [(PUPhotoEditApertureToolbar *)self->_apertureToolbar apertureValue];
  if (v5 == 0.0 && self->_lastKnownAperture > 0.0)
  {
    self->_suspendUIUpdatesFromComposition = 1;
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    adjustmentConstants = [compositionController adjustmentConstants];
    pIPortraitVideoAdjustmentKey = [adjustmentConstants PIPortraitVideoAdjustmentKey];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__PUPhotoEditMediaToolController_apertureToolbarDidStopSliding___block_invoke;
    v9[3] = &unk_1E7B7B450;
    v9[4] = self;
    [compositionController modifyAdjustmentWithKey:pIPortraitVideoAdjustmentKey modificationBlock:v9];

    self->_suspendUIUpdatesFromComposition = 0;
  }
}

void __64__PUPhotoEditMediaToolController_apertureToolbarDidStopSliding___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(*(a1 + 32) + 1392);
  v4 = a2;
  v5 = [v2 numberWithDouble:v3];
  [v4 setAperture:v5];
}

- (void)apertureToolbarDidStartSliding:(id)sliding
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:1];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:1];
  [(PUPhotoEditToolController *)self willModifyAdjustment];
  [(PUPhotoEditApertureToolbar *)self->_apertureToolbar apertureValue];
  if (v4 > 0.0)
  {
    [(PUPhotoEditApertureToolbar *)self->_apertureToolbar apertureValue];
    self->_lastKnownAperture = v5;
  }
}

- (BOOL)apertureToolbarShouldRotateLabelsWithOrientation:(id)orientation
{
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  v4 = [photoEditSpec currentLayoutStyle] == 4;

  return v4;
}

- (void)apertureToolbar:(id)toolbar didChangeValue:(double)value
{
  [(PXCinematicEditController *)self->_cinematographyController setCinematicAperture:toolbar, value];

  [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
}

- (id)livePortraitBehaviorController
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  livePortraitBehaviorController = [delegate livePortraitBehaviorController];

  return livePortraitBehaviorController;
}

- (void)addCropToolGainMapIfNeeded
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  [delegate addCropToolGainMapIfNeeded];
}

- (void)removeCropToolGainMap
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  [delegate removeCropToolGainMap];
}

- (void)trimToolController:(id)controller didEndInteractivelyEditingElement:(int64_t)element
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  if ([(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls])
  {
    [(PUPhotoEditMediaToolController *)self _updateTrackerDisplay:1];
  }

  if ((element - 1) <= 1)
  {
    v6 = PULocalizedString(@"PHOTOEDIT_TRIM_ACTION_TITLE");
    [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v6];
  }

  playerWrapper = [(PUTrimToolController *)self->_trimController playerWrapper];
  v7 = +[PUPhotoEditProtoSettings sharedInstance];
  pauseAfterMovingPlayhead = [v7 pauseAfterMovingPlayhead];

  if (element != 2 && self->_wasPlayingBeforeBeginningToScrubVideo && (pauseAfterMovingPlayhead & 1) == 0)
  {
    [playerWrapper play];
  }
}

- (void)trimToolController:(id)controller didBeginInteractivelyEditingElement:(int64_t)element
{
  playerWrapper = [(PUTrimToolController *)self->_trimController playerWrapper];
  self->_wasPlayingBeforeBeginningToScrubVideo = [playerWrapper isPlaying];
  [playerWrapper pause];
  if ((element - 1) > 1)
  {
    [(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls];
  }

  else
  {
    [(PUPhotoEditToolController *)self setActivelyAdjusting:1];
    if ([(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls])
    {
      [(PUPhotoEditMediaToolController *)self _updateTrackerDisplay:0];
    }

    [(PUPhotoEditToolController *)self willModifyAdjustment];
  }
}

- (id)axDescriptionForFocusDecisionAtTime:(id *)time
{
  cinematographyController = self->_cinematographyController;
  v6 = *time;
  v4 = [(PXCinematicEditController *)cinematographyController axDescriptionForFocusDecisionAtTime:&v6];

  return v4;
}

- (void)removeFocusDecisionAtTime:(id *)time
{
  v5 = objc_alloc(MEMORY[0x1E69C34C0]);
  cinematographyController = self->_cinematographyController;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PUPhotoEditMediaToolController_removeFocusDecisionAtTime___block_invoke;
  v9[3] = &__block_descriptor_56_e35_v16__0__PXCinematicEditController_8l;
  v10 = *time;
  v7 = [v5 initWithCinematicController:cinematographyController changeBlock:v9];
  undoManager = [(PUPhotoEditMediaToolController *)self undoManager];
  [v7 executeWithUndoManager:undoManager];
}

uint64_t __60__PUPhotoEditMediaToolController_removeFocusDecisionAtTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 removeFocusDecisionAtTime:&v3];
}

- (void)trimToolControllerDidChange:(id)change state:(unint64_t)state
{
  changeCopy = change;
  [(PUPhotoEditMediaToolController *)self _updateTrackerDisplay:1];
  state = [changeCopy state];

  if (!state)
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    isStandardVideo = [delegate isStandardVideo];

    if (isStandardVideo)
    {
      trimController = self->_trimController;
      if (trimController)
      {
        [(PUTrimToolController *)trimController playheadTime];
      }

      else
      {
        v14 = 0uLL;
        v15 = 0;
      }

      valuesCalculator = [(PUPhotoEditToolController *)self valuesCalculator];
      v12 = v14;
      v13 = v15;
      [valuesCalculator setVideoFrameTime:&v12];

      valuesCalculator2 = [(PUPhotoEditToolController *)self valuesCalculator];
      [valuesCalculator2 precomputeImageValues];
    }
  }
}

- (BOOL)hasTrimmedVideo
{
  playerWrapper = [(PUTrimToolController *)self->_trimController playerWrapper];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    playerWrapper2 = [(PUTrimToolController *)self->_trimController playerWrapper];
    v6 = [playerWrapper2 showsUntrimmed] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)interactionBegan
{
  playerWrapper = [(PUTrimToolController *)self->_trimController playerWrapper];
  [playerWrapper pause];
}

- (void)objectTrackingFinishedWithSuccess:(BOOL)success
{
  successCopy = success;
  focusTimelineDelegate = [(PXCinematicEditController *)self->_cinematographyController focusTimelineDelegate];
  [focusTimelineDelegate objectTrackingFinishedWithSuccess:successCopy];
}

- (void)trackedObjectWasUpdatedAtTime:(id *)time shouldStop:(BOOL *)stop
{
  focusTimelineDelegate = [(PXCinematicEditController *)self->_cinematographyController focusTimelineDelegate];
  v7 = *time;
  [focusTimelineDelegate updateObjectTrackingProgressAtTime:&v7 shouldStop:stop];
}

- (void)objectTrackingStartedAtTime:(id *)time
{
  focusTimelineDelegate = [(PXCinematicEditController *)self->_cinematographyController focusTimelineDelegate];
  v5 = *time;
  [focusTimelineDelegate objectTrackingStartedAtTime:&v5];
}

- (void)updateCinematicVideoControlsEnableState
{
  if ([(PUPhotoEditMediaToolController *)self _updateAutoFocusToolbarButton])
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    [delegate toolControllerDidUpdateToolbar:self];
  }

  cinematicAdjustmentActive = [(PXCinematicEditController *)self->_cinematographyController cinematicAdjustmentActive];
  isInAutoFocusState = [(PXCinematicEditController *)self->_cinematographyController isInAutoFocusState];
  canToggleBackToUserFocusState = [(PXCinematicEditController *)self->_cinematographyController canToggleBackToUserFocusState];
  v7 = isInAutoFocusState ^ 1;
  [(PUPhotoEditToolbarButton *)self->_autoFocusButton setSelected:v7 & 1];
  autoFocusButton = self->_autoFocusButton;

  [(PUPhotoEditToolbarButton *)autoFocusButton setEnabled:cinematicAdjustmentActive & (v7 | canToggleBackToUserFocusState)];
}

- (void)cinematographyWasEditedAtTime:(id *)time
{
  playerWrapper = [(PUTrimToolController *)self->_trimController playerWrapper];
  [playerWrapper pause];

  v6 = objc_alloc(MEMORY[0x1E69C34C0]);
  cinematographyController = self->_cinematographyController;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__PUPhotoEditMediaToolController_cinematographyWasEditedAtTime___block_invoke;
  v10[3] = &__block_descriptor_56_e35_v16__0__PXCinematicEditController_8l;
  v11 = *time;
  v8 = [v6 initWithCinematicController:cinematographyController changeBlock:v10];
  undoManager = [(PUPhotoEditMediaToolController *)self undoManager];
  [v8 executeWithUndoManager:undoManager];

  [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
}

uint64_t __64__PUPhotoEditMediaToolController_cinematographyWasEditedAtTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 cinematographyWasEditedAtTime:&v3];
}

- (void)cinematographyWasEdited
{
  playerWrapper = [(PUTrimToolController *)self->_trimController playerWrapper];
  [playerWrapper pause];

  [(PXCinematicEditController *)self->_cinematographyController cinematographyWasEdited];
  [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
  if ([(PUPhotoEditMediaToolController *)self _updateAutoFocusToolbarButton])
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    [delegate toolControllerDidUpdateToolbar:self];
  }
}

- (void)cineScriptCouldNotInitializeWithError:(id)error
{
  self->_isLoadingCinematographyScript = 0;
  cinematographyController = self->_cinematographyController;
  self->_cinematographyController = 0;

  [(PUTrimToolController *)self->_trimController enableFocusTimeline:0];
  [(PUTrimToolController *)self->_trimController showFocusTimeline:0];
  [(PUVideoEditOverlayViewController *)self->_overlayController willMoveToParentViewController:0];
  [(PUPhotoEditMediaToolController *)self removeChildViewController:self->_overlayController];
  view = [(PUVideoEditOverlayViewController *)self->_overlayController view];
  [view removeFromSuperview];

  overlayController = self->_overlayController;
  self->_overlayController = 0;
}

- (void)cineScriptBecameAvailable:(id)available
{
  self->_isLoadingCinematographyScript = 0;
  [(PUVideoEditOverlayViewController *)self->_overlayController enableUIForCinematographyScriptLoad:1];
  [(PUTrimToolController *)self->_trimController enableUIForCinematographyScriptLoad:1];
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  portraitVideoAdjustmentController = [compositionController portraitVideoAdjustmentController];

  if (portraitVideoAdjustmentController)
  {
    enabled = [portraitVideoAdjustmentController enabled];
    trimController = self->_trimController;
    if (enabled)
    {
      isActiveTool = [(PUPhotoEditToolController *)self isActiveTool];
    }

    else
    {
      isActiveTool = 0;
    }
  }

  else
  {
    isActiveTool = 0;
    trimController = self->_trimController;
  }

  [(PUTrimToolController *)trimController enableFocusTimeline:isActiveTool];
  self->_cinematicButtonsNeedDimmingViews = 0;
  [(UIView *)self->_portraitVideoButtonDimmingView removeFromSuperview];
  portraitVideoButtonDimmingView = self->_portraitVideoButtonDimmingView;
  self->_portraitVideoButtonDimmingView = 0;

  [(UIView *)self->_apertureButtonContainerDimmingView removeFromSuperview];
  apertureButtonContainerDimmingView = self->_apertureButtonContainerDimmingView;
  self->_apertureButtonContainerDimmingView = 0;

  [(PUVideoEditOverlayViewController *)self->_overlayController scriptDidUpdate];
  [(PXCinematicEditController *)self->_cinematographyController updateFocusDecisions];
  if ([(PUPhotoEditMediaToolController *)self _updateAutoFocusToolbarButton])
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    [delegate toolControllerDidUpdateToolbar:self];
  }

  [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
  [(PUPhotoEditMediaToolController *)self _updateApertureControlsAnimated:0];
  apertureToolbar = self->_apertureToolbar;
  [(PXCinematicEditController *)self->_cinematographyController originalAperture];
  [(PUPhotoEditApertureToolbar *)apertureToolbar setOriginalApertureValueClosestTo:?];
  delegate2 = [(PUPhotoEditToolController *)self delegate];
  [delegate2 initialCinematographyLoadComplete];
}

- (void)disableCinematicUIForLoadingAsset
{
  self->_isLoadingCinematographyScript = 1;
  [(PUTrimToolController *)self->_trimController enableFocusTimeline:0];
  [(PUTrimToolController *)self->_trimController enableUIForCinematographyScriptLoad:0];
  [(PUVideoEditOverlayViewController *)self->_overlayController setHidden:1];
  [(PUVideoEditOverlayViewController *)self->_overlayController enableUIForCinematographyScriptLoad:0];
  self->_cinematicButtonsNeedDimmingViews = 1;
}

- (void)_initializeCinematographyScript
{
  v14 = *MEMORY[0x1E69E9840];
  editSource = [(PUPhotoEditToolController *)self editSource];

  if (editSource)
  {
    editSource2 = [(PUPhotoEditToolController *)self editSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      editSource3 = [(PUPhotoEditToolController *)self editSource];

      if (editSource3)
      {
        v6 = objc_alloc_init(MEMORY[0x1E69C33B8]);
        cinematographyController = self->_cinematographyController;
        self->_cinematographyController = v6;

        [(PXCinematicEditController *)self->_cinematographyController setDelegate:self];
        [(PXCinematicEditController *)self->_cinematographyController setFocusTimelineDelegate:self->_trimController];
        v8 = self->_cinematographyController;
        asset = [(PUPhotoEditToolController *)self asset];
        [(PXCinematicEditController *)v8 setAsset:asset editSource:editSource3];

        if (self->_apertureToolbar)
        {
          [(PXCinematicEditController *)self->_cinematographyController minimumCinematicAperture];
          [(PUPhotoEditApertureToolbar *)self->_apertureToolbar setMinimumApertureValue:?];
          [(PXCinematicEditController *)self->_cinematographyController maximumCinematicAperture];
          [(PUPhotoEditApertureToolbar *)self->_apertureToolbar setMaximumApertureValue:?];
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      editSource4 = [(PUPhotoEditToolController *)self editSource];
      v12 = 138412290;
      v13 = editSource4;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Cannot initialize cinematography; edit source is not a PLVideoEditSource: %@", &v12, 0xCu);
    }

    editSource3 = 0;
  }

  else
  {
    editSource3 = PLPhotoEditGetLog();
    if (os_log_type_enabled(editSource3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1B36F3000, editSource3, OS_LOG_TYPE_ERROR, "Cannot initialize cinematography; edit source is nil", &v12, 2u);
    }
  }

LABEL_12:
}

- (void)_handleAutoFocusButton:(id)button
{
  v4 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Auto focus button pressed", v8, 2u);
  }

  v5 = [(PUVideoEditOverlayViewController *)self->_overlayController localizedStringForCinematicTrackingBadgeMessage:[(PXCinematicEditController *)self->_cinematographyController isInAutoFocusState]];
  [(PUVideoEditOverlayViewController *)self->_overlayController showTrackingInformationalString:v5];
  [(PUVideoEditOverlayViewController *)self->_overlayController setNeedsUpdateTrackingFrame];
  v6 = [objc_alloc(MEMORY[0x1E69C34E0]) initWithCinematicController:self->_cinematographyController];
  [v6 setLocalizedActionName:v5];
  undoManager = [(PUPhotoEditMediaToolController *)self undoManager];
  [v6 executeWithUndoManager:undoManager completionHandler:&__block_literal_global_428];

  [(PUPhotoEditMediaToolController *)self cinematographyWasEdited];
  [(PUPhotoEditMediaToolController *)self _updateAutoFocusToolbarButton];
}

- (void)_updateApertureSliderLength
{
  if (self->_apertureToolbar)
  {
    photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
    shouldDisplayCompactToolbar = [photoEditSpec shouldDisplayCompactToolbar];

    v5 = 0.0;
    if ((shouldDisplayCompactToolbar & 1) == 0)
    {
      photoEditSpec2 = [(PUPhotoEditToolController *)self photoEditSpec];
      currentLayoutStyle = [photoEditSpec2 currentLayoutStyle];

      layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
      v9 = currentLayoutStyle != 4 && layoutOrientation == 1;
      v5 = 275.0;
      if (!v9)
      {
        v5 = 375.0;
      }
    }

    apertureToolbar = self->_apertureToolbar;

    [(PUPhotoEditApertureToolbar *)apertureToolbar setSliderWidth:v5];
  }
}

- (void)_presentPortraitVideoDebugControls
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [[PUPortraitVideoDebugController alloc] initWithNibName:0 bundle:0];
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  [(PUPortraitVideoDebugController *)v3 setCompositionController:compositionController];

  v5 = v3;
  [(PUPortraitVideoDebugController *)v5 loadViewIfNeeded];
  view = [(PUPhotoEditMediaToolController *)self view];
  traitCollection = [view traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];

    [(PUPortraitVideoDebugController *)v5 setTitle:@"Cinematic Debug Settings"];
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__dismissPortraitVideoDebugControls_];
    v17[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    navigationItem = [(PUPortraitVideoDebugController *)v5 navigationItem];
    [navigationItem setRightBarButtonItems:v11];

    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    view2 = [(PUPortraitVideoDebugController *)v5 view];
    [view2 setBackgroundColor:systemBackgroundColor];

    view3 = [(PUPortraitVideoDebugController *)v5 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:1];
  }

  else
  {
    [(PUPortraitVideoDebugController *)v5 setModalPresentationStyle:7];
    popoverPresentationController = [(PUPortraitVideoDebugController *)v5 popoverPresentationController];
    [popoverPresentationController setSourceView:self->_portraitVideoButton];
    [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton bounds];
    [popoverPresentationController setSourceRect:?];
    [(PUPortraitVideoDebugController *)v5 setPreferredContentSize:580.0, 340.0];

    v9 = v5;
  }

  [(PUPhotoEditMediaToolController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_handlePortraitVideoButtonLongPress:(id)press
{
  if ([press state] == 3)
  {

    [(PUPhotoEditMediaToolController *)self _presentPortraitVideoDebugControls];
  }
}

- (void)_handlePortraitVideoButton:(id)button
{
  playerWrapper = [(PUTrimToolController *)self->_trimController playerWrapper];
  [playerWrapper pause];

  [(PUPhotoEditToolController *)self willModifyAdjustment];
  isSelected = [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton isSelected];
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];
  pIPortraitVideoAdjustmentKey = [adjustmentConstants PIPortraitVideoAdjustmentKey];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__PUPhotoEditMediaToolController__handlePortraitVideoButton___block_invoke;
  v11[3] = &__block_descriptor_33_e45_v16__0__PIPortraitVideoAdjustmentController_8l;
  v12 = isSelected;
  [compositionController modifyAdjustmentWithKey:pIPortraitVideoAdjustmentKey modificationBlock:v11];

  if (isSelected)
  {
    v9 = @"PHOTOEDIT_CINEMATIC_ENABLE_ACTION";
  }

  else
  {
    v9 = @"PHOTOEDIT_CINEMATIC_DISABLE_ACTION";
  }

  v10 = PULocalizedString(v9);
  [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v10];
  [(PUPhotoEditMediaToolController *)self _updatePortraitVideoButtonAnimated:1];
  [(PUPhotoEditMediaToolController *)self _updateApertureControlsAnimated:1];
  [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
}

- (void)_setToolMode:(int64_t)mode
{
  if (self->_toolMode != mode)
  {
    self->_toolMode = mode;
    v5 = mode == 1;
    delegate = [(PUPhotoEditToolController *)self delegate];
    [delegate toolController:self showVideoScrubber:v5 animated:v5];

    [(PUPhotoEditMediaToolController *)self _updateApertureControlsAnimated:1];

    [(PUPhotoEditMediaToolController *)self _updateTrimControlAndToolbarButtons];
  }
}

- (void)_updateApertureControlsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (animated)
  {
    superview = [(UIView *)self->_apertureButtonContainer superview];
    [superview layoutIfNeeded];
  }

  cinematicAdjustmentActive = [(PXCinematicEditController *)self->_cinematographyController cinematicAdjustmentActive];
  [(PXCinematicEditController *)self->_cinematographyController cinematicAperture];
  v8 = v7;
  [(CEKApertureButton *)self->_apertureButton setActive:self->_toolMode == 1];
  [(CEKApertureButton *)self->_apertureButton setApertureValue:v8];
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  shouldAllowApertureButtonExpansion = [photoEditSpec shouldAllowApertureButtonExpansion];

  toolMode = self->_toolMode;
  if (MEMORY[0x1B8C6D660]())
  {
    apertureButton = self->_apertureButton;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v15 = (toolMode != 1) & cinematicAdjustmentActive;
    if (v8 <= 0.0)
    {
      v15 = 0;
    }

    apertureButton = self->_apertureButton;
    v13 = v15 & shouldAllowApertureButtonExpansion;
    v14 = animatedCopy;
  }

  [(CEKApertureButton *)apertureButton setShouldShowApertureValue:v13 animated:v14];
  superview2 = [(CEKApertureButton *)self->_apertureButton superview];
  [superview2 setNeedsLayout];

  v17 = +[PUPhotoEditProtoSettings sharedInstance];
  apertureSliderHasOffPosition = [v17 apertureSliderHasOffPosition];

  apertureToolbar = self->_apertureToolbar;
  if ((apertureSliderHasOffPosition & 1) == 0)
  {
    [(PUPhotoEditApertureToolbar *)apertureToolbar setEnabled:cinematicAdjustmentActive];
    if (!cinematicAdjustmentActive)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [(PUPhotoEditApertureToolbar *)apertureToolbar setDepthIsOn:cinematicAdjustmentActive];
  if (cinematicAdjustmentActive)
  {
LABEL_12:
    [(PUPhotoEditApertureToolbar *)self->_apertureToolbar setApertureValueClosestTo:v8];
  }

LABEL_13:
  v20 = self->_toolMode == 1;
  v21 = 66.0;
  if (self->_toolMode != 1)
  {
    v21 = 0.0;
  }

  [(PUPhotoEditToolController *)self setToolGradientDistance:v21];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PUPhotoEditMediaToolController__updateApertureControlsAnimated___block_invoke;
  aBlock[3] = &unk_1E7B7FF98;
  aBlock[4] = self;
  v27 = v20;
  v22 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __66__PUPhotoEditMediaToolController__updateApertureControlsAnimated___block_invoke_2;
  v24[3] = &unk_1E7B7DC88;
  v24[4] = self;
  v25 = v20;
  v23 = _Block_copy(v24);
  if (animatedCopy)
  {
    [(UIView *)self->_apertureContainer setHidden:0];
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v22 options:v23 animations:0.25 completion:0.0];
  }

  else
  {
    v22[2](v22);
    v23[2](v23, 1);
  }
}

uint64_t __66__PUPhotoEditMediaToolController__updateApertureControlsAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1360) superview];
  [v2 layoutIfNeeded];

  v3 = 0.0;
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  [*(*(a1 + 32) + 1408) setAlpha:v3];
  v4 = *(a1 + 32);

  return [v4 _updateTrackerDisplay:1];
}

- (void)_updateTrackerDisplay:(BOOL)display
{
  displayCopy = display;
  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  hideTrackersDuringPlayback = [v5 hideTrackersDuringPlayback];

  if (hideTrackersDuringPlayback)
  {
    v7 = [(PUTrimToolController *)self->_trimController state]== 1;
  }

  else
  {
    v7 = 0;
  }

  isSelected = [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton isSelected];
  toolMode = self->_toolMode;
  currentlyInteractingElement = [(PUTrimToolController *)self->_trimController currentlyInteractingElement];
  overlayController = self->_overlayController;
  isActiveTool = [(PUPhotoEditToolController *)self isActiveTool];
  isLoadingCinematographyScript = 1;
  if (isActiveTool && !v7)
  {
    v14 = !isSelected || toolMode == 1;
    if (!v14 && (currentlyInteractingElement - 1) >= 2)
    {
      isLoadingCinematographyScript = self->_isLoadingCinematographyScript;
    }
  }

  [(PUVideoEditOverlayViewController *)overlayController setHidden:isLoadingCinematographyScript animated:displayCopy];
}

- (void)_updatePortraitVideoButtonAnimated:(BOOL)animated
{
  if (self->_portraitVideoButton && self->_cinematographyController)
  {
    animatedCopy = animated;
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    portraitVideoAdjustmentController = [compositionController portraitVideoAdjustmentController];

    if (portraitVideoAdjustmentController)
    {
      enabled = [portraitVideoAdjustmentController enabled];
    }

    else
    {
      enabled = 0;
    }

    [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton setSelected:enabled];
    v7 = MEMORY[0x1E69C3BF0];
    if ([(PUPhotoEditToolActivationButton *)self->_portraitVideoButton isSelected])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = [v7 configurationWithCursorEffect:v8];
    [(PXUIButton *)self->_portraitVideoButton setPx_configuration:v9];

    trimController = self->_trimController;
    if (enabled)
    {
      isActiveTool = [(PUPhotoEditToolController *)self isActiveTool];
    }

    else
    {
      isActiveTool = 0;
    }

    [(PUTrimToolController *)trimController enableFocusTimeline:isActiveTool];
    [(PUPhotoEditMediaToolController *)self _updateTrackerDisplay:animatedCopy];
  }
}

- (BOOL)_wantsPortraitVideoControls
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  isPortraitVideo = [delegate isPortraitVideo];

  return isPortraitVideo;
}

- (id)_rateToolbarButtonMenuElements
{
  v32 = *MEMORY[0x1E69E9840];
  delegate = [(PUPhotoEditToolController *)self delegate];
  playbackRateOptions = [delegate playbackRateOptions];

  compositionController = [(PUPhotoEditToolController *)self compositionController];
  slomoAdjustmentController = [compositionController slomoAdjustmentController];
  v20 = slomoAdjustmentController;
  if (slomoAdjustmentController)
  {
    [slomoAdjustmentController rate];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = playbackRateOptions;
  v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        [v12 playbackRate];
        v14 = v13;
        localizedTitle = [v12 localizedTitle];
        objc_initWeak(&location, self);
        v16 = MEMORY[0x1E69DC628];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __64__PUPhotoEditMediaToolController__rateToolbarButtonMenuElements__block_invoke;
        v23[3] = &unk_1E7B7ACF0;
        objc_copyWeak(&v24, &location);
        v25 = v14;
        v17 = [v16 actionWithTitle:localizedTitle image:0 identifier:0 handler:v23];
        localizedSubtitle = [v12 localizedSubtitle];
        [v17 setSubtitle:localizedSubtitle];

        [v17 setState:v7 == v14];
        [v8 addObject:v17];

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  return v8;
}

void __64__PUPhotoEditMediaToolController__rateToolbarButtonMenuElements__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setPlaybackRate:*(a1 + 40)];
}

- (void)_updateRateToolbarButton
{
  v20[1] = *MEMORY[0x1E69E9840];
  _wantsRateControl = [(PUPhotoEditMediaToolController *)self _wantsRateControl];
  rateButton = self->_rateButton;
  if (_wantsRateControl)
  {
    if (!rateButton)
    {
      photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
      v6 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"gauge.with.dots.needle.33percent" selectedImageNamed:@"gauge.with.dots.needle.33percent" accessibilityLabel:&stru_1F2AC6818 spec:photoEditSpec];
      v7 = self->_rateButton;
      self->_rateButton = v6;

      [(PUPhotoEditToolbarButton *)self->_rateButton setShowsMenuAsPrimaryAction:1];
    }
  }

  else if (rateButton)
  {
    self->_rateButton = 0;
  }

  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69DC928];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __58__PUPhotoEditMediaToolController__updateRateToolbarButton__block_invoke;
  v17 = &unk_1E7B7B388;
  objc_copyWeak(&v18, &location);
  v9 = [v8 elementWithUncachedProvider:&v14];
  v10 = MEMORY[0x1E69DCC60];
  v11 = PULocalizedString(@"PHOTOEDIT_SLOMO_RATE_MENU_TITLE");
  v20[0] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:{1, v14, v15, v16, v17}];
  v13 = [v10 menuWithTitle:v11 image:0 identifier:0 options:1 children:v12];
  [(PUPhotoEditToolbarButton *)self->_rateButton setMenu:v13];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __58__PUPhotoEditMediaToolController__updateRateToolbarButton__block_invoke(uint64_t a1, void (**a2)(void, void))
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _rateToolbarButtonMenuElements];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  a2[2](v4, v7);
}

- (void)_setPlaybackRate:(double)rate
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  slomoAdjustmentController = [compositionController slomoAdjustmentController];
  v7 = slomoAdjustmentController;
  if (slomoAdjustmentController)
  {
    [slomoAdjustmentController rate];
  }

  else
  {
    v8 = 1.0;
  }

  if (v8 != rate)
  {
    [(PUPhotoEditToolController *)self willModifyAdjustment];
    if (rate != 1.0 || (-[PUPhotoEditToolController asset](self, "asset"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 mediaSubtypes], v9, (v10 & 0x20000) != 0))
    {
      v11 = *MEMORY[0x1E69BE160];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __51__PUPhotoEditMediaToolController__setPlaybackRate___block_invoke;
      v13[3] = &unk_1E7B7ACC8;
      *&v13[5] = rate;
      v13[4] = self;
      [compositionController modifyAdjustmentWithKey:v11 modificationBlock:v13];
    }

    else
    {
      [compositionController removeAdjustmentWithKey:*MEMORY[0x1E69BE160]];
    }

    v12 = PULocalizedString(@"PhotoEditPlaybackRateChangeActionName");
    [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v12];
    [(PUPhotoEditMediaToolController *)self _updateRateToolbarButton];
  }
}

void __51__PUPhotoEditMediaToolController__setPlaybackRate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRate:*(a1 + 40)];
  if (v3)
  {
    [v3 startTime];
    if ((v15 & 0x100000000) != 0)
    {
      [v3 endTime];
      if (v13)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v4 = MEMORY[0x1E6987E28];
  v5 = [*(a1 + 32) editSource];
  v6 = [v5 videoURL];
  v7 = [v4 assetWithURL:v6];

  v8 = [MEMORY[0x1E69C0910] defaultSlowMotionAdjustmentsForAsset:v7];
  v9 = v8;
  memset(&v12, 0, sizeof(v12));
  if (v8)
  {
    [v8 slowMotionTimeRange];
  }

  *&v10.start.value = *&v12.start.value;
  v10.start.epoch = v12.start.epoch;
  [v3 setStartTime:&v10];
  v10 = v12;
  CMTimeRangeGetEnd(&v11, &v10);
  v10.start = v11;
  [v3 setEndTime:&v10];

LABEL_9:
}

- (BOOL)_wantsRateControl
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    isHighframeRateVideo = [delegate isHighframeRateVideo];

    LOBYTE(v3) = isHighframeRateVideo;
  }

  return v3;
}

- (BOOL)_isSlomoEnabled
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  isHighframeRateVideo = [delegate isHighframeRateVideo];

  if (_os_feature_enabled_impl())
  {
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    slomoAdjustmentController = [compositionController slomoAdjustmentController];
    v7 = slomoAdjustmentController;
    if (slomoAdjustmentController)
    {
      [slomoAdjustmentController rate];
      isHighframeRateVideo = v8 < 1.0;
    }

    else
    {
      isHighframeRateVideo = 0;
    }
  }

  return isHighframeRateVideo;
}

- (void)_updateStabilizationInProgress:(BOOL)progress
{
  self->_stabilizationInProgress = progress;
  [(PUPhotoEditMediaToolController *)self _updateStabilizeButtonAnimated:1];

  [(PUPhotoEditMediaToolController *)self _updateStabilizeProgressViewAnimated:1];
}

- (void)_reportStabilizeProgress:(double)progress
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__PUPhotoEditMediaToolController__reportStabilizeProgress___block_invoke;
  v3[3] = &unk_1E7B7FF70;
  v3[4] = self;
  *&v3[5] = progress;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)_updateStabilizeProgressViewAnimated:(BOOL)animated
{
  v14[2] = *MEMORY[0x1E69E9840];
  stabilizeProgressView = self->_stabilizeProgressView;
  if (self->_stabilizationInProgress)
  {
    if (stabilizeProgressView)
    {
      return;
    }

    v5 = [objc_alloc(MEMORY[0x1E69BE1C8]) initWithFrame:3 style:{0.0, 0.0, 20.0, 20.0}];
    v6 = self->_stabilizeProgressView;
    self->_stabilizeProgressView = v5;

    [(PLRoundProgressView *)self->_stabilizeProgressView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = MEMORY[0x1E696ACD8];
    widthAnchor = [(PLRoundProgressView *)self->_stabilizeProgressView widthAnchor];
    v9 = [widthAnchor constraintEqualToConstant:20.0];
    v14[0] = v9;
    heightAnchor = [(PLRoundProgressView *)self->_stabilizeProgressView heightAnchor];
    v11 = [heightAnchor constraintEqualToConstant:20.0];
    v14[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    [v7 activateConstraints:v12];
  }

  else
  {
    if (!stabilizeProgressView)
    {
      return;
    }

    self->_stabilizeProgressView = 0;
  }

  delegate = [(PUPhotoEditToolController *)self delegate];
  [delegate toolControllerDidUpdateToolbar:self];
}

- (void)_handleStabilizeButton:(id)button
{
  buttonCopy = button;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];
  videoStabilizeAdjustmentController = [compositionController videoStabilizeAdjustmentController];

  if (videoStabilizeAdjustmentController)
  {
    pIVideoStabilizeAdjustmentKey = [adjustmentConstants PIVideoStabilizeAdjustmentKey];
    [compositionController modifyAdjustmentWithKey:pIVideoStabilizeAdjustmentKey modificationBlock:&__block_literal_global_380_54290];
  }

  else if (!self->_stabilizationInProgress)
  {
    [(PUPhotoEditMediaToolController *)self _updateStabilizationInProgress:1];
    objc_initWeak(&location, self);
    v9 = objc_alloc(MEMORY[0x1E69BDF80]);
    composition = [compositionController composition];
    v11 = [v9 initWithComposition:composition];

    v12 = +[PUPhotoEditProtoSettings sharedInstance];
    [v12 videoStabilizeMaxCropFraction];
    [v11 setAllowedCropFraction:?];

    [v11 setName:@"PU-PIVideoStabilizeRequest"];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__PUPhotoEditMediaToolController__handleStabilizeButton___block_invoke_2;
    v19[3] = &unk_1E7B804D0;
    objc_copyWeak(&v20, &location);
    [v11 setProgressHandler:v19];
    [v11 allowedCropFraction];
    v14 = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__PUPhotoEditMediaToolController__handleStabilizeButton___block_invoke_3;
    v15[3] = &unk_1E7B7B428;
    v16 = compositionController;
    v17 = adjustmentConstants;
    v18[1] = v14;
    objc_copyWeak(v18, &location);
    [v11 submit:v15];
    objc_destroyWeak(v18);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __57__PUPhotoEditMediaToolController__handleStabilizeButton___block_invoke_2(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportStabilizeProgress:a2];
}

void __57__PUPhotoEditMediaToolController__handleStabilizeButton___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PUPhotoEditMediaToolController__handleStabilizeButton___block_invoke_4;
  block[3] = &unk_1E7B7EA20;
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v9[1] = a1[7];
  v4 = v3;
  objc_copyWeak(v9, a1 + 6);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v9);
}

void __57__PUPhotoEditMediaToolController__handleStabilizeButton___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = [v2 result:&v11];
  v4 = v11;
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) PIVideoStabilizeAdjustmentKey];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__PUPhotoEditMediaToolController__handleStabilizeButton___block_invoke_5;
    v8[3] = &unk_1E7B7ACA0;
    v9 = v3;
    v10 = *(a1 + 64);
    [v5 modifyAdjustmentWithKey:v6 modificationBlock:v8];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updateStabilizationInProgress:0];
}

void __57__PUPhotoEditMediaToolController__handleStabilizeButton___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) keyframes];
  [v3 setKeyframes:v4];

  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 stabCropRect];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v6[0] = v7;
  v6[1] = v8;
  [v3 setStabCropRect:v6];
  [v3 setEnabled:1];
  [v3 setCropFraction:*(a1 + 40)];
  [v3 setAnalysisType:{objc_msgSend(*(a1 + 32), "analysisType")}];
}

void __57__PUPhotoEditMediaToolController__handleStabilizeButton___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setEnabled:{objc_msgSend(v2, "enabled") ^ 1}];
}

- (void)_updateStabilizeButtonAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(PUPhotoEditToolController *)self delegate];
  isStandardVideo = [delegate isStandardVideo];

  if (self->_stabilizeButton)
  {
    delegate2 = [(PUPhotoEditToolController *)self delegate];
    [delegate2 configureEnablenessOfControlButton:self->_stabilizeButton animated:animatedCopy canVisuallyDisable:1];

    stabilizeButton = self->_stabilizeButton;
  }

  else
  {
    stabilizeButton = 0;
  }

  [(UIButton *)stabilizeButton setHidden:isStandardVideo ^ 1];
  [(UIButton *)self->_stabilizeButton setEnabled:isStandardVideo];
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  videoStabilizeAdjustmentController = [compositionController videoStabilizeAdjustmentController];
  v10 = videoStabilizeAdjustmentController;
  if (videoStabilizeAdjustmentController)
  {
    enabled = [videoStabilizeAdjustmentController enabled];
  }

  else
  {
    enabled = 0;
  }

  v12 = +[PUInterfaceManager currentTheme];
  v13 = self->_stabilizeButton;
  if (enabled)
  {
    [(UIButton *)v13 setSelected:1];
    v14 = self->_stabilizeButton;
    [v12 photoEditingToolbarMainButtonColor];
  }

  else
  {
    [(UIButton *)v13 setSelected:0];
    v14 = self->_stabilizeButton;
    [v12 photoEditingToolbarSecondaryButtonColor];
  }
  v15 = ;
  [(UIButton *)v14 setTintColor:v15];
}

- (void)_handleMuteButton:(id)button
{
  v4 = MEMORY[0x1E69C34B8];
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  delegate = [(PUPhotoEditToolController *)self delegate];
  v8 = [v4 muteToggleActionWithCompositionController:compositionController isLoopingVideo:{objc_msgSend(delegate, "isLoopingVideo")}];

  undoManager = [(PUPhotoEditMediaToolController *)self undoManager];
  [v8 executeWithUndoManager:undoManager completionHandler:&__block_literal_global_54301];
}

- (void)_updateMuteButtonAnimated:(BOOL)animated
{
  animatedCopy = animated;
  asset = [(PUPhotoEditToolController *)self asset];
  if ([asset isLivePhoto])
  {
    isStandardVideo = 1;
  }

  else
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    if ([delegate isLoopingVideo])
    {
      isStandardVideo = 1;
    }

    else
    {
      delegate2 = [(PUPhotoEditToolController *)self delegate];
      isStandardVideo = [delegate2 isStandardVideo];
    }
  }

  compositionController = [(PUPhotoEditToolController *)self compositionController];
  autoLoopAdjustmentController = [compositionController autoLoopAdjustmentController];
  flavor = [autoLoopAdjustmentController flavor];
  delegate3 = [(PUPhotoEditToolController *)self delegate];
  if ([delegate3 isLoopingVideo])
  {
    v12 = PIAutoLoopFlavorFromString() != 2;
  }

  else
  {
    v12 = 1;
  }

  if (isStandardVideo)
  {
    delegate4 = [(PUPhotoEditToolController *)self delegate];
    v14 = [delegate4 isVideoOn] & v12;
  }

  else
  {
    v14 = 0;
  }

  if (self->_muteButton)
  {
    delegate5 = [(PUPhotoEditToolController *)self delegate];
    [delegate5 configureEnablenessOfControlButton:self->_muteButton animated:animatedCopy canVisuallyDisable:1];

    muteButton = self->_muteButton;
  }

  else
  {
    muteButton = 0;
  }

  [(PUPhotoEditToolbarButton *)muteButton setHidden:isStandardVideo ^ 1u];
  [(PUPhotoEditToolbarButton *)self->_muteButton setEnabled:v14];
  compositionController2 = [(PUPhotoEditToolController *)self compositionController];
  v18 = [compositionController2 adjustmentControllerForKey:*MEMORY[0x1E69BE048]];

  if (v18)
  {
    enabled = [v18 enabled];
  }

  else
  {
    delegate6 = [(PUPhotoEditToolController *)self delegate];
    enabled = [delegate6 hasLoopingVideoAdjustment];
  }

  v21 = +[PUInterfaceManager currentTheme];
  v22 = v21;
  if (enabled)
  {
    photoEditingIrisDisabledColor = [v21 photoEditingIrisDisabledColor];
    v24 = @"PHOTOEDIT_MUTE_BUTTON_AX_VALUE_ON";
  }

  else
  {
    photoEditingIrisDisabledColor = [v21 photoEditingIrisEnabledColor];
    v24 = @"PHOTOEDIT_MUTE_BUTTON_AX_VALUE_OFF";
  }

  [(PUPhotoEditToolbarButton *)self->_muteButton setTintColor:photoEditingIrisDisabledColor];
  [(PUPhotoEditToolbarButton *)self->_muteButton setSelected:enabled];
  v25 = PULocalizedString(v24);
  [(PUPhotoEditToolbarButton *)self->_muteButton setAccessibilityValue:v25];
}

- (id)_localizedTitleForCurrentPlaybackVariation
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  autoLoopAdjustmentController = [compositionController autoLoopAdjustmentController];
  flavor = [autoLoopAdjustmentController flavor];

  v5 = PIAutoLoopFlavorFromString();
  if (v5 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E7B7AD50[v5];
  }

  v7 = PULocalizedString(v6);

  return v7;
}

- (void)_handleLivePhotoButton:(id)button
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PUPhotoEditMediaToolController__handleLivePhotoButton___block_invoke;
  aBlock[3] = &unk_1E7B7F020;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  delegate = [(PUPhotoEditToolController *)self delegate];
  isVideoOn = [delegate isVideoOn];

  if (isVideoOn)
  {
    v4[2](v4, 1);
  }

  else
  {
    livePortraitBehaviorController = [(PUPhotoEditMediaToolController *)self livePortraitBehaviorController];
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    v9 = [livePortraitBehaviorController confirmationWarningStringForAction:4 compositionController:compositionController];

    if (v9)
    {
      v19 = [v9 objectAtIndexedSubscript:0];
      v10 = [v9 objectAtIndexedSubscript:1];
      v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v19 message:v10 preferredStyle:1];
      v12 = MEMORY[0x1E69DC648];
      v13 = PULocalizedString(@"OK");
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __57__PUPhotoEditMediaToolController__handleLivePhotoButton___block_invoke_2;
      v22[3] = &unk_1E7B80980;
      v14 = v4;
      v23 = v14;
      v15 = [v12 actionWithTitle:v13 style:0 handler:v22];
      [v11 addAction:v15];

      v16 = MEMORY[0x1E69DC648];
      v17 = PULocalizedString(@"CANCEL");
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __57__PUPhotoEditMediaToolController__handleLivePhotoButton___block_invoke_3;
      v20[3] = &unk_1E7B80980;
      v21 = v14;
      v18 = [v16 actionWithTitle:v17 style:1 handler:v20];
      [v11 addAction:v18];

      [(PUPhotoEditMediaToolController *)self presentViewController:v11 animated:1 completion:0];
    }

    else
    {
      v4[2](v4, 1);
    }
  }
}

void __57__PUPhotoEditMediaToolController__handleLivePhotoButton___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 toggleLivePhotoActive];

    v4 = [*(a1 + 32) delegate];
    v5 = [v4 isVideoOn];

    if (v5)
    {
      v7 = [*(a1 + 32) livePortraitBehaviorController];
      v6 = [*(a1 + 32) compositionController];
      [v7 applySideEffectsForAction:4 compositionController:v6];
    }
  }
}

- (void)_updateLivePhotoButtonAnimated:(BOOL)animated
{
  if (self->_livePhotoButton)
  {
    animatedCopy = animated;
    delegate = [(PUPhotoEditToolController *)self delegate];
    [delegate configureEnablenessOfControlButton:self->_livePhotoButton animated:animatedCopy canVisuallyDisable:0];
  }

  asset = [(PUPhotoEditToolController *)self asset];
  isLivePhotoVisibilityAdjustmentAllowed = [asset isLivePhotoVisibilityAdjustmentAllowed];

  [(PUPhotoEditToolActivationButton *)self->_livePhotoButton setHidden:isLivePhotoVisibilityAdjustmentAllowed ^ 1u];
  delegate2 = [(PUPhotoEditToolController *)self delegate];
  -[PUPhotoEditToolActivationButton setSelected:](self->_livePhotoButton, "setSelected:", [delegate2 isVideoOn]);

  v9 = MEMORY[0x1E69C3BF0];
  if ([(PUPhotoEditToolActivationButton *)self->_livePhotoButton isSelected])
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = [v9 configurationWithCursorEffect:v10];
  [(PXUIButton *)self->_livePhotoButton setPx_configuration:v11];
}

- (void)togglePlayback:(id)playback
{
  playerWrapper = [(PUTrimToolController *)self->_trimController playerWrapper];
  if ([playerWrapper isPlaying])
  {
    [playerWrapper pause];
  }

  else
  {
    [playerWrapper play];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel_togglePlayback_ == action)
  {
    playerWrapper = [(PUTrimToolController *)self->_trimController playerWrapper];
    isReadyToPlay = [playerWrapper isReadyToPlay];

    return isReadyToPlay;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PUPhotoEditMediaToolController;
    return [PUPhotoEditMediaToolController canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }
}

- (void)updateToolbarButtonsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5.receiver = self;
  v5.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v5 updateToolbarButtonsAnimated:?];
  [(PUPhotoEditMediaToolController *)self _updateLivePhotoButtonAnimated:animatedCopy];
  [(PUPhotoEditMediaToolController *)self _updateMuteButtonAnimated:animatedCopy];
  [(PUPhotoEditMediaToolController *)self _updateStabilizeButtonAnimated:animatedCopy];
  [(PUPhotoEditMediaToolController *)self _updatePortraitVideoButtonAnimated:animatedCopy];
  [(PUPhotoEditMediaToolController *)self _updateApertureControlsAnimated:animatedCopy];
}

- (void)reloadToolbarButtons:(BOOL)buttons
{
  buttonsCopy = buttons;
  editSource = [(PUPhotoEditToolController *)self editSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    editSource2 = [(PUPhotoEditToolController *)self editSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }
  }

  if (buttonsCopy)
  {
    livePhotoButton = self->_livePhotoButton;
    self->_livePhotoButton = 0;

    muteButton = self->_muteButton;
    self->_muteButton = 0;

    stabilizeButton = self->_stabilizeButton;
    self->_stabilizeButton = 0;

    portraitVideoButtonDimmingView = self->_portraitVideoButtonDimmingView;
    self->_portraitVideoButtonDimmingView = 0;

    portraitVideoButton = self->_portraitVideoButton;
    self->_portraitVideoButton = 0;
  }

  [(PUPhotoEditMediaToolController *)self _updateTrimControlAndToolbarButtons];

  [(PUPhotoEditMediaToolController *)self updateToolbarButtonsAnimated:0];
}

- (void)videoRenderingChanged
{
  [(PUTrimToolController *)self->_trimController livePhotoRenderDidChange:self->_trimControllerScrubberNeedsVisualUpdate];
  self->_trimControllerScrubberNeedsVisualUpdate = 0;
  overlayController = self->_overlayController;

  [(PUVideoEditOverlayViewController *)overlayController renderDidChange:0];
}

- (id)makeTrimToolController
{
  v26[1] = *MEMORY[0x1E69E9840];
  delegate = [(PUPhotoEditToolController *)self delegate];
  if ([delegate isLoopingVideo])
  {
  }

  else
  {
    delegate2 = [(PUPhotoEditToolController *)self delegate];
    isStandardVideo = [delegate2 isStandardVideo];

    if (!isStandardVideo)
    {
      v15 = objc_alloc(MEMORY[0x1E69C3BD0]);
      delegate3 = [(PUPhotoEditToolController *)self delegate];
      mainLivePhotoView = [delegate3 mainLivePhotoView];
      v9 = [v15 initWithLivePhotoView:mainLivePhotoView];

      goto LABEL_9;
    }
  }

  v6 = objc_alloc(MEMORY[0x1E69C3BD8]);
  delegate4 = [(PUPhotoEditToolController *)self delegate];
  mediaView = [delegate4 mediaView];
  v9 = [v6 initWithNUMediaView:mediaView];

  delegate5 = [(PUPhotoEditToolController *)self delegate];
  LODWORD(mediaView) = [delegate5 isLoopingVideo];

  if (mediaView)
  {
    autoloopStabilizedVideoFilter = [MEMORY[0x1E69BDEF8] autoloopStabilizedVideoFilter];
    v26[0] = autoloopStabilizedVideoFilter;
    v12 = v26;
  }

  else
  {
    autoloopStabilizedVideoFilter = [MEMORY[0x1E69BDEF8] stripAllTimeAdjustmentsFilter];
    v25 = autoloopStabilizedVideoFilter;
    v12 = &v25;
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v9 setFullVideoPipelineFilters:v13];

  delegate3 = [(PUPhotoEditToolController *)self delegate];
  [v9 setPlayerItemSource:delegate3];
LABEL_9:

  v17 = [PUTrimToolController alloc];
  delegate6 = [(PUPhotoEditToolController *)self delegate];
  isStandardVideo2 = [delegate6 isStandardVideo];
  _isSlomoEnabled = [(PUPhotoEditMediaToolController *)self _isSlomoEnabled];
  delegate7 = [(PUPhotoEditToolController *)self delegate];
  v22 = -[PUTrimToolController initWithPlayerWrapper:playButtonEnabled:slomoEnabled:portraitVideoEnabled:](v17, "initWithPlayerWrapper:playButtonEnabled:slomoEnabled:portraitVideoEnabled:", v9, isStandardVideo2, _isSlomoEnabled, [delegate7 isPortraitVideo]);

  cinematographyController = self->_cinematographyController;
  if (cinematographyController)
  {
    [(PXCinematicEditController *)cinematographyController setFocusTimelineDelegate:v22];
    [(PXCinematicEditController *)self->_cinematographyController cinematographyWasEdited];
  }

  [(PUTrimToolController *)v22 setDelegate:self];

  return v22;
}

- (BOOL)_updateAutoFocusToolbarButton
{
  v3 = +[PUInterfaceManager currentTheme];
  if (![(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls]|| (cinematographyController = self->_cinematographyController) == 0)
  {
    autoFocusButton = self->_autoFocusButton;
    if (autoFocusButton)
    {
      self->_autoFocusButton = 0;

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (![(PXCinematicEditController *)cinematographyController isInAutoFocusState]|| ([(PXCinematicEditController *)self->_cinematographyController canToggleBackToUserFocusState]& 1) != 0)
  {
    if (!self->_autoFocusButton)
    {
      v5 = PULocalizedString(@"PHOTOEDIT_CINEMATIC_AUTO_FOCUS_AX_LABEL");
      photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
      v7 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"dot.viewfinder" selectedImageNamed:@"dot.circle.viewfinder" accessibilityLabel:v5 spec:photoEditSpec];
      v8 = self->_autoFocusButton;
      self->_autoFocusButton = v7;

      [(PUPhotoEditToolbarButton *)self->_autoFocusButton setSelectedGlyphHasHighlightColor:1];
      objc_initWeak(&location, self);
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __63__PUPhotoEditMediaToolController__updateAutoFocusToolbarButton__block_invoke;
      v16 = &unk_1E7B7AEE0;
      objc_copyWeak(&v17, &location);
      [(PUPhotoEditToolbarButton *)self->_autoFocusButton setActionBlock:&v13];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
LABEL_9:
      v10 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:
  if (([(PUPhotoEditToolbarButton *)self->_autoFocusButton isSelected:v13]& 1) != 0)
  {
    [v3 photoEditingToolbarButtonSelectedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v11 = ;
  [(PUPhotoEditToolbarButton *)self->_autoFocusButton setTintColor:v11];

  return v10;
}

void __63__PUPhotoEditMediaToolController__updateAutoFocusToolbarButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutoFocusButton:v3];
}

- (void)_updateTrimControlAndToolbarButtons
{
  v185[4] = *MEMORY[0x1E69E9840];
  delegate = [(PUPhotoEditToolController *)self delegate];
  isStandardVideo = [delegate isStandardVideo];

  if ([(PUPhotoEditMediaToolController *)self _wantsTrimControl])
  {
    if (!self->_trimController)
    {
      makeTrimToolController = [(PUPhotoEditMediaToolController *)self makeTrimToolController];
      trimController = self->_trimController;
      self->_trimController = makeTrimToolController;

      view = [(PUTrimToolController *)self->_trimController view];
      [view setAlpha:0.0];

      view2 = [(PUTrimToolController *)self->_trimController view];
      [(PUPhotoEditMediaToolController *)self setPrimaryView:view2];

      [(PUPhotoEditMediaToolController *)self addChildViewController:self->_trimController];
      [(PUTrimToolController *)self->_trimController didMoveToParentViewController:self];
    }

    [(PUTrimToolController *)self->_trimController setDisabled:[(PUPhotoEditMediaToolController *)self _isTrimAllowed]^ 1];
    if (!self->_trimControllerVisible && self->_viewHasAppeared)
    {
      self->_trimControllerVisible = 1;
      v182[0] = MEMORY[0x1E69E9820];
      v182[1] = 3221225472;
      v182[2] = __69__PUPhotoEditMediaToolController__updateTrimControlAndToolbarButtons__block_invoke;
      v182[3] = &unk_1E7B80DD0;
      v182[4] = self;
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:4 animations:v182 completion:0];
    }
  }

  else if (self->_trimControllerVisible)
  {
    self->_trimControllerVisible = 0;
    v181[0] = MEMORY[0x1E69E9820];
    v181[1] = 3221225472;
    v181[2] = __69__PUPhotoEditMediaToolController__updateTrimControlAndToolbarButtons__block_invoke_2;
    v181[3] = &unk_1E7B80DD0;
    v181[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:4 animations:v181 completion:0];
  }

  v8 = self->_trimController;
  delegate2 = [(PUPhotoEditToolController *)self delegate];
  v10 = [delegate2 toolControllerPlaceholderImage:self];
  [(PUTrimToolController *)v8 setPlaceholderImage:v10];

  compositionController = [(PUPhotoEditToolController *)self compositionController];
  trimAdjustmentController = [compositionController trimAdjustmentController];
  v154 = trimAdjustmentController;
  v12 = MEMORY[0x1E69BE180];
  if (trimAdjustmentController)
  {
    [trimAdjustmentController startTime];
    if ((v179 & 0x100000000) != 0)
    {
      goto LABEL_15;
    }

    [v154 endTime];
    if ((v176 & 0x100000000) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v178 = 0;
    v179 = 0;
    v180 = 0;
    v176 = 0;
    v177 = 0;
    v175 = 0;
  }

  [compositionController removeAdjustmentWithKey:*v12];
LABEL_15:
  [(PUTrimToolController *)self->_trimController setCompositionController:compositionController];
  v13 = self->_trimController;
  editSource = [(PUPhotoEditToolController *)self editSource];
  [(PUTrimToolController *)v13 setEditSource:editSource];

  v15 = self->_trimController;
  *location = *&self->_originalStillImageTime.value;
  epoch = self->_originalStillImageTime.epoch;
  [(PUTrimToolController *)v15 setUnadjustedStillImageTime:location];
  v157 = [compositionController copy];
  [v157 removeAdjustmentWithKey:*v12];
  [v157 removeAdjustmentWithKey:*MEMORY[0x1E69BE030]];
  trimAdjustmentController2 = [v157 trimAdjustmentController];
  v156 = trimAdjustmentController2;
  if (trimAdjustmentController2)
  {
    [trimAdjustmentController2 startTime];
    trimAdjustmentController2 = v156;
  }

  else
  {
    v171 = 0uLL;
    v172 = 0;
  }

  v17 = trimAdjustmentController2 == 0;
  v18 = self->_trimController;
  *location = v171;
  epoch = v172;
  [(PUTrimToolController *)v18 setOriginalStartTime:location];
  if (v17)
  {
    v169 = 0uLL;
    v170 = 0;
  }

  else
  {
    [v156 endTime];
  }

  v19 = self->_trimController;
  *location = v169;
  epoch = v170;
  [(PUTrimToolController *)v19 setOriginalEndTime:location];
  asset = [(PUPhotoEditToolController *)self asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = +[PUPhotoEditProtoSettings sharedInstance];
    showSuggestedKeyFrame = [v21 showSuggestedKeyFrame];

    if (!showSuggestedKeyFrame)
    {
      goto LABEL_29;
    }

    asset = [(PUPhotoEditToolController *)self asset];
    [asset fetchPropertySetsIfNeeded];
    location[0] = 0;
    location[1] = 0;
    epoch = 0;
    mediaAnalysisProperties = [asset mediaAnalysisProperties];
    v24 = mediaAnalysisProperties;
    if (mediaAnalysisProperties)
    {
      [mediaAnalysisProperties bestKeyFrameTime];
    }

    else
    {
      location[0] = 0;
      location[1] = 0;
      epoch = 0;
    }

    if (BYTE4(location[1]))
    {
      *from = *location;
      v168 = epoch;
      [(PUTrimToolController *)self->_trimController setSuggestedKeyFrameTime:from];
    }
  }

LABEL_29:
  delegate3 = [(PUPhotoEditToolController *)self delegate];
  fontForButtons = [delegate3 fontForButtons];

  v153 = +[PUInterfaceManager currentTheme];
  objc_initWeak(location, self);
  editSource2 = [(PUPhotoEditToolController *)self editSource];
  v27 = [editSource2 mediaType] == 3;

  muteButton = self->_muteButton;
  if ((v27 | isStandardVideo))
  {
    if (!muteButton)
    {
      v29 = PULocalizedString(@"PHOTOEDIT_MUTE_BUTTON_AX_LABEL");
      photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
      v31 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"speaker.wave.2.fill" selectedImageNamed:@"speaker.slash.fill" accessibilityLabel:v29 spec:photoEditSpec];
      v32 = self->_muteButton;
      self->_muteButton = v31;

      v165[0] = MEMORY[0x1E69E9820];
      v165[1] = 3221225472;
      v165[2] = __69__PUPhotoEditMediaToolController__updateTrimControlAndToolbarButtons__block_invoke_3;
      v165[3] = &unk_1E7B7AEE0;
      objc_copyWeak(&v166, location);
      [(PUPhotoEditToolbarButton *)self->_muteButton setActionBlock:v165];
      objc_destroyWeak(&v166);
    }
  }

  else if (muteButton)
  {
    self->_muteButton = 0;
  }

  if ([(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls]&& self->_cinematographyController)
  {
    if (!self->_portraitVideoButton)
    {
      v33 = PULocalizedString(@"PHOTOEDIT_CINEMATIC_SWITCH");
      localizedUppercaseString = [v33 localizedUppercaseString];
      v35 = [PUPhotoEditToolActivationButton buttonWithTitle:localizedUppercaseString];
      portraitVideoButton = self->_portraitVideoButton;
      self->_portraitVideoButton = v35;

      [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v37) = 1144586240;
      [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton setContentCompressionResistancePriority:0 forAxis:v37];
      objc_initWeak(from, self);
      v163[0] = MEMORY[0x1E69E9820];
      v163[1] = 3221225472;
      v163[2] = __69__PUPhotoEditMediaToolController__updateTrimControlAndToolbarButtons__block_invoke_4;
      v163[3] = &unk_1E7B7AC30;
      objc_copyWeak(&v164, from);
      [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton setActionBlock:v163];
      [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton addTarget:self action:sel__handlePortraitVideoButton_ forControlEvents:64];
      if (PFOSVariantHasInternalUI())
      {
        v38 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handlePortraitVideoButtonLongPress_];
        [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton addGestureRecognizer:v38];
      }

      if (self->_cinematicButtonsNeedDimmingViews)
      {
        portraitVideoButtonDimmingView = self->_portraitVideoButtonDimmingView;
        self->_portraitVideoButtonDimmingView = 0;

        v40 = objc_opt_new();
        v41 = self->_portraitVideoButtonDimmingView;
        self->_portraitVideoButtonDimmingView = v40;

        systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
        v43 = [systemBackgroundColor colorWithAlphaComponent:0.6];
        [(UIView *)self->_portraitVideoButtonDimmingView setBackgroundColor:v43];

        [(UIView *)self->_portraitVideoButtonDimmingView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton addSubview:self->_portraitVideoButtonDimmingView];
        v138 = MEMORY[0x1E696ACD8];
        leadingAnchor = [(UIView *)self->_portraitVideoButtonDimmingView leadingAnchor];
        leadingAnchor2 = [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton leadingAnchor];
        v144 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v185[0] = v144;
        trailingAnchor = [(UIView *)self->_portraitVideoButtonDimmingView trailingAnchor];
        trailingAnchor2 = [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton trailingAnchor];
        v45 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v185[1] = v45;
        topAnchor = [(UIView *)self->_portraitVideoButtonDimmingView topAnchor];
        topAnchor2 = [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton topAnchor];
        v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v185[2] = v48;
        bottomAnchor = [(UIView *)self->_portraitVideoButtonDimmingView bottomAnchor];
        bottomAnchor2 = [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton bottomAnchor];
        v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v185[3] = v51;
        v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v185 count:4];
        [v138 activateConstraints:v52];
      }

      objc_destroyWeak(&v164);
      objc_destroyWeak(from);
    }

    if (self->_apertureButton)
    {
      v53 = 1;
      goto LABEL_53;
    }

    v58 = objc_alloc_init(PUPhotoEditApertureButton);
    objc_storeStrong(&self->_apertureButton, v58);
    view3 = [(PUPhotoEditMediaToolController *)self view];
    v60 = [view3 effectiveUserInterfaceLayoutDirection] != 1;

    [(PUPhotoEditApertureButton *)v58 setExpansionDirection:v60];
    [(PUPhotoEditApertureButton *)v58 setTappableEdgeInsets:11.0, 11.0, 11.0, 11.0];
    [(PUPhotoEditApertureButton *)v58 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUPhotoEditApertureButton *)v58 addTarget:self action:sel__handleApertureButton_ forControlEvents:64];
    v61 = [[PUPhotoEditApertureButtonContainer alloc] initWithApertureButton:v58];
    apertureButtonContainer = self->_apertureButtonContainer;
    self->_apertureButtonContainer = &v61->super;

    if (self->_cinematicButtonsNeedDimmingViews)
    {
      apertureButtonContainerDimmingView = self->_apertureButtonContainerDimmingView;
      self->_apertureButtonContainerDimmingView = 0;

      v64 = objc_opt_new();
      v65 = self->_apertureButtonContainerDimmingView;
      self->_apertureButtonContainerDimmingView = v64;

      systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v67 = [systemBackgroundColor2 colorWithAlphaComponent:0.6];
      [(UIView *)self->_apertureButtonContainerDimmingView setBackgroundColor:v67];

      [(UIView *)self->_apertureButtonContainerDimmingView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_apertureButtonContainer addSubview:self->_apertureButtonContainerDimmingView];
      v136 = MEMORY[0x1E696ACD8];
      leadingAnchor3 = [(UIView *)self->_apertureButtonContainerDimmingView leadingAnchor];
      leadingAnchor4 = [(UIView *)self->_apertureButtonContainer leadingAnchor];
      v145 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v184[0] = v145;
      trailingAnchor3 = [(UIView *)self->_apertureButtonContainerDimmingView trailingAnchor];
      trailingAnchor4 = [(UIView *)self->_apertureButtonContainer trailingAnchor];
      v68 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v184[1] = v68;
      topAnchor3 = [(UIView *)self->_apertureButtonContainerDimmingView topAnchor];
      topAnchor4 = [(UIView *)self->_apertureButtonContainer topAnchor];
      v71 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v184[2] = v71;
      bottomAnchor3 = [(UIView *)self->_apertureButtonContainerDimmingView bottomAnchor];
      bottomAnchor4 = [(UIView *)self->_apertureButtonContainer bottomAnchor];
      v74 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v184[3] = v74;
      v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v184 count:4];
      [v136 activateConstraints:v75];
    }

    v53 = 1;
  }

  else
  {
    if (self->_portraitVideoButton)
    {
      v54 = self->_portraitVideoButtonDimmingView;
      self->_portraitVideoButtonDimmingView = 0;

      v55 = self->_portraitVideoButton;
      self->_portraitVideoButton = 0;
    }

    if (!self->_apertureButton)
    {
      v53 = 0;
      goto LABEL_53;
    }

    v56 = self->_apertureButtonContainerDimmingView;
    self->_apertureButtonContainerDimmingView = 0;

    apertureButton = self->_apertureButton;
    self->_apertureButton = 0;

    v53 = 0;
    v58 = self->_apertureButtonContainer;
    self->_apertureButtonContainer = 0;
  }

LABEL_53:
  [(PUPhotoEditMediaToolController *)self _updateAutoFocusToolbarButton];
  overlayController = self->_overlayController;
  if (v53)
  {
    if (!overlayController)
    {
      delegate4 = [(PUPhotoEditToolController *)self delegate];
      mediaView = [delegate4 mediaView];

      cinematographyScript = [(PXCinematicEditController *)self->_cinematographyController cinematographyScript];
      v80 = cinematographyScript;
      if (mediaView && cinematographyScript)
      {
        v81 = [[PUVideoEditOverlayViewController alloc] initWithMediaView:mediaView cineController:self->_cinematographyController];
        v82 = self->_overlayController;
        self->_overlayController = v81;

        [(PUVideoEditOverlayViewController *)self->_overlayController setOverlayControllerDelegate:self];
        view4 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
        [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

        [(PUPhotoEditMediaToolController *)self addChildViewController:self->_overlayController];
        [(PUVideoEditOverlayViewController *)self->_overlayController didMoveToParentViewController:self];
        view5 = [(PUPhotoEditMediaToolController *)self view];
        view6 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
        [view5 insertSubview:view6 atIndex:0];
      }
    }

    if (!self->_apertureToolbar)
    {
      v86 = objc_alloc_init(PUPhotoEditApertureToolbar);
      apertureToolbar = self->_apertureToolbar;
      self->_apertureToolbar = v86;

      [(PUPhotoEditApertureToolbar *)self->_apertureToolbar setDelegate:self];
      [(PUPhotoEditApertureToolbar *)self->_apertureToolbar setLayoutOrientation:[(PUPhotoEditToolController *)self layoutOrientation]];
      cinematographyController = self->_cinematographyController;
      if (cinematographyController)
      {
        [(PXCinematicEditController *)cinematographyController minimumCinematicAperture];
        [(PUPhotoEditApertureToolbar *)self->_apertureToolbar setMinimumApertureValue:?];
        [(PXCinematicEditController *)self->_cinematographyController maximumCinematicAperture];
        [(PUPhotoEditApertureToolbar *)self->_apertureToolbar setMaximumApertureValue:?];
      }

      [(PUPhotoEditApertureToolbar *)self->_apertureToolbar willMoveToParentViewController:self];
      apertureContainer = self->_apertureContainer;
      view7 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      [(UIView *)apertureContainer addSubview:view7];

      [(UIView *)self->_apertureContainer setHidden:1];
      view8 = [(PUPhotoEditMediaToolController *)self view];
      widthAnchor = [(UIView *)self->_apertureContainer widthAnchor];
      view9 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      widthAnchor2 = [view9 widthAnchor];
      v140 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v183[0] = v140;
      centerXAnchor = [(UIView *)self->_apertureContainer centerXAnchor];
      view10 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      centerXAnchor2 = [view10 centerXAnchor];
      v133 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v183[1] = v133;
      heightAnchor = [(UIView *)self->_apertureContainer heightAnchor];
      view11 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      heightAnchor2 = [view11 heightAnchor];
      v94 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      v183[2] = v94;
      bottomAnchor5 = [(UIView *)self->_apertureContainer bottomAnchor];
      view12 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      bottomAnchor6 = [view12 bottomAnchor];
      v98 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      v183[3] = v98;
      v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v183 count:4];
      [view8 addConstraints:v99];

      photoEditSpec2 = [(PUPhotoEditToolController *)self photoEditSpec];
      LOBYTE(v99) = [photoEditSpec2 currentLayoutStyle] == 4;

      if ((v99 & 1) == 0)
      {
        v101 = objc_alloc(MEMORY[0x1E6993848]);
        v102 = [v101 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        apertureGradientView = self->_apertureGradientView;
        self->_apertureGradientView = v102;

        [(CEKEdgeGradientView *)self->_apertureGradientView setEdgeGradientStyleMask];
        [(UIView *)self->_apertureContainer setMaskView:self->_apertureGradientView];
      }

      [(PUPhotoEditMediaToolController *)self _updateApertureSliderLength];
    }
  }

  else
  {
    if (overlayController)
    {
      [(PUVideoEditOverlayViewController *)overlayController willMoveToParentViewController:0];
      [(PUPhotoEditMediaToolController *)self removeChildViewController:self->_overlayController];
      view13 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
      [view13 removeFromSuperview];

      v105 = self->_overlayController;
      self->_overlayController = 0;
    }

    v106 = self->_apertureToolbar;
    if (v106)
    {
      [(PUPhotoEditApertureToolbar *)v106 removeFromParentViewController];
      view14 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      [view14 removeFromSuperview];

      v108 = self->_apertureToolbar;
      self->_apertureToolbar = 0;

      v109 = self->_apertureGradientView;
      self->_apertureGradientView = 0;
    }
  }

  [(PUPhotoEditMediaToolController *)self _updateRateToolbarButton];
  [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
  v110 = +[PUPhotoEditProtoSettings sharedInstance];
  enableVideoStabilizion = [v110 enableVideoStabilizion];

  if ((enableVideoStabilizion & isStandardVideo) != 0 && !self->_stabilizeButton)
  {
    v112 = objc_alloc_init(MEMORY[0x1E69DC738]);
    stabilizeButton = self->_stabilizeButton;
    self->_stabilizeButton = v112;

    [(UIButton *)self->_stabilizeButton addTarget:self action:sel__handleStabilizeButton_ forControlEvents:64];
    [(UIButton *)self->_stabilizeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v114 = [MEMORY[0x1E69DCAD8] configurationWithFont:fontForButtons];
    v115 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"s.square"];
    v116 = [v115 imageWithSymbolConfiguration:v114];

    v117 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"s.square.fill"];
    v118 = [v117 imageWithSymbolConfiguration:v114];

    [(UIButton *)self->_stabilizeButton setImage:v116 forState:0];
    [(UIButton *)self->_stabilizeButton setImage:v118 forState:4];
  }

  asset2 = [(PUPhotoEditToolController *)self asset];
  isLivePhotoVisibilityAdjustmentAllowed = [asset2 isLivePhotoVisibilityAdjustmentAllowed];

  livePhotoButton = self->_livePhotoButton;
  if (isLivePhotoVisibilityAdjustmentAllowed)
  {
    if (livePhotoButton)
    {
      goto LABEL_78;
    }

    _localizedTitleForCurrentPlaybackVariation = [(PUPhotoEditMediaToolController *)self _localizedTitleForCurrentPlaybackVariation];
    localizedUppercaseString2 = [_localizedTitleForCurrentPlaybackVariation localizedUppercaseString];
    v124 = [PUPhotoEditToolActivationButton buttonWithTitle:localizedUppercaseString2];
    v125 = self->_livePhotoButton;
    self->_livePhotoButton = v124;

    [(PUPhotoEditToolActivationButton *)self->_livePhotoButton setSelectedGlyphName:@"livephoto"];
    [(PUPhotoEditToolActivationButton *)self->_livePhotoButton setUnselectedGlyphName:@"livephoto.slash"];
    objc_initWeak(from, self);
    v161[0] = MEMORY[0x1E69E9820];
    v161[1] = 3221225472;
    v161[2] = __69__PUPhotoEditMediaToolController__updateTrimControlAndToolbarButtons__block_invoke_5;
    v161[3] = &unk_1E7B7AC30;
    objc_copyWeak(&v162, from);
    [(PUPhotoEditToolActivationButton *)self->_livePhotoButton setActionBlock:v161];
    v159[0] = MEMORY[0x1E69E9820];
    v159[1] = 3221225472;
    v159[2] = __69__PUPhotoEditMediaToolController__updateTrimControlAndToolbarButtons__block_invoke_6;
    v159[3] = &unk_1E7B7AC58;
    objc_copyWeak(&v160, from);
    [(PUPhotoEditToolActivationButton *)self->_livePhotoButton setIsSelectedBlock:v159];
    objc_destroyWeak(&v160);
    objc_destroyWeak(&v162);
    objc_destroyWeak(from);
  }

  else
  {
    if (!livePhotoButton)
    {
      goto LABEL_78;
    }

    self->_livePhotoButton = 0;

    _localizedTitleForCurrentPlaybackVariation = [(PUPhotoEditToolController *)self delegate];
    [_localizedTitleForCurrentPlaybackVariation dismissLivePhotoRevertConfirmationAlert];
  }

LABEL_78:
  videoLabelView = self->_videoLabelView;
  if (isStandardVideo)
  {
    if (!videoLabelView)
    {
      v127 = PULocalizedString(@"PHOTOEDIT_VIDEO_TOP_LABEL");
      videoLabelView = [v127 localizedUppercaseString];

      photoEditingTopToolbarToolLabelButtonColor = [v153 photoEditingTopToolbarToolLabelButtonColor];
      v129 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v130 = self->_videoLabelView;
      self->_videoLabelView = v129;

      [(UILabel *)self->_videoLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)self->_videoLabelView setText:videoLabelView];
      [(UILabel *)self->_videoLabelView setTextColor:photoEditingTopToolbarToolLabelButtonColor];
      topToolbarToolLabelFont = [v153 topToolbarToolLabelFont];
      [(UILabel *)self->_videoLabelView setFont:topToolbarToolLabelFont];

LABEL_83:
    }
  }

  else if (videoLabelView)
  {
    self->_videoLabelView = 0;
    goto LABEL_83;
  }

  objc_destroyWeak(location);
}

void __69__PUPhotoEditMediaToolController__updateTrimControlAndToolbarButtons__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1272) view];
  [v1 setAlpha:1.0];
}

void __69__PUPhotoEditMediaToolController__updateTrimControlAndToolbarButtons__block_invoke_2(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1272) view];
  [v1 setAlpha:0.0];
}

void __69__PUPhotoEditMediaToolController__updateTrimControlAndToolbarButtons__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMuteButton:v3];
}

void __69__PUPhotoEditMediaToolController__updateTrimControlAndToolbarButtons__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePortraitVideoButton:v3];
}

void __69__PUPhotoEditMediaToolController__updateTrimControlAndToolbarButtons__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLivePhotoButton:v3];
}

uint64_t __69__PUPhotoEditMediaToolController__updateTrimControlAndToolbarButtons__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = [v2 isVideoOn];

  return v3;
}

- (BOOL)_wantsTrimControl
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  isStandardVideo = [delegate isStandardVideo];

  if ((isStandardVideo & 1) == 0)
  {
    asset = [(PUPhotoEditToolController *)self asset];
    if ([asset isLivePhoto])
    {
      editSource = [(PUPhotoEditToolController *)self editSource];
      mediaType = [editSource mediaType];

      if (mediaType == 3)
      {
        delegate2 = [(PUPhotoEditToolController *)self delegate];
        hasLoopingVideoAdjustment = [delegate2 hasLoopingVideoAdjustment];

        v11 = +[PUPhotoEditProtoSettings sharedInstance];
        loopBounceTrimAllowed = [v11 loopBounceTrimAllowed];

        v5 = hasLoopingVideoAdjustment ^ 1 | loopBounceTrimAllowed;
        return (self->_toolMode != 1) & v5;
      }
    }

    else
    {
    }

    v5 = 0;
    return (self->_toolMode != 1) & v5;
  }

  v5 = 1;
  return (self->_toolMode != 1) & v5;
}

- (BOOL)_isTrimAllowed
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  delegate = [(PUPhotoEditToolController *)self delegate];
  isLoopingVideo = [delegate isLoopingVideo];

  if (isLoopingVideo)
  {
    loopBounceTrimAllowed = [v3 loopBounceTrimAllowed];
  }

  else
  {
    loopBounceTrimAllowed = 1;
  }

  delegate2 = [(PUPhotoEditToolController *)self delegate];
  isStandardVideo = [delegate2 isStandardVideo];

  if ((isStandardVideo & 1) != 0 || loopBounceTrimAllowed)
  {
    delegate3 = [(PUPhotoEditToolController *)self delegate];
    isVideoOn = [delegate3 isVideoOn];
  }

  else
  {
    isVideoOn = 0;
  }

  return isVideoOn;
}

- (void)_updateBackgroundAnimated:(BOOL)animated
{
  animatedCopy = animated;
  useTranslucentBackground = self->_useTranslucentBackground;
  isHidden = [(UIView *)self->_solidBackgroundView isHidden];
  if (useTranslucentBackground)
  {
    if (isHidden)
    {
      return;
    }

    [(_UIBackdropView *)self->_backdropBackgroundView setHidden:0];
    solidBackgroundView = self->_solidBackgroundView;
    if (animatedCopy)
    {
      [(UIView *)solidBackgroundView setAlpha:1.0];
      v8 = MEMORY[0x1E69DD250];
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __60__PUPhotoEditMediaToolController__updateBackgroundAnimated___block_invoke;
      v30 = &unk_1E7B80DD0;
      selfCopy = self;
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __60__PUPhotoEditMediaToolController__updateBackgroundAnimated___block_invoke_2;
      v25 = &unk_1E7B7F020;
      selfCopy2 = self;
      v9 = &v27;
      v10 = &v22;
LABEL_8:
      [v8 animateWithDuration:v9 animations:v10 completion:{0.2, v12, v13, v14, v15, selfCopy4, v17, v18, v19, v20, selfCopy3, v22, v23, v24, v25, selfCopy2, v27, v28, v29, v30, selfCopy}];
      return;
    }

    [(UIView *)solidBackgroundView setHidden:1];
  }

  else
  {
    if (!isHidden)
    {
      return;
    }

    [(UIView *)self->_solidBackgroundView setHidden:0];
    if (animatedCopy)
    {
      [(UIView *)self->_solidBackgroundView setAlpha:0.0];
      v8 = MEMORY[0x1E69DD250];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __60__PUPhotoEditMediaToolController__updateBackgroundAnimated___block_invoke_3;
      v20 = &unk_1E7B80DD0;
      selfCopy3 = self;
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __60__PUPhotoEditMediaToolController__updateBackgroundAnimated___block_invoke_4;
      v15 = &unk_1E7B7F020;
      selfCopy4 = self;
      v9 = &v17;
      v10 = &v12;
      goto LABEL_8;
    }

    [(_UIBackdropView *)self->_backdropBackgroundView setHidden:1];
    v11 = self->_solidBackgroundView;

    [(UIView *)v11 setAlpha:1.0];
  }
}

uint64_t __60__PUPhotoEditMediaToolController__updateBackgroundAnimated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1224) setHidden:*(*(a1 + 32) + 1497)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1216);
  v4 = (*(v2 + 1497) & 1) == 0;

  return [v3 setHidden:v4];
}

uint64_t __60__PUPhotoEditMediaToolController__updateBackgroundAnimated___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 1224) setHidden:*(*(a1 + 32) + 1497)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1216);
  v4 = (*(v2 + 1497) & 1) == 0;

  return [v3 setHidden:v4];
}

- (id)trailingToolbarViews
{
  array = [MEMORY[0x1E695DF70] array];
  _wantsPortraitVideoControls = [(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls];
  if (self->_muteButton)
  {
    v5 = !_wantsPortraitVideoControls;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    [array addObject:?];
  }

  if (self->_stabilizeProgressView)
  {
    [array addObject:?];
  }

  if (self->_stabilizeButton)
  {
    [array addObject:?];
  }

  if (self->_rateButton)
  {
    [array addObject:?];
  }

  if ([array count])
  {
    v6 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)centerToolbarView
{
  livePhotoButton = self->_livePhotoButton;
  if (!livePhotoButton)
  {
    livePhotoButton = self->_portraitVideoButton;
    if (!livePhotoButton)
    {
      livePhotoButton = self->_videoLabelView;
    }
  }

  return livePhotoButton;
}

- (id)leadingToolbarViews
{
  array = [MEMORY[0x1E695DF70] array];
  _wantsPortraitVideoControls = [(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls];
  if (self->_muteButton && !_wantsPortraitVideoControls)
  {
    [array addObject:?];
  }

  if (self->_autoFocusButton)
  {
    [array addObject:?];
  }

  if (self->_apertureButtonContainer)
  {
    [array addObject:?];
  }

  if ([array count])
  {
    v5 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPrimaryView:(id)view
{
  viewCopy = view;
  primaryView = self->_primaryView;
  if (primaryView != viewCopy)
  {
    v10 = viewCopy;
    view = [(PUPhotoEditMediaToolController *)self view];
    v8 = [(UIView *)primaryView isDescendantOfView:view];

    if (v8)
    {
      [(UIView *)self->_primaryView removeFromSuperview];
    }

    objc_storeStrong(&self->_primaryView, view);
    view2 = [(PUPhotoEditMediaToolController *)self view];
    [view2 addSubview:self->_primaryView];

    [(PUPhotoEditMediaToolController *)self _invalidateConstraints];
    viewCopy = v10;
  }
}

- (void)setVerticalButtonOffset:(double)offset
{
  if (self->_verticalButtonOffset != offset)
  {
    self->_verticalButtonOffset = offset;
    [(PUPhotoEditMediaToolController *)self _invalidateConstraints];
  }
}

- (void)setHorizontalControlPadding:(double)padding
{
  if (self->_horizontalControlPadding != padding)
  {
    self->_horizontalControlPadding = padding;
    [(PUPhotoEditMediaToolController *)self _invalidateConstraints];
  }
}

- (void)setUseGradientBackground:(BOOL)background animated:(BOOL)animated
{
  if (self->_useTranslucentBackground != background)
  {
    self->_useTranslucentBackground = background;
    [(PUPhotoEditMediaToolController *)self _updateBackgroundAnimated:animated];
  }
}

- (void)setBackdropViewGroupName:(id)name
{
  nameCopy = name;
  backdropViewGroupName = [(PUPhotoEditToolController *)self backdropViewGroupName];
  v6 = [backdropViewGroupName isEqualToString:nameCopy];

  if ((v6 & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = PUPhotoEditMediaToolController;
    [(PUPhotoEditToolController *)&v8 setBackdropViewGroupName:nameCopy];
    backdropViewGroupName2 = [(PUPhotoEditToolController *)self backdropViewGroupName];
    [(_UIBackdropView *)self->_backdropBackgroundView setGroupName:backdropViewGroupName2];
  }
}

- (void)mediaViewInsetsUpdated
{
  [(PUPhotoEditMediaToolController *)self _invalidateConstraints];

  [(PUPhotoEditMediaToolController *)self updateViewConstraints];
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  [(PUPhotoEditMediaToolController *)self _updateAutoFocusToolbarButton:environment];

  [(PUPhotoEditMediaToolController *)self _updateRateToolbarButton];
}

- (id)accessibilityHUDItemForButton:(id)button
{
  buttonCopy = button;
  if (![buttonCopy isEqual:self->_livePhotoButton])
  {
    goto LABEL_5;
  }

  if (![buttonCopy state])
  {
    _localizedTitleForCurrentPlaybackVariation = PULocalizedString(@"PHOTOEDIT_LIVE_SWITCH_OFF");
    v6 = @"PULivePhotoOff";
    goto LABEL_11;
  }

  if ([buttonCopy state] != 4)
  {
LABEL_5:
    localizedUppercaseString = 0;
    v8 = 0;
LABEL_6:
    v14.receiver = self;
    v14.super_class = PUPhotoEditMediaToolController;
    v9 = [(PUPhotoEditToolController *)&v14 accessibilityHUDItemForButton:buttonCopy];
    goto LABEL_7;
  }

  _localizedTitleForCurrentPlaybackVariation = [(PUPhotoEditMediaToolController *)self _localizedTitleForCurrentPlaybackVariation];
  v6 = @"PULivePhotoOn";
LABEL_11:
  localizedUppercaseString = [_localizedTitleForCurrentPlaybackVariation localizedUppercaseString];
  v12 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:v6];
  v8 = [v12 imageWithRenderingMode:2];

  if (!localizedUppercaseString || !v8)
  {
    goto LABEL_6;
  }

  v13 = objc_alloc(MEMORY[0x1E69DC618]);
  v9 = [v13 initWithTitle:localizedUppercaseString image:v8 imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
LABEL_7:
  v10 = v9;

  return v10;
}

- (void)mediaView:(id)view didZoom:(double)zoom
{
  [(PUVideoEditOverlayViewController *)self->_overlayController renderDidChange:1, zoom];
  trimController = [(PUPhotoEditMediaToolController *)self trimController];
  [trimController mediaViewDidZoom];
}

- (void)decreaseScrubberValue:(BOOL)value
{
  trimController = self->_trimController;
  if (value)
  {
    v4 = -6;
  }

  else
  {
    v4 = -1;
  }

  [(PUTrimToolController *)trimController stepByCount:v4];
}

- (void)increaseScrubberValue:(BOOL)value
{
  trimController = self->_trimController;
  if (value)
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  [(PUTrimToolController *)trimController stepByCount:v4];
}

- (void)configureForAdjustmentCategory:(int64_t)category
{
  if (category == 12 && [(PUPhotoEditMediaToolController *)self _wantsRateControl]&& ([(PUPhotoEditToolbarButton *)self->_rateButton isHeld]& 1) == 0)
  {
    contextMenuInteraction = [(PUPhotoEditToolbarButton *)self->_rateButton contextMenuInteraction];
    [contextMenuInteraction _presentMenuAtLocation:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }
}

- (void)compositionControllerDidChangeForAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];

  v6 = MEMORY[0x1E695DFD8];
  nonVisualAdjustmentTypes = [adjustmentConstants nonVisualAdjustmentTypes];
  v8 = [v6 setWithArray:nonVisualAdjustmentTypes];
  v9 = [adjustmentsCopy isSubsetOfSet:v8];

  if ((v9 & 1) == 0)
  {
    [(PUPhotoEditMediaToolController *)self _invalidateTrimControlScrubberThumbnails];
  }

  pIPortraitVideoAdjustmentKey = [adjustmentConstants PIPortraitVideoAdjustmentKey];
  v11 = [adjustmentsCopy containsObject:pIPortraitVideoAdjustmentKey];

  if (v11)
  {
    playerWrapper = [(PUTrimToolController *)self->_trimController playerWrapper];
    [playerWrapper pause];

    [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
  }

  pITrimAdjustmentKey = [adjustmentConstants PITrimAdjustmentKey];
  v14 = [adjustmentsCopy containsObject:pITrimAdjustmentKey];

  if (v14)
  {
    [(PUVideoEditOverlayViewController *)self->_overlayController frameTimeDidChange];
  }

  pISlomoAdjustmentKey = [adjustmentConstants PISlomoAdjustmentKey];
  v16 = [adjustmentsCopy containsObject:pISlomoAdjustmentKey];

  if (v16)
  {
    isSlomoEnabled = [(PUTrimToolController *)self->_trimController isSlomoEnabled];
    _isSlomoEnabled = [(PUPhotoEditMediaToolController *)self _isSlomoEnabled];
    [(PUTrimToolController *)self->_trimController setSlomoEnabled:[(PUPhotoEditMediaToolController *)self _isSlomoEnabled]];
    if (isSlomoEnabled != _isSlomoEnabled)
    {
      [(PUPhotoEditMediaToolController *)self _updateRateToolbarButton];
      [(PUPhotoEditMediaToolController *)self _invalidateConstraints];
    }

    if ([(PUPhotoEditToolbarButton *)self->_rateButton isHeld])
    {
      [(PUPhotoEditMediaToolController *)self _updateRateToolbarButton];
    }
  }

  [(PUPhotoEditMediaToolController *)self _updateMuteButtonAnimated:1];
  [(PUPhotoEditMediaToolController *)self _updateStabilizeButtonAnimated:1];
  [(PUPhotoEditMediaToolController *)self _updatePortraitVideoButtonAnimated:1];
  [(PUPhotoEditMediaToolController *)self _updateApertureControlsAnimated:1];
  trimController = [(PUPhotoEditMediaToolController *)self trimController];
  [trimController compositionControllerDidChangeForAdjustments:adjustmentsCopy];
}

- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator
{
  v7.receiver = self;
  v7.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v7 setupWithAsset:asset compositionController:controller editSource:source valuesCalculator:calculator];
  if ([(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls])
  {
    [(PUPhotoEditMediaToolController *)self _initializeCinematographyScript];
  }
}

- (void)_showPrimaryViewIfNeeded
{
  if (self->_constraints)
  {
    primaryView = [(PUPhotoEditMediaToolController *)self primaryView];
    [primaryView alpha];
    v5 = v4;

    if (v5 < 1.0)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __58__PUPhotoEditMediaToolController__showPrimaryViewIfNeeded__block_invoke;
      v6[3] = &unk_1E7B80DD0;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.2];
    }
  }
}

void __58__PUPhotoEditMediaToolController__showPrimaryViewIfNeeded__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) primaryView];
  [v1 setAlpha:1.0];
}

- (void)didResignActiveTool
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v4 didResignActiveTool];
  primaryView = [(PUPhotoEditMediaToolController *)self primaryView];
  [primaryView setAlpha:0.0];
}

- (void)willResignActiveTool
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v3 willResignActiveTool];
  self->_isActiveTool = 0;
  if ([(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls])
  {
    [(PUPhotoEditMediaToolController *)self _updateTrackerDisplay:0];
  }

  [(PUTrimToolController *)self->_trimController willHideTrimTool];
}

- (void)reactivate
{
  if (self->_apertureButton)
  {
    [(PUPhotoEditMediaToolController *)self _handleApertureButton:0];
  }
}

- (void)didBecomeActiveTool
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v3 didBecomeActiveTool];
  self->_isActiveTool = 1;
  [(PUPhotoEditMediaToolController *)self _invalidateConstraints];
  [(PUPhotoEditMediaToolController *)self updateViewConstraints];
  [(PUPhotoEditMediaToolController *)self _showPrimaryViewIfNeeded];
}

- (void)willBecomeActiveTool
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v3 willBecomeActiveTool];
  [(PUPhotoEditMediaToolController *)self _updateTrimControlAndToolbarButtons];
  [(PUPhotoEditMediaToolController *)self _resetDefaultToolMode];
  if ([(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls])
  {
    [(PUPhotoEditMediaToolController *)self _updateTrackerDisplay:0];
  }

  [(PUTrimToolController *)self->_trimController willShowTrimTool];
}

- (void)setPlaceholderImage:(id)image
{
  trimController = self->_trimController;
  imageCopy = image;
  [(PUTrimToolController *)trimController setPlaceholderImage:imageCopy];
  [(PUTrimToolController *)self->_trimController livePhotoRenderDidChange:self->_trimControllerScrubberNeedsVisualUpdate];
  self->_trimControllerScrubberNeedsVisualUpdate = 0;
  v6.receiver = self;
  v6.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v6 setPlaceholderImage:imageCopy];
}

- (void)baseMediaInvalidated
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v3 baseMediaInvalidated];
  [(PUPhotoEditMediaToolController *)self _updateTrimControlAndToolbarButtons];
}

- (void)updateForIncomingAnimation
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v3 updateForIncomingAnimation];
  [(PUPhotoEditMediaToolController *)self _updateTrimControlAndToolbarButtons];
}

- (void)setOriginalStillImageTime:(id *)time
{
  v7.receiver = self;
  v7.super_class = PUPhotoEditMediaToolController;
  v6 = *time;
  [(PUPhotoEditToolController *)&v7 setOriginalStillImageTime:&v6];
  var3 = time->var3;
  *&self->_originalStillImageTime.value = *&time->var0;
  self->_originalStillImageTime.epoch = var3;
  [(PUPhotoEditMediaToolController *)self _updateTrimControlAndToolbarButtons];
}

- (id)toolbarIconAccessibilityLabel
{
  v3 = PULocalizedString(@"PHOTOEDIT_MEDIA_TOOLBAR_LIVE_PHOTO_BUTTON_AX_LABEL");
  delegate = [(PUPhotoEditToolController *)self delegate];
  isStandardVideo = [delegate isStandardVideo];

  if (isStandardVideo)
  {
    v6 = PULocalizedString(@"PHOTOEDIT_MEDIA_TOOLBAR_VIDEO_BUTTON_AX_LABEL");

    v3 = v6;
  }

  return v3;
}

- (id)selectedToolbarIconGlyphName
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  isPortraitVideo = [delegate isPortraitVideo];

  if (isPortraitVideo)
  {
    return @"cinematic.video.fill";
  }

  delegate2 = [(PUPhotoEditToolController *)self delegate];
  isStandardVideo = [delegate2 isStandardVideo];

  if (isStandardVideo)
  {
    return @"video.fill";
  }

  else
  {
    return @"livephoto";
  }
}

- (id)toolbarIconGlyphName
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  isPortraitVideo = [delegate isPortraitVideo];

  if (isPortraitVideo)
  {
    return @"cinematic.video";
  }

  delegate2 = [(PUPhotoEditToolController *)self delegate];
  isStandardVideo = [delegate2 isStandardVideo];

  if (isStandardVideo)
  {
    return @"video";
  }

  else
  {
    return @"livephoto";
  }
}

- (id)localizedName
{
  v3 = PULocalizedString(@"PHOTOEDIT_LIVEPHOTO_TOOL_BUTTON");
  delegate = [(PUPhotoEditToolController *)self delegate];
  isStandardVideo = [delegate isStandardVideo];

  if (isStandardVideo)
  {
    v6 = PULocalizedString(@"PHOTOEDIT_VIDEO_TOOL_BUTTON");

    v3 = v6;
  }

  return v3;
}

- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v27.receiver = self;
  v27.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v27 setLayoutOrientation:orientation withTransitionCoordinator:coordinatorCopy];
  livePhotoButton = self->_livePhotoButton;
  self->_livePhotoButton = 0;

  muteButton = self->_muteButton;
  self->_muteButton = 0;

  videoLabelView = self->_videoLabelView;
  self->_videoLabelView = 0;

  stabilizeButton = self->_stabilizeButton;
  self->_stabilizeButton = 0;

  stabilizeProgressView = self->_stabilizeProgressView;
  self->_stabilizeProgressView = 0;

  portraitVideoButtonDimmingView = self->_portraitVideoButtonDimmingView;
  self->_portraitVideoButtonDimmingView = 0;

  portraitVideoButton = self->_portraitVideoButton;
  self->_portraitVideoButton = 0;

  apertureButtonContainerDimmingView = self->_apertureButtonContainerDimmingView;
  self->_apertureButtonContainerDimmingView = 0;

  apertureButton = self->_apertureButton;
  self->_apertureButton = 0;

  apertureButtonContainer = self->_apertureButtonContainer;
  self->_apertureButtonContainer = 0;

  autoFocusButton = self->_autoFocusButton;
  self->_autoFocusButton = 0;

  rateButton = self->_rateButton;
  self->_rateButton = 0;

  v19 = self->_overlayController;
  if (![(PUVideoEditOverlayViewController *)v19 isHidden])
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __81__PUPhotoEditMediaToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke;
    v24[3] = &unk_1E7B7AC08;
    v25 = v19;
    selfCopy = self;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__PUPhotoEditMediaToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke_2;
    v22[3] = &unk_1E7B7DC38;
    v23 = v25;
    [coordinatorCopy animateAlongsideTransition:v24 completion:v22];
  }

  trimController = [(PUPhotoEditMediaToolController *)self trimController];
  [trimController setLayoutOrientation:orientation];

  asset = [(PUPhotoEditToolController *)self asset];

  if (asset)
  {
    [(PUPhotoEditMediaToolController *)self _updateTrimControlAndToolbarButtons];
  }

  [(PUPhotoEditMediaToolController *)self _invalidateConstraints];
}

uint64_t __81__PUPhotoEditMediaToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHidden:1 animated:0];
  v2 = *(a1 + 40);

  return [v2 _updateApertureSliderLength];
}

uint64_t __81__PUPhotoEditMediaToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) renderDidChange:1];
  v2 = *(a1 + 32);

  return [v2 setHidden:0 animated:1];
}

- (void)_updateToolVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = self->_toolMode == 1;
  [(PUPhotoEditToolController *)self setToolGradientDistance:66.0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__PUPhotoEditMediaToolController__updateToolVisibilityAnimated___block_invoke;
  aBlock[3] = &unk_1E7B7FF98;
  aBlock[4] = self;
  v11 = v5;
  v6 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PUPhotoEditMediaToolController__updateToolVisibilityAnimated___block_invoke_2;
  v8[3] = &unk_1E7B7DC88;
  v8[4] = self;
  v9 = v5;
  v7 = _Block_copy(v8);
  if (animatedCopy)
  {
    [(UIView *)self->_apertureContainer setHidden:0];
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v6 options:v7 animations:0.25 completion:0.0];
  }

  else
  {
    v6[2](v6);
    v7[2](v7, 1);
  }
}

uint64_t __64__PUPhotoEditMediaToolController__updateToolVisibilityAnimated___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 1408) setAlpha:v1];
}

- (void)_invalidateConstraints
{
  view = [(PUPhotoEditMediaToolController *)self view];
  [view setNeedsUpdateConstraints];

  if ([(NSMutableArray *)self->_constraints count])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
    constraints = self->_constraints;

    [(NSMutableArray *)constraints removeAllObjects];
  }
}

- (void)updateViewConstraints
{
  v189[4] = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_constraints count])
  {
    view = [(PUPhotoEditMediaToolController *)self view];
    window = [view window];

    if (window)
    {
      view2 = [(PUPhotoEditMediaToolController *)self view];
      v6 = self->_containerView;
      primaryView = [(PUPhotoEditMediaToolController *)self primaryView];
      [primaryView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PUPhotoEditMediaToolController *)self horizontalControlPadding];
      v9 = v8;
      leadingAnchor = [view2 leadingAnchor];
      leadingAnchor2 = [(UIView *)v6 leadingAnchor];
      v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v12 setActive:1];

      trailingAnchor = [view2 trailingAnchor];
      trailingAnchor2 = [(UIView *)v6 trailingAnchor];
      v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v15 setActive:1];

      v182 = view2;
      bottomAnchor = [view2 bottomAnchor];
      bottomAnchor2 = [(UIView *)v6 bottomAnchor];
      v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v18 setActive:1];

      leadingAnchor3 = [(_UIBackdropView *)self->_backdropBackgroundView leadingAnchor];
      leadingAnchor4 = [(UIView *)v6 leadingAnchor];
      v21 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      [v21 setActive:1];

      trailingAnchor3 = [(_UIBackdropView *)self->_backdropBackgroundView trailingAnchor];
      trailingAnchor4 = [(UIView *)v6 trailingAnchor];
      v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      [v24 setActive:1];

      topAnchor = [(_UIBackdropView *)self->_backdropBackgroundView topAnchor];
      topAnchor2 = [(UIView *)v6 topAnchor];
      v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v27 setActive:1];

      bottomAnchor3 = [(_UIBackdropView *)self->_backdropBackgroundView bottomAnchor];
      bottomAnchor4 = [(UIView *)v6 bottomAnchor];
      v30 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      [v30 setActive:1];

      leadingAnchor5 = [(UIView *)self->_solidBackgroundView leadingAnchor];
      leadingAnchor6 = [(UIView *)v6 leadingAnchor];
      v33 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      [v33 setActive:1];

      trailingAnchor5 = [(UIView *)self->_solidBackgroundView trailingAnchor];
      trailingAnchor6 = [(UIView *)v6 trailingAnchor];
      v36 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      [v36 setActive:1];

      topAnchor3 = [(UIView *)self->_solidBackgroundView topAnchor];
      topAnchor4 = [(UIView *)v6 topAnchor];
      v39 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      [v39 setActive:1];

      bottomAnchor5 = [(UIView *)self->_solidBackgroundView bottomAnchor];
      bottomAnchor6 = [(UIView *)v6 bottomAnchor];
      v42 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      [v42 setActive:1];

      if (!primaryView)
      {
        constraints = self->_constraints;
        heightAnchor = [(UIView *)v6 heightAnchor];
        v89 = [heightAnchor constraintEqualToConstant:0.0];
        [(NSMutableArray *)constraints addObject:v89];

LABEL_37:
        [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];

        goto LABEL_38;
      }

      layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
      photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
      currentLayoutStyle = [photoEditSpec currentLayoutStyle];

      v174 = currentLayoutStyle;
      if (currentLayoutStyle == 4)
      {
        v46 = 27.0;
      }

      else
      {
        v46 = 8.0;
      }

      if (currentLayoutStyle != 4 && layoutOrientation == 1)
      {
        editSource = [(PUPhotoEditToolController *)self editSource];
        v48 = [editSource mediaType] == 3;

        v46 = dbl_1B3D0CF40[v48];
      }

      widthAnchor = [primaryView widthAnchor];
      v50 = [widthAnchor constraintEqualToConstant:477.0];

      LODWORD(v51) = 1144750080;
      [v50 setPriority:v51];
      v179 = v50;
      [(NSMutableArray *)self->_constraints addObject:v50];
      view3 = [(PUPhotoEditMediaToolController *)self view];
      window2 = [view3 window];

      v181 = primaryView;
      v176 = layoutOrientation;
      if (window2)
      {
        if (layoutOrientation != 1)
        {
          delegate = [(PUPhotoEditToolController *)self delegate];
          mediaView = [delegate mediaView];

          [mediaView bounds];
          v57 = v56;
          v59 = v58;
          v61 = v60;
          v63 = v62;
          [mediaView edgeInsets];
          v65 = v57 + v64;
          v67 = v59 + v66;
          v69 = v61 - (v64 + v68);
          v71 = v63 - (v66 + v70);
          view4 = [(PUPhotoEditMediaToolController *)self view];
          [view4 convertRect:mediaView fromView:{v65, v67, v69, v71}];
          v74 = v73;
          v76 = v75;
          v78 = v77;
          v80 = v79;

          v190.origin.x = v74;
          v190.origin.y = v76;
          v190.size.width = v78;
          v190.size.height = v80;
          MidX = CGRectGetMidX(v190);
          v82 = self->_constraints;
          centerXAnchor = [primaryView centerXAnchor];
          view5 = [(PUPhotoEditMediaToolController *)self view];
          leadingAnchor7 = [view5 leadingAnchor];
          v86 = [centerXAnchor constraintEqualToAnchor:leadingAnchor7 constant:MidX];
          [(NSMutableArray *)v82 addObject:v86];

          primaryView = v181;
LABEL_18:

LABEL_19:
          v105 = self->_constraints;
          v180 = v6;
          safeAreaLayoutGuide = [(UIView *)v6 safeAreaLayoutGuide];
          bottomAnchor7 = [safeAreaLayoutGuide bottomAnchor];
          bottomAnchor8 = [primaryView bottomAnchor];
          v109 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:v46];
          [(NSMutableArray *)v105 addObject:v109];

          if (self->_overlayController)
          {
            delegate2 = [(PUPhotoEditToolController *)self delegate];
            mediaView2 = [delegate2 mediaView];

            v160 = self->_constraints;
            view6 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
            leadingAnchor8 = [view6 leadingAnchor];
            leadingAnchor9 = [mediaView2 leadingAnchor];
            v166 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
            v189[0] = v166;
            view7 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
            trailingAnchor7 = [view7 trailingAnchor];
            trailingAnchor8 = [mediaView2 trailingAnchor];
            v159 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
            v189[1] = v159;
            view8 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
            topAnchor5 = [view8 topAnchor];
            topAnchor6 = [mediaView2 topAnchor];
            v114 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
            v189[2] = v114;
            view9 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
            bottomAnchor9 = [view9 bottomAnchor];
            bottomAnchor10 = [mediaView2 bottomAnchor];
            v118 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
            v189[3] = v118;
            v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:v189 count:4];
            [(NSMutableArray *)v160 addObjectsFromArray:v119];
          }

          if (v176 == 1)
          {
            apertureContainer = self->_apertureContainer;
            v135 = *(MEMORY[0x1E695EFD0] + 16);
            *&v185.a = *MEMORY[0x1E695EFD0];
            *&v185.c = v135;
            *&v185.tx = *(MEMORY[0x1E695EFD0] + 32);
            [(UIView *)apertureContainer setTransform:&v185];
            v175 = self->_constraints;
            widthAnchor2 = [v182 widthAnchor];
            widthAnchor3 = [(UIView *)self->_apertureContainer widthAnchor];
            v137 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
            v188[0] = v137;
            centerXAnchor2 = [v182 centerXAnchor];
            centerXAnchor3 = [(UIView *)self->_apertureContainer centerXAnchor];
            v140 = [centerXAnchor2 constraintEqualToAnchor:centerXAnchor3];
            v188[1] = v140;
            bottomAnchor11 = [v182 bottomAnchor];
            bottomAnchor12 = [(UIView *)self->_apertureContainer bottomAnchor];
            v143 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
            v188[2] = v143;
            v144 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:3];
            [(NSMutableArray *)v175 addObjectsFromArray:v144];

            v6 = v180;
            primaryView = v181;
          }

          else
          {
            v120 = objc_alloc_init(MEMORY[0x1E69DCC20]);
            apertureContainerLayoutGuide = self->_apertureContainerLayoutGuide;
            self->_apertureContainerLayoutGuide = v120;

            view10 = [(PUPhotoEditMediaToolController *)self view];
            [view10 addLayoutGuide:self->_apertureContainerLayoutGuide];

            v123 = self->_constraints;
            heightAnchor2 = [(UILayoutGuide *)self->_apertureContainerLayoutGuide heightAnchor];
            heightAnchor3 = [v182 heightAnchor];
            v126 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
            v187[0] = v126;
            centerYAnchor = [(UILayoutGuide *)self->_apertureContainerLayoutGuide centerYAnchor];
            centerYAnchor2 = [v182 centerYAnchor];
            v129 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
            v187[1] = v129;
            v130 = [MEMORY[0x1E695DEC8] arrayWithObjects:v187 count:2];
            [(NSMutableArray *)v123 addObjectsFromArray:v130];

            if ([(PUPhotoEditToolController *)self layoutOrientation]== 3 || [(PUPhotoEditToolController *)self layoutOrientation]== 2 || v174 == 4)
            {
              v131 = self->_constraints;
              rightAnchor = [(UILayoutGuide *)self->_apertureContainerLayoutGuide rightAnchor];
              rightAnchor2 = [v182 rightAnchor];
            }

            else
            {
              v131 = self->_constraints;
              rightAnchor = [(UILayoutGuide *)self->_apertureContainerLayoutGuide leftAnchor];
              rightAnchor2 = [v182 leftAnchor];
            }

            v145 = rightAnchor2;
            v146 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
            [(NSMutableArray *)v131 addObject:v146];

            v165 = self->_constraints;
            centerXAnchor4 = [(UIView *)self->_apertureContainer centerXAnchor];
            centerXAnchor5 = [(UILayoutGuide *)self->_apertureContainerLayoutGuide centerXAnchor];
            v171 = [centerXAnchor4 constraintEqualToAnchor:centerXAnchor5];
            v186[0] = v171;
            centerYAnchor3 = [(UIView *)self->_apertureContainer centerYAnchor];
            centerYAnchor4 = [(UILayoutGuide *)self->_apertureContainerLayoutGuide centerYAnchor];
            v163 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
            v186[1] = v163;
            widthAnchor4 = [(UIView *)self->_apertureContainer widthAnchor];
            heightAnchor4 = [(UILayoutGuide *)self->_apertureContainerLayoutGuide heightAnchor];
            v149 = [widthAnchor4 constraintEqualToAnchor:heightAnchor4];
            v186[2] = v149;
            heightAnchor5 = [(UIView *)self->_apertureContainer heightAnchor];
            widthAnchor5 = [(UILayoutGuide *)self->_apertureContainerLayoutGuide widthAnchor];
            v152 = [heightAnchor5 constraintEqualToAnchor:widthAnchor5];
            v186[3] = v152;
            v153 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:4];
            [(NSMutableArray *)v165 addObjectsFromArray:v153];

            if ([(PUPhotoEditToolController *)self layoutOrientation]== 3)
            {
              v154 = -1.57079633;
            }

            else
            {
              layoutOrientation2 = [(PUPhotoEditToolController *)self layoutOrientation];
              v156 = v174 == 4 || layoutOrientation2 == 2;
              v154 = 1.57079633;
              if (v156)
              {
                v154 = -1.57079633;
              }
            }

            v6 = v180;
            primaryView = v181;
            CGAffineTransformMakeRotation(&v184, v154);
            v157 = self->_apertureContainer;
            v185 = v184;
            [(UIView *)v157 setTransform:&v185];
          }

          goto LABEL_37;
        }

        v90 = self->_constraints;
        centerXAnchor6 = [primaryView centerXAnchor];
        view11 = [(PUPhotoEditMediaToolController *)self view];
        window3 = [view11 window];
        safeAreaLayoutGuide2 = [window3 safeAreaLayoutGuide];
        centerXAnchor7 = [safeAreaLayoutGuide2 centerXAnchor];
        v96 = [centerXAnchor6 constraintEqualToAnchor:centerXAnchor7];
        [(NSMutableArray *)v90 addObject:v96];

        primaryView = v181;
      }

      else if (layoutOrientation != 1)
      {
        goto LABEL_19;
      }

      [(PUPhotoEditMediaToolController *)self horizontalPrimaryViewPaddingOffset];
      v98 = v9 + v97;
      leadingAnchor10 = [primaryView leadingAnchor];
      leadingAnchor11 = [(UIView *)v6 leadingAnchor];
      mediaView = [leadingAnchor10 constraintGreaterThanOrEqualToAnchor:leadingAnchor11 constant:v98];

      LODWORD(v101) = *"";
      [mediaView setPriority:v101];
      [(NSMutableArray *)self->_constraints addObject:mediaView];
      trailingAnchor9 = [primaryView trailingAnchor];
      trailingAnchor10 = [(UIView *)v6 trailingAnchor];
      centerXAnchor = [trailingAnchor9 constraintLessThanOrEqualToAnchor:trailingAnchor10 constant:-v98];

      LODWORD(v104) = *"";
      [centerXAnchor setPriority:v104];
      [(NSMutableArray *)self->_constraints addObject:centerXAnchor];
      goto LABEL_18;
    }
  }

LABEL_38:
  v183.receiver = self;
  v183.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditMediaToolController *)&v183 updateViewConstraints];
}

- (void)_layoutToolGradient
{
  if (self->_apertureGradientView)
  {
    view = [(PUPhotoEditMediaToolController *)self view];
    [view bounds];
    v5 = v4;
    v7 = v6;

    [(UIView *)self->_apertureContainer bounds];
    [(CEKEdgeGradientView *)self->_apertureGradientView setFrame:?];
    layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
    if (v5 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    v10 = v9 * 0.03;
    v11 = v9 * 0.07;
    v12 = 44.0;
    if (layoutOrientation == 1)
    {
      v12 = 0.0;
    }

    [(CEKEdgeGradientView *)self->_apertureGradientView setGradientDimensions:v10, v11, v11, v10 + v12];
    apertureGradientView = self->_apertureGradientView;

    [(CEKEdgeGradientView *)apertureGradientView setContentInsets:50.0, 0.0, 0.0, 0.0];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v3 viewDidLayoutSubviews];
  [(PUPhotoEditMediaToolController *)self _layoutToolGradient];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v4 viewDidAppear:appear];
  self->_viewHasAppeared = 1;
  [(PUPhotoEditMediaToolController *)self _updateTrimControlAndToolbarButtons];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditMediaToolController *)&v4 viewIsAppearing:appearing];
  if (self->_isActiveTool)
  {
    [(PUPhotoEditMediaToolController *)self _invalidateConstraints];
    [(PUPhotoEditMediaToolController *)self updateViewConstraints];
    [(PUPhotoEditMediaToolController *)self _showPrimaryViewIfNeeded];
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  containerView = self->_containerView;
  self->_containerView = v3;

  v9 = objc_alloc_init(PUPhotoEditToolControllerView);
  [(PUPhotoEditToolControllerView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(PUPhotoEditToolControllerView *)v9 setBackgroundColor:clearColor];

  [(PUPhotoEditMediaToolController *)self setView:v9];
  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1132068864;
  [(UIView *)self->_containerView setContentHuggingPriority:0 forAxis:v6];
  [(PUPhotoEditToolControllerView *)v9 addSubview:self->_containerView];
  [(PUPhotoEditToolControllerView *)v9 insertSubview:self->_backdropBackgroundView belowSubview:self->_containerView];
  [(PUPhotoEditToolControllerView *)v9 insertSubview:self->_solidBackgroundView belowSubview:self->_containerView];
  v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
  apertureContainer = self->_apertureContainer;
  self->_apertureContainer = v7;

  [(UIView *)self->_apertureContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PUPhotoEditToolControllerView *)v9 addSubview:self->_apertureContainer];
  [(_UIBackdropView *)self->_backdropBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_solidBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (PUPhotoEditMediaToolController)init
{
  v14.receiver = self;
  v14.super_class = PUPhotoEditMediaToolController;
  v2 = [(PUPhotoEditToolController *)&v14 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    constraints = v2->_constraints;
    v2->_constraints = v3;

    v2->_horizontalControlPadding = 5.0;
    v2->_verticalButtonOffset = 0.0;
    v2->_horizontalPrimaryViewPaddingOffset = 0.0;
    v5 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:2030];
    backdropBackgroundView = v2->_backdropBackgroundView;
    v2->_backdropBackgroundView = v5;

    groupName = [(_UIBackdropView *)v2->_backdropBackgroundView groupName];
    [(PUPhotoEditMediaToolController *)v2 setBackdropViewGroupName:groupName];

    [(_UIBackdropView *)v2->_backdropBackgroundView setHidden:1];
    layer = [(_UIBackdropView *)v2->_backdropBackgroundView layer];
    [layer setAllowsGroupOpacity:0];

    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    solidBackgroundView = v2->_solidBackgroundView;
    v2->_solidBackgroundView = v9;

    [(UIView *)v2->_solidBackgroundView setAlpha:0.0];
    v11 = +[PUInterfaceManager currentTheme];
    photoEditingBackgroundColor = [v11 photoEditingBackgroundColor];
    [(UIView *)v2->_solidBackgroundView setBackgroundColor:photoEditingBackgroundColor];

    v2->_trimControllerScrubberNeedsVisualUpdate = 1;
    [(PUPhotoEditToolController *)v2 setHasMediaScrubber:1];
  }

  return v2;
}

@end