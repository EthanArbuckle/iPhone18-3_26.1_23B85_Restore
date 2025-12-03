@interface WBSFluidProgressController
- (WBSFluidProgressController)init;
- (WBSFluidProgressControllerDelegate)delegate;
- (WBSFluidProgressControllerWindowDelegate)windowDelegate;
- (void)_sendUpdateFluidProgressToObservers:(id)observers progressState:(id)state source:(id)source updateAnimationPhase:(BOOL)phase;
- (void)_updateFluidProgressWithProgressStateSource:(id)source;
- (void)animationStepCompleted:(id)completed;
- (void)cancelFluidProgressWithProgressStateSource:(id)source;
- (void)finishFluidProgressWithProgressStateSource:(id)source;
- (void)frontmostTabDidChange;
- (void)progressStateSourceDidCommitLoad:(id)load loadingSingleResource:(BOOL)resource;
- (void)setDelegate:(id)delegate;
- (void)setProgressAnimationSuppressed:(BOOL)suppressed forProgressStateSource:(id)source animated:(BOOL)animated;
- (void)startFluidProgressWithProgressStateSource:(id)source;
- (void)startRocketEffectWithProgressStateSource:(id)source;
- (void)updateFluidProgressWithProgressStateSource:(id)source;
@end

@implementation WBSFluidProgressController

- (WBSFluidProgressController)init
{
  v7.receiver = self;
  v7.super_class = WBSFluidProgressController;
  v2 = [(WBSFluidProgressController *)&v7 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v5 = v2;
  }

  return v2;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [(WBSFluidProgressController *)self unregisterObserver:WeakRetained];
    }

    objc_storeWeak(&self->_delegate, obj);
    if (obj)
    {
      [(WBSFluidProgressController *)self registerObserver:obj];
    }
  }
}

- (void)startFluidProgressWithProgressStateSource:(id)source
{
  v22 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  progressState = [sourceCopy progressState];
  expectedOrCurrentURL = [sourceCopy expectedOrCurrentURL];
  safari_originalDataAsString = [expectedOrCurrentURL safari_originalDataAsString];

  loadURL = [progressState loadURL];
  v9 = [loadURL isEqualToString:safari_originalDataAsString];

  if (v9)
  {
    goto LABEL_2;
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);
  currentFluidProgressStateSource = [WeakRetained currentFluidProgressStateSource];

  if (progressState && currentFluidProgressStateSource == sourceCopy)
  {
    [sourceCopy clearFluidProgressState];
  }

  if ([sourceCopy createFluidProgressState] && currentFluidProgressStateSource == sourceCopy)
  {
    progressState2 = [sourceCopy progressState];

    [progressState2 setFluidProgressAnimationPhase:0];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v13 = self->_observers;
    v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v14)
    {
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v17 + 1) + 8 * v16++) fluidProgressController:self startFluidProgressBar:progressState2 animateFillFade:{1, v17}];
        }

        while (v14 != v16);
        v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }

    [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:sourceCopy];
  }

  else
  {
LABEL_2:
    progressState2 = progressState;
  }
}

- (void)updateFluidProgressWithProgressStateSource:(id)source
{
  sourceCopy = source;
  progressState = [sourceCopy progressState];
  if (sourceCopy)
  {
    if (progressState)
    {
      fluidProgressAnimationPhase = [progressState fluidProgressAnimationPhase];
      if ((fluidProgressAnimationPhase & 0xFFFFFFFFFFFFFFFELL) != 4 && ([progressState hasCompletedLoad] & 1) == 0)
      {
        [sourceCopy estimatedProgress];
        if (v6 == 1.0)
        {
          [(WBSFluidProgressController *)self startRocketEffectWithProgressStateSource:sourceCopy];
        }

        else
        {
          [progressState setWebKitProgressValue:?];
          if (fluidProgressAnimationPhase == 2)
          {
            [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:sourceCopy];
          }
        }
      }
    }
  }
}

- (void)finishFluidProgressWithProgressStateSource:(id)source
{
  sourceCopy = source;
  progressState = [sourceCopy progressState];
  v5 = progressState;
  if (progressState && ([progressState hasCommittedLoad] & 1) != 0)
  {
    [v5 setHasCompletedLoad:1];
    WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);
    currentFluidProgressStateSource = [WeakRetained currentFluidProgressStateSource];
    progressState2 = [currentFluidProgressStateSource progressState];

    if ([v5 fluidProgressAnimationPhase] != 4 || v5 != progressState2)
    {
      if ([v5 fluidProgressAnimationPhase] == 5 || v5 != progressState2 || (objc_msgSend(sourceCopy, "hasFailedURL") & 1) != 0)
      {
        if ([v5 fluidProgressAnimationPhase] == 4)
        {
          [v5 setFluidProgressAnimationPhase:5];
        }

        [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:sourceCopy];
      }

      else
      {
        [(WBSFluidProgressController *)self startRocketEffectWithProgressStateSource:sourceCopy];
      }
    }
  }
}

- (void)cancelFluidProgressWithProgressStateSource:(id)source
{
  sourceCopy = source;
  progressState = [sourceCopy progressState];
  v5 = progressState;
  if (progressState)
  {
    [progressState setHasCanceledLoad:1];
    [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:sourceCopy];
  }
}

- (void)startRocketEffectWithProgressStateSource:(id)source
{
  sourceCopy = source;
  progressState = [sourceCopy progressState];
  v5 = progressState;
  if (progressState)
  {
    if ([progressState hasCommittedLoad])
    {
      if (([sourceCopy hasFailedURL] & 1) == 0)
      {
        fluidProgressAnimationPhase = [v5 fluidProgressAnimationPhase];
        if ((fluidProgressAnimationPhase & 0xFFFFFFFFFFFFFFFELL) != 4)
        {
          WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);
          currentFluidProgressStateSource = [WeakRetained currentFluidProgressStateSource];

          if (currentFluidProgressStateSource == sourceCopy)
          {
            [v5 setFluidProgressAnimationPhase:4];
            if (fluidProgressAnimationPhase != 2)
            {
              goto LABEL_9;
            }
          }

          else
          {
            [v5 setFluidProgressAnimationPhase:5];
          }

          [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:sourceCopy];
        }
      }
    }
  }

LABEL_9:
}

- (void)frontmostTabDidChange
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);
  currentFluidProgressStateSource = [WeakRetained currentFluidProgressStateSource];
  progressState = [currentFluidProgressStateSource progressState];

  if (progressState)
  {
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v6 = self->_observers;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v7)
    {
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v21 + 1) + 8 * i) fluidProgressController:self startFluidProgressBar:progressState animateFillFade:0];
        }

        v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v7);
    }

    if (![progressState isFluidProgressStalled])
    {
      [progressState setShouldAnimateUsingInitialPosition:1];
      [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:0];
      goto LABEL_27;
    }

    [progressState setFluidProgressAnimationPhase:2];
    [progressState updateFluidProgressValue];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = self->_observers;
    v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v29 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v17 + 1) + 8 * j) fluidProgressController:self setProgressToCurrentPosition:{progressState, v17}];
        }

        v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v29 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v10 = self->_observers;
    v14 = [(NSHashTable *)v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v14)
    {
      v15 = *v26;
      do
      {
        for (k = 0; k != v14; ++k)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v25 + 1) + 8 * k) fluidProgressControllerFinishProgressBar:self animateFillFade:0];
        }

        v14 = [(NSHashTable *)v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v14);
    }
  }

LABEL_27:
}

- (void)animationStepCompleted:(id)completed
{
  completedCopy = completed;
  if ([completedCopy fluidProgressAnimationPhase] == 5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);
    [WeakRetained fluidProgressRocketAnimationDidComplete];
  }

  if ([completedCopy fluidProgressAnimationPhase] == 3)
  {
    [completedCopy setFluidProgressAnimationPhase:2];
  }

  [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:0];
}

- (void)progressStateSourceDidCommitLoad:(id)load loadingSingleResource:(BOOL)resource
{
  resourceCopy = resource;
  progressState = [load progressState];
  if (progressState)
  {
    if (resourceCopy)
    {
      [progressState setFluidProgressType:1];
    }

    [progressState setHasCommittedLoad:1];
  }
}

- (void)setProgressAnimationSuppressed:(BOOL)suppressed forProgressStateSource:(id)source animated:(BOOL)animated
{
  animatedCopy = animated;
  suppressedCopy = suppressed;
  v23 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (!sourceCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);
    currentFluidProgressStateSource = [WeakRetained currentFluidProgressStateSource];

    sourceCopy = currentFluidProgressStateSource;
  }

  v17 = sourceCopy;
  progressState = [sourceCopy progressState];
  if (progressState)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = self->_observers;
    v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v18 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 fluidProgressController:self suppressProgressAnimation:suppressedCopy duringFluidProgressState:progressState animated:animatedCopy];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    if ([progressState fluidProgressAnimationPhase] != 5)
    {
      [(WBSFluidProgressController *)self _sendUpdateFluidProgressToObservers:0 progressState:progressState source:v17 updateAnimationPhase:0];
    }
  }
}

- (WBSFluidProgressControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WBSFluidProgressControllerWindowDelegate)windowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);

  return WeakRetained;
}

- (void)_updateFluidProgressWithProgressStateSource:(id)source
{
  v20 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);
  v6 = WeakRetained;
  if (!sourceCopy)
  {
    sourceCopy = [WeakRetained currentFluidProgressStateSource];
  }

  progressState = [sourceCopy progressState];
  if (progressState)
  {
    currentFluidProgressStateSource = [v6 currentFluidProgressStateSource];
    progressState2 = [currentFluidProgressStateSource progressState];

    if ([progressState hasCompletedLoad] && objc_msgSend(progressState, "fluidProgressAnimationPhase") != 4 || objc_msgSend(progressState, "hasCanceledLoad"))
    {
      if (progressState2 == progressState)
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v10 = self->_observers;
        v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          v12 = *v16;
          do
          {
            v13 = 0;
            do
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v15 + 1) + 8 * v13++) fluidProgressControllerFinishProgressBar:self animateFillFade:{1, v15}];
            }

            while (v11 != v13);
            v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v11);
        }
      }

      [sourceCopy clearFluidProgressState];
    }

    else if (progressState2 == progressState)
    {
      fluidProgressAnimationPhase = [progressState fluidProgressAnimationPhase];
      if (fluidProgressAnimationPhase != 2 && fluidProgressAnimationPhase != 5)
      {
        [(WBSFluidProgressController *)self _sendUpdateFluidProgressToObservers:0 progressState:progressState source:sourceCopy updateAnimationPhase:1];
      }
    }
  }
}

- (void)_sendUpdateFluidProgressToObservers:(id)observers progressState:(id)state source:(id)source updateAnimationPhase:(BOOL)phase
{
  phaseCopy = phase;
  v45 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  stateCopy = state;
  val = source;
  if (phaseCopy)
  {
    [stateCopy updateNextFluidProgressAnimation];
  }

  fluidProgressAnimationPhase = [stateCopy fluidProgressAnimationPhase];
  v12 = dispatch_group_create();
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  observers = observersCopy;
  if (!observersCopy)
  {
    observers = self->_observers;
  }

  obj = observers;
  v14 = [(NSHashTable *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  v21 = phaseCopy;
  if (v14)
  {
    v15 = *v39;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v38 + 1) + 8 * i);
        dispatch_group_enter(v12);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __118__WBSFluidProgressController_Internal___sendUpdateFluidProgressToObservers_progressState_source_updateAnimationPhase___block_invoke;
        v35[3] = &unk_1E8284D98;
        v37 = v42;
        v36 = v12;
        [v17 fluidProgressController:self updateFluidProgressBar:stateCopy completion:v35];
      }

      v14 = [(NSHashTable *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v14);
  }

  objc_initWeak(&location, val);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __118__WBSFluidProgressController_Internal___sendUpdateFluidProgressToObservers_progressState_source_updateAnimationPhase___block_invoke_2;
  block[3] = &unk_1E8284DC0;
  v26 = stateCopy;
  v18 = stateCopy;
  objc_copyWeak(&v31, &location);
  v32 = fluidProgressAnimationPhase == 4;
  v33 = v21;
  selfCopy = self;
  v28 = observersCopy;
  v30 = v42;
  v29 = val;
  v19 = val;
  v20 = observersCopy;
  dispatch_group_notify(v12, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
  _Block_object_dispose(v42, 8);
}

void __118__WBSFluidProgressController_Internal___sendUpdateFluidProgressToObservers_progressState_source_updateAnimationPhase___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = [WeakRetained progressState];

  if (v2 == v4)
  {
    if (*(a1 + 80) == 1 && *(a1 + 81) == 1)
    {
      [*(a1 + 32) setFluidProgressAnimationPhase:5];
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        v5 = *(*(a1 + 40) + 8);
        v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v6)
        {
          v7 = *v10;
          do
          {
            v8 = 0;
            do
            {
              if (*v10 != v7)
              {
                objc_enumerationMutation(v5);
              }

              [*(*(&v9 + 1) + 8 * v8++) fluidProgressControllerFinishProgressBar:*(a1 + 40) animateFillFade:{1, v9}];
            }

            while (v6 != v8);
            v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
          }

          while (v6);
        }
      }
    }

    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      [*(a1 + 40) animationStepCompleted:*(a1 + 32)];
    }

    if ((*(a1 + 80) & 1) == 0 && [*(a1 + 32) hasCompletedLoad] && *(a1 + 81) == 1)
    {
      [*(a1 + 32) setFluidProgressAnimationPhase:4];
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        [*(a1 + 40) _sendUpdateFluidProgressToObservers:*(a1 + 48) progressState:*(a1 + 32) source:*(a1 + 56) updateAnimationPhase:*(a1 + 81)];
      }
    }
  }
}

@end