@interface PRSMutablePosterDescriptor
+ (id)mutableDescriptorWithIdentifier:(id)a3;
+ (id)mutableDescriptorWithIdentifier:(id)a3 role:(id)a4;
- (BOOL)storeUserInfo:(id)a3 error:(id *)a4;
@end

@implementation PRSMutablePosterDescriptor

+ (id)mutableDescriptorWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = PFPosterRoleDefaultRoleForCurrentExtensionProcess();
  v6 = [a1 mutableDescriptorWithIdentifier:v4 role:v5];

  return v6;
}

+ (id)mutableDescriptorWithIdentifier:(id)a3 role:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v8)
  {
    [PRSMutablePosterDescriptor mutableDescriptorWithIdentifier:a2 role:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSMutablePosterDescriptor mutableDescriptorWithIdentifier:a2 role:?];
  }

  if ((PFPosterRoleIsValid() & 1) == 0)
  {
    [PRSMutablePosterDescriptor mutableDescriptorWithIdentifier:v7 role:a2];
  }

  v9 = [MEMORY[0x1E69C5178] temporaryDescriptorPathWithIdentifier:v8 role:v7];
  v10 = [(PRSPosterDescriptor *)[PRSMutablePosterDescriptor alloc] _initWithPath:v9];
  [v9 invalidate];

  return v10;
}

- (BOOL)storeUserInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRSPosterDescriptor *)self _path];
  LOBYTE(a4) = [v7 storeUserInfo:v6 error:a4];

  return a4;
}

+ (void)mutableDescriptorWithIdentifier:(char *)a1 role:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)mutableDescriptorWithIdentifier:(uint64_t)a1 role:(const char *)a2 .cold.2(uint64_t a1, const char *a2)
{
  v4 = MEMORY[0x1E696AEC0];
  PFPosterRolesSupportedForCurrentDeviceClass();
  v14 = v13 = a1;
  v5 = [v4 stringWithFormat:@"invalid role: %@, supported roles for device class: %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v15 = NSStringFromClass(v7);
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, 2u);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)mutableDescriptorWithIdentifier:(char *)a1 role:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end