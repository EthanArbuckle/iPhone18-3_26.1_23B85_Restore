@interface _UIWindowSceneFBSSceneLifecycleMonitor
- (_UIWindowSceneFBSSceneLifecycleMonitor)initWithScene:(id)a3;
- (id)_windowScene;
- (int64_t)currentActivationState;
- (void)didEnterBackground;
- (void)transitionToTargetState:(id)a3 fromState:(id)a4 withTransitionContext:(id)a5 preparations:(id)a6;
- (void)willBecomeActive;
@end

@implementation _UIWindowSceneFBSSceneLifecycleMonitor

- (int64_t)currentActivationState
{
  if (!self->_connected)
  {
    return -1;
  }

  if (self->_transitioning)
  {
    transitioningState = self->_transitioningState;

    return [(NSNumber *)transitioningState integerValue];
  }

  else
  {
    v5 = [(_UISceneLifecycleMonitor *)self _scene];
    v6 = [v5 _effectiveSettings];
    v7 = [UIScene _activationStateFromSceneSettings:v6];

    return v7;
  }
}

- (void)willBecomeActive
{
  v6.receiver = self;
  v6.super_class = _UIWindowSceneFBSSceneLifecycleMonitor;
  [(_UISceneLifecycleMonitor *)&v6 willBecomeActive];
  v3 = [(_UIWindowSceneFBSSceneLifecycleMonitor *)self _windowScene];
  if (([(UIScene *)v3 _systemShellOwnsInterfaceOrientation]& 1) == 0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __58___UIWindowSceneFBSSceneLifecycleMonitor_willBecomeActive__block_invoke;
    v4[3] = &unk_1E70F3590;
    v5 = v3;
    [v5 _enqueuePostSettingsUpdateResponseBlock:v4 inPhase:0x1EFB174D0];
  }
}

- (id)_windowScene
{
  v2 = [(_UISceneLifecycleMonitor *)self _scene];
  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)didEnterBackground
{
  v6.receiver = self;
  v6.super_class = _UIWindowSceneFBSSceneLifecycleMonitor;
  [(_UISceneLifecycleMonitor *)&v6 didEnterBackground];
  v3 = [(_UIWindowSceneFBSSceneLifecycleMonitor *)self _windowScene];
  if (([(UIScene *)v3 _systemShellOwnsInterfaceOrientation]& 1) == 0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60___UIWindowSceneFBSSceneLifecycleMonitor_didEnterBackground__block_invoke;
    v4[3] = &unk_1E70F3590;
    v5 = v3;
    [v5 _enqueuePostSettingsUpdateResponseBlock:v4 inPhase:0x1EFB174D0];
  }
}

- (_UIWindowSceneFBSSceneLifecycleMonitor)initWithScene:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIWindowSceneFBSSceneLifecycleMonitor;
  v3 = [(_UISceneLifecycleMonitor *)&v7 initWithScene:a3];
  v4 = v3;
  if (v3)
  {
    transitioningState = v3->_transitioningState;
    v3->_transitioningState = 0;

    v4->_transitioning = 0;
    v4->_connected = 0;
  }

  return v4;
}

- (void)transitionToTargetState:(id)a3 fromState:(id)a4 withTransitionContext:(id)a5 preparations:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__23;
  v50 = __Block_byref_object_dispose__23;
  v51 = [(_UISceneLifecycleMonitor *)self _scene];
  if (([v47[5] _hasLifecycle] & 1) == 0)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    [v28 handleFailureInMethod:a2 object:self file:@"_UISceneLifecycleMonitor.m" lineNumber:151 description:{@"attemmpting to use %@ for invalid frame subtype: %@ that doesn't expect lifecycle", v30, v32}];
  }

  v15 = [v47[5] _FBSScene];
  v16 = [UIScene _activationStateFromSceneSettings:v12];
  v33 = v15;
  v34 = v13;
  v17 = a2;
  v35 = v12;
  v18 = v11;
  v19 = _UISceneLifecycleCompositeActionMaskFromStateToState__staticStateMap[4 * v16 + 5 + [UIScene _activationStateFromSceneSettings:v11]];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111___UIWindowSceneFBSSceneLifecycleMonitor_transitionToTargetState_fromState_withTransitionContext_preparations___block_invoke;
  aBlock[3] = &unk_1E70F2F20;
  aBlock[4] = &v46;
  v20 = _Block_copy(aBlock);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __111___UIWindowSceneFBSSceneLifecycleMonitor_transitionToTargetState_fromState_withTransitionContext_preparations___block_invoke_2;
  v44[3] = &unk_1E70F2F20;
  v44[4] = &v46;
  v21 = _Block_copy(v44);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __111___UIWindowSceneFBSSceneLifecycleMonitor_transitionToTargetState_fromState_withTransitionContext_preparations___block_invoke_3;
  v43[3] = &unk_1E70F9828;
  v43[4] = self;
  v22 = _Block_copy(v43);
  v22[2](v22, v16, v19 == 1);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __111___UIWindowSceneFBSSceneLifecycleMonitor_transitionToTargetState_fromState_withTransitionContext_preparations___block_invoke_4;
  v36[3] = &unk_1E70F9878;
  v42 = v19;
  v36[4] = self;
  v23 = v22;
  v37 = v23;
  v40 = &v46;
  v24 = v20;
  v38 = v24;
  v25 = v21;
  v39 = v25;
  v41 = v17;
  v26 = _Block_copy(v36);
  v27 = v26;
  if (v14)
  {
    v14[2](v14, v26);
  }

  else
  {
    (*(v26 + 2))(v26, 0);
  }

  _Block_object_dispose(&v46, 8);
}

@end