@interface _UISceneInterfaceProtectionHostComponent
- (BOOL)extensionShieldCurrentlyShown;
- (NSString)debugDescription;
- (id)shieldView;
- (id)succinctDescription;
- (void)_setUnderAppProtection:(void *)protection;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)appendDescriptionToStream:(id)stream;
- (void)configureSelfMonitoringWithConfiguration:(id)configuration;
- (void)dealloc;
- (void)isUnderAppProtection;
- (void)presentAppProtectionShieldView;
- (void)removeAppProtectionShieldView;
- (void)requestAppProtectionAuthIfNecessary;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setAPExtension:(id)extension;
- (void)setAppIconBundleIdentifier:(id)identifier;
- (void)setExtensionShieldCurrentlyShown:(BOOL)shown;
- (void)setLocalizedName:(id)name;
- (void)setScene:(id)scene;
- (void)setShieldParentView:(id)view;
- (void)setUnderAppProtection:(BOOL)protection;
- (void)shieldViewUnlockButtonPressed:(id)pressed;
- (void)updateSettings:(void *)settings;
@end

@implementation _UISceneInterfaceProtectionHostComponent

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UISceneDidEnterBackgroundNotification" object:0];
  [defaultCenter removeObserver:self name:@"UISceneWillEnterForegroundNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UISceneInterfaceProtectionHostComponent;
  [(_UISceneInterfaceProtectionHostComponent *)&v4 dealloc];
}

- (void)updateSettings:(void *)settings
{
  if (settings)
  {
    v3 = a2;
    hostScene = [settings hostScene];
    [hostScene updateSettings:v3];
  }
}

- (void)setScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = _UISceneInterfaceProtectionHostComponent;
  [(FBSSceneComponent *)&v7 setScene:scene];
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  transientLocalSettings = [settings transientLocalSettings];
  v6 = [transientLocalSettings flagForSetting:20230216];

  if (v6 == 1)
  {
    [(_UISceneInterfaceProtectionHostComponent *)self setUnderAppProtection:1];
  }
}

- (void)sceneDidInvalidate:(id)invalidate
{
  [(BSInvalidatable *)self->_sheetDisconnectionAssertion invalidate];
  sheetDisconnectionAssertion = self->_sheetDisconnectionAssertion;
  self->_sheetDisconnectionAssertion = 0;
}

- (void)isUnderAppProtection
{
  if (result)
  {
    settings = [(_UISceneInterfaceProtectionClientComponent *)result settings];
    underAppProtection = [settings underAppProtection];

    return underAppProtection;
  }

  return result;
}

- (void)setUnderAppProtection:(BOOL)protection
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The underAppProtection setting is managed automatically when self monitoring has been configured"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *v9 = 138544642;
      *&v9[4] = v6;
      *&v9[12] = 2114;
      *&v9[14] = v8;
      *&v9[22] = 2048;
      selfCopy = self;
      v11 = 2114;
      v12 = @"_UISceneInterfaceProtectionHostComponent.m";
      v13 = 1024;
      v14 = 96;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F68780);
  }

  *v9 = MEMORY[0x1E69E9820];
  *&v9[8] = 3221225472;
  *&v9[16] = __67___UISceneInterfaceProtectionHostComponent__setUnderAppProtection___block_invoke;
  selfCopy = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneInterfaceProtectionSettings__8l;
  LOBYTE(v11) = protection;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v9];
}

- (void)_setUnderAppProtection:(void *)protection
{
  if (protection)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __67___UISceneInterfaceProtectionHostComponent__setUnderAppProtection___block_invoke;
    v2[3] = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneInterfaceProtectionSettings__8l;
    v3 = a2;
    [(_UISceneInterfaceProtectionHostComponent *)protection updateSettings:v2];
  }
}

- (void)configureSelfMonitoringWithConfiguration:(id)configuration
{
  v64 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if ((*&self->_flags & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_UISceneInterfaceProtectionHostComponent is already configured for self monitoring"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      *&buf[22] = 2048;
      selfCopy8 = self;
      *v59 = 2114;
      *&v59[2] = @"_UISceneInterfaceProtectionHostComponent.m";
      v60 = 1024;
      v61 = 107;
      v62 = 2114;
      v63 = v12;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F68BD8);
  }

  if (*&self->_flags)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reentrancy to %s is not allowed", "-[_UISceneInterfaceProtectionHostComponent configureSelfMonitoringWithConfiguration:]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      *&buf[4] = v18;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      *&buf[22] = 2048;
      selfCopy8 = self;
      *v59 = 2114;
      *&v59[2] = @"_UISceneInterfaceProtectionHostComponent.m";
      v60 = 1024;
      v61 = 108;
      v62 = 2114;
      v63 = v17;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v21 = v17;
    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F68CD4);
  }

  if ([(_UISceneInterfaceProtectionHostComponent *)self isUnderAppProtection])
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Self monitoring can not be configured after underAppProtection has been manually set"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      *&buf[4] = v23;
      *&buf[12] = 2114;
      *&buf[14] = v25;
      *&buf[22] = 2048;
      selfCopy8 = self;
      *v59 = 2114;
      *&v59[2] = @"_UISceneInterfaceProtectionHostComponent.m";
      v60 = 1024;
      v61 = 109;
      v62 = 2114;
      v63 = v22;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v26 = v22;
    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F68DC4);
  }

  *&self->_flags |= 1u;
  configurationCopy[2](configurationCopy, self);
  if (!self->_apExtension)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_apExtension"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      *&buf[22] = 2048;
      selfCopy8 = self;
      *v59 = 2114;
      *&v59[2] = @"_UISceneInterfaceProtectionHostComponent.m";
      v60 = 1024;
      v61 = 112;
      v62 = 2114;
      v63 = v27;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v31 = v27;
    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F68EC0);
  }

  if (!self->_appIconBundleIdentifier)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_appIconBundleIdentifier"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      *&buf[4] = v33;
      *&buf[12] = 2114;
      *&buf[14] = v35;
      *&buf[22] = 2048;
      selfCopy8 = self;
      *v59 = 2114;
      *&v59[2] = @"_UISceneInterfaceProtectionHostComponent.m";
      v60 = 1024;
      v61 = 113;
      v62 = 2114;
      v63 = v32;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v36 = v32;
    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F68FBCLL);
  }

  if (!self->_shieldParentView)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_shieldParentView"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138544642;
      *&buf[4] = v38;
      *&buf[12] = 2114;
      *&buf[14] = v40;
      *&buf[22] = 2048;
      selfCopy8 = self;
      *v59 = 2114;
      *&v59[2] = @"_UISceneInterfaceProtectionHostComponent.m";
      v60 = 1024;
      v61 = 114;
      v62 = 2114;
      v63 = v37;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v41 = v37;
    [v37 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F690B8);
  }

  *&self->_flags = *&self->_flags & 0xFC | 2;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_sceneDidEnterBackground_ name:@"UISceneDidEnterBackgroundNotification" object:0];
  [defaultCenter addObserver:self selector:sel_sceneWillEnterForeground_ name:@"UISceneWillEnterForegroundNotification" object:0];
  isLocked = [(APExtension *)self->_apExtension isLocked];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __67___UISceneInterfaceProtectionHostComponent__setUnderAppProtection___block_invoke;
  selfCopy8 = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneInterfaceProtectionSettings__8l;
  v59[0] = isLocked;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:buf];
  if ((*&self->_flags & 6) == 2)
  {
    if (self->_subjectMonitorRegistry)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_subjectMonitorRegistry"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v43 = NSStringFromSelector(sel_configureAppProtectionIfNecessary);
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        *buf = 138544642;
        *&buf[4] = v43;
        *&buf[12] = 2114;
        *&buf[14] = v45;
        *&buf[22] = 2048;
        selfCopy8 = self;
        *v59 = 2114;
        *&v59[2] = @"_UISceneInterfaceProtectionHostComponent.m";
        v60 = 1024;
        v61 = 191;
        v62 = 2114;
        v63 = v42;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v46 = v42;
      [v42 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189F691B4);
    }

    if (self->_shieldViewIfExists)
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_shieldViewIfExists"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v48 = NSStringFromSelector(sel_configureAppProtectionIfNecessary);
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        *buf = 138544642;
        *&buf[4] = v48;
        *&buf[12] = 2114;
        *&buf[14] = v50;
        *&buf[22] = 2048;
        selfCopy8 = self;
        *v59 = 2114;
        *&v59[2] = @"_UISceneInterfaceProtectionHostComponent.m";
        v60 = 1024;
        v61 = 192;
        v62 = 2114;
        v63 = v47;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v51 = v47;
      [v47 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189F692B0);
    }

    v53 = 0;
    v54 = &v53;
    v55 = 0x2050000000;
    v7 = getAPExtensionSubjectMonitorRegistryClass_softClass;
    v56 = getAPExtensionSubjectMonitorRegistryClass_softClass;
    if (!getAPExtensionSubjectMonitorRegistryClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getAPExtensionSubjectMonitorRegistryClass_block_invoke;
      selfCopy8 = &unk_1E70F2F20;
      *v59 = &v53;
      __getAPExtensionSubjectMonitorRegistryClass_block_invoke(buf);
      v7 = v54[3];
    }

    v8 = v7;
    _Block_object_dispose(&v53, 8);
    v9 = [[v7 alloc] initWithExtensionSubject:self->_apExtension];
    subjectMonitorRegistry = self->_subjectMonitorRegistry;
    self->_subjectMonitorRegistry = v9;

    v11 = [(APExtensionSubjectMonitorRegistry *)self->_subjectMonitorRegistry addMonitor:self];
    [(APExtensionSubjectMonitorRegistry *)self->_subjectMonitorRegistry resume];
    *&self->_flags |= 4u;
  }

  if ([(APExtension *)self->_apExtension requiresShielding])
  {
    [(_UISceneInterfaceProtectionHostComponent *)self presentAppProtectionShieldView];
  }
}

- (void)setAPExtension:(id)extension
{
  v23 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  if ((*&self->_flags & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot modify config after initial configuration"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138544642;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"_UISceneInterfaceProtectionHostComponent.m";
      v19 = 1024;
      v20 = 135;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F69450);
  }

  apExtension = self->_apExtension;
  self->_apExtension = extensionCopy;
}

- (void)setAppIconBundleIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((*&self->_flags & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot modify config after initial configuration"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138544642;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"_UISceneInterfaceProtectionHostComponent.m";
      v19 = 1024;
      v20 = 140;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F695D0);
  }

  appIconBundleIdentifier = self->_appIconBundleIdentifier;
  self->_appIconBundleIdentifier = identifierCopy;
}

- (void)setLocalizedName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if ((*&self->_flags & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot modify config after initial configuration"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138544642;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"_UISceneInterfaceProtectionHostComponent.m";
      v19 = 1024;
      v20 = 145;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F69750);
  }

  localizedName = self->_localizedName;
  self->_localizedName = nameCopy;
}

- (void)setShieldParentView:(id)view
{
  v23 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if ((*&self->_flags & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot modify config after initial configuration"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138544642;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"_UISceneInterfaceProtectionHostComponent.m";
      v19 = 1024;
      v20 = 150;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F698D0);
  }

  shieldParentView = self->_shieldParentView;
  self->_shieldParentView = viewCopy;
}

- (id)shieldView
{
  v2 = *(self + 64);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:*(self + 40)];
    v4 = objc_alloc(MEMORY[0x1E69A8A30]);
    traitCollection = [*(self + 56) traitCollection];
    [traitCollection displayScale];
    v7 = [v4 initWithSize:64.0 scale:{64.0, v6}];

    [v7 setDrawBorder:1];
    v8 = [v3 prepareImageForDescriptor:v7];
    cGImage = [v8 CGImage];
    [v8 scale];
    v10 = [UIImage imageWithCGImage:cGImage scale:0 orientation:?];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v11 = _MergedGlobals_1_24;
    v20 = _MergedGlobals_1_24;
    if (!_MergedGlobals_1_24)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __getAPBaseExtensionShieldViewClass_block_invoke;
      v16[3] = &unk_1E70F2F20;
      v16[4] = &v17;
      __getAPBaseExtensionShieldViewClass_block_invoke(v16);
      v11 = v18[3];
    }

    v12 = v11;
    _Block_object_dispose(&v17, 8);
    v13 = [[v11 alloc] initWithLocalizedApplicationName:*(self + 48) iconImage:v10 apExtension:*(self + 32)];
    [v13 setDelegate:self];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = *(self + 64);
    *(self + 64) = v13;

    v2 = *(self + 64);
  }

  return v2;
}

- (void)setExtensionShieldCurrentlyShown:(BOOL)shown
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77___UISceneInterfaceProtectionHostComponent_setExtensionShieldCurrentlyShown___block_invoke;
  v3[3] = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneInterfaceProtectionSettings__8l;
  shownCopy = shown;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v3];
}

- (BOOL)extensionShieldCurrentlyShown
{
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  extensionShieldCurrentlyShown = [settings extensionShieldCurrentlyShown];

  return extensionShieldCurrentlyShown;
}

- (void)presentAppProtectionShieldView
{
  v22[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    BSDispatchQueueAssertMain();
    if (([self extensionShieldCurrentlyShown] & 1) == 0)
    {
      shieldView = [(_UISceneInterfaceProtectionHostComponent *)self shieldView];
      [*(self + 56) addSubview:shieldView];
      v16 = MEMORY[0x1E69977A0];
      leftAnchor = [shieldView leftAnchor];
      leftAnchor2 = [*(self + 56) leftAnchor];
      v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v22[0] = v19;
      topAnchor = [shieldView topAnchor];
      topAnchor2 = [*(self + 56) topAnchor];
      v3 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v22[1] = v3;
      rightAnchor = [shieldView rightAnchor];
      rightAnchor2 = [*(self + 56) rightAnchor];
      v6 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v22[2] = v6;
      bottomAnchor = [shieldView bottomAnchor];
      bottomAnchor2 = [*(self + 56) bottomAnchor];
      v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v22[3] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
      [v16 activateConstraints:v10];

      hostScene = [self hostScene];
      uiSceneHostingController = [hostScene uiSceneHostingController];
      _remoteSheetProvider = [uiSceneHostingController _remoteSheetProvider];
      v14 = [_remoteSheetProvider sheetDisconnectionAssertionForReason:@"app protection"];
      v15 = *(self + 80);
      *(self + 80) = v14;

      [self setExtensionShieldCurrentlyShown:1];
    }
  }
}

- (void)requestAppProtectionAuthIfNecessary
{
  if (self && [self extensionShieldCurrentlyShown])
  {
    if ([self[4] requiresShielding])
    {
      shieldView = [(_UISceneInterfaceProtectionHostComponent *)self shieldView];
      [self shieldViewUnlockButtonPressed:shieldView];
    }

    else
    {

      [(_UISceneInterfaceProtectionHostComponent *)self removeAppProtectionShieldView];
    }
  }
}

- (void)removeAppProtectionShieldView
{
  if (self)
  {
    BSDispatchQueueAssertMain();
    if ([self extensionShieldCurrentlyShown])
    {
      [self setExtensionShieldCurrentlyShown:0];
      shieldView = [(_UISceneInterfaceProtectionHostComponent *)self shieldView];
      [shieldView removeFromSuperview];

      [self[10] invalidate];
      v3 = self[10];
      self[10] = 0;
    }
  }
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  changedCopy = changed;
  subscriptionCopy = subscription;
  objc_initWeak(&location, self);
  objc_copyWeak(&v9, &location);
  v8 = changedCopy;
  BSDispatchMain();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)shieldViewUnlockButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  objc_initWeak(&location, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v5 = getAPGuardClass_softClass;
  v16 = getAPGuardClass_softClass;
  if (!getAPGuardClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getAPGuardClass_block_invoke;
    v12[3] = &unk_1E70F2F20;
    v12[4] = &v13;
    __getAPGuardClass_block_invoke(v12);
    v5 = v14[3];
  }

  v6 = v5;
  _Block_object_dispose(&v13, 8);
  sharedGuard = [v5 sharedGuard];
  apExtension = self->_apExtension;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___UISceneInterfaceProtectionHostComponent_shieldViewUnlockButtonPressed___block_invoke;
  v9[3] = &unk_1E7120440;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [sharedGuard authenticateForExtension:apExtension completion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)sceneDidEnterBackground:(id)background
{
  object = [background object];
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

  v8 = v7;

  _window = [(UIView *)self->_shieldParentView _window];
  _windowHostingScene = [_window _windowHostingScene];

  if (_windowHostingScene == v8 && [(APExtension *)self->_apExtension isLocked])
  {

    [(_UISceneInterfaceProtectionHostComponent *)self presentAppProtectionShieldView];
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  object = [foreground object];
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

  v8 = v7;

  _window = [(UIView *)self->_shieldParentView _window];
  _windowHostingScene = [_window _windowHostingScene];

  if (_windowHostingScene == v8)
  {

    [(_UISceneInterfaceProtectionHostComponent *)&self->super.super.isa requestAppProtectionAuthIfNecessary];
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70___UISceneInterfaceProtectionHostComponent_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = streamCopy;
  v12 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v11];
  style = [v5 style];
  if ([style verbosity] == 2)
  {
    goto LABEL_4;
  }

  flags = self->_flags;

  if ((flags & 2) != 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70___UISceneInterfaceProtectionHostComponent_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    selfCopy2 = self;
    [v9 appendBodySectionWithName:0 block:v8];
    style = v9;
LABEL_4:
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