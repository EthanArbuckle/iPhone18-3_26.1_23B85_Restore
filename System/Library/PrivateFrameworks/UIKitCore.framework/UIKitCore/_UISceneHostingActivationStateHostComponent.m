@interface _UISceneHostingActivationStateHostComponent
- (BOOL)isActive;
- (id)_createTransitionContext;
- (id)activationSuppressionAssertionForReason:(id)a3;
- (id)foregroundAssertionForReason:(id)a3;
- (void)_activate:(id)a3;
- (void)_scene:(id)a3 isMovingToParent:(id)a4;
- (void)activate:(id)a3;
- (void)deactivate:(id)a3;
- (void)evaluateActivationState;
- (void)evaluateActivationSuppression;
- (void)propagateForeground:(BOOL)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)setActivationController:(id)a3;
- (void)setForeground:(BOOL)a3;
- (void)setScene:(id)a3;
- (void)ui_sceneDidDeactivate:(id)a3 withContext:(id)a4;
@end

@implementation _UISceneHostingActivationStateHostComponent

- (void)evaluateActivationState
{
  if (self->_foregroundAssertionCount)
  {
    [(_UISceneHostingActivationStateHostComponent *)self propagateForeground:0];
    v3 = self;
    v4 = 1;
LABEL_3:

    [(_UISceneHostingActivationStateHostComponent *)v3 setForeground:v4];
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentEnvironment);

  if (!WeakRetained)
  {
    [(_UISceneHostingActivationStateHostComponent *)self propagateForeground:0];
    v3 = self;
    v4 = 0;
    goto LABEL_3;
  }

  [(_UISceneHostingActivationStateHostComponent *)self propagateForeground:1];
}

- (BOOL)isActive
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 isActive];

  return v3;
}

- (void)setScene:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UISceneHostingActivationStateHostComponent;
  [(FBSSceneComponent *)&v6 setScene:a3];
  v4 = [(FBSSceneComponent *)self hostScene];
  v5 = [v4 _relationshipManagementHostComponent];
  [v5 addObserver:self];

  [(_UISceneHostingActivationStateHostComponent *)self setActivationController:0];
}

- (id)foregroundAssertionForReason:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  ++self->_foregroundAssertionCount;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(FBSSceneComponent *)self hostScene];
  v7 = [v6 identityToken];
  v8 = [v5 stringWithFormat:@"foregroundAssertion::%@", v7];

  objc_initWeak(&location, self);
  v9 = objc_alloc(MEMORY[0x1E698E778]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76___UISceneHostingActivationStateHostComponent_foregroundAssertionForReason___block_invoke;
  v14[3] = &unk_1E70FA170;
  objc_copyWeak(&v15, &location);
  v10 = [v9 initWithIdentifier:v8 forReason:v4 invalidationBlock:v14];
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

- (void)setForeground:(BOOL)a3
{
  v4 = [(FBSSceneComponent *)self hostScene];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61___UISceneHostingActivationStateHostComponent_setForeground___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
  v6 = a3;
  [v4 updateSettings:v5];
}

- (void)propagateForeground:(BOOL)a3
{
  if (self->_isCurrentlyPropagatingForeground != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_isCurrentlyPropagatingForeground = a3;
    v7 = [(FBSSceneComponent *)self hostScene];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67___UISceneHostingActivationStateHostComponent_propagateForeground___block_invoke;
    v8[3] = &unk_1E7103F58;
    v9 = a3;
    v8[4] = self;
    [v7 updateSettings:v8];
  }
}

- (void)setActivationController:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if (self->_activationController == v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = [(FBSSceneComponent *)self hostScene];
  v7 = [v6 uiSceneHostingController];

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneHosting", &setActivationController____s_category);
  if (*CategoryCachedImpl)
  {
    v12 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v13 = MEMORY[0x1E696AEC0];
        v14 = self;
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [v13 stringWithFormat:@"<%@: %p>", v16, v14];
      }

      else
      {
        v17 = @"(nil)";
      }

      v18 = v17;
      v19 = v7;
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
  [(_UISceneHostingActivationControlling *)self->_activationController endManagingHostedSceneActivationForHostingController:v7];
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
  [v5 beginManagingHostedSceneActivationUsingHandle:self->_activationHandle forHostingController:v7];

LABEL_10:
}

- (void)activate:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(FBSSceneComponent *)self hostScene];
  v7 = [v6 settings];
  v8 = [v7 displayConfiguration];

  if (!v8)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [(FBSSceneComponent *)self hostScene];
    v19 = [v18 identityToken];
    v20 = [v17 stringWithFormat:@"Activating a _UISceneHostingController's scene with a nil display configuration is not supported: %@", v19];

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
      v31 = self;
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

  v9 = [(FBSSceneComponent *)self hostScene];
  v10 = [v9 definition];
  v11 = [v10 specification];

  v12 = objc_opt_class();
  v13 = v11;
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

  v16 = [v15 userActivity];

  if (v16)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __56___UISceneHostingActivationStateHostComponent_activate___block_invoke;
    v24[3] = &unk_1E7103FD0;
    v24[4] = self;
    v25 = v5;
    [(UISActivityContinuationAction *)UIActivityContinuationAction buildWithUserActivity:v16 completion:v24];
  }

  else
  {
    [(_UISceneHostingActivationStateHostComponent *)self _activate:v5];
  }
}

- (void)deactivate:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  [v5 deactivate:v4];
}

- (void)_activate:(id)a3
{
  v12 = a3;
  v4 = [(FBSSceneComponent *)self hostScene];
  v5 = [v4 ui_settingsModifierComponent];
  v6 = v5;
  if (v5)
  {
    [(_UISceneExternalSettingsModifierHostComponent *)v5 fetchSettingsModifiers];
  }

  if ([(_UISceneHostingActivationStateHostComponent *)self isActivationSuppressed])
  {
    v7 = v12;
    if (v12)
    {
      pendingTransitionContext = self->_pendingTransitionContext;
      if (!pendingTransitionContext)
      {
        v9 = [(_UISceneHostingActivationStateHostComponent *)self _createTransitionContext];
        v10 = self->_pendingTransitionContext;
        self->_pendingTransitionContext = v9;

        v7 = v12;
        pendingTransitionContext = self->_pendingTransitionContext;
      }

      (v7)[2](v12, pendingTransitionContext);
      v7 = v12;
    }

    *&self->_flags |= 4u;
  }

  else
  {
    v11 = [(FBSSceneComponent *)self hostScene];
    [v11 activate:v12];

    v7 = v12;
  }
}

- (id)_createTransitionContext
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 definition];
  v4 = [v3 specification];
  v5 = [objc_msgSend(v4 "transitionContextClass")];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E699FC58] transitionContext];
  }

  v8 = v7;

  return v8;
}

- (id)activationSuppressionAssertionForReason:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  BSDispatchQueueAssertMain();
  v6 = [(FBSSceneComponent *)self hostScene];
  v7 = [v6 isActive];

  if (v7)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = [(FBSSceneComponent *)self hostScene];
    v18 = [v17 identityToken];
    v19 = [v16 stringWithFormat:@"Scene activation can not be suppressed while it is already active (%@)", v18];

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
      v32 = self;
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
  v9 = [(FBSSceneComponent *)self hostScene];
  v10 = [v9 identityToken];
  v11 = [v8 stringWithFormat:@"activationSuppressionAssertion::%@", v10];

  objc_initWeak(&location, self);
  v12 = objc_alloc(MEMORY[0x1E698E778]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __87___UISceneHostingActivationStateHostComponent_activationSuppressionAssertionForReason___block_invoke;
  v24[3] = &unk_1E70FA170;
  objc_copyWeak(&v25, &location);
  v13 = [v12 initWithIdentifier:v11 forReason:v5 invalidationBlock:v24];
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
    v3 = [(FBSSceneComponent *)self hostScene];
    [v3 activateWithTransitionContext:self->_pendingTransitionContext];

    pendingTransitionContext = self->_pendingTransitionContext;
    self->_pendingTransitionContext = 0;
  }
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  [(_UISceneHostingActivationHandle *)self->_activationHandle invalidate:a3];
  activationHandle = self->_activationHandle;
  self->_activationHandle = 0;

  activationController = self->_activationController;
  v7 = [(FBSSceneComponent *)self hostScene];
  v8 = [v7 uiSceneHostingController];
  [(_UISceneHostingActivationControlling *)activationController endManagingHostedSceneActivationForHostingController:v8];

  v9 = self->_activationController;
  self->_activationController = 0;
}

- (void)sceneDidActivate:(id)a3
{
  if ((*&self->_flags & 2) != 0)
  {
    activationController = self->_activationController;
    activationHandle = self->_activationHandle;
    v7 = [(FBSSceneComponent *)self hostScene];
    v6 = [v7 uiSceneHostingController];
    [(_UISceneHostingActivationControlling *)activationController activationHandleDidUpdate:activationHandle forHostingController:v6];
  }
}

- (void)ui_sceneDidDeactivate:(id)a3 withContext:(id)a4
{
  if ((*&self->_flags & 2) != 0)
  {
    activationController = self->_activationController;
    activationHandle = self->_activationHandle;
    v8 = [(FBSSceneComponent *)self hostScene:a3];
    v7 = [v8 uiSceneHostingController];
    [(_UISceneHostingActivationControlling *)activationController activationHandleDidUpdate:activationHandle forHostingController:v7];
  }
}

- (void)_scene:(id)a3 isMovingToParent:(id)a4
{
  v9 = a4;
  objc_storeWeak(&self->_parentEnvironment, v9);
  [(_UISceneHostingActivationStateHostComponent *)self evaluateActivationState];
  if (*&self->_flags)
  {
    activationController = self->_activationController;
    v6 = [(FBSSceneComponent *)self hostScene];
    v7 = [v6 uiSceneHostingController];
    v8 = [v9 _windowHostingScene];
    [(_UISceneHostingActivationControlling *)activationController hostingController:v7 isMovingToParentScene:v8];
  }
}

@end