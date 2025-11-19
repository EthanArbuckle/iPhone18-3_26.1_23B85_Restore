@interface PRPosterDescriptor
- (BOOL)isEqual:(id)a3;
- (NSArray)preferredTimeFontConfigurations;
- (NSArray)preferredTitleColors;
- (NSString)description;
- (NSString)displayNameLocalizationKey;
- (PRPosterAmbientConfiguration)ambientConfiguration;
- (PRPosterDescriptor)init;
- (PRPosterDescriptorGalleryOptions)preferredGalleryOptions;
- (PRPosterDescriptorHomeScreenConfiguration)preferredHomeScreenConfiguration;
- (PRPosterRenderingConfiguration)preferredRenderingConfiguration;
- (double)luminance;
- (id)_initWithPath:(id)a3;
- (id)loadConfigurableOptionsWithError:(id *)a3;
- (id)loadGalleryOptionsWithError:(id *)a3;
- (id)loadUserInfoWithError:(id *)a3;
- (id)objectForUserInfoKey:(id)a3;
- (id)pr_posterProvider;
- (id)pr_posterUUID;
- (id)preferredTimeFontConfigurationsWithExtensionBundleURL:(id)a3;
- (int64_t)ambientSupportedDataLayout;
- (unint64_t)hash;
- (void)_swapOutPathForPath:(id)a3;
- (void)appendDescriptionToFormatter:(void *)result;
- (void)dealloc;
@end

@implementation PRPosterDescriptor

- (PRPosterDescriptor)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@ is not allowed on %@", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    v18 = self;
    v19 = 2114;
    v20 = @"PRPosterDescriptor.m";
    v21 = 1024;
    v22 = 45;
    v23 = 2114;
    v24 = v8;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_pathValidityExtension invalidate];
  v3.receiver = self;
  v3.super_class = PRPosterDescriptor;
  [(PRPosterDescriptor *)&v3 dealloc];
}

- (void)_swapOutPathForPath:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Pfposterpath.isa);
  if (!v5)
  {
    [PRPosterDescriptor _swapOutPathForPath:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterDescriptor _swapOutPathForPath:a2];
  }

  path = self->_path;
  pathValidityExtension = self->_pathValidityExtension;
  self->_path = v5;
  v15 = v5;
  v8 = pathValidityExtension;
  v9 = path;

  v10 = self->_path;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [(PFPosterPath *)v10 extendValidityForReason:v12];
  v14 = self->_pathValidityExtension;
  self->_pathValidityExtension = v13;

  [(BSInvalidatable *)v8 invalidate];
}

- (id)_initWithPath:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [PRPosterDescriptor _initWithPath:a2];
  }

  v7 = v6;
  v8 = [v6 descriptorIdentifier];

  if (!v8)
  {
    [(PRPosterDescriptor *)v7 _initWithPath:a2];
  }

  v18.receiver = self;
  v18.super_class = PRPosterDescriptor;
  v9 = [(PRPosterDescriptor *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_path, a3);
    path = v10->_path;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [(PFPosterPath *)path extendValidityForReason:v13];
    pathValidityExtension = v10->_pathValidityExtension;
    v10->_pathValidityExtension = v14;

    if ([v7 isServerPosterPath])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v7];
        objc_storeWeak(&v10->_cache, v16);
      }
    }
  }

  return v10;
}

- (NSString)displayNameLocalizationKey
{
  v2 = [(PRPosterDescriptor *)self loadConfigurableOptionsWithError:0];
  v3 = [v2 displayNameLocalizationKey];

  return v3;
}

- (NSArray)preferredTimeFontConfigurations
{
  v3 = PRBundleURLFromReturnAddress();
  v4 = [(PRPosterDescriptor *)self preferredTimeFontConfigurationsWithExtensionBundleURL:v3];

  return v4;
}

- (NSArray)preferredTitleColors
{
  v2 = [(PRPosterDescriptor *)self loadConfigurableOptionsWithError:0];
  v3 = [v2 preferredTitleColors];

  return v3;
}

- (double)luminance
{
  v2 = [(PRPosterDescriptor *)self loadConfigurableOptionsWithError:0];
  v3 = v2;
  if (v2)
  {
    [v2 luminance];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (id)preferredTimeFontConfigurationsWithExtensionBundleURL:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterDescriptor *)self loadConfigurableOptionsWithError:0];
  v6 = [v5 preferredTimeFontConfigurations];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PRPosterDescriptor_preferredTimeFontConfigurationsWithExtensionBundleURL___block_invoke;
  v10[3] = &unk_1E7843100;
  v11 = v4;
  v7 = v4;
  v8 = [v6 bs_compactMap:v10];

  return v8;
}

- (PRPosterDescriptorHomeScreenConfiguration)preferredHomeScreenConfiguration
{
  v2 = [(PRPosterDescriptor *)self loadConfigurableOptionsWithError:0];
  v3 = [v2 preferredHomeScreenConfiguration];

  return v3;
}

- (PRPosterRenderingConfiguration)preferredRenderingConfiguration
{
  v2 = [(PRPosterDescriptor *)self loadConfigurableOptionsWithError:0];
  v3 = [v2 preferredRenderingConfiguration];

  return v3;
}

- (id)loadGalleryOptionsWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v4 = [WeakRetained proactiveGalleryOptions];

  return v4;
}

- (PRPosterDescriptorGalleryOptions)preferredGalleryOptions
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v4 = [WeakRetained galleryOptions];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PRPosterDescriptor *)self _path];
    v6 = [PRPosterPathUtilities loadPosterDescriptorGalleryOptionsForPath:v7 error:0];
  }

  return v6;
}

- (int64_t)ambientSupportedDataLayout
{
  v3 = [(PRPosterDescriptor *)self ambientConfiguration];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 supportedDataLayout];
  }

  else
  {
    v6 = [(PRPosterDescriptor *)self loadConfigurableOptionsWithError:0];
    v5 = [v6 ambientSupportedDataLayout];
  }

  return v5;
}

- (PRPosterAmbientConfiguration)ambientConfiguration
{
  v3 = [(PRPosterDescriptor *)self _path];
  v4 = [PRPosterPathUtilities loadAmbientConfigurationForPath:v3 error:0];

  if (!v4)
  {
    v5 = objc_alloc_init(PRMutablePosterAmbientConfiguration);
    v6 = [(PRPosterDescriptor *)self loadConfigurableOptionsWithError:0];
    -[PRPosterAmbientConfiguration setSupportedDataLayout:](v5, "setSupportedDataLayout:", [v6 ambientSupportedDataLayout]);

    v7 = [(PRPosterDescriptor *)self _path];
    v8 = objc_opt_new();
    [PRPosterPathUtilities storeAmbientConfigurationForPath:v7 ambientConfiguration:v8 error:0];

    v4 = [(PRMutablePosterAmbientConfiguration *)v5 copy];
  }

  return v4;
}

- (id)loadConfigurableOptionsWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v6 = [WeakRetained configurableOptions];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(PRPosterDescriptor *)self _path];
    v8 = [PRPosterPathUtilities loadConfigurableOptionsForPath:v9 error:a3];
  }

  return v8;
}

- (id)objectForUserInfoKey:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v5)
  {
    [PRPosterDescriptor objectForUserInfoKey:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterDescriptor objectForUserInfoKey:a2];
  }

  v6 = [(PRPosterDescriptor *)self loadUserInfoWithError:0];
  v7 = [v6 objectForKey:v5];

  return v7;
}

- (id)loadUserInfoWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v6 = [WeakRetained userInfo];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(PFPosterPath *)self->_path loadUserInfoWithError:a3];
  }

  v9 = v8;

  return v9;
}

- (unint64_t)hash
{
  v3 = [(PFPosterPath *)self->_path serverIdentity];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hash];
  }

  else
  {
    v6 = [(PFPosterPath *)self->_path contentsURL];
    v5 = [v6 hash];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = [(PFPosterPath *)self->_path serverIdentity];
      if (v7)
      {
        v8 = [(PFPosterPath *)v4->_path serverIdentity];
        v6 = BSEqualObjects();
      }

      else
      {
        v6 = [(PFPosterPath *)self->_path isEqual:v4->_path];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __33__PRPosterDescriptor_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)pr_posterUUID
{
  v2 = [(PRPosterDescriptor *)self _path];
  v3 = [v2 serverIdentity];
  v4 = [v3 posterUUID];

  return v4;
}

- (id)pr_posterProvider
{
  v2 = [(PRPosterDescriptor *)self _path];
  v3 = [v2 serverIdentity];
  v4 = [v3 provider];

  return v4;
}

id __33__PRPosterDescriptor_description__block_invoke(id result)
{
  v1 = *(result + 4);
  if (v1)
  {
    return [*(result + 5) appendObject:*(v1 + 24) withName:@"path"];
  }

  return result;
}

- (void)appendDescriptionToFormatter:(void *)result
{
  if (result)
  {
    return [a2 appendObject:result[3] withName:@"path"];
  }

  return result;
}

- (void)_swapOutPathForPath:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_swapOutPathForPath:(char *)a1 .cold.2(char *a1)
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

- (void)_initWithPath:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"descriptors must have descriptorIdentifiers : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_2();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithPath:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"path", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)objectForUserInfoKey:(char *)a1 .cold.1(char *a1)
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

- (void)objectForUserInfoKey:(char *)a1 .cold.2(char *a1)
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