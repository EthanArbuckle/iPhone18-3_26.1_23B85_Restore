@interface _UISceneInterfaceProtectionClientComponent
- (id)settings;
- (id)traitOverridesForTraitProvider:(id)provider;
- (void)createTraitProviderIfNecessary;
- (void)dealloc;
- (void)disableUserInteractionForWindowIfNecessary:(uint64_t)necessary;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)setScene:(id)scene;
- (void)windowDidMoveToNilScene:(id)scene;
- (void)windowDidMoveToScene:(id)scene;
- (void)windowMayHaveMovedFromThisScene:(id *)scene;
- (void)windowWillMoveToScene:(id)scene;
@end

@implementation _UISceneInterfaceProtectionClientComponent

- (id)settings
{
  if (self)
  {
    scene = [self scene];
    settings = [scene settings];
  }

  else
  {
    settings = 0;
  }

  return settings;
}

- (void)createTraitProviderIfNecessary
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 6);

    if (!WeakRetained)
    {
      clientScene = [self clientScene];
      obj = [UIScene _sceneForFBSScene:clientScene];

      if (obj)
      {
        v4 = [[_UIWindowSceneTraitProvider alloc] initWithScene:obj];
        [(_UIWindowSceneTraitProvider *)v4 setSource:self];
        [obj _registerSceneComponent:v4 forKey:@"InterfaceProtectionTraitProviderKey"];
        objc_storeWeak(self + 6, v4);
        objc_storeWeak(self + 4, obj);
      }
    }
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIWindowWillMoveToSceneNotification" object:0];
  [defaultCenter removeObserver:self name:@"_UIWindowWillMoveToNilSceneNotification" object:0];
  [defaultCenter removeObserver:self name:@"_UIWindowDidMoveToSceneNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UISceneInterfaceProtectionClientComponent;
  [(_UISceneInterfaceProtectionClientComponent *)&v4 dealloc];
}

- (id)traitOverridesForTraitProvider:(id)provider
{
  if (self)
  {
    isUserAuthenticationEnabled = [(UISceneSystemProtectionManager *)self->_sceneSystemProtectionManager isUserAuthenticationEnabled];
    v3 = vars8;
  }

  else
  {
    isUserAuthenticationEnabled = 0;
  }

  return [UITraitCollection _traitCollectionWithInterfaceProtectionState:isUserAuthenticationEnabled];
}

- (void)setScene:(id)scene
{
  v9.receiver = self;
  v9.super_class = _UISceneInterfaceProtectionClientComponent;
  [(FBSSceneComponent *)&v9 setScene:scene];
  _init = [[UISceneSystemProtectionManager alloc] _init];
  sceneSystemProtectionManager = self->_sceneSystemProtectionManager;
  self->_sceneSystemProtectionManager = _init;

  v6 = self->_sceneSystemProtectionManager;
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  underAppProtection = [settings underAppProtection];
  if (v6)
  {
    v6->userAuthenticationEnabled = underAppProtection;
  }

  [(_UISceneInterfaceProtectionClientComponent *)&self->super.super.isa createTraitProviderIfNecessary];
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  v43 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  [(_UISceneInterfaceProtectionClientComponent *)&self->super.super.isa createTraitProviderIfNecessary];
  settingsDiff = [settingsCopy settingsDiff];
  v6 = [settingsDiff containsProperty:sel_underAppProtection];

  if (v6)
  {
    settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
    underAppProtection = [settings underAppProtection];
    if (self)
    {
      isUserAuthenticationEnabled = [(UISceneSystemProtectionManager *)self->_sceneSystemProtectionManager isUserAuthenticationEnabled];

      if (underAppProtection == isUserAuthenticationEnabled)
      {
        goto LABEL_9;
      }
    }

    else
    {

      if (!underAppProtection)
      {
        goto LABEL_9;
      }
    }

    sceneSystemProtectionManager = self->_sceneSystemProtectionManager;
    settings2 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
    underAppProtection2 = [settings2 underAppProtection];
    if (sceneSystemProtectionManager)
    {
      sceneSystemProtectionManager->userAuthenticationEnabled = underAppProtection2;
    }

    WeakRetained = objc_loadWeakRetained(&self->_uiScene);
    if (WeakRetained)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v15 = objc_loadWeakRetained(&self->_uiScene);
      [defaultCenter postNotificationName:@"UISceneSystemProtectionDidChangeNotification" object:v15];
    }

    v16 = objc_loadWeakRetained(&self->_traitProvider);
    [v16 invalidateTraitOverrides];
  }

LABEL_9:
  settingsDiff2 = [settingsCopy settingsDiff];
  v18 = [settingsDiff2 containsProperty:sel_extensionShieldCurrentlyShown];

  if (v18)
  {
    settings3 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
    extensionShieldCurrentlyShown = [settings3 extensionShieldCurrentlyShown];

    if (extensionShieldCurrentlyShown)
    {
      if (self)
      {
        if (!self->_disabledUserInteractionWindows)
        {
          weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
          disabledUserInteractionWindows = self->_disabledUserInteractionWindows;
          self->_disabledUserInteractionWindows = weakObjectsHashTable;
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v23 = objc_loadWeakRetained(&self->_uiScene);
        _allWindows = [v23 _allWindows];

        v25 = [_allWindows countByEnumeratingWithState:&v38 objects:v42 count:16];
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
                objc_enumerationMutation(_allWindows);
              }

              [(_UISceneInterfaceProtectionClientComponent *)self disableUserInteractionForWindowIfNecessary:?];
            }

            v26 = [_allWindows countByEnumeratingWithState:&v38 objects:v42 count:16];
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
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_windowWillMoveToScene_ name:@"_UIWindowWillMoveToSceneNotification" object:0];
      [defaultCenter2 addObserver:self selector:sel_windowDidMoveToScene_ name:@"_UIWindowDidMoveToSceneNotification" object:0];
      [defaultCenter2 addObserver:self selector:sel_windowDidMoveToNilScene_ name:@"_UIWindowWillMoveToNilSceneNotification" object:0];
      *&self->_flags |= 1u;
    }
  }
}

- (void)disableUserInteractionForWindowIfNecessary:(uint64_t)necessary
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (necessary)
  {
    if (!*(necessary + 40))
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
        necessaryCopy = necessary;
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
    isUserInteractionEnabled = [v3 isUserInteractionEnabled];
    v4 = v10;
    if (isUserInteractionEnabled)
    {
      [v10 setUserInteractionEnabled:0];
      [v10 _setSuppressFirstResponderWhenUserInteractionDisabled:1];
      [*(necessary + 40) addObject:v10];
      v4 = v10;
    }
  }
}

- (void)windowMayHaveMovedFromThisScene:(id *)scene
{
  v5 = a2;
  if (scene)
  {
    settings = [(_UISceneInterfaceProtectionClientComponent *)scene settings];
    extensionShieldCurrentlyShown = [settings extensionShieldCurrentlyShown];

    if (extensionShieldCurrentlyShown)
    {
      if ([scene[5] containsObject:v5])
      {
        [scene[5] removeObject:v5];
        [v5 _setSuppressFirstResponderWhenUserInteractionDisabled:0];
        [v5 setUserInteractionEnabled:1];
      }
    }
  }
}

- (void)windowWillMoveToScene:(id)scene
{
  sceneCopy = scene;
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  extensionShieldCurrentlyShown = [settings extensionShieldCurrentlyShown];

  v6 = sceneCopy;
  if (extensionShieldCurrentlyShown)
  {
    object = [sceneCopy object];
    v8 = objc_opt_class();
    v9 = object;
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

    v6 = sceneCopy;
  }
}

- (void)windowDidMoveToScene:(id)scene
{
  sceneCopy = scene;
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  extensionShieldCurrentlyShown = [settings extensionShieldCurrentlyShown];

  v6 = sceneCopy;
  if (extensionShieldCurrentlyShown)
  {
    object = [sceneCopy object];
    v8 = objc_opt_class();
    v9 = object;
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

    _windowHostingScene = [v11 _windowHostingScene];
    WeakRetained = objc_loadWeakRetained(&self->_uiScene);

    if (_windowHostingScene == WeakRetained)
    {
      [(_UISceneInterfaceProtectionClientComponent *)self disableUserInteractionForWindowIfNecessary:v11];
    }

    v6 = sceneCopy;
  }
}

- (void)windowDidMoveToNilScene:(id)scene
{
  sceneCopy = scene;
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  extensionShieldCurrentlyShown = [settings extensionShieldCurrentlyShown];

  v6 = sceneCopy;
  if (extensionShieldCurrentlyShown)
  {
    object = [sceneCopy object];
    v8 = objc_opt_class();
    v9 = object;
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

    v6 = sceneCopy;
  }
}

@end