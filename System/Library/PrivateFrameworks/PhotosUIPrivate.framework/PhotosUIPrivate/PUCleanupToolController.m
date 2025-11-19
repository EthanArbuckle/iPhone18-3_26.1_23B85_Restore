@interface PUCleanupToolController
- (BOOL)_canReset;
- (BOOL)_enableFeedback;
- (BOOL)_showFeedbackThumbs;
- (BOOL)isIpadLayout;
- (CGPoint)originalPointFromOverlayViewPoint:(CGPoint)a3;
- (CGPoint)transformedPoint:(CGPoint)a3;
- (CGSize)imageSize;
- (PLImageGeometry)geometry;
- (PUCleanupToolController)initWithCoder:(id)a3;
- (PUCleanupToolController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXEditCleanupFeedbackActionPerformer)feedbackActionPerformer;
- (double)currentRenderViewWidth;
- (double)subjectExclusionMaskBrushRadiusForScreenSpaceRadius:(double)a3;
- (float)brushRadiusForTouchType:(int64_t)a3;
- (float)scaledBrushRadiusForTouchType:(int64_t)a3;
- (id)_createSubjectExclusionMask;
- (id)_newOverlayMask;
- (id)brushStrokeExclusionMaskForStrokeStartingAtImageSpacePoint:(CGPoint)a3 withRadius:(double)a4;
- (id)cleanupActionNames;
- (id)feedbackView;
- (id)internalToolActionsForMenu;
- (id)sourceImageOfSize:(CGSize)a3;
- (id)toolActionsForMenu;
- (id)trailingToolbarViews;
- (id)transformedImage:(id)a3 error:(id *)a4;
- (id)transformedImageForBrushStrokeExclusionMask:(id)a3;
- (int64_t)currentLayoutStyle;
- (int64_t)segmentationCount;
- (void)_addImageSpaceInpaintingStroke:(id)a3 closeAndFillStroke:(BOOL)a4 needsFacePixellation:(BOOL)a5 recordStroke:(BOOL)a6 exclusionMask:(id)a7 exclusionMaskHitTestRadius:(double)a8 retouchBrush:(BOOL)a9 completion:(id)a10;
- (void)_addOverlayIfNeeded;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationWillResignActive:(id)a3;
- (void)_brushModeButtonTapped:(id)a3;
- (void)_createFaceRectsView;
- (void)_createMaskView;
- (void)_createRendererIfNeeded;
- (void)_createVFXMaskOverlays;
- (void)_didRedo:(id)a3;
- (void)_didUndo:(id)a3;
- (void)_disableUI;
- (void)_displayProcessingWithSelectedMask:(id)a3 unselectedMaskImage:(id)a4 exclusionMasks:(id)a5 point:(CGPoint)a6;
- (void)_displayProcessingWithSelectedMaskImage:(id)a3 unselectedMaskImage:(id)a4 exclusionMasks:(id)a5 point:(CGPoint)a6;
- (void)_donateTipsAppCleanupSignal;
- (void)_handleMaskContextFailure;
- (void)_handleOperationExceedsSizeLimit;
- (void)_interactionOccurred;
- (void)_prepareViewsForCleanupIfReadyAndNotify:(id)a3;
- (void)_removePreparingProgress;
- (void)_reportFeedbackAction:(unint64_t)a3;
- (void)_resetTapped:(id)a3;
- (void)_setBusy:(BOOL)a3;
- (void)_setCleanupMode:(unint64_t)a3;
- (void)_setLastInteractionPixelCount:(int64_t)a3;
- (void)_setShowCleanupBrushSizeSlider:(id)a3 show:(BOOL)a4 animate:(BOOL)a5;
- (void)_setupCleanupBrushSizeSlider:(id)a3 label:(id)a4;
- (void)_setupCleanupBrushSizeSliders;
- (void)_setupResetButton;
- (void)_showCleanupBrushSizeSlider:(id)a3 label:(id)a4 show:(BOOL)a5;
- (void)_showPreparingProgress;
- (void)_thermalStateDidChange:(id)a3;
- (void)_updateBrushModeButton;
- (void)_updateFaceRectsView;
- (void)_updateFeedbackViewVisibility;
- (void)_updateMaskContext;
- (void)_updateMaskViewForDefaultMode;
- (void)_updateMaskViewForDefaultModeIfNecessary;
- (void)_updateMaskViewWithUnselectedMaskImage:(id)a3 foregroundMasks:(id)a4 backgroundMasks:(id)a5;
- (void)_updatePreparingProgressConstraints;
- (void)_updatePromptViewPlatter;
- (void)_updateResetButtonState;
- (void)_updateToolConstraints;
- (void)_updateVFXMaskOverlayWithSelectedMask:(id)a3 point:(CGPoint)a4;
- (void)addAttachmentsForTapToRadar:(id)a3;
- (void)addDeclutter;
- (void)addImageSpaceInpaintingStroke:(id)a3 exclusionMask:(id)a4 closeAndFillStroke:(BOOL)a5 needsFacePixellation:(BOOL)a6 recordStroke:(BOOL)a7 completion:(id)a8;
- (void)addObjectRemovalAtImageSpacePoint:(CGPoint)a3 completion:(id)a4;
- (void)addObjectRemovalAtPoint:(CGPoint)a3;
- (void)addObjectRemovalUsingImageSpaceStroke:(id)a3 exclusionMask:(id)a4 completion:(id)a5;
- (void)addObjectRemovalUsingStroke:(id)a3 exclusionMask:(id)a4;
- (void)addStroke:(id)a3 closeAndFillStroke:(BOOL)a4 completion:(id)a5;
- (void)addUserPromptViewOfType:(unint64_t)a3 animated:(BOOL)a4;
- (void)checkPotentialInpaintOperation:(id)a3 handler:(id)a4;
- (void)compositionControllerDidChangeForAdjustments:(id)a3;
- (void)createAllAvailableMasks:(id)a3;
- (void)deleteUserPromptViewAnimated:(BOOL)a3 completion:(id)a4;
- (void)didBecomeActiveTool;
- (void)didResignActiveTool;
- (void)feedbackThumbsButtonAction:(id)a3;
- (void)hidePromptViewIfNeededAnimated:(BOOL)a3;
- (void)leavingEditWithCancel;
- (void)mediaView:(id)a3 didZoom:(double)a4;
- (void)mediaViewDidEndZooming:(id)a3;
- (void)mediaViewDidScroll:(id)a3;
- (void)mediaViewIsReady;
- (void)mediaViewWillBeginZooming:(id)a3;
- (void)modifyInpaintAdjustmentWithBlock:(id)a3 actionStringKey:(id)a4 completion:(id)a5;
- (void)ppt_replayCleanupBrushStrokeWithCompletionBlock:(id)a3;
- (void)prepareForSave:(BOOL)a3;
- (void)previewingOriginalDidStart;
- (void)previewingOriginalDidStop;
- (void)reactivate;
- (void)redoInitiated:(id)a3;
- (void)reloadToolbarButtons:(BOOL)a3;
- (void)replayBrushstrokesWithCompletion:(id)a3;
- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6;
- (void)sliderDidScroll:(id)a3;
- (void)toolControllerWantsToShowOriginal:(BOOL)a3;
- (void)undoInitiated:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
    v5 = [(PUPhotoEditToolController *)self delegate];
    v6 = [v5 mediaView];
    v7 = [(PUCleanupToolFaceRectsView *)v4 initWithMediaView:v6 isHDR:self->_needsHDRUI delegate:self];
    faceRectsView = self->_faceRectsView;
    self->_faceRectsView = v7;

    [(PUCleanupToolFaceRectsView *)self->_faceRectsView setUserInteractionEnabled:0];
    [(PUCleanupToolFaceRectsView *)self->_faceRectsView setBackgroundColor:0];
    v9 = [(PUCleanupToolController *)self view];
    [v9 insertSubview:self->_faceRectsView aboveSubview:self->_retouchVFXOverlay];

    [(PUCleanupToolFaceRectsView *)self->_faceRectsView setTranslatesAutoresizingMaskIntoConstraints:0];
  }
}

- (void)_updateFaceRectsView
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  v4 = [v3 retouchShowsFaceRects];

  if (v4)
  {
    faceRectsView = self->_faceRectsView;
    v7 = [(PIInpaintMaskContext *)self->_maskContext detectedFaces];
    v6 = [(PUPhotoEditToolController *)self compositionController];
    -[PUCleanupToolFaceRectsView updateDetectedFaces:imageOrientation:](faceRectsView, "updateDetectedFaces:imageOrientation:", v7, [v6 imageOrientation]);
  }
}

- (id)sourceImageOfSize:(CGSize)a3
{
  v3 = [(PUPhotoEditToolController *)self delegate:a3.width];
  v4 = [v3 mediaView];

  v5 = [v4 snapshotImage];

  return v5;
}

- (double)currentRenderViewWidth
{
  v2 = [(PUPhotoEditToolController *)self delegate];
  v3 = [v2 mediaView];

  v4 = [v3 _renderView];
  [v4 frame];
  v6 = v5;

  return v6;
}

- (int64_t)currentLayoutStyle
{
  v2 = [(PUPhotoEditToolController *)self photoEditSpec];
  v3 = [v2 currentLayoutStyle];

  return v3;
}

- (BOOL)_enableFeedback
{
  v2 = [(PUCleanupToolController *)self feedbackActionPerformer];
  v3 = [v2 didLoadInjectedActionPerformer];

  return v3;
}

- (BOOL)_showFeedbackThumbs
{
  HasInternalUI = PFOSVariantHasInternalUI();
  v4 = +[PUPhotoEditProtoSettings sharedInstance];
  v5 = [v4 feedbackUIFCS];

  return [(PUCleanupToolController *)self _enableFeedback]& HasInternalUI & (v5 ^ 1);
}

- (void)_updateFeedbackViewVisibility
{
  v3 = [(PUCleanupToolController *)self feedbackView];
  if (v3)
  {
    v4 = [(PUPhotoEditToolController *)self delegate];
    v5 = [v4 mediaView];

    [(PUCleanupUserPromptView *)self->_userPromptView alpha];
    [v5 zoomScale];
    [v5 minimumZoomScale];
    v6 = [(PUPhotoEditToolController *)self compositionController];
    v7 = [v6 inpaintAdjustmentController];
    [v7 enabled];

    v8 = v3;
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

  v3 = [(PUCleanupToolController *)self feedbackViewContainer];

  if (v3)
  {
    v4 = [(PUCleanupToolController *)self feedbackViewContainer];
    goto LABEL_7;
  }

  if ([(PUCleanupToolController *)self _enableFeedback])
  {
    v5 = MEMORY[0x1E69DCAD8];
    v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v32[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v8 = [v5 configurationWithPaletteColors:v7];

    v9 = [MEMORY[0x1E69DCAD8] configurationWithScale:2];
    v10 = [v8 configurationByApplyingConfiguration:v9];

    v11 = [(PUCleanupToolController *)self feedbackActionPerformer];
    v12 = [v11 actionIconForFeedbackType:1 hasResponse:0];

    v13 = [(PUCleanupToolController *)self feedbackActionPerformer];
    v14 = [v13 actionIconForFeedbackType:2 hasResponse:0];

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
    v23 = [v22 photoEditingFeedbackPlatterColor];
    [v21 setBackgroundColor:v23];

    v24 = [v21 layer];
    LODWORD(v25) = 1039516303;
    [v24 setShadowOpacity:v25];

    v26 = [v21 layer];
    [v26 setShadowOffset:{0.0, 2.0}];

    v27 = [v21 layer];
    [v27 setShadowRadius:8.0];

    v28 = *MEMORY[0x1E69796E8];
    v29 = [v21 layer];
    [v29 setCornerCurve:v28];

    [v21 setAlpha:0.0];
    [(PUCleanupToolController *)self setFeedbackViewContainer:v21];
    [(PUCleanupToolController *)self setFeedbackThumbsUpButton:v17];
    [(PUCleanupToolController *)self setFeedbackThumbsDownButton:v20];
    v30 = [(PUCleanupToolController *)self view];
    [v30 addSubview:v21];

    v4 = [(PUCleanupToolController *)self feedbackViewContainer];
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

LABEL_7:

  return v4;
}

- (void)hidePromptViewIfNeededAnimated:(BOOL)a3
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

- (void)deleteUserPromptViewAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_userPromptView)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PUCleanupToolController_deleteUserPromptViewAnimated_completion___block_invoke;
    aBlock[3] = &unk_1E7B80B48;
    aBlock[4] = self;
    v15 = v6;
    v8 = _Block_copy(aBlock);
    v9 = v8;
    if (v4)
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

- (void)addUserPromptViewOfType:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  userPromptView = self->_userPromptView;
  if (!userPromptView || [(PUCleanupUserPromptView *)userPromptView type]!= a3)
  {
    [(PUCleanupToolController *)self deleteUserPromptViewAnimated:0 completion:0];
    v8 = [[PUCleanupUserPromptView alloc] initWithType:a3 showPlatter:1];
    v9 = self->_userPromptView;
    self->_userPromptView = v8;

    [(PUCleanupUserPromptView *)self->_userPromptView setLayoutDelegate:self];
    [(PUCleanupUserPromptView *)self->_userPromptView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUCleanupUserPromptView *)self->_userPromptView setUserInteractionEnabled:0];
    v10 = [(PUCleanupToolController *)self view];
    [v10 addSubview:self->_userPromptView];

    [(PUCleanupUserPromptView *)self->_userPromptView enableAnimation:1];
    v11 = [(PUCleanupToolController *)self view];
    [v11 setNeedsUpdateConstraints];

    if (a3 - 3 <= 2)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __60__PUCleanupToolController_addUserPromptViewOfType_animated___block_invoke;
      v17[3] = &unk_1E7B7F620;
      v17[4] = self;
      v12 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:0 repeats:v17 block:3.0];
      userPromptViewTimer = self->_userPromptViewTimer;
      self->_userPromptViewTimer = v12;

      v14 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v14 addTimer:self->_userPromptViewTimer forMode:*MEMORY[0x1E695DA28]];
    }

    if (v4)
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
    v4 = [(PUPhotoEditToolController *)self compositionController];
    v5 = [v4 imageOrientation];

    v6 = objc_alloc(MEMORY[0x1E69BE490]);
    [(PUCleanupToolController *)self imageSize];
    v7 = [v6 initWithInputSize:v5 inputOrientation:?];
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
  v3 = [(PUCleanupToolController *)self renderer];
  v4 = [(PUPhotoEditToolController *)self compositionController];
  v5 = [v4 composition];
  v6 = [MEMORY[0x1E69BDEF0] pipelineFiltersForCropping];
  v7 = [v3 getGeometryForComposition:v5 pipelineFilters:v6];

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

- (CGPoint)transformedPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PUPhotoEditToolController *)self delegate];
  [v6 toolController:0 viewPointFromOriginalPoint:self->_maskView view:{x, y}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)transformedImage:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E69B3DB8];
  v7 = a3;
  v8 = [(PUPhotoEditToolController *)self compositionController];
  v9 = [v8 composition];
  [(PUCleanupToolController *)self imageSize];
  v10 = [v6 transformedImage:v7 forComposition:v9 imageSize:a4 error:?];

  return v10;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = a4;
  NSLog(&cfstr_VfxSettingsCha.isa, v5);
  v6 = [v5 isEqualToString:@"retouchShowVFXControls"];

  if (v6)
  {
    v7 = +[PUPhotoEditProtoSettings sharedInstance];
    v8 = [v7 retouchShowVFXControls];

    if (v8)
    {
      retouchVFXOverlay = self->_retouchVFXOverlay;

      [(PUVFXRetouchOverlay *)retouchVFXOverlay showControlsInViewController:self];
    }
  }
}

- (void)ppt_replayCleanupBrushStrokeWithCompletionBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PUCleanupToolController_ppt_replayCleanupBrushStrokeWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E7B80B48;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)addAttachmentsForTapToRadar:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUCleanupToolController *)self maskContext];
  v6 = [v5 segmentationResult];

  v7 = [v6 foregroundInstances];
  v8 = [v6 backgroundInstances];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 temporaryDirectory];
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v12 = [v11 UUIDString];
  v13 = [v10 URLByAppendingPathComponent:v12 isDirectory:1];

  DeviceGray = CGColorSpaceCreateDeviceGray();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PUCleanupToolController_addAttachmentsForTapToRadar___block_invoke;
  aBlock[3] = &unk_1E7B76920;
  v55 = v13;
  v69 = v55;
  v59 = v9;
  v70 = v59;
  v71 = self;
  v72 = DeviceGray;
  v15 = _Block_copy(aBlock);
  v16 = v15;
  if (v7)
  {
    v17 = v15[2](v15, v7, @"foreground");
    [v4 addAttachment:v17];
  }

  if (v8)
  {
    v18 = v16[2](v16, v8, @"background");
    [v4 addAttachment:v18];
  }

  CGColorSpaceRelease(DeviceGray);
  v19 = [MEMORY[0x1E69BDE40] globalSettings];
  v57 = v7;
  v58 = v6;
  v56 = v8;
  if ([v19 inpaintDumpsOriginalMasks])
  {
    v20 = 1;
  }

  else
  {
    v20 = [MEMORY[0x1E69B3AB0] inpaintDumpsInputImages];
  }

  v54 = v16;

  v21 = +[PUPhotoEditProtoSettings sharedInstance];
  v22 = [v21 retouchDumpsCoreImageInputs];

  if (!v20 || (v22 & 1) == 0)
  {
    v23 = [MEMORY[0x1E69BDE40] globalSettings];
    [v23 setInpaintDumpsOriginalMasks:1];

    v24 = +[PUPhotoEditProtoSettings sharedInstance];
    [v24 setRetouchDumpsCoreImageInputs:1];

    v25 = objc_alloc(MEMORY[0x1E69B39A0]);
    v26 = [(PUPhotoEditToolController *)self compositionController];
    v27 = [v26 composition];
    v28 = [v25 initWithComposition:v27];

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

    v32 = [MEMORY[0x1E69BDE40] globalSettings];
    [v32 setInpaintDumpsOriginalMasks:v20];

    v33 = +[PUPhotoEditProtoSettings sharedInstance];
    [v33 setRetouchDumpsCoreImageInputs:v22];
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
        v44 = [v43 path];
        v45 = [v44 lastPathComponent];

        if ([v45 hasPrefix:v37] && objc_msgSend(v45, "containsString:", @"inpaint"))
        {
          [v4 addAttachment:v43];
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
  v62 = v4;
  v46 = v4;
  v47 = v59;
  v48 = _Block_copy(v60);
  v49 = [MEMORY[0x1E69B3AB0] tempDir];
  v50 = [v49 stringByAppendingPathComponent:@"input.heic"];
  v48[2](v48, v50);

  v51 = [v49 stringByAppendingPathComponent:@"inpaintMask.png"];
  v48[2](v48, v51);

  v52 = [v49 stringByAppendingPathComponent:@"exclusionMask.png"];
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

- (void)feedbackThumbsButtonAction:(id)a3
{
  v8 = a3;
  v4 = [(PUCleanupToolController *)self feedbackThumbsUpButton];

  if (v4 == v8)
  {
    v7 = 1;
  }

  else
  {
    v5 = [(PUCleanupToolController *)self feedbackThumbsDownButton];

    v6 = v8;
    if (v5 != v8)
    {
      goto LABEL_6;
    }

    v7 = 2;
  }

  [(PUCleanupToolController *)self _reportFeedbackAction:v7];
  v6 = v8;
LABEL_6:
}

- (void)_reportFeedbackAction:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(PUPhotoEditToolController *)self asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PUPhotoEditToolController *)self asset];

    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69C34D8]);
      [v7 setIncludeOriginalRender:1];
      v8 = [objc_alloc(MEMORY[0x1E69B3A78]) initWithTargetSize:{1024.0, 1024.0}];
      [v7 setScalePolicyForRenders:v8];

      v9 = [(PUPhotoEditToolController *)self delegate];
      v10 = [v9 editAssetDiagnostics];

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __49__PUCleanupToolController__reportFeedbackAction___block_invoke;
      v14[3] = &unk_1E7B768F8;
      v15 = v10;
      v16 = self;
      v17 = v6;
      v18 = a3;
      v11 = v6;
      v12 = v10;
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
    v13 = [(PUPhotoEditToolController *)self asset];
    *buf = 138412290;
    v20 = v13;
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

- (void)replayBrushstrokesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditToolController *)self compositionController];
  [v5 modifyAdjustmentWithKey:*MEMORY[0x1E69BE190] modificationBlock:&__block_literal_global_262];

  v6 = [(PUPhotoEditToolController *)self compositionController];
  [v6 removeAdjustmentWithKey:*MEMORY[0x1E69BE028]];

  v7 = [(PUPhotoEditToolController *)self compositionController];
  [v7 removeAdjustmentWithKey:@"inpaintMasks"];

  v8 = [(PUPhotoEditToolController *)self compositionController];
  v14 = [v8 brushStrokeHistory];

  v9 = objc_alloc_init(MEMORY[0x1E69BDDC0]);
  v10 = [(PUPhotoEditToolController *)self compositionController];
  [v10 setBrushStrokeHistory:v9];

  v11 = +[PUPhotoEditProtoSettings sharedInstance];
  [v11 replayStrokesPauseInterval];
  v13 = v12;

  [v14 playbackHistoryToReceiver:self options:0 pauseInterval:v4 completion:v13];
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
  v3 = [(PUPhotoEditToolController *)self compositionController];
  v4 = [v3 brushStrokeHistory];
  v5 = [v4 entryCount];

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(PUPhotoEditToolController *)self compositionController];
    v8 = [v7 brushStrokeHistory];
    v9 = [v6 stringWithFormat:@"Replay %ld Brushstrokes", objc_msgSend(v8, "entryCount")];
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

  if (!v5)
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
    v4 = [(PUCleanupToolController *)self feedbackActionPerformer];
    v5 = [v4 actionIconForFeedbackType:3 hasResponse:0];

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

- (void)_setLastInteractionPixelCount:(int64_t)a3
{
  if (self->_lastInteractionWasHighRate)
  {
    v3 = self->_currentInteractionSeriesCumulativePixelCount + a3;
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
  v2 = [(PUCleanupToolController *)self maskContext];
  v3 = [v2 segmentationResult];

  v4 = [v3 instances];
  v5 = [v4 count];

  return v5;
}

- (void)_thermalStateDidChange:(id)a3
{
  v4 = [MEMORY[0x1E696AE30] processInfo];
  v5 = [v4 thermalState];

  if (v5 > self->_highestEncounteredThermalState)
  {
    self->_highestEncounteredThermalState = v5;
  }
}

- (void)_applicationDidBecomeActive:(id)a3
{
  [(PUCleanupToolController *)self _prepareViewsForCleanupIfReady];
  v4 = [(PUCleanupToolController *)self view];
  [v4 setNeedsUpdateConstraints];
}

- (void)_applicationWillResignActive:(id)a3
{
  [(PUCleanupOverlayViewController *)self->_overlayController removeBrushView];
  [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay removeFromSuperview];
  retouchVFXOverlay = self->_retouchVFXOverlay;
  self->_retouchVFXOverlay = 0;
}

- (void)_didRedo:(id)a3
{
  retouchVFXOverlay = self->_retouchVFXOverlay;
  v5 = [(PUPhotoEditToolController *)self compositionController];
  v6 = [v5 composition];
  [(PUVFXRetouchOverlay *)retouchVFXOverlay didRenderComposition:v6];

  [(PUCleanupToolController *)self _updateFeedbackViewVisibility];
}

- (void)_didUndo:(id)a3
{
  retouchVFXOverlay = self->_retouchVFXOverlay;
  v5 = [(PUPhotoEditToolController *)self compositionController];
  v6 = [v5 composition];
  [(PUVFXRetouchOverlay *)retouchVFXOverlay didRenderComposition:v6];

  [(PUCleanupToolController *)self _updateFeedbackViewVisibility];
}

- (void)redoInitiated:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 redoMenuItemTitle];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(PUCleanupToolController *)self cleanupActionNames];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [v4 redoMenuTitleForUndoActionName:*(*(&v13 + 1) + 8 * i)];
        if ([v5 isEqualToString:v11])
        {
          [(PUCleanupToolController *)self _setBusy:1 withDelay:1.25];
          v12 = [(PUPhotoEditToolController *)self delegate];
          [v12 updateProgressIndicatorAnimated:1];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)undoInitiated:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 undoMenuItemTitle];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(PUCleanupToolController *)self cleanupActionNames];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [v4 undoMenuTitleForUndoActionName:*(*(&v13 + 1) + 8 * i)];
        if ([v5 isEqualToString:v11])
        {
          [(PUCleanupToolController *)self _setBusy:1 withDelay:1.25];
          v12 = [(PUPhotoEditToolController *)self delegate];
          [v12 updateProgressIndicatorAnimated:1];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(PUCleanupToolController *)self renderer];

  if (v3)
  {
    v9 = [(PUPhotoEditToolController *)self compositionController];
    v4 = [(PUCleanupToolController *)self renderer];
    v5 = v4;
    v6 = v9;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E69BE658]);
    v8 = [(PUPhotoEditToolController *)self editSource];
    v9 = [v7 initWithEditSource:v8 renderPriority:3];

    [(PUCleanupToolController *)self setRenderer:v9];
    v5 = [(PUPhotoEditToolController *)self compositionController];
    v4 = v9;
    v6 = v5;
  }

  [v4 setCompositionController:v6];
}

- (void)mediaViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditToolController *)self isActiveTool];
  if (!v5)
  {
    goto LABEL_14;
  }

  if (self->_cleanupMode == 1)
  {
    v6 = +[PUPhotoEditProtoSettings sharedInstance];
    v7 = [v6 cleanupMaskDisplayMode];

    if ((v7 - 1) >= 2)
    {
      if (v7)
      {
        goto LABEL_12;
      }

      v8 = [v4 _scrollView];
      if ([v8 isZoomBouncing])
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
          v5 = [(PUCleanupToolController *)self setVFXOverlayHidden:1];
        }

        goto LABEL_12;
      }
    }

    else
    {
      v8 = [v4 _scrollView];
      if ([v8 isZoomBouncing])
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
          v5 = [MEMORY[0x1E69DD250] performWithoutAnimation:v13];
        }

        goto LABEL_12;
      }
    }
  }

LABEL_12:
  if (MEMORY[0x1B8C6D660](v5))
  {
    [(PUCleanupToolController *)self _updatePromptViewPlatter];
  }

LABEL_14:
}

- (void)mediaViewDidEndZooming:(id)a3
{
  v4 = a3;
  if (![(PUPhotoEditToolController *)self isActiveTool]|| self->_cleanupMode != 1)
  {
    goto LABEL_17;
  }

  v5 = [v4 _scrollView];
  v6 = [v5 isZoomBouncing];

  if ((v6 & 1) == 0)
  {
    v7 = +[PUPhotoEditProtoSettings sharedInstance];
    v8 = [v7 cleanupMaskDisplayMode];

    if ((v8 - 1) < 2)
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
        v21 = self;
        v12 = &v17;
        v11 = 0.2;
      }

      v14 = 0;
      goto LABEL_13;
    }

    if (!v8)
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
      [v9 animateWithDuration:0 delay:v12 options:v14 animations:0.2 completion:{v11, v17, v18, v19, v20, v21}];
    }
  }

  self->_isZooming = 0;
  v15 = +[PUPhotoEditProtoSettings sharedInstance];
  v16 = [v15 cleanupMaskDisplayMode];

  if ((v16 - 1) <= 1)
  {
    [(PUCleanupToolMaskView *)self->_maskView setNeedsDisplay];
  }

  [(PUCleanupToolController *)self _updateFaceRectsView];
  [(PUCleanupToolController *)self _updateFeedbackViewVisibility];
LABEL_17:
}

- (void)mediaViewWillBeginZooming:(id)a3
{
  if ([(PUPhotoEditToolController *)self isActiveTool]&& self->_cleanupMode == 1)
  {
    self->_isZooming = 1;

    [(PUCleanupToolController *)self hidePromptViewIfNeededAnimated:1];
  }
}

- (void)mediaView:(id)a3 didZoom:(double)a4
{
  v9 = a3;
  if ([(PUPhotoEditToolController *)self isActiveTool])
  {
    if (self->_cleanupMode == 1)
    {
      v5 = [v9 _scrollView];
      v6 = [v5 isZoomBouncing];

      if ((v6 & 1) == 0 && !self->_isZooming)
      {
        v7 = +[PUPhotoEditProtoSettings sharedInstance];
        v8 = [v7 cleanupMaskDisplayMode];

        if ((v8 - 1) <= 1)
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
    v7 = [(PUPhotoEditToolController *)self delegate];
    [v7 updateProgressIndicatorAnimated:1];

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
      v4 = [(PUCleanupToolController *)self maskContext];
      v5 = [(PUPhotoEditToolController *)self compositionController];
      v6 = [v5 composition];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __43__PUCleanupToolController_mediaViewIsReady__block_invoke;
      v8[3] = &unk_1E7B768B0;
      v8[4] = self;
      [v3 updateMaskContext:v4 forComposition:v6 requestID:0 completionQueue:MEMORY[0x1E69E96A0] completion:v8];

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

- (void)_showCleanupBrushSizeSlider:(id)a3 label:(id)a4 show:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E69DD250];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PUCleanupToolController__showCleanupBrushSizeSlider_label_show___block_invoke;
  v12[3] = &unk_1E7B805E8;
  v15 = a5;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
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

- (void)_brushModeButtonTapped:(id)a3
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUCleanupToolController.m" lineNumber:2637 description:{@"Invalid parameter not satisfying: %@", @"[sender isKindOfClass:[UIButton class]]"}];
  }

  v7 = [(PUCleanupToolController *)self brushModeButton];
  v8 = [v7 isSelected];
  v9 = [(PUCleanupToolController *)self brushModeButton];
  [v9 setSelected:v8 ^ 1u];

  [(PUCleanupToolController *)self _updateBrushModeButton];
  v10 = [(PUCleanupToolController *)self brushModeButton];
  v11 = [v10 isSelected];

  if (v11)
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
  v3 = [(PUCleanupToolController *)self brushModeButton];
  if ([v3 isSelected])
  {
    [v6 photoEditingToolbarButtonSelectedColor];
  }

  else
  {
    [v6 photoEditingToolbarButtonColor];
  }
  v4 = ;

  v5 = [(PUCleanupToolController *)self brushModeButton];
  [v5 setTintColor:v4];
}

- (void)_resetTapped:(id)a3
{
  [(PUCleanupToolController *)self _setBusy:1];
  v4 = [(PUPhotoEditToolController *)self delegate];
  [v4 updateProgressIndicatorAnimated:1];

  v5 = [(PUPhotoEditToolController *)self compositionController];
  v20 = [v5 composition];

  [(PUPhotoEditToolController *)self willModifyAdjustment];
  v6 = [(PUPhotoEditToolController *)self compositionController];
  [v6 removeAdjustmentWithKey:*MEMORY[0x1E69BE028]];

  v7 = [(PUPhotoEditToolController *)self compositionController];
  [v7 removeAdjustmentWithKey:@"inpaintMasks"];

  v8 = PULocalizedString(@"PHOTOEDIT_CLEANUP_RESET_ACTION_TITLE");
  v9 = [(PUPhotoEditToolController *)self didModifyAdjustmentWithLocalizedName:v8];

  [(PUCleanupToolController *)self _updateResetButtonState];
  [(PUCleanupToolMaskView *)self->_maskView setSampledPoints:0];
  v10 = objc_alloc_init(MEMORY[0x1E69BDDC0]);
  v11 = [(PUPhotoEditToolController *)self compositionController];
  [v11 setBrushStrokeHistory:v10];

  [(PUCleanupToolController *)self _setCleanupMode:1];
  if (_os_feature_enabled_impl())
  {
    [(PUPhotoEditToolbarButton *)self->_brushModeButton setSelected:0];
  }

  v12 = +[PUPhotoEditProtoSettings sharedInstance];
  v13 = [v12 cleanupMaskDisplayMode];

  if (!v13)
  {
    retouchVFXOverlay = self->_retouchVFXOverlay;
    v15 = [(PUPhotoEditToolController *)self compositionController];
    v16 = [v15 composition];
    [(PUVFXRetouchOverlay *)retouchVFXOverlay didResetComposition:v16];
  }

  [(PUCleanupToolController *)self _updateFeedbackViewVisibility];
  v17 = MEMORY[0x1E69C4258];
  v18 = [(PUPhotoEditToolController *)self compositionController];
  v19 = [v18 composition];
  [v17 reportAnalyticsForChangeFrom:v20 to:v19 actionType:2];
}

- (void)_setCleanupMode:(unint64_t)a3
{
  cleanupMode = a3;
  if (self->_cleanupMode != a3)
  {
    self->_cleanupMode = a3;
    [(PUCleanupToolController *)self _addOverlayIfNeeded];
    [(PUCleanupOverlayViewController *)self->_overlayController setCleanupMode:cleanupMode];
    v5 = [(PUCleanupToolController *)self view];
    [v5 setNeedsUpdateConstraints];

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
    v16 = [(PUPhotoEditToolController *)self delegate];
    [v16 toolControllerDidChangeWantsTapToToggleOriginalEnabled:self enabled:0];

    [(PUCleanupToolController *)self _updateMaskViewForBrushMode];
    v18 = [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay brushView];
    v17 = [v18 layer];
    [v17 setOpacity:0.0];

    v13 = [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay rootLayer];
    v14 = v13;
    v15 = 0.0;
  }

  else
  {
    if (v8 != 1)
    {
      if (!v8)
      {
        v9 = [(PUPhotoEditToolController *)self delegate];
        [v9 toolControllerDidChangeWantsTapToToggleOriginalEnabled:self enabled:1];

        [(PUCleanupToolController *)self _updateMaskViewForBrushMode];
      }

      return;
    }

    v10 = [(PUPhotoEditToolController *)self delegate];
    [v10 toolControllerDidChangeWantsTapToToggleOriginalEnabled:self enabled:0];

    [(PUCleanupToolController *)self _updateMaskViewForDefaultModeIfNecessary];
    v18 = [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay brushView];
    v11 = [v18 layer];
    LODWORD(v12) = 1.0;
    [v11 setOpacity:v12];

    v13 = [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay rootLayer];
    v14 = v13;
    LODWORD(v15) = 1.0;
  }

  [v13 setOpacity:v15];
}

- (void)modifyInpaintAdjustmentWithBlock:(id)a3 actionStringKey:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  [(PUCleanupToolController *)self _donateTipsAppCleanupSignal];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PUCleanupToolController_modifyInpaintAdjustmentWithBlock_actionStringKey_completion___block_invoke;
  v13[3] = &unk_1E7B76888;
  v14 = v8;
  v15 = v9;
  v13[4] = self;
  v11 = v8;
  v12 = v9;
  [(PUCleanupToolController *)self checkPotentialInpaintOperation:v10 handler:v13];
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

- (void)checkPotentialInpaintOperation:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUPhotoEditToolController *)self compositionController];
  v9 = [v8 copy];

  v10 = *MEMORY[0x1E69BE028];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __66__PUCleanupToolController_checkPotentialInpaintOperation_handler___block_invoke;
  v38[3] = &unk_1E7B76810;
  v11 = v6;
  v39 = v11;
  [v9 modifyAdjustmentWithKey:v10 modificationBlock:v38];
  v12 = [v9 inpaintAdjustmentControllerCreatingIfNecessary:0];
  v13 = [(PUPhotoEditToolController *)self compositionController];
  v14 = [v13 composition];
  v15 = [v12 deltaFromComposition:v14];

  v16 = [v9 composition];
  v17 = [(PUPhotoEditToolController *)self compositionController];
  v18 = [v17 composition];
  if (([v16 isEqualToComposition:v18] & 1) != 0 || !v15)
  {
  }

  else
  {
    v19 = [v15 isEmpty];

    if ((v19 & 1) == 0)
    {
      v20 = +[PUPhotoEditProtoSettings sharedInstance];
      v21 = [v20 retouchEnablesSensitivityCheck];

      if (v21)
      {
        v22 = [(PUCleanupToolController *)self sensitivityRequest];

        if (!v22)
        {
          v23 = objc_alloc(MEMORY[0x1E69BDF50]);
          v24 = [v9 composition];
          v25 = [v23 initWithComposition:v24];
          [(PUCleanupToolController *)self setSensitivityRequest:v25];

          v26 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:1];
          v27 = [(PUCleanupToolController *)self sensitivityRequest];
          [v27 setPriority:v26];

          v28 = [(PUCleanupToolController *)self sensitivityRequest];
          [v28 setResponseQueue:MEMORY[0x1E69E96A0]];
        }

        v29 = [v9 composition];
        v30 = [(PUCleanupToolController *)self sensitivityRequest];
        [v30 setComposition:v29];

        v31 = [(PUCleanupToolController *)self isBusy];
        if (!v31)
        {
          [(PUCleanupToolController *)self _setBusy:1];
          v32 = [(PUPhotoEditToolController *)self delegate];
          [v32 updateProgressIndicatorAnimated:1];
        }

        v33 = [(PUCleanupToolController *)self sensitivityRequest];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __66__PUCleanupToolController_checkPotentialInpaintOperation_handler___block_invoke_2;
        v34[3] = &unk_1E7B76838;
        v37 = v31;
        v34[4] = self;
        v36 = v7;
        v35 = v15;
        [v33 submit:v34];
      }

      else
      {
        (*(v7 + 2))(v7, 1, v15);
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
  v3 = [(PUPhotoEditToolController *)self delegate];
  [v3 updateProgressIndicatorAnimated:1];

  [(PUCleanupToolController *)self addUserPromptViewOfType:5 animated:1];
  [(PUCleanupToolController *)self fadeOutBrushStrokeWithDuration:0.2];
  [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay undimMasks];
  self->_redactionState = 0;
}

- (void)previewingOriginalDidStop
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  v4 = [v3 cleanupMaskDisplayMode];

  if ((v4 - 1) >= 2)
  {
    if (!v4)
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
  v4 = [v3 cleanupMaskDisplayMode];

  if ((v4 - 1) >= 2)
  {
    if (!v4)
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

- (void)toolControllerWantsToShowOriginal:(BOOL)a3
{
  v4 = [(PUPhotoEditToolController *)self delegate];
  [v4 toolControllerWantsToToggleOriginal:self];
}

- (id)transformedImageForBrushStrokeExclusionMask:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = MEMORY[0x1E695F658];
    v5 = [a3 buffer];
    v6 = [v4 imageWithCVPixelBuffer:{objc_msgSend(v5, "CVPixelBuffer")}];

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

- (id)brushStrokeExclusionMaskForStrokeStartingAtImageSpacePoint:(CGPoint)a3 withRadius:(double)a4
{
  y = a3.y;
  x = a3.x;
  v18 = *MEMORY[0x1E69E9840];
  v8 = [(PUCleanupToolController *)self geometry];

  if (!v8)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v16 = 138412290;
      v17 = @"self.geometry";
      _os_log_fault_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: %@", &v16, 0xCu);
    }
  }

  self->_exclusionMaskHitTestRadius = a4;
  v10 = [(PUCleanupToolController *)self _createSubjectExclusionMask];
  v11 = v10;
  if (v10)
  {
    [v10 scale];
    NUScaleInvert();
    NUScaleToDouble();
    v13 = v12;
    v14 = x * v12;
    if (a4 <= 0.0)
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
  v2 = [(PUPhotoEditToolController *)self photoEditSpec];
  v3 = [v2 currentLayoutStyle] == 4;

  return v3;
}

- (void)_updateVFXMaskOverlayWithSelectedMask:(id)a3 point:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ([MEMORY[0x1E69B3DB8] isMaskValid:v7])
  {
    v8 = [(PUPhotoEditToolController *)self compositionController];
    v9 = [v8 composition];

    v10 = [v7 imageByApplyingFilter:@"CIMaskToAlpha"];
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
      [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay selectPoint:v11 withMask:v9 composition:x, y];
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
  v3 = [(PUPhotoEditToolController *)self toolContainerView];

  if (v3)
  {
    v4 = off_1E7B6E000;
    v5 = +[PUPhotoEditProtoSettings sharedInstance];
    if ([v5 cleanupMaskDisplayMode])
    {
      v6 = 0;
    }

    else
    {
      v6 = [(PUCleanupToolController *)self maskContext];
    }

    if (self->_retouchVFXOverlay || ([(PUCleanupToolController *)self maskContext], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
LABEL_25:

      goto LABEL_26;
    }

    v8 = [PUVFXRetouchOverlay alloc];
    v9 = [(PUPhotoEditToolController *)self compositionController];
    v10 = [v9 composition];
    v11 = [(PUPhotoEditToolController *)self delegate];
    v12 = [v11 mediaView];
    v13 = [v12 _visibleImageRectOverlayView];
    v14 = [(PUVFXRetouchOverlay *)v8 initWithComposition:v10 maskContext:v6 constrainingView:v13 isHDR:self->_needsHDRUI overlayDelegate:self];
    retouchVFXOverlay = self->_retouchVFXOverlay;
    self->_retouchVFXOverlay = v14;

    [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay setUserInteractionEnabled:0];
    v16 = [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay brushView];
    [(PUCleanupOverlayViewController *)self->_overlayController setVfxBrushView:v16];

    v17 = [(PUCleanupToolController *)self view];
    v18 = [v17 subviews];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v18;
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
            v26 = [(PUCleanupToolController *)self view];
            [v26 insertSubview:self->_retouchVFXOverlay aboveSubview:v25];

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

    v28 = [(PUCleanupToolController *)self view];
    [v28 addSubview:self->_retouchVFXOverlay];

LABEL_22:
    v29 = [(__objc2_class *)v4[68] sharedInstance];
    v30 = [v29 retouchShowVFXControls];

    if (v30)
    {
      [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay showControlsInViewController:self];
    }

    goto LABEL_25;
  }

LABEL_26:
  v31 = [(PUCleanupToolController *)self view];
  [v31 setNeedsUpdateConstraints];
}

- (void)_createMaskView
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_maskView)
  {
    v3 = [(PUPhotoEditToolController *)self delegate];
    v4 = [v3 mediaView];

    [v4 bounds];
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

    v11 = [[PUCleanupToolMaskView alloc] initWithMediaView:v4 isHDR:self->_needsHDRUI];
    maskView = self->_maskView;
    self->_maskView = v11;

    [(PUCleanupToolMaskView *)self->_maskView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(PUCleanupToolMaskView *)self->_maskView layer];
    [v13 setMasksToBounds:1];

    v14 = self->_maskView;
    v15 = [(PUCleanupToolMaskView *)v14 layer];
    [v15 setDelegate:v14];

    [(PUCleanupToolMaskView *)self->_maskView setMaskTransformerDelegate:self];
    [(PUCleanupToolMaskView *)self->_maskView setUserInteractionEnabled:0];
    v16 = [MEMORY[0x1E69DC888] clearColor];
    [(PUCleanupToolMaskView *)self->_maskView setBackgroundColor:v16];

    v17 = [(PUCleanupToolController *)self view];
    [v17 insertSubview:self->_maskView atIndex:0];
  }
}

- (void)_updateMaskViewForDefaultMode
{
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  v4 = [v3 cleanupMaskDisplayMode];

  if (v4 == 2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__PUCleanupToolController__updateMaskViewForDefaultMode__block_invoke;
    v6[3] = &unk_1E7B767E8;
    v6[4] = self;
    [(PUCleanupToolController *)self createAllAvailableMasks:v6];
  }

  else if (v4 == 1)
  {
    v5 = [(PUCleanupToolController *)self _newOverlayMask];
    [(PUCleanupToolController *)self _updateMaskViewWithUnselectedMaskImage:v5 foregroundMasks:0 backgroundMasks:0];
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

- (void)_displayProcessingWithSelectedMaskImage:(id)a3 unselectedMaskImage:(id)a4 exclusionMasks:(id)a5 point:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v37 = a4;
  v11 = a5;
  v12 = v10;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = [v11 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(v11);
        }

        v18 = MEMORY[0x1E695F658];
        v19 = [*(*(&v40 + 1) + 8 * v16) buffer];
        v20 = [v18 imageWithCVPixelBuffer:{objc_msgSend(v19, "CVPixelBuffer")}];

        [v17 extent];
        v22 = v21;
        [v20 extent];
        v24 = v22 / v23;
        [v17 extent];
        v26 = v25;
        [v20 extent];
        CGAffineTransformMakeScale(&v39, v24, v26 / v27);
        v28 = [v20 imageByApplyingTransform:&v39];

        v29 = [MEMORY[0x1E695F608] subtract];
        v12 = [v29 applyWithForeground:v28 background:v17];

        ++v16;
        v17 = v12;
      }

      while (v14 != v16);
      v14 = [v11 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v14);
  }

  v30 = +[PUPhotoEditProtoSettings sharedInstance];
  v31 = [v30 cleanupMaskDisplayMode];

  if (!v31)
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
  v34 = [v33 cleanupMaskDisplayMode];

  if ((v34 - 1) <= 1)
  {
    [(PUCleanupToolMaskView *)self->_maskView setMask:v37];
    [(PUCleanupToolMaskView *)self->_maskView setSelectedMask:v32];
    [(PUCleanupToolMaskView *)self->_maskView setForegroundMasks:0];
    [(PUCleanupToolMaskView *)self->_maskView setBackgroundMasks:0];
    [(PUCleanupToolMaskView *)self->_maskView setNeedsDisplay];
    [(PUCleanupToolController *)self fadeOutBrushStrokeWithDuration:0.2];
  }

  if (v32)
  {
    [(PUCleanupToolController *)self _setBusy:1 withDelay:15.0];
    v35 = [(PUPhotoEditToolController *)self delegate];
    [v35 updateProgressIndicatorAnimated:1];
  }
}

- (void)_displayProcessingWithSelectedMask:(id)a3 unselectedMaskImage:(id)a4 exclusionMasks:(id)a5 point:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v11 = MEMORY[0x1E695F658];
  v12 = a5;
  v13 = a4;
  v14 = [a3 buffer];
  v15 = [v11 imageWithCVPixelBuffer:{objc_msgSend(v14, "CVPixelBuffer")}];

  [(PUCleanupToolController *)self _displayProcessingWithSelectedMaskImage:v15 unselectedMaskImage:v13 exclusionMasks:v12 point:x, y];
}

- (void)_updateMaskViewWithUnselectedMaskImage:(id)a3 foregroundMasks:(id)a4 backgroundMasks:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[PUPhotoEditProtoSettings sharedInstance];
  v11 = [v10 cleanupMaskDisplayMode];

  if ((v11 - 1) <= 1)
  {
    [(PUCleanupToolMaskView *)self->_maskView setMask:v12];
    [(PUCleanupToolMaskView *)self->_maskView setSelectedMask:0];
    [(PUCleanupToolMaskView *)self->_maskView setForegroundMasks:v8];
    [(PUCleanupToolMaskView *)self->_maskView setBackgroundMasks:v9];
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
    v4 = [(PUCleanupToolController *)self maskContext];
    v5 = [(PUPhotoEditToolController *)self compositionController];
    v6 = [v5 composition];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PUCleanupToolController__createSubjectExclusionMask__block_invoke;
    v9[3] = &unk_1E7B7C288;
    v9[4] = &v10;
    [v3 createSubjectMaskForContext:v4 composition:v6 completion:v9];
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
  v4 = [v3 cleanupMaskDisplayMode];

  if (v4 == 1)
  {
    v9 = [(PUCleanupToolController *)self maskContext];

    if (v9)
    {
      v10 = MEMORY[0x1E69BDE68];
      v6 = [(PUCleanupToolController *)self maskContext];
      v11 = [(PUPhotoEditToolController *)self compositionController];
      v12 = [v11 composition];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __42__PUCleanupToolController__newOverlayMask__block_invoke;
      v16[3] = &unk_1E7B767C0;
      v16[4] = self;
      v16[5] = &v17;
      [v10 createDeclutterMaskForContext:v6 composition:v12 completion:v16];

      goto LABEL_6;
    }
  }

  else if (v4 == 2)
  {
    v5 = MEMORY[0x1E69BDE68];
    v6 = [(PUCleanupToolController *)self maskContext];
    v7 = [(PUPhotoEditToolController *)self compositionController];
    v8 = [v7 composition];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42__PUCleanupToolController__newOverlayMask__block_invoke_2;
    v15[3] = &unk_1E7B7C288;
    v15[4] = &v17;
    [v5 createAvailableObjectsMaskForContext:v6 composition:v8 completion:v15];

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

- (void)createAllAvailableMasks:(id)a3
{
  v4 = a3;
  v5 = [(PUCleanupToolController *)self maskContext];
  v6 = [v5 segmentationResult];

  v27 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  if (v6)
  {
    v26 = v4;
    v8 = [v6 instances];
    v9 = [v8 copy];

    v10 = MEMORY[0x1E69BDE68];
    v11 = [(PUPhotoEditToolController *)self compositionController];
    v12 = [v11 composition];
    v13 = [(PUCleanupToolController *)self maskContext];
    v14 = [v10 removeOperationsFromInstances:v9 composition:v12 context:v13];

    v15 = [v14 firstIndex];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      v17 = 0;
      do
      {
        v18 = v17;
        v28 = 0;
        v19 = [v6 newMaskForInstance:v16 error:&v28];
        v17 = v28;

        v20 = [MEMORY[0x1E695F658] imageWithCVImageBuffer:{objc_msgSend(v19, "CVPixelBuffer")}];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 imageByApplyingFilter:@"CIColorInvert"];

          v23 = [v6 foregroundInstances];
          v24 = [v23 containsIndex:v16];

          if (v24)
          {
            v25 = v7;
          }

          else
          {
            v25 = v27;
          }

          [v25 addObject:v22];
        }

        v16 = [v14 indexGreaterThanIndex:v16];
      }

      while (v16 != 0x7FFFFFFFFFFFFFFFLL);
    }

    v4 = v26;
  }

  v4[2](v4, v27, v7, 0);
}

- (void)addObjectRemovalUsingImageSpaceStroke:(id)a3 exclusionMask:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PUPhotoEditToolController *)self delegate];
  v12 = [v11 mediaView];
  v13 = [v12 _scrollView];
  [v13 contentSize];
  v15 = v14;

  v16 = [(PUCleanupToolController *)self geometry];
  [v16 outputRect];
  v18 = v17;

  v19 = v9;
  exclusionMaskHitTestRadius = self->_exclusionMaskHitTestRadius;
  v21 = [(PUCleanupToolController *)self isBusy];
  if (!v21)
  {
    [(PUCleanupToolController *)self _setBusy:1];
    v22 = [(PUPhotoEditToolController *)self delegate];
    [v22 updateProgressIndicatorAnimated:1];

    [(PUCleanupOverlayViewController *)self->_overlayController setCleanupMode:0];
  }

  [(PUCleanupToolController *)self _interactionOccurred];
  v23 = objc_alloc_init(MEMORY[0x1E69C4270]);
  v24 = [(PUCleanupToolController *)self maskContext];
  v25 = [(PUPhotoEditToolController *)self compositionController];
  v26 = [(PUCleanupToolController *)self geometry];
  v27 = [(PIInpaintMaskContext *)self->_maskContext detectedFaces];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __90__PUCleanupToolController_addObjectRemovalUsingImageSpaceStroke_exclusionMask_completion___block_invoke;
  v31[3] = &unk_1E7B76798;
  v36 = v21;
  v31[4] = self;
  v32 = v8;
  v35 = exclusionMaskHitTestRadius;
  v33 = v19;
  v34 = v10;
  v28 = v10;
  v29 = v19;
  v30 = v8;
  [v23 analyzeStrokeMaskIntersections:v30 inpaintMaskContext:v24 compositionController:v25 geometry:v26 imageToScreenSpaceScale:v27 faceRects:v31 completion:v15 / v18];
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

- (void)addObjectRemovalUsingStroke:(id)a3 exclusionMask:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28 = a4;
  v7 = objc_alloc(MEMORY[0x1E69B3B90]);
  [v6 radius];
  v8 = *(MEMORY[0x1E69B3900] + 16);
  *buf = *MEMORY[0x1E69B3900];
  v30 = v8;
  v9 = [v7 initWithRadius:buf softness:0 opacity:? clipRect:? pressureMode:?];
  v10 = [MEMORY[0x1E696AD60] string];
  [v10 appendString:@"addObjectRemovalUsingStroke"];
  if ([v6 pointCount] >= 1)
  {
    v11 = 0;
    do
    {
      [v6 pointAtIndex:v11];
      v13 = v12;
      [v6 pointAtIndex:v11];
      v15 = v14;
      v16 = MEMORY[0x1E696AEC0];
      v32.x = v13;
      v32.y = v14;
      v17 = NSStringFromCGPoint(v32);
      v18 = [v16 stringWithFormat:@"\n\t%@", v17];
      [v10 appendString:v18];

      v19 = [(PUPhotoEditToolController *)self delegate];
      v20 = [(PUCleanupOverlayViewController *)self->_overlayController view];
      [v19 toolController:self originalPointFromViewPoint:v20 view:{v13, v15}];
      v22 = v21;
      v24 = v23;

      *&v25 = v22;
      *&v26 = v24;
      [v9 appendPoint:{v25, v26, 0.0}];
      ++v11;
    }

    while ([v6 pointCount] > v11);
  }

  v27 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v10;
    _os_log_impl(&dword_1B36F3000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  [(PUCleanupToolController *)self addObjectRemovalUsingImageSpaceStroke:v9 exclusionMask:v28 completion:0];
}

- (void)addObjectRemovalAtImageSpacePoint:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  self->_redactionState = 0;
  v8 = [objc_alloc(MEMORY[0x1E69BDDC8]) initWithObjectRemovalAtPoint:{x, y}];
  v9 = [(PUPhotoEditToolController *)self compositionController];
  v10 = [v9 brushStrokeHistory];
  [v10 addEntry:v8];

  [(PUCleanupToolController *)self _interactionOccurred];
  v11 = objc_alloc_init(MEMORY[0x1E69C4270]);
  [(PUCleanupToolController *)self brushRadiusForTouchType:0];
  v13 = v12;
  v14 = [(PUCleanupToolController *)self maskContext];
  v15 = [(PUPhotoEditToolController *)self compositionController];
  v16 = [(PUCleanupToolController *)self geometry];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PUCleanupToolController_addObjectRemovalAtImageSpacePoint_completion___block_invoke;
  v18[3] = &unk_1E7B76700;
  v20 = x;
  v21 = y;
  v18[4] = self;
  v19 = v7;
  v17 = v7;
  [v11 hitTestSegmentation:v14 radius:v15 inpaintMaskContext:v16 compositionController:v18 geometry:x completion:{y, v13}];
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

- (void)addObjectRemovalAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PUPhotoEditToolController *)self delegate];
  v7 = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [v6 toolController:self originalPointFromViewPoint:v7 view:{x, y}];
  v9 = v8;
  v11 = v10;

  [(PUCleanupToolController *)self addObjectRemovalAtImageSpacePoint:0 completion:v9, v11];
}

- (void)addStroke:(id)a3 closeAndFillStroke:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc(MEMORY[0x1E69B3B90]);
  [v8 radius];
  v11 = *(MEMORY[0x1E69B3900] + 16);
  v26[0] = *MEMORY[0x1E69B3900];
  v26[1] = v11;
  v12 = [v10 initWithRadius:v26 softness:0 opacity:? clipRect:? pressureMode:?];
  if ([v8 pointCount] >= 1)
  {
    v13 = 0;
    do
    {
      [v8 pointAtIndex:v13];
      v15 = v14;
      [v8 pointAtIndex:v13];
      v17 = v16;
      v18 = [(PUPhotoEditToolController *)self delegate];
      v19 = [(PUCleanupOverlayViewController *)self->_overlayController view];
      [v18 toolController:self originalPointFromViewPoint:v19 view:{v15, v17}];
      v21 = v20;
      v23 = v22;

      *&v24 = v21;
      *&v25 = v23;
      [v12 appendPoint:{v24, v25, 0.0}];
      ++v13;
    }

    while ([v8 pointCount] > v13);
  }

  [(PUCleanupToolController *)self addImageSpaceInpaintingStroke:v12 exclusionMask:0 closeAndFillStroke:v6 needsFacePixellation:0 recordStroke:1 completion:v9];
}

- (void)_addImageSpaceInpaintingStroke:(id)a3 closeAndFillStroke:(BOOL)a4 needsFacePixellation:(BOOL)a5 recordStroke:(BOOL)a6 exclusionMask:(id)a7 exclusionMaskHitTestRadius:(double)a8 retouchBrush:(BOOL)a9 completion:(id)a10
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v49[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a7;
  v18 = a10;
  if (v12)
  {
    v19 = [objc_alloc(MEMORY[0x1E69BDDC8]) initWithStroke:v16 closed:v14 skipSegmentationIntersections:1 needsFacePixellation:v13 subjectHitTestRadius:a8];
    v20 = [(PUPhotoEditToolController *)self compositionController];
    v21 = [v20 brushStrokeHistory];
    [v21 addEntry:v19];
  }

  v22 = [v16 ciImageTiled:0 closed:1 pressureMode:2 filled:v14];
  v23 = MEMORY[0x1E695F658];
  v24 = [MEMORY[0x1E695F610] blackColor];
  v25 = [v23 imageWithColor:v24];

  v26 = [v22 imageByCompositingOverImage:v25];
  [(PUCleanupToolController *)self imageSize];
  v43 = [v26 imageByCroppingToRect:{0.0, 0.0, v27, v28}];

  [(PUCleanupToolController *)self _setBusy:1 withDelay:15.0];
  v29 = [(PUPhotoEditToolController *)self delegate];
  [v29 updateProgressIndicatorAnimated:1];

  isUnsafeInitially = self->_isUnsafeInitially;
  if (isUnsafeInitially || v13)
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
  v34 = [v33 brushStrokeExceedsSizeLimit:v16 imageSize:v14 closeAndFillStroke:?];
  redactionState = self->_redactionState;
  if (redactionState || !v34)
  {
    v41 = v17;
    if (v17)
    {
      v49[0] = v17;
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
      v39 = [(PUCleanupToolController *)self _newOverlayMask];
    }

    else
    {
      v39 = 0;
    }

    [(PUCleanupToolController *)self _displayProcessingWithSelectedMaskImage:v37 unselectedMaskImage:v39 exclusionMasks:v36 point:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    if (cleanupMode == 1)
    {
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __176__PUCleanupToolController__addImageSpaceInpaintingStroke_closeAndFillStroke_needsFacePixellation_recordStroke_exclusionMask_exclusionMaskHitTestRadius_retouchBrush_completion___block_invoke;
    v44[3] = &unk_1E7B766D8;
    v44[4] = self;
    v47 = v14;
    v48 = a9;
    v45 = v16;
    v46 = v36;
    v40 = v36;
    [(PUCleanupToolController *)self modifyInpaintAdjustmentWithBlock:v44 actionStringKey:@"PHOTOEDIT_CLEANUP_CLEAN_UP_ACTION_TITLE" completion:v18];

    v17 = v41;
  }

  else
  {
    [(PUCleanupToolController *)self _handleOperationExceedsSizeLimit];
    if (v18)
    {
      v18[2](v18);
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

- (void)addImageSpaceInpaintingStroke:(id)a3 exclusionMask:(id)a4 closeAndFillStroke:(BOOL)a5 needsFacePixellation:(BOOL)a6 recordStroke:(BOOL)a7 completion:(id)a8
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  self->_redactionState = 0;
  v14 = a8;
  v15 = a4;
  v16 = a3;
  [(PUCleanupToolController *)self _interactionOccurred];
  [(PUCleanupToolController *)self _addImageSpaceInpaintingStroke:v16 closeAndFillStroke:v10 needsFacePixellation:v9 recordStroke:v8 exclusionMask:v15 exclusionMaskHitTestRadius:1 retouchBrush:self->_exclusionMaskHitTestRadius completion:v14];
}

- (void)addDeclutter
{
  self->_redactionState = 0;
  [(PUCleanupToolController *)self hidePromptViewIfNeededAnimated:0];
  v3 = MEMORY[0x1E69BDE68];
  v4 = [(PUCleanupToolController *)self maskContext];
  v5 = [(PUPhotoEditToolController *)self compositionController];
  v6 = [v5 composition];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__PUCleanupToolController_addDeclutter__block_invoke;
  v7[3] = &unk_1E7B766B0;
  v7[4] = self;
  [v3 createDeclutterMaskForContext:v4 composition:v6 completion:v7];
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

- (CGPoint)originalPointFromOverlayViewPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PUPhotoEditToolController *)self delegate];
  v7 = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [v6 toolController:self originalPointFromViewPoint:v7 view:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (float)scaledBrushRadiusForTouchType:(int64_t)a3
{
  LODWORD(v3) = 1.0;
  if (self->_cleanupMode - 1 <= 1)
  {
    LODWORD(v3) = 5.0;
    if (a3 != 2)
    {
      v5 = [MEMORY[0x1E69C4290] globalSettings];
      [v5 retouchDefaultModeBrushSizeDefault];
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

- (double)subjectExclusionMaskBrushRadiusForScreenSpaceRadius:(double)a3
{
  v5 = [(PUPhotoEditToolController *)self delegate];
  v6 = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [v5 toolController:self originalPointFromViewPoint:v6 view:{0.0, 0.0}];
  v8 = v7;
  v10 = v9;

  v11 = [(PUPhotoEditToolController *)self delegate];
  v12 = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [v11 toolController:self originalPointFromViewPoint:v12 view:{a3, 0.0}];
  v14 = v13;
  v16 = v15;

  return ceil(sqrt((v10 - v16) * (v10 - v16) + (v8 - v14) * (v8 - v14)));
}

- (float)brushRadiusForTouchType:(int64_t)a3
{
  cleanupMode = self->_cleanupMode;
  if (a3 == 2)
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

  v8 = [MEMORY[0x1E69C4290] globalSettings];
  [v8 retouchDefaultModeBrushSizeDefault];
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
  v11 = [(PUPhotoEditToolController *)self delegate];
  v12 = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [v11 toolController:self originalPointFromViewPoint:v12 view:{0.0, 0.0}];
  v14 = v13;
  v16 = v15;

  v17 = [(PUPhotoEditToolController *)self delegate];
  v18 = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [v17 toolController:self originalPointFromViewPoint:v18 view:{v5, 0.0}];
  v20 = v19;
  v22 = v21;

  return ceil(sqrt((v16 - v22) * (v16 - v22) + (v14 - v20) * (v14 - v20)));
}

- (void)reloadToolbarButtons:(BOOL)a3
{
  v4 = [(PUPhotoEditToolController *)self delegate];
  v5 = [v4 isLoopingVideo];

  if ((v5 & 1) == 0)
  {
    v6 = [(PUPhotoEditToolController *)self delegate];
    [v6 isStandardVideo];
  }
}

- (void)_addOverlayIfNeeded
{
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 isLoopingVideo];

  if ((v4 & 1) == 0)
  {
    v5 = [(PUPhotoEditToolController *)self delegate];
    v6 = [v5 isStandardVideo];

    if ((v6 & 1) == 0 && !self->_overlayController)
    {
      v7 = [(PUPhotoEditToolController *)self delegate];
      v15 = [v7 mediaView];

      v8 = [[PUCleanupOverlayViewController alloc] initWithMediaView:v15 isHDR:self->_needsHDRUI];
      overlayController = self->_overlayController;
      self->_overlayController = v8;

      [(PUCleanupOverlayViewController *)self->_overlayController setOverlayControllerDelegate:self];
      v10 = [(PUCleanupOverlayViewController *)self->_overlayController view];
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

      v11 = [(PUCleanupOverlayViewController *)self->_overlayController view];
      [v11 setClipsToBounds:1];

      v12 = [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay brushView];
      [(PUCleanupOverlayViewController *)self->_overlayController setVfxBrushView:v12];

      [(PUCleanupToolController *)self addChildViewController:self->_overlayController];
      [(PUCleanupOverlayViewController *)self->_overlayController didMoveToParentViewController:self];
      v13 = [(PUCleanupToolController *)self view];
      v14 = [(PUCleanupOverlayViewController *)self->_overlayController view];
      [v13 insertSubview:v14 atIndex:0];
    }
  }
}

- (void)sliderDidScroll:(id)a3
{
  v9 = a3;
  if (([(CEKSlider *)v9 isHidden]& 1) == 0)
  {
    v4 = v9;
    if (self->_brushModeBrushSizeSlider == v9)
    {
      v6 = &OBJC_IVAR___PUCleanupToolController__brushModeBrushSizeLabel;
    }

    else
    {
      if (self->_defaultModeBrushSizeSlider != v9)
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
    v4 = v9;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_setBusy:(BOOL)a3
{
  self->_busy = a3;
  if (!a3)
  {
    self->_progressDelay = 15.0;
  }
}

- (void)_setShowCleanupBrushSizeSlider:(id)a3 show:(BOOL)a4 animate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if ([v7 isHidden] == v6)
  {
    if (v6)
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
    v9 = v7;
    v19 = v9;
    v20 = v8;
    v10 = _Block_copy(aBlock);
    v11 = v10;
    if (v5)
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
      v15 = v6;
      [v12 animateWithDuration:v16 animations:v13 completion:0.25];
    }

    else
    {
      v10[2](v10);
      [v9 setHidden:v6 ^ 1u];
    }
  }
}

- (void)leavingEditWithCancel
{
  v2 = [(PUCleanupToolController *)self modelDeliveryManager];
  [v2 stopNetworkMonitoring];
}

- (void)prepareForSave:(BOOL)a3
{
  v3 = [(PUCleanupToolController *)self modelDeliveryManager];
  [v3 stopNetworkMonitoring];
}

- (BOOL)_canReset
{
  v2 = [(PUPhotoEditToolController *)self compositionController];
  v3 = [v2 inpaintAdjustmentController];

  if (v3)
  {
    v4 = [v3 adjustment];
    v5 = [v4 objectForKeyedSubscript:@"operations"];
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
    v3 = [(PUCleanupToolController *)self brushModeButton];
    v6[0] = v3;
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
  v3 = [(PUPhotoEditToolController *)self ppt_didBecomeActiveToolBlock];

  if (v3)
  {
    v4 = [(PUPhotoEditToolController *)self ppt_didBecomeActiveToolBlock];
    v4[2]();
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
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 mediaView];

  savedMediaViewScrollViewMinimumNumberOfTouches = self->_savedMediaViewScrollViewMinimumNumberOfTouches;
  if (savedMediaViewScrollViewMinimumNumberOfTouches)
  {
    v6 = [(NSNumber *)savedMediaViewScrollViewMinimumNumberOfTouches unsignedIntegerValue];
  }

  else
  {
    v6 = 1;
  }

  v7 = [v4 _scrollView];
  v8 = [v7 panGestureRecognizer];
  [v8 setMinimumNumberOfTouches:v6];

  v9 = [(PUCleanupToolController *)self feedbackView];
  [v9 setHidden:1];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 removeObserver:self name:*MEMORY[0x1E696A7E0] object:0];

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
  v3 = [(PUCleanupToolController *)self view];
  [v3 setNeedsUpdateConstraints];

  v4 = [(PUPhotoEditToolController *)self delegate];
  v5 = [v4 mediaView];

  if (!self->_savedMediaViewScrollViewMinimumNumberOfTouches)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [v5 _scrollView];
    v8 = [v7 panGestureRecognizer];
    v9 = [v6 numberWithUnsignedInteger:{objc_msgSend(v8, "minimumNumberOfTouches")}];
    savedMediaViewScrollViewMinimumNumberOfTouches = self->_savedMediaViewScrollViewMinimumNumberOfTouches;
    self->_savedMediaViewScrollViewMinimumNumberOfTouches = v9;
  }

  v11 = [v5 _scrollView];
  v12 = [v11 panGestureRecognizer];
  [v12 setMinimumNumberOfTouches:2];

  [(PUCleanupToolController *)self _updateFeedbackViewVisibility];
  [(PUCleanupToolController *)self _thermalStateDidChange:0];
  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 addObserver:self selector:sel__thermalStateDidChange_ name:*MEMORY[0x1E696A7E0] object:0];
}

- (void)willBecomeActiveTool
{
  v2.receiver = self;
  v2.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v2 willBecomeActiveTool];
}

- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v12 setLayoutOrientation:a3 withTransitionCoordinator:v6];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PUCleanupToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E7B80DD0;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__PUCleanupToolController_setLayoutOrientation_withTransitionCoordinator___block_invoke_2;
    v9[3] = &unk_1E7B7ABE0;
    v10 = v7;
    [v6 animateAlongsideTransition:v9 completion:0];
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

    v5 = [(PUPhotoEditToolController *)self toolContainerView];
    v116 = v5;
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
        v118 = [(CEKSlider *)self->_defaultModeBrushSizeSlider heightAnchor];
        v114 = [v118 constraintEqualToConstant:66.0];
        v133[0] = v114;
        v110 = [(CEKSlider *)self->_defaultModeBrushSizeSlider widthAnchor];
        v104 = [v5 widthAnchor];
        v60 = [v110 constraintEqualToAnchor:v104];
        v133[1] = v60;
        v61 = [v5 centerXAnchor];
        v62 = [(CEKSlider *)self->_defaultModeBrushSizeSlider centerXAnchor];
        v63 = [v61 constraintEqualToAnchor:v62];
        v133[2] = v63;
        v64 = [v116 bottomAnchor];
        v65 = [(CEKSlider *)self->_defaultModeBrushSizeSlider bottomAnchor];
        v66 = [v64 constraintEqualToAnchor:v65 constant:0.0];
        v133[3] = v66;
        v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:4];
        [(NSMutableArray *)v100 addObjectsFromArray:v67];

        v68 = self->_toolConstraints;
        v69 = [(UILabel *)self->_defaultModeBrushSizeLabel centerXAnchor];
        v70 = [(CEKSlider *)self->_defaultModeBrushSizeSlider centerXAnchor];
        v71 = [v69 constraintEqualToAnchor:v70];
        v132[0] = v71;
        v72 = [(UILabel *)self->_defaultModeBrushSizeLabel bottomAnchor];
        v73 = [(CEKSlider *)self->_defaultModeBrushSizeSlider topAnchor];
        v74 = [v72 constraintEqualToAnchor:v73 constant:10.0];
        v132[1] = v74;
        v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
        [(NSMutableArray *)v68 addObjectsFromArray:v75];

        v5 = v116;
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
      v119 = [(CEKSlider *)self->_brushModeBrushSizeSlider heightAnchor];
      v115 = [v119 constraintEqualToConstant:66.0];
      v131[0] = v115;
      v111 = [(CEKSlider *)self->_brushModeBrushSizeSlider widthAnchor];
      v105 = [v5 widthAnchor];
      v78 = [v111 constraintEqualToAnchor:v105];
      v131[1] = v78;
      v79 = [v5 centerXAnchor];
      v80 = [(CEKSlider *)self->_brushModeBrushSizeSlider centerXAnchor];
      v81 = [v79 constraintEqualToAnchor:v80];
      v131[2] = v81;
      v82 = [v116 bottomAnchor];
      v83 = [(CEKSlider *)self->_brushModeBrushSizeSlider bottomAnchor];
      v84 = [v82 constraintEqualToAnchor:v83 constant:0.0];
      v131[3] = v84;
      v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:4];
      [(NSMutableArray *)v101 addObjectsFromArray:v85];

      v86 = self->_toolConstraints;
      v87 = [(UILabel *)self->_brushModeBrushSizeLabel centerXAnchor];
      v88 = [(CEKSlider *)self->_brushModeBrushSizeSlider centerXAnchor];
      v117 = v87;
      v89 = [v87 constraintEqualToAnchor:v88];
      v130[0] = v89;
      v90 = [(UILabel *)self->_brushModeBrushSizeLabel bottomAnchor];
      v91 = [(CEKSlider *)self->_brushModeBrushSizeSlider topAnchor];
      v92 = [v90 constraintEqualToAnchor:v91 constant:10.0];
      v130[1] = v92;
      v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
      [(NSMutableArray *)v86 addObjectsFromArray:v93];

      v5 = v116;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      [v5 addLayoutGuide:v6];
      v106 = self->_toolConstraints;
      v7 = [v6 widthAnchor];
      v8 = [v7 constraintEqualToConstant:66.0];
      v129[0] = v8;
      v9 = [v6 heightAnchor];
      v10 = [v5 heightAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v129[1] = v11;
      v12 = [v5 centerYAnchor];
      v117 = v6;
      v13 = [v6 centerYAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v129[2] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:3];
      [(NSMutableArray *)v106 addObjectsFromArray:v15];

      if ([(PUPhotoEditToolController *)self layoutOrientation]== 3 || [(PUPhotoEditToolController *)self layoutOrientation]== 2 || [(PUCleanupToolController *)self isIpadLayout])
      {
        v5 = v116;
        v16 = self->_toolConstraints;
        v17 = [v116 rightAnchor];
        v18 = [v117 rightAnchor];
        v19 = [v17 constraintEqualToAnchor:v18 constant:0.0];
        v128 = v19;
        v20 = &v128;
      }

      else
      {
        v5 = v116;
        v16 = self->_toolConstraints;
        v17 = [v116 leftAnchor];
        v18 = [v117 leftAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];
        v127 = v19;
        v20 = &v127;
      }

      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [(NSMutableArray *)v16 addObjectsFromArray:v21];

      if (self->_defaultModeBrushSizeSlider)
      {
        v107 = self->_toolConstraints;
        v22 = [(UILabel *)self->_defaultModeBrushSizeLabel centerYAnchor];
        v23 = [(CEKSlider *)self->_defaultModeBrushSizeSlider centerYAnchor];
        v24 = [v22 constraintEqualToAnchor:v23];
        v126[0] = v24;
        v25 = [(UILabel *)self->_defaultModeBrushSizeLabel trailingAnchor];
        v26 = [v5 trailingAnchor];
        v27 = [v25 constraintEqualToAnchor:v26 constant:-56.0];
        v126[1] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:2];
        [(NSMutableArray *)v107 addObjectsFromArray:v28];

        v94 = self->_toolConstraints;
        v108 = [(CEKSlider *)self->_defaultModeBrushSizeSlider heightAnchor];
        v102 = [v117 widthAnchor];
        v98 = [v108 constraintEqualToAnchor:v102];
        v125[0] = v98;
        v96 = [(CEKSlider *)self->_defaultModeBrushSizeSlider widthAnchor];
        v29 = [v117 heightAnchor];
        v30 = [v96 constraintEqualToAnchor:v29];
        v125[1] = v30;
        v31 = [(CEKSlider *)self->_defaultModeBrushSizeSlider centerXAnchor];
        v32 = [v117 centerXAnchor];
        v33 = [v31 constraintEqualToAnchor:v32];
        v125[2] = v33;
        v34 = [(CEKSlider *)self->_defaultModeBrushSizeSlider centerYAnchor];
        v35 = [v117 centerYAnchor];
        v36 = [v34 constraintEqualToAnchor:v35];
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
        v5 = v116;
      }

      if (self->_brushModeBrushSizeSlider)
      {
        v112 = self->_toolConstraints;
        v40 = [(UILabel *)self->_brushModeBrushSizeLabel centerYAnchor];
        v41 = [(CEKSlider *)self->_brushModeBrushSizeSlider centerYAnchor];
        v42 = [v40 constraintEqualToAnchor:v41];
        v124[0] = v42;
        v43 = [(UILabel *)self->_brushModeBrushSizeLabel trailingAnchor];
        v44 = [v5 trailingAnchor];
        v45 = [v43 constraintEqualToAnchor:v44 constant:-56.0];
        v124[1] = v45;
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
        [(NSMutableArray *)v112 addObjectsFromArray:v46];

        v95 = self->_toolConstraints;
        v113 = [(CEKSlider *)self->_brushModeBrushSizeSlider heightAnchor];
        v109 = [v117 widthAnchor];
        v103 = [v113 constraintEqualToAnchor:v109];
        v123[0] = v103;
        v99 = [(CEKSlider *)self->_brushModeBrushSizeSlider widthAnchor];
        v97 = [v117 heightAnchor];
        v47 = [v99 constraintEqualToAnchor:v97];
        v123[1] = v47;
        v48 = [(CEKSlider *)self->_brushModeBrushSizeSlider centerXAnchor];
        v49 = [v117 centerXAnchor];
        v50 = [v48 constraintEqualToAnchor:v49];
        v123[2] = v50;
        v51 = [(CEKSlider *)self->_brushModeBrushSizeSlider centerYAnchor];
        v52 = [v117 centerYAnchor];
        v53 = [v51 constraintEqualToAnchor:v52];
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
        v5 = v116;
      }
    }

LABEL_29:
LABEL_30:
    [MEMORY[0x1E696ACD8] activateConstraints:self->_toolConstraints];
  }
}

- (void)updateViewConstraints
{
  v2 = self;
  v171[4] = *MEMORY[0x1E69E9840];
  [(PUCleanupToolController *)self _updateToolConstraints];
  v3 = [(PUPhotoEditToolController *)v2 delegate];
  v4 = [v3 mediaView];

  overlayController = v2->_overlayController;
  if (overlayController)
  {
    v6 = [(PUCleanupOverlayViewController *)overlayController view];

    if (v6)
    {
      v7 = [(PUCleanupOverlayViewController *)v2->_overlayController view];
      v8 = [v7 widthAnchor];
      v9 = [(PUCleanupToolController *)v2 view];
      v10 = [v9 widthAnchor];
      v11 = [v8 constraintEqualToAnchor:v10];
      [v11 setActive:1];

      v12 = [(PUCleanupOverlayViewController *)v2->_overlayController view];
      v13 = [v12 heightAnchor];
      v14 = [(PUCleanupToolController *)v2 view];
      v15 = [v14 heightAnchor];
      v16 = [v13 constraintEqualToAnchor:v15];
      [v16 setActive:1];

      v17 = [(PUCleanupOverlayViewController *)v2->_overlayController view];
      v18 = [v17 centerXAnchor];
      v19 = [(PUCleanupToolController *)v2 view];
      v20 = [v19 centerXAnchor];
      v21 = [v18 constraintEqualToAnchor:v20];
      [v21 setActive:1];

      v22 = [(PUCleanupOverlayViewController *)v2->_overlayController view];
      v23 = [v22 centerYAnchor];
      v24 = [(PUCleanupToolController *)v2 view];
      v25 = [v24 centerYAnchor];
      v26 = [v23 constraintEqualToAnchor:v25];
      [v26 setActive:1];
    }
  }

  maskView = v2->_maskView;
  if (maskView)
  {
    v28 = [(PUCleanupToolMaskView *)maskView window];

    if (v28)
    {
      v29 = +[PUPhotoEditProtoSettings sharedInstance];
      v30 = [v29 cleanupMaskDisplayMode];

      if (v30)
      {
        v31 = [(PUCleanupToolMaskView *)v2->_maskView topAnchor];
        v32 = [v4 imageTopAnchor];
        v33 = [v31 constraintEqualToAnchor:v32];
        [v33 setActive:1];

        v34 = [(PUCleanupToolMaskView *)v2->_maskView bottomAnchor];
        v35 = [v4 imageBottomAnchor];
        v36 = [v34 constraintEqualToAnchor:v35];
        [v36 setActive:1];

        v37 = [(PUCleanupToolMaskView *)v2->_maskView leftAnchor];
        v38 = [v4 imageLeftAnchor];
        v39 = [v37 constraintEqualToAnchor:v38];
        [v39 setActive:1];

        v40 = [(PUCleanupToolMaskView *)v2->_maskView rightAnchor];
        v41 = [v4 imageRightAnchor];
        v42 = [v40 constraintEqualToAnchor:v41];
        [v42 setActive:1];
      }

      else
      {
        v43 = [(PUPhotoEditToolController *)v2 delegate];
        v44 = [v43 mediaView];
        v40 = [v44 _visibleImageRectOverlayView];

        v45 = [(PUCleanupToolMaskView *)v2->_maskView topAnchor];
        v46 = [v40 topAnchor];
        v47 = [v45 constraintEqualToAnchor:v46];
        [v47 setActive:1];

        v48 = [(PUCleanupToolMaskView *)v2->_maskView bottomAnchor];
        v49 = [v40 bottomAnchor];
        v50 = [v48 constraintEqualToAnchor:v49];
        [v50 setActive:1];

        v51 = [(PUCleanupToolMaskView *)v2->_maskView leftAnchor];
        v52 = [v40 leftAnchor];
        v53 = [v51 constraintEqualToAnchor:v52];
        [v53 setActive:1];

        v41 = [(PUCleanupToolMaskView *)v2->_maskView rightAnchor];
        v42 = [v40 rightAnchor];
        v54 = [v41 constraintEqualToAnchor:v42];
        [v54 setActive:1];
      }
    }
  }

  v55 = +[PUPhotoEditProtoSettings sharedInstance];
  if ([v55 retouchShowsFaceRects])
  {
    faceRectsView = v2->_faceRectsView;
    if (faceRectsView)
    {
      v57 = [(PUCleanupToolFaceRectsView *)faceRectsView window];

      if (!v57)
      {
        goto LABEL_15;
      }

      v58 = [(PUCleanupToolFaceRectsView *)v2->_faceRectsView topAnchor];
      v59 = [v4 imageTopAnchor];
      v60 = [v58 constraintEqualToAnchor:v59];
      [v60 setActive:1];

      v61 = [(PUCleanupToolFaceRectsView *)v2->_faceRectsView bottomAnchor];
      v62 = [v4 imageBottomAnchor];
      v63 = [v61 constraintEqualToAnchor:v62];
      [v63 setActive:1];

      v64 = [(PUCleanupToolFaceRectsView *)v2->_faceRectsView leftAnchor];
      v65 = [v4 imageLeftAnchor];
      v66 = [v64 constraintEqualToAnchor:v65];
      [v66 setActive:1];

      v55 = [(PUCleanupToolFaceRectsView *)v2->_faceRectsView rightAnchor];
      v67 = [v4 imageRightAnchor];
      v68 = [v55 constraintEqualToAnchor:v67];
      [v68 setActive:1];
    }
  }

LABEL_15:
  retouchVFXOverlay = v2->_retouchVFXOverlay;
  if (retouchVFXOverlay)
  {
    v70 = [(PUVFXRetouchOverlay *)retouchVFXOverlay topAnchor];
    v71 = [v4 imageTopAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];
    [v72 setActive:1];

    v73 = [(PUVFXRetouchOverlay *)v2->_retouchVFXOverlay bottomAnchor];
    v74 = [v4 imageBottomAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];
    [v75 setActive:1];

    v76 = [(PUVFXRetouchOverlay *)v2->_retouchVFXOverlay leftAnchor];
    v77 = [v4 imageLeftAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];
    [v78 setActive:1];

    v79 = [(PUVFXRetouchOverlay *)v2->_retouchVFXOverlay rightAnchor];
    v80 = [v4 imageRightAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];
    [v81 setActive:1];
  }

  if (v2->_userPromptView)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:v2->_userPromptViewConstraints];
    v82 = objc_alloc_init(MEMORY[0x1E695DF70]);
    userPromptViewConstraints = v2->_userPromptViewConstraints;
    v2->_userPromptViewConstraints = v82;

    v151 = v2->_userPromptViewConstraints;
    v165 = [(PUCleanupUserPromptView *)v2->_userPromptView heightAnchor];
    v163 = [v165 constraintGreaterThanOrEqualToConstant:44.0];
    v171[0] = v163;
    v159 = [(PUCleanupUserPromptView *)v2->_userPromptView leadingAnchor];
    v161 = [(PUCleanupToolController *)v2 view];
    v157 = [v161 superview];
    v155 = [v157 leadingAnchor];
    v153 = [v159 constraintEqualToAnchor:v155];
    v171[1] = v153;
    v147 = [(PUCleanupUserPromptView *)v2->_userPromptView trailingAnchor];
    v149 = [(PUCleanupToolController *)v2 view];
    v145 = [v149 superview];
    v143 = [v145 trailingAnchor];
    v84 = [v147 constraintEqualToAnchor:v143];
    v171[2] = v84;
    v85 = [(PUCleanupUserPromptView *)v2->_userPromptView bottomAnchor];
    v86 = [(PUCleanupToolController *)v2 view];
    v87 = [v86 safeAreaLayoutGuide];
    v88 = [v87 bottomAnchor];
    [v85 constraintEqualToAnchor:v88];
    v90 = v89 = v2;
    v171[3] = v90;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:4];
    v92 = v91 = v4;
    [(NSMutableArray *)v151 addObjectsFromArray:v92];

    v4 = v91;
    v2 = v89;

    [MEMORY[0x1E696ACD8] activateConstraints:v89->_userPromptViewConstraints];
  }

  [(PUCleanupToolController *)v2 _updatePreparingProgressConstraints];
  v93 = [(PUCleanupToolController *)v2 feedbackView];
  if (v93)
  {
    v94 = [(PUCleanupToolController *)v2 feedbackViewContainerConstraints];

    if (v94)
    {
      v95 = MEMORY[0x1E696ACD8];
      v96 = [(PUCleanupToolController *)v2 feedbackViewContainerConstraints];
      [v95 deactivateConstraints:v96];

      [(PUCleanupToolController *)v2 setFeedbackViewContainerConstraints:0];
    }

    v97 = [MEMORY[0x1E695DF70] array];
    v98 = [(PUCleanupToolController *)v2 feedbackThumbsUpButton];
    v99 = [(PUCleanupToolController *)v2 feedbackThumbsDownButton];
    v100 = [(PUCleanupToolController *)v2 isIpadLayout];
    v166 = v99;
    v167 = v98;
    if (v100 || [(PUPhotoEditToolController *)v2 layoutOrientation]== 3 || [(PUPhotoEditToolController *)v2 layoutOrientation]== 2)
    {
      v128 = v4;
      v101 = [v98 topAnchor];
      v162 = [v93 topAnchor];
      v164 = v101;
      v160 = [v101 constraintEqualToAnchor:16.0 constant:?];
      v170[0] = v160;
      v102 = [v99 topAnchor];
      v156 = [v98 bottomAnchor];
      v158 = v102;
      v154 = [v102 constraintEqualToAnchor:16.0 constant:?];
      v170[1] = v154;
      v103 = [v99 bottomAnchor];
      v150 = [v93 bottomAnchor];
      v152 = v103;
      v148 = [v103 constraintEqualToAnchor:-16.0 constant:?];
      v170[2] = v148;
      v104 = [v98 leftAnchor];
      v144 = [v93 leftAnchor];
      v146 = v104;
      v142 = [v104 constraintEqualToAnchor:7.0 constant:?];
      v170[3] = v142;
      v105 = [v98 rightAnchor];
      v140 = [v93 rightAnchor];
      v141 = v105;
      v139 = [v105 constraintEqualToAnchor:-7.0 constant:?];
      v170[4] = v139;
      v106 = [v99 leftAnchor];
      v137 = [v93 leftAnchor];
      v138 = v106;
      v136 = [v106 constraintEqualToAnchor:7.0 constant:?];
      v170[5] = v136;
      v107 = [v99 rightAnchor];
      v134 = [v93 rightAnchor];
      v135 = v107;
      v133 = [v107 constraintEqualToAnchor:-7.0 constant:?];
      v170[6] = v133;
      v108 = [v93 centerYAnchor];
      v131 = [(PUCleanupToolController *)v2 view];
      v130 = [v131 superview];
      [v130 centerYAnchor];
      v129 = v132 = v108;
      v109 = [v108 constraintEqualToAnchor:?];
      v170[7] = v109;
      v110 = v97;
      if (v100)
      {
        v111 = [v93 rightAnchor];
        v112 = v2;
        v113 = [(PUCleanupToolController *)v2 view];
        v114 = [v113 safeAreaLayoutGuide];
        v115 = [v114 rightAnchor];
        v116 = -27.0;
      }

      else
      {
        v111 = [v93 leftAnchor];
        v112 = v2;
        v113 = [(PUCleanupToolController *)v2 view];
        v114 = [v113 safeAreaLayoutGuide];
        v115 = [v114 leftAnchor];
        v116 = 18.0;
      }

      v117 = [v111 constraintEqualToAnchor:v115 constant:v116];
      v170[8] = v117;
      v118 = [MEMORY[0x1E695DEC8] arrayWithObjects:v170 count:9];
      [v110 addObjectsFromArray:v118];

      v4 = v128;
      v2 = v112;
    }

    else
    {
      v120 = [v98 topAnchor];
      v162 = [v93 topAnchor];
      v164 = v120;
      v160 = [v120 constraintEqualToAnchor:7.0 constant:?];
      v169[0] = v160;
      v121 = [v98 bottomAnchor];
      v156 = [v93 bottomAnchor];
      v158 = v121;
      v154 = [v121 constraintEqualToAnchor:-7.0 constant:?];
      v169[1] = v154;
      v122 = [v99 topAnchor];
      v150 = [v98 topAnchor];
      v152 = v122;
      v148 = [v122 constraintEqualToAnchor:0.0 constant:?];
      v169[2] = v148;
      v123 = [v98 leftAnchor];
      v144 = [v93 leftAnchor];
      v146 = v123;
      v142 = [v123 constraintEqualToAnchor:16.0 constant:?];
      v169[3] = v142;
      v124 = [v98 rightAnchor];
      v140 = [v99 leftAnchor];
      v141 = v124;
      v139 = [v124 constraintEqualToAnchor:-16.0 constant:?];
      v169[4] = v139;
      v125 = [v99 rightAnchor];
      v137 = [v93 rightAnchor];
      v138 = v125;
      v136 = [v125 constraintEqualToAnchor:-16.0 constant:?];
      v169[5] = v136;
      v126 = [v93 centerXAnchor];
      v134 = [(PUCleanupToolController *)v2 view];
      v133 = [v134 superview];
      [v133 centerXAnchor];
      v132 = v135 = v126;
      v131 = [v126 constraintEqualToAnchor:?];
      v169[6] = v131;
      v127 = [v93 centerYAnchor];
      v129 = [(PUCleanupToolController *)v2 view];
      v109 = [v129 safeAreaLayoutGuide];
      v111 = [v109 bottomAnchor];
      v130 = v127;
      v113 = [v127 constraintEqualToAnchor:v111 constant:-92.0];
      v169[7] = v113;
      v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:v169 count:8];
      [v97 addObjectsFromArray:v114];
      v110 = v97;
    }

    v119 = [v93 layer];
    [v119 setCornerRadius:17.0];

    [MEMORY[0x1E696ACD8] activateConstraints:v110];
    [(PUCleanupToolController *)v2 setFeedbackViewContainerConstraints:v110];
  }

  v168.receiver = v2;
  v168.super_class = PUCleanupToolController;
  [(PUCleanupToolController *)&v168 updateViewConstraints];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v28 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  userPromptView = self->_userPromptView;
  if (userPromptView)
  {
    v9 = [(PUCleanupUserPromptView *)userPromptView isHidden]^ 1;
    v10 = self->_userPromptView;
    if (v10)
    {
      v11 = [(PUCleanupUserPromptView *)v10 type];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 1;
LABEL_6:
  [(PUCleanupToolController *)self deleteUserPromptViewAnimated:0 completion:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  aBlock[3] = &unk_1E7B7FA58;
  v27 = v9;
  aBlock[4] = self;
  aBlock[5] = v11;
  v12 = _Block_copy(aBlock);
  v13 = +[PUPhotoEditProtoSettings sharedInstance];
  v14 = [v13 cleanupMaskDisplayMode];

  if ((v14 - 1) < 2)
  {
    maskView = self->_maskView;
    if (maskView)
    {
      [(PUCleanupToolMaskView *)maskView setAlpha:0.0];
    }

    v16 = +[PUPhotoEditProtoSettings sharedInstance];
    v17 = [v16 retouchShowsFaceRects];

    if (v17)
    {
      [(PUCleanupToolFaceRectsView *)self->_faceRectsView setAlpha:0.0];
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_8;
    v19[3] = &unk_1E7B76660;
    v19[4] = self;
    v20 = v12;
    [v7 animateAlongsideTransition:0 completion:v19];
    v18 = v20;
    goto LABEL_16;
  }

  if (!v14)
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
      [v7 animateAlongsideTransition:0 completion:v23];
      v18 = v24;
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __78__PUCleanupToolController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_7;
      v21[3] = &unk_1E7B7ABE0;
      v22 = v12;
      [v7 animateAlongsideTransition:0 completion:v21];
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

- (void)viewDidAppear:(BOOL)a3
{
  v24.receiver = self;
  v24.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v24 viewDidAppear:a3];
  v4 = [(PUCleanupToolController *)self modelDeliveryManager];
  v5 = [v4 ready];

  if (v5)
  {
    [(PUCleanupToolController *)self _prepareViewsForCleanupIfReady];
    v6 = +[PUPhotoEditProtoSettings sharedInstance];
    v7 = [v6 cleanupMaskDisplayMode];

    if ((v7 - 1) >= 2)
    {
      if (!v7)
      {
        retouchVFXOverlay = self->_retouchVFXOverlay;
        if (retouchVFXOverlay)
        {
          v10 = [(PUVFXRetouchOverlay *)retouchVFXOverlay layer];
          [v10 setOpacity:0.0];

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
    v8 = [(PUCleanupToolController *)self modelDeliveryProgressViewController];

    if (v8)
    {
      [(PUCleanupToolController *)self _updatePreparingProgressConstraints];
    }

    else
    {
      objc_initWeak(&location, self);
      v12 = objc_alloc_init(MEMORY[0x1E69C36B8]);
      [(PUCleanupToolController *)self setModelDeliveryProgressViewController:v12];

      v13 = [(PUCleanupToolController *)self modelDeliveryManager];
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
      [v13 preparePackageWithProgress:v21 updateHandler:v19];

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

  v15 = [MEMORY[0x1E696AD88] defaultCenter];
  [v15 addObserver:self selector:sel__willUndo_ name:*MEMORY[0x1E696AA48] object:0];
  [v15 addObserver:self selector:sel__willRedo_ name:*MEMORY[0x1E696AA40] object:0];
  [v15 addObserver:self selector:sel__didUndo_ name:*MEMORY[0x1E696AA30] object:0];
  [v15 addObserver:self selector:sel__didRedo_ name:*MEMORY[0x1E696AA28] object:0];
  [v15 addObserver:self selector:sel__applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
  [v15 addObserver:self selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
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
    v4 = [(PUCleanupToolController *)self view];
    v5 = [v4 window];
    if (v5)
    {
      v6 = v5;
      v7 = [(PUPhotoEditToolController *)self isActiveTool];

      if (v7)
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
    v9 = [(PUPhotoEditToolController *)self compositionController];
    v10 = [v9 composition];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__PUCleanupToolController__updateMaskContext__block_invoke_2_101;
    v13[3] = &unk_1E7B76610;
    v13[4] = self;
    v14 = v3;
    [v8 createMaskContextForComposition:v10 requestID:0 completionQueue:MEMORY[0x1E69E96A0] completion:v13];
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
  v3 = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [v3 setHidden:1];

  overlayController = self->_overlayController;

  [(PUCleanupOverlayViewController *)overlayController disableUI];
}

- (void)_prepareViewsForCleanupIfReadyAndNotify:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    _PFAssertFailHandler();
  }

  if (!self->_mediaViewIsReady)
  {
    goto LABEL_10;
  }

  v5 = [(PUCleanupToolController *)self modelDeliveryManager];
  if (![v5 ready])
  {
    goto LABEL_9;
  }

  v6 = [(PUPhotoEditToolController *)self delegate];
  v7 = [v6 mediaView];
  if (!v7)
  {

LABEL_9:
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [(PUPhotoEditToolController *)self isActiveTool];

  if (v9)
  {
    if (self->_cleanupViewsHaveBeenPrepared)
    {
      [(PUCleanupToolController *)self _updateMaskContext];
LABEL_45:
      if (v4)
      {
        v4[2](v4);
      }

      goto LABEL_25;
    }

    [(PUCleanupToolController *)self _removePreparingProgress];
    [(PUCleanupToolController *)self _updateResetButtonState];
    v21 = self->_cleanupMode - 3 < 0xFFFFFFFFFFFFFFFELL;
    v22 = [(PUPhotoEditToolController *)self delegate];
    [v22 toolControllerDidChangeWantsTapToToggleOriginalEnabled:self enabled:v21];

    [(PUCleanupToolController *)self _updateMaskContext];
    [(PUCleanupToolController *)self _addOverlayIfNeeded];
    [(PUCleanupToolController *)self _setCleanupMode:1];
    overlayController = self->_overlayController;
    if (overlayController)
    {
      [(PUCleanupOverlayViewController *)overlayController mediaViewIsReady];
    }

    v24 = [(PUCleanupToolController *)self view];
    [v24 setNeedsUpdateConstraints];

    v25 = +[PUPhotoEditProtoSettings sharedInstance];
    v26 = [v25 cleanupMaskDisplayMode];

    if ((v26 - 1) > 1 || (maskView = self->_maskView) == 0)
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

    v12 = [(PUCleanupToolController *)self modelDeliveryManager];
    if ([v12 ready])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = [(PUPhotoEditToolController *)self delegate];
    v15 = [v14 mediaView];
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
    v48 = v15;
    v49 = 2112;
    v50 = v16;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEBUG, "_prepareViewsForCleanupIfReady; not ready. _mediaViewIsReady: %@, modelDeliveryManager ready: %@, mediaView: %@, isActiveTool: %@", buf, 0x2Au);
  }

  if (v4)
  {
    v17 = self->_tasksWaitingOnCleanupReady;
    if (!v17)
    {
      v18 = [MEMORY[0x1E695DF70] array];
      v19 = self->_tasksWaitingOnCleanupReady;
      self->_tasksWaitingOnCleanupReady = v18;

      v17 = self->_tasksWaitingOnCleanupReady;
    }

    v20 = _Block_copy(v4);
    [(NSMutableArray *)v17 addObject:v20];
  }

LABEL_25:
}

- (void)_removePreparingProgress
{
  v3 = [(PUCleanupToolController *)self modelDeliveryProgressViewController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

  [(PUCleanupToolController *)self setModelDeliveryProgressViewController:0];
}

- (void)_updatePreparingProgressConstraints
{
  v48[3] = *MEMORY[0x1E69E9840];
  v3 = [(PUCleanupToolController *)self view];
  v4 = [v3 window];

  if (v4)
  {
    v5 = [(PUCleanupToolController *)self modelDeliveryProgressViewController];
    v6 = [v5 view];

    if (v6)
    {
      v7 = [v6 superview];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 window];

        if (v9)
        {
          if ([(PUCleanupToolController *)self isIpadLayout])
          {
LABEL_6:
            v10 = [(PUCleanupToolController *)self modelDeliveryProgressConstraints];

            if (v10)
            {
              v11 = MEMORY[0x1E696ACD8];
              v12 = [(PUCleanupToolController *)self modelDeliveryProgressConstraints];
              [v11 deactivateConstraints:v12];

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

              v14 = [v6 centerXAnchor];
              v46 = [(PUCleanupToolController *)self view];
              v45 = [v46 centerXAnchor];
              v44 = [v14 constraintEqualToAnchor:?];
              v48[0] = v44;
              v43 = [v6 widthAnchor];
              v42 = [v43 constraintEqualToConstant:v13];
              v48[1] = v42;
              v15 = [v6 bottomAnchor];
              v16 = [(PUCleanupToolController *)self view];
              v17 = [v16 safeAreaLayoutGuide];
              v18 = [v17 bottomAnchor];
              v19 = [v15 constraintEqualToAnchor:v18 constant:-11.0];
              v48[2] = v19;
              v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
            }

            else
            {
              v26 = [v6 leadingAnchor];
              v27 = [(PUCleanupToolController *)self view];
              v28 = [v27 leadingAnchor];
              v29 = [v26 constraintEqualToAnchor:v28 constant:10.0];

              v30 = [v6 trailingAnchor];
              v31 = [(PUCleanupToolController *)self view];
              v32 = [v31 trailingAnchor];
              v33 = [v30 constraintEqualToAnchor:v32 constant:-10.0];

              v41 = v29;
              LODWORD(v34) = 1132068864;
              [v29 setPriority:v34];
              LODWORD(v35) = 1132068864;
              [v33 setPriority:v35];
              v36 = [(PUPhotoEditToolController *)self delegate];
              v37 = [v36 toolControllerMainContainerView:self];

              v38 = [v6 centerXAnchor];
              v45 = v37;
              v43 = [v37 centerXAnchor];
              v44 = v38;
              v42 = [v38 constraintEqualToAnchor:?];
              v47[0] = v42;
              v47[1] = v29;
              v46 = v33;
              v47[2] = v33;
              v15 = [v6 widthAnchor];
              v16 = [v15 constraintLessThanOrEqualToConstant:374.0];
              v47[3] = v16;
              v17 = [v6 bottomAnchor];
              v18 = [(PUCleanupToolController *)self view];
              v19 = [v18 safeAreaLayoutGuide];
              v39 = [v19 bottomAnchor];
              v40 = [v17 constraintEqualToAnchor:v39 constant:-13.0];
              v47[4] = v40;
              v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:5];

              v14 = v41;
            }

            [MEMORY[0x1E696ACD8] activateConstraints:v20];
            [(PUCleanupToolController *)self setModelDeliveryProgressConstraints:v20];

            goto LABEL_19;
          }

          v21 = [(PUPhotoEditToolController *)self delegate];
          v22 = [v21 toolControllerMainContainerView:self];

          if (v22)
          {
            v23 = [v22 superview];
            if (v23)
            {
              v24 = v23;
              v25 = [v22 window];

              if (v25)
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
    v4 = [(PUPhotoEditToolController *)self delegate];
    v30 = [v4 mediaView];

    [(PUCleanupUserPromptView *)self->_userPromptView frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v30 imageFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(PUCleanupToolController *)self view];
    [v30 convertRect:v21 toView:{v14, v16, v18, v20}];
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
  v3 = [(PUPhotoEditToolController *)&v4 viewDidLayoutSubviews];
  if (MEMORY[0x1B8C6D660](v3))
  {
    [(PUCleanupToolController *)self _updatePromptViewPlatter];
  }
}

- (void)_showPreparingProgress
{
  v3 = [(PUCleanupToolController *)self modelDeliveryProgressViewController];
  [v3 setIsiPadConfiguration:{-[PUCleanupToolController isIpadLayout](self, "isIpadLayout")}];

  v4 = [(PUCleanupToolController *)self modelDeliveryProgressViewController];
  v6 = [v4 view];

  v5 = [(PUCleanupToolController *)self view];
  [v5 addSubview:v6];

  [(PUCleanupToolController *)self _updatePreparingProgressConstraints];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v3 viewWillAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = PUCleanupToolController;
  [(PUCleanupToolController *)&v17 viewWillDisappear:a3];
  maskView = self->_maskView;
  if (maskView)
  {
    [(PUCleanupToolMaskView *)maskView removeFromSuperview];
    v5 = self->_maskView;
    self->_maskView = 0;
  }

  v6 = +[PUPhotoEditProtoSettings sharedInstance];
  v7 = [v6 retouchShowsFaceRects];

  if (v7)
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
    v10 = [(PUCleanupToolController *)self brushModeButton];
    [v10 setSelected:0];

    [(PUCleanupToolController *)self _updateBrushModeButton];
  }

  [(PUVFXRetouchOverlay *)self->_retouchVFXOverlay removeFromSuperview];
  retouchVFXOverlay = self->_retouchVFXOverlay;
  self->_retouchVFXOverlay = 0;

  [(PUCleanupOverlayViewController *)self->_overlayController willMoveToParentViewController:0];
  v12 = [(PUCleanupOverlayViewController *)self->_overlayController view];
  [v12 removeFromSuperview];

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

  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 removeObserver:self];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = PUCleanupToolController;
  [(PUCleanupToolController *)&v18 viewDidLoad];
  v3 = [(PUPhotoEditToolController *)self toolContainerView];
  [v3 setAccessibilityLabel:@"toolContainer"];
  [v3 addSubview:self->_defaultModeBrushSizeSlider];
  [v3 addSubview:self->_defaultModeBrushSizeLabel];
  [v3 addSubview:self->_brushModeBrushSizeSlider];
  [v3 addSubview:self->_brushModeBrushSizeLabel];
  if (_os_feature_enabled_impl() && !self->_brushModeButton)
  {
    objc_initWeak(&location, self);
    v4 = PULocalizedString(@"PHOTOEDIT_CLEANUP_BRUSH_MODE_ACCESSIBILITY_LABEL");
    v5 = [(PUPhotoEditToolController *)self photoEditSpec];
    v6 = [PUPhotoEditToolbarButton buttonWithImageNamed:@"paintbrush.pointed" selectedImageNamed:@"paintbrush.pointed.fill" accessibilityLabel:v4 spec:v5];

    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __38__PUCleanupToolController_viewDidLoad__block_invoke;
    v15 = &unk_1E7B7AEE0;
    objc_copyWeak(&v16, &location);
    [v6 setActionBlock:&v12];
    [(PUCleanupToolController *)self setBrushModeButton:v6, v12, v13, v14, v15];
    cleanupMode = self->_cleanupMode;
    v8 = [(PUCleanupToolController *)self brushModeButton];
    [v8 setSelected:cleanupMode == 2];

    v9 = [(PUCleanupToolController *)self brushModeButton];
    [v9 setEnabled:0];

    [(PUCleanupToolController *)self _updateBrushModeButton];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  v10 = [MEMORY[0x1E69C4290] globalSettings];
  v11 = [v10 retouchShowsDefaultModeSlider];

  if (v11)
  {
    [v3 addSubview:self->_defaultModeBrushSizeSlider];
    [v3 addSubview:self->_defaultModeBrushSizeLabel];
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
  v4 = [v3 localizedUppercaseString];

  v5 = [PUPhotoEditToolActivationButton buttonWithTitle:v4];
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
  v11 = [MEMORY[0x1E69C4290] globalSettings];
  -[CEKSlider setHidden:](self->_defaultModeBrushSizeSlider, "setHidden:", [v11 retouchShowsDefaultModeSlider] ^ 1);

  v12 = [MEMORY[0x1E69C4290] globalSettings];
  -[UILabel setHidden:](self->_defaultModeBrushSizeLabel, "setHidden:", [v12 retouchShowsDefaultModeSlider] ^ 1);

  v13 = _os_feature_enabled_impl();
  [(CEKSlider *)self->_brushModeBrushSizeSlider setHidden:v13 ^ 1u];
  v14 = self->_brushModeBrushSizeLabel;

  [(UILabel *)v14 setHidden:v13 ^ 1u];
}

- (void)_setupCleanupBrushSizeSlider:(id)a3 label:(id)a4
{
  v13 = a3;
  v6 = a4;
  [(CEKSlider *)v13 setDelegate:self];
  [(CEKSlider *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CEKSlider *)v13 setUseTickMarkLegibilityShadows:1];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [(CEKSlider *)v13 setBackgroundColor:v7];

  if (self->_brushModeBrushSizeSlider == v13)
  {
    [(CEKSlider *)v13 setAlpha:0.0];
    [v6 setAlpha:0.0];
    [(CEKSlider *)v13 setMinimumValue:3.0];
    [(CEKSlider *)v13 setMaximumValue:40.0];
    [(CEKSlider *)v13 setDefaultValue:10.0];
    v10 = 10.0;
  }

  else
  {
    [(CEKSlider *)v13 setMinimumValue:3.0];
    [(CEKSlider *)v13 setMaximumValue:40.0];
    v8 = [MEMORY[0x1E69C4290] globalSettings];
    [v8 retouchDefaultModeBrushSizeDefault];
    [(CEKSlider *)v13 setDefaultValue:?];

    if ([(PUCleanupToolController *)self isIpadLayout])
    {
      [(CEKSlider *)v13 defaultValue];
      [(CEKSlider *)v13 setDefaultValue:v9 * 1.25];
    }

    [(CEKSlider *)v13 defaultValue];
  }

  [(CEKSlider *)v13 setValue:v10];
  if (objc_opt_respondsToSelector())
  {
    [(CEKSlider *)v13 defaultValue];
    [(CEKSlider *)v13 setMarkedValue:?];
  }

  [(CEKSlider *)v13 value];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", llround(v11)];
  [v6 setText:v12];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_updateResetButtonState
{
  v3 = [(PUCleanupToolController *)self _canReset];
  [(PUPhotoEditToolActivationButton *)self->_resetButton setHidden:v3 ^ 1];
  resetButton = self->_resetButton;

  [(PUPhotoEditToolActivationButton *)resetButton setSelected:v3];
}

- (void)compositionControllerDidChangeForAdjustments:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PUCleanupToolController;
  [(PUPhotoEditToolController *)&v5 compositionControllerDidChangeForAdjustments:v4];
  if ([v4 containsObject:*MEMORY[0x1E69BE028]])
  {
    [(PUCleanupToolController *)self _updateResetButtonState];
  }

  if (!-[PUPhotoEditToolController isActiveTool](self, "isActiveTool") && [v4 containsObject:*MEMORY[0x1E69BE030]])
  {
    [(PUCleanupToolController *)self setMaskContext:0];
    self->_maskContextCreationHasBegun = 0;
  }
}

- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PUCleanupToolController;
  v10 = a4;
  [(PUPhotoEditToolController *)&v26 setupWithAsset:a3 compositionController:v10 editSource:a5 valuesCalculator:a6];
  self->_mediaViewIsReady = 0;
  self->_cleanupViewsHaveBeenPrepared = 0;
  v11 = [v10 composition];

  v12 = [objc_alloc(MEMORY[0x1E69B3B30]) initWithComposition:v11];
  [v12 setName:@"PUCleanupToolController-imageProperties"];
  v25 = 0;
  v13 = [v12 submitSynchronous:&v25];
  v14 = v25;
  v15 = [v13 properties];
  if ([v15 isHDR])
  {
    v16 = 1;
  }

  else
  {
    v16 = [v15 hasGainMap];
  }

  self->_needsHDRUI = v16;
  v17 = [(PUPhotoEditToolController *)self compositionController];
  v18 = [v17 brushStrokeHistory];

  if (v18)
  {
    v19 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [(PUPhotoEditToolController *)self compositionController];
      v21 = [v20 brushStrokeHistory];
      v22 = [v21 entryCount];
      *buf = 134217984;
      v28 = v22;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEBUG, "Loaded brush stroke history with %ld entries", buf, 0xCu);
    }
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x1E69BDDC0]);
    v24 = [(PUPhotoEditToolController *)self compositionController];
    [v24 setBrushStrokeHistory:v23];

    v19 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEBUG, "Created new brush stroke history", buf, 2u);
    }
  }
}

- (PUCleanupToolController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PUCleanupToolController;
  v4 = [(PUPhotoEditToolController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    commonInit(v4);
  }

  return v5;
}

- (PUCleanupToolController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PUCleanupToolController;
  v3 = [(PUCleanupToolController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    commonInit(v3);
  }

  return v4;
}

@end