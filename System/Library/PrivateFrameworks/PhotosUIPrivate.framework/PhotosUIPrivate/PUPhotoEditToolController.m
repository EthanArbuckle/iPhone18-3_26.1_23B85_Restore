@interface PUPhotoEditToolController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)displayedTimeForOriginalAssetTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)originalAssetTimeForDisplayedTime:(SEL)a3;
- (BOOL)isActiveTool;
- (CGRect)contentRectInCoordinateSpace:(id)a3;
- (NSArray)editActionActivities;
- (PICompositionController)uneditedCompositionController;
- (PUPhotoEditToolController)initWithNibName:(id)a3 bundle:(id)a4;
- (PUPhotoEditToolControllerDelegate)delegate;
- (UIEdgeInsets)additionalPreviewViewInsets;
- (UIEdgeInsets)preferredPreviewViewInsets;
- (double)timeSpentInTool;
- (id)_newTimeMapper;
- (id)_registerActionWithSourceComposition:(id)a3 localizedName:(id)a4;
- (id)didModifyAdjustmentWithLocalizedName:(id)a3;
- (void)_layoutToolGradient;
- (void)_updateTraitCollectionAndLayoutReferenceSize;
- (void)_updateTraitCollectionAndLayoutReferenceSize:(CGSize)a3;
- (void)addEditActionActivity:(id)a3;
- (void)dealloc;
- (void)didBecomeActiveTool;
- (void)didResignActiveTool;
- (void)loadView;
- (void)prepareForToolTransitionWithCompletion:(id)a3;
- (void)removeEditActionActivity:(id)a3;
- (void)setActivelyAdjusting:(BOOL)a3;
- (void)setAggregateSession:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4;
- (void)setPerformingLiveInteraction:(BOOL)a3;
- (void)setToolControllerSpec:(id)a3;
- (void)setToolGradientDistance:(double)a3;
- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6;
- (void)updateInteractions;
- (void)viewControllerSpec:(id)a3 didChange:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
  v3 = [(PUPhotoEditToolController *)self viewInteractions];

  if (v3)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v4 = [(PUPhotoEditToolController *)self viewInteractions];
    v5 = [v4 countByEnumeratingWithState:&v43 objects:v49 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v43 + 1) + 8 * i);
          v10 = [v9 view];
          [v10 removeInteraction:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v6);
    }

    [(PUPhotoEditToolController *)self setViewInteractions:0];
  }

  if ([(PUPhotoEditToolController *)self isActiveTool]&& MEMORY[0x1B8C6D660]())
  {
    v11 = [(PUPhotoEditToolController *)self pocketableViews];
    v12 = [(PUPhotoEditToolController *)self alwaysBottomPocketableViews];
    if ([v11 count] || objc_msgSend(v12, "count"))
    {
      v31 = v12;
      v13 = [MEMORY[0x1E695DF70] array];
      v14 = [(PUPhotoEditToolController *)self delegate];
      v15 = [v14 mediaView];
      v16 = [v15 _scrollView];

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
      v30 = v16;
      v41 = v30;
      v18 = v13;
      v42 = v18;
      v19 = _Block_copy(aBlock);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v20 = v11;
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
      v12 = v31;
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
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 isHighframeRateVideo];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PUPhotoEditToolController *)self compositionController];
  v6 = [v5 slomoAdjustmentController];

  memset(&v19, 0, sizeof(v19));
  if (v6)
  {
    [v6 startTime];
    [v6 endTime];
  }

  else
  {
    memset(&v17, 0, 24);
    memset(&end, 0, sizeof(end));
  }

  CMTimeRangeFromTimeToTime(&v19, &v17.start, &end);
  v8 = [(PUPhotoEditToolController *)self delegate];
  v9 = [v8 mediaView];

  v10 = [v9 player];
  v11 = v10;
  if (v10)
  {
    [v10 mediaDuration];
  }

  else
  {
    memset(&v17, 0, 24);
  }

  Seconds = CMTimeGetSeconds(&v17.start);

  v13 = MEMORY[0x1E69C0890];
  [v6 rate];
  *&v15 = v14;
  v17 = v19;
  v7 = [v13 timeRangeMapperForSourceDuration:&v17 slowMotionRate:1 slowMotionTimeRange:Seconds forExport:v15];

  return v7;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)displayedTimeForOriginalAssetTime:(SEL)a3
{
  v7 = [(PUPhotoEditToolController *)self delegate];
  v8 = [v7 isHighframeRateVideo];

  if (v8)
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

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)originalAssetTimeForDisplayedTime:(SEL)a3
{
  v7 = [(PUPhotoEditToolController *)self delegate];
  v8 = [v7 isHighframeRateVideo];

  if (v8)
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

- (CGRect)contentRectInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotoEditToolController *)self view];
  [v5 bounds];
  [v5 convertRect:v4 toCoordinateSpace:?];
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
  v3 = [(PUPhotoEditToolController *)self timeEnteredTool];

  if (v3)
  {
    v4 = [(PUPhotoEditToolController *)self timeEnteredTool];
    [v4 timeIntervalSinceNow];
    v6 = v5;

    [(PUPhotoEditToolController *)self setTimeEnteredTool:0];
    self->_timeSpentInTool = self->_timeSpentInTool - v6;
  }
}

- (void)willResignActiveTool
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotoEditToolController *)self viewInteractions];

  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(PUPhotoEditToolController *)self viewInteractions];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          v10 = [v9 view];
          [v10 removeInteraction:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    v3 = [(PUPhotoEditToolController *)self delegate];
    [v3 toolController:self showVideoScrubber:0 animated:0];
  }

  [(PUPhotoEditToolController *)self setSlowMotionTimeMapper:0];
}

- (void)setAggregateSession:(id)a3
{
  v5 = a3;
  if (self->_aggregateSession != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_aggregateSession, a3);
    v5 = v6;
  }
}

- (void)setPerformingLiveInteraction:(BOOL)a3
{
  if (self->_performingLiveInteraction != a3)
  {
    self->_performingLiveInteraction = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained toolControllerDidChangeIsPerformingLiveInteraction:self];
  }
}

- (void)setActivelyAdjusting:(BOOL)a3
{
  if (self->_activelyAdjusting != a3)
  {
    self->_activelyAdjusting = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained toolControllerDidChangeIsActivelyAdjusting:self];
  }
}

- (void)setToolControllerSpec:(id)a3
{
  v5 = a3;
  toolControllerSpec = self->_toolControllerSpec;
  if (toolControllerSpec != v5)
  {
    v8 = v5;
    [(PUViewControllerSpec *)toolControllerSpec unregisterChangeObserver:self];
    objc_storeStrong(&self->_toolControllerSpec, a3);
    [(PUPhotoEditToolControllerSpec *)self->_toolControllerSpec setLayoutOrientation:[(PUPhotoEditToolController *)self layoutOrientation]];
    if ([(PUPhotoEditToolController *)self px_isVisible])
    {
      [(PUViewControllerSpec *)self->_toolControllerSpec registerChangeObserver:self];
    }

    v7 = [(PUPhotoEditToolController *)self traitCollection];
    if ([v7 horizontalSizeClass])
    {
      [(PUPhotoEditToolController *)self _updateTraitCollectionAndLayoutReferenceSize];
    }

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](toolControllerSpec, v5);
}

- (void)_updateTraitCollectionAndLayoutReferenceSize
{
  v3 = [(PUPhotoEditToolController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(PUPhotoEditToolController *)self _updateTraitCollectionAndLayoutReferenceSize:v5, v7];
}

- (void)_updateTraitCollectionAndLayoutReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PUPhotoEditToolController *)self traitCollection];
  toolControllerSpec = self->_toolControllerSpec;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __74__PUPhotoEditToolController__updateTraitCollectionAndLayoutReferenceSize___block_invoke;
  v12 = &unk_1E7B80688;
  v13 = self;
  v14 = v6;
  v15 = width;
  v16 = height;
  v8 = v6;
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
  v3 = [(PUPhotoEditToolController *)self timeEnteredTool];

  if (v3)
  {
    v4 = [(PUPhotoEditToolController *)self timeEnteredTool];
    [v4 timeIntervalSinceNow];
    v6 = -v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6 + self->_timeSpentInTool;
}

- (id)didModifyAdjustmentWithLocalizedName:(id)a3
{
  v4 = a3;
  [(PUPhotoEditToolController *)self setStoredCompositionCount:[(PUPhotoEditToolController *)self storedCompositionCount]- 1];
  if ([(PUPhotoEditToolController *)self storedCompositionCount])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(PUPhotoEditToolController *)self storedComposition];
    v5 = [(PUPhotoEditToolController *)self _registerActionWithSourceComposition:v6 localizedName:v4];

    [(PUPhotoEditToolController *)self setStoredComposition:0];
  }

  return v5;
}

- (void)willModifyAdjustment
{
  [(PUPhotoEditToolController *)self setStoredCompositionCount:[(PUPhotoEditToolController *)self storedCompositionCount]+ 1];
  v3 = [(PUPhotoEditToolController *)self storedComposition];

  if (!v3)
  {
    v5 = [(PUPhotoEditToolController *)self compositionController];
    v4 = [v5 composition];
    [(PUPhotoEditToolController *)self setStoredComposition:v4];
  }
}

- (id)_registerActionWithSourceComposition:(id)a3 localizedName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUPhotoEditToolController *)self undoManager];
  v9 = v8;
  if (!v8 || ([v8 isUndoing] & 1) != 0 || (objc_msgSend(v9, "isRedoing") & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v12 = [(PUPhotoEditToolController *)self compositionController];
    v13 = [v12 composition];
    v14 = [v13 isEqualToComposition:v6];

    if (v14)
    {
      v10 = 0;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E69C34C8]) initWithCompositionController:v12 sourceComposition:v6];
      [v10 setLocalizedActionName:v7];
      [v10 registerWithUndoManager:v9];
    }
  }

  return v10;
}

- (void)viewControllerSpec:(id)a3 didChange:(id)a4
{
  if ([a4 layoutStyleChanged])
  {

    [(PUPhotoEditToolController *)self specDidChange];
  }
}

- (BOOL)isActiveTool
{
  v3 = [(PUPhotoEditToolController *)self delegate];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(PUPhotoEditToolController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = [(PUPhotoEditToolController *)self delegate];
  v8 = [v7 currentTool];
  v9 = v8 == self;

  return v9;
}

- (void)prepareForToolTransitionWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (a3 && !self->_enabled)
  {
    [(PUPhotoEditToolController *)self willBecomeEnabled];
  }

  self->_enabled = a3;
}

- (NSArray)editActionActivities
{
  v2 = [(NSMutableArray *)self->_mutableEditActionActivites copy];

  return v2;
}

- (void)removeEditActionActivity:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_mutableEditActionActivites containsObject:?])
  {
    [(NSMutableArray *)self->_mutableEditActionActivites removeObject:v4];
  }
}

- (void)addEditActionActivity:(id)a3
{
  v4 = a3;
  mutableEditActionActivites = self->_mutableEditActionActivites;
  v8 = v4;
  if (!mutableEditActionActivites)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_mutableEditActionActivites;
    self->_mutableEditActionActivites = v6;

    v4 = v8;
    mutableEditActionActivites = self->_mutableEditActionActivites;
  }

  if (([(NSMutableArray *)mutableEditActionActivites containsObject:v4]& 1) == 0)
  {
    [(NSMutableArray *)self->_mutableEditActionActivites addObject:v8];
  }
}

- (void)_layoutToolGradient
{
  if (self->_gradientView)
  {
    v3 = [(PUPhotoEditToolController *)self view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;

    v8 = 0.0;
    [(CEKEdgeGradientView *)self->_gradientMask setFrame:0.0, 0.0, v5, v7];
    v9 = [(PUPhotoEditToolController *)self layoutOrientation];
    gradientMask = self->_gradientMask;
    if (v9 == 1)
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
    v14 = [(PUPhotoEditToolController *)self photoEditSpec];
    v15 = [v14 currentLayoutStyle];

    if (v15 == 4)
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
      if (v9 == 1)
      {
        v21 = 0.0;
      }

      v17 = v19 + v21;
    }

    v22 = self->_gradientMask;

    [(CEKEdgeGradientView *)v22 setGradientDimensions:v17, v18, v18, v19];
  }
}

- (void)setToolGradientDistance:(double)a3
{
  if (self->_toolGradientDistance != a3)
  {
    self->_toolGradientDistance = a3;
    [(PUPhotoEditToolController *)self _layoutToolGradient];
  }
}

- (PICompositionController)uneditedCompositionController
{
  v3 = [(PUPhotoEditToolController *)self delegate];
  v4 = [v3 toolControllerUneditedCompositionController:self];

  return v4;
}

- (void)setLayoutOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4
{
  if (self->_layoutOrientation != a3)
  {
    self->_layoutOrientation = a3;
    [(PUPhotoEditToolControllerSpec *)self->_toolControllerSpec setLayoutOrientation:?];
    v6 = [(PUPhotoEditToolController *)self view];
    [v6 setNeedsLayout];
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

- (void)setupWithAsset:(id)a3 compositionController:(id)a4 editSource:(id)a5 valuesCalculator:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v12)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolController.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"compositionController"}];
  }

  compositionController = self->_compositionController;
  if (compositionController)
  {
    v16 = compositionController == v12;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolController.m" lineNumber:255 description:@"Can only set up the composition once"];
  }

  editSource = self->_editSource;
  if (editSource)
  {
    v18 = editSource == v13;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolController.m" lineNumber:256 description:@"Can only set up the edit source once"];
  }

  valuesCalculator = self->_valuesCalculator;
  if (valuesCalculator)
  {
    v20 = valuesCalculator == v14;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PUPhotoEditToolController.m" lineNumber:257 description:@"Can only set up the values calculator once"];
  }

  asset = self->_asset;
  self->_asset = v11;
  v31 = v11;

  v22 = self->_compositionController;
  self->_compositionController = v12;
  v23 = v12;

  v24 = self->_editSource;
  self->_editSource = v13;
  v25 = v13;

  v26 = self->_valuesCalculator;
  self->_valuesCalculator = v14;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7.receiver = self;
  v7.super_class = PUPhotoEditToolController;
  [(PUPhotoEditToolController *)&v7 viewWillTransitionToSize:a4 withTransitionCoordinator:?];
  [(PUPhotoEditToolController *)self _updateTraitCollectionAndLayoutReferenceSize:width, height];
}

- (void)viewDidLayoutSubviews
{
  v25.receiver = self;
  v25.super_class = PUPhotoEditToolController;
  [(PUPhotoEditToolController *)&v25 viewDidLayoutSubviews];
  if (self->_gradientView)
  {
    v3 = [(PUPhotoEditToolController *)self view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [(_PUPhotoEditToolGradientView *)self->_gradientView setFrame:v5, v7, v9, v11];
    v12 = [(PUPhotoEditToolController *)self layoutOrientation];
    v13 = v5;
    v14 = v7;
    v15 = v9;
    v16 = v11;
    if (v12 == 1)
    {
      v17 = CGRectGetMaxY(*&v13) + -141.0;
      v18 = [(PUPhotoEditToolController *)self toolContainerView];
      v19 = v18;
      v20 = 141.0;
      v21 = 0.0;
      v22 = v17;
      v23 = v9;
    }

    else
    {
      v24 = CGRectGetMaxX(*&v13) + -141.0;
      v18 = [(PUPhotoEditToolController *)self toolContainerView];
      v19 = v18;
      v23 = 141.0;
      v22 = 0.0;
      v21 = v24;
      v20 = v11;
    }

    [v18 setFrame:{v21, v22, v23, v20}];

    [(PUPhotoEditToolController *)self _layoutToolGradient];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditToolController;
  [(PUPhotoEditToolController *)&v4 viewDidDisappear:a3];
  [(PUViewControllerSpec *)self->_toolControllerSpec unregisterChangeObserver:self];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PUPhotoEditToolController;
  [(PUPhotoEditToolController *)&v5 viewDidAppear:a3];
  [(PUPhotoEditToolController *)self becomeFirstResponder];
  if (![(PUPhotoEditToolController *)self hasMediaScrubber])
  {
    v4 = [(PUPhotoEditToolController *)self delegate];
    [v4 toolController:self showVideoScrubber:1 animated:1];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PUPhotoEditToolController;
  [(PUPhotoEditToolController *)&v6 viewWillAppear:a3];
  v4 = [(PUPhotoEditToolController *)self view];
  [v4 bringSubviewToFront:self->_gradientView];

  [(PUPhotoEditToolController *)self _updateTraitCollectionAndLayoutReferenceSize];
  [(PUViewControllerSpec *)self->_toolControllerSpec registerChangeObserver:self];
  if ([(PUPhotoEditToolController *)self wantsZoomAndPanEnabled])
  {
    v5 = [(PUPhotoEditToolController *)self view];
    [v5 setToolController:self];
  }
}

- (void)loadView
{
  v12 = objc_opt_new();
  [(PUPhotoEditToolController *)self setView:v12];
  v3 = objc_alloc_init(_PUPhotoEditToolGradientView);
  gradientView = self->_gradientView;
  self->_gradientView = v3;

  v5 = [(PUPhotoEditToolController *)self view];
  [v5 addSubview:self->_gradientView];

  v6 = objc_alloc(MEMORY[0x1E6993848]);
  v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  gradientMask = self->_gradientMask;
  self->_gradientMask = v7;

  [(CEKEdgeGradientView *)self->_gradientMask setEdgeGradientStyleMask];
  [(_PUPhotoEditToolGradientView *)self->_gradientView setMaskView:self->_gradientMask];
  v9 = objc_alloc_init(_PUPhotoEditToolContainerView);
  toolContainerView = self->_toolContainerView;
  self->_toolContainerView = &v9->super;

  v11 = [(UIView *)self->_toolContainerView layer];
  [v11 setMasksToBounds:0];

  [(_PUPhotoEditToolGradientView *)self->_gradientView addSubview:self->_toolContainerView];
  self->_toolGradientDistance = 141.0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUPhotoEditToolController;
  [(PUPhotoEditToolController *)&v4 dealloc];
}

- (PUPhotoEditToolController)initWithNibName:(id)a3 bundle:(id)a4
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