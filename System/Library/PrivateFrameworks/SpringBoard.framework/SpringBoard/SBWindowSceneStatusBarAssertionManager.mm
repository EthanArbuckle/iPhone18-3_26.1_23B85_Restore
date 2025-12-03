@interface SBWindowSceneStatusBarAssertionManager
- (BOOL)isFrontmostStatusBarPartHidden:(int64_t)hidden;
- (BOOL)statusBar:(id)bar shouldRequestStyle:(int64_t)style animationParameters:(id)parameters forced:(BOOL)forced;
- (BOOL)statusBar:(id)bar shouldRequestStyleAttributes:(id)attributes animationParameters:(id)parameters forced:(BOOL)forced;
- (BOOL)statusBar:(id)bar shouldSetAlpha:(double)alpha;
- (SBWindowSceneStatusBarAssertionManager)initWithWindowScene:(id)scene;
- (id)_descriptionForPropertyWithAssertions:(id)assertions;
- (id)_styleRequestForSettings:(id)settings;
- (id)acquireDisableAlphaChangesAssertionWithReason:(id)reason;
- (id)acquireDisableUserInteractionChangesAssertionWithReason:(id)reason;
- (id)acquireHideFrontmostStatusBarAssertionForReason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)effectiveStatusBarStyleRequestForLevel:(unint64_t)level;
- (id)effectiveStatusBarStyleRequestWithSettings:(id)settings;
- (id)newSettingsAssertionWithSettings:(id)settings atLevel:(unint64_t)level reason:(id)reason;
- (id)newSettingsAssertionWithStatusBarHidden:(BOOL)hidden atLevel:(unint64_t)level reason:(id)reason;
- (id)statusBar:(id)bar effectiveBackgroundActivitiesForBackgroundActiviesWithIdentifiers:(id)identifiers;
- (id)statusBarSettingsForLevel:(unint64_t)level;
- (id)succinctDescription;
- (int64_t)effectiveStatusBarStyleForRequestedStyle:(int64_t)style styleOverridesToSuppress:(unint64_t)suppress;
- (unint64_t)statusBar:(id)bar effectiveStyleOverridesForRequestedStyle:(int64_t)style overrides:(unint64_t)overrides;
- (void)_addDisableWindowSceneStatusBarAlphaChangesAssertion:(id)assertion;
- (void)_addDisableWindowSceneStatusBarUserInteractionChangesAssertion:(id)assertion;
- (void)_addStatusBarSettingsAssertion:(id)assertion withAnimationParameters:(id)parameters;
- (void)_cleanUpAllStatusBarSettingsAssertions;
- (void)_enumerateAssertionsToLevel:(unint64_t)level withBlock:(id)block;
- (void)_evaluateSettingsWithStyleAnimations:(id)animations;
- (void)_removeDisableWindowSceneStatusBarAlphaChangesAssertion:(id)assertion;
- (void)_removeDisableWindowSceneStatusBarUserInteractionChangesAssertion:(id)assertion;
- (void)_removeStatusBarSettingsAssertion:(id)assertion withAnimationParameters:(id)parameters;
- (void)_resolveEffectiveStatusBarStyleForSettings:(id)settings;
- (void)_setStatusBarValueForPropertyWithAssertions:(id)assertions setter:(id)setter;
- (void)_statusBarUpdatedFromSettings:(id)settings toSettings:(id)toSettings withAnimations:(id)animations;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation SBWindowSceneStatusBarAssertionManager

- (SBWindowSceneStatusBarAssertionManager)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
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

    objc_storeWeak(&v5->_windowScene, sceneCopy);
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

- (id)effectiveStatusBarStyleRequestForLevel:(unint64_t)level
{
  v4 = [(SBWindowSceneStatusBarAssertionManager *)self statusBarSettingsForLevel:level];
  v5 = [(SBWindowSceneStatusBarAssertionManager *)self _styleRequestForSettings:v4];

  return v5;
}

- (id)effectiveStatusBarStyleRequestWithSettings:(id)settings
{
  currentStatusBarSettings = self->_currentStatusBarSettings;
  settingsCopy = settings;
  v6 = [(SBStatusBarSettings *)currentStatusBarSettings mutableCopy];
  [v6 applySettings:settingsCopy];

  [(SBWindowSceneStatusBarAssertionManager *)self _resolveEffectiveStatusBarStyleForSettings:v6];
  v7 = [(SBWindowSceneStatusBarAssertionManager *)self _styleRequestForSettings:v6];

  return v7;
}

- (id)statusBarSettingsForLevel:(unint64_t)level
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
  [(SBWindowSceneStatusBarAssertionManager *)self _enumerateAssertionsToLevel:level withBlock:v7];
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

- (unint64_t)statusBar:(id)bar effectiveStyleOverridesForRequestedStyle:(int64_t)style overrides:(unint64_t)overrides
{
  v6 = [(SBStatusBarSettings *)self->_currentStatusBarSettings backgroundActivitiesToSuppress:bar];
  v7 = STUIStyleOverridesForBackgroundActivityIdentifiers();

  return overrides & ~v7;
}

- (int64_t)effectiveStatusBarStyleForRequestedStyle:(int64_t)style styleOverridesToSuppress:(unint64_t)suppress
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  statusBarManager = [WeakRetained statusBarManager];
  statusBar = [statusBarManager statusBar];
  styleOverrides = [statusBar styleOverrides];

  v10 = MEMORY[0x277D75A78];

  return [v10 defaultStyleForRequestedStyle:style styleOverrides:styleOverrides & ~suppress];
}

- (id)statusBar:(id)bar effectiveBackgroundActivitiesForBackgroundActiviesWithIdentifiers:(id)identifiers
{
  v5 = [identifiers mutableCopy];
  backgroundActivitiesToSuppress = [(SBStatusBarSettings *)self->_currentStatusBarSettings backgroundActivitiesToSuppress];
  [v5 minusSet:backgroundActivitiesToSuppress];

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    v8 = observerCopy;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    observerCopy = v8;
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (id)acquireDisableAlphaChangesAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = [[SBDisableWindowSceneStatusBarAlphaChangesAssertion alloc] _initWithWindowSceneStatusBarAssertionManager:self reason:reasonCopy];

  return v5;
}

- (id)acquireDisableUserInteractionChangesAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = [[SBDisableWindowSceneStatusBarUserInteractionChangesAssertion alloc] _initWithWindowSceneStatusBarAssertionManager:self reason:reasonCopy];

  return v5;
}

- (id)newSettingsAssertionWithSettings:(id)settings atLevel:(unint64_t)level reason:(id)reason
{
  reasonCopy = reason;
  settingsCopy = settings;
  v10 = [[SBWindowSceneStatusBarSettingsAssertion alloc] _initWithWindowSceneStatusBarAssertionManager:self settings:settingsCopy atLevel:level reason:reasonCopy];

  return v10;
}

- (id)newSettingsAssertionWithStatusBarHidden:(BOOL)hidden atLevel:(unint64_t)level reason:(id)reason
{
  hiddenCopy = hidden;
  reasonCopy = reason;
  v9 = [[SBWindowSceneStatusBarSettingsAssertion alloc] _initWithWindowSceneStatusBarAssertionManager:self statusBarHidden:hiddenCopy atLevel:level reason:reasonCopy];

  return v9;
}

- (BOOL)statusBar:(id)bar shouldSetAlpha:(double)alpha
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACC8];
  barCopy = bar;
  if (([v6 isMainThread] & 1) == 0)
  {
    [SBWindowSceneStatusBarAssertionManager statusBar:shouldSetAlpha:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  statusBarManager = [WeakRetained statusBarManager];
  statusBar = [statusBarManager statusBar];

  if (statusBar == barCopy && !self->_changingStatusBarAlpha)
  {
    v13 = SBLogStatusBarish();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 134217984;
      alphaCopy = alpha;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "Status bar alpha changed outside of SBWindowSceneStatusBarSettingsAssertion. Rejecting change to set alpha to: %f", &v14, 0xCu);
    }

    return self->_changingStatusBarAlpha;
  }

  else
  {
    return 1;
  }
}

- (BOOL)statusBar:(id)bar shouldRequestStyleAttributes:(id)attributes animationParameters:(id)parameters forced:(BOOL)forced
{
  v7 = MEMORY[0x277CCACC8];
  barCopy = bar;
  if (([v7 isMainThread] & 1) == 0)
  {
    [SBWindowSceneStatusBarAssertionManager statusBar:shouldRequestStyleAttributes:animationParameters:forced:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  statusBarManager = [WeakRetained statusBarManager];
  statusBar = [statusBarManager statusBar];

  if (statusBar == barCopy && !self->_changingStatusBarStyle)
  {
    v12 = SBLogStatusBarish();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBWindowSceneStatusBarAssertionManager statusBar:v12 shouldRequestStyleAttributes:? animationParameters:? forced:?];
    }
  }

  return 1;
}

- (BOOL)statusBar:(id)bar shouldRequestStyle:(int64_t)style animationParameters:(id)parameters forced:(BOOL)forced
{
  v7 = MEMORY[0x277CCACC8];
  barCopy = bar;
  if (([v7 isMainThread] & 1) == 0)
  {
    [SBWindowSceneStatusBarAssertionManager statusBar:shouldRequestStyle:animationParameters:forced:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  statusBarManager = [WeakRetained statusBarManager];
  statusBar = [statusBarManager statusBar];

  if (statusBar == barCopy && !self->_changingStatusBarStyle)
  {
    v12 = SBLogStatusBarish();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBWindowSceneStatusBarAssertionManager statusBar:v12 shouldRequestStyleAttributes:? animationParameters:? forced:?];
    }
  }

  return 1;
}

- (void)_addDisableWindowSceneStatusBarAlphaChangesAssertion:(id)assertion
{
  v8 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  if (assertionCopy)
  {
    v5 = SBLogStatusBarish();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = assertionCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Adding status bar disable alpha change assertion: %@", &v6, 0xCu);
    }

    [(NSHashTable *)self->_disableAlphaChangeAssertions addObject:assertionCopy];
  }
}

- (void)_removeDisableWindowSceneStatusBarAlphaChangesAssertion:(id)assertion
{
  v8 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  if (assertionCopy)
  {
    v5 = SBLogStatusBarish();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = assertionCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Removing status bar disable alpha change assertion: %@", &v6, 0xCu);
    }

    [(NSHashTable *)self->_disableAlphaChangeAssertions removeObject:assertionCopy];
    if (![(NSHashTable *)self->_disableAlphaChangeAssertions count])
    {
      [(SBWindowSceneStatusBarAssertionManager *)self _statusBarUpdatedFromSettings:0 toSettings:self->_currentStatusBarSettings withAnimations:0];
    }
  }
}

- (void)_addDisableWindowSceneStatusBarUserInteractionChangesAssertion:(id)assertion
{
  if (assertion)
  {
    [(NSHashTable *)self->_disableUserInteractionChangeAssertions addObject:?];
  }
}

- (void)_removeDisableWindowSceneStatusBarUserInteractionChangesAssertion:(id)assertion
{
  if (assertion)
  {
    [(NSHashTable *)self->_disableUserInteractionChangeAssertions removeObject:?];
  }
}

- (void)_addStatusBarSettingsAssertion:(id)assertion withAnimationParameters:(id)parameters
{
  v27 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  parametersCopy = parameters;
  level = [assertionCopy level];
  statusBarSettingsAssertionsByLevel = self->_statusBarSettingsAssertionsByLevel;
  v10 = self->_statusBarSettingsAssertionsByLevel[level];
  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:514];
    v11 = statusBarSettingsAssertionsByLevel[level];
    statusBarSettingsAssertionsByLevel[level] = v10;
  }

  v12 = SBLogStatusBarish();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = assertionCopy;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "adding status bar settings assertion: %{public}@", buf, 0xCu);
  }

  [(NSPointerArray *)v10 addPointer:assertionCopy];
  v19 = parametersCopy;
  [(SBWindowSceneStatusBarAssertionManager *)self _evaluateSettingsWithStyleAnimations:parametersCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v14 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          [v18 statusBarAssertionManager:self addStatusBarSettingsAssertion:assertionCopy];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }
}

- (void)_removeStatusBarSettingsAssertion:(id)assertion withAnimationParameters:(id)parameters
{
  v36 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  parametersCopy = parameters;
  level = [assertionCopy level];
  statusBarSettingsAssertionsByLevel = self->_statusBarSettingsAssertionsByLevel;
  v10 = self->_statusBarSettingsAssertionsByLevel[level];
  v11 = v10;
  if (v10)
  {
    v12 = [(NSPointerArray *)v10 count];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      while ([(NSPointerArray *)v11 pointerAtIndex:v14]!= assertionCopy)
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
          date = [MEMORY[0x277CBEAA8] date];
          timestamp = [assertionCopy timestamp];
          [date timeIntervalSinceDate:?];
          *buf = 134218242;
          v33 = v17;
          v34 = 2114;
          v35 = assertionCopy;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "removing status bar settings assertion after %f seconds: %{public}@", buf, 0x16u);
        }

        [(NSPointerArray *)v11 removePointerAtIndex:v14];
        if (![(NSPointerArray *)v11 count])
        {
          v18 = statusBarSettingsAssertionsByLevel[level];
          statusBarSettingsAssertionsByLevel[level] = 0;
        }

        [(SBWindowSceneStatusBarAssertionManager *)self _evaluateSettingsWithStyleAnimations:parametersCopy];
      }
    }
  }

LABEL_13:
  v26 = parametersCopy;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v20 = [allObjects countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v24 = *(*(&v27 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v24 statusBarAssertionManager:self removeStatusBarSettingsAssertion:assertionCopy];
        }
      }

      v21 = [allObjects countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v21);
  }
}

- (void)_enumerateAssertionsToLevel:(unint64_t)level withBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (level >= 0xE)
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

            blockCopy[2](blockCopy, *(*(&v16 + 1) + 8 * v15++));
          }

          while (v13 != v15);
          v13 = [(NSPointerArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }

    ++v8;
  }

  while (v8 <= level);
}

- (void)_resolveEffectiveStatusBarStyleForSettings:(id)settings
{
  settingsCopy = settings;
  if ([settingsCopy style] == -1)
  {
    style = SBDefaultStatusBarStyle();
  }

  else
  {
    style = [settingsCopy style];
  }

  v5 = style;
  backgroundActivitiesToSuppress = [settingsCopy backgroundActivitiesToSuppress];
  v7 = [(SBWindowSceneStatusBarAssertionManager *)self effectiveStatusBarStyleForRequestedStyle:v5 styleOverridesToSuppress:STUIStyleOverridesForBackgroundActivityIdentifiers()];

  [settingsCopy setStyle:v7];
}

- (id)_styleRequestForSettings:(id)settings
{
  v3 = MEMORY[0x277D6BFE8];
  settingsCopy = settings;
  v5 = [v3 alloc];
  v6 = _SBStatusBarStyleFromLegacyStyle([settingsCopy style]);
  legibilitySettings = [settingsCopy legibilitySettings];

  primaryColor = [legibilitySettings primaryColor];
  v9 = [v5 initWithResolvedStyle:v6 foregroundColor:primaryColor];

  return v9;
}

- (void)_statusBarUpdatedFromSettings:(id)settings toSettings:(id)toSettings withAnimations:(id)animations
{
  settingsCopy = settings;
  toSettingsCopy = toSettings;
  animationsCopy = animations;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBWindowSceneStatusBarAssertionManager _statusBarUpdatedFromSettings:toSettings:withAnimations:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  statusBarManager = [WeakRetained statusBarManager];
  statusBar = [statusBarManager statusBar];

  v14 = [(SBWindowSceneStatusBarAssertionManager *)self _styleRequestForSettings:toSettingsCopy];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __98__SBWindowSceneStatusBarAssertionManager__statusBarUpdatedFromSettings_toSettings_withAnimations___block_invoke;
  v56[3] = &unk_2783C0DA8;
  v56[4] = self;
  v15 = statusBar;
  v57 = v15;
  v45 = MEMORY[0x223D6F7F0](v56);
  val = self;
  if (!animationsCopy)
  {
    if ([MEMORY[0x277D75D18] _isInAnimationBlock])
    {
      animationsCopy = [objc_alloc(MEMORY[0x277D75AA0]) initWithEmptyParameters];
      _currentAnimationSettings = [MEMORY[0x277D75D18] _currentAnimationSettings];
      [_currentAnimationSettings duration];
      [animationsCopy setDuration:?];
      [_currentAnimationSettings delay];
      [animationsCopy setDelay:?];
      [animationsCopy setCurve:3];
      [animationsCopy setStyleAnimation:1];
    }

    else
    {
      animationsCopy = 0;
    }
  }

  v43 = v14;
  v44 = animationsCopy;
  if (settingsCopy)
  {
    alpha = [settingsCopy alpha];
    [alpha floatValue];
    alpha2 = [toSettingsCopy alpha];
    [alpha2 floatValue];
    v42 = BSFloatEqualToFloat() ^ 1;

    backgroundActivitiesToSuppress = [settingsCopy backgroundActivitiesToSuppress];
    backgroundActivitiesToSuppress2 = [toSettingsCopy backgroundActivitiesToSuppress];
    v21 = BSEqualSets();
  }

  else
  {
    v21 = 0;
    v42 = 1;
  }

  legibilitySettings = [settingsCopy legibilitySettings];
  legibilitySettings2 = [toSettingsCopy legibilitySettings];
  v24 = BSEqualObjects();

  if (settingsCopy)
  {
    style = [settingsCopy style];
    v26 = (style == [toSettingsCopy style]) & v24 & v21;
    hiddenParts = [settingsCopy hiddenParts];
    v28 = hiddenParts != [toSettingsCopy hiddenParts];
    alpha3 = [settingsCopy alpha];
    [alpha3 floatValue];
  }

  else
  {
    [v15 alpha];
    v26 = 0;
    v28 = 1;
  }

  if (BSFloatGreaterThanFloat())
  {
    alpha4 = [toSettingsCopy alpha];
    [alpha4 floatValue];
    IsZero = BSFloatIsZero();
  }

  else
  {
    IsZero = 0;
  }

  if (BSFloatIsZero())
  {
    alpha5 = [toSettingsCopy alpha];
    [alpha5 floatValue];
    v33 = BSFloatGreaterThanFloat();
  }

  else
  {
    v33 = 0;
  }

  if (BSFloatGreaterThanFloat())
  {
    alpha6 = [toSettingsCopy alpha];
    [alpha6 floatValue];
    v35 = BSFloatGreaterThanFloat();
  }

  else
  {
    v35 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v33)
  {
    statusBar2 = [v15 statusBar];
    [statusBar2 reinitializeStatusBar];
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
    v55 = toSettingsCopy;
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

- (void)_evaluateSettingsWithStyleAnimations:(id)animations
{
  v42 = *MEMORY[0x277D85DE8];
  animationsCopy = animations;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  statusBarManager = [WeakRetained statusBarManager];

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
    alpha = [v30[5] alpha];
    [alpha floatValue];
    v17 = v16;
    alpha2 = [(SBStatusBarSettings *)self->_currentStatusBarSettings alpha];
    [alpha2 floatValue];
    v20 = v19;
    statusBar = [statusBarManager statusBar];
    [statusBar alpha];
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
    [(SBWindowSceneStatusBarAssertionManager *)self _statusBarUpdatedFromSettings:v8 toSettings:v30[5] withAnimations:animationsCopy];
    v23 = animationsCopy;
    v9 = statusBarManager;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v11 = [allObjects countByEnumeratingWithState:&v24 objects:v35 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v14 = *(*(&v24 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 statusBarAssertionManager:self statusBarSettingsDidChange:self->_currentStatusBarSettings];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [allObjects countByEnumeratingWithState:&v24 objects:v35 count:16];
      }

      while (v11);
    }

    statusBarManager = v9;
    animationsCopy = v23;
  }

  _Block_object_dispose(&v29, 8);
}

void __79__SBWindowSceneStatusBarAssertionManager__evaluateSettingsWithStyleAnimations___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 settings];
  [v2 applySettings:v3];
}

- (id)_descriptionForPropertyWithAssertions:(id)assertions
{
  if (self->_disableAlphaChangeAssertions == assertions)
  {
    return @"alpha";
  }

  if (self->_disableUserInteractionChangeAssertions == assertions)
  {
    return @"user interaction";
  }

  return 0;
}

- (void)_setStatusBarValueForPropertyWithAssertions:(id)assertions setter:(id)setter
{
  v14 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  setterCopy = setter;
  if ([assertionsCopy count])
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(SBWindowSceneStatusBarAssertionManager *)self _descriptionForPropertyWithAssertions:assertionsCopy];
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = assertionsCopy;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Suppressing status bar %{public}@ change due to outstanding disablement assertions: %@", &v10, 0x16u);
    }
  }

  else if (setterCopy)
  {
    setterCopy[2](setterCopy);
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBWindowSceneStatusBarAssertionManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBWindowSceneStatusBarAssertionManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBWindowSceneStatusBarAssertionManager *)self succinctDescriptionBuilder];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__SBWindowSceneStatusBarAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_2783A8ED8;
  v7 = succinctDescriptionBuilder;
  v12 = v7;
  v13 = WeakRetained;
  selfCopy = self;
  v8 = WeakRetained;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v11];

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

- (BOOL)isFrontmostStatusBarPartHidden:(int64_t)hidden
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  statusBarManager = [WeakRetained statusBarManager];
  if (![statusBarManager isStatusBarEffectivelyHidden])
  {
    goto LABEL_40;
  }

  lockScreenManager = [WeakRetained lockScreenManager];
  if (![lockScreenManager isUILocked] || (-[SBWindowSceneStatusBarAssertionManager currentStatusBarSettings](self, "currentStatusBarSettings"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "alpha"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", &unk_283371FC0), v9, v8, !v10))
  {
    transientOverlayPresenter = [WeakRetained transientOverlayPresenter];
    if ([transientOverlayPresenter hasActivePresentation])
    {
      v11 = [transientOverlayPresenter hasVisibleStatusBar] ^ 1;

      goto LABEL_41;
    }

    switcherController = [WeakRetained switcherController];
    layoutStatePrimaryElement = [switcherController layoutStatePrimaryElement];
    workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
    applicationSceneEntity = [workspaceEntity applicationSceneEntity];
    sceneHandle = [applicationSceneEntity sceneHandle];

    layoutStateSideElement = [switcherController layoutStateSideElement];
    workspaceEntity2 = [layoutStateSideElement workspaceEntity];
    applicationSceneEntity2 = [workspaceEntity2 applicationSceneEntity];
    sceneHandle2 = [applicationSceneEntity2 sceneHandle];

    if (!sceneHandle)
    {
      LOBYTE(v11) = 1;
      goto LABEL_39;
    }

    application = [sceneHandle application];
    if ([application isClassic] && !objc_msgSend(application, "includesStatusBarInClassicJailForInterfaceOrientation:", objc_msgSend(sceneHandle, "activationInterfaceOrientationForCurrentOrientation")))
    {
      LOBYTE(v11) = 0;
LABEL_38:

LABEL_39:
      if (sceneHandle)
      {
        goto LABEL_41;
      }

LABEL_40:
      LOBYTE(v11) = [statusBarManager isStatusBarEffectivelyHidden];
      goto LABEL_41;
    }

    switcherController2 = [WeakRetained switcherController];
    if ([switcherController2 isInAppStatusBarHidden])
    {
      LOBYTE(v11) = 1;
LABEL_37:

      goto LABEL_38;
    }

    if (hidden <= 3)
    {
      if (hidden != 1)
      {
        if (hidden == 2)
        {
          windowManagementContext = [switcherController2 windowManagementContext];
          if (([windowManagementContext isMedusaEnabled] & (sceneHandle2 != 0)) != 0)
          {
            v24 = sceneHandle2;
          }

          else
          {
            v24 = sceneHandle;
          }

          sceneIfExists = [v24 sceneIfExists];

LABEL_31:
          if (sceneIfExists)
          {
            v33 = sceneIfExists;
            uiClientSettings = [sceneIfExists uiClientSettings];
            if ([uiClientSettings statusBarHidden])
            {
              LOBYTE(v11) = 1;
            }

            else
            {
              [uiClientSettings statusBarAlpha];
              LOBYTE(v11) = BSFloatIsZero();
            }

            goto LABEL_37;
          }
        }

LABEL_34:
        LOBYTE(v11) = [switcherController2 unlockedEnvironmentMode] == 2;
        goto LABEL_37;
      }

LABEL_23:
      sceneIfExists = [sceneHandle sceneIfExists];
      goto LABEL_31;
    }

    if (hidden != 4)
    {
      if (hidden != 0xFFFF)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    layoutState = [switcherController2 layoutState];
    appLayout = [layoutState appLayout];

    v28 = SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration([appLayout configuration]);
    if (v28 >= 2)
    {
      if (v28 == 2)
      {
        v29 = sceneHandle2;
        goto LABEL_29;
      }

      if (v28 != 4)
      {
        sceneIfExists2 = 0;
        goto LABEL_30;
      }
    }

    v29 = sceneHandle;
LABEL_29:
    sceneIfExists2 = [v29 sceneIfExists];
LABEL_30:

    sceneIfExists = sceneIfExists2;
    goto LABEL_31;
  }

  LOBYTE(v11) = 1;
LABEL_41:

  return v11;
}

- (id)acquireHideFrontmostStatusBarAssertionForReason:(id)reason
{
  reasonCopy = reason;
  v5 = [(SBWindowSceneStatusBarAssertionManager *)self newSettingsAssertionWithStatusBarHidden:1 atLevel:8 reason:reasonCopy];
  [v5 acquire];
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  switcherController = [WeakRetained switcherController];
  v8 = [switcherController requestInAppStatusBarHiddenAssertionForReason:reasonCopy animated:0];

  transientOverlayPresenter = [WeakRetained transientOverlayPresenter];
  v10 = [transientOverlayPresenter newContentStatusBarHiddenAssertionWithReason:@"com.springboard.SBStatusBarManager.hideStatusBarAssertion"];
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
  v15 = [v11 initWithIdentifier:@"com.springboard.SBStatusBarManager.hideStatusBarAssertion" forReason:reasonCopy queue:MEMORY[0x277D85CD0] invalidationBlock:v17];

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