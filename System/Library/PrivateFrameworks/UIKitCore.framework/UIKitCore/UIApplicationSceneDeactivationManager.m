@interface UIApplicationSceneDeactivationManager
- (BOOL)_isEligibleScene:(id)a3;
- (BOOL)_isEligibleScene:(id)a3 withSettings:(id)a4;
- (UIApplicationSceneDeactivationManager)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)newAssertionWithReason:(int64_t)a3;
- (id)succinctDescription;
- (unint64_t)_deactivationReasonsForScene:(id)a3 withSettings:(id)a4;
- (void)_setDeactivationReasons:(unint64_t)a3 onScene:(id)a4 withSettings:(id)a5 reason:(id)a6;
- (void)_trackScene:(id)a3;
- (void)_untrackScene:(id)a3;
- (void)_updateScenesWithTransitionContext:(id)a3 reason:(id)a4;
- (void)addAssertion:(id)a3 withTransitionContext:(id)a4;
- (void)amendSceneSettings:(id)a3 forScene:(id)a4;
- (void)beginTrackingScene:(id)a3;
- (void)removeAssertion:(id)a3;
@end

@implementation UIApplicationSceneDeactivationManager

- (UIApplicationSceneDeactivationManager)init
{
  if (pthread_main_np() != 1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIApplicationSceneDeactivationManager init]"];
    [v9 handleFailureInFunction:v10 file:@"UIApplicationSceneDeactivationManager.m" lineNumber:39 description:@"this call must be made on the main thread"];
  }

  v11.receiver = self;
  v11.super_class = UIApplicationSceneDeactivationManager;
  v3 = [(UIApplicationSceneDeactivationManager *)&v11 init];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    assertions = v3->_assertions;
    v3->_assertions = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    eligibleScenes = v3->_eligibleScenes;
    v3->_eligibleScenes = v6;
  }

  return v3;
}

- (id)newAssertionWithReason:(int64_t)a3
{
  v5 = [UIApplicationSceneDeactivationAssertion alloc];

  return [(UIApplicationSceneDeactivationAssertion *)v5 initWithReason:a3 manager:self];
}

- (void)beginTrackingScene:(id)a3
{
  v6 = a3;
  v4 = [v6 settings];
  v5 = [(UIApplicationSceneDeactivationManager *)self _isEligibleScene:v6 withSettings:v4];

  if (v5)
  {
    [(UIApplicationSceneDeactivationManager *)self _trackScene:v6];
  }
}

- (void)amendSceneSettings:(id)a3 forScene:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (self->_updatingScene != v6 && [(UIApplicationSceneDeactivationManager *)self _isEligibleScene:v6])
  {
    if ([(UIApplicationSceneDeactivationManager *)self _areEligibleSettings:v7])
    {
      [(UIApplicationSceneDeactivationManager *)self _trackScene:v6];
      [(UIApplicationSceneDeactivationManager *)self _setDeactivationReasons:[(UIApplicationSceneDeactivationManager *)self _deactivationReasonsForScene:v6 withSettings:v7] onScene:v6 withSettings:v7 reason:@"scene settings update - settings are eligible for deactivation reasons"];
    }

    else
    {
      [(UIApplicationSceneDeactivationManager *)self _deactivationReasonsForScene:v6 withSettings:v7];
      [(UIApplicationSceneDeactivationManager *)self _setDeactivationReasons:0 onScene:v6 withSettings:v7 reason:@"scene settings update - settings are NOT eligible for deactivation reasons"];
      [(UIApplicationSceneDeactivationManager *)self _untrackScene:v6];
    }
  }
}

- (void)addAssertion:(id)a3 withTransitionContext:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *(__UILogGetCategoryCachedImpl("SceneDeactivation", &addAssertion_withTransitionContext____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Added: %{public}@", &v9, 0xCu);
  }

  if (v6)
  {
    [(NSHashTable *)self->_assertions addObject:v6];
  }

  [(UIApplicationSceneDeactivationManager *)self _updateScenesWithTransitionContext:v7 reason:@"Assertion added"];
}

- (void)removeAssertion:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = *(__UILogGetCategoryCachedImpl("SceneDeactivation", &removeAssertion____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Removed: %{public}@", &v6, 0xCu);
    }

    [(NSHashTable *)self->_assertions removeObject:v4];
  }

  [(UIApplicationSceneDeactivationManager *)self _updateScenesWithTransitionContext:0 reason:@"Assertion removed"];
}

- (BOOL)_isEligibleScene:(id)a3
{
  v3 = a3;
  v4 = [v3 settings];
  if ([v4 isUISubclass])
  {
    v5 = [v3 definition];
    v6 = [v5 clientIdentity];
    v7 = [v6 isLocal] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_isEligibleScene:(id)a3 withSettings:(id)a4
{
  v6 = a4;
  if ([(UIApplicationSceneDeactivationManager *)self _isEligibleScene:a3])
  {
    v7 = [(UIApplicationSceneDeactivationManager *)self _areEligibleSettings:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setDeactivationReasons:(unint64_t)a3 onScene:(id)a4 withSettings:(id)a5 reason:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v11 deactivationReasons] != a3)
  {
    [v11 setDeactivationReasons:a3];
    v13 = *(__UILogGetCategoryCachedImpl("SceneDeactivation", &_setDeactivationReasons_onScene_withSettings_reason____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 identifier];
      if (a3)
      {
        v6 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents(a3);
        v15 = [v6 componentsJoinedByString:{@", "}];
      }

      else
      {
        v15 = @"(none)";
      }

      v16 = 138543874;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting deactivation reasons to: '%{public}@' for reason: %{public}@.", &v16, 0x20u);
      if (a3)
      {
      }
    }
  }
}

- (void)_updateScenesWithTransitionContext:(id)a3 reason:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v6 = a4;
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
          v13 = [v12 uiSettings];
          v14 = [(UIApplicationSceneDeactivationManager *)self _deactivationReasonsForScene:v12 withSettings:v13];
          if (v14 != [v13 deactivationReasons])
          {
            objc_storeStrong(&self->_updatingScene, v12);
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __83__UIApplicationSceneDeactivationManager__updateScenesWithTransitionContext_reason___block_invoke;
            v17[3] = &unk_1E7109CD8;
            v20 = v14;
            v17[4] = self;
            v17[5] = v12;
            v18 = v6;
            v19 = v16;
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

- (unint64_t)_deactivationReasonsForScene:(id)a3 withSettings:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
          v16 = [v14 predicate];
          v17 = v16;
          if (!v16 || (*(v16 + 16))(v16, v6, v7))
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

- (void)_trackScene:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(NSMutableSet *)self->_eligibleScenes containsObject:v4]& 1) == 0)
  {
    v5 = *(__UILogGetCategoryCachedImpl("SceneDeactivation", &_trackScene____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Now tracking: %{public}@", &v6, 0xCu);
    }

    [(NSMutableSet *)self->_eligibleScenes addObject:v4];
  }
}

- (void)_untrackScene:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSMutableSet *)self->_eligibleScenes containsObject:v4])
  {
    v5 = *(__UILogGetCategoryCachedImpl("SceneDeactivation", &_untrackScene____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "No longer tracking: %{public}@", &v6, 0xCu);
    }

    [(NSMutableSet *)self->_eligibleScenes removeObject:v4];
  }
}

- (id)succinctDescription
{
  v2 = [(UIApplicationSceneDeactivationManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UIApplicationSceneDeactivationManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(UIApplicationSceneDeactivationManager *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__UIApplicationSceneDeactivationManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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