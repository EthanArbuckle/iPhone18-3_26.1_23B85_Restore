@interface PUCropToolController
- (BOOL)_hasConstraintsForKey:(id)key;
- (BOOL)_hasPerspectiveSuggestion;
- (BOOL)_needsRecomposeCropRect;
- (BOOL)canResetToDefaultValue;
- (BOOL)setLockedCropAspectIfNeededIgnoringCurrentLock:(BOOL)lock;
- (CGPoint)_pointForHandle:(unint64_t)handle;
- (CGPoint)_pointForHandle:(unint64_t)handle onCropRect:(CGRect)rect;
- (CGRect)_addHeight:(double)height toRect:(CGRect)rect anchorTop:(BOOL)top;
- (CGRect)_addWidth:(double)width toRect:(CGRect)rect anchorLeft:(BOOL)left;
- (CGRect)_cropCanvasFrame;
- (CGRect)_cropRectFromPanningHandle:(unint64_t)handle byAmount:(CGVector)amount;
- (CGRect)_defaultImageCropRect;
- (CGRect)_defaultViewCropRect;
- (CGRect)_suggestedCropRectForImageRect:(CGRect)rect;
- (CGRect)cropViewFrameForLastModelLoad;
- (CGRect)initialHandlePanCropRect;
- (CGRect)inputExtent;
- (CGRect)suggestedCrop;
- (CGRect)viewCropRect;
- (CGSize)minimumViewCropRectSizeForHandleGesture;
- (CGSize)screenSize;
- (CGVector)_applyAspectOfCropRect:(CGRect)rect toHandleMovement:(CGVector)movement;
- (CGVector)_correctInputVector:(CGVector)vector forHandle:(unint64_t)handle onCropRect:(CGRect)rect lockDirection:(BOOL)direction;
- (CGVector)_deltaMaskForHandle:(unint64_t)handle;
- (NSDictionary)cropHandleViewsByHandle;
- (NSMutableDictionary)animationTargetsByKeyPath;
- (NSMutableDictionary)animationsByKeyPath;
- (NSMutableDictionary)initialLocationsInHandlesByHandle;
- (PUCropOverlayView)cropOverlayView;
- (PUCropPerspectiveView)cropView;
- (PUCropToolController)initWithNibName:(id)name bundle:(id)bundle;
- (UIEdgeInsets)previewViewInsets;
- (UIView)cropCanvasView;
- (id)_animateValueFromValue:(double)value toValue:(double)toValue interpolation:(id)interpolation completion:(id)completion;
- (id)_animationForKeyPath:(id)path;
- (id)_animationTargetForKeyPath:(id)path;
- (id)adjustmentsRenderer:(id)renderer;
- (id)adjustmentsViewControllerMainContainerView;
- (id)bestAspectRatioForWidth:(unint64_t)width height:(unint64_t)height;
- (id)leadingToolbarViews;
- (id)toolActionsForMenu;
- (id)trailingToolbarViews;
- (void)_accessibilityLongPressChanged:(id)changed;
- (void)_applyCropAndPerspectiveSuggestion;
- (void)_applyCropRect:(CGRect)rect straightenAngle:(double)angle pitchAngle:(double)pitchAngle yawAngle:(double)yawAngle isAutoCrop:(BOOL)crop;
- (void)_aspectButtonTapped:(id)tapped;
- (void)_aspectLockButtonTapped;
- (void)_autoApplyCropAndPerspectiveSuggestionIfNeeded;
- (void)_autoRecomposeCropRect;
- (void)_beginObservingVideoPlayer;
- (void)_cancelAnimationForKeyPath:(id)path;
- (void)_closeAspectRatioPicker;
- (void)_createRendererIfNeeded;
- (void)_cropToggleTapped:(id)tapped;
- (void)_flipButtonTapped:(id)tapped;
- (void)_gridButtonTapped:(id)tapped;
- (void)_handleCropHandlePan:(id)pan;
- (void)_handleDidCreateEditedImage:(id)image inputExtent:(CGRect)extent;
- (void)_handleTouchingGesture:(id)gesture;
- (void)_hideGrid;
- (void)_hideGridDelayed;
- (void)_hideMaskedContent;
- (void)_hideMaskedContentDelayed;
- (void)_installRenderedImageAndDisplayIfNeeded;
- (void)_invalidateConstraintsForKey:(id)key;
- (void)_layoutAdjustmentTools;
- (void)_loadCropSuggestionIfNeeded;
- (void)_loadImageIfNeededWithCompletion:(id)completion;
- (void)_loadMediaIfNeeded;
- (void)_loadPerspectiveSuggestionIfNeeded;
- (void)_loadStateFromModelAnimated:(BOOL)animated;
- (void)_performGeometryChange:(id)change animated:(BOOL)animated;
- (void)_performInitialAction;
- (void)_performLocalCropModelChanges:(id)changes;
- (void)_performLocalModelChanges:(id)changes;
- (void)_playPauseButtonTapped;
- (void)_preferredContentSizeCategoryChanged;
- (void)_recomposeCropRectAnimated:(BOOL)animated;
- (void)_recomposeCropRectDelayed;
- (void)_removeSnapshotView:(id)view;
- (void)_resetAllValuesAnimated:(BOOL)animated skipLayerTransformUpdate:(BOOL)update;
- (void)_rotateButtonTapped:(id)tapped;
- (void)_rotateByApplyingOrientation:(int64_t)orientation;
- (void)_setAnimation:(id)animation forKeyPath:(id)path;
- (void)_setAnimationTarget:(id)target forKeyPath:(id)path;
- (void)_setContentViewsHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)_setCropAspect:(id)aspect animated:(BOOL)animated;
- (void)_setPitchAngle:(double)angle animated:(BOOL)animated;
- (void)_setStraightenAngle:(double)angle animated:(BOOL)animated;
- (void)_setViewCropRect:(CGRect)rect animated:(BOOL)animated;
- (void)_setYawAngle:(double)angle animated:(BOOL)animated;
- (void)_setupCropModelFromCompositionController:(id)controller;
- (void)_showGridAndCancelDelayedHide;
- (void)_showMaskedContentAndCancelDelayedHide;
- (void)_toggleCropAndPerspective;
- (void)_updateAspectRatioControls;
- (void)_updateAspectRatioLayout;
- (void)_updateBadgeTextWithInfo:(id)info;
- (void)_updateCropActionButtons;
- (void)_updateCropCanvasConstraintsIfNeeded;
- (void)_updateCropToggleButton;
- (void)_updateCropToggleButtonMode;
- (void)_updateCropToggleConstraintsIfNeeded;
- (void)_updateCropViewsForInteraction;
- (void)_updatePreviewViewInsets;
- (void)_updateToolLabelAppearanceIfNeeded;
- (void)_updateVideoScrubber;
- (void)_userChangedAspectRatioLocked:(BOOL)locked;
- (void)adjustmentsViewControllerDidUpdateSelectedControl:(id)control;
- (void)adjustmentsViewControllerSliderDidEndScrubbing:(id)scrubbing;
- (void)adjustmentsViewControllerSliderWillBeginScrubbing:(id)scrubbing;
- (void)adjustmentsViewControllerToolDidEndScrubbing:(id)scrubbing;
- (void)adjustmentsViewControllerToolWillBeginScrubbing:(id)scrubbing;
- (void)baseMediaInvalidated;
- (void)basePhotoInvalidated;
- (void)compositionControllerDidChangeForAdjustments:(id)adjustments;
- (void)configureForAdjustmentCategory:(int64_t)category;
- (void)createVideoScrubber;
- (void)cropAspectController:(id)controller cropAspectSelected:(id)selected;
- (void)cropAspectFlipperView:(id)view cropOrientationSelected:(int64_t)selected;
- (void)cropTransformedImageViewDidEndTracking:(id)tracking;
- (void)cropTransformedImageViewDidTrack:(id)track;
- (void)cropTransformedImageViewWillBeginTracking:(id)tracking;
- (void)dealloc;
- (void)didBecomeActiveTool;
- (void)didResignActiveTool;
- (void)editValuesCalculatorHasChangedGeometricValues:(id)values;
- (void)handleResigningCropTool;
- (void)mediaTimelineControlViewDidChangeValue:(id)value;
- (void)mediaTimelineControlViewDidEndChanging:(id)changing;
- (void)mediaTimelineControlViewWillBeginChanging:(id)changing;
- (void)prepareForSave:(BOOL)save;
- (void)prepareForToolTransitionWithCompletion:(id)completion;
- (void)reactivate;
- (void)resetToolLabelHidingTimer;
- (void)setAspectRatioLocked:(BOOL)locked;
- (void)setAutoButtonMode:(int64_t)mode;
- (void)setDelegate:(id)delegate;
- (void)setFocusingViewForInteraction:(BOOL)interaction;
- (void)setGainMapImage:(CGImage *)image;
- (void)setGainMapValue:(float)value;
- (void)setGridVisible:(BOOL)visible;
- (void)setHasAppliedCropSuggestion:(BOOL)suggestion;
- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator;
- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator;
- (void)showBadgeView:(BOOL)view animated:(BOOL)animated;
- (void)showVideoScrubber:(BOOL)scrubber;
- (void)updateAspectRatioLockButton;
- (void)updateCropAspectRatioOrientation:(int64_t)orientation;
- (void)updateViewConstraints;
- (void)updateViewOrdering;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)_accessibilityLongPressChanged:(id)changed
{
  changedCopy = changed;
  view = [(PUCropToolController *)self view];
  view2 = [(PUCropToolController *)self view];
  [changedCopy locationInView:view2];
  v6 = [view hitTest:0 withEvent:?];

  rotateButton = [(PUCropToolController *)self rotateButton];
  LODWORD(view2) = [v6 isEqual:rotateButton];

  if (view2)
  {
    rotateButton2 = [(PUCropToolController *)self rotateButton];
LABEL_7:
    v13 = rotateButton2;
    goto LABEL_8;
  }

  aspectButton = [(PUCropToolController *)self aspectButton];
  v10 = [v6 isEqual:aspectButton];

  if (v10)
  {
    rotateButton2 = [(PUCropToolController *)self aspectButton];
    goto LABEL_7;
  }

  autoButton = [(PUCropToolController *)self autoButton];
  v12 = [v6 isEqual:autoButton];

  if (v12)
  {
    rotateButton2 = [(PUCropToolController *)self autoButton];
    goto LABEL_7;
  }

  v13 = 0;
LABEL_8:
  state = [changedCopy state];
  if ((state - 1) < 2)
  {
    if (v13)
    {
      v15 = objc_alloc(MEMORY[0x1E69DC618]);
      titleLabel = [v13 titleLabel];
      text = [titleLabel text];
      imageView = [v13 imageView];
      image = [imageView image];
      v20 = [v15 initWithTitle:text image:image imageInsets:1 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

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

  if (state != 3)
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
  accessibilityLongPressGestureRecognizer = [(PUCropToolController *)self accessibilityLongPressGestureRecognizer];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  [accessibilityLongPressGestureRecognizer setEnabled:UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory)];
}

- (id)adjustmentsRenderer:(id)renderer
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  v5 = [delegate toolControllerMainRenderer:self];

  return v5;
}

- (void)cropAspectFlipperView:(id)view cropOrientationSelected:(int64_t)selected
{
  cropAspect = [(PUCropToolController *)self cropAspect];

  if (cropAspect)
  {
    [(PUPhotoEditToolController *)self willModifyAdjustment];
    cropAspect2 = [(PUCropToolController *)self cropAspect];
    inverseAspect = [cropAspect2 inverseAspect];
    [(PUCropToolController *)self _setCropAspect:inverseAspect animated:1];

    v9 = PULocalizedString(@"PHOTOEDIT_CROP_ORIENTATION_ACTION_TITLE");
    [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v9];
  }

  [(PUCropToolController *)self updateCropAspectRatioOrientation:selected];
}

- (void)cropAspectController:(id)controller cropAspectSelected:(id)selected
{
  selectedCopy = selected;
  [(PUPhotoEditToolController *)self willModifyAdjustment];
  [(PUCropToolController *)self _setCropAspect:selectedCopy animated:1];
  v5 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_ACTION_TITLE");
  [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v5];

  if (selectedCopy)
  {
    v6 = [selectedCopy isFreeformCrop] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  [(PUCropToolController *)self _userChangedAspectRatioLocked:v6];
  [(PUCropToolController *)self setHasAppliedCropSuggestion:0];
}

- (void)_cropToggleTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:3371 description:{@"Invalid parameter not satisfying: %@", @"[sender isKindOfClass:[UIButton class]]"}];
  }

  [(PUCropToolController *)self _toggleCropAndPerspective];
}

- (void)_updateAspectRatioLayout
{
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  [(PUCropAspectFlipperView *)self->_cropAspectFlipperView removeFromSuperview];
  if (currentLayoutStyle == 4)
  {
    cropAspectFlipperView = self->_cropAspectFlipperView;
  }

  else
  {
    view = [(PUCropToolController *)self view];
    [view addSubview:self->_cropAspectFlipperView];

    cropAspectFlipperView = 0;
  }

  cropAspectViewController = [(PUCropToolController *)self cropAspectViewController];
  [cropAspectViewController setScrollExtraLeftView:cropAspectFlipperView];
}

- (void)_aspectButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:3319 description:{@"Invalid parameter not satisfying: %@", @"[sender isKindOfClass:[UIButton class]]"}];
  }

  delegate = [(PUPhotoEditToolController *)self delegate];
  [delegate toolControllerOriginalOrientedImageSize:self];
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
    photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
    currentLayoutStyle = [photoEditSpec currentLayoutStyle];

    layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
    v19 = currentLayoutStyle != 4 && layoutOrientation != 1;
    v20 = [PUCropAspectViewController alloc];
    cropAspect = [(PUCropToolController *)self cropAspect];
    toolControllerSpec = [(PUPhotoEditToolController *)self toolControllerSpec];
    v23 = [(PUCropAspectViewController *)v20 initWithLayoutOrientation:v19 originalSize:cropAspect currentSize:toolControllerSpec currentCropAspect:v9 spec:v11, v14, v15];
    cropAspectViewController = self->_cropAspectViewController;
    self->_cropAspectViewController = v23;

    [(PUCropAspectViewController *)self->_cropAspectViewController setDelegate:self];
    [(PUCropToolController *)self addChildViewController:self->_cropAspectViewController];
    view = [(PUCropToolController *)self view];
    view2 = [(PUCropAspectViewController *)self->_cropAspectViewController view];
    [view addSubview:view2];

    if (currentLayoutStyle == 4)
    {
      v27 = 0;
    }

    else
    {
      v27 = layoutOrientation != 1;
      adjustmentPickerView = [(PUCropToolController *)self adjustmentPickerView];
      [adjustmentPickerView setHidden:1];

      badgeView = [(PUCropToolController *)self badgeView];
      [badgeView setHidden:1];
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
    view = [(PUCropAspectViewController *)self->_cropAspectViewController view];
    [view removeFromSuperview];

    v5 = self->_cropAspectViewController;
    self->_cropAspectViewController = 0;

    [(PUCropToolController *)self _invalidateConstraintsForKey:@"PUCropToggleConstraints"];
    adjustmentPickerView = [(PUCropToolController *)self adjustmentPickerView];
    [adjustmentPickerView setHidden:0];

    badgeView = [(PUCropToolController *)self badgeView];
    [badgeView setHidden:0];

    [(PUCropAspectFlipperView *)self->_cropAspectFlipperView removeFromSuperview];
    cropAspectFlipperView = self->_cropAspectFlipperView;
    self->_cropAspectFlipperView = 0;
  }
}

- (void)_gridButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:3296 description:{@"Invalid parameter not satisfying: %@", @"[sender isKindOfClass:[UIButton class]]"}];
  }

  [(PUCropToolController *)self setGridVisible:[(PUCropToolController *)self gridVisible]^ 1];
  cropOverlayView = [(PUCropToolController *)self cropOverlayView];
  [cropOverlayView setCropGridVisible:-[PUCropToolController gridVisible](self animated:{"gridVisible"), 1}];
}

- (void)_flipButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:3286 description:{@"Invalid parameter not satisfying: %@", @"[sender isKindOfClass:[UIButton class]]"}];
  }

  [(PUCropToolController *)self _performGeometryChange:&__block_literal_global_501 animated:1];

  [(PUCropToolController *)self setHasAppliedCropSuggestion:0];
}

- (void)_rotateButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:3281 description:{@"Invalid parameter not satisfying: %@", @"[sender isKindOfClass:[UIButton class]]"}];
  }

  [(PUCropToolController *)self _rotateByApplyingOrientation:8];
}

- (void)_rotateByApplyingOrientation:(int64_t)orientation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PUCropToolController__rotateByApplyingOrientation___block_invoke;
  v4[3] = &__block_descriptor_40_e25_v16__0__PLImageGeometry_8l;
  v4[4] = orientation;
  [(PUCropToolController *)self _performGeometryChange:v4 animated:1];
  [(PUCropToolController *)self setHasAppliedCropSuggestion:0];
  [(PUCropToolController *)self _updateAspectRatioControls];
}

- (void)editValuesCalculatorHasChangedGeometricValues:(id)values
{
  [(PUCropToolController *)self _loadCropSuggestionIfNeeded];
  [(PUCropToolController *)self _loadPerspectiveSuggestionIfNeeded];
  [(PUCropToolController *)self _updateCropToggleButtonMode];

  [(PUCropToolController *)self _updateCropToggleButton];
}

- (id)toolActionsForMenu
{
  v13[1] = *MEMORY[0x1E69E9840];
  cropAspect = [(PUCropToolController *)self cropAspect];
  v4 = cropAspect;
  v5 = @"lock.fill";
  v6 = @"PHOTOEDIT_CROP_MENU_LOCK_ASPECT_RATIO";
  if (cropAspect && ![cropAspect isFreeformCrop])
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
  aspectButton = [(PUCropToolController *)self aspectButton];
  v5[0] = aspectButton;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)leadingToolbarViews
{
  v7[2] = *MEMORY[0x1E69E9840];
  flipButton = [(PUCropToolController *)self flipButton];
  v7[0] = flipButton;
  rotateButton = [(PUCropToolController *)self rotateButton];
  v7[1] = rotateButton;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (void)didResignActiveTool
{
  [(PUCropToolController *)self setModelLoadingSuspended:0];
  [(PUCropToolController *)self setContentViewsHidden:0];
  cropView = [(PUCropToolController *)self cropView];
  [cropView setAutoloopComposition:0];

  v4.receiver = self;
  v4.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v4 didResignActiveTool];
}

- (void)handleResigningCropTool
{
  if ([(PUCropToolController *)self _needsRecomposeCropRect])
  {
    cropView = [(PUCropToolController *)self cropView];
    [(PUCropToolController *)self viewCropRect];
    [cropView setImageCropRectFromViewCropRect:0 animated:?];

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

  compositionController = [(PUPhotoEditToolController *)self compositionController];
  cropAdjustmentController = [compositionController cropAdjustmentController];

  [cropAdjustmentController cropRect];
  if (v12 < 1.0 || v11 < 1.0)
  {
    compositionController2 = [(PUPhotoEditToolController *)self compositionController];
    adjustmentConstants = [MEMORY[0x1E69BE360] adjustmentConstants];
    pICropAdjustmentKey = [adjustmentConstants PICropAdjustmentKey];
    [compositionController2 removeAdjustmentWithKey:pICropAdjustmentKey];
  }

  else if ([cropAdjustmentController enabled])
  {
    compositionController3 = [(PUPhotoEditToolController *)self compositionController];
    adjustmentConstants2 = [MEMORY[0x1E69BE360] adjustmentConstants];
    pICropAdjustmentKey2 = [adjustmentConstants2 PICropAdjustmentKey];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47__PUCropToolController_handleResigningCropTool__block_invoke_483;
    v20[3] = &unk_1E7B7AF80;
    v20[4] = self;
    [compositionController3 modifyAdjustmentWithKey:pICropAdjustmentKey2 modificationBlock:v20];
  }
}

void __47__PUCropToolController_handleResigningCropTool__block_invoke_483(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 cropRect];
  [*(*(a1 + 32) + 1480) integralCropRect:?];
  [v3 setCropRect:?];
}

- (void)prepareForSave:(BOOL)save
{
  if (save)
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
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  composition = [compositionController composition];
  v5 = [composition copy];
  [(PUCropToolController *)self setLastKnownComposition:v5];

  [(PUCropToolController *)self setContentViewsHidden:1];
  rotateSnapshotView = [(PUCropToolController *)self rotateSnapshotView];
  [rotateSnapshotView removeFromSuperview];

  [(PUCropToolController *)self setRotateSnapshotView:0];
  [(PUCropToolController *)self _cancelDelayedRecomposeCropRect];
  [(PUCropToolController *)self handleResigningCropTool];
  cropView = [(PUCropToolController *)self cropView];
  videoMediaView = [cropView videoMediaView];
  player = [videoMediaView player];

  [player pause];
  v17 = 0uLL;
  v18 = 0;
  if (player)
  {
    [player currentTime];
    if (BYTE12(v17))
    {
      delegate = [(PUPhotoEditToolController *)self delegate];
      mediaView = [delegate mediaView];
      player2 = [mediaView player];
      v15 = v17;
      v16 = v18;
      [player2 seekToTime:&v15 exact:1 forceSeek:1];
    }
  }

  cropView2 = [(PUCropToolController *)self cropView];
  [cropView2 tearDownMediaViewAndLayers];

  badgeView = [(PUCropToolController *)self badgeView];
  [badgeView setAlpha:0.0];
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
  image = [(PUCropToolController *)self image];
  if (image)
  {
    if (![(PUCropToolController *)self isActiveTool]|| [(PUCropToolController *)self needsMediaLoad])
    {
      goto LABEL_10;
    }

LABEL_8:
    cropOverlayView = [(PUCropToolController *)self cropOverlayView];
    [cropOverlayView setMaskedContentVisible:0];

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

  delegate = [(PUPhotoEditToolController *)self delegate];
  if (![delegate isStandardVideo] || !-[PUCropToolController isActiveTool](self, "isActiveTool"))
  {

    goto LABEL_10;
  }

  needsMediaLoad = [(PUCropToolController *)self needsMediaLoad];

  if (!needsMediaLoad)
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
  lastKnownComposition = [(PUCropToolController *)self lastKnownComposition];
  if (lastKnownComposition)
  {
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    lastKnownComposition2 = [(PUCropToolController *)self lastKnownComposition];
    v6 = [compositionController isEqual:lastKnownComposition2 visualChangesOnly:1] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  compositionController2 = [(PUPhotoEditToolController *)self compositionController];
  v8 = [compositionController2 adjustmentControllerForKey:*MEMORY[0x1E69BE048]];

  if (v8)
  {
    enabled = [v8 enabled];
  }

  else
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    enabled = [delegate hasLoopingVideoAdjustment];
  }

  cropView = [(PUCropToolController *)self cropView];
  [cropView setMuted:enabled];

  if (v6)
  {
    [(PUCropToolController *)self setNeedsImageLoad:1];
  }

  [(PUCropToolController *)self setNeedsMediaLoad:1];
  [(PUCropToolController *)self _loadImageIfNeededWithCompletion:0];
  valuesCalculator = [(PUPhotoEditToolController *)self valuesCalculator];
  [valuesCalculator precomputeGeometricValues];

  [(PUCropToolController *)self setWantsPreviewViewHidden:0];
  [(PUCropToolController *)self setContentViewsHidden:1];
}

- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
  v27.receiver = self;
  v27.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v27 setLayoutOrientation:orientation withTransitionCoordinator:coordinatorCopy];
  if (layoutOrientation != orientation)
  {
    if ([(PUCropToolController *)self isViewLoaded])
    {
      view = [(PUCropToolController *)self view];
    }

    else
    {
      view = 0;
    }

    rotateButton = [(PUCropToolController *)self rotateButton];
    aspectButton = [(PUCropToolController *)self aspectButton];
    if (view && [(PUCropToolController *)self isActiveTool]&& rotateButton | aspectButton)
    {
      [(PUCropToolController *)self setRotateButton:0];
      [(PUCropToolController *)self setAspectButton:0];
      [(PUCropToolController *)self _invalidateConstraintsForKey:@"PUCropActionButtonConstraints"];
      [(PUCropToolController *)self _updateCropActionButtons];
      if (coordinatorCopy)
      {
        [view layoutIfNeeded];
        rotateButton2 = [(PUCropToolController *)self rotateButton];
        [rotateButton2 setAlpha:0.0];

        aspectButton2 = [(PUCropToolController *)self aspectButton];
        [aspectButton2 setAlpha:0.0];

        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __71__PUCropToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke;
        v23[3] = &unk_1E7B76570;
        v24 = rotateButton;
        v25 = aspectButton;
        selfCopy = self;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __71__PUCropToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke_2;
        v20[3] = &unk_1E7B7AC08;
        v21 = v24;
        v22 = v25;
        [coordinatorCopy animateAlongsideTransition:v23 completion:v20];
      }

      else
      {
        [rotateButton removeFromSuperview];
        [aspectButton removeFromSuperview];
      }
    }

    photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
    currentLayoutStyle = [photoEditSpec currentLayoutStyle];

    cropAspectViewController = [(PUCropToolController *)self cropAspectViewController];
    if (cropAspectViewController)
    {
      v16 = currentLayoutStyle == 4;
    }

    else
    {
      v16 = 1;
    }

    v17 = !v16;

    adjustmentPickerView = [(PUCropToolController *)self adjustmentPickerView];
    [adjustmentPickerView setHidden:v17];

    badgeView = [(PUCropToolController *)self badgeView];
    [badgeView setHidden:v17];

    [(PUCropToolController *)self _invalidateConstraintsForKey:@"PUCropCanvasConstraints"];
    [(PUCropToolController *)self _invalidateConstraintsForKey:@"PUCropTiltControlConstraints"];
    [(PUCropToolController *)self _invalidateConstraintsForKey:@"PUCropToggleConstraints"];
    [(PUCropToolController *)self setNeedsModelLoad:1];
    [view setNeedsUpdateConstraints];
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

- (void)_setContentViewsHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  completionCopy = completion;
  if (self->_contentViewsHidden != hiddenCopy)
  {
    self->_contentViewsHidden = hiddenCopy;
    [(PUCropToolController *)self setContentViewsHiddenAnimationCount:[(PUCropToolController *)self contentViewsHiddenAnimationCount]+ 1];
    v9 = !hiddenCopy;
    v10 = 0.0;
    if (animatedCopy)
    {
      v11 = 0.3;
    }

    else
    {
      v11 = 0.0;
    }

    cropAspect = [(PUCropToolController *)self cropAspect];
    v13 = cropAspect;
    if (cropAspect)
    {
      if ([cropAspect isFreeformCrop])
      {
        v10 = 0.0;
      }

      else
      {
        v10 = !hiddenCopy;
      }
    }

    cropOverlayView = [(PUCropToolController *)self cropOverlayView];
    [cropOverlayView setAlpha:v9];

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
    v17 = completionCopy;
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

- (void)configureForAdjustmentCategory:(int64_t)category
{
  if (self->_aspectButton)
  {
    cropAspectViewController = self->_cropAspectViewController;
    v4 = category != 7;
    v5 = cropAspectViewController == 0;
    if (cropAspectViewController)
    {
      v6 = 0;
    }

    else
    {
      v6 = category == 6;
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

- (void)setFocusingViewForInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  adjustmentsViewController = [(PUCropToolController *)self adjustmentsViewController];
  v19 = adjustmentsViewController;
  if (interactionCopy)
  {
    v6 = 0.0;
    v7 = 0.0;
    if ([(PUCropToolController *)self isTrackingAdjustmentControl])
    {
      [v19 hideUnselectedAdjustments:1];
      v7 = 1.0;
    }

    view = [v19 view];
    [view setAlpha:v7];
  }

  else
  {
    [adjustmentsViewController hideUnselectedAdjustments:0];
    view2 = [v19 view];
    v6 = 1.0;
    [view2 setAlpha:1.0];

    videoScrubberView = [(PUCropToolController *)self videoScrubberView];
    [videoScrubberView alpha];
    v12 = v11;

    if (v12 <= 0.0)
    {
      goto LABEL_7;
    }
  }

  playPauseButton = [(PUCropToolController *)self playPauseButton];
  [playPauseButton setAlpha:v6];

LABEL_7:
  cropAspect = [(PUCropToolController *)self cropAspect];
  v15 = cropAspect;
  if (cropAspect)
  {
    isFreeformCrop = [cropAspect isFreeformCrop];
  }

  else
  {
    isFreeformCrop = 1;
  }

  v17 = (((interactionCopy | isFreeformCrop) & 1) == 0);
  aspectRatioLockButton = [(PUCropToolController *)self aspectRatioLockButton];
  [aspectRatioLockButton setAlpha:v17];
}

- (BOOL)canResetToDefaultValue
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  cropAdjustmentController = [compositionController cropAdjustmentController];

  if (cropAdjustmentController)
  {
    cropModel = [(PUCropToolController *)self cropModel];
    [cropModel masterImageSize];
    if ([cropAdjustmentController isCropIdentityForImageSize:?])
    {
      enabled = 0;
    }

    else
    {
      enabled = [cropAdjustmentController enabled];
    }
  }

  else
  {
    enabled = 0;
  }

  return enabled;
}

- (void)prepareForToolTransitionWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(PUPhotoEditToolController *)self delegate];
  isStandardVideo = [delegate isStandardVideo];

  if (isStandardVideo)
  {
    [(PUCropToolController *)self basePhotoInvalidated];
  }

  [(PUCropToolController *)self _loadImageIfNeededWithCompletion:completionCopy];
}

- (void)cropTransformedImageViewDidEndTracking:(id)tracking
{
  [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
  cropOverlayView = [(PUCropToolController *)self cropOverlayView];
  [(PUCropToolController *)self viewCropRect];
  [cropOverlayView setCropRect:?];

  cropView = [(PUCropToolController *)self cropView];
  [(NUCropModel *)self->_cropModel cropRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(PUCropToolController *)self viewCropRect];
  [cropView setModelCropRect:v7 viewCropRect:{v9, v11, v13, v14, v15, v16, v17}];

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

- (void)cropTransformedImageViewDidTrack:(id)track
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];

  if (!compositionController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:2775 description:@"Need a composition to perform this operation"];
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

- (void)cropTransformedImageViewWillBeginTracking:(id)tracking
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
      cropView = [(PUCropToolController *)self cropView];
      [cropView setImageCropRectFromViewCropRect:1 animated:{v8, v10, v11, v12}];

      cropView2 = [(PUCropToolController *)self cropView];
      [(NUCropModel *)self->_cropModel cropRect];
      [cropView2 setModelCropRect:? viewCropRect:?];
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

- (void)mediaTimelineControlViewDidEndChanging:(id)changing
{
  [(PUCropToolController *)self setIsScrubbingVideo:0];
  if ([(PUCropToolController *)self wasPlayingBeforeBeginningToScrubVideo])
  {
    v4 = +[PUPhotoEditProtoSettings sharedInstance];
    pauseAfterMovingPlayhead = [v4 pauseAfterMovingPlayhead];

    if ((pauseAfterMovingPlayhead & 1) == 0)
    {
      cropView = [(PUCropToolController *)self cropView];
      videoMediaView = [cropView videoMediaView];
      player = [videoMediaView player];
      [player play];
    }

    playPauseButton = [(PUCropToolController *)self playPauseButton];
    [playPauseButton setSelected:pauseAfterMovingPlayhead ^ 1u];
  }

  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
}

- (void)mediaTimelineControlViewDidChangeValue:(id)value
{
  valueCopy = value;
  cropView = [(PUCropToolController *)self cropView];
  videoMediaView = [cropView videoMediaView];
  player = [videoMediaView player];

  if (!player)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_5:
    v8 = 600;
    goto LABEL_6;
  }

  [player currentTime];
  v8 = v18;
  if (!v18)
  {
    goto LABEL_5;
  }

LABEL_6:
  memset(&v16, 0, sizeof(v16));
  [valueCopy currentValue];
  CMTimeMakeWithSeconds(&v16, v9, v8);
  memset(&v15, 0, sizeof(v15));
  [valueCopy minValue];
  v11 = v10;

  CMTimeMakeWithSeconds(&v15, v11, v8);
  if (v16.flags & 1) != 0 && (v15.flags)
  {
    memset(&v14, 0, sizeof(v14));
    lhs = v16;
    v12 = v15;
    CMTimeSubtract(&v14, &lhs, &v12);
    lhs = v14;
    [player seekToTime:&lhs exact:0];
  }
}

- (void)mediaTimelineControlViewWillBeginChanging:(id)changing
{
  [(PUCropToolController *)self setIsScrubbingVideo:1];
  cropView = [(PUCropToolController *)self cropView];
  videoMediaView = [cropView videoMediaView];
  player = [videoMediaView player];

  [player playbackRate];
  [(PUCropToolController *)self setWasPlayingBeforeBeginningToScrubVideo:v6 == 1.0];
  [player pause];
  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:1];
}

- (void)showBadgeView:(BOOL)view animated:(BOOL)animated
{
  viewCopy = view;
  if (animated)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__PUCropToolController_showBadgeView_animated___block_invoke;
    v13[3] = &unk_1E7B7FF98;
    v13[4] = self;
    viewCopy2 = view;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v13 options:&__block_literal_global_462 animations:0.25 completion:0.0];
  }

  else
  {
    badgeView = [(PUCropToolController *)self badgeView];
    [badgeView setAlpha:viewCopy];

    v7 = !viewCopy;
    videoScrubberView = [(PUCropToolController *)self videoScrubberView];
    [videoScrubberView setAlpha:v7];

    videoScrubberView2 = [(PUCropToolController *)self videoScrubberView];
    [videoScrubberView2 alpha];
    v10 = v9;
    playPauseButton = [(PUCropToolController *)self playPauseButton];
    [playPauseButton setAlpha:v10];
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
  videoScrubberView = [(PUCropToolController *)self videoScrubberView];
  if (videoScrubberView)
  {
    v4 = videoScrubberView;
    isScrubbingVideo = [(PUCropToolController *)self isScrubbingVideo];

    if (!isScrubbingVideo)
    {
      cropView = [(PUCropToolController *)self cropView];
      videoMediaView = [cropView videoMediaView];
      v8 = videoMediaView;
      if (videoMediaView)
      {
        mediaView = videoMediaView;
      }

      else
      {
        delegate = [(PUPhotoEditToolController *)self delegate];
        mediaView = [delegate mediaView];
      }

      memset(&v36, 0, sizeof(v36));
      player = [mediaView player];
      v12 = player;
      if (player)
      {
        [player mediaDuration];
      }

      else
      {
        memset(&v36, 0, sizeof(v36));
      }

      memset(&v35, 0, sizeof(v35));
      CMTimeMake(&v35, 0, v36.timescale);
      memset(&v34, 0, sizeof(v34));
      player2 = [mediaView player];
      v14 = player2;
      if (player2)
      {
        [player2 currentTime];
      }

      else
      {
        memset(&v34, 0, sizeof(v34));
      }

      compositionController = [(PUPhotoEditToolController *)self compositionController];
      trimAdjustmentController = [compositionController trimAdjustmentController];

      if (trimAdjustmentController)
      {
        [trimAdjustmentController startTime];
        if (v33)
        {
          [trimAdjustmentController endTime];
          if (v32)
          {
            [trimAdjustmentController startTime];
            v35 = time;
            [trimAdjustmentController endTime];
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
        videoScrubberView2 = [(PUCropToolController *)self videoScrubberView];
        *&v19 = Seconds;
        [videoScrubberView2 setMinValue:v19];

        time = v36;
        v20 = CMTimeGetSeconds(&time);
        videoScrubberView3 = [(PUCropToolController *)self videoScrubberView];
        *&v22 = v20;
        [videoScrubberView3 setMaxValue:v22];

        time = v34;
        v23 = CMTimeGetSeconds(&time);
        videoScrubberView4 = [(PUCropToolController *)self videoScrubberView];
        *&v25 = v23;
        [videoScrubberView4 setCurrentValue:v25];

        player3 = [mediaView player];
        if ([player3 playbackState] == 3)
        {
          time = v34;
          lhs = v36;
          v27 = CMTimeCompare(&time, &lhs) != 0;
        }

        else
        {
          v27 = 0;
        }

        playPauseButton = [(PUCropToolController *)self playPauseButton];
        [playPauseButton setSelected:v27];
      }
    }
  }
}

- (void)_beginObservingVideoPlayer
{
  cropView = [(PUCropToolController *)self cropView];
  videoMediaView = [cropView videoMediaView];
  player = [videoMediaView player];

  videoScrubberTimeObserver = [(PUCropToolController *)self videoScrubberTimeObserver];
  if (!videoScrubberTimeObserver || (v7 = videoScrubberTimeObserver, [(PUCropToolController *)self videoScrubberObservedPlayer], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, player != v8))
  {
    videoScrubberTimeObserver2 = [(PUCropToolController *)self videoScrubberTimeObserver];

    if (videoScrubberTimeObserver2)
    {
      videoScrubberObservedPlayer = [(PUCropToolController *)self videoScrubberObservedPlayer];
      videoScrubberTimeObserver3 = [(PUCropToolController *)self videoScrubberTimeObserver];
      [videoScrubberObservedPlayer removeObserver:videoScrubberTimeObserver3];
    }

    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __50__PUCropToolController__beginObservingVideoPlayer__block_invoke;
    v16 = &unk_1E7B7B568;
    objc_copyWeak(&v17, &location);
    v12 = [player addPlaybackTimeObserver:&v13];
    [(PUCropToolController *)self setVideoScrubberTimeObserver:v12, v13, v14, v15, v16];

    [(PUCropToolController *)self setVideoScrubberObservedPlayer:player];
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
  cropView = [(PUCropToolController *)self cropView];
  videoMediaView = [cropView videoMediaView];
  player = [videoMediaView player];

  if ([player playbackState] == 3)
  {
    [player pause];
  }

  else
  {
    [player play];
  }
}

- (void)createVideoScrubber
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  isStandardVideo = [delegate isStandardVideo];

  if (isStandardVideo)
  {
    videoScrubberView = [(PUCropToolController *)self videoScrubberView];

    if (!videoScrubberView)
    {
      v6 = objc_alloc_init(PUAVKitMediaTimelineView);
      videoScrubberView = self->_videoScrubberView;
      self->_videoScrubberView = v6;

      asset = [(PUPhotoEditToolController *)self asset];
      mediaSubtypes = [asset mediaSubtypes];

      v10 = 4.0;
      if ((*&mediaSubtypes & 0x100000) == 0)
      {
        v10 = 1.0;
      }

      [(PUAVKitMediaTimelineView *)self->_videoScrubberView setWhiteValue:v10];
      [(PUAVKitMediaTimelineView *)self->_videoScrubberView setDelegate:self];
      [(PUAVKitMediaTimelineView *)self->_videoScrubberView setOverrideUserInterfaceStyle:2];
      [(PUAVKitMediaTimelineView *)self->_videoScrubberView setShowsTimeLabels:1];
      [(PUAVKitMediaTimelineView *)self->_videoScrubberView setPlaying:1];
      [(PUAVKitMediaTimelineView *)self->_videoScrubberView setAlpha:0.0];
      view = [(PUCropToolController *)self view];
      [view addSubview:self->_videoScrubberView];

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

      view2 = [(PUCropToolController *)self view];
      [view2 addSubview:self->_playPauseButton];

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

- (void)setAspectRatioLocked:(BOOL)locked
{
  if (locked)
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

- (id)bestAspectRatioForWidth:(unint64_t)width height:(unint64_t)height
{
  v5 = [[PUCropAspect alloc] initWithWidth:width height:height];
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

- (void)_userChangedAspectRatioLocked:(BOOL)locked
{
  lockedCopy = locked;
  aspectRatioLockButton = [(PUCropToolController *)self aspectRatioLockButton];
  [aspectRatioLockButton frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view = [(PUCropToolController *)self view];
  aspectRatioLockButton2 = [(PUCropToolController *)self aspectRatioLockButton];
  superview = [aspectRatioLockButton2 superview];
  [view convertRect:superview fromView:{v7, v9, v11, v13}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if (lockedCopy)
  {
    v25 = @"PHOTOEDIT_CROP_ASPECT_RATIO_LOCKED";
  }

  else
  {
    v25 = @"PHOTOEDIT_CROP_ASPECT_RATIO_UNLOCKED";
  }

  v26 = PULocalizedString(v25);
  delegate = [(PUPhotoEditToolController *)self delegate];
  [delegate transientBadgeWidthForText:v26];
  v29 = v28;

  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = v22;
  v45.size.height = v24;
  MinX = CGRectGetMinX(v45);
  view2 = [(PUCropToolController *)self view];
  [view2 bounds];
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
  if (MinX >= v32 || !lockedCopy)
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

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v39 = [MEMORY[0x1E696AD98] numberWithBool:lockedCopy];
  [standardUserDefaults setObject:v39 forKey:@"PUPhotoEditCropAspectRatioLocked2"];
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
  cropAspect = [(PUCropToolController *)self cropAspect];
  v6 = cropAspect;
  if (cropAspect)
  {
    isFreeformCrop = [cropAspect isFreeformCrop];
  }

  else
  {
    isFreeformCrop = 1;
  }

  [(PUCropToolController *)self _userChangedAspectRatioLocked:isFreeformCrop];
  [(PUCropToolController *)self setAspectRatioLocked:isFreeformCrop];
  v5 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:1];
  [v5 impactOccurred];
}

- (void)updateAspectRatioLockButton
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  maintainCropAspectLockState = [v3 maintainCropAspectLockState];

  if (maintainCropAspectLockState)
  {
    cropAspect = [(PUCropToolController *)self cropAspect];
    v21 = cropAspect;
    if (cropAspect)
    {
      v6 = ([cropAspect isFreeformCrop] ^ 1);
    }

    else
    {
      v6 = 0.0;
    }

    v7 = MEMORY[0x1E69DCAB8];
    v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:17.0];
    v9 = [v7 systemImageNamed:@"lock.fill" withConfiguration:v8];

    aspectRatioLockButton = [(PUCropToolController *)self aspectRatioLockButton];
    [aspectRatioLockButton setImage:v9 forState:0];

    aspectRatioLockButton2 = [(PUCropToolController *)self aspectRatioLockButton];
    v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.95];
    [aspectRatioLockButton2 setTintColor:v12];

    aspectRatioLockButton3 = [(PUCropToolController *)self aspectRatioLockButton];
    layer = [aspectRatioLockButton3 layer];
    LODWORD(v15) = 1063675494;
    [layer setShadowOpacity:v15];

    aspectRatioLockButton4 = [(PUCropToolController *)self aspectRatioLockButton];
    layer2 = [aspectRatioLockButton4 layer];
    [layer2 setShadowOffset:{2.0, 2.0}];

    aspectRatioLockButton5 = [(PUCropToolController *)self aspectRatioLockButton];
    layer3 = [aspectRatioLockButton5 layer];
    [layer3 setShadowRadius:6.0];

    if (![(PUCropToolController *)self rotatingAnimationCount])
    {
      aspectRatioLockButton6 = [(PUCropToolController *)self aspectRatioLockButton];
      [aspectRatioLockButton6 setAlpha:v6];
    }
  }
}

- (void)updateCropAspectRatioOrientation:(int64_t)orientation
{
  cropAspect = [(PUCropToolController *)self cropAspect];

  if (cropAspect)
  {
    cropAspect2 = [(PUCropToolController *)self cropAspect];
    [cropAspect2 width];
    v8 = v7;
    cropAspect3 = [(PUCropToolController *)self cropAspect];
    [cropAspect3 height];
    v11 = v10;
    cropAspectViewController = [(PUCropToolController *)self cropAspectViewController];
    [cropAspectViewController setCurrentCropSize:{v8, v11}];
  }

  cropAspectViewController2 = [(PUCropToolController *)self cropAspectViewController];
  [cropAspectViewController2 setAspectOrientation:orientation];

  cropAspect4 = [(PUCropToolController *)self cropAspect];
  cropAspectViewController3 = [(PUCropToolController *)self cropAspectViewController];
  [cropAspectViewController3 setCurrentCropAspect:cropAspect4];

  cropAspectFlipperView = self->_cropAspectFlipperView;

  [(PUCropAspectFlipperView *)cropAspectFlipperView setAspectRatioOrientation:orientation];
}

- (void)_recomposeCropRectAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(NUCropModel *)self->_cropModel cropRect];
  [(PUCropToolController *)self _suggestedCropRectForImageRect:?];
  PURoundRectToPixel(v5, v6, v7, v8);
  [(PUCropToolController *)self _setViewCropRect:animatedCopy animated:?];
  cropView = [(PUCropToolController *)self cropView];
  [(NUCropModel *)self->_cropModel cropRect];
  [cropView setModelCropRect:? viewCropRect:?];

  [(PUCropToolController *)self _cancelDelayedRecomposeCropRect];
}

- (CGRect)_suggestedCropRectForImageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  [(PUCropToolController *)self _cropCanvasFrame:rect.origin.x];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  geometry = [(PUCropToolController *)self geometry];
  isSizeInverted = [geometry isSizeInverted];
  if (isSizeInverted)
  {
    v16 = height;
  }

  else
  {
    v16 = width;
  }

  if (isSizeInverted)
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
  cropCanvasView = [(PUCropToolController *)self cropCanvasView];
  [cropCanvasView frame];
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

- (CGPoint)_pointForHandle:(unint64_t)handle onCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (handle <= 5 && ((1 << handle) & 0x31) != 0)
  {
    v9 = rect.origin.y;
  }

  else
  {
    if (handle <= 7 && ((0xC8u >> handle) & 1) != 0)
    {
      MaxY = CGRectGetMaxY(rect);
    }

    else
    {
      MaxY = CGRectGetMidY(rect);
    }

    v9 = MaxY;
  }

  if (handle > 6 || ((0x52u >> handle) & 1) == 0)
  {
    if (handle <= 7 && ((0xA4u >> handle) & 1) != 0)
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

- (CGPoint)_pointForHandle:(unint64_t)handle
{
  [(PUCropToolController *)self viewCropRect];

  [(PUCropToolController *)self _pointForHandle:handle onCropRect:?];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGVector)_deltaMaskForHandle:(unint64_t)handle
{
  v3 = handle - 1;
  if (handle - 1 > 6)
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

- (CGVector)_correctInputVector:(CGVector)vector forHandle:(unint64_t)handle onCropRect:(CGRect)rect lockDirection:(BOOL)direction
{
  directionCopy = direction;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PUCropToolController *)self _pointForHandle:rect.origin.x onCropRect:rect.origin.y, rect.size.width, rect.size.height];
  v42 = v13;
  v43 = v14;
  [(PUCropToolController *)self _cropCanvasFrame];
  v16 = v15;
  v18 = v17;
  rect = v19;
  v21 = v20;
  toolControllerSpec = [(PUPhotoEditToolController *)self toolControllerSpec];
  [toolControllerSpec minimumCropSize];
  v24 = v23;
  v45 = v25;

  if (handle <= 6 && ((0x52u >> handle) & 1) != 0)
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
  if (handle <= 7 && ((0xA4u >> handle) & 1) != 0)
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
  if (handle <= 5 && ((1 << handle) & 0x31) != 0)
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

  if (handle <= 7 && ((0xC8u >> handle) & 1) != 0)
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

  dx = vector.dx;
  dy = vector.dy;
  if (directionCopy)
  {
    v32 = 1.0;
    v33 = 1.0;
    v34 = 1.0;
    if (vector.dx != 0.0)
    {
      v33 = (v41 - v42) / vector.dx;
      v34 = (v40 - v42) / vector.dx;
    }

    v35 = 1.0;
    if (vector.dy != 0.0)
    {
      v32 = (MaxY - v43) / vector.dy;
      v35 = (MinY - v43) / vector.dy;
    }

    v36 = fmax(v33, v34);
    v37 = fmax(v32, v35);
    if (v36 < 1.0 || v37 < 1.0)
    {
      v38 = fmin(v36, v37);
      dx = vector.dx * v38;
      dy = vector.dy * v38;
    }
  }

  else
  {
    dx = fmax(v40, fmin(v41, vector.dx + v42)) - v42;
    dy = fmax(MinY, fmin(MaxY, vector.dy + v43)) - v43;
  }

  v39 = dx;
  result.dy = dy;
  result.dx = v39;
  return result;
}

- (CGRect)_addHeight:(double)height toRect:(CGRect)rect anchorTop:(BOOL)top
{
  topCopy = top;
  height = rect.size.height;
  y = rect.origin.y;
  MidX = CGRectGetMidX(rect);
  v11 = height + height;
  cropAspect = [(PUCropToolController *)self cropAspect];
  [cropAspect widthForHeight:v11];
  v14 = v13;

  if (topCopy)
  {
    v15 = y;
  }

  else
  {
    v15 = y - height;
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

- (CGRect)_addWidth:(double)width toRect:(CGRect)rect anchorLeft:(BOOL)left
{
  leftCopy = left;
  width = rect.size.width;
  x = rect.origin.x;
  MidY = CGRectGetMidY(rect);
  v11 = width + width;
  cropAspect = [(PUCropToolController *)self cropAspect];
  [cropAspect heightForWidth:v11];
  v14 = v13;

  v15 = x - width;
  if (leftCopy)
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

- (CGRect)_cropRectFromPanningHandle:(unint64_t)handle byAmount:(CGVector)amount
{
  v99 = *MEMORY[0x1E69E9840];
  [(PUCropToolController *)self initialHandlePanCropRect];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (handle - 1 > 6)
  {
    v14 = 3;
  }

  else
  {
    v14 = qword_1B3D0D1D8[handle - 1];
  }

  [(PUCropToolController *)self _pointForHandle:handle onCropRect:v6, v7, v8, v9];
  v16 = v15;
  v18 = v17;
  [(PUCropToolController *)self _pointForHandle:v14 onCropRect:v10, v11, v12, v13];
  v20 = v19;
  v22 = v21;
  cropAspect = [(PUCropToolController *)self cropAspect];
  [(PUCropToolController *)self _deltaMaskForHandle:handle];
  v25 = v12;
  v26 = v13;
  v28 = amount.dx * v27;
  v29 = amount.dy * v24;
  if (cropAspect)
  {
    v90 = v25;
    v91 = v26;
    v88 = v10;
    [cropAspect ratio];
    if ((handle & 0xFFFFFFFFFFFFFFFCLL) == 4)
    {
      v31 = v30 * v30 + 1.0;
      v32 = 1.0 / sqrtf(v31);
      v33 = v30 * v32;
      if (handle - 5 < 2)
      {
        v32 = -v32;
      }

      [(PUCropToolController *)self _correctInputVector:handle forHandle:1 onCropRect:v33 * (v29 * v32 + v28 * v33) lockDirection:v32 * (v29 * v32 + v28 * v33), v10, v11, v90, v91];
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
      if (handle <= 3)
      {
        [(PUCropToolController *)self _correctInputVector:handle forHandle:1 onCropRect:v28 lockDirection:v29, v10, v11, v90, v91];
        v52 = v51;
        v54 = v53;
        [(PUCropToolController *)self _cropCanvasFrame];
        toolControllerSpec = [(PUPhotoEditToolController *)self toolControllerSpec];
        [toolControllerSpec minimumCropSize];
        v57 = v56;
        v59 = v58;

        if (!handle || ((0xC8u >> handle) & 1) != 0)
        {
          v68 = -v54;
          if (handle)
          {
            v68 = v54;
          }

          [(PUCropToolController *)self _addHeight:handle != 0 toRect:v68 anchorTop:v88, v11, v90, v91];
        }

        else
        {
          v60 = -v52;
          if (((0x52u >> handle) & 1) == 0)
          {
            v60 = v52;
          }

          [(PUCropToolController *)self _addWidth:((0x52u >> handle) & 1) == 0 toRect:v60 anchorLeft:v88, v11, v90, v91];
        }

        [cropAspect constrainRect:0 boundingRect:v57 boundingAngle:v59 minSize:?];
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
    [(PUCropToolController *)self _correctInputVector:handle forHandle:0 onCropRect:v28 lockDirection:amount.dy * v24, v10, v11, v25, v26];
    v44 = v43 + v16;
    v46 = v45 + v18;
    [(PUCropToolController *)self minimumViewCropRectSizeForHandleGesture];
    x = fmin(v20, v44);
    width = vabdd_f64(v20, v44);
    height = vabdd_f64(v22, v46);
    if (width < v47)
    {
      if (((handle < 7) & (0x52u >> handle)) != 0)
      {
        x = x - (v47 - width);
      }

      width = v47;
    }

    y = fmin(v22, v46);
    if (height < v48)
    {
      if ((handle & 0xFFFFFFFFFFFFFFFBLL) == 0 || handle == 5)
      {
        y = y - (v48 - height);
      }

      height = v48;
    }

    if (handle <= 3)
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

  cropView = [(PUCropToolController *)self cropView];
  [cropView validateViewCropRectAgainstModelCropRect:{x, y, width, height}];
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
  badgeShowingExpirationTimer = [(PUCropToolController *)self badgeShowingExpirationTimer];

  if (badgeShowingExpirationTimer)
  {
    badgeShowingExpirationTimer2 = [(PUCropToolController *)self badgeShowingExpirationTimer];
    [badgeShowingExpirationTimer2 invalidate];

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

- (void)showVideoScrubber:(BOOL)scrubber
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PUCropToolController_showVideoScrubber___block_invoke;
  v3[3] = &unk_1E7B7FF98;
  v3[4] = self;
  scrubberCopy = scrubber;
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

- (CGVector)_applyAspectOfCropRect:(CGRect)rect toHandleMovement:(CGVector)movement
{
  v4 = rect.size.height * rect.size.height + rect.size.width * rect.size.width;
  v5 = 1.0 / sqrtf(v4);
  v6 = rect.size.width * v5;
  v7 = rect.size.height * v5;
  v8 = movement.dy * (rect.size.height * v5) + movement.dx * v6;
  v9 = v6 * v8;
  v10 = v7 * v8;
  result.dy = v10;
  result.dx = v9;
  return result;
}

- (void)_handleCropHandlePan:(id)pan
{
  panCopy = pan;
  state = [panCopy state];
  initialLocationsInHandlesByHandle = [(PUCropToolController *)self initialLocationsInHandlesByHandle];
  view = [panCopy view];
  if ((state - 3) <= 1)
  {
    [(PUCropToolController *)self resetToolLabelHidingTimer];
  }

  selectedCropHandleView = [(PUCropToolController *)self selectedCropHandleView];

  if (view == selectedCropHandleView)
  {
    handle = [view handle];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:handle];
    view2 = [(PUCropToolController *)self view];
    [panCopy locationInView:view2];
    v12 = v11;
    v14 = v13;

    if (state == 2)
    {
      v16 = [initialLocationsInHandlesByHandle objectForKeyedSubscript:v9];
      [v16 CGPointValue];
      v18 = v17;
      v20 = v19;

      [(PUCropToolController *)self _cropRectFromPanningHandle:handle byAmount:v12 - v18, v14 - v20];
      [(PUCropToolController *)self setViewCropRect:?];
    }

    else if (state == 1)
    {
      [(PUCropToolController *)self viewCropRect];
      [(PUCropToolController *)self setInitialHandlePanCropRect:?];
      v15 = [MEMORY[0x1E696B098] valueWithCGPoint:{v12, v14}];
      [initialLocationsInHandlesByHandle setObject:v15 forKeyedSubscript:v9];

      [(PUCropToolController *)self showVideoScrubber:0];
    }

    [(PUCropToolController *)self setHasAppliedCropSuggestion:0];
    [(PUCropToolController *)self setHasAppliedPerspectiveSuggestion:0];
    [(PUCropToolController *)self _updateCropToggleButton];
  }
}

- (void)_handleTouchingGesture:(id)gesture
{
  v26 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  state = [gestureCopy state];
  if ([gestureCopy state] == 3)
  {
    if (state != 1)
    {
      goto LABEL_11;
    }

LABEL_5:
    view = [gestureCopy view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      view2 = [gestureCopy view];
      [(PUCropToolController *)self setSelectedCropHandleView:view2];
      cropModel = [(PUCropToolController *)self cropModel];
      [cropModel cropRect];
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
    selfCopy2 = self;
    v21 = 1;
    goto LABEL_14;
  }

  state2 = [gestureCopy state];
  if (state == 1)
  {
    goto LABEL_5;
  }

  if (state2 == 4)
  {
LABEL_11:
    view3 = [gestureCopy view];
    selectedCropHandleView = [(PUCropToolController *)self selectedCropHandleView];

    if (view3 == selectedCropHandleView)
    {
      [(PUCropToolController *)self setSelectedCropHandleView:0];
    }

    [(PUPhotoEditToolController *)self setActivelyAdjusting:0];
    selfCopy2 = self;
    v21 = 0;
LABEL_14:
    [(PUPhotoEditToolController *)selfCopy2 setPerformingLiveInteraction:v21];
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
        cropView = [(PUCropToolController *)self cropView];
        [(PUCropToolController *)self viewCropRect];
        [cropView setImageCropRectFromViewCropRect:1 animated:?];

        [(PUPhotoEditToolController *)self willModifyAdjustment];
        [(PUCropToolController *)self _recomposeCropRectAnimated:1];
        v6 = PULocalizedString(@"PHOTOEDIT_CROP_GENERIC_ACTION_TITLE");
        [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v6];

        cropView2 = [(PUCropToolController *)self cropView];
        [cropView2 updateLayerTransformsAnimated:1];

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
  cropOverlayView = [(PUCropToolController *)self cropOverlayView];
  [cropOverlayView setMaskedContentVisible:1 animated:1];
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
  cropOverlayView = [(PUCropToolController *)self cropOverlayView];
  [cropOverlayView setMaskedContentVisible:0 animated:1];
}

- (void)_showGridAndCancelDelayedHide
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideGrid object:0];
  cropOverlayView = [(PUCropToolController *)self cropOverlayView];
  [cropOverlayView setCropGridVisible:1 animated:1];
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
    cropOverlayView = [(PUCropToolController *)self cropOverlayView];
    [cropOverlayView setCropGridVisible:0 animated:1];
  }
}

- (void)updateViewOrdering
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  cropHandleViewsByHandle = [(PUCropToolController *)self cropHandleViewsByHandle];
  allValues = [cropHandleViewsByHandle allValues];

  v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        view = [(PUCropToolController *)self view];
        [view bringSubviewToFront:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  view2 = [(PUCropToolController *)self view];
  badgeView = [(PUCropToolController *)self badgeView];
  [view2 bringSubviewToFront:badgeView];
}

- (void)_updateAspectRatioControls
{
  [(PUCropToolController *)self viewCropRect];
  if (v3 != v4)
  {
    [(PUCropToolController *)self updateCropAspectRatioOrientation:v3 < v4];
  }

  cropAspect = [(PUCropToolController *)self cropAspect];
  cropAspectViewController = [(PUCropToolController *)self cropAspectViewController];
  [cropAspectViewController setCurrentCropAspect:cropAspect];
}

- (void)_updateCropViewsForInteraction
{
  v38 = *MEMORY[0x1E69E9840];
  isTrackingAdjustmentControl = [(PUCropToolController *)self isTrackingAdjustmentControl];
  cropOverlayView = [(PUCropToolController *)self cropOverlayView];
  [cropOverlayView setStraightenGridVisible:isTrackingAdjustmentControl animated:1];

  cropView = [(PUCropToolController *)self cropView];
  if ([cropView isTracking])
  {
  }

  else
  {
    selectedCropHandleView = [(PUCropToolController *)self selectedCropHandleView];

    if (!selectedCropHandleView)
    {
      goto LABEL_5;
    }
  }

  [(PUCropToolController *)self _showGridAndCancelDelayedHide];
  [(PUCropToolController *)self _cancelDelayedRecomposeCropRect];
LABEL_5:
  cropView2 = [(PUCropToolController *)self cropView];
  if ([cropView2 isTracking])
  {
LABEL_8:

LABEL_9:
    [(PUCropToolController *)self _showMaskedContentAndCancelDelayedHide];
    goto LABEL_10;
  }

  selectedCropHandleView2 = [(PUCropToolController *)self selectedCropHandleView];
  if (selectedCropHandleView2)
  {

    goto LABEL_8;
  }

  isTrackingAdjustmentControl2 = [(PUCropToolController *)self isTrackingAdjustmentControl];

  if (isTrackingAdjustmentControl2)
  {
    goto LABEL_9;
  }

  canResetToDefaultValue = [(PUCropToolController *)self canResetToDefaultValue];
  if ([(PUCropToolController *)self rotatingAnimationCount])
  {
    [(PUCropToolController *)self _hideGrid];
    [(PUCropToolController *)self _hideMaskedContent];
  }

  else if (!canResetToDefaultValue && (-[PUCropToolController animationsByKeyPath](self, "animationsByKeyPath"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 count], v29, v30) || -[PUCropToolController hasAppliedCropSuggestion](self, "hasAppliedCropSuggestion") && (-[PUCropToolController animationsByKeyPath](self, "animationsByKeyPath"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "count"), v31, v32))
  {
    [(PUCropToolController *)self _showGridAndCancelDelayedHide];
    [(PUCropToolController *)self _showMaskedContentAndCancelDelayedHide];
    [(PUCropToolController *)self _cancelDelayedRecomposeCropRect];
  }

  else
  {
    if (canResetToDefaultValue || [(PUCropToolController *)self hasAppliedCropSuggestion])
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
  cropView3 = [(PUCropToolController *)self cropView];
  if ([cropView3 isTracking])
  {
    cropView4 = [(PUCropToolController *)self cropView];
    isDecelerating = [cropView4 isDecelerating];

    if (!isDecelerating)
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
    selectedCropHandleView3 = [(PUCropToolController *)self selectedCropHandleView];
    v13 = selectedCropHandleView3 == 0;
  }

  cropView5 = [(PUCropToolController *)self cropView];
  [cropView5 setUserInteractionEnabled:v13];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  cropHandleViewsByHandle = [(PUCropToolController *)self cropHandleViewsByHandle];
  allValues = [cropHandleViewsByHandle allValues];

  v18 = [allValues countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v22 = *(*(&v33 + 1) + 8 * v21);
        selectedCropHandleView4 = [(PUCropToolController *)self selectedCropHandleView];
        v24 = v12;
        if (v22 != selectedCropHandleView4)
        {
          selectedCropHandleView5 = [(PUCropToolController *)self selectedCropHandleView];
          v26 = selectedCropHandleView5 == 0;

          v24 = v26 & v12;
        }

        [v22 setUserInteractionEnabled:v24];
        ++v21;
      }

      while (v19 != v21);
      v19 = [allValues countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v19);
  }

  [(PUCropToolController *)self updateViewOrdering];
}

- (void)_updateCropToggleButton
{
  if ([(PUCropToolController *)self _hasCropSuggestion])
  {
    hasAppliedCropSuggestion = [(PUCropToolController *)self hasAppliedCropSuggestion];
  }

  else
  {
    hasAppliedCropSuggestion = 0;
  }

  if ([(PUCropToolController *)self _hasPerspectiveSuggestion])
  {
    hasAppliedPerspectiveSuggestion = [(PUCropToolController *)self hasAppliedPerspectiveSuggestion];
  }

  else
  {
    hasAppliedPerspectiveSuggestion = 0;
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

  autoButtonMode = [(PUCropToolController *)self autoButtonMode];
  autoButton = [(PUCropToolController *)self autoButton];
  v10 = autoButton;
  v11 = autoButtonMode == 3;
  v12 = autoButtonMode == 3;
  if (v11)
  {
    [autoButton setSelected:1];

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
    [autoButton setSelected:hasAppliedCropSuggestion || hasAppliedPerspectiveSuggestion];
  }

  if (([(PUCropToolController *)self autoButtonMode]!= 3) | v7 & 1)
  {
    goto LABEL_23;
  }

  v13 = 0;
LABEL_25:
  autoButton2 = [(PUCropToolController *)self autoButton];
  [autoButton2 setEnabled:v13];

  autoButton3 = [(PUCropToolController *)self autoButton];
  [autoButton3 setHidden:v12];

  v16 = MEMORY[0x1E69C3BF0];
  autoButton4 = [(PUCropToolController *)self autoButton];
  if ([autoButton4 isSelected])
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = [v16 configurationWithCursorEffect:v17];
  autoButton5 = [(PUCropToolController *)self autoButton];
  [autoButton5 setPx_configuration:v18];
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

- (void)setAutoButtonMode:(int64_t)mode
{
  if (self->_autoButtonMode != mode)
  {
    self->_autoButtonMode = mode;
    if (mode == 3)
    {
      v4 = @"PHOTOEDIT_CROP_AUTO_RESET";
    }

    else
    {
      v4 = @"PHOTOEDIT_CROP_AUTO_CROP";
    }

    v5 = PULocalizedString(v4);
    localizedUppercaseString = [v5 localizedUppercaseString];
    autoButton = [(PUCropToolController *)self autoButton];
    [autoButton setTitle:localizedUppercaseString];

    autoButtonMode = self->_autoButtonMode;
    autoButton2 = [(PUCropToolController *)self autoButton];
    v16 = autoButton2;
    if (autoButtonMode == 3)
    {
      unselectedConfiguration = [autoButton2 unselectedConfiguration];

      clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
      [unselectedConfiguration setBackground:clearConfiguration];

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      background = [unselectedConfiguration background];
      [background setBackgroundColor:clearColor];

      [unselectedConfiguration setTitleTextAttributesTransformer:&__block_literal_global_20488];
      [unselectedConfiguration setImage:0];
      autoButton3 = [(PUCropToolController *)self autoButton];
      [autoButton3 setOverrideButtonConfiguration:unselectedConfiguration];

      v15 = unselectedConfiguration;
    }

    else
    {
      [autoButton2 setOverrideButtonConfiguration:0];
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
    photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
    v6 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"rotate.left" selectedImageNamed:@"rotate.left.fill" accessibilityLabel:v4 spec:photoEditSpec];

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
    photoEditSpec2 = [(PUPhotoEditToolController *)self photoEditSpec];
    v9 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"arrow.left.and.right.righttriangle.left.righttriangle.right" selectedImageNamed:@"arrow.left.and.right.righttriangle.left.righttriangle.right.fill" accessibilityLabel:v7 spec:photoEditSpec2];

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
    photoEditSpec3 = [(PUPhotoEditToolController *)self photoEditSpec];
    v12 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"aspectratio" selectedImageNamed:@"aspectratio.fill" accessibilityLabel:v10 spec:photoEditSpec3];

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
  aspectButton = [(PUCropToolController *)self aspectButton];
  [aspectButton setSelected:cropAspectViewController != 0];

  cropAspect = [(PUCropToolController *)self cropAspect];
  allowOrientationChange = [cropAspect allowOrientationChange];
  cropAspectFlipperView = [(PUCropToolController *)self cropAspectFlipperView];
  [cropAspectFlipperView setEnabled:allowOrientationChange];

  aspectButton2 = [(PUCropToolController *)self aspectButton];
  if ([aspectButton2 isSelected])
  {
    [v3 photoEditingToolbarButtonSelectedColor];
  }

  else
  {
    [v3 photoEditingToolbarButtonColor];
  }
  v20 = ;

  aspectButton3 = [(PUCropToolController *)self aspectButton];
  [aspectButton3 setTintColor:v20];

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
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    self->_gridVisible = [standardUserDefaults BOOLForKey:@"PUCropGridVisible"];

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

- (void)setHasAppliedCropSuggestion:(BOOL)suggestion
{
  suggestionCopy = suggestion;
  self->_hasAppliedCropSuggestion = suggestion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PUCropToolController_setHasAppliedCropSuggestion___block_invoke;
  v7[3] = &__block_descriptor_33_e36_v16__0__PICropAdjustmentController_8l;
  suggestionCopy2 = suggestion;
  [(PUCropToolController *)self _performLocalCropModelChanges:v7];
  aggregateSession = [(PUPhotoEditToolController *)self aggregateSession];
  v6 = aggregateSession;
  if (suggestionCopy)
  {
    [aggregateSession notifyDidApplyAutoCrop];
  }

  else
  {
    [aggregateSession notifyDidAdjustCrop];
  }

  [(PUCropToolController *)self _updateCropToggleButton];
}

- (void)_toggleCropAndPerspective
{
  _hasCropSuggestion = [(PUCropToolController *)self _hasCropSuggestion];
  _hasPerspectiveSuggestion = [(PUCropToolController *)self _hasPerspectiveSuggestion];
  if (_hasPerspectiveSuggestion)
  {
    hasAppliedPerspectiveSuggestion = [(PUCropToolController *)self hasAppliedPerspectiveSuggestion];
    v6 = ![(PUCropToolController *)self hasAppliedPerspectiveSuggestion];
  }

  else
  {
    hasAppliedPerspectiveSuggestion = 0;
    v6 = 0;
  }

  if ([(PUCropToolController *)self canResetToDefaultValue])
  {
    v7 = v6 | !_hasPerspectiveSuggestion;
  }

  else
  {
    v7 = 0;
  }

  if (_hasCropSuggestion)
  {
    hasAppliedCropSuggestion = [(PUCropToolController *)self hasAppliedCropSuggestion];
    v9 = ![(PUCropToolController *)self hasAppliedCropSuggestion];
  }

  else
  {
    hasAppliedCropSuggestion = 0;
    v9 = 0;
  }

  canResetToDefaultValue = [(PUCropToolController *)self canResetToDefaultValue];
  v11 = v9 | !_hasCropSuggestion;
  if (!canResetToDefaultValue)
  {
    v11 = 0;
  }

  if (hasAppliedCropSuggestion || hasAppliedPerspectiveSuggestion || !_hasCropSuggestion && !_hasPerspectiveSuggestion && ((v11 | v7) & 1) != 0)
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

- (void)_applyCropRect:(CGRect)rect straightenAngle:(double)angle pitchAngle:(double)pitchAngle yawAngle:(double)yawAngle isAutoCrop:(BOOL)crop
{
  cropCopy = crop;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsEmpty(rect))
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
  self->_straightenAngle = angle;
  self->_yawAngle = yawAngle;
  self->_pitchAngle = pitchAngle;
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
  [(NUCropModel *)self->_cropModel setRollAngle:angle constrainCropRectWithTargetArea:v25];
  [(NUCropModel *)self->_cropModel setYawAngle:yawAngle constrainCropRectWithTargetArea:v25];
  [(NUCropModel *)self->_cropModel setPitchAngle:pitchAngle constrainCropRectWithTargetArea:v25];
  [(PUPhotoEditToolController *)self willModifyAdjustment];
  cropView = [(PUCropToolController *)self cropView];
  [cropView setStraightenAngle:angle];

  cropView2 = [(PUCropToolController *)self cropView];
  [cropView2 setYawAngle:yawAngle];

  cropView3 = [(PUCropToolController *)self cropView];
  [cropView3 setPitchAngle:pitchAngle];

  v44.origin.x = v38;
  v44.origin.y = v37;
  v44.size.width = v36;
  v44.size.height = v35;
  if (!CGRectIsEmpty(v44))
  {
    [(PUCropToolController *)self _setViewCropRect:1 animated:v38, v37, v36, v35];
    cropView4 = [(PUCropToolController *)self cropView];
    [(NUCropModel *)self->_cropModel cropRect];
    [cropView4 setModelCropRect:? viewCropRect:?];
  }

  cropView5 = [(PUCropToolController *)self cropView];
  [cropView5 updateLayerTransformsAnimated:1];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __86__PUCropToolController__applyCropRect_straightenAngle_pitchAngle_yawAngle_isAutoCrop___block_invoke;
  v39[3] = &unk_1E7B76508;
  *&v39[5] = angle;
  *&v39[6] = pitchAngle;
  *&v39[7] = yawAngle;
  v39[4] = self;
  v40 = cropCopy;
  [(PUCropToolController *)self _performLocalCropModelChanges:v39];
  v31 = PULocalizedString(@"PHOTOEDIT_CROP_GENERIC_ACTION_TITLE");
  [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v31];

  if (cropCopy)
  {
    aggregateSession = [(PUPhotoEditToolController *)self aggregateSession];
    [aggregateSession notifyDidApplyAutoCrop];

    if (pitchAngle != 0.0 || yawAngle != 0.0)
    {
      aggregateSession2 = [(PUPhotoEditToolController *)self aggregateSession];
      [aggregateSession2 notifyDidApplyPerspectiveAutoCrop];
    }
  }

  self->_hasAppliedPerspectiveSuggestion = cropCopy;
  self->_hasAppliedCropSuggestion = cropCopy;
  [(PUCropToolController *)self _updateCropToggleButton];
  [(PUCropToolController *)self _updatePreviewViewInsets];
  adjustmentsViewController = [(PUCropToolController *)self adjustmentsViewController];
  [adjustmentsViewController resetControls];
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
    autoCropEnabled = [v3 autoCropEnabled];

    if (autoCropEnabled)
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

- (void)_resetAllValuesAnimated:(BOOL)animated skipLayerTransformUpdate:(BOOL)update
{
  animatedCopy = animated;
  _defaultOrientation = [(PUCropToolController *)self _defaultOrientation];
  geometry = [(PUCropToolController *)self geometry];
  v9 = _defaultOrientation == [geometry appliedOrientation];

  [(PUCropToolController *)self _defaultStraightenAngle];
  v11 = v10;
  [(PUCropToolController *)self straightenAngle];
  LODWORD(geometry) = v11 != v12;
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
  if (v9 | !CGRectEqualToRect(v54, v55) | (geometry | v16) & 1)
  {
    v33 = v9;
  }

  else
  {
    v33 = v20;
  }

  cropView = [(PUCropToolController *)self cropView];
  [cropView _resetCropRect];

  self->_straightenAngle = v11;
  self->_pitchAngle = v14;
  self->_yawAngle = v18;
  [(PUCropToolController *)self _defaultViewCropRect];
  [(PUCropToolController *)self _setViewCropRect:animatedCopy & v33 animated:?];
  cropView2 = [(PUCropToolController *)self cropView];
  [(NUCropModel *)self->_cropModel cropRect];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  [(PUCropToolController *)self viewCropRect];
  [cropView2 setModelCropRect:v37 viewCropRect:{v39, v41, v43, v44, v45, v46, v47}];

  if (!update)
  {
    cropView3 = [(PUCropToolController *)self cropView];
    [cropView3 updateLayerTransformsAnimated:animatedCopy & v33];
  }

  [(PUCropToolController *)self setHasAppliedCropSuggestion:0];
  [(PUCropToolController *)self setHasAppliedPerspectiveSuggestion:0];
  [(PUCropToolController *)self _updateCropViewsForInteraction];
  cropModel = [(PUCropToolController *)self cropModel];
  [cropModel makeCurrentAspectRatioFreeForm];

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
    cropAspectViewController = [(PUCropToolController *)self cropAspectViewController];
    [cropAspectViewController setCurrentCropAspect:0];
  }

  adjustmentsViewController = [(PUCropToolController *)self adjustmentsViewController];
  [adjustmentsViewController resetControls];

  aggregateSession = [(PUPhotoEditToolController *)self aggregateSession];
  [aggregateSession notifyDidResetCrop];

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
  cropModel = [(PUCropToolController *)self cropModel];
  [cropModel masterImageRect];
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

- (BOOL)setLockedCropAspectIfNeededIgnoringCurrentLock:(BOOL)lock
{
  lockCopy = lock;
  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  maintainCropAspectLockState = [v5 maintainCropAspectLockState];

  if (maintainCropAspectLockState)
  {
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    cropAdjustmentController = [compositionController cropAdjustmentController];

    [cropAdjustmentController cropRect];
    v10 = v9;
    v12 = v11;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v14 = [standardUserDefaults BOOLForKey:@"PUPhotoEditCropAspectRatioLocked2"];

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

    v19 = [cropAdjustmentController constraintWidth] < 1 || objc_msgSend(cropAdjustmentController, "constraintHeight") < 1;
    v18 = v14 & (v17 && (v19 || lockCopy));
    if (v18 == 1)
    {
      delegate = [(PUPhotoEditToolController *)self delegate];
      [delegate toolControllerOriginalOrientedImageSize:self];
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

- (void)_loadStateFromModelAnimated:(BOOL)animated
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PUCropToolController__loadStateFromModelAnimated___block_invoke;
  v3[3] = &unk_1E7B7FA58;
  v3[4] = self;
  v3[5] = a2;
  animatedCopy = animated;
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

- (void)compositionControllerDidChangeForAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  v10.receiver = self;
  v10.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v10 compositionControllerDidChangeForAdjustments:adjustmentsCopy];
  [(PUCropPerspectiveAdjustmentsDataSource *)self->_dataSource compositionControllerDidChange];
  if (![(PUCropToolController *)self isModelChangeLocal]&& [(PUCropToolController *)self isActiveTool])
  {
    [(PUCropToolController *)self _loadStateFromModelAnimated:1];
  }

  if (([adjustmentsCopy containsObject:*MEMORY[0x1E69BDFC0]] & 1) == 0 && (objc_msgSend(adjustmentsCopy, "containsObject:", *MEMORY[0x1E69BE058]) & 1) == 0)
  {
    [(PUCropToolController *)self basePhotoInvalidated];
    [(PUCropToolController *)self baseMediaInvalidated];
  }

  delegate = [(PUPhotoEditToolController *)self delegate];
  isStandardVideo = [delegate isStandardVideo];

  if (isStandardVideo)
  {
    [(PUCropToolController *)self _beginObservingVideoPlayer];
    cropView = [(PUCropToolController *)self cropView];
    videoMediaView = [cropView videoMediaView];
    player = [videoMediaView player];
    [player pause];

    [(PUCropToolController *)self _updateVideoScrubber];
  }
}

- (void)_updatePreviewViewInsets
{
  view = [(PUCropToolController *)self view];
  [view bounds];
  v49 = v5;
  v50 = v4;
  v7 = v6;
  v48 = v8;

  [(PUCropToolController *)self viewCropRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  view2 = [(PUCropToolController *)self view];
  cropView = [(PUCropToolController *)self cropView];
  [view2 convertRect:cropView fromView:{v10, v12, v14, v16}];
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
      toolControllerSpec = [(PUPhotoEditToolController *)self toolControllerSpec];
      [toolControllerSpec standardBottomBarHeight];
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
      delegate = [(PUPhotoEditToolController *)self delegate];
      [delegate toolController:self didChangePreferredPreviewViewInsetsAnimated:0];
    }
  }
}

- (id)_animateValueFromValue:(double)value toValue:(double)toValue interpolation:(id)interpolation completion:(id)completion
{
  interpolationCopy = interpolation;
  completionCopy = completion;
  if (value == toValue)
  {
    interpolationCopy[2](interpolationCopy, toValue);
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }

    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E69DD4A0] pu_dynamicValueAnimationWithInitialValue:value initialVelocity:0.0 targetValue:toValue stiffness:300.0 dampingFactor:1.0 epsilon:0.01];
    view = [(PUCropToolController *)self view];
    [view setUserInteractionEnabled:0];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__PUCropToolController__animateValueFromValue_toValue_interpolation_completion___block_invoke;
    v19[3] = &unk_1E7B76D68;
    v20 = interpolationCopy;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__PUCropToolController__animateValueFromValue_toValue_interpolation_completion___block_invoke_2;
    v15[3] = &unk_1E7B76498;
    v16 = v20;
    toValueCopy = toValue;
    v17 = completionCopy;
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_animationTargetsByKeyPath;
    self->_animationTargetsByKeyPath = dictionary;

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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = self->_animationsByKeyPath;
    self->_animationsByKeyPath = dictionary;

    animationsByKeyPath = self->_animationsByKeyPath;
  }

  v6 = animationsByKeyPath;

  return v6;
}

- (void)setGridVisible:(BOOL)visible
{
  visibleCopy = visible;
  self->_gridVisible = visible;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:visibleCopy forKey:@"PUCropGridVisible"];
}

- (void)_setAnimationTarget:(id)target forKeyPath:(id)path
{
  targetCopy = target;
  pathCopy = path;
  animationTargetsByKeyPath = [(PUCropToolController *)self animationTargetsByKeyPath];
  v8 = animationTargetsByKeyPath;
  if (targetCopy)
  {
    [animationTargetsByKeyPath setObject:targetCopy forKeyedSubscript:pathCopy];
  }

  else
  {
    [animationTargetsByKeyPath removeObjectForKey:pathCopy];
  }
}

- (id)_animationTargetForKeyPath:(id)path
{
  pathCopy = path;
  animationTargetsByKeyPath = [(PUCropToolController *)self animationTargetsByKeyPath];
  v6 = [animationTargetsByKeyPath objectForKeyedSubscript:pathCopy];

  return v6;
}

- (void)_setAnimation:(id)animation forKeyPath:(id)path
{
  animationCopy = animation;
  pathCopy = path;
  animationsByKeyPath = [(PUCropToolController *)self animationsByKeyPath];
  v8 = animationsByKeyPath;
  if (animationCopy)
  {
    [animationsByKeyPath setObject:animationCopy forKeyedSubscript:pathCopy];
  }

  else
  {
    [animationsByKeyPath removeObjectForKey:pathCopy];
  }
}

- (id)_animationForKeyPath:(id)path
{
  pathCopy = path;
  animationsByKeyPath = [(PUCropToolController *)self animationsByKeyPath];
  v6 = [animationsByKeyPath objectForKeyedSubscript:pathCopy];

  return v6;
}

- (void)_cancelAnimationForKeyPath:(id)path
{
  pathCopy = path;
  v4 = [(PUCropToolController *)self _animationForKeyPath:pathCopy];
  [v4 stop];

  [(PUCropToolController *)self _setAnimation:0 forKeyPath:pathCopy];
}

- (void)_setYawAngle:(double)angle animated:(BOOL)animated
{
  if (vabdd_f64(angle, self->_yawAngle) >= *MEMORY[0x1E69B3DA0])
  {
    self->_yawAngle = angle;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__PUCropToolController__setYawAngle_animated___block_invoke;
    v7[3] = &__block_descriptor_40_e36_v16__0__PICropAdjustmentController_8l;
    *&v7[4] = angle;
    [(PUCropToolController *)self _performLocalCropModelChanges:v7];
    cropView = [(PUCropToolController *)self cropView];
    [cropView setYawAngle:angle];

    [(PUAdjustmentsViewController *)self->_adjustmentsViewController updateControls];
    [(PUCropToolController *)self _updatePreviewViewInsets];
    [(PUCropToolController *)self _updateCropViewsForInteraction];
  }
}

- (void)_setPitchAngle:(double)angle animated:(BOOL)animated
{
  if (vabdd_f64(angle, self->_pitchAngle) >= *MEMORY[0x1E69B3DA0])
  {
    self->_pitchAngle = angle;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__PUCropToolController__setPitchAngle_animated___block_invoke;
    v7[3] = &__block_descriptor_40_e36_v16__0__PICropAdjustmentController_8l;
    *&v7[4] = angle;
    [(PUCropToolController *)self _performLocalCropModelChanges:v7];
    cropView = [(PUCropToolController *)self cropView];
    [cropView setPitchAngle:angle];

    [(PUAdjustmentsViewController *)self->_adjustmentsViewController updateControls];
    [(PUCropToolController *)self _updatePreviewViewInsets];
    [(PUCropToolController *)self _updateCropViewsForInteraction];
  }
}

- (void)_setStraightenAngle:(double)angle animated:(BOOL)animated
{
  if (vabdd_f64(angle, self->_straightenAngle) >= *MEMORY[0x1E69B3DA0])
  {
    self->_straightenAngle = angle;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PUCropToolController__setStraightenAngle_animated___block_invoke;
    v7[3] = &__block_descriptor_40_e36_v16__0__PICropAdjustmentController_8l;
    *&v7[4] = angle;
    [(PUCropToolController *)self _performLocalCropModelChanges:v7];
    cropView = [(PUCropToolController *)self cropView];
    [cropView setStraightenAngle:angle];

    [(PUAdjustmentsViewController *)self->_adjustmentsViewController updateControls];
    [(PUCropToolController *)self _updatePreviewViewInsets];
    [(PUCropToolController *)self _updateCropViewsForInteraction];
  }
}

- (void)_setViewCropRect:(CGRect)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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
    v13 = [(PUCropToolController *)self _animateValueFromValue:v15 toValue:v14 interpolation:!animatedCopy completion:1.0];
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

- (void)_setCropAspect:(id)aspect animated:(BOOL)animated
{
  animatedCopy = animated;
  aspectCopy = aspect;
  if (([aspectCopy isEqual:self->_cropAspect] & 1) == 0)
  {
    objc_storeStrong(&self->_cropAspect, aspect);
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __48__PUCropToolController__setCropAspect_animated___block_invoke;
    v42 = &unk_1E7B7AF80;
    aspectCopy = aspectCopy;
    v43 = aspectCopy;
    [(PUCropToolController *)self _performLocalCropModelChanges:&v39];
    if (aspectCopy && [(PUCropToolController *)self isActiveTool])
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
      geometry = [(PUCropToolController *)self geometry];
      isSizeInverted = [geometry isSizeInverted];

      if (isSizeInverted)
      {
        inverseAspect = [aspectCopy inverseAspect];

        aspectCopy = inverseAspect;
      }

      [(PUCropToolController *)self straightenAngle];
      [aspectCopy constrainRect:v9 boundingRect:v11 boundingAngle:v13 minSize:{v15, v17, v19, v21, v23, v27, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v39, v40, v41, v42}];
      [(PUCropToolController *)self _suggestedCropRectForImageRect:?];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      cropView = [(PUCropToolController *)self cropView];
      [cropView setImageCropRectFromViewCropRect:animatedCopy animated:{v29, v31, v33, v35}];

      [(PUCropToolController *)self _setViewCropRect:animatedCopy animated:v29, v31, v33, v35];
      cropView2 = [(PUCropToolController *)self cropView];
      [(NUCropModel *)self->_cropModel cropRect];
      [cropView2 setModelCropRect:? viewCropRect:?];

      cropView3 = [(PUCropToolController *)self cropView];
      [cropView3 updateLayerTransformsAnimated:animatedCopy];
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

- (void)_removeSnapshotView:(id)view
{
  viewCopy = view;
  rotateSnapshotView = [(PUCropToolController *)self rotateSnapshotView];

  if (rotateSnapshotView == viewCopy)
  {
    [(PUCropToolController *)self setRotateSnapshotView:0];
  }

  delegate = [(PUPhotoEditToolController *)self delegate];
  isLoopingVideo = [delegate isLoopingVideo];

  if (isLoopingVideo)
  {
    v8 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__PUCropToolController__removeSnapshotView___block_invoke;
    v11[3] = &unk_1E7B80DD0;
    v12 = viewCopy;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__PUCropToolController__removeSnapshotView___block_invoke_2;
    v9[3] = &unk_1E7B7F020;
    v10 = v12;
    [v8 animateWithDuration:v11 animations:v9 completion:0.5];
  }

  else
  {
    [viewCopy removeFromSuperview];
  }
}

- (void)_performGeometryChange:(id)change animated:(BOOL)animated
{
  animatedCopy = animated;
  changeCopy = change;
  geometry = [(PUCropToolController *)self geometry];
  appliedOrientation = [geometry appliedOrientation];
  changeCopy[2](changeCopy, geometry);

  appliedOrientation2 = [geometry appliedOrientation];
  cropView = [(PUCropToolController *)self cropView];
  [cropView setOrientation:appliedOrientation2];

  dataSource = [(PUCropToolController *)self dataSource];
  [dataSource setOrientation:appliedOrientation2];

  if (appliedOrientation != appliedOrientation2)
  {
    [(PUAdjustmentsViewController *)self->_adjustmentsViewController resetControls];
    [(PUPhotoEditToolController *)self willModifyAdjustment];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __56__PUCropToolController__performGeometryChange_animated___block_invoke;
    v62[3] = &unk_1E7B80C38;
    v62[4] = self;
    v12 = geometry;
    v63 = v12;
    [(PUCropToolController *)self _performLocalModelChanges:v62];
    memset(&v61, 0, sizeof(v61));
    if (v12)
    {
      [v12 transformFromOrientation:appliedOrientation];
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
    if (animatedCopy)
    {
      v33 = v29;
      v34 = v30;
      v35 = v31;
      v36 = v32;
      rotateSnapshotView = [(PUCropToolController *)self rotateSnapshotView];
      if (!rotateSnapshotView)
      {
        cropView2 = [(PUCropToolController *)self cropView];
        rotateSnapshotView = [cropView2 resizableSnapshotViewFromRect:0 afterScreenUpdates:x withCapInsets:{y, width, height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

        [(PUCropToolController *)self setRotateSnapshotView:rotateSnapshotView];
        view = [(PUCropToolController *)self view];
        [view addSubview:rotateSnapshotView];

        [rotateSnapshotView setFrame:{x, y, width, height}];
      }

      [(PUCropToolController *)self setRotatingAnimationCount:[(PUCropToolController *)self rotatingAnimationCount]+ 1];
      [(PUCropToolController *)self setContentViewsHidden:1];
      v40 = MEMORY[0x1E69DD250];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = v50;
      v53[2] = __56__PUCropToolController__performGeometryChange_animated___block_invoke_3;
      v53[3] = &unk_1E7B76428;
      v41 = rotateSnapshotView;
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

    cropAspect = [(PUCropToolController *)self cropAspect];
    v44 = PLOrientationBetweenOrientations();
    v45 = v44;
    if (cropAspect && (v44 - 5) <= 3)
    {
      inverseAspect = [cropAspect inverseAspect];
      [(PUCropToolController *)self setCropAspect:inverseAspect];

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

- (void)setGainMapValue:(float)value
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_gainMapValue = value;
    cropView = [(PUCropToolController *)self cropView];
    [(PUCropToolController *)self gainMapValue];
    [cropView setGainMapValue:?];
  }
}

- (void)setGainMapImage:(CGImage *)image
{
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != image)
  {
    CGImageRelease(gainMapImage);
    self->_gainMapImage = CGImageRetain(image);
    cropView = [(PUCropToolController *)self cropView];
    [cropView setGainMapImage:self->_gainMapImage];
  }
}

- (void)_handleDidCreateEditedImage:(id)image inputExtent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  imageCopy = image;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  imageOrientation = [compositionController imageOrientation];

  v11 = [objc_alloc(MEMORY[0x1E69BE490]) initWithInputSize:imageOrientation inputOrientation:{width, height}];
  [(PUCropToolController *)self setGeometry:v11];
  cropView = [(PUCropToolController *)self cropView];
  if (width <= 0.0 || height <= 0.0)
  {
    if (!imageCopy)
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
  compositionController2 = [(PUPhotoEditToolController *)self compositionController];
  [(PUCropToolController *)self _setupCropModelFromCompositionController:compositionController2];

  [cropView _setCropModel:self->_cropModel];
  if (imageCopy)
  {
    [cropView setImage:imageCopy];
LABEL_6:
    [(PUCropToolController *)self setImage:imageCopy];
    goto LABEL_8;
  }

  [cropView setImageSize:{width, height}];
LABEL_8:
  [(PUCropToolController *)self setInputExtent:x, y, width, height];
  [(PUCropToolController *)self _installRenderedImageAndDisplayIfNeeded];
}

- (void)_setupCropModelFromCompositionController:(id)controller
{
  cropAdjustmentController = [controller cropAdjustmentController];
  v5 = cropAdjustmentController;
  if (cropAdjustmentController)
  {
    v14 = cropAdjustmentController;
    cropAdjustmentController = [cropAdjustmentController enabled];
    v5 = v14;
    if (cropAdjustmentController)
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
      cropAdjustmentController = [(NUCropModel *)v10 setAspectRatio:v12, v13];
      v5 = v14;
    }
  }

  MEMORY[0x1EEE66BB8](cropAdjustmentController, v5);
}

- (void)_loadMediaIfNeeded
{
  if ([(PUCropToolController *)self needsMediaLoad])
  {
    [(PUCropToolController *)self setNeedsMediaLoad:0];
    delegate = [(PUPhotoEditToolController *)self delegate];
    cropView = [(PUCropToolController *)self cropView];
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    composition = [compositionController composition];

    if ([delegate isStandardVideo])
    {
      v12 = 0uLL;
      v13 = 0;
      mediaView = [delegate mediaView];
      player = [mediaView player];
      v9 = player;
      if (player)
      {
        [player currentTime];
      }

      else
      {
        v12 = 0uLL;
        v13 = 0;
      }

      v10 = v12;
      v11 = v13;
      [cropView setVideoComposition:composition withSeekTime:&v10];
    }

    else if ([delegate isLoopingVideo])
    {
      [cropView setAutoloopComposition:composition];
    }

    [(PUCropToolController *)self _installRenderedImageAndDisplayIfNeeded];
  }
}

- (void)_loadImageIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(PUCropToolController *)self needsImageLoad])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_11;
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    imageLoadingQueue = [(PUCropToolController *)self imageLoadingQueue];

    if (!imageLoadingQueue)
    {
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create("PUCropToolController image loading", v6);
      imageLoadingQueue = self->_imageLoadingQueue;
      self->_imageLoadingQueue = v7;

      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      imageLoadingQueueCompletionBlocks = self->_imageLoadingQueueCompletionBlocks;
      self->_imageLoadingQueueCompletionBlocks = v9;
    }

    if (completionCopy)
    {
      imageLoadingQueueCompletionBlocks = [(PUCropToolController *)self imageLoadingQueueCompletionBlocks];
      v12 = _Block_copy(completionCopy);
      [imageLoadingQueueCompletionBlocks addObject:v12];
    }

    if (![(PUCropToolController *)self imageLoadingInProgress])
    {
      [(PUCropToolController *)self setImageLoadingInProgress:1];
      delegate = [(PUPhotoEditToolController *)self delegate];
      [delegate updateProgressIndicatorAnimated:1];

      imageLoadingQueue2 = [(PUCropToolController *)self imageLoadingQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__PUCropToolController__loadImageIfNeededWithCompletion___block_invoke;
      block[3] = &unk_1E7B80DD0;
      block[4] = self;
      dispatch_async(imageLoadingQueue2, block);
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
  renderer = [(PUCropToolController *)self renderer];

  if (renderer)
  {
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    renderer2 = [(PUCropToolController *)self renderer];
    compositionController2 = renderer2;
    v6 = compositionController;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E69BE658]);
    editSource = [(PUPhotoEditToolController *)self editSource];
    compositionController = [v7 initWithEditSource:editSource renderPriority:3];

    [(PUCropToolController *)self setRenderer:compositionController];
    compositionController2 = [(PUPhotoEditToolController *)self compositionController];
    renderer2 = compositionController;
    v6 = compositionController2;
  }

  [renderer2 setCompositionController:v6];
}

- (void)_performLocalCropModelChanges:(id)changes
{
  changesCopy = changes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PUCropToolController__performLocalCropModelChanges___block_invoke;
  v6[3] = &unk_1E7B80B48;
  v6[4] = self;
  v7 = changesCopy;
  v5 = changesCopy;
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

- (void)_performLocalModelChanges:(id)changes
{
  changesCopy = changes;
  if (!changesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:770 description:{@"Invalid parameter not satisfying: %@", @"changes != nil"}];
  }

  compositionController = [(PUPhotoEditToolController *)self compositionController];

  if (!compositionController)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUCropToolController.m" lineNumber:771 description:@"Need a composition to perform this operation"];
  }

  isModelChangeLocal = [(PUCropToolController *)self isModelChangeLocal];
  [(PUCropToolController *)self setModelChangeLocal:1];
  changesCopy[2]();
  [(PUCropToolController *)self setModelChangeLocal:isModelChangeLocal];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(PUPhotoEditToolController *)self delegate];

  if (delegate != delegateCopy)
  {
    v6.receiver = self;
    v6.super_class = PUCropToolController;
    [(PUPhotoEditToolController *)&v6 setDelegate:delegateCopy];
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
    cropOverlayView = [(PUCropToolController *)self cropOverlayView];
    cropOverlayView2 = [(PUCropToolController *)self cropOverlayView];
    cropWindowView = [cropOverlayView2 cropWindowView];
    [cropWindowView frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    view = [(PUCropToolController *)self view];
    [cropOverlayView convertRect:view toView:{v15, v17, v19, v21}];
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
  cropAspectViewController = [(PUCropToolController *)self cropAspectViewController];
  view = [cropAspectViewController view];

  cropAspectFlipperView = [(PUCropToolController *)self cropAspectFlipperView];
  if (![(PUCropToolController *)self _hasConstraintsForKey:@"PUCropToggleConstraints"])
  {
    v5 = objc_opt_new();
    photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
    currentLayoutStyle = [photoEditSpec currentLayoutStyle];

    layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
    delegate = [(PUPhotoEditToolController *)self delegate];
    v10 = [delegate toolControllerMainContainerView:self];

    v11 = +[PUPhotoEditLayoutSupport isNotchedPhone];
    v12 = 88.0;
    if (v11)
    {
      v12 = 38.0;
    }

    if (layoutOrientation == 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 10.0;
    }

    [(PUCropToolController *)self _updateAspectRatioLayout];
    if ((layoutOrientation - 2) >= 2)
    {
      if (layoutOrientation != 1 || !view)
      {
        goto LABEL_17;
      }

      leftAnchor = [view leftAnchor];
      view2 = [(PUCropToolController *)self view];
      leftAnchor2 = [view2 leftAnchor];
      v30 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      [v5 addObject:v30];

      rightAnchor = [view rightAnchor];
      view3 = [(PUCropToolController *)self view];
      rightAnchor2 = [view3 rightAnchor];
      v34 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      [v5 addObject:v34];

      bottomAnchor = [view bottomAnchor];
      view4 = [(PUCropToolController *)self view];
      bottomAnchor2 = [view4 bottomAnchor];
      v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
      [v5 addObject:v38];

      heightAnchor = [view heightAnchor];
      v40 = [heightAnchor constraintEqualToConstant:38.0];
      [v5 addObject:v40];

      bottomAnchor3 = [cropAspectFlipperView bottomAnchor];
      topAnchor = [view topAnchor];
      v43 = [bottomAnchor3 constraintEqualToAnchor:topAnchor constant:-17.0];
      [v5 addObject:v43];

      centerXAnchor = [cropAspectFlipperView centerXAnchor];
      view5 = [(PUCropToolController *)self view];
      centerXAnchor2 = [view5 centerXAnchor];
    }

    else
    {
      if (!view)
      {
LABEL_17:
        cropAspectViewController2 = [(PUCropToolController *)self cropAspectViewController];
        [cropAspectViewController2 updateAspectButtons];

        view6 = [(PUCropToolController *)self view];
        [view6 pu_addConstraints:v5 forKey:@"PUCropToggleConstraints"];

        goto LABEL_18;
      }

      rightAnchor3 = [view rightAnchor];
      view7 = [(PUCropToolController *)self view];
      rightAnchor4 = [view7 rightAnchor];
      v17 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
      [v5 addObject:v17];

      if (currentLayoutStyle != 4)
      {
        topAnchor2 = [view topAnchor];
        view8 = [(PUCropToolController *)self view];
        topAnchor3 = [view8 topAnchor];
        [(PUCropToolController *)self additionalSafeAreaInsets];
        v50 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:?];
        [v5 addObject:v50];

        bottomAnchor4 = [view bottomAnchor];
        view9 = [(PUCropToolController *)self view];
        bottomAnchor5 = [view9 bottomAnchor];
        v54 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
        [v5 addObject:v54];

        centerYAnchor = [cropAspectFlipperView centerYAnchor];
        centerYAnchor2 = [v10 centerYAnchor];
        v57 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
        v46 = 1;
        [v57 setActive:1];

        centerXAnchor = [cropAspectFlipperView leftAnchor];
        view5 = [v10 safeAreaLayoutGuide];
        leftAnchor3 = [view5 leftAnchor];
        v45 = [centerXAnchor constraintEqualToAnchor:leftAnchor3 constant:v13];
        [v45 setActive:1];
        goto LABEL_16;
      }

      bottomAnchor6 = [view bottomAnchor];
      view10 = [(PUCropToolController *)self view];
      bottomAnchor7 = [view10 bottomAnchor];
      v21 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-27.0];
      [v5 addObject:v21];

      heightAnchor2 = [view heightAnchor];
      v23 = [heightAnchor2 constraintEqualToConstant:38.0];
      [v5 addObject:v23];

      centerXAnchor = [view leftAnchor];
      view5 = [(PUCropToolController *)self view];
      centerXAnchor2 = [view5 leftAnchor];
    }

    leftAnchor3 = centerXAnchor2;
    v45 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v5 addObject:v45];
    v46 = 0;
LABEL_16:

    [cropAspectFlipperView setLayoutOrientation:v46];
    cropAspectViewController3 = [(PUCropToolController *)self cropAspectViewController];
    [cropAspectViewController3 setLayoutOrientation:v46];

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

  toolControllerSpec = [(PUPhotoEditToolController *)self toolControllerSpec];
  [toolControllerSpec minimumCropInset];
  v5 = v4;

  layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
  toolControllerSpec2 = [(PUPhotoEditToolController *)self toolControllerSpec];
  toolControllerSpec4 = toolControllerSpec2;
  if (layoutOrientation == 1)
  {
    [toolControllerSpec2 standardBottomBarHeight];
    v10 = v9;
    v11 = v5;
    v12 = v5;
LABEL_10:

    goto LABEL_11;
  }

  [toolControllerSpec2 standardSideBarWidth];
  v11 = v13;

  toolControllerSpec3 = [(PUPhotoEditToolController *)self toolControllerSpec];
  [toolControllerSpec3 cropAspectRatioScrollHeight];
  v10 = v15;

  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  if (currentLayoutStyle != 4)
  {
    if (layoutOrientation == 3)
    {
      v18 = 30.0;
    }

    else
    {
      v18 = 10.0;
    }

    toolControllerSpec4 = [(PUPhotoEditToolController *)self toolControllerSpec];
    [toolControllerSpec4 cropAspectFlipperWidth];
    v12 = v18 + v19;
    goto LABEL_10;
  }

  v12 = v11;
LABEL_11:
  cropCanvasView = [(PUCropToolController *)self cropCanvasView];
  view = [(PUCropToolController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];

  array = [MEMORY[0x1E695DF70] array];
  leftAnchor = [safeAreaLayoutGuide leftAnchor];
  leftAnchor2 = [cropCanvasView leftAnchor];
  v25 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:-v12];
  [array addObject:v25];

  rightAnchor = [safeAreaLayoutGuide rightAnchor];
  rightAnchor2 = [cropCanvasView rightAnchor];
  v28 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v11];
  [array addObject:v28];

  topAnchor = [safeAreaLayoutGuide topAnchor];
  topAnchor2 = [cropCanvasView topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v5];
  [array addObject:v31];

  bottomAnchor = [safeAreaLayoutGuide bottomAnchor];
  bottomAnchor2 = [cropCanvasView bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v10];
  [array addObject:v34];

  view2 = [(PUCropToolController *)self view];
  [view2 pu_addConstraints:array forKey:@"PUCropCanvasConstraints"];
}

- (BOOL)_hasConstraintsForKey:(id)key
{
  keyCopy = key;
  view = [(PUCropToolController *)self view];
  v6 = [view pu_hasConstraintForKey:keyCopy];

  return v6;
}

- (void)_invalidateConstraintsForKey:(id)key
{
  keyCopy = key;
  if ([(PUCropToolController *)self isViewLoaded])
  {
    view = [(PUCropToolController *)self view];
    [view pu_removeAllConstraintsForKey:keyCopy];
  }
}

- (void)_updateBadgeTextWithInfo:(id)info
{
  localizedName = [info localizedName];
  localizedUppercaseString = [localizedName localizedUppercaseString];

  v5 = MEMORY[0x1B8C6D660]();
  badgeView = [(PUCropToolController *)self badgeView];
  v7 = badgeView;
  if (v5)
  {
    [badgeView setText:localizedUppercaseString];
  }

  else
  {
    [badgeView _setText:localizedUppercaseString];
  }

  badgeView2 = [(PUCropToolController *)self badgeView];
  [badgeView2 sizeToFit];

  [(PUCropToolController *)self _layoutAdjustmentTools];
}

- (void)adjustmentsViewControllerSliderDidEndScrubbing:(id)scrubbing
{
  [(PUCropToolController *)self resetToolLabelHidingTimer];
  [(PUCropToolController *)self setTrackingAdjustmentControl:0];
  [(PUCropToolController *)self _updateCropViewsForInteraction];

  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:0];
}

- (void)adjustmentsViewControllerSliderWillBeginScrubbing:(id)scrubbing
{
  [(PUCropToolController *)self showVideoScrubber:0];
  [(PUCropToolController *)self setTrackingAdjustmentControl:1];
  [(PUCropToolController *)self _updateCropViewsForInteraction];

  [(PUPhotoEditToolController *)self setPerformingLiveInteraction:1];
}

- (void)adjustmentsViewControllerToolDidEndScrubbing:(id)scrubbing
{
  if ([(PUCropToolController *)self toolBadgeDoesHide])
  {

    [(PUCropToolController *)self resetToolLabelHidingTimer];
  }
}

- (void)adjustmentsViewControllerToolWillBeginScrubbing:(id)scrubbing
{
  if ([(PUCropToolController *)self toolBadgeDoesHide])
  {

    [(PUCropToolController *)self showToolLabel];
  }
}

- (id)adjustmentsViewControllerMainContainerView
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  v4 = [delegate toolControllerMainContainerView:self];

  return v4;
}

- (void)adjustmentsViewControllerDidUpdateSelectedControl:(id)control
{
  selectedAdjustmentInfo = [control selectedAdjustmentInfo];
  [(PUCropToolController *)self _updateBadgeTextWithInfo:selectedAdjustmentInfo];

  if ([(PUCropToolController *)self toolBadgeDoesHide])
  {

    [(PUCropToolController *)self resetToolLabelHidingTimer];
  }
}

- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator
{
  v10.receiver = self;
  v10.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v10 setupWithAsset:asset compositionController:controller editSource:source valuesCalculator:calculator];
  dataSource = [(PUCropToolController *)self dataSource];
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  valuesCalculator = [(PUPhotoEditToolController *)self valuesCalculator];
  [dataSource setupWithCompositionController:compositionController valuesCalculator:valuesCalculator];
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
  delegate = [(PUPhotoEditToolController *)self delegate];
  v4 = [delegate toolControllerMainContainerView:self];
  v5 = v4;
  if (v4)
  {
    view = v4;
  }

  else
  {
    view = [(PUCropToolController *)self view];
  }

  v7 = view;

  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  cropOverlayView = [(PUCropToolController *)self cropOverlayView];
  [cropOverlayView setFrame:{v9, v11, v13, v15}];

  view2 = [(PUCropToolController *)self view];
  [v7 bounds];
  UIRectGetCenter();
  [view2 convertPoint:v7 fromView:?];
  v19 = v18;
  v21 = v20;

  cropOverlayView2 = [(PUCropToolController *)self cropOverlayView];
  [cropOverlayView2 setCenter:{v19, v21}];

  [(PUCropToolController *)self _cropCanvasFrame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  cropView = [(PUCropToolController *)self cropView];
  [cropView setCanvasFrame:{v24, v26, v28, v30}];

  if ([(PUCropToolController *)self modelLoadingSuspended])
  {
    goto LABEL_9;
  }

  compositionController = [(PUPhotoEditToolController *)self compositionController];
  if (!compositionController)
  {
    goto LABEL_9;
  }

  v33 = compositionController;
  if (![(PUCropToolController *)self needsModelLoad])
  {
    cropView2 = [(PUCropToolController *)self cropView];
    [cropView2 frame];
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
    cropView3 = [(PUCropToolController *)self cropView];
    [cropView3 setNeedsLayout];

    goto LABEL_11;
  }

LABEL_10:
  [(PUCropToolController *)self _loadStateFromModelAnimated:0];
LABEL_11:
  [(PUCropToolController *)self _layoutAdjustmentTools];
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  [photoEditSpec scrubberViewMargin];
  v51 = v50;
  v115 = v52;
  v54 = v53;

  cropOverlayView3 = [(PUCropToolController *)self cropOverlayView];
  cropWindowView = [cropOverlayView3 cropWindowView];

  view3 = [(PUCropToolController *)self view];
  [cropWindowView frame];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  superview = [cropWindowView superview];
  [view3 convertRect:superview fromView:{v59, v61, v63, v65}];
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
    view4 = [(PUCropToolController *)self view];
    [view4 frame];
    v79 = MinY;
    v80 = CGRectGetWidth(v123);
    toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];
    [toolContainerView frame];
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
  videoScrubberView = [(PUCropToolController *)self videoScrubberView];
  [videoScrubberView intrinsicContentSize];
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
    view5 = [(PUCropToolController *)self view];
    [view5 frame];
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

  playPauseButton = [(PUCropToolController *)self playPauseButton];
  [playPauseButton sizeToFit];

  playPauseButton2 = [(PUCropToolController *)self playPauseButton];
  [playPauseButton2 frame];
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
  playPauseButton3 = [(PUCropToolController *)self playPauseButton];
  [playPauseButton3 setFrame:{MinX, v104, v100, v102}];

  videoScrubberView2 = [(PUCropToolController *)self videoScrubberView];
  [videoScrubberView2 setFrame:{v90 + v116 + v100, v92, v86 + (v116 + v100) * -2.0, v89}];

  videoScrubberView3 = [(PUCropToolController *)self videoScrubberView];
  [videoScrubberView3 setOverrideUserInterfaceStyle:v77];

  videoScrubberView4 = [(PUCropToolController *)self videoScrubberView];

  if (videoScrubberView4)
  {
    view6 = [(PUCropToolController *)self view];
    videoScrubberView5 = [(PUCropToolController *)self videoScrubberView];
    [view6 bringSubviewToFront:videoScrubberView5];
  }

  playPauseButton4 = [(PUCropToolController *)self playPauseButton];

  if (playPauseButton4)
  {
    view7 = [(PUCropToolController *)self view];
    playPauseButton5 = [(PUCropToolController *)self playPauseButton];
    [view7 bringSubviewToFront:playPauseButton5];
  }

  [(PUCropToolController *)self _updateToolLabelAppearanceIfNeeded];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v10 viewDidAppear:appear];
  [(PUCropToolController *)self resetToolLabelHidingTimer];
  cropView = [(PUCropToolController *)self cropView];
  delegate = [(PUPhotoEditToolController *)self delegate];
  [cropView setShouldEnableImageModulation:{objc_msgSend(delegate, "toolControllerShouldEnableImageModulation:", self)}];

  cropView2 = [(PUCropToolController *)self cropView];
  delegate2 = [(PUPhotoEditToolController *)self delegate];
  v8 = [delegate2 toolControllerImageModulationOptions:self];
  [cropView2 setImageModulationOptions:{v8, v9}];
}

- (void)_layoutAdjustmentTools
{
  layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  view = [(PUCropToolController *)self view];
  [view bounds];
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
  if (currentLayoutStyle == 4)
  {
    toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];
    [toolContainerView bounds];
    [(UIView *)self->_adjustmentPickerView setFrame:?];

    [(PUAdjustmentsViewController *)self->_adjustmentsViewController setLayoutDirection:1];
    delegate = [(PUPhotoEditToolController *)self delegate];
    v18 = [delegate toolControllerMainContainerView:self];
    v19 = v18;
    if (v18)
    {
      view2 = v18;
    }

    else
    {
      view2 = [(PUCropToolController *)self view];
    }

    v74 = view2;

    [v74 center];
    v39 = v38;
    v41 = v40;
    superview = [v74 superview];
    view3 = [(PUCropToolController *)self view];
    [superview convertPoint:view3 toView:{v39, v41}];
    v45 = v44;

    toolContainerView2 = [(PUPhotoEditToolController *)self toolContainerView];
    [toolContainerView2 frame];
    MinX = CGRectGetMinX(v78);

    badgeView = [(PUCropToolController *)self badgeView];
    [badgeView bounds];
    v50 = MinX + v49 * -0.5 + -6.0;

    badgeView2 = [(PUCropToolController *)self badgeView];
    v52 = badgeView2;
    v53 = v50;
  }

  else
  {
    if (layoutOrientation == 1)
    {
      [(PUAdjustmentsViewController *)self->_adjustmentsViewController setLayoutDirection:0];
      adjustmentPickerView = self->_adjustmentPickerView;
      v22 = *(MEMORY[0x1E695EFD0] + 16);
      v75[0] = *MEMORY[0x1E695EFD0];
      v75[1] = v22;
      v75[2] = *(MEMORY[0x1E695EFD0] + 32);
      [(UIView *)adjustmentPickerView setTransform:v75];
      toolContainerView3 = [(PUPhotoEditToolController *)self toolContainerView];
      [toolContainerView3 frame];
      [(UIView *)self->_adjustmentPickerView setFrame:?];

      toolContainerView4 = [(PUPhotoEditToolController *)self toolContainerView];
      [toolContainerView4 bounds];
      UIRectGetCenter();
      [(UIView *)self->_adjustmentPickerView setCenter:?];

      toolContainerView5 = [(PUPhotoEditToolController *)self toolContainerView];
      [toolContainerView5 frame];
      MinY = CGRectGetMinY(v77);

      UIRectGetCenter();
      v28 = v27;
      badgeView3 = [(PUCropToolController *)self badgeView];
      [badgeView3 bounds];
      v31 = MinY + v30 * -0.5 + -6.0;

      badgeView4 = [(PUCropToolController *)self badgeView];
      [badgeView4 setCenter:{v28, v31}];

      return;
    }

    toolContainerView6 = [(PUPhotoEditToolController *)self toolContainerView];
    [toolContainerView6 bounds];
    [(UIView *)self->_adjustmentPickerView setFrame:?];

    [(PUAdjustmentsViewController *)self->_adjustmentsViewController setLayoutDirection:1];
    delegate2 = [(PUPhotoEditToolController *)self delegate];
    v35 = [delegate2 toolControllerMainContainerView:self];
    v36 = v35;
    if (v35)
    {
      view4 = v35;
    }

    else
    {
      view4 = [(PUCropToolController *)self view];
    }

    v74 = view4;

    [v74 center];
    v55 = v54;
    v57 = v56;
    superview2 = [v74 superview];
    view5 = [(PUCropToolController *)self view];
    [superview2 convertPoint:view5 toView:{v55, v57}];
    v61 = v60;

    view6 = [(PUCropToolController *)self view];
    [view6 safeAreaInsets];
    v64 = v8 + v63;
    v66 = v10 + v65;
    v68 = v12 - (v63 + v67);
    v70 = v14 - (v65 + v69);

    v79.origin.x = v64;
    v79.origin.y = v66;
    v79.size.width = v68;
    v79.size.height = v70;
    MaxY = CGRectGetMaxY(v79);
    badgeView5 = [(PUCropToolController *)self badgeView];
    [badgeView5 bounds];
    v45 = MaxY + v73 * -0.5;

    badgeView2 = [(PUCropToolController *)self badgeView];
    v52 = badgeView2;
    v53 = v61;
  }

  [badgeView2 setCenter:{v53, v45}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v8 viewWillAppear:appear];
  [(PUCropToolController *)self setNeedsModelLoad:1];
  delegate = [(PUPhotoEditToolController *)self delegate];
  isStandardVideo = [delegate isStandardVideo];

  if (isStandardVideo)
  {
    [(PUCropToolController *)self createVideoScrubber];
    videoScrubberView = [(PUCropToolController *)self videoScrubberView];
    [videoScrubberView setAlpha:0.0];

    playPauseButton = [(PUCropToolController *)self playPauseButton];
    [playPauseButton setAlpha:0.0];
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

  cropView = [(PUCropToolController *)self cropView];
  cropOverlayView = [(PUCropToolController *)self cropOverlayView];
  toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];
  cropHandleViewsByHandle = [(PUCropToolController *)self cropHandleViewsByHandle];
  allValues = [cropHandleViewsByHandle allValues];

  toolControllerSpec = [(PUPhotoEditToolController *)self toolControllerSpec];
  [toolControllerSpec minimumCropHandleViewSize];
  v11 = v10;
  v13 = v12;

  v108 = _NSDictionaryOfVariableBindings(&cfstr_CropviewContai.isa, cropView, toolContainerView, 0);
  v130[0] = @"handleWidth";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v130[1] = @"handleHeight";
  v131[0] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v131[1] = v15;
  v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:2];

  view = [(PUCropToolController *)self view];
  cropCanvasView = [(PUCropToolController *)self cropCanvasView];
  [view addSubview:cropCanvasView];

  view2 = [(PUCropToolController *)self view];
  v106 = cropView;
  [view2 addSubview:cropView];

  view3 = [(PUCropToolController *)self view];
  v109 = cropOverlayView;
  [view3 addSubview:cropOverlayView];

  [(PUCropToolController *)self addChildViewController:self->_adjustmentsViewController];
  view4 = [(PUAdjustmentsViewController *)self->_adjustmentsViewController view];
  adjustmentPickerView = self->_adjustmentPickerView;
  self->_adjustmentPickerView = view4;

  v105 = toolContainerView;
  [toolContainerView addSubview:self->_adjustmentPickerView];
  [(PUCropToolController *)self _updateCropActionButtons];
  v22 = objc_alloc_init(MEMORY[0x1E69DD250]);
  selfCopy = self;
  view5 = [(PUCropToolController *)self view];
  v116 = v22;
  [view5 addSubview:v22];

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v24 = allValues;
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
        isLateral = [v29 isLateral];
        view6 = [(PUCropToolController *)self view];
        v32 = view6;
        if (isLateral)
        {
          [view6 insertSubview:v29 belowSubview:v22];
        }

        else
        {
          [view6 insertSubview:v29 aboveSubview:v22];
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
  view7 = [(PUCropToolController *)self view];
  v37 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[cropView]|" options:0x10000 metrics:v117 views:v108];
  [view7 addConstraints:v37];

  view8 = [(PUCropToolController *)self view];
  v39 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[cropView]|" options:0 metrics:v117 views:v108];
  [view8 addConstraints:v39];

  array = [MEMORY[0x1E695DF70] array];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = v24;
  v40 = [obj countByEnumeratingWithState:&v119 objects:v128 count:16];
  v41 = cropOverlayView;
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
        layoutReferenceItem = [v44 layoutReferenceItem];
        layoutReferenceItem2 = [v41 layoutReferenceItem];
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

          v49 = [MEMORY[0x1E696ACD8] constraintWithItem:layoutReferenceItem attribute:v47 relatedBy:0 toItem:layoutReferenceItem2 attribute:v47 multiplier:1.0 constant:0.0];
          [array addObject:v49];

          v50 = [MEMORY[0x1E696ACD8] constraintWithItem:layoutReferenceItem attribute:v48 relatedBy:0 toItem:layoutReferenceItem2 attribute:v48 multiplier:1.0 constant:0.0];
          [array addObject:v50];
        }

        if ([v44 isLateral])
        {
          adjacentHandles = [v44 adjacentHandles];
          layoutReferenceItem3 = [v44 layoutReferenceItem];
          cropHandleViewsByHandle2 = [(PUCropToolController *)selfCopy cropHandleViewsByHandle];
          v54 = [adjacentHandles objectAtIndexedSubscript:0];
          v55 = [cropHandleViewsByHandle2 objectForKeyedSubscript:v54];
          firstValue = [v55 layoutReferenceItem];

          cropHandleViewsByHandle3 = [(PUCropToolController *)selfCopy cropHandleViewsByHandle];
          v113 = adjacentHandles;
          v57 = [adjacentHandles objectAtIndexedSubscript:1];
          v58 = [cropHandleViewsByHandle3 objectForKeyedSubscript:v57];
          layoutReferenceItem4 = [v58 layoutReferenceItem];

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

          v63 = _NSDictionaryOfVariableBindings(&cfstr_Adjacent1Handl.isa, firstValue, layoutReferenceItem3, layoutReferenceItem4, 0);
          v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:[adjacent1][handleItem][adjacent2]", v61];
          v65 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:v64 options:v60 metrics:0 views:v63];
          [array addObjectsFromArray:v65];

          v66 = [MEMORY[0x1E696ACD8] constraintWithItem:layoutReferenceItem3 attribute:v62 relatedBy:0 toItem:layoutReferenceItem2 attribute:v62 multiplier:1.0 constant:0.0];
          [array addObject:v66];

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

  [MEMORY[0x1E696ACD8] activateConstraints:array];
  aspectRatioLockButton = [(PUCropToolController *)selfCopy aspectRatioLockButton];
  if (!aspectRatioLockButton)
  {
    v68 = +[PUPhotoEditProtoSettings sharedInstance];
    maintainCropAspectLockState = [v68 maintainCropAspectLockState];

    if (!maintainCropAspectLockState)
    {
      goto LABEL_49;
    }

    v70 = [MEMORY[0x1E69C3BE8] buttonWithType:1];
    [(PUCropToolController *)selfCopy setAspectRatioLockButton:v70];

    aspectRatioLockButton2 = [(PUCropToolController *)selfCopy aspectRatioLockButton];
    [aspectRatioLockButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

    aspectRatioLockButton3 = [(PUCropToolController *)selfCopy aspectRatioLockButton];
    [aspectRatioLockButton3 addTarget:selfCopy action:sel__aspectLockButtonTapped forControlEvents:64];

    view9 = [(PUCropToolController *)selfCopy view];
    aspectRatioLockButton4 = [(PUCropToolController *)selfCopy aspectRatioLockButton];
    [view9 addSubview:aspectRatioLockButton4];

    aspectRatioLockButton5 = [(PUCropToolController *)selfCopy aspectRatioLockButton];
    topAnchor = [aspectRatioLockButton5 topAnchor];
    layoutReferenceItem5 = [v41 layoutReferenceItem];
    topAnchor2 = [layoutReferenceItem5 topAnchor];
    v79 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
    [v79 setActive:1];

    aspectRatioLockButton6 = [(PUCropToolController *)selfCopy aspectRatioLockButton];
    rightAnchor = [aspectRatioLockButton6 rightAnchor];
    layoutReferenceItem6 = [v41 layoutReferenceItem];
    rightAnchor2 = [layoutReferenceItem6 rightAnchor];
    v84 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-20.0];
    [v84 setActive:1];

    aspectRatioLockButton = [(PUCropToolController *)selfCopy aspectRatioLockButton];
    [aspectRatioLockButton setEnabled:1];
  }

LABEL_49:
  [(PUCropToolController *)selfCopy updateAspectRatioLockButton];
  v85 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:selfCopy action:sel__accessibilityLongPressChanged_];
  [v85 setMinimumPressDuration:0.15];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  [v85 setEnabled:UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory)];

  view10 = [(PUCropToolController *)selfCopy view];
  [view10 addGestureRecognizer:v85];

  [(PUCropToolController *)selfCopy setAccessibilityLongPressGestureRecognizer:v85];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel__preferredContentSizeCategoryChanged name:*MEMORY[0x1E69DDC48] object:0];

  view11 = [(PUCropToolController *)selfCopy view];
  toolContainerView2 = [(PUPhotoEditToolController *)selfCopy toolContainerView];
  [view11 bringSubviewToFront:toolContainerView2];

  if (MEMORY[0x1B8C6D660]())
  {
    v92 = [PUEditBadgeLabel alloc];
    v93 = +[PUInterfaceManager currentTheme];
    v94 = [(PUEditBadgeLabel *)v92 initWithText:0 style:1 interfaceTheme:v93];
    [(PUCropToolController *)selfCopy setBadgeView:v94];

    badgeView = [(PUCropToolController *)selfCopy badgeView];
    [badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v96 = objc_alloc(MEMORY[0x1E6993830]);
    badgeView = [v96 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [badgeView setUserInteractionEnabled:0];
    photoEditingBadgeViewFillColor = [v107 photoEditingBadgeViewFillColor];
    [badgeView _setFillColor:photoEditingBadgeViewFillColor];

    photoEditingBadgeViewContentColor = [v107 photoEditingBadgeViewContentColor];
    [badgeView _setContentColor:photoEditingBadgeViewContentColor];

    [badgeView _setFillCornerRadius:4.0];
    [badgeView setAlpha:0.0];
    [MEMORY[0x1E6993830] _defaultTextInsets];
    [badgeView _setTextInsets:{v102 + 1.0, v99 + 3.0, v101 + 1.0, v100 + 3.0}];
    [(PUCropToolController *)selfCopy setBadgeView:badgeView];
  }

  view12 = [(PUCropToolController *)selfCopy view];
  badgeView2 = [(PUCropToolController *)selfCopy badgeView];
  [view12 addSubview:badgeView2];

  [(PUCropToolController *)selfCopy px_enableImageModulation];
}

- (void)dealloc
{
  CGImageRelease(self->_gainMapImage);
  cropView = [(PUCropToolController *)self cropView];
  [cropView tearDownMediaViewAndLayers];

  v4.receiver = self;
  v4.super_class = PUCropToolController;
  [(PUPhotoEditToolController *)&v4 dealloc];
}

- (PUCropToolController)initWithNibName:(id)name bundle:(id)bundle
{
  v14.receiver = self;
  v14.super_class = PUCropToolController;
  v4 = [(PUPhotoEditToolController *)&v14 initWithNibName:name bundle:bundle];
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