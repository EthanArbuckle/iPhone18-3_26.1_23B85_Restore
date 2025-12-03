@interface PRSMutablePosterConfiguration
+ (id)mutableConfiguration;
+ (id)mutableConfigurationWithProvider:(id)provider descriptorIdentifier:(id)identifier role:(id)role;
- (BOOL)storeUserInfo:(id)info error:(id *)error;
@end

@implementation PRSMutablePosterConfiguration

+ (id)mutableConfiguration
{
  v3 = PFPosterRoleDefaultRoleForCurrentExtensionProcess();
  v4 = [self mutableConfigurationWithRole:v3];

  return v4;
}

+ (id)mutableConfigurationWithProvider:(id)provider descriptorIdentifier:(id)identifier role:(id)role
{
  providerCopy = provider;
  identifierCopy = identifier;
  roleCopy = role;
  if ((PFPosterRoleIsValid() & 1) == 0)
  {
    [PRSMutablePosterConfiguration mutableConfigurationWithProvider:roleCopy descriptorIdentifier:a2 role:self];
  }

  if (providerCopy)
  {
    [MEMORY[0x1E69C51E8] temporaryServerPathForProvider:providerCopy descriptorIdentifier:identifierCopy role:roleCopy];
  }

  else
  {
    [MEMORY[0x1E69C5178] temporaryPathForRole:roleCopy];
  }
  v12 = ;
  v13 = [(PRSPosterConfiguration *)[PRSMutablePosterConfiguration alloc] _initWithPath:v12];
  [v12 invalidate];

  return v13;
}

- (BOOL)storeUserInfo:(id)info error:(id *)error
{
  infoCopy = info;
  _path = [(PRSPosterConfiguration *)self _path];
  LOBYTE(error) = [_path storeUserInfo:infoCopy error:error];

  return error;
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