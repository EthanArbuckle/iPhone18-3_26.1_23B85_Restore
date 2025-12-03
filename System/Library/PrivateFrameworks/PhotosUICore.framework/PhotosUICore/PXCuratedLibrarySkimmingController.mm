@interface PXCuratedLibrarySkimmingController
+ (PXCuratedLibrarySkimmingController)new;
- (BOOL)canStartSkimming;
- (BOOL)endTouchingGestureEnded:(BOOL)ended;
- (PXCuratedLibrarySkimmingController)init;
- (PXCuratedLibrarySkimmingController)initWithSkimmingModel:(id)model;
- (PXCuratedLibrarySkimmingControllerDelegate)delegate;
- (void)_adoptIndexesFromSkimmingModel;
- (void)_cancelEnteringTouchingState;
- (void)_cleanupFeedbackGenerator;
- (void)_ensureFeedbackGenerator;
- (void)_enterIdleStatePersistSkimmingState:(BOOL)state;
- (void)_enterSlideshowStateForAssetCollectionReference:(id)reference;
- (void)_enterTouchingStateForAssetCollectionReference:(id)reference;
- (void)_generateFeedbackForSkimmingGesture;
- (void)_slideshowTimerTick:(id)tick;
- (void)_startOrResumeSlideshowTouchesEnded:(BOOL)ended;
- (void)_stopSlideshow;
- (void)_updateSlideshow;
- (void)endPanning;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setSkimmingSlideshowEnabled:(BOOL)enabled;
- (void)setState:(int64_t)state;
- (void)startPanningForAssetCollectionReference:(id)reference;
- (void)startTouchingForAssetCollectionReference:(id)reference;
- (void)updatePanningWithTranslation:(CGPoint)translation;
@end

@implementation PXCuratedLibrarySkimmingController

- (void)_updateSlideshow
{
  if ([(PXCuratedLibrarySkimmingController *)self skimmingSlideshowEnabled])
  {
    skimmingModel = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    canStartSkimming = [skimmingModel canStartSkimming];

    if (canStartSkimming)
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
  preSkimmedAssetCollectionReference = [(PXCuratedLibrarySkimmingController *)self preSkimmedAssetCollectionReference];

  if (preSkimmedAssetCollectionReference)
  {
    v4 = MEMORY[0x1E69E58C0];
    preSkimmedAssetCollectionReference2 = [(PXCuratedLibrarySkimmingController *)self preSkimmedAssetCollectionReference];
    [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel__enterTouchingStateForAssetCollectionReference_ object:preSkimmedAssetCollectionReference2];

    [(PXCuratedLibrarySkimmingController *)self setPreSkimmedAssetCollectionReference:0];
  }
}

- (PXCuratedLibrarySkimmingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setState:(int64_t)state
{
  state = self->_state;
  if (state != state)
  {
    self->_state = state;
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
    if ((state - 2) < 2)
    {
      v9 = 1;
      v10 = 0.2;
    }

    else
    {
      v9 = 0;
      if (state <= 1)
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
      slideshowTimer = [(PXCuratedLibrarySkimmingController *)self slideshowTimer];
      [slideshowTimer invalidate];

      [(PXCuratedLibrarySkimmingController *)self setSlideshowTimer:0];
      if (state == 1)
      {
        v12 = objc_alloc(MEMORY[0x1E695DFF0]);
        v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:self->_slideshowTriggerDelay];
        v14 = [v12 initWithFireDate:v13 interval:self target:sel__slideshowTimerTick_ selector:0 userInfo:1 repeats:self->_slideshowIntervalDelay];

        [(PXCuratedLibrarySkimmingController *)self setSlideshowTimer:v14];
        currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
        [currentRunLoop addTimer:v14 forMode:*MEMORY[0x1E695D918]];
      }
    }

    if ((v8 & v9) == 1)
    {
      delegate = [(PXCuratedLibrarySkimmingController *)self delegate];
      skimmingModel = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
      containingAssetCollectionReference = [skimmingModel containingAssetCollectionReference];
      [delegate skimmingController:self willStartSkimmingAssetCollectionReference:containingAssetCollectionReference animationDuration:v10];
    }

    else
    {
      if ((v8 | v9))
      {
        return;
      }

      delegate = [(PXCuratedLibrarySkimmingController *)self delegate];
      [delegate skimmingControllerDidStopSkimming:self animationDuration:v7];
    }
  }
}

- (void)_enterIdleStatePersistSkimmingState:(BOOL)state
{
  stateCopy = state;
  if ([(PXCuratedLibrarySkimmingController *)self state])
  {
    skimmingModel = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    [skimmingModel tearDownAfterSkimmingShowHints:0 persistState:stateCopy];

    [(PXCuratedLibrarySkimmingController *)self _cancelEnteringTouchingState];
    [(PXCuratedLibrarySkimmingController *)self setSkimmingIndexes:0];
    [(PXCuratedLibrarySkimmingController *)self setCurrentSkimmingIndex:0x7FFFFFFFFFFFFFFFLL];
    [(PXCuratedLibrarySkimmingController *)self setSkimmingDataSourceIdentifier:0];

    [(PXCuratedLibrarySkimmingController *)self setState:0];
  }
}

- (void)_adoptIndexesFromSkimmingModel
{
  skimmingModel = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  indexPathSetForSkimming = [skimmingModel indexPathSetForSkimming];
  v14 = 0u;
  v15 = 0u;
  if (skimmingModel)
  {
    [skimmingModel initialIndexPath];
  }

  if (indexPathSetForSkimming)
  {
    [indexPathSetForSkimming anySectionIndexPath];
    v5 = v12;
  }

  else
  {
    v5 = 0;
    v12 = 0u;
    v13 = 0u;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [indexPathSetForSkimming sectionIndexSetForDataSourceIdentifier:v5];
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

- (void)_enterTouchingStateForAssetCollectionReference:(id)reference
{
  referenceCopy = reference;
  v5 = referenceCopy;
  if (referenceCopy)
  {
    [referenceCopy indexPath];
  }

  else
  {
    memset(&v12[2], 0, 32);
  }

  skimmingModel = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  containingAssetCollectionReference = [skimmingModel containingAssetCollectionReference];
  v8 = containingAssetCollectionReference;
  if (containingAssetCollectionReference)
  {
    [containingAssetCollectionReference indexPath];
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
      skimmingModel2 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
      [skimmingModel2 transitionToSkimming];

      goto LABEL_14;
    }
  }

  else
  {
  }

  if ([(PXCuratedLibrarySkimmingController *)self state]<= 2)
  {
    skimmingModel3 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    [skimmingModel3 prepareForSkimmingInAssetCollectionReference:v5];

    [(PXCuratedLibrarySkimmingController *)self _adoptIndexesFromSkimmingModel];
    [(PXCuratedLibrarySkimmingController *)self setState:2];
  }

LABEL_14:
}

- (void)_enterSlideshowStateForAssetCollectionReference:(id)reference
{
  referenceCopy = reference;
  v5 = referenceCopy;
  if (referenceCopy)
  {
    [referenceCopy indexPath];
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  skimmingModel = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  containingAssetCollectionReference = [skimmingModel containingAssetCollectionReference];
  v8 = containingAssetCollectionReference;
  if (containingAssetCollectionReference)
  {
    [containingAssetCollectionReference indexPath];
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
      state = [(PXCuratedLibrarySkimmingController *)self state];
      if (state <= 3 && state != 1)
      {
        [(PXCuratedLibrarySkimmingController *)self setState:1];
        skimmingModel2 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
        [skimmingModel2 transitionToSlideshow];
      }

      goto LABEL_27;
    }
  }

  else
  {
  }

  skimmingModel3 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  v13 = skimmingModel3;
  if (skimmingModel3)
  {
    [skimmingModel3 skimmedIndexPath];
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  skimmingModel4 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  v15 = skimmingModel4;
  if (skimmingModel4)
  {
    [skimmingModel4 initialIndexPath];
    v16 = *&v21[0];
  }

  else
  {
    v16 = 0;
    memset(v21, 0, sizeof(v21));
  }

  v17 = *&v22[0] != v16 || *(v22 + 8) != *(v21 + 8) || *(&v22[1] + 1) != *(&v21[1] + 1);
  [(PXCuratedLibrarySkimmingController *)self _enterIdleStatePersistSkimmingState:v17, *&v21[0]];

  assetCollection = [v5 assetCollection];
  px_highlightKind = [assetCollection px_highlightKind];

  if (px_highlightKind == 2 && [(PXCuratedLibrarySkimmingController *)self state]<= 1)
  {
    skimmingModel5 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    [skimmingModel5 prepareForSlideshowForAssetCollectionReference:v5];

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

- (void)updatePanningWithTranslation:(CGPoint)translation
{
  x = translation.x;
  if ([(PXCuratedLibrarySkimmingController *)self state:translation.x]== 3)
  {
    skimmingModel = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    [skimmingModel transitionToSkimming];

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

- (void)startPanningForAssetCollectionReference:(id)reference
{
  referenceCopy = reference;
  skimmingModel = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  canStartSkimming = [skimmingModel canStartSkimming];

  if (canStartSkimming)
  {
    skimmingModel2 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    v9 = [skimmingModel2 validatedAssetCollectionReference:referenceCopy];

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
    v8 = referenceCopy;
  }
}

- (BOOL)endTouchingGestureEnded:(BOOL)ended
{
  endedCopy = ended;
  [(PXCuratedLibrarySkimmingController *)self _cancelEnteringTouchingState];
  if (endedCopy)
  {
    if ([(PXCuratedLibrarySkimmingController *)self state]== 2)
    {
      LOBYTE(endedCopy) = 1;
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
      LOBYTE(endedCopy) = 0;
    }
  }

  return endedCopy;
}

- (void)startTouchingForAssetCollectionReference:(id)reference
{
  v10[1] = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  skimmingModel = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  canStartSkimming = [skimmingModel canStartSkimming];

  if (canStartSkimming)
  {
    skimmingModel2 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    v8 = [skimmingModel2 validatedAssetCollectionReference:referenceCopy];

    [(PXCuratedLibrarySkimmingController *)self setPreSkimmedAssetCollectionReference:v8];
    v10[0] = *MEMORY[0x1E695DA28];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(PXCuratedLibrarySkimmingController *)self performSelector:sel__enterTouchingStateForAssetCollectionReference_ withObject:v8 afterDelay:v9 inModes:0.15];

    referenceCopy = v8;
  }
}

- (BOOL)canStartSkimming
{
  skimmingModel = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
  canStartSkimming = [skimmingModel canStartSkimming];

  return canStartSkimming;
}

- (void)setSkimmingSlideshowEnabled:(BOOL)enabled
{
  if (self->_skimmingSlideshowEnabled != enabled)
  {
    self->_skimmingSlideshowEnabled = enabled;
    if (enabled)
    {
      [(PXCuratedLibrarySkimmingController *)self _updateSlideshow];
    }

    else
    {
      [(PXCuratedLibrarySkimmingController *)self _enterIdleStatePersistSkimmingState:?];
    }
  }
}

- (void)_slideshowTimerTick:(id)tick
{
  if ([(PXCuratedLibrarySkimmingController *)self state]== 1)
  {
    skimmingModel = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    viewModel = [skimmingModel viewModel];
    scrollRegime = [viewModel scrollRegime];

    if (!scrollRegime)
    {
      skimmingModel2 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
      [skimmingModel2 transitionToSlideshow];

      skimmingIndexes = [(PXCuratedLibrarySkimmingController *)self skimmingIndexes];
      v9 = [skimmingIndexes count];

      if (v9 >= 2)
      {
        skimmingIndexes2 = [(PXCuratedLibrarySkimmingController *)self skimmingIndexes];
        currentSkimmingIndex = [(PXCuratedLibrarySkimmingController *)self currentSkimmingIndex];
        if (currentSkimmingIndex + 1 < [skimmingIndexes2 count])
        {
          v12 = currentSkimmingIndex + 1;
        }

        else
        {
          v12 = 0;
        }

        if (v12 < [skimmingIndexes2 count])
        {
          [(PXCuratedLibrarySkimmingController *)self setCurrentSkimmingIndex:v12];
          v23 = 0u;
          v24 = 0u;
          skimmingModel3 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
          v14 = skimmingModel3;
          if (skimmingModel3)
          {
            [skimmingModel3 skimmedIndexPath];
          }

          else
          {
            v23 = 0u;
            v24 = 0u;
          }

          skimmingDataSourceIdentifier = [(PXCuratedLibrarySkimmingController *)self skimmingDataSourceIdentifier];
          v16 = [skimmingIndexes2 objectAtIndexedSubscript:v12];
          integerValue = [v16 integerValue];
          skimmingModel4 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
          *&v21 = skimmingDataSourceIdentifier;
          *(&v21 + 1) = integerValue;
          v19.f64[0] = NAN;
          v19.f64[1] = NAN;
          v22 = vnegq_f64(v19);
          [skimmingModel4 setSkimmedIndexPath:&v21];

          skimmingModel5 = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
          if (skimmingModel5)
          {
            [skimmingModel5 skimmedIndexPath];
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

- (void)_startOrResumeSlideshowTouchesEnded:(BOOL)ended
{
  endedCopy = ended;
  delegate = [(PXCuratedLibrarySkimmingController *)self delegate];
  v6 = [delegate assetCollectionReferenceForSkimmingSlideshow:self];

  if (v6)
  {
    skimmingModel = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    v10 = [skimmingModel validatedAssetCollectionReference:v6];

    if (v10)
    {
      state = [(PXCuratedLibrarySkimmingController *)self state];
      if (state < 2 || state - 2 <= 1 && (-[PXCuratedLibrarySkimmingController skimmingModel](self, "skimmingModel"), v9 = objc_claimAutoreleasedReturnValue(), [v9 persistSkimmingState], v9, endedCopy))
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXCuratedLibraryViewModelObserverContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySkimmingController.m" lineNumber:85 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x2804) != 0)
  {
    v13 = observableCopy;
    skimmingModel = [(PXCuratedLibrarySkimmingController *)self skimmingModel];
    viewModel = [skimmingModel viewModel];

    if (![viewModel zoomLevelTransitionPhase] && objc_msgSend(viewModel, "scrollRegime") <= 1)
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

    observableCopy = v13;
  }
}

- (PXCuratedLibrarySkimmingController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySkimmingController.m" lineNumber:62 description:{@"%s is not available as initializer", "-[PXCuratedLibrarySkimmingController init]"}];

  abort();
}

- (PXCuratedLibrarySkimmingController)initWithSkimmingModel:(id)model
{
  modelCopy = model;
  v13.receiver = self;
  v13.super_class = PXCuratedLibrarySkimmingController;
  v6 = [(PXCuratedLibrarySkimmingController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_skimmingModel, model);
    viewModel = [modelCopy viewModel];
    [viewModel registerChangeObserver:v7 context:PXCuratedLibraryViewModelObserverContext];

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySkimmingController.m" lineNumber:66 description:{@"%s is not available as initializer", "+[PXCuratedLibrarySkimmingController new]"}];

  abort();
}

@end