@interface _UISceneTouchSharingHostComponent
- (NSString)debugDescription;
- (id)cancelTouchesForCurrentEventInClient;
- (id)succinctDescription;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_windowDidAttachContext:(id)a3;
- (void)_windowDidDetachContext:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)configureTouchDeliveryPolicyIfRequired;
- (void)dealloc;
- (void)hostContextIdDidChange:(uint64_t)a1;
- (void)performForClientContexts:(void *)a1;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)setScene:(id)a3;
- (void)setShareTouchesWithHost:(BOOL)a3;
- (void)setTargetView:(id)a3;
@end

@implementation _UISceneTouchSharingHostComponent

- (void)setScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UISceneTouchSharingHostComponent;
  [(FBSSceneComponent *)&v5 setScene:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__windowDidAttachContext_ name:_UIWindowDidAttachContextNotification object:0];
  [v4 addObserver:self selector:sel__windowDidDetachContext_ name:_UIWindowDidDetachContextNotification object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:_UIWindowDidAttachContextNotification object:0];
  [v3 removeObserver:self name:_UIWindowDidDetachContextNotification object:0];

  v4.receiver = self;
  v4.super_class = _UISceneTouchSharingHostComponent;
  [(_UISceneTouchSharingHostComponent *)&v4 dealloc];
}

- (void)setShareTouchesWithHost:(BOOL)a3
{
  if (self->_shareTouchesWithHost != a3)
  {
    self->_shareTouchesWithHost = a3;
    if (a3)
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
  if (a1 && [a1 shareTouchesWithHost] && *(a1 + 24) && !*(a1 + 32))
  {
    v2 = objc_opt_new();
    v3 = *(a1 + 32);
    *(a1 + 32) = v2;

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __75___UISceneTouchSharingHostComponent_configureTouchDeliveryPolicyIfRequired__block_invoke;
    v4[3] = &unk_1E7107F98;
    v4[4] = a1;
    [(_UISceneTouchSharingHostComponent *)a1 performForClientContexts:v4];
  }
}

- (void)setTargetView:(id)a3
{
  v5 = a3;
  targetView = self->_targetView;
  if (targetView != v5)
  {
    v8 = v5;
    [(UIView *)targetView _removeGeometryChangeObserver:?];
    [(UIView *)v8 _addGeometryChangeObserver:?];
    objc_storeStrong(&self->_targetView, a3);
    v7 = [(UIView *)v8 _window];
    -[_UISceneTouchSharingHostComponent hostContextIdDidChange:](self, [v7 _contextId]);

    v5 = v8;
  }
}

- (void)hostContextIdDidChange:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 24) != a2)
    {
      *(a1 + 24) = a2;
      if ([a1 shareTouchesWithHost])
      {
        v4 = *(a1 + 32);
        *(a1 + 32) = 0;

        if (a2)
        {

          [(_UISceneTouchSharingHostComponent *)a1 configureTouchDeliveryPolicyIfRequired];
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
  v5 = [(UIView *)self->_targetView _window];
  v6 = v5;
  v7 = 0;
  if (v3 && v5)
  {
    v8 = [UIApp _touchesEventForWindow:v5];
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
        v16 = [v7 endpoint];
        [v15 setAssertionEndpoint:v16];

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

- (void)performForClientContexts:(void *)a1
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = [a1 scene];
    v5 = [v4 clientSettings];
    v6 = [v5 layers];

    v7 = [v6 countByEnumeratingWithState:&v21 objects:v37 count:16];
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
            objc_enumerationMutation(v6);
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
                v30 = a1;
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

            v16 = [v15 contextID];
            if (v16)
            {
              v3[2](v3, v16);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v37 count:16];
      }

      while (v8);
    }
  }
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v5 = [a4 settingsDiff];
  v6 = [v5 containsProperty:sel_layers];

  if (v6 && [(_UISceneTouchSharingHostComponent *)self shareTouchesWithHost]&& self->_hostContextId)
  {
    policyAssertions = self->_policyAssertions;
    self->_policyAssertions = 0;

    [(_UISceneTouchSharingHostComponent *)self configureTouchDeliveryPolicyIfRequired];
  }
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  if ((a3->var0 & 0x100) != 0)
  {
    v6 = [a4 _window];
    -[_UISceneTouchSharingHostComponent hostContextIdDidChange:](self, [v6 _contextId]);
  }
}

- (void)_windowDidAttachContext:(id)a3
{
  v4 = [a3 object];
  v5 = objc_opt_class();
  v6 = v4;
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
    v9 = [(_UISceneTouchSharingHostComponent *)self targetView];
    v10 = [v9 _window];

    v8 = v11;
    if (v11 == v10)
    {
      -[_UISceneTouchSharingHostComponent hostContextIdDidChange:](self, [v11 _contextId]);
      v8 = v11;
    }
  }
}

- (void)_windowDidDetachContext:(id)a3
{
  v4 = [a3 object];
  v5 = objc_opt_class();
  v6 = v4;
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
    v9 = [(_UISceneTouchSharingHostComponent *)self targetView];
    v10 = [v9 _window];

    v8 = v11;
    if (v11 == v10)
    {
      -[_UISceneTouchSharingHostComponent hostContextIdDidChange:](self, [v11 _contextId]);
      v8 = v11;
    }
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___UISceneTouchSharingHostComponent_appendDescriptionToStream___block_invoke;
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
    v8[2] = __63___UISceneTouchSharingHostComponent_appendDescriptionToStream___block_invoke_2;
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

@end