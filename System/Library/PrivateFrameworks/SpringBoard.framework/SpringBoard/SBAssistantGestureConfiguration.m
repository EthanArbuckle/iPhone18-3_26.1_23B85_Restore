@interface SBAssistantGestureConfiguration
- (BOOL)shouldDismissForSwipesOutsideContent;
- (BOOL)shouldDismissForTapsOutsideContent;
- (BOOL)shouldPassTouchesThroughToSpringBoard;
- (BOOL)shouldShareHomeGesture;
- (SBAssistantGestureConfiguration)initWithSiriPresentationViewController:(id)a3;
- (void)_makeObserversPerformBlock:(id)a3;
- (void)addObserver:(id)a3;
- (void)assistantGestureConfiguration:(id)a3 didUpdateHomeAffordanceSuppression:(int64_t)a4;
- (void)assistantGestureConfiguration:(id)a3 didUpdateHomeGestureSharing:(BOOL)a4;
- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldDismissForSwipesOutsideContent:(BOOL)a4;
- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldDismissForTapsOutsideContent:(BOOL)a4;
- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldPassTouchesThroughToSpringBoard:(BOOL)a4;
- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldShowHomeAffordance:(BOOL)a4;
- (void)assistantGestureConfiguration:(id)a3 didUpdateStatusBarActionGestureRecognizer:(id)a4;
- (void)notifyPanBeganAtPoint:(CGPoint)a3;
- (void)notifyTapAtPoint:(CGPoint)a3;
- (void)removeObserver:(id)a3;
- (void)shouldDismissForGestureAtLocation:(CGPoint)a3 completion:(id)a4;
@end

@implementation SBAssistantGestureConfiguration

- (SBAssistantGestureConfiguration)initWithSiriPresentationViewController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SBAssistantGestureConfiguration;
  v6 = [(SBAssistantGestureConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_siriPresentationViewController, a3);
    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v7->_observers;
    v7->_observers = v8;
  }

  return v7;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(NSHashTable *)self->_observers containsObject:v4];
    v4 = v7;
    if (!v5)
    {
      v6 = [(SBAssistantGestureConfiguration *)self observers];
      [v6 addObject:v7];

      v4 = v7;
    }
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SBAssistantGestureConfiguration *)self observers];
    [v5 removeObject:v4];
  }
}

- (void)_makeObserversPerformBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SBAssistantGestureConfiguration *)self observers];
  v6 = [v5 allObjects];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)shouldDismissForSwipesOutsideContent
{
  v2 = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  v3 = [v2 shouldDismissForSwipesOutsideContent];

  return v3;
}

- (BOOL)shouldDismissForTapsOutsideContent
{
  v2 = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  v3 = [v2 shouldDismissForTapsOutsideContent];

  return v3;
}

- (BOOL)shouldShareHomeGesture
{
  v2 = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  v3 = [v2 shareHomeGesture];

  return v3;
}

- (BOOL)shouldPassTouchesThroughToSpringBoard
{
  v2 = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  v3 = [v2 shouldPassTouchesThroughToSpringBoard];

  return v3;
}

- (void)shouldDismissForGestureAtLocation:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__SBAssistantGestureConfiguration_shouldDismissForGestureAtLocation_completion___block_invoke;
  v10[3] = &unk_2783A9C70;
  v11 = v7;
  v9 = v7;
  [v8 hasContentAtPoint:v10 completion:{x, y}];
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

- (void)notifyPanBeganAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
    [v8 notePanBeganAtPoint:{x, y}];
  }
}

- (void)notifyTapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(SBAssistantGestureConfiguration *)self siriPresentationViewController];
    [v8 noteTapAtPoint:{x, y}];
  }
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateHomeGestureSharing:(BOOL)a4
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
  v10 = a4;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldDismissForTapsOutsideContent:(BOOL)a4
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
  v10 = a4;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldDismissForSwipesOutsideContent:(BOOL)a4
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
  v10 = a4;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldPassTouchesThroughToSpringBoard:(BOOL)a4
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
  v10 = a4;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateShouldShowHomeAffordance:(BOOL)a4
{
  v4 = a4;
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

  [(SBAssistantGestureConfiguration *)self setSiriWantsToShowHomeAffordance:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__SBAssistantGestureConfiguration_assistantGestureConfiguration_didUpdateShouldShowHomeAffordance___block_invoke;
  v9[3] = &unk_2783B0CD8;
  v9[4] = self;
  v10 = v4;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateHomeAffordanceSuppression:(int64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    v8 = [MEMORY[0x277CCACA8] stringWithSiriHomeAffordanceSuppression:a4];
    *buf = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  if (a4 <= 2)
  {
    [(SBAssistantGestureConfiguration *)self setSiriWantsToShowHomeAffordance:(a4 & 1) == 0];
  }

  [(SBAssistantGestureConfiguration *)self setSiriWantsHomeAffordanceSuppression:a4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__SBAssistantGestureConfiguration_assistantGestureConfiguration_didUpdateHomeAffordanceSuppression___block_invoke;
  v9[3] = &unk_2783B0D00;
  v9[4] = self;
  v9[5] = a4;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

- (void)assistantGestureConfiguration:(id)a3 didUpdateStatusBarActionGestureRecognizer:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _SBFLoggingMethodProem();
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  [(SBAssistantGestureConfiguration *)self setStatusBarActionGestureRecognizer:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __107__SBAssistantGestureConfiguration_assistantGestureConfiguration_didUpdateStatusBarActionGestureRecognizer___block_invoke;
  v9[3] = &unk_2783B0D28;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [(SBAssistantGestureConfiguration *)self _makeObserversPerformBlock:v9];
}

@end