@interface PRPosterPathModelObjectCache
+ (id)modelObjectCacheForPath:(id)a3;
+ (id)modelObjectCacheLock;
+ (void)invalidateModelObjectCacheForPath:(id)a3;
- (ATXPosterDescriptorGalleryOptions)proactiveGalleryOptions;
- (NSDictionary)userInfo;
- (NSString)description;
- (PFServerPosterIdentity)identity;
- (PRPosterAmbientConfiguration)ambientConfiguration;
- (PRPosterAmbientWidgetLayout)ambientWidgetLayout;
- (PRPosterColorVariationsConfiguration)colorVariationsConfiguration;
- (PRPosterComplicationLayout)complicationLayout;
- (PRPosterConfigurableOptions)configurableOptions;
- (PRPosterConfiguredProperties)configuredProperties;
- (PRPosterDescriptorGalleryOptions)galleryOptions;
- (PRPosterFocusConfiguration)focusConfiguration;
- (PRPosterMetadata)otherMetadata;
- (PRPosterQuickActionsConfiguration)quickActionsConfiguration;
- (PRPosterRenderingConfiguration)renderingConfiguration;
- (PRPosterSuggestionMetadata)suggestionMetadata;
- (PRPosterTitleStyleConfiguration)titleStyleConfiguration;
- (id)_initWithPath:(id)a3;
- (id)homeScreenConfigurationOrError:(id *)a3;
- (void)configuredProperties;
- (void)dealloc;
- (void)invalidate;
- (void)resetAmbientConfiguration;
- (void)resetAmbientWidgetLayout;
- (void)resetColorVariationsConfiguration;
- (void)resetComplicationLayout;
- (void)resetConfigurableOptions;
- (void)resetConfiguredProperties;
- (void)resetFocusConfiguration;
- (void)resetGalleryOptions;
- (void)resetHomeScreenConfiguration;
- (void)resetOtherMetadata;
- (void)resetProactiveGalleryOptions;
- (void)resetQuickActionsConfiguration;
- (void)resetRenderingConfiguration;
- (void)resetSuggestionMetadata;
- (void)resetTitleStyleConfiguration;
- (void)resetUserInfo;
- (void)userInfo;
@end

@implementation PRPosterPathModelObjectCache

- (NSDictionary)userInfo
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_userInfoLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_userInfo)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_userInfo;
  }

  else
  {
    v11 = [PRPosterPathUtilities userInfoURLForPosterContentsURL:v3->_pathContentsURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserInfoForURL:v11 error:&v21];
    v13 = v21;
    v14 = v21;
    userInfo = v3->_userInfo;
    v3->_userInfo = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_userInfo)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_userInfoLoadError, v13);
    }

    v7 = v3->_userInfo;
  }

  objc_sync_exit(v3);

  return v7;
}

+ (id)modelObjectCacheLock
{
  if (modelObjectCacheLock_onceToken != -1)
  {
    +[PRPosterPathModelObjectCache modelObjectCacheLock];
  }

  v3 = modelObjectCacheLock_modelObjectCacheLock;

  return v3;
}

uint64_t __52__PRPosterPathModelObjectCache_modelObjectCacheLock__block_invoke()
{
  v0 = objc_opt_new();
  v1 = modelObjectCacheLock_modelObjectCacheLock;
  modelObjectCacheLock_modelObjectCacheLock = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)modelObjectCacheForPath:(id)a3
{
  v4 = a3;
  if ([v4 isServerPosterPath])
  {
    v5 = [v4 identity];
    if (v5)
    {
      v6 = [a1 modelObjectCacheLock];
      [v6 lock];

      v7 = objc_getAssociatedObject(v5, "modelObjectCache");
      if (!v7)
      {
        v7 = [[PRPosterPathModelObjectCache alloc] _initWithPath:v4];
        if (v7)
        {
          objc_setAssociatedObject(v5, "modelObjectCache", v7, 0x301);
        }
      }

      v8 = [a1 modelObjectCacheLock];
      [v8 unlock];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)invalidateModelObjectCacheForPath:(id)a3
{
  v11 = a3;
  v4 = [v11 isServerPosterPath];
  v5 = v11;
  if (v4)
  {
    v6 = [v11 identity];
    if (v6)
    {
      v7 = [a1 modelObjectCacheLock];
      [v7 lock];

      v8 = objc_getAssociatedObject(v6, "modelObjectCache");
      v9 = v8;
      if (v8)
      {
        [v8 invalidate];
      }

      objc_setAssociatedObject(v6, "modelObjectCache", 0, 0x301);
      v10 = [a1 modelObjectCacheLock];
      [v10 unlock];
    }

    v5 = v11;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)_initWithPath:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = PRPosterPathModelObjectCache;
  v5 = [(PRPosterPathModelObjectCache *)&v44 init];
  if (!v5)
  {
LABEL_8:
    v21 = v5;
    goto LABEL_9;
  }

  v6 = [v4 identity];
  objc_storeWeak(&v5->_identity, v6);

  v7 = [v4 role];
  role = v5->_role;
  v5->_role = v7;

  v9 = [v4 containerURL];
  pathURL = v5->_pathURL;
  v5->_pathURL = v9;

  v11 = [v4 instanceURL];
  pathInstanceURL = v5->_pathInstanceURL;
  v5->_pathInstanceURL = v11;

  v13 = [v4 contentsURL];
  pathContentsURL = v5->_pathContentsURL;
  v5->_pathContentsURL = v13;

  v15 = [v4 identifierURL];
  pathIdentifierURL = v5->_pathIdentifierURL;
  v5->_pathIdentifierURL = v15;

  v17 = [v4 supplementURL];
  pathSupplementURL = v5->_pathSupplementURL;
  v5->_pathSupplementURL = v17;

  v19 = [(NSURL *)v5->_pathInstanceURL path];
  v20 = [v19 containsString:@"_STAGED_"];

  if ((v20 & 1) == 0)
  {
    v39 = MEMORY[0x1E696AEC0];
    WeakRetained = objc_loadWeakRetained(&v5->_identity);
    v42 = [WeakRetained provider];
    v37 = [v42 pathExtension];
    v41 = objc_loadWeakRetained(&v5->_identity);
    [v41 type];
    v35 = NSStringFromPFServerPosterType();
    v40 = objc_loadWeakRetained(&v5->_identity);
    v34 = [v40 descriptorIdentifier];
    v38 = objc_loadWeakRetained(&v5->_identity);
    v36 = [v38 posterUUID];
    v22 = [v36 UUIDString];
    v23 = [v22 substringToIndex:7];
    v24 = objc_loadWeakRetained(&v5->_identity);
    v25 = [v24 version];
    v26 = objc_loadWeakRetained(&v5->_identity);
    v27 = [v26 supplement];
    v28 = [(NSString *)v5->_role stringByReplacingOccurrencesOfString:@"PRPosterRole" withString:&stru_1F1C13D90];
    v29 = [v39 stringWithFormat:@"%@:%@:%@:%@:%llu_%llu:%@", v37, v35, v34, v23, v25, v27, v28];
    logPreamble = v5->_logPreamble;
    v5->_logPreamble = v29;

    v31 = PRLogModel();
    LODWORD(v22) = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);

    if (v22)
    {
      v32 = PRLogModel();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [PRPosterPathModelObjectCache _initWithPath:];
      }
    }

    goto LABEL_8;
  }

  v21 = 0;
LABEL_9:

  return v21;
}

- (void)invalidate
{
  v3 = PRLogModel();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
LABEL_5:

    goto LABEL_6;
  }

  logPreamble = self->_logPreamble;

  if (logPreamble)
  {
    v3 = PRLogModel();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PRPosterPathModelObjectCache invalidate];
    }

    goto LABEL_5;
  }

LABEL_6:
  v5 = self;
  objc_sync_enter(v5);
  configuredProperties = v5->_configuredProperties;
  v5->_configuredProperties = 0;

  userInfoLoadError = v5->_userInfoLoadError;
  v5->_userInfoLoadError = 0;

  userInfo = v5->_userInfo;
  v5->_userInfo = 0;

  titleStyleConfigurationLoadError = v5->_titleStyleConfigurationLoadError;
  v5->_titleStyleConfigurationLoadError = 0;

  titleStyleConfiguration = v5->_titleStyleConfiguration;
  v5->_titleStyleConfiguration = 0;

  renderingConfigurationLoadError = v5->_renderingConfigurationLoadError;
  v5->_renderingConfigurationLoadError = 0;

  renderingConfiguration = v5->_renderingConfiguration;
  v5->_renderingConfiguration = 0;

  configurableOptionsLoadError = v5->_configurableOptionsLoadError;
  v5->_configurableOptionsLoadError = 0;

  configurableOptions = v5->_configurableOptions;
  v5->_configurableOptions = 0;

  homeScreenConfigurationLoadError = v5->_homeScreenConfigurationLoadError;
  v5->_homeScreenConfigurationLoadError = 0;

  homeScreenConfiguration = v5->_homeScreenConfiguration;
  v5->_homeScreenConfiguration = 0;

  focusConfigurationLoadError = v5->_focusConfigurationLoadError;
  v5->_focusConfigurationLoadError = 0;

  focusConfiguration = v5->_focusConfiguration;
  v5->_focusConfiguration = 0;

  complicationLayoutLoadError = v5->_complicationLayoutLoadError;
  v5->_complicationLayoutLoadError = 0;

  complicationLayout = v5->_complicationLayout;
  v5->_complicationLayout = 0;

  colorVariationsConfigurationLoadError = v5->_colorVariationsConfigurationLoadError;
  v5->_colorVariationsConfigurationLoadError = 0;

  colorVariationsConfiguration = v5->_colorVariationsConfiguration;
  v5->_colorVariationsConfiguration = 0;

  quickActionsConfigurationLoadError = v5->_quickActionsConfigurationLoadError;
  v5->_quickActionsConfigurationLoadError = 0;

  quickActionsConfiguration = v5->_quickActionsConfiguration;
  v5->_quickActionsConfiguration = 0;

  suggestionMetadataLoadError = v5->_suggestionMetadataLoadError;
  v5->_suggestionMetadataLoadError = 0;

  suggestionMetadata = v5->_suggestionMetadata;
  v5->_suggestionMetadata = 0;

  otherMetadataLoadError = v5->_otherMetadataLoadError;
  v5->_otherMetadataLoadError = 0;

  otherMetadata = v5->_otherMetadata;
  v5->_otherMetadata = 0;

  galleryOptionsLoadError = v5->_galleryOptionsLoadError;
  v5->_galleryOptionsLoadError = 0;

  galleryOptions = v5->_galleryOptions;
  v5->_galleryOptions = 0;

  ambientConfigurationLoadError = v5->_ambientConfigurationLoadError;
  v5->_ambientConfigurationLoadError = 0;

  ambientConfiguration = v5->_ambientConfiguration;
  v5->_ambientConfiguration = 0;

  ambientWidgetLayoutLoadError = v5->_ambientWidgetLayoutLoadError;
  v5->_ambientWidgetLayoutLoadError = 0;

  ambientWidgetLayout = v5->_ambientWidgetLayout;
  v5->_ambientWidgetLayout = 0;

  objc_sync_exit(v5);
}

- (void)dealloc
{
  v3 = PRLogModel();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    v5 = PRLogModel();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PRPosterPathModelObjectCache dealloc];
    }
  }

  v6.receiver = self;
  v6.super_class = PRPosterPathModelObjectCache;
  [(PRPosterPathModelObjectCache *)&v6 dealloc];
}

- (PRPosterConfiguredProperties)configuredProperties
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_configuredProperties)
  {
    v3 = PRLogModel();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = PRLogModel();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache configuredProperties];
    }
  }

  else
  {
    if ([(NSString *)v2->_role isEqual:@"PRPosterRoleAmbient"])
    {
      v6 = [PRPosterConfiguredProperties alloc];
      v24 = [(PRPosterPathModelObjectCache *)v2 ambientConfiguration];
      v7 = [(PRPosterPathModelObjectCache *)v2 ambientWidgetLayout];
      v8 = [(PRPosterPathModelObjectCache *)v2 otherMetadata];
      v9 = [(PRPosterPathModelObjectCache *)v2 userInfo];
      v10 = [(PRPosterConfiguredProperties *)v6 initWithAmbientConfiguration:v24 widgetLayout:v7 otherMetadata:v8 userInfo:v9];
      configuredProperties = v2->_configuredProperties;
      v2->_configuredProperties = v10;
    }

    else
    {
      v23 = [PRPosterConfiguredProperties alloc];
      v24 = [(PRPosterPathModelObjectCache *)v2 titleStyleConfiguration];
      v7 = [(PRPosterPathModelObjectCache *)v2 focusConfiguration];
      v8 = [(PRPosterPathModelObjectCache *)v2 complicationLayout];
      v9 = [(PRPosterPathModelObjectCache *)v2 renderingConfiguration];
      configuredProperties = [(PRPosterPathModelObjectCache *)v2 homeScreenConfiguration];
      v12 = [(PRPosterPathModelObjectCache *)v2 colorVariationsConfiguration];
      v13 = [(PRPosterPathModelObjectCache *)v2 quickActionsConfiguration];
      v14 = [(PRPosterPathModelObjectCache *)v2 suggestionMetadata];
      v15 = [(PRPosterPathModelObjectCache *)v2 otherMetadata];
      v16 = [(PRPosterPathModelObjectCache *)v2 userInfo];
      v17 = [(PRPosterConfiguredProperties *)v23 initWithTitleStyleConfiguration:v24 focusConfiguration:v7 complicationLayout:v8 renderingConfiguration:v9 homeScreenConfiguration:configuredProperties colorVariationsConfiguration:v12 quickActionsConfiguration:v13 suggestionMetadata:v14 otherMetadata:v15 userInfo:v16];
      v18 = v2->_configuredProperties;
      v2->_configuredProperties = v17;
    }

    v19 = PRLogModel();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

    if (!v20)
    {
      goto LABEL_15;
    }

    if (v2->_configuredProperties)
    {
      v5 = PRLogModel();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    else
    {
      v5 = PRLogModel();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }
  }

LABEL_15:
  v21 = v2->_configuredProperties;
  objc_sync_exit(v2);

  return v21;
}

- (void)resetConfiguredProperties
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 56);
  v5 = NSStringFromSelector(aSelector);
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_1A8AA7000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] %{public}@", &v6, 0x16u);
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PRPosterPathModelObjectCache *)self identity];
  v5 = [v3 appendObject:v4 withName:@"identity"];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__PRPosterPathModelObjectCache_description__block_invoke;
  v16[3] = &unk_1E7843070;
  v6 = v3;
  v17 = v6;
  v18 = self;
  [v6 appendBodySectionWithName:@"cached properties" multilinePrefix:@"\n" block:v16];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __43__PRPosterPathModelObjectCache_description__block_invoke_2;
  v13 = &unk_1E7843070;
  v14 = v6;
  v15 = self;
  v7 = v6;
  [v7 appendBodySectionWithName:@"cache property errors" multilinePrefix:@"\n" block:&v10];
  v8 = [v7 build];

  return v8;
}

id __43__PRPosterPathModelObjectCache_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 72) != 0 withName:@"configuredProperties" ifEqualTo:1];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 88) != 0 withName:@"userInfo" ifEqualTo:1];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 104) != 0 withName:@"titleStyleConfiguration" ifEqualTo:1];
  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 120) != 0 withName:@"renderingConfiguration" ifEqualTo:1];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 136) != 0 withName:@"configurableOptions" ifEqualTo:1];
  v7 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 152) != 0 withName:@"homeScreenConfiguration" ifEqualTo:1];
  v8 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 168) != 0 withName:@"focusConfiguration" ifEqualTo:1];
  v9 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 184) != 0 withName:@"complicationLayout" ifEqualTo:1];
  v10 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 200) != 0 withName:@"colorVariationsConfiguration" ifEqualTo:1];
  v11 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 216) != 0 withName:@"quickActionsConfiguration" ifEqualTo:1];
  v12 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 232) != 0 withName:@"suggestionMetadata" ifEqualTo:1];
  v13 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 248) != 0 withName:@"otherMetadata" ifEqualTo:1];
  v14 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 264) != 0 withName:@"galleryOptions" ifEqualTo:1];
  v15 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 280) != 0 withName:@"ambientConfiguration" ifEqualTo:1];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 296) != 0 withName:@"ambientWidgetLayout" ifEqualTo:1];
}

id __43__PRPosterPathModelObjectCache_description__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 288) withName:@"_ambientWidgetLayoutLoadError" skipIfNil:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 272) withName:@"_ambientConfigurationLoadError" skipIfNil:1];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 256) withName:@"_galleryOptionsLoadError" skipIfNil:1];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 240) withName:@"_otherMetadataLoadError" skipIfNil:1];
  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 224) withName:@"_suggestionMetadataLoadError" skipIfNil:1];
  v7 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 208) withName:@"_quickActionsConfigurationLoadError" skipIfNil:1];
  v8 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 192) withName:@"_colorVariationsConfigurationLoadError" skipIfNil:1];
  v9 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 176) withName:@"_complicationLayoutLoadError" skipIfNil:1];
  v10 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 160) withName:@"_focusConfigurationLoadError" skipIfNil:1];
  v11 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 144) withName:@"_homeScreenConfigurationLoadError" skipIfNil:1];
  v12 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 128) withName:@"_configurableOptionsLoadError" skipIfNil:1];
  v13 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 112) withName:@"_renderingConfigurationLoadError" skipIfNil:1];
  v14 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 96) withName:@"_titleStyleConfigurationLoadError" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"_userInfoLoadError" skipIfNil:1];
}

- (void)resetUserInfo
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_12(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_1A8AA7000, "[%{public}@ cache] %{public}@", v4, v5);
}

- (PRPosterTitleStyleConfiguration)titleStyleConfiguration
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_titleStyleConfigurationLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_titleStyleConfiguration)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_titleStyleConfiguration;
  }

  else
  {
    v11 = [PRPosterPathUtilities titleStyleConfigurationURLForPathInstanceURL:v3->_pathInstanceURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:1 error:&v21];
    v13 = v21;
    v14 = v21;
    titleStyleConfiguration = v3->_titleStyleConfiguration;
    v3->_titleStyleConfiguration = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_titleStyleConfiguration)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_titleStyleConfigurationLoadError, v13);
    }

    v7 = v3->_titleStyleConfiguration;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)resetTitleStyleConfiguration
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  titleStyleConfiguration = v3->_titleStyleConfiguration;
  v3->_titleStyleConfiguration = 0;

  titleStyleConfigurationLoadError = v3->_titleStyleConfigurationLoadError;
  v3->_titleStyleConfigurationLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (PRPosterRenderingConfiguration)renderingConfiguration
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_renderingConfigurationLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_renderingConfiguration)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_renderingConfiguration;
  }

  else
  {
    v11 = [PRPosterPathUtilities renderingConfigurationURLForPathInstanceURL:v3->_pathInstanceURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:1 error:&v21];
    v13 = v21;
    v14 = v21;
    renderingConfiguration = v3->_renderingConfiguration;
    v3->_renderingConfiguration = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_renderingConfiguration)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_renderingConfigurationLoadError, v13);
    }

    v7 = v3->_renderingConfiguration;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)resetRenderingConfiguration
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  renderingConfiguration = v3->_renderingConfiguration;
  v3->_renderingConfiguration = 0;

  renderingConfigurationLoadError = v3->_renderingConfigurationLoadError;
  v3->_renderingConfigurationLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (PRPosterConfigurableOptions)configurableOptions
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_configurableOptionsLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_configurableOptions)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_configurableOptions;
  }

  else
  {
    v11 = [PRPosterPathUtilities configurableOptionsURLForContentsURL:v3->_pathContentsURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:1 error:&v21];
    v13 = v21;
    v14 = v21;
    configurableOptions = v3->_configurableOptions;
    v3->_configurableOptions = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_configurableOptions)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_configurableOptionsLoadError, v13);
    }

    v7 = v3->_configurableOptions;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)resetConfigurableOptions
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  configurableOptions = v3->_configurableOptions;
  v3->_configurableOptions = 0;

  configurableOptionsLoadError = v3->_configurableOptionsLoadError;
  v3->_configurableOptionsLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (id)homeScreenConfigurationOrError:(id *)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = self;
  objc_sync_enter(v5);
  p_homeScreenConfigurationLoadError = &v5->_homeScreenConfigurationLoadError;
  if (v5->_homeScreenConfigurationLoadError)
  {
    v7 = PRLogModel();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

    if (v8)
    {
      v9 = PRLogModel();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    if (a3 && ([*p_homeScreenConfigurationLoadError pf_isFileNotFoundError] & 1) == 0)
    {
      v14 = [*p_homeScreenConfigurationLoadError copy];
      v10 = 0;
      *a3 = v14;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_37;
  }

  if (v5->_homeScreenConfiguration)
  {
    v11 = PRLogModel();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      v13 = PRLogModel();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v10 = v5->_homeScreenConfiguration;
    goto LABEL_37;
  }

  v15 = [PRPosterPathUtilities homeScreenConfigurationURLForSupplementURL:v5->_pathSupplementURL];
  v35 = 0;
  v16 = [PRPosterPathUtilities loadUserObjectForURL:v15 expectedClass:objc_opt_class() strict:0 error:&v35];
  v17 = v35;
  homeScreenConfiguration = v5->_homeScreenConfiguration;
  v5->_homeScreenConfiguration = v16;

  if (v5->_homeScreenConfiguration)
  {
    v19 = 0;
  }

  else
  {
    v20 = [PRPosterPathUtilities oldHomeScreenConfigurationURLForIdentifierURL:v5->_pathIdentifierURL];
    v34 = 0;
    v21 = [PRPosterPathUtilities loadUserObjectForURL:v20 expectedClass:objc_opt_class() strict:0 error:&v34];
    v19 = v34;
    v22 = v5->_homeScreenConfiguration;
    v5->_homeScreenConfiguration = v21;
  }

  if (v17)
  {
    v23 = v17;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23;
  if (!v5->_homeScreenConfiguration)
  {
    v28 = PRLogModel();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);

    if (v29)
    {
      v30 = PRLogModel();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        logPreamble = v5->_logPreamble;
        v33 = NSStringFromSelector(a2);
        *buf = 138543874;
        v37 = logPreamble;
        v38 = 2114;
        v39 = v33;
        v40 = 2114;
        v41 = v24;
        _os_log_debug_impl(&dword_1A8AA7000, v30, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
      }
    }

    if (![v24 pf_isFileNotFoundError])
    {
      goto LABEL_34;
    }

    v27 = PRLogModel();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PRPosterPathModelObjectCache homeScreenConfigurationOrError:];
    }

    goto LABEL_33;
  }

  v25 = PRLogModel();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);

  if (v26)
  {
    v27 = PRLogModel();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache configuredProperties];
    }

LABEL_33:
  }

LABEL_34:
  if (v24)
  {
    objc_storeStrong(&v5->_homeScreenConfigurationLoadError, v23);
  }

  v10 = v5->_homeScreenConfiguration;

LABEL_37:
  objc_sync_exit(v5);

  return v10;
}

- (void)resetHomeScreenConfiguration
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  homeScreenConfiguration = v3->_homeScreenConfiguration;
  v3->_homeScreenConfiguration = 0;

  homeScreenConfigurationLoadError = v3->_homeScreenConfigurationLoadError;
  v3->_homeScreenConfigurationLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (PRPosterFocusConfiguration)focusConfiguration
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_focusConfigurationLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_focusConfiguration)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_focusConfiguration;
  }

  else
  {
    v11 = [PRPosterPathUtilities focusConfigurationURLForIdentifierURL:v3->_pathIdentifierURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    focusConfiguration = v3->_focusConfiguration;
    v3->_focusConfiguration = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_focusConfiguration)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_focusConfigurationLoadError, v13);
    }

    v7 = v3->_focusConfiguration;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)resetFocusConfiguration
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  focusConfiguration = v3->_focusConfiguration;
  v3->_focusConfiguration = 0;

  focusConfigurationLoadError = v3->_focusConfigurationLoadError;
  v3->_focusConfigurationLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (PRPosterComplicationLayout)complicationLayout
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_complicationLayoutLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_complicationLayout)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_complicationLayout;
  }

  else
  {
    v11 = [PRPosterPathUtilities complicationsLayoutURLForInstanceURL:v3->_pathInstanceURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    complicationLayout = v3->_complicationLayout;
    v3->_complicationLayout = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_complicationLayout)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_complicationLayoutLoadError, v13);
    }

    v7 = v3->_complicationLayout;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)resetComplicationLayout
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  complicationLayout = v3->_complicationLayout;
  v3->_complicationLayout = 0;

  complicationLayoutLoadError = v3->_complicationLayoutLoadError;
  v3->_complicationLayoutLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (PRPosterColorVariationsConfiguration)colorVariationsConfiguration
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_colorVariationsConfigurationLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_colorVariationsConfiguration)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_colorVariationsConfiguration;
  }

  else
  {
    v11 = [PRPosterPathUtilities colorVariationsConfigurationURLForInstanceURL:v3->_pathInstanceURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:1 error:&v21];
    v13 = v21;
    v14 = v21;
    colorVariationsConfiguration = v3->_colorVariationsConfiguration;
    v3->_colorVariationsConfiguration = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_colorVariationsConfiguration)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_colorVariationsConfigurationLoadError, v13);
    }

    v7 = v3->_colorVariationsConfiguration;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)resetColorVariationsConfiguration
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  colorVariationsConfiguration = v3->_colorVariationsConfiguration;
  v3->_colorVariationsConfiguration = 0;

  colorVariationsConfigurationLoadError = v3->_colorVariationsConfigurationLoadError;
  v3->_colorVariationsConfigurationLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (PRPosterQuickActionsConfiguration)quickActionsConfiguration
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_quickActionsConfigurationLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_quickActionsConfiguration)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_quickActionsConfiguration;
  }

  else
  {
    v11 = [PRPosterPathUtilities quickActionsConfigurationURLForInstanceURL:v3->_pathInstanceURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    quickActionsConfiguration = v3->_quickActionsConfiguration;
    v3->_quickActionsConfiguration = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_quickActionsConfiguration)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_quickActionsConfigurationLoadError, v13);
    }

    v7 = v3->_quickActionsConfiguration;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)resetQuickActionsConfiguration
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  quickActionsConfiguration = v3->_quickActionsConfiguration;
  v3->_quickActionsConfiguration = 0;

  quickActionsConfigurationLoadError = v3->_quickActionsConfigurationLoadError;
  v3->_quickActionsConfigurationLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (PRPosterSuggestionMetadata)suggestionMetadata
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_suggestionMetadataLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_suggestionMetadata)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_suggestionMetadata;
  }

  else
  {
    v11 = [PRPosterPathUtilities suggestionMetadataURLForIdentifierURL:v3->_pathIdentifierURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    suggestionMetadata = v3->_suggestionMetadata;
    v3->_suggestionMetadata = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_suggestionMetadata)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_suggestionMetadataLoadError, v13);
    }

    v7 = v3->_suggestionMetadata;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)resetSuggestionMetadata
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  suggestionMetadata = v3->_suggestionMetadata;
  v3->_suggestionMetadata = 0;

  suggestionMetadataLoadError = v3->_suggestionMetadataLoadError;
  v3->_suggestionMetadataLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (PRPosterMetadata)otherMetadata
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_otherMetadataLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_otherMetadata)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_otherMetadata;
  }

  else
  {
    v11 = [PRPosterPathUtilities otherMetadataURLForContentsURL:v3->_pathContentsURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:1 error:&v21];
    v13 = v21;
    v14 = v21;
    otherMetadata = v3->_otherMetadata;
    v3->_otherMetadata = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_otherMetadata)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_otherMetadataLoadError, v13);
    }

    v7 = v3->_otherMetadata;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)resetOtherMetadata
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  otherMetadata = v3->_otherMetadata;
  v3->_otherMetadata = 0;

  otherMetadataLoadError = v3->_otherMetadataLoadError;
  v3->_otherMetadataLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (PRPosterDescriptorGalleryOptions)galleryOptions
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_galleryOptionsLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_galleryOptions)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_galleryOptions;
  }

  else
  {
    v11 = [PRPosterPathUtilities descriptorGalleryOptionsURLForContentsURL:v3->_pathContentsURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    galleryOptions = v3->_galleryOptions;
    v3->_galleryOptions = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_galleryOptions)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_galleryOptionsLoadError, v13);
    }

    v7 = v3->_galleryOptions;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)resetGalleryOptions
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  galleryOptions = v3->_galleryOptions;
  v3->_galleryOptions = 0;

  galleryOptionsLoadError = v3->_galleryOptionsLoadError;
  v3->_galleryOptionsLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (ATXPosterDescriptorGalleryOptions)proactiveGalleryOptions
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_proactiveGalleryOptionsLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_proactiveGalleryOptions)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_proactiveGalleryOptions;
  }

  else
  {
    v11 = [PRPosterPathUtilities proactiveGalleryOptionsURLForContentsURL:v3->_pathContentsURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    proactiveGalleryOptions = v3->_proactiveGalleryOptions;
    v3->_proactiveGalleryOptions = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_proactiveGalleryOptions)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_proactiveGalleryOptionsLoadError, v13);
    }

    v7 = v3->_proactiveGalleryOptions;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)resetProactiveGalleryOptions
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  proactiveGalleryOptions = v3->_proactiveGalleryOptions;
  v3->_proactiveGalleryOptions = 0;

  proactiveGalleryOptionsLoadError = v3->_proactiveGalleryOptionsLoadError;
  v3->_proactiveGalleryOptionsLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (PRPosterAmbientConfiguration)ambientConfiguration
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_ambientConfigurationLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_ambientConfiguration)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_ambientConfiguration;
  }

  else
  {
    v11 = [PRPosterPathUtilities ambientConfigurationURLForContentsURL:v3->_pathContentsURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    ambientConfiguration = v3->_ambientConfiguration;
    v3->_ambientConfiguration = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_ambientConfiguration)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_ambientConfigurationLoadError, v13);
    }

    v7 = v3->_ambientConfiguration;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)resetAmbientConfiguration
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  ambientConfiguration = v3->_ambientConfiguration;
  v3->_ambientConfiguration = 0;

  ambientConfigurationLoadError = v3->_ambientConfigurationLoadError;
  v3->_ambientConfigurationLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (PRPosterAmbientWidgetLayout)ambientWidgetLayout
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_ambientWidgetLayoutLoadError)
  {
    v4 = PRLogModel();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = PRLogModel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache userInfo];
      }
    }

    v7 = 0;
  }

  else if (v3->_ambientWidgetLayout)
  {
    v8 = PRLogModel();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

    if (v9)
    {
      v10 = PRLogModel();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [PRPosterPathModelObjectCache configuredProperties];
      }
    }

    v7 = v3->_ambientWidgetLayout;
  }

  else
  {
    v11 = [PRPosterPathUtilities ambientWidgetLayoutURLForInstanceURL:v3->_pathInstanceURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    ambientWidgetLayout = v3->_ambientWidgetLayout;
    v3->_ambientWidgetLayout = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (v3->_ambientWidgetLayout)
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [PRPosterPathModelObjectCache configuredProperties];
        }
      }

      else
      {
        v17 = PRLogModel();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          logPreamble = v3->_logPreamble;
          v20 = NSStringFromSelector(a2);
          *buf = 138543874;
          v23 = logPreamble;
          v24 = 2114;
          v25 = v20;
          v26 = 2114;
          v27 = v14;
          _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@ cache] failed to load cached value for %{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    if (v14)
    {
      objc_storeStrong(&v3->_ambientWidgetLayoutLoadError, v13);
    }

    v7 = v3->_ambientWidgetLayout;
  }

  objc_sync_exit(v3);

  return v7;
}

- (void)resetAmbientWidgetLayout
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = PRLogModel();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = PRLogModel();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [PRPosterPathModelObjectCache resetUserInfo];
    }
  }

  ambientWidgetLayout = v3->_ambientWidgetLayout;
  v3->_ambientWidgetLayout = 0;

  ambientWidgetLayoutLoadError = v3->_ambientWidgetLayoutLoadError;
  v3->_ambientWidgetLayoutLoadError = 0;

  configuredProperties = v3->_configuredProperties;
  v3->_configuredProperties = 0;

  objc_sync_exit(v3);
}

- (PFServerPosterIdentity)identity
{
  WeakRetained = objc_loadWeakRetained(&self->_identity);

  return WeakRetained;
}

- (void)configuredProperties
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_12(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_1A8AA7000, "[%{public}@ cache] failed to load cached value for %{public}@", v4, v5);
}

- (void)userInfo
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_12(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_4_0(&dword_1A8AA7000, "[%{public}@ cache] bailing; previous loading error %{public}@", v4, v5);
}

@end