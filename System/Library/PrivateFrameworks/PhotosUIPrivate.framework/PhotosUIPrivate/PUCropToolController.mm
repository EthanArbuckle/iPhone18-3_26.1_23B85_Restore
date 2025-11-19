@interface PUCropToolController
- (BOOL)_hasConstraintsForKey:(id)a3;
- (BOOL)_hasPerspectiveSuggestion;
- (BOOL)_needsRecomposeCropRect;
- (BOOL)canResetToDefaultValue;
- (BOOL)setLockedCropAspectIfNeededIgnoringCurrentLock:(BOOL)a3;
- (CGPoint)_pointForHandle:(unint64_t)a3;
- (CGPoint)_pointForHandle:(unint64_t)a3 onCropRect:(CGRect)a4;
- (CGRect)_addHeight:(double)a3 toRect:(CGRect)a4 anchorTop:(BOOL)a5;
- (CGRect)_addWidth:(double)a3 toRect:(CGRect)a4 anchorLeft:(BOOL)a5;
- (CGRect)_cropCanvasFrame;
- (CGRect)_cropRectFromPanningHandle:(unint64_t)a3 byAmount:(CGVector)a4;
- (CGRect)_defaultImageCropRect;
- (CGRect)_defaultViewCropRect;
- (CGRect)_suggestedCropRectForImageRect:(CGRect)a3;
- (CGRect)cropViewFrameForLastModelLoad;
- (CGRect)initialHandlePanCropRect;
- (CGRect)inputExtent;
- (CGRect)suggestedCrop;
- (CGRect)viewCropRect;
- (CGSize)minimumViewCropRectSizeForHandleGesture;
- (CGSize)screenSize;
- (CGVector)_applyAspectOfCropRect:(CGRect)a3 toHandleMovement:(CGVector)a4;
- (CGVector)_correctInputVector:(CGVector)a3 forHandle:(unint64_t)a4 onCropRect:(CGRect)a5 lockDirection:(BOOL)a6;
- (CGVector)_deltaMaskForHandle:(unint64_t)a3;
- (NSDictionary)cropHandleViewsByHandle;
- (NSMutableDictionary)animationTargetsByKeyPath;
- (NSMutableDictionary)animationsByKeyPath;
- (NSMutableDictionary)initialLocationsInHandlesByHandle;
- (PUCropOverlayView)cropOverlayView;
- (PUCropPerspectiveView)cropView;
- (PUCropToolController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIEdgeInsets)previewViewInsets;
- (UIView)cropCanvasView;
- (id)_animateValueFromValue:(double)a3 toValue:(double)a4 interpolation:(id)a5 completion:(id)a6;
- (id)_animationForKeyPath:(id)a3;
- (id)_animationTargetForKeyPath:(id)a3;
- (id)adjustmentsRenderer:(id)a3;
- (id)adjustmentsViewControllerMainContainerView;
- (id)bestAspectRatioForWidth:(unint64_t)a3 height:(unint64_t)a4;
- (id)leadingToolbarViews;
- (id)toolActionsForMenu;
- (id)trailingToolbarViews;
- (void)_accessibilityLongPressChanged:(id)a3;
- (void)_applyCropAndPerspectiveSuggestion;
- (void)_applyCropRect:(CGRect)a3 straightenAngle:(double)a4 pitchAngle:(double)a5 yawAngle:(double)a6 isAutoCrop:(BOOL)a7;
- (void)_aspectButtonTapped:(id)a3;
- (void)_aspectLockButtonTapped;
- (void)_autoApplyCropAndPerspectiveSuggestionIfNeeded;
- (void)_autoRecomposeCropRect;
- (void)_beginObservingVideoPlayer;
- (void)_cancelAnimationForKeyPath:(id)a3;
- (void)_closeAspectRatioPicker;
- (void)_createRendererIfNeeded;
- (void)_cropToggleTapped:(id)a3;
- (void)_flipButtonTapped:(id)a3;
- (void)_gridButtonTapped:(id)a3;
- (void)_handleCropHandlePan:(id)a3;
- (void)_handleDidCreateEditedImage:(id)a3 inputExtent:(CGRect)a4;
- (void)_handleTouchingGesture:(id)a3;
- (void)_hideGrid;
- (void)_hideGridDelayed;
- (void)_hideMaskedContent;
- (void)_hideMaskedContentDelayed;
- (void)_installRenderedImageAndDisplayIfNeeded;
- (void)_invalidateConstraintsForKey:(id)a3;
- (void)_layoutAdjustmentTools;
- (void)_loadCropSuggestionIfNeeded;
- (void)_loadImageIfNeededWithCompletion:(id)a3;
- (void)_loadMediaIfNeeded;
- (void)_loadPerspectiveSuggestionIfNeeded;
- (void)_loadStateFromModelAnimated:(BOOL)a3;
- (void)_performGeometryChange:(id)a3 animated:(BOOL)a4;
- (void)_performInitialAction;
- (void)_performLocalCropModelChanges:(id)a3;
- (void)_performLocalModelChanges:(id)a3;
- (void)_playPauseButtonTapped;
- (void)_preferredContentSizeCategoryChanged;
- (void)_recomposeCropRectAnimated:(BOOL)a3;
- (void)_recomposeCropRectDelayed;
- (void)_removeSnapshotView:(id)a3;
- (void)_resetAllValuesAnimated:(BOOL)a3 skipLayerTransformUpdate:(BOOL)a4;
- (void)_rotateButtonTapped:(id)a3;
- (void)_rotateByApplyingOrientation:(int64_t)a3;
- (void)_setAnimation:(id)a3 forKeyPath:(id)a4;
- (void)_setAnimationTarget:(id)a3 forKeyPath:(id)a4;
- (void)_setContentViewsHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_setCropAspect:(id)a3 animated:(BOOL)a4;
- (void)_setPitchAngle:(double)a3 animated:(BOOL)a4;
- (void)_setStraightenAngle:(double)a3 animated:(BOOL)a4;
- (void)_setViewCropRect:(CGRect)a3 animated:(BOOL)a4;
- (void)_setYawAngle:(double)a3 animated:(BOOL)a4;
- (void)_setupCropModelFromCompositionController:(id)a3;
- (void)_showGridAndCancelDelayedHide;
- (void)_showMaskedContentAndCancelDelayedHide;
- (void)_toggleCropAndPerspective;
- (void)_updateAspectRatioControls;
- (void)_updateAspectRatioLayout;
- (void)_updateBadgeTextWithInfo:(id)a3;
- (void)_updateCropActionButtons;
- (void)_updateCropCanvasConstraintsIfNeeded;
- (void)_updateCropToggleButton;
- (void)_updateCropToggleButtonMode;
- (void)_updateCropToggleConstraintsIfNeeded;
- (void)_updateCropViewsForInteraction;
- (void)_updatePreviewViewInsets;
- (void)_updateToolLabelAppearanceIfNeeded;
- (void)_updateVideoScrubber;
- (void)_userChangedAspectRatioLocked:(BOOL)a3;
- (void)adjustmentsViewControllerDidUpdateSelectedControl:(id)a3;
- (void)adjustmentsViewControllerSliderDidEndScrubbing:(id)a3;
- (void)adjustmentsViewControllerSliderWillBeginScrubbing:(id)a3;
- (void)adjustmentsViewControllerToolDidEndScrubbing:(id)a3;
- (void)adjustmentsViewControllerToolWillBeginScrubbing:(id)a3;
- (void)baseMediaInvalidated;
- (void)basePhotoInvalidated;
- (void)compositionControllerDidChangeForAdjustments:(id)a3;
- (void)configureForAdjustmentCategory:(int64_t)a3;
- (void)createVideoScrubber;
- (void)cropAspectController:(id)a3 cropAspectSelected:(id)a4;
- (void)cropAspectFlipperView:(id)a3 cropOrientationSelected:(int64_t)a4;
- (void)cropTransformedImageViewDidEndTracking:(id)a3;
- (void)cropTransformedImageViewDidTrack:(id)a3;
- (void)cropTransformedImageViewWillBeginTracking:(id)a3;
- (void)dealloc;
- (void)didBecomeActiveTool;
- (void)didResignActiveTool;
- (void)editValuesCalculatorHasChangedGeometricValues:(id)a3;
- (void)handleResigningCropTool;
- (void)mediaTimelineControlViewDidChangeValue:(id)a3;
- (void)mediaTimelineControlViewDidEndChanging:(id)a3;
- (void)mediaTimelineControlViewWillBeginChanging:(id)a3;
- (void)prepareForSave:(BOOL)a3;
- (void)prepareForToolTransitionWithCompletion:(id)a3;
- (void)reactivate;
- (void)resetToolLabelHidingTimer;
- (void)setAspectRatioLocked:(BOOL)a3;
- (void)setAutoButtonMode:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setFocusingViewForInteraction:(BOOL)a3;
- (void)setGainMapImage:(CGImage *)a3;
- (void)setGainMapValue:(float)a3;
- (void)setGridVisible:(BOOL)a3;
- (void)setHasAppliedCropSuggestion:(BOOL)a3;
- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4;
- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6;
- (void)showBadgeView:(BOOL)a3 animated:(BOOL)a4;
- (void)showVideoScrubber:(BOOL)a3;
- (void)updateAspectRatioLockButton;
- (void)updateCropAspectRatioOrientation:(int64_t)a3;
- (void)updateViewConstraints;
- (void)updateViewOrdering;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActiveTool;
- (void)willResignActiveTool;
@end

@implementation PUCropToolController

- (CGSize)screenSize
{
  width = self->_screenSize.width;
  height = self->_screenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)suggestedCrop
{
  x = self->_suggestedCrop.origin.x;
  y = self->_suggestedCrop.origin.y;
  width = self->_suggestedCrop.size.width;
  height = self->_suggestedCrop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)viewCropRect
{
  x = self->_viewCropRect.origin.x;
  y = self->_viewCropRect.origin.y;
  width = self->_viewCropRect.size.width;
  height = self->_viewCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inputExtent
{
  x = self->_inputExtent.origin.x;
  y = self->_inputExtent.origin.y;
  width = self->_inputExtent.size.width;
  height = self->_inputExtent.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cropViewFrameForLastModelLoad
{
  x = self->_cropViewFrameForLastModelLoad.origin.x;
  y = self->_cropViewFrameForLastModelLoad.origin.y;
  width = self->_cropViewFrameForLastModelLoad.size.width;
  height = self->_cropViewFrameForLastModelLoad.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)previewViewInsets
{
  top = self->_previewViewInsets.top;
  left = self->_previewViewInsets.left;
  bottom = self->_previewViewInsets.bottom;
  right = self->_previewViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)initialHandlePanCropRect
{
  x = self->_initialHandlePanCropRect.origin.x;
  y = self->_initialHandlePanCropRect.origin.y;
  width = self->_initialHandlePanCropRect.size.width;
  height = self->_initialHandlePanCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)minimumViewCropRectSizeForHandleGesture
{
  width = self->_minimumViewCropRectSizeForHandleGesture.width;
  height = self->_minimumViewCropRectSizeForHandleGesture.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_accessibilityLongPressChanged:(id)a3
{
  v21 = a3;
  v4 = [(PUCropToolController *)self view];
  v5 = [(PUCropToolController *)self view];
  [v21 locationInView:v5];
  v6 = [v4 hitTest:0 withEvent:?];

  v7 = [(PUCropToolController *)self rotateButton];
  LODWORD(v5) = [v6 isEqual:v7];

  if (v5)
  {
    v8 = [(PUCropToolController *)self rotateButton];
LABEL_7:
    v13 = v8;
    goto LABEL_8;
  }

  v9 = [(PUCropToolController *)self aspectButton];
  v10 = [v6 isEqual:v9];

  if (v10)
  {
    v8 = [(PUCropToolController *)self aspectButton];
    goto LABEL_7;
  }

  v11 = [(PUCropToolController *)self autoButton];
  v12 = [v6 isEqual:v11];

  if (v12)
  {
    v8 = [(PUCropToolController *)self autoButton];
    goto LABEL_7;
  }

  v13 = 0;
LABEL_8:
  v14 = [v21 state];
  if ((v14 - 1) < 2)
  {
    if (v13)
    {
      v15 = objc_alloc(MEMORY[0x1E69DC618]);
      v16 = [v13 titleLabel];
      v17 = [v16 text];
      v18 = [v13 imageView];
      v19 = [v18 image];
      v20 = [v15 initWithTitle:v17 image:v19 imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

      if (v20)
      {
        [(PUCropToolController *)self _showAccessibilityHUDItem:v20];
      }

      else
      {
        [(PUCropToolController *)self _dismissAccessibilityHUD];
      }

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (v14 != 3)
  {
LABEL_15:
    [(PUCropToolController *)self _dismissAccessibilityHUD];
    goto LABEL_19;
  }

  if (v13)
  {
    [(PUCropToolController *)self _dismissAccessibilityHUD];
    [v13 pu_sendActionForControlEventsWithHighlightTimeout:64];
  }

LABEL_19:
}

- (void)_preferredContentSizeCategoryChanged
{
  v4 = [(PUCropToolController *)self accessibilityLongPressGestureRecognizer];
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];
  [v4 setEnabled:UIContentSizeCategoryIsAccessibilityCategory(v3)];
}

- (id)adjustmentsRenderer:(id)a3
{
  v4 = [(PUPhotoEditToolController *)self delegate];
  v5 = [v4 toolControllerMainRenderer:self];

  return v5;
}

- (void)cropAspectFlipperView:(id)a3 cropOrientationSelected:(int64_t)a4
{
  v6 = [(PUCropToolController *)self cropAspect];

  if (v6)
  {
    [(PUPhotoEditToolController *)self willModifyAdjustment];
    v7 = [(PUCropToolController *)self cropAspect];
    v8 = [v7 inverseAspect];
    [(PUCropToolController *)self _setCropAspect:v8 animated:1];

    v9 = PULocalizedString(@"PHOTOEDIT_CROP_ORIENTATION_ACTION_TITLE");
    [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v9];
  }

  [(PUCropToolController *)self updateCropAspectRatioOrientation:a4];
}

- (void)cropAspectController:(id)a3 cropAspectSelected:(id)a4
{
  v7 = a4;
  [(PUPhotoEditToolController *)self willModifyAdjustment];
  [(PUCropToolController *)self _setCropAspect:v7 animated:1];
  v5 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_ACTION_TITLE");
  [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v5];

  if (v7)
  {
    v6 = [v7 isFreeformCrop] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  [(PUCropToolController *)self _userChangedAspectRatioLocked:v6];
  [(PUCropToolController *)self setHasAppliedCropSuggestion:0];
}

- (void)_cropToggleTapped:(id)a3
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:3371 description:{@"Invalid parameter not satisfying: %@", @"[sender isKindOfClass:[UIButton class]]"}];
  }

  [(PUCropToolController *)self _toggleCropAndPerspective];
}

- (void)_updateAspectRatioLayout
{
  v3 = [(PUPhotoEditToolController *)self photoEditSpec];
  v4 = [v3 currentLayoutStyle];

  [(PUCropAspectFlipperView *)self->_cropAspectFlipperView removeFromSuperview];
  if (v4 == 4)
  {
    cropAspectFlipperView = self->_cropAspectFlipperView;
  }

  else
  {
    v6 = [(PUCropToolController *)self view];
    [v6 addSubview:self->_cropAspectFlipperView];

    cropAspectFlipperView = 0;
  }

  v7 = [(PUCropToolController *)self cropAspectViewController];
  [v7 setScrollExtraLeftView:cropAspectFlipperView];
}

- (void)_aspectButtonTapped:(id)a3
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:3319 description:{@"Invalid parameter not satisfying: %@", @"[sender isKindOfClass:[UIButton class]]"}];
  }

  v7 = [(PUPhotoEditToolController *)self delegate];
  [v7 toolControllerOriginalOrientedImageSize:self];
  v9 = v8;
  v11 = v10;

  [(PUCropToolController *)self viewCropRect];
  if (self->_cropAspectViewController)
  {
    [(PUCropToolController *)self _closeAspectRatioPicker];
  }

  else
  {
    v14 = v12;
    v15 = v13;
    v16 = [(PUPhotoEditToolController *)self photoEditSpec];
    v17 = [v16 currentLayoutStyle];

    v18 = [(PUPhotoEditToolController *)self layoutOrientation];
    v19 = v17 != 4 && v18 != 1;
    v20 = [PUCropAspectViewController alloc];
    v21 = [(PUCropToolController *)self cropAspect];
    v22 = [(PUPhotoEditToolController *)self toolControllerSpec];
    v23 = [(PUCropAspectViewController *)v20 initWithLayoutOrientation:v19 originalSize:v21 currentSize:v22 currentCropAspect:v9 spec:v11, v14, v15];
    cropAspectViewController = self->_cropAspectViewController;
    self->_cropAspectViewController = v23;

    [(PUCropAspectViewController *)self->_cropAspectViewController setDelegate:self];
    [(PUCropToolController *)self addChildViewController:self->_cropAspectViewController];
    v25 = [(PUCropToolController *)self view];
    v26 = [(PUCropAspectViewController *)self->_cropAspectViewController view];
    [v25 addSubview:v26];

    if (v17 == 4)
    {
      v27 = 0;
    }

    else
    {
      v27 = v18 != 1;
      v28 = [(PUCropToolController *)self adjustmentPickerView];
      [v28 setHidden:1];

      v29 = [(PUCropToolController *)self badgeView];
      [v29 setHidden:1];
    }

    v30 = [[PUCropAspectFlipperView alloc] initWithLayoutOrientation:v27];
    cropAspectFlipperView = self->_cropAspectFlipperView;
    self->_cropAspectFlipperView = v30;

    [(PUCropAspectFlipperView *)self->_cropAspectFlipperView setDelegate:self];
    [(PUCropToolController *)self _updateAspectRatioLayout];
  }

  [(PUCropAspectFlipperView *)self->_cropAspectFlipperView setAspectRatioOrientation:[(PUCropAspectViewController *)self->_cropAspectViewController aspectOrientation]];
  [(PUCropToolController *)self _updateCropToggleButton];

  [(PUCropToolController *)self _updateCropActionButtons];
}

- (void)_closeAspectRatioPicker
{
  cropAspectViewController = self->_cropAspectViewController;
  if (cropAspectViewController)
  {
    [(PUCropAspectViewController *)cropAspectViewController removeFromParentViewController];
    v4 = [(PUCropAspectViewController *)self->_cropAspectViewController view];
    [v4 removeFromSuperview];

    v5 = self->_cropAspectViewController;
    self->_cropAspectViewController = 0;

    [(PUCropToolController *)self _invalidateConstraintsForKey:@"PUCropToggleConstraints"];
    v6 = [(PUCropToolController *)self adjustmentPickerView];
    [v6 setHidden:0];

    v7 = [(PUCropToolController *)self badgeView];
    [v7 setHidden:0];

    [(PUCropAspectFlipperView *)self->_cropAspectFlipperView removeFromSuperview];
    cropAspectFlipperView = self->_cropAspectFlipperView;
    self->_cropAspectFlipperView = 0;
  }
}

- (void)_gridButtonTapped:(id)a3
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:3296 description:{@"Invalid parameter not satisfying: %@", @"[sender isKindOfClass:[UIButton class]]"}];
  }

  [(PUCropToolController *)self setGridVisible:[(PUCropToolController *)self gridVisible]^ 1];
  v8 = [(PUCropToolController *)self cropOverlayView];
  [v8 setCropGridVisible:-[PUCropToolController gridVisible](self animated:{"gridVisible"), 1}];
}

- (void)_flipButtonTapped:(id)a3
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:3286 description:{@"Invalid parameter not satisfying: %@", @"[sender isKindOfClass:[UIButton class]]"}];
  }

  [(PUCropToolController *)self _performGeometryChange:&__block_literal_global_501 animated:1];

  [(PUCropToolController *)self setHasAppliedCropSuggestion:0];
}

- (void)_rotateButtonTapped:(id)a3
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:3281 description:{@"Invalid parameter not satisfying: %@", @"[sender isKindOfClass:[UIButton class]]"}];
  }

  [(PUCropToolController *)self _rotateByApplyingOrientation:8];
}

- (void)_rotateByApplyingOrientation:(int64_t)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PUCropToolController__rotateByApplyingOrientation___block_invoke;
  v4[3] = &__block_descriptor_40_e25_v16__0__PLImageGeometry_8l;
  v4[4] = a3;
  [(PUCropToolController *)self _performGeometryChange:v4 animated:1];
  [(PUCropToolController *)self setHasAppliedCropSuggestion:0];
  [(PUCropToolController *)self _updateAspectRatioControls];
}

- (void)editValuesCalculatorHasChangedGeometricValues:(id)a3
{
  [(PUCropToolController *)self _loadCropSuggestionIfNeeded];
  [(PUCropToolController *)self _loadPerspectiveSuggestionIfNeeded];
  [(PUCropToolController *)self _updateCropToggleButtonMode];

  [(PUCropToolController *)self _updateCropToggleButton];
}

- (id)toolActionsForMenu
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUCropToolController *)self cropAspect];
  v4 = v3;
  v5 = @"lock.fill";
  v6 = @"PHOTOEDIT_CROP_MENU_LOCK_ASPECT_RATIO";
  if (v3 && ![v3 isFreeformCrop])
  {
    v6 = @"PHOTOEDIT_CROP_MENU_UNLOCK_ASPECT_RATIO";
    v5 = @"lock.open.fill";
  }

  v7 = PULocalizedString(v6);
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__PUCropToolController_toolActionsForMenu__block_invoke;
  v12[3] = &unk_1E7B7C4A0;
  v12[4] = self;
  v9 = [MEMORY[0x1E69DC628] actionWithTitle:v7 image:v8 identifier:0 handler:v12];
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  return v10;
}

- (id)trailingToolbarViews
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(PUCropToolController *)self aspectButton];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)leadingToolbarViews
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [(PUCropToolController *)self flipButton];
  v7[0] = v3;
  v4 = [(PUCropToolController *)self rotateButton];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (void)didResignActiveTool
{
  [(PUCropToolController *)self setModelLoadingSuspended:0];
  [(PUCropToolController *)self setContentViewsHidden:0];
  v3 = [(PUCropToolController *)self cropView];
  [v3 setAutoloopComposition:0];

  v4.receiver = self;
  v4.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v4 didResignActiveTool];
}

- (void)handleResigningCropTool
{
  if ([(PUCropToolController *)self _needsRecomposeCropRect])
  {
    v3 = [(PUCropToolController *)self cropView];
    [(PUCropToolController *)self viewCropRect];
    [v3 setImageCropRectFromViewCropRect:0 animated:?];

    [(NUCropModel *)self->_cropModel cropRect];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    if (CGRectIsEmpty(v23))
    {
      v8 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Crop model rect is empty in [PUCropToolController handleResigningCropTool]", buf, 2u);
      }
    }

    else
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __47__PUCropToolController_handleResigningCropTool__block_invoke;
      v22[3] = &__block_descriptor_64_e36_v16__0__PICropAdjustmentController_8l;
      *&v22[4] = x;
      *&v22[5] = y;
      *&v22[6] = width;
      *&v22[7] = height;
      [(PUCropToolController *)self _performLocalCropModelChanges:v22];
    }
  }

  v9 = [(PUPhotoEditToolController *)self compositionController];
  v10 = [v9 cropAdjustmentController];

  [v10 cropRect];
  if (v12 < 1.0 || v11 < 1.0)
  {
    v14 = [(PUPhotoEditToolController *)self compositionController];
    v15 = [MEMORY[0x1E69BE360] adjustmentConstants];
    v16 = [v15 PICropAdjustmentKey];
    [v14 removeAdjustmentWithKey:v16];
  }

  else if ([v10 enabled])
  {
    v17 = [(PUPhotoEditToolController *)self compositionController];
    v18 = [MEMORY[0x1E69BE360] adjustmentConstants];
    v19 = [v18 PICropAdjustmentKey];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47__PUCropToolController_handleResigningCropTool__block_invoke_483;
    v20[3] = &unk_1E7B7AF80;
    v20[4] = self;
    [v17 modifyAdjustmentWithKey:v19 modificationBlock:v20];
  }
}

void __47__PUCropToolController_handleResigningCropTool__block_invoke_483(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 cropRect];
  [*(*(a1 + 32) + 1480) integralCropRect:?];
  [v3 setCropRect:?];
}

- (void)prepareForSave:(BOOL)a3
{
  if (a3)
  {
    [(PUCropToolController *)self handleResigningCropTool];
  }
}

- (void)willResignActiveTool
{
  [(PUCropToolController *)self setModelLoadingSuspended:1];
  [(PUCropToolController *)self setActiveTool:0];
  [(PUCropToolController *)self _updatePreviewViewInsets];
  [(PUCropToolController *)self _closeAspectRatioPicker];
  v3 = [(PUPhotoEditToolController *)self compositionController];
  v4 = [v3 composition];
  v5 = [v4 copy];
  [(PUCropToolController *)self setLastKnownComposition:v5];

  [(PUCropToolController *)self setContentViewsHidden:1];
  v6 = [(PUCropToolController *)self rotateSnapshotView];
  [v6 removeFromSuperview];

  [(PUCropToolController *)self setRotateSnapshotView:0];
  [(PUCropToolController *)self _cancelDelayedRecomposeCropRect];
  [(PUCropToolController *)self handleResigningCropTool];
  v7 = [(PUCropToolController *)self cropView];
  v8 = [v7 videoMediaView];
  v9 = [v8 player];

  [v9 pause];
  v17 = 0uLL;
  v18 = 0;
  if (v9)
  {
    [v9 currentTime];
    if (BYTE12(v17))
    {
      v10 = [(PUPhotoEditToolController *)self delegate];
      v11 = [v10 mediaView];
      v12 = [v11 player];
      v15 = v17;
      v16 = v18;
      [v12 seekToTime:&v15 exact:1 forceSeek:1];
    }
  }

  v13 = [(PUCropToolController *)self cropView];
  [v13 tearDownMediaViewAndLayers];

  v14 = [(PUCropToolController *)self badgeView];
  [v14 setAlpha:0.0];
}

- (void)didBecomeActiveTool
{
  [(PUCropToolController *)self setActiveTool:1];
  if ([(PUCropToolController *)self needsMediaLoad])
  {
    [(PUCropToolController *)self _loadMediaIfNeeded];
  }

  else
  {
    [(PUCropToolController *)self _installRenderedImageAndDisplayIfNeeded];
  }

  v3.receiver = self;
  v3.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v3 didBecomeActiveTool];
}

- (void)_installRenderedImageAndDisplayIfNeeded
{
  v3 = [(PUCropToolController *)self image];
  if (v3)
  {
    if (![(PUCropToolController *)self isActiveTool]|| [(PUCropToolController *)self needsMediaLoad])
    {
      goto LABEL_10;
    }

LABEL_8:
    v6 = [(PUCropToolController *)self cropOverlayView];
    [v6 setMaskedContentVisible:0];

    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__PUCropToolController__installRenderedImageAndDisplayIfNeeded__block_invoke;
    v7[3] = &unk_1E7B7F988;
    objc_copyWeak(&v8, &location);
    [(PUCropToolController *)self _setContentViewsHidden:0 animated:1 completion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    goto LABEL_10;
  }

  v4 = [(PUPhotoEditToolController *)self delegate];
  if (![v4 isStandardVideo] || !-[PUCropToolController isActiveTool](self, "isActiveTool"))
  {

    goto LABEL_10;
  }

  v5 = [(PUCropToolController *)self needsMediaLoad];

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_10:
}

void __63__PUCropToolController__installRenderedImageAndDisplayIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setWantsPreviewViewHidden:1];
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 toolControllerDidChangeWantsDefaultPreviewView:v3];

  [WeakRetained _updateCropToggleButton];
  [WeakRetained _performInitialAction];
}

- (void)_performInitialAction
{
  if ([(PUCropToolController *)self initialAction]== 1)
  {
    [(PUCropToolController *)self rotateAssetsCounterclockwise:0];
  }

  else if ([(PUCropToolController *)self initialAction]== 2)
  {
    [(PUCropToolController *)self rotateAssetsClockwise:0];
  }

  [(PUCropToolController *)self setInitialAction:0];
}

- (void)reactivate
{
  if (self->_aspectButton)
  {
    [(PUCropToolController *)self _aspectButtonTapped:?];
  }
}

- (void)willBecomeActiveTool
{
  v13.receiver = self;
  v13.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v13 willBecomeActiveTool];
  [(PUCropToolController *)self setNeedsModelLoad:1];
  v3 = [(PUCropToolController *)self lastKnownComposition];
  if (v3)
  {
    v4 = [(PUPhotoEditToolController *)self compositionController];
    v5 = [(PUCropToolController *)self lastKnownComposition];
    v6 = [v4 isEqual:v5 visualChangesOnly:1] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PUPhotoEditToolController *)self compositionController];
  v8 = [v7 adjustmentControllerForKey:*MEMORY[0x1E69BE048]];

  if (v8)
  {
    v9 = [v8 enabled];
  }

  else
  {
    v10 = [(PUPhotoEditToolController *)self delegate];
    v9 = [v10 hasLoopingVideoAdjustment];
  }

  v11 = [(PUCropToolController *)self cropView];
  [v11 setMuted:v9];

  if (v6)
  {
    [(PUCropToolController *)self setNeedsImageLoad:1];
  }

  [(PUCropToolController *)self setNeedsMediaLoad:1];
  [(PUCropToolController *)self _loadImageIfNeededWithCompletion:0];
  v12 = [(PUPhotoEditToolController *)self valuesCalculator];
  [v12 precomputeGeometricValues];

  [(PUCropToolController *)self setWantsPreviewViewHidden:0];
  [(PUCropToolController *)self setContentViewsHidden:1];
}

- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v7 = [(PUPhotoEditToolController *)self layoutOrientation];
  v27.receiver = self;
  v27.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v27 setLayoutOrientation:a3 withTransitionCoordinator:v6];
  if (v7 != a3)
  {
    if ([(PUCropToolController *)self isViewLoaded])
    {
      v8 = [(PUCropToolController *)self view];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(PUCropToolController *)self rotateButton];
    v10 = [(PUCropToolController *)self aspectButton];
    if (v8 && [(PUCropToolController *)self isActiveTool]&& v9 | v10)
    {
      [(PUCropToolController *)self setRotateButton:0];
      [(PUCropToolController *)self setAspectButton:0];
      [(PUCropToolController *)self _invalidateConstraintsForKey:@"PUCropActionButtonConstraints"];
      [(PUCropToolController *)self _updateCropActionButtons];
      if (v6)
      {
        [v8 layoutIfNeeded];
        v11 = [(PUCropToolController *)self rotateButton];
        [v11 setAlpha:0.0];

        v12 = [(PUCropToolController *)self aspectButton];
        [v12 setAlpha:0.0];

        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __71__PUCropToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke;
        v23[3] = &unk_1E7B76570;
        v24 = v9;
        v25 = v10;
        v26 = self;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __71__PUCropToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke_2;
        v20[3] = &unk_1E7B7AC08;
        v21 = v24;
        v22 = v25;
        [v6 animateAlongsideTransition:v23 completion:v20];
      }

      else
      {
        [v9 removeFromSuperview];
        [v10 removeFromSuperview];
      }
    }

    v13 = [(PUPhotoEditToolController *)self photoEditSpec];
    v14 = [v13 currentLayoutStyle];

    v15 = [(PUCropToolController *)self cropAspectViewController];
    if (v15)
    {
      v16 = v14 == 4;
    }

    else
    {
      v16 = 1;
    }

    v17 = !v16;

    v18 = [(PUCropToolController *)self adjustmentPickerView];
    [v18 setHidden:v17];

    v19 = [(PUCropToolController *)self badgeView];
    [v19 setHidden:v17];

    [(PUCropToolController *)self _invalidateConstraintsForKey:@"PUCropCanvasConstraints"];
    [(PUCropToolController *)self _invalidateConstraintsForKey:@"PUCropTiltControlConstraints"];
    [(PUCropToolController *)self _invalidateConstraintsForKey:@"PUCropToggleConstraints"];
    [(PUCropToolController *)self setNeedsModelLoad:1];
    [v8 setNeedsUpdateConstraints];
  }
}

void __71__PUCropToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke(id *a1)
{
  [a1[4] setAlpha:0.0];
  [a1[5] setAlpha:0.0];
  v2 = [a1[6] rotateButton];
  [v2 setAlpha:1.0];

  v3 = [a1[6] aspectButton];
  [v3 setAlpha:1.0];
}

uint64_t __71__PUCropToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

- (void)_setContentViewsHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if (self->_contentViewsHidden != v6)
  {
    self->_contentViewsHidden = v6;
    [(PUCropToolController *)self setContentViewsHiddenAnimationCount:[(PUCropToolController *)self contentViewsHiddenAnimationCount]+ 1];
    v9 = !v6;
    v10 = 0.0;
    if (v5)
    {
      v11 = 0.3;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = [(PUCropToolController *)self cropAspect];
    v13 = v12;
    if (v12)
    {
      if ([v12 isFreeformCrop])
      {
        v10 = 0.0;
      }

      else
      {
        v10 = !v6;
      }
    }

    v14 = [(PUCropToolController *)self cropOverlayView];
    [v14 setAlpha:v9];

    v15 = MEMORY[0x1E69DD250];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__PUCropToolController__setContentViewsHidden_animated_completion___block_invoke;
    v18[3] = &unk_1E7B7C518;
    v18[4] = self;
    *&v18[5] = v9;
    *&v18[6] = v10;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__PUCropToolController__setContentViewsHidden_animated_completion___block_invoke_2;
    v16[3] = &unk_1E7B80A18;
    v16[4] = self;
    v17 = v8;
    [v15 animateWithDuration:6 delay:v18 options:v16 animations:v11 completion:0.0];
  }
}

void __67__PUCropToolController__setContentViewsHidden_animated_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cropView];
  [v2 setAlpha:*(a1 + 40)];

  [*(*(a1 + 32) + 1280) setAlpha:*(a1 + 40)];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [*(a1 + 32) cropHandleViewsByHandle];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v17 + 1) + 8 * v8++) setAlpha:*(a1 + 40)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v9 = +[PUPhotoEditProtoSettings sharedInstance];
  v10 = [v9 maintainCropAspectLockState];

  if (v10)
  {
    v11 = *(a1 + 48);
    v12 = [*(a1 + 32) aspectRatioLockButton];
    [v12 setAlpha:v11];
  }

  v13 = *(a1 + 40);
  v14 = [*(a1 + 32) videoScrubberView];
  [v14 setAlpha:v13];

  v15 = *(a1 + 40);
  v16 = [*(a1 + 32) playPauseButton];
  [v16 setAlpha:v15];
}

uint64_t __67__PUCropToolController__setContentViewsHidden_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setContentViewsHiddenAnimationCount:{objc_msgSend(*(a1 + 32), "contentViewsHiddenAnimationCount") - 1}];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)configureForAdjustmentCategory:(int64_t)a3
{
  if (self->_aspectButton)
  {
    cropAspectViewController = self->_cropAspectViewController;
    v4 = a3 != 7;
    v5 = cropAspectViewController == 0;
    if (cropAspectViewController)
    {
      v6 = 0;
    }

    else
    {
      v6 = a3 == 6;
    }

    if (v5)
    {
      v4 = 1;
    }

    if (v6 || !v4)
    {
      [(PUCropToolController *)self _aspectButtonTapped:?];
    }
  }
}

- (void)setFocusingViewForInteraction:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUCropToolController *)self adjustmentsViewController];
  v19 = v5;
  if (v3)
  {
    v6 = 0.0;
    v7 = 0.0;
    if ([(PUCropToolController *)self isTrackingAdjustmentControl])
    {
      [v19 hideUnselectedAdjustments:1];
      v7 = 1.0;
    }

    v8 = [v19 view];
    [v8 setAlpha:v7];
  }

  else
  {
    [v5 hideUnselectedAdjustments:0];
    v9 = [v19 view];
    v6 = 1.0;
    [v9 setAlpha:1.0];

    v10 = [(PUCropToolController *)self videoScrubberView];
    [v10 alpha];
    v12 = v11;

    if (v12 <= 0.0)
    {
      goto LABEL_7;
    }
  }

  v13 = [(PUCropToolController *)self playPauseButton];
  [v13 setAlpha:v6];

LABEL_7:
  v14 = [(PUCropToolController *)self cropAspect];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 isFreeformCrop];
  }

  else
  {
    v16 = 1;
  }

  v17 = (((v3 | v16) & 1) == 0);
  v18 = [(PUCropToolController *)self aspectRatioLockButton];
  [v18 setAlpha:v17];
}

- (BOOL)canResetToDefaultValue
{
  v3 = [(PUPhotoEditToolController *)self compositionController];
  v4 = [v3 cropAdjustmentController];

  if (v4)
  {
    v5 = [(PUCropToolController *)self cropModel];
    [v5 masterImageSize];
    if ([v4 isCropIdentityForImageSize:?])
    {
      v6 = 0;
    }

    else
    {
      v6 = [v4 enabled];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)prepareForToolTransitionWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(PUPhotoEditToolController *)self delegate];
  v5 = [v4 isStandardVideo];

  if (v5)
  {
    [(PUCropToolController *)self basePhotoInvalidated];
  }

  [(PUCropToolController *)self _loadImageIfNeededWithCompletion:v6];
}

- (void)cropTransformedImageViewDidEndTracking:(id)a3
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  v4 = [(PUCropToolController *)self cropOverlayView];
  [(PUCropToolController *)self viewCropRect];
  [v4 setCropRect:?];

  v5 = [(PUCropToolController *)self cropView];
  [(NUCropModel *)self->_cropModel cropRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(PUCropToolController *)self viewCropRect];
  [v5 setModelCropRect:v7 viewCropRect:{v9, v11, v13, v14, v15, v16, v17}];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__PUCropToolController_cropTransformedImageViewDidEndTracking___block_invoke;
  v19[3] = &unk_1E7B7AF80;
  v19[4] = self;
  [(PUCropToolController *)self _performLocalCropModelChanges:v19];
  if ([(PUCropToolController *)self wasLoadingStateFromModelWhenTrackingBegan])
  {
    [(PUCropToolController *)self setWasLoadingStateFromModelWhenTrackingBegan:0];
  }

  else
  {
    v18 = PULocalizedString(@"PHOTOEDIT_CROP_GENERIC_ACTION_TITLE");
    [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v18];
  }

  [(PUCropToolController *)self _updateCropViewsForInteraction];
  [(PUCropToolController *)self resetToolLabelHidingTimer];
}

void __63__PUCropToolController_cropTransformedImageViewDidEndTracking___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1480);
  v3 = a2;
  [v2 cropRect];
  [v3 setCropRect:?];
}

- (void)cropTransformedImageViewDidTrack:(id)a3
{
  v5 = [(PUPhotoEditToolController *)self compositionController];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:2775 description:@"Need a composition to perform this operation"];
  }

  if (![(PUCropToolController *)self ignoreTrackingUpdates])
  {
    if ([(PUCropToolController *)self isActiveTool])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __57__PUCropToolController_cropTransformedImageViewDidTrack___block_invoke;
      v7[3] = &unk_1E7B7AF80;
      v7[4] = self;
      [(PUCropToolController *)self _performLocalCropModelChanges:v7];
      [(PUCropToolController *)self setHasAppliedCropSuggestion:0];
      [(PUCropToolController *)self setHasAppliedPerspectiveSuggestion:0];
    }
  }
}

void __57__PUCropToolController_cropTransformedImageViewDidTrack___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1480);
  v3 = a2;
  [v2 cropRect];
  [v3 setCropRect:?];
}

- (void)cropTransformedImageViewWillBeginTracking:(id)a3
{
  [(PUCropToolController *)self viewCropRect];
  v8 = v7;
  if (v5 > 1.0 && v6 > 1.0)
  {
    v10 = v4;
    v11 = v5;
    v12 = v6;
    if ([(PUCropToolController *)self _needsRecomposeCropRect])
    {
      v13 = [(PUCropToolController *)self cropView];
      [v13 setImageCropRectFromViewCropRect:1 animated:{v8, v10, v11, v12}];

      v14 = [(PUCropToolController *)self cropView];
      [(NUCropModel *)self->_cropModel cropRect];
      [v14 setModelCropRect:? viewCropRect:?];
    }
  }

  if ([(PUCropToolController *)self loadingStateFromModel])
  {
    [(PUCropToolController *)self setWasLoadingStateFromModelWhenTrackingBegan:1];
  }

  else
  {
    [(PUPhotoEditToolController *)self willModifyAdjustment];
  }

  [(PUCropToolController *)self _updateCropViewsForInteraction];
  [(PUCropToolController *)self _showGridAndCancelDelayedHide];
  [(PUCropToolController *)self _cancelDelayedRecomposeCropRect];
  [(PUCropToolController *)self showVideoScrubber:0];

  [(PUPhotoEditToolController *)self setActivelyAdjusting:1];
}

- (void)mediaTimelineControlViewDidEndChanging:(id)a3
{
  [(PUCropToolController *)self setIsScrubbingVideo:0];
  if ([(PUCropToolController *)self wasPlayingBeforeBeginningToScrubVideo])
  {
    v4 = +[PUPhotoEditProtoSettings sharedInstance];
    v5 = [v4 pauseAfterMovingPlayhead];

    if ((v5 & 1) == 0)
    {
      v6 = [(PUCropToolController *)self cropView];
      v7 = [v6 videoMediaView];
      v8 = [v7 player];
      [v8 play];
    }

    v9 = [(PUCropToolController *)self playPauseButton];
    [v9 setSelected:v5 ^ 1u];
  }

  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
}

- (void)mediaTimelineControlViewDidChangeValue:(id)a3
{
  v4 = a3;
  v5 = [(PUCropToolController *)self cropView];
  v6 = [v5 videoMediaView];
  v7 = [v6 player];

  if (!v7)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_5:
    v8 = 600;
    goto LABEL_6;
  }

  [v7 currentTime];
  v8 = v18;
  if (!v18)
  {
    goto LABEL_5;
  }

LABEL_6:
  memset(&v16, 0, sizeof(v16));
  [v4 currentValue];
  CMTimeMakeWithSeconds(&v16, v9, v8);
  memset(&v15, 0, sizeof(v15));
  [v4 minValue];
  v11 = v10;

  CMTimeMakeWithSeconds(&v15, v11, v8);
  if (v16.flags & 1) != 0 && (v15.flags)
  {
    memset(&v14, 0, sizeof(v14));
    lhs = v16;
    v12 = v15;
    CMTimeSubtract(&v14, &lhs, &v12);
    lhs = v14;
    [v7 seekToTime:&lhs exact:0];
  }
}

- (void)mediaTimelineControlViewWillBeginChanging:(id)a3
{
  [(PUCropToolController *)self setIsScrubbingVideo:1];
  v4 = [(PUCropToolController *)self cropView];
  v5 = [v4 videoMediaView];
  v7 = [v5 player];

  [v7 playbackRate];
  [(PUCropToolController *)self setWasPlayingBeforeBeginningToScrubVideo:v6 == 1.0];
  [v7 pause];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:1];
}

- (void)showBadgeView:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__PUCropToolController_showBadgeView_animated___block_invoke;
    v13[3] = &unk_1E7B7FF98;
    v13[4] = self;
    v14 = a3;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v13 options:&__block_literal_global_462 animations:0.25 completion:0.0];
  }

  else
  {
    v6 = [(PUCropToolController *)self badgeView];
    [v6 setAlpha:v4];

    v7 = !v4;
    v8 = [(PUCropToolController *)self videoScrubberView];
    [v8 setAlpha:v7];

    v12 = [(PUCropToolController *)self videoScrubberView];
    [v12 alpha];
    v10 = v9;
    v11 = [(PUCropToolController *)self playPauseButton];
    [v11 setAlpha:v10];
  }
}

void __47__PUCropToolController_showBadgeView_animated___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v3 = *&a2;
  v4 = [*(a1 + 32) badgeView];
  [v4 setAlpha:v3];

  v5 = (*(a1 + 40) ^ 1u);
  v6 = [*(a1 + 32) videoScrubberView];
  [v6 setAlpha:v5];

  v10 = [*(a1 + 32) videoScrubberView];
  [v10 alpha];
  v8 = v7;
  v9 = [*(a1 + 32) playPauseButton];
  [v9 setAlpha:v8];
}

- (void)_updateVideoScrubber
{
  v3 = [(PUCropToolController *)self videoScrubberView];
  if (v3)
  {
    v4 = v3;
    v5 = [(PUCropToolController *)self isScrubbingVideo];

    if (!v5)
    {
      v6 = [(PUCropToolController *)self cropView];
      v7 = [v6 videoMediaView];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v10 = [(PUPhotoEditToolController *)self delegate];
        v9 = [v10 mediaView];
      }

      memset(&v36, 0, sizeof(v36));
      v11 = [v9 player];
      v12 = v11;
      if (v11)
      {
        [v11 mediaDuration];
      }

      else
      {
        memset(&v36, 0, sizeof(v36));
      }

      memset(&v35, 0, sizeof(v35));
      CMTimeMake(&v35, 0, v36.timescale);
      memset(&v34, 0, sizeof(v34));
      v13 = [v9 player];
      v14 = v13;
      if (v13)
      {
        [v13 currentTime];
      }

      else
      {
        memset(&v34, 0, sizeof(v34));
      }

      v15 = [(PUPhotoEditToolController *)self compositionController];
      v16 = [v15 trimAdjustmentController];

      if (v16)
      {
        [v16 startTime];
        if (v33)
        {
          [v16 endTime];
          if (v32)
          {
            [v16 startTime];
            v35 = time;
            [v16 endTime];
            v36 = time;
            lhs = v35;
            [(PUPhotoEditToolController *)self displayedTimeForOriginalAssetTime:&lhs];
            v35 = time;
            lhs = v36;
            [(PUPhotoEditToolController *)self displayedTimeForOriginalAssetTime:&lhs];
            v36 = time;
          }
        }
      }

      if (v35.flags & 1) != 0 && (v36.flags & 1) != 0 && (v34.flags)
      {
        lhs = v35;
        v29 = v34;
        CMTimeAdd(&time, &lhs, &v29);
        v34 = time;
        time = v35;
        Seconds = CMTimeGetSeconds(&time);
        v18 = [(PUCropToolController *)self videoScrubberView];
        *&v19 = Seconds;
        [v18 setMinValue:v19];

        time = v36;
        v20 = CMTimeGetSeconds(&time);
        v21 = [(PUCropToolController *)self videoScrubberView];
        *&v22 = v20;
        [v21 setMaxValue:v22];

        time = v34;
        v23 = CMTimeGetSeconds(&time);
        v24 = [(PUCropToolController *)self videoScrubberView];
        *&v25 = v23;
        [v24 setCurrentValue:v25];

        v26 = [v9 player];
        if ([v26 playbackState] == 3)
        {
          time = v34;
          lhs = v36;
          v27 = CMTimeCompare(&time, &lhs) != 0;
        }

        else
        {
          v27 = 0;
        }

        v28 = [(PUCropToolController *)self playPauseButton];
        [v28 setSelected:v27];
      }
    }
  }
}

- (void)_beginObservingVideoPlayer
{
  v3 = [(PUCropToolController *)self cropView];
  v4 = [v3 videoMediaView];
  v5 = [v4 player];

  v6 = [(PUCropToolController *)self videoScrubberTimeObserver];
  if (!v6 || (v7 = v6, [(PUCropToolController *)self videoScrubberObservedPlayer], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v5 != v8))
  {
    v9 = [(PUCropToolController *)self videoScrubberTimeObserver];

    if (v9)
    {
      v10 = [(PUCropToolController *)self videoScrubberObservedPlayer];
      v11 = [(PUCropToolController *)self videoScrubberTimeObserver];
      [v10 removeObserver:v11];
    }

    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __50__PUCropToolController__beginObservingVideoPlayer__block_invoke;
    v16 = &unk_1E7B7B568;
    objc_copyWeak(&v17, &location);
    v12 = [v5 addPlaybackTimeObserver:&v13];
    [(PUCropToolController *)self setVideoScrubberTimeObserver:v12, v13, v14, v15, v16];

    [(PUCropToolController *)self setVideoScrubberObservedPlayer:v5];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __50__PUCropToolController__beginObservingVideoPlayer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateVideoScrubber];
}

- (void)_playPauseButtonTapped
{
  [(PUCropToolController *)self _beginObservingVideoPlayer];
  v3 = [(PUCropToolController *)self cropView];
  v4 = [v3 videoMediaView];
  v5 = [v4 player];

  if ([v5 playbackState] == 3)
  {
    [v5 pause];
  }

  else
  {
    [v5 play];
  }
}

- (void)createVideoScrubber
{
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 isStandardVideo];

  if (v4)
  {
    v5 = [(PUCropToolController *)self videoScrubberView];

    if (!v5)
    {
      v6 = objc_alloc_init(PUAVKitMediaTimelineView);
      videoScrubberView = self->_videoScrubberView;
      self->_videoScrubberView = v6;

      v8 = [(PUPhotoEditToolController *)self asset];
      v9 = [v8 mediaSubtypes];

      v10 = 4.0;
      if ((*&v9 & 0x100000) == 0)
      {
        v10 = 1.0;
      }

      [(PUAVKitMediaTimelineView *)self->_videoScrubberView setWhiteValue:v10];
      [(PUAVKitMediaTimelineView *)self->_videoScrubberView setDelegate:self];
      [(PUAVKitMediaTimelineView *)self->_videoScrubberView setOverrideUserInterfaceStyle:2];
      [(PUAVKitMediaTimelineView *)self->_videoScrubberView setShowsTimeLabels:1];
      [(PUAVKitMediaTimelineView *)self->_videoScrubberView setPlaying:1];
      [(PUAVKitMediaTimelineView *)self->_videoScrubberView setAlpha:0.0];
      v11 = [(PUCropToolController *)self view];
      [v11 addSubview:self->_videoScrubberView];

      v12 = +[PUPhotoEditSupport createPlayPauseButton];
      playPauseButton = self->_playPauseButton;
      self->_playPauseButton = v12;

      objc_initWeak(&location, self);
      v14 = self->_playPauseButton;
      v15 = MEMORY[0x1E69DC628];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __43__PUCropToolController_createVideoScrubber__block_invoke;
      v23 = &unk_1E7B80890;
      objc_copyWeak(&v24, &location);
      v16 = [v15 actionWithHandler:&v20];
      [(UIButton *)v14 addAction:v16 forControlEvents:64, v20, v21, v22, v23];

      v17 = MEMORY[0x1E69DC888];
      [(PUAVKitMediaTimelineView *)self->_videoScrubberView whiteValue];
      v18 = [v17 colorWithWhite:? alpha:?];
      [(UIButton *)self->_playPauseButton setTintColor:v18];

      v19 = [(PUCropToolController *)self view];
      [v19 addSubview:self->_playPauseButton];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    [(PUCropToolController *)self _updateVideoScrubber];
  }
}

void __43__PUCropToolController_createVideoScrubber__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _playPauseButtonTapped];
}

- (void)setAspectRatioLocked:(BOOL)a3
{
  if (a3)
  {
    [(PUCropToolController *)self viewCropRect];
    v6 = [(PUCropToolController *)self bestAspectRatioForWidth:v4 height:v5];
    [(PUCropToolController *)self _setCropAspect:v6 animated:0];
  }

  else
  {

    [(PUCropToolController *)self _setCropAspect:0 animated:0];
  }
}

- (id)bestAspectRatioForWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v5 = [[PUCropAspect alloc] initWithWidth:a3 height:a4];
  v6 = [(PUCropAspectViewController *)self->_cropAspectViewController matchingCropAspectTo:v5 ignoreFreeform:1];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v8;
}

- (void)_userChangedAspectRatioLocked:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUCropToolController *)self aspectRatioLockButton];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(PUCropToolController *)self view];
  v15 = [(PUCropToolController *)self aspectRatioLockButton];
  v16 = [v15 superview];
  [v14 convertRect:v16 fromView:{v7, v9, v11, v13}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if (v3)
  {
    v25 = @"PHOTOEDIT_CROP_ASPECT_RATIO_LOCKED";
  }

  else
  {
    v25 = @"PHOTOEDIT_CROP_ASPECT_RATIO_UNLOCKED";
  }

  v26 = PULocalizedString(v25);
  v27 = [(PUPhotoEditToolController *)self delegate];
  [v27 transientBadgeWidthForText:v26];
  v29 = v28;

  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = v22;
  v45.size.height = v24;
  MinX = CGRectGetMinX(v45);
  v31 = [(PUCropToolController *)self view];
  [v31 bounds];
  v32 = (v29 + CGRectGetWidth(v46)) * 0.5;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__PUCropToolController__userChangedAspectRatioLocked___block_invoke;
  aBlock[3] = &unk_1E7B80C38;
  aBlock[4] = self;
  v33 = v26;
  v44 = v33;
  v34 = _Block_copy(aBlock);
  v35 = v34;
  if (MinX >= v32 || !v3)
  {
    v34[2](v34);
  }

  else
  {
    v37 = MEMORY[0x1E69DD250];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __54__PUCropToolController__userChangedAspectRatioLocked___block_invoke_2;
    v42[3] = &unk_1E7B80DD0;
    v42[4] = self;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __54__PUCropToolController__userChangedAspectRatioLocked___block_invoke_3;
    v40[3] = &unk_1E7B80A18;
    v40[4] = self;
    v41 = v34;
    [v37 animateWithDuration:v42 animations:v40 completion:0.2];
  }

  v38 = [MEMORY[0x1E695E000] standardUserDefaults];
  v39 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v38 setObject:v39 forKey:@"PUPhotoEditCropAspectRatioLocked2"];
}

void __54__PUCropToolController__userChangedAspectRatioLocked___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 flashTransientBadgeWithText:*(a1 + 40)];
}

void __54__PUCropToolController__userChangedAspectRatioLocked___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) aspectRatioLockButton];
  [v1 setAlpha:0.0];
}

uint64_t __54__PUCropToolController__userChangedAspectRatioLocked___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__PUCropToolController__userChangedAspectRatioLocked___block_invoke_4;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v3 options:&__block_literal_global_455 animations:0.2 completion:1.5];
}

void __54__PUCropToolController__userChangedAspectRatioLocked___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) aspectRatioLockButton];
  [v1 setAlpha:1.0];
}

- (void)_aspectLockButtonTapped
{
  v3 = [(PUCropToolController *)self cropAspect];
  v6 = v3;
  if (v3)
  {
    v4 = [v3 isFreeformCrop];
  }

  else
  {
    v4 = 1;
  }

  [(PUCropToolController *)self _userChangedAspectRatioLocked:v4];
  [(PUCropToolController *)self setAspectRatioLocked:v4];
  v5 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:1];
  [v5 impactOccurred];
}

- (void)updateAspectRatioLockButton
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  v4 = [v3 maintainCropAspectLockState];

  if (v4)
  {
    v5 = [(PUCropToolController *)self cropAspect];
    v21 = v5;
    if (v5)
    {
      v6 = ([v5 isFreeformCrop] ^ 1);
    }

    else
    {
      v6 = 0.0;
    }

    v7 = MEMORY[0x1E69DCAB8];
    v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:17.0];
    v9 = [v7 systemImageNamed:@"lock.fill" withConfiguration:v8];

    v10 = [(PUCropToolController *)self aspectRatioLockButton];
    [v10 setImage:v9 forState:0];

    v11 = [(PUCropToolController *)self aspectRatioLockButton];
    v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.95];
    [v11 setTintColor:v12];

    v13 = [(PUCropToolController *)self aspectRatioLockButton];
    v14 = [v13 layer];
    LODWORD(v15) = 1063675494;
    [v14 setShadowOpacity:v15];

    v16 = [(PUCropToolController *)self aspectRatioLockButton];
    v17 = [v16 layer];
    [v17 setShadowOffset:{2.0, 2.0}];

    v18 = [(PUCropToolController *)self aspectRatioLockButton];
    v19 = [v18 layer];
    [v19 setShadowRadius:6.0];

    if (![(PUCropToolController *)self rotatingAnimationCount])
    {
      v20 = [(PUCropToolController *)self aspectRatioLockButton];
      [v20 setAlpha:v6];
    }
  }
}

- (void)updateCropAspectRatioOrientation:(int64_t)a3
{
  v5 = [(PUCropToolController *)self cropAspect];

  if (v5)
  {
    v6 = [(PUCropToolController *)self cropAspect];
    [v6 width];
    v8 = v7;
    v9 = [(PUCropToolController *)self cropAspect];
    [v9 height];
    v11 = v10;
    v12 = [(PUCropToolController *)self cropAspectViewController];
    [v12 setCurrentCropSize:{v8, v11}];
  }

  v13 = [(PUCropToolController *)self cropAspectViewController];
  [v13 setAspectOrientation:a3];

  v14 = [(PUCropToolController *)self cropAspect];
  v15 = [(PUCropToolController *)self cropAspectViewController];
  [v15 setCurrentCropAspect:v14];

  cropAspectFlipperView = self->_cropAspectFlipperView;

  [(PUCropAspectFlipperView *)cropAspectFlipperView setAspectRatioOrientation:a3];
}

- (void)_recomposeCropRectAnimated:(BOOL)a3
{
  v3 = a3;
  [(NUCropModel *)self->_cropModel cropRect];
  [(PUCropToolController *)self _suggestedCropRectForImageRect:?];
  PURoundRectToPixel(v5, v6, v7, v8);
  [(PUCropToolController *)self _setViewCropRect:v3 animated:?];
  v9 = [(PUCropToolController *)self cropView];
  [(NUCropModel *)self->_cropModel cropRect];
  [v9 setModelCropRect:? viewCropRect:?];

  [(PUCropToolController *)self _cancelDelayedRecomposeCropRect];
}

- (CGRect)_suggestedCropRectForImageRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(PUCropToolController *)self _cropCanvasFrame:a3.origin.x];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(PUCropToolController *)self geometry];
  v15 = [v14 isSizeInverted];
  if (v15)
  {
    v16 = height;
  }

  else
  {
    v16 = width;
  }

  if (v15)
  {
    height = width;
  }

  v17 = PURectWithSizeThatFitsInRect(v16, height, v7, v9, v11, v13);
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_cropCanvasFrame
{
  v2 = [(PUCropToolController *)self cropCanvasView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGPoint)_pointForHandle:(unint64_t)a3 onCropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (a3 <= 5 && ((1 << a3) & 0x31) != 0)
  {
    v9 = a4.origin.y;
  }

  else
  {
    if (a3 <= 7 && ((0xC8u >> a3) & 1) != 0)
    {
      MaxY = CGRectGetMaxY(a4);
    }

    else
    {
      MaxY = CGRectGetMidY(a4);
    }

    v9 = MaxY;
  }

  if (a3 > 6 || ((0x52u >> a3) & 1) == 0)
  {
    if (a3 <= 7 && ((0xA4u >> a3) & 1) != 0)
    {
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      MaxX = CGRectGetMaxX(v15);
    }

    else
    {
      v16.origin.x = x;
      v16.origin.y = y;
      v16.size.width = width;
      v16.size.height = height;
      MaxX = CGRectGetMidX(v16);
    }

    x = MaxX;
  }

  v12 = x;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)_pointForHandle:(unint64_t)a3
{
  [(PUCropToolController *)self viewCropRect];

  [(PUCropToolController *)self _pointForHandle:a3 onCropRect:?];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGVector)_deltaMaskForHandle:(unint64_t)a3
{
  v3 = a3 - 1;
  if (a3 - 1 > 6)
  {
    v5 = 1.0;
    v4 = 0.0;
  }

  else
  {
    v4 = dbl_1B3D0D210[v3];
    v5 = dbl_1B3D0D248[v3];
  }

  result.dy = v5;
  result.dx = v4;
  return result;
}

- (CGVector)_correctInputVector:(CGVector)a3 forHandle:(unint64_t)a4 onCropRect:(CGRect)a5 lockDirection:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  [(PUCropToolController *)self _pointForHandle:a5.origin.x onCropRect:a5.origin.y, a5.size.width, a5.size.height];
  v42 = v13;
  v43 = v14;
  [(PUCropToolController *)self _cropCanvasFrame];
  v16 = v15;
  v18 = v17;
  rect = v19;
  v21 = v20;
  v22 = [(PUPhotoEditToolController *)self toolControllerSpec];
  [v22 minimumCropSize];
  v24 = v23;
  v45 = v25;

  if (a4 <= 6 && ((0x52u >> a4) & 1) != 0)
  {
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    MaxX = CGRectGetMaxX(v48) - v24;
  }

  else
  {
    v49.origin.x = v16;
    v49.origin.y = v18;
    v49.size.width = rect;
    v49.size.height = v21;
    MaxX = CGRectGetMaxX(v49);
  }

  v41 = MaxX;
  if (a4 <= 7 && ((0xA4u >> a4) & 1) != 0)
  {
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    MinX = v24 + CGRectGetMinX(v50);
  }

  else
  {
    v51.origin.x = v16;
    v51.origin.y = v18;
    v51.size.width = rect;
    v51.size.height = v21;
    MinX = CGRectGetMinX(v51);
  }

  v40 = MinX;
  if (a4 <= 5 && ((1 << a4) & 0x31) != 0)
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    MaxY = CGRectGetMaxY(v52) - v45;
  }

  else
  {
    v53.origin.x = v16;
    v53.origin.y = v18;
    v53.size.width = rect;
    v53.size.height = v21;
    MaxY = CGRectGetMaxY(v53);
  }

  if (a4 <= 7 && ((0xC8u >> a4) & 1) != 0)
  {
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    MinY = v45 + CGRectGetMinY(v54);
  }

  else
  {
    v55.origin.x = v16;
    v55.origin.y = v18;
    v55.size.width = rect;
    v55.size.height = v21;
    MinY = CGRectGetMinY(v55);
  }

  dx = a3.dx;
  dy = a3.dy;
  if (v6)
  {
    v32 = 1.0;
    v33 = 1.0;
    v34 = 1.0;
    if (a3.dx != 0.0)
    {
      v33 = (v41 - v42) / a3.dx;
      v34 = (v40 - v42) / a3.dx;
    }

    v35 = 1.0;
    if (a3.dy != 0.0)
    {
      v32 = (MaxY - v43) / a3.dy;
      v35 = (MinY - v43) / a3.dy;
    }

    v36 = fmax(v33, v34);
    v37 = fmax(v32, v35);
    if (v36 < 1.0 || v37 < 1.0)
    {
      v38 = fmin(v36, v37);
      dx = a3.dx * v38;
      dy = a3.dy * v38;
    }
  }

  else
  {
    dx = fmax(v40, fmin(v41, a3.dx + v42)) - v42;
    dy = fmax(MinY, fmin(MaxY, a3.dy + v43)) - v43;
  }

  v39 = dx;
  result.dy = dy;
  result.dx = v39;
  return result;
}

- (CGRect)_addHeight:(double)a3 toRect:(CGRect)a4 anchorTop:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  y = a4.origin.y;
  MidX = CGRectGetMidX(a4);
  v11 = height + a3;
  v12 = [(PUCropToolController *)self cropAspect];
  [v12 widthForHeight:v11];
  v14 = v13;

  if (v5)
  {
    v15 = y;
  }

  else
  {
    v15 = y - a3;
  }

  v16 = MidX + v14 * -0.5;
  v17 = v14;
  v18 = v11;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v15;
  result.origin.x = v16;
  return result;
}

- (CGRect)_addWidth:(double)a3 toRect:(CGRect)a4 anchorLeft:(BOOL)a5
{
  v5 = a5;
  width = a4.size.width;
  x = a4.origin.x;
  MidY = CGRectGetMidY(a4);
  v11 = width + a3;
  v12 = [(PUCropToolController *)self cropAspect];
  [v12 heightForWidth:v11];
  v14 = v13;

  v15 = x - a3;
  if (v5)
  {
    v15 = x;
  }

  v16 = MidY + v14 * -0.5;
  v17 = v11;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_cropRectFromPanningHandle:(unint64_t)a3 byAmount:(CGVector)a4
{
  v99 = *MEMORY[0x1E69E9840];
  [(PUCropToolController *)self initialHandlePanCropRect];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (a3 - 1 > 6)
  {
    v14 = 3;
  }

  else
  {
    v14 = qword_1B3D0D1D8[a3 - 1];
  }

  [(PUCropToolController *)self _pointForHandle:a3 onCropRect:v6, v7, v8, v9];
  v16 = v15;
  v18 = v17;
  [(PUCropToolController *)self _pointForHandle:v14 onCropRect:v10, v11, v12, v13];
  v20 = v19;
  v22 = v21;
  v23 = [(PUCropToolController *)self cropAspect];
  [(PUCropToolController *)self _deltaMaskForHandle:a3];
  v25 = v12;
  v26 = v13;
  v28 = a4.dx * v27;
  v29 = a4.dy * v24;
  if (v23)
  {
    v90 = v25;
    v91 = v26;
    v88 = v10;
    [v23 ratio];
    if ((a3 & 0xFFFFFFFFFFFFFFFCLL) == 4)
    {
      v31 = v30 * v30 + 1.0;
      v32 = 1.0 / sqrtf(v31);
      v33 = v30 * v32;
      if (a3 - 5 < 2)
      {
        v32 = -v32;
      }

      [(PUCropToolController *)self _correctInputVector:a3 forHandle:1 onCropRect:v33 * (v29 * v32 + v28 * v33) lockDirection:v32 * (v29 * v32 + v28 * v33), v10, v11, v90, v91];
      v35 = v34 + v16;
      v37 = v36 + v18;
      x = fmin(v20, v35);
      v39 = v22;
      y = fmin(v22, v37);
      width = vabdd_f64(v20, v35);
      height = vabdd_f64(v39, v37);
    }

    else
    {
      width = v90;
      height = v91;
      y = v11;
      x = v10;
      if (a3 <= 3)
      {
        [(PUCropToolController *)self _correctInputVector:a3 forHandle:1 onCropRect:v28 lockDirection:v29, v10, v11, v90, v91];
        v52 = v51;
        v54 = v53;
        [(PUCropToolController *)self _cropCanvasFrame];
        v55 = [(PUPhotoEditToolController *)self toolControllerSpec];
        [v55 minimumCropSize];
        v57 = v56;
        v59 = v58;

        if (!a3 || ((0xC8u >> a3) & 1) != 0)
        {
          v68 = -v54;
          if (a3)
          {
            v68 = v54;
          }

          [(PUCropToolController *)self _addHeight:a3 != 0 toRect:v68 anchorTop:v88, v11, v90, v91];
        }

        else
        {
          v60 = -v52;
          if (((0x52u >> a3) & 1) == 0)
          {
            v60 = v52;
          }

          [(PUCropToolController *)self _addWidth:((0x52u >> a3) & 1) == 0 toRect:v60 anchorLeft:v88, v11, v90, v91];
        }

        [v23 constrainRect:0 boundingRect:v57 boundingAngle:v59 minSize:?];
        x = v69;
        y = v70;
        width = v71;
        height = v72;
        v10 = v88;
      }
    }

    [(PUCropToolController *)self minimumViewCropRectSizeForHandleGesture];
    if (width < v73)
    {
      v74 = v90;
      v75 = v91;
      goto LABEL_48;
    }

    [(PUCropToolController *)self minimumViewCropRectSizeForHandleGesture];
    v74 = v90;
    v75 = v91;
    if (height < v76)
    {
      goto LABEL_48;
    }
  }

  else
  {
    [(PUCropToolController *)self _correctInputVector:a3 forHandle:0 onCropRect:v28 lockDirection:a4.dy * v24, v10, v11, v25, v26];
    v44 = v43 + v16;
    v46 = v45 + v18;
    [(PUCropToolController *)self minimumViewCropRectSizeForHandleGesture];
    x = fmin(v20, v44);
    width = vabdd_f64(v20, v44);
    height = vabdd_f64(v22, v46);
    if (width < v47)
    {
      if (((a3 < 7) & (0x52u >> a3)) != 0)
      {
        x = x - (v47 - width);
      }

      width = v47;
    }

    y = fmin(v22, v46);
    if (height < v48)
    {
      if ((a3 & 0xFFFFFFFFFFFFFFFBLL) == 0 || a3 == 5)
      {
        y = y - (v48 - height);
      }

      height = v48;
    }

    if (a3 <= 3)
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      if ((v14 - 1) > 6)
      {
        v50 = &unk_1F2B7CD88;
      }

      else
      {
        v50 = qword_1E7B76398[v14 - 1];
      }

      v61 = v50;
      v62 = [v61 countByEnumeratingWithState:&v92 objects:v98 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v93;
        do
        {
          for (i = 0; i != v63; ++i)
          {
            if (*v93 != v64)
            {
              objc_enumerationMutation(v61);
            }

            -[PUCropToolController _pointForHandle:](self, "_pointForHandle:", [*(*(&v92 + 1) + 8 * i) unsignedIntegerValue]);
            v101.size.width = vabdd_f64(v66, v44);
            v101.size.height = vabdd_f64(v67, v46);
            v101.origin.x = fmin(v66, v44);
            v101.origin.y = fmin(v67, v46);
            v104.origin.x = x;
            v104.origin.y = y;
            v104.size.width = width;
            v104.size.height = height;
            v102 = CGRectUnion(v101, v104);
            x = v102.origin.x;
            y = v102.origin.y;
            width = v102.size.width;
            height = v102.size.height;
          }

          v63 = [v61 countByEnumeratingWithState:&v92 objects:v98 count:16];
        }

        while (v63);
      }
    }
  }

  v77 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
  {
    v100.width = width;
    v100.height = height;
    v78 = NSStringFromCGSize(v100);
    *buf = 138412290;
    v97 = v78;
    _os_log_impl(&dword_1B36F3000, v77, OS_LOG_TYPE_DEBUG, "_cropRectFromPanningHandle: panning rect size: %@", buf, 0xCu);
  }

  v79 = [(PUCropToolController *)self cropView];
  [v79 validateViewCropRectAgainstModelCropRect:{x, y, width, height}];
  v10 = v80;
  v11 = v81;
  v74 = v82;
  v75 = v83;

LABEL_48:
  v84 = v10;
  v85 = v11;
  v86 = v74;
  v87 = v75;
  result.size.height = v87;
  result.size.width = v86;
  result.origin.y = v85;
  result.origin.x = v84;
  return result;
}

- (void)resetToolLabelHidingTimer
{
  v3 = [(PUCropToolController *)self badgeShowingExpirationTimer];

  if (v3)
  {
    v4 = [(PUCropToolController *)self badgeShowingExpirationTimer];
    [v4 invalidate];

    [(PUCropToolController *)self setBadgeShowingExpirationTimer:0];
  }

  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E695DFF0];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __49__PUCropToolController_resetToolLabelHidingTimer__block_invoke;
  v10 = &unk_1E7B7B020;
  objc_copyWeak(&v11, &location);
  v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:&v7 block:1.5];
  [(PUCropToolController *)self setBadgeShowingExpirationTimer:v6, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __49__PUCropToolController_resetToolLabelHidingTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    if ([WeakRetained toolBadgeDoesHide])
    {
      [v2 showBadgeView:0 animated:1];
    }

    else
    {
      [v2 showVideoScrubber:1];
    }

    WeakRetained = v2;
  }
}

- (void)showVideoScrubber:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PUCropToolController_showVideoScrubber___block_invoke;
  v3[3] = &unk_1E7B7FF98;
  v3[4] = self;
  v4 = a3;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0.25];
}

void __42__PUCropToolController_showVideoScrubber___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v3 = *&a2;
  v4 = [*(a1 + 32) videoScrubberView];
  [v4 setAlpha:v3];

  LOBYTE(v5) = *(a1 + 40);
  v6 = v5;
  v7 = [*(a1 + 32) playPauseButton];
  [v7 setAlpha:v6];
}

- (NSMutableDictionary)initialLocationsInHandlesByHandle
{
  initialLocationsInHandlesByHandle = self->_initialLocationsInHandlesByHandle;
  if (!initialLocationsInHandlesByHandle)
  {
    v4 = MEMORY[0x1E695DF90];
    v5 = +[PUCropHandleView allHandles];
    v6 = [v4 dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = self->_initialLocationsInHandlesByHandle;
    self->_initialLocationsInHandlesByHandle = v6;

    initialLocationsInHandlesByHandle = self->_initialLocationsInHandlesByHandle;
  }

  v8 = initialLocationsInHandlesByHandle;

  return v8;
}

- (CGVector)_applyAspectOfCropRect:(CGRect)a3 toHandleMovement:(CGVector)a4
{
  v4 = a3.size.height * a3.size.height + a3.size.width * a3.size.width;
  v5 = 1.0 / sqrtf(v4);
  v6 = a3.size.width * v5;
  v7 = a3.size.height * v5;
  v8 = a4.dy * (a3.size.height * v5) + a4.dx * v6;
  v9 = v6 * v8;
  v10 = v7 * v8;
  result.dy = v10;
  result.dx = v9;
  return result;
}

- (void)_handleCropHandlePan:(id)a3
{
  v21 = a3;
  v4 = [v21 state];
  v5 = [(PUCropToolController *)self initialLocationsInHandlesByHandle];
  v6 = [v21 view];
  if ((v4 - 3) <= 1)
  {
    [(PUCropToolController *)self resetToolLabelHidingTimer];
  }

  v7 = [(PUCropToolController *)self selectedCropHandleView];

  if (v6 == v7)
  {
    v8 = [v6 handle];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    v10 = [(PUCropToolController *)self view];
    [v21 locationInView:v10];
    v12 = v11;
    v14 = v13;

    if (v4 == 2)
    {
      v16 = [v5 objectForKeyedSubscript:v9];
      [v16 CGPointValue];
      v18 = v17;
      v20 = v19;

      [(PUCropToolController *)self _cropRectFromPanningHandle:v8 byAmount:v12 - v18, v14 - v20];
      [(PUCropToolController *)self setViewCropRect:?];
    }

    else if (v4 == 1)
    {
      [(PUCropToolController *)self viewCropRect];
      [(PUCropToolController *)self setInitialHandlePanCropRect:?];
      v15 = [MEMORY[0x1E696B098] valueWithCGPoint:{v12, v14}];
      [v5 setObject:v15 forKeyedSubscript:v9];

      [(PUCropToolController *)self showVideoScrubber:0];
    }

    [(PUCropToolController *)self setHasAppliedCropSuggestion:0];
    [(PUCropToolController *)self setHasAppliedPerspectiveSuggestion:0];
    [(PUCropToolController *)self _updateCropToggleButton];
  }
}

- (void)_handleTouchingGesture:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 state];
  if ([v4 state] == 3)
  {
    if (v5 != 1)
    {
      goto LABEL_11;
    }

LABEL_5:
    v7 = [v4 view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v4 view];
      [(PUCropToolController *)self setSelectedCropHandleView:v9];
      v10 = [(PUCropToolController *)self cropModel];
      [v10 cropRect];
      v12 = v11;
      v14 = v13;

      [(PUCropToolController *)self viewCropRect];
      v16 = 2.0 / v12 * v15;
      [(PUCropToolController *)self viewCropRect];
      [(PUCropToolController *)self setMinimumViewCropRectSizeForHandleGesture:v16, 2.0 / v14 * v17];
      v18 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [(PUCropToolController *)self minimumViewCropRectSizeForHandleGesture];
        v19 = NSStringFromCGSize(v27);
        v24 = 138412290;
        v25 = v19;
        _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEBUG, "minimumViewCropRectSizeForHandleGesture : %@", &v24, 0xCu);
      }
    }

    [(PUPhotoEditToolController *)self setActivelyAdjusting:1];
    v20 = self;
    v21 = 1;
    goto LABEL_14;
  }

  v6 = [v4 state];
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (v6 == 4)
  {
LABEL_11:
    v22 = [v4 view];
    v23 = [(PUCropToolController *)self selectedCropHandleView];

    if (v22 == v23)
    {
      [(PUCropToolController *)self setSelectedCropHandleView:0];
    }

    [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
    v20 = self;
    v21 = 0;
LABEL_14:
    [(PUPhotoEditToolController *)v20 setPerformingLiveInteraction:v21];
    [(PUCropToolController *)self _updateCropViewsForInteraction];
  }
}

- (void)_recomposeCropRectDelayed
{
  [(PUCropToolController *)self _cancelDelayedRecomposeCropRect];
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  [v3 cropRecomposeDelay];
  [(PUCropToolController *)self performSelector:sel__autoRecomposeCropRect withObject:0 afterDelay:?];
}

- (void)_autoRecomposeCropRect
{
  if ([(PUCropToolController *)self _needsRecomposeCropRect])
  {
    [(PUCropToolController *)self viewCropRect];
    if (v3 >= 1.0)
    {
      [(PUCropToolController *)self viewCropRect];
      if (v4 >= 1.0)
      {
        v5 = [(PUCropToolController *)self cropView];
        [(PUCropToolController *)self viewCropRect];
        [v5 setImageCropRectFromViewCropRect:1 animated:?];

        [(PUPhotoEditToolController *)self willModifyAdjustment];
        [(PUCropToolController *)self _recomposeCropRectAnimated:1];
        v6 = PULocalizedString(@"PHOTOEDIT_CROP_GENERIC_ACTION_TITLE");
        [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v6];

        v7 = [(PUCropToolController *)self cropView];
        [v7 updateLayerTransformsAnimated:1];

        [(PUCropToolController *)self _updateCropToggleButton];
      }
    }
  }
}

- (BOOL)_needsRecomposeCropRect
{
  [(PUCropToolController *)self viewCropRect];
  v4 = v3;
  v6 = v5;
  [(PUCropToolController *)self _cropCanvasFrame];
  v8 = v7;
  v10 = v9;
  UIRectGetCenter();
  v12 = v11;
  v14 = v13;
  UIRectGetCenter();
  v17 = vabdd_f64(v12, v16);
  v18 = v4 < v8;
  if (v6 >= v10)
  {
    v18 = 0;
  }

  v19 = v17 < 2.22044605e-16;
  v20 = vabdd_f64(v14, v15);
  if (!v19)
  {
    v18 = 1;
  }

  return v20 >= 2.22044605e-16 || v18;
}

- (void)_showMaskedContentAndCancelDelayedHide
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideMaskedContent object:0];
  v3 = [(PUCropToolController *)self cropOverlayView];
  [v3 setMaskedContentVisible:1 animated:1];
}

- (void)_hideMaskedContentDelayed
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideMaskedContent object:0];
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  [v3 cropRecomposeDelay];
  [(PUCropToolController *)self performSelector:sel__hideMaskedContent withObject:0 afterDelay:?];
}

- (void)_hideMaskedContent
{
  v2 = [(PUCropToolController *)self cropOverlayView];
  [v2 setMaskedContentVisible:0 animated:1];
}

- (void)_showGridAndCancelDelayedHide
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideGrid object:0];
  v3 = [(PUCropToolController *)self cropOverlayView];
  [v3 setCropGridVisible:1 animated:1];
}

- (void)_hideGridDelayed
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideGrid object:0];
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  [v3 cropRecomposeDelay];
  [(PUCropToolController *)self performSelector:sel__hideGrid withObject:0 afterDelay:?];
}

- (void)_hideGrid
{
  if (![(PUCropToolController *)self gridVisible])
  {
    v3 = [(PUCropToolController *)self cropOverlayView];
    [v3 setCropGridVisible:0 animated:1];
  }
}

- (void)updateViewOrdering
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(PUCropToolController *)self cropHandleViewsByHandle];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(PUCropToolController *)self view];
        [v10 bringSubviewToFront:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [(PUCropToolController *)self view];
  v12 = [(PUCropToolController *)self badgeView];
  [v11 bringSubviewToFront:v12];
}

- (void)_updateAspectRatioControls
{
  [(PUCropToolController *)self viewCropRect];
  if (v3 != v4)
  {
    [(PUCropToolController *)self updateCropAspectRatioOrientation:v3 < v4];
  }

  v6 = [(PUCropToolController *)self cropAspect];
  v5 = [(PUCropToolController *)self cropAspectViewController];
  [v5 setCurrentCropAspect:v6];
}

- (void)_updateCropViewsForInteraction
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(PUCropToolController *)self isTrackingAdjustmentControl];
  v4 = [(PUCropToolController *)self cropOverlayView];
  [v4 setStraightenGridVisible:v3 animated:1];

  v5 = [(PUCropToolController *)self cropView];
  if ([v5 isTracking])
  {
  }

  else
  {
    v6 = [(PUCropToolController *)self selectedCropHandleView];

    if (!v6)
    {
      goto LABEL_5;
    }
  }

  [(PUCropToolController *)self _showGridAndCancelDelayedHide];
  [(PUCropToolController *)self _cancelDelayedRecomposeCropRect];
LABEL_5:
  v7 = [(PUCropToolController *)self cropView];
  if ([v7 isTracking])
  {
LABEL_8:

LABEL_9:
    [(PUCropToolController *)self _showMaskedContentAndCancelDelayedHide];
    goto LABEL_10;
  }

  v8 = [(PUCropToolController *)self selectedCropHandleView];
  if (v8)
  {

    goto LABEL_8;
  }

  v27 = [(PUCropToolController *)self isTrackingAdjustmentControl];

  if (v27)
  {
    goto LABEL_9;
  }

  v28 = [(PUCropToolController *)self canResetToDefaultValue];
  if ([(PUCropToolController *)self rotatingAnimationCount])
  {
    [(PUCropToolController *)self _hideGrid];
    [(PUCropToolController *)self _hideMaskedContent];
  }

  else if (!v28 && (-[PUCropToolController animationsByKeyPath](self, "animationsByKeyPath"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 count], v29, v30) || -[PUCropToolController hasAppliedCropSuggestion](self, "hasAppliedCropSuggestion") && (-[PUCropToolController animationsByKeyPath](self, "animationsByKeyPath"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "count"), v31, v32))
  {
    [(PUCropToolController *)self _showGridAndCancelDelayedHide];
    [(PUCropToolController *)self _showMaskedContentAndCancelDelayedHide];
    [(PUCropToolController *)self _cancelDelayedRecomposeCropRect];
  }

  else
  {
    if (v28 || [(PUCropToolController *)self hasAppliedCropSuggestion])
    {
      [(PUCropToolController *)self _hideGridDelayed];
      [(PUCropToolController *)self _hideMaskedContentDelayed];
    }

    else
    {
      [(PUCropToolController *)self _hideGrid];
      [(PUCropToolController *)self _hideMaskedContent];
    }

    [(PUCropToolController *)self _recomposeCropRectDelayed];
  }

LABEL_10:
  v9 = [(PUCropToolController *)self cropView];
  if ([v9 isTracking])
  {
    v10 = [(PUCropToolController *)self cropView];
    v11 = [v10 isDecelerating];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v12 = [(PUCropToolController *)self isTrackingAdjustmentControl]^ 1;
LABEL_15:
  if ([(PUCropToolController *)self isTrackingAdjustmentControl])
  {
    v13 = 0;
  }

  else
  {
    v14 = [(PUCropToolController *)self selectedCropHandleView];
    v13 = v14 == 0;
  }

  v15 = [(PUCropToolController *)self cropView];
  [v15 setUserInteractionEnabled:v13];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = [(PUCropToolController *)self cropHandleViewsByHandle];
  v17 = [v16 allValues];

  v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      v21 = 0;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v33 + 1) + 8 * v21);
        v23 = [(PUCropToolController *)self selectedCropHandleView];
        v24 = v12;
        if (v22 != v23)
        {
          v25 = [(PUCropToolController *)self selectedCropHandleView];
          v26 = v25 == 0;

          v24 = v26 & v12;
        }

        [v22 setUserInteractionEnabled:v24];
        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v19);
  }

  [(PUCropToolController *)self updateViewOrdering];
}

- (void)_updateCropToggleButton
{
  if ([(PUCropToolController *)self _hasCropSuggestion])
  {
    v3 = [(PUCropToolController *)self hasAppliedCropSuggestion];
  }

  else
  {
    v3 = 0;
  }

  if ([(PUCropToolController *)self _hasPerspectiveSuggestion])
  {
    v4 = [(PUCropToolController *)self hasAppliedPerspectiveSuggestion];
  }

  else
  {
    v4 = 0;
  }

  if ([(PUCropToolController *)self _hasCropSuggestion])
  {
    v5 = ![(PUCropToolController *)self hasAppliedCropSuggestion];
  }

  else
  {
    v5 = 0;
  }

  if ([(PUCropToolController *)self _hasPerspectiveSuggestion])
  {
    v6 = ![(PUCropToolController *)self hasAppliedPerspectiveSuggestion];
  }

  else
  {
    v6 = 0;
  }

  if ([(PUCropToolController *)self canResetToDefaultValue])
  {
    if ((v5 | v6))
    {
      v7 = 1;
    }

    else
    {
      v7 = ![(PUCropToolController *)self _hasCropSuggestion];
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PUCropToolController *)self autoButtonMode];
  v9 = [(PUCropToolController *)self autoButton];
  v10 = v9;
  v11 = v8 == 3;
  v12 = v8 == 3;
  if (v11)
  {
    [v9 setSelected:1];

    if (v7)
    {
      v12 = [(PUCropToolController *)self editValuesCalculatorDidFinishComputingGeometricValues]^ 1;
      [(PUCropToolController *)self autoButtonMode];
LABEL_23:
      v13 = 1;
      goto LABEL_25;
    }
  }

  else
  {
    [v9 setSelected:v3 || v4];
  }

  if (([(PUCropToolController *)self autoButtonMode]!= 3) | v7 & 1)
  {
    goto LABEL_23;
  }

  v13 = 0;
LABEL_25:
  v14 = [(PUCropToolController *)self autoButton];
  [v14 setEnabled:v13];

  v15 = [(PUCropToolController *)self autoButton];
  [v15 setHidden:v12];

  v16 = MEMORY[0x1E69C3BF0];
  v20 = [(PUCropToolController *)self autoButton];
  if ([v20 isSelected])
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = [v16 configurationWithCursorEffect:v17];
  v19 = [(PUCropToolController *)self autoButton];
  [v19 setPx_configuration:v18];
}

- (void)_updateCropToggleButtonMode
{
  if ([(PUCropToolController *)self _hasCropSuggestion])
  {
    v3 = 1;
  }

  else if ([(PUCropToolController *)self _hasPerspectiveSuggestion])
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  [(PUCropToolController *)self setAutoButtonMode:v3];
}

- (void)setAutoButtonMode:(int64_t)a3
{
  if (self->_autoButtonMode != a3)
  {
    self->_autoButtonMode = a3;
    if (a3 == 3)
    {
      v4 = @"PHOTOEDIT_CROP_AUTO_RESET";
    }

    else
    {
      v4 = @"PHOTOEDIT_CROP_AUTO_CROP";
    }

    v5 = PULocalizedString(v4);
    v6 = [v5 localizedUppercaseString];
    v7 = [(PUCropToolController *)self autoButton];
    [v7 setTitle:v6];

    autoButtonMode = self->_autoButtonMode;
    v9 = [(PUCropToolController *)self autoButton];
    v16 = v9;
    if (autoButtonMode == 3)
    {
      v10 = [v9 unselectedConfiguration];

      v11 = [MEMORY[0x1E69DC6E8] clearConfiguration];
      [v10 setBackground:v11];

      v12 = [MEMORY[0x1E69DC888] clearColor];
      v13 = [v10 background];
      [v13 setBackgroundColor:v12];

      [v10 setTitleTextAttributesTransformer:&__block_literal_global_20488];
      [v10 setImage:0];
      v14 = [(PUCropToolController *)self autoButton];
      [v14 setOverrideButtonConfiguration:v10];

      v15 = v10;
    }

    else
    {
      [v9 setOverrideButtonConfiguration:0];
      v15 = v16;
    }
  }
}

id __42__PUCropToolController_setAutoButtonMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = +[PUInterfaceManager currentTheme];
  v4 = [MEMORY[0x1E69DC888] px_dynamicHighlightColor];
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  v5 = [v3 topToolbarToolButtonFont];
  [v2 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

- (void)_updateCropActionButtons
{
  v3 = +[PUInterfaceManager currentTheme];
  objc_initWeak(&location, self);
  if (!self->_rotateButton)
  {
    v4 = PULocalizedString(@"PHOTOEDIT_CROP_ROTATE_ACCESSIBILITY_LABEL");
    v5 = [(PUPhotoEditToolController *)self photoEditSpec];
    v6 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"rotate.left" selectedImageNamed:@"rotate.left.fill" accessibilityLabel:v4 spec:v5];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __48__PUCropToolController__updateCropActionButtons__block_invoke;
    v32[3] = &unk_1E7B7AEE0;
    objc_copyWeak(&v33, &location);
    [v6 setActionBlock:v32];
    [(PUCropToolController *)self setRotateButton:v6];
    objc_destroyWeak(&v33);
  }

  if (!self->_flipButton)
  {
    v7 = PULocalizedString(@"PHOTOEDIT_CROP_FLIP_ACCESSIBILITY_LABEL");
    v8 = [(PUPhotoEditToolController *)self photoEditSpec];
    v9 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"arrow.left.and.right.righttriangle.left.righttriangle.right" selectedImageNamed:@"arrow.left.and.right.righttriangle.left.righttriangle.right.fill" accessibilityLabel:v7 spec:v8];

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __48__PUCropToolController__updateCropActionButtons__block_invoke_2;
    v30[3] = &unk_1E7B7AEE0;
    objc_copyWeak(&v31, &location);
    [v9 setActionBlock:v30];
    [(PUCropToolController *)self setFlipButton:v9];
    objc_destroyWeak(&v31);
  }

  if (!self->_aspectButton)
  {
    v10 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_RATIO_ACCESSIBILITY_LABEL");
    v11 = [(PUPhotoEditToolController *)self photoEditSpec];
    v12 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"aspectratio" selectedImageNamed:@"aspectratio.fill" accessibilityLabel:v10 spec:v11];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __48__PUCropToolController__updateCropActionButtons__block_invoke_3;
    v28[3] = &unk_1E7B7AEE0;
    objc_copyWeak(&v29, &location);
    [v12 setActionBlock:v28];
    [(PUCropToolController *)self setAspectButton:v12];
    objc_destroyWeak(&v29);
  }

  if (!self->_autoButton)
  {
    v13 = [PUPhotoEditToolActivationButton buttonWithTitle:&stru_1F2AC6818];
    objc_storeStrong(&self->_autoButton, v13);
    [v13 setUnselectedGlyphName:@"viewfinder"];
    [v13 setSelectedGlyphName:@"viewfinder"];
    objc_initWeak(&from, self);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __48__PUCropToolController__updateCropActionButtons__block_invoke_4;
    v25 = &unk_1E7B7AEE0;
    objc_copyWeak(&v26, &from);
    [v13 setActionBlock:&v22];
    [(PUCropToolController *)self setAutoButtonMode:1, v22, v23, v24, v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&from);
  }

  [(PUCropToolController *)self _updateCropToggleButtonMode];
  cropAspectViewController = self->_cropAspectViewController;
  v15 = [(PUCropToolController *)self aspectButton];
  [v15 setSelected:cropAspectViewController != 0];

  v16 = [(PUCropToolController *)self cropAspect];
  v17 = [v16 allowOrientationChange];
  v18 = [(PUCropToolController *)self cropAspectFlipperView];
  [v18 setEnabled:v17];

  v19 = [(PUCropToolController *)self aspectButton];
  if ([v19 isSelected])
  {
    [v3 photoEditingToolbarButtonSelectedColor];
  }

  else
  {
    [v3 photoEditingToolbarButtonColor];
  }
  v20 = ;

  v21 = [(PUCropToolController *)self aspectButton];
  [v21 setTintColor:v20];

  objc_destroyWeak(&location);
}

void __48__PUCropToolController__updateCropActionButtons__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rotateButtonTapped:v3];
}

void __48__PUCropToolController__updateCropActionButtons__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _flipButtonTapped:v3];
}

void __48__PUCropToolController__updateCropActionButtons__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _aspectButtonTapped:v3];
}

void __48__PUCropToolController__updateCropActionButtons__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cropToggleTapped:v3];
}

- (UIView)cropCanvasView
{
  cropCanvasView = self->_cropCanvasView;
  if (cropCanvasView)
  {
    v3 = cropCanvasView;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5 setUserInteractionEnabled:0];
    v6 = self->_cropCanvasView;
    self->_cropCanvasView = v5;
    v7 = v5;

    v3 = self->_cropCanvasView;
  }

  return v3;
}

- (NSDictionary)cropHandleViewsByHandle
{
  v24 = *MEMORY[0x1E69E9840];
  cropHandleViewsByHandle = self->_cropHandleViewsByHandle;
  if (cropHandleViewsByHandle)
  {
    v3 = cropHandleViewsByHandle;
  }

  else
  {
    v5 = +[PUCropHandleView allHandles];
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = -[PUCropHandleView initForHandle:]([PUCropHandleView alloc], "initForHandle:", [v11 unsignedIntegerValue]);
          [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v6 setObject:v12 forKeyedSubscript:v11];
          v13 = objc_alloc_init(PUTouchingGestureRecognizer);
          [(PUTouchingGestureRecognizer *)v13 addTarget:self action:sel__handleTouchingGesture_];
          [(PUTouchingGestureRecognizer *)v13 setDelegate:self];
          [v12 addGestureRecognizer:v13];
          v14 = objc_alloc_init(MEMORY[0x1E69DCD28]);
          [v14 addTarget:self action:sel__handleCropHandlePan_];
          [v12 addGestureRecognizer:v14];
        }

        v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v15 = [v6 copy];
    v16 = self->_cropHandleViewsByHandle;
    self->_cropHandleViewsByHandle = v15;

    v3 = self->_cropHandleViewsByHandle;
  }

  return v3;
}

- (PUCropOverlayView)cropOverlayView
{
  cropOverlayView = self->_cropOverlayView;
  if (cropOverlayView)
  {
    v3 = cropOverlayView;
  }

  else
  {
    v5 = objc_alloc_init(PUCropOverlayView);
    [(PUCropOverlayView *)v5 setUserInteractionEnabled:0];
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    self->_gridVisible = [v6 BOOLForKey:@"PUCropGridVisible"];

    [(PUCropOverlayView *)v5 setCropGridVisible:self->_gridVisible animated:0];
    v7 = self->_cropOverlayView;
    self->_cropOverlayView = v5;
    v8 = v5;

    v3 = self->_cropOverlayView;
  }

  return v3;
}

- (PUCropPerspectiveView)cropView
{
  cropView = self->_cropView;
  if (cropView)
  {
    v3 = cropView;
  }

  else
  {
    v5 = objc_alloc_init(PUCropPerspectiveView);
    [(PUCropPerspectiveView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUCropTransformedImageView *)v5 setDelegate:self];
    v6 = self->_cropView;
    self->_cropView = v5;
    v7 = v5;

    v3 = self->_cropView;
  }

  return v3;
}

- (BOOL)_hasPerspectiveSuggestion
{
  [(PUCropToolController *)self suggestedPitchAngle];
  if (v3 != 0.0)
  {
    return 1;
  }

  [(PUCropToolController *)self suggestedYawAngle];
  return v5 != 0.0;
}

- (void)_loadPerspectiveSuggestionIfNeeded
{
  if (![(PUCropToolController *)self hasAutoAppliedPerspectiveSuggestion]&& ![(PUCropToolController *)self hasRequestedPerspectiveSuggestion])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __58__PUCropToolController__loadPerspectiveSuggestionIfNeeded__block_invoke;
    v3[3] = &unk_1E7B80DD0;
    v3[4] = self;
    [(PUCropToolController *)self _loadImageIfNeededWithCompletion:v3];
  }
}

void __58__PUCropToolController__loadPerspectiveSuggestionIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasRequestedPerspectiveSuggestion:1];
  v2 = [*(a1 + 32) valuesCalculator];
  v12 = [v2 autoPerspectiveValuesWithAccuracy:0];

  if ([v12 count])
  {
    v3 = [v12 objectForKeyedSubscript:@"pitch"];
    [v3 doubleValue];
    v5 = v4;

    v6 = [v12 objectForKeyedSubscript:@"yaw"];
    [v6 doubleValue];
    v8 = v7;

    v9 = [v12 objectForKeyedSubscript:@"angle"];
    [v9 doubleValue];
    v11 = v10;

    if (fabs(v5) > 0.000001 || fabs(v8) > 0.000001 || fabs(v11) > 0.000001)
    {
      [*(a1 + 32) setSuggestedStraightenAngle:v11 * 3.14159265 / 180.0];
      [*(a1 + 32) setSuggestedPitchAngle:v5 * 3.14159265 / 180.0];
      [*(a1 + 32) setSuggestedYawAngle:v8 * 3.14159265 / 180.0];
    }
  }
}

- (void)setHasAppliedCropSuggestion:(BOOL)a3
{
  v3 = a3;
  self->_hasAppliedCropSuggestion = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PUCropToolController_setHasAppliedCropSuggestion___block_invoke;
  v7[3] = &__block_descriptor_33_e36_v16__0__PICropAdjustmentController_8l;
  v8 = a3;
  [(PUCropToolController *)self _performLocalCropModelChanges:v7];
  v5 = [(PUPhotoEditToolController *)self aggregateSession];
  v6 = v5;
  if (v3)
  {
    [v5 notifyDidApplyAutoCrop];
  }

  else
  {
    [v5 notifyDidAdjustCrop];
  }

  [(PUCropToolController *)self _updateCropToggleButton];
}

- (void)_toggleCropAndPerspective
{
  v3 = [(PUCropToolController *)self _hasCropSuggestion];
  v4 = [(PUCropToolController *)self _hasPerspectiveSuggestion];
  if (v4)
  {
    v5 = [(PUCropToolController *)self hasAppliedPerspectiveSuggestion];
    v6 = ![(PUCropToolController *)self hasAppliedPerspectiveSuggestion];
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if ([(PUCropToolController *)self canResetToDefaultValue])
  {
    v7 = v6 | !v4;
  }

  else
  {
    v7 = 0;
  }

  if (v3)
  {
    v8 = [(PUCropToolController *)self hasAppliedCropSuggestion];
    v9 = ![(PUCropToolController *)self hasAppliedCropSuggestion];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = [(PUCropToolController *)self canResetToDefaultValue];
  v11 = v9 | !v3;
  if (!v10)
  {
    v11 = 0;
  }

  if (v8 || v5 || !v3 && !v4 && ((v11 | v7) & 1) != 0)
  {

    [(PUCropToolController *)self _resetAllValuesAnimated:1];
  }

  else if ((v9 | v6))
  {

    [(PUCropToolController *)self _applyCropAndPerspectiveSuggestion];
  }
}

- (void)_applyCropAndPerspectiveSuggestion
{
  [(PUCropToolController *)self suggestedCrop];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PUCropToolController *)self suggestedStraightenAngle];
  v12 = v11;
  [(PUCropToolController *)self suggestedPitchAngle];
  v14 = v13;
  [(PUCropToolController *)self suggestedYawAngle];

  [(PUCropToolController *)self _applyCropRect:1 straightenAngle:v4 pitchAngle:v6 yawAngle:v8 isAutoCrop:v10, v12, v14, v15];
}

- (void)_applyCropRect:(CGRect)a3 straightenAngle:(double)a4 pitchAngle:(double)a5 yawAngle:(double)a6 isAutoCrop:(BOOL)a7
{
  v7 = a7;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    v37 = *(MEMORY[0x1E695F058] + 8);
    v38 = *MEMORY[0x1E695F058];
    v16 = *(MEMORY[0x1E695F058] + 24);
    v36 = *(MEMORY[0x1E695F058] + 16);
  }

  else
  {
    [(PUCropToolController *)self _suggestedCropRectForImageRect:x, y, width, height];
    v37 = v18;
    v38 = v17;
    v36 = v19;
  }

  v35 = v16;
  self->_straightenAngle = a4;
  self->_yawAngle = a6;
  self->_pitchAngle = a5;
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  if (!CGRectIsEmpty(v41))
  {
    [(NUCropModel *)self->_cropModel setCropRect:x, y, width, height];
  }

  [(NUCropModel *)self->_cropModel cropRect];
  v20 = v42.origin.x;
  v21 = v42.origin.y;
  v22 = v42.size.width;
  v23 = v42.size.height;
  v24 = CGRectGetWidth(v42);
  v43.origin.x = v20;
  v43.origin.y = v21;
  v43.size.width = v22;
  v43.size.height = v23;
  v25 = v24 * CGRectGetHeight(v43);
  [(NUCropModel *)self->_cropModel setRollAngle:a4 constrainCropRectWithTargetArea:v25];
  [(NUCropModel *)self->_cropModel setYawAngle:a6 constrainCropRectWithTargetArea:v25];
  [(NUCropModel *)self->_cropModel setPitchAngle:a5 constrainCropRectWithTargetArea:v25];
  [(PUPhotoEditToolController *)self willModifyAdjustment];
  v26 = [(PUCropToolController *)self cropView];
  [v26 setStraightenAngle:a4];

  v27 = [(PUCropToolController *)self cropView];
  [v27 setYawAngle:a6];

  v28 = [(PUCropToolController *)self cropView];
  [v28 setPitchAngle:a5];

  v44.origin.x = v38;
  v44.origin.y = v37;
  v44.size.width = v36;
  v44.size.height = v35;
  if (!CGRectIsEmpty(v44))
  {
    [(PUCropToolController *)self _setViewCropRect:1 animated:v38, v37, v36, v35];
    v29 = [(PUCropToolController *)self cropView];
    [(NUCropModel *)self->_cropModel cropRect];
    [v29 setModelCropRect:? viewCropRect:?];
  }

  v30 = [(PUCropToolController *)self cropView];
  [v30 updateLayerTransformsAnimated:1];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __86__PUCropToolController__applyCropRect_straightenAngle_pitchAngle_yawAngle_isAutoCrop___block_invoke;
  v39[3] = &unk_1E7B76508;
  *&v39[5] = a4;
  *&v39[6] = a5;
  *&v39[7] = a6;
  v39[4] = self;
  v40 = v7;
  [(PUCropToolController *)self _performLocalCropModelChanges:v39];
  v31 = PULocalizedString(@"PHOTOEDIT_CROP_GENERIC_ACTION_TITLE");
  [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v31];

  if (v7)
  {
    v32 = [(PUPhotoEditToolController *)self aggregateSession];
    [v32 notifyDidApplyAutoCrop];

    if (a5 != 0.0 || a6 != 0.0)
    {
      v33 = [(PUPhotoEditToolController *)self aggregateSession];
      [v33 notifyDidApplyPerspectiveAutoCrop];
    }
  }

  self->_hasAppliedPerspectiveSuggestion = v7;
  self->_hasAppliedCropSuggestion = v7;
  [(PUCropToolController *)self _updateCropToggleButton];
  [(PUCropToolController *)self _updatePreviewViewInsets];
  v34 = [(PUCropToolController *)self adjustmentsViewController];
  [v34 resetControls];
}

void __86__PUCropToolController__applyCropRect_straightenAngle_pitchAngle_yawAngle_isAutoCrop___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setAngleRadians:v3];
  [v4 setPitchRadians:*(a1 + 48)];
  [v4 setYawRadians:*(a1 + 56)];
  [*(*(a1 + 32) + 1480) cropRect];
  [v4 setCropRect:?];
  [v4 setIsAuto:*(a1 + 64)];
  [v4 setEnabled:1];
}

- (void)_autoApplyCropAndPerspectiveSuggestionIfNeeded
{
  if ((![(PUCropToolController *)self hasAutoAppliedCropSuggestion]|| ![(PUCropToolController *)self hasAppliedPerspectiveSuggestion]) && ([(PUCropToolController *)self _hasCropSuggestion]|| [(PUCropToolController *)self _hasPerspectiveSuggestion]))
  {
    [(PUCropToolController *)self _applyCropAndPerspectiveSuggestion];
    [(PUCropToolController *)self setHasAutoAppliedCropSuggestion:1];

    [(PUCropToolController *)self setHasAutoAppliedPerspectiveSuggestion:1];
  }
}

- (void)_loadCropSuggestionIfNeeded
{
  if (![(PUCropToolController *)self hasAutoAppliedCropSuggestion]&& ![(PUCropToolController *)self hasRequestedCropSuggestion])
  {
    v3 = +[PUPhotoEditProtoSettings sharedInstance];
    v4 = [v3 autoCropEnabled];

    if (v4)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __51__PUCropToolController__loadCropSuggestionIfNeeded__block_invoke;
      v5[3] = &unk_1E7B80DD0;
      v5[4] = self;
      [(PUCropToolController *)self _loadImageIfNeededWithCompletion:v5];
    }
  }
}

void __51__PUCropToolController__loadCropSuggestionIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasRequestedCropSuggestion:1];
  v2 = [*(a1 + 32) valuesCalculator];
  v18 = [v2 autoCropValuesWithAccuracy:0];

  if ([v18 count])
  {
    v3 = [v18 objectForKeyedSubscript:@"angle"];
    [v3 doubleValue];
    v5 = v4;

    v6 = [v18 objectForKeyedSubscript:@"xOrigin"];
    [v6 doubleValue];
    v8 = v7;

    v9 = [v18 objectForKeyedSubscript:@"yOrigin"];
    [v9 doubleValue];
    v11 = v10;

    v12 = [v18 objectForKeyedSubscript:@"width"];
    [v12 doubleValue];
    v14 = v13;

    v15 = [v18 objectForKeyedSubscript:@"height"];
    [v15 doubleValue];
    v17 = v16;

    [*(a1 + 32) setSuggestedCrop:{v8, v11, v14, v17}];
    [*(a1 + 32) setSuggestedStraightenAngle:v5 * 3.14159265 / 180.0];
  }
}

- (void)basePhotoInvalidated
{
  [(PUCropToolController *)self setNeedsImageLoad:1];
  if ([(PUCropToolController *)self isActiveTool])
  {

    [(PUCropToolController *)self _loadImageIfNeededWithCompletion:0];
  }
}

- (void)baseMediaInvalidated
{
  [(PUCropToolController *)self setNeedsMediaLoad:1];
  if ([(PUCropToolController *)self isActiveTool])
  {

    [(PUCropToolController *)self _loadMediaIfNeeded];
  }
}

- (void)_resetAllValuesAnimated:(BOOL)a3 skipLayerTransformUpdate:(BOOL)a4
{
  v5 = a3;
  v7 = [(PUCropToolController *)self _defaultOrientation];
  v8 = [(PUCropToolController *)self geometry];
  v9 = v7 == [v8 appliedOrientation];

  [(PUCropToolController *)self _defaultStraightenAngle];
  v11 = v10;
  [(PUCropToolController *)self straightenAngle];
  LODWORD(v8) = v11 != v12;
  [(PUCropToolController *)self _defaultPitchAngle];
  v14 = v13;
  [(PUCropToolController *)self pitchAngle];
  v16 = v14 != v15;
  [(PUCropToolController *)self _defaultYawAngle];
  v18 = v17;
  [(PUCropToolController *)self yawAngle];
  v20 = v18 == v19;
  [(PUCropToolController *)self _defaultImageCropRect];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(NUCropModel *)self->_cropModel cropRect];
  v55.origin.x = v29;
  v55.origin.y = v30;
  v55.size.width = v31;
  v55.size.height = v32;
  v54.origin.x = v22;
  v54.origin.y = v24;
  v54.size.width = v26;
  v54.size.height = v28;
  if (v9 | !CGRectEqualToRect(v54, v55) | (v8 | v16) & 1)
  {
    v33 = v9;
  }

  else
  {
    v33 = v20;
  }

  v34 = [(PUCropToolController *)self cropView];
  [v34 _resetCropRect];

  self->_straightenAngle = v11;
  self->_pitchAngle = v14;
  self->_yawAngle = v18;
  [(PUCropToolController *)self _defaultViewCropRect];
  [(PUCropToolController *)self _setViewCropRect:v5 & v33 animated:?];
  v35 = [(PUCropToolController *)self cropView];
  [(NUCropModel *)self->_cropModel cropRect];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  [(PUCropToolController *)self viewCropRect];
  [v35 setModelCropRect:v37 viewCropRect:{v39, v41, v43, v44, v45, v46, v47}];

  if (!a4)
  {
    v48 = [(PUCropToolController *)self cropView];
    [v48 updateLayerTransformsAnimated:v5 & v33];
  }

  [(PUCropToolController *)self setHasAppliedCropSuggestion:0];
  [(PUCropToolController *)self setHasAppliedPerspectiveSuggestion:0];
  [(PUCropToolController *)self _updateCropViewsForInteraction];
  v49 = [(PUCropToolController *)self cropModel];
  [v49 makeCurrentAspectRatioFreeForm];

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __73__PUCropToolController__resetAllValuesAnimated_skipLayerTransformUpdate___block_invoke;
  v53[3] = &unk_1E7B764E0;
  v53[4] = self;
  *&v53[5] = v14;
  *&v53[6] = v18;
  *&v53[7] = v11;
  [(PUCropToolController *)self _performLocalCropModelChanges:v53];
  if (![(PUCropToolController *)self setLockedCropAspectIfNeededIgnoringCurrentLock:1])
  {
    [(PUCropToolController *)self setCropAspect:0];
    v50 = [(PUCropToolController *)self cropAspectViewController];
    [v50 setCurrentCropAspect:0];
  }

  v51 = [(PUCropToolController *)self adjustmentsViewController];
  [v51 resetControls];

  v52 = [(PUPhotoEditToolController *)self aggregateSession];
  [v52 notifyDidResetCrop];

  [(PUCropToolController *)self _updateCropToggleButton];
}

void __73__PUCropToolController__resetAllValuesAnimated_skipLayerTransformUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1480);
  v4 = a2;
  [v3 cropRect];
  [v4 setCropRect:?];
  [v4 setPitchRadians:*(a1 + 40)];
  [v4 setYawRadians:*(a1 + 48)];
  [v4 setAngleRadians:*(a1 + 56)];
}

- (CGRect)_defaultViewCropRect
{
  [(PUCropToolController *)self _defaultImageCropRect];

  [(PUCropToolController *)self _suggestedCropRectForImageRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_defaultImageCropRect
{
  v2 = [(PUCropToolController *)self cropModel];
  [v2 masterImageRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)setLockedCropAspectIfNeededIgnoringCurrentLock:(BOOL)a3
{
  v3 = a3;
  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  v6 = [v5 maintainCropAspectLockState];

  if (v6)
  {
    v7 = [(PUPhotoEditToolController *)self compositionController];
    v8 = [v7 cropAdjustmentController];

    [v8 cropRect];
    v10 = v9;
    v12 = v11;
    v13 = [MEMORY[0x1E695E000] standardUserDefaults];
    v14 = [v13 BOOLForKey:@"PUPhotoEditCropAspectRatioLocked2"];

    [(NUCropModel *)self->_cropModel masterImageRect];
    if (v10 == v15)
    {
      [(NUCropModel *)self->_cropModel masterImageRect];
      v17 = v12 == v16;
    }

    else
    {
      v17 = 0;
    }

    v19 = [v8 constraintWidth] < 1 || objc_msgSend(v8, "constraintHeight") < 1;
    v18 = v14 & (v17 && (v19 || v3));
    if (v18 == 1)
    {
      v20 = [(PUPhotoEditToolController *)self delegate];
      [v20 toolControllerOriginalOrientedImageSize:self];
      v22 = v21;
      v24 = v23;

      v25 = [PUCropAspect originalAspectForWidth:v22 height:v24];
      [(PUCropToolController *)self _setCropAspect:v25 animated:0];
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (void)_loadStateFromModelAnimated:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PUCropToolController__loadStateFromModelAnimated___block_invoke;
  v3[3] = &unk_1E7B7FA58;
  v3[4] = self;
  v3[5] = a2;
  v4 = a3;
  [(PUCropToolController *)self _loadImageIfNeededWithCompletion:v3];
}

void __52__PUCropToolController__loadStateFromModelAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) geometry];

  if (v2)
  {
    [*(a1 + 32) setNeedsModelLoad:0];
    [*(a1 + 32) setLoadingStateFromModel:1];
    v3 = [*(a1 + 32) compositionController];
    if (!v3)
    {
      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      [v37 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PUCropToolController.m" lineNumber:1448 description:@"Need a compositionController to perform this operation"];
    }

    *buf = 0;
    v47 = buf;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__20551;
    v50 = __Block_byref_object_dispose__20552;
    v51 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__20551;
    v44 = __Block_byref_object_dispose__20552;
    v45 = 0;
    v4 = *(a1 + 32);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __52__PUCropToolController__loadStateFromModelAnimated___block_invoke_353;
    v39[3] = &unk_1E7B7DB48;
    v39[4] = v4;
    v39[5] = buf;
    v39[6] = &v40;
    [v4 _performLocalModelChanges:v39];
    [*(v47 + 5) cropRect];
    x = v52.origin.x;
    y = v52.origin.y;
    width = v52.size.width;
    height = v52.size.height;
    IsEmpty = CGRectIsEmpty(v52);
    v10 = *(*(a1 + 32) + 1480);
    if (IsEmpty)
    {
      [v10 masterImageRect];
      x = v11;
      y = v12;
      width = v13;
      height = v14;
    }

    else
    {
      [v10 setCropRect:{x, y, width, height}];
    }

    v15 = [*(a1 + 32) geometry];
    [v15 inputOrientation];
    PLOrientationInverse();
    [v41[5] orientation];
    v16 = PLOrientationConcat();
    v17 = *(a1 + 32);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __52__PUCropToolController__loadStateFromModelAnimated___block_invoke_2;
    v38[3] = &__block_descriptor_40_e25_v16__0__PLImageGeometry_8l;
    v38[4] = v16;
    [v17 _performGeometryChange:v38 animated:*(a1 + 48)];
    [*(a1 + 32) inputExtent];
    v19 = -v18;
    v21 = -v20;
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    v54 = CGRectOffset(v53, v19, v21);
    [*(a1 + 32) _suggestedCropRectForImageRect:{v54.origin.x, v54.origin.y, v54.size.width, v54.size.height}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [*(v47 + 5) angleRadians];
    [*(a1 + 32) setStraightenAngle:?];
    [*(v47 + 5) pitchRadians];
    [*(a1 + 32) setPitchAngle:?];
    [*(v47 + 5) yawRadians];
    [*(a1 + 32) setYawAngle:?];
    [*(*(a1 + 32) + 1480) setCropRect:{x, y, width, height}];
    [*(a1 + 32) setViewCropRect:{v23, v25, v27, v29}];
    v30 = [*(a1 + 32) cropView];
    [*(*(a1 + 32) + 1480) cropRect];
    [v30 setModelCropRect:? viewCropRect:?];

    v31 = [*(a1 + 32) cropView];
    [v31 updateLayerTransformsAnimated:*(a1 + 48)];

    [*(a1 + 32) setLockedCropAspectIfNeededIgnoringCurrentLock:0];
    v32 = [*(v47 + 5) constraintWidth];
    v33 = [*(v47 + 5) constraintHeight];
    v34 = 0;
    if (v32 >= 1 && v33 >= 1)
    {
      v34 = [*(a1 + 32) bestAspectRatioForWidth:v32 height:v33];
      if (v34)
      {
        [*(a1 + 32) setCropAspect:v34];
        [*(a1 + 32) _updateAspectRatioControls];
      }
    }

    *(*(a1 + 32) + 1234) = [*(v47 + 5) isAuto];
    *(*(a1 + 32) + 1238) = *(*(a1 + 32) + 1234);
    v35 = [*(a1 + 32) cropView];
    [v35 frame];
    [*(a1 + 32) setCropViewFrameForLastModelLoad:?];

    v36 = [*(a1 + 32) view];
    [v36 setNeedsUpdateConstraints];

    [*(a1 + 32) _updatePreviewViewInsets];
    [*(a1 + 32) _updateCropToggleButton];
    [*(a1 + 32) setLoadingStateFromModel:0];

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v3 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_ERROR, "nil geometry in [PUCropToolController _loadStateFromModelAnimated], delaying model load", buf, 2u);
    }
  }
}

void __52__PUCropToolController__loadStateFromModelAnimated___block_invoke_353(uint64_t a1)
{
  v2 = [*(a1 + 32) compositionController];
  v3 = [v2 cropAdjustmentControllerCreatingIfNecessary:1];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v9 = [*(a1 + 32) compositionController];
  v6 = [v9 orientationAdjustmentControllerCreatingIfNecessary:1];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)compositionControllerDidChangeForAdjustments:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v10 compositionControllerDidChangeForAdjustments:v4];
  [(PUCropPerspectiveAdjustmentsDataSource *)self->_dataSource compositionControllerDidChange];
  if (![(PUCropToolController *)self isModelChangeLocal]&& [(PUCropToolController *)self isActiveTool])
  {
    [(PUCropToolController *)self _loadStateFromModelAnimated:1];
  }

  if (([v4 containsObject:*MEMORY[0x1E69BDFC0]] & 1) == 0 && (objc_msgSend(v4, "containsObject:", *MEMORY[0x1E69BE058]) & 1) == 0)
  {
    [(PUCropToolController *)self basePhotoInvalidated];
    [(PUCropToolController *)self baseMediaInvalidated];
  }

  v5 = [(PUPhotoEditToolController *)self delegate];
  v6 = [v5 isStandardVideo];

  if (v6)
  {
    [(PUCropToolController *)self _beginObservingVideoPlayer];
    v7 = [(PUCropToolController *)self cropView];
    v8 = [v7 videoMediaView];
    v9 = [v8 player];
    [v9 pause];

    [(PUCropToolController *)self _updateVideoScrubber];
  }
}

- (void)_updatePreviewViewInsets
{
  v3 = [(PUCropToolController *)self view];
  [v3 bounds];
  v49 = v5;
  v50 = v4;
  v7 = v6;
  v48 = v8;

  [(PUCropToolController *)self viewCropRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(PUCropToolController *)self view];
  v18 = [(PUCropToolController *)self cropView];
  [v17 convertRect:v18 fromView:{v10, v12, v14, v16}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v53.origin.x = v20;
  v53.origin.y = v22;
  v53.size.width = v24;
  v53.size.height = v26;
  if (!CGRectIsEmpty(v53) || ([(PUCropToolController *)self previewViewInsets], v28.f64[1] = v27, v30.f64[1] = v29, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v28, *MEMORY[0x1E69DDCE0]), vceqq_f64(v30, *(MEMORY[0x1E69DDCE0] + 16))))) & 1) != 0))
  {
    v54.origin.x = v20;
    v54.origin.y = v22;
    v54.size.width = v24;
    v54.size.height = v26;
    if (CGRectIsEmpty(v54))
    {
      v31 = [(PUPhotoEditToolController *)self toolControllerSpec];
      [v31 standardBottomBarHeight];
      v33 = v32;

      v34 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
    }

    else
    {
      v55.origin.x = v20;
      v55.origin.y = v22;
      v55.size.width = v24;
      v55.size.height = v26;
      MinY = CGRectGetMinY(v55);
      *&v56.origin.x = v50;
      v56.origin.y = v7;
      v56.size.width = v49;
      v56.size.height = v48;
      v47 = MinY - CGRectGetMinY(v56);
      *&v57.origin.x = v50;
      v57.origin.y = v7;
      v57.size.width = v49;
      v57.size.height = v48;
      MaxY = CGRectGetMaxY(v57);
      v58.origin.x = v20;
      v58.origin.y = v22;
      v58.size.width = v24;
      v58.size.height = v26;
      v45 = MaxY - CGRectGetMaxY(v58);
      v59.origin.x = v20;
      v59.origin.y = v22;
      v59.size.width = v24;
      v59.size.height = v26;
      MinX = CGRectGetMinX(v59);
      *&v60.origin.x = v50;
      v60.origin.y = v7;
      v60.size.width = v49;
      v60.size.height = v48;
      v37 = MinX - CGRectGetMinX(v60);
      *&v61.origin.x = v50;
      v61.origin.y = v7;
      v61.size.width = v49;
      v33 = v45;
      v36 = v47;
      v61.size.height = v48;
      v35 = v37;
      MaxX = CGRectGetMaxX(v61);
      v62.origin.x = v20;
      v62.origin.y = v22;
      v62.size.width = v24;
      v62.size.height = v26;
      v34 = MaxX - CGRectGetMaxX(v62);
    }

    [(PUCropToolController *)self previewViewInsets];
    if (v35 != v42 || v36 != v39 || v34 != v41 || v33 != v40)
    {
      [(PUCropToolController *)self setPreviewViewInsets:v36, v35, v33, v34];
      v51 = [(PUPhotoEditToolController *)self delegate];
      [v51 toolController:self didChangePreferredPreviewViewInsetsAnimated:0];
    }
  }
}

- (id)_animateValueFromValue:(double)a3 toValue:(double)a4 interpolation:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (a3 == a4)
  {
    v10[2](v10, a4);
    if (v11)
    {
      v11[2](v11, 1);
    }

    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E69DD4A0] pu_dynamicValueAnimationWithInitialValue:a3 initialVelocity:0.0 targetValue:a4 stiffness:300.0 dampingFactor:1.0 epsilon:0.01];
    v13 = [(PUCropToolController *)self view];
    [v13 setUserInteractionEnabled:0];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__PUCropToolController__animateValueFromValue_toValue_interpolation_completion___block_invoke;
    v19[3] = &unk_1E7B76D68;
    v20 = v10;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__PUCropToolController__animateValueFromValue_toValue_interpolation_completion___block_invoke_2;
    v15[3] = &unk_1E7B76498;
    v16 = v20;
    v18 = a4;
    v17 = v11;
    v15[4] = self;
    [v12 runWithValueApplier:v19 completion:v15];
  }

  return v12;
}

void __80__PUCropToolController__animateValueFromValue_toValue_interpolation_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 56));
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  v5 = [*(a1 + 32) view];
  [v5 setUserInteractionEnabled:1];
}

- (NSMutableDictionary)animationTargetsByKeyPath
{
  animationTargetsByKeyPath = self->_animationTargetsByKeyPath;
  if (!animationTargetsByKeyPath)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_animationTargetsByKeyPath;
    self->_animationTargetsByKeyPath = v4;

    animationTargetsByKeyPath = self->_animationTargetsByKeyPath;
  }

  v6 = animationTargetsByKeyPath;

  return v6;
}

- (NSMutableDictionary)animationsByKeyPath
{
  animationsByKeyPath = self->_animationsByKeyPath;
  if (!animationsByKeyPath)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_animationsByKeyPath;
    self->_animationsByKeyPath = v4;

    animationsByKeyPath = self->_animationsByKeyPath;
  }

  v6 = animationsByKeyPath;

  return v6;
}

- (void)setGridVisible:(BOOL)a3
{
  v3 = a3;
  self->_gridVisible = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"PUCropGridVisible"];
}

- (void)_setAnimationTarget:(id)a3 forKeyPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(PUCropToolController *)self animationTargetsByKeyPath];
  v8 = v7;
  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

- (id)_animationTargetForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(PUCropToolController *)self animationTargetsByKeyPath];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)_setAnimation:(id)a3 forKeyPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(PUCropToolController *)self animationsByKeyPath];
  v8 = v7;
  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

- (id)_animationForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(PUCropToolController *)self animationsByKeyPath];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)_cancelAnimationForKeyPath:(id)a3
{
  v5 = a3;
  v4 = [(PUCropToolController *)self _animationForKeyPath:v5];
  [v4 stop];

  [(PUCropToolController *)self _setAnimation:0 forKeyPath:v5];
}

- (void)_setYawAngle:(double)a3 animated:(BOOL)a4
{
  if (vabdd_f64(a3, self->_yawAngle) >= *MEMORY[0x1E69B3DA0])
  {
    self->_yawAngle = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__PUCropToolController__setYawAngle_animated___block_invoke;
    v7[3] = &__block_descriptor_40_e36_v16__0__PICropAdjustmentController_8l;
    *&v7[4] = a3;
    [(PUCropToolController *)self _performLocalCropModelChanges:v7];
    v6 = [(PUCropToolController *)self cropView];
    [v6 setYawAngle:a3];

    [(PUAdjustmentsViewController *)self->_adjustmentsViewController updateControls];
    [(PUCropToolController *)self _updatePreviewViewInsets];
    [(PUCropToolController *)self _updateCropViewsForInteraction];
  }
}

- (void)_setPitchAngle:(double)a3 animated:(BOOL)a4
{
  if (vabdd_f64(a3, self->_pitchAngle) >= *MEMORY[0x1E69B3DA0])
  {
    self->_pitchAngle = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__PUCropToolController__setPitchAngle_animated___block_invoke;
    v7[3] = &__block_descriptor_40_e36_v16__0__PICropAdjustmentController_8l;
    *&v7[4] = a3;
    [(PUCropToolController *)self _performLocalCropModelChanges:v7];
    v6 = [(PUCropToolController *)self cropView];
    [v6 setPitchAngle:a3];

    [(PUAdjustmentsViewController *)self->_adjustmentsViewController updateControls];
    [(PUCropToolController *)self _updatePreviewViewInsets];
    [(PUCropToolController *)self _updateCropViewsForInteraction];
  }
}

- (void)_setStraightenAngle:(double)a3 animated:(BOOL)a4
{
  if (vabdd_f64(a3, self->_straightenAngle) >= *MEMORY[0x1E69B3DA0])
  {
    self->_straightenAngle = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PUCropToolController__setStraightenAngle_animated___block_invoke;
    v7[3] = &__block_descriptor_40_e36_v16__0__PICropAdjustmentController_8l;
    *&v7[4] = a3;
    [(PUCropToolController *)self _performLocalCropModelChanges:v7];
    v6 = [(PUCropToolController *)self cropView];
    [v6 setStraightenAngle:a3];

    [(PUAdjustmentsViewController *)self->_adjustmentsViewController updateControls];
    [(PUCropToolController *)self _updatePreviewViewInsets];
    [(PUCropToolController *)self _updateCropViewsForInteraction];
  }
}

- (void)_setViewCropRect:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_viewCropRect = &self->_viewCropRect;
  if ((PURectIsApproximatelyEqualToRect() & 1) == 0)
  {
    [(PUCropToolController *)self _cancelAnimationForKeyPath:@"_imageCropRect"];
    v11 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
    [(PUCropToolController *)self _setAnimationTarget:v11 forKeyPath:@"_imageCropRect"];

    size = p_viewCropRect->size;
    origin = p_viewCropRect->origin;
    v24 = size;
    p_viewCropRect->origin.x = x;
    p_viewCropRect->origin.y = y;
    p_viewCropRect->size.width = width;
    p_viewCropRect->size.height = height;
    if (self->_cropModel)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __50__PUCropToolController__setViewCropRect_animated___block_invoke;
      v22[3] = &unk_1E7B7AF80;
      v22[4] = self;
      [(PUCropToolController *)self _performLocalCropModelChanges:v22];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = origin;
    v15[2] = __50__PUCropToolController__setViewCropRect_animated___block_invoke_2;
    v15[3] = &unk_1E7B76450;
    v17 = v24;
    v18 = x;
    v19 = y;
    v20 = width;
    v21 = height;
    v15[4] = self;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__PUCropToolController__setViewCropRect_animated___block_invoke_3;
    v14[3] = &unk_1E7B7F020;
    v14[4] = self;
    v13 = [(PUCropToolController *)self _animateValueFromValue:v15 toValue:v14 interpolation:!v4 completion:1.0];
    [(PUCropToolController *)self _setAnimation:v13 forKeyPath:@"_imageCropRect"];
    [(PUCropToolController *)self _updatePreviewViewInsets];
    [(PUCropToolController *)self _updateCropViewsForInteraction];
  }
}

void __50__PUCropToolController__setViewCropRect_animated___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1480);
  v3 = a2;
  [v2 cropRect];
  [v3 setCropRect:?];
}

uint64_t __50__PUCropToolController__setViewCropRect_animated___block_invoke_2(uint64_t a1, double a2)
{
  v3 = *(a1 + 72) * a2 + (1.0 - a2) * *(a1 + 40);
  v4 = *(a1 + 80) * a2 + (1.0 - a2) * *(a1 + 48);
  v5 = *(a1 + 88) * a2 + (1.0 - a2) * *(a1 + 56);
  v6 = *(a1 + 96) * a2 + (1.0 - a2) * *(a1 + 64);
  [*(a1 + 32) setIgnoreTrackingUpdates:1];
  v7 = [*(a1 + 32) cropOverlayView];
  [v7 setCropRect:{v3, v4, v5, v6}];

  v8 = *(a1 + 32);

  return [v8 setIgnoreTrackingUpdates:0];
}

uint64_t __50__PUCropToolController__setViewCropRect_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setAnimation:0 forKeyPath:@"_imageCropRect"];
  v2 = *(a1 + 32);

  return [v2 _updateCropViewsForInteraction];
}

- (void)_setCropAspect:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (([v7 isEqual:self->_cropAspect] & 1) == 0)
  {
    objc_storeStrong(&self->_cropAspect, a3);
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __48__PUCropToolController__setCropAspect_animated___block_invoke;
    v42 = &unk_1E7B7AF80;
    v7 = v7;
    v43 = v7;
    [(PUCropToolController *)self _performLocalCropModelChanges:&v39];
    if (v7 && [(PUCropToolController *)self isActiveTool])
    {
      [(NUCropModel *)self->_cropModel cropRect];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [(NUCropModel *)self->_cropModel masterImageRect];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = [(PUCropToolController *)self geometry];
      v25 = [v24 isSizeInverted];

      if (v25)
      {
        v26 = [v7 inverseAspect];

        v7 = v26;
      }

      [(PUCropToolController *)self straightenAngle];
      [v7 constrainRect:v9 boundingRect:v11 boundingAngle:v13 minSize:{v15, v17, v19, v21, v23, v27, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v39, v40, v41, v42}];
      [(PUCropToolController *)self _suggestedCropRectForImageRect:?];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = [(PUCropToolController *)self cropView];
      [v36 setImageCropRectFromViewCropRect:v4 animated:{v29, v31, v33, v35}];

      [(PUCropToolController *)self _setViewCropRect:v4 animated:v29, v31, v33, v35];
      v37 = [(PUCropToolController *)self cropView];
      [(NUCropModel *)self->_cropModel cropRect];
      [v37 setModelCropRect:? viewCropRect:?];

      v38 = [(PUCropToolController *)self cropView];
      [v38 updateLayerTransformsAnimated:v4];
    }

    [(PUCropToolController *)self _updateAspectRatioControls];
    [(PUCropToolController *)self _updateCropActionButtons];
    [(PUCropToolController *)self _updateCropViewsForInteraction];
    [(PUCropToolController *)self aspectRatioLockChanged];
  }
}

void __48__PUCropToolController__setCropAspect_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  [v3 width];
  *&v4 = v4;
  v5 = vcvtas_u32_f32(*&v4);
  [*(a1 + 32) height];
  *&v6 = v6;
  v7 = vcvtas_u32_f32(*&v6);
  [v8 setConstraintWidth:v5];
  [v8 setConstraintHeight:v7];
}

- (void)_removeSnapshotView:(id)a3
{
  v4 = a3;
  v5 = [(PUCropToolController *)self rotateSnapshotView];

  if (v5 == v4)
  {
    [(PUCropToolController *)self setRotateSnapshotView:0];
  }

  v6 = [(PUPhotoEditToolController *)self delegate];
  v7 = [v6 isLoopingVideo];

  if (v7)
  {
    v8 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__PUCropToolController__removeSnapshotView___block_invoke;
    v11[3] = &unk_1E7B80DD0;
    v12 = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__PUCropToolController__removeSnapshotView___block_invoke_2;
    v9[3] = &unk_1E7B7F020;
    v10 = v12;
    [v8 animateWithDuration:v11 animations:v9 completion:0.5];
  }

  else
  {
    [v4 removeFromSuperview];
  }
}

- (void)_performGeometryChange:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PUCropToolController *)self geometry];
  v8 = [v7 appliedOrientation];
  v6[2](v6, v7);

  v9 = [v7 appliedOrientation];
  v10 = [(PUCropToolController *)self cropView];
  [v10 setOrientation:v9];

  v11 = [(PUCropToolController *)self dataSource];
  [v11 setOrientation:v9];

  if (v8 != v9)
  {
    [(PUAdjustmentsViewController *)self->_adjustmentsViewController resetControls];
    [(PUPhotoEditToolController *)self willModifyAdjustment];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __56__PUCropToolController__performGeometryChange_animated___block_invoke;
    v62[3] = &unk_1E7B80C38;
    v62[4] = self;
    v12 = v7;
    v63 = v12;
    [(PUCropToolController *)self _performLocalModelChanges:v62];
    memset(&v61, 0, sizeof(v61));
    if (v12)
    {
      [v12 transformFromOrientation:v8];
    }

    else
    {
      memset(&v61, 0, 32);
    }

    *&v61.tx = 0uLL;
    [(PUCropToolController *)self _cropCanvasFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(PUCropToolController *)self viewCropRect];
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    v60 = v61;
    v65 = CGRectApplyAffineTransform(v64, &v60);
    v25 = PURectWithSizeThatFitsInRect(v65.size.width, v65.size.height, v14, v16, v18, v20);
    v29 = PURoundRectToPixel(v25, v26, v27, v28);
    if (v4)
    {
      v33 = v29;
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = [(PUCropToolController *)self rotateSnapshotView];
      if (!v37)
      {
        v38 = [(PUCropToolController *)self cropView];
        v37 = [v38 resizableSnapshotViewFromRect:0 afterScreenUpdates:x withCapInsets:{y, width, height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

        [(PUCropToolController *)self setRotateSnapshotView:v37];
        v39 = [(PUCropToolController *)self view];
        [v39 addSubview:v37];

        [v37 setFrame:{x, y, width, height}];
      }

      [(PUCropToolController *)self setRotatingAnimationCount:[(PUCropToolController *)self rotatingAnimationCount]+ 1];
      [(PUCropToolController *)self setContentViewsHidden:1];
      v40 = MEMORY[0x1E69DD250];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = v50;
      v53[2] = __56__PUCropToolController__performGeometryChange_animated___block_invoke_3;
      v53[3] = &unk_1E7B76428;
      v41 = v37;
      v55 = v61;
      v54 = v41;
      v56 = v33;
      v57 = v34;
      v58 = v35;
      v59 = v36;
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = v50;
      v51[2] = __56__PUCropToolController__performGeometryChange_animated___block_invoke_4;
      v51[3] = &unk_1E7B80088;
      v51[4] = self;
      v52 = v41;
      v42 = v41;
      [v40 _animateUsingDefaultTimingWithOptions:0 animations:v53 completion:v51];
    }

    v43 = [(PUCropToolController *)self cropAspect];
    v44 = PLOrientationBetweenOrientations();
    v45 = v44;
    if (v43 && (v44 - 5) <= 3)
    {
      v46 = [v43 inverseAspect];
      [(PUCropToolController *)self setCropAspect:v46];

      [(PUCropToolController *)self _recomposeCropRectAnimated:0];
      v47 = v45 - 2;
    }

    else
    {
      [(PUCropToolController *)self _recomposeCropRectAnimated:0];
      v47 = v45 - 2;
      if ((v45 - 2) > 6)
      {
        v48 = @"PHOTOEDIT_CROP_GENERIC_ACTION_TITLE";
        goto LABEL_15;
      }
    }

    v48 = off_1E7B765D0[v47];
LABEL_15:
    v49 = PULocalizedString(v48);
    [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v49];
  }
}

void __56__PUCropToolController__performGeometryChange_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) compositionController];
  v3 = [MEMORY[0x1E69BE360] adjustmentConstants];
  v4 = [v3 PIOrientationAdjustmentKey];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PUCropToolController__performGeometryChange_animated___block_invoke_2;
  v6[3] = &unk_1E7B80700;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 modifyAdjustmentWithKey:v4 modificationBlock:v6];
}

uint64_t __56__PUCropToolController__performGeometryChange_animated___block_invoke_3(uint64_t a1)
{
  memset(&v8, 0, sizeof(v8));
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 transform];
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
    memset(&t1, 0, sizeof(t1));
  }

  v4 = *(a1 + 56);
  *&v6.a = *(a1 + 40);
  *&v6.c = v4;
  *&v6.tx = *(a1 + 72);
  CGAffineTransformConcat(&v8, &t1, &v6);
  t1 = v8;
  [v3 setTransform:&t1];
  return [*(a1 + 32) setFrame:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
}

uint64_t __56__PUCropToolController__performGeometryChange_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setRotatingAnimationCount:{objc_msgSend(*(a1 + 32), "rotatingAnimationCount") - 1}];
  if (![*(a1 + 32) rotatingAnimationCount])
  {
    [*(a1 + 32) _updateCropViewsForInteraction];
    objc_initWeak(&location, *(a1 + 32));
    v2 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__PUCropToolController__performGeometryChange_animated___block_invoke_5;
    v5[3] = &unk_1E7B79D28;
    objc_copyWeak(&v7, &location);
    v6 = *(a1 + 40);
    [v2 _setContentViewsHidden:0 animated:1 completion:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  v3 = [*(a1 + 32) cropView];
  [v3 setNeedsLayerTransformsUpdateAnimated:0];

  return [*(a1 + 32) updateAspectRatioLockButton];
}

void __56__PUCropToolController__performGeometryChange_animated___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained contentViewsHiddenAnimationCount];

  if (!v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 _removeSnapshotView:*(a1 + 32)];
  }
}

void __56__PUCropToolController__performGeometryChange_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 compositionController];
  [v5 imageOrientation];
  [*(a1 + 40) userOrientation];
  [v4 setOrientation:PLOrientationConcat()];
}

- (void)setGainMapValue:(float)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_gainMapValue = a3;
    v5 = [(PUCropToolController *)self cropView];
    [(PUCropToolController *)self gainMapValue];
    [v5 setGainMapValue:?];
  }
}

- (void)setGainMapImage:(CGImage *)a3
{
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != a3)
  {
    CGImageRelease(gainMapImage);
    self->_gainMapImage = CGImageRetain(a3);
    v6 = [(PUCropToolController *)self cropView];
    [v6 setGainMapImage:self->_gainMapImage];
  }
}

- (void)_handleDidCreateEditedImage:(id)a3 inputExtent:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v20 = a3;
  v9 = [(PUPhotoEditToolController *)self compositionController];
  v10 = [v9 imageOrientation];

  v11 = [objc_alloc(MEMORY[0x1E69BE490]) initWithInputSize:v10 inputOrientation:{width, height}];
  [(PUCropToolController *)self setGeometry:v11];
  v12 = [(PUCropToolController *)self cropView];
  if (width <= 0.0 || height <= 0.0)
  {
    if (!v20)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = [objc_alloc(MEMORY[0x1E69B3A28]) initWithMasterImageSize:{width, height}];
  cropModel = self->_cropModel;
  self->_cropModel = v13;

  v15 = self->_cropModel;
  [(NUCropModel *)v15 masterImageSize];
  v17 = v16;
  [(NUCropModel *)self->_cropModel masterImageSize];
  [(NUCropModel *)v15 setAspectRatio:v17, v18];
  v19 = [(PUPhotoEditToolController *)self compositionController];
  [(PUCropToolController *)self _setupCropModelFromCompositionController:v19];

  [v12 _setCropModel:self->_cropModel];
  if (v20)
  {
    [v12 setImage:v20];
LABEL_6:
    [(PUCropToolController *)self setImage:v20];
    goto LABEL_8;
  }

  [v12 setImageSize:{width, height}];
LABEL_8:
  [(PUCropToolController *)self setInputExtent:x, y, width, height];
  [(PUCropToolController *)self _installRenderedImageAndDisplayIfNeeded];
}

- (void)_setupCropModelFromCompositionController:(id)a3
{
  v4 = [a3 cropAdjustmentController];
  v5 = v4;
  if (v4)
  {
    v14 = v4;
    v4 = [v4 enabled];
    v5 = v14;
    if (v4)
    {
      cropModel = self->_cropModel;
      [v14 yawRadians];
      [(NUCropModel *)cropModel setYawRadians:?];
      v7 = self->_cropModel;
      [v14 pitchRadians];
      [(NUCropModel *)v7 setPitchRadians:?];
      v8 = self->_cropModel;
      [v14 angleRadians];
      [(NUCropModel *)v8 setRollRadians:?];
      v9 = self->_cropModel;
      [v14 cropRect];
      [(NUCropModel *)v9 setCropRect:?];
      v10 = self->_cropModel;
      [v14 cropRect];
      v12 = v11;
      [v14 cropRect];
      v4 = [(NUCropModel *)v10 setAspectRatio:v12, v13];
      v5 = v14;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_loadMediaIfNeeded
{
  if ([(PUCropToolController *)self needsMediaLoad])
  {
    [(PUCropToolController *)self setNeedsMediaLoad:0];
    v3 = [(PUPhotoEditToolController *)self delegate];
    v4 = [(PUCropToolController *)self cropView];
    v5 = [(PUPhotoEditToolController *)self compositionController];
    v6 = [v5 composition];

    if ([v3 isStandardVideo])
    {
      v12 = 0uLL;
      v13 = 0;
      v7 = [v3 mediaView];
      v8 = [v7 player];
      v9 = v8;
      if (v8)
      {
        [v8 currentTime];
      }

      else
      {
        v12 = 0uLL;
        v13 = 0;
      }

      v10 = v12;
      v11 = v13;
      [v4 setVideoComposition:v6 withSeekTime:&v10];
    }

    else if ([v3 isLoopingVideo])
    {
      [v4 setAutoloopComposition:v6];
    }

    [(PUCropToolController *)self _installRenderedImageAndDisplayIfNeeded];
  }
}

- (void)_loadImageIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  if (![(PUCropToolController *)self needsImageLoad])
  {
    if (v4)
    {
      v4[2](v4);
    }

    goto LABEL_11;
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5 = [(PUCropToolController *)self imageLoadingQueue];

    if (!v5)
    {
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create("PUCropToolController image loading", v6);
      imageLoadingQueue = self->_imageLoadingQueue;
      self->_imageLoadingQueue = v7;

      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      imageLoadingQueueCompletionBlocks = self->_imageLoadingQueueCompletionBlocks;
      self->_imageLoadingQueueCompletionBlocks = v9;
    }

    if (v4)
    {
      v11 = [(PUCropToolController *)self imageLoadingQueueCompletionBlocks];
      v12 = _Block_copy(v4);
      [v11 addObject:v12];
    }

    if (![(PUCropToolController *)self imageLoadingInProgress])
    {
      [(PUCropToolController *)self setImageLoadingInProgress:1];
      v13 = [(PUPhotoEditToolController *)self delegate];
      [v13 updateProgressIndicatorAnimated:1];

      v14 = [(PUCropToolController *)self imageLoadingQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__PUCropToolController__loadImageIfNeededWithCompletion___block_invoke;
      block[3] = &unk_1E7B80DD0;
      block[4] = self;
      dispatch_async(v14, block);
    }

LABEL_11:

    return;
  }

  v15 = _PFAssertFailHandler();
  __57__PUCropToolController__loadImageIfNeededWithCompletion___block_invoke(v15);
}

void __57__PUCropToolController__loadImageIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) cropView];
  v4 = [v3 _screen];

  [v4 bounds];
  v6 = v5;
  v8 = v7;
  [v4 scale];
  v10 = v9;
  if (v6 >= v8)
  {
    v8 = v6;
  }

  v11 = [*v2 delegate];
  v12 = [v11 isStandardVideo];

  if (v12)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PUCropToolController__loadImageIfNeededWithCompletion___block_invoke_2;
    block[3] = &unk_1E7B80DD0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x3032000000;
    v65[3] = __Block_byref_object_copy__20551;
    v65[4] = __Block_byref_object_dispose__20552;
    v66 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x4010000000;
    v62 = &unk_1B3DBEC63;
    v13 = *(MEMORY[0x1E695F058] + 16);
    v63 = *MEMORY[0x1E695F058];
    v64 = v13;
    [*(a1 + 32) _createRendererIfNeeded];
    v14 = [*(a1 + 32) renderer];

    if (v14)
    {
      v15 = [*(a1 + 32) delegate];
      v16 = [v15 isHDREnabled];

      if (v16)
      {
        [MEMORY[0x1E69B3DC0] maximumEDRHeadroomForScreen:v4];
        v18 = v17;
        v19 = [*(a1 + 32) renderer];
        [v19 setDisplayMaximumEDRHeadroom:v18];

        [MEMORY[0x1E69B3DC0] currentEDRHeadroomForScreen:v4];
        v21 = v20;
        v22 = [*(a1 + 32) renderer];
        [v22 setDisplayCurrentEDRHeadroom:v21];
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v24 = v23;
      v25 = PLPhotoEditGetLog();
      spid = os_signpost_id_generate(v25);

      v26 = PLPhotoEditGetLog();
      v27 = v26;
      v28 = spid - 1;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v27, OS_SIGNPOST_INTERVAL_BEGIN, spid, "EditCropToolRender", "", buf, 2u);
      }

      v29 = dispatch_semaphore_create(0);
      v30 = [*(a1 + 32) renderer];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __57__PUCropToolController__loadImageIfNeededWithCompletion___block_invoke_323;
      v55[3] = &unk_1E7B76400;
      v57 = v65;
      v58 = &v59;
      v31 = v29;
      v56 = v31;
      *buf = *MEMORY[0x1E6960C70];
      *&buf[16] = *(MEMORY[0x1E6960C70] + 16);
      [v30 renderImageWithTargetSize:0 contentMode:1 renderMode:buf renderTime:@"PUCropTool-loadImage" name:v55 completion:{v10 * v8, v10 * v8}];

      v32 = dispatch_time(0, 4000000000);
      if (dispatch_semaphore_wait(v31, v32))
      {
        v33 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B36F3000, v33, OS_LOG_TYPE_ERROR, "Rendering semaphore timed out in [PUCropToolController _loadImageIfNeeded]", buf, 2u);
        }
      }

      if (CGRectIsEmpty(v60[1]))
      {
        v34 = [*(a1 + 32) renderer];
        v35 = [*(a1 + 32) compositionController];
        v36 = [v35 composition];
        v37 = [MEMORY[0x1E69BDEF0] pipelineFiltersForCropping];
        v38 = [v34 getGeometryForComposition:v36 pipelineFilters:v37];

        if (v38)
        {
          [v38 extent];
        }

        else
        {
          memset(buf, 0, 32);
        }

        NUPixelRectToCGRect();
        p_x = &v60->origin.x;
        v60[1].origin.x = v40;
        p_x[5] = v41;
        p_x[6] = v42;
        p_x[7] = v43;
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v45 = v44;
      v46 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        height = v60[1].size.height;
        width = v60[1].size.width;
        *buf = 134218496;
        *&buf[4] = ((v45 - v24) * 1000.0);
        *&buf[12] = 2048;
        *&buf[14] = width;
        *&buf[22] = 2048;
        *&buf[24] = height;
        _os_log_impl(&dword_1B36F3000, v46, OS_LOG_TYPE_DEFAULT, "Crop rendering took %ldms for size %ld x %ld", buf, 0x20u);
      }

      v49 = PLPhotoEditGetLog();
      v50 = v49;
      if (v28 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v50, OS_SIGNPOST_INTERVAL_END, spida, "EditCropToolRender", "", buf, 2u);
      }
    }

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __57__PUCropToolController__loadImageIfNeededWithCompletion___block_invoke_327;
    v54[3] = &unk_1E7B7DB48;
    v54[4] = *(a1 + 32);
    v54[5] = v65;
    v54[6] = &v59;
    dispatch_async(MEMORY[0x1E69E96A0], v54);
    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(v65, 8);
  }
}

void __57__PUCropToolController__loadImageIfNeededWithCompletion___block_invoke_323(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = a3;
  if (v13)
  {
    v14 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = v13;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "Error rendering image in [PUCropToolController _loadImageIfNeeded]; this is likely fatal : %@", &v19, 0xCu);
    }
  }

  else
  {
    v15 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a2];
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = *(*(a1 + 48) + 8);
    v18[4] = a4;
    v18[5] = a5;
    v18[6] = a6;
    v18[7] = a7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __57__PUCropToolController__loadImageIfNeededWithCompletion___block_invoke_327(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) imageLoadingQueueCompletionBlocks];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) imageLoadingQueueCompletionBlocks];
  [v4 removeAllObjects];

  [*(a1 + 32) setImageLoadingInProgress:0];
  [*(a1 + 32) setNeedsImageLoad:*(*(*(a1 + 40) + 8) + 40) == 0];
  [*(a1 + 32) setInitialImageLoaded:1];
  if (!CGRectIsEmpty(*(*(*(a1 + 48) + 8) + 32)))
  {
    [*(a1 + 32) _handleDidCreateEditedImage:*(*(*(a1 + 40) + 8) + 40) inputExtent:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [*(a1 + 32) delegate];
  [v10 updateProgressIndicatorAnimated:1];

  [*(a1 + 32) updateAspectRatioLockButton];
}

void __57__PUCropToolController__loadImageIfNeededWithCompletion___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) imageLoadingQueueCompletionBlocks];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) imageLoadingQueueCompletionBlocks];
  [v4 removeAllObjects];

  [*(a1 + 32) setImageLoadingInProgress:0];
  [*(a1 + 32) setInitialImageLoaded:1];
  [*(a1 + 32) _createRendererIfNeeded];
  v5 = [*(a1 + 32) renderer];

  if (v5)
  {
    [*(a1 + 32) setNeedsImageLoad:0];
    v6 = [*(a1 + 32) renderer];
    v7 = [*(a1 + 32) compositionController];
    v8 = [v7 composition];
    v9 = [MEMORY[0x1E69BDEF0] pipelineFiltersForCropping];
    v10 = [v6 getGeometryForComposition:v8 pipelineFilters:v9];

    [v10 size];
    NUPixelSizeToCGSize();
    [*(a1 + 32) _handleDidCreateEditedImage:0 inputExtent:{0.0, 0.0, v11, v12}];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v19 + 1) + 8 * v17) + 16))(*(*(&v19 + 1) + 8 * v17));
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = [*(a1 + 32) delegate];
  [v18 updateProgressIndicatorAnimated:1];

  [*(a1 + 32) updateAspectRatioLockButton];
}

- (void)_createRendererIfNeeded
{
  v3 = [(PUCropToolController *)self renderer];

  if (v3)
  {
    v9 = [(PUPhotoEditToolController *)self compositionController];
    v4 = [(PUCropToolController *)self renderer];
    v5 = v4;
    v6 = v9;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E69BE658]);
    v8 = [(PUPhotoEditToolController *)self editSource];
    v9 = [v7 initWithEditSource:v8 renderPriority:3];

    [(PUCropToolController *)self setRenderer:v9];
    v5 = [(PUPhotoEditToolController *)self compositionController];
    v4 = v9;
    v6 = v5;
  }

  [v4 setCompositionController:v6];
}

- (void)_performLocalCropModelChanges:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PUCropToolController__performLocalCropModelChanges___block_invoke;
  v6[3] = &unk_1E7B80B48;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PUCropToolController *)self _performLocalModelChanges:v6];
}

void __54__PUCropToolController__performLocalCropModelChanges___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) compositionController];
  v3 = [MEMORY[0x1E69BE360] adjustmentConstants];
  v4 = [v3 PICropAdjustmentKey];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PUCropToolController__performLocalCropModelChanges___block_invoke_2;
  v6[3] = &unk_1E7B763D8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 modifyAdjustmentWithKey:v4 modificationBlock:v6];
}

void __54__PUCropToolController__performLocalCropModelChanges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v6 = a2;
  v4(v3, v6);
  v5 = [*(a1 + 32) cropModel];
  [v5 masterImageSize];
  LODWORD(v3) = [v6 isCropIdentityForImageSize:?];

  [v6 setEnabled:v3 ^ 1];
}

- (void)_performLocalModelChanges:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:770 description:{@"Invalid parameter not satisfying: %@", @"changes != nil"}];
  }

  v5 = [(PUPhotoEditToolController *)self compositionController];

  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:771 description:@"Need a composition to perform this operation"];
  }

  v6 = [(PUCropToolController *)self isModelChangeLocal];
  [(PUCropToolController *)self setModelChangeLocal:1];
  v9[2]();
  [(PUCropToolController *)self setModelChangeLocal:v6];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditToolController *)self delegate];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = PUCropToolController;
    [(PUPhotoEditToolController *)&v6 setDelegate:v4];
  }
}

- (void)_updateToolLabelAppearanceIfNeeded
{
  if (MEMORY[0x1B8C6D660](self, a2))
  {
    v32 = self->_badgeView;
    [(UIView *)v32 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(PUCropToolController *)self cropOverlayView];
    v12 = [(PUCropToolController *)self cropOverlayView];
    v13 = [v12 cropWindowView];
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(PUCropToolController *)self view];
    [v11 convertRect:v22 toView:{v15, v17, v19, v21}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v34.origin.x = v24;
    v34.origin.y = v26;
    v34.size.width = v28;
    v34.size.height = v30;
    v35.origin.x = v4;
    v35.origin.y = v6;
    v35.size.width = v8;
    v35.size.height = v10;
    v31 = CGRectIntersectsRect(v34, v35);
    if (self->_cropWindowIntersectsToolLabel != v31)
    {
      self->_cropWindowIntersectsToolLabel = v31;
      [(UIView *)v32 setStyle:v31];
    }
  }
}

- (void)_updateCropToggleConstraintsIfNeeded
{
  v3 = [(PUCropToolController *)self cropAspectViewController];
  v61 = [v3 view];

  v4 = [(PUCropToolController *)self cropAspectFlipperView];
  if (![(PUCropToolController *)self _hasConstraintsForKey:@"PUCropToggleConstraints"])
  {
    v5 = objc_opt_new();
    v6 = [(PUPhotoEditToolController *)self photoEditSpec];
    v7 = [v6 currentLayoutStyle];

    v8 = [(PUPhotoEditToolController *)self layoutOrientation];
    v9 = [(PUPhotoEditToolController *)self delegate];
    v10 = [v9 toolControllerMainContainerView:self];

    v11 = +[PUPhotoEditLayoutSupport isNotchedPhone];
    v12 = 88.0;
    if (v11)
    {
      v12 = 38.0;
    }

    if (v8 == 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 10.0;
    }

    [(PUCropToolController *)self _updateAspectRatioLayout];
    if ((v8 - 2) >= 2)
    {
      if (v8 != 1 || !v61)
      {
        goto LABEL_17;
      }

      v27 = [v61 leftAnchor];
      v28 = [(PUCropToolController *)self view];
      v29 = [v28 leftAnchor];
      v30 = [v27 constraintEqualToAnchor:v29];
      [v5 addObject:v30];

      v31 = [v61 rightAnchor];
      v32 = [(PUCropToolController *)self view];
      v33 = [v32 rightAnchor];
      v34 = [v31 constraintEqualToAnchor:v33];
      [v5 addObject:v34];

      v35 = [v61 bottomAnchor];
      v36 = [(PUCropToolController *)self view];
      v37 = [v36 bottomAnchor];
      v38 = [v35 constraintEqualToAnchor:v37 constant:-10.0];
      [v5 addObject:v38];

      v39 = [v61 heightAnchor];
      v40 = [v39 constraintEqualToConstant:38.0];
      [v5 addObject:v40];

      v41 = [v4 bottomAnchor];
      v42 = [v61 topAnchor];
      v43 = [v41 constraintEqualToAnchor:v42 constant:-17.0];
      [v5 addObject:v43];

      v24 = [v4 centerXAnchor];
      v25 = [(PUCropToolController *)self view];
      v26 = [v25 centerXAnchor];
    }

    else
    {
      if (!v61)
      {
LABEL_17:
        v59 = [(PUCropToolController *)self cropAspectViewController];
        [v59 updateAspectButtons];

        v60 = [(PUCropToolController *)self view];
        [v60 pu_addConstraints:v5 forKey:@"PUCropToggleConstraints"];

        goto LABEL_18;
      }

      v14 = [v61 rightAnchor];
      v15 = [(PUCropToolController *)self view];
      v16 = [v15 rightAnchor];
      v17 = [v14 constraintEqualToAnchor:v16];
      [v5 addObject:v17];

      if (v7 != 4)
      {
        v47 = [v61 topAnchor];
        v48 = [(PUCropToolController *)self view];
        v49 = [v48 topAnchor];
        [(PUCropToolController *)self additionalSafeAreaInsets];
        v50 = [v47 constraintEqualToAnchor:v49 constant:?];
        [v5 addObject:v50];

        v51 = [v61 bottomAnchor];
        v52 = [(PUCropToolController *)self view];
        v53 = [v52 bottomAnchor];
        v54 = [v51 constraintEqualToAnchor:v53];
        [v5 addObject:v54];

        v55 = [v4 centerYAnchor];
        v56 = [v10 centerYAnchor];
        v57 = [v55 constraintEqualToAnchor:v56 constant:0.0];
        v46 = 1;
        [v57 setActive:1];

        v24 = [v4 leftAnchor];
        v25 = [v10 safeAreaLayoutGuide];
        v44 = [v25 leftAnchor];
        v45 = [v24 constraintEqualToAnchor:v44 constant:v13];
        [v45 setActive:1];
        goto LABEL_16;
      }

      v18 = [v61 bottomAnchor];
      v19 = [(PUCropToolController *)self view];
      v20 = [v19 bottomAnchor];
      v21 = [v18 constraintEqualToAnchor:v20 constant:-27.0];
      [v5 addObject:v21];

      v22 = [v61 heightAnchor];
      v23 = [v22 constraintEqualToConstant:38.0];
      [v5 addObject:v23];

      v24 = [v61 leftAnchor];
      v25 = [(PUCropToolController *)self view];
      v26 = [v25 leftAnchor];
    }

    v44 = v26;
    v45 = [v24 constraintEqualToAnchor:v26];
    [v5 addObject:v45];
    v46 = 0;
LABEL_16:

    [v4 setLayoutOrientation:v46];
    v58 = [(PUCropToolController *)self cropAspectViewController];
    [v58 setLayoutOrientation:v46];

    goto LABEL_17;
  }

LABEL_18:
}

- (void)_updateCropCanvasConstraintsIfNeeded
{
  if ([(PUCropToolController *)self _hasConstraintsForKey:@"PUCropCanvasConstraints"])
  {
    return;
  }

  v3 = [(PUPhotoEditToolController *)self toolControllerSpec];
  [v3 minimumCropInset];
  v5 = v4;

  v6 = [(PUPhotoEditToolController *)self layoutOrientation];
  v7 = [(PUPhotoEditToolController *)self toolControllerSpec];
  v8 = v7;
  if (v6 == 1)
  {
    [v7 standardBottomBarHeight];
    v10 = v9;
    v11 = v5;
    v12 = v5;
LABEL_10:

    goto LABEL_11;
  }

  [v7 standardSideBarWidth];
  v11 = v13;

  v14 = [(PUPhotoEditToolController *)self toolControllerSpec];
  [v14 cropAspectRatioScrollHeight];
  v10 = v15;

  v16 = [(PUPhotoEditToolController *)self photoEditSpec];
  v17 = [v16 currentLayoutStyle];

  if (v17 != 4)
  {
    if (v6 == 3)
    {
      v18 = 30.0;
    }

    else
    {
      v18 = 10.0;
    }

    v8 = [(PUPhotoEditToolController *)self toolControllerSpec];
    [v8 cropAspectFlipperWidth];
    v12 = v18 + v19;
    goto LABEL_10;
  }

  v12 = v11;
LABEL_11:
  v36 = [(PUCropToolController *)self cropCanvasView];
  v20 = [(PUCropToolController *)self view];
  v21 = [v20 safeAreaLayoutGuide];

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [v21 leftAnchor];
  v24 = [v36 leftAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-v12];
  [v22 addObject:v25];

  v26 = [v21 rightAnchor];
  v27 = [v36 rightAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:v11];
  [v22 addObject:v28];

  v29 = [v21 topAnchor];
  v30 = [v36 topAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-v5];
  [v22 addObject:v31];

  v32 = [v21 bottomAnchor];
  v33 = [v36 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:v10];
  [v22 addObject:v34];

  v35 = [(PUCropToolController *)self view];
  [v35 pu_addConstraints:v22 forKey:@"PUCropCanvasConstraints"];
}

- (BOOL)_hasConstraintsForKey:(id)a3
{
  v4 = a3;
  v5 = [(PUCropToolController *)self view];
  v6 = [v5 pu_hasConstraintForKey:v4];

  return v6;
}

- (void)_invalidateConstraintsForKey:(id)a3
{
  v5 = a3;
  if ([(PUCropToolController *)self isViewLoaded])
  {
    v4 = [(PUCropToolController *)self view];
    [v4 pu_removeAllConstraintsForKey:v5];
  }
}

- (void)_updateBadgeTextWithInfo:(id)a3
{
  v4 = [a3 localizedName];
  v9 = [v4 localizedUppercaseString];

  v5 = MEMORY[0x1B8C6D660]();
  v6 = [(PUCropToolController *)self badgeView];
  v7 = v6;
  if (v5)
  {
    [v6 setText:v9];
  }

  else
  {
    [v6 _setText:v9];
  }

  v8 = [(PUCropToolController *)self badgeView];
  [v8 sizeToFit];

  [(PUCropToolController *)self _layoutAdjustmentTools];
}

- (void)adjustmentsViewControllerSliderDidEndScrubbing:(id)a3
{
  [(PUCropToolController *)self resetToolLabelHidingTimer];
  [(PUCropToolController *)self setTrackingAdjustmentControl:0];
  [(PUCropToolController *)self _updateCropViewsForInteraction];

  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
}

- (void)adjustmentsViewControllerSliderWillBeginScrubbing:(id)a3
{
  [(PUCropToolController *)self showVideoScrubber:0];
  [(PUCropToolController *)self setTrackingAdjustmentControl:1];
  [(PUCropToolController *)self _updateCropViewsForInteraction];

  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:1];
}

- (void)adjustmentsViewControllerToolDidEndScrubbing:(id)a3
{
  if ([(PUCropToolController *)self toolBadgeDoesHide])
  {

    [(PUCropToolController *)self resetToolLabelHidingTimer];
  }
}

- (void)adjustmentsViewControllerToolWillBeginScrubbing:(id)a3
{
  if ([(PUCropToolController *)self toolBadgeDoesHide])
  {

    [(PUCropToolController *)self showToolLabel];
  }
}

- (id)adjustmentsViewControllerMainContainerView
{
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 toolControllerMainContainerView:self];

  return v4;
}

- (void)adjustmentsViewControllerDidUpdateSelectedControl:(id)a3
{
  v4 = [a3 selectedAdjustmentInfo];
  [(PUCropToolController *)self _updateBadgeTextWithInfo:v4];

  if ([(PUCropToolController *)self toolBadgeDoesHide])
  {

    [(PUCropToolController *)self resetToolLabelHidingTimer];
  }
}

- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6
{
  v10.receiver = self;
  v10.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v10 setupWithAsset:a3 compositionController:a4 editSource:a5 valuesCalculator:a6];
  v7 = [(PUCropToolController *)self dataSource];
  v8 = [(PUPhotoEditToolController *)self compositionController];
  v9 = [(PUPhotoEditToolController *)self valuesCalculator];
  [v7 setupWithCompositionController:v8 valuesCalculator:v9];
}

- (void)updateViewConstraints
{
  [(PUCropToolController *)self _updateCropCanvasConstraintsIfNeeded];
  [(PUCropToolController *)self _updateCropToggleConstraintsIfNeeded];
  v3.receiver = self;
  v3.super_class = PUCropToolController;
  [(PUCropToolController *)&v3 updateViewConstraints];
}

- (void)viewDidLayoutSubviews
{
  v117.receiver = self;
  v117.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v117 viewDidLayoutSubviews];
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 toolControllerMainContainerView:self];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(PUCropToolController *)self view];
  }

  v7 = v6;

  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(PUCropToolController *)self cropOverlayView];
  [v16 setFrame:{v9, v11, v13, v15}];

  v17 = [(PUCropToolController *)self view];
  [v7 bounds];
  UIRectGetCenter();
  [v17 convertPoint:v7 fromView:?];
  v19 = v18;
  v21 = v20;

  v22 = [(PUCropToolController *)self cropOverlayView];
  [v22 setCenter:{v19, v21}];

  [(PUCropToolController *)self _cropCanvasFrame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [(PUCropToolController *)self cropView];
  [v31 setCanvasFrame:{v24, v26, v28, v30}];

  if ([(PUCropToolController *)self modelLoadingSuspended])
  {
    goto LABEL_9;
  }

  v32 = [(PUPhotoEditToolController *)self compositionController];
  if (!v32)
  {
    goto LABEL_9;
  }

  v33 = v32;
  if (![(PUCropToolController *)self needsModelLoad])
  {
    v34 = [(PUCropToolController *)self cropView];
    [v34 frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    [(PUCropToolController *)self cropViewFrameForLastModelLoad];
    v134.origin.x = v43;
    v134.origin.y = v44;
    v134.size.width = v45;
    v134.size.height = v46;
    v118.origin.x = v36;
    v118.origin.y = v38;
    v118.size.width = v40;
    v118.size.height = v42;
    v47 = CGRectEqualToRect(v118, v134);

    if (!v47)
    {
      goto LABEL_10;
    }

LABEL_9:
    v48 = [(PUCropToolController *)self cropView];
    [v48 setNeedsLayout];

    goto LABEL_11;
  }

LABEL_10:
  [(PUCropToolController *)self _loadStateFromModelAnimated:0];
LABEL_11:
  [(PUCropToolController *)self _layoutAdjustmentTools];
  v49 = [(PUPhotoEditToolController *)self photoEditSpec];
  [v49 scrubberViewMargin];
  v51 = v50;
  v115 = v52;
  v54 = v53;

  v55 = [(PUCropToolController *)self cropOverlayView];
  v56 = [v55 cropWindowView];

  v57 = [(PUCropToolController *)self view];
  [v56 frame];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = [v56 superview];
  [v57 convertRect:v66 fromView:{v59, v61, v63, v65}];
  v68 = v67;
  MinY = v69;
  v72 = v71;
  Height = v73;

  v119.origin.x = v68;
  v119.origin.y = MinY;
  v119.size.width = v72;
  v119.size.height = Height;
  if (CGRectGetWidth(v119) >= 210.0)
  {
    v77 = 2;
  }

  else if ([(PUPhotoEditToolController *)self layoutOrientation]== 1)
  {
    v120.origin.x = v68;
    v120.origin.y = MinY;
    v120.size.width = v72;
    v120.size.height = Height;
    v75 = MinY;
    MinY = CGRectGetMinY(v120);
    [v7 frame];
    Width = CGRectGetWidth(v121);
    v122.origin.x = v68;
    v122.origin.y = v75;
    v122.size.width = v72;
    v122.size.height = Height;
    Height = CGRectGetHeight(v122);
    v77 = 0;
    v68 = 0.0;
    v72 = Width;
  }

  else
  {
    v78 = [(PUCropToolController *)self view];
    [v78 frame];
    v79 = MinY;
    v80 = CGRectGetWidth(v123);
    v81 = [(PUPhotoEditToolController *)self toolContainerView];
    [v81 frame];
    v82 = v80 - CGRectGetWidth(v124);

    v125.origin.x = v68;
    v125.origin.y = v79;
    v125.size.width = v72;
    v125.size.height = Height;
    MidX = CGRectGetMidX(v125);
    v84 = v82 - MidX + v82 - MidX;
    v126.origin.x = v68;
    v126.origin.y = v79;
    v126.size.width = v72;
    v126.size.height = Height;
    v77 = 0;
    v85 = v84 - CGRectGetWidth(v126);
    MinY = v79;
    if (v85 != 0.0)
    {
      v72 = v72 + v85;
      v68 = v68 + v85 * -0.5;
    }
  }

  v127.origin.x = v68;
  v127.origin.y = MinY;
  v127.size.width = v72;
  v127.size.height = Height;
  v116 = v51;
  v86 = fmin(CGRectGetWidth(v127) - v51 - v54, 477.0);
  v87 = [(PUCropToolController *)self videoScrubberView];
  [v87 intrinsicContentSize];
  v89 = v88;

  v128.origin.x = v68;
  v128.origin.y = MinY;
  v128.size.width = v72;
  v128.size.height = Height;
  v90 = CGRectGetMidX(v128) + v86 * -0.5;
  v129.origin.x = v68;
  v129.origin.y = MinY;
  v129.size.width = v72;
  v129.size.height = Height;
  MaxY = CGRectGetMaxY(v129);
  if (Height >= v89 * 4.0)
  {
    v96 = MaxY - v89;
    v92 = v96 - v115;
  }

  else
  {
    v130.origin.x = v68;
    v130.origin.y = MinY;
    v130.size.width = v72;
    v130.size.height = Height;
    rect = MinY;
    v92 = CGRectGetMaxY(v130) + 30.0;
    v93 = [(PUCropToolController *)self view];
    [v93 frame];
    v95 = v94;

    v96 = v89 + v92;
    if (v89 + v92 >= v95)
    {
      v131.origin.x = v68;
      v131.origin.y = rect;
      v131.size.width = v72;
      v131.size.height = Height;
      v96 = CGRectGetMaxY(v131);
      v92 = v96 - v89;
    }

    else
    {
      v77 = 0;
    }
  }

  v97 = [(PUCropToolController *)self playPauseButton];
  [v97 sizeToFit];

  v98 = [(PUCropToolController *)self playPauseButton];
  [v98 frame];
  v100 = v99;
  v102 = v101;

  v132.origin.x = v90;
  v132.origin.y = v92;
  v132.size.width = v86;
  v132.size.height = v89;
  MinX = CGRectGetMinX(v132);
  v133.origin.x = v90;
  v133.origin.y = v92;
  v133.size.width = v86;
  v133.size.height = v89;
  v104 = CGRectGetMinY(v133) + -7.0;
  v105 = [(PUCropToolController *)self playPauseButton];
  [v105 setFrame:{MinX, v104, v100, v102}];

  v106 = [(PUCropToolController *)self videoScrubberView];
  [v106 setFrame:{v90 + v116 + v100, v92, v86 + (v116 + v100) * -2.0, v89}];

  v107 = [(PUCropToolController *)self videoScrubberView];
  [v107 setOverrideUserInterfaceStyle:v77];

  v108 = [(PUCropToolController *)self videoScrubberView];

  if (v108)
  {
    v109 = [(PUCropToolController *)self view];
    v110 = [(PUCropToolController *)self videoScrubberView];
    [v109 bringSubviewToFront:v110];
  }

  v111 = [(PUCropToolController *)self playPauseButton];

  if (v111)
  {
    v112 = [(PUCropToolController *)self view];
    v113 = [(PUCropToolController *)self playPauseButton];
    [v112 bringSubviewToFront:v113];
  }

  [(PUCropToolController *)self _updateToolLabelAppearanceIfNeeded];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v10 viewDidAppear:a3];
  [(PUCropToolController *)self resetToolLabelHidingTimer];
  v4 = [(PUCropToolController *)self cropView];
  v5 = [(PUPhotoEditToolController *)self delegate];
  [v4 setShouldEnableImageModulation:{objc_msgSend(v5, "toolControllerShouldEnableImageModulation:", self)}];

  v6 = [(PUCropToolController *)self cropView];
  v7 = [(PUPhotoEditToolController *)self delegate];
  v8 = [v7 toolControllerImageModulationOptions:self];
  [v6 setImageModulationOptions:{v8, v9}];
}

- (void)_layoutAdjustmentTools
{
  v3 = [(PUPhotoEditToolController *)self layoutOrientation];
  v4 = [(PUPhotoEditToolController *)self photoEditSpec];
  v5 = [v4 currentLayoutStyle];

  v6 = [(PUCropToolController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (v12 >= v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  [(PUPhotoEditToolController *)self setToolGradientDistance:v15];
  if (v5 == 4)
  {
    v16 = [(PUPhotoEditToolController *)self toolContainerView];
    [v16 bounds];
    [(UIView *)self->_adjustmentPickerView setFrame:?];

    [(PUAdjustmentsViewController *)self->_adjustmentsViewController setLayoutDirection:1];
    v17 = [(PUPhotoEditToolController *)self delegate];
    v18 = [v17 toolControllerMainContainerView:self];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [(PUCropToolController *)self view];
    }

    v74 = v20;

    [v74 center];
    v39 = v38;
    v41 = v40;
    v42 = [v74 superview];
    v43 = [(PUCropToolController *)self view];
    [v42 convertPoint:v43 toView:{v39, v41}];
    v45 = v44;

    v46 = [(PUPhotoEditToolController *)self toolContainerView];
    [v46 frame];
    MinX = CGRectGetMinX(v78);

    v48 = [(PUCropToolController *)self badgeView];
    [v48 bounds];
    v50 = MinX + v49 * -0.5 + -6.0;

    v51 = [(PUCropToolController *)self badgeView];
    v52 = v51;
    v53 = v50;
  }

  else
  {
    if (v3 == 1)
    {
      [(PUAdjustmentsViewController *)self->_adjustmentsViewController setLayoutDirection:0];
      adjustmentPickerView = self->_adjustmentPickerView;
      v22 = *(MEMORY[0x1E695EFD0] + 16);
      v75[0] = *MEMORY[0x1E695EFD0];
      v75[1] = v22;
      v75[2] = *(MEMORY[0x1E695EFD0] + 32);
      [(UIView *)adjustmentPickerView setTransform:v75];
      v23 = [(PUPhotoEditToolController *)self toolContainerView];
      [v23 frame];
      [(UIView *)self->_adjustmentPickerView setFrame:?];

      v24 = [(PUPhotoEditToolController *)self toolContainerView];
      [v24 bounds];
      UIRectGetCenter();
      [(UIView *)self->_adjustmentPickerView setCenter:?];

      v25 = [(PUPhotoEditToolController *)self toolContainerView];
      [v25 frame];
      MinY = CGRectGetMinY(v77);

      UIRectGetCenter();
      v28 = v27;
      v29 = [(PUCropToolController *)self badgeView];
      [v29 bounds];
      v31 = MinY + v30 * -0.5 + -6.0;

      v32 = [(PUCropToolController *)self badgeView];
      [v32 setCenter:{v28, v31}];

      return;
    }

    v33 = [(PUPhotoEditToolController *)self toolContainerView];
    [v33 bounds];
    [(UIView *)self->_adjustmentPickerView setFrame:?];

    [(PUAdjustmentsViewController *)self->_adjustmentsViewController setLayoutDirection:1];
    v34 = [(PUPhotoEditToolController *)self delegate];
    v35 = [v34 toolControllerMainContainerView:self];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = [(PUCropToolController *)self view];
    }

    v74 = v37;

    [v74 center];
    v55 = v54;
    v57 = v56;
    v58 = [v74 superview];
    v59 = [(PUCropToolController *)self view];
    [v58 convertPoint:v59 toView:{v55, v57}];
    v61 = v60;

    v62 = [(PUCropToolController *)self view];
    [v62 safeAreaInsets];
    v64 = v8 + v63;
    v66 = v10 + v65;
    v68 = v12 - (v63 + v67);
    v70 = v14 - (v65 + v69);

    v79.origin.x = v64;
    v79.origin.y = v66;
    v79.size.width = v68;
    v79.size.height = v70;
    MaxY = CGRectGetMaxY(v79);
    v72 = [(PUCropToolController *)self badgeView];
    [v72 bounds];
    v45 = MaxY + v73 * -0.5;

    v51 = [(PUCropToolController *)self badgeView];
    v52 = v51;
    v53 = v61;
  }

  [v51 setCenter:{v53, v45}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v8 viewWillAppear:a3];
  [(PUCropToolController *)self setNeedsModelLoad:1];
  v4 = [(PUPhotoEditToolController *)self delegate];
  v5 = [v4 isStandardVideo];

  if (v5)
  {
    [(PUCropToolController *)self createVideoScrubber];
    v6 = [(PUCropToolController *)self videoScrubberView];
    [v6 setAlpha:0.0];

    v7 = [(PUCropToolController *)self playPauseButton];
    [v7 setAlpha:0.0];
  }

  [(PUCropToolController *)self setToolBadgeDoesHide:1];
  [(PUCropToolController *)self _updateCropActionButtons];
}

- (void)viewDidLoad
{
  v131[2] = *MEMORY[0x1E69E9840];
  v127.receiver = self;
  v127.super_class = PUCropToolController;
  [(PUCropToolController *)&v127 viewDidLoad];
  v107 = +[PUInterfaceManager currentTheme];
  v3 = objc_alloc_init(PUCropToolControllerSpec);
  [(PUPhotoEditToolController *)self setToolControllerSpec:v3];

  v4 = [(PUCropToolController *)self cropView];
  v5 = [(PUCropToolController *)self cropOverlayView];
  v6 = [(PUPhotoEditToolController *)self toolContainerView];
  v7 = [(PUCropToolController *)self cropHandleViewsByHandle];
  v8 = [v7 allValues];

  v9 = [(PUPhotoEditToolController *)self toolControllerSpec];
  [v9 minimumCropHandleViewSize];
  v11 = v10;
  v13 = v12;

  v108 = _NSDictionaryOfVariableBindings(&cfstr_CropviewContai.isa, v4, v6, 0);
  v130[0] = @"handleWidth";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v130[1] = @"handleHeight";
  v131[0] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v131[1] = v15;
  v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:2];

  v16 = [(PUCropToolController *)self view];
  v17 = [(PUCropToolController *)self cropCanvasView];
  [v16 addSubview:v17];

  v18 = [(PUCropToolController *)self view];
  v106 = v4;
  [v18 addSubview:v4];

  v19 = [(PUCropToolController *)self view];
  v109 = v5;
  [v19 addSubview:v5];

  [(PUCropToolController *)self addChildViewController:self->_adjustmentsViewController];
  v20 = [(PUAdjustmentsViewController *)self->_adjustmentsViewController view];
  adjustmentPickerView = self->_adjustmentPickerView;
  self->_adjustmentPickerView = v20;

  v105 = v6;
  [v6 addSubview:self->_adjustmentPickerView];
  [(PUCropToolController *)self _updateCropActionButtons];
  v22 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v118 = self;
  v23 = [(PUCropToolController *)self view];
  v116 = v22;
  [v23 addSubview:v22];

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v24 = v8;
  v25 = [v24 countByEnumeratingWithState:&v123 objects:v129 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v124;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v124 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v123 + 1) + 8 * i);
        v30 = [v29 isLateral];
        v31 = [(PUCropToolController *)self view];
        v32 = v31;
        if (v30)
        {
          [v31 insertSubview:v29 belowSubview:v22];
        }

        else
        {
          [v31 insertSubview:v29 aboveSubview:v22];
        }

        v33 = _NSDictionaryOfVariableBindings(&cfstr_Handleview.isa, v29, 0);
        if (([v29 isRight] & 1) != 0 || objc_msgSend(v29, "isLeft"))
        {
          v34 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[handleView(handleWidth)]" options:0x10000 metrics:v117 views:v33];
          [v29 addConstraints:v34];
        }

        if (([v29 isTop] & 1) != 0 || objc_msgSend(v29, "isBottom"))
        {
          v35 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[handleView(handleHeight)]" options:0 metrics:v117 views:v33];
          [v29 addConstraints:v35];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v123 objects:v129 count:16];
    }

    while (v26);
  }

  [v22 removeFromSuperview];
  v36 = [(PUCropToolController *)self view];
  v37 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[cropView]|" options:0x10000 metrics:v117 views:v108];
  [v36 addConstraints:v37];

  v38 = [(PUCropToolController *)self view];
  v39 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[cropView]|" options:0 metrics:v117 views:v108];
  [v38 addConstraints:v39];

  v115 = [MEMORY[0x1E695DF70] array];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = v24;
  v40 = [obj countByEnumeratingWithState:&v119 objects:v128 count:16];
  v41 = v5;
  if (v40)
  {
    v42 = v40;
    v114 = *v120;
    do
    {
      v43 = 0;
      v110 = v42;
      do
      {
        if (*v120 != v114)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v119 + 1) + 8 * v43);
        v45 = [v44 layoutReferenceItem];
        v46 = [v41 layoutReferenceItem];
        if ([v44 isCorner])
        {
          if ([v44 isTop])
          {
            v47 = 3;
          }

          else
          {
            v47 = 4;
          }

          if ([v44 isLeft])
          {
            v48 = 1;
          }

          else
          {
            v48 = 2;
          }

          v49 = [MEMORY[0x1E696ACD8] constraintWithItem:v45 attribute:v47 relatedBy:0 toItem:v46 attribute:v47 multiplier:1.0 constant:0.0];
          [v115 addObject:v49];

          v50 = [MEMORY[0x1E696ACD8] constraintWithItem:v45 attribute:v48 relatedBy:0 toItem:v46 attribute:v48 multiplier:1.0 constant:0.0];
          [v115 addObject:v50];
        }

        if ([v44 isLateral])
        {
          v51 = [v44 adjacentHandles];
          v52 = [v44 layoutReferenceItem];
          v53 = [(PUCropToolController *)v118 cropHandleViewsByHandle];
          v54 = [v51 objectAtIndexedSubscript:0];
          v55 = [v53 objectForKeyedSubscript:v54];
          firstValue = [v55 layoutReferenceItem];

          v56 = [(PUCropToolController *)v118 cropHandleViewsByHandle];
          v113 = v51;
          v57 = [v51 objectAtIndexedSubscript:1];
          v58 = [v56 objectForKeyedSubscript:v57];
          v59 = [v58 layoutReferenceItem];

          if (([v44 isTop] & 1) != 0 || objc_msgSend(v44, "isBottom"))
          {
            v60 = 0x10000;
            v61 = @"H";
          }

          else
          {
            v60 = 0;
            v61 = @"V";
          }

          if ([v44 isTop])
          {
            v62 = 3;
          }

          else if ([v44 isLeft])
          {
            v62 = 1;
          }

          else if ([v44 isRight])
          {
            v62 = 2;
          }

          else
          {
            v62 = 4;
          }

          v63 = _NSDictionaryOfVariableBindings(&cfstr_Adjacent1Handl.isa, firstValue, v52, v59, 0);
          v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:[adjacent1][handleItem][adjacent2]", v61];
          v65 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v64 options:v60 metrics:0 views:v63];
          [v115 addObjectsFromArray:v65];

          v66 = [MEMORY[0x1E696ACD8] constraintWithItem:v52 attribute:v62 relatedBy:0 toItem:v46 attribute:v62 multiplier:1.0 constant:0.0];
          [v115 addObject:v66];

          v41 = v109;
          v42 = v110;
        }

        ++v43;
      }

      while (v42 != v43);
      v42 = [obj countByEnumeratingWithState:&v119 objects:v128 count:16];
    }

    while (v42);
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v115];
  v67 = [(PUCropToolController *)v118 aspectRatioLockButton];
  if (!v67)
  {
    v68 = +[PUPhotoEditProtoSettings sharedInstance];
    v69 = [v68 maintainCropAspectLockState];

    if (!v69)
    {
      goto LABEL_49;
    }

    v70 = [MEMORY[0x1E69C3BE8] buttonWithType:1];
    [(PUCropToolController *)v118 setAspectRatioLockButton:v70];

    v71 = [(PUCropToolController *)v118 aspectRatioLockButton];
    [v71 setTranslatesAutoresizingMaskIntoConstraints:0];

    v72 = [(PUCropToolController *)v118 aspectRatioLockButton];
    [v72 addTarget:v118 action:sel__aspectLockButtonTapped forControlEvents:64];

    v73 = [(PUCropToolController *)v118 view];
    v74 = [(PUCropToolController *)v118 aspectRatioLockButton];
    [v73 addSubview:v74];

    v75 = [(PUCropToolController *)v118 aspectRatioLockButton];
    v76 = [v75 topAnchor];
    v77 = [v41 layoutReferenceItem];
    v78 = [v77 topAnchor];
    v79 = [v76 constraintEqualToAnchor:v78 constant:20.0];
    [v79 setActive:1];

    v80 = [(PUCropToolController *)v118 aspectRatioLockButton];
    v81 = [v80 rightAnchor];
    v82 = [v41 layoutReferenceItem];
    v83 = [v82 rightAnchor];
    v84 = [v81 constraintEqualToAnchor:v83 constant:-20.0];
    [v84 setActive:1];

    v67 = [(PUCropToolController *)v118 aspectRatioLockButton];
    [v67 setEnabled:1];
  }

LABEL_49:
  [(PUCropToolController *)v118 updateAspectRatioLockButton];
  v85 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v118 action:sel__accessibilityLongPressChanged_];
  [v85 setMinimumPressDuration:0.15];
  v86 = [MEMORY[0x1E69DC668] sharedApplication];
  v87 = [v86 preferredContentSizeCategory];
  [v85 setEnabled:UIContentSizeCategoryIsAccessibilityCategory(v87)];

  v88 = [(PUCropToolController *)v118 view];
  [v88 addGestureRecognizer:v85];

  [(PUCropToolController *)v118 setAccessibilityLongPressGestureRecognizer:v85];
  v89 = [MEMORY[0x1E696AD88] defaultCenter];
  [v89 addObserver:v118 selector:sel__preferredContentSizeCategoryChanged name:*MEMORY[0x1E69DDC48] object:0];

  v90 = [(PUCropToolController *)v118 view];
  v91 = [(PUPhotoEditToolController *)v118 toolContainerView];
  [v90 bringSubviewToFront:v91];

  if (MEMORY[0x1B8C6D660]())
  {
    v92 = [PUEditBadgeLabel alloc];
    v93 = +[PUInterfaceManager currentTheme];
    v94 = [(PUEditBadgeLabel *)v92 initWithText:0 style:1 interfaceTheme:v93];
    [(PUCropToolController *)v118 setBadgeView:v94];

    v95 = [(PUCropToolController *)v118 badgeView];
    [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v96 = objc_alloc(MEMORY[0x1E6993830]);
    v95 = [v96 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v95 setUserInteractionEnabled:0];
    v97 = [v107 photoEditingBadgeViewFillColor];
    [v95 _setFillColor:v97];

    v98 = [v107 photoEditingBadgeViewContentColor];
    [v95 _setContentColor:v98];

    [v95 _setFillCornerRadius:4.0];
    [v95 setAlpha:0.0];
    [MEMORY[0x1E6993830] _defaultTextInsets];
    [v95 _setTextInsets:{v102 + 1.0, v99 + 3.0, v101 + 1.0, v100 + 3.0}];
    [(PUCropToolController *)v118 setBadgeView:v95];
  }

  v103 = [(PUCropToolController *)v118 view];
  v104 = [(PUCropToolController *)v118 badgeView];
  [v103 addSubview:v104];

  [(PUCropToolController *)v118 px_enableImageModulation];
}

- (void)dealloc
{
  CGImageRelease(self->_gainMapImage);
  v3 = [(PUCropToolController *)self cropView];
  [v3 tearDownMediaViewAndLayers];

  v4.receiver = self;
  v4.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v4 dealloc];
}

- (PUCropToolController)initWithNibName:(id)a3 bundle:(id)a4
{
  v14.receiver = self;
  v14.super_class = PUCropToolController;
  v4 = [(PUPhotoEditToolController *)&v14 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    containerView = v4->_containerView;
    v4->_containerView = v6;

    v8 = objc_alloc_init(PUCropPerspectiveAdjustmentsDataSource);
    dataSource = v4->_dataSource;
    v4->_dataSource = v8;

    [(PUCropPerspectiveAdjustmentsDataSource *)v4->_dataSource setDelegate:v4];
    v10 = objc_alloc_init(PUAdjustmentsViewController);
    adjustmentsViewController = v4->_adjustmentsViewController;
    v4->_adjustmentsViewController = v10;

    [(PUAdjustmentsViewController *)v4->_adjustmentsViewController setDelegate:v4];
    [(PUAdjustmentsViewController *)v4->_adjustmentsViewController setDataSource:v4->_dataSource];
    [(PUAdjustmentsViewController *)v4->_adjustmentsViewController setShouldDisplayMappedValues:0];
    v12 = objc_alloc_init(PUCropToolControllerSpec);
    [(PUPhotoEditToolController *)v4 setToolControllerSpec:v12];

    v4->_needsMediaLoad = 1;
    v4->_needsImageLoad = 1;
    v4->_needsModelLoad = 1;
    [(PUPhotoEditToolController *)v4 setHasMediaScrubber:1];
  }

  return v4;
}

@end