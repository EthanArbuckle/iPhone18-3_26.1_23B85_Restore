@interface PRSActivePosterConfiguration
- (PRSActivePosterConfiguration)initWithBSXPCCoder:(id)a3;
- (PRSActivePosterConfiguration)initWithCoder:(id)a3;
- (PRSActivePosterConfiguration)initWithLockScreenPosterConfiguration:(id)a3 homeScreenPosterConfiguration:(id)a4;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSActivePosterConfiguration

- (PRSActivePosterConfiguration)initWithLockScreenPosterConfiguration:(id)a3 homeScreenPosterConfiguration:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  NSClassFromString(&cfstr_Prsposterconfi_1.isa);
  if (!v10)
  {
    [PRSActivePosterConfiguration initWithLockScreenPosterConfiguration:a2 homeScreenPosterConfiguration:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSActivePosterConfiguration initWithLockScreenPosterConfiguration:a2 homeScreenPosterConfiguration:?];
  }

  v11 = v9;
  if (v11)
  {
    NSClassFromString(&cfstr_Prsposterconfi_1.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSActivePosterConfiguration initWithLockScreenPosterConfiguration:a2 homeScreenPosterConfiguration:?];
    }
  }

  v15.receiver = self;
  v15.super_class = PRSActivePosterConfiguration;
  v12 = [(PRSActivePosterConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lockScreenPosterConfiguration, a3);
    objc_storeStrong(&v13->_homeScreenPosterConfiguration, a4);
  }

  return v13;
}

- (PRSActivePosterConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PRSActivePosterConfiguration;
  v5 = [(PRSActivePosterConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lockScreenPosterConfiguration"];
    lockScreenPosterConfiguration = v5->_lockScreenPosterConfiguration;
    v5->_lockScreenPosterConfiguration = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenPosterConfiguration"];
    homeScreenPosterConfiguration = v5->_homeScreenPosterConfiguration;
    v5->_homeScreenPosterConfiguration = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  lockScreenPosterConfiguration = self->_lockScreenPosterConfiguration;
  v5 = a3;
  [v5 encodeObject:lockScreenPosterConfiguration forKey:@"_lockScreenPosterConfiguration"];
  [v5 encodeObject:self->_homeScreenPosterConfiguration forKey:@"_homeScreenPosterConfiguration"];
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  lockScreenPosterConfiguration = self->_lockScreenPosterConfiguration;
  v5 = a3;
  [v5 encodeObject:lockScreenPosterConfiguration forKey:@"_lockScreenPosterConfiguration"];
  [v5 encodeObject:self->_homeScreenPosterConfiguration forKey:@"_homeScreenPosterConfiguration"];
}

- (PRSActivePosterConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PRSActivePosterConfiguration;
  v5 = [(PRSActivePosterConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lockScreenPosterConfiguration"];
    lockScreenPosterConfiguration = v5->_lockScreenPosterConfiguration;
    v5->_lockScreenPosterConfiguration = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenPosterConfiguration"];
    homeScreenPosterConfiguration = v5->_homeScreenPosterConfiguration;
    v5->_homeScreenPosterConfiguration = v8;
  }

  return v5;
}

- (void)initWithLockScreenPosterConfiguration:(const char *)a1 homeScreenPosterConfiguration:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:PRSPosterConfigurationClass]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithLockScreenPosterConfiguration:(const char *)a1 homeScreenPosterConfiguration:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:PRSPosterConfigurationClass]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithLockScreenPosterConfiguration:(const char *)a1 homeScreenPosterConfiguration:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_bs_assert_object != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end