@interface PRMutablePosterConfiguration
+ (id)mutableConfiguration;
+ (id)mutableConfigurationWithProvider:(id)a3 descriptorIdentifier:(id)a4 role:(id)a5;
- (BOOL)copyContentsOfConfiguration:(id)a3 error:(id *)a4;
- (BOOL)copyContentsOfPath:(id)a3 error:(id *)a4;
- (BOOL)setObject:(id)a3 forUserInfoKey:(id)a4;
- (BOOL)storeAmbientConfiguration:(id)a3 error:(id *)a4;
- (BOOL)storeComplicationLayout:(id)a3 error:(id *)a4;
- (BOOL)storeConfigurableOptions:(id)a3 error:(id *)a4;
- (BOOL)storeConfiguredProperties:(id)a3 error:(id *)a4;
- (BOOL)storeFocusConfiguration:(id)a3 error:(id *)a4;
- (BOOL)storeHomeScreenConfiguration:(id)a3 error:(id *)a4;
- (BOOL)storeOtherMetadata:(id)a3 error:(id *)a4;
- (BOOL)storeQuickActionsConfiguration:(id)a3 error:(id *)a4;
- (BOOL)storeSuggestionMetadata:(id)a3 error:(id *)a4;
- (BOOL)storeTitleStyleConfiguration:(id)a3 error:(id *)a4;
- (BOOL)storeUserInfo:(id)a3 error:(id *)a4;
- (void)setDisplayNameLocalizationKey:(id)a3;
@end

@implementation PRMutablePosterConfiguration

+ (id)mutableConfiguration
{
  v3 = PFPosterRoleDefaultRoleForCurrentExtensionProcess();
  v4 = [a1 mutableConfigurationWithRole:v3];

  return v4;
}

+ (id)mutableConfigurationWithProvider:(id)a3 descriptorIdentifier:(id)a4 role:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((PFPosterRoleIsValid() & 1) == 0)
  {
    [PRMutablePosterConfiguration mutableConfigurationWithProvider:v10 descriptorIdentifier:a2 role:?];
  }

  if (v8)
  {
    [MEMORY[0x1E69C51E8] temporaryServerPathForProvider:v8 descriptorIdentifier:v9 role:v10];
  }

  else
  {
    [MEMORY[0x1E69C5178] temporaryPathForRole:v10];
  }
  v11 = ;
  v12 = [(PRPosterConfiguration *)[PRMutablePosterConfiguration alloc] _initWithPath:v11];
  [v11 invalidate];

  return v12;
}

- (void)setDisplayNameLocalizationKey:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterConfiguration *)self loadOtherMetadataWithError:0];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 mutableCopy];
    [v7 setDisplayNameLocalizationKey:v4];

    v8 = [v7 copy];
    v4 = v7;
  }

  else
  {
    v8 = [[PRPosterMetadata alloc] initWithDisplayNameLocalizationKey:v4];
  }

  [(PRMutablePosterConfiguration *)self storeOtherMetadata:v8 error:0];
}

- (BOOL)setObject:(id)a3 forUserInfoKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v8)
  {
    [PRMutablePosterConfiguration setObject:a2 forUserInfoKey:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutablePosterConfiguration setObject:a2 forUserInfoKey:?];
  }

  v9 = [v7 conformsToProtocol:&unk_1F1C72D28];
  if (v7 && (v9 & 1) == 0)
  {
    [PRMutablePosterConfiguration setObject:a2 forUserInfoKey:?];
  }

  v10 = [(PRPosterConfiguration *)self loadUserInfoWithError:0];
  v11 = [v10 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  if (v7)
  {
    [v14 setObject:v7 forKey:v8];
  }

  else
  {
    [v14 removeObjectForKey:v8];
  }

  v15 = [v14 copy];
  v16 = [(PRMutablePosterConfiguration *)self storeUserInfo:v15 error:0];

  return v16;
}

- (BOOL)storeUserInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRPosterConfiguration *)self _path];
  LOBYTE(a4) = [v7 storeUserInfo:v6 error:a4];

  return a4;
}

- (BOOL)storeConfiguredProperties:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRPosterConfiguration *)self _path];
  LOBYTE(a4) = [PRPosterPathUtilities storeConfiguredPropertiesForPath:v7 configuredProperties:v6 error:a4];

  return a4;
}

- (BOOL)storeConfigurableOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRPosterConfiguration *)self _path];
  LOBYTE(a4) = [PRPosterPathUtilities storeConfigurableOptionsForPath:v7 configurableOptions:v6 error:a4];

  return a4;
}

- (BOOL)storeFocusConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRPosterConfiguration *)self _path];
  if (v6)
  {
    v8 = [PRPosterPathUtilities storeFocusConfigurationForPath:v7 focusConfiguration:v6 error:a4];
  }

  else
  {
    v8 = [PRPosterPathUtilities removeFocusConfigurationForPath:v7 error:a4];
  }

  v9 = v8;

  return v9;
}

- (BOOL)storeHomeScreenConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRPosterConfiguration *)self _path];
  LOBYTE(a4) = [PRPosterPathUtilities storeHomeScreenConfigurationForPath:v7 homeScreenConfiguration:v6 error:a4];

  return a4;
}

- (BOOL)storeTitleStyleConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRPosterConfiguration *)self _path];
  LOBYTE(a4) = [PRPosterPathUtilities storeTitleStyleConfigurationForPath:v7 titleStyleConfiguration:v6 error:a4];

  return a4;
}

- (BOOL)storeComplicationLayout:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRPosterConfiguration *)self _path];
  LOBYTE(a4) = [PRPosterPathUtilities storeComplicationLayoutForPath:v7 complicationLayout:v6 error:a4];

  return a4;
}

- (BOOL)storeQuickActionsConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRPosterConfiguration *)self _path];
  LOBYTE(a4) = [PRPosterPathUtilities storeQuickActionsConfigurationForPath:v7 quickActionsConfiguration:v6 error:a4];

  return a4;
}

- (BOOL)storeSuggestionMetadata:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRPosterConfiguration *)self _path];
  LOBYTE(a4) = [PRPosterPathUtilities storeSuggestionMetadataForPath:v7 suggestionMetadata:v6 error:a4];

  return a4;
}

- (BOOL)storeOtherMetadata:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRPosterConfiguration *)self _path];
  LOBYTE(a4) = [PRPosterPathUtilities storeOtherMetadataForPath:v7 otherMetadata:v6 error:a4];

  return a4;
}

- (BOOL)storeAmbientConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRPosterConfiguration *)self _path];
  LOBYTE(a4) = [PRPosterPathUtilities storeAmbientConfigurationForPath:v7 ambientConfiguration:v6 error:a4];

  return a4;
}

- (BOOL)copyContentsOfPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRPosterConfiguration *)self _path];
  LOBYTE(a4) = [v7 copyContentsOfPath:v6 error:a4];

  return a4;
}

- (BOOL)copyContentsOfConfiguration:(id)a3 error:(id *)a4
{
  v7 = a3;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!v7)
  {
    [PRMutablePosterConfiguration copyContentsOfConfiguration:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutablePosterConfiguration copyContentsOfConfiguration:a2 error:?];
  }

  v8 = [v7 _path];
  v9 = [(PRMutablePosterConfiguration *)self copyContentsOfPath:v8 error:a4];

  return v9;
}

+ (void)mutableConfigurationWithProvider:(uint64_t)a1 descriptorIdentifier:(const char *)a2 role:.cold.1(uint64_t a1, const char *a2)
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
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, 2u);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setObject:(char *)a1 forUserInfoKey:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setObject:(char *)a1 forUserInfoKey:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[anObject conformsToProtocol:@protocol(NSCoding)] || !anObject", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setObject:(char *)a1 forUserInfoKey:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)copyContentsOfConfiguration:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)copyContentsOfConfiguration:(char *)a1 error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end