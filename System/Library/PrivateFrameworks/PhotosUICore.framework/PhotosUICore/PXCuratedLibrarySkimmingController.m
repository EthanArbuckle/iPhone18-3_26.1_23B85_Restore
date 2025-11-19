@interface PXCuratedLibrarySkimmingController
+ (PXCuratedLibrarySkimmingController)new;
- (BOOL)canStartSkimming;
- (BOOL)endTouchingGestureEnded:(BOOL)a3;
- (PXCuratedLibrarySkimmingController)init;
- (PXCuratedLibrarySkimmingController)initWithSkimmingModel:(id)a3;
- (PXCuratedLibrarySkimmingControllerDelegate)delegate;
- (void)_adoptIndexesFromSkimmingModel;
- (void)_cancelEnteringTouchingState;
- (void)_cleanupFeedbackGenerator;
- (void)_ensureFeedbackGenerator;
- (void)_enterIdleStatePersistSkimmingState:(BOOL)a3;
- (void)_enterSlideshowStateForAssetCollectionReference:(id)a3;
- (void)_enterTouchingStateForAssetCollectionReference:(id)a3;
- (void)_generateFeedbackForSkimmingGesture;
- (void)_slideshowTimerTick:(id)a3;
- (void)_startOrResumeSlideshowTouchesEnded:(BOOL)a3;
- (void)_stopSlideshow;
- (void)_updateSlideshow;
- (void)endPanning;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setSkimmingSlideshowEnabled:(BOOL)a3;
- (void)setState:(int64_t)a3;
- (void)startPanningForAssetCollectionReference:(id)a3;
- (void)startTouchingForAssetCollectionReference:(id)a3;
- (void)updatePanningWithTranslation:(CGPoint)a3;
@end

@implementation PXCuratedLibrarySkimmingController

- (void)_updateSlideshow
{
  if ([(PXCuratedLibrarySkimmingController *)self skimmingSlideshowEnabled])
  {
    v3 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    v4 = [v3 canStartSkimming];

    if (v4)
    {

      [(PXCuratedLibrarySkimmingController *)self _startOrResumeSlideshowTouchesEnded:0];
    }

    else
    {

      [(PXCuratedLibrarySkimmingController *)self _stopSlideshow];
    }
  }
}

- (void)_stopSlideshow
{
  if ([(PXCuratedLibrarySkimmingController *)self state]== 1)
  {

    [(PXCuratedLibrarySkimmingController *)self _enterIdleStatePersistSkimmingState:0];
  }
}

- (void)_cancelEnteringTouchingState
{
  v3 = [(PXCuratedLibrarySkimmingController *)self preSkimmedAssetCollectionReference];

  if (v3)
  {
    v4 = MEMORY[0x1E69E58C0];
    v5 = [(PXCuratedLibrarySkimmingController *)self preSkimmedAssetCollectionReference];
    [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel__enterTouchingStateForAssetCollectionReference_ object:v5];

    [(PXCuratedLibrarySkimmingController *)self setPreSkimmedAssetCollectionReference:0];
  }
}

- (PXCuratedLibrarySkimmingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setState:(int64_t)a3
{
  state = self->_state;
  if (state != a3)
  {
    self->_state = a3;
    if (state == 2)
    {
      v6 = 0.5;
    }

    else
    {
      v6 = 0.0;
    }

    if (state == 3)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = v6;
    }

    v8 = state != 3 && state != 2;
    if ((a3 - 2) < 2)
    {
      v9 = 1;
      v10 = 0.2;
    }

    else
    {
      v9 = 0;
      if (a3 <= 1)
      {
        v10 = 0.5;
      }

      else
      {
        v10 = 0.0;
      }
    }

    if ([(PXCuratedLibrarySkimmingController *)self skimmingSlideshowEnabled:0.0])
    {
      v11 = [(PXCuratedLibrarySkimmingController *)self slideshowTimer];
      [v11 invalidate];

      [(PXCuratedLibrarySkimmingController *)self setSlideshowTimer:0];
      if (a3 == 1)
      {
        v12 = objc_alloc(MEMORY[0x1E695DFF0]);
        v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:self->_slideshowTriggerDelay];
        v14 = [v12 initWithFireDate:v13 interval:self target:sel__slideshowTimerTick_ selector:0 userInfo:1 repeats:self->_slideshowIntervalDelay];

        [(PXCuratedLibrarySkimmingController *)self setSlideshowTimer:v14];
        v15 = [MEMORY[0x1E695DFD0] currentRunLoop];
        [v15 addTimer:v14 forMode:*MEMORY[0x1E695D918]];
      }
    }

    if ((v8 & v9) == 1)
    {
      v18 = [(PXCuratedLibrarySkimmingController *)self delegate];
      v16 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
      v17 = [v16 containingAssetCollectionReference];
      [v18 skimmingController:self willStartSkimmingAssetCollectionReference:v17 animationDuration:v10];
    }

    else
    {
      if ((v8 | v9))
      {
        return;
      }

      v18 = [(PXCuratedLibrarySkimmingController *)self delegate];
      [v18 skimmingControllerDidStopSkimming:self animationDuration:v7];
    }
  }
}

- (void)_enterIdleStatePersistSkimmingState:(BOOL)a3
{
  v3 = a3;
  if ([(PXCuratedLibrarySkimmingController *)self state])
  {
    v5 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    [v5 tearDownAfterSkimmingShowHints:0 persistState:v3];

    [(PXCuratedLibrarySkimmingController *)self _cancelEnteringTouchingState];
    [(PXCuratedLibrarySkimmingController *)self setSkimmingIndexes:0];
    [(PXCuratedLibrarySkimmingController *)self setCurrentSkimmingIndex:0x7FFFFFFFFFFFFFFFLL];
    [(PXCuratedLibrarySkimmingController *)self setSkimmingDataSourceIdentifier:0];

    [(PXCuratedLibrarySkimmingController *)self setState:0];
  }
}

- (void)_adoptIndexesFromSkimmingModel
{
  v3 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  v4 = [v3 indexPathSetForSkimming];
  v14 = 0u;
  v15 = 0u;
  if (v3)
  {
    [v3 initialIndexPath];
  }

  if (v4)
  {
    [v4 anySectionIndexPath];
    v5 = v12;
  }

  else
  {
    v5 = 0;
    v12 = 0u;
    v13 = 0u;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [v4 sectionIndexSetForDataSourceIdentifier:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PXCuratedLibrarySkimmingController__adoptIndexesFromSkimmingModel__block_invoke;
  v10[3] = &unk_1E774C138;
  v11 = v6;
  v8 = v6;
  [v7 enumerateIndexesUsingBlock:v10];

  [(PXCuratedLibrarySkimmingController *)self setSkimmingDataSourceIdentifier:v5];
  [(PXCuratedLibrarySkimmingController *)self setSkimmingIndexes:v8];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:*(&v14 + 1)];
  -[PXCuratedLibrarySkimmingController setCurrentSkimmingIndex:](self, "setCurrentSkimmingIndex:", [v8 indexOfObject:v9]);
}

void __68__PXCuratedLibrarySkimmingController__adoptIndexesFromSkimmingModel__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

- (void)_enterTouchingStateForAssetCollectionReference:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 indexPath];
  }

  else
  {
    memset(&v12[2], 0, 32);
  }

  v6 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  v7 = [v6 containingAssetCollectionReference];
  v8 = v7;
  if (v7)
  {
    [v7 indexPath];
    v9 = *&v12[0];
  }

  else
  {
    v9 = 0;
    memset(v12, 0, 32);
  }

  if (*&v12[2] == v9 && *(&v12[2] + 8) == *(v12 + 8))
  {

    if (*(&v12[3] + 1) == *(&v12[1] + 1))
    {
      [(PXCuratedLibrarySkimmingController *)self setState:2];
      v10 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
      [v10 transitionToSkimming];

      goto LABEL_14;
    }
  }

  else
  {
  }

  if ([(PXCuratedLibrarySkimmingController *)self state]<= 2)
  {
    v11 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    [v11 prepareForSkimmingInAssetCollectionReference:v5];

    [(PXCuratedLibrarySkimmingController *)self _adoptIndexesFromSkimmingModel];
    [(PXCuratedLibrarySkimmingController *)self setState:2];
  }

LABEL_14:
}

- (void)_enterSlideshowStateForAssetCollectionReference:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 indexPath];
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  v6 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  v7 = [v6 containingAssetCollectionReference];
  v8 = v7;
  if (v7)
  {
    [v7 indexPath];
    v9 = *&v21[0];
  }

  else
  {
    v9 = 0;
    memset(v21, 0, sizeof(v21));
  }

  if (*&v22[0] == v9 && *(v22 + 8) == *(v21 + 8))
  {

    if (*(&v22[1] + 1) == *(&v21[1] + 1))
    {
      v10 = [(PXCuratedLibrarySkimmingController *)self state];
      if (v10 <= 3 && v10 != 1)
      {
        [(PXCuratedLibrarySkimmingController *)self setState:1];
        v11 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
        [v11 transitionToSlideshow];
      }

      goto LABEL_27;
    }
  }

  else
  {
  }

  v12 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  v13 = v12;
  if (v12)
  {
    [v12 skimmedIndexPath];
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  v14 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  v15 = v14;
  if (v14)
  {
    [v14 initialIndexPath];
    v16 = *&v21[0];
  }

  else
  {
    v16 = 0;
    memset(v21, 0, sizeof(v21));
  }

  v17 = *&v22[0] != v16 || *(v22 + 8) != *(v21 + 8) || *(&v22[1] + 1) != *(&v21[1] + 1);
  [(PXCuratedLibrarySkimmingController *)self _enterIdleStatePersistSkimmingState:v17, *&v21[0]];

  v18 = [v5 assetCollection];
  v19 = [v18 px_highlightKind];

  if (v19 == 2 && [(PXCuratedLibrarySkimmingController *)self state]<= 1)
  {
    v20 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    [v20 prepareForSlideshowForAssetCollectionReference:v5];

    [(PXCuratedLibrarySkimmingController *)self _adoptIndexesFromSkimmingModel];
    [(PXCuratedLibrarySkimmingController *)self setState:1];
  }

LABEL_27:
}

- (void)_cleanupFeedbackGenerator
{
  skimmingFeedbackGenerator = self->_skimmingFeedbackGenerator;
  self->_skimmingFeedbackGenerator = 0;
}

- (void)_generateFeedbackForSkimmingGesture
{
  [(UISelectionFeedbackGenerator *)self->_skimmingFeedbackGenerator selectionChanged];
  skimmingFeedbackGenerator = self->_skimmingFeedbackGenerator;

  [(UISelectionFeedbackGenerator *)skimmingFeedbackGenerator prepare];
}

- (void)_ensureFeedbackGenerator
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCF40]);
  skimmingFeedbackGenerator = self->_skimmingFeedbackGenerator;
  self->_skimmingFeedbackGenerator = v3;

  v5 = self->_skimmingFeedbackGenerator;

  [(UISelectionFeedbackGenerator *)v5 prepare];
}

- (void)endPanning
{
  if ([(PXCuratedLibrarySkimmingController *)self state]== 3)
  {
    [(PXCuratedLibrarySkimmingController *)self _cleanupFeedbackGenerator];
    if ([(PXCuratedLibrarySkimmingController *)self skimmingSlideshowEnabled])
    {

      [(PXCuratedLibrarySkimmingController *)self _startOrResumeSlideshowTouchesEnded:1];
    }

    else
    {

      [(PXCuratedLibrarySkimmingController *)self _enterIdleStatePersistSkimmingState:1];
    }
  }
}

- (void)updatePanningWithTranslation:(CGPoint)a3
{
  x = a3.x;
  if ([(PXCuratedLibrarySkimmingController *)self state:a3.x]== 3)
  {
    v5 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    [v5 transitionToSkimming];

    [(PXCuratedLibrarySkimmingController *)self lastPanningTranslation];
    if (vabdd_f64(x, v6) >= 15.0)
    {
      [(PXCuratedLibrarySkimmingController *)self setLastPanningTranslation:x];
      [(PXCuratedLibrarySkimmingController *)self skimmingIndexes];
      objc_claimAutoreleasedReturnValue();
      [(PXCuratedLibrarySkimmingController *)self currentSkimmingIndex];
      PXFloatSign();
    }
  }
}

- (void)startPanningForAssetCollectionReference:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  v6 = [v5 canStartSkimming];

  if (v6)
  {
    v7 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    v9 = [v7 validatedAssetCollectionReference:v4];

    if ([(PXCuratedLibrarySkimmingController *)self state]!= 2)
    {
      [(PXCuratedLibrarySkimmingController *)self _cancelEnteringTouchingState];
      [(PXCuratedLibrarySkimmingController *)self _enterTouchingStateForAssetCollectionReference:v9];
    }

    [(PXCuratedLibrarySkimmingController *)self setLastPanningTranslation:0.0];
    [(PXCuratedLibrarySkimmingController *)self setState:3];
    [(PXCuratedLibrarySkimmingController *)self _ensureFeedbackGenerator];
    v8 = v9;
  }

  else
  {
    v8 = v4;
  }
}

- (BOOL)endTouchingGestureEnded:(BOOL)a3
{
  v3 = a3;
  [(PXCuratedLibrarySkimmingController *)self _cancelEnteringTouchingState];
  if (v3)
  {
    if ([(PXCuratedLibrarySkimmingController *)self state]== 2)
    {
      LOBYTE(v3) = 1;
      if ([(PXCuratedLibrarySkimmingController *)self skimmingSlideshowEnabled])
      {
        [(PXCuratedLibrarySkimmingController *)self _startOrResumeSlideshowTouchesEnded:1];
      }

      else
      {
        [(PXCuratedLibrarySkimmingController *)self _enterIdleStatePersistSkimmingState:1];
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)startTouchingForAssetCollectionReference:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  v6 = [v5 canStartSkimming];

  if (v6)
  {
    v7 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    v8 = [v7 validatedAssetCollectionReference:v4];

    [(PXCuratedLibrarySkimmingController *)self setPreSkimmedAssetCollectionReference:v8];
    v10[0] = *MEMORY[0x1E695DA28];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(PXCuratedLibrarySkimmingController *)self performSelector:sel__enterTouchingStateForAssetCollectionReference_ withObject:v8 afterDelay:v9 inModes:0.15];

    v4 = v8;
  }
}

- (BOOL)canStartSkimming
{
  v2 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  v3 = [v2 canStartSkimming];

  return v3;
}

- (void)setSkimmingSlideshowEnabled:(BOOL)a3
{
  if (self->_skimmingSlideshowEnabled != a3)
  {
    self->_skimmingSlideshowEnabled = a3;
    if (a3)
    {
      [(PXCuratedLibrarySkimmingController *)self _updateSlideshow];
    }

    else
    {
      [(PXCuratedLibrarySkimmingController *)self _enterIdleStatePersistSkimmingState:?];
    }
  }
}

- (void)_slideshowTimerTick:(id)a3
{
  if ([(PXCuratedLibrarySkimmingController *)self state]== 1)
  {
    v4 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    v5 = [v4 viewModel];
    v6 = [v5 scrollRegime];

    if (!v6)
    {
      v7 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
      [v7 transitionToSlideshow];

      v8 = [(PXCuratedLibrarySkimmingController *)self skimmingIndexes];
      v9 = [v8 count];

      if (v9 >= 2)
      {
        v10 = [(PXCuratedLibrarySkimmingController *)self skimmingIndexes];
        v11 = [(PXCuratedLibrarySkimmingController *)self currentSkimmingIndex];
        if (v11 + 1 < [v10 count])
        {
          v12 = v11 + 1;
        }

        else
        {
          v12 = 0;
        }

        if (v12 < [v10 count])
        {
          [(PXCuratedLibrarySkimmingController *)self setCurrentSkimmingIndex:v12];
          v23 = 0u;
          v24 = 0u;
          v13 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
          v14 = v13;
          if (v13)
          {
            [v13 skimmedIndexPath];
          }

          else
          {
            v23 = 0u;
            v24 = 0u;
          }

          v15 = [(PXCuratedLibrarySkimmingController *)self skimmingDataSourceIdentifier];
          v16 = [v10 objectAtIndexedSubscript:v12];
          v17 = [v16 integerValue];
          v18 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
          *&v21 = v15;
          *(&v21 + 1) = v17;
          v19.f64[0] = NAN;
          v19.f64[1] = NAN;
          v22 = vnegq_f64(v19);
          [v18 setSkimmedIndexPath:&v21];

          v20 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
          if (v20)
          {
            [v20 skimmedIndexPath];
          }

          else
          {
            v21 = 0u;
            v22 = 0u;
          }

          PXSimpleIndexPathCompare();
        }
      }
    }
  }
}

- (void)_startOrResumeSlideshowTouchesEnded:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXCuratedLibrarySkimmingController *)self delegate];
  v6 = [v5 assetCollectionReferenceForSkimmingSlideshow:self];

  if (v6)
  {
    v7 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    v10 = [v7 validatedAssetCollectionReference:v6];

    if (v10)
    {
      v8 = [(PXCuratedLibrarySkimmingController *)self state];
      if (v8 < 2 || v8 - 2 <= 1 && (-[PXCuratedLibrarySkimmingController skimmingModel](self, "skimmingModel"), v9 = objc_claimAutoreleasedReturnValue(), [v9 persistSkimmingState], v9, v3))
      {
        [(PXCuratedLibrarySkimmingController *)self _enterSlideshowStateForAssetCollectionReference:v10];
      }

      else
      {
        [(PXCuratedLibrarySkimmingController *)self _enterIdleStatePersistSkimmingState:1];
      }
    }
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXCuratedLibraryViewModelObserverContext != a5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySkimmingController.m" lineNumber:85 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x2804) != 0)
  {
    v13 = v9;
    v10 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    v11 = [v10 viewModel];

    if (![v11 zoomLevelTransitionPhase] && objc_msgSend(v11, "scrollRegime") <= 1)
    {
      if ([(PXCuratedLibrarySkimmingController *)self skimmingSlideshowEnabled])
      {
        [(PXCuratedLibrarySkimmingController *)self _updateSlideshow];
      }

      else
      {
        [(PXCuratedLibrarySkimmingController *)self _enterIdleStatePersistSkimmingState:0];
      }
    }

    v9 = v13;
  }
}

- (PXCuratedLibrarySkimmingController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySkimmingController.m" lineNumber:62 description:{@"%s is not available as initializer", "-[PXCuratedLibrarySkimmingController init]"}];

  abort();
}

- (PXCuratedLibrarySkimmingController)initWithSkimmingModel:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PXCuratedLibrarySkimmingController;
  v6 = [(PXCuratedLibrarySkimmingController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_skimmingModel, a3);
    v8 = [v5 viewModel];
    [v8 registerChangeObserver:v7 context:PXCuratedLibraryViewModelObserverContext];

    v9 = +[PXCuratedLibrarySettings sharedInstance];
    -[PXCuratedLibrarySkimmingController setSkimmingSlideshowEnabled:](v7, "setSkimmingSlideshowEnabled:", [v9 enableSlideshowInYears]);
    [v9 slideshowTriggerDelay];
    v7->_slideshowTriggerDelay = v10;
    [v9 slideshowIntervalDelay];
    v7->_slideshowIntervalDelay = v11;
  }

  return v7;
}

+ (PXCuratedLibrarySkimmingController)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXCuratedLibrarySkimmingController.m" lineNumber:66 description:{@"%s is not available as initializer", "+[PXCuratedLibrarySkimmingController new]"}];

  abort();
}

@end