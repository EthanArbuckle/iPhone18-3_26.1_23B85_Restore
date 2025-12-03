@interface SBWindowLevelAssertionManager
- (SBWindowLevelAssertionManager)init;
- (SBWindowLevelAssertionManagerDelegate)delegate;
- (id)acquireWindowLevelAssertionWithPriority:(int64_t)priority windowLevel:(double)level windowScene:(id)scene reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)highestPriorityWindowLevelAssertionForWindowScene:(id)scene;
- (id)succinctDescription;
- (void)_notifyDelegateAssertionsDidUpdateForWindowScene:(id)scene;
@end

@implementation SBWindowLevelAssertionManager

- (SBWindowLevelAssertionManager)init
{
  v6.receiver = self;
  v6.super_class = SBWindowLevelAssertionManager;
  v2 = [(SBWindowLevelAssertionManager *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    windowLevelAssertionsPerScene = v2->_windowLevelAssertionsPerScene;
    v2->_windowLevelAssertionsPerScene = weakToStrongObjectsMapTable;
  }

  return v2;
}

- (id)acquireWindowLevelAssertionWithPriority:(int64_t)priority windowLevel:(double)level windowScene:(id)scene reason:(id)reason
{
  sceneCopy = scene;
  reasonCopy = reason;
  objc_initWeak(&location, self);
  objc_initWeak(&from, sceneCopy);
  v12 = [SBWindowLevelAssertion alloc];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __104__SBWindowLevelAssertionManager_acquireWindowLevelAssertionWithPriority_windowLevel_windowScene_reason___block_invoke;
  v23[3] = &unk_2783BC128;
  objc_copyWeak(&v24, &location);
  objc_copyWeak(&v25, &from);
  v13 = [(SBWindowLevelAssertion *)v12 initWithPriority:priority windowLevel:reasonCopy reason:v23 invalidationHandler:level];
  windowLevelAssertionsPerScene = [(SBWindowLevelAssertionManager *)self windowLevelAssertionsPerScene];
  array = [windowLevelAssertionsPerScene objectForKey:sceneCopy];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    windowLevelAssertionsPerScene2 = [(SBWindowLevelAssertionManager *)self windowLevelAssertionsPerScene];
    [windowLevelAssertionsPerScene2 setObject:array forKey:sceneCopy];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = [array count];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __104__SBWindowLevelAssertionManager_acquireWindowLevelAssertionWithPriority_windowLevel_windowScene_reason___block_invoke_2;
  v18[3] = &unk_2783BC150;
  v18[4] = &v19;
  v18[5] = priority;
  [array enumerateObjectsUsingBlock:v18];
  [array insertObject:v13 atIndex:v20[3]];
  [(SBWindowLevelAssertionManager *)self _notifyDelegateAssertionsDidUpdateForWindowScene:sceneCopy];
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

- (id)highestPriorityWindowLevelAssertionForWindowScene:(id)scene
{
  sceneCopy = scene;
  windowLevelAssertionsPerScene = [(SBWindowLevelAssertionManager *)self windowLevelAssertionsPerScene];
  v6 = [windowLevelAssertionsPerScene objectForKey:sceneCopy];

  firstObject = [v6 firstObject];

  return firstObject;
}

- (void)_notifyDelegateAssertionsDidUpdateForWindowScene:(id)scene
{
  sceneCopy = scene;
  delegate = [(SBWindowLevelAssertionManager *)self delegate];
  [delegate windowLevelAssertionManager:self didUpdateAssertionsForWindowScene:sceneCopy];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBWindowLevelAssertionManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__SBWindowLevelAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

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
  succinctDescriptionBuilder = [(SBWindowLevelAssertionManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (SBWindowLevelAssertionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end