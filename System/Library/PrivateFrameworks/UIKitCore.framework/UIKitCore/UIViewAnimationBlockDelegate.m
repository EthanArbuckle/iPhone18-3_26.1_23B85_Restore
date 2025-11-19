@interface UIViewAnimationBlockDelegate
+ (id)animationBlockDelegateWithDuration:(double)a3 options:(unint64_t)a4 start:(id)a5 completion:(id)a6;
+ (void)setAnimationBlockDelegateWithDuration:(double)a3 options:(unint64_t)a4 start:(id)a5 completion:(id)a6;
- (UIViewAnimationState)_animationState;
- (void)_didEndBlockAnimation:(id)a3 finished:(id)a4 context:(void *)a5;
- (void)_sendDeferredCompletion:(id)a3;
- (void)_willBeginBlockAnimation:(id)a3 context:(id)a4;
@end

@implementation UIViewAnimationBlockDelegate

+ (id)animationBlockDelegateWithDuration:(double)a3 options:(unint64_t)a4 start:(id)a5 completion:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = a5;
  v11 = objc_alloc_init(UIViewAnimationBlockDelegate);
  v11->_allowUserInteraction = (v7 & 2) != 0;
  v11->_allowsUserInteractionToCutOffEndOfAnimation = (v7 & 0x400) != 0;
  v11->_allowsHitTesting = (v7 & 0x1000) != 0;
  v12 = [v10 copy];

  start = v11->_start;
  v11->_start = v12;

  v14 = [v9 copy];
  completion = v11->_completion;
  v11->_completion = v14;

  v11->_isZeroDuration = a3 <= 0.0;

  return v11;
}

+ (void)setAnimationBlockDelegateWithDuration:(double)a3 options:(unint64_t)a4 start:(id)a5 completion:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = a5;
  v11 = objc_alloc_init(UIViewAnimationBlockDelegate);
  v11->_allowUserInteraction = (v7 & 2) != 0;
  v11->_allowsUserInteractionToCutOffEndOfAnimation = (v7 & 0x400) != 0;
  v11->_allowsHitTesting = (v7 & 0x1000) != 0;
  v12 = [v10 copy];

  start = v11->_start;
  v11->_start = v12;

  v14 = [v9 copy];
  completion = v11->_completion;
  v11->_completion = v14;

  v11->_isZeroDuration = a3 <= 0.0;
  v16 = *(__currentViewAnimationState + 32);
  *(__currentViewAnimationState + 32) = v11;
  v18 = v11;

  v17 = __currentViewAnimationState;
  *(__currentViewAnimationState + 152) = sel__willBeginBlockAnimation_context_;
  *(v17 + 160) = sel__didEndBlockAnimation_finished_context_;
}

- (void)_willBeginBlockAnimation:(id)a3 context:(id)a4
{
  self->_didBeginBlockAnimation = 1;
  start = self->_start;
  if (start)
  {
    start[2]();
  }
}

- (void)_didEndBlockAnimation:(id)a3 finished:(id)a4 context:(void *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_systemPostAnimationActions;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v21 + 1) + 8 * i) + 16))();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  [(NSMutableArray *)self->_systemPostAnimationActions removeAllObjects];
  if (self->_completion)
  {
    if (self->_didBeginBlockAnimation && !self->_isZeroDuration || [(UIViewAnimationBlockDelegate *)self _forcingImmediateCompletion])
    {
      if (!self->_animationDidStopSent)
      {
        WeakRetained = objc_loadWeakRetained(&self->_animationState);

        if (WeakRetained)
        {
          v13 = objc_loadWeakRetained(&self->_animationState);
          v14 = objc_loadWeakRetained(v13 + 35);
          if (v14)
          {
            v15 = objc_loadWeakRetained(&self->_animationState);
            v16 = objc_loadWeakRetained(v15 + 35);
            self->_animationDidStopSent = [v16 _pausesOnCompletion] ^ 1;
          }

          else
          {
            self->_animationDidStopSent = 1;
          }
        }

        else
        {
          self->_animationDidStopSent = 1;
        }

        v18 = _Block_copy(self->_completion);
        __UIVIEW_IS_EXECUTING_ANIMATION_COMPLETION_BLOCK__([v6 BOOLValue], v18);
      }
    }

    else if (dyld_program_sdk_at_least())
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __71__UIViewAnimationBlockDelegate__didEndBlockAnimation_finished_context___block_invoke;
      v19[3] = &unk_1E70F35B8;
      v19[4] = self;
      v20 = v6;
      dispatch_async(MEMORY[0x1E69E96A0], v19);
    }

    else
    {
      v25 = *MEMORY[0x1E695DA28];
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      [(UIViewAnimationBlockDelegate *)self performSelector:sel__sendDeferredCompletion_ withObject:v6 afterDelay:v17 inModes:0.0];
    }
  }
}

- (void)_sendDeferredCompletion:(id)a3
{
  if (!self->_animationDidStopSent)
  {
    self->_animationDidStopSent = 1;
    completion = self->_completion;
    v5 = a3;
    v7 = _Block_copy(completion);
    v6 = [v5 BOOLValue];

    __UIVIEW_IS_EXECUTING_ANIMATION_COMPLETION_BLOCK__(v6, v7);
  }
}

- (UIViewAnimationState)_animationState
{
  WeakRetained = objc_loadWeakRetained(&self->_animationState);

  return WeakRetained;
}

@end