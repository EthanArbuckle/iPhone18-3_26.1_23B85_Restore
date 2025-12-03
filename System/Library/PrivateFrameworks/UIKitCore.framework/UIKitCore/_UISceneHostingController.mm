@interface _UISceneHostingController
+ (void)initialize;
- (NSString)debugDescription;
- (_UISceneHostingActivationControlling)activationController;
- (_UISceneHostingActivationStateHostComponent)activationStateComponent;
- (_UISceneHostingController)initWithAdvancedConfiguration:(id)configuration;
- (_UISceneHostingController)initWithProcessIdentity:(id)identity sceneSpecification:(id)specification;
- (_UISceneHostingControllerDelegate)delegate;
- (_UISceneHostingSheetPresentationHostProviding)_remoteSheetProvider;
- (_UISceneIntelligenceSupportHost)intelligenceComponent;
- (_UISceneInterfaceProtectionHost)interfaceProtectionComponent;
- (_UISceneTouchSharing)touchSharing;
- (_UIViewServiceHostSceneComponent)_viewServiceComponent;
- (id)_eventDeferringComponent;
- (id)contentSizePreferenceProvider;
- (id)keyboardSuppressionController;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)succinctDescription;
- (id)traitCollectionReceiver;
- (uint64_t)_fbScene;
- (void)_clientIsReady;
- (void)_updateSceneSettingsFromSettingsProvidersWithFence:(BOOL)fence;
- (void)appendDescriptionToStream:(id)stream;
- (void)createSceneWithConfiguration:(id)configuration;
- (void)dealloc;
- (void)invalidate;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context;
- (void)sceneWillActivate:(id)activate;
- (void)sendAction:(id)action;
- (void)setActivationController:(id)controller;
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
  ui_activationStateComponent = [(FBScene *)v3 ui_activationStateComponent];

  return ui_activationStateComponent;
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
    delegate = [(_UISceneHostingController *)self delegate];
    [delegate clientIsReady];
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
  _scenePresenter = [(_UISceneHostingView *)self->_sceneView _scenePresenter];
  [_scenePresenter invalidate];
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
  ui_intelligenceComponent = [(FBScene *)v3 ui_intelligenceComponent];

  return ui_intelligenceComponent;
}

+ (void)initialize
{
  if (initialize_onceToken_0 != -1)
  {
    dispatch_once(&initialize_onceToken_0, &__block_literal_global_408);
  }
}

- (_UISceneHostingController)initWithAdvancedConfiguration:(id)configuration
{
  configurationCopy = configuration;
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

    [(_UISceneHostingController *)v5 createSceneWithConfiguration:configurationCopy];
  }

  return v5;
}

- (_UISceneHostingController)initWithProcessIdentity:(id)identity sceneSpecification:(id)specification
{
  specificationCopy = specification;
  identityCopy = identity;
  v8 = [[_UISceneHostingControllerAdvancedConfiguration alloc] initWithProcessIdentity:identityCopy];

  [(_UISceneHostingControllerAdvancedConfiguration *)v8 setSceneSpecification:specificationCopy];
  v9 = [(_UISceneHostingController *)self initWithAdvancedConfiguration:v8];

  return v9;
}

- (void)createSceneWithConfiguration:(id)configuration
{
  v34 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (self->_fbScene)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneHostingController.m" lineNumber:75 description:@"A scene already exists!"];
  }

  sceneWorkspace = [configurationCopy sceneWorkspace];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __58___UISceneHostingController_createSceneWithConfiguration___block_invoke;
  v31[3] = &unk_1E71186B0;
  v7 = configurationCopy;
  v32 = v7;
  v8 = [sceneWorkspace createScene:v31];
  fbScene = self->_fbScene;
  self->_fbScene = v8;

  [(FBScene *)self->_fbScene setDelegate:self];
  [(_UISceneHostingView *)self->_sceneView setPresentedScene:self->_fbScene];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  additionalExtensions = [v7 additionalExtensions];
  v11 = [additionalExtensions countByEnumeratingWithState:&v27 objects:v33 count:16];
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
          objc_enumerationMutation(additionalExtensions);
        }

        [(FBScene *)self->_fbScene addExtension:*(*(&v27 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [additionalExtensions countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v12);
  }

  activationStateComponent = [(_UISceneHostingController *)self activationStateComponent];

  if (!activationStateComponent)
  {
    [(FBScene *)self->_fbScene addExtension:objc_opt_class()];
  }

  contentSizePreferenceProvider = [(_UISceneHostingController *)self contentSizePreferenceProvider];
  [contentSizePreferenceProvider setContentSizePreferenceReceiver:self->_sceneViewController];

  _remoteSheetProvider = [(_UISceneHostingController *)self _remoteSheetProvider];
  [_remoteSheetProvider _setTargetViewController:self->_sceneViewController];

  v18 = self->_fbScene;
  _viewControllerAppearanceComponent = [(FBScene *)v18 _viewControllerAppearanceComponent];
  [_viewControllerAppearanceComponent setDelegate:self->_sceneViewController];

  ui_scrollPocket = [(FBScene *)self->_fbScene ui_scrollPocket];
  registrationInteraction = [ui_scrollPocket registrationInteraction];

  if (registrationInteraction)
  {
    sceneView = [(_UISceneHostingController *)self sceneView];
    [sceneView addInteraction:registrationInteraction];
  }

  _relationshipManagementHostComponent = [(FBScene *)self->_fbScene _relationshipManagementHostComponent];
  _eventDeferringComponent = [(_UISceneHostingController *)self _eventDeferringComponent];
  [_relationshipManagementHostComponent addObserver:_eventDeferringComponent];

  ui_intelligenceComponent = [(FBScene *)self->_fbScene ui_intelligenceComponent];
  [ui_intelligenceComponent setCollectAsRemoteElement:1];

  [(FBScene *)self->_fbScene updateSettings:&__block_literal_global_16_5];
}

- (void)setActivationController:(id)controller
{
  v24 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  activationStateComponent = [(_UISceneHostingController *)self activationStateComponent];
  if (!activationStateComponent)
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
      selfCopy = self;
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

  v6 = activationStateComponent;
  [activationStateComponent setActivationController:controllerCopy];
}

- (_UISceneHostingActivationControlling)activationController
{
  v24 = *MEMORY[0x1E69E9840];
  activationStateComponent = [(_UISceneHostingController *)self activationStateComponent];
  if (!activationStateComponent)
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
      selfCopy = self;
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

  v5 = activationStateComponent;
  activationController = [activationStateComponent activationController];

  return activationController;
}

- (void)sendAction:(id)action
{
  actionCopy = action;
  if ([(FBScene *)self->_fbScene isActive])
  {
    fbScene = self->_fbScene;
    v5 = [MEMORY[0x1E695DFD8] setWithObject:actionCopy];
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

    [(NSMutableArray *)queuedActions addObject:actionCopy];
  }
}

- (void)_updateSceneSettingsFromSettingsProvidersWithFence:(BOOL)fence
{
  fbScene = self->_fbScene;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80___UISceneHostingController__updateSceneSettingsFromSettingsProvidersWithFence___block_invoke;
  v4[3] = &unk_1E71186D8;
  v4[4] = self;
  fenceCopy = fence;
  [(FBScene *)fbScene _performUpdateWithoutActivation:v4];
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v20 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v6 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = actionsCopy;
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

- (void)sceneContentStateDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy contentState] == 2 && (*&self->_flags & 1) == 0)
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

- (void)sceneWillActivate:(id)activate
{
  if (self)
  {
    [(_UISceneHostingController *)self _updateSceneSettingsFromSettingsProvidersWithFence:0];
  }
}

- (void)sceneDidActivate:(id)activate
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

- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context
{
  contextCopy = context;
  deactivateCopy = deactivate;
  activationStateComponent = [(_UISceneHostingController *)self activationStateComponent];
  [activationStateComponent ui_sceneDidDeactivate:deactivateCopy withContext:contextCopy];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55___UISceneHostingController_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = streamCopy;
  v12 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v11];
  style = [v5 style];
  verbosity = [style verbosity];

  if (verbosity != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55___UISceneHostingController_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    selfCopy2 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

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
  ui_viewServiceComponent = [(FBScene *)v3 ui_viewServiceComponent];

  return ui_viewServiceComponent;
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
  _keyboardHostComponent = [(FBScene *)v3 _keyboardHostComponent];

  return _keyboardHostComponent;
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
  ui_touchSharing = [(FBScene *)v4 ui_touchSharing];

  if (ui_touchSharing)
  {
    targetView = [ui_touchSharing targetView];

    if (!targetView)
    {
      sceneView = [(_UISceneHostingController *)self sceneView];
      [ui_touchSharing setTargetView:sceneView];
    }
  }

  return ui_touchSharing;
}

@end