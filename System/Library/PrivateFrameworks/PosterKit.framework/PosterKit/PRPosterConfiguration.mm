@interface PRPosterConfiguration
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)displayNameLocalizationKey;
- (PRPosterConfiguration)init;
- (id)_initWithPath:(id)path;
- (id)loadAmbientConfigurationWithError:(id *)error;
- (id)loadAmbientWidgetLayoutWithError:(id *)error;
- (id)loadColorVariationsConfigurationWithError:(id *)error;
- (id)loadComplicationLayoutWithError:(id *)error;
- (id)loadConfigurableOptionsWithError:(id *)error;
- (id)loadConfiguredPropertiesWithError:(id *)error;
- (id)loadFocusConfigurationWithError:(id *)error;
- (id)loadHomeScreenConfigurationWithError:(id *)error;
- (id)loadOtherMetadataWithError:(id *)error;
- (id)loadQuickActionsConfigurationWithError:(id *)error;
- (id)loadSuggestionMetadataWithError:(id *)error;
- (id)loadTitleStyleConfigurationWithError:(id *)error;
- (id)loadUserInfoWithError:(id *)error;
- (id)objectForUserInfoKey:(id)key;
- (id)pr_posterProvider;
- (id)pr_posterUUID;
- (unint64_t)hash;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PRPosterConfiguration

- (id)pr_posterUUID
{
  _path = [(PRPosterConfiguration *)self _path];
  serverIdentity = [_path serverIdentity];
  posterUUID = [serverIdentity posterUUID];

  return posterUUID;
}

- (id)pr_posterProvider
{
  _path = [(PRPosterConfiguration *)self _path];
  serverIdentity = [_path serverIdentity];
  provider = [serverIdentity provider];

  return provider;
}

- (PRPosterConfiguration)init
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
    selfCopy = self;
    v19 = 2114;
    v20 = @"PRPosterConfiguration.m";
    v21 = 1024;
    v22 = 29;
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
  v3.super_class = PRPosterConfiguration;
  [(PRPosterConfiguration *)&v3 dealloc];
}

- (id)_initWithPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    [PRPosterConfiguration _initWithPath:a2];
  }

  v7 = pathCopy;
  v17.receiver = self;
  v17.super_class = PRPosterConfiguration;
  v8 = [(PRPosterConfiguration *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_path, path);
    path = v9->_path;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [(PFPosterPath *)path extendValidityForReason:v12];
    pathValidityExtension = v9->_pathValidityExtension;
    v9->_pathValidityExtension = v13;

    if ([v7 isServerPosterPath])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v7];
        objc_storeWeak(&v9->_cache, v15);
      }
    }
  }

  return v9;
}

- (void)invalidate
{
  objc_storeWeak(&self->_cache, 0);
  pathValidityExtension = self->_pathValidityExtension;

  [(BSInvalidatable *)pathValidityExtension invalidate];
}

- (NSString)displayNameLocalizationKey
{
  v2 = [(PRPosterConfiguration *)self loadOtherMetadataWithError:0];
  displayNameLocalizationKey = [v2 displayNameLocalizationKey];

  return displayNameLocalizationKey;
}

- (id)objectForUserInfoKey:(id)key
{
  keyCopy = key;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!keyCopy)
  {
    [PRPosterConfiguration objectForUserInfoKey:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterConfiguration objectForUserInfoKey:a2];
  }

  v6 = [(PRPosterConfiguration *)self loadUserInfoWithError:0];
  v7 = [v6 objectForKey:keyCopy];

  return v7;
}

- (id)loadUserInfoWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  userInfo = [WeakRetained userInfo];
  v7 = userInfo;
  if (userInfo)
  {
    v8 = userInfo;
  }

  else
  {
    v8 = [(PFPosterPath *)self->_path loadUserInfoWithError:error];
  }

  v9 = v8;

  return v9;
}

- (id)loadConfigurableOptionsWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  configurableOptions = [WeakRetained configurableOptions];
  v7 = configurableOptions;
  if (configurableOptions)
  {
    v8 = configurableOptions;
  }

  else
  {
    _path = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadConfigurableOptionsForPath:_path error:error];
  }

  return v8;
}

- (id)loadConfiguredPropertiesWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  configuredProperties = [WeakRetained configuredProperties];
  v7 = configuredProperties;
  if (configuredProperties)
  {
    v8 = configuredProperties;
  }

  else
  {
    _path = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadConfiguredPropertiesForPath:_path error:error];
  }

  return v8;
}

- (id)loadFocusConfigurationWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  focusConfiguration = [WeakRetained focusConfiguration];
  v7 = focusConfiguration;
  if (focusConfiguration)
  {
    v8 = focusConfiguration;
  }

  else
  {
    _path = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadFocusConfigurationForPath:_path error:error];
  }

  return v8;
}

- (id)loadHomeScreenConfigurationWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  homeScreenConfiguration = [WeakRetained homeScreenConfiguration];
  v7 = homeScreenConfiguration;
  if (homeScreenConfiguration)
  {
    v8 = homeScreenConfiguration;
  }

  else
  {
    _path = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadHomeScreenConfigurationForPath:_path error:error];
  }

  return v8;
}

- (id)loadTitleStyleConfigurationWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  titleStyleConfiguration = [WeakRetained titleStyleConfiguration];
  v7 = titleStyleConfiguration;
  if (titleStyleConfiguration)
  {
    v8 = titleStyleConfiguration;
  }

  else
  {
    _path = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadTitleStyleConfigurationForPath:_path error:error];
  }

  return v8;
}

- (id)loadComplicationLayoutWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  complicationLayout = [WeakRetained complicationLayout];
  v7 = complicationLayout;
  if (complicationLayout)
  {
    v8 = complicationLayout;
  }

  else
  {
    _path = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadComplicationLayoutForPath:_path error:error];
  }

  return v8;
}

- (id)loadQuickActionsConfigurationWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  quickActionsConfiguration = [WeakRetained quickActionsConfiguration];
  v7 = quickActionsConfiguration;
  if (quickActionsConfiguration)
  {
    v8 = quickActionsConfiguration;
  }

  else
  {
    _path = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadQuickActionsConfigurationForPath:_path error:error];
  }

  return v8;
}

- (id)loadSuggestionMetadataWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  suggestionMetadata = [WeakRetained suggestionMetadata];
  v7 = suggestionMetadata;
  if (suggestionMetadata)
  {
    v8 = suggestionMetadata;
  }

  else
  {
    _path = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadSuggestionMetadataForPath:_path error:error];
  }

  return v8;
}

- (id)loadOtherMetadataWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  otherMetadata = [WeakRetained otherMetadata];
  v7 = otherMetadata;
  if (otherMetadata)
  {
    v8 = otherMetadata;
  }

  else
  {
    _path = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadOtherMetadataForPath:_path error:error];
  }

  return v8;
}

- (id)loadAmbientConfigurationWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  ambientConfiguration = [WeakRetained ambientConfiguration];
  v7 = ambientConfiguration;
  if (ambientConfiguration)
  {
    v8 = ambientConfiguration;
  }

  else
  {
    _path = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadAmbientConfigurationForPath:_path error:error];
  }

  return v8;
}

- (unint64_t)hash
{
  serverIdentity = [(PFPosterPath *)self->_path serverIdentity];
  v4 = serverIdentity;
  if (serverIdentity)
  {
    v5 = [serverIdentity hash];
  }

  else
  {
    contentsURL = [(PFPosterPath *)self->_path contentsURL];
    v5 = [contentsURL hash];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      serverIdentity = [(PFPosterPath *)self->_path serverIdentity];
      if (serverIdentity)
      {
        serverIdentity2 = [(PFPosterPath *)equalCopy->_path serverIdentity];
        v6 = BSEqualObjects();
      }

      else
      {
        v6 = [(PFPosterPath *)self->_path isEqual:equalCopy->_path];
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
  v9 = __36__PRPosterConfiguration_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)loadColorVariationsConfigurationWithError:(id *)error
{
  if (error)
  {
    WeakRetained = objc_loadWeakRetained(error + 2);
    colorVariationsConfiguration = [WeakRetained colorVariationsConfiguration];
    v4 = colorVariationsConfiguration;
    if (colorVariationsConfiguration)
    {
      v5 = colorVariationsConfiguration;
    }

    else
    {
      [error _path];
      objc_claimAutoreleasedReturnValue();
      v5 = [OUTLINED_FUNCTION_3_1() loadColorVariationsConfigurationForPath:? error:?];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)loadAmbientWidgetLayoutWithError:(id *)error
{
  if (error)
  {
    WeakRetained = objc_loadWeakRetained(error + 2);
    ambientWidgetLayout = [WeakRetained ambientWidgetLayout];
    v4 = ambientWidgetLayout;
    if (ambientWidgetLayout)
    {
      v5 = ambientWidgetLayout;
    }

    else
    {
      [error _path];
      objc_claimAutoreleasedReturnValue();
      v5 = [OUTLINED_FUNCTION_3_1() loadAmbientWidgetLayoutForPath:? error:?];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __36__PRPosterConfiguration_description__block_invoke(id result)
{
  v1 = *(result + 4);
  if (v1)
  {
    return [*(result + 5) appendObject:*(v1 + 24) withName:@"path"];
  }

  return result;
}

- (void)_initWithPath:(char *)a1 .cold.1(char *a1)
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