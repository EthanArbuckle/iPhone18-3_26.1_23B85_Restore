@interface PUPhotoEditPortraitToolController
- (BOOL)_canRenderPortraitEffect;
- (BOOL)_setupApertureControlsIfNeeded;
- (BOOL)_setupDepthControlsIfNeeded;
- (BOOL)_setupLightingControlsIfNeeded;
- (BOOL)apertureToolbarIsDepthActive;
- (BOOL)apertureToolbarShouldRotateLabelsWithOrientation:(id)orientation;
- (BOOL)wantsTapToToggleOriginalEnabled;
- (CGRect)currentFocusRect;
- (id)accessibilityHUDItemForButton:(id)button;
- (id)leadingToolbarViews;
- (id)viewsActivatingMainToolbarShadow;
- (id)viewsActivatingToolControlShadow;
- (int64_t)_defaultPortraitTool;
- (void)_createFocusOverlayIfNeeded;
- (void)_didModifyLightingIntensity;
- (void)_handlePortraitEffectButton:(id)button;
- (void)_handlePortraitNavigationButtons:(id)buttons;
- (void)_refreshFromValuesCalculator;
- (void)_removeFocusOverlayIfNeeded;
- (void)_resetDefaultToolMode;
- (void)_restoreCachedLightingIntensity;
- (void)_selectNextEffectType:(BOOL)type;
- (void)_setShowLightingControl:(BOOL)control animated:(BOOL)animated;
- (void)_updateApertureSliderLength;
- (void)_updateCompositionWithLightingIntensity;
- (void)_updateFocusOverlay;
- (void)_updateFocusOverlayConstraints;
- (void)_updateLabelOrientation;
- (void)_updateLightingControl;
- (void)_updateLightingIntensityCache;
- (void)_updateLightingMarkerForType:(int64_t)type;
- (void)_updateLightingNameBadgeForOrientation:(int64_t)orientation expanded:(BOOL)expanded;
- (void)_updateLightingSliderAnimated:(BOOL)animated;
- (void)_updateNavigationButtonsAnimated:(BOOL)animated;
- (void)_updateToolConstraints;
- (void)_updateToolContainerConstraints;
- (void)_updateToolVisibilityAnimated:(BOOL)animated;
- (void)apertureToolbar:(id)toolbar didChangeValue:(double)value;
- (void)apertureToolbar:(id)toolbar didUpdateDepthActive:(BOOL)active;
- (void)apertureToolbarDidStartSliding:(id)sliding;
- (void)apertureToolbarDidStopSliding:(id)sliding;
- (void)compositionControllerDidChangeForAdjustments:(id)adjustments;
- (void)decreaseScrubberValue:(BOOL)value;
- (void)decreaseSliderValue:(BOOL)value;
- (void)focusRectChanged:(CGRect)changed;
- (void)increaseScrubberValue:(BOOL)value;
- (void)increaseSliderValue:(BOOL)value;
- (void)lightingControl:(id)control willChangeExpanded:(BOOL)expanded;
- (void)lightingControlDidChangeExpanded:(id)expanded;
- (void)lightingControlDidChangeSelectedLightingType:(id)type;
- (void)longPressed:(id)pressed;
- (void)mediaView:(id)view didZoom:(double)zoom;
- (void)mediaViewDidEndZooming:(id)zooming;
- (void)mediaViewDidScroll:(id)scroll;
- (void)mediaViewIsReady;
- (void)navigateToNextTab:(id)tab;
- (void)navigateToPreviousTab:(id)tab;
- (void)previewingOriginalDidStart;
- (void)previewingOriginalDidStop;
- (void)reactivate;
- (void)setBackdropViewGroupName:(id)name;
- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator;
- (void)setPhotoEditSpec:(id)spec;
- (void)setToolSelection:(int64_t)selection animated:(BOOL)animated;
- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator;
- (void)sliderDidEndScrolling:(id)scrolling;
- (void)sliderDidScroll:(id)scroll;
- (void)sliderWillBeginScrolling:(id)scrolling;
- (void)sliderWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)toolControllerWantsToShowOriginal:(BOOL)original;
- (void)updateViewConstraints;
- (void)validateCommand:(id)command;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willBecomeActiveTool;
@end

@implementation PUPhotoEditPortraitToolController

- (void)mediaViewDidEndZooming:(id)zooming
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditToolController *)&v3 mediaViewDidEndZooming:zooming];
}

- (void)mediaViewDidScroll:(id)scroll
{
  focusOverlayController = self->_focusOverlayController;
  if (focusOverlayController)
  {
    view = [(PUPhotoEditPortraitFocusOverlayViewController *)focusOverlayController view];
    [view setNeedsLayout];

    view2 = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
    layer = [view2 layer];
    [layer setNeedsDisplay];
  }
}

- (void)mediaView:(id)view didZoom:(double)zoom
{
  focusOverlayController = self->_focusOverlayController;
  if (focusOverlayController)
  {
    v6 = [(PUPhotoEditPortraitFocusOverlayViewController *)focusOverlayController view:view];
    [v6 setNeedsLayout];

    view = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
    layer = [view layer];
    [layer setNeedsDisplay];
  }
}

- (void)mediaViewIsReady
{
  focusOverlayController = self->_focusOverlayController;
  if (focusOverlayController)
  {
    [(PUPhotoEditPortraitFocusOverlayViewController *)focusOverlayController mediaViewIsReady];
  }
}

- (void)toolControllerWantsToShowOriginal:(BOOL)original
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  [delegate toolControllerWantsToToggleOriginal:self];
}

- (CGRect)currentFocusRect
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  depthAdjustmentController = [compositionController depthAdjustmentController];
  v8 = depthAdjustmentController;
  if (depthAdjustmentController)
  {
    focusRect = [depthAdjustmentController focusRect];
    if (focusRect)
    {
      v10 = focusRect;
LABEL_5:
      v12 = [v10 objectForKeyedSubscript:@"x"];
      v13 = [v10 objectForKeyedSubscript:@"y"];
      v14 = [v10 objectForKeyedSubscript:@"w"];
      v15 = [v10 objectForKeyedSubscript:@"h"];
      [v12 floatValue];
      v2 = v16;
      [v13 floatValue];
      v3 = v17;
      [v14 floatValue];
      v4 = v18;
      [v15 floatValue];
      v5 = v19;

      goto LABEL_6;
    }

    depthInfo = [v8 depthInfo];
    v10 = [depthInfo objectForKeyedSubscript:@"focusRect"];

    if (v10)
    {
      goto LABEL_5;
    }
  }

LABEL_6:

  v20 = v2;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)focusRectChanged:(CGRect)changed
{
  height = changed.size.height;
  width = changed.size.width;
  y = changed.origin.y;
  x = changed.origin.x;
  [(PUPhotoEditToolController *)self willModifyAdjustment];
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];
  pIDepthAdjustmentKey = [adjustmentConstants PIDepthAdjustmentKey];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__PUPhotoEditPortraitToolController_focusRectChanged___block_invoke;
  v13[3] = &__block_descriptor_64_e32_v16__0__PIAdjustmentController_8l;
  *&v13[4] = x;
  *&v13[5] = y;
  *&v13[6] = width;
  *&v13[7] = height;
  [compositionController modifyAdjustmentWithKey:pIDepthAdjustmentKey modificationBlock:v13];

  v11 = PULocalizedString(@"PHOTOEDIT_PORTRAIT_FOCUS_RECT_ACTION_TITLE");
  v12 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v11];
}

void __54__PUPhotoEditPortraitToolController_focusRectChanged___block_invoke(double *a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v9 = [v3 dictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a1[7]];
  [v9 setObject:v5 forKeyedSubscript:@"h"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a1[6]];
  [v9 setObject:v6 forKeyedSubscript:@"w"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a1[4]];
  [v9 setObject:v7 forKeyedSubscript:@"x"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a1[5]];
  [v9 setObject:v8 forKeyedSubscript:@"y"];

  [v4 setFocusRect:v9];
}

- (BOOL)apertureToolbarIsDepthActive
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  depthAdjustmentController = [compositionController depthAdjustmentController];
  enabled = [depthAdjustmentController enabled];

  return enabled;
}

- (void)apertureToolbar:(id)toolbar didUpdateDepthActive:(BOOL)active
{
  activeCopy = active;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  delegate = [(PUPhotoEditToolController *)self delegate];
  livePortraitBehaviorController = [delegate livePortraitBehaviorController];

  [PUPhotoEditEffectsSupport updateCompositionController:compositionController withDepthEnabled:activeCopy livePortraitBehaviorController:livePortraitBehaviorController];
}

- (BOOL)apertureToolbarShouldRotateLabelsWithOrientation:(id)orientation
{
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  v4 = [photoEditSpec currentLayoutStyle] == 4;

  return v4;
}

- (void)apertureToolbarDidStopSliding:(id)sliding
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
  v4 = PULocalizedString(@"PHOTOEDIT_PORTRAIT_APERTURE_ACTION_TITLE");
  v5 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v4];

  apertureToolbar = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
  [apertureToolbar apertureValue];
  if (v6 == 0.0)
  {
    lastKnownAperture = self->_lastKnownAperture;

    if (lastKnownAperture > 0.0)
    {
      self->_suspendUIUpdatesFromComposition = 1;
      compositionController = [(PUPhotoEditToolController *)self compositionController];
      adjustmentConstants = [compositionController adjustmentConstants];
      pIDepthAdjustmentKey = [adjustmentConstants PIDepthAdjustmentKey];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __67__PUPhotoEditPortraitToolController_apertureToolbarDidStopSliding___block_invoke;
      v12[3] = &unk_1E7B7A688;
      v12[4] = self;
      [compositionController modifyAdjustmentWithKey:pIDepthAdjustmentKey modificationBlock:v12];

      self->_suspendUIUpdatesFromComposition = 0;
    }
  }

  else
  {
  }
}

- (void)apertureToolbarDidStartSliding:(id)sliding
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:1];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:1];
  [(PUPhotoEditToolController *)self willModifyAdjustment];
  [(PUPhotoEditApertureToolbar *)self->_apertureToolbar apertureValue];
  if (v4 > 0.0)
  {
    apertureToolbar = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
    [apertureToolbar apertureValue];
    self->_lastKnownAperture = v5;
  }
}

- (void)apertureToolbar:(id)toolbar didChangeValue:(double)value
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];
  pIDepthAdjustmentKey = [adjustmentConstants PIDepthAdjustmentKey];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PUPhotoEditPortraitToolController_apertureToolbar_didChangeValue___block_invoke;
  v8[3] = &__block_descriptor_40_e37_v16__0__PIDepthAdjustmentController_8l;
  *&v8[4] = value;
  [compositionController modifyAdjustmentWithKey:pIDepthAdjustmentKey modificationBlock:v8];
}

- (void)_updateLightingIntensityCache
{
  if (self->_lightingSlider)
  {
    lightingControl = [(PUPhotoEditPortraitToolController *)self lightingControl];
    selectedLightingType = [lightingControl selectedLightingType];

    if (selectedLightingType)
    {
      lightingIntensityCache = self->_lightingIntensityCache;
      v6 = MEMORY[0x1E696AD98];
      [(CEKSlider *)self->_lightingSlider value];
      v8 = [v6 numberWithDouble:?];
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:selectedLightingType];
      [(NSMutableDictionary *)lightingIntensityCache setObject:v8 forKey:v7];
    }
  }
}

- (void)_restoreCachedLightingIntensity
{
  [(PUPhotoEditPortraitToolController *)self _updateLightingSliderAnimated:1];
  lightingControl = [(PUPhotoEditPortraitToolController *)self lightingControl];
  selectedLightingType = [lightingControl selectedLightingType];

  if (selectedLightingType)
  {
    lightingIntensityCache = self->_lightingIntensityCache;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:selectedLightingType];
    v9 = [(NSMutableDictionary *)lightingIntensityCache objectForKey:v6];

    if (v9)
    {
      [v9 floatValue];
      v8 = v7;
    }

    else
    {
      v8 = 0.5;
    }

    if ([(CEKSlider *)self->_lightingSlider isEnabled])
    {
      [(CEKSlider *)self->_lightingSlider setValue:v8];
      [(PUPhotoEditPortraitToolController *)self _updateCompositionWithLightingIntensity];
    }
  }
}

- (void)_updateCompositionWithLightingIntensity
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];
  pIPortraitAdjustmentKey = [adjustmentConstants PIPortraitAdjustmentKey];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__PUPhotoEditPortraitToolController__updateCompositionWithLightingIntensity__block_invoke;
  v6[3] = &unk_1E7B80728;
  v6[4] = self;
  [compositionController modifyAdjustmentWithKey:pIPortraitAdjustmentKey modificationBlock:v6];
}

void __76__PUPhotoEditPortraitToolController__updateCompositionWithLightingIntensity__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1320);
  v4 = a2;
  [v2 value];
  *&v3 = v3;
  [v4 setStrength:*&v3];
}

- (void)_updateLightingNameBadgeForOrientation:(int64_t)orientation expanded:(BOOL)expanded
{
  expandedCopy = expanded;
  view = [(PUPhotoEditPortraitToolController *)self view];

  if (!view)
  {
    return;
  }

  v8 = orientation != 1 || !expandedCopy;
  [(CEKLightingControl *)self->_lightingControl setNameBadgeHidden:v8 animated:1];
  lightingNameBadge = self->_lightingNameBadge;
  if (orientation == 1)
  {
    if (!lightingNameBadge)
    {
      return;
    }

    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_lightingNameBadgeConstraints];
    [(CEKLightingNameBadge *)self->_lightingNameBadge removeFromSuperview];
    v17 = self->_lightingNameBadge;
    self->_lightingNameBadge = 0;

    lightingNameBadgeConstraints = self->_lightingNameBadgeConstraints;
    self->_lightingNameBadgeConstraints = 0;
    goto LABEL_14;
  }

  if (!lightingNameBadge)
  {
    v10 = objc_alloc_init(MEMORY[0x1E6993878]);
    v11 = self->_lightingNameBadge;
    self->_lightingNameBadge = v10;

    [(CEKLightingNameBadge *)self->_lightingNameBadge setHighlighted:1];
    [(CEKLightingNameBadge *)self->_lightingNameBadge setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CEKLightingNameBadge *)self->_lightingNameBadge setLightingType:[(CEKLightingControl *)self->_lightingControl selectedLightingType]];
    view2 = [(PUPhotoEditPortraitToolController *)self view];
    [view2 addSubview:self->_lightingNameBadge];

    isExpanded = [(CEKLightingControl *)self->_lightingControl isExpanded];
    v14 = 0.0;
    if (isExpanded)
    {
      v14 = 1.0;
    }

    [(CEKLightingNameBadge *)self->_lightingNameBadge setAlpha:v14];
  }

  if (self->_lightingNameBadgeConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    v15 = self->_lightingNameBadgeConstraints;
    self->_lightingNameBadgeConstraints = 0;

    view3 = [(PUPhotoEditPortraitToolController *)self view];
    [(NSArray *)view3 setNeedsUpdateConstraints];
    lightingNameBadgeConstraints = view3;
LABEL_14:
  }
}

- (void)_updateLabelOrientation
{
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  if (currentLayoutStyle == 4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ([(PUPhotoEditToolController *)self layoutOrientation]== 3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 2 * ([(PUPhotoEditToolController *)self layoutOrientation]== 2);
    }

    lightingSlider = self->_lightingSlider;

    [(CEKSlider *)lightingSlider setTextOrientation:v5 animated:1];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PUPhotoEditPortraitToolController;
  coordinatorCopy = coordinator;
  [(PUPhotoEditToolController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__PUPhotoEditPortraitToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7B7DC38;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

void __88__PUPhotoEditPortraitToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setNeedsDisplay];
}

- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditToolController *)&v12 setLayoutOrientation:orientation withTransitionCoordinator:coordinatorCopy];
  [(PUPhotoEditPortraitToolController *)self _updateLabelOrientation];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PUPhotoEditPortraitToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E7B7FF70;
  aBlock[4] = self;
  aBlock[5] = orientation;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (coordinatorCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__PUPhotoEditPortraitToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke_2;
    v9[3] = &unk_1E7B7ABE0;
    v10 = v7;
    [coordinatorCopy animateAlongsideTransition:v9 completion:0];
  }

  else
  {
    v7[2](v7);
  }

  [(PUPhotoEditApertureToolbar *)self->_apertureToolbar setLayoutOrientation:[(PUPhotoEditToolController *)self layoutOrientation]];
}

void __84__PUPhotoEditPortraitToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateLightingNameBadgeForOrientation:*(a1 + 40) expanded:{objc_msgSend(*(*(a1 + 32) + 1408), "isExpanded")}];
  v2 = *(a1 + 32);
  if (v2[162])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1296);
    *(v3 + 1296) = 0;

    v5 = [*(a1 + 32) view];
    [v5 setNeedsUpdateConstraints];

    v2 = *(a1 + 32);
  }

  if (v2[156])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    v6 = *(a1 + 32);
    v7 = *(v6 + 1248);
    *(v6 + 1248) = 0;

    v2 = *(a1 + 32);
  }

  if (v2[168])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    v8 = *(a1 + 32);
    v9 = *(v8 + 1344);
    *(v8 + 1344) = 0;

    v10 = [*(a1 + 32) view];
    [v10 setNeedsUpdateConstraints];

    v2 = *(a1 + 32);
  }

  [v2 _updateApertureSliderLength];
  v11 = [*(a1 + 32) view];
  [v11 setNeedsUpdateConstraints];
}

- (void)setPhotoEditSpec:(id)spec
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditToolController *)&v4 setPhotoEditSpec:spec];
  [(PUPhotoEditPortraitToolController *)self _updateLabelOrientation];
}

- (void)_didModifyLightingIntensity
{
  [(PUPhotoEditPortraitToolController *)self _updateLightingIntensityCache];
  [(PUPhotoEditPortraitToolController *)self _setShowLightingControl:1 animated:1];
  v4 = PULocalizedString(@"PHOTOEDIT_PORTRAIT_LIGHTING_INTENSITY_ACTION_TITLE");
  v3 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v4];
}

- (void)sliderDidEndScrolling:(id)scrolling
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];

  [(PUPhotoEditPortraitToolController *)self _didModifyLightingIntensity];
}

- (void)sliderWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0, offset, velocity.x, velocity.y];
  if (x == 0.0)
  {

    [(PUPhotoEditPortraitToolController *)self _didModifyLightingIntensity];
  }
}

- (void)sliderDidScroll:(id)scroll
{
  scrollCopy = scroll;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  portraitAdjustmentController = [compositionController portraitAdjustmentController];
  [portraitAdjustmentController strength];
  [scrollCopy value];

  LOBYTE(scrollCopy) = PXFloatEqualToFloatWithTolerance();
  if ((scrollCopy & 1) == 0)
  {

    [(PUPhotoEditPortraitToolController *)self _updateCompositionWithLightingIntensity];
  }
}

- (void)sliderWillBeginScrolling:(id)scrolling
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:1];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:1];
  if (objc_opt_respondsToSelector())
  {
    [(PUPhotoEditToolController *)self willModifyAdjustment];

    [(PUPhotoEditPortraitToolController *)self _setShowLightingControl:0 animated:1];
  }
}

- (void)_setShowLightingControl:(BOOL)control animated:(BOOL)animated
{
  if (control)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (!animated || (v6 = control, [(CEKLightingControl *)self->_lightingControl alpha], v7 == v5))
  {
    lightingControl = self->_lightingControl;

    [(CEKLightingControl *)lightingControl setAlpha:v5];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__PUPhotoEditPortraitToolController__setShowLightingControl_animated___block_invoke;
    v10[3] = &unk_1E7B7FF70;
    if (v6)
    {
      v8 = 0x10000;
    }

    else
    {
      v8 = 0x20000;
    }

    v10[4] = self;
    *&v10[5] = v5;
    [MEMORY[0x1E69DD250] animateWithDuration:v8 delay:v10 options:0 animations:0.5 completion:0.0];
  }
}

- (void)lightingControlDidChangeExpanded:(id)expanded
{
  isExpanded = [(CEKLightingControl *)self->_lightingControl isExpanded];
  [(PUPhotoEditToolController *)self setActivelyAdjusting:isExpanded];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:isExpanded];
  if ((isExpanded & 1) == 0)
  {
    v5 = PULocalizedString(@"PHOTOEDIT_PORTRAIT_LIGHTING_ACTION_TITLE");
    v6 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v5];

    lightingControl = self->_lightingControl;

    [(CEKLightingControl *)lightingControl setMaskView:0];
  }
}

- (void)lightingControl:(id)control willChangeExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  controlCopy = control;
  [(PUPhotoEditToolController *)self setActivelyAdjusting:expandedCopy];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:expandedCopy];
  if (expandedCopy)
  {
    [(PUPhotoEditToolController *)self willModifyAdjustment];
    [(CEKLightingControl *)self->_lightingControl frame];
    PXRectWithOriginAndSize();
    [(_PULightingGradientView *)self->_lightingGradient setFrame:?];
    [(CEKLightingControl *)self->_lightingControl setMaskView:self->_lightingGradient];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__PUPhotoEditPortraitToolController_lightingControl_willChangeExpanded___block_invoke;
  v20[3] = &unk_1E7B7FF70;
  v20[4] = self;
  *&v20[5] = expandedCopy;
  [MEMORY[0x1E69DD250] animateWithDuration:v20 animations:0.25];
  [(PUPhotoEditPortraitToolController *)self _updateLightingNameBadgeForOrientation:[(PUPhotoEditToolController *)self layoutOrientation] expanded:expandedCopy];
  delegate = [(PUPhotoEditToolController *)self delegate];
  livePortraitBehaviorController = [delegate livePortraitBehaviorController];

  if ([livePortraitBehaviorController hasLivePortrait])
  {
    if (expandedCopy)
    {
      delegate2 = [(PUPhotoEditToolController *)self delegate];
      self->_livePhotoOnBeforeAdjustingLighting = [delegate2 isVideoOn];
LABEL_6:

      goto LABEL_7;
    }

    selectedLightingType = [controlCopy selectedLightingType];
    v16 = +[PUPhotoEditProtoSettings sharedInstance];
    changeLightingDisablesLive = [v16 changeLightingDisablesLive];

    if (changeLightingDisablesLive)
    {
      if ((selectedLightingType - 2) < 5)
      {
        goto LABEL_7;
      }
    }

    else if ((selectedLightingType - 4) < 3)
    {
      goto LABEL_7;
    }

    if (self->_livePhotoOnBeforeAdjustingLighting)
    {
      delegate3 = [(PUPhotoEditToolController *)self delegate];
      isVideoOn = [delegate3 isVideoOn];

      if ((isVideoOn & 1) == 0)
      {
        delegate2 = [(PUPhotoEditToolController *)self delegate];
        [delegate2 toggleLivePhotoActive];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  portraitAdjustmentController = [compositionController portraitAdjustmentController];

  if (expandedCopy && ([portraitAdjustmentController enabled] & 1) == 0)
  {
    if ([(PUPhotoEditPortraitToolController *)self _shouldShowPortraitV2])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = +[PUPhotoEditEffectsSupport identifierForLightingType:lightingVersion:](PUPhotoEditEffectsSupport, "identifierForLightingType:lightingVersion:", [controlCopy selectedLightingType], v12);
    compositionController2 = [(PUPhotoEditToolController *)self compositionController];
    [PUPhotoEditEffectsSupport updateCompositionController:compositionController2 withLightingIdentifier:v13 portraitInfo:self->_cachedPortraitEffectSettings spillMatteAllowed:self->_cachedSpillMatteAllowed];
  }
}

- (void)lightingControlDidChangeSelectedLightingType:(id)type
{
  typeCopy = type;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PUPhotoEditPortraitToolController_lightingControlDidChangeSelectedLightingType___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v8 = typeCopy;
  selfCopy = self;
  v6 = typeCopy;
  [compositionController performChanges:v7];
}

void __82__PUPhotoEditPortraitToolController_lightingControlDidChangeSelectedLightingType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedLightingType];
  if ([*(a1 + 40) _shouldShowPortraitV2])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v11 = [PUPhotoEditEffectsSupport identifierForLightingType:v2 lightingVersion:v3];
  v4 = [*(a1 + 40) compositionController];
  [PUPhotoEditEffectsSupport updateCompositionController:v4 withLightingIdentifier:v11 portraitInfo:*(*(a1 + 40) + 1352) spillMatteAllowed:*(*(a1 + 40) + 1360)];

  [*(*(a1 + 40) + 1288) setLightingType:v2];
  [*(*(a1 + 40) + 1288) invalidateIntrinsicContentSize];
  v5 = [*(a1 + 40) delegate];
  v6 = [v5 livePortraitBehaviorController];

  v7 = +[PUPhotoEditProtoSettings sharedInstance];
  v8 = [v7 apertureSliderHasOffPosition];

  if ((v8 & 1) == 0)
  {
    v9 = [*(a1 + 40) compositionController];
    [PUPhotoEditEffectsSupport updateCompositionController:v9 withDepthEnabled:1 livePortraitBehaviorController:v6];
  }

  v10 = [*(a1 + 40) compositionController];
  [v6 applySideEffectsForAction:1 compositionController:v10];

  [*(a1 + 40) _restoreCachedLightingIntensity];
  [*(a1 + 40) _updateLightingMarkerForType:v2];
  [*(a1 + 40) _updateFocusOverlay];
}

- (void)navigateToNextTab:(id)tab
{
  [(PUPhotoEditPortraitToolController *)self setToolSelection:2 animated:1];

  [(PUPhotoEditPortraitToolController *)self _updateNavigationButtonsAnimated:1];
}

- (void)navigateToPreviousTab:(id)tab
{
  [(PUPhotoEditPortraitToolController *)self setToolSelection:1 animated:1];

  [(PUPhotoEditPortraitToolController *)self _updateNavigationButtonsAnimated:1];
}

- (id)viewsActivatingToolControlShadow
{
  v11[1] = *MEMORY[0x1E69E9840];
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
  if (layoutOrientation == 3)
  {
    if (currentLayoutStyle == 4)
    {
      view = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      v10 = view;
      v7 = &v10;
      goto LABEL_6;
    }
  }

  else if (layoutOrientation == 2)
  {
    view = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
    v11[0] = view;
    v7 = v11;
LABEL_6:
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

    goto LABEL_8;
  }

  v8 = MEMORY[0x1E695E0F0];
LABEL_8:

  return v8;
}

- (id)viewsActivatingMainToolbarShadow
{
  v11[1] = *MEMORY[0x1E69E9840];
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
  if (layoutOrientation == 3)
  {
    if (currentLayoutStyle != 4)
    {
      view = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      v10 = view;
      v7 = &v10;
      goto LABEL_7;
    }

LABEL_5:
    v8 = MEMORY[0x1E695E0F0];
    goto LABEL_8;
  }

  if (layoutOrientation != 1)
  {
    goto LABEL_5;
  }

  view = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
  v11[0] = view;
  v7 = v11;
LABEL_7:
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

LABEL_8:

  return v8;
}

- (void)decreaseSliderValue:(BOOL)value
{
  valueCopy = value;
  if (![(UIView *)self->_lightingContainer isHidden])
  {
    [PUPhotoEditSupport changeValueOfSlider:self->_lightingSlider reverse:0 coarse:valueCopy];

    [(PUPhotoEditPortraitToolController *)self _updateCompositionWithLightingIntensity];
  }
}

- (void)increaseSliderValue:(BOOL)value
{
  valueCopy = value;
  if (![(UIView *)self->_lightingContainer isHidden])
  {
    [PUPhotoEditSupport changeValueOfSlider:self->_lightingSlider reverse:1 coarse:valueCopy];

    [(PUPhotoEditPortraitToolController *)self _updateCompositionWithLightingIntensity];
  }
}

- (void)decreaseScrubberValue:(BOOL)value
{
  valueCopy = value;
  if ([(UIView *)self->_lightingContainer isHidden])
  {
    if (![(UIView *)self->_apertureContainer isHidden]&& [(PUPhotoEditApertureToolbar *)self->_apertureToolbar setNextApertureValue:0 coarse:valueCopy])
    {
      apertureToolbar = self->_apertureToolbar;
      [(PUPhotoEditApertureToolbar *)apertureToolbar apertureValue];

      [(PUPhotoEditPortraitToolController *)self apertureToolbar:apertureToolbar didChangeValue:?];
    }
  }

  else
  {

    [(PUPhotoEditPortraitToolController *)self _selectNextEffectType:0];
  }
}

- (void)increaseScrubberValue:(BOOL)value
{
  valueCopy = value;
  if ([(UIView *)self->_lightingContainer isHidden])
  {
    if (![(UIView *)self->_apertureContainer isHidden]&& [(PUPhotoEditApertureToolbar *)self->_apertureToolbar setNextApertureValue:1 coarse:valueCopy])
    {
      apertureToolbar = self->_apertureToolbar;
      [(PUPhotoEditApertureToolbar *)apertureToolbar apertureValue];

      [(PUPhotoEditPortraitToolController *)self apertureToolbar:apertureToolbar didChangeValue:?];
    }
  }

  else
  {

    [(PUPhotoEditPortraitToolController *)self _selectNextEffectType:1];
  }
}

- (BOOL)wantsTapToToggleOriginalEnabled
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  depthAdjustmentController = [compositionController depthAdjustmentController];

  if ([(PUPhotoEditPortraitToolController *)self _shouldShowPortraitFocusEditingUI])
  {
    v5 = [depthAdjustmentController enabled] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)leadingToolbarViews
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  if (self->_lightingIntensityButton)
  {
    [v3 addObject:?];
  }

  if (self->_apertureButton)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (void)compositionControllerDidChangeForAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  if (self->_suspendUIUpdatesFromComposition)
  {
    goto LABEL_26;
  }

  v33 = adjustmentsCopy;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  adjustmentConstants = [compositionController adjustmentConstants];
  pIDepthAdjustmentKey = [adjustmentConstants PIDepthAdjustmentKey];
  if ([v33 containsObject:pIDepthAdjustmentKey])
  {

    goto LABEL_5;
  }

  pIPortraitAdjustmentKey = [adjustmentConstants PIPortraitAdjustmentKey];
  v9 = [v33 containsObject:pIPortraitAdjustmentKey];

  if (v9)
  {
LABEL_5:
    depthAdjustmentController = [compositionController depthAdjustmentController];
    enabled = [depthAdjustmentController enabled];
    [(PUPhotoEditToolActivationButton *)self->_portraitToolbarButton setSelected:enabled];
    [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setEnabled:enabled];
    v12 = MEMORY[0x1E69C3BF0];
    if ([(PUPhotoEditToolActivationButton *)self->_portraitToolbarButton isSelected])
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = [v12 configurationWithCursorEffect:v13];
    [(PXUIButton *)self->_portraitToolbarButton setPx_configuration:v14];

    v15 = +[PUPhotoEditProtoSettings sharedInstance];
    apertureSliderHasOffPosition = [v15 apertureSliderHasOffPosition];

    if ((apertureSliderHasOffPosition & 1) == 0)
    {
      apertureToolbar = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
      [apertureToolbar setEnabled:enabled];
    }

    [(PUPhotoEditPortraitToolController *)self _updateNavigationButtonsAnimated:1];
    v18 = +[PUPhotoEditProtoSettings sharedInstance];
    apertureSliderHasOffPosition2 = [v18 apertureSliderHasOffPosition];

    if (apertureSliderHasOffPosition2)
    {
      if (enabled)
      {
        [depthAdjustmentController aperture];
        if (v20 > 0.0)
        {
          v21 = v20;
          apertureToolbar2 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
          [apertureToolbar2 setApertureValueClosestTo:v21];

          apertureToolbar3 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
          [apertureToolbar3 apertureValue];
          [(CEKApertureButton *)self->_apertureButton setApertureValue:?];

          v24 = self->_focusOverlayController == 0;
          goto LABEL_19;
        }

LABEL_18:
        v24 = 0;
LABEL_19:
        if (v24 || self->_focusOverlayController)
        {
          [(PUPhotoEditPortraitToolController *)self _updateFocusOverlay];
          view = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
          layer = [view layer];
          [layer setNeedsDisplay];
        }

        goto LABEL_23;
      }

      apertureToolbar4 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
      [apertureToolbar4 setDepthIsOn:0];
    }

    else
    {
      [depthAdjustmentController aperture];
      if (v25 <= 0.0)
      {
        goto LABEL_18;
      }

      v26 = v25;
      apertureToolbar5 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
      [apertureToolbar5 setApertureValueClosestTo:v26];

      apertureToolbar4 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
      [apertureToolbar4 apertureValue];
      [(CEKApertureButton *)self->_apertureButton setApertureValue:?];
    }

    goto LABEL_18;
  }

LABEL_23:
  pIPortraitAdjustmentKey2 = [adjustmentConstants PIPortraitAdjustmentKey];
  v32 = [v33 containsObject:pIPortraitAdjustmentKey2];

  if (v32)
  {
    [(PUPhotoEditPortraitToolController *)self _updateLightingControl];
    [(PUPhotoEditPortraitToolController *)self _updateLightingSliderAnimated:0];
  }

  adjustmentsCopy = v33;
LABEL_26:
}

- (id)accessibilityHUDItemForButton:(id)button
{
  if ([button isEqual:self->_portraitToolbarButton])
  {
    _depthButtonTitle = [(PUPhotoEditPortraitToolController *)self _depthButtonTitle];
    localizedUppercaseString = [_depthButtonTitle localizedUppercaseString];

    v6 = objc_alloc(MEMORY[0x1E69DC618]);
    v7 = [v6 initWithTitle:localizedUppercaseString image:0 imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setBackdropViewGroupName:(id)name
{
  nameCopy = name;
  v7.receiver = self;
  v7.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditToolController *)&v7 setBackdropViewGroupName:nameCopy];
  apertureToolbar = [(PUPhotoEditPortraitToolController *)self apertureToolbar];

  if (apertureToolbar)
  {
    apertureToolbar2 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
    [apertureToolbar2 setBackdropViewGroupName:nameCopy];
  }
}

- (void)reactivate
{
  if (self->_lightingIntensityButton && self->_apertureButton)
  {
    [(PUPhotoEditPortraitToolController *)self _handlePortraitNavigationButtons:0];
  }

  else
  {
    [(PUPhotoEditPortraitToolController *)self _resetDefaultToolMode];
  }

  ppt_didBecomeActiveToolBlock = [(PUPhotoEditToolController *)self ppt_didBecomeActiveToolBlock];

  if (ppt_didBecomeActiveToolBlock)
  {
    ppt_didBecomeActiveToolBlock2 = [(PUPhotoEditToolController *)self ppt_didBecomeActiveToolBlock];
    ppt_didBecomeActiveToolBlock2[2]();
  }
}

- (void)willBecomeActiveTool
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditToolController *)&v3 willBecomeActiveTool];
  [(PUPhotoEditPortraitToolController *)self _resetDefaultToolMode];
  [(PUPhotoEditPortraitToolController *)self _updateLightingControl];
  [(PUPhotoEditPortraitToolController *)self _updateLightingSliderAnimated:0];
}

- (void)_handlePortraitEffectButton:(id)button
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  depthAdjustmentController = [compositionController depthAdjustmentController];
  enabled = [depthAdjustmentController enabled];

  [(PUPhotoEditToolController *)self willModifyAdjustment];
  delegate = [(PUPhotoEditToolController *)self delegate];
  livePortraitBehaviorController = [delegate livePortraitBehaviorController];

  [PUPhotoEditEffectsSupport updateCompositionController:compositionController withDepthEnabled:enabled ^ 1u livePortraitBehaviorController:livePortraitBehaviorController];
  v8 = PULocalizedString(@"PHOTOEDIT_PORTRAIT_SWITCH");
  v9 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v8];

  [(PUPhotoEditPortraitToolController *)self _updateLightingControl];
  [(PUPhotoEditPortraitToolController *)self _updateLightingSliderAnimated:0];
  [(PUPhotoEditPortraitToolController *)self _updateFocusOverlay];
}

- (void)_updateFocusOverlay
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  depthAdjustmentController = [compositionController depthAdjustmentController];

  if ([depthAdjustmentController enabled] && -[PUPhotoEditPortraitToolController _shouldShowPortraitFocusEditingUI](self, "_shouldShowPortraitFocusEditingUI"))
  {
    if (self->_focusOverlayController)
    {
      v4 = 0;
      goto LABEL_9;
    }

    [(PUPhotoEditPortraitToolController *)self _createFocusOverlayIfNeeded];
    v4 = 0;
    goto LABEL_7;
  }

  if (self->_focusOverlayController)
  {
    [(PUPhotoEditPortraitToolController *)self _removeFocusOverlayIfNeeded];
    v4 = 1;
LABEL_7:
    view = [(PUPhotoEditPortraitToolController *)self view];
    [view setNeedsUpdateConstraints];

    goto LABEL_9;
  }

  v4 = 1;
LABEL_9:
  delegate = [(PUPhotoEditToolController *)self delegate];
  [delegate toolControllerDidChangeWantsTapToToggleOriginalEnabled:self enabled:v4];
}

- (void)_updateLightingSliderAnimated:(BOOL)animated
{
  animatedCopy = animated;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  portraitAdjustmentController = [compositionController portraitAdjustmentController];

  if (portraitAdjustmentController)
  {
    [portraitAdjustmentController strength];
    [(CEKSlider *)self->_lightingSlider setValue:?];
  }

  selectedLightingType = [(CEKLightingControl *)self->_lightingControl selectedLightingType];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __67__PUPhotoEditPortraitToolController__updateLightingSliderAnimated___block_invoke;
  v13 = &unk_1E7B7FF98;
  selfCopy = self;
  v15 = selectedLightingType > 1;
  v8 = _Block_copy(&v10);
  v9 = v8;
  if (animatedCopy)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v8 options:0 animations:0.25 completion:{0.0, v10, v11, v12, v13}];
  }

  else
  {
    (*(v8 + 2))(v8);
  }
}

uint64_t __67__PUPhotoEditPortraitToolController__updateLightingSliderAnimated___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 1320) setAlpha:v1];
}

- (void)_updateLightingMarkerForType:(int64_t)type
{
  if (objc_opt_respondsToSelector())
  {
    if (self->_initialLightingType == type)
    {
      initialLightingIntensity = self->_initialLightingIntensity;
    }

    else
    {
      initialLightingIntensity = 1.79769313e308;
    }

    lightingSlider = self->_lightingSlider;

    [(CEKSlider *)lightingSlider setMarkedValue:initialLightingIntensity];
  }
}

- (void)_updateLightingControl
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  portraitAdjustmentController = [compositionController portraitAdjustmentController];
  kind = [portraitAdjustmentController kind];
  if (![portraitAdjustmentController enabled] || (defaultLightingType = +[PUPhotoEditEffectsSupport lightingEffectTypeForIdentifier:](PUPhotoEditEffectsSupport, "lightingEffectTypeForIdentifier:", kind)) == 0)
  {
    defaultLightingType = [(CEKLightingControl *)self->_lightingControl defaultLightingType];
  }

  [(PUPhotoEditPortraitToolController *)self _updateLightingMarkerForType:defaultLightingType];
  [(CEKLightingControl *)self->_lightingControl setSelectedLightingType:defaultLightingType];
  [(CEKLightingNameBadge *)self->_lightingNameBadge setLightingType:defaultLightingType];
  [(PUPhotoEditPortraitToolController *)self _updateLightingNameBadgeForOrientation:[(PUPhotoEditToolController *)self layoutOrientation] expanded:[(CEKLightingControl *)self->_lightingControl isExpanded]];
}

- (void)_updateNavigationButtonsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  toolSelection = [(PUPhotoEditPortraitToolController *)self toolSelection];
  if (animatedCopy)
  {
    superview = [(CEKApertureButton *)self->_apertureButton superview];
    [superview layoutIfNeeded];
  }

  [(PUPhotoEditToolbarButton *)self->_lightingIntensityButton setSelected:toolSelection != 2];
  [(CEKApertureButton *)self->_apertureButton setActive:toolSelection == 2];
  if (toolSelection == 2)
  {
    enabled = 0;
  }

  else
  {
    apertureToolbar = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
    [apertureToolbar apertureValue];
    [(CEKApertureButton *)self->_apertureButton setApertureValue:?];

    compositionController = [(PUPhotoEditToolController *)self compositionController];
    depthAdjustmentController = [compositionController depthAdjustmentController];

    enabled = [depthAdjustmentController enabled];
  }

  if (MEMORY[0x1B8C6D660]())
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = enabled;
    v12 = animatedCopy;
  }

  [(CEKApertureButton *)self->_apertureButton setShouldShowApertureValue:v11 animated:v12];
  superview2 = [(CEKApertureButton *)self->_apertureButton superview];
  [superview2 setNeedsLayout];

  v14 = +[PUInterfaceManager currentTheme];
  if (([(PUPhotoEditToolbarButton *)self->_lightingIntensityButton isSelected]& 1) != 0)
  {
    [v14 photoEditingToolbarButtonSelectedColor];
  }

  else
  {
    [v14 photoEditingToolbarButtonColor];
  }
  v15 = ;
  [(PUPhotoEditToolbarButton *)self->_lightingIntensityButton setTintColor:v15];
  if (animatedCopy)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__PUPhotoEditPortraitToolController__updateNavigationButtonsAnimated___block_invoke;
    v16[3] = &unk_1E7B80DD0;
    v16[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v16 animations:0.25];
  }
}

void __70__PUPhotoEditPortraitToolController__updateNavigationButtonsAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1216) superview];
  [v1 layoutIfNeeded];
}

- (int64_t)_defaultPortraitTool
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  depthAdjustmentController = [compositionController depthAdjustmentController];

  if (depthAdjustmentController)
  {
    if ([depthAdjustmentController canAdjustApertureValue])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_resetDefaultToolMode
{
  [(PUPhotoEditPortraitToolController *)self setToolSelection:[(PUPhotoEditPortraitToolController *)self _defaultPortraitTool] animated:1];

  [(PUPhotoEditPortraitToolController *)self _updateNavigationButtonsAnimated:1];
}

- (void)_removeFocusOverlayIfNeeded
{
  if (self->_focusOverlayController)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_focusOverlayControllerConstraints];
    focusOverlayControllerConstraints = self->_focusOverlayControllerConstraints;
    self->_focusOverlayControllerConstraints = 0;

    [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController willMoveToParentViewController:0];
    [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController removeFromParentViewController];
    view = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
    [view removeFromSuperview];

    focusOverlayController = self->_focusOverlayController;
    self->_focusOverlayController = 0;
  }
}

- (void)_createFocusOverlayIfNeeded
{
  if (!self->_focusOverlayController)
  {
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    composition = [compositionController composition];

    v19 = composition;
    v5 = [objc_alloc(MEMORY[0x1E69B3B30]) initWithComposition:composition];
    [v5 setName:@"PUPhotoEditPortraitToolController-imageProperties"];
    v20 = 0;
    v6 = [v5 submitSynchronous:&v20];
    v18 = v20;
    properties = [v6 properties];
    if ([properties isHDR])
    {
      hasGainMap = 1;
    }

    else
    {
      hasGainMap = [properties hasGainMap];
    }

    v9 = [PUPhotoEditPortraitFocusOverlayViewController alloc];
    delegate = [(PUPhotoEditToolController *)self delegate];
    mediaView = [delegate mediaView];
    delegate2 = [(PUPhotoEditToolController *)self delegate];
    v13 = [(PUPhotoEditPortraitFocusOverlayViewController *)v9 initWithMediaView:mediaView isHDR:hasGainMap delegate:delegate2];
    focusOverlayController = self->_focusOverlayController;
    self->_focusOverlayController = v13;

    [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController setPortraitFocusDelegate:self];
    view = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    [(PUPhotoEditPortraitToolController *)self addChildViewController:self->_focusOverlayController];
    [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController didMoveToParentViewController:self];
    view2 = [(PUPhotoEditPortraitToolController *)self view];
    view3 = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];

    [view2 insertSubview:view3 atIndex:0];
  }
}

- (void)_handlePortraitNavigationButtons:(id)buttons
{
  if ([(PUPhotoEditPortraitToolController *)self toolSelection]== 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [(PUPhotoEditPortraitToolController *)self setToolSelection:v4 animated:1];

  [(PUPhotoEditPortraitToolController *)self _updateNavigationButtonsAnimated:1];
}

- (void)_selectNextEffectType:(BOOL)type
{
  typeCopy = type;
  v22 = *MEMORY[0x1E69E9840];
  lightingEffectSet = [(CEKLightingControl *)self->_lightingControl lightingEffectSet];
  if (lightingEffectSet > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1E7B7A6C8[lightingEffectSet];
  }

  selectedLightingType = [(CEKLightingControl *)self->_lightingControl selectedLightingType];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  integerValue = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (integerValue)
  {
    v9 = integerValue;
    v16 = typeCopy;
    v10 = 0;
    integerValue2 = 0;
    v12 = *v18;
LABEL_6:
    v13 = 0;
    while (1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v17 + 1) + 8 * v13);
      integerValue = [v14 integerValue];
      if (v10)
      {
        break;
      }

      v10 = selectedLightingType == integerValue;
      if (selectedLightingType != integerValue)
      {
        integerValue2 = [v14 integerValue];
      }

      if (v9 == ++v13)
      {
        integerValue = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v9 = integerValue;
        if (integerValue)
        {
          goto LABEL_6;
        }

        break;
      }
    }

    typeCopy = v16;
  }

  else
  {
    integerValue2 = 0;
  }

  if (typeCopy)
  {
    v15 = integerValue2;
  }

  else
  {
    v15 = integerValue;
  }

  if (v15)
  {
    [(CEKLightingControl *)self->_lightingControl setSelectedLightingType:v15 animated:1];
    [(PUPhotoEditPortraitToolController *)self lightingControlDidChangeSelectedLightingType:self->_lightingControl];
  }
}

- (BOOL)_setupApertureControlsIfNeeded
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  depthAdjustmentController = [compositionController depthAdjustmentController];

  canAdjustApertureValue = [depthAdjustmentController canAdjustApertureValue];
  apertureToolbar = self->_apertureToolbar;
  if (canAdjustApertureValue)
  {
    v7 = apertureToolbar == 0;
    if (!apertureToolbar)
    {
      v8 = objc_alloc_init(PUPhotoEditApertureToolbar);
      [(PUPhotoEditApertureToolbar *)v8 setDelegate:self];
      [(PUPhotoEditApertureToolbar *)v8 setLayoutOrientation:[(PUPhotoEditToolController *)self layoutOrientation]];
      [depthAdjustmentController minimumAperture];
      [(PUPhotoEditApertureToolbar *)v8 setMinimumApertureValue:?];
      [depthAdjustmentController maximumAperture];
      [(PUPhotoEditApertureToolbar *)v8 setMaximumApertureValue:?];
      [depthAdjustmentController aperture];
      if (v9 > 0.0)
      {
        [(PUPhotoEditApertureToolbar *)v8 setApertureValueClosestTo:?];
      }

      apertureContainer = self->_apertureContainer;
      view = [(PUPhotoEditApertureToolbar *)v8 view];
      [(UIView *)apertureContainer addSubview:view];

      depthInfo = [depthAdjustmentController depthInfo];
      v13 = [depthInfo objectForKeyedSubscript:@"capturedAperture"];

      [v13 floatValue];
      if (v13 && v14 > 0.0)
      {
        [(PUPhotoEditApertureToolbar *)v8 setOriginalApertureValueClosestTo:v14];
      }

      objc_storeStrong(&self->_apertureToolbar, v8);
      v15 = +[PUPhotoEditProtoSettings sharedInstance];
      apertureSliderHasOffPosition = [v15 apertureSliderHasOffPosition];

      if (apertureSliderHasOffPosition)
      {
        -[PUPhotoEditApertureToolbar setDepthIsOn:](self->_apertureToolbar, "setDepthIsOn:", [depthAdjustmentController enabled]);
      }

      else
      {
        -[PUPhotoEditApertureToolbar setEnabled:](self->_apertureToolbar, "setEnabled:", [depthAdjustmentController enabled]);
      }
    }

    if (!self->_apertureButton)
    {
      v17 = +[PUInterfaceManager currentTheme];
      v18 = objc_alloc_init(PUPhotoEditApertureButton);
      apertureButton = self->_apertureButton;
      self->_apertureButton = &v18->super;

      view2 = [(PUPhotoEditPortraitToolController *)self view];
      v21 = [view2 effectiveUserInterfaceLayoutDirection] != 1;

      v22 = MEMORY[0x1B8C6D660]([(CEKApertureButton *)self->_apertureButton setExpansionDirection:v21]);
      v23 = 11.0;
      if (v22)
      {
        v23 = 0.0;
      }

      [(CEKApertureButton *)self->_apertureButton setTappableEdgeInsets:v23, v23, v23, v23];
      [(CEKApertureButton *)self->_apertureButton setTranslatesAutoresizingMaskIntoConstraints:0];
      photoEditingToolbarMainButtonColor = [v17 photoEditingToolbarMainButtonColor];
      [(CEKApertureButton *)self->_apertureButton setTintColor:photoEditingToolbarMainButtonColor];

      [(CEKApertureButton *)self->_apertureButton addTarget:self action:sel__handlePortraitNavigationButtons_ forControlEvents:64];
      [(PUPhotoEditPortraitToolController *)self _updateNavigationButtonsAnimated:0];
      goto LABEL_20;
    }
  }

  else
  {
    v7 = apertureToolbar != 0;
    if (apertureToolbar)
    {
      self->_apertureToolbar = 0;
    }

    v17 = self->_apertureButton;
    if (v17)
    {
      self->_apertureButton = 0;
LABEL_20:

      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)_setupLightingControlsIfNeeded
{
  _canRenderPortraitEffect = [(PUPhotoEditPortraitToolController *)self _canRenderPortraitEffect];
  lightingControl = self->_lightingControl;
  if (!_canRenderPortraitEffect)
  {
    if (lightingControl)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:self->_lightingControlConstraints];
      lightingControlConstraints = self->_lightingControlConstraints;
      self->_lightingControlConstraints = 0;

      [(CEKLightingControl *)self->_lightingControl removeFromSuperview];
      v15 = self->_lightingControl;
      self->_lightingControl = 0;

      v8 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (lightingControl)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v5 = objc_alloc(MEMORY[0x1E6993868]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v7 = self->_lightingControl;
  self->_lightingControl = v6;

  [(UIView *)self->_lightingContainer addSubview:self->_lightingControl];
  [(CEKLightingControl *)self->_lightingControl setDelegate:self];
  [(CEKLightingControl *)self->_lightingControl preloadEffectChangeAnimation];
  [(CEKLightingControl *)self->_lightingControl setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = 1;
  [(CEKLightingControl *)self->_lightingControl setHighlighted:1];
  [(CEKLightingControl *)self->_lightingControl setNameBadgeHidden:1];
  _shouldShowPortraitV2 = [(PUPhotoEditPortraitToolController *)self _shouldShowPortraitV2];
  v10 = 2;
  if (_shouldShowPortraitV2)
  {
    v10 = 3;
  }

  if (self->_isStageLightEnabled)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  [(CEKLightingControl *)self->_lightingControl setLightingEffectSet:v11];
  v12 = objc_alloc_init(_PULightingGradientView);
  lightingGradient = self->_lightingGradient;
  self->_lightingGradient = v12;

  [(_PULightingGradientView *)self->_lightingGradient setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PUPhotoEditPortraitToolController *)self _updateLightingControl];
  self->_initialLightingType = [(CEKLightingControl *)self->_lightingControl selectedLightingType];
LABEL_12:
  _shouldShowPortraitV22 = [(PUPhotoEditPortraitToolController *)self _shouldShowPortraitV2];
  lightingIntensityButton = self->_lightingIntensityButton;
  if (_shouldShowPortraitV22)
  {
    if (!lightingIntensityButton)
    {
      objc_initWeak(&location, self);
      photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
      v19 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"camera.lightcontrol" selectedImageNamed:0 accessibilityLabel:&stru_1F2AC6818 spec:photoEditSpec];
      v20 = self->_lightingIntensityButton;
      self->_lightingIntensityButton = v19;

      [(PUPhotoEditToolbarButton *)self->_lightingIntensityButton setSelectedGlyphHasHighlightColor:1];
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __67__PUPhotoEditPortraitToolController__setupLightingControlsIfNeeded__block_invoke;
      v33 = &unk_1E7B7AEE0;
      objc_copyWeak(&v34, &location);
      [(PUPhotoEditToolbarButton *)self->_lightingIntensityButton setActionBlock:&v30];
      [(PUPhotoEditPortraitToolController *)self _updateNavigationButtonsAnimated:0, v30, v31, v32, v33];
      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
      v8 = 1;
    }

    if (!self->_lightingSlider)
    {
      v21 = +[PUPhotoEditSupport createEditSlider];
      lightingSlider = self->_lightingSlider;
      self->_lightingSlider = v21;

      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      lightingIntensityCache = self->_lightingIntensityCache;
      self->_lightingIntensityCache = v23;

      [(CEKSlider *)self->_lightingSlider setDelegate:self];
      [(CEKSlider *)self->_lightingSlider setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_lightingContainer addSubview:self->_lightingSlider];
      compositionController = [(PUPhotoEditToolController *)self compositionController];
      portraitAdjustmentController = [compositionController portraitAdjustmentController];

      if (portraitAdjustmentController)
      {
        [portraitAdjustmentController strength];
        [(CEKSlider *)self->_lightingSlider setValue:?];
      }

      [(CEKSlider *)self->_lightingSlider setMinimumValue:0.0];
      [(CEKSlider *)self->_lightingSlider setMaximumValue:1.0];
      if (objc_opt_respondsToSelector())
      {
        [(CEKSlider *)self->_lightingSlider setLabelVerticalPadding:-35.0];
      }

      if (objc_opt_respondsToSelector())
      {
        [(CEKSlider *)self->_lightingSlider setValueLabelVisibility:1];
      }

      if (objc_opt_respondsToSelector())
      {
        [(CEKSlider *)self->_lightingSlider setAnimationDuration:0.5];
      }

      [(PUPhotoEditPortraitToolController *)self _updateLightingSliderAnimated:0];
      [(PUPhotoEditPortraitToolController *)self _updateLightingIntensityCache];
      [(CEKSlider *)self->_lightingSlider value];
      self->_initialLightingIntensity = v27;

      return 1;
    }
  }

  else
  {
    if (lightingIntensityButton)
    {
      self->_lightingIntensityButton = 0;

      v8 = 1;
    }

    v28 = self->_lightingSlider;
    if (v28)
    {
      self->_lightingSlider = 0;

      return 1;
    }
  }

  return v8;
}

void __67__PUPhotoEditPortraitToolController__setupLightingControlsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePortraitNavigationButtons:v3];
}

- (BOOL)_setupDepthControlsIfNeeded
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  depthAdjustmentController = [compositionController depthAdjustmentController];

  canRenderDepth = [depthAdjustmentController canRenderDepth];
  enabled = [depthAdjustmentController enabled];
  portraitToolbarButton = self->_portraitToolbarButton;
  if (canRenderDepth)
  {
    if (!portraitToolbarButton)
    {
      v8 = enabled;
      _depthButtonTitle = [(PUPhotoEditPortraitToolController *)self _depthButtonTitle];
      localizedUppercaseString = [_depthButtonTitle localizedUppercaseString];
      v11 = [PUPhotoEditToolActivationButton buttonWithTitle:localizedUppercaseString];
      v12 = self->_portraitToolbarButton;
      self->_portraitToolbarButton = v11;

      [(PUPhotoEditToolActivationButton *)self->_portraitToolbarButton setTranslatesAutoresizingMaskIntoConstraints:0];
      objc_initWeak(&location, self);
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __64__PUPhotoEditPortraitToolController__setupDepthControlsIfNeeded__block_invoke;
      v22 = &unk_1E7B7AC30;
      objc_copyWeak(&v23, &location);
      [(PUPhotoEditToolActivationButton *)self->_portraitToolbarButton setActionBlock:&v19];
      [(PUPhotoEditToolActivationButton *)self->_portraitToolbarButton setSelected:v8, v19, v20, v21, v22];
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
LABEL_6:
      v13 = 1;
      goto LABEL_8;
    }
  }

  else if (portraitToolbarButton)
  {
    self->_portraitToolbarButton = 0;

    goto LABEL_6;
  }

  v13 = 0;
LABEL_8:
  if ([(PUPhotoEditPortraitToolController *)self _shouldShowPortraitFocusEditingUI])
  {
    compositionController2 = [(PUPhotoEditToolController *)self compositionController];
    depthAdjustmentController2 = [compositionController2 depthAdjustmentController];

    enabled2 = [depthAdjustmentController2 enabled];
    focusOverlayController = self->_focusOverlayController;
    if (enabled2)
    {
      if (!focusOverlayController)
      {
        goto LABEL_13;
      }
    }

    else if (focusOverlayController)
    {
LABEL_13:
      v13 = 1;
    }

    [(PUPhotoEditPortraitToolController *)self _updateFocusOverlay];
  }

  return v13;
}

void __64__PUPhotoEditPortraitToolController__setupDepthControlsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePortraitEffectButton:v3];
}

- (void)_refreshFromValuesCalculator
{
  v95 = *MEMORY[0x1E69E9840];
  valuesCalculator = [(PUPhotoEditToolController *)self valuesCalculator];
  if (![valuesCalculator hasImageValues])
  {
    goto LABEL_50;
  }

  v4 = [valuesCalculator portraitValuesWithAccuracy:0];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BDFF8]];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BE070]];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BE080]];
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BDFA0]];
  objc_opt_class();
  v78 = v8;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69BDFA8];
  v11 = v9;
  v12 = [v4 objectForKeyedSubscript:v10];
  objc_opt_class();
  v77 = v12;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  [(PUPhotoEditPortraitToolController *)self setMajorVersion:unsignedIntegerValue];
  unsignedIntegerValue2 = [v14 unsignedIntegerValue];

  [(PUPhotoEditPortraitToolController *)self setMinorVersion:unsignedIntegerValue2];
  v17 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BE000]];
  objc_opt_class();
  v76 = v17;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69BE008];
  v20 = v18;
  v21 = [v4 objectForKeyedSubscript:v19];
  objc_opt_class();
  v75 = v21;
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  unsignedIntegerValue3 = [v20 unsignedIntegerValue];

  [(PUPhotoEditPortraitToolController *)self setDepthInfoMajorVersion:unsignedIntegerValue3];
  unsignedIntegerValue4 = [v23 unsignedIntegerValue];

  [(PUPhotoEditPortraitToolController *)self setDepthInfoMinorVersion:unsignedIntegerValue4];
  v26 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69BE078]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  -[PUPhotoEditPortraitToolController setSDOFRenderingVersion:](self, "setSDOFRenderingVersion:", [v27 unsignedIntegerValue]);
  v28 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BE088]];
  [v28 floatValue];
  v30 = v29;

  compositionController = [(PUPhotoEditToolController *)self compositionController];
  portraitAdjustmentController = [compositionController portraitAdjustmentController];
  portraitInfo = [portraitAdjustmentController portraitInfo];

  v79 = v7;
  v74 = portraitAdjustmentController;
  if (portraitInfo || !v6)
  {
    portraitInfo2 = [portraitAdjustmentController portraitInfo];
    cachedPortraitEffectSettings = self->_cachedPortraitEffectSettings;
    self->_cachedPortraitEffectSettings = portraitInfo2;

    spillMatteAllowed = [portraitAdjustmentController spillMatteAllowed];
    cachedSpillMatteAllowed = self->_cachedSpillMatteAllowed;
    self->_cachedSpillMatteAllowed = spillMatteAllowed;
  }

  else
  {
    objc_storeStrong(&self->_cachedPortraitEffectSettings, v6);
    objc_storeStrong(&self->_cachedSpillMatteAllowed, v7);
    if (portraitAdjustmentController)
    {
      v34 = *MEMORY[0x1E69BE060];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __65__PUPhotoEditPortraitToolController__refreshFromValuesCalculator__block_invoke;
      v89[3] = &unk_1E7B7A618;
      v90 = v6;
      v92 = v30;
      v91 = v4;
      [compositionController modifyAdjustmentWithKey:v34 modificationBlock:v89];
    }
  }

  v80 = v6;
  v39 = *MEMORY[0x1E69BDFE0];
  v40 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BDFE0]];
  [v40 floatValue];
  v42 = v41;

  v81 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BDFE8]];
  v82 = compositionController;
  depthAdjustmentController = [compositionController depthAdjustmentController];
  depthInfo = [depthAdjustmentController depthInfo];
  if (depthInfo)
  {
    v45 = depthInfo;
    depthInfo2 = [depthAdjustmentController depthInfo];
    v47 = [depthInfo2 objectForKeyedSubscript:@"focusRect"];
    if (v47)
    {

      goto LABEL_28;
    }
  }

  if (!v5)
  {
    goto LABEL_29;
  }

  adjustmentConstants = [v82 adjustmentConstants];
  pIDepthAdjustmentKey = [adjustmentConstants PIDepthAdjustmentKey];
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __65__PUPhotoEditPortraitToolController__refreshFromValuesCalculator__block_invoke_2;
  v83[3] = &unk_1E7B7A640;
  v84 = v5;
  v88 = v42;
  v85 = v81;
  v86 = v4;
  v87 = depthAdjustmentController;
  [v82 modifyAdjustmentWithKey:pIDepthAdjustmentKey modificationBlock:v83];

  v45 = v84;
LABEL_28:

LABEL_29:
  v50 = [valuesCalculator apertureValuesWithAccuracy:0];
  v51 = [v50 objectForKeyedSubscript:v39];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    depthInfo3 = [depthAdjustmentController depthInfo];
    v53 = [depthInfo3 objectForKey:@"capturedAperture"];

    if (!v53)
    {
      depthInfo4 = [depthAdjustmentController depthInfo];
      v55 = [depthInfo4 mutableCopy];

      [v55 setObject:v51 forKeyedSubscript:@"capturedAperture"];
      [depthAdjustmentController setDepthInfo:v55];
    }
  }

  v56 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    _canRenderPortraitEffect = [(PUPhotoEditPortraitToolController *)self _canRenderPortraitEffect];
    v58 = @"N";
    if (_canRenderPortraitEffect)
    {
      v58 = @"Y";
    }

    *buf = 138412290;
    v94 = v58;
    _os_log_impl(&dword_1B36F3000, v56, OS_LOG_TYPE_DEFAULT, "PUPhotoEditPortraitToolCOntroller: has portrait? %@", buf, 0xCu);
  }

  valuesCalculator2 = [(PUPhotoEditToolController *)self valuesCalculator];
  hasImageValues = [valuesCalculator2 hasImageValues];

  if (hasImageValues)
  {
    v73 = valuesCalculator;
    v61 = v26;
    v62 = v5;
    valuesCalculator3 = [(PUPhotoEditToolController *)self valuesCalculator];
    v64 = [valuesCalculator3 portraitValuesWithAccuracy:0];

    v65 = [v64 objectForKeyedSubscript:*MEMORY[0x1E69BE068]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_isStageLightEnabled = [v65 BOOLValue] ^ 1;
    }

    v66 = [v64 objectForKeyedSubscript:*MEMORY[0x1E69BE090]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_tapToFocusEnabled = [v66 BOOLValue];
    }

    v5 = v62;
    v26 = v61;
    valuesCalculator = v73;
  }

  _setupDepthControlsIfNeeded = [(PUPhotoEditPortraitToolController *)self _setupDepthControlsIfNeeded];
  _setupLightingControlsIfNeeded = [(PUPhotoEditPortraitToolController *)self _setupLightingControlsIfNeeded];
  _setupApertureControlsIfNeeded = [(PUPhotoEditPortraitToolController *)self _setupApertureControlsIfNeeded];
  if (_setupDepthControlsIfNeeded || _setupLightingControlsIfNeeded || _setupApertureControlsIfNeeded)
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    [delegate toolControllerDidUpdateToolbar:self];

    view = [(PUPhotoEditPortraitToolController *)self view];
    [view setNeedsUpdateConstraints];
  }

  toolSelection = [(PUPhotoEditPortraitToolController *)self toolSelection];
  if (depthAdjustmentController && !toolSelection)
  {
    [(PUPhotoEditPortraitToolController *)self _resetDefaultToolMode];
  }

LABEL_50:
}

void __65__PUPhotoEditPortraitToolController__refreshFromValuesCalculator__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPortraitInfo:v3];
  [v4 setStrength:*(a1 + 48)];
  v5 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69BE080]];
  [v4 setSpillMatteAllowed:v5];
}

void __65__PUPhotoEditPortraitToolController__refreshFromValuesCalculator__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setDepthInfo:*(a1 + 32)];
  [v5 setAperture:*(a1 + 64)];
  [v5 setFocusRect:*(a1 + 40)];
  v3 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x1E69BDFF0]];
  [v5 setGlassesMatteAllowed:v3];

  v4 = [*(a1 + 56) depthInfo];

  if (!v4)
  {
    [v5 setEnabled:0];
  }
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == sel_navigateToPreviousTab_)
  {
    v3 = @"PHOTOEDIT_PORTRAIT_LIGHTING_EFFECTS_KEY_COMMAND_TITLE";
  }

  else
  {
    if ([commandCopy action] != sel_navigateToNextTab_)
    {
      goto LABEL_6;
    }

    v3 = @"PHOTOEDIT_PORTRAIT_APERTURE_KEY_COMMAND_TITLE";
  }

  v4 = PULocalizedString(v3);
  [commandCopy setTitle:v4];

LABEL_6:
}

- (void)_updateApertureSliderLength
{
  apertureToolbar = [(PUPhotoEditPortraitToolController *)self apertureToolbar];

  if (apertureToolbar)
  {
    photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
    shouldDisplayCompactToolbar = [photoEditSpec shouldDisplayCompactToolbar];

    v6 = 0.0;
    if ((shouldDisplayCompactToolbar & 1) == 0)
    {
      photoEditSpec2 = [(PUPhotoEditToolController *)self photoEditSpec];
      currentLayoutStyle = [photoEditSpec2 currentLayoutStyle];

      layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
      if (currentLayoutStyle != 4 && layoutOrientation == 1)
      {
        v6 = 275.0;
      }

      else
      {
        v6 = 375.0;
      }
    }

    apertureToolbar2 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
    [apertureToolbar2 setSliderWidth:v6];
  }
}

- (void)_updateToolVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [(PUPhotoEditPortraitToolController *)self toolSelection]== 1;
  v6 = [(PUPhotoEditPortraitToolController *)self toolSelection]== 2;
  [(PUPhotoEditToolController *)self setToolGradientDistance:dbl_1B3D0CF30[v5]];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PUPhotoEditPortraitToolController__updateToolVisibilityAnimated___block_invoke;
  aBlock[3] = &unk_1E7B7DF20;
  aBlock[4] = self;
  v13 = v5;
  v14 = v6;
  v7 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__PUPhotoEditPortraitToolController__updateToolVisibilityAnimated___block_invoke_2;
  v9[3] = &unk_1E7B7A5F0;
  v9[4] = self;
  v10 = v5;
  v11 = v6;
  v8 = _Block_copy(v9);
  if (animatedCopy)
  {
    [(UIView *)self->_lightingContainer setHidden:0];
    [(UIView *)self->_apertureContainer setHidden:0];
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v7 options:v8 animations:0.25 completion:0.0];
  }

  else
  {
    v7[2](v7);
    v8[2](v8, 1);
  }
}

uint64_t __67__PUPhotoEditPortraitToolController__updateToolVisibilityAnimated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  [*(*(a1 + 32) + 1232) setAlpha:v2];
  if (*(a1 + 41))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = *(*(a1 + 32) + 1240);

  return [v4 setAlpha:v3];
}

uint64_t __67__PUPhotoEditPortraitToolController__updateToolVisibilityAnimated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1232) setHidden:(*(a1 + 40) & 1) == 0];
  v2 = *(*(a1 + 32) + 1240);
  v3 = (*(a1 + 41) & 1) == 0;

  return [v2 setHidden:v3];
}

- (void)setToolSelection:(int64_t)selection animated:(BOOL)animated
{
  if (self->_toolSelection != selection)
  {
    self->_toolSelection = selection;
    [(PUPhotoEditPortraitToolController *)self _updateToolVisibilityAnimated:animated];
  }
}

- (BOOL)_canRenderPortraitEffect
{
  v3 = PECanRenderPortrait();
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  portraitAdjustmentController = [compositionController portraitAdjustmentController];

  if (v3)
  {
    v6 = ([portraitAdjustmentController canRenderPortraitEffect] & 1) != 0 || -[NSDictionary count](self->_cachedPortraitEffectSettings, "count") != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)longPressed:(id)pressed
{
  if ([pressed state] != 2)
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    [delegate toolControllerWantsToToggleOriginal:self];
  }
}

- (void)previewingOriginalDidStop
{
  view = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
  [view setHidden:0];
}

- (void)previewingOriginalDidStart
{
  view = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
  [view setHidden:1];
}

- (void)updateViewConstraints
{
  [(PUPhotoEditPortraitToolController *)self _updateToolContainerConstraints];
  [(PUPhotoEditPortraitToolController *)self _updateToolConstraints];
  [(PUPhotoEditPortraitToolController *)self _updateFocusOverlayConstraints];
  v3.receiver = self;
  v3.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditPortraitToolController *)&v3 updateViewConstraints];
}

- (void)_updateFocusOverlayConstraints
{
  v24[4] = *MEMORY[0x1E69E9840];
  if (self->_focusOverlayController)
  {
    if (!self->_focusOverlayControllerConstraints)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      focusOverlayControllerConstraints = self->_focusOverlayControllerConstraints;
      self->_focusOverlayControllerConstraints = v3;

      view = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
      v16 = self->_focusOverlayControllerConstraints;
      leadingAnchor = [view leadingAnchor];
      view2 = [(PUPhotoEditPortraitToolController *)self view];
      leadingAnchor2 = [view2 leadingAnchor];
      v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v24[0] = v20;
      trailingAnchor = [view trailingAnchor];
      view3 = [(PUPhotoEditPortraitToolController *)self view];
      trailingAnchor2 = [view3 trailingAnchor];
      v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v24[1] = v15;
      topAnchor = [view topAnchor];
      view4 = [(PUPhotoEditPortraitToolController *)self view];
      topAnchor2 = [view4 topAnchor];
      v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v24[2] = v7;
      bottomAnchor = [view bottomAnchor];
      view5 = [(PUPhotoEditPortraitToolController *)self view];
      bottomAnchor2 = [view5 bottomAnchor];
      v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v24[3] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
      [(NSMutableArray *)v16 addObjectsFromArray:v12];

      [MEMORY[0x1E696ACD8] activateConstraints:self->_focusOverlayControllerConstraints];
    }
  }
}

- (void)_updateToolConstraints
{
  v55[4] = *MEMORY[0x1E69E9840];
  if (!self->_toolConstraints)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    toolConstraints = self->_toolConstraints;
    self->_toolConstraints = v3;

    lightingControl = self->_lightingControl;
    if (lightingControl)
    {
      v39 = self->_toolConstraints;
      heightAnchor = [(CEKLightingControl *)lightingControl heightAnchor];
      v46 = [heightAnchor constraintEqualToConstant:140.0];
      v55[0] = v46;
      widthAnchor = [(UIView *)self->_lightingContainer widthAnchor];
      widthAnchor2 = [(CEKLightingControl *)self->_lightingControl widthAnchor];
      v37 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v55[1] = v37;
      centerXAnchor = [(UIView *)self->_lightingContainer centerXAnchor];
      centerXAnchor2 = [(CEKLightingControl *)self->_lightingControl centerXAnchor];
      v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v55[2] = v8;
      topAnchor = [(UIView *)self->_lightingContainer topAnchor];
      topAnchor2 = [(CEKLightingControl *)self->_lightingControl topAnchor];
      v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v55[3] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
      [(NSMutableArray *)v39 addObjectsFromArray:v12];

      v13 = self->_toolConstraints;
      lightingContainer = self->_lightingContainer;
      if (self->_lightingSlider)
      {
        widthAnchor3 = [(UIView *)lightingContainer widthAnchor];
        widthAnchor4 = [(CEKSlider *)self->_lightingSlider widthAnchor];
        v44 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
        v54[0] = v44;
        centerXAnchor3 = [(UIView *)self->_lightingContainer centerXAnchor];
        centerXAnchor4 = [(CEKSlider *)self->_lightingSlider centerXAnchor];
        v40 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
        v54[1] = v40;
        bottomAnchor = [(UIView *)self->_lightingContainer bottomAnchor];
        bottomAnchor2 = [(CEKSlider *)self->_lightingSlider bottomAnchor];
        v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:5.0];
        v54[2] = v15;
        bottomAnchor3 = [(CEKLightingControl *)self->_lightingControl bottomAnchor];
        [(CEKSlider *)self->_lightingSlider topAnchor];
        v18 = v17 = v13;
        v19 = [bottomAnchor3 constraintEqualToAnchor:v18 constant:10.0];
        v54[3] = v19;
        heightAnchor2 = [(CEKSlider *)self->_lightingSlider heightAnchor];
        v21 = [heightAnchor2 constraintEqualToConstant:66.0];
        v54[4] = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:5];
        [(NSMutableArray *)v17 addObjectsFromArray:v22];

        bottomAnchor5 = widthAnchor4;
        bottomAnchor4 = widthAnchor3;

        v25 = v44;
      }

      else
      {
        bottomAnchor4 = [(UIView *)lightingContainer bottomAnchor];
        bottomAnchor5 = [(CEKLightingControl *)self->_lightingControl bottomAnchor];
        v25 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:66.0];
        [(NSMutableArray *)v13 addObject:v25];
      }
    }

    apertureToolbar = self->_apertureToolbar;
    if (apertureToolbar)
    {
      view = [(PUPhotoEditApertureToolbar *)apertureToolbar view];
      v45 = self->_toolConstraints;
      widthAnchor5 = [(UIView *)self->_apertureContainer widthAnchor];
      widthAnchor6 = [view widthAnchor];
      v48 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
      v53[0] = v48;
      centerXAnchor5 = [(UIView *)self->_apertureContainer centerXAnchor];
      centerXAnchor6 = [view centerXAnchor];
      v30 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
      v53[1] = v30;
      bottomAnchor6 = [(UIView *)self->_apertureContainer bottomAnchor];
      bottomAnchor7 = [view bottomAnchor];
      v33 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
      v53[2] = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];
      [(NSMutableArray *)v45 addObjectsFromArray:v34];
    }

    [MEMORY[0x1E696ACD8] activateConstraints:self->_toolConstraints];
  }
}

- (void)_updateToolContainerConstraints
{
  v97[3] = *MEMORY[0x1E69E9840];
  toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];
  window = [toolContainerView window];

  if (window)
  {
    if (!self->_containerConstraints && self->_lightingContainer)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      containerConstraints = self->_containerConstraints;
      self->_containerConstraints = v5;

      photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
      currentLayoutStyle = [photoEditSpec currentLayoutStyle];

      v90 = toolContainerView;
      if ([(PUPhotoEditToolController *)self layoutOrientation]!= 1 || currentLayoutStyle == 4)
      {
        v69 = currentLayoutStyle;
        v21 = objc_alloc_init(MEMORY[0x1E69DCC20]);
        view = [(PUPhotoEditPortraitToolController *)self view];
        [view addLayoutGuide:v21];

        centerYAnchor = [toolContainerView centerYAnchor];
        window2 = [toolContainerView window];

        if (window2)
        {
          window3 = [toolContainerView window];
          centerYAnchor2 = [window3 centerYAnchor];

          centerYAnchor = centerYAnchor2;
        }

        v77 = self->_containerConstraints;
        heightAnchor = [v21 heightAnchor];
        heightAnchor2 = [toolContainerView heightAnchor];
        v27 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
        v96[0] = v27;
        [v21 centerYAnchor];
        v29 = v28 = v21;
        v85 = centerYAnchor;
        v30 = [v29 constraintEqualToAnchor:centerYAnchor];
        v96[1] = v30;
        rightAnchor = [v28 rightAnchor];
        rightAnchor2 = [toolContainerView rightAnchor];
        v33 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:5.0];
        v96[2] = v33;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:3];
        [(NSMutableArray *)v77 addObjectsFromArray:v34];

        v71 = self->_containerConstraints;
        centerXAnchor = [(UIView *)self->_lightingContainer centerXAnchor];
        centerXAnchor2 = [v28 centerXAnchor];
        v75 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v95[0] = v75;
        centerYAnchor3 = [(UIView *)self->_lightingContainer centerYAnchor];
        centerYAnchor4 = [v28 centerYAnchor];
        v70 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
        v95[1] = v70;
        widthAnchor = [(UIView *)self->_lightingContainer widthAnchor];
        heightAnchor3 = [v28 heightAnchor];
        v37 = [widthAnchor constraintEqualToAnchor:heightAnchor3];
        v95[2] = v37;
        heightAnchor4 = [(UIView *)self->_lightingContainer heightAnchor];
        widthAnchor2 = [v28 widthAnchor];
        v40 = [heightAnchor4 constraintEqualToAnchor:widthAnchor2];
        v95[3] = v40;
        v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:4];
        [(NSMutableArray *)v71 addObjectsFromArray:v41];

        if ([(PUPhotoEditToolController *)self layoutOrientation]== 3)
        {
          v42 = -1.57079633;
        }

        else
        {
          layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
          v44 = v69 == 4 || layoutOrientation == 2;
          v42 = 1.57079633;
          if (v44)
          {
            v42 = -1.57079633;
          }
        }

        CGAffineTransformMakeRotation(&v92, v42);
        lightingContainer = self->_lightingContainer;
        v93 = v92;
        [(UIView *)lightingContainer setTransform:&v93];
        v19 = 0x1E695D000uLL;
        widthAnchor4 = v85;
        v20 = v28;
      }

      else
      {
        v9 = self->_lightingContainer;
        v10 = *(MEMORY[0x1E695EFD0] + 16);
        *&v93.a = *MEMORY[0x1E695EFD0];
        *&v93.c = v10;
        *&v93.tx = *(MEMORY[0x1E695EFD0] + 32);
        [(UIView *)v9 setTransform:&v93];
        v80 = self->_containerConstraints;
        widthAnchor3 = [toolContainerView widthAnchor];
        widthAnchor4 = [(UIView *)self->_lightingContainer widthAnchor];
        v84 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
        v97[0] = v84;
        centerXAnchor3 = [toolContainerView centerXAnchor];
        centerXAnchor4 = [(UIView *)self->_lightingContainer centerXAnchor];
        v14 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
        v97[1] = v14;
        bottomAnchor = [toolContainerView bottomAnchor];
        bottomAnchor2 = [(UIView *)self->_lightingContainer bottomAnchor];
        v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v97[2] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:3];
        [(NSMutableArray *)v80 addObjectsFromArray:v18];

        v19 = 0x1E695D000;
        v20 = widthAnchor3;
      }

      v74 = self->_containerConstraints;
      topAnchor = [(UIView *)self->_lightingContainer topAnchor];
      topAnchor2 = [(UIView *)self->_apertureContainer topAnchor];
      v83 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v94[0] = v83;
      bottomAnchor3 = [(UIView *)self->_lightingContainer bottomAnchor];
      bottomAnchor4 = [(UIView *)self->_apertureContainer bottomAnchor];
      v46 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v94[1] = v46;
      leftAnchor = [(UIView *)self->_lightingContainer leftAnchor];
      leftAnchor2 = [(UIView *)self->_apertureContainer leftAnchor];
      v49 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v94[2] = v49;
      rightAnchor3 = [(UIView *)self->_lightingContainer rightAnchor];
      rightAnchor4 = [(UIView *)self->_apertureContainer rightAnchor];
      v52 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
      v94[3] = v52;
      v53 = [*(v19 + 3784) arrayWithObjects:v94 count:4];
      [(NSMutableArray *)v74 addObjectsFromArray:v53];

      v54 = self->_lightingContainer;
      if (v54)
      {
        [(UIView *)v54 transform];
      }

      else
      {
        memset(&v91, 0, sizeof(v91));
      }

      toolContainerView = v90;
      apertureContainer = self->_apertureContainer;
      v93 = v91;
      [(UIView *)apertureContainer setTransform:&v93];
      [MEMORY[0x1E696ACD8] activateConstraints:self->_containerConstraints];
    }

    lightingNameBadge = self->_lightingNameBadge;
    if (lightingNameBadge)
    {
      if (!self->_lightingNameBadgeConstraints)
      {
        window4 = [(CEKLightingNameBadge *)lightingNameBadge window];

        if (window4)
        {
          array = [MEMORY[0x1E695DF70] array];
          delegate = [(PUPhotoEditToolController *)self delegate];
          mediaView = [delegate mediaView];
          _scrollView = [mediaView _scrollView];

          bottomAnchor5 = [(CEKLightingNameBadge *)self->_lightingNameBadge bottomAnchor];
          bottomAnchor6 = [_scrollView bottomAnchor];
          v64 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-10.0];
          [(NSArray *)array addObject:v64];

          centerXAnchor5 = [(CEKLightingNameBadge *)self->_lightingNameBadge centerXAnchor];
          centerXAnchor6 = [_scrollView centerXAnchor];
          v67 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6 constant:0.0];
          [(NSArray *)array addObject:v67];

          [MEMORY[0x1E696ACD8] activateConstraints:array];
          lightingNameBadgeConstraints = self->_lightingNameBadgeConstraints;
          self->_lightingNameBadgeConstraints = array;
        }
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditPortraitToolController *)&v6 viewWillDisappear:disappear];
  [(PUPhotoEditPortraitToolController *)self _removeFocusOverlayIfNeeded];
  view = [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer view];
  [view removeGestureRecognizer:self->_longPressGestureRecognizer];

  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  self->_longPressGestureRecognizer = 0;
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditToolController *)&v12 viewWillAppear:appear];
  [(PUPhotoEditPortraitToolController *)self _updateFocusOverlay];
  asset = [(PUPhotoEditToolController *)self asset];
  isLivePhoto = [asset isLivePhoto];

  if ((isLivePhoto & 1) == 0)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_longPressed_];
    longPressGestureRecognizer = self->_longPressGestureRecognizer;
    self->_longPressGestureRecognizer = v6;

    [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setDelegate:0];
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    depthAdjustmentController = [compositionController depthAdjustmentController];
    -[UILongPressGestureRecognizer setEnabled:](self->_longPressGestureRecognizer, "setEnabled:", [depthAdjustmentController enabled]);
    delegate = [(PUPhotoEditToolController *)self delegate];
    mediaView = [delegate mediaView];
    [mediaView addGestureRecognizer:self->_longPressGestureRecognizer];
  }
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditPortraitToolController *)&v9 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  lightingContainer = self->_lightingContainer;
  self->_lightingContainer = v3;

  [(UIView *)self->_lightingContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];
  [toolContainerView addSubview:self->_lightingContainer];

  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  apertureContainer = self->_apertureContainer;
  self->_apertureContainer = v6;

  [(UIView *)self->_apertureContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  toolContainerView2 = [(PUPhotoEditToolController *)self toolContainerView];
  [toolContainerView2 addSubview:self->_apertureContainer];
}

- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator
{
  v7.receiver = self;
  v7.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditToolController *)&v7 setupWithAsset:asset compositionController:controller editSource:source valuesCalculator:calculator];
  [(PUPhotoEditPortraitToolController *)self setToolSelection:[(PUPhotoEditPortraitToolController *)self _defaultPortraitTool]];
  [(PUPhotoEditPortraitToolController *)self _refreshFromValuesCalculator];
  [(PUPhotoEditPortraitToolController *)self _updateApertureSliderLength];
  [(PUPhotoEditPortraitToolController *)self _updateToolVisibilityAnimated:0];
}

@end