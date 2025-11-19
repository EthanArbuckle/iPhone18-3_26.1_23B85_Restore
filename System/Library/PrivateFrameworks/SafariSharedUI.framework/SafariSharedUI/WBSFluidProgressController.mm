@interface WBSFluidProgressController
- (WBSFluidProgressController)init;
- (WBSFluidProgressControllerDelegate)delegate;
- (WBSFluidProgressControllerWindowDelegate)windowDelegate;
- (void)_sendUpdateFluidProgressToObservers:(id)a3 progressState:(id)a4 source:(id)a5 updateAnimationPhase:(BOOL)a6;
- (void)_updateFluidProgressWithProgressStateSource:(id)a3;
- (void)animationStepCompleted:(id)a3;
- (void)cancelFluidProgressWithProgressStateSource:(id)a3;
- (void)finishFluidProgressWithProgressStateSource:(id)a3;
- (void)frontmostTabDidChange;
- (void)progressStateSourceDidCommitLoad:(id)a3 loadingSingleResource:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)setProgressAnimationSuppressed:(BOOL)a3 forProgressStateSource:(id)a4 animated:(BOOL)a5;
- (void)startFluidProgressWithProgressStateSource:(id)a3;
- (void)startRocketEffectWithProgressStateSource:(id)a3;
- (void)updateFluidProgressWithProgressStateSource:(id)a3;
@end

@implementation WBSFluidProgressController

- (WBSFluidProgressController)init
{
  v7.receiver = self;
  v7.super_class = WBSFluidProgressController;
  v2 = [(WBSFluidProgressController *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = v2;
  }

  return v2;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (void)startFluidProgressWithProgressStateSource:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 progressState];
  v6 = [v4 expectedOrCurrentURL];
  v7 = [v6 safari_originalDataAsString];

  v8 = [v5 loadURL];
  v9 = [v8 isEqualToString:v7];

  if (v9)
  {
    goto LABEL_2;
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);
  v12 = [WeakRetained currentFluidProgressStateSource];

  if (v5 && v12 == v4)
  {
    [v4 clearFluidProgressState];
  }

  if ([v4 createFluidProgressState] && v12 == v4)
  {
    v10 = [v4 progressState];

    [v10 setFluidProgressAnimationPhase:0];
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

          [*(*(&v17 + 1) + 8 * v16++) fluidProgressController:self startFluidProgressBar:v10 animateFillFade:{1, v17}];
        }

        while (v14 != v16);
        v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }

    [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:v4];
  }

  else
  {
LABEL_2:
    v10 = v5;
  }
}

- (void)updateFluidProgressWithProgressStateSource:(id)a3
{
  v7 = a3;
  v4 = [v7 progressState];
  if (v7)
  {
    if (v4)
    {
      v5 = [v4 fluidProgressAnimationPhase];
      if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 4 && ([v4 hasCompletedLoad] & 1) == 0)
      {
        [v7 estimatedProgress];
        if (v6 == 1.0)
        {
          [(WBSFluidProgressController *)self startRocketEffectWithProgressStateSource:v7];
        }

        else
        {
          [v4 setWebKitProgressValue:?];
          if (v5 == 2)
          {
            [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:v7];
          }
        }
      }
    }
  }
}

- (void)finishFluidProgressWithProgressStateSource:(id)a3
{
  v9 = a3;
  v4 = [v9 progressState];
  v5 = v4;
  if (v4 && ([v4 hasCommittedLoad] & 1) != 0)
  {
    [v5 setHasCompletedLoad:1];
    WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);
    v7 = [WeakRetained currentFluidProgressStateSource];
    v8 = [v7 progressState];

    if ([v5 fluidProgressAnimationPhase] != 4 || v5 != v8)
    {
      if ([v5 fluidProgressAnimationPhase] == 5 || v5 != v8 || (objc_msgSend(v9, "hasFailedURL") & 1) != 0)
      {
        if ([v5 fluidProgressAnimationPhase] == 4)
        {
          [v5 setFluidProgressAnimationPhase:5];
        }

        [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:v9];
      }

      else
      {
        [(WBSFluidProgressController *)self startRocketEffectWithProgressStateSource:v9];
      }
    }
  }
}

- (void)cancelFluidProgressWithProgressStateSource:(id)a3
{
  v6 = a3;
  v4 = [v6 progressState];
  v5 = v4;
  if (v4)
  {
    [v4 setHasCanceledLoad:1];
    [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:v6];
  }
}

- (void)startRocketEffectWithProgressStateSource:(id)a3
{
  v9 = a3;
  v4 = [v9 progressState];
  v5 = v4;
  if (v4)
  {
    if ([v4 hasCommittedLoad])
    {
      if (([v9 hasFailedURL] & 1) == 0)
      {
        v6 = [v5 fluidProgressAnimationPhase];
        if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 4)
        {
          WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);
          v8 = [WeakRetained currentFluidProgressStateSource];

          if (v8 == v9)
          {
            [v5 setFluidProgressAnimationPhase:4];
            if (v6 != 2)
            {
              goto LABEL_9;
            }
          }

          else
          {
            [v5 setFluidProgressAnimationPhase:5];
          }

          [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:v9];
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
  v4 = [WeakRetained currentFluidProgressStateSource];
  v5 = [v4 progressState];

  if (v5)
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

          [*(*(&v21 + 1) + 8 * i) fluidProgressController:self startFluidProgressBar:v5 animateFillFade:0];
        }

        v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v7);
    }

    if (![v5 isFluidProgressStalled])
    {
      [v5 setShouldAnimateUsingInitialPosition:1];
      [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:0];
      goto LABEL_27;
    }

    [v5 setFluidProgressAnimationPhase:2];
    [v5 updateFluidProgressValue];
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

          [*(*(&v17 + 1) + 8 * j) fluidProgressController:self setProgressToCurrentPosition:{v5, v17}];
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

- (void)animationStepCompleted:(id)a3
{
  v5 = a3;
  if ([v5 fluidProgressAnimationPhase] == 5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);
    [WeakRetained fluidProgressRocketAnimationDidComplete];
  }

  if ([v5 fluidProgressAnimationPhase] == 3)
  {
    [v5 setFluidProgressAnimationPhase:2];
  }

  [(WBSFluidProgressController *)self _updateFluidProgressWithProgressStateSource:0];
}

- (void)progressStateSourceDidCommitLoad:(id)a3 loadingSingleResource:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 progressState];
  if (v5)
  {
    if (v4)
    {
      [v5 setFluidProgressType:1];
    }

    [v5 setHasCommittedLoad:1];
  }
}

- (void)setProgressAnimationSuppressed:(BOOL)a3 forProgressStateSource:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (!v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);
    v10 = [WeakRetained currentFluidProgressStateSource];

    v8 = v10;
  }

  v17 = v8;
  v11 = [v8 progressState];
  if (v11)
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
            [v16 fluidProgressController:self suppressProgressAnimation:v6 duringFluidProgressState:v11 animated:v5];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    if ([v11 fluidProgressAnimationPhase] != 5)
    {
      [(WBSFluidProgressController *)self _sendUpdateFluidProgressToObservers:0 progressState:v11 source:v17 updateAnimationPhase:0];
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

- (void)_updateFluidProgressWithProgressStateSource:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowDelegate);
  v6 = WeakRetained;
  if (!v4)
  {
    v4 = [WeakRetained currentFluidProgressStateSource];
  }

  v7 = [v4 progressState];
  if (v7)
  {
    v8 = [v6 currentFluidProgressStateSource];
    v9 = [v8 progressState];

    if ([v7 hasCompletedLoad] && objc_msgSend(v7, "fluidProgressAnimationPhase") != 4 || objc_msgSend(v7, "hasCanceledLoad"))
    {
      if (v9 == v7)
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

      [v4 clearFluidProgressState];
    }

    else if (v9 == v7)
    {
      v14 = [v7 fluidProgressAnimationPhase];
      if (v14 != 2 && v14 != 5)
      {
        [(WBSFluidProgressController *)self _sendUpdateFluidProgressToObservers:0 progressState:v7 source:v4 updateAnimationPhase:1];
      }
    }
  }
}

- (void)_sendUpdateFluidProgressToObservers:(id)a3 progressState:(id)a4 source:(id)a5 updateAnimationPhase:(BOOL)a6
{
  v6 = a6;
  v45 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  val = a5;
  if (v6)
  {
    [v10 updateNextFluidProgressAnimation];
  }

  v11 = [v10 fluidProgressAnimationPhase];
  v12 = dispatch_group_create();
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  observers = v9;
  if (!v9)
  {
    observers = self->_observers;
  }

  obj = observers;
  v14 = [(NSHashTable *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  v21 = v6;
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
        [v17 fluidProgressController:self updateFluidProgressBar:v10 completion:v35];
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
  v26 = v10;
  v18 = v10;
  objc_copyWeak(&v31, &location);
  v32 = v11 == 4;
  v33 = v21;
  v27 = self;
  v28 = v9;
  v30 = v42;
  v29 = val;
  v19 = val;
  v20 = v9;
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