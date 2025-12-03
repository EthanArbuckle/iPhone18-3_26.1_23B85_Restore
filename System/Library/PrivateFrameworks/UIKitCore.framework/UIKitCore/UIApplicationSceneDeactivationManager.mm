@interface UIApplicationSceneDeactivationManager
- (BOOL)_isEligibleScene:(id)scene;
- (BOOL)_isEligibleScene:(id)scene withSettings:(id)settings;
- (UIApplicationSceneDeactivationManager)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)newAssertionWithReason:(int64_t)reason;
- (id)succinctDescription;
- (unint64_t)_deactivationReasonsForScene:(id)scene withSettings:(id)settings;
- (void)_setDeactivationReasons:(unint64_t)reasons onScene:(id)scene withSettings:(id)settings reason:(id)reason;
- (void)_trackScene:(id)scene;
- (void)_untrackScene:(id)scene;
- (void)_updateScenesWithTransitionContext:(id)context reason:(id)reason;
- (void)addAssertion:(id)assertion withTransitionContext:(id)context;
- (void)amendSceneSettings:(id)settings forScene:(id)scene;
- (void)beginTrackingScene:(id)scene;
- (void)removeAssertion:(id)assertion;
@end

@implementation UIApplicationSceneDeactivationManager

- (UIApplicationSceneDeactivationManager)init
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIApplicationSceneDeactivationManager init]"];
    [currentHandler handleFailureInFunction:v10 file:@"UIApplicationSceneDeactivationManager.m" lineNumber:39 description:@"this call must be made on the main thread"];
  }

  v11.receiver = self;
  v11.super_class = UIApplicationSceneDeactivationManager;
  v3 = [(UIApplicationSceneDeactivationManager *)&v11 init];
  if (v3)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    assertions = v3->_assertions;
    v3->_assertions = weakObjectsHashTable;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    eligibleScenes = v3->_eligibleScenes;
    v3->_eligibleScenes = v6;
  }

  return v3;
}

- (id)newAssertionWithReason:(int64_t)reason
{
  v5 = [UIApplicationSceneDeactivationAssertion alloc];

  return [(UIApplicationSceneDeactivationAssertion *)v5 initWithReason:reason manager:self];
}

- (void)beginTrackingScene:(id)scene
{
  sceneCopy = scene;
  settings = [sceneCopy settings];
  v5 = [(UIApplicationSceneDeactivationManager *)self _isEligibleScene:sceneCopy withSettings:settings];

  if (v5)
  {
    [(UIApplicationSceneDeactivationManager *)self _trackScene:sceneCopy];
  }
}

- (void)amendSceneSettings:(id)settings forScene:(id)scene
{
  settingsCopy = settings;
  sceneCopy = scene;
  if (self->_updatingScene != sceneCopy && [(UIApplicationSceneDeactivationManager *)self _isEligibleScene:sceneCopy])
  {
    if ([(UIApplicationSceneDeactivationManager *)self _areEligibleSettings:settingsCopy])
    {
      [(UIApplicationSceneDeactivationManager *)self _trackScene:sceneCopy];
      [(UIApplicationSceneDeactivationManager *)self _setDeactivationReasons:[(UIApplicationSceneDeactivationManager *)self _deactivationReasonsForScene:sceneCopy withSettings:settingsCopy] onScene:sceneCopy withSettings:settingsCopy reason:@"scene settings update - settings are eligible for deactivation reasons"];
    }

    else
    {
      [(UIApplicationSceneDeactivationManager *)self _deactivationReasonsForScene:sceneCopy withSettings:settingsCopy];
      [(UIApplicationSceneDeactivationManager *)self _setDeactivationReasons:0 onScene:sceneCopy withSettings:settingsCopy reason:@"scene settings update - settings are NOT eligible for deactivation reasons"];
      [(UIApplicationSceneDeactivationManager *)self _untrackScene:sceneCopy];
    }
  }
}

- (void)addAssertion:(id)assertion withTransitionContext:(id)context
{
  v11 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  contextCopy = context;
  v8 = *(__UILogGetCategoryCachedImpl("SceneDeactivation", &addAssertion_withTransitionContext____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = assertionCopy;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Added: %{public}@", &v9, 0xCu);
  }

  if (assertionCopy)
  {
    [(NSHashTable *)self->_assertions addObject:assertionCopy];
  }

  [(UIApplicationSceneDeactivationManager *)self _updateScenesWithTransitionContext:contextCopy reason:@"Assertion added"];
}

- (void)removeAssertion:(id)assertion
{
  v8 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  if (assertionCopy)
  {
    v5 = *(__UILogGetCategoryCachedImpl("SceneDeactivation", &removeAssertion____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = assertionCopy;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Removed: %{public}@", &v6, 0xCu);
    }

    [(NSHashTable *)self->_assertions removeObject:assertionCopy];
  }

  [(UIApplicationSceneDeactivationManager *)self _updateScenesWithTransitionContext:0 reason:@"Assertion removed"];
}

- (BOOL)_isEligibleScene:(id)scene
{
  sceneCopy = scene;
  settings = [sceneCopy settings];
  if ([settings isUISubclass])
  {
    definition = [sceneCopy definition];
    clientIdentity = [definition clientIdentity];
    v7 = [clientIdentity isLocal] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_isEligibleScene:(id)scene withSettings:(id)settings
{
  settingsCopy = settings;
  if ([(UIApplicationSceneDeactivationManager *)self _isEligibleScene:scene])
  {
    v7 = [(UIApplicationSceneDeactivationManager *)self _areEligibleSettings:settingsCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setDeactivationReasons:(unint64_t)reasons onScene:(id)scene withSettings:(id)settings reason:(id)reason
{
  v22 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  settingsCopy = settings;
  reasonCopy = reason;
  if ([settingsCopy deactivationReasons] != reasons)
  {
    [settingsCopy setDeactivationReasons:reasons];
    v13 = *(__UILogGetCategoryCachedImpl("SceneDeactivation", &_setDeactivationReasons_onScene_withSettings_reason____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [sceneCopy identifier];
      if (reasons)
      {
        v6 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents(reasons);
        v15 = [v6 componentsJoinedByString:{@", "}];
      }

      else
      {
        v15 = @"(none)";
      }

      v16 = 138543874;
      v17 = identifier;
      v18 = 2114;
      v19 = v15;
      v20 = 2114;
      v21 = reasonCopy;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting deactivation reasons to: '%{public}@' for reason: %{public}@.", &v16, 0x20u);
      if (reasons)
      {
      }
    }
  }
}

- (void)_updateScenesWithTransitionContext:(id)context reason:(id)reason
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  reasonCopy = reason;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_eligibleScenes;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([v12 isValid])
        {
          uiSettings = [v12 uiSettings];
          v14 = [(UIApplicationSceneDeactivationManager *)self _deactivationReasonsForScene:v12 withSettings:uiSettings];
          if (v14 != [uiSettings deactivationReasons])
          {
            objc_storeStrong(&self->_updatingScene, v12);
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __83__UIApplicationSceneDeactivationManager__updateScenesWithTransitionContext_reason___block_invoke;
            v17[3] = &unk_1E7109CD8;
            v20 = v14;
            v17[4] = self;
            v17[5] = v12;
            v18 = reasonCopy;
            v19 = contextCopy;
            [v12 updateUISettingsWithTransitionBlock:v17];
            updatingScene = self->_updatingScene;
            self->_updatingScene = 0;
          }
        }
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

id __83__UIApplicationSceneDeactivationManager__updateScenesWithTransitionContext_reason___block_invoke(void *a1, void *a2)
{
  v3 = a1[8];
  v4 = a1[4];
  v5 = a1[5];
  v6 = MEMORY[0x1E696AEC0];
  v7 = a1[6];
  v8 = a2;
  v9 = [v6 stringWithFormat:@"updateAllScenesForBand - %@", v7];
  [v4 _setDeactivationReasons:v3 onScene:v5 withSettings:v8 reason:v9];

  v10 = a1[7];

  return v10;
}

- (unint64_t)_deactivationReasonsForScene:(id)scene withSettings:(id)settings
{
  v24 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  settingsCopy = settings;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_assertions;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = 1 << [v14 reason];
        if ((v11 & v15) == 0)
        {
          predicate = [v14 predicate];
          v17 = predicate;
          if (!predicate || (*(predicate + 16))(predicate, sceneCopy, settingsCopy))
          {
            v11 |= v15;
          }
        }
      }

      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_trackScene:(id)scene
{
  v8 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (([(NSMutableSet *)self->_eligibleScenes containsObject:sceneCopy]& 1) == 0)
  {
    v5 = *(__UILogGetCategoryCachedImpl("SceneDeactivation", &_trackScene____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = sceneCopy;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Now tracking: %{public}@", &v6, 0xCu);
    }

    [(NSMutableSet *)self->_eligibleScenes addObject:sceneCopy];
  }
}

- (void)_untrackScene:(id)scene
{
  v8 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if ([(NSMutableSet *)self->_eligibleScenes containsObject:sceneCopy])
  {
    v5 = *(__UILogGetCategoryCachedImpl("SceneDeactivation", &_untrackScene____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = sceneCopy;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "No longer tracking: %{public}@", &v6, 0xCu);
    }

    [(NSMutableSet *)self->_eligibleScenes removeObject:sceneCopy];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UIApplicationSceneDeactivationManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIApplicationSceneDeactivationManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(UIApplicationSceneDeactivationManager *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__UIApplicationSceneDeactivationManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __79__UIApplicationSceneDeactivationManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 8) allObjects];
  [v2 appendArraySection:v3 withName:@"assertions" skipIfEmpty:0];

  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 16) allObjects];
  [v4 appendArraySection:v5 withName:@"eligibleScenes" skipIfEmpty:0];
}

@end