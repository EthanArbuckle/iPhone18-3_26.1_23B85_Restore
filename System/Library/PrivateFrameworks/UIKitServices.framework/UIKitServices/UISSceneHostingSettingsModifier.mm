@interface UISSceneHostingSettingsModifier
- (UISSceneHostingSettingsModifier)initWithBSXPCCoder:(id)coder;
- (id)updaterForProposedSettings:(id)settings withSettingsDiff:(id)diff;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation UISSceneHostingSettingsModifier

- (id)updaterForProposedSettings:(id)settings withSettingsDiff:(id)diff
{
  settingsCopy = settings;
  diffCopy = diff;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Implementation required for abstract method %s", "-[UISSceneHostingSettingsModifier updaterForProposedSettings:withSettingsDiff:]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138544642;
    v15 = v10;
    v16 = 2114;
    v17 = v12;
    v18 = 2048;
    selfCopy = self;
    v20 = 2114;
    v21 = @"UISSceneHostingSettingsModifier.m";
    v22 = 1024;
    v23 = 16;
    v24 = 2114;
    v25 = v9;
    _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v9 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Implementation required for abstract method %s", "-[UISSceneHostingSettingsModifier encodeWithBSXPCCoder:]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"UISSceneHostingSettingsModifier.m";
    v18 = 1024;
    v19 = 27;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (UISSceneHostingSettingsModifier)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Implementation required for abstract method %s", "-[UISSceneHostingSettingsModifier initWithBSXPCCoder:]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = @"UISSceneHostingSettingsModifier.m";
    v19 = 1024;
    v20 = 31;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end