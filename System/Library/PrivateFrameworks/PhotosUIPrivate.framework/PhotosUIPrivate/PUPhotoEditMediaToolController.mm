@interface PUPhotoEditMediaToolController
- (BOOL)_isSlomoEnabled;
- (BOOL)_isTrimAllowed;
- (BOOL)_updateAutoFocusToolbarButton;
- (BOOL)_wantsPortraitVideoControls;
- (BOOL)_wantsRateControl;
- (BOOL)_wantsTrimControl;
- (BOOL)apertureToolbarShouldRotateLabelsWithOrientation:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)hasTrimmedVideo;
- (PUPhotoEditMediaToolController)init;
- (id)_localizedTitleForCurrentPlaybackVariation;
- (id)_rateToolbarButtonMenuElements;
- (id)accessibilityHUDItemForButton:(id)a3;
- (id)axDescriptionForFocusDecisionAtTime:(id *)a3;
- (id)centerToolbarView;
- (id)leadingToolbarViews;
- (id)livePortraitBehaviorController;
- (id)localizedName;
- (id)makeTrimToolController;
- (id)selectedToolbarIconGlyphName;
- (id)toolbarIconAccessibilityLabel;
- (id)toolbarIconGlyphName;
- (id)trailingToolbarViews;
- (void)_handleAutoFocusButton:(id)a3;
- (void)_handleLivePhotoButton:(id)a3;
- (void)_handleMuteButton:(id)a3;
- (void)_handlePortraitVideoButton:(id)a3;
- (void)_handlePortraitVideoButtonLongPress:(id)a3;
- (void)_handleStabilizeButton:(id)a3;
- (void)_initializeCinematographyScript;
- (void)_invalidateConstraints;
- (void)_layoutToolGradient;
- (void)_presentPortraitVideoDebugControls;
- (void)_reportStabilizeProgress:(double)a3;
- (void)_setPlaybackRate:(double)a3;
- (void)_setToolMode:(int64_t)a3;
- (void)_showPrimaryViewIfNeeded;
- (void)_updateApertureControlsAnimated:(BOOL)a3;
- (void)_updateApertureSliderLength;
- (void)_updateBackgroundAnimated:(BOOL)a3;
- (void)_updateLivePhotoButtonAnimated:(BOOL)a3;
- (void)_updateMuteButtonAnimated:(BOOL)a3;
- (void)_updatePortraitVideoButtonAnimated:(BOOL)a3;
- (void)_updateRateToolbarButton;
- (void)_updateStabilizationInProgress:(BOOL)a3;
- (void)_updateStabilizeButtonAnimated:(BOOL)a3;
- (void)_updateStabilizeProgressViewAnimated:(BOOL)a3;
- (void)_updateToolVisibilityAnimated:(BOOL)a3;
- (void)_updateTrackerDisplay:(BOOL)a3;
- (void)_updateTrimControlAndToolbarButtons;
- (void)addCropToolGainMapIfNeeded;
- (void)apertureToolbar:(id)a3 didChangeValue:(double)a4;
- (void)apertureToolbar:(id)a3 didUpdateDepthActive:(BOOL)a4;
- (void)apertureToolbarDidStartSliding:(id)a3;
- (void)apertureToolbarDidStopSliding:(id)a3;
- (void)baseMediaInvalidated;
- (void)cineScriptBecameAvailable:(id)a3;
- (void)cineScriptCouldNotInitializeWithError:(id)a3;
- (void)cinematographyWasEdited;
- (void)cinematographyWasEditedAtTime:(id *)a3;
- (void)compositionControllerDidChangeForAdjustments:(id)a3;
- (void)configureForAdjustmentCategory:(int64_t)a3;
- (void)decreaseScrubberValue:(BOOL)a3;
- (void)didBecomeActiveTool;
- (void)didResignActiveTool;
- (void)disableCinematicUIForLoadingAsset;
- (void)increaseScrubberValue:(BOOL)a3;
- (void)interactionBegan;
- (void)loadView;
- (void)mediaView:(id)a3 didZoom:(double)a4;
- (void)mediaViewInsetsUpdated;
- (void)objectTrackingFinishedWithSuccess:(BOOL)a3;
- (void)objectTrackingStartedAtTime:(id *)a3;
- (void)reactivate;
- (void)reloadToolbarButtons:(BOOL)a3;
- (void)removeCropToolGainMap;
- (void)removeFocusDecisionAtTime:(id *)a3;
- (void)setBackdropViewGroupName:(id)a3;
- (void)setHorizontalControlPadding:(double)a3;
- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4;
- (void)setOriginalStillImageTime:(id *)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setPrimaryView:(id)a3;
- (void)setUseGradientBackground:(BOOL)a3 animated:(BOOL)a4;
- (void)setVerticalButtonOffset:(double)a3;
- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6;
- (void)togglePlayback:(id)a3;
- (void)trackedObjectWasUpdatedAtTime:(id *)a3 shouldStop:(BOOL *)a4;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)trimToolController:(id)a3 didBeginInteractivelyEditingElement:(int64_t)a4;
- (void)trimToolController:(id)a3 didEndInteractivelyEditingElement:(int64_t)a4;
- (void)trimToolControllerDidChange:(id)a3 state:(unint64_t)a4;
- (void)updateCinematicVideoControlsEnableState;
- (void)updateForIncomingAnimation;
- (void)updateToolbarButtonsAnimated:(BOOL)a3;
- (void)updateViewConstraints;
- (void)videoRenderingChanged;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewIsAppearing:(BOOL)a3;
- (void)willBecomeActiveTool;
- (void)willResignActiveTool;
@end

@implementation PUPhotoEditMediaToolController

- (void)apertureToolbar:(id)a3 didUpdateDepthActive:(BOOL)a4
{
  [(PXCinematicEditController *)self->_cinematographyController setCinematicAdjustmentActive:a4];

  [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
}

- (void)apertureToolbarDidStopSliding:(id)a3
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
  v4 = PULocalizedString(@"PHOTOEDIT_PORTRAIT_APERTURE_ACTION_TITLE");
  [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v4];

  [(PUPhotoEditApertureToolbar *)self->_apertureToolbar apertureValue];
  if (v5 == 0.0 && self->_lastKnownAperture > 0.0)
  {
    self->_suspendUIUpdatesFromComposition = 1;
    v6 = [(PUPhotoEditToolController *)self compositionController];
    v7 = [v6 adjustmentConstants];
    v8 = [v7 PIPortraitVideoAdjustmentKey];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__PUPhotoEditMediaToolController_apertureToolbarDidStopSliding___block_invoke;
    v9[3] = &unk_1E7B7B450;
    v9[4] = self;
    [v6 modifyAdjustmentWithKey:v8 modificationBlock:v9];

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

- (void)apertureToolbarDidStartSliding:(id)a3
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

- (BOOL)apertureToolbarShouldRotateLabelsWithOrientation:(id)a3
{
  v3 = [(PUPhotoEditToolController *)self photoEditSpec];
  v4 = [v3 currentLayoutStyle] == 4;

  return v4;
}

- (void)apertureToolbar:(id)a3 didChangeValue:(double)a4
{
  [(PXCinematicEditController *)self->_cinematographyController setCinematicAperture:a3, a4];

  [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
}

- (id)livePortraitBehaviorController
{
  v2 = [(PUPhotoEditToolController *)self delegate];
  v3 = [v2 livePortraitBehaviorController];

  return v3;
}

- (void)addCropToolGainMapIfNeeded
{
  v2 = [(PUPhotoEditToolController *)self delegate];
  [v2 addCropToolGainMapIfNeeded];
}

- (void)removeCropToolGainMap
{
  v2 = [(PUPhotoEditToolController *)self delegate];
  [v2 removeCropToolGainMap];
}

- (void)trimToolController:(id)a3 didEndInteractivelyEditingElement:(int64_t)a4
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  if ([(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls])
  {
    [(PUPhotoEditMediaToolController *)self _updateTrackerDisplay:1];
  }

  if ((a4 - 1) <= 1)
  {
    v6 = PULocalizedString(@"PHOTOEDIT_TRIM_ACTION_TITLE");
    [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v6];
  }

  v9 = [(PUTrimToolController *)self->_trimController playerWrapper];
  v7 = +[PUPhotoEditProtoSettings sharedInstance];
  v8 = [v7 pauseAfterMovingPlayhead];

  if (a4 != 2 && self->_wasPlayingBeforeBeginningToScrubVideo && (v8 & 1) == 0)
  {
    [v9 play];
  }
}

- (void)trimToolController:(id)a3 didBeginInteractivelyEditingElement:(int64_t)a4
{
  v6 = [(PUTrimToolController *)self->_trimController playerWrapper];
  self->_wasPlayingBeforeBeginningToScrubVideo = [v6 isPlaying];
  [v6 pause];
  if ((a4 - 1) > 1)
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

- (id)axDescriptionForFocusDecisionAtTime:(id *)a3
{
  cinematographyController = self->_cinematographyController;
  v6 = *a3;
  v4 = [(PXCinematicEditController *)cinematographyController axDescriptionForFocusDecisionAtTime:&v6];

  return v4;
}

- (void)removeFocusDecisionAtTime:(id *)a3
{
  v5 = objc_alloc(MEMORY[0x1E69C34C0]);
  cinematographyController = self->_cinematographyController;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PUPhotoEditMediaToolController_removeFocusDecisionAtTime___block_invoke;
  v9[3] = &__block_descriptor_56_e35_v16__0__PXCinematicEditController_8l;
  v10 = *a3;
  v7 = [v5 initWithCinematicController:cinematographyController changeBlock:v9];
  v8 = [(PUPhotoEditMediaToolController *)self undoManager];
  [v7 executeWithUndoManager:v8];
}

uint64_t __60__PUPhotoEditMediaToolController_removeFocusDecisionAtTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 removeFocusDecisionAtTime:&v3];
}

- (void)trimToolControllerDidChange:(id)a3 state:(unint64_t)a4
{
  v5 = a3;
  [(PUPhotoEditMediaToolController *)self _updateTrackerDisplay:1];
  v6 = [v5 state];

  if (!v6)
  {
    v7 = [(PUPhotoEditToolController *)self delegate];
    v8 = [v7 isStandardVideo];

    if (v8)
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

      v10 = [(PUPhotoEditToolController *)self valuesCalculator];
      v12 = v14;
      v13 = v15;
      [v10 setVideoFrameTime:&v12];

      v11 = [(PUPhotoEditToolController *)self valuesCalculator];
      [v11 precomputeImageValues];
    }
  }
}

- (BOOL)hasTrimmedVideo
{
  v3 = [(PUTrimToolController *)self->_trimController playerWrapper];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(PUTrimToolController *)self->_trimController playerWrapper];
    v6 = [v5 showsUntrimmed] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)interactionBegan
{
  v2 = [(PUTrimToolController *)self->_trimController playerWrapper];
  [v2 pause];
}

- (void)objectTrackingFinishedWithSuccess:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXCinematicEditController *)self->_cinematographyController focusTimelineDelegate];
  [v4 objectTrackingFinishedWithSuccess:v3];
}

- (void)trackedObjectWasUpdatedAtTime:(id *)a3 shouldStop:(BOOL *)a4
{
  v6 = [(PXCinematicEditController *)self->_cinematographyController focusTimelineDelegate];
  v7 = *a3;
  [v6 updateObjectTrackingProgressAtTime:&v7 shouldStop:a4];
}

- (void)objectTrackingStartedAtTime:(id *)a3
{
  v4 = [(PXCinematicEditController *)self->_cinematographyController focusTimelineDelegate];
  v5 = *a3;
  [v4 objectTrackingStartedAtTime:&v5];
}

- (void)updateCinematicVideoControlsEnableState
{
  if ([(PUPhotoEditMediaToolController *)self _updateAutoFocusToolbarButton])
  {
    v3 = [(PUPhotoEditToolController *)self delegate];
    [v3 toolControllerDidUpdateToolbar:self];
  }

  v4 = [(PXCinematicEditController *)self->_cinematographyController cinematicAdjustmentActive];
  v5 = [(PXCinematicEditController *)self->_cinematographyController isInAutoFocusState];
  v6 = [(PXCinematicEditController *)self->_cinematographyController canToggleBackToUserFocusState];
  v7 = v5 ^ 1;
  [(PUPhotoEditToolbarButton *)self->_autoFocusButton setSelected:v7 & 1];
  autoFocusButton = self->_autoFocusButton;

  [(PUPhotoEditToolbarButton *)autoFocusButton setEnabled:v4 & (v7 | v6)];
}

- (void)cinematographyWasEditedAtTime:(id *)a3
{
  v5 = [(PUTrimToolController *)self->_trimController playerWrapper];
  [v5 pause];

  v6 = objc_alloc(MEMORY[0x1E69C34C0]);
  cinematographyController = self->_cinematographyController;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__PUPhotoEditMediaToolController_cinematographyWasEditedAtTime___block_invoke;
  v10[3] = &__block_descriptor_56_e35_v16__0__PXCinematicEditController_8l;
  v11 = *a3;
  v8 = [v6 initWithCinematicController:cinematographyController changeBlock:v10];
  v9 = [(PUPhotoEditMediaToolController *)self undoManager];
  [v8 executeWithUndoManager:v9];

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
  v3 = [(PUTrimToolController *)self->_trimController playerWrapper];
  [v3 pause];

  [(PXCinematicEditController *)self->_cinematographyController cinematographyWasEdited];
  [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
  if ([(PUPhotoEditMediaToolController *)self _updateAutoFocusToolbarButton])
  {
    v4 = [(PUPhotoEditToolController *)self delegate];
    [v4 toolControllerDidUpdateToolbar:self];
  }
}

- (void)cineScriptCouldNotInitializeWithError:(id)a3
{
  self->_isLoadingCinematographyScript = 0;
  cinematographyController = self->_cinematographyController;
  self->_cinematographyController = 0;

  [(PUTrimToolController *)self->_trimController enableFocusTimeline:0];
  [(PUTrimToolController *)self->_trimController showFocusTimeline:0];
  [(PUVideoEditOverlayViewController *)self->_overlayController willMoveToParentViewController:0];
  [(PUPhotoEditMediaToolController *)self removeChildViewController:self->_overlayController];
  v5 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
  [v5 removeFromSuperview];

  overlayController = self->_overlayController;
  self->_overlayController = 0;
}

- (void)cineScriptBecameAvailable:(id)a3
{
  self->_isLoadingCinematographyScript = 0;
  [(PUVideoEditOverlayViewController *)self->_overlayController enableUIForCinematographyScriptLoad:1];
  [(PUTrimToolController *)self->_trimController enableUIForCinematographyScriptLoad:1];
  v4 = [(PUPhotoEditToolController *)self compositionController];
  v13 = [v4 portraitVideoAdjustmentController];

  if (v13)
  {
    v5 = [v13 enabled];
    trimController = self->_trimController;
    if (v5)
    {
      v7 = [(PUPhotoEditToolController *)self isActiveTool];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    trimController = self->_trimController;
  }

  [(PUTrimToolController *)trimController enableFocusTimeline:v7];
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
    v10 = [(PUPhotoEditToolController *)self delegate];
    [v10 toolControllerDidUpdateToolbar:self];
  }

  [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
  [(PUPhotoEditMediaToolController *)self _updateApertureControlsAnimated:0];
  apertureToolbar = self->_apertureToolbar;
  [(PXCinematicEditController *)self->_cinematographyController originalAperture];
  [(PUPhotoEditApertureToolbar *)apertureToolbar setOriginalApertureValueClosestTo:?];
  v12 = [(PUPhotoEditToolController *)self delegate];
  [v12 initialCinematographyLoadComplete];
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
  v3 = [(PUPhotoEditToolController *)self editSource];

  if (v3)
  {
    v4 = [(PUPhotoEditToolController *)self editSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PUPhotoEditToolController *)self editSource];

      if (v5)
      {
        v6 = objc_alloc_init(MEMORY[0x1E69C33B8]);
        cinematographyController = self->_cinematographyController;
        self->_cinematographyController = v6;

        [(PXCinematicEditController *)self->_cinematographyController setDelegate:self];
        [(PXCinematicEditController *)self->_cinematographyController setFocusTimelineDelegate:self->_trimController];
        v8 = self->_cinematographyController;
        v9 = [(PUPhotoEditToolController *)self asset];
        [(PXCinematicEditController *)v8 setAsset:v9 editSource:v5];

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
      v11 = [(PUPhotoEditToolController *)self editSource];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Cannot initialize cinematography; edit source is not a PLVideoEditSource: %@", &v12, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v5 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "Cannot initialize cinematography; edit source is nil", &v12, 2u);
    }
  }

LABEL_12:
}

- (void)_handleAutoFocusButton:(id)a3
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
  v7 = [(PUPhotoEditMediaToolController *)self undoManager];
  [v6 executeWithUndoManager:v7 completionHandler:&__block_literal_global_428];

  [(PUPhotoEditMediaToolController *)self cinematographyWasEdited];
  [(PUPhotoEditMediaToolController *)self _updateAutoFocusToolbarButton];
}

- (void)_updateApertureSliderLength
{
  if (self->_apertureToolbar)
  {
    v3 = [(PUPhotoEditToolController *)self photoEditSpec];
    v4 = [v3 shouldDisplayCompactToolbar];

    v5 = 0.0;
    if ((v4 & 1) == 0)
    {
      v6 = [(PUPhotoEditToolController *)self photoEditSpec];
      v7 = [v6 currentLayoutStyle];

      v8 = [(PUPhotoEditToolController *)self layoutOrientation];
      v9 = v7 != 4 && v8 == 1;
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
  v4 = [(PUPhotoEditToolController *)self compositionController];
  [(PUPortraitVideoDebugController *)v3 setCompositionController:v4];

  v5 = v3;
  [(PUPortraitVideoDebugController *)v5 loadViewIfNeeded];
  v6 = [(PUPhotoEditMediaToolController *)self view];
  v7 = [v6 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8 == 1)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];

    [(PUPortraitVideoDebugController *)v5 setTitle:@"Cinematic Debug Settings"];
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__dismissPortraitVideoDebugControls_];
    v17[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v12 = [(PUPortraitVideoDebugController *)v5 navigationItem];
    [v12 setRightBarButtonItems:v11];

    v13 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v14 = [(PUPortraitVideoDebugController *)v5 view];
    [v14 setBackgroundColor:v13];

    v15 = [(PUPortraitVideoDebugController *)v5 view];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:1];
  }

  else
  {
    [(PUPortraitVideoDebugController *)v5 setModalPresentationStyle:7];
    v16 = [(PUPortraitVideoDebugController *)v5 popoverPresentationController];
    [v16 setSourceView:self->_portraitVideoButton];
    [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton bounds];
    [v16 setSourceRect:?];
    [(PUPortraitVideoDebugController *)v5 setPreferredContentSize:580.0, 340.0];

    v9 = v5;
  }

  [(PUPhotoEditMediaToolController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_handlePortraitVideoButtonLongPress:(id)a3
{
  if ([a3 state] == 3)
  {

    [(PUPhotoEditMediaToolController *)self _presentPortraitVideoDebugControls];
  }
}

- (void)_handlePortraitVideoButton:(id)a3
{
  v4 = [(PUTrimToolController *)self->_trimController playerWrapper];
  [v4 pause];

  [(PUPhotoEditToolController *)self willModifyAdjustment];
  v5 = [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton isSelected];
  v6 = [(PUPhotoEditToolController *)self compositionController];
  v7 = [v6 adjustmentConstants];
  v8 = [v7 PIPortraitVideoAdjustmentKey];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__PUPhotoEditMediaToolController__handlePortraitVideoButton___block_invoke;
  v11[3] = &__block_descriptor_33_e45_v16__0__PIPortraitVideoAdjustmentController_8l;
  v12 = v5;
  [v6 modifyAdjustmentWithKey:v8 modificationBlock:v11];

  if (v5)
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

- (void)_setToolMode:(int64_t)a3
{
  if (self->_toolMode != a3)
  {
    self->_toolMode = a3;
    v5 = a3 == 1;
    v6 = [(PUPhotoEditToolController *)self delegate];
    [v6 toolController:self showVideoScrubber:v5 animated:v5];

    [(PUPhotoEditMediaToolController *)self _updateApertureControlsAnimated:1];

    [(PUPhotoEditMediaToolController *)self _updateTrimControlAndToolbarButtons];
  }
}

- (void)_updateApertureControlsAnimated:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(UIView *)self->_apertureButtonContainer superview];
    [v5 layoutIfNeeded];
  }

  v6 = [(PXCinematicEditController *)self->_cinematographyController cinematicAdjustmentActive];
  [(PXCinematicEditController *)self->_cinematographyController cinematicAperture];
  v8 = v7;
  [(CEKApertureButton *)self->_apertureButton setActive:self->_toolMode == 1];
  [(CEKApertureButton *)self->_apertureButton setApertureValue:v8];
  v9 = [(PUPhotoEditToolController *)self photoEditSpec];
  v10 = [v9 shouldAllowApertureButtonExpansion];

  toolMode = self->_toolMode;
  if (MEMORY[0x1B8C6D660]())
  {
    apertureButton = self->_apertureButton;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v15 = (toolMode != 1) & v6;
    if (v8 <= 0.0)
    {
      v15 = 0;
    }

    apertureButton = self->_apertureButton;
    v13 = v15 & v10;
    v14 = v3;
  }

  [(CEKApertureButton *)apertureButton setShouldShowApertureValue:v13 animated:v14];
  v16 = [(CEKApertureButton *)self->_apertureButton superview];
  [v16 setNeedsLayout];

  v17 = +[PUPhotoEditProtoSettings sharedInstance];
  v18 = [v17 apertureSliderHasOffPosition];

  apertureToolbar = self->_apertureToolbar;
  if ((v18 & 1) == 0)
  {
    [(PUPhotoEditApertureToolbar *)apertureToolbar setEnabled:v6];
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [(PUPhotoEditApertureToolbar *)apertureToolbar setDepthIsOn:v6];
  if (v6)
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
  if (v3)
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

- (void)_updateTrackerDisplay:(BOOL)a3
{
  v3 = a3;
  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  v6 = [v5 hideTrackersDuringPlayback];

  if (v6)
  {
    v7 = [(PUTrimToolController *)self->_trimController state]== 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton isSelected];
  toolMode = self->_toolMode;
  v10 = [(PUTrimToolController *)self->_trimController currentlyInteractingElement];
  overlayController = self->_overlayController;
  v12 = [(PUPhotoEditToolController *)self isActiveTool];
  isLoadingCinematographyScript = 1;
  if (v12 && !v7)
  {
    v14 = !v8 || toolMode == 1;
    if (!v14 && (v10 - 1) >= 2)
    {
      isLoadingCinematographyScript = self->_isLoadingCinematographyScript;
    }
  }

  [(PUVideoEditOverlayViewController *)overlayController setHidden:isLoadingCinematographyScript animated:v3];
}

- (void)_updatePortraitVideoButtonAnimated:(BOOL)a3
{
  if (self->_portraitVideoButton && self->_cinematographyController)
  {
    v4 = a3;
    v5 = [(PUPhotoEditToolController *)self compositionController];
    v12 = [v5 portraitVideoAdjustmentController];

    if (v12)
    {
      v6 = [v12 enabled];
    }

    else
    {
      v6 = 0;
    }

    [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton setSelected:v6];
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
    if (v6)
    {
      v11 = [(PUPhotoEditToolController *)self isActiveTool];
    }

    else
    {
      v11 = 0;
    }

    [(PUTrimToolController *)trimController enableFocusTimeline:v11];
    [(PUPhotoEditMediaToolController *)self _updateTrackerDisplay:v4];
  }
}

- (BOOL)_wantsPortraitVideoControls
{
  v2 = [(PUPhotoEditToolController *)self delegate];
  v3 = [v2 isPortraitVideo];

  return v3;
}

- (id)_rateToolbarButtonMenuElements
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 playbackRateOptions];

  v21 = [(PUPhotoEditToolController *)self compositionController];
  v5 = [v21 slomoAdjustmentController];
  v20 = v5;
  if (v5)
  {
    [v5 rate];
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
  obj = v4;
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
        v15 = [v12 localizedTitle];
        objc_initWeak(&location, self);
        v16 = MEMORY[0x1E69DC628];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __64__PUPhotoEditMediaToolController__rateToolbarButtonMenuElements__block_invoke;
        v23[3] = &unk_1E7B7ACF0;
        objc_copyWeak(&v24, &location);
        v25 = v14;
        v17 = [v16 actionWithTitle:v15 image:0 identifier:0 handler:v23];
        v18 = [v12 localizedSubtitle];
        [v17 setSubtitle:v18];

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
  v3 = [(PUPhotoEditMediaToolController *)self _wantsRateControl];
  rateButton = self->_rateButton;
  if (v3)
  {
    if (!rateButton)
    {
      v5 = [(PUPhotoEditToolController *)self photoEditSpec];
      v6 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"gauge.with.dots.needle.33percent" selectedImageNamed:@"gauge.with.dots.needle.33percent" accessibilityLabel:&stru_1F2AC6818 spec:v5];
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

- (void)_setPlaybackRate:(double)a3
{
  v5 = [(PUPhotoEditToolController *)self compositionController];
  v6 = [v5 slomoAdjustmentController];
  v7 = v6;
  if (v6)
  {
    [v6 rate];
  }

  else
  {
    v8 = 1.0;
  }

  if (v8 != a3)
  {
    [(PUPhotoEditToolController *)self willModifyAdjustment];
    if (a3 != 1.0 || (-[PUPhotoEditToolController asset](self, "asset"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 mediaSubtypes], v9, (v10 & 0x20000) != 0))
    {
      v11 = *MEMORY[0x1E69BE160];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __51__PUPhotoEditMediaToolController__setPlaybackRate___block_invoke;
      v13[3] = &unk_1E7B7ACC8;
      *&v13[5] = a3;
      v13[4] = self;
      [v5 modifyAdjustmentWithKey:v11 modificationBlock:v13];
    }

    else
    {
      [v5 removeAdjustmentWithKey:*MEMORY[0x1E69BE160]];
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
    v4 = [(PUPhotoEditToolController *)self delegate];
    v5 = [v4 isHighframeRateVideo];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)_isSlomoEnabled
{
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 isHighframeRateVideo];

  if (_os_feature_enabled_impl())
  {
    v5 = [(PUPhotoEditToolController *)self compositionController];
    v6 = [v5 slomoAdjustmentController];
    v7 = v6;
    if (v6)
    {
      [v6 rate];
      v4 = v8 < 1.0;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)_updateStabilizationInProgress:(BOOL)a3
{
  self->_stabilizationInProgress = a3;
  [(PUPhotoEditMediaToolController *)self _updateStabilizeButtonAnimated:1];

  [(PUPhotoEditMediaToolController *)self _updateStabilizeProgressViewAnimated:1];
}

- (void)_reportStabilizeProgress:(double)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__PUPhotoEditMediaToolController__reportStabilizeProgress___block_invoke;
  v3[3] = &unk_1E7B7FF70;
  v3[4] = self;
  *&v3[5] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)_updateStabilizeProgressViewAnimated:(BOOL)a3
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
    v8 = [(PLRoundProgressView *)self->_stabilizeProgressView widthAnchor];
    v9 = [v8 constraintEqualToConstant:20.0];
    v14[0] = v9;
    v10 = [(PLRoundProgressView *)self->_stabilizeProgressView heightAnchor];
    v11 = [v10 constraintEqualToConstant:20.0];
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

  v13 = [(PUPhotoEditToolController *)self delegate];
  [v13 toolControllerDidUpdateToolbar:self];
}

- (void)_handleStabilizeButton:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditToolController *)self compositionController];
  v6 = [v5 adjustmentConstants];
  v7 = [v5 videoStabilizeAdjustmentController];

  if (v7)
  {
    v8 = [v6 PIVideoStabilizeAdjustmentKey];
    [v5 modifyAdjustmentWithKey:v8 modificationBlock:&__block_literal_global_380_54290];
  }

  else if (!self->_stabilizationInProgress)
  {
    [(PUPhotoEditMediaToolController *)self _updateStabilizationInProgress:1];
    objc_initWeak(&location, self);
    v9 = objc_alloc(MEMORY[0x1E69BDF80]);
    v10 = [v5 composition];
    v11 = [v9 initWithComposition:v10];

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
    v16 = v5;
    v17 = v6;
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

- (void)_updateStabilizeButtonAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotoEditToolController *)self delegate];
  v6 = [v5 isStandardVideo];

  if (self->_stabilizeButton)
  {
    v7 = [(PUPhotoEditToolController *)self delegate];
    [v7 configureEnablenessOfControlButton:self->_stabilizeButton animated:v3 canVisuallyDisable:1];

    stabilizeButton = self->_stabilizeButton;
  }

  else
  {
    stabilizeButton = 0;
  }

  [(UIButton *)stabilizeButton setHidden:v6 ^ 1];
  [(UIButton *)self->_stabilizeButton setEnabled:v6];
  v16 = [(PUPhotoEditToolController *)self compositionController];
  v9 = [v16 videoStabilizeAdjustmentController];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 enabled];
  }

  else
  {
    v11 = 0;
  }

  v12 = +[PUInterfaceManager currentTheme];
  v13 = self->_stabilizeButton;
  if (v11)
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

- (void)_handleMuteButton:(id)a3
{
  v4 = MEMORY[0x1E69C34B8];
  v5 = [(PUPhotoEditToolController *)self compositionController];
  v6 = [(PUPhotoEditToolController *)self delegate];
  v8 = [v4 muteToggleActionWithCompositionController:v5 isLoopingVideo:{objc_msgSend(v6, "isLoopingVideo")}];

  v7 = [(PUPhotoEditMediaToolController *)self undoManager];
  [v8 executeWithUndoManager:v7 completionHandler:&__block_literal_global_54301];
}

- (void)_updateMuteButtonAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotoEditToolController *)self asset];
  if ([v5 isLivePhoto])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(PUPhotoEditToolController *)self delegate];
    if ([v7 isLoopingVideo])
    {
      v6 = 1;
    }

    else
    {
      v8 = [(PUPhotoEditToolController *)self delegate];
      v6 = [v8 isStandardVideo];
    }
  }

  v26 = [(PUPhotoEditToolController *)self compositionController];
  v9 = [v26 autoLoopAdjustmentController];
  v10 = [v9 flavor];
  v11 = [(PUPhotoEditToolController *)self delegate];
  if ([v11 isLoopingVideo])
  {
    v12 = PIAutoLoopFlavorFromString() != 2;
  }

  else
  {
    v12 = 1;
  }

  if (v6)
  {
    v13 = [(PUPhotoEditToolController *)self delegate];
    v14 = [v13 isVideoOn] & v12;
  }

  else
  {
    v14 = 0;
  }

  if (self->_muteButton)
  {
    v15 = [(PUPhotoEditToolController *)self delegate];
    [v15 configureEnablenessOfControlButton:self->_muteButton animated:v3 canVisuallyDisable:1];

    muteButton = self->_muteButton;
  }

  else
  {
    muteButton = 0;
  }

  [(PUPhotoEditToolbarButton *)muteButton setHidden:v6 ^ 1u];
  [(PUPhotoEditToolbarButton *)self->_muteButton setEnabled:v14];
  v17 = [(PUPhotoEditToolController *)self compositionController];
  v18 = [v17 adjustmentControllerForKey:*MEMORY[0x1E69BE048]];

  if (v18)
  {
    v19 = [v18 enabled];
  }

  else
  {
    v20 = [(PUPhotoEditToolController *)self delegate];
    v19 = [v20 hasLoopingVideoAdjustment];
  }

  v21 = +[PUInterfaceManager currentTheme];
  v22 = v21;
  if (v19)
  {
    v23 = [v21 photoEditingIrisDisabledColor];
    v24 = @"PHOTOEDIT_MUTE_BUTTON_AX_VALUE_ON";
  }

  else
  {
    v23 = [v21 photoEditingIrisEnabledColor];
    v24 = @"PHOTOEDIT_MUTE_BUTTON_AX_VALUE_OFF";
  }

  [(PUPhotoEditToolbarButton *)self->_muteButton setTintColor:v23];
  [(PUPhotoEditToolbarButton *)self->_muteButton setSelected:v19];
  v25 = PULocalizedString(v24);
  [(PUPhotoEditToolbarButton *)self->_muteButton setAccessibilityValue:v25];
}

- (id)_localizedTitleForCurrentPlaybackVariation
{
  v2 = [(PUPhotoEditToolController *)self compositionController];
  v3 = [v2 autoLoopAdjustmentController];
  v4 = [v3 flavor];

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

- (void)_handleLivePhotoButton:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PUPhotoEditMediaToolController__handleLivePhotoButton___block_invoke;
  aBlock[3] = &unk_1E7B7F020;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = [(PUPhotoEditToolController *)self delegate];
  v6 = [v5 isVideoOn];

  if (v6)
  {
    v4[2](v4, 1);
  }

  else
  {
    v7 = [(PUPhotoEditMediaToolController *)self livePortraitBehaviorController];
    v8 = [(PUPhotoEditToolController *)self compositionController];
    v9 = [v7 confirmationWarningStringForAction:4 compositionController:v8];

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

- (void)_updateLivePhotoButtonAnimated:(BOOL)a3
{
  if (self->_livePhotoButton)
  {
    v4 = a3;
    v5 = [(PUPhotoEditToolController *)self delegate];
    [v5 configureEnablenessOfControlButton:self->_livePhotoButton animated:v4 canVisuallyDisable:0];
  }

  v6 = [(PUPhotoEditToolController *)self asset];
  v7 = [v6 isLivePhotoVisibilityAdjustmentAllowed];

  [(PUPhotoEditToolActivationButton *)self->_livePhotoButton setHidden:v7 ^ 1u];
  v8 = [(PUPhotoEditToolController *)self delegate];
  -[PUPhotoEditToolActivationButton setSelected:](self->_livePhotoButton, "setSelected:", [v8 isVideoOn]);

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

- (void)togglePlayback:(id)a3
{
  v3 = [(PUTrimToolController *)self->_trimController playerWrapper];
  if ([v3 isPlaying])
  {
    [v3 pause];
  }

  else
  {
    [v3 play];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel_togglePlayback_ == a3)
  {
    v5 = [(PUTrimToolController *)self->_trimController playerWrapper];
    v6 = [v5 isReadyToPlay];

    return v6;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PUPhotoEditMediaToolController;
    return [PUPhotoEditMediaToolController canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }
}

- (void)updateToolbarButtonsAnimated:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v5 updateToolbarButtonsAnimated:?];
  [(PUPhotoEditMediaToolController *)self _updateLivePhotoButtonAnimated:v3];
  [(PUPhotoEditMediaToolController *)self _updateMuteButtonAnimated:v3];
  [(PUPhotoEditMediaToolController *)self _updateStabilizeButtonAnimated:v3];
  [(PUPhotoEditMediaToolController *)self _updatePortraitVideoButtonAnimated:v3];
  [(PUPhotoEditMediaToolController *)self _updateApertureControlsAnimated:v3];
}

- (void)reloadToolbarButtons:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotoEditToolController *)self editSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v6 = [(PUPhotoEditToolController *)self editSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }
  }

  if (v3)
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
  v3 = [(PUPhotoEditToolController *)self delegate];
  if ([v3 isLoopingVideo])
  {
  }

  else
  {
    v4 = [(PUPhotoEditToolController *)self delegate];
    v5 = [v4 isStandardVideo];

    if (!v5)
    {
      v15 = objc_alloc(MEMORY[0x1E69C3BD0]);
      v14 = [(PUPhotoEditToolController *)self delegate];
      v16 = [v14 mainLivePhotoView];
      v9 = [v15 initWithLivePhotoView:v16];

      goto LABEL_9;
    }
  }

  v6 = objc_alloc(MEMORY[0x1E69C3BD8]);
  v7 = [(PUPhotoEditToolController *)self delegate];
  v8 = [v7 mediaView];
  v9 = [v6 initWithNUMediaView:v8];

  v10 = [(PUPhotoEditToolController *)self delegate];
  LODWORD(v8) = [v10 isLoopingVideo];

  if (v8)
  {
    v11 = [MEMORY[0x1E69BDEF8] autoloopStabilizedVideoFilter];
    v26[0] = v11;
    v12 = v26;
  }

  else
  {
    v11 = [MEMORY[0x1E69BDEF8] stripAllTimeAdjustmentsFilter];
    v25 = v11;
    v12 = &v25;
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v9 setFullVideoPipelineFilters:v13];

  v14 = [(PUPhotoEditToolController *)self delegate];
  [v9 setPlayerItemSource:v14];
LABEL_9:

  v17 = [PUTrimToolController alloc];
  v18 = [(PUPhotoEditToolController *)self delegate];
  v19 = [v18 isStandardVideo];
  v20 = [(PUPhotoEditMediaToolController *)self _isSlomoEnabled];
  v21 = [(PUPhotoEditToolController *)self delegate];
  v22 = -[PUTrimToolController initWithPlayerWrapper:playButtonEnabled:slomoEnabled:portraitVideoEnabled:](v17, "initWithPlayerWrapper:playButtonEnabled:slomoEnabled:portraitVideoEnabled:", v9, v19, v20, [v21 isPortraitVideo]);

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
      v6 = [(PUPhotoEditToolController *)self photoEditSpec];
      v7 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"dot.viewfinder" selectedImageNamed:@"dot.circle.viewfinder" accessibilityLabel:v5 spec:v6];
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
  v3 = [(PUPhotoEditToolController *)self delegate];
  v155 = [v3 isStandardVideo];

  if ([(PUPhotoEditMediaToolController *)self _wantsTrimControl])
  {
    if (!self->_trimController)
    {
      v4 = [(PUPhotoEditMediaToolController *)self makeTrimToolController];
      trimController = self->_trimController;
      self->_trimController = v4;

      v6 = [(PUTrimToolController *)self->_trimController view];
      [v6 setAlpha:0.0];

      v7 = [(PUTrimToolController *)self->_trimController view];
      [(PUPhotoEditMediaToolController *)self setPrimaryView:v7];

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
  v9 = [(PUPhotoEditToolController *)self delegate];
  v10 = [v9 toolControllerPlaceholderImage:self];
  [(PUTrimToolController *)v8 setPlaceholderImage:v10];

  v158 = [(PUPhotoEditToolController *)self compositionController];
  v11 = [v158 trimAdjustmentController];
  v154 = v11;
  v12 = MEMORY[0x1E69BE180];
  if (v11)
  {
    [v11 startTime];
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

  [v158 removeAdjustmentWithKey:*v12];
LABEL_15:
  [(PUTrimToolController *)self->_trimController setCompositionController:v158];
  v13 = self->_trimController;
  v14 = [(PUPhotoEditToolController *)self editSource];
  [(PUTrimToolController *)v13 setEditSource:v14];

  v15 = self->_trimController;
  *location = *&self->_originalStillImageTime.value;
  epoch = self->_originalStillImageTime.epoch;
  [(PUTrimToolController *)v15 setUnadjustedStillImageTime:location];
  v157 = [v158 copy];
  [v157 removeAdjustmentWithKey:*v12];
  [v157 removeAdjustmentWithKey:*MEMORY[0x1E69BE030]];
  v16 = [v157 trimAdjustmentController];
  v156 = v16;
  if (v16)
  {
    [v16 startTime];
    v16 = v156;
  }

  else
  {
    v171 = 0uLL;
    v172 = 0;
  }

  v17 = v16 == 0;
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
  v20 = [(PUPhotoEditToolController *)self asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = +[PUPhotoEditProtoSettings sharedInstance];
    v22 = [v21 showSuggestedKeyFrame];

    if (!v22)
    {
      goto LABEL_29;
    }

    v20 = [(PUPhotoEditToolController *)self asset];
    [v20 fetchPropertySetsIfNeeded];
    location[0] = 0;
    location[1] = 0;
    epoch = 0;
    v23 = [v20 mediaAnalysisProperties];
    v24 = v23;
    if (v23)
    {
      [v23 bestKeyFrameTime];
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
  v25 = [(PUPhotoEditToolController *)self delegate];
  v152 = [v25 fontForButtons];

  v153 = +[PUInterfaceManager currentTheme];
  objc_initWeak(location, self);
  v26 = [(PUPhotoEditToolController *)self editSource];
  v27 = [v26 mediaType] == 3;

  muteButton = self->_muteButton;
  if ((v27 | v155))
  {
    if (!muteButton)
    {
      v29 = PULocalizedString(@"PHOTOEDIT_MUTE_BUTTON_AX_LABEL");
      v30 = [(PUPhotoEditToolController *)self photoEditSpec];
      v31 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"speaker.wave.2.fill" selectedImageNamed:@"speaker.slash.fill" accessibilityLabel:v29 spec:v30];
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
      v34 = [v33 localizedUppercaseString];
      v35 = [PUPhotoEditToolActivationButton buttonWithTitle:v34];
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

        v42 = [MEMORY[0x1E69DC888] systemBackgroundColor];
        v43 = [v42 colorWithAlphaComponent:0.6];
        [(UIView *)self->_portraitVideoButtonDimmingView setBackgroundColor:v43];

        [(UIView *)self->_portraitVideoButtonDimmingView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton addSubview:self->_portraitVideoButtonDimmingView];
        v138 = MEMORY[0x1E696ACD8];
        v150 = [(UIView *)self->_portraitVideoButtonDimmingView leadingAnchor];
        v147 = [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton leadingAnchor];
        v144 = [v150 constraintEqualToAnchor:v147];
        v185[0] = v144;
        v141 = [(UIView *)self->_portraitVideoButtonDimmingView trailingAnchor];
        v44 = [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton trailingAnchor];
        v45 = [v141 constraintEqualToAnchor:v44];
        v185[1] = v45;
        v46 = [(UIView *)self->_portraitVideoButtonDimmingView topAnchor];
        v47 = [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton topAnchor];
        v48 = [v46 constraintEqualToAnchor:v47];
        v185[2] = v48;
        v49 = [(UIView *)self->_portraitVideoButtonDimmingView bottomAnchor];
        v50 = [(PUPhotoEditToolActivationButton *)self->_portraitVideoButton bottomAnchor];
        v51 = [v49 constraintEqualToAnchor:v50];
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
    v59 = [(PUPhotoEditMediaToolController *)self view];
    v60 = [v59 effectiveUserInterfaceLayoutDirection] != 1;

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

      v66 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v67 = [v66 colorWithAlphaComponent:0.6];
      [(UIView *)self->_apertureButtonContainerDimmingView setBackgroundColor:v67];

      [(UIView *)self->_apertureButtonContainerDimmingView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_apertureButtonContainer addSubview:self->_apertureButtonContainerDimmingView];
      v136 = MEMORY[0x1E696ACD8];
      v151 = [(UIView *)self->_apertureButtonContainerDimmingView leadingAnchor];
      v148 = [(UIView *)self->_apertureButtonContainer leadingAnchor];
      v145 = [v151 constraintEqualToAnchor:v148];
      v184[0] = v145;
      v142 = [(UIView *)self->_apertureButtonContainerDimmingView trailingAnchor];
      v139 = [(UIView *)self->_apertureButtonContainer trailingAnchor];
      v68 = [v142 constraintEqualToAnchor:v139];
      v184[1] = v68;
      v69 = [(UIView *)self->_apertureButtonContainerDimmingView topAnchor];
      v70 = [(UIView *)self->_apertureButtonContainer topAnchor];
      v71 = [v69 constraintEqualToAnchor:v70];
      v184[2] = v71;
      v72 = [(UIView *)self->_apertureButtonContainerDimmingView bottomAnchor];
      v73 = [(UIView *)self->_apertureButtonContainer bottomAnchor];
      v74 = [v72 constraintEqualToAnchor:v73];
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
      v77 = [(PUPhotoEditToolController *)self delegate];
      v78 = [v77 mediaView];

      v79 = [(PXCinematicEditController *)self->_cinematographyController cinematographyScript];
      v80 = v79;
      if (v78 && v79)
      {
        v81 = [[PUVideoEditOverlayViewController alloc] initWithMediaView:v78 cineController:self->_cinematographyController];
        v82 = self->_overlayController;
        self->_overlayController = v81;

        [(PUVideoEditOverlayViewController *)self->_overlayController setOverlayControllerDelegate:self];
        v83 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
        [v83 setTranslatesAutoresizingMaskIntoConstraints:0];

        [(PUPhotoEditMediaToolController *)self addChildViewController:self->_overlayController];
        [(PUVideoEditOverlayViewController *)self->_overlayController didMoveToParentViewController:self];
        v84 = [(PUPhotoEditMediaToolController *)self view];
        v85 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
        [v84 insertSubview:v85 atIndex:0];
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
      v90 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      [(UIView *)apertureContainer addSubview:v90];

      [(UIView *)self->_apertureContainer setHidden:1];
      v132 = [(PUPhotoEditMediaToolController *)self view];
      v146 = [(UIView *)self->_apertureContainer widthAnchor];
      v149 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      v143 = [v149 widthAnchor];
      v140 = [v146 constraintEqualToAnchor:v143];
      v183[0] = v140;
      v135 = [(UIView *)self->_apertureContainer centerXAnchor];
      v137 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      v134 = [v137 centerXAnchor];
      v133 = [v135 constraintEqualToAnchor:v134];
      v183[1] = v133;
      v91 = [(UIView *)self->_apertureContainer heightAnchor];
      v92 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      v93 = [v92 heightAnchor];
      v94 = [v91 constraintEqualToAnchor:v93];
      v183[2] = v94;
      v95 = [(UIView *)self->_apertureContainer bottomAnchor];
      v96 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      v97 = [v96 bottomAnchor];
      v98 = [v95 constraintEqualToAnchor:v97];
      v183[3] = v98;
      v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v183 count:4];
      [v132 addConstraints:v99];

      v100 = [(PUPhotoEditToolController *)self photoEditSpec];
      LOBYTE(v99) = [v100 currentLayoutStyle] == 4;

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
      v104 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
      [v104 removeFromSuperview];

      v105 = self->_overlayController;
      self->_overlayController = 0;
    }

    v106 = self->_apertureToolbar;
    if (v106)
    {
      [(PUPhotoEditApertureToolbar *)v106 removeFromParentViewController];
      v107 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      [v107 removeFromSuperview];

      v108 = self->_apertureToolbar;
      self->_apertureToolbar = 0;

      v109 = self->_apertureGradientView;
      self->_apertureGradientView = 0;
    }
  }

  [(PUPhotoEditMediaToolController *)self _updateRateToolbarButton];
  [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
  v110 = +[PUPhotoEditProtoSettings sharedInstance];
  v111 = [v110 enableVideoStabilizion];

  if ((v111 & v155) != 0 && !self->_stabilizeButton)
  {
    v112 = objc_alloc_init(MEMORY[0x1E69DC738]);
    stabilizeButton = self->_stabilizeButton;
    self->_stabilizeButton = v112;

    [(UIButton *)self->_stabilizeButton addTarget:self action:sel__handleStabilizeButton_ forControlEvents:64];
    [(UIButton *)self->_stabilizeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v114 = [MEMORY[0x1E69DCAD8] configurationWithFont:v152];
    v115 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"s.square"];
    v116 = [v115 imageWithSymbolConfiguration:v114];

    v117 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"s.square.fill"];
    v118 = [v117 imageWithSymbolConfiguration:v114];

    [(UIButton *)self->_stabilizeButton setImage:v116 forState:0];
    [(UIButton *)self->_stabilizeButton setImage:v118 forState:4];
  }

  v119 = [(PUPhotoEditToolController *)self asset];
  v120 = [v119 isLivePhotoVisibilityAdjustmentAllowed];

  livePhotoButton = self->_livePhotoButton;
  if (v120)
  {
    if (livePhotoButton)
    {
      goto LABEL_78;
    }

    v122 = [(PUPhotoEditMediaToolController *)self _localizedTitleForCurrentPlaybackVariation];
    v123 = [v122 localizedUppercaseString];
    v124 = [PUPhotoEditToolActivationButton buttonWithTitle:v123];
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

    v122 = [(PUPhotoEditToolController *)self delegate];
    [v122 dismissLivePhotoRevertConfirmationAlert];
  }

LABEL_78:
  videoLabelView = self->_videoLabelView;
  if (v155)
  {
    if (!videoLabelView)
    {
      v127 = PULocalizedString(@"PHOTOEDIT_VIDEO_TOP_LABEL");
      videoLabelView = [v127 localizedUppercaseString];

      v128 = [v153 photoEditingTopToolbarToolLabelButtonColor];
      v129 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v130 = self->_videoLabelView;
      self->_videoLabelView = v129;

      [(UILabel *)self->_videoLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)self->_videoLabelView setText:videoLabelView];
      [(UILabel *)self->_videoLabelView setTextColor:v128];
      v131 = [v153 topToolbarToolLabelFont];
      [(UILabel *)self->_videoLabelView setFont:v131];

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
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 isStandardVideo];

  if ((v4 & 1) == 0)
  {
    v6 = [(PUPhotoEditToolController *)self asset];
    if ([v6 isLivePhoto])
    {
      v7 = [(PUPhotoEditToolController *)self editSource];
      v8 = [v7 mediaType];

      if (v8 == 3)
      {
        v9 = [(PUPhotoEditToolController *)self delegate];
        v10 = [v9 hasLoopingVideoAdjustment];

        v11 = +[PUPhotoEditProtoSettings sharedInstance];
        v12 = [v11 loopBounceTrimAllowed];

        v5 = v10 ^ 1 | v12;
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
  v4 = [(PUPhotoEditToolController *)self delegate];
  v5 = [v4 isLoopingVideo];

  if (v5)
  {
    v6 = [v3 loopBounceTrimAllowed];
  }

  else
  {
    v6 = 1;
  }

  v7 = [(PUPhotoEditToolController *)self delegate];
  v8 = [v7 isStandardVideo];

  if ((v8 & 1) != 0 || v6)
  {
    v10 = [(PUPhotoEditToolController *)self delegate];
    v9 = [v10 isVideoOn];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateBackgroundAnimated:(BOOL)a3
{
  v3 = a3;
  useTranslucentBackground = self->_useTranslucentBackground;
  v6 = [(UIView *)self->_solidBackgroundView isHidden];
  if (useTranslucentBackground)
  {
    if (v6)
    {
      return;
    }

    [(_UIBackdropView *)self->_backdropBackgroundView setHidden:0];
    solidBackgroundView = self->_solidBackgroundView;
    if (v3)
    {
      [(UIView *)solidBackgroundView setAlpha:1.0];
      v8 = MEMORY[0x1E69DD250];
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __60__PUPhotoEditMediaToolController__updateBackgroundAnimated___block_invoke;
      v30 = &unk_1E7B80DD0;
      v31 = self;
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __60__PUPhotoEditMediaToolController__updateBackgroundAnimated___block_invoke_2;
      v25 = &unk_1E7B7F020;
      v26 = self;
      v9 = &v27;
      v10 = &v22;
LABEL_8:
      [v8 animateWithDuration:v9 animations:v10 completion:{0.2, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31}];
      return;
    }

    [(UIView *)solidBackgroundView setHidden:1];
  }

  else
  {
    if (!v6)
    {
      return;
    }

    [(UIView *)self->_solidBackgroundView setHidden:0];
    if (v3)
    {
      [(UIView *)self->_solidBackgroundView setAlpha:0.0];
      v8 = MEMORY[0x1E69DD250];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __60__PUPhotoEditMediaToolController__updateBackgroundAnimated___block_invoke_3;
      v20 = &unk_1E7B80DD0;
      v21 = self;
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __60__PUPhotoEditMediaToolController__updateBackgroundAnimated___block_invoke_4;
      v15 = &unk_1E7B7F020;
      v16 = self;
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls];
  if (self->_muteButton)
  {
    v5 = !v4;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    [v3 addObject:?];
  }

  if (self->_stabilizeProgressView)
  {
    [v3 addObject:?];
  }

  if (self->_stabilizeButton)
  {
    [v3 addObject:?];
  }

  if (self->_rateButton)
  {
    [v3 addObject:?];
  }

  if ([v3 count])
  {
    v6 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls];
  if (self->_muteButton && !v4)
  {
    [v3 addObject:?];
  }

  if (self->_autoFocusButton)
  {
    [v3 addObject:?];
  }

  if (self->_apertureButtonContainer)
  {
    [v3 addObject:?];
  }

  if ([v3 count])
  {
    v5 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPrimaryView:(id)a3
{
  v5 = a3;
  primaryView = self->_primaryView;
  if (primaryView != v5)
  {
    v10 = v5;
    v7 = [(PUPhotoEditMediaToolController *)self view];
    v8 = [(UIView *)primaryView isDescendantOfView:v7];

    if (v8)
    {
      [(UIView *)self->_primaryView removeFromSuperview];
    }

    objc_storeStrong(&self->_primaryView, a3);
    v9 = [(PUPhotoEditMediaToolController *)self view];
    [v9 addSubview:self->_primaryView];

    [(PUPhotoEditMediaToolController *)self _invalidateConstraints];
    v5 = v10;
  }
}

- (void)setVerticalButtonOffset:(double)a3
{
  if (self->_verticalButtonOffset != a3)
  {
    self->_verticalButtonOffset = a3;
    [(PUPhotoEditMediaToolController *)self _invalidateConstraints];
  }
}

- (void)setHorizontalControlPadding:(double)a3
{
  if (self->_horizontalControlPadding != a3)
  {
    self->_horizontalControlPadding = a3;
    [(PUPhotoEditMediaToolController *)self _invalidateConstraints];
  }
}

- (void)setUseGradientBackground:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_useTranslucentBackground != a3)
  {
    self->_useTranslucentBackground = a3;
    [(PUPhotoEditMediaToolController *)self _updateBackgroundAnimated:a4];
  }
}

- (void)setBackdropViewGroupName:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditToolController *)self backdropViewGroupName];
  v6 = [v5 isEqualToString:v4];

  if ((v6 & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = PUPhotoEditMediaToolController;
    [(PUPhotoEditToolController *)&v8 setBackdropViewGroupName:v4];
    v7 = [(PUPhotoEditToolController *)self backdropViewGroupName];
    [(_UIBackdropView *)self->_backdropBackgroundView setGroupName:v7];
  }
}

- (void)mediaViewInsetsUpdated
{
  [(PUPhotoEditMediaToolController *)self _invalidateConstraints];

  [(PUPhotoEditMediaToolController *)self updateViewConstraints];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  [(PUPhotoEditMediaToolController *)self _updateAutoFocusToolbarButton:a3];

  [(PUPhotoEditMediaToolController *)self _updateRateToolbarButton];
}

- (id)accessibilityHUDItemForButton:(id)a3
{
  v4 = a3;
  if (![v4 isEqual:self->_livePhotoButton])
  {
    goto LABEL_5;
  }

  if (![v4 state])
  {
    v5 = PULocalizedString(@"PHOTOEDIT_LIVE_SWITCH_OFF");
    v6 = @"PULivePhotoOff";
    goto LABEL_11;
  }

  if ([v4 state] != 4)
  {
LABEL_5:
    v7 = 0;
    v8 = 0;
LABEL_6:
    v14.receiver = self;
    v14.super_class = PUPhotoEditMediaToolController;
    v9 = [(PUPhotoEditToolController *)&v14 accessibilityHUDItemForButton:v4];
    goto LABEL_7;
  }

  v5 = [(PUPhotoEditMediaToolController *)self _localizedTitleForCurrentPlaybackVariation];
  v6 = @"PULivePhotoOn";
LABEL_11:
  v7 = [v5 localizedUppercaseString];
  v12 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:v6];
  v8 = [v12 imageWithRenderingMode:2];

  if (!v7 || !v8)
  {
    goto LABEL_6;
  }

  v13 = objc_alloc(MEMORY[0x1E69DC618]);
  v9 = [v13 initWithTitle:v7 image:v8 imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
LABEL_7:
  v10 = v9;

  return v10;
}

- (void)mediaView:(id)a3 didZoom:(double)a4
{
  [(PUVideoEditOverlayViewController *)self->_overlayController renderDidChange:1, a4];
  v5 = [(PUPhotoEditMediaToolController *)self trimController];
  [v5 mediaViewDidZoom];
}

- (void)decreaseScrubberValue:(BOOL)a3
{
  trimController = self->_trimController;
  if (a3)
  {
    v4 = -6;
  }

  else
  {
    v4 = -1;
  }

  [(PUTrimToolController *)trimController stepByCount:v4];
}

- (void)increaseScrubberValue:(BOOL)a3
{
  trimController = self->_trimController;
  if (a3)
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  [(PUTrimToolController *)trimController stepByCount:v4];
}

- (void)configureForAdjustmentCategory:(int64_t)a3
{
  if (a3 == 12 && [(PUPhotoEditMediaToolController *)self _wantsRateControl]&& ([(PUPhotoEditToolbarButton *)self->_rateButton isHeld]& 1) == 0)
  {
    v4 = [(PUPhotoEditToolbarButton *)self->_rateButton contextMenuInteraction];
    [v4 _presentMenuAtLocation:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }
}

- (void)compositionControllerDidChangeForAdjustments:(id)a3
{
  v20 = a3;
  v4 = [(PUPhotoEditToolController *)self compositionController];
  v5 = [v4 adjustmentConstants];

  v6 = MEMORY[0x1E695DFD8];
  v7 = [v5 nonVisualAdjustmentTypes];
  v8 = [v6 setWithArray:v7];
  v9 = [v20 isSubsetOfSet:v8];

  if ((v9 & 1) == 0)
  {
    [(PUPhotoEditMediaToolController *)self _invalidateTrimControlScrubberThumbnails];
  }

  v10 = [v5 PIPortraitVideoAdjustmentKey];
  v11 = [v20 containsObject:v10];

  if (v11)
  {
    v12 = [(PUTrimToolController *)self->_trimController playerWrapper];
    [v12 pause];

    [(PUPhotoEditMediaToolController *)self updateCinematicVideoControlsEnableState];
  }

  v13 = [v5 PITrimAdjustmentKey];
  v14 = [v20 containsObject:v13];

  if (v14)
  {
    [(PUVideoEditOverlayViewController *)self->_overlayController frameTimeDidChange];
  }

  v15 = [v5 PISlomoAdjustmentKey];
  v16 = [v20 containsObject:v15];

  if (v16)
  {
    v17 = [(PUTrimToolController *)self->_trimController isSlomoEnabled];
    v18 = [(PUPhotoEditMediaToolController *)self _isSlomoEnabled];
    [(PUTrimToolController *)self->_trimController setSlomoEnabled:[(PUPhotoEditMediaToolController *)self _isSlomoEnabled]];
    if (v17 != v18)
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
  v19 = [(PUPhotoEditMediaToolController *)self trimController];
  [v19 compositionControllerDidChangeForAdjustments:v20];
}

- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6
{
  v7.receiver = self;
  v7.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v7 setupWithAsset:a3 compositionController:a4 editSource:a5 valuesCalculator:a6];
  if ([(PUPhotoEditMediaToolController *)self _wantsPortraitVideoControls])
  {
    [(PUPhotoEditMediaToolController *)self _initializeCinematographyScript];
  }
}

- (void)_showPrimaryViewIfNeeded
{
  if (self->_constraints)
  {
    v3 = [(PUPhotoEditMediaToolController *)self primaryView];
    [v3 alpha];
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
  v3 = [(PUPhotoEditMediaToolController *)self primaryView];
  [v3 setAlpha:0.0];
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

- (void)setPlaceholderImage:(id)a3
{
  trimController = self->_trimController;
  v5 = a3;
  [(PUTrimToolController *)trimController setPlaceholderImage:v5];
  [(PUTrimToolController *)self->_trimController livePhotoRenderDidChange:self->_trimControllerScrubberNeedsVisualUpdate];
  self->_trimControllerScrubberNeedsVisualUpdate = 0;
  v6.receiver = self;
  v6.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v6 setPlaceholderImage:v5];
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

- (void)setOriginalStillImageTime:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PUPhotoEditMediaToolController;
  v6 = *a3;
  [(PUPhotoEditToolController *)&v7 setOriginalStillImageTime:&v6];
  var3 = a3->var3;
  *&self->_originalStillImageTime.value = *&a3->var0;
  self->_originalStillImageTime.epoch = var3;
  [(PUPhotoEditMediaToolController *)self _updateTrimControlAndToolbarButtons];
}

- (id)toolbarIconAccessibilityLabel
{
  v3 = PULocalizedString(@"PHOTOEDIT_MEDIA_TOOLBAR_LIVE_PHOTO_BUTTON_AX_LABEL");
  v4 = [(PUPhotoEditToolController *)self delegate];
  v5 = [v4 isStandardVideo];

  if (v5)
  {
    v6 = PULocalizedString(@"PHOTOEDIT_MEDIA_TOOLBAR_VIDEO_BUTTON_AX_LABEL");

    v3 = v6;
  }

  return v3;
}

- (id)selectedToolbarIconGlyphName
{
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 isPortraitVideo];

  if (v4)
  {
    return @"cinematic.video.fill";
  }

  v6 = [(PUPhotoEditToolController *)self delegate];
  v7 = [v6 isStandardVideo];

  if (v7)
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
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 isPortraitVideo];

  if (v4)
  {
    return @"cinematic.video";
  }

  v6 = [(PUPhotoEditToolController *)self delegate];
  v7 = [v6 isStandardVideo];

  if (v7)
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
  v4 = [(PUPhotoEditToolController *)self delegate];
  v5 = [v4 isStandardVideo];

  if (v5)
  {
    v6 = PULocalizedString(@"PHOTOEDIT_VIDEO_TOOL_BUTTON");

    v3 = v6;
  }

  return v3;
}

- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v27.receiver = self;
  v27.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v27 setLayoutOrientation:a3 withTransitionCoordinator:v6];
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
    v26 = self;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__PUPhotoEditMediaToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke_2;
    v22[3] = &unk_1E7B7DC38;
    v23 = v25;
    [v6 animateAlongsideTransition:v24 completion:v22];
  }

  v20 = [(PUPhotoEditMediaToolController *)self trimController];
  [v20 setLayoutOrientation:a3];

  v21 = [(PUPhotoEditToolController *)self asset];

  if (v21)
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

- (void)_updateToolVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
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
  if (v3)
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
  v3 = [(PUPhotoEditMediaToolController *)self view];
  [v3 setNeedsUpdateConstraints];

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
    v3 = [(PUPhotoEditMediaToolController *)self view];
    v4 = [v3 window];

    if (v4)
    {
      v5 = [(PUPhotoEditMediaToolController *)self view];
      v6 = self->_containerView;
      v7 = [(PUPhotoEditMediaToolController *)self primaryView];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PUPhotoEditMediaToolController *)self horizontalControlPadding];
      v9 = v8;
      v10 = [v5 leadingAnchor];
      v11 = [(UIView *)v6 leadingAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      [v12 setActive:1];

      v13 = [v5 trailingAnchor];
      v14 = [(UIView *)v6 trailingAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      [v15 setActive:1];

      v182 = v5;
      v16 = [v5 bottomAnchor];
      v17 = [(UIView *)v6 bottomAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      [v18 setActive:1];

      v19 = [(_UIBackdropView *)self->_backdropBackgroundView leadingAnchor];
      v20 = [(UIView *)v6 leadingAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      [v21 setActive:1];

      v22 = [(_UIBackdropView *)self->_backdropBackgroundView trailingAnchor];
      v23 = [(UIView *)v6 trailingAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];
      [v24 setActive:1];

      v25 = [(_UIBackdropView *)self->_backdropBackgroundView topAnchor];
      v26 = [(UIView *)v6 topAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      [v27 setActive:1];

      v28 = [(_UIBackdropView *)self->_backdropBackgroundView bottomAnchor];
      v29 = [(UIView *)v6 bottomAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];
      [v30 setActive:1];

      v31 = [(UIView *)self->_solidBackgroundView leadingAnchor];
      v32 = [(UIView *)v6 leadingAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      [v33 setActive:1];

      v34 = [(UIView *)self->_solidBackgroundView trailingAnchor];
      v35 = [(UIView *)v6 trailingAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      [v36 setActive:1];

      v37 = [(UIView *)self->_solidBackgroundView topAnchor];
      v38 = [(UIView *)v6 topAnchor];
      v39 = [v37 constraintEqualToAnchor:v38];
      [v39 setActive:1];

      v40 = [(UIView *)self->_solidBackgroundView bottomAnchor];
      v41 = [(UIView *)v6 bottomAnchor];
      v42 = [v40 constraintEqualToAnchor:v41];
      [v42 setActive:1];

      if (!v7)
      {
        constraints = self->_constraints;
        v88 = [(UIView *)v6 heightAnchor];
        v89 = [v88 constraintEqualToConstant:0.0];
        [(NSMutableArray *)constraints addObject:v89];

LABEL_37:
        [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];

        goto LABEL_38;
      }

      v43 = [(PUPhotoEditToolController *)self layoutOrientation];
      v44 = [(PUPhotoEditToolController *)self photoEditSpec];
      v45 = [v44 currentLayoutStyle];

      v174 = v45;
      if (v45 == 4)
      {
        v46 = 27.0;
      }

      else
      {
        v46 = 8.0;
      }

      if (v45 != 4 && v43 == 1)
      {
        v47 = [(PUPhotoEditToolController *)self editSource];
        v48 = [v47 mediaType] == 3;

        v46 = dbl_1B3D0CF40[v48];
      }

      v49 = [v7 widthAnchor];
      v50 = [v49 constraintEqualToConstant:477.0];

      LODWORD(v51) = 1144750080;
      [v50 setPriority:v51];
      v179 = v50;
      [(NSMutableArray *)self->_constraints addObject:v50];
      v52 = [(PUPhotoEditMediaToolController *)self view];
      v53 = [v52 window];

      v181 = v7;
      v176 = v43;
      if (v53)
      {
        if (v43 != 1)
        {
          v54 = [(PUPhotoEditToolController *)self delegate];
          v55 = [v54 mediaView];

          [v55 bounds];
          v57 = v56;
          v59 = v58;
          v61 = v60;
          v63 = v62;
          [v55 edgeInsets];
          v65 = v57 + v64;
          v67 = v59 + v66;
          v69 = v61 - (v64 + v68);
          v71 = v63 - (v66 + v70);
          v72 = [(PUPhotoEditMediaToolController *)self view];
          [v72 convertRect:v55 fromView:{v65, v67, v69, v71}];
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
          v83 = [v7 centerXAnchor];
          v84 = [(PUPhotoEditMediaToolController *)self view];
          v85 = [v84 leadingAnchor];
          v86 = [v83 constraintEqualToAnchor:v85 constant:MidX];
          [(NSMutableArray *)v82 addObject:v86];

          v7 = v181;
LABEL_18:

LABEL_19:
          v105 = self->_constraints;
          v180 = v6;
          v106 = [(UIView *)v6 safeAreaLayoutGuide];
          v107 = [v106 bottomAnchor];
          v108 = [v7 bottomAnchor];
          v109 = [v107 constraintEqualToAnchor:v108 constant:v46];
          [(NSMutableArray *)v105 addObject:v109];

          if (self->_overlayController)
          {
            v110 = [(PUPhotoEditToolController *)self delegate];
            v111 = [v110 mediaView];

            v160 = self->_constraints;
            v172 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
            v170 = [v172 leadingAnchor];
            v168 = [v111 leadingAnchor];
            v166 = [v170 constraintEqualToAnchor:v168];
            v189[0] = v166;
            v164 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
            v162 = [v164 trailingAnchor];
            v161 = [v111 trailingAnchor];
            v159 = [v162 constraintEqualToAnchor:v161];
            v189[1] = v159;
            v158 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
            v112 = [v158 topAnchor];
            v113 = [v111 topAnchor];
            v114 = [v112 constraintEqualToAnchor:v113];
            v189[2] = v114;
            v115 = [(PUVideoEditOverlayViewController *)self->_overlayController view];
            v116 = [v115 bottomAnchor];
            v117 = [v111 bottomAnchor];
            v118 = [v116 constraintEqualToAnchor:v117];
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
            v177 = [v182 widthAnchor];
            v136 = [(UIView *)self->_apertureContainer widthAnchor];
            v137 = [v177 constraintEqualToAnchor:v136];
            v188[0] = v137;
            v138 = [v182 centerXAnchor];
            v139 = [(UIView *)self->_apertureContainer centerXAnchor];
            v140 = [v138 constraintEqualToAnchor:v139];
            v188[1] = v140;
            v141 = [v182 bottomAnchor];
            v142 = [(UIView *)self->_apertureContainer bottomAnchor];
            v143 = [v141 constraintEqualToAnchor:v142];
            v188[2] = v143;
            v144 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:3];
            [(NSMutableArray *)v175 addObjectsFromArray:v144];

            v6 = v180;
            v7 = v181;
          }

          else
          {
            v120 = objc_alloc_init(MEMORY[0x1E69DCC20]);
            apertureContainerLayoutGuide = self->_apertureContainerLayoutGuide;
            self->_apertureContainerLayoutGuide = v120;

            v122 = [(PUPhotoEditMediaToolController *)self view];
            [v122 addLayoutGuide:self->_apertureContainerLayoutGuide];

            v123 = self->_constraints;
            v124 = [(UILayoutGuide *)self->_apertureContainerLayoutGuide heightAnchor];
            v125 = [v182 heightAnchor];
            v126 = [v124 constraintEqualToAnchor:v125];
            v187[0] = v126;
            v127 = [(UILayoutGuide *)self->_apertureContainerLayoutGuide centerYAnchor];
            v128 = [v182 centerYAnchor];
            v129 = [v127 constraintEqualToAnchor:v128];
            v187[1] = v129;
            v130 = [MEMORY[0x1E695DEC8] arrayWithObjects:v187 count:2];
            [(NSMutableArray *)v123 addObjectsFromArray:v130];

            if ([(PUPhotoEditToolController *)self layoutOrientation]== 3 || [(PUPhotoEditToolController *)self layoutOrientation]== 2 || v174 == 4)
            {
              v131 = self->_constraints;
              v132 = [(UILayoutGuide *)self->_apertureContainerLayoutGuide rightAnchor];
              v133 = [v182 rightAnchor];
            }

            else
            {
              v131 = self->_constraints;
              v132 = [(UILayoutGuide *)self->_apertureContainerLayoutGuide leftAnchor];
              v133 = [v182 leftAnchor];
            }

            v145 = v133;
            v146 = [v132 constraintEqualToAnchor:v133];
            [(NSMutableArray *)v131 addObject:v146];

            v165 = self->_constraints;
            v178 = [(UIView *)self->_apertureContainer centerXAnchor];
            v173 = [(UILayoutGuide *)self->_apertureContainerLayoutGuide centerXAnchor];
            v171 = [v178 constraintEqualToAnchor:v173];
            v186[0] = v171;
            v169 = [(UIView *)self->_apertureContainer centerYAnchor];
            v167 = [(UILayoutGuide *)self->_apertureContainerLayoutGuide centerYAnchor];
            v163 = [v169 constraintEqualToAnchor:v167];
            v186[1] = v163;
            v147 = [(UIView *)self->_apertureContainer widthAnchor];
            v148 = [(UILayoutGuide *)self->_apertureContainerLayoutGuide heightAnchor];
            v149 = [v147 constraintEqualToAnchor:v148];
            v186[2] = v149;
            v150 = [(UIView *)self->_apertureContainer heightAnchor];
            v151 = [(UILayoutGuide *)self->_apertureContainerLayoutGuide widthAnchor];
            v152 = [v150 constraintEqualToAnchor:v151];
            v186[3] = v152;
            v153 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:4];
            [(NSMutableArray *)v165 addObjectsFromArray:v153];

            if ([(PUPhotoEditToolController *)self layoutOrientation]== 3)
            {
              v154 = -1.57079633;
            }

            else
            {
              v155 = [(PUPhotoEditToolController *)self layoutOrientation];
              v156 = v174 == 4 || v155 == 2;
              v154 = 1.57079633;
              if (v156)
              {
                v154 = -1.57079633;
              }
            }

            v6 = v180;
            v7 = v181;
            CGAffineTransformMakeRotation(&v184, v154);
            v157 = self->_apertureContainer;
            v185 = v184;
            [(UIView *)v157 setTransform:&v185];
          }

          goto LABEL_37;
        }

        v90 = self->_constraints;
        v91 = [v7 centerXAnchor];
        v92 = [(PUPhotoEditMediaToolController *)self view];
        v93 = [v92 window];
        v94 = [v93 safeAreaLayoutGuide];
        v95 = [v94 centerXAnchor];
        v96 = [v91 constraintEqualToAnchor:v95];
        [(NSMutableArray *)v90 addObject:v96];

        v7 = v181;
      }

      else if (v43 != 1)
      {
        goto LABEL_19;
      }

      [(PUPhotoEditMediaToolController *)self horizontalPrimaryViewPaddingOffset];
      v98 = v9 + v97;
      v99 = [v7 leadingAnchor];
      v100 = [(UIView *)v6 leadingAnchor];
      v55 = [v99 constraintGreaterThanOrEqualToAnchor:v100 constant:v98];

      LODWORD(v101) = *"";
      [v55 setPriority:v101];
      [(NSMutableArray *)self->_constraints addObject:v55];
      v102 = [v7 trailingAnchor];
      v103 = [(UIView *)v6 trailingAnchor];
      v83 = [v102 constraintLessThanOrEqualToAnchor:v103 constant:-v98];

      LODWORD(v104) = *"";
      [v83 setPriority:v104];
      [(NSMutableArray *)self->_constraints addObject:v83];
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
    v3 = [(PUPhotoEditMediaToolController *)self view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    [(UIView *)self->_apertureContainer bounds];
    [(CEKEdgeGradientView *)self->_apertureGradientView setFrame:?];
    v8 = [(PUPhotoEditToolController *)self layoutOrientation];
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
    if (v8 == 1)
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

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditToolController *)&v4 viewDidAppear:a3];
  self->_viewHasAppeared = 1;
  [(PUPhotoEditMediaToolController *)self _updateTrimControlAndToolbarButtons];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditMediaToolController;
  [(PUPhotoEditMediaToolController *)&v4 viewIsAppearing:a3];
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
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [(PUPhotoEditToolControllerView *)v9 setBackgroundColor:v5];

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

    v7 = [(_UIBackdropView *)v2->_backdropBackgroundView groupName];
    [(PUPhotoEditMediaToolController *)v2 setBackdropViewGroupName:v7];

    [(_UIBackdropView *)v2->_backdropBackgroundView setHidden:1];
    v8 = [(_UIBackdropView *)v2->_backdropBackgroundView layer];
    [v8 setAllowsGroupOpacity:0];

    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    solidBackgroundView = v2->_solidBackgroundView;
    v2->_solidBackgroundView = v9;

    [(UIView *)v2->_solidBackgroundView setAlpha:0.0];
    v11 = +[PUInterfaceManager currentTheme];
    v12 = [v11 photoEditingBackgroundColor];
    [(UIView *)v2->_solidBackgroundView setBackgroundColor:v12];

    v2->_trimControllerScrubberNeedsVisualUpdate = 1;
    [(PUPhotoEditToolController *)v2 setHasMediaScrubber:1];
  }

  return v2;
}

@end