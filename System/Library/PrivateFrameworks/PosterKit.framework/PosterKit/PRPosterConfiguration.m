@interface PRPosterConfiguration
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)displayNameLocalizationKey;
- (PRPosterConfiguration)init;
- (id)_initWithPath:(id)a3;
- (id)loadAmbientConfigurationWithError:(id *)a3;
- (id)loadAmbientWidgetLayoutWithError:(id *)a1;
- (id)loadColorVariationsConfigurationWithError:(id *)a1;
- (id)loadComplicationLayoutWithError:(id *)a3;
- (id)loadConfigurableOptionsWithError:(id *)a3;
- (id)loadConfiguredPropertiesWithError:(id *)a3;
- (id)loadFocusConfigurationWithError:(id *)a3;
- (id)loadHomeScreenConfigurationWithError:(id *)a3;
- (id)loadOtherMetadataWithError:(id *)a3;
- (id)loadQuickActionsConfigurationWithError:(id *)a3;
- (id)loadSuggestionMetadataWithError:(id *)a3;
- (id)loadTitleStyleConfigurationWithError:(id *)a3;
- (id)loadUserInfoWithError:(id *)a3;
- (id)objectForUserInfoKey:(id)a3;
- (id)pr_posterProvider;
- (id)pr_posterUUID;
- (unint64_t)hash;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PRPosterConfiguration

- (id)pr_posterUUID
{
  v2 = [(PRPosterConfiguration *)self _path];
  v3 = [v2 serverIdentity];
  v4 = [v3 posterUUID];

  return v4;
}

- (id)pr_posterProvider
{
  v2 = [(PRPosterConfiguration *)self _path];
  v3 = [v2 serverIdentity];
  v4 = [v3 provider];

  return v4;
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
    v18 = self;
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

- (id)_initWithPath:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [PRPosterConfiguration _initWithPath:a2];
  }

  v7 = v6;
  v17.receiver = self;
  v17.super_class = PRPosterConfiguration;
  v8 = [(PRPosterConfiguration *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_path, a3);
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
  v3 = [v2 displayNameLocalizationKey];

  return v3;
}

- (id)objectForUserInfoKey:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v5)
  {
    [PRPosterConfiguration objectForUserInfoKey:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterConfiguration objectForUserInfoKey:a2];
  }

  v6 = [(PRPosterConfiguration *)self loadUserInfoWithError:0];
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
    v9 = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadConfigurableOptionsForPath:v9 error:a3];
  }

  return v8;
}

- (id)loadConfiguredPropertiesWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v6 = [WeakRetained configuredProperties];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadConfiguredPropertiesForPath:v9 error:a3];
  }

  return v8;
}

- (id)loadFocusConfigurationWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v6 = [WeakRetained focusConfiguration];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadFocusConfigurationForPath:v9 error:a3];
  }

  return v8;
}

- (id)loadHomeScreenConfigurationWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v6 = [WeakRetained homeScreenConfiguration];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadHomeScreenConfigurationForPath:v9 error:a3];
  }

  return v8;
}

- (id)loadTitleStyleConfigurationWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v6 = [WeakRetained titleStyleConfiguration];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadTitleStyleConfigurationForPath:v9 error:a3];
  }

  return v8;
}

- (id)loadComplicationLayoutWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v6 = [WeakRetained complicationLayout];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadComplicationLayoutForPath:v9 error:a3];
  }

  return v8;
}

- (id)loadQuickActionsConfigurationWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v6 = [WeakRetained quickActionsConfiguration];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadQuickActionsConfigurationForPath:v9 error:a3];
  }

  return v8;
}

- (id)loadSuggestionMetadataWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v6 = [WeakRetained suggestionMetadata];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadSuggestionMetadataForPath:v9 error:a3];
  }

  return v8;
}

- (id)loadOtherMetadataWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v6 = [WeakRetained otherMetadata];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadOtherMetadataForPath:v9 error:a3];
  }

  return v8;
}

- (id)loadAmbientConfigurationWithError:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v6 = [WeakRetained ambientConfiguration];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(PRPosterConfiguration *)self _path];
    v8 = [PRPosterPathUtilities loadAmbientConfigurationForPath:v9 error:a3];
  }

  return v8;
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
  v9 = __36__PRPosterConfiguration_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)loadColorVariationsConfigurationWithError:(id *)a1
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v3 = [WeakRetained colorVariationsConfiguration];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      [a1 _path];
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

- (id)loadAmbientWidgetLayoutWithError:(id *)a1
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v3 = [WeakRetained ambientWidgetLayout];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      [a1 _path];
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