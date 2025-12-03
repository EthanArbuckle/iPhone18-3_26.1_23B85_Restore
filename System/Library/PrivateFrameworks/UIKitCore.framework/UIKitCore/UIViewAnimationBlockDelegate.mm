@interface UIViewAnimationBlockDelegate
+ (id)animationBlockDelegateWithDuration:(double)duration options:(unint64_t)options start:(id)start completion:(id)completion;
+ (void)setAnimationBlockDelegateWithDuration:(double)duration options:(unint64_t)options start:(id)start completion:(id)completion;
- (UIViewAnimationState)_animationState;
- (void)_didEndBlockAnimation:(id)animation finished:(id)finished context:(void *)context;
- (void)_sendDeferredCompletion:(id)completion;
- (void)_willBeginBlockAnimation:(id)animation context:(id)context;
@end

@implementation UIViewAnimationBlockDelegate

+ (id)animationBlockDelegateWithDuration:(double)duration options:(unint64_t)options start:(id)start completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  startCopy = start;
  v11 = objc_alloc_init(UIViewAnimationBlockDelegate);
  v11->_allowUserInteraction = (optionsCopy & 2) != 0;
  v11->_allowsUserInteractionToCutOffEndOfAnimation = (optionsCopy & 0x400) != 0;
  v11->_allowsHitTesting = (optionsCopy & 0x1000) != 0;
  v12 = [startCopy copy];

  start = v11->_start;
  v11->_start = v12;

  v14 = [completionCopy copy];
  completion = v11->_completion;
  v11->_completion = v14;

  v11->_isZeroDuration = duration <= 0.0;

  return v11;
}

+ (void)setAnimationBlockDelegateWithDuration:(double)duration options:(unint64_t)options start:(id)start completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  startCopy = start;
  v11 = objc_alloc_init(UIViewAnimationBlockDelegate);
  v11->_allowUserInteraction = (optionsCopy & 2) != 0;
  v11->_allowsUserInteractionToCutOffEndOfAnimation = (optionsCopy & 0x400) != 0;
  v11->_allowsHitTesting = (optionsCopy & 0x1000) != 0;
  v12 = [startCopy copy];

  start = v11->_start;
  v11->_start = v12;

  v14 = [completionCopy copy];
  completion = v11->_completion;
  v11->_completion = v14;

  v11->_isZeroDuration = duration <= 0.0;
  v16 = *(__currentViewAnimationState + 32);
  *(__currentViewAnimationState + 32) = v11;
  v18 = v11;

  v17 = __currentViewAnimationState;
  *(__currentViewAnimationState + 152) = sel__willBeginBlockAnimation_context_;
  *(v17 + 160) = sel__didEndBlockAnimation_finished_context_;
}

- (void)_willBeginBlockAnimation:(id)animation context:(id)context
{
  self->_didBeginBlockAnimation = 1;
  start = self->_start;
  if (start)
  {
    start[2]();
  }
}

- (void)_didEndBlockAnimation:(id)animation finished:(id)finished context:(void *)context
{
  v27 = *MEMORY[0x1E69E9840];
  finishedCopy = finished;
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
        __UIVIEW_IS_EXECUTING_ANIMATION_COMPLETION_BLOCK__([finishedCopy BOOLValue], v18);
      }
    }

    else if (dyld_program_sdk_at_least())
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __71__UIViewAnimationBlockDelegate__didEndBlockAnimation_finished_context___block_invoke;
      v19[3] = &unk_1E70F35B8;
      v19[4] = self;
      v20 = finishedCopy;
      dispatch_async(MEMORY[0x1E69E96A0], v19);
    }

    else
    {
      v25 = *MEMORY[0x1E695DA28];
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      [(UIViewAnimationBlockDelegate *)self performSelector:sel__sendDeferredCompletion_ withObject:finishedCopy afterDelay:v17 inModes:0.0];
    }
  }
}

- (void)_sendDeferredCompletion:(id)completion
{
  if (!self->_animationDidStopSent)
  {
    self->_animationDidStopSent = 1;
    completion = self->_completion;
    completionCopy = completion;
    v7 = _Block_copy(completion);
    bOOLValue = [completionCopy BOOLValue];

    __UIVIEW_IS_EXECUTING_ANIMATION_COMPLETION_BLOCK__(bOOLValue, v7);
  }
}

- (UIViewAnimationState)_animationState
{
  WeakRetained = objc_loadWeakRetained(&self->_animationState);

  return WeakRetained;
}

@end