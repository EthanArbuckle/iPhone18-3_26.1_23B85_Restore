@interface _UISceneTouchSharingHostComponent
- (NSString)debugDescription;
- (id)cancelTouchesForCurrentEventInClient;
- (id)succinctDescription;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_windowDidAttachContext:(id)context;
- (void)_windowDidDetachContext:(id)context;
- (void)appendDescriptionToStream:(id)stream;
- (void)configureTouchDeliveryPolicyIfRequired;
- (void)dealloc;
- (void)hostContextIdDidChange:(uint64_t)change;
- (void)performForClientContexts:(void *)contexts;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)setScene:(id)scene;
- (void)setShareTouchesWithHost:(BOOL)host;
- (void)setTargetView:(id)view;
@end

@implementation _UISceneTouchSharingHostComponent

- (void)setScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = _UISceneTouchSharingHostComponent;
  [(FBSSceneComponent *)&v5 setScene:scene];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__windowDidAttachContext_ name:_UIWindowDidAttachContextNotification object:0];
  [defaultCenter addObserver:self selector:sel__windowDidDetachContext_ name:_UIWindowDidDetachContextNotification object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:_UIWindowDidAttachContextNotification object:0];
  [defaultCenter removeObserver:self name:_UIWindowDidDetachContextNotification object:0];

  v4.receiver = self;
  v4.super_class = _UISceneTouchSharingHostComponent;
  [(_UISceneTouchSharingHostComponent *)&v4 dealloc];
}

- (void)setShareTouchesWithHost:(BOOL)host
{
  if (self->_shareTouchesWithHost != host)
  {
    self->_shareTouchesWithHost = host;
    if (host)
    {
      [(_UISceneTouchSharingHostComponent *)self configureTouchDeliveryPolicyIfRequired];
    }

    else
    {
      policyAssertions = self->_policyAssertions;
      self->_policyAssertions = 0;
    }
  }
}

- (void)configureTouchDeliveryPolicyIfRequired
{
  if (self && [self shareTouchesWithHost] && *(self + 24) && !*(self + 32))
  {
    v2 = objc_opt_new();
    v3 = *(self + 32);
    *(self + 32) = v2;

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __75___UISceneTouchSharingHostComponent_configureTouchDeliveryPolicyIfRequired__block_invoke;
    v4[3] = &unk_1E7107F98;
    v4[4] = self;
    [(_UISceneTouchSharingHostComponent *)self performForClientContexts:v4];
  }
}

- (void)setTargetView:(id)view
{
  viewCopy = view;
  targetView = self->_targetView;
  if (targetView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)targetView _removeGeometryChangeObserver:?];
    [(UIView *)v8 _addGeometryChangeObserver:?];
    objc_storeStrong(&self->_targetView, view);
    _window = [(UIView *)v8 _window];
    -[_UISceneTouchSharingHostComponent hostContextIdDidChange:](self, [_window _contextId]);

    viewCopy = v8;
  }
}

- (void)hostContextIdDidChange:(uint64_t)change
{
  if (change)
  {
    if (*(change + 24) != a2)
    {
      *(change + 24) = a2;
      if ([change shareTouchesWithHost])
      {
        v4 = *(change + 32);
        *(change + 32) = 0;

        if (a2)
        {

          [(_UISceneTouchSharingHostComponent *)change configureTouchDeliveryPolicyIfRequired];
        }
      }
    }
  }
}

- (id)cancelTouchesForCurrentEventInClient
{
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __73___UISceneTouchSharingHostComponent_cancelTouchesForCurrentEventInClient__block_invoke;
  v28 = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v29 = a2;
  v3 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
  v4 = objc_opt_new();
  _window = [(UIView *)self->_targetView _window];
  v6 = _window;
  v7 = 0;
  if (v3 && _window)
  {
    v8 = [UIApp _touchesEventForWindow:_window];
    [v8 _initialTouchTimestampForWindow:v6];
    v10 = v9;

    v11 = [UIApp _scrollEventForWindow:v6];
    [v11 _beganScrollTimestamp];
    v13 = v12;

    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __73___UISceneTouchSharingHostComponent_cancelTouchesForCurrentEventInClient__block_invoke_9;
    v21 = &unk_1E71293C8;
    v23 = v10;
    v14 = v4;
    v22 = v14;
    v24 = v13;
    [(_UISceneTouchSharingHostComponent *)self performForClientContexts:?];
    if ([v14 count])
    {
      v15 = [MEMORY[0x1E698E438] policyByCombiningPolicies:v14];
      if (v15)
      {
        v7 = objc_alloc_init(MEMORY[0x1E698E440]);
        endpoint = [v7 endpoint];
        [v15 setAssertionEndpoint:endpoint];

        [v3 ipc_addPolicy:v15];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)performForClientContexts:(void *)contexts
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (contexts)
  {
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    scene = [contexts scene];
    clientSettings = [scene clientSettings];
    layers = [clientSettings layers];

    v7 = [layers countByEnumeratingWithState:&v21 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(layers);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          if ([v11 type] == 1)
          {
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

            if (!v15)
            {
              v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"contextLayer"];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v18 = NSStringFromSelector(sel_performForClientContexts_);
                v19 = objc_opt_class();
                v20 = NSStringFromClass(v19);
                *buf = 138544642;
                v26 = v18;
                v27 = 2114;
                v28 = v20;
                v29 = 2048;
                contextsCopy = contexts;
                v31 = 2114;
                v32 = @"_UISceneTouchSharingHostComponent.m";
                v33 = 1024;
                v34 = 225;
                v35 = 2114;
                v36 = v17;
                _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
              }

              [v17 UTF8String];
              _bs_set_crash_log_message();
              __break(0);
              JUMPOUT(0x18A2D28B8);
            }

            contextID = [v15 contextID];
            if (contextID)
            {
              v3[2](v3, contextID);
            }
          }
        }

        v8 = [layers countByEnumeratingWithState:&v21 objects:v37 count:16];
      }

      while (v8);
    }
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsDiff = [settings settingsDiff];
  v6 = [settingsDiff containsProperty:sel_layers];

  if (v6 && [(_UISceneTouchSharingHostComponent *)self shareTouchesWithHost]&& self->_hostContextId)
  {
    policyAssertions = self->_policyAssertions;
    self->_policyAssertions = 0;

    [(_UISceneTouchSharingHostComponent *)self configureTouchDeliveryPolicyIfRequired];
  }
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  if ((changed->var0 & 0x100) != 0)
  {
    _window = [ancestor _window];
    -[_UISceneTouchSharingHostComponent hostContextIdDidChange:](self, [_window _contextId]);
  }
}

- (void)_windowDidAttachContext:(id)context
{
  object = [context object];
  v5 = objc_opt_class();
  v6 = object;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;

  v8 = v11;
  if (v11)
  {
    targetView = [(_UISceneTouchSharingHostComponent *)self targetView];
    _window = [targetView _window];

    v8 = v11;
    if (v11 == _window)
    {
      -[_UISceneTouchSharingHostComponent hostContextIdDidChange:](self, [v11 _contextId]);
      v8 = v11;
    }
  }
}

- (void)_windowDidDetachContext:(id)context
{
  object = [context object];
  v5 = objc_opt_class();
  v6 = object;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;

  v8 = v11;
  if (v11)
  {
    targetView = [(_UISceneTouchSharingHostComponent *)self targetView];
    _window = [targetView _window];

    v8 = v11;
    if (v11 == _window)
    {
      -[_UISceneTouchSharingHostComponent hostContextIdDidChange:](self, [v11 _contextId]);
      v8 = v11;
    }
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___UISceneTouchSharingHostComponent_appendDescriptionToStream___block_invoke;
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
    v8[2] = __63___UISceneTouchSharingHostComponent_appendDescriptionToStream___block_invoke_2;
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

@end