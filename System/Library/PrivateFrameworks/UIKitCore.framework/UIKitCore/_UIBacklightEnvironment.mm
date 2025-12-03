@interface _UIBacklightEnvironment
+ (BOOL)_backlightEnvironmentSupported;
+ (id)_postSynchronizeQueue;
+ (void)_performOnChildViewControllersForAlwaysOnTimelines:(id)timelines performBlock:(id)block withCompletion:(id)completion;
- (UIScene)_scene;
- (UITraitCollection)_traitOverrides;
- (_UIBacklightEnvironment)initWithScene:(id)scene;
- (id)_windowScene;
- (void)_commit:(BOOL)_commit andPerformPostSynchronizeBlock:(id)block;
- (void)_enumerateAllObserversWithBlock:(id)block;
- (void)_notifyObserversEnvironmentVisualStateWillChangeToState:(id)state;
- (void)_notifyObserversIfEnvironmentVisualStateDidChangeFromActiveOn:(id)on;
- (void)_notifyObserversIfEnvironmentVisualStateDidChangeToActiveOn:(id)on;
- (void)_setScene:(id)scene;
- (void)addObserver:(id)observer;
- (void)environment:(id)environment performBacklightSceneUpdate:(id)update;
- (void)environment:(id)environment timelinesForDateInterval:(id)interval previousSpecifier:(id)specifier completion:(id)completion;
- (void)transitionTraitsInUpdate:(id)update animations:(id)animations completion:(id)completion;
- (void)updateSceneWithFrameSpecifier:(id)specifier layout:(BOOL)layout completion:(id)completion;
@end

@implementation _UIBacklightEnvironment

- (UITraitCollection)_traitOverrides
{
  v13 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() _backlightEnvironmentSupported])
  {
    visualState = self->_visualState;
    if (visualState)
    {
      updateFidelity = [(BLSBacklightSceneVisualState *)visualState updateFidelity];
      adjustedLuminance = [(BLSBacklightSceneVisualState *)self->_visualState adjustedLuminance];
      v6 = 1;
      if (adjustedLuminance != 1)
      {
        v6 = 2;
      }

      if (!adjustedLuminance)
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 2;
      updateFidelity = 3;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42___UIBacklightEnvironment__traitOverrides__block_invoke;
    v10[3] = &__block_descriptor_48_e27_v16__0___UIMutableTraits__8l;
    v10[4] = updateFidelity;
    v10[5] = v6;
    v7 = [UITraitCollection traitCollectionWithTraits:v10];
    v8 = *(__UILogGetCategoryCachedImpl("UIBacklightEnvironment", &_traitOverrides___s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Updated traitOverrides: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)_backlightEnvironmentSupported
{
  if ([objc_opt_class() _alwaysOnSupported])
  {
    return 1;
  }

  v3 = UIApp;

  return [v3 _supportsBacklightEnvironment];
}

- (id)_windowScene
{
  _scene = [(_UIBacklightEnvironment *)self _scene];
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

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

+ (id)_postSynchronizeQueue
{
  if (_MergedGlobals_1148 != -1)
  {
    dispatch_once(&_MergedGlobals_1148, &__block_literal_global_113_0);
  }

  v3 = qword_1ED49E718;

  return v3;
}

- (_UIBacklightEnvironment)initWithScene:(id)scene
{
  sceneCopy = scene;
  v10.receiver = self;
  v10.super_class = _UIBacklightEnvironment;
  v5 = [(_UIBacklightEnvironment *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
    _backlightSceneEnvironment = [sceneCopy _backlightSceneEnvironment];
    delegate = [_backlightSceneEnvironment delegate];

    if (!delegate)
    {
      [_backlightSceneEnvironment setDelegate:v6];
      [_backlightSceneEnvironment setSupportsAlwaysOn:{objc_msgSend(objc_opt_class(), "_alwaysOnSupported")}];
    }
  }

  return v6;
}

- (void)_setScene:(id)scene
{
  objc_storeWeak(&self->_scene, scene);
  _windowScene = [(_UIBacklightEnvironment *)self _windowScene];
  [_windowScene _componentDidUpdateTraitOverrides:self];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)_enumerateAllObserversWithBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = [(NSHashTable *)self->_observers copy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = 0;
      blockCopy[2](blockCopy, v11, &v12);
      if (v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_notifyObserversEnvironmentVisualStateWillChangeToState:(id)state
{
  if (BLSBacklightStateForVisuaState() == 2)
  {
    v4 = &__block_literal_global_121_1;
  }

  else
  {
    v4 = &__block_literal_global_126_1;
  }

  [(_UIBacklightEnvironment *)self _enumerateAllObserversWithBlock:v4];
}

- (void)_notifyObserversIfEnvironmentVisualStateDidChangeToActiveOn:(id)on
{
  visualState = [on visualState];
  v5 = BLSBacklightStateForVisuaState();

  if (v5 == 2)
  {

    [(_UIBacklightEnvironment *)self _enumerateAllObserversWithBlock:&__block_literal_global_131_1];
  }
}

- (void)_notifyObserversIfEnvironmentVisualStateDidChangeFromActiveOn:(id)on
{
  visualState = [on visualState];
  v5 = BLSBacklightStateForVisuaState();

  if (v5 != 2)
  {

    [(_UIBacklightEnvironment *)self _enumerateAllObserversWithBlock:&__block_literal_global_136];
  }
}

- (void)transitionTraitsInUpdate:(id)update animations:(id)animations completion:(id)completion
{
  v59 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  animationsCopy = animations;
  completionCopy = completion;
  context = [updateCopy context];
  previousVisualState = [context previousVisualState];
  context2 = [updateCopy context];
  visualState = [context2 visualState];
  kdebug_trace();

  context3 = [updateCopy context];
  visualState2 = [context3 visualState];

  v17 = [(BLSBacklightSceneVisualState *)self->_visualState isEqual:visualState2];
  if ((v17 & 1) == 0)
  {
    objc_storeStrong(&self->_visualState, visualState2);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74___UIBacklightEnvironment_transitionTraitsInUpdate_animations_completion___block_invoke;
  aBlock[3] = &unk_1E70F3798;
  v57 = v17 ^ 1;
  v18 = updateCopy;
  v54 = v18;
  selfCopy = self;
  v19 = animationsCopy;
  v56 = v19;
  v20 = _Block_copy(aBlock);
  context4 = [v18 context];
  isAnimated = [context4 isAnimated];

  if (isAnimated)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    windows = [WeakRetained windows];

    v25 = [windows countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v50;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v50 != v27)
          {
            objc_enumerationMutation(windows);
          }

          [*(*(&v49 + 1) + 8 * i) layoutIfNeeded];
        }

        v26 = [windows countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v26);
    }

    [MEMORY[0x1E6979518] begin];
    v29 = MEMORY[0x1E6979518];
    [objc_opt_class() _defaultAnimationDuration];
    [v29 setAnimationDuration:?];
    [MEMORY[0x1E6979518] begin];
    if (completionCopy)
    {
      v30 = MEMORY[0x1E6979518];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __74___UIBacklightEnvironment_transitionTraitsInUpdate_animations_completion___block_invoke_148;
      v47[3] = &unk_1E70F0F78;
      v48 = completionCopy;
      [v30 setCompletionBlock:v47];
    }

    v31 = [MEMORY[0x1E6979318] animationWithKeyPath:{@"com.apple.uikit.backlighttransition", v19}];
    [objc_opt_class() _defaultAnimationDuration];
    [v31 setDuration:?];
    [v31 setFromValue:&unk_1EFE2E548];
    [v31 setToValue:&unk_1EFE2E558];
    v32 = objc_loadWeakRetained(&self->_scene);
    keyWindow = [v32 keyWindow];
    [keyWindow addAnimation:v31 forKey:@"uikit.backlightTransition"];

    [objc_opt_class() _defaultAnimationDuration];
    [v18 performBacklightRampWithDuration:?];
    [MEMORY[0x1E6979518] commit];
    [objc_opt_class() _defaultAnimationDuration];
    v35 = v34;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __74___UIBacklightEnvironment_transitionTraitsInUpdate_animations_completion___block_invoke_159;
    v45[3] = &unk_1E70F4A50;
    v45[4] = self;
    v46 = v20;
    [UIView animateWithDuration:v45 animations:v35];
    [MEMORY[0x1E6979518] commit];
    context5 = [v18 context];
    previousVisualState2 = [context5 previousVisualState];
    context6 = [v18 context];
    visualState3 = [context6 visualState];
    kdebug_trace();

    v19 = v44;
  }

  else
  {
    [MEMORY[0x1E6979518] begin];
    v20[2](v20);
    [MEMORY[0x1E6979518] commit];
    context7 = [v18 context];
    previousVisualState3 = [context7 previousVisualState];
    context8 = [v18 context];
    visualState4 = [context8 visualState];
    kdebug_trace();

    [v18 performBacklightRampWithDuration:0.0];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

+ (void)_performOnChildViewControllersForAlwaysOnTimelines:(id)timelines performBlock:(id)block withCompletion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  timelinesCopy = timelines;
  blockCopy = block;
  completionCopy = completion;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = timelinesCopy;
  v12 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v12)
  {
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        [array addObject:v15];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __106___UIBacklightEnvironment__performOnChildViewControllersForAlwaysOnTimelines_performBlock_withCompletion___block_invoke;
        v18[3] = &unk_1E710C838;
        v23 = a2;
        selfCopy = self;
        v19 = array;
        v20 = v15;
        v22 = &v29;
        v21 = completionCopy;
        blockCopy[2](blockCopy, v15, v18);
      }

      v12 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v12);
  }

  if (![array count])
  {
    completionCopy[2]();
  }

  *(v30 + 24) = 1;

  _Block_object_dispose(&v29, 8);
}

- (void)updateSceneWithFrameSpecifier:(id)specifier layout:(BOOL)layout completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  completionCopy = completion;
  array = [MEMORY[0x1E695DF70] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  windows = [WeakRetained windows];

  obj = windows;
  v28 = [windows countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v28)
  {
    v27 = *v41;
    do
    {
      v12 = 0;
      do
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v12;
        rootViewController = [*(*(&v40 + 1) + 8 * v12) rootViewController];
        _effectiveControllersForAlwaysOnTimelines = [rootViewController _effectiveControllersForAlwaysOnTimelines];

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v15 = _effectiveControllersForAlwaysOnTimelines;
        v16 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v37;
          do
          {
            v19 = 0;
            do
            {
              if (*v37 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v36 + 1) + 8 * v19);
              if (completionCopy && (objc_opt_respondsToSelector() & 1) != 0)
              {
                [array addObject:v20];
              }

              else if (objc_opt_respondsToSelector())
              {
                [v20 performSelector:sel_puic_updateWithFrameSpecifier_ withObject:specifierCopy];
              }

              else
              {
                [v20 _updateWithFrameSpecifier:specifierCopy];
              }

              ++v19;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v17);
        }

        v12 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v28);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __75___UIBacklightEnvironment_updateSceneWithFrameSpecifier_layout_completion___block_invoke;
  v32[3] = &unk_1E710C860;
  v21 = specifierCopy;
  v34 = array;
  v35 = completionCopy;
  v33 = v21;
  v22 = array;
  v23 = completionCopy;
  [(_UIBacklightEnvironment *)selfCopy _enumerateAllObserversWithBlock:v32];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __75___UIBacklightEnvironment_updateSceneWithFrameSpecifier_layout_completion___block_invoke_2;
  v30[3] = &unk_1E710C888;
  v31 = v21;
  v24 = v21;
  [_UIBacklightEnvironment _performOnChildViewControllersForAlwaysOnTimelines:v22 performBlock:v30 withCompletion:v23];
}

- (void)_commit:(BOOL)_commit andPerformPostSynchronizeBlock:(id)block
{
  _commitCopy = _commit;
  blockCopy = block;
  v6 = +[_UIBacklightEnvironment _postSynchronizeQueue];
  [v6 enqueuePostSynchronizeBlock:blockCopy];

  if (_commitCopy)
  {
    v7 = MEMORY[0x1E6979518];

    [v7 commit];
  }
}

- (void)environment:(id)environment performBacklightSceneUpdate:(id)update
{
  v76 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  updateCopy = update;
  context = [updateCopy context];
  frameSpecifier = [context frameSpecifier];
  visualState = [context visualState];
  v10 = BLSBacklightStateForVisuaState();
  v11 = v10 == 2;

  previousVisualState = [context previousVisualState];

  if (previousVisualState)
  {
    previousVisualState2 = [context previousVisualState];
    v14 = BLSBacklightStateForVisuaState() == 2;
  }

  else
  {
    v14 = v10 != 2;
  }

  v15 = *(__UILogGetCategoryCachedImpl("UIBacklightEnvironment", &environment_performBacklightSceneUpdate____s_category) + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v73 = v10 == 2;
    v74 = 1024;
    v75 = v14;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "performBacklightSceneUpdate isOn = %d wasOn = %d", buf, 0xEu);
  }

  v16 = (v10 == 2) ^ v14 ^ 1;
  if ((v10 != 2) | v16 & 1)
  {
    v17 = environmentCopy;
    if ((v10 == 2) | v16 & 1)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_12;
      aBlock[3] = &unk_1E70F36D0;
      v46 = a2;
      aBlock[4] = self;
      v45 = updateCopy;
      v18 = _Block_copy(aBlock);
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_16;
      v40[3] = &unk_1E70FCE28;
      v19 = frameSpecifier;
      v41 = frameSpecifier;
      selfCopy = self;
      v43 = v18;
      v20 = v18;
      [UIView performWithoutAnimation:v40];
    }

    else
    {
      visualState2 = [context visualState];
      [(_UIBacklightEnvironment *)self _notifyObserversEnvironmentVisualStateWillChangeToState:visualState2];

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_11;
      v47[3] = &unk_1E70F6228;
      v36 = updateCopy;
      v48 = v36;
      selfCopy2 = self;
      v50 = environmentCopy;
      [(_UIBacklightEnvironment *)self transitionTraitsInUpdate:v36 animations:&__block_literal_global_171_0 completion:v47];
      [v36 sceneContentsDidUpdate];

      v19 = frameSpecifier;
    }
  }

  else
  {
    previousVisualState3 = [context previousVisualState];
    visualState3 = [context visualState];
    kdebug_trace();

    visualState4 = [context visualState];
    [(_UIBacklightEnvironment *)self _notifyObserversEnvironmentVisualStateWillChangeToState:visualState4];

    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke;
    v69[3] = &unk_1E70F6228;
    v69[4] = self;
    v24 = context;
    v70 = v24;
    v37 = updateCopy;
    v25 = updateCopy;
    v71 = v25;
    v26 = _Block_copy(v69);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_2;
    v62[3] = &unk_1E710C8B0;
    v66 = a2;
    v62[4] = self;
    v63 = v25;
    v67 = v14;
    v27 = v11;
    v68 = v11;
    v28 = v26;
    v65 = v28;
    v17 = environmentCopy;
    v64 = environmentCopy;
    v29 = _Block_copy(v62);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_7;
    v56[3] = &unk_1E710C8D8;
    v57 = v24;
    v30 = v28;
    v60 = v30;
    selfCopy3 = self;
    v19 = frameSpecifier;
    v31 = frameSpecifier;
    v59 = v31;
    v32 = v29;
    v61 = v32;
    v33 = _Block_copy(v56);
    v34 = v33;
    if (v31)
    {
      [MEMORY[0x1E6979518] begin];
      kdebug_trace();
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_9;
      v51[3] = &unk_1E710C978;
      v51[4] = self;
      v54 = v14;
      v55 = v27;
      v52 = v31;
      v53 = v34;
      [(_UIBacklightEnvironment *)self updateSceneWithFrameSpecifier:v52 layout:1 completion:v51];
    }

    else
    {
      (*(v33 + 2))(v33);
    }

    updateCopy = v37;
  }
}

- (void)environment:(id)environment timelinesForDateInterval:(id)interval previousSpecifier:(id)specifier completion:(id)completion
{
  v66 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  specifierCopy = specifier;
  completionCopy = completion;
  v11 = *(__UILogGetCategoryCachedImpl("UIBacklightEnvironment", &environment_timelinesForDateInterval_previousSpecifier_completion____s_category) + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v63 = intervalCopy;
    v64 = 2114;
    v65 = specifierCopy;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "Fetching timelines for dateInterval : %{public}@ previousSpecifier : %{public}@", buf, 0x16u);
  }

  v35 = specifierCopy;
  array = [MEMORY[0x1E695DF70] array];
  v13 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  windows = [WeakRetained windows];

  obj = windows;
  v38 = [windows countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v38)
  {
    v37 = *v57;
    do
    {
      v16 = 0;
      do
      {
        if (*v57 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v16;
        rootViewController = [*(*(&v56 + 1) + 8 * v16) rootViewController];
        _effectiveControllersForAlwaysOnTimelines = [rootViewController _effectiveControllersForAlwaysOnTimelines];

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v19 = _effectiveControllersForAlwaysOnTimelines;
        v20 = [v19 countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v53;
          do
          {
            v23 = 0;
            do
            {
              if (*v53 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v52 + 1) + 8 * v23);
              if (objc_opt_respondsToSelector())
              {
                [array addObject:v24];
              }

              else
              {
                v25 = [v24 _timelinesForDateInterval:intervalCopy];
                [v13 addObjectsFromArray:v25];
              }

              ++v23;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v52 objects:v60 count:16];
          }

          while (v21);
        }

        v16 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v38);
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __93___UIBacklightEnvironment_environment_timelinesForDateInterval_previousSpecifier_completion___block_invoke;
  v48[3] = &unk_1E710C900;
  v26 = intervalCopy;
  v49 = v26;
  v27 = v13;
  v50 = v27;
  v51 = array;
  v28 = array;
  [(_UIBacklightEnvironment *)selfCopy _enumerateAllObserversWithBlock:v48];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __93___UIBacklightEnvironment_environment_timelinesForDateInterval_previousSpecifier_completion___block_invoke_2;
  v43[3] = &unk_1E710C950;
  v47 = a2;
  v44 = v26;
  v45 = selfCopy;
  v46 = v27;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __93___UIBacklightEnvironment_environment_timelinesForDateInterval_previousSpecifier_completion___block_invoke_4;
  v40[3] = &unk_1E70F37C0;
  v41 = v46;
  v42 = completionCopy;
  v29 = v26;
  v30 = v46;
  v31 = completionCopy;
  [_UIBacklightEnvironment _performOnChildViewControllersForAlwaysOnTimelines:v28 performBlock:v43 withCompletion:v40];
}

@end