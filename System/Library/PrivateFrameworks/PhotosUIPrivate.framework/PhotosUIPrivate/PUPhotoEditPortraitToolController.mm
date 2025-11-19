@interface PUPhotoEditPortraitToolController
- (BOOL)_canRenderPortraitEffect;
- (BOOL)_setupApertureControlsIfNeeded;
- (BOOL)_setupDepthControlsIfNeeded;
- (BOOL)_setupLightingControlsIfNeeded;
- (BOOL)apertureToolbarIsDepthActive;
- (BOOL)apertureToolbarShouldRotateLabelsWithOrientation:(id)a3;
- (BOOL)wantsTapToToggleOriginalEnabled;
- (CGRect)currentFocusRect;
- (id)accessibilityHUDItemForButton:(id)a3;
- (id)leadingToolbarViews;
- (id)viewsActivatingMainToolbarShadow;
- (id)viewsActivatingToolControlShadow;
- (int64_t)_defaultPortraitTool;
- (void)_createFocusOverlayIfNeeded;
- (void)_didModifyLightingIntensity;
- (void)_handlePortraitEffectButton:(id)a3;
- (void)_handlePortraitNavigationButtons:(id)a3;
- (void)_refreshFromValuesCalculator;
- (void)_removeFocusOverlayIfNeeded;
- (void)_resetDefaultToolMode;
- (void)_restoreCachedLightingIntensity;
- (void)_selectNextEffectType:(BOOL)a3;
- (void)_setShowLightingControl:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateApertureSliderLength;
- (void)_updateCompositionWithLightingIntensity;
- (void)_updateFocusOverlay;
- (void)_updateFocusOverlayConstraints;
- (void)_updateLabelOrientation;
- (void)_updateLightingControl;
- (void)_updateLightingIntensityCache;
- (void)_updateLightingMarkerForType:(int64_t)a3;
- (void)_updateLightingNameBadgeForOrientation:(int64_t)a3 expanded:(BOOL)a4;
- (void)_updateLightingSliderAnimated:(BOOL)a3;
- (void)_updateNavigationButtonsAnimated:(BOOL)a3;
- (void)_updateToolConstraints;
- (void)_updateToolContainerConstraints;
- (void)_updateToolVisibilityAnimated:(BOOL)a3;
- (void)apertureToolbar:(id)a3 didChangeValue:(double)a4;
- (void)apertureToolbar:(id)a3 didUpdateDepthActive:(BOOL)a4;
- (void)apertureToolbarDidStartSliding:(id)a3;
- (void)apertureToolbarDidStopSliding:(id)a3;
- (void)compositionControllerDidChangeForAdjustments:(id)a3;
- (void)decreaseScrubberValue:(BOOL)a3;
- (void)decreaseSliderValue:(BOOL)a3;
- (void)focusRectChanged:(CGRect)a3;
- (void)increaseScrubberValue:(BOOL)a3;
- (void)increaseSliderValue:(BOOL)a3;
- (void)lightingControl:(id)a3 willChangeExpanded:(BOOL)a4;
- (void)lightingControlDidChangeExpanded:(id)a3;
- (void)lightingControlDidChangeSelectedLightingType:(id)a3;
- (void)longPressed:(id)a3;
- (void)mediaView:(id)a3 didZoom:(double)a4;
- (void)mediaViewDidEndZooming:(id)a3;
- (void)mediaViewDidScroll:(id)a3;
- (void)mediaViewIsReady;
- (void)navigateToNextTab:(id)a3;
- (void)navigateToPreviousTab:(id)a3;
- (void)previewingOriginalDidStart;
- (void)previewingOriginalDidStop;
- (void)reactivate;
- (void)setBackdropViewGroupName:(id)a3;
- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4;
- (void)setPhotoEditSpec:(id)a3;
- (void)setToolSelection:(int64_t)a3 animated:(BOOL)a4;
- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6;
- (void)sliderDidEndScrolling:(id)a3;
- (void)sliderDidScroll:(id)a3;
- (void)sliderWillBeginScrolling:(id)a3;
- (void)sliderWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)toolControllerWantsToShowOriginal:(BOOL)a3;
- (void)updateViewConstraints;
- (void)validateCommand:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willBecomeActiveTool;
@end

@implementation PUPhotoEditPortraitToolController

- (void)mediaViewDidEndZooming:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditToolController *)&v3 mediaViewDidEndZooming:a3];
}

- (void)mediaViewDidScroll:(id)a3
{
  focusOverlayController = self->_focusOverlayController;
  if (focusOverlayController)
  {
    v5 = [(PUPhotoEditPortraitFocusOverlayViewController *)focusOverlayController view];
    [v5 setNeedsLayout];

    v7 = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
    v6 = [v7 layer];
    [v6 setNeedsDisplay];
  }
}

- (void)mediaView:(id)a3 didZoom:(double)a4
{
  focusOverlayController = self->_focusOverlayController;
  if (focusOverlayController)
  {
    v6 = [(PUPhotoEditPortraitFocusOverlayViewController *)focusOverlayController view:a3];
    [v6 setNeedsLayout];

    v8 = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
    v7 = [v8 layer];
    [v7 setNeedsDisplay];
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

- (void)toolControllerWantsToShowOriginal:(BOOL)a3
{
  v4 = [(PUPhotoEditToolController *)self delegate];
  [v4 toolControllerWantsToToggleOriginal:self];
}

- (CGRect)currentFocusRect
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  v6 = [(PUPhotoEditToolController *)self compositionController];
  v7 = [v6 depthAdjustmentController];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 focusRect];
    if (v9)
    {
      v10 = v9;
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

    v11 = [v8 depthInfo];
    v10 = [v11 objectForKeyedSubscript:@"focusRect"];

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

- (void)focusRectChanged:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PUPhotoEditToolController *)self willModifyAdjustment];
  v8 = [(PUPhotoEditToolController *)self compositionController];
  v9 = [v8 adjustmentConstants];
  v10 = [v9 PIDepthAdjustmentKey];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__PUPhotoEditPortraitToolController_focusRectChanged___block_invoke;
  v13[3] = &__block_descriptor_64_e32_v16__0__PIAdjustmentController_8l;
  *&v13[4] = x;
  *&v13[5] = y;
  *&v13[6] = width;
  *&v13[7] = height;
  [v8 modifyAdjustmentWithKey:v10 modificationBlock:v13];

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
  v2 = [(PUPhotoEditToolController *)self compositionController];
  v3 = [v2 depthAdjustmentController];
  v4 = [v3 enabled];

  return v4;
}

- (void)apertureToolbar:(id)a3 didUpdateDepthActive:(BOOL)a4
{
  v4 = a4;
  v8 = [(PUPhotoEditToolController *)self compositionController];
  v6 = [(PUPhotoEditToolController *)self delegate];
  v7 = [v6 livePortraitBehaviorController];

  [PUPhotoEditEffectsSupport updateCompositionController:v8 withDepthEnabled:v4 livePortraitBehaviorController:v7];
}

- (BOOL)apertureToolbarShouldRotateLabelsWithOrientation:(id)a3
{
  v3 = [(PUPhotoEditToolController *)self photoEditSpec];
  v4 = [v3 currentLayoutStyle] == 4;

  return v4;
}

- (void)apertureToolbarDidStopSliding:(id)a3
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
  v4 = PULocalizedString(@"PHOTOEDIT_PORTRAIT_APERTURE_ACTION_TITLE");
  v5 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v4];

  v11 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
  [v11 apertureValue];
  if (v6 == 0.0)
  {
    lastKnownAperture = self->_lastKnownAperture;

    if (lastKnownAperture > 0.0)
    {
      self->_suspendUIUpdatesFromComposition = 1;
      v8 = [(PUPhotoEditToolController *)self compositionController];
      v9 = [v8 adjustmentConstants];
      v10 = [v9 PIDepthAdjustmentKey];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __67__PUPhotoEditPortraitToolController_apertureToolbarDidStopSliding___block_invoke;
      v12[3] = &unk_1E7B7A688;
      v12[4] = self;
      [v8 modifyAdjustmentWithKey:v10 modificationBlock:v12];

      self->_suspendUIUpdatesFromComposition = 0;
    }
  }

  else
  {
  }
}

- (void)apertureToolbarDidStartSliding:(id)a3
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:1];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:1];
  [(PUPhotoEditToolController *)self willModifyAdjustment];
  [(PUPhotoEditApertureToolbar *)self->_apertureToolbar apertureValue];
  if (v4 > 0.0)
  {
    v6 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
    [v6 apertureValue];
    self->_lastKnownAperture = v5;
  }
}

- (void)apertureToolbar:(id)a3 didChangeValue:(double)a4
{
  v5 = [(PUPhotoEditToolController *)self compositionController];
  v6 = [v5 adjustmentConstants];
  v7 = [v6 PIDepthAdjustmentKey];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PUPhotoEditPortraitToolController_apertureToolbar_didChangeValue___block_invoke;
  v8[3] = &__block_descriptor_40_e37_v16__0__PIDepthAdjustmentController_8l;
  *&v8[4] = a4;
  [v5 modifyAdjustmentWithKey:v7 modificationBlock:v8];
}

- (void)_updateLightingIntensityCache
{
  if (self->_lightingSlider)
  {
    v3 = [(PUPhotoEditPortraitToolController *)self lightingControl];
    v4 = [v3 selectedLightingType];

    if (v4)
    {
      lightingIntensityCache = self->_lightingIntensityCache;
      v6 = MEMORY[0x1E696AD98];
      [(CEKSlider *)self->_lightingSlider value];
      v8 = [v6 numberWithDouble:?];
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
      [(NSMutableDictionary *)lightingIntensityCache setObject:v8 forKey:v7];
    }
  }
}

- (void)_restoreCachedLightingIntensity
{
  [(PUPhotoEditPortraitToolController *)self _updateLightingSliderAnimated:1];
  v3 = [(PUPhotoEditPortraitToolController *)self lightingControl];
  v4 = [v3 selectedLightingType];

  if (v4)
  {
    lightingIntensityCache = self->_lightingIntensityCache;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
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
  v3 = [(PUPhotoEditToolController *)self compositionController];
  v4 = [v3 adjustmentConstants];
  v5 = [v4 PIPortraitAdjustmentKey];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__PUPhotoEditPortraitToolController__updateCompositionWithLightingIntensity__block_invoke;
  v6[3] = &unk_1E7B80728;
  v6[4] = self;
  [v3 modifyAdjustmentWithKey:v5 modificationBlock:v6];
}

void __76__PUPhotoEditPortraitToolController__updateCompositionWithLightingIntensity__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1320);
  v4 = a2;
  [v2 value];
  *&v3 = v3;
  [v4 setStrength:*&v3];
}

- (void)_updateLightingNameBadgeForOrientation:(int64_t)a3 expanded:(BOOL)a4
{
  v4 = a4;
  v7 = [(PUPhotoEditPortraitToolController *)self view];

  if (!v7)
  {
    return;
  }

  v8 = a3 != 1 || !v4;
  [(CEKLightingControl *)self->_lightingControl setNameBadgeHidden:v8 animated:1];
  lightingNameBadge = self->_lightingNameBadge;
  if (a3 == 1)
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
    v12 = [(PUPhotoEditPortraitToolController *)self view];
    [v12 addSubview:self->_lightingNameBadge];

    v13 = [(CEKLightingControl *)self->_lightingControl isExpanded];
    v14 = 0.0;
    if (v13)
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

    v18 = [(PUPhotoEditPortraitToolController *)self view];
    [(NSArray *)v18 setNeedsUpdateConstraints];
    lightingNameBadgeConstraints = v18;
LABEL_14:
  }
}

- (void)_updateLabelOrientation
{
  v3 = [(PUPhotoEditToolController *)self photoEditSpec];
  v4 = [v3 currentLayoutStyle];

  if (v4 == 4 && (objc_opt_respondsToSelector() & 1) != 0)
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PUPhotoEditPortraitToolController;
  v7 = a4;
  [(PUPhotoEditToolController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__PUPhotoEditPortraitToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7B7DC38;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

void __88__PUPhotoEditPortraitToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setNeedsDisplay];
}

- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditToolController *)&v12 setLayoutOrientation:a3 withTransitionCoordinator:v6];
  [(PUPhotoEditPortraitToolController *)self _updateLabelOrientation];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PUPhotoEditPortraitToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E7B7FF70;
  aBlock[4] = self;
  aBlock[5] = a3;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__PUPhotoEditPortraitToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke_2;
    v9[3] = &unk_1E7B7ABE0;
    v10 = v7;
    [v6 animateAlongsideTransition:v9 completion:0];
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

- (void)setPhotoEditSpec:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditToolController *)&v4 setPhotoEditSpec:a3];
  [(PUPhotoEditPortraitToolController *)self _updateLabelOrientation];
}

- (void)_didModifyLightingIntensity
{
  [(PUPhotoEditPortraitToolController *)self _updateLightingIntensityCache];
  [(PUPhotoEditPortraitToolController *)self _setShowLightingControl:1 animated:1];
  v4 = PULocalizedString(@"PHOTOEDIT_PORTRAIT_LIGHTING_INTENSITY_ACTION_TITLE");
  v3 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v4];
}

- (void)sliderDidEndScrolling:(id)a3
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];

  [(PUPhotoEditPortraitToolController *)self _didModifyLightingIntensity];
}

- (void)sliderWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0, a5, a4.x, a4.y];
  if (x == 0.0)
  {

    [(PUPhotoEditPortraitToolController *)self _didModifyLightingIntensity];
  }
}

- (void)sliderDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditToolController *)self compositionController];
  v6 = [v5 portraitAdjustmentController];
  [v6 strength];
  [v4 value];

  LOBYTE(v4) = PXFloatEqualToFloatWithTolerance();
  if ((v4 & 1) == 0)
  {

    [(PUPhotoEditPortraitToolController *)self _updateCompositionWithLightingIntensity];
  }
}

- (void)sliderWillBeginScrolling:(id)a3
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:1];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:1];
  if (objc_opt_respondsToSelector())
  {
    [(PUPhotoEditToolController *)self willModifyAdjustment];

    [(PUPhotoEditPortraitToolController *)self _setShowLightingControl:0 animated:1];
  }
}

- (void)_setShowLightingControl:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (!a4 || (v6 = a3, [(CEKLightingControl *)self->_lightingControl alpha], v7 == v5))
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

- (void)lightingControlDidChangeExpanded:(id)a3
{
  v4 = [(CEKLightingControl *)self->_lightingControl isExpanded];
  [(PUPhotoEditToolController *)self setActivelyAdjusting:v4];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:v4];
  if ((v4 & 1) == 0)
  {
    v5 = PULocalizedString(@"PHOTOEDIT_PORTRAIT_LIGHTING_ACTION_TITLE");
    v6 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v5];

    lightingControl = self->_lightingControl;

    [(CEKLightingControl *)lightingControl setMaskView:0];
  }
}

- (void)lightingControl:(id)a3 willChangeExpanded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PUPhotoEditToolController *)self setActivelyAdjusting:v4];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:v4];
  if (v4)
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
  *&v20[5] = v4;
  [MEMORY[0x1E69DD250] animateWithDuration:v20 animations:0.25];
  [(PUPhotoEditPortraitToolController *)self _updateLightingNameBadgeForOrientation:[(PUPhotoEditToolController *)self layoutOrientation] expanded:v4];
  v7 = [(PUPhotoEditToolController *)self delegate];
  v8 = [v7 livePortraitBehaviorController];

  if ([v8 hasLivePortrait])
  {
    if (v4)
    {
      v9 = [(PUPhotoEditToolController *)self delegate];
      self->_livePhotoOnBeforeAdjustingLighting = [v9 isVideoOn];
LABEL_6:

      goto LABEL_7;
    }

    v15 = [v6 selectedLightingType];
    v16 = +[PUPhotoEditProtoSettings sharedInstance];
    v17 = [v16 changeLightingDisablesLive];

    if (v17)
    {
      if ((v15 - 2) < 5)
      {
        goto LABEL_7;
      }
    }

    else if ((v15 - 4) < 3)
    {
      goto LABEL_7;
    }

    if (self->_livePhotoOnBeforeAdjustingLighting)
    {
      v18 = [(PUPhotoEditToolController *)self delegate];
      v19 = [v18 isVideoOn];

      if ((v19 & 1) == 0)
      {
        v9 = [(PUPhotoEditToolController *)self delegate];
        [v9 toggleLivePhotoActive];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v10 = [(PUPhotoEditToolController *)self compositionController];
  v11 = [v10 portraitAdjustmentController];

  if (v4 && ([v11 enabled] & 1) == 0)
  {
    if ([(PUPhotoEditPortraitToolController *)self _shouldShowPortraitV2])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = +[PUPhotoEditEffectsSupport identifierForLightingType:lightingVersion:](PUPhotoEditEffectsSupport, "identifierForLightingType:lightingVersion:", [v6 selectedLightingType], v12);
    v14 = [(PUPhotoEditToolController *)self compositionController];
    [PUPhotoEditEffectsSupport updateCompositionController:v14 withLightingIdentifier:v13 portraitInfo:self->_cachedPortraitEffectSettings spillMatteAllowed:self->_cachedSpillMatteAllowed];
  }
}

- (void)lightingControlDidChangeSelectedLightingType:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditToolController *)self compositionController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PUPhotoEditPortraitToolController_lightingControlDidChangeSelectedLightingType___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 performChanges:v7];
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

- (void)navigateToNextTab:(id)a3
{
  [(PUPhotoEditPortraitToolController *)self setToolSelection:2 animated:1];

  [(PUPhotoEditPortraitToolController *)self _updateNavigationButtonsAnimated:1];
}

- (void)navigateToPreviousTab:(id)a3
{
  [(PUPhotoEditPortraitToolController *)self setToolSelection:1 animated:1];

  [(PUPhotoEditPortraitToolController *)self _updateNavigationButtonsAnimated:1];
}

- (id)viewsActivatingToolControlShadow
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditToolController *)self photoEditSpec];
  v4 = [v3 currentLayoutStyle];

  v5 = [(PUPhotoEditToolController *)self layoutOrientation];
  if (v5 == 3)
  {
    if (v4 == 4)
    {
      v6 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      v10 = v6;
      v7 = &v10;
      goto LABEL_6;
    }
  }

  else if (v5 == 2)
  {
    v6 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
    v11[0] = v6;
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
  v3 = [(PUPhotoEditToolController *)self photoEditSpec];
  v4 = [v3 currentLayoutStyle];

  v5 = [(PUPhotoEditToolController *)self layoutOrientation];
  if (v5 == 3)
  {
    if (v4 != 4)
    {
      v6 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
      v10 = v6;
      v7 = &v10;
      goto LABEL_7;
    }

LABEL_5:
    v8 = MEMORY[0x1E695E0F0];
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    goto LABEL_5;
  }

  v6 = [(PUPhotoEditApertureToolbar *)self->_apertureToolbar view];
  v11[0] = v6;
  v7 = v11;
LABEL_7:
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

LABEL_8:

  return v8;
}

- (void)decreaseSliderValue:(BOOL)a3
{
  v3 = a3;
  if (![(UIView *)self->_lightingContainer isHidden])
  {
    [PUPhotoEditSupport changeValueOfSlider:self->_lightingSlider reverse:0 coarse:v3];

    [(PUPhotoEditPortraitToolController *)self _updateCompositionWithLightingIntensity];
  }
}

- (void)increaseSliderValue:(BOOL)a3
{
  v3 = a3;
  if (![(UIView *)self->_lightingContainer isHidden])
  {
    [PUPhotoEditSupport changeValueOfSlider:self->_lightingSlider reverse:1 coarse:v3];

    [(PUPhotoEditPortraitToolController *)self _updateCompositionWithLightingIntensity];
  }
}

- (void)decreaseScrubberValue:(BOOL)a3
{
  v3 = a3;
  if ([(UIView *)self->_lightingContainer isHidden])
  {
    if (![(UIView *)self->_apertureContainer isHidden]&& [(PUPhotoEditApertureToolbar *)self->_apertureToolbar setNextApertureValue:0 coarse:v3])
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

- (void)increaseScrubberValue:(BOOL)a3
{
  v3 = a3;
  if ([(UIView *)self->_lightingContainer isHidden])
  {
    if (![(UIView *)self->_apertureContainer isHidden]&& [(PUPhotoEditApertureToolbar *)self->_apertureToolbar setNextApertureValue:1 coarse:v3])
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
  v3 = [(PUPhotoEditToolController *)self compositionController];
  v4 = [v3 depthAdjustmentController];

  if ([(PUPhotoEditPortraitToolController *)self _shouldShowPortraitFocusEditingUI])
  {
    v5 = [v4 enabled] ^ 1;
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

- (void)compositionControllerDidChangeForAdjustments:(id)a3
{
  v4 = a3;
  if (self->_suspendUIUpdatesFromComposition)
  {
    goto LABEL_26;
  }

  v33 = v4;
  v5 = [(PUPhotoEditToolController *)self compositionController];
  v6 = [v5 adjustmentConstants];
  v7 = [v6 PIDepthAdjustmentKey];
  if ([v33 containsObject:v7])
  {

    goto LABEL_5;
  }

  v8 = [v6 PIPortraitAdjustmentKey];
  v9 = [v33 containsObject:v8];

  if (v9)
  {
LABEL_5:
    v10 = [v5 depthAdjustmentController];
    v11 = [v10 enabled];
    [(PUPhotoEditToolActivationButton *)self->_portraitToolbarButton setSelected:v11];
    [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setEnabled:v11];
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
    v16 = [v15 apertureSliderHasOffPosition];

    if ((v16 & 1) == 0)
    {
      v17 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
      [v17 setEnabled:v11];
    }

    [(PUPhotoEditPortraitToolController *)self _updateNavigationButtonsAnimated:1];
    v18 = +[PUPhotoEditProtoSettings sharedInstance];
    v19 = [v18 apertureSliderHasOffPosition];

    if (v19)
    {
      if (v11)
      {
        [v10 aperture];
        if (v20 > 0.0)
        {
          v21 = v20;
          v22 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
          [v22 setApertureValueClosestTo:v21];

          v23 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
          [v23 apertureValue];
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
          v29 = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
          v30 = [v29 layer];
          [v30 setNeedsDisplay];
        }

        goto LABEL_23;
      }

      v28 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
      [v28 setDepthIsOn:0];
    }

    else
    {
      [v10 aperture];
      if (v25 <= 0.0)
      {
        goto LABEL_18;
      }

      v26 = v25;
      v27 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
      [v27 setApertureValueClosestTo:v26];

      v28 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
      [v28 apertureValue];
      [(CEKApertureButton *)self->_apertureButton setApertureValue:?];
    }

    goto LABEL_18;
  }

LABEL_23:
  v31 = [v6 PIPortraitAdjustmentKey];
  v32 = [v33 containsObject:v31];

  if (v32)
  {
    [(PUPhotoEditPortraitToolController *)self _updateLightingControl];
    [(PUPhotoEditPortraitToolController *)self _updateLightingSliderAnimated:0];
  }

  v4 = v33;
LABEL_26:
}

- (id)accessibilityHUDItemForButton:(id)a3
{
  if ([a3 isEqual:self->_portraitToolbarButton])
  {
    v4 = [(PUPhotoEditPortraitToolController *)self _depthButtonTitle];
    v5 = [v4 localizedUppercaseString];

    v6 = objc_alloc(MEMORY[0x1E69DC618]);
    v7 = [v6 initWithTitle:v5 image:0 imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setBackdropViewGroupName:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditToolController *)&v7 setBackdropViewGroupName:v4];
  v5 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];

  if (v5)
  {
    v6 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
    [v6 setBackdropViewGroupName:v4];
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

  v3 = [(PUPhotoEditToolController *)self ppt_didBecomeActiveToolBlock];

  if (v3)
  {
    v4 = [(PUPhotoEditToolController *)self ppt_didBecomeActiveToolBlock];
    v4[2]();
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

- (void)_handlePortraitEffectButton:(id)a3
{
  v10 = [(PUPhotoEditToolController *)self compositionController];
  v4 = [v10 depthAdjustmentController];
  v5 = [v4 enabled];

  [(PUPhotoEditToolController *)self willModifyAdjustment];
  v6 = [(PUPhotoEditToolController *)self delegate];
  v7 = [v6 livePortraitBehaviorController];

  [PUPhotoEditEffectsSupport updateCompositionController:v10 withDepthEnabled:v5 ^ 1u livePortraitBehaviorController:v7];
  v8 = PULocalizedString(@"PHOTOEDIT_PORTRAIT_SWITCH");
  v9 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v8];

  [(PUPhotoEditPortraitToolController *)self _updateLightingControl];
  [(PUPhotoEditPortraitToolController *)self _updateLightingSliderAnimated:0];
  [(PUPhotoEditPortraitToolController *)self _updateFocusOverlay];
}

- (void)_updateFocusOverlay
{
  v3 = [(PUPhotoEditToolController *)self compositionController];
  v7 = [v3 depthAdjustmentController];

  if ([v7 enabled] && -[PUPhotoEditPortraitToolController _shouldShowPortraitFocusEditingUI](self, "_shouldShowPortraitFocusEditingUI"))
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
    v5 = [(PUPhotoEditPortraitToolController *)self view];
    [v5 setNeedsUpdateConstraints];

    goto LABEL_9;
  }

  v4 = 1;
LABEL_9:
  v6 = [(PUPhotoEditToolController *)self delegate];
  [v6 toolControllerDidChangeWantsTapToToggleOriginalEnabled:self enabled:v4];
}

- (void)_updateLightingSliderAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotoEditToolController *)self compositionController];
  v6 = [v5 portraitAdjustmentController];

  if (v6)
  {
    [v6 strength];
    [(CEKSlider *)self->_lightingSlider setValue:?];
  }

  v7 = [(CEKLightingControl *)self->_lightingControl selectedLightingType];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __67__PUPhotoEditPortraitToolController__updateLightingSliderAnimated___block_invoke;
  v13 = &unk_1E7B7FF98;
  v14 = self;
  v15 = v7 > 1;
  v8 = _Block_copy(&v10);
  v9 = v8;
  if (v3)
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

- (void)_updateLightingMarkerForType:(int64_t)a3
{
  if (objc_opt_respondsToSelector())
  {
    if (self->_initialLightingType == a3)
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
  v6 = [(PUPhotoEditToolController *)self compositionController];
  v3 = [v6 portraitAdjustmentController];
  v4 = [v3 kind];
  if (![v3 enabled] || (v5 = +[PUPhotoEditEffectsSupport lightingEffectTypeForIdentifier:](PUPhotoEditEffectsSupport, "lightingEffectTypeForIdentifier:", v4)) == 0)
  {
    v5 = [(CEKLightingControl *)self->_lightingControl defaultLightingType];
  }

  [(PUPhotoEditPortraitToolController *)self _updateLightingMarkerForType:v5];
  [(CEKLightingControl *)self->_lightingControl setSelectedLightingType:v5];
  [(CEKLightingNameBadge *)self->_lightingNameBadge setLightingType:v5];
  [(PUPhotoEditPortraitToolController *)self _updateLightingNameBadgeForOrientation:[(PUPhotoEditToolController *)self layoutOrientation] expanded:[(CEKLightingControl *)self->_lightingControl isExpanded]];
}

- (void)_updateNavigationButtonsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotoEditPortraitToolController *)self toolSelection];
  if (v3)
  {
    v6 = [(CEKApertureButton *)self->_apertureButton superview];
    [v6 layoutIfNeeded];
  }

  [(PUPhotoEditToolbarButton *)self->_lightingIntensityButton setSelected:v5 != 2];
  [(CEKApertureButton *)self->_apertureButton setActive:v5 == 2];
  if (v5 == 2)
  {
    v10 = 0;
  }

  else
  {
    v7 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
    [v7 apertureValue];
    [(CEKApertureButton *)self->_apertureButton setApertureValue:?];

    v8 = [(PUPhotoEditToolController *)self compositionController];
    v9 = [v8 depthAdjustmentController];

    v10 = [v9 enabled];
  }

  if (MEMORY[0x1B8C6D660]())
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = v10;
    v12 = v3;
  }

  [(CEKApertureButton *)self->_apertureButton setShouldShowApertureValue:v11 animated:v12];
  v13 = [(CEKApertureButton *)self->_apertureButton superview];
  [v13 setNeedsLayout];

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
  if (v3)
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
  v2 = [(PUPhotoEditToolController *)self compositionController];
  v3 = [v2 depthAdjustmentController];

  if (v3)
  {
    if ([v3 canAdjustApertureValue])
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
    v4 = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
    [v4 removeFromSuperview];

    focusOverlayController = self->_focusOverlayController;
    self->_focusOverlayController = 0;
  }
}

- (void)_createFocusOverlayIfNeeded
{
  if (!self->_focusOverlayController)
  {
    v3 = [(PUPhotoEditToolController *)self compositionController];
    v4 = [v3 composition];

    v19 = v4;
    v5 = [objc_alloc(MEMORY[0x1E69B3B30]) initWithComposition:v4];
    [v5 setName:@"PUPhotoEditPortraitToolController-imageProperties"];
    v20 = 0;
    v6 = [v5 submitSynchronous:&v20];
    v18 = v20;
    v7 = [v6 properties];
    if ([v7 isHDR])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v7 hasGainMap];
    }

    v9 = [PUPhotoEditPortraitFocusOverlayViewController alloc];
    v10 = [(PUPhotoEditToolController *)self delegate];
    v11 = [v10 mediaView];
    v12 = [(PUPhotoEditToolController *)self delegate];
    v13 = [(PUPhotoEditPortraitFocusOverlayViewController *)v9 initWithMediaView:v11 isHDR:v8 delegate:v12];
    focusOverlayController = self->_focusOverlayController;
    self->_focusOverlayController = v13;

    [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController setPortraitFocusDelegate:self];
    v15 = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(PUPhotoEditPortraitToolController *)self addChildViewController:self->_focusOverlayController];
    [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController didMoveToParentViewController:self];
    v16 = [(PUPhotoEditPortraitToolController *)self view];
    v17 = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];

    [v16 insertSubview:v17 atIndex:0];
  }
}

- (void)_handlePortraitNavigationButtons:(id)a3
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

- (void)_selectNextEffectType:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v5 = [(CEKLightingControl *)self->_lightingControl lightingEffectSet];
  if (v5 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1E7B7A6C8[v5];
  }

  v7 = [(CEKLightingControl *)self->_lightingControl selectedLightingType];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v16 = v3;
    v10 = 0;
    v11 = 0;
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
      v8 = [v14 integerValue];
      if (v10)
      {
        break;
      }

      v10 = v7 == v8;
      if (v7 != v8)
      {
        v11 = [v14 integerValue];
      }

      if (v9 == ++v13)
      {
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v9 = v8;
        if (v8)
        {
          goto LABEL_6;
        }

        break;
      }
    }

    v3 = v16;
  }

  else
  {
    v11 = 0;
  }

  if (v3)
  {
    v15 = v11;
  }

  else
  {
    v15 = v8;
  }

  if (v15)
  {
    [(CEKLightingControl *)self->_lightingControl setSelectedLightingType:v15 animated:1];
    [(PUPhotoEditPortraitToolController *)self lightingControlDidChangeSelectedLightingType:self->_lightingControl];
  }
}

- (BOOL)_setupApertureControlsIfNeeded
{
  v3 = [(PUPhotoEditToolController *)self compositionController];
  v4 = [v3 depthAdjustmentController];

  v5 = [v4 canAdjustApertureValue];
  apertureToolbar = self->_apertureToolbar;
  if (v5)
  {
    v7 = apertureToolbar == 0;
    if (!apertureToolbar)
    {
      v8 = objc_alloc_init(PUPhotoEditApertureToolbar);
      [(PUPhotoEditApertureToolbar *)v8 setDelegate:self];
      [(PUPhotoEditApertureToolbar *)v8 setLayoutOrientation:[(PUPhotoEditToolController *)self layoutOrientation]];
      [v4 minimumAperture];
      [(PUPhotoEditApertureToolbar *)v8 setMinimumApertureValue:?];
      [v4 maximumAperture];
      [(PUPhotoEditApertureToolbar *)v8 setMaximumApertureValue:?];
      [v4 aperture];
      if (v9 > 0.0)
      {
        [(PUPhotoEditApertureToolbar *)v8 setApertureValueClosestTo:?];
      }

      apertureContainer = self->_apertureContainer;
      v11 = [(PUPhotoEditApertureToolbar *)v8 view];
      [(UIView *)apertureContainer addSubview:v11];

      v12 = [v4 depthInfo];
      v13 = [v12 objectForKeyedSubscript:@"capturedAperture"];

      [v13 floatValue];
      if (v13 && v14 > 0.0)
      {
        [(PUPhotoEditApertureToolbar *)v8 setOriginalApertureValueClosestTo:v14];
      }

      objc_storeStrong(&self->_apertureToolbar, v8);
      v15 = +[PUPhotoEditProtoSettings sharedInstance];
      v16 = [v15 apertureSliderHasOffPosition];

      if (v16)
      {
        -[PUPhotoEditApertureToolbar setDepthIsOn:](self->_apertureToolbar, "setDepthIsOn:", [v4 enabled]);
      }

      else
      {
        -[PUPhotoEditApertureToolbar setEnabled:](self->_apertureToolbar, "setEnabled:", [v4 enabled]);
      }
    }

    if (!self->_apertureButton)
    {
      v17 = +[PUInterfaceManager currentTheme];
      v18 = objc_alloc_init(PUPhotoEditApertureButton);
      apertureButton = self->_apertureButton;
      self->_apertureButton = &v18->super;

      v20 = [(PUPhotoEditPortraitToolController *)self view];
      v21 = [v20 effectiveUserInterfaceLayoutDirection] != 1;

      v22 = MEMORY[0x1B8C6D660]([(CEKApertureButton *)self->_apertureButton setExpansionDirection:v21]);
      v23 = 11.0;
      if (v22)
      {
        v23 = 0.0;
      }

      [(CEKApertureButton *)self->_apertureButton setTappableEdgeInsets:v23, v23, v23, v23];
      [(CEKApertureButton *)self->_apertureButton setTranslatesAutoresizingMaskIntoConstraints:0];
      v24 = [v17 photoEditingToolbarMainButtonColor];
      [(CEKApertureButton *)self->_apertureButton setTintColor:v24];

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
  v3 = [(PUPhotoEditPortraitToolController *)self _canRenderPortraitEffect];
  lightingControl = self->_lightingControl;
  if (!v3)
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
  v9 = [(PUPhotoEditPortraitToolController *)self _shouldShowPortraitV2];
  v10 = 2;
  if (v9)
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
  v16 = [(PUPhotoEditPortraitToolController *)self _shouldShowPortraitV2];
  lightingIntensityButton = self->_lightingIntensityButton;
  if (v16)
  {
    if (!lightingIntensityButton)
    {
      objc_initWeak(&location, self);
      v18 = [(PUPhotoEditToolController *)self photoEditSpec];
      v19 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"camera.lightcontrol" selectedImageNamed:0 accessibilityLabel:&stru_1F2AC6818 spec:v18];
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
      v25 = [(PUPhotoEditToolController *)self compositionController];
      v26 = [v25 portraitAdjustmentController];

      if (v26)
      {
        [v26 strength];
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
  v3 = [(PUPhotoEditToolController *)self compositionController];
  v4 = [v3 depthAdjustmentController];

  v5 = [v4 canRenderDepth];
  v6 = [v4 enabled];
  portraitToolbarButton = self->_portraitToolbarButton;
  if (v5)
  {
    if (!portraitToolbarButton)
    {
      v8 = v6;
      v9 = [(PUPhotoEditPortraitToolController *)self _depthButtonTitle];
      v10 = [v9 localizedUppercaseString];
      v11 = [PUPhotoEditToolActivationButton buttonWithTitle:v10];
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
    v14 = [(PUPhotoEditToolController *)self compositionController];
    v15 = [v14 depthAdjustmentController];

    v16 = [v15 enabled];
    focusOverlayController = self->_focusOverlayController;
    if (v16)
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
  v3 = [(PUPhotoEditToolController *)self valuesCalculator];
  if (![v3 hasImageValues])
  {
    goto LABEL_50;
  }

  v4 = [v3 portraitValuesWithAccuracy:0];
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
  v15 = [v11 unsignedIntegerValue];

  [(PUPhotoEditPortraitToolController *)self setMajorVersion:v15];
  v16 = [v14 unsignedIntegerValue];

  [(PUPhotoEditPortraitToolController *)self setMinorVersion:v16];
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
  v24 = [v20 unsignedIntegerValue];

  [(PUPhotoEditPortraitToolController *)self setDepthInfoMajorVersion:v24];
  v25 = [v23 unsignedIntegerValue];

  [(PUPhotoEditPortraitToolController *)self setDepthInfoMinorVersion:v25];
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

  v31 = [(PUPhotoEditToolController *)self compositionController];
  v32 = [v31 portraitAdjustmentController];
  v33 = [v32 portraitInfo];

  v79 = v7;
  v74 = v32;
  if (v33 || !v6)
  {
    v35 = [v32 portraitInfo];
    cachedPortraitEffectSettings = self->_cachedPortraitEffectSettings;
    self->_cachedPortraitEffectSettings = v35;

    v37 = [v32 spillMatteAllowed];
    cachedSpillMatteAllowed = self->_cachedSpillMatteAllowed;
    self->_cachedSpillMatteAllowed = v37;
  }

  else
  {
    objc_storeStrong(&self->_cachedPortraitEffectSettings, v6);
    objc_storeStrong(&self->_cachedSpillMatteAllowed, v7);
    if (v32)
    {
      v34 = *MEMORY[0x1E69BE060];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __65__PUPhotoEditPortraitToolController__refreshFromValuesCalculator__block_invoke;
      v89[3] = &unk_1E7B7A618;
      v90 = v6;
      v92 = v30;
      v91 = v4;
      [v31 modifyAdjustmentWithKey:v34 modificationBlock:v89];
    }
  }

  v80 = v6;
  v39 = *MEMORY[0x1E69BDFE0];
  v40 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BDFE0]];
  [v40 floatValue];
  v42 = v41;

  v81 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BDFE8]];
  v82 = v31;
  v43 = [v31 depthAdjustmentController];
  v44 = [v43 depthInfo];
  if (v44)
  {
    v45 = v44;
    v46 = [v43 depthInfo];
    v47 = [v46 objectForKeyedSubscript:@"focusRect"];
    if (v47)
    {

      goto LABEL_28;
    }
  }

  if (!v5)
  {
    goto LABEL_29;
  }

  v48 = [v82 adjustmentConstants];
  v49 = [v48 PIDepthAdjustmentKey];
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __65__PUPhotoEditPortraitToolController__refreshFromValuesCalculator__block_invoke_2;
  v83[3] = &unk_1E7B7A640;
  v84 = v5;
  v88 = v42;
  v85 = v81;
  v86 = v4;
  v87 = v43;
  [v82 modifyAdjustmentWithKey:v49 modificationBlock:v83];

  v45 = v84;
LABEL_28:

LABEL_29:
  v50 = [v3 apertureValuesWithAccuracy:0];
  v51 = [v50 objectForKeyedSubscript:v39];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = [v43 depthInfo];
    v53 = [v52 objectForKey:@"capturedAperture"];

    if (!v53)
    {
      v54 = [v43 depthInfo];
      v55 = [v54 mutableCopy];

      [v55 setObject:v51 forKeyedSubscript:@"capturedAperture"];
      [v43 setDepthInfo:v55];
    }
  }

  v56 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v57 = [(PUPhotoEditPortraitToolController *)self _canRenderPortraitEffect];
    v58 = @"N";
    if (v57)
    {
      v58 = @"Y";
    }

    *buf = 138412290;
    v94 = v58;
    _os_log_impl(&dword_1B36F3000, v56, OS_LOG_TYPE_DEFAULT, "PUPhotoEditPortraitToolCOntroller: has portrait? %@", buf, 0xCu);
  }

  v59 = [(PUPhotoEditToolController *)self valuesCalculator];
  v60 = [v59 hasImageValues];

  if (v60)
  {
    v73 = v3;
    v61 = v26;
    v62 = v5;
    v63 = [(PUPhotoEditToolController *)self valuesCalculator];
    v64 = [v63 portraitValuesWithAccuracy:0];

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
    v3 = v73;
  }

  v67 = [(PUPhotoEditPortraitToolController *)self _setupDepthControlsIfNeeded];
  v68 = [(PUPhotoEditPortraitToolController *)self _setupLightingControlsIfNeeded];
  v69 = [(PUPhotoEditPortraitToolController *)self _setupApertureControlsIfNeeded];
  if (v67 || v68 || v69)
  {
    v70 = [(PUPhotoEditToolController *)self delegate];
    [v70 toolControllerDidUpdateToolbar:self];

    v71 = [(PUPhotoEditPortraitToolController *)self view];
    [v71 setNeedsUpdateConstraints];
  }

  v72 = [(PUPhotoEditPortraitToolController *)self toolSelection];
  if (v43 && !v72)
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

- (void)validateCommand:(id)a3
{
  v5 = a3;
  if ([v5 action] == sel_navigateToPreviousTab_)
  {
    v3 = @"PHOTOEDIT_PORTRAIT_LIGHTING_EFFECTS_KEY_COMMAND_TITLE";
  }

  else
  {
    if ([v5 action] != sel_navigateToNextTab_)
    {
      goto LABEL_6;
    }

    v3 = @"PHOTOEDIT_PORTRAIT_APERTURE_KEY_COMMAND_TITLE";
  }

  v4 = PULocalizedString(v3);
  [v5 setTitle:v4];

LABEL_6:
}

- (void)_updateApertureSliderLength
{
  v3 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];

  if (v3)
  {
    v4 = [(PUPhotoEditToolController *)self photoEditSpec];
    v5 = [v4 shouldDisplayCompactToolbar];

    v6 = 0.0;
    if ((v5 & 1) == 0)
    {
      v7 = [(PUPhotoEditToolController *)self photoEditSpec];
      v8 = [v7 currentLayoutStyle];

      v9 = [(PUPhotoEditToolController *)self layoutOrientation];
      if (v8 != 4 && v9 == 1)
      {
        v6 = 275.0;
      }

      else
      {
        v6 = 375.0;
      }
    }

    v11 = [(PUPhotoEditPortraitToolController *)self apertureToolbar];
    [v11 setSliderWidth:v6];
  }
}

- (void)_updateToolVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
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
  if (v3)
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

- (void)setToolSelection:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_toolSelection != a3)
  {
    self->_toolSelection = a3;
    [(PUPhotoEditPortraitToolController *)self _updateToolVisibilityAnimated:a4];
  }
}

- (BOOL)_canRenderPortraitEffect
{
  v3 = PECanRenderPortrait();
  v4 = [(PUPhotoEditToolController *)self compositionController];
  v5 = [v4 portraitAdjustmentController];

  if (v3)
  {
    v6 = ([v5 canRenderPortraitEffect] & 1) != 0 || -[NSDictionary count](self->_cachedPortraitEffectSettings, "count") != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)longPressed:(id)a3
{
  if ([a3 state] != 2)
  {
    v4 = [(PUPhotoEditToolController *)self delegate];
    [v4 toolControllerWantsToToggleOriginal:self];
  }
}

- (void)previewingOriginalDidStop
{
  v2 = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
  [v2 setHidden:0];
}

- (void)previewingOriginalDidStart
{
  v2 = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
  [v2 setHidden:1];
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

      v5 = [(PUPhotoEditPortraitFocusOverlayViewController *)self->_focusOverlayController view];
      v16 = self->_focusOverlayControllerConstraints;
      v22 = [v5 leadingAnchor];
      v23 = [(PUPhotoEditPortraitToolController *)self view];
      v21 = [v23 leadingAnchor];
      v20 = [v22 constraintEqualToAnchor:v21];
      v24[0] = v20;
      v18 = [v5 trailingAnchor];
      v19 = [(PUPhotoEditPortraitToolController *)self view];
      v17 = [v19 trailingAnchor];
      v15 = [v18 constraintEqualToAnchor:v17];
      v24[1] = v15;
      v13 = [v5 topAnchor];
      v14 = [(PUPhotoEditPortraitToolController *)self view];
      v6 = [v14 topAnchor];
      v7 = [v13 constraintEqualToAnchor:v6];
      v24[2] = v7;
      v8 = [v5 bottomAnchor];
      v9 = [(PUPhotoEditPortraitToolController *)self view];
      v10 = [v9 bottomAnchor];
      v11 = [v8 constraintEqualToAnchor:v10];
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
      v49 = [(CEKLightingControl *)lightingControl heightAnchor];
      v46 = [v49 constraintEqualToConstant:140.0];
      v55[0] = v46;
      v43 = [(UIView *)self->_lightingContainer widthAnchor];
      v41 = [(CEKLightingControl *)self->_lightingControl widthAnchor];
      v37 = [v43 constraintEqualToAnchor:v41];
      v55[1] = v37;
      v6 = [(UIView *)self->_lightingContainer centerXAnchor];
      v7 = [(CEKLightingControl *)self->_lightingControl centerXAnchor];
      v8 = [v6 constraintEqualToAnchor:v7];
      v55[2] = v8;
      v9 = [(UIView *)self->_lightingContainer topAnchor];
      v10 = [(CEKLightingControl *)self->_lightingControl topAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v55[3] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
      [(NSMutableArray *)v39 addObjectsFromArray:v12];

      v13 = self->_toolConstraints;
      lightingContainer = self->_lightingContainer;
      if (self->_lightingSlider)
      {
        v42 = [(UIView *)lightingContainer widthAnchor];
        v38 = [(CEKSlider *)self->_lightingSlider widthAnchor];
        v44 = [v42 constraintEqualToAnchor:v38];
        v54[0] = v44;
        v50 = [(UIView *)self->_lightingContainer centerXAnchor];
        v47 = [(CEKSlider *)self->_lightingSlider centerXAnchor];
        v40 = [v50 constraintEqualToAnchor:v47];
        v54[1] = v40;
        v36 = [(UIView *)self->_lightingContainer bottomAnchor];
        v35 = [(CEKSlider *)self->_lightingSlider bottomAnchor];
        v15 = [v36 constraintEqualToAnchor:v35 constant:5.0];
        v54[2] = v15;
        v16 = [(CEKLightingControl *)self->_lightingControl bottomAnchor];
        [(CEKSlider *)self->_lightingSlider topAnchor];
        v18 = v17 = v13;
        v19 = [v16 constraintEqualToAnchor:v18 constant:10.0];
        v54[3] = v19;
        v20 = [(CEKSlider *)self->_lightingSlider heightAnchor];
        v21 = [v20 constraintEqualToConstant:66.0];
        v54[4] = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:5];
        [(NSMutableArray *)v17 addObjectsFromArray:v22];

        v23 = v38;
        v24 = v42;

        v25 = v44;
      }

      else
      {
        v24 = [(UIView *)lightingContainer bottomAnchor];
        v23 = [(CEKLightingControl *)self->_lightingControl bottomAnchor];
        v25 = [v24 constraintEqualToAnchor:v23 constant:66.0];
        [(NSMutableArray *)v13 addObject:v25];
      }
    }

    apertureToolbar = self->_apertureToolbar;
    if (apertureToolbar)
    {
      v27 = [(PUPhotoEditApertureToolbar *)apertureToolbar view];
      v45 = self->_toolConstraints;
      v52 = [(UIView *)self->_apertureContainer widthAnchor];
      v51 = [v27 widthAnchor];
      v48 = [v52 constraintEqualToAnchor:v51];
      v53[0] = v48;
      v28 = [(UIView *)self->_apertureContainer centerXAnchor];
      v29 = [v27 centerXAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];
      v53[1] = v30;
      v31 = [(UIView *)self->_apertureContainer bottomAnchor];
      v32 = [v27 bottomAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
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
  v3 = [(PUPhotoEditToolController *)self toolContainerView];
  v4 = [v3 window];

  if (v4)
  {
    if (!self->_containerConstraints && self->_lightingContainer)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      containerConstraints = self->_containerConstraints;
      self->_containerConstraints = v5;

      v7 = [(PUPhotoEditToolController *)self photoEditSpec];
      v8 = [v7 currentLayoutStyle];

      v90 = v3;
      if ([(PUPhotoEditToolController *)self layoutOrientation]!= 1 || v8 == 4)
      {
        v69 = v8;
        v21 = objc_alloc_init(MEMORY[0x1E69DCC20]);
        v22 = [(PUPhotoEditPortraitToolController *)self view];
        [v22 addLayoutGuide:v21];

        v23 = [v3 centerYAnchor];
        v24 = [v3 window];

        if (v24)
        {
          v25 = [v3 window];
          v26 = [v25 centerYAnchor];

          v23 = v26;
        }

        v77 = self->_containerConstraints;
        v88 = [v21 heightAnchor];
        v81 = [v3 heightAnchor];
        v27 = [v88 constraintEqualToAnchor:v81];
        v96[0] = v27;
        [v21 centerYAnchor];
        v29 = v28 = v21;
        v85 = v23;
        v30 = [v29 constraintEqualToAnchor:v23];
        v96[1] = v30;
        v31 = [v28 rightAnchor];
        v32 = [v3 rightAnchor];
        v33 = [v31 constraintEqualToAnchor:v32 constant:5.0];
        v96[2] = v33;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:3];
        [(NSMutableArray *)v77 addObjectsFromArray:v34];

        v71 = self->_containerConstraints;
        v82 = [(UIView *)self->_lightingContainer centerXAnchor];
        v78 = [v28 centerXAnchor];
        v75 = [v82 constraintEqualToAnchor:v78];
        v95[0] = v75;
        v73 = [(UIView *)self->_lightingContainer centerYAnchor];
        v72 = [v28 centerYAnchor];
        v70 = [v73 constraintEqualToAnchor:v72];
        v95[1] = v70;
        v35 = [(UIView *)self->_lightingContainer widthAnchor];
        v36 = [v28 heightAnchor];
        v37 = [v35 constraintEqualToAnchor:v36];
        v95[2] = v37;
        v38 = [(UIView *)self->_lightingContainer heightAnchor];
        v39 = [v28 widthAnchor];
        v40 = [v38 constraintEqualToAnchor:v39];
        v95[3] = v40;
        v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:4];
        [(NSMutableArray *)v71 addObjectsFromArray:v41];

        if ([(PUPhotoEditToolController *)self layoutOrientation]== 3)
        {
          v42 = -1.57079633;
        }

        else
        {
          v43 = [(PUPhotoEditToolController *)self layoutOrientation];
          v44 = v69 == 4 || v43 == 2;
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
        v11 = v85;
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
        v87 = [v3 widthAnchor];
        v11 = [(UIView *)self->_lightingContainer widthAnchor];
        v84 = [v87 constraintEqualToAnchor:v11];
        v97[0] = v84;
        v12 = [v3 centerXAnchor];
        v13 = [(UIView *)self->_lightingContainer centerXAnchor];
        v14 = [v12 constraintEqualToAnchor:v13];
        v97[1] = v14;
        v15 = [v3 bottomAnchor];
        v16 = [(UIView *)self->_lightingContainer bottomAnchor];
        v17 = [v15 constraintEqualToAnchor:v16];
        v97[2] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:3];
        [(NSMutableArray *)v80 addObjectsFromArray:v18];

        v19 = 0x1E695D000;
        v20 = v87;
      }

      v74 = self->_containerConstraints;
      v89 = [(UIView *)self->_lightingContainer topAnchor];
      v86 = [(UIView *)self->_apertureContainer topAnchor];
      v83 = [v89 constraintEqualToAnchor:v86];
      v94[0] = v83;
      v79 = [(UIView *)self->_lightingContainer bottomAnchor];
      v76 = [(UIView *)self->_apertureContainer bottomAnchor];
      v46 = [v79 constraintEqualToAnchor:v76];
      v94[1] = v46;
      v47 = [(UIView *)self->_lightingContainer leftAnchor];
      v48 = [(UIView *)self->_apertureContainer leftAnchor];
      v49 = [v47 constraintEqualToAnchor:v48];
      v94[2] = v49;
      v50 = [(UIView *)self->_lightingContainer rightAnchor];
      v51 = [(UIView *)self->_apertureContainer rightAnchor];
      v52 = [v50 constraintEqualToAnchor:v51];
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

      v3 = v90;
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
        v57 = [(CEKLightingNameBadge *)lightingNameBadge window];

        if (v57)
        {
          v58 = [MEMORY[0x1E695DF70] array];
          v59 = [(PUPhotoEditToolController *)self delegate];
          v60 = [v59 mediaView];
          v61 = [v60 _scrollView];

          v62 = [(CEKLightingNameBadge *)self->_lightingNameBadge bottomAnchor];
          v63 = [v61 bottomAnchor];
          v64 = [v62 constraintEqualToAnchor:v63 constant:-10.0];
          [(NSArray *)v58 addObject:v64];

          v65 = [(CEKLightingNameBadge *)self->_lightingNameBadge centerXAnchor];
          v66 = [v61 centerXAnchor];
          v67 = [v65 constraintEqualToAnchor:v66 constant:0.0];
          [(NSArray *)v58 addObject:v67];

          [MEMORY[0x1E696ACD8] activateConstraints:v58];
          lightingNameBadgeConstraints = self->_lightingNameBadgeConstraints;
          self->_lightingNameBadgeConstraints = v58;
        }
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditPortraitToolController *)&v6 viewWillDisappear:a3];
  [(PUPhotoEditPortraitToolController *)self _removeFocusOverlayIfNeeded];
  v4 = [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer view];
  [v4 removeGestureRecognizer:self->_longPressGestureRecognizer];

  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  self->_longPressGestureRecognizer = 0;
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditToolController *)&v12 viewWillAppear:a3];
  [(PUPhotoEditPortraitToolController *)self _updateFocusOverlay];
  v4 = [(PUPhotoEditToolController *)self asset];
  v5 = [v4 isLivePhoto];

  if ((v5 & 1) == 0)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_longPressed_];
    longPressGestureRecognizer = self->_longPressGestureRecognizer;
    self->_longPressGestureRecognizer = v6;

    [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setDelegate:0];
    v8 = [(PUPhotoEditToolController *)self compositionController];
    v9 = [v8 depthAdjustmentController];
    -[UILongPressGestureRecognizer setEnabled:](self->_longPressGestureRecognizer, "setEnabled:", [v9 enabled]);
    v10 = [(PUPhotoEditToolController *)self delegate];
    v11 = [v10 mediaView];
    [v11 addGestureRecognizer:self->_longPressGestureRecognizer];
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
  v5 = [(PUPhotoEditToolController *)self toolContainerView];
  [v5 addSubview:self->_lightingContainer];

  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  apertureContainer = self->_apertureContainer;
  self->_apertureContainer = v6;

  [(UIView *)self->_apertureContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(PUPhotoEditToolController *)self toolContainerView];
  [v8 addSubview:self->_apertureContainer];
}

- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6
{
  v7.receiver = self;
  v7.super_class = PUPhotoEditPortraitToolController;
  [(PUPhotoEditToolController *)&v7 setupWithAsset:a3 compositionController:a4 editSource:a5 valuesCalculator:a6];
  [(PUPhotoEditPortraitToolController *)self setToolSelection:[(PUPhotoEditPortraitToolController *)self _defaultPortraitTool]];
  [(PUPhotoEditPortraitToolController *)self _refreshFromValuesCalculator];
  [(PUPhotoEditPortraitToolController *)self _updateApertureSliderLength];
  [(PUPhotoEditPortraitToolController *)self _updateToolVisibilityAnimated:0];
}

@end