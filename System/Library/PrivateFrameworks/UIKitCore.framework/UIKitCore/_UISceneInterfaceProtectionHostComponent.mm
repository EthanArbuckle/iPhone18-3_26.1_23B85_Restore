@interface _UISceneInterfaceProtectionHostComponent
- (BOOL)extensionShieldCurrentlyShown;
- (NSString)debugDescription;
- (id)shieldView;
- (id)succinctDescription;
- (void)_setUnderAppProtection:(void *)a1;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)appendDescriptionToStream:(id)a3;
- (void)configureSelfMonitoringWithConfiguration:(id)a3;
- (void)dealloc;
- (void)isUnderAppProtection;
- (void)presentAppProtectionShieldView;
- (void)removeAppProtectionShieldView;
- (void)requestAppProtectionAuthIfNecessary;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneDidInvalidate:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setAPExtension:(id)a3;
- (void)setAppIconBundleIdentifier:(id)a3;
- (void)setExtensionShieldCurrentlyShown:(BOOL)a3;
- (void)setLocalizedName:(id)a3;
- (void)setScene:(id)a3;
- (void)setShieldParentView:(id)a3;
- (void)setUnderAppProtection:(BOOL)a3;
- (void)shieldViewUnlockButtonPressed:(id)a3;
- (void)updateSettings:(void *)a1;
@end

@implementation _UISceneInterfaceProtectionHostComponent

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UISceneDidEnterBackgroundNotification" object:0];
  [v3 removeObserver:self name:@"UISceneWillEnterForegroundNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UISceneInterfaceProtectionHostComponent;
  [(_UISceneInterfaceProtectionHostComponent *)&v4 dealloc];
}

- (void)updateSettings:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 hostScene];
    [v4 updateSettings:v3];
  }
}

- (void)setScene:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UISceneInterfaceProtectionHostComponent;
  [(FBSSceneComponent *)&v7 setScene:a3];
  v4 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  v5 = [v4 transientLocalSettings];
  v6 = [v5 flagForSetting:20230216];

  if (v6 == 1)
  {
    [(_UISceneInterfaceProtectionHostComponent *)self setUnderAppProtection:1];
  }
}

- (void)sceneDidInvalidate:(id)a3
{
  [(BSInvalidatable *)self->_sheetDisconnectionAssertion invalidate];
  sheetDisconnectionAssertion = self->_sheetDisconnectionAssertion;
  self->_sheetDisconnectionAssertion = 0;
}

- (void)isUnderAppProtection
{
  if (result)
  {
    v1 = [(_UISceneInterfaceProtectionClientComponent *)result settings];
    v2 = [v1 underAppProtection];

    return v2;
  }

  return result;
}

- (void)setUnderAppProtection:(BOOL)a3
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
      v10 = self;
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
  v10 = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneInterfaceProtectionSettings__8l;
  LOBYTE(v11) = a3;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v9];
}

- (void)_setUnderAppProtection:(void *)a1
{
  if (a1)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __67___UISceneInterfaceProtectionHostComponent__setUnderAppProtection___block_invoke;
    v2[3] = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneInterfaceProtectionSettings__8l;
    v3 = a2;
    [(_UISceneInterfaceProtectionHostComponent *)a1 updateSettings:v2];
  }
}

- (void)configureSelfMonitoringWithConfiguration:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v52 = a3;
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
      v58 = self;
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
      v58 = self;
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
      v58 = self;
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
  v52[2](v52, self);
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
      v58 = self;
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
      v58 = self;
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
      v58 = self;
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
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_sceneDidEnterBackground_ name:@"UISceneDidEnterBackgroundNotification" object:0];
  [v5 addObserver:self selector:sel_sceneWillEnterForeground_ name:@"UISceneWillEnterForegroundNotification" object:0];
  v6 = [(APExtension *)self->_apExtension isLocked];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __67___UISceneInterfaceProtectionHostComponent__setUnderAppProtection___block_invoke;
  v58 = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneInterfaceProtectionSettings__8l;
  v59[0] = v6;
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
        v58 = self;
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
        v58 = self;
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
      v58 = &unk_1E70F2F20;
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

- (void)setAPExtension:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
      v16 = self;
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
  self->_apExtension = v5;
}

- (void)setAppIconBundleIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
      v16 = self;
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
  self->_appIconBundleIdentifier = v5;
}

- (void)setLocalizedName:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
      v16 = self;
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
  self->_localizedName = v5;
}

- (void)setShieldParentView:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
      v16 = self;
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
  self->_shieldParentView = v5;
}

- (id)shieldView
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:*(a1 + 40)];
    v4 = objc_alloc(MEMORY[0x1E69A8A30]);
    v5 = [*(a1 + 56) traitCollection];
    [v5 displayScale];
    v7 = [v4 initWithSize:64.0 scale:{64.0, v6}];

    [v7 setDrawBorder:1];
    v8 = [v3 prepareImageForDescriptor:v7];
    v9 = [v8 CGImage];
    [v8 scale];
    v10 = [UIImage imageWithCGImage:v9 scale:0 orientation:?];
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
    v13 = [[v11 alloc] initWithLocalizedApplicationName:*(a1 + 48) iconImage:v10 apExtension:*(a1 + 32)];
    [v13 setDelegate:a1];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = *(a1 + 64);
    *(a1 + 64) = v13;

    v2 = *(a1 + 64);
  }

  return v2;
}

- (void)setExtensionShieldCurrentlyShown:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77___UISceneInterfaceProtectionHostComponent_setExtensionShieldCurrentlyShown___block_invoke;
  v3[3] = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneInterfaceProtectionSettings__8l;
  v4 = a3;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v3];
}

- (BOOL)extensionShieldCurrentlyShown
{
  v2 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  v3 = [v2 extensionShieldCurrentlyShown];

  return v3;
}

- (void)presentAppProtectionShieldView
{
  v22[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    BSDispatchQueueAssertMain();
    if (([a1 extensionShieldCurrentlyShown] & 1) == 0)
    {
      v2 = [(_UISceneInterfaceProtectionHostComponent *)a1 shieldView];
      [*(a1 + 56) addSubview:v2];
      v16 = MEMORY[0x1E69977A0];
      v21 = [v2 leftAnchor];
      v20 = [*(a1 + 56) leftAnchor];
      v19 = [v21 constraintEqualToAnchor:v20];
      v22[0] = v19;
      v18 = [v2 topAnchor];
      v17 = [*(a1 + 56) topAnchor];
      v3 = [v18 constraintEqualToAnchor:v17];
      v22[1] = v3;
      v4 = [v2 rightAnchor];
      v5 = [*(a1 + 56) rightAnchor];
      v6 = [v4 constraintEqualToAnchor:v5];
      v22[2] = v6;
      v7 = [v2 bottomAnchor];
      v8 = [*(a1 + 56) bottomAnchor];
      v9 = [v7 constraintEqualToAnchor:v8];
      v22[3] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
      [v16 activateConstraints:v10];

      v11 = [a1 hostScene];
      v12 = [v11 uiSceneHostingController];
      v13 = [v12 _remoteSheetProvider];
      v14 = [v13 sheetDisconnectionAssertionForReason:@"app protection"];
      v15 = *(a1 + 80);
      *(a1 + 80) = v14;

      [a1 setExtensionShieldCurrentlyShown:1];
    }
  }
}

- (void)requestAppProtectionAuthIfNecessary
{
  if (a1 && [a1 extensionShieldCurrentlyShown])
  {
    if ([a1[4] requiresShielding])
    {
      v2 = [(_UISceneInterfaceProtectionHostComponent *)a1 shieldView];
      [a1 shieldViewUnlockButtonPressed:v2];
    }

    else
    {

      [(_UISceneInterfaceProtectionHostComponent *)a1 removeAppProtectionShieldView];
    }
  }
}

- (void)removeAppProtectionShieldView
{
  if (a1)
  {
    BSDispatchQueueAssertMain();
    if ([a1 extensionShieldCurrentlyShown])
    {
      [a1 setExtensionShieldCurrentlyShown:0];
      v2 = [(_UISceneInterfaceProtectionHostComponent *)a1 shieldView];
      [v2 removeFromSuperview];

      [a1[10] invalidate];
      v3 = a1[10];
      a1[10] = 0;
    }
  }
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  objc_copyWeak(&v9, &location);
  v8 = v6;
  BSDispatchMain();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)shieldViewUnlockButtonPressed:(id)a3
{
  v4 = a3;
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
  v7 = [v5 sharedGuard];
  apExtension = self->_apExtension;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___UISceneInterfaceProtectionHostComponent_shieldViewUnlockButtonPressed___block_invoke;
  v9[3] = &unk_1E7120440;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [v7 authenticateForExtension:apExtension completion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)sceneDidEnterBackground:(id)a3
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

  v8 = v7;

  v9 = [(UIView *)self->_shieldParentView _window];
  v10 = [v9 _windowHostingScene];

  if (v10 == v8 && [(APExtension *)self->_apExtension isLocked])
  {

    [(_UISceneInterfaceProtectionHostComponent *)self presentAppProtectionShieldView];
  }
}

- (void)sceneWillEnterForeground:(id)a3
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

  v8 = v7;

  v9 = [(UIView *)self->_shieldParentView _window];
  v10 = [v9 _windowHostingScene];

  if (v10 == v8)
  {

    [(_UISceneInterfaceProtectionHostComponent *)&self->super.super.isa requestAppProtectionAuthIfNecessary];
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70___UISceneInterfaceProtectionHostComponent_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = v4;
  v12 = v5;
  v13 = self;
  [v5 appendProem:self block:v11];
  v6 = [v5 style];
  if ([v6 verbosity] == 2)
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
    v10 = self;
    [v9 appendBodySectionWithName:0 block:v8];
    v6 = v9;
LABEL_4:
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