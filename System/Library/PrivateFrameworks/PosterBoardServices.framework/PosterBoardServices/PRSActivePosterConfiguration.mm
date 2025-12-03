@interface PRSActivePosterConfiguration
- (PRSActivePosterConfiguration)initWithBSXPCCoder:(id)coder;
- (PRSActivePosterConfiguration)initWithCoder:(id)coder;
- (PRSActivePosterConfiguration)initWithLockScreenPosterConfiguration:(id)configuration homeScreenPosterConfiguration:(id)posterConfiguration;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRSActivePosterConfiguration

- (PRSActivePosterConfiguration)initWithLockScreenPosterConfiguration:(id)configuration homeScreenPosterConfiguration:(id)posterConfiguration
{
  configurationCopy = configuration;
  posterConfigurationCopy = posterConfiguration;
  v10 = configurationCopy;
  NSClassFromString(&cfstr_Prsposterconfi_1.isa);
  if (!v10)
  {
    [PRSActivePosterConfiguration initWithLockScreenPosterConfiguration:a2 homeScreenPosterConfiguration:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSActivePosterConfiguration initWithLockScreenPosterConfiguration:a2 homeScreenPosterConfiguration:?];
  }

  v11 = posterConfigurationCopy;
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
    objc_storeStrong(&v12->_lockScreenPosterConfiguration, configuration);
    objc_storeStrong(&v13->_homeScreenPosterConfiguration, posterConfiguration);
  }

  return v13;
}

- (PRSActivePosterConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PRSActivePosterConfiguration;
  v5 = [(PRSActivePosterConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lockScreenPosterConfiguration"];
    lockScreenPosterConfiguration = v5->_lockScreenPosterConfiguration;
    v5->_lockScreenPosterConfiguration = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenPosterConfiguration"];
    homeScreenPosterConfiguration = v5->_homeScreenPosterConfiguration;
    v5->_homeScreenPosterConfiguration = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  lockScreenPosterConfiguration = self->_lockScreenPosterConfiguration;
  coderCopy = coder;
  [coderCopy encodeObject:lockScreenPosterConfiguration forKey:@"_lockScreenPosterConfiguration"];
  [coderCopy encodeObject:self->_homeScreenPosterConfiguration forKey:@"_homeScreenPosterConfiguration"];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  lockScreenPosterConfiguration = self->_lockScreenPosterConfiguration;
  coderCopy = coder;
  [coderCopy encodeObject:lockScreenPosterConfiguration forKey:@"_lockScreenPosterConfiguration"];
  [coderCopy encodeObject:self->_homeScreenPosterConfiguration forKey:@"_homeScreenPosterConfiguration"];
}

- (PRSActivePosterConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PRSActivePosterConfiguration;
  v5 = [(PRSActivePosterConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lockScreenPosterConfiguration"];
    lockScreenPosterConfiguration = v5->_lockScreenPosterConfiguration;
    v5->_lockScreenPosterConfiguration = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_homeScreenPosterConfiguration"];
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