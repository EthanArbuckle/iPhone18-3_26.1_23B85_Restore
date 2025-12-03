@interface _UIWindowSceneFBSSceneLifecycleMonitor
- (_UIWindowSceneFBSSceneLifecycleMonitor)initWithScene:(id)scene;
- (id)_windowScene;
- (int64_t)currentActivationState;
- (void)didEnterBackground;
- (void)transitionToTargetState:(id)state fromState:(id)fromState withTransitionContext:(id)context preparations:(id)preparations;
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
    _scene = [(_UISceneLifecycleMonitor *)self _scene];
    _effectiveSettings = [_scene _effectiveSettings];
    v7 = [UIScene _activationStateFromSceneSettings:_effectiveSettings];

    return v7;
  }
}

- (void)willBecomeActive
{
  v6.receiver = self;
  v6.super_class = _UIWindowSceneFBSSceneLifecycleMonitor;
  [(_UISceneLifecycleMonitor *)&v6 willBecomeActive];
  _windowScene = [(_UIWindowSceneFBSSceneLifecycleMonitor *)self _windowScene];
  if (([(UIScene *)_windowScene _systemShellOwnsInterfaceOrientation]& 1) == 0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __58___UIWindowSceneFBSSceneLifecycleMonitor_willBecomeActive__block_invoke;
    v4[3] = &unk_1E70F3590;
    v5 = _windowScene;
    [v5 _enqueuePostSettingsUpdateResponseBlock:v4 inPhase:0x1EFB174D0];
  }
}

- (id)_windowScene
{
  _scene = [(_UISceneLifecycleMonitor *)self _scene];
  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v4 = _scene;
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
  _windowScene = [(_UIWindowSceneFBSSceneLifecycleMonitor *)self _windowScene];
  if (([(UIScene *)_windowScene _systemShellOwnsInterfaceOrientation]& 1) == 0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60___UIWindowSceneFBSSceneLifecycleMonitor_didEnterBackground__block_invoke;
    v4[3] = &unk_1E70F3590;
    v5 = _windowScene;
    [v5 _enqueuePostSettingsUpdateResponseBlock:v4 inPhase:0x1EFB174D0];
  }
}

- (_UIWindowSceneFBSSceneLifecycleMonitor)initWithScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = _UIWindowSceneFBSSceneLifecycleMonitor;
  v3 = [(_UISceneLifecycleMonitor *)&v7 initWithScene:scene];
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

- (void)transitionToTargetState:(id)state fromState:(id)fromState withTransitionContext:(id)context preparations:(id)preparations
{
  stateCopy = state;
  fromStateCopy = fromState;
  contextCopy = context;
  preparationsCopy = preparations;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__23;
  v50 = __Block_byref_object_dispose__23;
  _scene = [(_UISceneLifecycleMonitor *)self _scene];
  if (([v47[5] _hasLifecycle] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneLifecycleMonitor.m" lineNumber:151 description:{@"attemmpting to use %@ for invalid frame subtype: %@ that doesn't expect lifecycle", v30, v32}];
  }

  _FBSScene = [v47[5] _FBSScene];
  v16 = [UIScene _activationStateFromSceneSettings:fromStateCopy];
  v33 = _FBSScene;
  v34 = contextCopy;
  v17 = a2;
  v35 = fromStateCopy;
  v18 = stateCopy;
  v19 = _UISceneLifecycleCompositeActionMaskFromStateToState__staticStateMap[4 * v16 + 5 + [UIScene _activationStateFromSceneSettings:stateCopy]];
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
  if (preparationsCopy)
  {
    preparationsCopy[2](preparationsCopy, v26);
  }

  else
  {
    (*(v26 + 2))(v26, 0);
  }

  _Block_object_dispose(&v46, 8);
}

@end