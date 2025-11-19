@interface _UISceneHostingController
+ (void)initialize;
- (NSString)debugDescription;
- (_UISceneHostingActivationControlling)activationController;
- (_UISceneHostingActivationStateHostComponent)activationStateComponent;
- (_UISceneHostingController)initWithAdvancedConfiguration:(id)a3;
- (_UISceneHostingController)initWithProcessIdentity:(id)a3 sceneSpecification:(id)a4;
- (_UISceneHostingControllerDelegate)delegate;
- (_UISceneHostingSheetPresentationHostProviding)_remoteSheetProvider;
- (_UISceneIntelligenceSupportHost)intelligenceComponent;
- (_UISceneInterfaceProtectionHost)interfaceProtectionComponent;
- (_UISceneTouchSharing)touchSharing;
- (_UIViewServiceHostSceneComponent)_viewServiceComponent;
- (id)_eventDeferringComponent;
- (id)contentSizePreferenceProvider;
- (id)keyboardSuppressionController;
- (id)scene:(id)a3 handleActions:(id)a4;
- (id)succinctDescription;
- (id)traitCollectionReceiver;
- (uint64_t)_fbScene;
- (void)_clientIsReady;
- (void)_updateSceneSettingsFromSettingsProvidersWithFence:(BOOL)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)createSceneWithConfiguration:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4;
- (void)sceneWillActivate:(id)a3;
- (void)sendAction:(id)a3;
- (void)setActivationController:(id)a3;
@end

@implementation _UISceneHostingController

- (uint64_t)_fbScene
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (_UISceneHostingSheetPresentationHostProviding)_remoteSheetProvider
{
  if (self)
  {
    fbScene = self->_fbScene;
  }

  else
  {
    fbScene = 0;
  }

  v3 = fbScene;
  v4 = objc_opt_class();
  v5 = [(FBScene *)v3 componentForExtension:v4 ofClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6;

  return v6;
}

- (id)_eventDeferringComponent
{
  if (self)
  {
    fbScene = self->_fbScene;
  }

  else
  {
    fbScene = 0;
  }

  v3 = fbScene;
  v4 = objc_opt_class();
  v5 = [(FBScene *)v3 componentForExtension:v4 ofClass:objc_opt_class()];

  return v5;
}

- (_UISceneHostingActivationStateHostComponent)activationStateComponent
{
  if (self)
  {
    fbScene = self->_fbScene;
  }

  else
  {
    fbScene = 0;
  }

  v3 = fbScene;
  v4 = [(FBScene *)v3 ui_activationStateComponent];

  return v4;
}

- (id)contentSizePreferenceProvider
{
  if (self)
  {
    fbScene = self->_fbScene;
  }

  else
  {
    fbScene = 0;
  }

  v3 = fbScene;
  v4 = objc_opt_class();
  v5 = [(FBScene *)v3 componentForExtension:v4 ofClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6;

  return v6;
}

- (id)traitCollectionReceiver
{
  if (self)
  {
    fbScene = self->_fbScene;
  }

  else
  {
    fbScene = 0;
  }

  v3 = fbScene;
  v4 = objc_opt_class();
  v5 = [(FBScene *)v3 componentForExtension:v4 ofClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6;

  return v6;
}

- (void)_clientIsReady
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UISceneHostingController *)self delegate];
    [v5 clientIsReady];
  }
}

- (void)dealloc
{
  [(_UISceneHostingController *)self invalidate];
  v3.receiver = self;
  v3.super_class = _UISceneHostingController;
  [(_UISceneHostingController *)&v3 dealloc];
}

- (void)invalidate
{
  [(FBScene *)self->_fbScene invalidate];
  v3 = [(_UISceneHostingView *)self->_sceneView _scenePresenter];
  [v3 invalidate];
}

- (_UISceneIntelligenceSupportHost)intelligenceComponent
{
  if (self)
  {
    fbScene = self->_fbScene;
  }

  else
  {
    fbScene = 0;
  }

  v3 = fbScene;
  v4 = [(FBScene *)v3 ui_intelligenceComponent];

  return v4;
}

+ (void)initialize
{
  if (initialize_onceToken_0 != -1)
  {
    dispatch_once(&initialize_onceToken_0, &__block_literal_global_408);
  }
}

- (_UISceneHostingController)initWithAdvancedConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UISceneHostingController;
  v5 = [(_UISceneHostingController *)&v11 init];
  if (v5)
  {
    v6 = [[_UISceneHostingView alloc] initWithSceneHostingController:v5];
    sceneView = v5->_sceneView;
    v5->_sceneView = v6;

    v8 = [[_UISceneHostingViewController alloc] initWithSceneHostingController:v5];
    sceneViewController = v5->_sceneViewController;
    v5->_sceneViewController = v8;

    [(_UISceneHostingController *)v5 createSceneWithConfiguration:v4];
  }

  return v5;
}

- (_UISceneHostingController)initWithProcessIdentity:(id)a3 sceneSpecification:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_UISceneHostingControllerAdvancedConfiguration alloc] initWithProcessIdentity:v7];

  [(_UISceneHostingControllerAdvancedConfiguration *)v8 setSceneSpecification:v6];
  v9 = [(_UISceneHostingController *)self initWithAdvancedConfiguration:v8];

  return v9;
}

- (void)createSceneWithConfiguration:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_fbScene)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"_UISceneHostingController.m" lineNumber:75 description:@"A scene already exists!"];
  }

  v6 = [v5 sceneWorkspace];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58___UISceneHostingController_createSceneWithConfiguration___block_invoke;
  v31[3] = &unk_1E71186B0;
  v7 = v5;
  v32 = v7;
  v8 = [v6 createScene:v31];
  fbScene = self->_fbScene;
  self->_fbScene = v8;

  [(FBScene *)self->_fbScene setDelegate:self];
  [(_UISceneHostingView *)self->_sceneView setPresentedScene:self->_fbScene];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [v7 additionalExtensions];
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(FBScene *)self->_fbScene addExtension:*(*(&v27 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v12);
  }

  v15 = [(_UISceneHostingController *)self activationStateComponent];

  if (!v15)
  {
    [(FBScene *)self->_fbScene addExtension:objc_opt_class()];
  }

  v16 = [(_UISceneHostingController *)self contentSizePreferenceProvider];
  [v16 setContentSizePreferenceReceiver:self->_sceneViewController];

  v17 = [(_UISceneHostingController *)self _remoteSheetProvider];
  [v17 _setTargetViewController:self->_sceneViewController];

  v18 = self->_fbScene;
  v19 = [(FBScene *)v18 _viewControllerAppearanceComponent];
  [v19 setDelegate:self->_sceneViewController];

  v20 = [(FBScene *)self->_fbScene ui_scrollPocket];
  v21 = [v20 registrationInteraction];

  if (v21)
  {
    v22 = [(_UISceneHostingController *)self sceneView];
    [v22 addInteraction:v21];
  }

  v23 = [(FBScene *)self->_fbScene _relationshipManagementHostComponent];
  v24 = [(_UISceneHostingController *)self _eventDeferringComponent];
  [v23 addObserver:v24];

  v25 = [(FBScene *)self->_fbScene ui_intelligenceComponent];
  [v25 setCollectAsRemoteElement:1];

  [(FBScene *)self->_fbScene updateSettings:&__block_literal_global_16_5];
}

- (void)setActivationController:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v5 = [(_UISceneHostingController *)self activationStateComponent];
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"activationComponent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = @"_UISceneHostingController.m";
      v20 = 1024;
      v21 = 151;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189CA61C8);
  }

  v6 = v5;
  [v5 setActivationController:v11];
}

- (_UISceneHostingActivationControlling)activationController
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [(_UISceneHostingController *)self activationStateComponent];
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"activationComponent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = @"_UISceneHostingController.m";
      v20 = 1024;
      v21 = 157;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189CA6354);
  }

  v5 = v4;
  v6 = [v4 activationController];

  return v6;
}

- (void)sendAction:(id)a3
{
  v9 = a3;
  if ([(FBScene *)self->_fbScene isActive])
  {
    fbScene = self->_fbScene;
    v5 = [MEMORY[0x1E695DFD8] setWithObject:v9];
    [(FBScene *)fbScene sendActions:v5];
  }

  else
  {
    queuedActions = self->_queuedActions;
    if (!queuedActions)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = self->_queuedActions;
      self->_queuedActions = v7;

      queuedActions = self->_queuedActions;
    }

    [(NSMutableArray *)queuedActions addObject:v9];
  }
}

- (void)_updateSceneSettingsFromSettingsProvidersWithFence:(BOOL)a3
{
  fbScene = self->_fbScene;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80___UISceneHostingController__updateSceneSettingsFromSettingsProvidersWithFence___block_invoke;
  v4[3] = &unk_1E71186D8;
  v4[4] = self;
  v5 = a3;
  [(FBScene *)fbScene _performUpdateWithoutActivation:v4];
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 UIActionType] == 56)
        {
          v13 = v12;
          [v13 performActionForSceneController:self];
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)sceneContentStateDidChange:(id)a3
{
  v4 = a3;
  if ([v4 contentState] == 2 && (*&self->_flags & 1) == 0)
  {
    *&self->_flags |= 1u;
    objc_initWeak(&location, self);
    fbScene = self->_fbScene;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56___UISceneHostingController_sceneContentStateDidChange___block_invoke;
    v6[3] = &unk_1E70F5A28;
    objc_copyWeak(&v7, &location);
    [(FBScene *)fbScene executeWhenMutable:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)sceneWillActivate:(id)a3
{
  if (self)
  {
    [(_UISceneHostingController *)self _updateSceneSettingsFromSettingsProvidersWithFence:0];
  }
}

- (void)sceneDidActivate:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  queuedActions = self->_queuedActions;
  if (queuedActions)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = queuedActions;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          fbScene = self->_fbScene;
          v11 = [MEMORY[0x1E695DFD8] setWithObject:{*(*(&v13 + 1) + 8 * v9), v13}];
          [(FBScene *)fbScene sendActions:v11];

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v12 = self->_queuedActions;
    self->_queuedActions = 0;
  }
}

- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UISceneHostingController *)self activationStateComponent];
  [v8 ui_sceneDidDeactivate:v7 withContext:v6];
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55___UISceneHostingController_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = v4;
  v12 = v5;
  v13 = self;
  [v5 appendProem:self block:v11];
  v6 = [v5 style];
  v7 = [v6 verbosity];

  if (v7 != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55___UISceneHostingController_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    v10 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (_UISceneHostingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UISceneInterfaceProtectionHost)interfaceProtectionComponent
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();

  return [(_UISceneHostingController *)self componentForExtension:v3 ofClass:v4];
}

- (_UIViewServiceHostSceneComponent)_viewServiceComponent
{
  if (self)
  {
    fbScene = self->_fbScene;
  }

  else
  {
    fbScene = 0;
  }

  v3 = fbScene;
  v4 = [(FBScene *)v3 ui_viewServiceComponent];

  return v4;
}

- (id)keyboardSuppressionController
{
  if (self)
  {
    fbScene = self->_fbScene;
  }

  else
  {
    fbScene = 0;
  }

  v3 = fbScene;
  v4 = [(FBScene *)v3 _keyboardHostComponent];

  return v4;
}

- (_UISceneTouchSharing)touchSharing
{
  if (self)
  {
    fbScene = self->_fbScene;
  }

  else
  {
    fbScene = 0;
  }

  v4 = fbScene;
  v5 = [(FBScene *)v4 ui_touchSharing];

  if (v5)
  {
    v6 = [v5 targetView];

    if (!v6)
    {
      v7 = [(_UISceneHostingController *)self sceneView];
      [v5 setTargetView:v7];
    }
  }

  return v5;
}

@end