@interface SBWindowSceneStatusBarAssertionManager
- (BOOL)isFrontmostStatusBarPartHidden:(int64_t)a3;
- (BOOL)statusBar:(id)a3 shouldRequestStyle:(int64_t)a4 animationParameters:(id)a5 forced:(BOOL)a6;
- (BOOL)statusBar:(id)a3 shouldRequestStyleAttributes:(id)a4 animationParameters:(id)a5 forced:(BOOL)a6;
- (BOOL)statusBar:(id)a3 shouldSetAlpha:(double)a4;
- (SBWindowSceneStatusBarAssertionManager)initWithWindowScene:(id)a3;
- (id)_descriptionForPropertyWithAssertions:(id)a3;
- (id)_styleRequestForSettings:(id)a3;
- (id)acquireDisableAlphaChangesAssertionWithReason:(id)a3;
- (id)acquireDisableUserInteractionChangesAssertionWithReason:(id)a3;
- (id)acquireHideFrontmostStatusBarAssertionForReason:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)effectiveStatusBarStyleRequestForLevel:(unint64_t)a3;
- (id)effectiveStatusBarStyleRequestWithSettings:(id)a3;
- (id)newSettingsAssertionWithSettings:(id)a3 atLevel:(unint64_t)a4 reason:(id)a5;
- (id)newSettingsAssertionWithStatusBarHidden:(BOOL)a3 atLevel:(unint64_t)a4 reason:(id)a5;
- (id)statusBar:(id)a3 effectiveBackgroundActivitiesForBackgroundActiviesWithIdentifiers:(id)a4;
- (id)statusBarSettingsForLevel:(unint64_t)a3;
- (id)succinctDescription;
- (int64_t)effectiveStatusBarStyleForRequestedStyle:(int64_t)a3 styleOverridesToSuppress:(unint64_t)a4;
- (unint64_t)statusBar:(id)a3 effectiveStyleOverridesForRequestedStyle:(int64_t)a4 overrides:(unint64_t)a5;
- (void)_addDisableWindowSceneStatusBarAlphaChangesAssertion:(id)a3;
- (void)_addDisableWindowSceneStatusBarUserInteractionChangesAssertion:(id)a3;
- (void)_addStatusBarSettingsAssertion:(id)a3 withAnimationParameters:(id)a4;
- (void)_cleanUpAllStatusBarSettingsAssertions;
- (void)_enumerateAssertionsToLevel:(unint64_t)a3 withBlock:(id)a4;
- (void)_evaluateSettingsWithStyleAnimations:(id)a3;
- (void)_removeDisableWindowSceneStatusBarAlphaChangesAssertion:(id)a3;
- (void)_removeDisableWindowSceneStatusBarUserInteractionChangesAssertion:(id)a3;
- (void)_removeStatusBarSettingsAssertion:(id)a3 withAnimationParameters:(id)a4;
- (void)_resolveEffectiveStatusBarStyleForSettings:(id)a3;
- (void)_setStatusBarValueForPropertyWithAssertions:(id)a3 setter:(id)a4;
- (void)_statusBarUpdatedFromSettings:(id)a3 toSettings:(id)a4 withAnimations:(id)a5;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation SBWindowSceneStatusBarAssertionManager

- (SBWindowSceneStatusBarAssertionManager)initWithWindowScene:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SBWindowSceneStatusBarAssertionManager;
  v5 = [(SBWindowSceneStatusBarAssertionManager *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    disableAlphaChangeAssertions = v5->_disableAlphaChangeAssertions;
    v5->_disableAlphaChangeAssertions = v6;

    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    disableUserInteractionChangeAssertions = v5->_disableUserInteractionChangeAssertions;
    v5->_disableUserInteractionChangeAssertions = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:1];
    hideStatusBarAssertions = v5->_hideStatusBarAssertions;
    v5->_hideStatusBarAssertions = v10;

    objc_storeWeak(&v5->_windowScene, v4);
    objc_initWeak(&location, v5);
    v12 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v16, &location);
    v13 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureAssertion = v5->_stateCaptureAssertion;
    v5->_stateCaptureAssertion = v13;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v5;
}

id __62__SBWindowSceneStatusBarAssertionManager_initWithWindowScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)dealloc
{
  [(SBWindowSceneStatusBarAssertionManager *)self _cleanUpAllStatusBarSettingsAssertions];
  v3.receiver = self;
  v3.super_class = SBWindowSceneStatusBarAssertionManager;
  [(SBWindowSceneStatusBarAssertionManager *)&v3 dealloc];
}

- (id)effectiveStatusBarStyleRequestForLevel:(unint64_t)a3
{
  v4 = [(SBWindowSceneStatusBarAssertionManager *)self statusBarSettingsForLevel:a3];
  v5 = [(SBWindowSceneStatusBarAssertionManager *)self _styleRequestForSettings:v4];

  return v5;
}

- (id)effectiveStatusBarStyleRequestWithSettings:(id)a3
{
  currentStatusBarSettings = self->_currentStatusBarSettings;
  v5 = a3;
  v6 = [(SBStatusBarSettings *)currentStatusBarSettings mutableCopy];
  [v6 applySettings:v5];

  [(SBWindowSceneStatusBarAssertionManager *)self _resolveEffectiveStatusBarStyleForSettings:v6];
  v7 = [(SBWindowSceneStatusBarAssertionManager *)self _styleRequestForSettings:v6];

  return v7;
}

- (id)statusBarSettingsForLevel:(unint64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__116;
  v12 = __Block_byref_object_dispose__116;
  v13 = objc_alloc_init(SBMutableStatusBarSettings);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__SBWindowSceneStatusBarAssertionManager_statusBarSettingsForLevel___block_invoke;
  v7[3] = &unk_2783C0D80;
  v7[4] = &v8;
  [(SBWindowSceneStatusBarAssertionManager *)self _enumerateAssertionsToLevel:a3 withBlock:v7];
  [(SBWindowSceneStatusBarAssertionManager *)self _resolveEffectiveStatusBarStyleForSettings:v9[5]];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __68__SBWindowSceneStatusBarAssertionManager_statusBarSettingsForLevel___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 settings];
  [v2 applySettings:v3];
}

- (unint64_t)statusBar:(id)a3 effectiveStyleOverridesForRequestedStyle:(int64_t)a4 overrides:(unint64_t)a5
{
  v6 = [(SBStatusBarSettings *)self->_currentStatusBarSettings backgroundActivitiesToSuppress:a3];
  v7 = STUIStyleOverridesForBackgroundActivityIdentifiers();

  return a5 & ~v7;
}

- (int64_t)effectiveStatusBarStyleForRequestedStyle:(int64_t)a3 styleOverridesToSuppress:(unint64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = [WeakRetained statusBarManager];
  v8 = [v7 statusBar];
  v9 = [v8 styleOverrides];

  v10 = MEMORY[0x277D75A78];

  return [v10 defaultStyleForRequestedStyle:a3 styleOverrides:v9 & ~a4];
}

- (id)statusBar:(id)a3 effectiveBackgroundActivitiesForBackgroundActiviesWithIdentifiers:(id)a4
{
  v5 = [a4 mutableCopy];
  v6 = [(SBStatusBarSettings *)self->_currentStatusBarSettings backgroundActivitiesToSuppress];
  [v5 minusSet:v6];

  return v5;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v8 = v4;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    v4 = v8;
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (id)acquireDisableAlphaChangesAssertionWithReason:(id)a3
{
  v4 = a3;
  v5 = [[SBDisableWindowSceneStatusBarAlphaChangesAssertion alloc] _initWithWindowSceneStatusBarAssertionManager:self reason:v4];

  return v5;
}

- (id)acquireDisableUserInteractionChangesAssertionWithReason:(id)a3
{
  v4 = a3;
  v5 = [[SBDisableWindowSceneStatusBarUserInteractionChangesAssertion alloc] _initWithWindowSceneStatusBarAssertionManager:self reason:v4];

  return v5;
}

- (id)newSettingsAssertionWithSettings:(id)a3 atLevel:(unint64_t)a4 reason:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[SBWindowSceneStatusBarSettingsAssertion alloc] _initWithWindowSceneStatusBarAssertionManager:self settings:v9 atLevel:a4 reason:v8];

  return v10;
}

- (id)newSettingsAssertionWithStatusBarHidden:(BOOL)a3 atLevel:(unint64_t)a4 reason:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [[SBWindowSceneStatusBarSettingsAssertion alloc] _initWithWindowSceneStatusBarAssertionManager:self statusBarHidden:v6 atLevel:a4 reason:v8];

  return v9;
}

- (BOOL)statusBar:(id)a3 shouldSetAlpha:(double)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACC8];
  v7 = a3;
  if (([v6 isMainThread] & 1) == 0)
  {
    [SBWindowSceneStatusBarAssertionManager statusBar:shouldSetAlpha:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v9 = [WeakRetained statusBarManager];
  v10 = [v9 statusBar];

  if (v10 == v7 && !self->_changingStatusBarAlpha)
  {
    v13 = SBLogStatusBarish();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 134217984;
      v15 = a4;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "Status bar alpha changed outside of SBWindowSceneStatusBarSettingsAssertion. Rejecting change to set alpha to: %f", &v14, 0xCu);
    }

    return self->_changingStatusBarAlpha;
  }

  else
  {
    return 1;
  }
}

- (BOOL)statusBar:(id)a3 shouldRequestStyleAttributes:(id)a4 animationParameters:(id)a5 forced:(BOOL)a6
{
  v7 = MEMORY[0x277CCACC8];
  v8 = a3;
  if (([v7 isMainThread] & 1) == 0)
  {
    [SBWindowSceneStatusBarAssertionManager statusBar:shouldRequestStyleAttributes:animationParameters:forced:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v10 = [WeakRetained statusBarManager];
  v11 = [v10 statusBar];

  if (v11 == v8 && !self->_changingStatusBarStyle)
  {
    v12 = SBLogStatusBarish();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBWindowSceneStatusBarAssertionManager statusBar:v12 shouldRequestStyleAttributes:? animationParameters:? forced:?];
    }
  }

  return 1;
}

- (BOOL)statusBar:(id)a3 shouldRequestStyle:(int64_t)a4 animationParameters:(id)a5 forced:(BOOL)a6
{
  v7 = MEMORY[0x277CCACC8];
  v8 = a3;
  if (([v7 isMainThread] & 1) == 0)
  {
    [SBWindowSceneStatusBarAssertionManager statusBar:shouldRequestStyle:animationParameters:forced:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v10 = [WeakRetained statusBarManager];
  v11 = [v10 statusBar];

  if (v11 == v8 && !self->_changingStatusBarStyle)
  {
    v12 = SBLogStatusBarish();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBWindowSceneStatusBarAssertionManager statusBar:v12 shouldRequestStyleAttributes:? animationParameters:? forced:?];
    }
  }

  return 1;
}

- (void)_addDisableWindowSceneStatusBarAlphaChangesAssertion:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = SBLogStatusBarish();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Adding status bar disable alpha change assertion: %@", &v6, 0xCu);
    }

    [(NSHashTable *)self->_disableAlphaChangeAssertions addObject:v4];
  }
}

- (void)_removeDisableWindowSceneStatusBarAlphaChangesAssertion:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = SBLogStatusBarish();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Removing status bar disable alpha change assertion: %@", &v6, 0xCu);
    }

    [(NSHashTable *)self->_disableAlphaChangeAssertions removeObject:v4];
    if (![(NSHashTable *)self->_disableAlphaChangeAssertions count])
    {
      [(SBWindowSceneStatusBarAssertionManager *)self _statusBarUpdatedFromSettings:0 toSettings:self->_currentStatusBarSettings withAnimations:0];
    }
  }
}

- (void)_addDisableWindowSceneStatusBarUserInteractionChangesAssertion:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_disableUserInteractionChangeAssertions addObject:?];
  }
}

- (void)_removeDisableWindowSceneStatusBarUserInteractionChangesAssertion:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_disableUserInteractionChangeAssertions removeObject:?];
  }
}

- (void)_addStatusBarSettingsAssertion:(id)a3 withAnimationParameters:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 level];
  statusBarSettingsAssertionsByLevel = self->_statusBarSettingsAssertionsByLevel;
  v10 = self->_statusBarSettingsAssertionsByLevel[v8];
  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:514];
    v11 = statusBarSettingsAssertionsByLevel[v8];
    statusBarSettingsAssertionsByLevel[v8] = v10;
  }

  v12 = SBLogStatusBarish();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "adding status bar settings assertion: %{public}@", buf, 0xCu);
  }

  [(NSPointerArray *)v10 addPointer:v6];
  v19 = v7;
  [(SBWindowSceneStatusBarAssertionManager *)self _evaluateSettingsWithStyleAnimations:v7];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [(NSHashTable *)self->_observers allObjects];
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          [v18 statusBarAssertionManager:self addStatusBarSettingsAssertion:v6];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }
}

- (void)_removeStatusBarSettingsAssertion:(id)a3 withAnimationParameters:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 level];
  statusBarSettingsAssertionsByLevel = self->_statusBarSettingsAssertionsByLevel;
  v10 = self->_statusBarSettingsAssertionsByLevel[v8];
  v11 = v10;
  if (v10)
  {
    v12 = [(NSPointerArray *)v10 count];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      while ([(NSPointerArray *)v11 pointerAtIndex:v14]!= v6)
      {
        if (v13 == ++v14)
        {
          goto LABEL_13;
        }
      }

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = SBLogStatusBarish();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [MEMORY[0x277CBEAA8] date];
          v16 = [v6 timestamp];
          [v25 timeIntervalSinceDate:?];
          *buf = 134218242;
          v33 = v17;
          v34 = 2114;
          v35 = v6;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "removing status bar settings assertion after %f seconds: %{public}@", buf, 0x16u);
        }

        [(NSPointerArray *)v11 removePointerAtIndex:v14];
        if (![(NSPointerArray *)v11 count])
        {
          v18 = statusBarSettingsAssertionsByLevel[v8];
          statusBarSettingsAssertionsByLevel[v8] = 0;
        }

        [(SBWindowSceneStatusBarAssertionManager *)self _evaluateSettingsWithStyleAnimations:v7];
      }
    }
  }

LABEL_13:
  v26 = v7;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = [(NSHashTable *)self->_observers allObjects];
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v27 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v24 statusBarAssertionManager:self removeStatusBarSettingsAssertion:v6];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v21);
  }
}

- (void)_enumerateAssertionsToLevel:(unint64_t)a3 withBlock:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (a3 >= 0xE)
  {
    [SBWindowSceneStatusBarAssertionManager _enumerateAssertionsToLevel:a2 withBlock:self];
  }

  v8 = 0;
  statusBarSettingsAssertionsByLevel = self->_statusBarSettingsAssertionsByLevel;
  do
  {
    v10 = statusBarSettingsAssertionsByLevel[v8];
    v11 = v10;
    if (v10)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v12 = [(NSPointerArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          v15 = 0;
          do
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v7[2](v7, *(*(&v16 + 1) + 8 * v15++));
          }

          while (v13 != v15);
          v13 = [(NSPointerArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }

    ++v8;
  }

  while (v8 <= a3);
}

- (void)_resolveEffectiveStatusBarStyleForSettings:(id)a3
{
  v8 = a3;
  if ([v8 style] == -1)
  {
    v4 = SBDefaultStatusBarStyle();
  }

  else
  {
    v4 = [v8 style];
  }

  v5 = v4;
  v6 = [v8 backgroundActivitiesToSuppress];
  v7 = [(SBWindowSceneStatusBarAssertionManager *)self effectiveStatusBarStyleForRequestedStyle:v5 styleOverridesToSuppress:STUIStyleOverridesForBackgroundActivityIdentifiers()];

  [v8 setStyle:v7];
}

- (id)_styleRequestForSettings:(id)a3
{
  v3 = MEMORY[0x277D6BFE8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = _SBStatusBarStyleFromLegacyStyle([v4 style]);
  v7 = [v4 legibilitySettings];

  v8 = [v7 primaryColor];
  v9 = [v5 initWithResolvedStyle:v6 foregroundColor:v8];

  return v9;
}

- (void)_statusBarUpdatedFromSettings:(id)a3 toSettings:(id)a4 withAnimations:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBWindowSceneStatusBarAssertionManager _statusBarUpdatedFromSettings:toSettings:withAnimations:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v12 = [WeakRetained statusBarManager];
  v13 = [v12 statusBar];

  v14 = [(SBWindowSceneStatusBarAssertionManager *)self _styleRequestForSettings:v9];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __98__SBWindowSceneStatusBarAssertionManager__statusBarUpdatedFromSettings_toSettings_withAnimations___block_invoke;
  v56[3] = &unk_2783C0DA8;
  v56[4] = self;
  v15 = v13;
  v57 = v15;
  v45 = MEMORY[0x223D6F7F0](v56);
  val = self;
  if (!v10)
  {
    if ([MEMORY[0x277D75D18] _isInAnimationBlock])
    {
      v10 = [objc_alloc(MEMORY[0x277D75AA0]) initWithEmptyParameters];
      v16 = [MEMORY[0x277D75D18] _currentAnimationSettings];
      [v16 duration];
      [v10 setDuration:?];
      [v16 delay];
      [v10 setDelay:?];
      [v10 setCurve:3];
      [v10 setStyleAnimation:1];
    }

    else
    {
      v10 = 0;
    }
  }

  v43 = v14;
  v44 = v10;
  if (v8)
  {
    v17 = [v8 alpha];
    [v17 floatValue];
    v18 = [v9 alpha];
    [v18 floatValue];
    v42 = BSFloatEqualToFloat() ^ 1;

    v19 = [v8 backgroundActivitiesToSuppress];
    v20 = [v9 backgroundActivitiesToSuppress];
    v21 = BSEqualSets();
  }

  else
  {
    v21 = 0;
    v42 = 1;
  }

  v22 = [v8 legibilitySettings];
  v23 = [v9 legibilitySettings];
  v24 = BSEqualObjects();

  if (v8)
  {
    v25 = [v8 style];
    v26 = (v25 == [v9 style]) & v24 & v21;
    v27 = [v8 hiddenParts];
    v28 = v27 != [v9 hiddenParts];
    v29 = [v8 alpha];
    [v29 floatValue];
  }

  else
  {
    [v15 alpha];
    v26 = 0;
    v28 = 1;
  }

  if (BSFloatGreaterThanFloat())
  {
    v30 = [v9 alpha];
    [v30 floatValue];
    IsZero = BSFloatIsZero();
  }

  else
  {
    IsZero = 0;
  }

  if (BSFloatIsZero())
  {
    v32 = [v9 alpha];
    [v32 floatValue];
    v33 = BSFloatGreaterThanFloat();
  }

  else
  {
    v33 = 0;
  }

  if (BSFloatGreaterThanFloat())
  {
    v34 = [v9 alpha];
    [v34 floatValue];
    v35 = BSFloatGreaterThanFloat();
  }

  else
  {
    v35 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v33)
  {
    v36 = [v15 statusBar];
    [v36 reinitializeStatusBar];
  }

  if (((v33 ^ 1) & (v26 | IsZero) & 1) == 0)
  {
    if (v35)
    {
      v37 = v44;
    }

    else
    {
      v37 = 0;
    }

    (v45)[2](v45, v37, v43);
  }

  if (v28)
  {
    v38 = MEMORY[0x277D75AA0];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __98__SBWindowSceneStatusBarAssertionManager__statusBarUpdatedFromSettings_toSettings_withAnimations___block_invoke_3;
    v53[3] = &unk_2783A92D8;
    v54 = v15;
    v55 = v9;
    [v38 animateWithParameters:v44 fromCurrentState:1 animations:v53 completion:0];
  }

  if (v42)
  {
    objc_initWeak(&location, vala);
    v39 = vala[1];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __98__SBWindowSceneStatusBarAssertionManager__statusBarUpdatedFromSettings_toSettings_withAnimations___block_invoke_4;
    v46[3] = &unk_2783C0DD0;
    objc_copyWeak(&v50, &location);
    v51 = v33;
    v47 = v15;
    v48 = v44;
    v49 = v45;
    [vala _setStatusBarValueForPropertyWithAssertions:v39 setter:v46];

    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
  }
}

void __98__SBWindowSceneStatusBarAssertionManager__statusBarUpdatedFromSettings_toSettings_withAnimations___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(a1 + 32) + 168) = 1;
  if (a2)
  {
    [*(a1 + 40) setStyleRequest:v5 animationParameters:a2];
  }

  else
  {
    v6 = MEMORY[0x277D75D18];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __98__SBWindowSceneStatusBarAssertionManager__statusBarUpdatedFromSettings_toSettings_withAnimations___block_invoke_2;
    v7[3] = &unk_2783A92D8;
    v8 = *(a1 + 40);
    v9 = v5;
    [v6 performWithoutAnimation:v7];
  }

  *(*(a1 + 32) + 168) = 0;
}

void __98__SBWindowSceneStatusBarAssertionManager__statusBarUpdatedFromSettings_toSettings_withAnimations___block_invoke_3(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) hiddenParts];
  if (v2 == 2)
  {
    v3 = MEMORY[0x277D775D0];
LABEL_7:
    v8[0] = *v3;
    v5 = MEMORY[0x277CBEA60];
    v6 = 1;
    goto LABEL_8;
  }

  if (v2 != 10)
  {
    if (v2 != 8)
    {
      v7 = MEMORY[0x277CBEBF8];
      goto LABEL_10;
    }

    v3 = MEMORY[0x277D775E0];
    goto LABEL_7;
  }

  v4 = *MEMORY[0x277D775E0];
  v8[0] = *MEMORY[0x277D775D0];
  v8[1] = v4;
  v5 = MEMORY[0x277CBEA60];
  v6 = 2;
LABEL_8:
  v7 = [v5 arrayWithObjects:v8 count:v6];
LABEL_10:
  [v1 setDisabledPartIdentifiers:v7];
}

void __98__SBWindowSceneStatusBarAssertionManager__statusBarUpdatedFromSettings_toSettings_withAnimations___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 64) == 1)
    {
      [*(a1 + 32) forgetEitherSideHistory];
    }

    WeakRetained[169] = 1;
    v3 = MEMORY[0x277D75AA0];
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __98__SBWindowSceneStatusBarAssertionManager__statusBarUpdatedFromSettings_toSettings_withAnimations___block_invoke_5;
    v8[3] = &unk_2783A9CE8;
    objc_copyWeak(&v10, (a1 + 56));
    v9 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __98__SBWindowSceneStatusBarAssertionManager__statusBarUpdatedFromSettings_toSettings_withAnimations___block_invoke_6;
    v5[3] = &unk_2783AB758;
    objc_copyWeak(&v7, (a1 + 56));
    v6 = *(a1 + 48);
    [v3 animateWithParameters:v4 fromCurrentState:1 animations:v8 completion:v5];
    WeakRetained[169] = 0;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&v10);
  }
}

void __98__SBWindowSceneStatusBarAssertionManager__statusBarUpdatedFromSettings_toSettings_withAnimations___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    ++*(WeakRetained + 22);
    v3 = *(a1 + 32);
    v6 = WeakRetained;
    v4 = [*(WeakRetained + 18) alpha];
    [v4 floatValue];
    [v3 setAlpha:v5];

    WeakRetained = v6;
  }
}

void __98__SBWindowSceneStatusBarAssertionManager__statusBarUpdatedFromSettings_toSettings_withAnimations___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    --*(WeakRetained + 22);
    v6 = WeakRetained;
    v3 = [*(WeakRetained + 18) alpha];
    [v3 floatValue];
    if (BSFloatIsZero())
    {
      v4 = v6[22];

      WeakRetained = v6;
      if (v4)
      {
        goto LABEL_6;
      }

      v5 = *(a1 + 32);
      v3 = [v6 _styleRequestForSettings:v6[18]];
      (*(v5 + 16))(v5, 0, v3);
    }

    WeakRetained = v6;
  }

LABEL_6:
}

- (void)_cleanUpAllStatusBarSettingsAssertions
{
  v2 = 0;
  statusBarSettingsAssertionsByLevel = self->_statusBarSettingsAssertionsByLevel;
  do
  {
    v4 = statusBarSettingsAssertionsByLevel[v2];
    statusBarSettingsAssertionsByLevel[v2] = 0;

    ++v2;
  }

  while (v2 != 14);
}

- (void)_evaluateSettingsWithStyleAnimations:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v6 = [WeakRetained statusBarManager];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__116;
  v33 = __Block_byref_object_dispose__116;
  v34 = objc_alloc_init(SBMutableStatusBarSettings);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __79__SBWindowSceneStatusBarAssertionManager__evaluateSettingsWithStyleAnimations___block_invoke;
  v28[3] = &unk_2783C0D80;
  v28[4] = &v29;
  [(SBWindowSceneStatusBarAssertionManager *)self _enumerateAssertionsToLevel:13 withBlock:v28];
  v7 = SBLogStatusBarish();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v30[5] alpha];
    [v15 floatValue];
    v17 = v16;
    v18 = [(SBStatusBarSettings *)self->_currentStatusBarSettings alpha];
    [v18 floatValue];
    v20 = v19;
    v21 = [v6 statusBar];
    [v21 alpha];
    *buf = 134349568;
    v37 = v17;
    v38 = 2050;
    v39 = v20;
    v40 = 2050;
    v41 = v22;
    _os_log_debug_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEBUG, "Evaluate status bar settings. new: %{public}.2f, current: %{public}.2f, actual: %{public}.2f", buf, 0x20u);
  }

  v8 = self->_currentStatusBarSettings;
  if (![(SBStatusBarSettings *)self->_currentStatusBarSettings isEqual:v30[5]])
  {
    objc_storeStrong(&self->_currentStatusBarSettings, v30[5]);
    [(SBWindowSceneStatusBarAssertionManager *)self _statusBarUpdatedFromSettings:v8 toSettings:v30[5] withAnimations:v4];
    v23 = v4;
    v9 = v6;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [(NSHashTable *)self->_observers allObjects];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v35 count:16];
    if (v11)
    {
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v24 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 statusBarAssertionManager:self statusBarSettingsDidChange:self->_currentStatusBarSettings];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v24 objects:v35 count:16];
      }

      while (v11);
    }

    v6 = v9;
    v4 = v23;
  }

  _Block_object_dispose(&v29, 8);
}

void __79__SBWindowSceneStatusBarAssertionManager__evaluateSettingsWithStyleAnimations___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 settings];
  [v2 applySettings:v3];
}

- (id)_descriptionForPropertyWithAssertions:(id)a3
{
  if (self->_disableAlphaChangeAssertions == a3)
  {
    return @"alpha";
  }

  if (self->_disableUserInteractionChangeAssertions == a3)
  {
    return @"user interaction";
  }

  return 0;
}

- (void)_setStatusBarValueForPropertyWithAssertions:(id)a3 setter:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(SBWindowSceneStatusBarAssertionManager *)self _descriptionForPropertyWithAssertions:v6];
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Suppressing status bar %{public}@ change due to outstanding disablement assertions: %@", &v10, 0x16u);
    }
  }

  else if (v7)
  {
    v7[2](v7);
  }
}

- (id)succinctDescription
{
  v2 = [(SBWindowSceneStatusBarAssertionManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBWindowSceneStatusBarAssertionManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBWindowSceneStatusBarAssertionManager *)self succinctDescriptionBuilder];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__SBWindowSceneStatusBarAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_2783A8ED8;
  v7 = v5;
  v12 = v7;
  v13 = WeakRetained;
  v14 = self;
  v8 = WeakRetained;
  [v7 appendBodySectionWithName:0 multilinePrefix:v4 block:v11];

  v9 = v7;
  return v7;
}

void __80__SBWindowSceneStatusBarAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _sceneIdentifier];
  v4 = [v2 appendObject:v3 withName:@"windowScene identifier"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) statusBarManager];
  v7 = [v6 statusBar];
  [v7 alpha];
  v8 = [v5 appendFloat:@"statusBarAlpha" withName:?];

  v9 = [*(a1 + 32) appendObject:*(*(a1 + 48) + 144) withName:@"currentSettings"];
  v10 = *(a1 + 32);
  v11 = [*(*(a1 + 48) + 8) allObjects];
  [v10 appendArraySection:v11 withName:@"disableAlphaChangeAssertions" skipIfEmpty:1];

  v12 = *(a1 + 32);
  v13 = [*(*(a1 + 48) + 16) allObjects];
  [v12 appendArraySection:v13 withName:@"disableUserInteractionChangeAssertions" skipIfEmpty:1];

  v14 = *(a1 + 32);
  v15 = [v14 activeMultilinePrefix];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __80__SBWindowSceneStatusBarAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v21 = &unk_2783A92D8;
  v22 = *(a1 + 48);
  v23 = *(a1 + 32);
  [v14 appendBodySectionWithName:@"statusBarSettingsByAssertionLevel" multilinePrefix:v15 block:&v18];

  v16 = *(a1 + 32);
  v17 = [*(*(a1 + 48) + 24) allObjects];
  [v16 appendArraySection:v17 withName:@"Hiding Frontmost Status Bar Assertions" skipIfEmpty:1];
}

void __80__SBWindowSceneStatusBarAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  for (i = 0; i != 14; ++i)
  {
    v3 = *(*(a1 + 32) + 8 * i + 32);
    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = v3;
      v6 = [v5 allObjects];
      v7 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      v9 = [v8 description];
      v10 = SBWindowSceneStatusBarSettingsLevelDescription(i);
      v11 = [v7 stringWithFormat:@"%@ - (%@)", v9, v10];
      v12 = [*(a1 + 40) activeMultilinePrefix];
      [v4 appendArraySection:v6 withName:v11 multilinePrefix:v12 skipIfEmpty:0];
    }
  }
}

- (BOOL)isFrontmostStatusBarPartHidden:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v6 = [WeakRetained statusBarManager];
  if (![v6 isStatusBarEffectivelyHidden])
  {
    goto LABEL_40;
  }

  v7 = [WeakRetained lockScreenManager];
  if (![v7 isUILocked] || (-[SBWindowSceneStatusBarAssertionManager currentStatusBarSettings](self, "currentStatusBarSettings"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "alpha"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", &unk_283371FC0), v9, v8, !v10))
  {
    v12 = [WeakRetained transientOverlayPresenter];
    if ([v12 hasActivePresentation])
    {
      v11 = [v12 hasVisibleStatusBar] ^ 1;

      goto LABEL_41;
    }

    v13 = [WeakRetained switcherController];
    v14 = [v13 layoutStatePrimaryElement];
    v15 = [v14 workspaceEntity];
    v16 = [v15 applicationSceneEntity];
    v17 = [v16 sceneHandle];

    v18 = [v13 layoutStateSideElement];
    v19 = [v18 workspaceEntity];
    v20 = [v19 applicationSceneEntity];
    v34 = [v20 sceneHandle];

    if (!v17)
    {
      LOBYTE(v11) = 1;
      goto LABEL_39;
    }

    v21 = [v17 application];
    if ([v21 isClassic] && !objc_msgSend(v21, "includesStatusBarInClassicJailForInterfaceOrientation:", objc_msgSend(v17, "activationInterfaceOrientationForCurrentOrientation")))
    {
      LOBYTE(v11) = 0;
LABEL_38:

LABEL_39:
      if (v17)
      {
        goto LABEL_41;
      }

LABEL_40:
      LOBYTE(v11) = [v6 isStatusBarEffectivelyHidden];
      goto LABEL_41;
    }

    v22 = [WeakRetained switcherController];
    if ([v22 isInAppStatusBarHidden])
    {
      LOBYTE(v11) = 1;
LABEL_37:

      goto LABEL_38;
    }

    if (a3 <= 3)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          v23 = [v22 windowManagementContext];
          if (([v23 isMedusaEnabled] & (v34 != 0)) != 0)
          {
            v24 = v34;
          }

          else
          {
            v24 = v17;
          }

          v25 = [v24 sceneIfExists];

LABEL_31:
          if (v25)
          {
            v33 = v25;
            v31 = [v25 uiClientSettings];
            if ([v31 statusBarHidden])
            {
              LOBYTE(v11) = 1;
            }

            else
            {
              [v31 statusBarAlpha];
              LOBYTE(v11) = BSFloatIsZero();
            }

            goto LABEL_37;
          }
        }

LABEL_34:
        LOBYTE(v11) = [v22 unlockedEnvironmentMode] == 2;
        goto LABEL_37;
      }

LABEL_23:
      v25 = [v17 sceneIfExists];
      goto LABEL_31;
    }

    if (a3 != 4)
    {
      if (a3 != 0xFFFF)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    v26 = [v22 layoutState];
    v27 = [v26 appLayout];

    v28 = SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration([v27 configuration]);
    if (v28 >= 2)
    {
      if (v28 == 2)
      {
        v29 = v34;
        goto LABEL_29;
      }

      if (v28 != 4)
      {
        v30 = 0;
        goto LABEL_30;
      }
    }

    v29 = v17;
LABEL_29:
    v30 = [v29 sceneIfExists];
LABEL_30:

    v25 = v30;
    goto LABEL_31;
  }

  LOBYTE(v11) = 1;
LABEL_41:

  return v11;
}

- (id)acquireHideFrontmostStatusBarAssertionForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBWindowSceneStatusBarAssertionManager *)self newSettingsAssertionWithStatusBarHidden:1 atLevel:8 reason:v4];
  [v5 acquire];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v7 = [WeakRetained switcherController];
  v8 = [v7 requestInAppStatusBarHiddenAssertionForReason:v4 animated:0];

  v9 = [WeakRetained transientOverlayPresenter];
  v10 = [v9 newContentStatusBarHiddenAssertionWithReason:@"com.springboard.SBStatusBarManager.hideStatusBarAssertion"];
  v11 = objc_alloc(MEMORY[0x277CF0CE8]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __120__SBWindowSceneStatusBarAssertionManager_FrontmostStatusBarVisibility__acquireHideFrontmostStatusBarAssertionForReason___block_invoke;
  v17[3] = &unk_2783BB1A8;
  v18 = v5;
  v19 = v8;
  v20 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v5;
  v15 = [v11 initWithIdentifier:@"com.springboard.SBStatusBarManager.hideStatusBarAssertion" forReason:v4 queue:MEMORY[0x277D85CD0] invalidationBlock:v17];

  [(NSHashTable *)self->_hideStatusBarAssertions addObject:v15];

  return v15;
}

uint64_t __120__SBWindowSceneStatusBarAssertionManager_FrontmostStatusBarVisibility__acquireHideFrontmostStatusBarAssertionForReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  [*(a1 + 40) invalidate];
  v2 = *(a1 + 48);

  return [v2 invalidate];
}

- (void)statusBar:shouldSetAlpha:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBWindowSceneStatusBarAssertionManager statusBar:shouldSetAlpha:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)statusBar:shouldRequestStyleAttributes:animationParameters:forced:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBWindowSceneStatusBarAssertionManager statusBar:shouldRequestStyleAttributes:animationParameters:forced:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)statusBar:shouldRequestStyle:animationParameters:forced:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBWindowSceneStatusBarAssertionManager statusBar:shouldRequestStyle:animationParameters:forced:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

- (void)_enumerateAssertionsToLevel:(uint64_t)a1 withBlock:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWindowSceneStatusBarAssertionManager.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"level < SBWindowSceneStatusBarSettingsLevelNumberOfLevels"}];
}

- (void)_statusBarUpdatedFromSettings:toSettings:withAnimations:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBWindowSceneStatusBarAssertionManager _statusBarUpdatedFromSettings:toSettings:withAnimations:]"];
  [OUTLINED_FUNCTION_2_0(v0 v1];
}

@end