@interface PRPosterPathModelObjectCache
+ (id)modelObjectCacheForPath:(id)path;
+ (id)modelObjectCacheLock;
+ (void)invalidateModelObjectCacheForPath:(id)path;
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
- (id)_initWithPath:(id)path;
- (id)homeScreenConfigurationOrError:(id *)error;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_userInfoLoadError)
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

  else if (selfCopy->_userInfo)
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

    v7 = selfCopy->_userInfo;
  }

  else
  {
    v11 = [PRPosterPathUtilities userInfoURLForPosterContentsURL:selfCopy->_pathContentsURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserInfoForURL:v11 error:&v21];
    v13 = v21;
    v14 = v21;
    userInfo = selfCopy->_userInfo;
    selfCopy->_userInfo = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_userInfo)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_userInfoLoadError, v13);
    }

    v7 = selfCopy->_userInfo;
  }

  objc_sync_exit(selfCopy);

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

+ (id)modelObjectCacheForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isServerPosterPath])
  {
    identity = [pathCopy identity];
    if (identity)
    {
      modelObjectCacheLock = [self modelObjectCacheLock];
      [modelObjectCacheLock lock];

      v7 = objc_getAssociatedObject(identity, "modelObjectCache");
      if (!v7)
      {
        v7 = [[PRPosterPathModelObjectCache alloc] _initWithPath:pathCopy];
        if (v7)
        {
          objc_setAssociatedObject(identity, "modelObjectCache", v7, 0x301);
        }
      }

      modelObjectCacheLock2 = [self modelObjectCacheLock];
      [modelObjectCacheLock2 unlock];
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

+ (void)invalidateModelObjectCacheForPath:(id)path
{
  pathCopy = path;
  isServerPosterPath = [pathCopy isServerPosterPath];
  v5 = pathCopy;
  if (isServerPosterPath)
  {
    identity = [pathCopy identity];
    if (identity)
    {
      modelObjectCacheLock = [self modelObjectCacheLock];
      [modelObjectCacheLock lock];

      v8 = objc_getAssociatedObject(identity, "modelObjectCache");
      v9 = v8;
      if (v8)
      {
        [v8 invalidate];
      }

      objc_setAssociatedObject(identity, "modelObjectCache", 0, 0x301);
      modelObjectCacheLock2 = [self modelObjectCacheLock];
      [modelObjectCacheLock2 unlock];
    }

    v5 = pathCopy;
  }

  MEMORY[0x1EEE66BB8](isServerPosterPath, v5);
}

- (id)_initWithPath:(id)path
{
  pathCopy = path;
  v44.receiver = self;
  v44.super_class = PRPosterPathModelObjectCache;
  v5 = [(PRPosterPathModelObjectCache *)&v44 init];
  if (!v5)
  {
LABEL_8:
    v21 = v5;
    goto LABEL_9;
  }

  identity = [pathCopy identity];
  objc_storeWeak(&v5->_identity, identity);

  role = [pathCopy role];
  role = v5->_role;
  v5->_role = role;

  containerURL = [pathCopy containerURL];
  pathURL = v5->_pathURL;
  v5->_pathURL = containerURL;

  instanceURL = [pathCopy instanceURL];
  pathInstanceURL = v5->_pathInstanceURL;
  v5->_pathInstanceURL = instanceURL;

  contentsURL = [pathCopy contentsURL];
  pathContentsURL = v5->_pathContentsURL;
  v5->_pathContentsURL = contentsURL;

  identifierURL = [pathCopy identifierURL];
  pathIdentifierURL = v5->_pathIdentifierURL;
  v5->_pathIdentifierURL = identifierURL;

  supplementURL = [pathCopy supplementURL];
  pathSupplementURL = v5->_pathSupplementURL;
  v5->_pathSupplementURL = supplementURL;

  path = [(NSURL *)v5->_pathInstanceURL path];
  v20 = [path containsString:@"_STAGED_"];

  if ((v20 & 1) == 0)
  {
    v39 = MEMORY[0x1E696AEC0];
    WeakRetained = objc_loadWeakRetained(&v5->_identity);
    provider = [WeakRetained provider];
    pathExtension = [provider pathExtension];
    v41 = objc_loadWeakRetained(&v5->_identity);
    [v41 type];
    v35 = NSStringFromPFServerPosterType();
    v40 = objc_loadWeakRetained(&v5->_identity);
    descriptorIdentifier = [v40 descriptorIdentifier];
    v38 = objc_loadWeakRetained(&v5->_identity);
    posterUUID = [v38 posterUUID];
    uUIDString = [posterUUID UUIDString];
    v23 = [uUIDString substringToIndex:7];
    v24 = objc_loadWeakRetained(&v5->_identity);
    version = [v24 version];
    v26 = objc_loadWeakRetained(&v5->_identity);
    supplement = [v26 supplement];
    v28 = [(NSString *)v5->_role stringByReplacingOccurrencesOfString:@"PRPosterRole" withString:&stru_1F1C13D90];
    v29 = [v39 stringWithFormat:@"%@:%@:%@:%@:%llu_%llu:%@", pathExtension, v35, descriptorIdentifier, v23, version, supplement, v28];
    logPreamble = v5->_logPreamble;
    v5->_logPreamble = v29;

    v31 = PRLogModel();
    LODWORD(uUIDString) = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);

    if (uUIDString)
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  userInfoLoadError = selfCopy->_userInfoLoadError;
  selfCopy->_userInfoLoadError = 0;

  userInfo = selfCopy->_userInfo;
  selfCopy->_userInfo = 0;

  titleStyleConfigurationLoadError = selfCopy->_titleStyleConfigurationLoadError;
  selfCopy->_titleStyleConfigurationLoadError = 0;

  titleStyleConfiguration = selfCopy->_titleStyleConfiguration;
  selfCopy->_titleStyleConfiguration = 0;

  renderingConfigurationLoadError = selfCopy->_renderingConfigurationLoadError;
  selfCopy->_renderingConfigurationLoadError = 0;

  renderingConfiguration = selfCopy->_renderingConfiguration;
  selfCopy->_renderingConfiguration = 0;

  configurableOptionsLoadError = selfCopy->_configurableOptionsLoadError;
  selfCopy->_configurableOptionsLoadError = 0;

  configurableOptions = selfCopy->_configurableOptions;
  selfCopy->_configurableOptions = 0;

  homeScreenConfigurationLoadError = selfCopy->_homeScreenConfigurationLoadError;
  selfCopy->_homeScreenConfigurationLoadError = 0;

  homeScreenConfiguration = selfCopy->_homeScreenConfiguration;
  selfCopy->_homeScreenConfiguration = 0;

  focusConfigurationLoadError = selfCopy->_focusConfigurationLoadError;
  selfCopy->_focusConfigurationLoadError = 0;

  focusConfiguration = selfCopy->_focusConfiguration;
  selfCopy->_focusConfiguration = 0;

  complicationLayoutLoadError = selfCopy->_complicationLayoutLoadError;
  selfCopy->_complicationLayoutLoadError = 0;

  complicationLayout = selfCopy->_complicationLayout;
  selfCopy->_complicationLayout = 0;

  colorVariationsConfigurationLoadError = selfCopy->_colorVariationsConfigurationLoadError;
  selfCopy->_colorVariationsConfigurationLoadError = 0;

  colorVariationsConfiguration = selfCopy->_colorVariationsConfiguration;
  selfCopy->_colorVariationsConfiguration = 0;

  quickActionsConfigurationLoadError = selfCopy->_quickActionsConfigurationLoadError;
  selfCopy->_quickActionsConfigurationLoadError = 0;

  quickActionsConfiguration = selfCopy->_quickActionsConfiguration;
  selfCopy->_quickActionsConfiguration = 0;

  suggestionMetadataLoadError = selfCopy->_suggestionMetadataLoadError;
  selfCopy->_suggestionMetadataLoadError = 0;

  suggestionMetadata = selfCopy->_suggestionMetadata;
  selfCopy->_suggestionMetadata = 0;

  otherMetadataLoadError = selfCopy->_otherMetadataLoadError;
  selfCopy->_otherMetadataLoadError = 0;

  otherMetadata = selfCopy->_otherMetadata;
  selfCopy->_otherMetadata = 0;

  galleryOptionsLoadError = selfCopy->_galleryOptionsLoadError;
  selfCopy->_galleryOptionsLoadError = 0;

  galleryOptions = selfCopy->_galleryOptions;
  selfCopy->_galleryOptions = 0;

  ambientConfigurationLoadError = selfCopy->_ambientConfigurationLoadError;
  selfCopy->_ambientConfigurationLoadError = 0;

  ambientConfiguration = selfCopy->_ambientConfiguration;
  selfCopy->_ambientConfiguration = 0;

  ambientWidgetLayoutLoadError = selfCopy->_ambientWidgetLayoutLoadError;
  selfCopy->_ambientWidgetLayoutLoadError = 0;

  ambientWidgetLayout = selfCopy->_ambientWidgetLayout;
  selfCopy->_ambientWidgetLayout = 0;

  objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_configuredProperties)
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
    if ([(NSString *)selfCopy->_role isEqual:@"PRPosterRoleAmbient"])
    {
      v6 = [PRPosterConfiguredProperties alloc];
      ambientConfiguration = [(PRPosterPathModelObjectCache *)selfCopy ambientConfiguration];
      ambientWidgetLayout = [(PRPosterPathModelObjectCache *)selfCopy ambientWidgetLayout];
      otherMetadata = [(PRPosterPathModelObjectCache *)selfCopy otherMetadata];
      userInfo = [(PRPosterPathModelObjectCache *)selfCopy userInfo];
      v10 = [(PRPosterConfiguredProperties *)v6 initWithAmbientConfiguration:ambientConfiguration widgetLayout:ambientWidgetLayout otherMetadata:otherMetadata userInfo:userInfo];
      configuredProperties = selfCopy->_configuredProperties;
      selfCopy->_configuredProperties = v10;
    }

    else
    {
      v23 = [PRPosterConfiguredProperties alloc];
      ambientConfiguration = [(PRPosterPathModelObjectCache *)selfCopy titleStyleConfiguration];
      ambientWidgetLayout = [(PRPosterPathModelObjectCache *)selfCopy focusConfiguration];
      otherMetadata = [(PRPosterPathModelObjectCache *)selfCopy complicationLayout];
      userInfo = [(PRPosterPathModelObjectCache *)selfCopy renderingConfiguration];
      configuredProperties = [(PRPosterPathModelObjectCache *)selfCopy homeScreenConfiguration];
      colorVariationsConfiguration = [(PRPosterPathModelObjectCache *)selfCopy colorVariationsConfiguration];
      quickActionsConfiguration = [(PRPosterPathModelObjectCache *)selfCopy quickActionsConfiguration];
      suggestionMetadata = [(PRPosterPathModelObjectCache *)selfCopy suggestionMetadata];
      otherMetadata2 = [(PRPosterPathModelObjectCache *)selfCopy otherMetadata];
      userInfo2 = [(PRPosterPathModelObjectCache *)selfCopy userInfo];
      v17 = [(PRPosterConfiguredProperties *)v23 initWithTitleStyleConfiguration:ambientConfiguration focusConfiguration:ambientWidgetLayout complicationLayout:otherMetadata renderingConfiguration:userInfo homeScreenConfiguration:configuredProperties colorVariationsConfiguration:colorVariationsConfiguration quickActionsConfiguration:quickActionsConfiguration suggestionMetadata:suggestionMetadata otherMetadata:otherMetadata2 userInfo:userInfo2];
      v18 = selfCopy->_configuredProperties;
      selfCopy->_configuredProperties = v17;
    }

    v19 = PRLogModel();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

    if (!v20)
    {
      goto LABEL_15;
    }

    if (selfCopy->_configuredProperties)
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
  v21 = selfCopy->_configuredProperties;
  objc_sync_exit(selfCopy);

  return v21;
}

- (void)resetConfiguredProperties
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(self + 56);
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
  identity = [(PRPosterPathModelObjectCache *)self identity];
  v5 = [v3 appendObject:identity withName:@"identity"];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__PRPosterPathModelObjectCache_description__block_invoke;
  v16[3] = &unk_1E7843070;
  v6 = v3;
  v17 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:@"cached properties" multilinePrefix:@"\n" block:v16];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __43__PRPosterPathModelObjectCache_description__block_invoke_2;
  v13 = &unk_1E7843070;
  v14 = v6;
  selfCopy2 = self;
  v7 = v6;
  [v7 appendBodySectionWithName:@"cache property errors" multilinePrefix:@"\n" block:&v10];
  build = [v7 build];

  return build;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_titleStyleConfigurationLoadError)
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

  else if (selfCopy->_titleStyleConfiguration)
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

    v7 = selfCopy->_titleStyleConfiguration;
  }

  else
  {
    v11 = [PRPosterPathUtilities titleStyleConfigurationURLForPathInstanceURL:selfCopy->_pathInstanceURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:1 error:&v21];
    v13 = v21;
    v14 = v21;
    titleStyleConfiguration = selfCopy->_titleStyleConfiguration;
    selfCopy->_titleStyleConfiguration = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_titleStyleConfiguration)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_titleStyleConfigurationLoadError, v13);
    }

    v7 = selfCopy->_titleStyleConfiguration;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)resetTitleStyleConfiguration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  titleStyleConfiguration = selfCopy->_titleStyleConfiguration;
  selfCopy->_titleStyleConfiguration = 0;

  titleStyleConfigurationLoadError = selfCopy->_titleStyleConfigurationLoadError;
  selfCopy->_titleStyleConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterRenderingConfiguration)renderingConfiguration
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_renderingConfigurationLoadError)
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

  else if (selfCopy->_renderingConfiguration)
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

    v7 = selfCopy->_renderingConfiguration;
  }

  else
  {
    v11 = [PRPosterPathUtilities renderingConfigurationURLForPathInstanceURL:selfCopy->_pathInstanceURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:1 error:&v21];
    v13 = v21;
    v14 = v21;
    renderingConfiguration = selfCopy->_renderingConfiguration;
    selfCopy->_renderingConfiguration = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_renderingConfiguration)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_renderingConfigurationLoadError, v13);
    }

    v7 = selfCopy->_renderingConfiguration;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)resetRenderingConfiguration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  renderingConfiguration = selfCopy->_renderingConfiguration;
  selfCopy->_renderingConfiguration = 0;

  renderingConfigurationLoadError = selfCopy->_renderingConfigurationLoadError;
  selfCopy->_renderingConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterConfigurableOptions)configurableOptions
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_configurableOptionsLoadError)
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

  else if (selfCopy->_configurableOptions)
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

    v7 = selfCopy->_configurableOptions;
  }

  else
  {
    v11 = [PRPosterPathUtilities configurableOptionsURLForContentsURL:selfCopy->_pathContentsURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:1 error:&v21];
    v13 = v21;
    v14 = v21;
    configurableOptions = selfCopy->_configurableOptions;
    selfCopy->_configurableOptions = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_configurableOptions)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_configurableOptionsLoadError, v13);
    }

    v7 = selfCopy->_configurableOptions;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)resetConfigurableOptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  configurableOptions = selfCopy->_configurableOptions;
  selfCopy->_configurableOptions = 0;

  configurableOptionsLoadError = selfCopy->_configurableOptionsLoadError;
  selfCopy->_configurableOptionsLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (id)homeScreenConfigurationOrError:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_homeScreenConfigurationLoadError = &selfCopy->_homeScreenConfigurationLoadError;
  if (selfCopy->_homeScreenConfigurationLoadError)
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

    if (error && ([*p_homeScreenConfigurationLoadError pf_isFileNotFoundError] & 1) == 0)
    {
      v14 = [*p_homeScreenConfigurationLoadError copy];
      v10 = 0;
      *error = v14;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_37;
  }

  if (selfCopy->_homeScreenConfiguration)
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

    v10 = selfCopy->_homeScreenConfiguration;
    goto LABEL_37;
  }

  v15 = [PRPosterPathUtilities homeScreenConfigurationURLForSupplementURL:selfCopy->_pathSupplementURL];
  v35 = 0;
  v16 = [PRPosterPathUtilities loadUserObjectForURL:v15 expectedClass:objc_opt_class() strict:0 error:&v35];
  v17 = v35;
  homeScreenConfiguration = selfCopy->_homeScreenConfiguration;
  selfCopy->_homeScreenConfiguration = v16;

  if (selfCopy->_homeScreenConfiguration)
  {
    v19 = 0;
  }

  else
  {
    v20 = [PRPosterPathUtilities oldHomeScreenConfigurationURLForIdentifierURL:selfCopy->_pathIdentifierURL];
    v34 = 0;
    v21 = [PRPosterPathUtilities loadUserObjectForURL:v20 expectedClass:objc_opt_class() strict:0 error:&v34];
    v19 = v34;
    v22 = selfCopy->_homeScreenConfiguration;
    selfCopy->_homeScreenConfiguration = v21;
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
  if (!selfCopy->_homeScreenConfiguration)
  {
    v28 = PRLogModel();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);

    if (v29)
    {
      v30 = PRLogModel();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        logPreamble = selfCopy->_logPreamble;
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
    objc_storeStrong(&selfCopy->_homeScreenConfigurationLoadError, v23);
  }

  v10 = selfCopy->_homeScreenConfiguration;

LABEL_37:
  objc_sync_exit(selfCopy);

  return v10;
}

- (void)resetHomeScreenConfiguration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  homeScreenConfiguration = selfCopy->_homeScreenConfiguration;
  selfCopy->_homeScreenConfiguration = 0;

  homeScreenConfigurationLoadError = selfCopy->_homeScreenConfigurationLoadError;
  selfCopy->_homeScreenConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterFocusConfiguration)focusConfiguration
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_focusConfigurationLoadError)
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

  else if (selfCopy->_focusConfiguration)
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

    v7 = selfCopy->_focusConfiguration;
  }

  else
  {
    v11 = [PRPosterPathUtilities focusConfigurationURLForIdentifierURL:selfCopy->_pathIdentifierURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    focusConfiguration = selfCopy->_focusConfiguration;
    selfCopy->_focusConfiguration = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_focusConfiguration)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_focusConfigurationLoadError, v13);
    }

    v7 = selfCopy->_focusConfiguration;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)resetFocusConfiguration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  focusConfiguration = selfCopy->_focusConfiguration;
  selfCopy->_focusConfiguration = 0;

  focusConfigurationLoadError = selfCopy->_focusConfigurationLoadError;
  selfCopy->_focusConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterComplicationLayout)complicationLayout
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_complicationLayoutLoadError)
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

  else if (selfCopy->_complicationLayout)
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

    v7 = selfCopy->_complicationLayout;
  }

  else
  {
    v11 = [PRPosterPathUtilities complicationsLayoutURLForInstanceURL:selfCopy->_pathInstanceURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    complicationLayout = selfCopy->_complicationLayout;
    selfCopy->_complicationLayout = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_complicationLayout)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_complicationLayoutLoadError, v13);
    }

    v7 = selfCopy->_complicationLayout;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)resetComplicationLayout
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  complicationLayout = selfCopy->_complicationLayout;
  selfCopy->_complicationLayout = 0;

  complicationLayoutLoadError = selfCopy->_complicationLayoutLoadError;
  selfCopy->_complicationLayoutLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterColorVariationsConfiguration)colorVariationsConfiguration
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_colorVariationsConfigurationLoadError)
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

  else if (selfCopy->_colorVariationsConfiguration)
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

    v7 = selfCopy->_colorVariationsConfiguration;
  }

  else
  {
    v11 = [PRPosterPathUtilities colorVariationsConfigurationURLForInstanceURL:selfCopy->_pathInstanceURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:1 error:&v21];
    v13 = v21;
    v14 = v21;
    colorVariationsConfiguration = selfCopy->_colorVariationsConfiguration;
    selfCopy->_colorVariationsConfiguration = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_colorVariationsConfiguration)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_colorVariationsConfigurationLoadError, v13);
    }

    v7 = selfCopy->_colorVariationsConfiguration;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)resetColorVariationsConfiguration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  colorVariationsConfiguration = selfCopy->_colorVariationsConfiguration;
  selfCopy->_colorVariationsConfiguration = 0;

  colorVariationsConfigurationLoadError = selfCopy->_colorVariationsConfigurationLoadError;
  selfCopy->_colorVariationsConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterQuickActionsConfiguration)quickActionsConfiguration
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_quickActionsConfigurationLoadError)
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

  else if (selfCopy->_quickActionsConfiguration)
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

    v7 = selfCopy->_quickActionsConfiguration;
  }

  else
  {
    v11 = [PRPosterPathUtilities quickActionsConfigurationURLForInstanceURL:selfCopy->_pathInstanceURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    quickActionsConfiguration = selfCopy->_quickActionsConfiguration;
    selfCopy->_quickActionsConfiguration = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_quickActionsConfiguration)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_quickActionsConfigurationLoadError, v13);
    }

    v7 = selfCopy->_quickActionsConfiguration;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)resetQuickActionsConfiguration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  quickActionsConfiguration = selfCopy->_quickActionsConfiguration;
  selfCopy->_quickActionsConfiguration = 0;

  quickActionsConfigurationLoadError = selfCopy->_quickActionsConfigurationLoadError;
  selfCopy->_quickActionsConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterSuggestionMetadata)suggestionMetadata
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_suggestionMetadataLoadError)
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

  else if (selfCopy->_suggestionMetadata)
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

    v7 = selfCopy->_suggestionMetadata;
  }

  else
  {
    v11 = [PRPosterPathUtilities suggestionMetadataURLForIdentifierURL:selfCopy->_pathIdentifierURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    suggestionMetadata = selfCopy->_suggestionMetadata;
    selfCopy->_suggestionMetadata = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_suggestionMetadata)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_suggestionMetadataLoadError, v13);
    }

    v7 = selfCopy->_suggestionMetadata;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)resetSuggestionMetadata
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  suggestionMetadata = selfCopy->_suggestionMetadata;
  selfCopy->_suggestionMetadata = 0;

  suggestionMetadataLoadError = selfCopy->_suggestionMetadataLoadError;
  selfCopy->_suggestionMetadataLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterMetadata)otherMetadata
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_otherMetadataLoadError)
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

  else if (selfCopy->_otherMetadata)
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

    v7 = selfCopy->_otherMetadata;
  }

  else
  {
    v11 = [PRPosterPathUtilities otherMetadataURLForContentsURL:selfCopy->_pathContentsURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:1 error:&v21];
    v13 = v21;
    v14 = v21;
    otherMetadata = selfCopy->_otherMetadata;
    selfCopy->_otherMetadata = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_otherMetadata)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_otherMetadataLoadError, v13);
    }

    v7 = selfCopy->_otherMetadata;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)resetOtherMetadata
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  otherMetadata = selfCopy->_otherMetadata;
  selfCopy->_otherMetadata = 0;

  otherMetadataLoadError = selfCopy->_otherMetadataLoadError;
  selfCopy->_otherMetadataLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterDescriptorGalleryOptions)galleryOptions
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_galleryOptionsLoadError)
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

  else if (selfCopy->_galleryOptions)
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

    v7 = selfCopy->_galleryOptions;
  }

  else
  {
    v11 = [PRPosterPathUtilities descriptorGalleryOptionsURLForContentsURL:selfCopy->_pathContentsURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    galleryOptions = selfCopy->_galleryOptions;
    selfCopy->_galleryOptions = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_galleryOptions)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_galleryOptionsLoadError, v13);
    }

    v7 = selfCopy->_galleryOptions;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)resetGalleryOptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  galleryOptions = selfCopy->_galleryOptions;
  selfCopy->_galleryOptions = 0;

  galleryOptionsLoadError = selfCopy->_galleryOptionsLoadError;
  selfCopy->_galleryOptionsLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (ATXPosterDescriptorGalleryOptions)proactiveGalleryOptions
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_proactiveGalleryOptionsLoadError)
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

  else if (selfCopy->_proactiveGalleryOptions)
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

    v7 = selfCopy->_proactiveGalleryOptions;
  }

  else
  {
    v11 = [PRPosterPathUtilities proactiveGalleryOptionsURLForContentsURL:selfCopy->_pathContentsURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    proactiveGalleryOptions = selfCopy->_proactiveGalleryOptions;
    selfCopy->_proactiveGalleryOptions = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_proactiveGalleryOptions)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_proactiveGalleryOptionsLoadError, v13);
    }

    v7 = selfCopy->_proactiveGalleryOptions;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)resetProactiveGalleryOptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  proactiveGalleryOptions = selfCopy->_proactiveGalleryOptions;
  selfCopy->_proactiveGalleryOptions = 0;

  proactiveGalleryOptionsLoadError = selfCopy->_proactiveGalleryOptionsLoadError;
  selfCopy->_proactiveGalleryOptionsLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterAmbientConfiguration)ambientConfiguration
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_ambientConfigurationLoadError)
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

  else if (selfCopy->_ambientConfiguration)
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

    v7 = selfCopy->_ambientConfiguration;
  }

  else
  {
    v11 = [PRPosterPathUtilities ambientConfigurationURLForContentsURL:selfCopy->_pathContentsURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    ambientConfiguration = selfCopy->_ambientConfiguration;
    selfCopy->_ambientConfiguration = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_ambientConfiguration)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_ambientConfigurationLoadError, v13);
    }

    v7 = selfCopy->_ambientConfiguration;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)resetAmbientConfiguration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  ambientConfiguration = selfCopy->_ambientConfiguration;
  selfCopy->_ambientConfiguration = 0;

  ambientConfigurationLoadError = selfCopy->_ambientConfigurationLoadError;
  selfCopy->_ambientConfigurationLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
}

- (PRPosterAmbientWidgetLayout)ambientWidgetLayout
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_ambientWidgetLayoutLoadError)
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

  else if (selfCopy->_ambientWidgetLayout)
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

    v7 = selfCopy->_ambientWidgetLayout;
  }

  else
  {
    v11 = [PRPosterPathUtilities ambientWidgetLayoutURLForInstanceURL:selfCopy->_pathInstanceURL];
    v21 = 0;
    v12 = [PRPosterPathUtilities loadUserObjectForURL:v11 expectedClass:objc_opt_class() strict:0 error:&v21];
    v13 = v21;
    v14 = v21;
    ambientWidgetLayout = selfCopy->_ambientWidgetLayout;
    selfCopy->_ambientWidgetLayout = v12;

    v16 = PRLogModel();
    LODWORD(v12) = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      if (selfCopy->_ambientWidgetLayout)
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
          logPreamble = selfCopy->_logPreamble;
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
      objc_storeStrong(&selfCopy->_ambientWidgetLayoutLoadError, v13);
    }

    v7 = selfCopy->_ambientWidgetLayout;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)resetAmbientWidgetLayout
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  ambientWidgetLayout = selfCopy->_ambientWidgetLayout;
  selfCopy->_ambientWidgetLayout = 0;

  ambientWidgetLayoutLoadError = selfCopy->_ambientWidgetLayoutLoadError;
  selfCopy->_ambientWidgetLayoutLoadError = 0;

  configuredProperties = selfCopy->_configuredProperties;
  selfCopy->_configuredProperties = 0;

  objc_sync_exit(selfCopy);
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