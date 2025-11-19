@interface PRSMutablePosterConfiguration
+ (id)mutableConfiguration;
+ (id)mutableConfigurationWithProvider:(id)a3 descriptorIdentifier:(id)a4 role:(id)a5;
- (BOOL)storeUserInfo:(id)a3 error:(id *)a4;
@end

@implementation PRSMutablePosterConfiguration

+ (id)mutableConfiguration
{
  v3 = PFPosterRoleDefaultRoleForCurrentExtensionProcess();
  v4 = [a1 mutableConfigurationWithRole:v3];

  return v4;
}

+ (id)mutableConfigurationWithProvider:(id)a3 descriptorIdentifier:(id)a4 role:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ((PFPosterRoleIsValid() & 1) == 0)
  {
    [PRSMutablePosterConfiguration mutableConfigurationWithProvider:v11 descriptorIdentifier:a2 role:a1];
  }

  if (v9)
  {
    [MEMORY[0x1E69C51E8] temporaryServerPathForProvider:v9 descriptorIdentifier:v10 role:v11];
  }

  else
  {
    [MEMORY[0x1E69C5178] temporaryPathForRole:v11];
  }
  v12 = ;
  v13 = [(PRSPosterConfiguration *)[PRSMutablePosterConfiguration alloc] _initWithPath:v12];
  [v12 invalidate];

  return v13;
}

- (BOOL)storeUserInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRSPosterConfiguration *)self _path];
  LOBYTE(a4) = [v7 storeUserInfo:v6 error:a4];

  return a4;
}

+ (void)mutableConfigurationWithProvider:(uint64_t)a1 descriptorIdentifier:(const char *)a2 role:(uint64_t)a3 .cold.1(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = PFPosterRolesSupportedForCurrentDeviceClass();
  v8 = [v6 stringWithFormat:@"invalid role: %@, supported roles for device class: %@", a1, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    v16 = 2048;
    v17 = a3;
    v18 = 2114;
    v19 = @"PRSPosterConfiguration.m";
    v20 = 1024;
    v21 = 276;
    v22 = 2114;
    v23 = v8;
    _os_log_error_impl(&dword_1C26FF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end