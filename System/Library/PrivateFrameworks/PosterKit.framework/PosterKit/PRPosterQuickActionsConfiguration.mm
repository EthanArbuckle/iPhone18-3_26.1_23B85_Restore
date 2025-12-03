@interface PRPosterQuickActionsConfiguration
- (PRPosterQuickActionsConfiguration)initWithBSXPCCoder:(id)coder;
- (PRPosterQuickActionsConfiguration)initWithCoder:(id)coder;
- (PRPosterQuickActionsConfiguration)initWithLeadingControl:(id)control trailingControl:(id)trailingControl;
- (id)_fetchCameraControl;
- (id)_fetchFlashlightControl;
- (id)_findControlIdentityForExtensionID:(id)d containerID:(id)iD kind:(id)kind;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setLeadingControl:(id)control;
- (void)setTrailingControl:(id)control;
@end

@implementation PRPosterQuickActionsConfiguration

- (PRPosterQuickActionsConfiguration)initWithLeadingControl:(id)control trailingControl:(id)trailingControl
{
  controlCopy = control;
  trailingControlCopy = trailingControl;
  v15.receiver = self;
  v15.super_class = PRPosterQuickActionsConfiguration;
  v8 = [(PRPosterQuickActionsConfiguration *)&v15 init];
  v9 = v8;
  if (v8)
  {
    if (controlCopy)
    {
      _fetchFlashlightControl = controlCopy;
    }

    else
    {
      _fetchFlashlightControl = [(PRPosterQuickActionsConfiguration *)v8 _fetchFlashlightControl];
    }

    leadingControl = v9->_leadingControl;
    v9->_leadingControl = _fetchFlashlightControl;

    if (trailingControlCopy)
    {
      _fetchCameraControl = trailingControlCopy;
    }

    else
    {
      _fetchCameraControl = [(PRPosterQuickActionsConfiguration *)v9 _fetchCameraControl];
    }

    trailingControl = v9->_trailingControl;
    v9->_trailingControl = _fetchCameraControl;
  }

  return v9;
}

- (PRPosterQuickActionsConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"leadingControl"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"trailingControl"];

  v9 = [(PRPosterQuickActionsConfiguration *)self initWithLeadingControl:v6 trailingControl:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  leadingControl = [(PRPosterQuickActionsConfiguration *)self leadingControl];
  [coderCopy encodeObject:leadingControl forKey:@"leadingControl"];

  trailingControl = [(PRPosterQuickActionsConfiguration *)self trailingControl];
  [coderCopy encodeObject:trailingControl forKey:@"trailingControl"];
}

- (PRPosterQuickActionsConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"leadingControl"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"trailingControl"];

  v9 = [(PRPosterQuickActionsConfiguration *)self initWithLeadingControl:v6 trailingControl:v8];
  return v9;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  leadingControl = [(PRPosterQuickActionsConfiguration *)self leadingControl];
  [coderCopy encodeObject:leadingControl forKey:@"leadingControl"];

  trailingControl = [(PRPosterQuickActionsConfiguration *)self trailingControl];
  [coderCopy encodeObject:trailingControl forKey:@"trailingControl"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PRPosterMutableQuickActionsConfiguration alloc];
  leadingControl = [(PRPosterQuickActionsConfiguration *)self leadingControl];
  trailingControl = [(PRPosterQuickActionsConfiguration *)self trailingControl];
  v7 = [(PRPosterQuickActionsConfiguration *)v4 initWithLeadingControl:leadingControl trailingControl:trailingControl];

  return v7;
}

- (void)setLeadingControl:(id)control
{
  v12 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  p_leadingControl = &self->_leadingControl;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(p_leadingControl, control);
    v7 = PRLogEditing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = controlCopy;
      v10 = 2050;
      category = [controlCopy category];
      _os_log_impl(&dword_1A8AA7000, v7, OS_LOG_TYPE_DEFAULT, "Quick Actions: Set leading control to %{public}@ with category %{public}ld", &v8, 0x16u);
    }
  }
}

- (void)setTrailingControl:(id)control
{
  v12 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  p_trailingControl = &self->_trailingControl;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(p_trailingControl, control);
    v7 = PRLogEditing();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = controlCopy;
      v10 = 2050;
      category = [controlCopy category];
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

- (id)_findControlIdentityForExtensionID:(id)d containerID:(id)iD kind:(id)kind
{
  kindCopy = kind;
  v8 = MEMORY[0x1E6994290];
  iDCopy = iD;
  dCopy = d;
  v11 = [[v8 alloc] initWithExtensionBundleIdentifier:dCopy containerBundleIdentifier:iDCopy deviceIdentifier:0];

  v12 = PRSharedWidgetExtensionProvider();
  extensions = [v12 extensions];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __89__PRPosterQuickActionsConfiguration__findControlIdentityForExtensionID_containerID_kind___block_invoke;
  v27[3] = &unk_1E78435E8;
  v14 = v11;
  v28 = v14;
  v15 = [extensions bs_firstObjectPassingTest:v27];

  orderedControlDescriptors = [v15 orderedControlDescriptors];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __89__PRPosterQuickActionsConfiguration__findControlIdentityForExtensionID_containerID_kind___block_invoke_2;
  v25 = &unk_1E7843610;
  v17 = kindCopy;
  v26 = v17;
  v18 = [orderedControlDescriptors bs_firstObjectPassingTest:&v22];

  if (v18)
  {
    defaultIntentReference = [v18 defaultIntentReference];
    v20 = [objc_alloc(MEMORY[0x1E6994260]) initWithExtensionIdentity:v14 kind:v17 intentReference:defaultIntentReference];
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