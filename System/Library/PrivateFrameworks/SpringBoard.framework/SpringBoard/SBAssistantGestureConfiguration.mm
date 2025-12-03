@interface SBAssistantGestureConfiguration
- (BOOL)shouldDismissForSwipesOutsideContent;
- (BOOL)shouldDismissForTapsOutsideContent;
- (BOOL)shouldPassTouchesThroughToSpringBoard;
- (BOOL)shouldShareHomeGesture;
- (SBAssistantGestureConfiguration)initWithSiriPresentationViewController:(id)controller;
- (void)_makeObserversPerformBlock:(id)block;
- (void)addObserver:(id)observer;
- (void)assistantGestureConfiguration:(id)configuration didUpdateHomeAffordanceSuppression:(int64_t)suppression;
- (void)assistantGestureConfiguration:(id)configuration didUpdateHomeGestureSharing:(BOOL)sharing;
- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldDismissForSwipesOutsideContent:(BOOL)content;
- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldDismissForTapsOutsideContent:(BOOL)content;
- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldPassTouchesThroughToSpringBoard:(BOOL)board;
- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldShowHomeAffordance:(BOOL)affordance;
- (void)assistantGestureConfiguration:(id)configuration didUpdateStatusBarActionGestureRecognizer:(id)recognizer;
- (void)notifyPanBeganAtPoint:(CGPoint)point;
- (void)notifyTapAtPoint:(CGPoint)point;
- (void)removeObserver:(id)observer;
- (void)shouldDismissForGestureAtLocation:(CGPoint)location completion:(id)completion;
@end

@implementation SBAssistantGestureConfiguration

- (SBAssistantGestureConfiguration)initWithSiriPresentationViewController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = SBAssistantGestureConfiguration;
  v6 = [(SBAssistantGestureConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_siriPresentationViewController, controller);
    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v7->_observers;
    v7->_observers = v8;
  }

  return v7;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v7 = observerCopy;
    v5 = [(NSHashTable *)self->_observers containsObject:observerCopy];
    observerCopy = v7;
    if (!v5)
    {
      observers = [(SBAssistantGestureConfiguration *)self observers];
      [observers addObject:v7];

      observerCopy = v7;
    }
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    observers = [(SBAssistantGestureConfiguration *)self observers];
    [observers removeObject:observerCopy];
  }
}

- (void)_makeObserversPerformBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [(SBAssistantGestureConfiguration *)self observers];
  allObjects = [observers allObjects];

  v7 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)shouldDismissForSwipesOutsideContent
{
  siriPresentationViewController = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  shouldDismissForSwipesOutsideContent = [siriPresentationViewController shouldDismissForSwipesOutsideContent];

  return shouldDismissForSwipesOutsideContent;
}

- (BOOL)shouldDismissForTapsOutsideContent
{
  siriPresentationViewController = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  shouldDismissForTapsOutsideContent = [siriPresentationViewController shouldDismissForTapsOutsideContent];

  return shouldDismissForTapsOutsideContent;
}

- (BOOL)shouldShareHomeGesture
{
  siriPresentationViewController = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  shareHomeGesture = [siriPresentationViewController shareHomeGesture];

  return shareHomeGesture;
}

- (BOOL)shouldPassTouchesThroughToSpringBoard
{
  siriPresentationViewController = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  shouldPassTouchesThroughToSpringBoard = [siriPresentationViewController shouldPassTouchesThroughToSpringBoard];

  return shouldPassTouchesThroughToSpringBoard;
}

- (void)shouldDismissForGestureAtLocation:(CGPoint)location completion:(id)completion
{
  y = location.y;
  x = location.x;
  completionCopy = completion;
  siriPresentationViewController = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__SBAssistantGestureConfiguration_shouldDismissForGestureAtLocation_completion___block_invoke;
  v10[3] = &unk_2783A9C70;
  v11 = completionCopy;
  v9 = completionCopy;
  [siriPresentationViewController hasContentAtPoint:v10 completion:{x, y}];
}

void __80__SBAssistantGestureConfiguration_shouldDismissForGestureAtLocation_completion___block_invoke(uint64_t a1, char a2)
{
  v2 = a2 ^ 1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__SBAssistantGestureConfiguration_shouldDismissForGestureAtLocation_completion___block_invoke_2;
  v3[3] = &unk_2783AB500;
  v4 = *(a1 + 32);
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)notifyPanBeganAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  siriPresentationViewController = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    siriPresentationViewController2 = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
    [siriPresentationViewController2 notePanBeganAtPoint:{x, y}];
  }
}

- (void)notifyTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  siriPresentationViewController = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    siriPresentationViewController2 = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
    [siriPresentationViewController2 noteTapAtPoint:{x, y}];
  }
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateHomeGestureSharing:(BOOL)sharing
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = NSStringFromBOOL();
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__SBAssistantGestureConfiguration_assistantGestureConfiguration_didUpdateHomeGestureSharing___block_invoke;
  v9[3] = &unk_2783B0CD8;
  v9[4] = self;
  sharingCopy = sharing;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldDismissForTapsOutsideContent:(BOOL)content
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = NSStringFromBOOL();
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __109__SBAssistantGestureConfiguration_assistantGestureConfiguration_didUpdateShouldDismissForTapsOutsideContent___block_invoke;
  v9[3] = &unk_2783B0CD8;
  v9[4] = self;
  contentCopy = content;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldDismissForSwipesOutsideContent:(BOOL)content
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = NSStringFromBOOL();
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __111__SBAssistantGestureConfiguration_assistantGestureConfiguration_didUpdateShouldDismissForSwipesOutsideContent___block_invoke;
  v9[3] = &unk_2783B0CD8;
  v9[4] = self;
  contentCopy = content;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldPassTouchesThroughToSpringBoard:(BOOL)board
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = NSStringFromBOOL();
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __112__SBAssistantGestureConfiguration_assistantGestureConfiguration_didUpdateShouldPassTouchesThroughToSpringBoard___block_invoke;
  v9[3] = &unk_2783B0CD8;
  v9[4] = self;
  boardCopy = board;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateShouldShowHomeAffordance:(BOOL)affordance
{
  affordanceCopy = affordance;
  v15 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = NSStringFromBOOL();
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  [(SBAssistantGestureConfiguration *)self setSiriWantsToShowHomeAffordance:affordanceCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__SBAssistantGestureConfiguration_assistantGestureConfiguration_didUpdateShouldShowHomeAffordance___block_invoke;
  v9[3] = &unk_2783B0CD8;
  v9[4] = self;
  v10 = affordanceCopy;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateHomeAffordanceSuppression:(int64_t)suppression
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = [MEMORY[0x277CCACA8] stringWithSiriHomeAffordanceSuppression:suppression];
    *buf = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  if (suppression <= 2)
  {
    [(SBAssistantGestureConfiguration *)self setSiriWantsToShowHomeAffordance:(suppression & 1) == 0];
  }

  [(SBAssistantGestureConfiguration *)self setSiriWantsHomeAffordanceSuppression:suppression];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__SBAssistantGestureConfiguration_assistantGestureConfiguration_didUpdateHomeAffordanceSuppression___block_invoke;
  v9[3] = &unk_2783B0D00;
  v9[4] = self;
  v9[5] = suppression;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

- (void)assistantGestureConfiguration:(id)configuration didUpdateStatusBarActionGestureRecognizer:(id)recognizer
{
  v15 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = recognizerCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  [(SBAssistantGestureConfiguration *)self setStatusBarActionGestureRecognizer:recognizerCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __107__SBAssistantGestureConfiguration_assistantGestureConfiguration_didUpdateStatusBarActionGestureRecognizer___block_invoke;
  v9[3] = &unk_2783B0D28;
  v9[4] = self;
  v10 = recognizerCopy;
  v8 = recognizerCopy;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

@end