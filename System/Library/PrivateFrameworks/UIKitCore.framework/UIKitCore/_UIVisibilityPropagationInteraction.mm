@interface _UIVisibilityPropagationInteraction
+ (_UIVisibilityPropagationInteraction)interactionWithPID:(int)d environmentIdentifier:(id)identifier;
- (UIView)view;
- (uint64_t)_visibilityLock_didMoveToWindow:(uint64_t)window;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_setVisibilityPropagationEnabled:(uint64_t)enabled;
- (void)_setVisibilityTarget:(uint64_t)target;
- (void)_viewVisibilityDidChange;
- (void)_visibilityLock_enqueueUpdateIfNecessary;
- (void)_visibilityLock_setSource:(uint64_t)source;
- (void)_visibilityLock_updateVisibility;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation _UIVisibilityPropagationInteraction

- (void)_visibilityLock_updateVisibility
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 80));
    if ((*(self + 93) & 1) == 0 && *(self + 88) == 1 && *(self + 90) == 1)
    {
      WeakRetained = objc_loadWeakRetained((self + 16));
      v2 = objc_loadWeakRetained((self + 24));
      v3 = 0;
      if (WeakRetained && v2)
      {
        if ([v2 isHidden])
        {
          v3 = 0;
        }

        else
        {
          v3 = *(self + 40);
        }
      }

      [(_UIVisibilityPropagationInteraction *)self _visibilityLock_setSource:v3];
    }

    else
    {

      [(_UIVisibilityPropagationInteraction *)self _visibilityLock_setSource:?];
    }
  }
}

- (void)_visibilityLock_enqueueUpdateIfNecessary
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 80));
    if ((*(self + 92) & 1) == 0)
    {
      objc_initWeak(&location, self);
      *(self + 92) = 1;
      v2 = dispatch_get_global_queue(25, 0);
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __79___UIVisibilityPropagationInteraction__visibilityLock_enqueueUpdateIfNecessary__block_invoke;
      v3[3] = &unk_1E70F5A28;
      objc_copyWeak(&v4, &location);
      dispatch_async(v2, v3);

      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }
  }
}

- (UIView)view
{
  os_unfair_lock_lock(&self->_visibilityLock);
  WeakRetained = objc_loadWeakRetained(&self->_visibilityLock_view);
  os_unfair_lock_unlock(&self->_visibilityLock);

  return WeakRetained;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_visibilityProcessingLock);
  os_unfair_lock_lock(&self->_visibilityLock);
  self->_visibilityLock_invalidated = 1;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_visibilityLock_windowChangeNotifications;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [defaultCenter removeObserver:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  visibilityLock_windowChangeNotifications = self->_visibilityLock_windowChangeNotifications;
  self->_visibilityLock_windowChangeNotifications = 0;

  os_unfair_lock_unlock(&self->_visibilityLock);
  [(BSServiceConnectionEndpointInjector *)self->_visibilityProcessingLock_endpointInjector invalidate];
  os_unfair_lock_unlock(&self->_visibilityProcessingLock);

  v10.receiver = self;
  v10.super_class = _UIVisibilityPropagationInteraction;
  [(_UIVisibilityPropagationInteraction *)&v10 dealloc];
}

+ (_UIVisibilityPropagationInteraction)interactionWithPID:(int)d environmentIdentifier:(id)identifier
{
  v4 = *&d;
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (v4 <= 0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid pid %i", v4];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *v26 = 138544642;
      *&v26[4] = v15;
      *&v26[12] = 2114;
      *&v26[14] = v17;
      v27 = 2048;
      selfCopy3 = self;
      v29 = 2114;
      v30 = @"_UIVisibilityPropagationView.m";
      v31 = 1024;
      v32 = 63;
      v33 = 2114;
      v34 = v14;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v26, 0x3Au);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A2992C8);
  }

  v8 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v8)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *v26 = 138544642;
      *&v26[4] = v19;
      *&v26[12] = 2114;
      *&v26[14] = v21;
      v27 = 2048;
      selfCopy3 = self;
      v29 = 2114;
      v30 = @"_UIVisibilityPropagationView.m";
      v31 = 1024;
      v32 = 64;
      v33 = 2114;
      v34 = v18;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v26, 0x3Au);
    }

    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A2993C0);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *v26 = 138544642;
      *&v26[4] = v23;
      *&v26[12] = 2114;
      *&v26[14] = v25;
      v27 = 2048;
      selfCopy3 = self;
      v29 = 2114;
      v30 = @"_UIVisibilityPropagationView.m";
      v31 = 1024;
      v32 = 64;
      v33 = 2114;
      v34 = v22;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v26, 0x3Au);
    }

    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A2994B8);
  }

  v9 = [_UIVisibilityPropagationInteraction alloc];
  if (v9)
  {
    *v26 = v9;
    *&v26[8] = _UIVisibilityPropagationInteraction;
    v10 = objc_msgSendSuper2(v26, sel_init);
    v11 = v10;
    if (v10)
    {
      *(v10 + 10) = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x1E69C7640] targetWithPid:v4 environmentIdentifier:v8];
  [(_UIVisibilityPropagationInteraction *)v11 _setVisibilityTarget:v12];

  [(_UIVisibilityPropagationInteraction *)v11 _setVisibilityPropagationEnabled:?];

  return v11;
}

- (void)_setVisibilityTarget:(uint64_t)target
{
  v3 = a2;
  if (target)
  {
    v6 = v3;
    os_unfair_lock_lock((target + 80));
    if ((BSEqualObjects() & 1) == 0)
    {
      v4 = [v6 copy];
      v5 = *(target + 8);
      *(target + 8) = v4;

      [(_UIVisibilityPropagationInteraction *)target _visibilityLock_enqueueUpdateIfNecessary];
    }

    os_unfair_lock_unlock((target + 80));
    v3 = v6;
  }
}

- (void)_setVisibilityPropagationEnabled:(uint64_t)enabled
{
  if (enabled)
  {
    os_unfair_lock_lock((enabled + 80));
    if (*(enabled + 88) != a2)
    {
      *(enabled + 88) = a2;
      [(_UIVisibilityPropagationInteraction *)enabled _visibilityLock_updateVisibility];
    }

    os_unfair_lock_unlock((enabled + 80));
  }
}

- (uint64_t)_visibilityLock_didMoveToWindow:(uint64_t)window
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (window)
  {
    os_unfair_lock_assert_owner((window + 80));
    WeakRetained = objc_loadWeakRetained((window + 24));
    v5 = WeakRetained;
    if ((*(window + 93) & 1) == 0 && v3 && WeakRetained == v3)
    {

LABEL_36:
      window = 0;
      goto LABEL_37;
    }

    v7 = (window + 32);
    v6 = *(window + 32);
    v8 = v6 != 0;
    if (v6)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v10 = *v7;
      v11 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v11)
      {
        v12 = *v36;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v36 != v12)
            {
              objc_enumerationMutation(v10);
            }

            [defaultCenter removeObserver:*(*(&v35 + 1) + 8 * i)];
          }

          v11 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v11);
      }

      v14 = *v7;
      *v7 = 0;
    }

    v15 = *(window + 40);
    if (v15)
    {
      *(window + 40) = 0;

      v8 = 1;
    }

    if (*(window + 91) == 1)
    {
      *(window + 91) = 0;
      v8 = 1;
    }

    if (v5)
    {
      objc_storeWeak((window + 24), 0);

      if (!v3 || (*(window + 93) & 1) != 0)
      {
        goto LABEL_34;
      }
    }

    else if (!v3 || (*(window + 93) & 1) != 0)
    {
      if (!v8)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    objc_initWeak(&location, window);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71___UIVisibilityPropagationInteraction__visibilityLock_didMoveToWindow___block_invoke;
    aBlock[3] = &unk_1E70F3D28;
    objc_copyWeak(&v33, &location);
    v18 = _Block_copy(aBlock);
    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    v20 = [defaultCenter2 addObserverForName:@"UIWindowDidMoveToScreenNotification" object:v3 queue:mainQueue usingBlock:v18];
    [v19 addObject:v20];

    v21 = [defaultCenter2 addObserverForName:@"_UIWindowDidMoveToSceneNotification" object:v3 queue:mainQueue usingBlock:v18];
    [v19 addObject:v21];

    v22 = [defaultCenter2 addObserverForName:@"UIWindowDidBecomeVisibleNotification" object:v3 queue:mainQueue usingBlock:v18];
    [v19 addObject:v22];

    v23 = [defaultCenter2 addObserverForName:@"UIWindowDidBecomeHiddenNotification" object:v3 queue:mainQueue usingBlock:v18];
    [v19 addObject:v23];

    objc_storeStrong((window + 32), v19);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UIRootWindow:%p", v3];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 && ![v3 _isRemoteInputHostWindow])
          {
            _fbsScene = [(UIWindow *)v3 _fbsScene];
            v25 = _fbsScene;
            if (_fbsScene)
            {
              identityToken = [_fbsScene identityToken];
              stringRepresentation = [identityToken stringRepresentation];
              v30 = _UISVisibilityEnvironmentForSceneIdentityTokenString();
              v31 = *(window + 40);
              *(window + 40) = v30;
            }

            else
            {
              identityToken = *(window + 40);
              *(window + 40) = 0;
            }

            goto LABEL_33;
          }
        }
      }

      [v3 _contextId];
      v24 = _UISVisibilityEnvironmentForUIHostedWindowContextID();
    }

    v25 = *(window + 40);
    *(window + 40) = v24;
LABEL_33:

    objc_storeWeak((window + 24), v3);
    *(window + 91) = 1;

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);

LABEL_34:
    [(_UIVisibilityPropagationInteraction *)window _visibilityLock_updateVisibility];
    window = 1;
  }

LABEL_37:

  return window;
}

- (void)_visibilityLock_setSource:(uint64_t)source
{
  v5 = a2;
  if (source)
  {
    os_unfair_lock_assert_owner((source + 80));
    if ((BSEqualStrings() & 1) == 0)
    {
      v3 = [v5 copy];
      v4 = *(source + 48);
      *(source + 48) = v3;

      [(_UIVisibilityPropagationInteraction *)source _visibilityLock_enqueueUpdateIfNecessary];
    }
  }
}

- (void)willMoveToView:(id)view
{
  os_unfair_lock_lock(&self->_visibilityLock);
  WeakRetained = objc_loadWeakRetained(&self->_visibilityLock_view);
  if (!view || self->_visibilityLock_invalidated || !WeakRetained && self->_visibilityLock_isTrackingView)
  {
    [(_UIVisibilityPropagationInteraction *)self _visibilityLock_didMoveToWindow:?];
  }

  os_unfair_lock_unlock(&self->_visibilityLock);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  os_unfair_lock_lock(&self->_visibilityLock);
  v5 = viewCopy;
  v6 = v5;
  if (self)
  {
    os_unfair_lock_assert_owner(&self->_visibilityLock);
    WeakRetained = objc_loadWeakRetained(&self->_visibilityLock_view);
    v8 = WeakRetained;
    if (self->_visibilityLock_invalidated || !v5 || WeakRetained != v5)
    {
      if (self->_visibilityLock_isTrackingView)
      {
        self->_visibilityLock_isTrackingView = 0;
        visibilityLock_isViewVisible = 1;
        if (WeakRetained)
        {
LABEL_5:
          objc_storeWeak(&self->_visibilityLock_view, 0);

          if (!v5 || self->_visibilityLock_invalidated)
          {
            goto LABEL_16;
          }

LABEL_14:
          self->_visibilityLock_isViewVisible = [v5 isHidden] ^ 1;
          objc_storeWeak(&self->_visibilityLock_view, v5);
          self->_visibilityLock_isTrackingView = 1;
          v6 = v5;
LABEL_17:
          window = [v6 window];
          v11 = [(_UIVisibilityPropagationInteraction *)self _visibilityLock_didMoveToWindow:window];

          if ((v11 & 1) == 0)
          {
            [(_UIVisibilityPropagationInteraction *)self _visibilityLock_updateVisibility];
          }

          v8 = 0;
          goto LABEL_22;
        }
      }

      else
      {
        visibilityLock_isViewVisible = self->_visibilityLock_isViewVisible;
        if (WeakRetained)
        {
          goto LABEL_5;
        }
      }

      if (v5 && !self->_visibilityLock_invalidated)
      {
        goto LABEL_14;
      }

      if (visibilityLock_isViewVisible)
      {
LABEL_16:

        v6 = 0;
        goto LABEL_17;
      }

      v8 = 0;
    }

    v6 = v5;
LABEL_22:
  }

  os_unfair_lock_unlock(&self->_visibilityLock);
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  toWindowCopy = toWindow;
  os_unfair_lock_lock(&self->_visibilityLock);
  [(_UIVisibilityPropagationInteraction *)self _visibilityLock_didMoveToWindow:toWindowCopy];

  os_unfair_lock_unlock(&self->_visibilityLock);
}

- (void)_viewVisibilityDidChange
{
  os_unfair_lock_lock(&self->_visibilityLock);
  WeakRetained = objc_loadWeakRetained(&self->_visibilityLock_view);
  if (WeakRetained)
  {
    isHidden = [WeakRetained isHidden];
    if (self->_visibilityLock_isViewVisible != (isHidden ^ 1))
    {
      self->_visibilityLock_isViewVisible = isHidden ^ 1;
      [(_UIVisibilityPropagationInteraction *)self _visibilityLock_updateVisibility];
    }
  }

  os_unfair_lock_unlock(&self->_visibilityLock);
}

@end