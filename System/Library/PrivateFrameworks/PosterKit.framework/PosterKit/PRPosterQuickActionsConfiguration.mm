@interface PRPosterQuickActionsConfiguration
- (PRPosterQuickActionsConfiguration)initWithBSXPCCoder:(id)a3;
- (PRPosterQuickActionsConfiguration)initWithCoder:(id)a3;
- (PRPosterQuickActionsConfiguration)initWithLeadingControl:(id)a3 trailingControl:(id)a4;
- (id)_fetchCameraControl;
- (id)_fetchFlashlightControl;
- (id)_findControlIdentityForExtensionID:(id)a3 containerID:(id)a4 kind:(id)a5;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setLeadingControl:(id)a3;
- (void)setTrailingControl:(id)a3;
@end

@implementation PRPosterQuickActionsConfiguration

- (PRPosterQuickActionsConfiguration)initWithLeadingControl:(id)a3 trailingControl:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PRPosterQuickActionsConfiguration;
  v8 = [(PRPosterQuickActionsConfiguration *)&v15 init];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = [(PRPosterQuickActionsConfiguration *)v8 _fetchFlashlightControl];
    }

    leadingControl = v9->_leadingControl;
    v9->_leadingControl = v10;

    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = [(PRPosterQuickActionsConfiguration *)v9 _fetchCameraControl];
    }

    trailingControl = v9->_trailingControl;
    v9->_trailingControl = v12;
  }

  return v9;
}

- (PRPosterQuickActionsConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"leadingControl"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"trailingControl"];

  v9 = [(PRPosterQuickActionsConfiguration *)self initWithLeadingControl:v6 trailingControl:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterQuickActionsConfiguration *)self leadingControl];
  [v4 encodeObject:v5 forKey:@"leadingControl"];

  v6 = [(PRPosterQuickActionsConfiguration *)self trailingControl];
  [v4 encodeObject:v6 forKey:@"trailingControl"];
}

- (PRPosterQuickActionsConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"leadingControl"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"trailingControl"];

  v9 = [(PRPosterQuickActionsConfiguration *)self initWithLeadingControl:v6 trailingControl:v8];
  return v9;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterQuickActionsConfiguration *)self leadingControl];
  [v4 encodeObject:v5 forKey:@"leadingControl"];

  v6 = [(PRPosterQuickActionsConfiguration *)self trailingControl];
  [v4 encodeObject:v6 forKey:@"trailingControl"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PRPosterMutableQuickActionsConfiguration alloc];
  v5 = [(PRPosterQuickActionsConfiguration *)self leadingControl];
  v6 = [(PRPosterQuickActionsConfiguration *)self trailingControl];
  v7 = [(PRPosterQuickActionsConfiguration *)v4 initWithLeadingControl:v5 trailingControl:v6];

  return v7;
}

- (void)setLeadingControl:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  p_leadingControl = &self->_leadingControl;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(p_leadingControl, a3);
    v7 = PRLogEditing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = v5;
      v10 = 2050;
      v11 = [v5 category];
      _os_log_impl(&dword_1A8AA7000, v7, OS_LOG_TYPE_DEFAULT, "Quick Actions: Set leading control to %{public}@ with category %{public}ld", &v8, 0x16u);
    }
  }
}

- (void)setTrailingControl:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  p_trailingControl = &self->_trailingControl;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(p_trailingControl, a3);
    v7 = PRLogEditing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = v5;
      v10 = 2050;
      v11 = [v5 category];
      _os_log_impl(&dword_1A8AA7000, v7, OS_LOG_TYPE_DEFAULT, "Quick Actions: Set trailing control to %{public}@ with category %{public}ld", &v8, 0x16u);
    }
  }
}

- (id)_fetchFlashlightControl
{
  v2 = [(PRPosterQuickActionsConfiguration *)self _findControlIdentityForExtensionID:@"com.apple.ControlCenter.ControlCenterControlsExtension" containerID:@"com.apple.springboard" kind:@"com.apple.ControlCenter.ControlCenterControlsExtension.flashlight"];
  if (v2)
  {
    v3 = [[PRQuickActionControlConfiguration alloc] initWithControlIdentity:v2 type:1];
  }

  else
  {
    v4 = PRLogEditing();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(PRPosterQuickActionsConfiguration *)v4 _fetchFlashlightControl];
    }

    v3 = 0;
  }

  return v3;
}

- (id)_fetchCameraControl
{
  v3 = [(PRPosterQuickActionsConfiguration *)self _findControlIdentityForExtensionID:@"com.apple.camera.LauncherControlExtension" containerID:@"com.apple.camera" kind:@"com.apple.camera.deeplink.button"];
  if (v3 || ([(PRPosterQuickActionsConfiguration *)self _findControlIdentityForExtensionID:@"com.apple.camera.LauncherControlExtension" containerID:@"com.apple.camera" kind:@"com.apple.camera.deeplink.button"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [[PRQuickActionControlConfiguration alloc] initWithControlIdentity:v3 type:2];
  }

  else
  {
    v4 = PRLogEditing();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(PRPosterQuickActionsConfiguration *)v4 _fetchCameraControl];
    }

    v5 = 0;
  }

  return v5;
}

- (id)_findControlIdentityForExtensionID:(id)a3 containerID:(id)a4 kind:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E6994290];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithExtensionBundleIdentifier:v10 containerBundleIdentifier:v9 deviceIdentifier:0];

  v12 = PRSharedWidgetExtensionProvider();
  v13 = [v12 extensions];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __89__PRPosterQuickActionsConfiguration__findControlIdentityForExtensionID_containerID_kind___block_invoke;
  v27[3] = &unk_1E78435E8;
  v14 = v11;
  v28 = v14;
  v15 = [v13 bs_firstObjectPassingTest:v27];

  v16 = [v15 orderedControlDescriptors];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __89__PRPosterQuickActionsConfiguration__findControlIdentityForExtensionID_containerID_kind___block_invoke_2;
  v25 = &unk_1E7843610;
  v17 = v7;
  v26 = v17;
  v18 = [v16 bs_firstObjectPassingTest:&v22];

  if (v18)
  {
    v19 = [v18 defaultIntentReference];
    v20 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v14 kind:v17 intentReference:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t __89__PRPosterQuickActionsConfiguration__findControlIdentityForExtensionID_containerID_kind___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identity];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __89__PRPosterQuickActionsConfiguration__findControlIdentityForExtensionID_containerID_kind___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end