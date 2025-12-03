@interface PUCleanupToolController
- (BOOL)_canReset;
- (BOOL)_enableFeedback;
- (BOOL)_showFeedbackThumbs;
- (BOOL)isIpadLayout;
- (CGPoint)originalPointFromOverlayViewPoint:(CGPoint)point;
- (CGPoint)transformedPoint:(CGPoint)point;
- (CGSize)imageSize;
- (PLImageGeometry)geometry;
- (PUCleanupToolController)initWithCoder:(id)coder;
- (PUCleanupToolController)initWithNibName:(id)name bundle:(id)bundle;
- (PXEditCleanupFeedbackActionPerformer)feedbackActionPerformer;
- (double)currentRenderViewWidth;
- (double)subjectExclusionMaskBrushRadiusForScreenSpaceRadius:(double)radius;
- (float)brushRadiusForTouchType:(int64_t)type;
- (float)scaledBrushRadiusForTouchType:(int64_t)type;
- (id)_createSubjectExclusionMask;
- (id)_newOverlayMask;
- (id)brushStrokeExclusionMaskForStrokeStartingAtImageSpacePoint:(CGPoint)point withRadius:(double)radius;
- (id)cleanupActionNames;
- (id)feedbackView;
- (id)internalToolActionsForMenu;
- (id)sourceImageOfSize:(CGSize)size;
- (id)toolActionsForMenu;
- (id)trailingToolbarViews;
- (id)transformedImage:(id)image error:(id *)error;
- (id)transformedImageForBrushStrokeExclusionMask:(id)mask;
- (int64_t)currentLayoutStyle;
- (int64_t)segmentationCount;
- (void)_addImageSpaceInpaintingStroke:(id)stroke closeAndFillStroke:(BOOL)fillStroke needsFacePixellation:(BOOL)pixellation recordStroke:(BOOL)recordStroke exclusionMask:(id)mask exclusionMaskHitTestRadius:(double)radius retouchBrush:(BOOL)brush completion:(id)self0;
- (void)_addOverlayIfNeeded;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationWillResignActive:(id)active;
- (void)_brushModeButtonTapped:(id)tapped;
- (void)_createFaceRectsView;
- (void)_createMaskView;
- (void)_createRendererIfNeeded;
- (void)_createVFXMaskOverlays;
- (void)_didRedo:(id)redo;
- (void)_didUndo:(id)undo;
- (void)_disableUI;
- (void)_displayProcessingWithSelectedMask:(id)mask unselectedMaskImage:(id)image exclusionMasks:(id)masks point:(CGPoint)point;
- (void)_displayProcessingWithSelectedMaskImage:(id)image unselectedMaskImage:(id)maskImage exclusionMasks:(id)masks point:(CGPoint)point;
- (void)_donateTipsAppCleanupSignal;
- (void)_handleMaskContextFailure;
- (void)_handleOperationExceedsSizeLimit;
- (void)_interactionOccurred;
- (void)_prepareViewsForCleanupIfReadyAndNotify:(id)notify;
- (void)_removePreparingProgress;
- (void)_reportFeedbackAction:(unint64_t)action;
- (void)_resetTapped:(id)tapped;
- (void)_setBusy:(BOOL)busy;
- (void)_setCleanupMode:(unint64_t)mode;
- (void)_setLastInteractionPixelCount:(int64_t)count;
- (void)_setShowCleanupBrushSizeSlider:(id)slider show:(BOOL)show animate:(BOOL)animate;
- (void)_setupCleanupBrushSizeSlider:(id)slider label:(id)label;
- (void)_setupCleanupBrushSizeSliders;
- (void)_setupResetButton;
- (void)_showCleanupBrushSizeSlider:(id)slider label:(id)label show:(BOOL)show;
- (void)_showPreparingProgress;
- (void)_thermalStateDidChange:(id)change;
- (void)_updateBrushModeButton;
- (void)_updateFaceRectsView;
- (void)_updateFeedbackViewVisibility;
- (void)_updateMaskContext;
- (void)_updateMaskViewForDefaultMode;
- (void)_updateMaskViewForDefaultModeIfNecessary;
- (void)_updateMaskViewWithUnselectedMaskImage:(id)image foregroundMasks:(id)masks backgroundMasks:(id)backgroundMasks;
- (void)_updatePreparingProgressConstraints;
- (void)_updatePromptViewPlatter;
- (void)_updateResetButtonState;
- (void)_updateToolConstraints;
- (void)_updateVFXMaskOverlayWithSelectedMask:(id)mask point:(CGPoint)point;
- (void)addAttachmentsForTapToRadar:(id)radar;
- (void)addDeclutter;
- (void)addImageSpaceInpaintingStroke:(id)stroke exclusionMask:(id)mask closeAndFillStroke:(BOOL)fillStroke needsFacePixellation:(BOOL)pixellation recordStroke:(BOOL)recordStroke completion:(id)completion;
- (void)addObjectRemovalAtImageSpacePoint:(CGPoint)point completion:(id)completion;
- (void)addObjectRemovalAtPoint:(CGPoint)point;
- (void)addObjectRemovalUsingImageSpaceStroke:(id)stroke exclusionMask:(id)mask completion:(id)completion;
- (void)addObjectRemovalUsingStroke:(id)stroke exclusionMask:(id)mask;
- (void)addStroke:(id)stroke closeAndFillStroke:(BOOL)fillStroke completion:(id)completion;
- (void)addUserPromptViewOfType:(unint64_t)type animated:(BOOL)animated;
- (void)checkPotentialInpaintOperation:(id)operation handler:(id)handler;
- (void)compositionControllerDidChangeForAdjustments:(id)adjustments;
- (void)createAllAvailableMasks:(id)masks;
- (void)deleteUserPromptViewAnimated:(BOOL)animated completion:(id)completion;
- (void)didBecomeActiveTool;
- (void)didResignActiveTool;
- (void)feedbackThumbsButtonAction:(id)action;
- (void)hidePromptViewIfNeededAnimated:(BOOL)animated;
- (void)leavingEditWithCancel;
- (void)mediaView:(id)view didZoom:(double)zoom;
- (void)mediaViewDidEndZooming:(id)zooming;
- (void)mediaViewDidScroll:(id)scroll;
- (void)mediaViewIsReady;
- (void)mediaViewWillBeginZooming:(id)zooming;
- (void)modifyInpaintAdjustmentWithBlock:(id)block actionStringKey:(id)key completion:(id)completion;
- (void)ppt_replayCleanupBrushStrokeWithCompletionBlock:(id)block;
- (void)prepareForSave:(BOOL)save;
- (void)previewingOriginalDidStart;
- (void)previewingOriginalDidStop;
- (void)reactivate;
- (void)redoInitiated:(id)initiated;
- (void)reloadToolbarButtons:(BOOL)buttons;
- (void)replayBrushstrokesWithCompletion:(id)completion;
- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator;
- (void)sliderDidScroll:(id)scroll;
- (void)toolControllerWantsToShowOriginal:(BOOL)original;
- (void)undoInitiated:(id)initiated;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willBecomeActiveTool;
- (void)willResignActiveTool;
@end

@implementation PUCleanupToolController

- (void)_createFaceRectsView
{
  if (!self->_faceRectsView)
  {
    if (!self->_retouchVFXOverlay)
    {
      v3 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_ERROR, "Cleanup: _retouchVFXOverlay not present for _createFaceRectsView", v10, 2u);
      }
    }

    v4 = [PUCleanupToolFaceRectsView alloc];
    delegate = [(PUPhotoEditToolController *)self delegate];
    mediaView = [delegate mediaView];
    v7 = [(PUCleanupToolFaceRectsView *)v4 initWithMediaView:mediaView isHDR:self->_needsHDRUI delegate:self];
    faceRectsView = self->_faceRectsView;
    self->_faceRectsView = v7;

    [(PUCleanupToolFaceRectsView *)self->_faceRectsView setUserInteractionEnabled:0];
    [(PUCleanupToolFaceRectsView *)self->_faceRectsView setBackgroundColor:0];
    view = [(PUCleanupToolController *)self view];
    [view insertSubview:self->_faceRectsView aboveSubview:self->_retouchVFXOverlay];

    [(PUCleanupToolFaceRectsView *)self->_faceRectsView setTranslatesAutoresizingMaskIntoConstraints:0];
  }
}

- (void)_updateFaceRectsView
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  retouchShowsFaceRects = [v3 retouchShowsFaceRects];

  if (retouchShowsFaceRects)
  {
    faceRectsView = self->_faceRectsView;
    detectedFaces = [(PIInpaintMaskContext *)self->_maskContext detectedFaces];
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    -[PUCleanupToolFaceRectsView updateDetectedFaces:imageOrientation:](faceRectsView, "updateDetectedFaces:imageOrientation:", detectedFaces, [compositionController imageOrientation]);
  }
}

- (id)sourceImageOfSize:(CGSize)size
{
  v3 = [(PUPhotoEditToolController *)self delegate:size.width];
  mediaView = [v3 mediaView];

  snapshotImage = [mediaView snapshotImage];

  return snapshotImage;
}

- (double)currentRenderViewWidth
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  mediaView = [delegate mediaView];

  _renderView = [mediaView _renderView];
  [_renderView frame];
  v6 = v5;

  return v6;
}

- (int64_t)currentLayoutStyle
{
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  currentLayoutStyle = [photoEditSpec currentLayoutStyle];

  return currentLayoutStyle;
}

- (BOOL)_enableFeedback
{
  feedbackActionPerformer = [(PUCleanupToolController *)self feedbackActionPerformer];
  didLoadInjectedActionPerformer = [feedbackActionPerformer didLoadInjectedActionPerformer];

  return didLoadInjectedActionPerformer;
}

- (BOOL)_showFeedbackThumbs
{
  HasInternalUI = PFOSVariantHasInternalUI();
  v4 = +[PUPhotoEditProtoSettings sharedInstance];
  feedbackUIFCS = [v4 feedbackUIFCS];

  return [(PUCleanupToolController *)self _enableFeedback]& HasInternalUI & (feedbackUIFCS ^ 1);
}

- (void)_updateFeedbackViewVisibility
{
  feedbackView = [(PUCleanupToolController *)self feedbackView];
  if (feedbackView)
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    mediaView = [delegate mediaView];

    [(PUCleanupUserPromptView *)self->_userPromptView alpha];
    [mediaView zoomScale];
    [mediaView minimumZoomScale];
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    inpaintAdjustmentController = [compositionController inpaintAdjustmentController];
    [inpaintAdjustmentController enabled];

    v8 = feedbackView;
    pl_dispatch_on_main_queue();
  }
}

void __56__PUCleanupToolController__updateFeedbackViewVisibility__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PUCleanupToolController__updateFeedbackViewVisibility__block_invoke_2;
  v6[3] = &unk_1E7B7FF98;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__PUCleanupToolController__updateFeedbackViewVisibility__block_invoke_3;
  v3[3] = &unk_1E7B7DC88;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 animateWithDuration:0 delay:v6 options:v3 animations:0.2 completion:0.0];
}

- (id)feedbackView
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (![(PUCleanupToolController *)self _showFeedbackThumbs])
  {
    goto LABEL_6;
  }

  feedbackViewContainer = [(PUCleanupToolController *)self feedbackViewContainer];

  if (feedbackViewContainer)
  {
    feedbackViewContainer2 = [(PUCleanupToolController *)self feedbackViewContainer];
    goto LABEL_7;
  }

  if ([(PUCleanupToolController *)self _enableFeedback])
  {
    v5 = MEMORY[0x1E69DCAD8];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v32[0] = secondaryLabelColor;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v8 = [v5 configurationWithPaletteColors:v7];

    v9 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
    v10 = [v8 configurationByApplyingConfiguration:v9];

    feedbackActionPerformer = [(PUCleanupToolController *)self feedbackActionPerformer];
    v12 = [feedbackActionPerformer actionIconForFeedbackType:1 hasResponse:0];

    feedbackActionPerformer2 = [(PUCleanupToolController *)self feedbackActionPerformer];
    v14 = [feedbackActionPerformer2 actionIconForFeedbackType:2 hasResponse:0];

    v15 = MEMORY[0x1E69DC738];
    v16 = [v12 imageWithConfiguration:v10];
    v17 = [v15 systemButtonWithImage:v16 target:self action:sel_feedbackThumbsButtonAction_];

    v18 = MEMORY[0x1E69DC738];
    v19 = [v14 imageWithConfiguration:v10];
    v20 = [v18 systemButtonWithImage:v19 target:self action:sel_feedbackThumbsButtonAction_];

    v21 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v21 addSubview:v17];
    [v21 addSubview:v20];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = +[PUInterfaceManager currentTheme];
    photoEditingFeedbackPlatterColor = [v22 photoEditingFeedbackPlatterColor];
    [v21 setBackgroundColor:photoEditingFeedbackPlatterColor];

    layer = [v21 layer];
    LODWORD(v25) = 1039516303;
    [layer setShadowOpacity:v25];

    layer2 = [v21 layer];
    [layer2 setShadowOffset:{0.0, 2.0}];

    layer3 = [v21 layer];
    [layer3 setShadowRadius:8.0];

    v28 = *MEMORY[0x1E69796E8];
    layer4 = [v21 layer];
    [layer4 setCornerCurve:v28];

    [v21 setAlpha:0.0];
    [(PUCleanupToolController *)self setFeedbackViewContainer:v21];
    [(PUCleanupToolController *)self setFeedbackThumbsUpButton:v17];
    [(PUCleanupToolController *)self setFeedbackThumbsDownButton:v20];
    view = [(PUCleanupToolController *)self view];
    [view addSubview:v21];

    feedbackViewContainer2 = [(PUCleanupToolController *)self feedbackViewContainer];
  }

  else
  {
LABEL_6:
    feedbackViewContainer2 = 0;
  }

LABEL_7:

  return feedbackViewContainer2;
}

- (void)hidePromptViewIfNeededAnimated:(BOOL)animated
{
  userPromptView = self->_userPromptView;
  if (userPromptView)
  {
    if ([(PUCleanupUserPromptView *)userPromptView type]== 6)
    {
      return;
    }

    userPromptView = self->_userPromptView;
  }

  if (([(PUCleanupUserPromptView *)userPromptView isHidden]& 1) == 0)
  {
    self->_promptViewWasHidden = 1;
    pl_dispatch_on_main_queue();
  }
}

uint64_t __58__PUCleanupToolController_hidePromptViewIfNeededAnimated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PUCleanupToolController_hidePromptViewIfNeededAnimated___block_invoke_2;
    v5[3] = &unk_1E7B80DD0;
    v6 = *(a1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __58__PUCleanupToolController_hidePromptViewIfNeededAnimated___block_invoke_3;
    v4[3] = &unk_1E7B7F020;
    v4[4] = v6;
    return [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v5 options:v4 animations:0.2 completion:0.0];
  }

  else
  {
    [*(a1 + 32) deleteUserPromptViewAnimated:0 completion:0];
    v3 = *(a1 + 32);

    return [v3 _updateFeedbackViewVisibility];
  }
}

uint64_t __58__PUCleanupToolController_hidePromptViewIfNeededAnimated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) deleteUserPromptViewAnimated:0 completion:0];
  v2 = *(a1 + 32);

  return [v2 _updateFeedbackViewVisibility];
}

- (void)deleteUserPromptViewAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_userPromptView)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PUCleanupToolController_deleteUserPromptViewAnimated_completion___block_invoke;
    aBlock[3] = &unk_1E7B80B48;
    aBlock[4] = self;
    v15 = completionCopy;
    v8 = _Block_copy(aBlock);
    v9 = v8;
    if (animatedCopy)
    {
      [(PUCleanupUserPromptView *)self->_userPromptView setAlpha:1.0];
      v10 = MEMORY[0x1E69DD250];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __67__PUCleanupToolController_deleteUserPromptViewAnimated_completion___block_invoke_2;
      v13[3] = &unk_1E7B80DD0;
      v13[4] = self;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __67__PUCleanupToolController_deleteUserPromptViewAnimated_completion___block_invoke_3;
      v11[3] = &unk_1E7B7FA80;
      v12 = v9;
      [v10 animateWithDuration:0 delay:v13 options:v11 animations:0.2 completion:0.0];
    }

    else
    {
      (*(v8 + 2))(v8);
    }
  }
}

uint64_t __67__PUCleanupToolController_deleteUserPromptViewAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1248))
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1248);
    *(v3 + 1248) = 0;

    v2 = *(a1 + 32);
  }

  v5 = *(v2 + 1240);
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *(a1 + 32);
    v7 = *(v6 + 1240);
    *(v6 + 1240) = 0;

    v2 = *(a1 + 32);
  }

  [*(v2 + 1256) invalidate];
  result = *(a1 + 40);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

- (void)addUserPromptViewOfType:(unint64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  userPromptView = self->_userPromptView;
  if (!userPromptView || [(PUCleanupUserPromptView *)userPromptView type]!= type)
  {
    [(PUCleanupToolController *)self deleteUserPromptViewAnimated:0 completion:0];
    v8 = [[PUCleanupUserPromptView alloc] initWithType:type showPlatter:1];
    v9 = self->_userPromptView;
    self->_userPromptView = v8;

    [(PUCleanupUserPromptView *)self->_userPromptView setLayoutDelegate:self];
    [(PUCleanupUserPromptView *)self->_userPromptView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUCleanupUserPromptView *)self->_userPromptView setUserInteractionEnabled:0];
    view = [(PUCleanupToolController *)self view];
    [view addSubview:self->_userPromptView];

    [(PUCleanupUserPromptView *)self->_userPromptView enableAnimation:1];
    view2 = [(PUCleanupToolController *)self view];
    [view2 setNeedsUpdateConstraints];

    if (type - 3 <= 2)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __60__PUCleanupToolController_addUserPromptViewOfType_animated___block_invoke;
      v17[3] = &unk_1E7B7F620;
      v17[4] = self;
      v12 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:0 repeats:v17 block:3.0];
      userPromptViewTimer = self->_userPromptViewTimer;
      self->_userPromptViewTimer = v12;

      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [mainRunLoop addTimer:self->_userPromptViewTimer forMode:*MEMORY[0x1E695DA28]];
    }

    if (animatedCopy)
    {
      [(PUCleanupUserPromptView *)self->_userPromptView setAlpha:0.0];
      v15[4] = self;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __60__PUCleanupToolController_addUserPromptViewOfType_animated___block_invoke_3;
      v16[3] = &unk_1E7B80DD0;
      v16[4] = self;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __60__PUCleanupToolController_addUserPromptViewOfType_animated___block_invoke_4;
      v15[3] = &unk_1E7B7F020;
      [MEMORY[0x1E69DD250] animateWithDuration:v16 animations:v15 completion:0.2];
    }

    else
    {
      [(PUCleanupToolController *)self _updateFeedbackViewVisibility];
    }
  }
}

uint64_t __60__PUCleanupToolController_addUserPromptViewOfType_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__PUCleanupToolController_addUserPromptViewOfType_animated___block_invoke_2;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = v1;
  return [v1 deleteUserPromptViewAnimated:1 completion:v3];
}

- (PLImageGeometry)geometry
{
  geometry = self->_geometry;
  if (!geometry)
  {
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    imageOrientation = [compositionController imageOrientation];

    v6 = objc_alloc(MEMORY[0x1E69BE490]);
    [(PUCleanupToolController *)self imageSize];
    v7 = [v6 initWithInputSize:imageOrientation inputOrientation:?];
    v8 = self->_geometry;
    self->_geometry = v7;

    geometry = self->_geometry;
  }

  v9 = geometry;

  return v9;
}

- (CGSize)imageSize
{
  [(PUCleanupToolController *)self _createRendererIfNeeded];
  renderer = [(PUCleanupToolController *)self renderer];
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  composition = [compositionController composition];
  pipelineFiltersForCropping = [MEMORY[0x1E69BDEF0] pipelineFiltersForCropping];
  v7 = [renderer getGeometryForComposition:composition pipelineFilters:pipelineFiltersForCropping];

  [v7 size];
  NUPixelSizeToCGSize();
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGPoint)transformedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  delegate = [(PUPhotoEditToolController *)self delegate];
  [delegate toolController:0 viewPointFromOriginalPoint:self->_maskView view:{x, y}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)transformedImage:(id)image error:(id *)error
{
  v6 = MEMORY[0x1E69B3DB8];
  imageCopy = image;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  composition = [compositionController composition];
  [(PUCleanupToolController *)self imageSize];
  v10 = [v6 transformedImage:imageCopy forComposition:composition imageSize:error error:?];

  return v10;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  keyCopy = key;
  NSLog(&cfstr_VfxSettingsCha.isa, keyCopy);
  v6 = [keyCopy isEqualToString:@"retouchShowVFXControls"];

  if (v6)
  {
    v7 = +[PUPhotoEditProtoSettings sharedInstance];
    retouchShowVFXControls = [v7 retouchShowVFXControls];

    if (retouchShowVFXControls)
    {
      retouchVFXOverlay = self->_retouchVFXOverlay;

      [(PUVFXRetouchOverlay *)retouchVFXOverlay showControlsInViewController:self];
    }
  }
}

- (void)ppt_replayCleanupBrushStrokeWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PUCleanupToolController_ppt_replayCleanupBrushStrokeWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E7B80B48;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(PUCleanupToolController *)self _prepareViewsForCleanupIfReadyAndNotify:v6];
}

void __75__PUCleanupToolController_ppt_replayCleanupBrushStrokeWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__PUCleanupToolController_ppt_replayCleanupBrushStrokeWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_1E7B80B48;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x1E69E96A0], v4);
}

- (void)addAttachmentsForTapToRadar:(id)radar
{
  v76 = *MEMORY[0x1E69E9840];
  radarCopy = radar;
  maskContext = [(PUCleanupToolController *)self maskContext];
  segmentationResult = [maskContext segmentationResult];

  foregroundInstances = [segmentationResult foregroundInstances];
  backgroundInstances = [segmentationResult backgroundInstances];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v13 = [temporaryDirectory URLByAppendingPathComponent:uUIDString isDirectory:1];

  DeviceGray = CGColorSpaceCreateDeviceGray();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PUCleanupToolController_addAttachmentsForTapToRadar___block_invoke;
  aBlock[3] = &unk_1E7B76920;
  v55 = v13;
  v69 = v55;
  v59 = defaultManager;
  v70 = v59;
  selfCopy = self;
  v72 = DeviceGray;
  v15 = _Block_copy(aBlock);
  v16 = v15;
  if (foregroundInstances)
  {
    v17 = v15[2](v15, foregroundInstances, @"foreground");
    [radarCopy addAttachment:v17];
  }

  if (backgroundInstances)
  {
    v18 = v16[2](v16, backgroundInstances, @"background");
    [radarCopy addAttachment:v18];
  }

  CGColorSpaceRelease(DeviceGray);
  globalSettings = [MEMORY[0x1E69BDE40] globalSettings];
  v57 = foregroundInstances;
  v58 = segmentationResult;
  v56 = backgroundInstances;
  if ([globalSettings inpaintDumpsOriginalMasks])
  {
    inpaintDumpsInputImages = 1;
  }

  else
  {
    inpaintDumpsInputImages = [MEMORY[0x1E69B3AB0] inpaintDumpsInputImages];
  }

  v54 = v16;

  v21 = +[PUPhotoEditProtoSettings sharedInstance];
  retouchDumpsCoreImageInputs = [v21 retouchDumpsCoreImageInputs];

  if (!inpaintDumpsInputImages || (retouchDumpsCoreImageInputs & 1) == 0)
  {
    globalSettings2 = [MEMORY[0x1E69BDE40] globalSettings];
    [globalSettings2 setInpaintDumpsOriginalMasks:1];

    v24 = +[PUPhotoEditProtoSettings sharedInstance];
    [v24 setRetouchDumpsCoreImageInputs:1];

    v25 = objc_alloc(MEMORY[0x1E69B39A0]);
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    composition = [compositionController composition];
    v28 = [v25 initWithComposition:composition];

    v67 = 0;
    v29 = [v28 submitSynchronous:&v67];
    v30 = v67;
    if (!v29)
    {
      v31 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v75 = v30;
        _os_log_impl(&dword_1B36F3000, v31, OS_LOG_TYPE_ERROR, "Cleanup: Could not re-render composition to collect TTR debug images. %@", buf, 0xCu);
      }
    }

    globalSettings3 = [MEMORY[0x1E69BDE40] globalSettings];
    [globalSettings3 setInpaintDumpsOriginalMasks:inpaintDumpsInputImages];

    v33 = +[PUPhotoEditProtoSettings sharedInstance];
    [v33 setRetouchDumpsCoreImageInputs:retouchDumpsCoreImageInputs];
  }

  v34 = MEMORY[0x1E695DFF8];
  v35 = NSTemporaryDirectory();
  v36 = [v34 fileURLWithPath:v35];

  v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", getpid()];
  v53 = v36;
  v38 = [v59 enumeratorAtURL:v36 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:1 errorHandler:0];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v39 = [v38 countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v64;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v64 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v63 + 1) + 8 * i);
        path = [v43 path];
        lastPathComponent = [path lastPathComponent];

        if ([lastPathComponent hasPrefix:v37] && objc_msgSend(lastPathComponent, "containsString:", @"inpaint"))
        {
          [radarCopy addAttachment:v43];
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v63 objects:v73 count:16];
    }

    while (v40);
  }

  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __55__PUCleanupToolController_addAttachmentsForTapToRadar___block_invoke_295;
  v60[3] = &unk_1E7B7C540;
  v61 = v59;
  v62 = radarCopy;
  v46 = radarCopy;
  v47 = v59;
  v48 = _Block_copy(v60);
  tempDir = [MEMORY[0x1E69B3AB0] tempDir];
  v50 = [tempDir stringByAppendingPathComponent:@"input.heic"];
  v48[2](v48, v50);

  v51 = [tempDir stringByAppendingPathComponent:@"inpaintMask.png"];
  v48[2](v48, v51);

  v52 = [tempDir stringByAppendingPathComponent:@"exclusionMask.png"];
  v48[2](v48, v52);
}

id __55__PUCleanupToolController_addAttachmentsForTapToRadar___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstIndex];
  v8 = [*(a1 + 32) URLByAppendingPathComponent:v6 isDirectory:1];
  [*(a1 + 40) createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:0];
  while (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x1E69BDE68];
    v10 = [*(a1 + 48) maskContext];
    v20 = 0;
    v11 = [v9 createMaskForInstance:v7 context:v10 maskIdentifierPrefix:@"identifier" error:&v20];
    v12 = v20;

    if (v11)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld.jpg", v6, v7];
      v14 = [v8 URLByAppendingPathComponent:v13];

      v15 = [v11 buffer];
      v16 = [v15 CVPixelBuffer];

      v17 = [MEMORY[0x1E695F620] context];
      v18 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v16];
      [v17 writeJPEGRepresentationOfImage:v18 toURL:v14 colorSpace:*(a1 + 56) options:MEMORY[0x1E695E0F8] error:0];
    }

    v7 = [v5 indexGreaterThanIndex:v7];
  }

  return v8;
}

void __55__PUCleanupToolController_addAttachmentsForTapToRadar___block_invoke_295(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) fileExistsAtPath:?])
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
    [v3 addAttachment:v4];
  }
}

- (PXEditCleanupFeedbackActionPerformer)feedbackActionPerformer
{
  feedbackActionPerformer = self->_feedbackActionPerformer;
  if (!feedbackActionPerformer)
  {
    v4 = [objc_alloc(MEMORY[0x1E69C3530]) initWithViewController:self];
    v5 = self->_feedbackActionPerformer;
    self->_feedbackActionPerformer = v4;

    feedbackActionPerformer = self->_feedbackActionPerformer;
  }

  return feedbackActionPerformer;
}

- (void)feedbackThumbsButtonAction:(id)action
{
  actionCopy = action;
  feedbackThumbsUpButton = [(PUCleanupToolController *)self feedbackThumbsUpButton];

  if (feedbackThumbsUpButton == actionCopy)
  {
    v7 = 1;
  }

  else
  {
    feedbackThumbsDownButton = [(PUCleanupToolController *)self feedbackThumbsDownButton];

    v6 = actionCopy;
    if (feedbackThumbsDownButton != actionCopy)
    {
      goto LABEL_6;
    }

    v7 = 2;
  }

  [(PUCleanupToolController *)self _reportFeedbackAction:v7];
  v6 = actionCopy;
LABEL_6:
}

- (void)_reportFeedbackAction:(unint64_t)action
{
  v21 = *MEMORY[0x1E69E9840];
  asset = [(PUPhotoEditToolController *)self asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    asset2 = [(PUPhotoEditToolController *)self asset];

    if (asset2)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69C34D8]);
      [v7 setIncludeOriginalRender:1];
      v8 = [objc_alloc(MEMORY[0x1E69B3A78]) initWithTargetSize:{1024.0, 1024.0}];
      [v7 setScalePolicyForRenders:v8];

      delegate = [(PUPhotoEditToolController *)self delegate];
      editAssetDiagnostics = [delegate editAssetDiagnostics];

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __49__PUCleanupToolController__reportFeedbackAction___block_invoke;
      v14[3] = &unk_1E7B768F8;
      v15 = editAssetDiagnostics;
      selfCopy = self;
      v17 = asset2;
      actionCopy = action;
      v11 = asset2;
      v12 = editAssetDiagnostics;
      [v12 collectDiagnosticsWithOptions:v7 completion:v14];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v11 = PXAssertGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    asset3 = [(PUPhotoEditToolController *)self asset];
    *buf = 138412290;
    v20 = asset3;
    _os_log_error_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "reportAConcern activated when our asset is not a PHAsset (%@)", buf, 0xCu);
  }

LABEL_7:
}

void __49__PUCleanupToolController__reportFeedbackAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) diagnosticsPackage];
  v3 = *MEMORY[0x1E69C4028];
  v15 = v2;
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69C4028]];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DEF0]);
    v6 = [v15 objectForKeyedSubscript:v3];
    v7 = [v5 initWithContentsOfURL:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69C4030];
  v9 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69C4030]];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695DEF0]);
    v11 = [v15 objectForKeyedSubscript:v8];
    v12 = [v10 initWithContentsOfURL:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69C4020]];
  v14 = [*(a1 + 40) feedbackActionPerformer];
  [v14 reportFeedbackWithType:*(a1 + 56) asset:*(a1 + 48) originalImageData:v7 renderedImageData:v12 summaryString:v13 completionHandler:&__block_literal_global_268];

  [*(a1 + 32) deleteCollectedFiles];
}

- (void)replayBrushstrokesWithCompletion:(id)completion
{
  completionCopy = completion;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  [compositionController modifyAdjustmentWithKey:*MEMORY[0x1E69BE190] modificationBlock:&__block_literal_global_262];

  compositionController2 = [(PUPhotoEditToolController *)self compositionController];
  [compositionController2 removeAdjustmentWithKey:*MEMORY[0x1E69BE028]];

  compositionController3 = [(PUPhotoEditToolController *)self compositionController];
  [compositionController3 removeAdjustmentWithKey:@"inpaintMasks"];

  compositionController4 = [(PUPhotoEditToolController *)self compositionController];
  brushStrokeHistory = [compositionController4 brushStrokeHistory];

  v9 = objc_alloc_init(MEMORY[0x1E69BDDC0]);
  compositionController5 = [(PUPhotoEditToolController *)self compositionController];
  [compositionController5 setBrushStrokeHistory:v9];

  v11 = +[PUPhotoEditProtoSettings sharedInstance];
  [v11 replayStrokesPauseInterval];
  v13 = v12;

  [brushStrokeHistory playbackHistoryToReceiver:self options:0 pauseInterval:completionCopy completion:v13];
}

void __60__PUCleanupToolController_replayBrushstrokesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEnabled:1];
  [v3 setIntensity:0.0];
  [v3 radius];
  [v3 setRadius:v2 + 0.00000001];
}

- (id)internalToolActionsForMenu
{
  v16[1] = *MEMORY[0x1E69E9840];
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  brushStrokeHistory = [compositionController brushStrokeHistory];
  entryCount = [brushStrokeHistory entryCount];

  if (entryCount)
  {
    v6 = MEMORY[0x1E696AEC0];
    compositionController2 = [(PUPhotoEditToolController *)self compositionController];
    brushStrokeHistory2 = [compositionController2 brushStrokeHistory];
    v9 = [v6 stringWithFormat:@"Replay %ld Brushstrokes", objc_msgSend(brushStrokeHistory2, "entryCount")];
  }

  else
  {
    v9 = @"Replay Brushstrokes";
  }

  v10 = MEMORY[0x1E69DC628];
  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"paintbrush.pointed.fill"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__PUCleanupToolController_internalToolActionsForMenu__block_invoke;
  v15[3] = &unk_1E7B7C4A0;
  v15[4] = self;
  v12 = [v10 actionWithTitle:v9 image:v11 identifier:0 handler:v15];

  if (!entryCount)
  {
    [v12 setAttributes:1];
  }

  v16[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  return v13;
}

- (id)toolActionsForMenu
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(PUCleanupToolController *)self _showFeedbackThumbs]|| ![(PUCleanupToolController *)self _enableFeedback])
  {
    v7 = 0;
  }

  else
  {
    v3 = PULocalizedString(@"PHOTOEDIT_CLEANUP_FEEDBACK");
    feedbackActionPerformer = [(PUCleanupToolController *)self feedbackActionPerformer];
    v5 = [feedbackActionPerformer actionIconForFeedbackType:3 hasResponse:0];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__PUCleanupToolController_toolActionsForMenu__block_invoke;
    v9[3] = &unk_1E7B7C4A0;
    v9[4] = self;
    v6 = [MEMORY[0x1E69DC628] actionWithTitle:v3 image:v5 identifier:0 handler:v9];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  return v7;
}

- (void)_setLastInteractionPixelCount:(int64_t)count
{
  if (self->_lastInteractionWasHighRate)
  {
    v3 = self->_currentInteractionSeriesCumulativePixelCount + count;
    self->_currentInteractionSeriesCumulativePixelCount = v3;
    if (v3 > self->_maxInteractionSeriesCumulativePixelCount)
    {
      self->_maxInteractionSeriesCumulativePixelCount = v3;
    }

    self->_lastInteractionWasHighRate = 0;
  }
}

- (void)_interactionOccurred
{
  lastInteractionTime = self->_lastInteractionTime;
  if (lastInteractionTime)
  {
    [(NSDate *)lastInteractionTime timeIntervalSinceNow];
    if (v4 >= -4.0)
    {
      consecutiveHighRateInteractions = self->_consecutiveHighRateInteractions;
      self->_consecutiveHighRateInteractions = consecutiveHighRateInteractions + 1;
      if (consecutiveHighRateInteractions >= self->_maxConsecutiveHighRateInteractions)
      {
        self->_maxConsecutiveHighRateInteractions = consecutiveHighRateInteractions + 1;
      }

      v5 = 1;
    }

    else
    {
      v5 = 0;
      self->_consecutiveHighRateInteractions = 0;
    }

    self->_lastInteractionWasHighRate = v5;
  }

  v7 = [MEMORY[0x1E695DF00] now];
  v8 = self->_lastInteractionTime;
  self->_lastInteractionTime = v7;

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (int64_t)segmentationCount
{
  maskContext = [(PUCleanupToolController *)self maskContext];
  segmentationResult = [maskContext segmentationResult];

  instances = [segmentationResult instances];
  v5 = [instances count];

  return v5;
}

- (void)_thermalStateDidChange:(id)change
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  thermalState = [processInfo thermalState];

  if (thermalState > self->_highestEncounteredThermalState)
  {
    self->_highestEncounteredThermalState = thermalState;
  }
}

- (void)_applicationDidBecomeActive:(id)active
{
  [(PUCleanupToolController *)self _prepareViewsForCleanupIfReady];
  view = [(PUCleanupToolController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)_applicationWillResignActive:(id)active
{
  [(PUCleanupOverlayViewController *)self->_overlayController removeBrushView];
  [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay removeFromSuperview];
  retouchVFXOverlay = self->_retouchVFXOverlay;
  self->_retouchVFXOverlay = 0;
}

- (void)_didRedo:(id)redo
{
  retouchVFXOverlay = self->_retouchVFXOverlay;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  composition = [compositionController composition];
  [(PUVFXRetouchOverlay *)retouchVFXOverlay didRenderComposition:composition];

  [(PUCleanupToolController *)self _updateFeedbackViewVisibility];
}

- (void)_didUndo:(id)undo
{
  retouchVFXOverlay = self->_retouchVFXOverlay;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  composition = [compositionController composition];
  [(PUVFXRetouchOverlay *)retouchVFXOverlay didRenderComposition:composition];

  [(PUCleanupToolController *)self _updateFeedbackViewVisibility];
}

- (void)redoInitiated:(id)initiated
{
  v18 = *MEMORY[0x1E69E9840];
  initiatedCopy = initiated;
  redoMenuItemTitle = [initiatedCopy redoMenuItemTitle];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  cleanupActionNames = [(PUCleanupToolController *)self cleanupActionNames];
  v7 = [cleanupActionNames countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(cleanupActionNames);
        }

        v11 = [initiatedCopy redoMenuTitleForUndoActionName:*(*(&v13 + 1) + 8 * i)];
        if ([redoMenuItemTitle isEqualToString:v11])
        {
          [(PUCleanupToolController *)self _setBusy:1 withDelay:1.25];
          delegate = [(PUPhotoEditToolController *)self delegate];
          [delegate updateProgressIndicatorAnimated:1];

          goto LABEL_11;
        }
      }

      v8 = [cleanupActionNames countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)undoInitiated:(id)initiated
{
  v18 = *MEMORY[0x1E69E9840];
  initiatedCopy = initiated;
  undoMenuItemTitle = [initiatedCopy undoMenuItemTitle];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  cleanupActionNames = [(PUCleanupToolController *)self cleanupActionNames];
  v7 = [cleanupActionNames countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(cleanupActionNames);
        }

        v11 = [initiatedCopy undoMenuTitleForUndoActionName:*(*(&v13 + 1) + 8 * i)];
        if ([undoMenuItemTitle isEqualToString:v11])
        {
          [(PUCleanupToolController *)self _setBusy:1 withDelay:1.25];
          delegate = [(PUPhotoEditToolController *)self delegate];
          [delegate updateProgressIndicatorAnimated:1];

          goto LABEL_11;
        }
      }

      v8 = [cleanupActionNames countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)cleanupActionNames
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = PULocalizedString(@"PHOTOEDIT_CLEANUP_CLEAN_UP_ACTION_TITLE");
  v7[0] = v2;
  v3 = PULocalizedString(@"PHOTOEDIT_CLEANUP_RESET_ACTION_TITLE");
  v7[1] = v3;
  v4 = PULocalizedString(@"PHOTOEDIT_MAKE_KEY_FRAME_ACTION_TITLE");
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

- (void)_createRendererIfNeeded
{
  renderer = [(PUCleanupToolController *)self renderer];

  if (renderer)
  {
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    renderer2 = [(PUCleanupToolController *)self renderer];
    compositionController2 = renderer2;
    v6 = compositionController;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E69BE658]);
    editSource = [(PUPhotoEditToolController *)self editSource];
    compositionController = [v7 initWithEditSource:editSource renderPriority:3];

    [(PUCleanupToolController *)self setRenderer:compositionController];
    compositionController2 = [(PUPhotoEditToolController *)self compositionController];
    renderer2 = compositionController;
    v6 = compositionController2;
  }

  [renderer2 setCompositionController:v6];
}

- (void)mediaViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  isActiveTool = [(PUPhotoEditToolController *)self isActiveTool];
  if (!isActiveTool)
  {
    goto LABEL_14;
  }

  if (self->_cleanupMode == 1)
  {
    v6 = +[PUPhotoEditProtoSettings sharedInstance];
    cleanupMaskDisplayMode = [v6 cleanupMaskDisplayMode];

    if ((cleanupMaskDisplayMode - 1) >= 2)
    {
      if (cleanupMaskDisplayMode)
      {
        goto LABEL_12;
      }

      _scrollView = [scrollCopy _scrollView];
      if ([_scrollView isZoomBouncing])
      {
        [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay alpha];
        v12 = v11;

        if (v12 == 1.0)
        {
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __46__PUCleanupToolController_mediaViewDidScroll___block_invoke;
          v14[3] = &unk_1E7B80DD0;
          v14[4] = self;
          [MEMORY[0x1E69DD250] performWithoutAnimation:v14];
          isActiveTool = [(PUCleanupToolController *)self setVFXOverlayHidden:1];
        }

        goto LABEL_12;
      }
    }

    else
    {
      _scrollView = [scrollCopy _scrollView];
      if ([_scrollView isZoomBouncing])
      {
        [(PUCleanupToolMaskView *)self->_maskView alpha];
        v10 = v9;

        if (v10 == 1.0)
        {
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __46__PUCleanupToolController_mediaViewDidScroll___block_invoke_2;
          v13[3] = &unk_1E7B80DD0;
          v13[4] = self;
          isActiveTool = [MEMORY[0x1E69DD250] performWithoutAnimation:v13];
        }

        goto LABEL_12;
      }
    }
  }

LABEL_12:
  if (MEMORY[0x1B8C6D660](isActiveTool))
  {
    [(PUCleanupToolController *)self _updatePromptViewPlatter];
  }

LABEL_14:
}

- (void)mediaViewDidEndZooming:(id)zooming
{
  zoomingCopy = zooming;
  if (![(PUPhotoEditToolController *)self isActiveTool]|| self->_cleanupMode != 1)
  {
    goto LABEL_17;
  }

  _scrollView = [zoomingCopy _scrollView];
  isZoomBouncing = [_scrollView isZoomBouncing];

  if ((isZoomBouncing & 1) == 0)
  {
    v7 = +[PUPhotoEditProtoSettings sharedInstance];
    cleanupMaskDisplayMode = [v7 cleanupMaskDisplayMode];

    if ((cleanupMaskDisplayMode - 1) < 2)
    {
      [(PUCleanupToolMaskView *)self->_maskView alpha];
      v9 = MEMORY[0x1E69DD250];
      if (v10 == 0.0)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __50__PUCleanupToolController_mediaViewDidEndZooming___block_invoke_6;
        v23[3] = &unk_1E7B80DD0;
        v23[4] = self;
        v11 = 0.0;
        v12 = v23;
      }

      else
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __50__PUCleanupToolController_mediaViewDidEndZooming___block_invoke_7;
        v22[3] = &unk_1E7B80DD0;
        v22[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v22];
        v9 = MEMORY[0x1E69DD250];
        v17 = MEMORY[0x1E69E9820];
        v18 = 3221225472;
        v19 = __50__PUCleanupToolController_mediaViewDidEndZooming___block_invoke_8;
        v20 = &unk_1E7B80DD0;
        selfCopy = self;
        v12 = &v17;
        v11 = 0.2;
      }

      v14 = 0;
      goto LABEL_13;
    }

    if (!cleanupMaskDisplayMode)
    {
      [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay alpha];
      v9 = MEMORY[0x1E69DD250];
      if (v13 == 0.0)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __50__PUCleanupToolController_mediaViewDidEndZooming___block_invoke;
        v28[3] = &unk_1E7B80DD0;
        v28[4] = self;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __50__PUCleanupToolController_mediaViewDidEndZooming___block_invoke_2;
        v27[3] = &unk_1E7B7F020;
        v27[4] = self;
        v11 = 0.0;
        v12 = v28;
        v14 = v27;
      }

      else
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __50__PUCleanupToolController_mediaViewDidEndZooming___block_invoke_3;
        v26[3] = &unk_1E7B80DD0;
        v26[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v26];
        [(PUCleanupToolController *)self setVFXOverlayHidden:1];
        v9 = MEMORY[0x1E69DD250];
        v24[4] = self;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __50__PUCleanupToolController_mediaViewDidEndZooming___block_invoke_4;
        v25[3] = &unk_1E7B80DD0;
        v25[4] = self;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __50__PUCleanupToolController_mediaViewDidEndZooming___block_invoke_5;
        v24[3] = &unk_1E7B7F020;
        v12 = v25;
        v14 = v24;
        v11 = 0.2;
      }

LABEL_13:
      [v9 animateWithDuration:0 delay:v12 options:v14 animations:0.2 completion:{v11, v17, v18, v19, v20, selfCopy}];
    }
  }

  self->_isZooming = 0;
  v15 = +[PUPhotoEditProtoSettings sharedInstance];
  cleanupMaskDisplayMode2 = [v15 cleanupMaskDisplayMode];

  if ((cleanupMaskDisplayMode2 - 1) <= 1)
  {
    [(PUCleanupToolMaskView *)self->_maskView setNeedsDisplay];
  }

  [(PUCleanupToolController *)self _updateFaceRectsView];
  [(PUCleanupToolController *)self _updateFeedbackViewVisibility];
LABEL_17:
}

- (void)mediaViewWillBeginZooming:(id)zooming
{
  if ([(PUPhotoEditToolController *)self isActiveTool]&& self->_cleanupMode == 1)
  {
    self->_isZooming = 1;

    [(PUCleanupToolController *)self hidePromptViewIfNeededAnimated:1];
  }
}

- (void)mediaView:(id)view didZoom:(double)zoom
{
  viewCopy = view;
  if ([(PUPhotoEditToolController *)self isActiveTool])
  {
    if (self->_cleanupMode == 1)
    {
      _scrollView = [viewCopy _scrollView];
      isZoomBouncing = [_scrollView isZoomBouncing];

      if ((isZoomBouncing & 1) == 0 && !self->_isZooming)
      {
        v7 = +[PUPhotoEditProtoSettings sharedInstance];
        cleanupMaskDisplayMode = [v7 cleanupMaskDisplayMode];

        if ((cleanupMaskDisplayMode - 1) <= 1)
        {
          [(PUCleanupToolMaskView *)self->_maskView setNeedsDisplay];
        }
      }
    }
  }
}

- (void)mediaViewIsReady
{
  if (![(PUPhotoEditToolController *)self isActiveTool])
  {
    if (![(PUCleanupToolController *)self isBusy])
    {
      return;
    }

LABEL_11:
    [(PUCleanupToolController *)self _setBusy:0];
    delegate = [(PUPhotoEditToolController *)self delegate];
    [delegate updateProgressIndicatorAnimated:1];

    return;
  }

  if (!self->_mediaViewIsReady)
  {
    self->_mediaViewIsReady = 1;
    [(PUCleanupToolController *)self _prepareViewsForCleanupIfReady];
  }

  if ([(PUCleanupToolController *)self isBusy]&& self->_cleanupViewsHaveBeenPrepared)
  {
    if (!self->_toolDisabled)
    {
      if (self->_cleanupMode == 2)
      {
        [(PUCleanupToolController *)self fadeOutBrushStrokeWithDuration:0.2];
      }

      v3 = MEMORY[0x1E69BDE68];
      maskContext = [(PUCleanupToolController *)self maskContext];
      compositionController = [(PUPhotoEditToolController *)self compositionController];
      composition = [compositionController composition];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __43__PUCleanupToolController_mediaViewIsReady__block_invoke;
      v8[3] = &unk_1E7B768B0;
      v8[4] = self;
      [v3 updateMaskContext:maskContext forComposition:composition requestID:0 completionQueue:MEMORY[0x1E69E96A0] completion:v8];

      return;
    }

    goto LABEL_11;
  }
}

void __43__PUCleanupToolController_mediaViewIsReady__block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  [*(a1 + 32) _updateFeedbackViewVisibility];
  [*(a1 + 32) _setBusy:0];
  v8 = [*(a1 + 32) delegate];
  [v8 updateProgressIndicatorAnimated:1];

  [*(a1 + 32) _updateMaskViewForDefaultModeIfNecessary];
  v9 = *(a1 + 32);
  if (v9[178] == 2)
  {
    [v9 _updateMaskViewForBrushMode];
    v9 = *(a1 + 32);
  }

  v10 = v9[153];
  if (v10)
  {
    [v10 mediaViewIsReady];
  }

  v11 = +[PUPhotoEditProtoSettings sharedInstance];
  v12 = [v11 cleanupMaskDisplayMode];

  if (!v12)
  {
    v13 = [*(a1 + 32) compositionController];
    v14 = [v13 composition];

    v15 = *(a1 + 32);
    if ((a3 & 1) != 0 || *(v15 + 1336))
    {
      [*(v15 + 1304) didResetComposition:v14];
    }

    else
    {
      [*(v15 + 1304) didRenderComposition:v14];
    }
  }

  [*(a1 + 32) _updateFaceRectsView];
  if (a2)
  {
    v16 = *(a1 + 32);
    v17 = v16[167];
    if (v17 == 1)
    {
      v18 = 3;
      goto LABEL_18;
    }

    if (v17 == 2)
    {
      v18 = 4;
LABEL_18:
      [v16 addUserPromptViewOfType:v18 animated:1];
    }
  }

  else
  {
    v19 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = 138543362;
      v24 = v7;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Cleanup: Failed to update mask context, error: %{public}@", &v23, 0xCu);
    }

    [*(a1 + 32) _handleMaskContextFailure];
  }

  *(*(a1 + 32) + 1336) = 0;
  v20 = [MEMORY[0x1E695DF00] now];
  v21 = *(a1 + 32);
  v22 = *(v21 + 1376);
  *(v21 + 1376) = v20;
}

- (void)_showCleanupBrushSizeSlider:(id)slider label:(id)label show:(BOOL)show
{
  sliderCopy = slider;
  labelCopy = label;
  v9 = MEMORY[0x1E69DD250];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PUCleanupToolController__showCleanupBrushSizeSlider_label_show___block_invoke;
  v12[3] = &unk_1E7B805E8;
  showCopy = show;
  v13 = sliderCopy;
  v14 = labelCopy;
  v10 = labelCopy;
  v11 = sliderCopy;
  [v9 animateWithDuration:v12 animations:&__block_literal_global_238_21545 completion:0.2];
}

uint64_t __66__PUCleanupToolController__showCleanupBrushSizeSlider_label_show___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 48);
  [*(a1 + 32) setAlpha:*&a2];
  LOBYTE(v3) = *(a1 + 48);
  v4 = v3;
  v5 = *(a1 + 40);

  return [v5 setAlpha:v4];
}

- (void)_brushModeButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCleanupToolController.m" lineNumber:2637 description:{@"Invalid parameter not satisfying: %@", @"[sender isKindOfClass:[UIButton class]]"}];
  }

  brushModeButton = [(PUCleanupToolController *)self brushModeButton];
  isSelected = [brushModeButton isSelected];
  brushModeButton2 = [(PUCleanupToolController *)self brushModeButton];
  [brushModeButton2 setSelected:isSelected ^ 1u];

  [(PUCleanupToolController *)self _updateBrushModeButton];
  brushModeButton3 = [(PUCleanupToolController *)self brushModeButton];
  isSelected2 = [brushModeButton3 isSelected];

  if (isSelected2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  [(PUCleanupToolController *)self _setCleanupMode:v12];
}

- (void)_updateBrushModeButton
{
  v6 = +[PUInterfaceManager currentTheme];
  brushModeButton = [(PUCleanupToolController *)self brushModeButton];
  if ([brushModeButton isSelected])
  {
    [v6 photoEditingToolbarButtonSelectedColor];
  }

  else
  {
    [v6 photoEditingToolbarButtonColor];
  }
  v4 = ;

  brushModeButton2 = [(PUCleanupToolController *)self brushModeButton];
  [brushModeButton2 setTintColor:v4];
}

- (void)_resetTapped:(id)tapped
{
  [(PUCleanupToolController *)self _setBusy:1];
  delegate = [(PUPhotoEditToolController *)self delegate];
  [delegate updateProgressIndicatorAnimated:1];

  compositionController = [(PUPhotoEditToolController *)self compositionController];
  composition = [compositionController composition];

  [(PUPhotoEditToolController *)self willModifyAdjustment];
  compositionController2 = [(PUPhotoEditToolController *)self compositionController];
  [compositionController2 removeAdjustmentWithKey:*MEMORY[0x1E69BE028]];

  compositionController3 = [(PUPhotoEditToolController *)self compositionController];
  [compositionController3 removeAdjustmentWithKey:@"inpaintMasks"];

  v8 = PULocalizedString(@"PHOTOEDIT_CLEANUP_RESET_ACTION_TITLE");
  v9 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v8];

  [(PUCleanupToolController *)self _updateResetButtonState];
  [(PUCleanupToolMaskView *)self->_maskView setSampledPoints:0];
  v10 = objc_alloc_init(MEMORY[0x1E69BDDC0]);
  compositionController4 = [(PUPhotoEditToolController *)self compositionController];
  [compositionController4 setBrushStrokeHistory:v10];

  [(PUCleanupToolController *)self _setCleanupMode:1];
  if (_os_feature_enabled_impl())
  {
    [(PUPhotoEditToolbarButton *)self->_brushModeButton setSelected:0];
  }

  v12 = +[PUPhotoEditProtoSettings sharedInstance];
  cleanupMaskDisplayMode = [v12 cleanupMaskDisplayMode];

  if (!cleanupMaskDisplayMode)
  {
    retouchVFXOverlay = self->_retouchVFXOverlay;
    compositionController5 = [(PUPhotoEditToolController *)self compositionController];
    composition2 = [compositionController5 composition];
    [(PUVFXRetouchOverlay *)retouchVFXOverlay didResetComposition:composition2];
  }

  [(PUCleanupToolController *)self _updateFeedbackViewVisibility];
  v17 = MEMORY[0x1E69C4258];
  compositionController6 = [(PUPhotoEditToolController *)self compositionController];
  composition3 = [compositionController6 composition];
  [v17 reportAnalyticsForChangeFrom:composition to:composition3 actionType:2];
}

- (void)_setCleanupMode:(unint64_t)mode
{
  cleanupMode = mode;
  if (self->_cleanupMode != mode)
  {
    self->_cleanupMode = mode;
    [(PUCleanupToolController *)self _addOverlayIfNeeded];
    [(PUCleanupOverlayViewController *)self->_overlayController setCleanupMode:cleanupMode];
    view = [(PUCleanupToolController *)self view];
    [view setNeedsUpdateConstraints];

    cleanupMode = self->_cleanupMode;
  }

  if (cleanupMode == 2)
  {
    [(PUCleanupOverlayViewController *)self->_overlayController mediaViewIsReady];
    [(PUCleanupUserPromptView *)self->_userPromptView setHidden:1];
    defaultModeBrushSizeSlider = self->_defaultModeBrushSizeSlider;
    if (defaultModeBrushSizeSlider)
    {
      [(PUCleanupToolController *)self _showCleanupBrushSizeSlider:defaultModeBrushSizeSlider label:self->_defaultModeBrushSizeLabel show:0];
    }

    if (self->_brushModeBrushSizeSlider)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (cleanupMode != 1)
    {
      if (!cleanupMode)
      {
        [(PUCleanupUserPromptView *)self->_userPromptView setHidden:0];
      }

      goto LABEL_15;
    }

    [(PUCleanupUserPromptView *)self->_userPromptView setHidden:0];
    brushModeBrushSizeSlider = self->_brushModeBrushSizeSlider;
    if (brushModeBrushSizeSlider)
    {
      [(PUCleanupToolController *)self _showCleanupBrushSizeSlider:brushModeBrushSizeSlider label:self->_brushModeBrushSizeLabel show:0];
    }

    if (self->_defaultModeBrushSizeSlider)
    {
LABEL_14:
      [PUCleanupToolController _showCleanupBrushSizeSlider:"_showCleanupBrushSizeSlider:label:show:" label:? show:?];
    }
  }

LABEL_15:
  v8 = self->_cleanupMode;
  if (v8 == 2)
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    [delegate toolControllerDidChangeWantsTapToToggleOriginalEnabled:self enabled:0];

    [(PUCleanupToolController *)self _updateMaskViewForBrushMode];
    brushView = [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay brushView];
    layer = [brushView layer];
    [layer setOpacity:0.0];

    rootLayer = [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay rootLayer];
    v14 = rootLayer;
    v15 = 0.0;
  }

  else
  {
    if (v8 != 1)
    {
      if (!v8)
      {
        delegate2 = [(PUPhotoEditToolController *)self delegate];
        [delegate2 toolControllerDidChangeWantsTapToToggleOriginalEnabled:self enabled:1];

        [(PUCleanupToolController *)self _updateMaskViewForBrushMode];
      }

      return;
    }

    delegate3 = [(PUPhotoEditToolController *)self delegate];
    [delegate3 toolControllerDidChangeWantsTapToToggleOriginalEnabled:self enabled:0];

    [(PUCleanupToolController *)self _updateMaskViewForDefaultModeIfNecessary];
    brushView = [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay brushView];
    layer2 = [brushView layer];
    LODWORD(v12) = 1.0;
    [layer2 setOpacity:v12];

    rootLayer = [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay rootLayer];
    v14 = rootLayer;
    LODWORD(v15) = 1.0;
  }

  [rootLayer setOpacity:v15];
}

- (void)modifyInpaintAdjustmentWithBlock:(id)block actionStringKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  blockCopy = block;
  [(PUCleanupToolController *)self _donateTipsAppCleanupSignal];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PUCleanupToolController_modifyInpaintAdjustmentWithBlock_actionStringKey_completion___block_invoke;
  v13[3] = &unk_1E7B76888;
  v14 = keyCopy;
  v15 = completionCopy;
  v13[4] = self;
  v11 = keyCopy;
  v12 = completionCopy;
  [(PUCleanupToolController *)self checkPotentialInpaintOperation:blockCopy handler:v13];
}

void __87__PUCleanupToolController_modifyInpaintAdjustmentWithBlock_actionStringKey_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) compositionController];
  v7 = [v6 copy];
  v8 = [v7 composition];
  v9 = [v7 brushStrokeHistory];
  v10 = [v9 copy];

  if ((a2 & 1) == 0)
  {
    v11 = *(a1 + 32);
    if ((*(v11 + 1344) & 1) != 0 || *(v11 + 1336) != 1)
    {
      *(v11 + 1336) = 2;
    }

    v12 = [v5 redactedCopy];

    v5 = v12;
  }

  v13 = [*(a1 + 32) compositionController];
  v14 = *MEMORY[0x1E69BE028];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __87__PUCleanupToolController_modifyInpaintAdjustmentWithBlock_actionStringKey_completion___block_invoke_2;
  v31[3] = &unk_1E7B76860;
  v15 = v5;
  v32 = v15;
  [v13 modifyAdjustmentWithKey:v14 modificationBlock:v31];

  v16 = [v6 composition];
  LOBYTE(v14) = [v16 isEqualToComposition:v8];

  if ((v14 & 1) != 0 || (v17 = [[PUCleanupCompositionAction alloc] initWithCompositionController:v6 sourceComposition:v8 previousBrushHistory:v10]) == 0)
  {
    v25 = *(a1 + 48);
    if (v25)
    {
      (*(v25 + 16))();
    }

    [*(a1 + 32) mediaViewIsReady];
  }

  else
  {
    v18 = v17;
    v19 = [*(a1 + 32) delegate];
    v20 = [v19 livePhotoModel];

    if (v20 && [v20 isVideoEnabled] && (v21 = objc_msgSend(objc_alloc(MEMORY[0x1E69C3538]), "initWithCompositionController:livePhotoModel:", v7, v20)) != 0)
    {
      v22 = v21;
      v23 = objc_alloc(MEMORY[0x1E69C32E0]);
      v33[0] = v18;
      v33[1] = v22;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
      v24 = [v23 initWithActions:v28];

      v29 = PULocalizedString(*(a1 + 40));
      [v24 setLocalizedActionName:v29];

      v30 = [*(a1 + 32) undoManager];
      [v24 executeWithUndoManager:v30 completionHandler:&__block_literal_global_216];
    }

    else
    {
      v26 = PULocalizedString(*(a1 + 40));
      [(PXEditCompositionAction *)v18 setLocalizedActionName:v26];

      v24 = [*(a1 + 32) undoManager];
      [(PXAction *)v18 registerWithUndoManager:v24];
      v22 = 0;
    }

    v27 = *(a1 + 48);
    if (v27)
    {
      (*(v27 + 16))();
    }
  }
}

- (void)_donateTipsAppCleanupSignal
{
  if (_donateTipsAppCleanupSignal_onceToken != -1)
  {
    dispatch_once(&_donateTipsAppCleanupSignal_onceToken, &__block_literal_global_210);
  }
}

- (void)checkPotentialInpaintOperation:(id)operation handler:(id)handler
{
  operationCopy = operation;
  handlerCopy = handler;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  v9 = [compositionController copy];

  v10 = *MEMORY[0x1E69BE028];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __66__PUCleanupToolController_checkPotentialInpaintOperation_handler___block_invoke;
  v38[3] = &unk_1E7B76810;
  v11 = operationCopy;
  v39 = v11;
  [v9 modifyAdjustmentWithKey:v10 modificationBlock:v38];
  v12 = [v9 inpaintAdjustmentControllerCreatingIfNecessary:0];
  compositionController2 = [(PUPhotoEditToolController *)self compositionController];
  composition = [compositionController2 composition];
  v15 = [v12 deltaFromComposition:composition];

  composition2 = [v9 composition];
  compositionController3 = [(PUPhotoEditToolController *)self compositionController];
  composition3 = [compositionController3 composition];
  if (([composition2 isEqualToComposition:composition3] & 1) != 0 || !v15)
  {
  }

  else
  {
    isEmpty = [v15 isEmpty];

    if ((isEmpty & 1) == 0)
    {
      v20 = +[PUPhotoEditProtoSettings sharedInstance];
      retouchEnablesSensitivityCheck = [v20 retouchEnablesSensitivityCheck];

      if (retouchEnablesSensitivityCheck)
      {
        sensitivityRequest = [(PUCleanupToolController *)self sensitivityRequest];

        if (!sensitivityRequest)
        {
          v23 = objc_alloc(MEMORY[0x1E69BDF50]);
          composition4 = [v9 composition];
          v25 = [v23 initWithComposition:composition4];
          [(PUCleanupToolController *)self setSensitivityRequest:v25];

          v26 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:1];
          sensitivityRequest2 = [(PUCleanupToolController *)self sensitivityRequest];
          [sensitivityRequest2 setPriority:v26];

          sensitivityRequest3 = [(PUCleanupToolController *)self sensitivityRequest];
          [sensitivityRequest3 setResponseQueue:MEMORY[0x1E69E96A0]];
        }

        composition5 = [v9 composition];
        sensitivityRequest4 = [(PUCleanupToolController *)self sensitivityRequest];
        [sensitivityRequest4 setComposition:composition5];

        isBusy = [(PUCleanupToolController *)self isBusy];
        if (!isBusy)
        {
          [(PUCleanupToolController *)self _setBusy:1];
          delegate = [(PUPhotoEditToolController *)self delegate];
          [delegate updateProgressIndicatorAnimated:1];
        }

        sensitivityRequest5 = [(PUCleanupToolController *)self sensitivityRequest];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __66__PUCleanupToolController_checkPotentialInpaintOperation_handler___block_invoke_2;
        v34[3] = &unk_1E7B76838;
        v37 = isBusy;
        v34[4] = self;
        v36 = handlerCopy;
        v35 = v15;
        [sensitivityRequest5 submit:v34];
      }

      else
      {
        (*(handlerCopy + 2))(handlerCopy, 1, v15);
      }
    }
  }
}

void __66__PUCleanupToolController_checkPotentialInpaintOperation_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((*(a1 + 56) & 1) == 0)
  {
    [*(a1 + 32) _setBusy:0];
    v4 = [*(a1 + 32) delegate];
    [v4 updateProgressIndicatorAnimated:1];
  }

  v11 = 0;
  v5 = [v3 result:&v11];
  v6 = v11;
  if (v5)
  {
    [v5 sensitivityScore];
    v8 = v7;
    [*(*(a1 + 32) + 1456) initialSensitivityScore];
    [MEMORY[0x1E69BDF50] currentSensitivityExceedsThresholds:v8 initialSensitivity:v9];
  }

  else
  {
    v10 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "Cleanup: Error returned from safety check: %@", buf, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_handleOperationExceedsSizeLimit
{
  [(PUCleanupToolController *)self _setBusy:0];
  delegate = [(PUPhotoEditToolController *)self delegate];
  [delegate updateProgressIndicatorAnimated:1];

  [(PUCleanupToolController *)self addUserPromptViewOfType:5 animated:1];
  [(PUCleanupToolController *)self fadeOutBrushStrokeWithDuration:0.2];
  [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay undimMasks];
  self->_redactionState = 0;
}

- (void)previewingOriginalDidStop
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  cleanupMaskDisplayMode = [v3 cleanupMaskDisplayMode];

  if ((cleanupMaskDisplayMode - 1) >= 2)
  {
    if (!cleanupMaskDisplayMode)
    {

      [(PUCleanupToolController *)self setVFXOverlayHidden:0];
    }
  }

  else
  {
    maskView = self->_maskView;

    [(PUCleanupToolMaskView *)maskView setHidden:0];
  }
}

- (void)previewingOriginalDidStart
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  cleanupMaskDisplayMode = [v3 cleanupMaskDisplayMode];

  if ((cleanupMaskDisplayMode - 1) >= 2)
  {
    if (!cleanupMaskDisplayMode)
    {

      [(PUCleanupToolController *)self setVFXOverlayHidden:1];
    }
  }

  else
  {
    maskView = self->_maskView;

    [(PUCleanupToolMaskView *)maskView setHidden:1];
  }
}

- (void)toolControllerWantsToShowOriginal:(BOOL)original
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  [delegate toolControllerWantsToToggleOriginal:self];
}

- (id)transformedImageForBrushStrokeExclusionMask:(id)mask
{
  v14 = *MEMORY[0x1E69E9840];
  if (mask)
  {
    v4 = MEMORY[0x1E695F658];
    buffer = [mask buffer];
    v6 = [v4 imageWithCVPixelBuffer:{objc_msgSend(buffer, "CVPixelBuffer")}];

    v11 = 0;
    v7 = [(PUCleanupToolController *)self transformedImage:v6 error:&v11];
    v8 = v11;

    if (v7)
    {
      v9 = [v7 imageByApplyingFilter:@"CIColorInvert"];
    }

    else
    {
      v7 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v8;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Error applying rendered geometry: %@", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)brushStrokeExclusionMaskForStrokeStartingAtImageSpacePoint:(CGPoint)point withRadius:(double)radius
{
  y = point.y;
  x = point.x;
  v18 = *MEMORY[0x1E69E9840];
  geometry = [(PUCleanupToolController *)self geometry];

  if (!geometry)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v16 = 138412290;
      v17 = @"self.geometry";
      _os_log_fault_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: %@", &v16, 0xCu);
    }
  }

  self->_exclusionMaskHitTestRadius = radius;
  _createSubjectExclusionMask = [(PUCleanupToolController *)self _createSubjectExclusionMask];
  v11 = _createSubjectExclusionMask;
  if (_createSubjectExclusionMask)
  {
    [_createSubjectExclusionMask scale];
    NUScaleInvert();
    NUScaleToDouble();
    v13 = v12;
    v14 = x * v12;
    if (radius <= 0.0)
    {
      if (![MEMORY[0x1E69BDE68] mask:v11 containsPoint:{v14, y * v13}])
      {
        goto LABEL_11;
      }
    }

    else if (([MEMORY[0x1E69BDE68] mask:v11 intersectsDiskWithOrigin:? radius:?] & 1) == 0)
    {
      goto LABEL_11;
    }

    v11 = 0;
  }

LABEL_11:

  return v11;
}

- (BOOL)isIpadLayout
{
  photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
  v3 = [photoEditSpec currentLayoutStyle] == 4;

  return v3;
}

- (void)_updateVFXMaskOverlayWithSelectedMask:(id)mask point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v17 = *MEMORY[0x1E69E9840];
  maskCopy = mask;
  if ([MEMORY[0x1E69B3DB8] isMaskValid:maskCopy])
  {
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    composition = [compositionController composition];

    v10 = [maskCopy imageByApplyingFilter:@"CIMaskToAlpha"];
    v14 = 0;
    v11 = [(PUCleanupToolController *)self transformedImage:v10 error:&v14];
    v12 = v14;

    if (v12 || !v11)
    {
      [(PUCleanupToolController *)self fadeOutBrushStrokeWithDuration:0.2];
      v13 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "error applying rendered geometry: %@", buf, 0xCu);
      }
    }

    else
    {
      [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay selectPoint:v11 withMask:composition composition:x, y];
    }
  }

  else
  {
    [(PUCleanupToolController *)self fadeOutBrushStrokeWithDuration:0.2];
  }
}

- (void)_createVFXMaskOverlays
{
  v38 = *MEMORY[0x1E69E9840];
  toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];

  if (toolContainerView)
  {
    v4 = off_1E7B6E000;
    v5 = +[PUPhotoEditProtoSettings sharedInstance];
    if ([v5 cleanupMaskDisplayMode])
    {
      maskContext = 0;
    }

    else
    {
      maskContext = [(PUCleanupToolController *)self maskContext];
    }

    if (self->_retouchVFXOverlay || ([(PUCleanupToolController *)self maskContext], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
LABEL_25:

      goto LABEL_26;
    }

    v8 = [PUVFXRetouchOverlay alloc];
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    composition = [compositionController composition];
    delegate = [(PUPhotoEditToolController *)self delegate];
    mediaView = [delegate mediaView];
    _visibleImageRectOverlayView = [mediaView _visibleImageRectOverlayView];
    v14 = [(PUVFXRetouchOverlay *)v8 initWithComposition:composition maskContext:maskContext constrainingView:_visibleImageRectOverlayView isHDR:self->_needsHDRUI overlayDelegate:self];
    retouchVFXOverlay = self->_retouchVFXOverlay;
    self->_retouchVFXOverlay = v14;

    [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay setUserInteractionEnabled:0];
    brushView = [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay brushView];
    [(PUCleanupOverlayViewController *)self->_overlayController setVfxBrushView:brushView];

    view = [(PUCleanupToolController *)self view];
    subviews = [view subviews];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = subviews;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v34;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v33 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            view2 = [(PUCleanupToolController *)self view];
            [view2 insertSubview:self->_retouchVFXOverlay aboveSubview:v25];

            v22 = 1;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v21);

      v4 = off_1E7B6E000;
      if (v22)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v27 = PXAssertGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v32 = 0;
      _os_log_error_impl(&dword_1B36F3000, v27, OS_LOG_TYPE_ERROR, "Couldn't find PUCleanupOverlayView in subviews array.", v32, 2u);
    }

    view3 = [(PUCleanupToolController *)self view];
    [view3 addSubview:self->_retouchVFXOverlay];

LABEL_22:
    sharedInstance = [(__objc2_class *)v4[68] sharedInstance];
    retouchShowVFXControls = [sharedInstance retouchShowVFXControls];

    if (retouchShowVFXControls)
    {
      [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay showControlsInViewController:self];
    }

    goto LABEL_25;
  }

LABEL_26:
  view4 = [(PUCleanupToolController *)self view];
  [view4 setNeedsUpdateConstraints];
}

- (void)_createMaskView
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_maskView)
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    mediaView = [delegate mediaView];

    [mediaView bounds];
    v6 = v5;
    v8 = v7;
    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v21.width = v6;
      v21.height = v8;
      v10 = NSStringFromCGSize(v21);
      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEBUG, "mediaViewSize: %@", &v18, 0xCu);
    }

    v11 = [[PUCleanupToolMaskView alloc] initWithMediaView:mediaView isHDR:self->_needsHDRUI];
    maskView = self->_maskView;
    self->_maskView = v11;

    [(PUCleanupToolMaskView *)self->_maskView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(PUCleanupToolMaskView *)self->_maskView layer];
    [layer setMasksToBounds:1];

    v14 = self->_maskView;
    layer2 = [(PUCleanupToolMaskView *)v14 layer];
    [layer2 setDelegate:v14];

    [(PUCleanupToolMaskView *)self->_maskView setMaskTransformerDelegate:self];
    [(PUCleanupToolMaskView *)self->_maskView setUserInteractionEnabled:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PUCleanupToolMaskView *)self->_maskView setBackgroundColor:clearColor];

    view = [(PUCleanupToolController *)self view];
    [view insertSubview:self->_maskView atIndex:0];
  }
}

- (void)_updateMaskViewForDefaultMode
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  cleanupMaskDisplayMode = [v3 cleanupMaskDisplayMode];

  if (cleanupMaskDisplayMode == 2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__PUCleanupToolController__updateMaskViewForDefaultMode__block_invoke;
    v6[3] = &unk_1E7B767E8;
    v6[4] = self;
    [(PUCleanupToolController *)self createAllAvailableMasks:v6];
  }

  else if (cleanupMaskDisplayMode == 1)
  {
    _newOverlayMask = [(PUCleanupToolController *)self _newOverlayMask];
    [(PUCleanupToolController *)self _updateMaskViewWithUnselectedMaskImage:_newOverlayMask foregroundMasks:0 backgroundMasks:0];
  }
}

void __56__PUCleanupToolController__updateMaskViewForDefaultMode__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PUCleanupToolController__updateMaskViewForDefaultMode__block_invoke_2;
  block[3] = &unk_1E7B809F0;
  block[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateMaskViewForDefaultModeIfNecessary
{
  if (self->_cleanupMode == 1)
  {
    [(PUCleanupToolController *)self _updateMaskViewForDefaultMode];
  }
}

- (void)_displayProcessingWithSelectedMaskImage:(id)image unselectedMaskImage:(id)maskImage exclusionMasks:(id)masks point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v45 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  maskImageCopy = maskImage;
  masksCopy = masks;
  v12 = imageCopy;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = [masksCopy countByEnumeratingWithState:&v40 objects:v44 count:16];
  v38 = v12;
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      v16 = 0;
      v17 = v12;
      do
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(masksCopy);
        }

        v18 = MEMORY[0x1E695F658];
        buffer = [*(*(&v40 + 1) + 8 * v16) buffer];
        v20 = [v18 imageWithCVPixelBuffer:{objc_msgSend(buffer, "CVPixelBuffer")}];

        [v17 extent];
        v22 = v21;
        [v20 extent];
        v24 = v22 / v23;
        [v17 extent];
        v26 = v25;
        [v20 extent];
        CGAffineTransformMakeScale(&v39, v24, v26 / v27);
        v28 = [v20 imageByApplyingTransform:&v39];

        subtract = [MEMORY[0x1E695F608] subtract];
        v12 = [subtract applyWithForeground:v28 background:v17];

        ++v16;
        v17 = v12;
      }

      while (v14 != v16);
      v14 = [masksCopy countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v14);
  }

  v30 = +[PUPhotoEditProtoSettings sharedInstance];
  cleanupMaskDisplayMode = [v30 cleanupMaskDisplayMode];

  if (!cleanupMaskDisplayMode)
  {
    if (v12)
    {
      [(PUCleanupToolController *)self _updateVFXMaskOverlayWithSelectedMask:v12 point:x, y];
    }

    else
    {
      [(PUCleanupToolController *)self fadeOutBrushStrokeWithDuration:0.2];
    }
  }

  v32 = [v12 imageByApplyingFilter:@"CIColorInvert"];
  v33 = +[PUPhotoEditProtoSettings sharedInstance];
  cleanupMaskDisplayMode2 = [v33 cleanupMaskDisplayMode];

  if ((cleanupMaskDisplayMode2 - 1) <= 1)
  {
    [(PUCleanupToolMaskView *)self->_maskView setMask:maskImageCopy];
    [(PUCleanupToolMaskView *)self->_maskView setSelectedMask:v32];
    [(PUCleanupToolMaskView *)self->_maskView setForegroundMasks:0];
    [(PUCleanupToolMaskView *)self->_maskView setBackgroundMasks:0];
    [(PUCleanupToolMaskView *)self->_maskView setNeedsDisplay];
    [(PUCleanupToolController *)self fadeOutBrushStrokeWithDuration:0.2];
  }

  if (v32)
  {
    [(PUCleanupToolController *)self _setBusy:1 withDelay:15.0];
    delegate = [(PUPhotoEditToolController *)self delegate];
    [delegate updateProgressIndicatorAnimated:1];
  }
}

- (void)_displayProcessingWithSelectedMask:(id)mask unselectedMaskImage:(id)image exclusionMasks:(id)masks point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v11 = MEMORY[0x1E695F658];
  masksCopy = masks;
  imageCopy = image;
  buffer = [mask buffer];
  v15 = [v11 imageWithCVPixelBuffer:{objc_msgSend(buffer, "CVPixelBuffer")}];

  [(PUCleanupToolController *)self _displayProcessingWithSelectedMaskImage:v15 unselectedMaskImage:imageCopy exclusionMasks:masksCopy point:x, y];
}

- (void)_updateMaskViewWithUnselectedMaskImage:(id)image foregroundMasks:(id)masks backgroundMasks:(id)backgroundMasks
{
  imageCopy = image;
  masksCopy = masks;
  backgroundMasksCopy = backgroundMasks;
  v10 = +[PUPhotoEditProtoSettings sharedInstance];
  cleanupMaskDisplayMode = [v10 cleanupMaskDisplayMode];

  if ((cleanupMaskDisplayMode - 1) <= 1)
  {
    [(PUCleanupToolMaskView *)self->_maskView setMask:imageCopy];
    [(PUCleanupToolMaskView *)self->_maskView setSelectedMask:0];
    [(PUCleanupToolMaskView *)self->_maskView setForegroundMasks:masksCopy];
    [(PUCleanupToolMaskView *)self->_maskView setBackgroundMasks:backgroundMasksCopy];
    [(PUCleanupToolMaskView *)self->_maskView setNeedsDisplay];
  }
}

- (id)_createSubjectExclusionMask
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__21603;
  v14 = __Block_byref_object_dispose__21604;
  v15 = 0;
  if ([MEMORY[0x1E69B3AB0] preserveSubjectsWhenInpainting] && self->_cleanupMode == 1)
  {
    v3 = MEMORY[0x1E69BDE68];
    maskContext = [(PUCleanupToolController *)self maskContext];
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    composition = [compositionController composition];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PUCleanupToolController__createSubjectExclusionMask__block_invoke;
    v9[3] = &unk_1E7B7C288;
    v9[4] = &v10;
    [v3 createSubjectMaskForContext:maskContext composition:composition completion:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)_newOverlayMask
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__21603;
  v21 = __Block_byref_object_dispose__21604;
  v22 = 0;
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  cleanupMaskDisplayMode = [v3 cleanupMaskDisplayMode];

  if (cleanupMaskDisplayMode == 1)
  {
    maskContext = [(PUCleanupToolController *)self maskContext];

    if (maskContext)
    {
      v10 = MEMORY[0x1E69BDE68];
      maskContext2 = [(PUCleanupToolController *)self maskContext];
      compositionController = [(PUPhotoEditToolController *)self compositionController];
      composition = [compositionController composition];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __42__PUCleanupToolController__newOverlayMask__block_invoke;
      v16[3] = &unk_1E7B767C0;
      v16[4] = self;
      v16[5] = &v17;
      [v10 createDeclutterMaskForContext:maskContext2 composition:composition completion:v16];

      goto LABEL_6;
    }
  }

  else if (cleanupMaskDisplayMode == 2)
  {
    v5 = MEMORY[0x1E69BDE68];
    maskContext2 = [(PUCleanupToolController *)self maskContext];
    compositionController2 = [(PUPhotoEditToolController *)self compositionController];
    composition2 = [compositionController2 composition];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42__PUCleanupToolController__newOverlayMask__block_invoke_2;
    v15[3] = &unk_1E7B7C288;
    v15[4] = &v17;
    [v5 createAvailableObjectsMaskForContext:maskContext2 composition:composition2 completion:v15];

LABEL_6:
  }

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v13;
}

void __42__PUCleanupToolController__newOverlayMask__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E695F658];
    v4 = [a2 buffer];
    v5 = [v3 imageWithCVPixelBuffer:{objc_msgSend(v4, "CVPixelBuffer")}];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(a1 + 32) _createSubjectExclusionMask];
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x1E695F658];
      v11 = [v8 buffer];
      v12 = [v10 imageWithCVPixelBuffer:{objc_msgSend(v11, "CVPixelBuffer")}];

      [*(*(*(a1 + 40) + 8) + 40) extent];
      v14 = v13;
      [v12 extent];
      v16 = v14 / v15;
      [*(*(*(a1 + 40) + 8) + 40) extent];
      v18 = v17;
      [v12 extent];
      CGAffineTransformMakeScale(&v28, v16, v18 / v19);
      v20 = [v12 imageByApplyingTransform:&v28];

      v21 = [MEMORY[0x1E695F608] subtract];
      v22 = [v21 applyWithForeground:v20 background:*(*(*(a1 + 40) + 8) + 40)];
      v23 = *(*(a1 + 40) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    v25 = [*(*(*(a1 + 40) + 8) + 40) imageByApplyingFilter:@"CIColorInvert"];
    v26 = *(*(a1 + 40) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }
}

uint64_t __42__PUCleanupToolController__newOverlayMask__block_invoke_2(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    v3 = MEMORY[0x1E695F658];
    v4 = [a2 buffer];
    v5 = [v3 imageWithCVPixelBuffer:{objc_msgSend(v4, "CVPixelBuffer")}];
    v6 = *(*(v2 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(*(*(v2 + 32) + 8) + 40) imageByApplyingFilter:@"CIColorInvert"];
    v9 = *(*(v2 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    return MEMORY[0x1EEE66BB8](v8, v10);
  }

  return result;
}

- (void)createAllAvailableMasks:(id)masks
{
  masksCopy = masks;
  maskContext = [(PUCleanupToolController *)self maskContext];
  segmentationResult = [maskContext segmentationResult];

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if (segmentationResult)
  {
    v26 = masksCopy;
    instances = [segmentationResult instances];
    v9 = [instances copy];

    v10 = MEMORY[0x1E69BDE68];
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    composition = [compositionController composition];
    maskContext2 = [(PUCleanupToolController *)self maskContext];
    v14 = [v10 removeOperationsFromInstances:v9 composition:composition context:maskContext2];

    firstIndex = [v14 firstIndex];
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = firstIndex;
      v17 = 0;
      do
      {
        v18 = v17;
        v28 = 0;
        v19 = [segmentationResult newMaskForInstance:v16 error:&v28];
        v17 = v28;

        v20 = [MEMORY[0x1E695F658] imageWithCVImageBuffer:{objc_msgSend(v19, "CVPixelBuffer")}];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 imageByApplyingFilter:@"CIColorInvert"];

          foregroundInstances = [segmentationResult foregroundInstances];
          v24 = [foregroundInstances containsIndex:v16];

          if (v24)
          {
            v25 = array2;
          }

          else
          {
            v25 = array;
          }

          [v25 addObject:v22];
        }

        v16 = [v14 indexGreaterThanIndex:v16];
      }

      while (v16 != 0x7FFFFFFFFFFFFFFFLL);
    }

    masksCopy = v26;
  }

  masksCopy[2](masksCopy, array, array2, 0);
}

- (void)addObjectRemovalUsingImageSpaceStroke:(id)stroke exclusionMask:(id)mask completion:(id)completion
{
  strokeCopy = stroke;
  maskCopy = mask;
  completionCopy = completion;
  delegate = [(PUPhotoEditToolController *)self delegate];
  mediaView = [delegate mediaView];
  _scrollView = [mediaView _scrollView];
  [_scrollView contentSize];
  v15 = v14;

  geometry = [(PUCleanupToolController *)self geometry];
  [geometry outputRect];
  v18 = v17;

  v19 = maskCopy;
  exclusionMaskHitTestRadius = self->_exclusionMaskHitTestRadius;
  isBusy = [(PUCleanupToolController *)self isBusy];
  if (!isBusy)
  {
    [(PUCleanupToolController *)self _setBusy:1];
    delegate2 = [(PUPhotoEditToolController *)self delegate];
    [delegate2 updateProgressIndicatorAnimated:1];

    [(PUCleanupOverlayViewController *)self->_overlayController setCleanupMode:0];
  }

  [(PUCleanupToolController *)self _interactionOccurred];
  v23 = objc_alloc_init(MEMORY[0x1E69C4270]);
  maskContext = [(PUCleanupToolController *)self maskContext];
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  geometry2 = [(PUCleanupToolController *)self geometry];
  detectedFaces = [(PIInpaintMaskContext *)self->_maskContext detectedFaces];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __90__PUCleanupToolController_addObjectRemovalUsingImageSpaceStroke_exclusionMask_completion___block_invoke;
  v31[3] = &unk_1E7B76798;
  v36 = isBusy;
  v31[4] = self;
  v32 = strokeCopy;
  v35 = exclusionMaskHitTestRadius;
  v33 = v19;
  v34 = completionCopy;
  v28 = completionCopy;
  v29 = v19;
  v30 = strokeCopy;
  [v23 analyzeStrokeMaskIntersections:v30 inpaintMaskContext:maskContext compositionController:compositionController geometry:geometry2 imageToScreenSpaceScale:detectedFaces faceRects:v31 completion:v15 / v18];
}

void __90__PUCleanupToolController_addObjectRemovalUsingImageSpaceStroke_exclusionMask_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6, char a7, char a8)
{
  v14 = a2;
  v15 = a3;
  v16 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PUCleanupToolController_addObjectRemovalUsingImageSpaceStroke_exclusionMask_completion___block_invoke_2;
  block[3] = &unk_1E7B76770;
  v31 = *(a1 + 72);
  v17 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v18 = v17;
  v32 = a6;
  v33 = a7;
  v30 = *(a1 + 64);
  v24 = v18;
  v25 = v14;
  v26 = *(a1 + 48);
  v27 = v15;
  v34 = a8;
  v19 = *(a1 + 56);
  v28 = v16;
  v29 = v19;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __90__PUCleanupToolController_addObjectRemovalUsingImageSpaceStroke_exclusionMask_completion___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v81 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 96) & 1) == 0)
  {
    [*(a1 + 32) _setBusy:0];
    v2 = [*(v1 + 32) delegate];
    [v2 updateProgressIndicatorAnimated:1];

    [*(*(v1 + 32) + 1224) setCleanupMode:1];
  }

  v3 = [objc_alloc(MEMORY[0x1E69BDDC8]) initWithStroke:*(v1 + 40) closed:*(v1 + 97) skipSegmentationIntersections:0 needsFacePixellation:*(v1 + 98) subjectHitTestRadius:*(v1 + 88)];
  v4 = [*(v1 + 32) compositionController];
  v5 = [v4 brushStrokeHistory];
  [v5 addEntry:v3];

  if (![*(v1 + 48) count])
  {
    v8 = *(v1 + 97);
    v9 = PLPhotoEditGetLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8 == 1)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEBUG, "addObjectRemovalUsingStroke: adding removal of entire filled brush stroke", buf, 2u);
      }

      [*(v1 + 32) _addImageSpaceInpaintingStroke:*(v1 + 40) closeAndFillStroke:1 needsFacePixellation:*(v1 + 98) recordStroke:0 exclusionMask:*(v1 + 56) exclusionMaskHitTestRadius:0 retouchBrush:*(v1 + 88) completion:*(v1 + 80)];
    }

    else
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEBUG, "addObjectRemovalUsingStroke: adding removal of simple brush stroke", buf, 2u);
      }

      [*(v1 + 32) _addImageSpaceInpaintingStroke:*(v1 + 40) closeAndFillStroke:0 needsFacePixellation:*(v1 + 98) recordStroke:0 exclusionMask:*(v1 + 56) exclusionMaskHitTestRadius:0 retouchBrush:*(v1 + 88) completion:*(v1 + 80)];
    }

LABEL_47:
    v48 = +[PUPhotoEditProtoSettings sharedInstance];
    if ([v48 retouchShowsTargetPointBrushPoints])
    {
    }

    else
    {
      v49 = +[PUPhotoEditProtoSettings sharedInstance];
      v50 = [v49 cleanupMaskDisplayMode];

      if (!v50)
      {
        goto LABEL_51;
      }
    }

    v51 = PFMap();
    [*(*(v1 + 32) + 1432) setFoundIntersectionMasks:v51];
    [*(*(v1 + 32) + 1432) setSampledPoints:*(v1 + 72)];
    [*(*(v1 + 32) + 1432) setNeedsDisplay];

    goto LABEL_51;
  }

  v6 = *(v1 + 32);
  if (*(v6 + 1344))
  {
    v7 = 2;
LABEL_12:
    *(v6 + 1336) = v7;
    v6 = *(v1 + 32);
    goto LABEL_13;
  }

  if (*(v1 + 98) == 1)
  {
    v7 = 1;
    goto LABEL_12;
  }

LABEL_13:
  v11 = MEMORY[0x1E69BDE68];
  v12 = *(v1 + 48);
  [v6 imageSize];
  v13 = [v11 objectMasksExceedSizeLimit:v12 imageSize:?];
  v14 = *(v1 + 32);
  if (v14[167] || !v13)
  {
    v52 = v3;
    v15 = [MEMORY[0x1E695F658] emptyImage];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v53 = v1;
    obj = *(v1 + 48);
    v16 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v72;
      v19 = *MEMORY[0x1E695FAB0];
      v20 = *MEMORY[0x1E695FA48];
      do
      {
        v21 = 0;
        v22 = v15;
        do
        {
          if (*v72 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v23 = MEMORY[0x1E695F658];
          v24 = [*(*(&v71 + 1) + 8 * v21) buffer];
          v25 = [v23 imageWithCVImageBuffer:{objc_msgSend(v24, "CVPixelBuffer")}];

          v78[0] = v19;
          v78[1] = v20;
          v79[0] = v25;
          v79[1] = v22;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
          v27 = [MEMORY[0x1E695F648] filterWithName:@"CIMaximumCompositing" withInputParameters:v26];
          v15 = [v27 outputImage];

          ++v21;
          v22 = v15;
        }

        while (v17 != v21);
        v17 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
      }

      while (v17);
    }

    v1 = v53;
    if (*(v53 + 56))
    {
      v77 = *(v53 + 56);
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
    }

    if (*(v53 + 97) == 1)
    {
      v29 = [*(v53 + 32) maskContext];
      v30 = *(v53 + 64);
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __90__PUCleanupToolController_addObjectRemovalUsingImageSpaceStroke_exclusionMask_completion___block_invoke_3;
      v69[3] = &unk_1E7B76728;
      v31 = v29;
      v70 = v31;
      if ([v30 indexPassingTest:v69] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = [*(v53 + 32) _createSubjectExclusionMask];
        v33 = v32;
        if (v32)
        {
          v76 = v32;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];

          v28 = v34;
        }
      }

      else
      {
        v33 = v28;
        v28 = MEMORY[0x1E695E0F0];
      }
    }

    v35 = *(v53 + 32);
    v36 = [v35 _newOverlayMask];
    [v35 _displayProcessingWithSelectedMaskImage:v15 unselectedMaskImage:v36 exclusionMasks:v28 point:{0.0, 0.0}];

    v37 = *(v53 + 32);
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __90__PUCleanupToolController_addObjectRemovalUsingImageSpaceStroke_exclusionMask_completion___block_invoke_4;
    v64[3] = &unk_1E7B766D8;
    v67 = *(v53 + 97);
    v68 = *(v53 + 99);
    v64[4] = v37;
    v65 = *(v53 + 48);
    v38 = v28;
    v66 = v38;
    [v37 modifyInpaintAdjustmentWithBlock:v64 actionStringKey:@"PHOTOEDIT_CLEANUP_CLEAN_UP_ACTION_TITLE" completion:*(v53 + 80)];
    v39 = *MEMORY[0x1E69B3908];
    v40 = *(MEMORY[0x1E69B3908] + 16);
    v41 = *(MEMORY[0x1E69B3908] + 24);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = v39;
    v42 = *(v53 + 48);
    v43 = [v42 countByEnumeratingWithState:&v59 objects:v75 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v60;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v60 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v59 + 1) + 8 * i);
          *buf = 0u;
          v58 = 0u;
          if (v47)
          {
            [v47 extent];
          }

          else
          {
            v55 = 0uLL;
            v56 = 0uLL;
          }

          [v47 scale];
          NUPixelRectScaleRational();
          NUPixelRectUnion();
          v63 = v55;
          v41 = *(&v56 + 1);
          v40 = v56;
        }

        v44 = [v42 countByEnumeratingWithState:&v59 objects:v75 count:16];
      }

      while (v44);
    }

    [*(v53 + 32) _setLastInteractionPixelCount:v40 * v41];
    v3 = v52;
    goto LABEL_47;
  }

  [v14 _handleOperationExceedsSizeLimit];
LABEL_51:
}

uint64_t __90__PUCleanupToolController_addObjectRemovalUsingImageSpaceStroke_exclusionMask_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) segmentationResult];
  v4 = [v3 foregroundInstances];
  v5 = [v4 containsIndex:a2];

  return v5;
}

void __90__PUCleanupToolController_addObjectRemovalUsingImageSpaceStroke_exclusionMask_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  v4 = *(a1 + 57);
  v5 = *(*(a1 + 32) + 1336);
  v6 = a2;
  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [*(a1 + 40) count];
    *buf = 134217984;
    v15 = v8;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEBUG, "addObjectRemovalUsingStroke: adding removal of %ld masks", buf, 0xCu);
  }

  v9 = 128;
  if (v3)
  {
    v9 = 64;
  }

  if (v4)
  {
    v9 |= 8uLL;
  }

  if (v5)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = 0;
  [v6 appendRemovalOperationWithMasks:v11 exclusionMasks:v12 options:v10 error:&v13];
}

id __90__PUCleanupToolController_addObjectRemovalUsingImageSpaceStroke_exclusionMask_completion___block_invoke_188(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695F658];
  v3 = [a2 buffer];
  v4 = [v2 imageWithCVPixelBuffer:{objc_msgSend(v3, "CVPixelBuffer")}];
  v5 = [v4 imageByApplyingFilter:@"CIColorInvert"];

  return v5;
}

- (void)addObjectRemovalUsingStroke:(id)stroke exclusionMask:(id)mask
{
  v31 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  maskCopy = mask;
  v7 = objc_alloc(MEMORY[0x1E69B3B90]);
  [strokeCopy radius];
  v8 = *(MEMORY[0x1E69B3900] + 16);
  *buf = *MEMORY[0x1E69B3900];
  v30 = v8;
  v9 = [v7 initWithRadius:buf softness:0 opacity:? clipRect:? pressureMode:?];
  string = [MEMORY[0x1E696AD60] string];
  [string appendString:@"addObjectRemovalUsingStroke"];
  if ([strokeCopy pointCount] >= 1)
  {
    v11 = 0;
    do
    {
      [strokeCopy pointAtIndex:v11];
      v13 = v12;
      [strokeCopy pointAtIndex:v11];
      v15 = v14;
      v16 = MEMORY[0x1E696AEC0];
      v32.x = v13;
      v32.y = v14;
      v17 = NSStringFromCGPoint(v32);
      v18 = [v16 stringWithFormat:@"\n\t%@", v17];
      [string appendString:v18];

      delegate = [(PUPhotoEditToolController *)self delegate];
      view = [(PUCleanupOverlayViewController *)self->_overlayController view];
      [delegate toolController:self originalPointFromViewPoint:view view:{v13, v15}];
      v22 = v21;
      v24 = v23;

      *&v25 = v22;
      *&v26 = v24;
      [v9 appendPoint:{v25, v26, 0.0}];
      ++v11;
    }

    while ([strokeCopy pointCount] > v11);
  }

  v27 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = string;
    _os_log_impl(&dword_1B36F3000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  [(PUCleanupToolController *)self addObjectRemovalUsingImageSpaceStroke:v9 exclusionMask:maskCopy completion:0];
}

- (void)addObjectRemovalAtImageSpacePoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  self->_redactionState = 0;
  v8 = [objc_alloc(MEMORY[0x1E69BDDC8]) initWithObjectRemovalAtPoint:{x, y}];
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  brushStrokeHistory = [compositionController brushStrokeHistory];
  [brushStrokeHistory addEntry:v8];

  [(PUCleanupToolController *)self _interactionOccurred];
  v11 = objc_alloc_init(MEMORY[0x1E69C4270]);
  [(PUCleanupToolController *)self brushRadiusForTouchType:0];
  v13 = v12;
  maskContext = [(PUCleanupToolController *)self maskContext];
  compositionController2 = [(PUPhotoEditToolController *)self compositionController];
  geometry = [(PUCleanupToolController *)self geometry];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PUCleanupToolController_addObjectRemovalAtImageSpacePoint_completion___block_invoke;
  v18[3] = &unk_1E7B76700;
  v20 = x;
  v21 = y;
  v18[4] = self;
  v19 = completionCopy;
  v17 = completionCopy;
  [v11 hitTestSegmentation:maskContext radius:compositionController2 inpaintMaskContext:geometry compositionController:v18 geometry:x completion:{y, v13}];
}

void __72__PUCleanupToolController_addObjectRemovalAtImageSpacePoint_completion___block_invoke(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _createSubjectExclusionMask];
    v5 = MEMORY[0x1E69BDE68];
    v32[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    [*(a1 + 32) imageSize];
    LODWORD(v5) = [v5 objectMasksExceedSizeLimit:v6 imageSize:?];

    v7 = *(a1 + 32);
    if (v5)
    {
      [v7 _handleOperationExceedsSizeLimit];
      v8 = *(a1 + 40);
      if (v8)
      {
        (*(v8 + 16))();
      }
    }

    else
    {
      if (*(v7 + 1344) == 1)
      {
        *(v7 + 1336) = 2;
      }

      if (v4)
      {
        v31 = v4;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      }

      else
      {
        v12 = MEMORY[0x1E695E0F0];
      }

      v13 = +[PUPhotoEditProtoSettings sharedInstance];
      if ([v13 cleanupMaskDisplayMode])
      {
        v14 = [*(a1 + 32) _newOverlayMask];
      }

      else
      {
        v14 = 0;
      }

      v15 = [*(a1 + 32) delegate];
      v16 = *(a1 + 32);
      v17 = [*(v16 + 1224) view];
      [v15 toolController:v16 viewPointFromOriginalPoint:v17 view:{*(a1 + 48), *(a1 + 56)}];
      v19 = v18;
      v21 = v20;

      [*(a1 + 32) _displayProcessingWithSelectedMask:v3 unselectedMaskImage:v14 exclusionMasks:v12 point:{v19, v21}];
      v22 = *(a1 + 32);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __72__PUCleanupToolController_addObjectRemovalAtImageSpacePoint_completion___block_invoke_173;
      v26[3] = &unk_1E7B76688;
      v26[4] = v22;
      v23 = v3;
      v27 = v23;
      v28 = v12;
      v24 = *(a1 + 40);
      v25 = v12;
      [v22 modifyInpaintAdjustmentWithBlock:v26 actionStringKey:@"PHOTOEDIT_CLEANUP_CLEAN_UP_ACTION_TITLE" completion:v24];
      *buf = 0u;
      v30 = 0u;
      [v23 extent];
      [v23 scale];
      NUPixelRectScaleRational();
      [*(a1 + 32) _setLastInteractionPixelCount:*(&v30 + 1) * v30];
    }
  }

  else
  {
    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [MEMORY[0x1E696B098] valueWithPoint:{*(a1 + 48), *(a1 + 56)}];
      *buf = 138412290;
      *&buf[4] = v10;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEBUG, "Cleanup: Did not find object at point %@", buf, 0xCu);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))();
    }
  }
}

void __72__PUCleanupToolController_addObjectRemovalAtImageSpacePoint_completion___block_invoke_173(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (*(a1[4] + 1336))
  {
    v3 = 33;
  }

  else
  {
    v3 = 32;
  }

  v9[0] = a1[5];
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:v9 count:1];
  v7 = a1[6];
  v8 = 0;
  [v5 appendRemovalOperationWithMasks:v6 exclusionMasks:v7 options:v3 error:&v8];
}

- (void)addObjectRemovalAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  delegate = [(PUPhotoEditToolController *)self delegate];
  view = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [delegate toolController:self originalPointFromViewPoint:view view:{x, y}];
  v9 = v8;
  v11 = v10;

  [(PUCleanupToolController *)self addObjectRemovalAtImageSpacePoint:0 completion:v9, v11];
}

- (void)addStroke:(id)stroke closeAndFillStroke:(BOOL)fillStroke completion:(id)completion
{
  fillStrokeCopy = fillStroke;
  strokeCopy = stroke;
  completionCopy = completion;
  v10 = objc_alloc(MEMORY[0x1E69B3B90]);
  [strokeCopy radius];
  v11 = *(MEMORY[0x1E69B3900] + 16);
  v26[0] = *MEMORY[0x1E69B3900];
  v26[1] = v11;
  v12 = [v10 initWithRadius:v26 softness:0 opacity:? clipRect:? pressureMode:?];
  if ([strokeCopy pointCount] >= 1)
  {
    v13 = 0;
    do
    {
      [strokeCopy pointAtIndex:v13];
      v15 = v14;
      [strokeCopy pointAtIndex:v13];
      v17 = v16;
      delegate = [(PUPhotoEditToolController *)self delegate];
      view = [(PUCleanupOverlayViewController *)self->_overlayController view];
      [delegate toolController:self originalPointFromViewPoint:view view:{v15, v17}];
      v21 = v20;
      v23 = v22;

      *&v24 = v21;
      *&v25 = v23;
      [v12 appendPoint:{v24, v25, 0.0}];
      ++v13;
    }

    while ([strokeCopy pointCount] > v13);
  }

  [(PUCleanupToolController *)self addImageSpaceInpaintingStroke:v12 exclusionMask:0 closeAndFillStroke:fillStrokeCopy needsFacePixellation:0 recordStroke:1 completion:completionCopy];
}

- (void)_addImageSpaceInpaintingStroke:(id)stroke closeAndFillStroke:(BOOL)fillStroke needsFacePixellation:(BOOL)pixellation recordStroke:(BOOL)recordStroke exclusionMask:(id)mask exclusionMaskHitTestRadius:(double)radius retouchBrush:(BOOL)brush completion:(id)self0
{
  recordStrokeCopy = recordStroke;
  pixellationCopy = pixellation;
  fillStrokeCopy = fillStroke;
  v49[1] = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  maskCopy = mask;
  completionCopy = completion;
  if (recordStrokeCopy)
  {
    v19 = [objc_alloc(MEMORY[0x1E69BDDC8]) initWithStroke:strokeCopy closed:fillStrokeCopy skipSegmentationIntersections:1 needsFacePixellation:pixellationCopy subjectHitTestRadius:radius];
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    brushStrokeHistory = [compositionController brushStrokeHistory];
    [brushStrokeHistory addEntry:v19];
  }

  v22 = [strokeCopy ciImageTiled:0 closed:1 pressureMode:2 filled:fillStrokeCopy];
  v23 = MEMORY[0x1E695F658];
  blackColor = [MEMORY[0x1E695F610] blackColor];
  v25 = [v23 imageWithColor:blackColor];

  v26 = [v22 imageByCompositingOverImage:v25];
  [(PUCleanupToolController *)self imageSize];
  v43 = [v26 imageByCroppingToRect:{0.0, 0.0, v27, v28}];

  [(PUCleanupToolController *)self _setBusy:1 withDelay:15.0];
  delegate = [(PUPhotoEditToolController *)self delegate];
  [delegate updateProgressIndicatorAnimated:1];

  isUnsafeInitially = self->_isUnsafeInitially;
  if (isUnsafeInitially || pixellationCopy)
  {
    v31 = !isUnsafeInitially;
    v32 = 1;
    if (!v31)
    {
      v32 = 2;
    }

    self->_redactionState = v32;
  }

  v33 = MEMORY[0x1E69BDE68];
  [(PUCleanupToolController *)self imageSize];
  v34 = [v33 brushStrokeExceedsSizeLimit:strokeCopy imageSize:fillStrokeCopy closeAndFillStroke:?];
  redactionState = self->_redactionState;
  if (redactionState || !v34)
  {
    v41 = maskCopy;
    if (maskCopy)
    {
      v49[0] = maskCopy;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
      redactionState = self->_redactionState;
    }

    else
    {
      v36 = MEMORY[0x1E695E0F0];
    }

    if (redactionState)
    {
      v37 = 0;
    }

    else
    {
      v37 = v43;
    }

    cleanupMode = self->_cleanupMode;
    if (cleanupMode == 1)
    {
      _newOverlayMask = [(PUCleanupToolController *)self _newOverlayMask];
    }

    else
    {
      _newOverlayMask = 0;
    }

    [(PUCleanupToolController *)self _displayProcessingWithSelectedMaskImage:v37 unselectedMaskImage:_newOverlayMask exclusionMasks:v36 point:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    if (cleanupMode == 1)
    {
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __176__PUCleanupToolController__addImageSpaceInpaintingStroke_closeAndFillStroke_needsFacePixellation_recordStroke_exclusionMask_exclusionMaskHitTestRadius_retouchBrush_completion___block_invoke;
    v44[3] = &unk_1E7B766D8;
    v44[4] = self;
    v47 = fillStrokeCopy;
    brushCopy = brush;
    v45 = strokeCopy;
    v46 = v36;
    v40 = v36;
    [(PUCleanupToolController *)self modifyInpaintAdjustmentWithBlock:v44 actionStringKey:@"PHOTOEDIT_CLEANUP_CLEAN_UP_ACTION_TITLE" completion:completionCopy];

    maskCopy = v41;
  }

  else
  {
    [(PUCleanupToolController *)self _handleOperationExceedsSizeLimit];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __176__PUCleanupToolController__addImageSpaceInpaintingStroke_closeAndFillStroke_needsFacePixellation_recordStroke_exclusionMask_exclusionMaskHitTestRadius_retouchBrush_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 1336);
  v5 = v4 == 0;
  v6 = v4 != 0;
  v7 = 16;
  if (!v5)
  {
    v7 = 17;
  }

  if (*(a1 + 56))
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (*(a1 + 57) == 1)
  {
    v30 = [*(a1 + 40) ciImageTiled:0 closed:0 pressureMode:2 filled:0];
    v9 = [*(a1 + 32) renderer];
    v10 = [*(a1 + 32) compositionController];
    v11 = [v10 composition];
    v12 = [MEMORY[0x1E69BDEF0] pipelineFiltersForCropping];
    v29 = [v9 getGeometryForComposition:v11 pipelineFilters:v12];

    [v29 size];
    NUPixelSizeToCGSize();
    v14 = v13;
    v16 = v15;
    v17 = [*(a1 + 32) compositionController];
    v18 = [v17 imageOrientation];

    v19 = [objc_alloc(MEMORY[0x1E69BE490]) initWithInputSize:v18 inputOrientation:{v14, v16}];
    [v19 inputRect];
    v20 = NUPixelSizeFromCGSize();
    v22 = v21;
    v23 = MEMORY[0x1E69BDE68];
    v24 = [*(a1 + 32) compositionController];
    v25 = [v24 imageOrientation];
    v26 = [*(*(a1 + 32) + 1456) detectedFaces];
    LODWORD(v25) = [v23 maskIsMostlyWithinFace:v30 imageSize:v20 imageOrientation:v22 intAreaOverMaskAreaThreshold:v25 intAreaOverFaceAreaThreshold:v26 detectedFaces:{0.3, 0.0}];

    v27 = 512;
    if (v25)
    {
      v27 = 256;
    }

    v8 |= v27;
  }

  [v3 appendStroke:*(a1 + 40) exclusionMasks:*(a1 + 48) options:{v8, v29}];
  v28 = *(a1 + 40);
  if (v28)
  {
    [v28 extent];
  }

  [*(a1 + 32) _setLastInteractionPixelCount:0];
}

- (void)addImageSpaceInpaintingStroke:(id)stroke exclusionMask:(id)mask closeAndFillStroke:(BOOL)fillStroke needsFacePixellation:(BOOL)pixellation recordStroke:(BOOL)recordStroke completion:(id)completion
{
  recordStrokeCopy = recordStroke;
  pixellationCopy = pixellation;
  fillStrokeCopy = fillStroke;
  self->_redactionState = 0;
  completionCopy = completion;
  maskCopy = mask;
  strokeCopy = stroke;
  [(PUCleanupToolController *)self _interactionOccurred];
  [(PUCleanupToolController *)self _addImageSpaceInpaintingStroke:strokeCopy closeAndFillStroke:fillStrokeCopy needsFacePixellation:pixellationCopy recordStroke:recordStrokeCopy exclusionMask:maskCopy exclusionMaskHitTestRadius:1 retouchBrush:self->_exclusionMaskHitTestRadius completion:completionCopy];
}

- (void)addDeclutter
{
  self->_redactionState = 0;
  [(PUCleanupToolController *)self hidePromptViewIfNeededAnimated:0];
  v3 = MEMORY[0x1E69BDE68];
  maskContext = [(PUCleanupToolController *)self maskContext];
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  composition = [compositionController composition];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__PUCleanupToolController_addDeclutter__block_invoke;
  v7[3] = &unk_1E7B766B0;
  v7[4] = self;
  [v3 createDeclutterMaskForContext:maskContext composition:composition completion:v7];
}

void __39__PUCleanupToolController_addDeclutter__block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _createSubjectExclusionMask];
    v5 = v4;
    v6 = *(a1 + 32);
    if (v4)
    {
      v13[0] = v4;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [v6 _displayProcessingWithSelectedMask:v3 unselectedMaskImage:0 exclusionMasks:v7 point:{0.0, 0.0}];
    }

    else
    {
      [*(a1 + 32) _displayProcessingWithSelectedMask:v3 unselectedMaskImage:0 exclusionMasks:MEMORY[0x1E695E0F0] point:{0.0, 0.0}];
    }

    v8 = *(a1 + 32);
    if (*(v8 + 1344) == 1)
    {
      *(v8 + 1336) = 2;
      v8 = *(a1 + 32);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__PUCleanupToolController_addDeclutter__block_invoke_2;
    v10[3] = &unk_1E7B76688;
    v10[4] = v8;
    v11 = v3;
    v12 = v5;
    v9 = v5;
    [v8 modifyInpaintAdjustmentWithBlock:v10 actionStringKey:@"PHOTOEDIT_CLEANUP_CLEAN_UP_ACTION_TITLE" completion:0];
  }
}

void __39__PUCleanupToolController_addDeclutter__block_invoke_2(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1[4] + 1336))
  {
    v4 = 5;
  }

  else
  {
    v4 = 4;
  }

  v9[0] = a1[5];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  if (a1[6])
  {
    v8 = a1[6];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    v7 = 0;
    [v3 appendRemovalOperationWithMasks:v5 exclusionMasks:v6 options:v4 error:&v7];
  }

  else
  {
    v7 = 0;
    [v3 appendRemovalOperationWithMasks:v5 exclusionMasks:MEMORY[0x1E695E0F0] options:v4 error:&v7];
  }
}

- (CGPoint)originalPointFromOverlayViewPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  delegate = [(PUPhotoEditToolController *)self delegate];
  view = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [delegate toolController:self originalPointFromViewPoint:view view:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (float)scaledBrushRadiusForTouchType:(int64_t)type
{
  LODWORD(v3) = 1.0;
  if (self->_cleanupMode - 1 <= 1)
  {
    LODWORD(v3) = 5.0;
    if (type != 2)
    {
      globalSettings = [MEMORY[0x1E69C4290] globalSettings];
      [globalSettings retouchDefaultModeBrushSizeDefault];
      v7 = v6;

      cleanupMode = self->_cleanupMode;
      if (cleanupMode == 2)
      {
        brushModeBrushSizeSlider = self->_brushModeBrushSizeSlider;
        if (!brushModeBrushSizeSlider)
        {
          LODWORD(v3) = 10.0;
          return *&v3;
        }

        [(CEKSlider *)brushModeBrushSizeSlider value];
        v7 = v3;
        cleanupMode = self->_cleanupMode;
      }

      *&v3 = v7;
      if (cleanupMode == 2)
      {
        v10 = 1264;
      }

      else
      {
        if (cleanupMode != 1)
        {
          return *&v3;
        }

        v10 = 1280;
      }

      v11 = *(&self->super.super.super.super.isa + v10);
      if (v11)
      {
        [v11 value];
        *&v3 = v3;
      }
    }
  }

  return *&v3;
}

- (double)subjectExclusionMaskBrushRadiusForScreenSpaceRadius:(double)radius
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  view = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [delegate toolController:self originalPointFromViewPoint:view view:{0.0, 0.0}];
  v8 = v7;
  v10 = v9;

  delegate2 = [(PUPhotoEditToolController *)self delegate];
  view2 = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [delegate2 toolController:self originalPointFromViewPoint:view2 view:{radius, 0.0}];
  v14 = v13;
  v16 = v15;

  return ceil(sqrt((v10 - v16) * (v10 - v16) + (v8 - v14) * (v8 - v14)));
}

- (float)brushRadiusForTouchType:(int64_t)type
{
  cleanupMode = self->_cleanupMode;
  if (type == 2)
  {
    if (cleanupMode)
    {
      v5 = 5.0;
    }

    else
    {
      v5 = 0.0;
    }

    goto LABEL_14;
  }

  if (cleanupMode != 1)
  {
    v5 = 0.0;
    if (cleanupMode != 2)
    {
      goto LABEL_14;
    }

    brushModeBrushSizeSlider = self->_brushModeBrushSizeSlider;
    if (!brushModeBrushSizeSlider)
    {
      v5 = 10.0;
      goto LABEL_14;
    }

LABEL_10:
    [(CEKSlider *)brushModeBrushSizeSlider value];
    v5 = v7;
    goto LABEL_14;
  }

  brushModeBrushSizeSlider = self->_defaultModeBrushSizeSlider;
  if (brushModeBrushSizeSlider)
  {
    goto LABEL_10;
  }

  globalSettings = [MEMORY[0x1E69C4290] globalSettings];
  [globalSettings retouchDefaultModeBrushSizeDefault];
  v10 = v9;

  if ([(PUCleanupToolController *)self isIpadLayout])
  {
    v5 = v10 * 1.25;
  }

  else
  {
    v5 = v10;
  }

LABEL_14:
  delegate = [(PUPhotoEditToolController *)self delegate];
  view = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [delegate toolController:self originalPointFromViewPoint:view view:{0.0, 0.0}];
  v14 = v13;
  v16 = v15;

  delegate2 = [(PUPhotoEditToolController *)self delegate];
  view2 = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [delegate2 toolController:self originalPointFromViewPoint:view2 view:{v5, 0.0}];
  v20 = v19;
  v22 = v21;

  return ceil(sqrt((v16 - v22) * (v16 - v22) + (v14 - v20) * (v14 - v20)));
}

- (void)reloadToolbarButtons:(BOOL)buttons
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  isLoopingVideo = [delegate isLoopingVideo];

  if ((isLoopingVideo & 1) == 0)
  {
    delegate2 = [(PUPhotoEditToolController *)self delegate];
    [delegate2 isStandardVideo];
  }
}

- (void)_addOverlayIfNeeded
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  isLoopingVideo = [delegate isLoopingVideo];

  if ((isLoopingVideo & 1) == 0)
  {
    delegate2 = [(PUPhotoEditToolController *)self delegate];
    isStandardVideo = [delegate2 isStandardVideo];

    if ((isStandardVideo & 1) == 0 && !self->_overlayController)
    {
      delegate3 = [(PUPhotoEditToolController *)self delegate];
      mediaView = [delegate3 mediaView];

      v8 = [[PUCleanupOverlayViewController alloc] initWithMediaView:mediaView isHDR:self->_needsHDRUI];
      overlayController = self->_overlayController;
      self->_overlayController = v8;

      [(PUCleanupOverlayViewController *)self->_overlayController setOverlayControllerDelegate:self];
      view = [(PUCleanupOverlayViewController *)self->_overlayController view];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];

      view2 = [(PUCleanupOverlayViewController *)self->_overlayController view];
      [view2 setClipsToBounds:1];

      brushView = [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay brushView];
      [(PUCleanupOverlayViewController *)self->_overlayController setVfxBrushView:brushView];

      [(PUCleanupToolController *)self addChildViewController:self->_overlayController];
      [(PUCleanupOverlayViewController *)self->_overlayController didMoveToParentViewController:self];
      view3 = [(PUCleanupToolController *)self view];
      view4 = [(PUCleanupOverlayViewController *)self->_overlayController view];
      [view3 insertSubview:view4 atIndex:0];
    }
  }
}

- (void)sliderDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (([(CEKSlider *)scrollCopy isHidden]& 1) == 0)
  {
    v4 = scrollCopy;
    if (self->_brushModeBrushSizeSlider == scrollCopy)
    {
      v6 = &OBJC_IVAR___PUCleanupToolController__brushModeBrushSizeLabel;
    }

    else
    {
      if (self->_defaultModeBrushSizeSlider != scrollCopy)
      {
        v5 = 0;
LABEL_8:
        [(CEKSlider *)v4 value];
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", llround(v7)];
        [v5 setText:v8];

        [(PUCleanupOverlayViewController *)self->_overlayController updateBrushSizeFeedback];
        goto LABEL_9;
      }

      v6 = &OBJC_IVAR___PUCleanupToolController__defaultModeBrushSizeLabel;
    }

    v5 = *(&self->super.super.super.super.isa + *v6);
    v4 = scrollCopy;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_setBusy:(BOOL)busy
{
  self->_busy = busy;
  if (!busy)
  {
    self->_progressDelay = 15.0;
  }
}

- (void)_setShowCleanupBrushSizeSlider:(id)slider show:(BOOL)show animate:(BOOL)animate
{
  animateCopy = animate;
  showCopy = show;
  sliderCopy = slider;
  if ([sliderCopy isHidden] == showCopy)
  {
    if (showCopy)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__PUCleanupToolController__setShowCleanupBrushSizeSlider_show_animate___block_invoke;
    aBlock[3] = &unk_1E7B7FF70;
    v9 = sliderCopy;
    v19 = v9;
    v20 = v8;
    v10 = _Block_copy(aBlock);
    v11 = v10;
    if (animateCopy)
    {
      v12 = MEMORY[0x1E69DD250];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __71__PUCleanupToolController__setShowCleanupBrushSizeSlider_show_animate___block_invoke_2;
      v16[3] = &unk_1E7B80C88;
      v17 = v10;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __71__PUCleanupToolController__setShowCleanupBrushSizeSlider_show_animate___block_invoke_3;
      v13[3] = &unk_1E7B7DC88;
      v14 = v9;
      v15 = showCopy;
      [v12 animateWithDuration:v16 animations:v13 completion:0.25];
    }

    else
    {
      v10[2](v10);
      [v9 setHidden:showCopy ^ 1u];
    }
  }
}

- (void)leavingEditWithCancel
{
  modelDeliveryManager = [(PUCleanupToolController *)self modelDeliveryManager];
  [modelDeliveryManager stopNetworkMonitoring];
}

- (void)prepareForSave:(BOOL)save
{
  modelDeliveryManager = [(PUCleanupToolController *)self modelDeliveryManager];
  [modelDeliveryManager stopNetworkMonitoring];
}

- (BOOL)_canReset
{
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  inpaintAdjustmentController = [compositionController inpaintAdjustmentController];

  if (inpaintAdjustmentController)
  {
    adjustment = [inpaintAdjustmentController adjustment];
    v5 = [adjustment objectForKeyedSubscript:@"operations"];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)trailingToolbarViews
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    brushModeButton = [(PUCleanupToolController *)self brushModeButton];
    v6[0] = brushModeButton;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)reactivate
{
  ppt_didBecomeActiveToolBlock = [(PUPhotoEditToolController *)self ppt_didBecomeActiveToolBlock];

  if (ppt_didBecomeActiveToolBlock)
  {
    ppt_didBecomeActiveToolBlock2 = [(PUPhotoEditToolController *)self ppt_didBecomeActiveToolBlock];
    ppt_didBecomeActiveToolBlock2[2]();
  }
}

- (void)didResignActiveTool
{
  v2.receiver = self;
  v2.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v2 didResignActiveTool];
}

- (void)willResignActiveTool
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  mediaView = [delegate mediaView];

  savedMediaViewScrollViewMinimumNumberOfTouches = self->_savedMediaViewScrollViewMinimumNumberOfTouches;
  if (savedMediaViewScrollViewMinimumNumberOfTouches)
  {
    unsignedIntegerValue = [(NSNumber *)savedMediaViewScrollViewMinimumNumberOfTouches unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  _scrollView = [mediaView _scrollView];
  panGestureRecognizer = [_scrollView panGestureRecognizer];
  [panGestureRecognizer setMinimumNumberOfTouches:unsignedIntegerValue];

  feedbackView = [(PUCleanupToolController *)self feedbackView];
  [feedbackView setHidden:1];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696A7E0] object:0];

  v11.receiver = self;
  v11.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v11 willResignActiveTool];
}

- (void)didBecomeActiveTool
{
  v14.receiver = self;
  v14.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v14 didBecomeActiveTool];
  [(PUCleanupToolController *)self _prepareViewsForCleanupIfReady];
  view = [(PUCleanupToolController *)self view];
  [view setNeedsUpdateConstraints];

  delegate = [(PUPhotoEditToolController *)self delegate];
  mediaView = [delegate mediaView];

  if (!self->_savedMediaViewScrollViewMinimumNumberOfTouches)
  {
    v6 = MEMORY[0x1E696AD98];
    _scrollView = [mediaView _scrollView];
    panGestureRecognizer = [_scrollView panGestureRecognizer];
    v9 = [v6 numberWithUnsignedInteger:{objc_msgSend(panGestureRecognizer, "minimumNumberOfTouches")}];
    savedMediaViewScrollViewMinimumNumberOfTouches = self->_savedMediaViewScrollViewMinimumNumberOfTouches;
    self->_savedMediaViewScrollViewMinimumNumberOfTouches = v9;
  }

  _scrollView2 = [mediaView _scrollView];
  panGestureRecognizer2 = [_scrollView2 panGestureRecognizer];
  [panGestureRecognizer2 setMinimumNumberOfTouches:2];

  [(PUCleanupToolController *)self _updateFeedbackViewVisibility];
  [(PUCleanupToolController *)self _thermalStateDidChange:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__thermalStateDidChange_ name:*MEMORY[0x1E696A7E0] object:0];
}

- (void)willBecomeActiveTool
{
  v2.receiver = self;
  v2.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v2 willBecomeActiveTool];
}

- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v12 setLayoutOrientation:orientation withTransitionCoordinator:coordinatorCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PUCleanupToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E7B80DD0;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (coordinatorCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__PUCleanupToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke_2;
    v9[3] = &unk_1E7B7ABE0;
    v10 = v7;
    [coordinatorCopy animateAlongsideTransition:v9 completion:0];
  }

  else
  {
    v7[2](v7);
  }
}

void __74__PUCleanupToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[152])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1216);
    *(v3 + 1216) = 0;

    v2 = *(a1 + 32);
  }

  v5 = [v2 view];
  [v5 setNeedsUpdateConstraints];
}

- (void)_updateToolConstraints
{
  v133[4] = *MEMORY[0x1E69E9840];
  if (!self->_toolConstraints)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    toolConstraints = self->_toolConstraints;
    self->_toolConstraints = v3;

    if (!self->_defaultModeBrushSizeSlider && !self->_brushModeBrushSizeSlider)
    {
      goto LABEL_30;
    }

    toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];
    v116 = toolContainerView;
    if ([(PUCleanupToolController *)self isPortrait]&& ![(PUCleanupToolController *)self isIpadLayout])
    {
      defaultModeBrushSizeSlider = self->_defaultModeBrushSizeSlider;
      v58 = MEMORY[0x1E695EFD0];
      if (defaultModeBrushSizeSlider)
      {
        v59 = *(MEMORY[0x1E695EFD0] + 16);
        *&v122.a = *MEMORY[0x1E695EFD0];
        *&v122.c = v59;
        *&v122.tx = *(MEMORY[0x1E695EFD0] + 32);
        [(CEKSlider *)defaultModeBrushSizeSlider setTransform:&v122];
        v100 = self->_toolConstraints;
        heightAnchor = [(CEKSlider *)self->_defaultModeBrushSizeSlider heightAnchor];
        v114 = [heightAnchor constraintEqualToConstant:66.0];
        v133[0] = v114;
        widthAnchor = [(CEKSlider *)self->_defaultModeBrushSizeSlider widthAnchor];
        widthAnchor2 = [toolContainerView widthAnchor];
        v60 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
        v133[1] = v60;
        centerXAnchor = [toolContainerView centerXAnchor];
        centerXAnchor2 = [(CEKSlider *)self->_defaultModeBrushSizeSlider centerXAnchor];
        v63 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v133[2] = v63;
        bottomAnchor = [v116 bottomAnchor];
        bottomAnchor2 = [(CEKSlider *)self->_defaultModeBrushSizeSlider bottomAnchor];
        v66 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
        v133[3] = v66;
        v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:4];
        [(NSMutableArray *)v100 addObjectsFromArray:v67];

        v68 = self->_toolConstraints;
        centerXAnchor3 = [(UILabel *)self->_defaultModeBrushSizeLabel centerXAnchor];
        centerXAnchor4 = [(CEKSlider *)self->_defaultModeBrushSizeSlider centerXAnchor];
        v71 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
        v132[0] = v71;
        bottomAnchor3 = [(UILabel *)self->_defaultModeBrushSizeLabel bottomAnchor];
        topAnchor = [(CEKSlider *)self->_defaultModeBrushSizeSlider topAnchor];
        v74 = [bottomAnchor3 constraintEqualToAnchor:topAnchor constant:10.0];
        v132[1] = v74;
        v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
        [(NSMutableArray *)v68 addObjectsFromArray:v75];

        toolContainerView = v116;
        v58 = MEMORY[0x1E695EFD0];
      }

      brushModeBrushSizeSlider = self->_brushModeBrushSizeSlider;
      if (!brushModeBrushSizeSlider)
      {
        goto LABEL_29;
      }

      v77 = v58[1];
      *&v122.a = *v58;
      *&v122.c = v77;
      *&v122.tx = v58[2];
      [(CEKSlider *)brushModeBrushSizeSlider setTransform:&v122];
      v101 = self->_toolConstraints;
      heightAnchor2 = [(CEKSlider *)self->_brushModeBrushSizeSlider heightAnchor];
      v115 = [heightAnchor2 constraintEqualToConstant:66.0];
      v131[0] = v115;
      widthAnchor3 = [(CEKSlider *)self->_brushModeBrushSizeSlider widthAnchor];
      widthAnchor4 = [toolContainerView widthAnchor];
      v78 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
      v131[1] = v78;
      centerXAnchor5 = [toolContainerView centerXAnchor];
      centerXAnchor6 = [(CEKSlider *)self->_brushModeBrushSizeSlider centerXAnchor];
      v81 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
      v131[2] = v81;
      bottomAnchor4 = [v116 bottomAnchor];
      bottomAnchor5 = [(CEKSlider *)self->_brushModeBrushSizeSlider bottomAnchor];
      v84 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:0.0];
      v131[3] = v84;
      v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:4];
      [(NSMutableArray *)v101 addObjectsFromArray:v85];

      v86 = self->_toolConstraints;
      centerXAnchor7 = [(UILabel *)self->_brushModeBrushSizeLabel centerXAnchor];
      centerXAnchor8 = [(CEKSlider *)self->_brushModeBrushSizeSlider centerXAnchor];
      v117 = centerXAnchor7;
      v89 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
      v130[0] = v89;
      bottomAnchor6 = [(UILabel *)self->_brushModeBrushSizeLabel bottomAnchor];
      topAnchor2 = [(CEKSlider *)self->_brushModeBrushSizeSlider topAnchor];
      v92 = [bottomAnchor6 constraintEqualToAnchor:topAnchor2 constant:10.0];
      v130[1] = v92;
      v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
      [(NSMutableArray *)v86 addObjectsFromArray:v93];

      toolContainerView = v116;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      [toolContainerView addLayoutGuide:v6];
      v106 = self->_toolConstraints;
      widthAnchor5 = [v6 widthAnchor];
      v8 = [widthAnchor5 constraintEqualToConstant:66.0];
      v129[0] = v8;
      heightAnchor3 = [v6 heightAnchor];
      heightAnchor4 = [toolContainerView heightAnchor];
      v11 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
      v129[1] = v11;
      centerYAnchor = [toolContainerView centerYAnchor];
      v117 = v6;
      centerYAnchor2 = [v6 centerYAnchor];
      v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v129[2] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:3];
      [(NSMutableArray *)v106 addObjectsFromArray:v15];

      if ([(PUPhotoEditToolController *)self layoutOrientation]== 3 || [(PUPhotoEditToolController *)self layoutOrientation]== 2 || [(PUCleanupToolController *)self isIpadLayout])
      {
        toolContainerView = v116;
        v16 = self->_toolConstraints;
        rightAnchor = [v116 rightAnchor];
        rightAnchor2 = [v117 rightAnchor];
        v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:0.0];
        v128 = v19;
        v20 = &v128;
      }

      else
      {
        toolContainerView = v116;
        v16 = self->_toolConstraints;
        rightAnchor = [v116 leftAnchor];
        rightAnchor2 = [v117 leftAnchor];
        v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
        v127 = v19;
        v20 = &v127;
      }

      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [(NSMutableArray *)v16 addObjectsFromArray:v21];

      if (self->_defaultModeBrushSizeSlider)
      {
        v107 = self->_toolConstraints;
        centerYAnchor3 = [(UILabel *)self->_defaultModeBrushSizeLabel centerYAnchor];
        centerYAnchor4 = [(CEKSlider *)self->_defaultModeBrushSizeSlider centerYAnchor];
        v24 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
        v126[0] = v24;
        trailingAnchor = [(UILabel *)self->_defaultModeBrushSizeLabel trailingAnchor];
        trailingAnchor2 = [toolContainerView trailingAnchor];
        v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-56.0];
        v126[1] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:2];
        [(NSMutableArray *)v107 addObjectsFromArray:v28];

        v94 = self->_toolConstraints;
        heightAnchor5 = [(CEKSlider *)self->_defaultModeBrushSizeSlider heightAnchor];
        widthAnchor6 = [v117 widthAnchor];
        v98 = [heightAnchor5 constraintEqualToAnchor:widthAnchor6];
        v125[0] = v98;
        widthAnchor7 = [(CEKSlider *)self->_defaultModeBrushSizeSlider widthAnchor];
        heightAnchor6 = [v117 heightAnchor];
        v30 = [widthAnchor7 constraintEqualToAnchor:heightAnchor6];
        v125[1] = v30;
        centerXAnchor9 = [(CEKSlider *)self->_defaultModeBrushSizeSlider centerXAnchor];
        centerXAnchor10 = [v117 centerXAnchor];
        v33 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
        v125[2] = v33;
        centerYAnchor5 = [(CEKSlider *)self->_defaultModeBrushSizeSlider centerYAnchor];
        centerYAnchor6 = [v117 centerYAnchor];
        v36 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
        v125[3] = v36;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:4];
        [(NSMutableArray *)v94 addObjectsFromArray:v37];

        v38 = -1.57079633;
        if ([(PUPhotoEditToolController *)self layoutOrientation]!= 3 && [(PUPhotoEditToolController *)self layoutOrientation]!= 2)
        {
          if ([(PUCleanupToolController *)self isIpadLayout])
          {
            v38 = -1.57079633;
          }

          else
          {
            v38 = 1.57079633;
          }
        }

        CGAffineTransformMakeRotation(&v121, v38);
        v39 = self->_defaultModeBrushSizeSlider;
        v122 = v121;
        [(CEKSlider *)v39 setTransform:&v122];
        toolContainerView = v116;
      }

      if (self->_brushModeBrushSizeSlider)
      {
        v112 = self->_toolConstraints;
        centerYAnchor7 = [(UILabel *)self->_brushModeBrushSizeLabel centerYAnchor];
        centerYAnchor8 = [(CEKSlider *)self->_brushModeBrushSizeSlider centerYAnchor];
        v42 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
        v124[0] = v42;
        trailingAnchor3 = [(UILabel *)self->_brushModeBrushSizeLabel trailingAnchor];
        trailingAnchor4 = [toolContainerView trailingAnchor];
        v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-56.0];
        v124[1] = v45;
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
        [(NSMutableArray *)v112 addObjectsFromArray:v46];

        v95 = self->_toolConstraints;
        heightAnchor7 = [(CEKSlider *)self->_brushModeBrushSizeSlider heightAnchor];
        widthAnchor8 = [v117 widthAnchor];
        v103 = [heightAnchor7 constraintEqualToAnchor:widthAnchor8];
        v123[0] = v103;
        widthAnchor9 = [(CEKSlider *)self->_brushModeBrushSizeSlider widthAnchor];
        heightAnchor8 = [v117 heightAnchor];
        v47 = [widthAnchor9 constraintEqualToAnchor:heightAnchor8];
        v123[1] = v47;
        centerXAnchor11 = [(CEKSlider *)self->_brushModeBrushSizeSlider centerXAnchor];
        centerXAnchor12 = [v117 centerXAnchor];
        v50 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12];
        v123[2] = v50;
        centerYAnchor9 = [(CEKSlider *)self->_brushModeBrushSizeSlider centerYAnchor];
        centerYAnchor10 = [v117 centerYAnchor];
        v53 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
        v123[3] = v53;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:4];
        [(NSMutableArray *)v95 addObjectsFromArray:v54];

        v55 = -1.57079633;
        if ([(PUPhotoEditToolController *)self layoutOrientation]!= 3 && [(PUPhotoEditToolController *)self layoutOrientation]!= 2)
        {
          if ([(PUCleanupToolController *)self isIpadLayout])
          {
            v55 = -1.57079633;
          }

          else
          {
            v55 = 1.57079633;
          }
        }

        CGAffineTransformMakeRotation(&v120, v55);
        v56 = self->_brushModeBrushSizeSlider;
        v122 = v120;
        [(CEKSlider *)v56 setTransform:&v122];
        toolContainerView = v116;
      }
    }

LABEL_29:
LABEL_30:
    [MEMORY[0x1E696ACD8] activateConstraints:self->_toolConstraints];
  }
}

- (void)updateViewConstraints
{
  selfCopy = self;
  v171[4] = *MEMORY[0x1E69E9840];
  [(PUCleanupToolController *)self _updateToolConstraints];
  delegate = [(PUPhotoEditToolController *)selfCopy delegate];
  mediaView = [delegate mediaView];

  overlayController = selfCopy->_overlayController;
  if (overlayController)
  {
    view = [(PUCleanupOverlayViewController *)overlayController view];

    if (view)
    {
      view2 = [(PUCleanupOverlayViewController *)selfCopy->_overlayController view];
      widthAnchor = [view2 widthAnchor];
      view3 = [(PUCleanupToolController *)selfCopy view];
      widthAnchor2 = [view3 widthAnchor];
      v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      [v11 setActive:1];

      view4 = [(PUCleanupOverlayViewController *)selfCopy->_overlayController view];
      heightAnchor = [view4 heightAnchor];
      view5 = [(PUCleanupToolController *)selfCopy view];
      heightAnchor2 = [view5 heightAnchor];
      v16 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      [v16 setActive:1];

      view6 = [(PUCleanupOverlayViewController *)selfCopy->_overlayController view];
      centerXAnchor = [view6 centerXAnchor];
      view7 = [(PUCleanupToolController *)selfCopy view];
      centerXAnchor2 = [view7 centerXAnchor];
      v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v21 setActive:1];

      view8 = [(PUCleanupOverlayViewController *)selfCopy->_overlayController view];
      centerYAnchor = [view8 centerYAnchor];
      view9 = [(PUCleanupToolController *)selfCopy view];
      centerYAnchor2 = [view9 centerYAnchor];
      v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [v26 setActive:1];
    }
  }

  maskView = selfCopy->_maskView;
  if (maskView)
  {
    window = [(PUCleanupToolMaskView *)maskView window];

    if (window)
    {
      v29 = +[PUPhotoEditProtoSettings sharedInstance];
      cleanupMaskDisplayMode = [v29 cleanupMaskDisplayMode];

      if (cleanupMaskDisplayMode)
      {
        topAnchor = [(PUCleanupToolMaskView *)selfCopy->_maskView topAnchor];
        imageTopAnchor = [mediaView imageTopAnchor];
        v33 = [topAnchor constraintEqualToAnchor:imageTopAnchor];
        [v33 setActive:1];

        bottomAnchor = [(PUCleanupToolMaskView *)selfCopy->_maskView bottomAnchor];
        imageBottomAnchor = [mediaView imageBottomAnchor];
        v36 = [bottomAnchor constraintEqualToAnchor:imageBottomAnchor];
        [v36 setActive:1];

        leftAnchor = [(PUCleanupToolMaskView *)selfCopy->_maskView leftAnchor];
        imageLeftAnchor = [mediaView imageLeftAnchor];
        v39 = [leftAnchor constraintEqualToAnchor:imageLeftAnchor];
        [v39 setActive:1];

        rightAnchor = [(PUCleanupToolMaskView *)selfCopy->_maskView rightAnchor];
        imageRightAnchor = [mediaView imageRightAnchor];
        v40RightAnchor = [rightAnchor constraintEqualToAnchor:imageRightAnchor];
        [v40RightAnchor setActive:1];
      }

      else
      {
        delegate2 = [(PUPhotoEditToolController *)selfCopy delegate];
        mediaView2 = [delegate2 mediaView];
        rightAnchor = [mediaView2 _visibleImageRectOverlayView];

        topAnchor2 = [(PUCleanupToolMaskView *)selfCopy->_maskView topAnchor];
        topAnchor3 = [rightAnchor topAnchor];
        v47 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
        [v47 setActive:1];

        bottomAnchor2 = [(PUCleanupToolMaskView *)selfCopy->_maskView bottomAnchor];
        bottomAnchor3 = [rightAnchor bottomAnchor];
        v50 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
        [v50 setActive:1];

        leftAnchor2 = [(PUCleanupToolMaskView *)selfCopy->_maskView leftAnchor];
        leftAnchor3 = [rightAnchor leftAnchor];
        v53 = [leftAnchor2 constraintEqualToAnchor:leftAnchor3];
        [v53 setActive:1];

        imageRightAnchor = [(PUCleanupToolMaskView *)selfCopy->_maskView rightAnchor];
        v40RightAnchor = [rightAnchor rightAnchor];
        v54 = [imageRightAnchor constraintEqualToAnchor:v40RightAnchor];
        [v54 setActive:1];
      }
    }
  }

  rightAnchor2 = +[PUPhotoEditProtoSettings sharedInstance];
  if ([rightAnchor2 retouchShowsFaceRects])
  {
    faceRectsView = selfCopy->_faceRectsView;
    if (faceRectsView)
    {
      window2 = [(PUCleanupToolFaceRectsView *)faceRectsView window];

      if (!window2)
      {
        goto LABEL_15;
      }

      topAnchor4 = [(PUCleanupToolFaceRectsView *)selfCopy->_faceRectsView topAnchor];
      imageTopAnchor2 = [mediaView imageTopAnchor];
      v60 = [topAnchor4 constraintEqualToAnchor:imageTopAnchor2];
      [v60 setActive:1];

      bottomAnchor4 = [(PUCleanupToolFaceRectsView *)selfCopy->_faceRectsView bottomAnchor];
      imageBottomAnchor2 = [mediaView imageBottomAnchor];
      v63 = [bottomAnchor4 constraintEqualToAnchor:imageBottomAnchor2];
      [v63 setActive:1];

      leftAnchor4 = [(PUCleanupToolFaceRectsView *)selfCopy->_faceRectsView leftAnchor];
      imageLeftAnchor2 = [mediaView imageLeftAnchor];
      v66 = [leftAnchor4 constraintEqualToAnchor:imageLeftAnchor2];
      [v66 setActive:1];

      rightAnchor2 = [(PUCleanupToolFaceRectsView *)selfCopy->_faceRectsView rightAnchor];
      imageRightAnchor2 = [mediaView imageRightAnchor];
      v68 = [rightAnchor2 constraintEqualToAnchor:imageRightAnchor2];
      [v68 setActive:1];
    }
  }

LABEL_15:
  retouchVFXOverlay = selfCopy->_retouchVFXOverlay;
  if (retouchVFXOverlay)
  {
    topAnchor5 = [(PUVFXRetouchOverlay *)retouchVFXOverlay topAnchor];
    imageTopAnchor3 = [mediaView imageTopAnchor];
    v72 = [topAnchor5 constraintEqualToAnchor:imageTopAnchor3];
    [v72 setActive:1];

    bottomAnchor5 = [(PUVFXRetouchOverlay *)selfCopy->_retouchVFXOverlay bottomAnchor];
    imageBottomAnchor3 = [mediaView imageBottomAnchor];
    v75 = [bottomAnchor5 constraintEqualToAnchor:imageBottomAnchor3];
    [v75 setActive:1];

    leftAnchor5 = [(PUVFXRetouchOverlay *)selfCopy->_retouchVFXOverlay leftAnchor];
    imageLeftAnchor3 = [mediaView imageLeftAnchor];
    v78 = [leftAnchor5 constraintEqualToAnchor:imageLeftAnchor3];
    [v78 setActive:1];

    rightAnchor3 = [(PUVFXRetouchOverlay *)selfCopy->_retouchVFXOverlay rightAnchor];
    imageRightAnchor3 = [mediaView imageRightAnchor];
    v81 = [rightAnchor3 constraintEqualToAnchor:imageRightAnchor3];
    [v81 setActive:1];
  }

  if (selfCopy->_userPromptView)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:selfCopy->_userPromptViewConstraints];
    v82 = objc_alloc_init(MEMORY[0x1E695DF70]);
    userPromptViewConstraints = selfCopy->_userPromptViewConstraints;
    selfCopy->_userPromptViewConstraints = v82;

    v151 = selfCopy->_userPromptViewConstraints;
    heightAnchor3 = [(PUCleanupUserPromptView *)selfCopy->_userPromptView heightAnchor];
    v163 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:44.0];
    v171[0] = v163;
    leadingAnchor = [(PUCleanupUserPromptView *)selfCopy->_userPromptView leadingAnchor];
    view10 = [(PUCleanupToolController *)selfCopy view];
    superview = [view10 superview];
    leadingAnchor2 = [superview leadingAnchor];
    v153 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v171[1] = v153;
    trailingAnchor = [(PUCleanupUserPromptView *)selfCopy->_userPromptView trailingAnchor];
    view11 = [(PUCleanupToolController *)selfCopy view];
    superview2 = [view11 superview];
    trailingAnchor2 = [superview2 trailingAnchor];
    v84 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v171[2] = v84;
    bottomAnchor6 = [(PUCleanupUserPromptView *)selfCopy->_userPromptView bottomAnchor];
    view12 = [(PUCleanupToolController *)selfCopy view];
    safeAreaLayoutGuide = [view12 safeAreaLayoutGuide];
    bottomAnchor7 = [safeAreaLayoutGuide bottomAnchor];
    [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v90 = v89 = selfCopy;
    v171[3] = v90;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:4];
    v92 = v91 = mediaView;
    [(NSMutableArray *)v151 addObjectsFromArray:v92];

    mediaView = v91;
    selfCopy = v89;

    [MEMORY[0x1E696ACD8] activateConstraints:v89->_userPromptViewConstraints];
  }

  [(PUCleanupToolController *)selfCopy _updatePreparingProgressConstraints];
  feedbackView = [(PUCleanupToolController *)selfCopy feedbackView];
  if (feedbackView)
  {
    feedbackViewContainerConstraints = [(PUCleanupToolController *)selfCopy feedbackViewContainerConstraints];

    if (feedbackViewContainerConstraints)
    {
      v95 = MEMORY[0x1E696ACD8];
      feedbackViewContainerConstraints2 = [(PUCleanupToolController *)selfCopy feedbackViewContainerConstraints];
      [v95 deactivateConstraints:feedbackViewContainerConstraints2];

      [(PUCleanupToolController *)selfCopy setFeedbackViewContainerConstraints:0];
    }

    array = [MEMORY[0x1E695DF70] array];
    feedbackThumbsUpButton = [(PUCleanupToolController *)selfCopy feedbackThumbsUpButton];
    feedbackThumbsDownButton = [(PUCleanupToolController *)selfCopy feedbackThumbsDownButton];
    isIpadLayout = [(PUCleanupToolController *)selfCopy isIpadLayout];
    v166 = feedbackThumbsDownButton;
    v167 = feedbackThumbsUpButton;
    if (isIpadLayout || [(PUPhotoEditToolController *)selfCopy layoutOrientation]== 3 || [(PUPhotoEditToolController *)selfCopy layoutOrientation]== 2)
    {
      v128 = mediaView;
      topAnchor6 = [feedbackThumbsUpButton topAnchor];
      topAnchor7 = [feedbackView topAnchor];
      v164 = topAnchor6;
      v160 = [topAnchor6 constraintEqualToAnchor:16.0 constant:?];
      v170[0] = v160;
      topAnchor8 = [feedbackThumbsDownButton topAnchor];
      bottomAnchor8 = [feedbackThumbsUpButton bottomAnchor];
      v158 = topAnchor8;
      v154 = [topAnchor8 constraintEqualToAnchor:16.0 constant:?];
      v170[1] = v154;
      bottomAnchor9 = [feedbackThumbsDownButton bottomAnchor];
      bottomAnchor10 = [feedbackView bottomAnchor];
      v152 = bottomAnchor9;
      v148 = [bottomAnchor9 constraintEqualToAnchor:-16.0 constant:?];
      v170[2] = v148;
      leftAnchor6 = [feedbackThumbsUpButton leftAnchor];
      leftAnchor7 = [feedbackView leftAnchor];
      v146 = leftAnchor6;
      v142 = [leftAnchor6 constraintEqualToAnchor:7.0 constant:?];
      v170[3] = v142;
      rightAnchor4 = [feedbackThumbsUpButton rightAnchor];
      rightAnchor5 = [feedbackView rightAnchor];
      v141 = rightAnchor4;
      v139 = [rightAnchor4 constraintEqualToAnchor:-7.0 constant:?];
      v170[4] = v139;
      leftAnchor8 = [feedbackThumbsDownButton leftAnchor];
      leftAnchor9 = [feedbackView leftAnchor];
      v138 = leftAnchor8;
      v136 = [leftAnchor8 constraintEqualToAnchor:7.0 constant:?];
      v170[5] = v136;
      rightAnchor6 = [feedbackThumbsDownButton rightAnchor];
      rightAnchor7 = [feedbackView rightAnchor];
      v135 = rightAnchor6;
      superview4 = [rightAnchor6 constraintEqualToAnchor:-7.0 constant:?];
      v170[6] = superview4;
      centerYAnchor3 = [feedbackView centerYAnchor];
      view13 = [(PUCleanupToolController *)selfCopy view];
      superview3 = [view13 superview];
      [superview3 centerYAnchor];
      view15 = v132 = centerYAnchor3;
      safeAreaLayoutGuide3 = [centerYAnchor3 constraintEqualToAnchor:?];
      v170[7] = safeAreaLayoutGuide3;
      v110 = array;
      if (isIpadLayout)
      {
        rightAnchor8 = [feedbackView rightAnchor];
        v112 = selfCopy;
        view14 = [(PUCleanupToolController *)selfCopy view];
        safeAreaLayoutGuide2 = [view14 safeAreaLayoutGuide];
        rightAnchor9 = [safeAreaLayoutGuide2 rightAnchor];
        v116 = -27.0;
      }

      else
      {
        rightAnchor8 = [feedbackView leftAnchor];
        v112 = selfCopy;
        view14 = [(PUCleanupToolController *)selfCopy view];
        safeAreaLayoutGuide2 = [view14 safeAreaLayoutGuide];
        rightAnchor9 = [safeAreaLayoutGuide2 leftAnchor];
        v116 = 18.0;
      }

      v117 = [rightAnchor8 constraintEqualToAnchor:rightAnchor9 constant:v116];
      v170[8] = v117;
      v118 = [MEMORY[0x1E695DEC8] arrayWithObjects:v170 count:9];
      [v110 addObjectsFromArray:v118];

      mediaView = v128;
      selfCopy = v112;
    }

    else
    {
      topAnchor9 = [feedbackThumbsUpButton topAnchor];
      topAnchor7 = [feedbackView topAnchor];
      v164 = topAnchor9;
      v160 = [topAnchor9 constraintEqualToAnchor:7.0 constant:?];
      v169[0] = v160;
      bottomAnchor11 = [feedbackThumbsUpButton bottomAnchor];
      bottomAnchor8 = [feedbackView bottomAnchor];
      v158 = bottomAnchor11;
      v154 = [bottomAnchor11 constraintEqualToAnchor:-7.0 constant:?];
      v169[1] = v154;
      topAnchor10 = [feedbackThumbsDownButton topAnchor];
      bottomAnchor10 = [feedbackThumbsUpButton topAnchor];
      v152 = topAnchor10;
      v148 = [topAnchor10 constraintEqualToAnchor:0.0 constant:?];
      v169[2] = v148;
      leftAnchor10 = [feedbackThumbsUpButton leftAnchor];
      leftAnchor7 = [feedbackView leftAnchor];
      v146 = leftAnchor10;
      v142 = [leftAnchor10 constraintEqualToAnchor:16.0 constant:?];
      v169[3] = v142;
      rightAnchor10 = [feedbackThumbsUpButton rightAnchor];
      rightAnchor5 = [feedbackThumbsDownButton leftAnchor];
      v141 = rightAnchor10;
      v139 = [rightAnchor10 constraintEqualToAnchor:-16.0 constant:?];
      v169[4] = v139;
      rightAnchor11 = [feedbackThumbsDownButton rightAnchor];
      leftAnchor9 = [feedbackView rightAnchor];
      v138 = rightAnchor11;
      v136 = [rightAnchor11 constraintEqualToAnchor:-16.0 constant:?];
      v169[5] = v136;
      centerXAnchor3 = [feedbackView centerXAnchor];
      rightAnchor7 = [(PUCleanupToolController *)selfCopy view];
      superview4 = [rightAnchor7 superview];
      [superview4 centerXAnchor];
      v132 = v135 = centerXAnchor3;
      view13 = [centerXAnchor3 constraintEqualToAnchor:?];
      v169[6] = view13;
      centerYAnchor4 = [feedbackView centerYAnchor];
      view15 = [(PUCleanupToolController *)selfCopy view];
      safeAreaLayoutGuide3 = [view15 safeAreaLayoutGuide];
      rightAnchor8 = [safeAreaLayoutGuide3 bottomAnchor];
      superview3 = centerYAnchor4;
      view14 = [centerYAnchor4 constraintEqualToAnchor:rightAnchor8 constant:-92.0];
      v169[7] = view14;
      safeAreaLayoutGuide2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v169 count:8];
      [array addObjectsFromArray:safeAreaLayoutGuide2];
      v110 = array;
    }

    layer = [feedbackView layer];
    [layer setCornerRadius:17.0];

    [MEMORY[0x1E696ACD8] activateConstraints:v110];
    [(PUCleanupToolController *)selfCopy setFeedbackViewContainerConstraints:v110];
  }

  v168.receiver = selfCopy;
  v168.super_class = PUCleanupToolController;
  [(PUCleanupToolController *)&v168 updateViewConstraints];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v28.receiver = self;
  v28.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v28 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  userPromptView = self->_userPromptView;
  if (userPromptView)
  {
    v9 = [(PUCleanupUserPromptView *)userPromptView isHidden]^ 1;
    v10 = self->_userPromptView;
    if (v10)
    {
      type = [(PUCleanupUserPromptView *)v10 type];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
  }

  type = 1;
LABEL_6:
  [(PUCleanupToolController *)self deleteUserPromptViewAnimated:0 completion:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E7B7FA58;
  v27 = v9;
  aBlock[4] = self;
  aBlock[5] = type;
  v12 = _Block_copy(aBlock);
  v13 = +[PUPhotoEditProtoSettings sharedInstance];
  cleanupMaskDisplayMode = [v13 cleanupMaskDisplayMode];

  if ((cleanupMaskDisplayMode - 1) < 2)
  {
    maskView = self->_maskView;
    if (maskView)
    {
      [(PUCleanupToolMaskView *)maskView setAlpha:0.0];
    }

    v16 = +[PUPhotoEditProtoSettings sharedInstance];
    retouchShowsFaceRects = [v16 retouchShowsFaceRects];

    if (retouchShowsFaceRects)
    {
      [(PUCleanupToolFaceRectsView *)self->_faceRectsView setAlpha:0.0];
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_8;
    v19[3] = &unk_1E7B76660;
    v19[4] = self;
    v20 = v12;
    [coordinatorCopy animateAlongsideTransition:0 completion:v19];
    v18 = v20;
    goto LABEL_16;
  }

  if (!cleanupMaskDisplayMode)
  {
    if (self->_retouchVFXOverlay)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
      v25[3] = &unk_1E7B80DD0;
      v25[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v25];
      [(PUCleanupToolController *)self setVFXOverlayHidden:1];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
      v23[3] = &unk_1E7B76660;
      v23[4] = self;
      v24 = v12;
      [coordinatorCopy animateAlongsideTransition:0 completion:v23];
      v18 = v24;
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_7;
      v21[3] = &unk_1E7B7ABE0;
      v22 = v12;
      [coordinatorCopy animateAlongsideTransition:0 completion:v21];
      v18 = v22;
    }

LABEL_16:
  }
}

void __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v6[8] = v1;
    v6[9] = v2;
    v4 = dispatch_time(0, 200000000);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v6[3] = &unk_1E7B7FF70;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v6[5] = v5;
    dispatch_after(v4, MEMORY[0x1E69E96A0], v6);
  }
}

void __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 1304) setAlpha:0.0];
  v2 = +[PUPhotoEditProtoSettings sharedInstance];
  v3 = [v2 retouchShowsFaceRects];

  if (v3)
  {
    v4 = *(*(a1 + 32) + 1504);

    [v4 setAlpha:0.0];
  }
}

uint64_t __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_5;
  v4[3] = &unk_1E7B80DD0;
  v5 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_6;
  v3[3] = &unk_1E7B7F020;
  v3[4] = v5;
  return [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v4 options:v3 animations:0.1 completion:0.5];
}

uint64_t __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_8(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  if (*(v3 + 1432))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_9;
    v5[3] = &unk_1E7B80DD0;
    v5[4] = v3;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_10;
    v4[3] = &unk_1E7B7F020;
    v4[4] = v3;
    return [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v5 options:v4 animations:0.1 completion:0.5];
  }

  return result;
}

void __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_10(uint64_t a1)
{
  v2 = +[PUPhotoEditProtoSettings sharedInstance];
  v3 = [v2 retouchShowsFaceRects];

  if (v3)
  {
    [*(a1 + 32) _updateFaceRectsView];
    v4 = *(*(a1 + 32) + 1504);

    [v4 setAlpha:1.0];
  }
}

void __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setVFXOverlayHidden:0];
  v2 = +[PUPhotoEditProtoSettings sharedInstance];
  v3 = [v2 retouchShowsFaceRects];

  if (v3)
  {
    [*(a1 + 32) _updateFaceRectsView];
    v4 = *(*(a1 + 32) + 1504);

    [v4 setAlpha:1.0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v24.receiver = self;
  v24.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v24 viewDidAppear:appear];
  modelDeliveryManager = [(PUCleanupToolController *)self modelDeliveryManager];
  ready = [modelDeliveryManager ready];

  if (ready)
  {
    [(PUCleanupToolController *)self _prepareViewsForCleanupIfReady];
    v6 = +[PUPhotoEditProtoSettings sharedInstance];
    cleanupMaskDisplayMode = [v6 cleanupMaskDisplayMode];

    if ((cleanupMaskDisplayMode - 1) >= 2)
    {
      if (!cleanupMaskDisplayMode)
      {
        retouchVFXOverlay = self->_retouchVFXOverlay;
        if (retouchVFXOverlay)
        {
          layer = [(PUVFXRetouchOverlay *)retouchVFXOverlay layer];
          [layer setOpacity:0.0];

          v11 = dispatch_time(0, 350000000);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __41__PUCleanupToolController_viewDidAppear___block_invoke_110;
          block[3] = &unk_1E7B80DD0;
          block[4] = self;
          dispatch_after(v11, MEMORY[0x1E69E96A0], block);
        }
      }
    }

    else if (self->_maskView)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __41__PUCleanupToolController_viewDidAppear___block_invoke_2_111;
      v16[3] = &unk_1E7B80DD0;
      v16[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v16 options:0 animations:0.1 completion:0.4];
    }
  }

  else
  {
    modelDeliveryProgressViewController = [(PUCleanupToolController *)self modelDeliveryProgressViewController];

    if (modelDeliveryProgressViewController)
    {
      [(PUCleanupToolController *)self _updatePreparingProgressConstraints];
    }

    else
    {
      objc_initWeak(&location, self);
      v12 = objc_alloc_init(MEMORY[0x1E69C36B8]);
      [(PUCleanupToolController *)self setModelDeliveryProgressViewController:v12];

      modelDeliveryManager2 = [(PUCleanupToolController *)self modelDeliveryManager];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __41__PUCleanupToolController_viewDidAppear___block_invoke;
      v21[3] = &unk_1E7B76638;
      objc_copyWeak(&v22, &location);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __41__PUCleanupToolController_viewDidAppear___block_invoke_107;
      v19[3] = &unk_1E7B7FA30;
      objc_copyWeak(&v20, &location);
      [modelDeliveryManager2 preparePackageWithProgress:v21 updateHandler:v19];

      v14 = dispatch_time(0, 1000000000);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __41__PUCleanupToolController_viewDidAppear___block_invoke_3;
      v18[3] = &unk_1E7B80DD0;
      v18[4] = self;
      dispatch_after(v14, MEMORY[0x1E69E96A0], v18);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__willUndo_ name:*MEMORY[0x1E696AA48] object:0];
  [defaultCenter addObserver:self selector:sel__willRedo_ name:*MEMORY[0x1E696AA40] object:0];
  [defaultCenter addObserver:self selector:sel__didUndo_ name:*MEMORY[0x1E696AA30] object:0];
  [defaultCenter addObserver:self selector:sel__didRedo_ name:*MEMORY[0x1E696AA28] object:0];
  [defaultCenter addObserver:self selector:sel__applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
  [defaultCenter addObserver:self selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
}

void __41__PUCleanupToolController_viewDidAppear___block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = a2;
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "model delivery progress: %d / %f", v9, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained modelDeliveryProgressViewController];
  [v8 reportProgress:a2 stage:a3];
}

void __41__PUCleanupToolController_viewDidAppear___block_invoke_107(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "model delivery completion with success: %d / error: %@", buf, 0x12u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PUCleanupToolController_viewDidAppear___block_invoke_108;
  block[3] = &unk_1E7B7CE88;
  objc_copyWeak(&v10, (a1 + 32));
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v10);
}

void __41__PUCleanupToolController_viewDidAppear___block_invoke_3(uint64_t a1)
{
  v2 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "model delivery progress UI ready to show", v5, 2u);
  }

  v3 = [*(a1 + 32) modelDeliveryManager];
  v4 = [v3 ready];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) _showPreparingProgress];
  }
}

void __41__PUCleanupToolController_viewDidAppear___block_invoke_110(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1304) layer];
  LODWORD(v1) = 1.0;
  [v2 setOpacity:v1];
}

void __41__PUCleanupToolController_viewDidAppear___block_invoke_108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (*(a1 + 48) == 1)
  {
    [WeakRetained _prepareViewsForCleanupIfReady];
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained modelDeliveryProgressViewController];
    v6 = v5;
    if (v4)
    {
      [v5 setErrorState:*(a1 + 32)];
    }

    else
    {
      [v5 clearErrorState];
    }

    [v3 setModelDeliveryProgressInErrorState:*(a1 + 32) != 0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PUCleanupToolController_viewDidAppear___block_invoke_2;
    block[3] = &unk_1E7B80DD0;
    block[4] = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_updateMaskContext
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PUCleanupToolController__updateMaskContext__block_invoke;
  aBlock[3] = &unk_1E7B80DD0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if (self->_maskContext)
  {
    view = [(PUCleanupToolController *)self view];
    window = [view window];
    if (window)
    {
      v6 = window;
      isActiveTool = [(PUPhotoEditToolController *)self isActiveTool];

      if (isActiveTool)
      {
        v3[2](v3);
        goto LABEL_11;
      }
    }

    else
    {
    }

    v11 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "Cleanup: maskContext present, but window no longer exists", v12, 2u);
    }
  }

  else if (!self->_maskContextCreationHasBegun)
  {
    self->_maskContextCreationHasBegun = 1;
    v8 = MEMORY[0x1E69BDE68];
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    composition = [compositionController composition];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__PUCleanupToolController__updateMaskContext__block_invoke_2_101;
    v13[3] = &unk_1E7B76610;
    v13[4] = self;
    v14 = v3;
    [v8 createMaskContextForComposition:composition requestID:0 completionQueue:MEMORY[0x1E69E96A0] completion:v13];
  }

LABEL_11:
}

uint64_t __45__PUCleanupToolController__updateMaskContext__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 1347) = 0;
  v2 = *(a1 + 32);
  if (*(v2 + 1456))
  {
    if (*(v2 + 1347) == 1)
    {

      return [v2 _disableUI];
    }

    [v2 _addOverlayIfNeeded];
    v4 = +[PUPhotoEditProtoSettings sharedInstance];
    v5 = [v4 cleanupMaskDisplayMode];

    if ((v5 - 1) <= 1)
    {
      [*(a1 + 32) _createMaskView];
    }

    [*(a1 + 32) _createVFXMaskOverlays];
    v6 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PUCleanupToolController__updateMaskContext__block_invoke_2;
    block[3] = &unk_1E7B80DD0;
    block[4] = *(a1 + 32);
    dispatch_after(v6, MEMORY[0x1E69E96A0], block);
    v7 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[PUPhotoEditProtoSettings sharedInstance];
      if ([v8 retouchShowsFaceRects])
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = [*(*(a1 + 32) + 1456) detectedFaces];
      v11 = [v10 count];
      *buf = 136315650;
      v32 = "[PUCleanupToolController _updateMaskContext]_block_invoke";
      v33 = 2112;
      v34 = v9;
      v35 = 2048;
      v36 = v11;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "%s: PIXELLATION: retouchShowsFaceRects: %@ _maskContext.detectedFaces.count: %lu", buf, 0x20u);
    }

    v12 = +[PUPhotoEditProtoSettings sharedInstance];
    v13 = [v12 retouchShowsFaceRects];

    if (v13)
    {
      v14 = dispatch_time(0, 250000000);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __45__PUCleanupToolController__updateMaskContext__block_invoke_94;
      v29[3] = &unk_1E7B80DD0;
      v29[4] = *(a1 + 32);
      v15 = MEMORY[0x1E69E96A0];
      dispatch_after(v14, MEMORY[0x1E69E96A0], v29);
    }

    v16 = [*(a1 + 32) view];
    [v16 setNeedsUpdateConstraints];

    v17 = *(a1 + 32);
    v18 = v17[178];
    switch(v18)
    {
      case 2:
        goto LABEL_21;
      case 1:
        [v17 _updateMaskViewForDefaultModeIfNecessary];
        break;
      case 0:
LABEL_21:
        [v17 _updateMaskViewForBrushMode];
        break;
    }

    v19 = +[PUPhotoEditProtoSettings sharedInstance];
    v20 = [v19 retouchEnablesSensitivityCheck];

    if (v20)
    {
      v21 = [MEMORY[0x1E695E000] standardUserDefaults];
      v22 = [v21 BOOLForKey:@"PE_CLEANUP_FORCE_INITIALLY_SENSITIVE"];

      v23 = *(a1 + 32);
      if (v22)
      {
        *(v23 + 1344) = 1;
      }

      else
      {
        [*(v23 + 1456) initialSensitivityScore];
        *(*(a1 + 32) + 1344) = [MEMORY[0x1E69BDF50] currentSensitivityExceedsThresholds:v24 initialSensitivity:v24];
      }
    }

    else
    {
      *(*(a1 + 32) + 1344) = 0;
    }

    v25 = [*(a1 + 32) _canReset];
    v26 = *(a1 + 32);
    if ((!v25 || (*(v26 + 1346) & 1) == 0) && (*(v26 + 1345) & 1) == 0)
    {
      *(v26 + 1346) = 1;
      v27 = *(a1 + 32);
      if (v27[1344])
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      [v27 addUserPromptViewOfType:v28 animated:1];
      v26 = *(a1 + 32);
    }

    return [*(v26 + 1472) setEnabled:1];
  }

  return [v2 _handleMaskContextFailure];
}

void __45__PUCleanupToolController__updateMaskContext__block_invoke_2_101(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(a1 + 32) setMaskContext:a2];
  if (!a2)
  {
    v6 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Cleanup: Failed to create mask context, error: %{public}@", &v12, 0xCu);
    }
  }

  v7 = [*(a1 + 32) view];
  v8 = [v7 window];
  if (v8)
  {
    v9 = v8;
    v10 = [*(a1 + 32) isActiveTool];

    if (v10)
    {
      (*(*(a1 + 40) + 16))();
      goto LABEL_12;
    }
  }

  else
  {
  }

  v11 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "Cleanup: in maskContext creation completion block, but window no longer exists", &v12, 2u);
  }

LABEL_12:
}

uint64_t __45__PUCleanupToolController__updateMaskContext__block_invoke_94(uint64_t a1)
{
  [*(a1 + 32) _createFaceRectsView];
  v2 = *(a1 + 32);

  return [v2 _updateFaceRectsView];
}

- (void)_handleMaskContextFailure
{
  [(PUCleanupToolController *)self addUserPromptViewOfType:6 animated:1];
  maskContext = self->_maskContext;
  self->_maskContext = 0;

  self->_maskContextCreationHasBegun = 0;
  self->_toolDisabled = 1;

  [(PUCleanupToolController *)self _disableUI];
}

- (void)_disableUI
{
  [(PUCleanupToolController *)self setVFXOverlayHidden:1];
  view = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [view setHidden:1];

  overlayController = self->_overlayController;

  [(PUCleanupOverlayViewController *)overlayController disableUI];
}

- (void)_prepareViewsForCleanupIfReadyAndNotify:(id)notify
{
  v51 = *MEMORY[0x1E69E9840];
  notifyCopy = notify;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    _PFAssertFailHandler();
  }

  if (!self->_mediaViewIsReady)
  {
    goto LABEL_10;
  }

  modelDeliveryManager = [(PUCleanupToolController *)self modelDeliveryManager];
  if (![modelDeliveryManager ready])
  {
    goto LABEL_9;
  }

  delegate = [(PUPhotoEditToolController *)self delegate];
  mediaView = [delegate mediaView];
  if (!mediaView)
  {

LABEL_9:
    goto LABEL_10;
  }

  v8 = mediaView;
  isActiveTool = [(PUPhotoEditToolController *)self isActiveTool];

  if (isActiveTool)
  {
    if (self->_cleanupViewsHaveBeenPrepared)
    {
      [(PUCleanupToolController *)self _updateMaskContext];
LABEL_45:
      if (notifyCopy)
      {
        notifyCopy[2](notifyCopy);
      }

      goto LABEL_25;
    }

    [(PUCleanupToolController *)self _removePreparingProgress];
    [(PUCleanupToolController *)self _updateResetButtonState];
    v21 = self->_cleanupMode - 3 < 0xFFFFFFFFFFFFFFFELL;
    delegate2 = [(PUPhotoEditToolController *)self delegate];
    [delegate2 toolControllerDidChangeWantsTapToToggleOriginalEnabled:self enabled:v21];

    [(PUCleanupToolController *)self _updateMaskContext];
    [(PUCleanupToolController *)self _addOverlayIfNeeded];
    [(PUCleanupToolController *)self _setCleanupMode:1];
    overlayController = self->_overlayController;
    if (overlayController)
    {
      [(PUCleanupOverlayViewController *)overlayController mediaViewIsReady];
    }

    view = [(PUCleanupToolController *)self view];
    [view setNeedsUpdateConstraints];

    v25 = +[PUPhotoEditProtoSettings sharedInstance];
    cleanupMaskDisplayMode = [v25 cleanupMaskDisplayMode];

    if ((cleanupMaskDisplayMode - 1) > 1 || (maskView = self->_maskView) == 0)
    {
LABEL_36:
      v29 = +[PUPhotoEditProtoSettings sharedInstance];
      [v29 addKeyObserver:self];

      self->_cleanupViewsHaveBeenPrepared = 1;
      tasksWaitingOnCleanupReady = self->_tasksWaitingOnCleanupReady;
      if (tasksWaitingOnCleanupReady)
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v31 = tasksWaitingOnCleanupReady;
        v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v38;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v38 != v34)
              {
                objc_enumerationMutation(v31);
              }

              (*(*(*(&v37 + 1) + 8 * i) + 16))(*(*(&v37 + 1) + 8 * i));
            }

            v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v37 objects:v42 count:16];
          }

          while (v33);
        }

        v36 = self->_tasksWaitingOnCleanupReady;
        self->_tasksWaitingOnCleanupReady = 0;
      }

      goto LABEL_45;
    }

    [(PUCleanupToolMaskView *)maskView setAlpha:0.0];
    cleanupMode = self->_cleanupMode;
    switch(cleanupMode)
    {
      case 2uLL:
        goto LABEL_33;
      case 1uLL:
        [(PUCleanupToolController *)self _updateMaskViewForDefaultModeIfNecessary];
        break;
      case 0uLL:
LABEL_33:
        [(PUCleanupToolController *)self _updateMaskViewForBrushMode];
        break;
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __67__PUCleanupToolController__prepareViewsForCleanupIfReadyAndNotify___block_invoke;
    v41[3] = &unk_1E7B80DD0;
    v41[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v41 options:0 animations:0.1 completion:0.4];
    goto LABEL_36;
  }

LABEL_10:
  v10 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    if (self->_mediaViewIsReady)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    modelDeliveryManager2 = [(PUCleanupToolController *)self modelDeliveryManager];
    if ([modelDeliveryManager2 ready])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    delegate3 = [(PUPhotoEditToolController *)self delegate];
    mediaView2 = [delegate3 mediaView];
    *buf = 138413058;
    if ([(PUPhotoEditToolController *)self isActiveTool])
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v44 = v11;
    v45 = 2112;
    v46 = v13;
    v47 = 2112;
    v48 = mediaView2;
    v49 = 2112;
    v50 = v16;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEBUG, "_prepareViewsForCleanupIfReady; not ready. _mediaViewIsReady: %@, modelDeliveryManager ready: %@, mediaView: %@, isActiveTool: %@", buf, 0x2Au);
  }

  if (notifyCopy)
  {
    v17 = self->_tasksWaitingOnCleanupReady;
    if (!v17)
    {
      array = [MEMORY[0x1E695DF70] array];
      v19 = self->_tasksWaitingOnCleanupReady;
      self->_tasksWaitingOnCleanupReady = array;

      v17 = self->_tasksWaitingOnCleanupReady;
    }

    v20 = _Block_copy(notifyCopy);
    [(NSMutableArray *)v17 addObject:v20];
  }

LABEL_25:
}

- (void)_removePreparingProgress
{
  modelDeliveryProgressViewController = [(PUCleanupToolController *)self modelDeliveryProgressViewController];
  view = [modelDeliveryProgressViewController view];
  [view removeFromSuperview];

  [(PUCleanupToolController *)self setModelDeliveryProgressViewController:0];
}

- (void)_updatePreparingProgressConstraints
{
  v48[3] = *MEMORY[0x1E69E9840];
  view = [(PUCleanupToolController *)self view];
  window = [view window];

  if (window)
  {
    modelDeliveryProgressViewController = [(PUCleanupToolController *)self modelDeliveryProgressViewController];
    view2 = [modelDeliveryProgressViewController view];

    if (view2)
    {
      superview = [view2 superview];
      if (superview)
      {
        v8 = superview;
        window2 = [view2 window];

        if (window2)
        {
          if ([(PUCleanupToolController *)self isIpadLayout])
          {
LABEL_6:
            modelDeliveryProgressConstraints = [(PUCleanupToolController *)self modelDeliveryProgressConstraints];

            if (modelDeliveryProgressConstraints)
            {
              v11 = MEMORY[0x1E696ACD8];
              modelDeliveryProgressConstraints2 = [(PUCleanupToolController *)self modelDeliveryProgressConstraints];
              [v11 deactivateConstraints:modelDeliveryProgressConstraints2];

              [(PUCleanupToolController *)self setModelDeliveryProgressConstraints:0];
            }

            if ([(PUCleanupToolController *)self isIpadLayout])
            {
              if ([(PUCleanupToolController *)self modelDeliveryProgressInErrorState])
              {
                v13 = 500.0;
              }

              else
              {
                v13 = 352.0;
              }

              centerXAnchor = [view2 centerXAnchor];
              view3 = [(PUCleanupToolController *)self view];
              centerXAnchor2 = [view3 centerXAnchor];
              v44 = [centerXAnchor constraintEqualToAnchor:?];
              v48[0] = v44;
              widthAnchor = [view2 widthAnchor];
              v42 = [widthAnchor constraintEqualToConstant:v13];
              v48[1] = v42;
              bottomAnchor = [view2 bottomAnchor];
              view4 = [(PUCleanupToolController *)self view];
              safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
              bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
              safeAreaLayoutGuide2 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-11.0];
              v48[2] = safeAreaLayoutGuide2;
              v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
            }

            else
            {
              leadingAnchor = [view2 leadingAnchor];
              view5 = [(PUCleanupToolController *)self view];
              leadingAnchor2 = [view5 leadingAnchor];
              v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];

              trailingAnchor = [view2 trailingAnchor];
              view6 = [(PUCleanupToolController *)self view];
              trailingAnchor2 = [view6 trailingAnchor];
              v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];

              v41 = v29;
              LODWORD(v34) = 1132068864;
              [v29 setPriority:v34];
              LODWORD(v35) = 1132068864;
              [v33 setPriority:v35];
              delegate = [(PUPhotoEditToolController *)self delegate];
              v37 = [delegate toolControllerMainContainerView:self];

              centerXAnchor3 = [view2 centerXAnchor];
              centerXAnchor2 = v37;
              widthAnchor = [v37 centerXAnchor];
              v44 = centerXAnchor3;
              v42 = [centerXAnchor3 constraintEqualToAnchor:?];
              v47[0] = v42;
              v47[1] = v29;
              view3 = v33;
              v47[2] = v33;
              bottomAnchor = [view2 widthAnchor];
              view4 = [bottomAnchor constraintLessThanOrEqualToConstant:374.0];
              v47[3] = view4;
              safeAreaLayoutGuide = [view2 bottomAnchor];
              bottomAnchor2 = [(PUCleanupToolController *)self view];
              safeAreaLayoutGuide2 = [bottomAnchor2 safeAreaLayoutGuide];
              bottomAnchor3 = [safeAreaLayoutGuide2 bottomAnchor];
              v40 = [safeAreaLayoutGuide constraintEqualToAnchor:bottomAnchor3 constant:-13.0];
              v47[4] = v40;
              v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:5];

              centerXAnchor = v41;
            }

            [MEMORY[0x1E696ACD8] activateConstraints:v20];
            [(PUCleanupToolController *)self setModelDeliveryProgressConstraints:v20];

            goto LABEL_19;
          }

          delegate2 = [(PUPhotoEditToolController *)self delegate];
          v22 = [delegate2 toolControllerMainContainerView:self];

          if (v22)
          {
            superview2 = [v22 superview];
            if (superview2)
            {
              v24 = superview2;
              window3 = [v22 window];

              if (window3)
              {
                goto LABEL_6;
              }
            }

            else
            {
            }
          }
        }
      }
    }

LABEL_19:
  }
}

- (void)_updatePromptViewPlatter
{
  userPromptView = self->_userPromptView;
  if (userPromptView)
  {
    [(PUCleanupUserPromptView *)userPromptView updateConstraintsIfNeeded];
    [(PUCleanupUserPromptView *)self->_userPromptView layoutIfNeeded];
    delegate = [(PUPhotoEditToolController *)self delegate];
    mediaView = [delegate mediaView];

    [(PUCleanupUserPromptView *)self->_userPromptView frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [mediaView imageFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    view = [(PUCleanupToolController *)self view];
    [mediaView convertRect:view toView:{v14, v16, v18, v20}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v32.origin.x = v23;
    v32.origin.y = v25;
    v32.size.width = v27;
    v32.size.height = v29;
    v33.origin.x = v6;
    v33.origin.y = v8;
    v33.size.width = v10;
    v33.size.height = v12;
    [(PUCleanupUserPromptView *)self->_userPromptView setShowPlatter:CGRectIntersectsRect(v32, v33)];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PUCleanupToolController;
  viewDidLayoutSubviews = [(PUPhotoEditToolController *)&v4 viewDidLayoutSubviews];
  if (MEMORY[0x1B8C6D660](viewDidLayoutSubviews))
  {
    [(PUCleanupToolController *)self _updatePromptViewPlatter];
  }
}

- (void)_showPreparingProgress
{
  modelDeliveryProgressViewController = [(PUCleanupToolController *)self modelDeliveryProgressViewController];
  [modelDeliveryProgressViewController setIsiPadConfiguration:{-[PUCleanupToolController isIpadLayout](self, "isIpadLayout")}];

  modelDeliveryProgressViewController2 = [(PUCleanupToolController *)self modelDeliveryProgressViewController];
  view = [modelDeliveryProgressViewController2 view];

  view2 = [(PUCleanupToolController *)self view];
  [view2 addSubview:view];

  [(PUCleanupToolController *)self _updatePreparingProgressConstraints];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v3 viewWillAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v17.receiver = self;
  v17.super_class = PUCleanupToolController;
  [(PUCleanupToolController *)&v17 viewWillDisappear:disappear];
  maskView = self->_maskView;
  if (maskView)
  {
    [(PUCleanupToolMaskView *)maskView removeFromSuperview];
    v5 = self->_maskView;
    self->_maskView = 0;
  }

  v6 = +[PUPhotoEditProtoSettings sharedInstance];
  retouchShowsFaceRects = [v6 retouchShowsFaceRects];

  if (retouchShowsFaceRects)
  {
    [(PUCleanupToolFaceRectsView *)self->_faceRectsView removeFromSuperview];
    faceRectsView = self->_faceRectsView;
    self->_faceRectsView = 0;
  }

  if (self->_userPromptView)
  {
    [(PUCleanupToolController *)self deleteUserPromptViewAnimated:0 completion:0];
  }

  v9 = +[PUPhotoEditProtoSettings sharedInstance];
  [v9 removeKeyObserver:self];

  if (_os_feature_enabled_impl())
  {
    [(PUCleanupToolController *)self _setCleanupMode:1];
    brushModeButton = [(PUCleanupToolController *)self brushModeButton];
    [brushModeButton setSelected:0];

    [(PUCleanupToolController *)self _updateBrushModeButton];
  }

  [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay removeFromSuperview];
  retouchVFXOverlay = self->_retouchVFXOverlay;
  self->_retouchVFXOverlay = 0;

  [(PUCleanupOverlayViewController *)self->_overlayController willMoveToParentViewController:0];
  view = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [view removeFromSuperview];

  [(PUCleanupOverlayViewController *)self->_overlayController removeFromParentViewController];
  overlayController = self->_overlayController;
  self->_overlayController = 0;

  self->_cleanupViewsHaveBeenPrepared = 0;
  self->_mediaViewIsReady = 0;
  self->_cleanupMode = 0;
  maskContext = self->_maskContext;
  self->_maskContext = 0;

  self->_maskContextCreationHasBegun = 0;
  tasksWaitingOnCleanupReady = self->_tasksWaitingOnCleanupReady;
  self->_tasksWaitingOnCleanupReady = 0;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = PUCleanupToolController;
  [(PUCleanupToolController *)&v18 viewDidLoad];
  toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];
  [toolContainerView setAccessibilityLabel:@"toolContainer"];
  [toolContainerView addSubview:self->_defaultModeBrushSizeSlider];
  [toolContainerView addSubview:self->_defaultModeBrushSizeLabel];
  [toolContainerView addSubview:self->_brushModeBrushSizeSlider];
  [toolContainerView addSubview:self->_brushModeBrushSizeLabel];
  if (_os_feature_enabled_impl() && !self->_brushModeButton)
  {
    objc_initWeak(&location, self);
    v4 = PULocalizedString(@"PHOTOEDIT_CLEANUP_BRUSH_MODE_ACCESSIBILITY_LABEL");
    photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
    v6 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"paintbrush.pointed" selectedImageNamed:@"paintbrush.pointed.fill" accessibilityLabel:v4 spec:photoEditSpec];

    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __38__PUCleanupToolController_viewDidLoad__block_invoke;
    v15 = &unk_1E7B7AEE0;
    objc_copyWeak(&v16, &location);
    [v6 setActionBlock:&v12];
    [(PUCleanupToolController *)self setBrushModeButton:v6, v12, v13, v14, v15];
    cleanupMode = self->_cleanupMode;
    brushModeButton = [(PUCleanupToolController *)self brushModeButton];
    [brushModeButton setSelected:cleanupMode == 2];

    brushModeButton2 = [(PUCleanupToolController *)self brushModeButton];
    [brushModeButton2 setEnabled:0];

    [(PUCleanupToolController *)self _updateBrushModeButton];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  globalSettings = [MEMORY[0x1E69C4290] globalSettings];
  retouchShowsDefaultModeSlider = [globalSettings retouchShowsDefaultModeSlider];

  if (retouchShowsDefaultModeSlider)
  {
    [toolContainerView addSubview:self->_defaultModeBrushSizeSlider];
    [toolContainerView addSubview:self->_defaultModeBrushSizeLabel];
  }
}

void __38__PUCleanupToolController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _brushModeButtonTapped:v3];
}

- (void)_setupResetButton
{
  v3 = PULocalizedString(@"PHOTOEDIT_CLEANUP_RESET");
  localizedUppercaseString = [v3 localizedUppercaseString];

  v5 = [PUPhotoEditToolActivationButton buttonWithTitle:localizedUppercaseString];
  objc_storeStrong(&self->_resetButton, v5);
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __44__PUCleanupToolController__setupResetButton__block_invoke;
  v9 = &unk_1E7B7AEE0;
  objc_copyWeak(&v10, &location);
  [v5 setActionBlock:&v6];
  [(PUCleanupToolController *)self _updateResetButtonState:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __44__PUCleanupToolController__setupResetButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetTapped:v3];
}

- (void)_setupCleanupBrushSizeSliders
{
  v3 = +[PUPhotoEditSupport createEditSlider];
  defaultModeBrushSizeSlider = self->_defaultModeBrushSizeSlider;
  self->_defaultModeBrushSizeSlider = v3;

  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  defaultModeBrushSizeLabel = self->_defaultModeBrushSizeLabel;
  self->_defaultModeBrushSizeLabel = v5;

  v7 = +[PUPhotoEditSupport createEditSlider];
  brushModeBrushSizeSlider = self->_brushModeBrushSizeSlider;
  self->_brushModeBrushSizeSlider = v7;

  v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  brushModeBrushSizeLabel = self->_brushModeBrushSizeLabel;
  self->_brushModeBrushSizeLabel = v9;

  [(PUCleanupToolController *)self _setupCleanupBrushSizeSlider:self->_defaultModeBrushSizeSlider label:self->_defaultModeBrushSizeLabel];
  [(PUCleanupToolController *)self _setupCleanupBrushSizeSlider:self->_brushModeBrushSizeSlider label:self->_brushModeBrushSizeLabel];
  globalSettings = [MEMORY[0x1E69C4290] globalSettings];
  -[CEKSlider setHidden:](self->_defaultModeBrushSizeSlider, "setHidden:", [globalSettings retouchShowsDefaultModeSlider] ^ 1);

  globalSettings2 = [MEMORY[0x1E69C4290] globalSettings];
  -[UILabel setHidden:](self->_defaultModeBrushSizeLabel, "setHidden:", [globalSettings2 retouchShowsDefaultModeSlider] ^ 1);

  v13 = _os_feature_enabled_impl();
  [(CEKSlider *)self->_brushModeBrushSizeSlider setHidden:v13 ^ 1u];
  v14 = self->_brushModeBrushSizeLabel;

  [(UILabel *)v14 setHidden:v13 ^ 1u];
}

- (void)_setupCleanupBrushSizeSlider:(id)slider label:(id)label
{
  sliderCopy = slider;
  labelCopy = label;
  [(CEKSlider *)sliderCopy setDelegate:self];
  [(CEKSlider *)sliderCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CEKSlider *)sliderCopy setUseTickMarkLegibilityShadows:1];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(CEKSlider *)sliderCopy setBackgroundColor:clearColor];

  if (self->_brushModeBrushSizeSlider == sliderCopy)
  {
    [(CEKSlider *)sliderCopy setAlpha:0.0];
    [labelCopy setAlpha:0.0];
    [(CEKSlider *)sliderCopy setMinimumValue:3.0];
    [(CEKSlider *)sliderCopy setMaximumValue:40.0];
    [(CEKSlider *)sliderCopy setDefaultValue:10.0];
    v10 = 10.0;
  }

  else
  {
    [(CEKSlider *)sliderCopy setMinimumValue:3.0];
    [(CEKSlider *)sliderCopy setMaximumValue:40.0];
    globalSettings = [MEMORY[0x1E69C4290] globalSettings];
    [globalSettings retouchDefaultModeBrushSizeDefault];
    [(CEKSlider *)sliderCopy setDefaultValue:?];

    if ([(PUCleanupToolController *)self isIpadLayout])
    {
      [(CEKSlider *)sliderCopy defaultValue];
      [(CEKSlider *)sliderCopy setDefaultValue:v9 * 1.25];
    }

    [(CEKSlider *)sliderCopy defaultValue];
  }

  [(CEKSlider *)sliderCopy setValue:v10];
  if (objc_opt_respondsToSelector())
  {
    [(CEKSlider *)sliderCopy defaultValue];
    [(CEKSlider *)sliderCopy setMarkedValue:?];
  }

  [(CEKSlider *)sliderCopy value];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", llround(v11)];
  [labelCopy setText:v12];

  [labelCopy setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_updateResetButtonState
{
  _canReset = [(PUCleanupToolController *)self _canReset];
  [(PUPhotoEditToolActivationButton *)self->_resetButton setHidden:_canReset ^ 1];
  resetButton = self->_resetButton;

  [(PUPhotoEditToolActivationButton *)resetButton setSelected:_canReset];
}

- (void)compositionControllerDidChangeForAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  v5.receiver = self;
  v5.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v5 compositionControllerDidChangeForAdjustments:adjustmentsCopy];
  if ([adjustmentsCopy containsObject:*MEMORY[0x1E69BE028]])
  {
    [(PUCleanupToolController *)self _updateResetButtonState];
  }

  if (!-[PUPhotoEditToolController isActiveTool](self, "isActiveTool") && [adjustmentsCopy containsObject:*MEMORY[0x1E69BE030]])
  {
    [(PUCleanupToolController *)self setMaskContext:0];
    self->_maskContextCreationHasBegun = 0;
  }
}

- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator
{
  v29 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PUCleanupToolController;
  controllerCopy = controller;
  [(PUPhotoEditToolController *)&v26 setupWithAsset:asset compositionController:controllerCopy editSource:source valuesCalculator:calculator];
  self->_mediaViewIsReady = 0;
  self->_cleanupViewsHaveBeenPrepared = 0;
  composition = [controllerCopy composition];

  v12 = [objc_alloc(MEMORY[0x1E69B3B30]) initWithComposition:composition];
  [v12 setName:@"PUCleanupToolController-imageProperties"];
  v25 = 0;
  v13 = [v12 submitSynchronous:&v25];
  v14 = v25;
  properties = [v13 properties];
  if ([properties isHDR])
  {
    hasGainMap = 1;
  }

  else
  {
    hasGainMap = [properties hasGainMap];
  }

  self->_needsHDRUI = hasGainMap;
  compositionController = [(PUPhotoEditToolController *)self compositionController];
  brushStrokeHistory = [compositionController brushStrokeHistory];

  if (brushStrokeHistory)
  {
    v19 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      compositionController2 = [(PUPhotoEditToolController *)self compositionController];
      brushStrokeHistory2 = [compositionController2 brushStrokeHistory];
      entryCount = [brushStrokeHistory2 entryCount];
      *buf = 134217984;
      v28 = entryCount;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEBUG, "Loaded brush stroke history with %ld entries", buf, 0xCu);
    }
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x1E69BDDC0]);
    compositionController3 = [(PUPhotoEditToolController *)self compositionController];
    [compositionController3 setBrushStrokeHistory:v23];

    v19 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEBUG, "Created new brush stroke history", buf, 2u);
    }
  }
}

- (PUCleanupToolController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PUCleanupToolController;
  v4 = [(PUPhotoEditToolController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    commonInit(v4);
  }

  return v5;
}

- (PUCleanupToolController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PUCleanupToolController;
  v3 = [(PUCleanupToolController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    commonInit(v3);
  }

  return v4;
}

@end