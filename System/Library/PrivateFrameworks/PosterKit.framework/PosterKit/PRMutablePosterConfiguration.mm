@interface PRMutablePosterConfiguration
+ (id)mutableConfiguration;
+ (id)mutableConfigurationWithProvider:(id)provider descriptorIdentifier:(id)identifier role:(id)role;
- (BOOL)copyContentsOfConfiguration:(id)configuration error:(id *)error;
- (BOOL)copyContentsOfPath:(id)path error:(id *)error;
- (BOOL)setObject:(id)object forUserInfoKey:(id)key;
- (BOOL)storeAmbientConfiguration:(id)configuration error:(id *)error;
- (BOOL)storeComplicationLayout:(id)layout error:(id *)error;
- (BOOL)storeConfigurableOptions:(id)options error:(id *)error;
- (BOOL)storeConfiguredProperties:(id)properties error:(id *)error;
- (BOOL)storeFocusConfiguration:(id)configuration error:(id *)error;
- (BOOL)storeHomeScreenConfiguration:(id)configuration error:(id *)error;
- (BOOL)storeOtherMetadata:(id)metadata error:(id *)error;
- (BOOL)storeQuickActionsConfiguration:(id)configuration error:(id *)error;
- (BOOL)storeSuggestionMetadata:(id)metadata error:(id *)error;
- (BOOL)storeTitleStyleConfiguration:(id)configuration error:(id *)error;
- (BOOL)storeUserInfo:(id)info error:(id *)error;
- (void)setDisplayNameLocalizationKey:(id)key;
@end

@implementation PRMutablePosterConfiguration

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
    [PRMutablePosterConfiguration mutableConfigurationWithProvider:roleCopy descriptorIdentifier:a2 role:?];
  }

  if (providerCopy)
  {
    [MEMORY[0x1E69C51E8] temporaryServerPathForProvider:providerCopy descriptorIdentifier:identifierCopy role:roleCopy];
  }

  else
  {
    [MEMORY[0x1E69C5178] temporaryPathForRole:roleCopy];
  }
  v11 = ;
  v12 = [(PRPosterConfiguration *)[PRMutablePosterConfiguration alloc] _initWithPath:v11];
  [v11 invalidate];

  return v12;
}

- (void)setDisplayNameLocalizationKey:(id)key
{
  keyCopy = key;
  v5 = [(PRPosterConfiguration *)self loadOtherMetadataWithError:0];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 mutableCopy];
    [v7 setDisplayNameLocalizationKey:keyCopy];

    v8 = [v7 copy];
    keyCopy = v7;
  }

  else
  {
    v8 = [[PRPosterMetadata alloc] initWithDisplayNameLocalizationKey:keyCopy];
  }

  [(PRMutablePosterConfiguration *)self storeOtherMetadata:v8 error:0];
}

- (BOOL)setObject:(id)object forUserInfoKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!keyCopy)
  {
    [PRMutablePosterConfiguration setObject:a2 forUserInfoKey:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutablePosterConfiguration setObject:a2 forUserInfoKey:?];
  }

  v9 = [objectCopy conformsToProtocol:&unk_1F1C72D28];
  if (objectCopy && (v9 & 1) == 0)
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

  if (objectCopy)
  {
    [v14 setObject:objectCopy forKey:keyCopy];
  }

  else
  {
    [v14 removeObjectForKey:keyCopy];
  }

  v15 = [v14 copy];
  v16 = [(PRMutablePosterConfiguration *)self storeUserInfo:v15 error:0];

  return v16;
}

- (BOOL)storeUserInfo:(id)info error:(id *)error
{
  infoCopy = info;
  _path = [(PRPosterConfiguration *)self _path];
  LOBYTE(error) = [_path storeUserInfo:infoCopy error:error];

  return error;
}

- (BOOL)storeConfiguredProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  _path = [(PRPosterConfiguration *)self _path];
  LOBYTE(error) = [PRPosterPathUtilities storeConfiguredPropertiesForPath:_path configuredProperties:propertiesCopy error:error];

  return error;
}

- (BOOL)storeConfigurableOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  _path = [(PRPosterConfiguration *)self _path];
  LOBYTE(error) = [PRPosterPathUtilities storeConfigurableOptionsForPath:_path configurableOptions:optionsCopy error:error];

  return error;
}

- (BOOL)storeFocusConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  _path = [(PRPosterConfiguration *)self _path];
  if (configurationCopy)
  {
    v8 = [PRPosterPathUtilities storeFocusConfigurationForPath:_path focusConfiguration:configurationCopy error:error];
  }

  else
  {
    v8 = [PRPosterPathUtilities removeFocusConfigurationForPath:_path error:error];
  }

  v9 = v8;

  return v9;
}

- (BOOL)storeHomeScreenConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  _path = [(PRPosterConfiguration *)self _path];
  LOBYTE(error) = [PRPosterPathUtilities storeHomeScreenConfigurationForPath:_path homeScreenConfiguration:configurationCopy error:error];

  return error;
}

- (BOOL)storeTitleStyleConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  _path = [(PRPosterConfiguration *)self _path];
  LOBYTE(error) = [PRPosterPathUtilities storeTitleStyleConfigurationForPath:_path titleStyleConfiguration:configurationCopy error:error];

  return error;
}

- (BOOL)storeComplicationLayout:(id)layout error:(id *)error
{
  layoutCopy = layout;
  _path = [(PRPosterConfiguration *)self _path];
  LOBYTE(error) = [PRPosterPathUtilities storeComplicationLayoutForPath:_path complicationLayout:layoutCopy error:error];

  return error;
}

- (BOOL)storeQuickActionsConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  _path = [(PRPosterConfiguration *)self _path];
  LOBYTE(error) = [PRPosterPathUtilities storeQuickActionsConfigurationForPath:_path quickActionsConfiguration:configurationCopy error:error];

  return error;
}

- (BOOL)storeSuggestionMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  _path = [(PRPosterConfiguration *)self _path];
  LOBYTE(error) = [PRPosterPathUtilities storeSuggestionMetadataForPath:_path suggestionMetadata:metadataCopy error:error];

  return error;
}

- (BOOL)storeOtherMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  _path = [(PRPosterConfiguration *)self _path];
  LOBYTE(error) = [PRPosterPathUtilities storeOtherMetadataForPath:_path otherMetadata:metadataCopy error:error];

  return error;
}

- (BOOL)storeAmbientConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  _path = [(PRPosterConfiguration *)self _path];
  LOBYTE(error) = [PRPosterPathUtilities storeAmbientConfigurationForPath:_path ambientConfiguration:configurationCopy error:error];

  return error;
}

- (BOOL)copyContentsOfPath:(id)path error:(id *)error
{
  pathCopy = path;
  _path = [(PRPosterConfiguration *)self _path];
  LOBYTE(error) = [_path copyContentsOfPath:pathCopy error:error];

  return error;
}

- (BOOL)copyContentsOfConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!configurationCopy)
  {
    [PRMutablePosterConfiguration copyContentsOfConfiguration:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutablePosterConfiguration copyContentsOfConfiguration:a2 error:?];
  }

  _path = [configurationCopy _path];
  v9 = [(PRMutablePosterConfiguration *)self copyContentsOfPath:_path error:error];

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