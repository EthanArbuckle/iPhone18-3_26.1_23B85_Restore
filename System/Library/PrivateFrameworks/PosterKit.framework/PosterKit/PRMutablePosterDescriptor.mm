@interface PRMutablePosterDescriptor
+ (id)mutableDescriptorWithIdentifier:(id)identifier;
+ (id)mutableDescriptorWithIdentifier:(id)identifier role:(id)role;
- (BOOL)copyContentsOfPath:(id)path error:(id *)error;
- (BOOL)setObject:(id)object forUserInfoKey:(id)key;
- (BOOL)storeConfigurableOptions:(id)options error:(id *)error;
- (BOOL)storeGalleryOptions:(id)options error:(id *)error;
- (BOOL)storeUserInfo:(id)info error:(id *)error;
- (void)mutateConfigurableOptions:(void *)options;
- (void)setAmbientConfiguration:(id)configuration;
- (void)setAmbientSupportedDataLayout:(int64_t)layout;
- (void)setDisplayNameLocalizationKey:(id)key;
- (void)setLuminance:(double)luminance;
- (void)setPreferredGalleryOptions:(id)options;
- (void)setPreferredHomeScreenConfiguration:(id)configuration;
- (void)setPreferredRenderingConfiguration:(id)configuration;
- (void)setPreferredTimeFontConfigurations:(id)configurations;
- (void)setPreferredTitleColors:(id)colors;
- (void)setRole:(id)role;
@end

@implementation PRMutablePosterDescriptor

+ (id)mutableDescriptorWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = PFPosterRoleDefaultRoleForCurrentExtensionProcess();
  v6 = [self mutableDescriptorWithIdentifier:identifierCopy role:v5];

  return v6;
}

+ (id)mutableDescriptorWithIdentifier:(id)identifier role:(id)role
{
  identifierCopy = identifier;
  roleCopy = role;
  v8 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v8)
  {
    [PRMutablePosterDescriptor mutableDescriptorWithIdentifier:a2 role:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutablePosterDescriptor mutableDescriptorWithIdentifier:a2 role:?];
  }

  if ((PFPosterRoleIsValid() & 1) == 0)
  {
    [PRMutablePosterDescriptor mutableDescriptorWithIdentifier:roleCopy role:a2];
  }

  v9 = [MEMORY[0x1E69C5178] temporaryDescriptorPathWithIdentifier:v8 role:roleCopy];
  v10 = [(PRPosterDescriptor *)[PRMutablePosterDescriptor alloc] _initWithPath:v9];
  [v9 invalidate];

  return v10;
}

- (void)setDisplayNameLocalizationKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PRMutablePosterDescriptor_setDisplayNameLocalizationKey___block_invoke;
  v6[3] = &unk_1E7843128;
  v7 = keyCopy;
  v5 = keyCopy;
  [(PRMutablePosterDescriptor *)self mutateConfigurableOptions:v6];
}

void __59__PRMutablePosterDescriptor_setDisplayNameLocalizationKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  [v3 setDisplayNameLocalizationKey:v4];
}

- (void)mutateConfigurableOptions:(void *)options
{
  if (options && a2)
  {
    v3 = a2;
    v4 = [options loadConfigurableOptionsWithError:0];
    v5 = [v4 mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = [PRPosterMutableConfigurableOptions alloc];
      v7 = [(PRPosterConfigurableOptions *)v8 initWithDisplayNameLocalizationKey:0 role:@"PRPosterRoleLockScreen" ambientSupportedDataLayout:0 preferredTimeFontConfigurations:MEMORY[0x1E695E0F0] preferredTitleColors:MEMORY[0x1E695E0F0] preferredHomeScreenConfiguration:0];
    }

    v10 = v7;

    v3[2](v3, v10);
    v9 = [(PRPosterMutableConfigurableOptions *)v10 copy];
    [options storeConfigurableOptions:v9 error:0];
  }
}

- (void)setRole:(id)role
{
  roleCopy = role;
  if ((PFPosterRoleIsValid() & 1) == 0)
  {
    [(PRMutablePosterDescriptor *)roleCopy setRole:a2];
  }

  role = [(PRPosterDescriptor *)self role];
  v6 = [role isEqual:roleCopy];

  if ((v6 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    descriptorIdentifier = [(PRPosterDescriptor *)self descriptorIdentifier];
    v9 = [MEMORY[0x1E69C5178] temporaryDescriptorPathWithIdentifier:descriptorIdentifier role:roleCopy];
    _path = [(PRPosterDescriptor *)self _path];
    [v9 copyContentsOfPath:_path error:0];

    [(PRPosterDescriptor *)self _swapOutPathForPath:v9];
    [v9 invalidate];

    objc_autoreleasePoolPop(v7);
  }
}

- (void)setPreferredTimeFontConfigurations:(id)configurations
{
  v15[1] = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  if (![configurationsCopy count])
  {
    v5 = objc_alloc_init(PRTimeFontConfiguration);
    v15[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

    configurationsCopy = v6;
  }

  v7 = PRBundleURLFromReturnAddress();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PRMutablePosterDescriptor_setPreferredTimeFontConfigurations___block_invoke;
  v13[3] = &unk_1E7843150;
  v14 = v7;
  v8 = v7;
  v9 = [configurationsCopy bs_compactMap:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__PRMutablePosterDescriptor_setPreferredTimeFontConfigurations___block_invoke_2;
  v11[3] = &unk_1E7843128;
  v12 = v9;
  v10 = v9;
  [(PRMutablePosterDescriptor *)self mutateConfigurableOptions:v11];
}

- (void)setPreferredTitleColors:(id)colors
{
  colorsCopy = colors;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PRMutablePosterDescriptor_setPreferredTitleColors___block_invoke;
  v6[3] = &unk_1E7843128;
  v7 = colorsCopy;
  v5 = colorsCopy;
  [(PRMutablePosterDescriptor *)self mutateConfigurableOptions:v6];
}

void __53__PRMutablePosterDescriptor_setPreferredTitleColors___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  [v3 setPreferredTitleColors:v4];
}

- (void)setLuminance:(double)luminance
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PRMutablePosterDescriptor_setLuminance___block_invoke;
  v3[3] = &__block_descriptor_40_e44_v16__0__PRPosterMutableConfigurableOptions_8l;
  *&v3[4] = luminance;
  [(PRMutablePosterDescriptor *)self mutateConfigurableOptions:v3];
}

- (void)setPreferredHomeScreenConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PRMutablePosterDescriptor_setPreferredHomeScreenConfiguration___block_invoke;
  v6[3] = &unk_1E7843128;
  v7 = configurationCopy;
  v5 = configurationCopy;
  [(PRMutablePosterDescriptor *)self mutateConfigurableOptions:v6];
}

- (void)setPreferredGalleryOptions:(id)options
{
  optionsCopy = options;
  _path = [(PRPosterDescriptor *)self _path];
  if (optionsCopy)
  {
    [PRPosterPathUtilities storePosterDescriptorGalleryOptions:_path posterDescriptorGalleryOptions:optionsCopy error:0];
  }

  else
  {
    [PRPosterPathUtilities removePosterDescriptorGalleryOptions:_path error:0];
  }
}

- (void)setPreferredRenderingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__PRMutablePosterDescriptor_setPreferredRenderingConfiguration___block_invoke;
  v6[3] = &unk_1E7843128;
  v7 = configurationCopy;
  v5 = configurationCopy;
  [(PRMutablePosterDescriptor *)self mutateConfigurableOptions:v6];
}

- (BOOL)setObject:(id)object forUserInfoKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!keyCopy)
  {
    [PRMutablePosterDescriptor setObject:a2 forUserInfoKey:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRMutablePosterDescriptor setObject:a2 forUserInfoKey:?];
  }

  v9 = [objectCopy conformsToProtocol:&unk_1F1C72D28];
  if (objectCopy && (v9 & 1) == 0)
  {
    [PRMutablePosterDescriptor setObject:a2 forUserInfoKey:?];
  }

  v10 = [(PRPosterDescriptor *)self loadUserInfoWithError:0];
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
  v16 = [(PRMutablePosterDescriptor *)self storeUserInfo:v15 error:0];

  return v16;
}

- (BOOL)storeUserInfo:(id)info error:(id *)error
{
  infoCopy = info;
  _path = [(PRPosterDescriptor *)self _path];
  LOBYTE(error) = [_path storeUserInfo:infoCopy error:error];

  return error;
}

- (BOOL)storeGalleryOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  _path = [(PRPosterDescriptor *)self _path];
  LOBYTE(error) = [PRPosterPathUtilities storeProactiveGalleryOptionsToPath:_path proactiveGalleryOptions:optionsCopy error:error];

  return error;
}

- (BOOL)storeConfigurableOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  _path = [(PRPosterDescriptor *)self _path];
  LOBYTE(error) = [PRPosterPathUtilities storeConfigurableOptionsForPath:_path configurableOptions:optionsCopy error:error];

  return error;
}

- (void)setAmbientSupportedDataLayout:(int64_t)layout
{
  ambientConfiguration = [(PRPosterDescriptor *)self ambientConfiguration];
  v6 = [ambientConfiguration mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v10 = v8;

  [v10 setSupportedDataLayout:layout];
  _path = [(PRPosterDescriptor *)self _path];
  [PRPosterPathUtilities storeAmbientConfigurationForPath:_path ambientConfiguration:v10 error:0];
}

- (void)setAmbientConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _path = [(PRPosterDescriptor *)self _path];
  v5 = _path;
  if (configurationCopy)
  {
    [PRPosterPathUtilities storeAmbientConfigurationForPath:_path ambientConfiguration:configurationCopy error:0];
  }

  else
  {
    v6 = objc_opt_new();
    [PRPosterPathUtilities storeAmbientConfigurationForPath:v5 ambientConfiguration:v6 error:0];
  }
}

- (BOOL)copyContentsOfPath:(id)path error:(id *)error
{
  pathCopy = path;
  _path = [(PRPosterDescriptor *)self _path];
  LOBYTE(error) = [_path copyContentsOfPath:pathCopy error:error];

  return error;
}

+ (void)mutableDescriptorWithIdentifier:(char *)a1 role:.cold.1(char *a1)
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

+ (void)mutableDescriptorWithIdentifier:(uint64_t)a1 role:(const char *)a2 .cold.2(uint64_t a1, const char *a2)
{
  v4 = MEMORY[0x1E696AEC0];
  PFPosterRolesSupportedForCurrentDeviceClass();
  v15 = v14 = a1;
  v5 = [v4 stringWithFormat:@"invalid role: %@, supported roles for device class: %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10, v11, v12, v13, v14, v15, v16);
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
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setRole:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v4 = MEMORY[0x1E696AEC0];
  PFPosterRolesSupportedForCurrentDeviceClass();
  v15 = v14 = a1;
  v5 = [v4 stringWithFormat:@"invalid role: %@, supported roles for device class: %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v9, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v10, v11, v12, v13, v14, v15, v16);
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

@end