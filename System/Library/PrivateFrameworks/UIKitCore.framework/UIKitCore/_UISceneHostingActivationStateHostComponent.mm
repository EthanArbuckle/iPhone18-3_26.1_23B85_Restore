@interface _UISceneHostingActivationStateHostComponent
- (BOOL)isActive;
- (id)_createTransitionContext;
- (id)activationSuppressionAssertionForReason:(id)reason;
- (id)foregroundAssertionForReason:(id)reason;
- (void)_activate:(id)_activate;
- (void)_scene:(id)_scene isMovingToParent:(id)parent;
- (void)activate:(id)activate;
- (void)deactivate:(id)deactivate;
- (void)evaluateActivationState;
- (void)evaluateActivationSuppression;
- (void)propagateForeground:(BOOL)foreground;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)setActivationController:(id)controller;
- (void)setForeground:(BOOL)foreground;
- (void)setScene:(id)scene;
- (void)ui_sceneDidDeactivate:(id)deactivate withContext:(id)context;
@end

@implementation _UISceneHostingActivationStateHostComponent

- (void)evaluateActivationState
{
  if (self->_foregroundAssertionCount)
  {
    [(_UISceneHostingActivationStateHostComponent *)self propagateForeground:0];
    selfCopy2 = self;
    v4 = 1;
LABEL_3:

    [(_UISceneHostingActivationStateHostComponent *)selfCopy2 setForeground:v4];
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentEnvironment);

  if (!WeakRetained)
  {
    [(_UISceneHostingActivationStateHostComponent *)self propagateForeground:0];
    selfCopy2 = self;
    v4 = 0;
    goto LABEL_3;
  }

  [(_UISceneHostingActivationStateHostComponent *)self propagateForeground:1];
}

- (BOOL)isActive
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  isActive = [hostScene isActive];

  return isActive;
}

- (void)setScene:(id)scene
{
  v6.receiver = self;
  v6.super_class = _UISceneHostingActivationStateHostComponent;
  [(FBSSceneComponent *)&v6 setScene:scene];
  hostScene = [(FBSSceneComponent *)self hostScene];
  _relationshipManagementHostComponent = [hostScene _relationshipManagementHostComponent];
  [_relationshipManagementHostComponent addObserver:self];

  [(_UISceneHostingActivationStateHostComponent *)self setActivationController:0];
}

- (id)foregroundAssertionForReason:(id)reason
{
  v19 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  ++self->_foregroundAssertionCount;
  v5 = MEMORY[0x1E696AEC0];
  hostScene = [(FBSSceneComponent *)self hostScene];
  identityToken = [hostScene identityToken];
  v8 = [v5 stringWithFormat:@"foregroundAssertion::%@", identityToken];

  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x1E698E778]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76___UISceneHostingActivationStateHostComponent_foregroundAssertionForReason___block_invoke;
  v14[3] = &unk_1E70FA170;
  objc_copyWeak(&v15, &location);
  v10 = [v9 initWithIdentifier:v8 forReason:reasonCopy invalidationBlock:v14];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneHostingActivationState", &foregroundAssertionForReason____s_category);
  if (*CategoryCachedImpl)
  {
    v13 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Foreground assertion taken: %@", buf, 0xCu);
    }
  }

  [(_UISceneHostingActivationStateHostComponent *)self evaluateActivationState];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

- (void)setForeground:(BOOL)foreground
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61___UISceneHostingActivationStateHostComponent_setForeground___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
  foregroundCopy = foreground;
  [hostScene updateSettings:v5];
}

- (void)propagateForeground:(BOOL)foreground
{
  if (self->_isCurrentlyPropagatingForeground != foreground)
  {
    v10 = v3;
    v11 = v4;
    self->_isCurrentlyPropagatingForeground = foreground;
    hostScene = [(FBSSceneComponent *)self hostScene];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67___UISceneHostingActivationStateHostComponent_propagateForeground___block_invoke;
    v8[3] = &unk_1E7103F58;
    foregroundCopy = foreground;
    v8[4] = self;
    [hostScene updateSettings:v8];
  }
}

- (void)setActivationController:(id)controller
{
  v28 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (controllerCopy)
  {
    v5 = controllerCopy;
    if (self->_activationController == controllerCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = objc_opt_new();
  }

  hostScene = [(FBSSceneComponent *)self hostScene];
  uiSceneHostingController = [hostScene uiSceneHostingController];

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneHosting", &setActivationController____s_category);
  if (*CategoryCachedImpl)
  {
    v12 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v13 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        selfCopy = [v13 stringWithFormat:@"<%@: %p>", v16, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      v18 = selfCopy;
      v19 = uiSceneHostingController;
      if (v19)
      {
        v20 = MEMORY[0x1E696AEC0];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v20 stringWithFormat:@"<%@: %p>", v22, v19];
      }

      else
      {
        v23 = @"(nil)";
      }

      *buf = 138412546;
      v25 = v18;
      v26 = 2112;
      v27 = v23;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "%@ Using %@ for activation control", buf, 0x16u);
    }
  }

  [(_UISceneHostingActivationHandle *)self->_activationHandle invalidate];
  [(_UISceneHostingActivationControlling *)self->_activationController endManagingHostedSceneActivationForHostingController:uiSceneHostingController];
  objc_storeStrong(&self->_activationController, v5);
  v9 = [[_UISceneHostingActivationHandle alloc] initWithActivationTarget:?];
  activationHandle = self->_activationHandle;
  self->_activationHandle = v9;

  *&self->_flags = *&self->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v11;
  [v5 beginManagingHostedSceneActivationUsingHandle:self->_activationHandle forHostingController:uiSceneHostingController];

LABEL_10:
}

- (void)activate:(id)activate
{
  v38 = *MEMORY[0x1E69E9840];
  activateCopy = activate;
  hostScene = [(FBSSceneComponent *)self hostScene];
  settings = [hostScene settings];
  displayConfiguration = [settings displayConfiguration];

  if (!displayConfiguration)
  {
    v17 = MEMORY[0x1E696AEC0];
    hostScene2 = [(FBSSceneComponent *)self hostScene];
    identityToken = [hostScene2 identityToken];
    v20 = [v17 stringWithFormat:@"Activating a _UISceneHostingController's scene with a nil display configuration is not supported: %@", identityToken];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v27 = v21;
      v28 = 2114;
      v29 = v23;
      v30 = 2048;
      selfCopy = self;
      v32 = 2114;
      v33 = @"_UISceneHostingActivationStateHostComponent.m";
      v34 = 1024;
      v35 = 145;
      v36 = 2114;
      v37 = v20;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1896A30FCLL);
  }

  hostScene3 = [(FBSSceneComponent *)self hostScene];
  definition = [hostScene3 definition];
  specification = [definition specification];

  v12 = objc_opt_class();
  v13 = specification;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  userActivity = [v15 userActivity];

  if (userActivity)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __56___UISceneHostingActivationStateHostComponent_activate___block_invoke;
    v24[3] = &unk_1E7103FD0;
    v24[4] = self;
    v25 = activateCopy;
    [(UISActivityContinuationAction *)UIActivityContinuationAction buildWithUserActivity:userActivity completion:v24];
  }

  else
  {
    [(_UISceneHostingActivationStateHostComponent *)self _activate:activateCopy];
  }
}

- (void)deactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  hostScene = [(FBSSceneComponent *)self hostScene];
  [hostScene deactivate:deactivateCopy];
}

- (void)_activate:(id)_activate
{
  _activateCopy = _activate;
  hostScene = [(FBSSceneComponent *)self hostScene];
  ui_settingsModifierComponent = [hostScene ui_settingsModifierComponent];
  v6 = ui_settingsModifierComponent;
  if (ui_settingsModifierComponent)
  {
    [(_UISceneExternalSettingsModifierHostComponent *)ui_settingsModifierComponent fetchSettingsModifiers];
  }

  if ([(_UISceneHostingActivationStateHostComponent *)self isActivationSuppressed])
  {
    v7 = _activateCopy;
    if (_activateCopy)
    {
      pendingTransitionContext = self->_pendingTransitionContext;
      if (!pendingTransitionContext)
      {
        _createTransitionContext = [(_UISceneHostingActivationStateHostComponent *)self _createTransitionContext];
        v10 = self->_pendingTransitionContext;
        self->_pendingTransitionContext = _createTransitionContext;

        v7 = _activateCopy;
        pendingTransitionContext = self->_pendingTransitionContext;
      }

      (v7)[2](_activateCopy, pendingTransitionContext);
      v7 = _activateCopy;
    }

    *&self->_flags |= 4u;
  }

  else
  {
    hostScene2 = [(FBSSceneComponent *)self hostScene];
    [hostScene2 activate:_activateCopy];

    v7 = _activateCopy;
  }
}

- (id)_createTransitionContext
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  definition = [hostScene definition];
  specification = [definition specification];
  v5 = [objc_msgSend(specification "transitionContextClass")];
  v6 = v5;
  if (v5)
  {
    transitionContext = v5;
  }

  else
  {
    transitionContext = [MEMORY[0x1E699FC58] transitionContext];
  }

  v8 = transitionContext;

  return v8;
}

- (id)activationSuppressionAssertionForReason:(id)reason
{
  v39 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  BSDispatchQueueAssertMain();
  hostScene = [(FBSSceneComponent *)self hostScene];
  isActive = [hostScene isActive];

  if (isActive)
  {
    v16 = MEMORY[0x1E696AEC0];
    hostScene2 = [(FBSSceneComponent *)self hostScene];
    identityToken = [hostScene2 identityToken];
    v19 = [v16 stringWithFormat:@"Scene activation can not be suppressed while it is already active (%@)", identityToken];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v28 = v20;
      v29 = 2114;
      v30 = v22;
      v31 = 2048;
      selfCopy = self;
      v33 = 2114;
      v34 = @"_UISceneHostingActivationStateHostComponent.m";
      v35 = 1024;
      v36 = 222;
      v37 = 2114;
      v38 = v19;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v23 = v19;
    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1896A392CLL);
  }

  ++self->_activationSuppressionCount;
  v8 = MEMORY[0x1E696AEC0];
  hostScene3 = [(FBSSceneComponent *)self hostScene];
  identityToken2 = [hostScene3 identityToken];
  v11 = [v8 stringWithFormat:@"activationSuppressionAssertion::%@", identityToken2];

  objc_initWeak(&location, self);
  v12 = objc_alloc(MEMORY[0x1E698E778]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __87___UISceneHostingActivationStateHostComponent_activationSuppressionAssertionForReason___block_invoke;
  v24[3] = &unk_1E70FA170;
  objc_copyWeak(&v25, &location);
  v13 = [v12 initWithIdentifier:v11 forReason:reasonCopy invalidationBlock:v24];
  v14 = *(__UILogGetCategoryCachedImpl("UISceneHostingActivationState", &activationSuppressionAssertionForReason____s_category) + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v13;
    _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "Activation suppressed: %@", buf, 0xCu);
  }

  [(_UISceneHostingActivationStateHostComponent *)self evaluateActivationSuppression];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v13;
}

- (void)evaluateActivationSuppression
{
  BSDispatchQueueAssertMain();
  if (![(_UISceneHostingActivationStateHostComponent *)self isActivationSuppressed]&& (*&self->_flags & 4) != 0)
  {
    *&self->_flags &= ~4u;
    hostScene = [(FBSSceneComponent *)self hostScene];
    [hostScene activateWithTransitionContext:self->_pendingTransitionContext];

    pendingTransitionContext = self->_pendingTransitionContext;
    self->_pendingTransitionContext = 0;
  }
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  [(_UISceneHostingActivationHandle *)self->_activationHandle invalidate:invalidate];
  activationHandle = self->_activationHandle;
  self->_activationHandle = 0;

  activationController = self->_activationController;
  hostScene = [(FBSSceneComponent *)self hostScene];
  uiSceneHostingController = [hostScene uiSceneHostingController];
  [(_UISceneHostingActivationControlling *)activationController endManagingHostedSceneActivationForHostingController:uiSceneHostingController];

  v9 = self->_activationController;
  self->_activationController = 0;
}

- (void)sceneDidActivate:(id)activate
{
  if ((*&self->_flags & 2) != 0)
  {
    activationController = self->_activationController;
    activationHandle = self->_activationHandle;
    hostScene = [(FBSSceneComponent *)self hostScene];
    uiSceneHostingController = [hostScene uiSceneHostingController];
    [(_UISceneHostingActivationControlling *)activationController activationHandleDidUpdate:activationHandle forHostingController:uiSceneHostingController];
  }
}

- (void)ui_sceneDidDeactivate:(id)deactivate withContext:(id)context
{
  if ((*&self->_flags & 2) != 0)
  {
    activationController = self->_activationController;
    activationHandle = self->_activationHandle;
    v8 = [(FBSSceneComponent *)self hostScene:deactivate];
    uiSceneHostingController = [v8 uiSceneHostingController];
    [(_UISceneHostingActivationControlling *)activationController activationHandleDidUpdate:activationHandle forHostingController:uiSceneHostingController];
  }
}

- (void)_scene:(id)_scene isMovingToParent:(id)parent
{
  parentCopy = parent;
  objc_storeWeak(&self->_parentEnvironment, parentCopy);
  [(_UISceneHostingActivationStateHostComponent *)self evaluateActivationState];
  if (*&self->_flags)
  {
    activationController = self->_activationController;
    hostScene = [(FBSSceneComponent *)self hostScene];
    uiSceneHostingController = [hostScene uiSceneHostingController];
    _windowHostingScene = [parentCopy _windowHostingScene];
    [(_UISceneHostingActivationControlling *)activationController hostingController:uiSceneHostingController isMovingToParentScene:_windowHostingScene];
  }
}

@end