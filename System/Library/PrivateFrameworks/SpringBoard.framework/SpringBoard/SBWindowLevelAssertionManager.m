@interface SBWindowLevelAssertionManager
- (SBWindowLevelAssertionManager)init;
- (SBWindowLevelAssertionManagerDelegate)delegate;
- (id)acquireWindowLevelAssertionWithPriority:(int64_t)a3 windowLevel:(double)a4 windowScene:(id)a5 reason:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)highestPriorityWindowLevelAssertionForWindowScene:(id)a3;
- (id)succinctDescription;
- (void)_notifyDelegateAssertionsDidUpdateForWindowScene:(id)a3;
@end

@implementation SBWindowLevelAssertionManager

- (SBWindowLevelAssertionManager)init
{
  v6.receiver = self;
  v6.super_class = SBWindowLevelAssertionManager;
  v2 = [(SBWindowLevelAssertionManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    windowLevelAssertionsPerScene = v2->_windowLevelAssertionsPerScene;
    v2->_windowLevelAssertionsPerScene = v3;
  }

  return v2;
}

- (id)acquireWindowLevelAssertionWithPriority:(int64_t)a3 windowLevel:(double)a4 windowScene:(id)a5 reason:(id)a6
{
  v10 = a5;
  v11 = a6;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v10);
  v12 = [SBWindowLevelAssertion alloc];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __104__SBWindowLevelAssertionManager_acquireWindowLevelAssertionWithPriority_windowLevel_windowScene_reason___block_invoke;
  v23[3] = &unk_2783BC128;
  objc_copyWeak(&v24, &location);
  objc_copyWeak(&v25, &from);
  v13 = [(SBWindowLevelAssertion *)v12 initWithPriority:a3 windowLevel:v11 reason:v23 invalidationHandler:a4];
  v14 = [(SBWindowLevelAssertionManager *)self windowLevelAssertionsPerScene];
  v15 = [v14 objectForKey:v10];

  if (!v15)
  {
    v15 = [MEMORY[0x277CBEB18] array];
    v16 = [(SBWindowLevelAssertionManager *)self windowLevelAssertionsPerScene];
    [v16 setObject:v15 forKey:v10];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = [v15 count];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __104__SBWindowLevelAssertionManager_acquireWindowLevelAssertionWithPriority_windowLevel_windowScene_reason___block_invoke_2;
  v18[3] = &unk_2783BC150;
  v18[4] = &v19;
  v18[5] = a3;
  [v15 enumerateObjectsUsingBlock:v18];
  [v15 insertObject:v13 atIndex:v20[3]];
  [(SBWindowLevelAssertionManager *)self _notifyDelegateAssertionsDidUpdateForWindowScene:v10];
  _Block_object_dispose(&v19, 8);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v13;
}

void __104__SBWindowLevelAssertionManager_acquireWindowLevelAssertionWithPriority_windowLevel_windowScene_reason___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4)
  {
    v6 = [WeakRetained windowLevelAssertionsPerScene];
    v7 = [v6 objectForKey:v5];

    if ([v7 containsObject:v9])
    {
      [v7 removeObject:v9];
      if (![v7 count])
      {
        v8 = [WeakRetained windowLevelAssertionsPerScene];
        [v8 removeObjectForKey:v5];
      }

      [WeakRetained _notifyDelegateAssertionsDidUpdateForWindowScene:v5];
    }
  }
}

uint64_t __104__SBWindowLevelAssertionManager_acquireWindowLevelAssertionWithPriority_windowLevel_windowScene_reason___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 40);
  result = [a2 priority];
  if (v7 < result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)highestPriorityWindowLevelAssertionForWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(SBWindowLevelAssertionManager *)self windowLevelAssertionsPerScene];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 firstObject];

  return v7;
}

- (void)_notifyDelegateAssertionsDidUpdateForWindowScene:(id)a3
{
  v4 = a3;
  v5 = [(SBWindowLevelAssertionManager *)self delegate];
  [v5 windowLevelAssertionManager:self didUpdateAssertionsForWindowScene:v4];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBWindowLevelAssertionManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__SBWindowLevelAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

void __71__SBWindowLevelAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) windowLevelAssertionsPerScene];
  v2 = [v1 appendObject:v3 withName:@"windowLevelAssertionsPerScene"];
}

- (id)succinctDescription
{
  v2 = [(SBWindowLevelAssertionManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (SBWindowLevelAssertionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end