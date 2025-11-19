@interface _UISceneKeyboardProxyLayerForwardingStateMachine
- (_UISceneKeyboardProxyLayerForwardingStateMachine)initWithPresentationEnvironment:(id)a3;
- (id)_newProxyLayers;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)hostingEnvironmentForWindow:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_addLayers:(id)a3 toEnvironment:(id)a4;
- (void)_noteHostedInWindow:(id)a3;
- (void)_removeLayers:(id)a3 fromEnvironment:(id)a4;
- (void)_setState:(unint64_t)a3;
- (void)dealloc;
- (void)noteKeyboardLayersBeingTracked:(id)a3;
- (void)presentationEnvironmentDidInvalidate:(id)a3;
- (void)presentationEnvironmentDidUpdateKeyboardLayers:(id)a3;
- (void)window:(id)a3 changedFromLevel:(double)a4 toLevel:(double)a5;
@end

@implementation _UISceneKeyboardProxyLayerForwardingStateMachine

- (_UISceneKeyboardProxyLayerForwardingStateMachine)initWithPresentationEnvironment:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingStateMachine.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment != nil"}];
  }

  v13.receiver = self;
  v13.super_class = _UISceneKeyboardProxyLayerForwardingStateMachine;
  v6 = [(_UISceneKeyboardProxyLayerForwardingStateMachine *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v8 = objc_storeWeak(&v6->_presentationEnvironment, v5);
    v7->_state = 0;
    v9 = v8;
    [v5 addObserver:v7];

    v10 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &initWithPresentationEnvironment____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v15 = v7;
      v16 = 2048;
      v17 = v5;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "<StateMachine:%p> Created with presentation environment: <%p:%@>", buf, 0x20u);
    }
  }

  return v7;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_presentationEnvironment);
  [WeakRetained removeObserver:self];

  [(UIWindow *)self->_hostingWindow _removeWindowLevelChangedObserver:self];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self->_windowDidMoveToSceneNotificationToken];

  v5 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &dealloc___s_category_5) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "<StateMachine:%p> Dealloc.", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = _UISceneKeyboardProxyLayerForwardingStateMachine;
  [(_UISceneKeyboardProxyLayerForwardingStateMachine *)&v6 dealloc];
}

- (void)noteKeyboardLayersBeingTracked:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_keyboardLayersTracked;
  if ((BSEqualObjects() & 1) == 0)
  {
    v7 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &noteKeyboardLayersBeingTracked____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218242;
      v24 = self;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "<StateMachine:%p> Keyboard layers being tracked: %@", &v23, 0x16u);
    }

    objc_storeStrong(&self->_keyboardLayersTracked, a3);
    v8 = [(NSSet *)self->_keyboardLayersTracked count];
    state = self->_state;
    if (v8)
    {
      if (state == 2)
      {
        v18 = [(NSSet *)self->_keyboardLayersAddedToHostingEnvironment copy];
        v19 = [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _newProxyLayers];
        keyboardLayersAddedToHostingEnvironment = self->_keyboardLayersAddedToHostingEnvironment;
        self->_keyboardLayersAddedToHostingEnvironment = v19;

        v21 = [(NSSet *)self->_keyboardLayersAddedToHostingEnvironment mutableCopy];
        [v21 minusSet:v18];
        v22 = [v18 mutableCopy];
        [v22 minusSet:self->_keyboardLayersAddedToHostingEnvironment];
        [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _addLayers:v21 toEnvironment:self->_hostingEnvironment];
        [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _removeLayers:v22 fromEnvironment:self->_hostingEnvironment];

        goto LABEL_17;
      }

      if (!state)
      {
        hostingEnvironment = self->_hostingEnvironment;
        if (hostingEnvironment)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }

        if (hostingEnvironment)
        {
          v12 = [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _newProxyLayers];
          [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _addLayers:v12 toEnvironment:self->_hostingEnvironment];
          v13 = [(NSSet *)self->_keyboardLayersAddedToHostingEnvironment mutableCopy];
          [v13 minusSet:v12];
          [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _removeLayers:v13 fromEnvironment:self->_hostingEnvironment];
          v14 = self->_keyboardLayersAddedToHostingEnvironment;
          self->_keyboardLayersAddedToHostingEnvironment = v12;
        }

        v15 = self;
        v16 = v11;
        goto LABEL_15;
      }
    }

    else if (state - 1 <= 1)
    {
      [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _removeLayers:self->_keyboardLayersAddedToHostingEnvironment fromEnvironment:self->_hostingEnvironment];
      v17 = self->_keyboardLayersAddedToHostingEnvironment;
      self->_keyboardLayersAddedToHostingEnvironment = 0;

      v15 = self;
      v16 = 0;
LABEL_15:
      [(_UISceneKeyboardProxyLayerForwardingStateMachine *)v15 _setState:v16];
    }
  }

LABEL_17:
}

- (id)succinctDescription
{
  v2 = [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78___UISceneKeyboardProxyLayerForwardingStateMachine_succinctDescriptionBuilder__block_invoke;
  v8[3] = &unk_1E70F35B8;
  v4 = v3;
  v9 = v4;
  v10 = self;
  v5 = [v4 modifyProem:v8];
  v6 = v4;

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_hostingEnvironment withName:@"hostingEnvironment"];
  v6 = [v4 appendObject:self->_hostingWindow withName:@"hostingWindow"];
  v7 = [(NSSet *)self->_keyboardLayersTracked allObjects];
  [v4 appendArraySection:v7 withName:@"keyboardLayersTracked" skipIfEmpty:1];

  v8 = [(NSSet *)self->_keyboardLayersAddedToHostingEnvironment allObjects];
  [v4 appendArraySection:v8 withName:@"keyboardLayersForwarded" skipIfEmpty:1];

  return v4;
}

- (void)presentationEnvironmentDidUpdateKeyboardLayers:(id)a3
{
  v4 = [a3 keyboardLayers];
  [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self noteKeyboardLayersBeingTracked:v4];
}

- (void)presentationEnvironmentDidInvalidate:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &presentationEnvironmentDidInvalidate____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "<StateMachine:%p> Presentation environment invalidated: %@", &v6, 0x16u);
  }
}

- (void)window:(id)a3 changedFromLevel:(double)a4 toLevel:(double)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (self->_hostingWindow != v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingStateMachine.m" lineNumber:232 description:@"Window changed must match the window being tracked."];
  }

  v10 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &window_changedFromLevel_toLevel____s_category) + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218496;
    v21 = self;
    v22 = 2048;
    v23 = a4;
    v24 = 2048;
    v25 = a5;
    _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "<StateMachine:%p> Parent window level changed from %f to %f.", &v20, 0x20u);
  }

  if ([(NSSet *)self->_keyboardLayersTracked count])
  {
    v11 = [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _newProxyLayers];
    v12 = [(NSSet *)v11 bs_map:&__block_literal_global_170];
    v13 = [(NSSet *)self->_keyboardLayersAddedToHostingEnvironment bs_map:&__block_literal_global_33_0];
    if ((BSEqualObjects() & 1) == 0)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Proxy layer owners should be equal"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(a2);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = 138544642;
        v21 = v17;
        v22 = 2114;
        v23 = *&v19;
        v24 = 2048;
        v25 = *&self;
        v26 = 2114;
        v27 = @"_UISceneKeyboardProxyLayerForwardingStateMachine.m";
        v28 = 1024;
        v29 = 247;
        v30 = 2114;
        v31 = v16;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v20, 0x3Au);
      }

      [v16 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18973C270);
    }

    [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _addLayers:v11 toEnvironment:self->_hostingEnvironment];
    keyboardLayersAddedToHostingEnvironment = self->_keyboardLayersAddedToHostingEnvironment;
    self->_keyboardLayersAddedToHostingEnvironment = v11;
  }
}

- (id)hostingEnvironmentForWindow:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v9 = 0;
    goto LABEL_25;
  }

  v6 = [v4[103] _FBSScene];
  v7 = [v5 windowScene];
  v8 = v7;
  if (!v6)
  {
    if (!v7)
    {
      v9 = 0;
      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v5;
LABEL_8:
      v11 = [v10 rootViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
        v9 = [[_UISceneKeyboardProxyLayerForwardingHostingViewService alloc] initWithViewServiceOperator:v12];

LABEL_23:
        goto LABEL_24;
      }

LABEL_20:
      v15 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &qword_1ED49D9D8) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        v18 = self;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "<StateMachine:%p> Unable to find an appropriate hosting environment for a scene that appears to be in a view service.", &v17, 0xCu);
      }

      v9 = 0;
      goto LABEL_23;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8[47];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v13;
        v14 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &_MergedGlobals_1062) + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 134218242;
          v18 = self;
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "<StateMachine:%p> Hosting environment for a view service is the text effects window, falling back to the key window (%@) for layer forwarding", &v17, 0x16u);
        }

        if (!v10)
        {
          goto LABEL_20;
        }

        goto LABEL_8;
      }
    }

    v10 = 0;
    goto LABEL_20;
  }

  v9 = [[_UISceneKeyboardProxyLayerForwardingHostingScene alloc] initWithScene:v6];
LABEL_24:

LABEL_25:

  return v9;
}

- (void)_noteHostedInWindow:(id)a3
{
  v28 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_hostingEnvironment;
  v7 = [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self hostingEnvironmentForWindow:v5];
  p_hostingWindow = &self->_hostingWindow;
  v9 = self->_hostingWindow;
  if (BSEqualObjects() && (BSEqualObjects() & 1) != 0)
  {
    goto LABEL_25;
  }

  if (v9 != v5)
  {
    v10 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &qword_1ED49D9E0) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v35 = self;
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "<StateMachine:%p> Hosting window did change to %@.", buf, 0x16u);
    }

    [(UIWindow *)self->_hostingWindow _removeWindowLevelChangedObserver:self, v28];
    objc_storeStrong(&self->_hostingWindow, a3);
    [(UIWindow *)self->_hostingWindow _addWindowLevelChangedObserver:self];
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 removeObserver:self->_windowDidMoveToSceneNotificationToken];

    if (self->_hostingWindow && !self->_hostingEnvironment)
    {
      v12 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &qword_1ED49D9E8) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v35 = self;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "<StateMachine:%p> Waiting for a hosting window.", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      v14 = *p_hostingWindow;
      v15 = [MEMORY[0x1E696ADC8] mainQueue];
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __72___UISceneKeyboardProxyLayerForwardingStateMachine__noteHostedInWindow___block_invoke;
      v32 = &unk_1E70F3D28;
      objc_copyWeak(&v33, buf);
      v16 = [v13 addObserverForName:@"_UIWindowDidMoveToSceneNotification" object:v14 queue:v15 usingBlock:&v29];
      windowDidMoveToSceneNotificationToken = self->_windowDidMoveToSceneNotificationToken;
      self->_windowDidMoveToSceneNotificationToken = v16;

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }
  }

  if (v6 != v7)
  {
    v18 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &qword_1ED49D9F0) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [(_UISceneKeyboardProxyLayerForwardingHostingEnvironment *)v7 description];
      *buf = 134218498;
      v35 = self;
      v36 = 2048;
      v37 = v7;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "<StateMachine:%p> Hosting environment did change to <%p:%@>.", buf, 0x20u);
    }

    [(_UISceneKeyboardProxyLayerForwardingHostingEnvironment *)self->_hostingEnvironment removeObserver:self, v28, v29, v30, v31, v32];
    objc_storeStrong(&self->_hostingEnvironment, v7);
    [(_UISceneKeyboardProxyLayerForwardingHostingEnvironment *)v7 addObserver:self];
    if (v5)
    {
      if (self->_state - 1 <= 1)
      {
        v21 = [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _newProxyLayers];
        [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _addLayers:v21 toEnvironment:v7];
        [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _removeLayers:v21 fromEnvironment:v6];
        keyboardLayersAddedToHostingEnvironment = self->_keyboardLayersAddedToHostingEnvironment;
        self->_keyboardLayersAddedToHostingEnvironment = v21;

        [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _setState:2];
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (!v5)
  {
LABEL_23:
    if (self->_state == 2)
    {
      [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _removeLayers:self->_keyboardLayersAddedToHostingEnvironment fromEnvironment:v6];
      v26 = self->_keyboardLayersAddedToHostingEnvironment;
      self->_keyboardLayersAddedToHostingEnvironment = 0;

      [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _setState:1];
    }

    goto LABEL_25;
  }

  if (BSEqualObjects())
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:v28 object:self file:@"_UISceneKeyboardProxyLayerForwardingStateMachine.m" lineNumber:383 description:@"Windows must be different."];
  }

  if (self->_state == 2)
  {
    [*p_hostingWindow windowLevel];
    [(UIWindow *)v5 windowLevel];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      v23 = [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _newProxyLayers];
      [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _addLayers:v23 toEnvironment:v7];
      v24 = [(NSSet *)self->_keyboardLayersAddedToHostingEnvironment mutableCopy];
      [v24 minusSet:v23];
      [(_UISceneKeyboardProxyLayerForwardingStateMachine *)self _removeLayers:v24 fromEnvironment:self->_hostingEnvironment];
      v25 = self->_keyboardLayersAddedToHostingEnvironment;
      self->_keyboardLayersAddedToHostingEnvironment = v23;
    }
  }

LABEL_25:
}

- (void)_setState:(unint64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 2uLL:
      if (!self->_keyboardLayersTracked)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        [v18 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingStateMachine.m" lineNumber:417 description:@"Must have a keyboard layer tracked if we're forwarding kb layers."];
      }

      if (!self->_keyboardLayersAddedToHostingEnvironment)
      {
        v19 = [MEMORY[0x1E696AAA8] currentHandler];
        [v19 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingStateMachine.m" lineNumber:418 description:@"Must have a keyboard layer added to a host if we're forwarding kb layers."];
      }

      if (!self->_hostingEnvironment)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = v6;
        v8 = @"Must have a hosting environment if we're forwarding kb layers.";
        v9 = a2;
        v10 = self;
        v11 = 419;
        goto LABEL_27;
      }

      break;
    case 1uLL:
      if (!self->_keyboardLayersTracked)
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        [v17 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingStateMachine.m" lineNumber:412 description:@"Must have a keyboard layer tracked if we're eligible for forwarding."];
      }

      if (self->_keyboardLayersAddedToHostingEnvironment)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = v6;
        v8 = @"Cannot have a keyboard layer added to a host if we're eligible for forwarding.";
        v9 = a2;
        v10 = self;
        v11 = 413;
        goto LABEL_27;
      }

      break;
    case 0uLL:
      if (self->_keyboardLayersTracked)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        [v20 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingStateMachine.m" lineNumber:407 description:@"Cannot have a keyboard layer tracked if we're not eligible for forwarding."];
      }

      if (self->_keyboardLayersAddedToHostingEnvironment)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = v6;
        v8 = @"Cannot have a keyboard layer added to a host if we're not eligible for forwarding.";
        v9 = a2;
        v10 = self;
        v11 = 408;
LABEL_27:
        [v6 handleFailureInMethod:v9 object:v10 file:@"_UISceneKeyboardProxyLayerForwardingStateMachine.m" lineNumber:v11 description:v8];
      }

      break;
  }

  v12 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &_setState____s_category) + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    if (state > 2)
    {
      v14 = @"(unknown)";
    }

    else
    {
      v14 = off_1E7105470[state];
    }

    if (a3 > 2)
    {
      v15 = @"(unknown)";
    }

    else
    {
      v15 = off_1E7105470[a3];
    }

    v21 = 134218498;
    v22 = self;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v15;
    v16 = v12;
  }

  self->_state = a3;
}

- (void)_addLayers:(id)a3 toEnvironment:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &_addLayers_toEnvironment____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 description];
    v11 = 134218754;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "<StateMachine:%p> Add layers %@ to environment: <%p: %@>.", &v11, 0x2Au);
  }

  [v7 addLayers:v6];
}

- (void)_removeLayers:(id)a3 fromEnvironment:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &_removeLayers_fromEnvironment____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 description];
    v11 = 134218754;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "<StateMachine:%p> Remove layers %@ from environment: <%p: %@>.", &v11, 0x2Au);
  }

  [v7 removeLayers:v6];
}

- (id)_newProxyLayers
{
  v32 = *MEMORY[0x1E69E9840];
  if (!self->_hostingWindow)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingStateMachine.m" lineNumber:438 description:@"Must have a hosting window to fetch new proxy layers."];
  }

  if (![(NSSet *)self->_keyboardLayersTracked count])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingStateMachine.m" lineNumber:439 description:@"Must have a keyboard layer tracked."];
  }

  [(UIWindow *)self->_hostingWindow windowLevel];
  v4 = v3 + 1.0;
  v5 = *(__UILogGetCategoryCachedImpl("KBProxyForwarding", &_newProxyLayers___s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v29 = self;
    v30 = 2048;
    v31 = v4;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "<StateMachine:%p> Current level is %f", buf, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(NSSet *)self->_keyboardLayersTracked copy];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        if ([v12 isKeyboardLayer])
        {
          v13 = objc_alloc(MEMORY[0x1E699FB28]);
          WeakRetained = objc_loadWeakRetained(&self->_presentationEnvironment);
          v15 = [WeakRetained keyboardOwnerIdentityToken];
          v16 = [v13 initWithLevel:v15 keyboardOwner:v4];
          [v6 addObject:v16];
        }

        else if ([v12 isKeyboardProxyLayer])
        {
          v17 = objc_alloc(MEMORY[0x1E699FB28]);
          WeakRetained = [v12 keyboardOwner];
          v18 = [v17 initWithLevel:WeakRetained keyboardOwner:v4];
          [v6 addObject:v18];
        }

        else
        {
          WeakRetained = [MEMORY[0x1E696AAA8] currentHandler];
          [WeakRetained handleFailureInMethod:a2 object:self file:@"_UISceneKeyboardProxyLayerForwardingStateMachine.m" lineNumber:451 description:@"Layers other than a keyboard should not be in this data structure."];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  return v6;
}

@end