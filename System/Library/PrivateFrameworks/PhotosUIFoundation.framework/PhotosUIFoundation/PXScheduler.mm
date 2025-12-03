@interface PXScheduler
+ (PXScheduler)sharedScheduler;
- (PXScheduler)init;
- (id)startTrackedAnimationWithLabel:(id)label;
- (void)_performBlock:(id)block;
- (void)_performPendingBlocks;
- (void)_performPendingBlocksIfNeeded;
- (void)dispatchGraduallyOnMainThreadWhenNotAnimating:(id)animating;
- (void)dispatchInMainTransaction:(id)transaction;
- (void)dispatchInMainTransactionAfterDelay:(double)delay block:(id)block;
- (void)dispatchOnMainThreadWhenNotScrolling:(id)scrolling;
- (void)dispatchOnMainThreadWhenNotScrollingAfterDelay:(double)delay block:(id)block;
- (void)endTrackedAnimation:(id)animation;
- (void)performPendingBlocksAfterAnimationIfPossible;
- (void)schedulePerformPendingBlocksAfterAnimation;
@end

@implementation PXScheduler

+ (PXScheduler)sharedScheduler
{
  if (sharedScheduler_onceToken_15040 != -1)
  {
    dispatch_once(&sharedScheduler_onceToken_15040, &__block_literal_global_15041);
  }

  v3 = sharedScheduler_scheduler_15042;

  return v3;
}

uint64_t __30__PXScheduler_sharedScheduler__block_invoke()
{
  sharedScheduler_scheduler_15042 = objc_alloc_init(PXScheduler);

  return MEMORY[0x1EEE66BB8]();
}

- (PXScheduler)init
{
  v10.receiver = self;
  v10.super_class = PXScheduler;
  v2 = [(PXScheduler *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingBlocks = v2->_pendingBlocks;
    v2->_pendingBlocks = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    performWhenNotAnimatingPendingBlocks = v2->_performWhenNotAnimatingPendingBlocks;
    v2->_performWhenNotAnimatingPendingBlocks = v5;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    activeAnimations = v2->_activeAnimations;
    v2->_activeAnimations = weakObjectsHashTable;
  }

  return v2;
}

- (void)schedulePerformPendingBlocksAfterAnimation
{
  if (!self->_hasPendingPerformInDefaultRunLoopModeForAnimationTracking)
  {
    self->_hasPendingPerformInDefaultRunLoopModeForAnimationTracking = 1;
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __57__PXScheduler_schedulePerformPendingBlocksAfterAnimation__block_invoke;
    v2[3] = &unk_1E7BB8880;
    v2[4] = self;
    px_perform_on_main_runloop(2, v2);
  }
}

- (void)_performPendingBlocksIfNeeded
{
  if ([(NSMutableArray *)self->_pendingBlocks count]&& !self->_isPerformingPendingBlocks)
  {

    [(PXScheduler *)self _performPendingBlocks];
  }
}

uint64_t __57__PXScheduler_schedulePerformPendingBlocksAfterAnimation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__PXScheduler_schedulePerformPendingBlocksAfterAnimation__block_invoke_2;
  v3[3] = &unk_1E7BB8880;
  v3[4] = v1;
  return [v1 dispatchOnMainThreadWhenNotScrollingAfterDelay:v3 block:0.05];
}

- (void)performPendingBlocksAfterAnimationIfPossible
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_performWhenNotAnimatingPendingBlocks count])
  {
    allObjects = [(NSHashTable *)self->_activeAnimations allObjects];
    v4 = [allObjects count];

    if (!v4)
    {
      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      currentMode = [mainRunLoop currentMode];
      v7 = [currentMode isEqualToString:*MEMORY[0x1E695D918]];

      if (v7)
      {
        memset(v12, 0, sizeof(v12));
        v8 = [(NSMutableArray *)self->_performWhenNotAnimatingPendingBlocks copy];
        if ([v8 countByEnumeratingWithState:v12 objects:v13 count:16])
        {
          v9 = **(&v12[0] + 1);
          performWhenNotAnimatingPendingBlocks = self->_performWhenNotAnimatingPendingBlocks;
          v11 = _Block_copy(**(&v12[0] + 1));
          [(NSMutableArray *)performWhenNotAnimatingPendingBlocks removeObject:v11];

          (*(v9 + 16))(v9);
        }

        if ([(NSMutableArray *)self->_performWhenNotAnimatingPendingBlocks count])
        {
          [(PXScheduler *)self schedulePerformPendingBlocksAfterAnimation];
        }
      }

      else
      {

        [(PXScheduler *)self schedulePerformPendingBlocksAfterAnimation];
      }
    }
  }
}

- (void)endTrackedAnimation:(id)animation
{
  animationCopy = animation;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__PXScheduler_endTrackedAnimation___block_invoke;
  v6[3] = &unk_1E7BB7DD0;
  v6[4] = self;
  v7 = animationCopy;
  v5 = animationCopy;
  px_dispatch_on_main_queue(v6);
}

uint64_t __35__PXScheduler_endTrackedAnimation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 schedulePerformPendingBlocksAfterAnimation];
}

- (id)startTrackedAnimationWithLabel:(id)label
{
  labelCopy = label;
  v5 = [[PXSchedulerTrackedAnimation alloc] initWithScheduler:self label:labelCopy];

  [(NSHashTable *)self->_activeAnimations addObject:v5];

  return v5;
}

- (void)dispatchGraduallyOnMainThreadWhenNotAnimating:(id)animating
{
  animatingCopy = animating;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PXScheduler_dispatchGraduallyOnMainThreadWhenNotAnimating___block_invoke;
  v6[3] = &unk_1E7BB7DA8;
  v6[4] = self;
  v7 = animatingCopy;
  v5 = animatingCopy;
  px_dispatch_on_main_queue(v6);
}

uint64_t __61__PXScheduler_dispatchGraduallyOnMainThreadWhenNotAnimating___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = _Block_copy(*(a1 + 40));
  [v2 addObject:v3];

  v4 = *(a1 + 32);

  return [v4 schedulePerformPendingBlocksAfterAnimation];
}

- (void)_performBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block);
  }
}

- (void)dispatchOnMainThreadWhenNotScrollingAfterDelay:(double)delay block:(id)block
{
  blockCopy = block;
  v7 = dispatch_time(0, (delay * 1000000000.0));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__PXScheduler_dispatchOnMainThreadWhenNotScrollingAfterDelay_block___block_invoke;
  v9[3] = &unk_1E7BB7DA8;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_after(v7, MEMORY[0x1E69E96A0], v9);
}

- (void)dispatchOnMainThreadWhenNotScrolling:(id)scrolling
{
  v6[1] = *MEMORY[0x1E69E9840];
  v4 = _Block_copy(scrolling);
  v6[0] = *MEMORY[0x1E695D918];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(PXScheduler *)self performSelectorOnMainThread:sel__performBlock_ withObject:v4 waitUntilDone:0 modes:v5];
}

- (void)_performPendingBlocks
{
  v14 = *MEMORY[0x1E69E9840];
  isPerformingPendingBlocks = self->_isPerformingPendingBlocks;
  self->_isPerformingPendingBlocks = 1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_pendingBlocks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_pendingBlocks removeAllObjects];
  self->_isPerformingPendingBlocks = isPerformingPendingBlocks;
}

- (void)dispatchInMainTransactionAfterDelay:(double)delay block:(id)block
{
  blockCopy = block;
  v7 = dispatch_time(0, (delay * 1000000000.0));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__PXScheduler_dispatchInMainTransactionAfterDelay_block___block_invoke;
  v9[3] = &unk_1E7BB7DA8;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_after(v7, MEMORY[0x1E69E96A0], v9);
}

- (void)dispatchInMainTransaction:(id)transaction
{
  transactionCopy = transaction;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__PXScheduler_dispatchInMainTransaction___block_invoke;
  v6[3] = &unk_1E7BB7DA8;
  v6[4] = self;
  v7 = transactionCopy;
  v5 = transactionCopy;
  px_dispatch_on_main_queue(v6);
}

void __41__PXScheduler_dispatchInMainTransaction___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFD0] mainRunLoop];
  v3 = [v2 currentMode];
  v4 = *MEMORY[0x1E695D918];
  v5 = [v3 isEqualToString:*MEMORY[0x1E695D918]];

  if ((v5 & 1) != 0 || (*(*(a1 + 32) + 33) & 1) != 0 || ([MEMORY[0x1E6979518] currentState] & 3) != 0)
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }

  else
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = [*(a1 + 40) copy];
    [v7 addObject:v8];

    if ((*(*(a1 + 32) + 32) & 1) == 0 && (PFProcessIsLaunchedToExecuteTests() & 1) == 0)
    {
      *(*(a1 + 32) + 32) = 1;
      v9 = *(a1 + 32);
      v11[0] = v4;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [v9 performSelector:sel__enteredDefaultRunLoopMode withObject:0 afterDelay:v10 inModes:0.0];
    }
  }
}

@end