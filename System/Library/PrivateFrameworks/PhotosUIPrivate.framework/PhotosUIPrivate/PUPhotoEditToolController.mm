@interface PUPhotoEditToolController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)displayedTimeForOriginalAssetTime:(SEL)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)originalAssetTimeForDisplayedTime:(SEL)time;
- (BOOL)isActiveTool;
- (CGRect)contentRectInCoordinateSpace:(id)space;
- (NSArray)editActionActivities;
- (PICompositionController)uneditedCompositionController;
- (PUPhotoEditToolController)initWithNibName:(id)name bundle:(id)bundle;
- (PUPhotoEditToolControllerDelegate)delegate;
- (UIEdgeInsets)additionalPreviewViewInsets;
- (UIEdgeInsets)preferredPreviewViewInsets;
- (double)timeSpentInTool;
- (id)_newTimeMapper;
- (id)_registerActionWithSourceComposition:(id)composition localizedName:(id)name;
- (id)didModifyAdjustmentWithLocalizedName:(id)name;
- (void)_layoutToolGradient;
- (void)_updateTraitCollectionAndLayoutReferenceSize;
- (void)_updateTraitCollectionAndLayoutReferenceSize:(CGSize)size;
- (void)addEditActionActivity:(id)activity;
- (void)dealloc;
- (void)didBecomeActiveTool;
- (void)didResignActiveTool;
- (void)loadView;
- (void)prepareForToolTransitionWithCompletion:(id)completion;
- (void)removeEditActionActivity:(id)activity;
- (void)setActivelyAdjusting:(BOOL)adjusting;
- (void)setAggregateSession:(id)session;
- (void)setEnabled:(BOOL)enabled;
- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator;
- (void)setPerformingLiveInteraction:(BOOL)interaction;
- (void)setToolControllerSpec:(id)spec;
- (void)setToolGradientDistance:(double)distance;
- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator;
- (void)updateInteractions;
- (void)viewControllerSpec:(id)spec didChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willBecomeActiveTool;
- (void)willModifyAdjustment;
- (void)willResignActiveTool;
@end

@implementation PUPhotoEditToolController

- (PUPhotoEditToolControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateInteractions
{
  v50 = *MEMORY[0x1E69E9840];
  viewInteractions = [(PUPhotoEditToolController *)self viewInteractions];

  if (viewInteractions)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    viewInteractions2 = [(PUPhotoEditToolController *)self viewInteractions];
    v5 = [viewInteractions2 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v44;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v44 != v7)
          {
            objc_enumerationMutation(viewInteractions2);
          }

          v9 = *(*(&v43 + 1) + 8 * i);
          view = [v9 view];
          [view removeInteraction:v9];
        }

        v6 = [viewInteractions2 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v6);
    }

    [(PUPhotoEditToolController *)self setViewInteractions:0];
  }

  if ([(PUPhotoEditToolController *)self isActiveTool]&& MEMORY[0x1B8C6D660]())
  {
    pocketableViews = [(PUPhotoEditToolController *)self pocketableViews];
    alwaysBottomPocketableViews = [(PUPhotoEditToolController *)self alwaysBottomPocketableViews];
    if ([pocketableViews count] || objc_msgSend(alwaysBottomPocketableViews, "count"))
    {
      v31 = alwaysBottomPocketableViews;
      array = [MEMORY[0x1E695DF70] array];
      delegate = [(PUPhotoEditToolController *)self delegate];
      mediaView = [delegate mediaView];
      _scrollView = [mediaView _scrollView];

      if ([(PUPhotoEditToolController *)self layoutOrientation]== 1)
      {
        v17 = 4;
      }

      else
      {
        v17 = 8;
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __47__PUPhotoEditToolController_updateInteractions__block_invoke;
      aBlock[3] = &unk_1E7B7ADF0;
      v30 = _scrollView;
      v41 = v30;
      v18 = array;
      v42 = v18;
      v19 = _Block_copy(aBlock);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v20 = pocketableViews;
      v21 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v37;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v37 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v19[2](v19, *(*(&v36 + 1) + 8 * j), v17);
          }

          v22 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:{16, v30}];
        }

        while (v22);
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      alwaysBottomPocketableViews = v31;
      v25 = v31;
      v26 = [v25 countByEnumeratingWithState:&v32 objects:v47 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v33;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v33 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v19[2](v19, *(*(&v32 + 1) + 8 * k), 4);
          }

          v27 = [v25 countByEnumeratingWithState:&v32 objects:v47 count:16];
        }

        while (v27);
      }

      [(PUPhotoEditToolController *)self setViewInteractions:v18];
    }
  }
}

void __47__PUPhotoEditToolController_updateInteractions__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69DD6C8];
  v6 = a2;
  v7 = [[v5 alloc] initWithScrollView:*(a1 + 32) edge:a3 style:0];
  [v6 addInteraction:v7];

  [*(a1 + 40) addObject:v7];
}

- (id)_newTimeMapper
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  isHighframeRateVideo = [delegate isHighframeRateVideo];

  if (!isHighframeRateVideo)
  {
    return 0;
  }

  compositionController = [(PUPhotoEditToolController *)self compositionController];
  slomoAdjustmentController = [compositionController slomoAdjustmentController];

  memset(&v19, 0, sizeof(v19));
  if (slomoAdjustmentController)
  {
    [slomoAdjustmentController startTime];
    [slomoAdjustmentController endTime];
  }

  else
  {
    memset(&v17, 0, 24);
    memset(&end, 0, sizeof(end));
  }

  CMTimeRangeFromTimeToTime(&v19, &v17.start, &end);
  delegate2 = [(PUPhotoEditToolController *)self delegate];
  mediaView = [delegate2 mediaView];

  player = [mediaView player];
  v11 = player;
  if (player)
  {
    [player mediaDuration];
  }

  else
  {
    memset(&v17, 0, 24);
  }

  Seconds = CMTimeGetSeconds(&v17.start);

  v13 = MEMORY[0x1E69C0890];
  [slomoAdjustmentController rate];
  *&v15 = v14;
  v17 = v19;
  v7 = [v13 timeRangeMapperForSourceDuration:&v17 slowMotionRate:1 slowMotionTimeRange:Seconds forExport:v15];

  return v7;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)displayedTimeForOriginalAssetTime:(SEL)time
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  isHighframeRateVideo = [delegate isHighframeRateVideo];

  if (isHighframeRateVideo)
  {
    slowMotionTimeMapper = self->_slowMotionTimeMapper;
    if (slowMotionTimeMapper || (v11 = [(PUPhotoEditToolController *)self _newTimeMapper], v12 = self->_slowMotionTimeMapper, self->_slowMotionTimeMapper = v11, v12, (slowMotionTimeMapper = self->_slowMotionTimeMapper) != 0))
    {
      v15 = *a4;
      Seconds = CMTimeGetSeconds(&v15);
      *&Seconds = Seconds;
      [(PFSlowMotionTimeRangeMapper *)slowMotionTimeMapper scaledTimeForOriginalTime:Seconds];
      result = CMTimeMakeWithSeconds(&v15, v14, a4->var1);
      *a4 = v15;
    }
  }

  *&retstr->var0 = *&a4->var0;
  retstr->var3 = a4->var3;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)originalAssetTimeForDisplayedTime:(SEL)time
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  isHighframeRateVideo = [delegate isHighframeRateVideo];

  if (isHighframeRateVideo)
  {
    slowMotionTimeMapper = self->_slowMotionTimeMapper;
    if (slowMotionTimeMapper || (v11 = [(PUPhotoEditToolController *)self _newTimeMapper], v12 = self->_slowMotionTimeMapper, self->_slowMotionTimeMapper = v11, v12, (slowMotionTimeMapper = self->_slowMotionTimeMapper) != 0))
    {
      v15 = *a4;
      Seconds = CMTimeGetSeconds(&v15);
      *&Seconds = Seconds;
      [(PFSlowMotionTimeRangeMapper *)slowMotionTimeMapper originalTimeForScaledTime:Seconds];
      result = CMTimeMakeWithSeconds(&v15, v14, a4->var1);
      *a4 = v15;
    }
  }

  *&retstr->var0 = *&a4->var0;
  retstr->var3 = a4->var3;
  return result;
}

- (CGRect)contentRectInCoordinateSpace:(id)space
{
  spaceCopy = space;
  view = [(PUPhotoEditToolController *)self view];
  [view bounds];
  [view convertRect:spaceCopy toCoordinateSpace:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)didResignActiveTool
{
  timeEnteredTool = [(PUPhotoEditToolController *)self timeEnteredTool];

  if (timeEnteredTool)
  {
    timeEnteredTool2 = [(PUPhotoEditToolController *)self timeEnteredTool];
    [timeEnteredTool2 timeIntervalSinceNow];
    v6 = v5;

    [(PUPhotoEditToolController *)self setTimeEnteredTool:0];
    self->_timeSpentInTool = self->_timeSpentInTool - v6;
  }
}

- (void)willResignActiveTool
{
  v16 = *MEMORY[0x1E69E9840];
  viewInteractions = [(PUPhotoEditToolController *)self viewInteractions];

  if (viewInteractions)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    viewInteractions2 = [(PUPhotoEditToolController *)self viewInteractions];
    v5 = [viewInteractions2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(viewInteractions2);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          view = [v9 view];
          [view removeInteraction:v9];
        }

        v6 = [viewInteractions2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    [(PUPhotoEditToolController *)self setViewInteractions:0];
  }
}

- (void)didBecomeActiveTool
{
  ppt_didBecomeActiveToolBlock = self->_ppt_didBecomeActiveToolBlock;
  if (ppt_didBecomeActiveToolBlock)
  {
    ppt_didBecomeActiveToolBlock[2](ppt_didBecomeActiveToolBlock, a2);
  }

  v4 = [MEMORY[0x1E695DF00] now];
  [(PUPhotoEditToolController *)self setTimeEnteredTool:v4];

  [(PUPhotoEditToolController *)self updateInteractions];
}

- (void)willBecomeActiveTool
{
  if ([(PUPhotoEditToolController *)self hasMediaScrubber])
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    [delegate toolController:self showVideoScrubber:0 animated:0];
  }

  [(PUPhotoEditToolController *)self setSlowMotionTimeMapper:0];
}

- (void)setAggregateSession:(id)session
{
  sessionCopy = session;
  if (self->_aggregateSession != sessionCopy)
  {
    v6 = sessionCopy;
    objc_storeStrong(&self->_aggregateSession, session);
    sessionCopy = v6;
  }
}

- (void)setPerformingLiveInteraction:(BOOL)interaction
{
  if (self->_performingLiveInteraction != interaction)
  {
    self->_performingLiveInteraction = interaction;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained toolControllerDidChangeIsPerformingLiveInteraction:self];
  }
}

- (void)setActivelyAdjusting:(BOOL)adjusting
{
  if (self->_activelyAdjusting != adjusting)
  {
    self->_activelyAdjusting = adjusting;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained toolControllerDidChangeIsActivelyAdjusting:self];
  }
}

- (void)setToolControllerSpec:(id)spec
{
  specCopy = spec;
  toolControllerSpec = self->_toolControllerSpec;
  if (toolControllerSpec != specCopy)
  {
    v8 = specCopy;
    [(PUViewControllerSpec *)toolControllerSpec unregisterChangeObserver:self];
    objc_storeStrong(&self->_toolControllerSpec, spec);
    [(PUPhotoEditToolControllerSpec *)self->_toolControllerSpec setLayoutOrientation:[(PUPhotoEditToolController *)self layoutOrientation]];
    if ([(PUPhotoEditToolController *)self px_isVisible])
    {
      [(PUViewControllerSpec *)self->_toolControllerSpec registerChangeObserver:self];
    }

    traitCollection = [(PUPhotoEditToolController *)self traitCollection];
    if ([traitCollection horizontalSizeClass])
    {
      [(PUPhotoEditToolController *)self _updateTraitCollectionAndLayoutReferenceSize];
    }

    specCopy = v8;
  }

  MEMORY[0x1EEE66BB8](toolControllerSpec, specCopy);
}

- (void)_updateTraitCollectionAndLayoutReferenceSize
{
  view = [(PUPhotoEditToolController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  [(PUPhotoEditToolController *)self _updateTraitCollectionAndLayoutReferenceSize:v5, v7];
}

- (void)_updateTraitCollectionAndLayoutReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  traitCollection = [(PUPhotoEditToolController *)self traitCollection];
  toolControllerSpec = self->_toolControllerSpec;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __74__PUPhotoEditToolController__updateTraitCollectionAndLayoutReferenceSize___block_invoke;
  v12 = &unk_1E7B80688;
  selfCopy = self;
  v14 = traitCollection;
  v15 = width;
  v16 = height;
  v8 = traitCollection;
  [(PUViewControllerSpec *)toolControllerSpec performChanges:&v9];
  [(PUPhotoEditToolController *)self updateInteractions:v9];
}

uint64_t __74__PUPhotoEditToolController__updateTraitCollectionAndLayoutReferenceSize___block_invoke(double *a1)
{
  [*(*(a1 + 4) + 1064) setTraitCollection:*(a1 + 5)];
  v2 = *(*(a1 + 4) + 1064);
  v3 = a1[6];
  v4 = a1[7];

  return [v2 setLayoutReferenceSize:{v3, v4}];
}

- (double)timeSpentInTool
{
  timeEnteredTool = [(PUPhotoEditToolController *)self timeEnteredTool];

  if (timeEnteredTool)
  {
    timeEnteredTool2 = [(PUPhotoEditToolController *)self timeEnteredTool];
    [timeEnteredTool2 timeIntervalSinceNow];
    v6 = -v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6 + self->_timeSpentInTool;
}

- (id)didModifyAdjustmentWithLocalizedName:(id)name
{
  nameCopy = name;
  [(PUPhotoEditToolController *)self setStoredCompositionCount:[(PUPhotoEditToolController *)self storedCompositionCount]- 1];
  if ([(PUPhotoEditToolController *)self storedCompositionCount])
  {
    v5 = 0;
  }

  else
  {
    storedComposition = [(PUPhotoEditToolController *)self storedComposition];
    v5 = [(PUPhotoEditToolController *)self _registerActionWithSourceComposition:storedComposition localizedName:nameCopy];

    [(PUPhotoEditToolController *)self setStoredComposition:0];
  }

  return v5;
}

- (void)willModifyAdjustment
{
  [(PUPhotoEditToolController *)self setStoredCompositionCount:[(PUPhotoEditToolController *)self storedCompositionCount]+ 1];
  storedComposition = [(PUPhotoEditToolController *)self storedComposition];

  if (!storedComposition)
  {
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    composition = [compositionController composition];
    [(PUPhotoEditToolController *)self setStoredComposition:composition];
  }
}

- (id)_registerActionWithSourceComposition:(id)composition localizedName:(id)name
{
  compositionCopy = composition;
  nameCopy = name;
  undoManager = [(PUPhotoEditToolController *)self undoManager];
  v9 = undoManager;
  if (!undoManager || ([undoManager isUndoing] & 1) != 0 || (objc_msgSend(v9, "isRedoing") & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    compositionController = [(PUPhotoEditToolController *)self compositionController];
    composition = [compositionController composition];
    v14 = [composition isEqualToComposition:compositionCopy];

    if (v14)
    {
      v10 = 0;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E69C34C8]) initWithCompositionController:compositionController sourceComposition:compositionCopy];
      [v10 setLocalizedActionName:nameCopy];
      [v10 registerWithUndoManager:v9];
    }
  }

  return v10;
}

- (void)viewControllerSpec:(id)spec didChange:(id)change
{
  if ([change layoutStyleChanged])
  {

    [(PUPhotoEditToolController *)self specDidChange];
  }
}

- (BOOL)isActiveTool
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  if (!delegate)
  {
    return 0;
  }

  v4 = delegate;
  delegate2 = [(PUPhotoEditToolController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  delegate3 = [(PUPhotoEditToolController *)self delegate];
  currentTool = [delegate3 currentTool];
  v9 = currentTool == self;

  return v9;
}

- (void)prepareForToolTransitionWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (enabled && !self->_enabled)
  {
    [(PUPhotoEditToolController *)self willBecomeEnabled];
  }

  self->_enabled = enabled;
}

- (NSArray)editActionActivities
{
  v2 = [(NSMutableArray *)self->_mutableEditActionActivites copy];

  return v2;
}

- (void)removeEditActionActivity:(id)activity
{
  activityCopy = activity;
  if ([(NSMutableArray *)self->_mutableEditActionActivites containsObject:?])
  {
    [(NSMutableArray *)self->_mutableEditActionActivites removeObject:activityCopy];
  }
}

- (void)addEditActionActivity:(id)activity
{
  activityCopy = activity;
  mutableEditActionActivites = self->_mutableEditActionActivites;
  v8 = activityCopy;
  if (!mutableEditActionActivites)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_mutableEditActionActivites;
    self->_mutableEditActionActivites = array;

    activityCopy = v8;
    mutableEditActionActivites = self->_mutableEditActionActivites;
  }

  if (([(NSMutableArray *)mutableEditActionActivites containsObject:activityCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_mutableEditActionActivites addObject:v8];
  }
}

- (void)_layoutToolGradient
{
  if (self->_gradientView)
  {
    view = [(PUPhotoEditToolController *)self view];
    [view bounds];
    v5 = v4;
    v7 = v6;

    v8 = 0.0;
    [(CEKEdgeGradientView *)self->_gradientMask setFrame:0.0, 0.0, v5, v7];
    layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
    gradientMask = self->_gradientMask;
    if (layoutOrientation == 1)
    {
      [(CEKEdgeGradientView *)gradientMask setGradientDirection:0];
      [(PUPhotoEditToolController *)self toolGradientDistance];
      v8 = v7 - v11;
      v12 = 0.0;
    }

    else
    {
      [(CEKEdgeGradientView *)gradientMask setGradientDirection:1];
      [(PUPhotoEditToolController *)self toolGradientDistance];
      v12 = v5 - v13;
    }

    [(CEKEdgeGradientView *)self->_gradientMask setContentInsets:v8, v12, 0.0, 0.0];
    photoEditSpec = [(PUPhotoEditToolController *)self photoEditSpec];
    currentLayoutStyle = [photoEditSpec currentLayoutStyle];

    if (currentLayoutStyle == 4)
    {
      if (v7 <= 650.0)
      {
        v16 = v7;
      }

      else
      {
        v16 = 650.0;
      }

      v17 = (v7 - v16) * 0.5;
      v18 = v16 * 0.1;
      v19 = v17;
    }

    else
    {
      if (v5 >= v7)
      {
        v20 = v7;
      }

      else
      {
        v20 = v5;
      }

      v19 = v20 * 0.03;
      v18 = v20 * 0.07;
      v21 = 44.0;
      if (layoutOrientation == 1)
      {
        v21 = 0.0;
      }

      v17 = v19 + v21;
    }

    v22 = self->_gradientMask;

    [(CEKEdgeGradientView *)v22 setGradientDimensions:v17, v18, v18, v19];
  }
}

- (void)setToolGradientDistance:(double)distance
{
  if (self->_toolGradientDistance != distance)
  {
    self->_toolGradientDistance = distance;
    [(PUPhotoEditToolController *)self _layoutToolGradient];
  }
}

- (PICompositionController)uneditedCompositionController
{
  delegate = [(PUPhotoEditToolController *)self delegate];
  v4 = [delegate toolControllerUneditedCompositionController:self];

  return v4;
}

- (void)setLayoutOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator
{
  if (self->_layoutOrientation != orientation)
  {
    self->_layoutOrientation = orientation;
    [(PUPhotoEditToolControllerSpec *)self->_toolControllerSpec setLayoutOrientation:?];
    view = [(PUPhotoEditToolController *)self view];
    [view setNeedsLayout];
  }
}

- (UIEdgeInsets)additionalPreviewViewInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)preferredPreviewViewInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setupWithAsset:(id)asset compositionController:(id)controller editSource:(id)source valuesCalculator:(id)calculator
{
  assetCopy = asset;
  controllerCopy = controller;
  sourceCopy = source;
  calculatorCopy = calculator;
  if (!controllerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolController.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"compositionController"}];
  }

  compositionController = self->_compositionController;
  if (compositionController)
  {
    v16 = compositionController == controllerCopy;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolController.m" lineNumber:255 description:@"Can only set up the composition once"];
  }

  editSource = self->_editSource;
  if (editSource)
  {
    v18 = editSource == sourceCopy;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolController.m" lineNumber:256 description:@"Can only set up the edit source once"];
  }

  valuesCalculator = self->_valuesCalculator;
  if (valuesCalculator)
  {
    v20 = valuesCalculator == calculatorCopy;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolController.m" lineNumber:257 description:@"Can only set up the values calculator once"];
  }

  asset = self->_asset;
  self->_asset = assetCopy;
  v31 = assetCopy;

  v22 = self->_compositionController;
  self->_compositionController = controllerCopy;
  v23 = controllerCopy;

  v24 = self->_editSource;
  self->_editSource = sourceCopy;
  v25 = sourceCopy;

  v26 = self->_valuesCalculator;
  self->_valuesCalculator = calculatorCopy;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v7.receiver = self;
  v7.super_class = PUPhotoEditToolController;
  [(PUPhotoEditToolController *)&v7 viewWillTransitionToSize:coordinator withTransitionCoordinator:?];
  [(PUPhotoEditToolController *)self _updateTraitCollectionAndLayoutReferenceSize:width, height];
}

- (void)viewDidLayoutSubviews
{
  v25.receiver = self;
  v25.super_class = PUPhotoEditToolController;
  [(PUPhotoEditToolController *)&v25 viewDidLayoutSubviews];
  if (self->_gradientView)
  {
    view = [(PUPhotoEditToolController *)self view];
    [view bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [(_PUPhotoEditToolGradientView *)self->_gradientView setFrame:v5, v7, v9, v11];
    layoutOrientation = [(PUPhotoEditToolController *)self layoutOrientation];
    v13 = v5;
    v14 = v7;
    v15 = v9;
    v16 = v11;
    if (layoutOrientation == 1)
    {
      v17 = CGRectGetMaxY(*&v13) + -141.0;
      toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];
      v19 = toolContainerView;
      v20 = 141.0;
      v21 = 0.0;
      v22 = v17;
      v23 = v9;
    }

    else
    {
      v24 = CGRectGetMaxX(*&v13) + -141.0;
      toolContainerView = [(PUPhotoEditToolController *)self toolContainerView];
      v19 = toolContainerView;
      v23 = 141.0;
      v22 = 0.0;
      v21 = v24;
      v20 = v11;
    }

    [toolContainerView setFrame:{v21, v22, v23, v20}];

    [(PUPhotoEditToolController *)self _layoutToolGradient];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditToolController;
  [(PUPhotoEditToolController *)&v4 viewDidDisappear:disappear];
  [(PUViewControllerSpec *)self->_toolControllerSpec unregisterChangeObserver:self];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PUPhotoEditToolController;
  [(PUPhotoEditToolController *)&v5 viewDidAppear:appear];
  [(PUPhotoEditToolController *)self becomeFirstResponder];
  if (![(PUPhotoEditToolController *)self hasMediaScrubber])
  {
    delegate = [(PUPhotoEditToolController *)self delegate];
    [delegate toolController:self showVideoScrubber:1 animated:1];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditToolController;
  [(PUPhotoEditToolController *)&v6 viewWillAppear:appear];
  view = [(PUPhotoEditToolController *)self view];
  [view bringSubviewToFront:self->_gradientView];

  [(PUPhotoEditToolController *)self _updateTraitCollectionAndLayoutReferenceSize];
  [(PUViewControllerSpec *)self->_toolControllerSpec registerChangeObserver:self];
  if ([(PUPhotoEditToolController *)self wantsZoomAndPanEnabled])
  {
    view2 = [(PUPhotoEditToolController *)self view];
    [view2 setToolController:self];
  }
}

- (void)loadView
{
  v12 = objc_opt_new();
  [(PUPhotoEditToolController *)self setView:v12];
  v3 = objc_alloc_init(_PUPhotoEditToolGradientView);
  gradientView = self->_gradientView;
  self->_gradientView = v3;

  view = [(PUPhotoEditToolController *)self view];
  [view addSubview:self->_gradientView];

  v6 = objc_alloc(MEMORY[0x1E6993848]);
  v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  gradientMask = self->_gradientMask;
  self->_gradientMask = v7;

  [(CEKEdgeGradientView *)self->_gradientMask setEdgeGradientStyleMask];
  [(_PUPhotoEditToolGradientView *)self->_gradientView setMaskView:self->_gradientMask];
  v9 = objc_alloc_init(_PUPhotoEditToolContainerView);
  toolContainerView = self->_toolContainerView;
  self->_toolContainerView = &v9->super;

  layer = [(UIView *)self->_toolContainerView layer];
  [layer setMasksToBounds:0];

  [(_PUPhotoEditToolGradientView *)self->_gradientView addSubview:self->_toolContainerView];
  self->_toolGradientDistance = 141.0;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUPhotoEditToolController;
  [(PUPhotoEditToolController *)&v4 dealloc];
}

- (PUPhotoEditToolController)initWithNibName:(id)name bundle:(id)bundle
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PUPhotoEditToolController;
  v4 = [(PUPhotoEditToolController *)&v10 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = objc_alloc_init(PUPhotoEditToolControllerSpec);
    toolControllerSpec = v4->_toolControllerSpec;
    v4->_toolControllerSpec = v5;

    v4->_enabled = 1;
    v11[0] = objc_opt_class();
    v11[1] = objc_opt_class();
    v11[2] = objc_opt_class();
    v11[3] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
    v8 = [(PUPhotoEditToolController *)v4 registerForTraitChanges:v7 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v4;
}

@end