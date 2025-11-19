@interface _UISceneInterfaceProtectionClientComponent
- (id)settings;
- (id)traitOverridesForTraitProvider:(id)a3;
- (void)createTraitProviderIfNecessary;
- (void)dealloc;
- (void)disableUserInteractionForWindowIfNecessary:(uint64_t)a1;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)setScene:(id)a3;
- (void)windowDidMoveToNilScene:(id)a3;
- (void)windowDidMoveToScene:(id)a3;
- (void)windowMayHaveMovedFromThisScene:(id *)a1;
- (void)windowWillMoveToScene:(id)a3;
@end

@implementation _UISceneInterfaceProtectionClientComponent

- (id)settings
{
  if (a1)
  {
    v1 = [a1 scene];
    v2 = [v1 settings];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)createTraitProviderIfNecessary
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);

    if (!WeakRetained)
    {
      v3 = [a1 clientScene];
      obj = [UIScene _sceneForFBSScene:v3];

      if (obj)
      {
        v4 = [[_UIWindowSceneTraitProvider alloc] initWithScene:obj];
        [(_UIWindowSceneTraitProvider *)v4 setSource:a1];
        [obj _registerSceneComponent:v4 forKey:@"InterfaceProtectionTraitProviderKey"];
        objc_storeWeak(a1 + 6, v4);
        objc_storeWeak(a1 + 4, obj);
      }
    }
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_UIWindowWillMoveToSceneNotification" object:0];
  [v3 removeObserver:self name:@"_UIWindowWillMoveToNilSceneNotification" object:0];
  [v3 removeObserver:self name:@"_UIWindowDidMoveToSceneNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UISceneInterfaceProtectionClientComponent;
  [(_UISceneInterfaceProtectionClientComponent *)&v4 dealloc];
}

- (id)traitOverridesForTraitProvider:(id)a3
{
  if (self)
  {
    v4 = [(UISceneSystemProtectionManager *)self->_sceneSystemProtectionManager isUserAuthenticationEnabled];
    v3 = vars8;
  }

  else
  {
    v4 = 0;
  }

  return [UITraitCollection _traitCollectionWithInterfaceProtectionState:v4];
}

- (void)setScene:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UISceneInterfaceProtectionClientComponent;
  [(FBSSceneComponent *)&v9 setScene:a3];
  v4 = [[UISceneSystemProtectionManager alloc] _init];
  sceneSystemProtectionManager = self->_sceneSystemProtectionManager;
  self->_sceneSystemProtectionManager = v4;

  v6 = self->_sceneSystemProtectionManager;
  v7 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  v8 = [v7 underAppProtection];
  if (v6)
  {
    v6->userAuthenticationEnabled = v8;
  }

  [(_UISceneInterfaceProtectionClientComponent *)&self->super.super.isa createTraitProviderIfNecessary];
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v37 = a4;
  [(_UISceneInterfaceProtectionClientComponent *)&self->super.super.isa createTraitProviderIfNecessary];
  v5 = [v37 settingsDiff];
  v6 = [v5 containsProperty:sel_underAppProtection];

  if (v6)
  {
    v7 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
    v8 = [v7 underAppProtection];
    if (self)
    {
      v9 = [(UISceneSystemProtectionManager *)self->_sceneSystemProtectionManager isUserAuthenticationEnabled];

      if (v8 == v9)
      {
        goto LABEL_9;
      }
    }

    else
    {

      if (!v8)
      {
        goto LABEL_9;
      }
    }

    sceneSystemProtectionManager = self->_sceneSystemProtectionManager;
    v11 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
    v12 = [v11 underAppProtection];
    if (sceneSystemProtectionManager)
    {
      sceneSystemProtectionManager->userAuthenticationEnabled = v12;
    }

    WeakRetained = objc_loadWeakRetained(&self->_uiScene);
    if (WeakRetained)
    {
      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      v15 = objc_loadWeakRetained(&self->_uiScene);
      [v14 postNotificationName:@"UISceneSystemProtectionDidChangeNotification" object:v15];
    }

    v16 = objc_loadWeakRetained(&self->_traitProvider);
    [v16 invalidateTraitOverrides];
  }

LABEL_9:
  v17 = [v37 settingsDiff];
  v18 = [v17 containsProperty:sel_extensionShieldCurrentlyShown];

  if (v18)
  {
    v19 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
    v20 = [v19 extensionShieldCurrentlyShown];

    if (v20)
    {
      if (self)
      {
        if (!self->_disabledUserInteractionWindows)
        {
          v21 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
          disabledUserInteractionWindows = self->_disabledUserInteractionWindows;
          self->_disabledUserInteractionWindows = v21;
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v23 = objc_loadWeakRetained(&self->_uiScene);
        v24 = [v23 _allWindows];

        v25 = [v24 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v39;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v39 != v27)
              {
                objc_enumerationMutation(v24);
              }

              [(_UISceneInterfaceProtectionClientComponent *)self disableUserInteractionForWindowIfNecessary:?];
            }

            v26 = [v24 countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v26);
        }
      }
    }

    else if (self)
    {
      v29 = self->_disabledUserInteractionWindows;
      if (v29)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v30 = v29;
        v31 = [(NSHashTable *)v30 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v39;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v39 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v38 + 1) + 8 * j);
              [v35 setUserInteractionEnabled:1];
              [v35 _restoreFirstResponder];
              [v35 _setSuppressFirstResponderWhenUserInteractionDisabled:0];
            }

            v32 = [(NSHashTable *)v30 countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v32);
        }

        [(NSHashTable *)self->_disabledUserInteractionWindows removeAllObjects];
      }
    }

    if ((*&self->_flags & 1) == 0)
    {
      v36 = [MEMORY[0x1E696AD88] defaultCenter];
      [v36 addObserver:self selector:sel_windowWillMoveToScene_ name:@"_UIWindowWillMoveToSceneNotification" object:0];
      [v36 addObserver:self selector:sel_windowDidMoveToScene_ name:@"_UIWindowDidMoveToSceneNotification" object:0];
      [v36 addObserver:self selector:sel_windowDidMoveToNilScene_ name:@"_UIWindowWillMoveToNilSceneNotification" object:0];
      *&self->_flags |= 1u;
    }
  }
}

- (void)disableUserInteractionForWindowIfNecessary:(uint64_t)a1
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!*(a1 + 40))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_disabledUserInteractionWindows"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(sel_disableUserInteractionForWindowIfNecessary_);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v12 = v7;
        v13 = 2114;
        v14 = v9;
        v15 = 2048;
        v16 = a1;
        v17 = 2114;
        v18 = @"_UISceneInterfaceProtectionClientComponent.m";
        v19 = 1024;
        v20 = 155;
        v21 = 2114;
        v22 = v6;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v6 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18997789CLL);
    }

    v10 = v3;
    v5 = [v3 isUserInteractionEnabled];
    v4 = v10;
    if (v5)
    {
      [v10 setUserInteractionEnabled:0];
      [v10 _setSuppressFirstResponderWhenUserInteractionDisabled:1];
      [*(a1 + 40) addObject:v10];
      v4 = v10;
    }
  }
}

- (void)windowMayHaveMovedFromThisScene:(id *)a1
{
  v5 = a2;
  if (a1)
  {
    v3 = [(_UISceneInterfaceProtectionClientComponent *)a1 settings];
    v4 = [v3 extensionShieldCurrentlyShown];

    if (v4)
    {
      if ([a1[5] containsObject:v5])
      {
        [a1[5] removeObject:v5];
        [v5 _setSuppressFirstResponderWhenUserInteractionDisabled:0];
        [v5 setUserInteractionEnabled:1];
      }
    }
  }
}

- (void)windowWillMoveToScene:(id)a3
{
  v12 = a3;
  v4 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  v5 = [v4 extensionShieldCurrentlyShown];

  v6 = v12;
  if (v5)
  {
    v7 = [v12 object];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      [(_UISceneInterfaceProtectionClientComponent *)&self->super.super.isa windowMayHaveMovedFromThisScene:v11];
    }

    v6 = v12;
  }
}

- (void)windowDidMoveToScene:(id)a3
{
  v14 = a3;
  v4 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  v5 = [v4 extensionShieldCurrentlyShown];

  v6 = v14;
  if (v5)
  {
    v7 = [v14 object];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 _windowHostingScene];
    WeakRetained = objc_loadWeakRetained(&self->_uiScene);

    if (v12 == WeakRetained)
    {
      [(_UISceneInterfaceProtectionClientComponent *)self disableUserInteractionForWindowIfNecessary:v11];
    }

    v6 = v14;
  }
}

- (void)windowDidMoveToNilScene:(id)a3
{
  v12 = a3;
  v4 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  v5 = [v4 extensionShieldCurrentlyShown];

  v6 = v12;
  if (v5)
  {
    v7 = [v12 object];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      [(_UISceneInterfaceProtectionClientComponent *)&self->super.super.isa windowMayHaveMovedFromThisScene:v11];
    }

    v6 = v12;
  }
}

@end