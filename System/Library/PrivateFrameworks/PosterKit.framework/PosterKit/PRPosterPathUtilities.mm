@interface PRPosterPathUtilities
+ (BOOL)removeAmbientConfigurationForPath:(id)path error:(id *)error;
+ (BOOL)removeAmbientWidgetLayout:(id)layout error:(id *)error;
+ (BOOL)removeColorVariationsConfigurationForPath:(id)path error:(id *)error;
+ (BOOL)removeComplicationLayoutForPath:(id)path error:(id *)error;
+ (BOOL)removeConfigurableOptionsForPath:(id)path error:(id *)error;
+ (BOOL)removeFocusConfigurationForPath:(id)path error:(id *)error;
+ (BOOL)removeOtherMetadataForPath:(id)path error:(id *)error;
+ (BOOL)removePosterDescriptorGalleryOptions:(id)options error:(id *)error;
+ (BOOL)removeProactiveGalleryOptions:(id)options error:(id *)error;
+ (BOOL)removeQuickActionsConfigurationForPath:(id)path error:(id *)error;
+ (BOOL)removeRenderingConfigurationForPath:(id)path error:(id *)error;
+ (BOOL)removeSuggestionMetadataForPath:(id)path error:(id *)error;
+ (BOOL)removeTitleStyleConfigurationForPath:(id)path error:(id *)error;
+ (BOOL)removeUserInfo:(id)info error:(id *)error;
+ (BOOL)storeAmbientConfigurationForPath:(id)path ambientConfiguration:(id)configuration error:(id *)error;
+ (BOOL)storeAmbientWidgetLayoutToPath:(id)path posterAmbientWidgetLayout:(id)layout error:(id *)error;
+ (BOOL)storeColorVariationsConfigurationForPath:(id)path colorVariationsConfiguration:(id)configuration error:(id *)error;
+ (BOOL)storeComplicationLayoutForPath:(id)path complicationLayout:(id)layout error:(id *)error;
+ (BOOL)storeConfigurableOptionsForPath:(id)path configurableOptions:(id)options error:(id *)error;
+ (BOOL)storeConfiguredPropertiesForPath:(id)path configuredProperties:(id)properties error:(id *)error;
+ (BOOL)storeFocusConfigurationForPath:(id)path focusConfiguration:(id)configuration error:(id *)error;
+ (BOOL)storeHomeScreenConfigurationForPath:(id)path homeScreenConfiguration:(id)configuration error:(id *)error;
+ (BOOL)storeOtherMetadataForPath:(id)path otherMetadata:(id)metadata error:(id *)error;
+ (BOOL)storePosterDescriptorGalleryOptions:(id)options posterDescriptorGalleryOptions:(id)galleryOptions error:(id *)error;
+ (BOOL)storeProactiveGalleryOptionsToPath:(id)path proactiveGalleryOptions:(id)options error:(id *)error;
+ (BOOL)storeQuickActionsConfigurationForPath:(id)path quickActionsConfiguration:(id)configuration error:(id *)error;
+ (BOOL)storeRenderingConfiguration:(id)configuration forPath:(id)path error:(id *)error;
+ (BOOL)storeSuggestionMetadataForPath:(id)path suggestionMetadata:(id)metadata error:(id *)error;
+ (BOOL)storeTitleStyleConfigurationForPath:(id)path titleStyleConfiguration:(id)configuration error:(id *)error;
+ (BOOL)storeUserInfoToPath:(id)path userInfo:(id)info error:(id *)error;
+ (BOOL)storeUserObject:(id)object path:(id)path atURL:(id)l clearCache:(BOOL)cache error:(id *)error;
+ (id)ambientConfigurationURLForPath:(id)path;
+ (id)ambientWidgetLayoutURLForPath:(id)path;
+ (id)colorVariationsConfigurationURLForPath:(id)path;
+ (id)complicationsLayoutURLForPath:(id)path;
+ (id)configurableOptionsURLForPath:(id)path;
+ (id)depthEffectConfigurationURLForPath:(id)path;
+ (id)descriptorGalleryOptionsURLForPath:(id)path;
+ (id)expectedConfigurationFilesForPath:(id)path;
+ (id)focusConfigurationURLForPath:(id)path;
+ (id)homeScreenConfigurationURLForPath:(id)path;
+ (id)loadAmbientConfigurationForPath:(id)path error:(id *)error;
+ (id)loadAmbientWidgetLayoutForPath:(id)path error:(id *)error;
+ (id)loadColorVariationsConfigurationForPath:(id)path error:(id *)error;
+ (id)loadComplicationLayoutForPath:(id)path error:(id *)error;
+ (id)loadConfigurableOptionsForPath:(id)path error:(id *)error;
+ (id)loadConfiguredPropertiesForPath:(id)path error:(id *)error;
+ (id)loadFocusConfigurationForPath:(id)path error:(id *)error;
+ (id)loadHomeScreenConfigurationForPath:(id)path error:(id *)error;
+ (id)loadOtherMetadataForPath:(id)path error:(id *)error;
+ (id)loadPosterDescriptorGalleryOptionsForPath:(id)path error:(id *)error;
+ (id)loadPosterDescriptorIdentifierForPathAtURL:(id)l type:(int64_t)type posterUUID:(id)d;
+ (id)loadProactiveGalleryOptions:(id)options error:(id *)error;
+ (id)loadQuickActionsConfigurationForPath:(id)path error:(id *)error;
+ (id)loadRenderingConfigurationForPath:(id)path error:(id *)error;
+ (id)loadSuggestionMetadataForPath:(id)path error:(id *)error;
+ (id)loadTitleStyleConfigurationForPath:(id)path error:(id *)error;
+ (id)loadUserInfoForPath:(id)path error:(id *)error;
+ (id)loadUserInfoForURL:(id)l error:(id *)error;
+ (id)loadUserObjectForURL:(id)l expectedClass:(Class)class strict:(BOOL)strict error:(id *)error;
+ (id)oldHomeScreenConfigurationURLForPath:(id)path;
+ (id)otherMetadataURLForPath:(id)path;
+ (id)proactiveGalleryOptionsURLForPath:(id)path;
+ (id)quickActionsConfigurationURLForPath:(id)path;
+ (id)renderingConfigurationURLForPath:(id)path;
+ (id)suggestionMetadataURLForPath:(id)path;
+ (id)titleStyleConfigurationURLForPath:(id)path;
+ (id)userInfoURLForPath:(id)path;
@end

@implementation PRPosterPathUtilities

+ (id)expectedConfigurationFilesForPath:(id)path
{
  pathCopy = path;
  v5 = objc_opt_new();
  v6 = [self descriptorGalleryOptionsURLForPath:pathCopy];
  if ([v6 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v6];
  }

  v7 = [self otherMetadataURLForPath:pathCopy];
  if ([v7 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v7];
  }

  v8 = [self suggestionMetadataURLForPath:pathCopy];
  if ([v8 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v8];
  }

  v9 = [self colorVariationsConfigurationURLForPath:pathCopy];
  if ([v9 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v9];
  }

  v10 = [self complicationsLayoutURLForPath:pathCopy];
  if ([v10 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v10];
  }

  v11 = [self focusConfigurationURLForPath:pathCopy];
  if ([v11 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v11];
  }

  v12 = [self homeScreenConfigurationURLForPath:pathCopy];
  if ([v12 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v12];
  }

  v29 = v7;
  v13 = [self oldHomeScreenConfigurationURLForPath:pathCopy];
  if ([v13 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v13];
  }

  v28 = v8;
  v14 = [self renderingConfigurationURLForPath:{pathCopy, v13}];
  if ([v14 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v14];
  }

  v27 = v9;
  v15 = [self depthEffectConfigurationURLForPath:pathCopy];
  if ([v15 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v15];
  }

  v26 = v10;
  v16 = [self titleStyleConfigurationURLForPath:pathCopy];
  if ([v16 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v16];
  }

  v25 = v11;
  v17 = [self ambientConfigurationURLForPath:pathCopy];
  if ([v17 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v17];
  }

  v24 = v12;
  v18 = [self ambientWidgetLayoutURLForPath:pathCopy];
  if ([v18 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v18];
  }

  v30 = v6;
  v19 = [self userInfoURLForPath:pathCopy];
  if ([v19 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v19];
  }

  v20 = [self configurableOptionsURLForPath:pathCopy];
  if ([v20 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v20];
  }

  v21 = [v5 copy];

  return v21;
}

+ (id)loadUserObjectForURL:(id)l expectedClass:(Class)class strict:(BOOL)strict error:(id *)error
{
  strictCopy = strict;
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (![lCopy checkResourceIsReachableAndReturnError:error])
  {
    v15 = 0;
    goto LABEL_15;
  }

  v10 = objc_autoreleasePoolPush();
  v22 = 0;
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:lCopy options:1 error:&v22];
  v12 = v22;
  if (v11)
  {
    v13 = MEMORY[0x1E696ACD0];
    v14 = [MEMORY[0x1E695DFD8] setWithObject:class];
    v20 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __73__PRPosterPathUtilities_loadUserObjectForURL_expectedClass_strict_error___block_invoke;
    v21[3] = &__block_descriptor_40_e27_v16__0__NSKeyedUnarchiver_8lu32l8;
    v21[4] = class;
    v15 = [v13 pf_unarchivedObjectOfClasses:v14 fromData:v11 strict:strictCopy classReplacementBlock:v21 error:&v20];
    v16 = v20;

    if (v15)
    {
      goto LABEL_11;
    }

    v17 = PRLogModel();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v24 = lCopy;
      v25 = 2112;
      classCopy2 = class;
      v27 = 2114;
      v28 = v16;
      _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "Unable to unarchive user object @ %@; expected class %@: %{public}@", buf, 0x20u);
    }

    v12 = v16;
  }

  else
  {
    v17 = PRLogModel();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v24 = lCopy;
      v25 = 2112;
      classCopy2 = class;
      v27 = 2114;
      v28 = v12;
      _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "Unable to load user object @ %@; expected class %@: %{public}@", buf, 0x20u);
    }
  }

  v15 = 0;
  v16 = v12;
LABEL_11:

  objc_autoreleasePoolPop(v10);
  if (error && v16)
  {
    v18 = v16;
    *error = v16;
  }

LABEL_15:

  return v15;
}

void __73__PRPosterPathUtilities_loadUserObjectForURL_expectedClass_strict_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) performClassReplacementForKeyedUnarchiver:v3];
  }
}

+ (BOOL)storeUserObject:(id)object path:(id)path atURL:(id)l clearCache:(BOOL)cache error:(id *)error
{
  cacheCopy = cache;
  v37 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  pathCopy = path;
  lCopy = l;
  if (cacheCopy)
  {
    [PRPosterPathModelObjectCache invalidateModelObjectCacheForPath:pathCopy];
  }

  v14 = PRLogModel();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v32 = objectCopy;
    v33 = 2112;
    v34 = pathCopy;
    v35 = 2112;
    v36 = lCopy;
    _os_log_debug_impl(&dword_1A8AA7000, v14, OS_LOG_TYPE_DEBUG, "Storing %@ for path %@ to URL '%@'", buf, 0x20u);
  }

  if (objectCopy)
  {
    v30 = 0;
    v15 = [pathCopy ensureContentsURLIsReachableAndReturnError:&v30];
    v16 = v30;
    v17 = v16;
    if (v15)
    {
      v29 = 0;
      v18 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:&v29];
      v19 = v29;
      v20 = v19;
      if (v19)
      {
        if (error)
        {
          v21 = v19;
          *error = v20;
        }

        v22 = PRLogModel();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          +[PRPosterPathUtilities storeUserObject:path:atURL:clearCache:error:];
        }

        v23 = 0;
      }

      else
      {
        v28 = 0;
        v23 = [v18 writeToURL:lCopy options:268435457 error:&v28];
        v22 = v28;
        v25 = PRLogModel();
        v26 = v25;
        if (v23)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v32 = objectCopy;
            v33 = 2112;
            v34 = pathCopy;
            v35 = 2112;
            v36 = lCopy;
            _os_log_debug_impl(&dword_1A8AA7000, v26, OS_LOG_TYPE_DEBUG, "Successfuly stored %@ for path %@ to URL '%@'", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          +[PRPosterPathUtilities storeUserObject:path:atURL:clearCache:error:];
        }
      }
    }

    else
    {
      if (error)
      {
        v24 = v16;
        *error = v17;
      }

      v20 = PRLogModel();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        +[PRPosterPathUtilities storeUserObject:path:atURL:clearCache:error:];
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (id)loadConfiguredPropertiesForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = objc_opt_new();
  v7 = [self loadComplicationLayoutForPath:pathCopy error:0];
  [v6 setComplicationLayout:v7];

  v8 = [self loadFocusConfigurationForPath:pathCopy error:0];
  [v6 setFocusConfiguration:v8];

  v9 = [self loadTitleStyleConfigurationForPath:pathCopy error:0];
  [v6 setTitleStyleConfiguration:v9];

  v10 = [self loadRenderingConfigurationForPath:pathCopy error:0];
  [v6 setRenderingConfiguration:v10];

  v11 = [self loadHomeScreenConfigurationForPath:pathCopy error:0];
  [v6 setHomeScreenConfiguration:v11];

  v12 = [self loadColorVariationsConfigurationForPath:pathCopy error:0];
  [v6 setColorVariationsConfiguration:v12];

  v13 = [self loadQuickActionsConfigurationForPath:pathCopy error:0];
  [v6 setQuickActionsConfiguration:v13];

  v14 = [self loadSuggestionMetadataForPath:pathCopy error:0];
  [v6 setSuggestionMetadata:v14];

  v15 = [self loadOtherMetadataForPath:pathCopy error:0];
  [v6 setOtherMetadata:v15];

  v16 = [self loadUserInfoForPath:pathCopy error:0];
  [v6 setUserInfo:v16];

  v17 = [self loadAmbientConfigurationForPath:pathCopy error:0];
  [v6 setAmbientConfiguration:v17];

  v18 = [self loadAmbientWidgetLayoutForPath:pathCopy error:0];

  [v6 setAmbientWidgetLayout:v18];

  return v6;
}

+ (BOOL)storeConfiguredPropertiesForPath:(id)path configuredProperties:(id)properties error:(id *)error
{
  pathCopy = path;
  propertiesCopy = properties;
  [PRPosterPathModelObjectCache invalidateModelObjectCacheForPath:pathCopy];
  complicationLayout = [propertiesCopy complicationLayout];
  if (complicationLayout && ![self storeComplicationLayoutForPath:pathCopy complicationLayout:complicationLayout error:error])
  {
    v25 = 0;
  }

  else
  {
    focusConfiguration = [propertiesCopy focusConfiguration];
    if (focusConfiguration && ![self storeFocusConfigurationForPath:pathCopy focusConfiguration:focusConfiguration error:error])
    {
      v25 = 0;
    }

    else
    {
      suggestionMetadata = [propertiesCopy suggestionMetadata];
      if (suggestionMetadata && ![self storeSuggestionMetadataForPath:pathCopy suggestionMetadata:suggestionMetadata error:error])
      {
        v25 = 0;
      }

      else
      {
        otherMetadata = [propertiesCopy otherMetadata];
        if (otherMetadata && ![self storeOtherMetadataForPath:pathCopy otherMetadata:otherMetadata error:error])
        {
          v25 = 0;
        }

        else
        {
          homeScreenConfiguration = [propertiesCopy homeScreenConfiguration];
          if (homeScreenConfiguration && ![self storeHomeScreenConfigurationForPath:pathCopy homeScreenConfiguration:homeScreenConfiguration error:error])
          {
            v25 = 0;
          }

          else
          {
            titleStyleConfiguration = [propertiesCopy titleStyleConfiguration];
            if (titleStyleConfiguration && ![self storeTitleStyleConfigurationForPath:pathCopy titleStyleConfiguration:titleStyleConfiguration error:error])
            {
              v25 = 0;
            }

            else
            {
              v31 = titleStyleConfiguration;
              renderingConfiguration = [propertiesCopy renderingConfiguration];
              if (renderingConfiguration && ![self storeRenderingConfiguration:renderingConfiguration forPath:pathCopy error:error])
              {
                v25 = 0;
              }

              else
              {
                v30 = renderingConfiguration;
                colorVariationsConfiguration = [propertiesCopy colorVariationsConfiguration];
                if (colorVariationsConfiguration && ![self storeColorVariationsConfigurationForPath:pathCopy colorVariationsConfiguration:colorVariationsConfiguration error:error])
                {
                  v25 = 0;
                }

                else
                {
                  v29 = colorVariationsConfiguration;
                  quickActionsConfiguration = [propertiesCopy quickActionsConfiguration];
                  if (quickActionsConfiguration && ![self storeQuickActionsConfigurationForPath:pathCopy quickActionsConfiguration:quickActionsConfiguration error:error])
                  {
                    v25 = 0;
                  }

                  else
                  {
                    v28 = quickActionsConfiguration;
                    ambientConfiguration = [propertiesCopy ambientConfiguration];
                    if (ambientConfiguration && ![self storeAmbientConfigurationForPath:pathCopy ambientConfiguration:ambientConfiguration error:error])
                    {
                      v25 = 0;
                    }

                    else
                    {
                      v27 = ambientConfiguration;
                      ambientWidgetLayout = [propertiesCopy ambientWidgetLayout];
                      if (ambientWidgetLayout && ![self storeAmbientWidgetLayoutToPath:pathCopy posterAmbientWidgetLayout:ambientWidgetLayout error:error])
                      {
                        v25 = 0;
                      }

                      else
                      {
                        userInfo = [propertiesCopy userInfo];
                        v25 = 1;
                        if (userInfo)
                        {
                          selfCopy = self;
                          v23 = userInfo;
                          v24 = [selfCopy storeUserInfoToPath:pathCopy userInfo:userInfo error:error];
                          userInfo = v23;
                          if (!v24)
                          {
                            v25 = 0;
                          }
                        }
                      }

                      ambientConfiguration = v27;
                    }

                    quickActionsConfiguration = v28;
                  }

                  colorVariationsConfiguration = v29;
                }

                renderingConfiguration = v30;
              }

              titleStyleConfiguration = v31;
            }
          }
        }
      }
    }
  }

  return v25;
}

+ (id)titleStyleConfigurationURLForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isServerPosterPath])
  {
    instanceURL = [pathCopy instanceURL];
    v6 = [self titleStyleConfigurationURLForPathInstanceURL:instanceURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadTitleStyleConfigurationForPath:(id)path error:(id *)error
{
  v6 = [self titleStyleConfigurationURLForPath:path];
  v7 = objc_opt_self();
  v8 = [self loadUserObjectForURL:v6 expectedClass:v7 strict:1 error:error];

  return v8;
}

+ (BOOL)storeTitleStyleConfigurationForPath:(id)path titleStyleConfiguration:(id)configuration error:(id *)error
{
  pathCopy = path;
  configurationCopy = configuration;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetTitleStyleConfiguration];

  v12 = configurationCopy;
  if (v12)
  {
    NSClassFromString(&cfstr_Prpostertitles_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeTitleStyleConfigurationForPath:a2 titleStyleConfiguration:? error:?];
    }
  }

  v13 = [self titleStyleConfigurationURLForPath:pathCopy];
  v14 = [self storeUserObject:v12 path:pathCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (BOOL)removeTitleStyleConfigurationForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v7 resetTitleStyleConfiguration];

  v8 = [self titleStyleConfigurationURLForPath:pathCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:v8 error:error];

  return error;
}

+ (id)renderingConfigurationURLForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isServerPosterPath])
  {
    instanceURL = [pathCopy instanceURL];
    v6 = [self renderingConfigurationURLForPathInstanceURL:instanceURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)depthEffectConfigurationURLForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isServerPosterPath])
  {
    instanceURL = [pathCopy instanceURL];
    v5 = [instanceURL URLByAppendingPathComponent:@"com.apple.posterkit.provider.instance.depthEffectConfiguration.plist" isDirectory:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)loadRenderingConfigurationForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [self depthEffectConfigurationURLForPath:pathCopy];
  v8 = objc_opt_self();
  v9 = [self loadUserObjectForURL:v7 expectedClass:v8 strict:1 error:error];

  if (!v9)
  {
    v10 = [self renderingConfigurationURLForPath:pathCopy];

    v11 = objc_opt_self();
    v9 = [self loadUserObjectForURL:v10 expectedClass:v11 strict:1 error:error];

    v7 = v10;
  }

  return v9;
}

+ (BOOL)storeRenderingConfiguration:(id)configuration forPath:(id)path error:(id *)error
{
  configurationCopy = configuration;
  pathCopy = path;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetRenderingConfiguration];

  v12 = configurationCopy;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterrender.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeRenderingConfiguration:a2 forPath:? error:?];
    }
  }

  v13 = [self renderingConfigurationURLForPath:pathCopy];
  v14 = [self storeUserObject:v12 path:pathCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (BOOL)removeRenderingConfigurationForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v7 resetRenderingConfiguration];

  v8 = [self depthEffectConfigurationURLForPath:pathCopy];
  v9 = [self renderingConfigurationURLForPath:pathCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager removeItemAtURL:v8 error:0];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager2 removeItemAtURL:v9 error:error];

  return error;
}

+ (id)configurableOptionsURLForPath:(id)path
{
  contentsURL = [path contentsURL];
  v4 = [contentsURL URLByAppendingPathComponent:@".com.apple.posterkit.provider.contents.configurableOptions.plist" isDirectory:0];

  return v4;
}

+ (id)loadConfigurableOptionsForPath:(id)path error:(id *)error
{
  v6 = [self configurableOptionsURLForPath:path];
  v7 = objc_opt_self();
  v8 = [self loadUserObjectForURL:v6 expectedClass:v7 strict:1 error:error];

  return v8;
}

+ (BOOL)storeConfigurableOptionsForPath:(id)path configurableOptions:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetConfigurableOptions];

  v12 = optionsCopy;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterconfig_3.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeConfigurableOptionsForPath:a2 configurableOptions:? error:?];
    }
  }

  v13 = [self configurableOptionsURLForPath:pathCopy];
  v14 = [self storeUserObject:v12 path:pathCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (BOOL)removeConfigurableOptionsForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v7 resetConfigurableOptions];

  v8 = [self configurableOptionsURLForPath:pathCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:v8 error:error];

  return error;
}

+ (id)oldHomeScreenConfigurationURLForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isServerPosterPath])
  {
    identifierURL = [pathCopy identifierURL];
    v6 = [self oldHomeScreenConfigurationURLForIdentifierURL:identifierURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)homeScreenConfigurationURLForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isServerPosterPath])
  {
    supplementURL = [pathCopy supplementURL];
    v6 = [self homeScreenConfigurationURLForSupplementURL:supplementURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadHomeScreenConfigurationForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [self homeScreenConfigurationURLForPath:pathCopy];
  v8 = objc_opt_self();
  v9 = [self loadUserObjectForURL:v7 expectedClass:v8 strict:0 error:error];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [self oldHomeScreenConfigurationURLForPath:pathCopy];

    v12 = objc_opt_self();
    v10 = [self loadUserObjectForURL:v11 expectedClass:v12 strict:0 error:error];

    v7 = v11;
  }

  return v10;
}

+ (BOOL)storeHomeScreenConfigurationForPath:(id)path homeScreenConfiguration:(id)configuration error:(id *)error
{
  pathCopy = path;
  configurationCopy = configuration;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetHomeScreenConfiguration];

  v12 = configurationCopy;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterhomesc.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeHomeScreenConfigurationForPath:a2 homeScreenConfiguration:? error:?];
    }
  }

  v13 = [self homeScreenConfigurationURLForPath:pathCopy];
  v14 = [self storeUserObject:v12 path:pathCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (id)focusConfigurationURLForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isServerPosterPath])
  {
    identifierURL = [pathCopy identifierURL];
    v6 = [self focusConfigurationURLForIdentifierURL:identifierURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadFocusConfigurationForPath:(id)path error:(id *)error
{
  v6 = [self focusConfigurationURLForPath:path];
  v7 = objc_opt_self();
  v8 = [self loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:error];

  return v8;
}

+ (BOOL)storeFocusConfigurationForPath:(id)path focusConfiguration:(id)configuration error:(id *)error
{
  pathCopy = path;
  configurationCopy = configuration;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetFocusConfiguration];

  v12 = configurationCopy;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterfocusc.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeFocusConfigurationForPath:a2 focusConfiguration:? error:?];
    }
  }

  v13 = [self focusConfigurationURLForPath:pathCopy];
  v14 = [self storeUserObject:v12 path:pathCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (BOOL)removeFocusConfigurationForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v7 resetFocusConfiguration];

  v8 = [self focusConfigurationURLForPath:pathCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:v8 error:error];

  return error;
}

+ (id)complicationsLayoutURLForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isServerPosterPath])
  {
    instanceURL = [pathCopy instanceURL];
    v6 = [self complicationsLayoutURLForInstanceURL:instanceURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadComplicationLayoutForPath:(id)path error:(id *)error
{
  v6 = [self complicationsLayoutURLForPath:path];
  v7 = objc_opt_self();
  v8 = [self loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:error];

  return v8;
}

+ (BOOL)storeComplicationLayoutForPath:(id)path complicationLayout:(id)layout error:(id *)error
{
  pathCopy = path;
  layoutCopy = layout;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetComplicationLayout];

  v12 = layoutCopy;
  if (v12)
  {
    NSClassFromString(&cfstr_Prpostercompli.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeComplicationLayoutForPath:a2 complicationLayout:? error:?];
    }
  }

  v13 = [self complicationsLayoutURLForPath:pathCopy];
  v14 = [self storeUserObject:v12 path:pathCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (BOOL)removeComplicationLayoutForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v7 resetComplicationLayout];

  v8 = [self complicationsLayoutURLForPath:pathCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:v8 error:error];

  return error;
}

+ (id)colorVariationsConfigurationURLForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isServerPosterPath])
  {
    instanceURL = [pathCopy instanceURL];
    v6 = [self colorVariationsConfigurationURLForInstanceURL:instanceURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadColorVariationsConfigurationForPath:(id)path error:(id *)error
{
  v6 = [self colorVariationsConfigurationURLForPath:path];
  v7 = objc_opt_self();
  v8 = [self loadUserObjectForURL:v6 expectedClass:v7 strict:1 error:error];

  return v8;
}

+ (BOOL)storeColorVariationsConfigurationForPath:(id)path colorVariationsConfiguration:(id)configuration error:(id *)error
{
  pathCopy = path;
  configurationCopy = configuration;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetColorVariationsConfiguration];

  v12 = configurationCopy;
  if (v12)
  {
    NSClassFromString(&cfstr_Prpostercolorv.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeColorVariationsConfigurationForPath:a2 colorVariationsConfiguration:? error:?];
    }
  }

  v13 = [self colorVariationsConfigurationURLForPath:pathCopy];
  v14 = [self storeUserObject:v12 path:pathCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (BOOL)removeColorVariationsConfigurationForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v7 resetColorVariationsConfiguration];

  v8 = [self colorVariationsConfigurationURLForPath:pathCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:v8 error:error];

  return error;
}

+ (id)quickActionsConfigurationURLForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isServerPosterPath])
  {
    instanceURL = [pathCopy instanceURL];
    v6 = [self quickActionsConfigurationURLForInstanceURL:instanceURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadQuickActionsConfigurationForPath:(id)path error:(id *)error
{
  v6 = [self quickActionsConfigurationURLForPath:path];
  v7 = objc_opt_self();
  v8 = [self loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:error];

  return v8;
}

+ (BOOL)storeQuickActionsConfigurationForPath:(id)path quickActionsConfiguration:(id)configuration error:(id *)error
{
  pathCopy = path;
  configurationCopy = configuration;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetQuickActionsConfiguration];

  v12 = configurationCopy;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterquicka.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeQuickActionsConfigurationForPath:a2 quickActionsConfiguration:? error:?];
    }
  }

  v13 = [self quickActionsConfigurationURLForPath:pathCopy];
  v14 = [self storeUserObject:v12 path:pathCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (BOOL)removeQuickActionsConfigurationForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v7 resetQuickActionsConfiguration];

  v8 = [self quickActionsConfigurationURLForPath:pathCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:v8 error:error];

  return error;
}

+ (id)ambientConfigurationURLForPath:(id)path
{
  contentsURL = [path contentsURL];
  v5 = [self ambientConfigurationURLForContentsURL:contentsURL];

  return v5;
}

+ (id)loadAmbientConfigurationForPath:(id)path error:(id *)error
{
  v6 = [self ambientConfigurationURLForPath:path];
  v7 = objc_opt_self();
  v8 = [self loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:error];

  return v8;
}

+ (BOOL)storeAmbientConfigurationForPath:(id)path ambientConfiguration:(id)configuration error:(id *)error
{
  pathCopy = path;
  configurationCopy = configuration;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetAmbientConfiguration];

  v12 = configurationCopy;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterambien_1.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeAmbientConfigurationForPath:a2 ambientConfiguration:? error:?];
    }
  }

  v13 = [self ambientConfigurationURLForPath:pathCopy];
  v14 = [self storeUserObject:v12 path:pathCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (BOOL)removeAmbientConfigurationForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v7 resetAmbientConfiguration];

  v8 = [self ambientConfigurationURLForPath:pathCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:v8 error:error];

  return error;
}

+ (id)suggestionMetadataURLForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isServerPosterPath])
  {
    identifierURL = [pathCopy identifierURL];
    v6 = [self suggestionMetadataURLForIdentifierURL:identifierURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadSuggestionMetadataForPath:(id)path error:(id *)error
{
  v6 = [self suggestionMetadataURLForPath:path];
  v7 = objc_opt_self();
  v8 = [self loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:error];

  return v8;
}

+ (BOOL)storeSuggestionMetadataForPath:(id)path suggestionMetadata:(id)metadata error:(id *)error
{
  pathCopy = path;
  metadataCopy = metadata;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetSuggestionMetadata];

  v12 = metadataCopy;
  if (v12)
  {
    NSClassFromString(&cfstr_Prpostersugges.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeSuggestionMetadataForPath:a2 suggestionMetadata:? error:?];
    }
  }

  v13 = [self suggestionMetadataURLForPath:pathCopy];
  v14 = [self storeUserObject:v12 path:pathCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (BOOL)removeSuggestionMetadataForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v7 resetSuggestionMetadata];

  v8 = [self suggestionMetadataURLForPath:pathCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:v8 error:error];

  return error;
}

+ (id)loadPosterDescriptorIdentifierForPathAtURL:(id)l type:(int64_t)type posterUUID:(id)d
{
  v6 = [MEMORY[0x1E695DFF8] pf_posterPathIdentifierURLProviderURL:l type:type posterUUID:d];
  v7 = [v6 URLByAppendingPathComponent:@"com.apple.posterkit.provider.identifierURL.suggestionMetadata.plist" isDirectory:0];
  v8 = objc_opt_self();
  v9 = [self loadUserObjectForURL:v7 expectedClass:v8 strict:0 error:0];

  suggestedGalleryItem = [v9 suggestedGalleryItem];
  descriptorIdentifier = [suggestedGalleryItem descriptorIdentifier];
  stringByDeletingPathExtension = [descriptorIdentifier stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

+ (id)otherMetadataURLForPath:(id)path
{
  contentsURL = [path contentsURL];
  v5 = [self otherMetadataURLForContentsURL:contentsURL];

  return v5;
}

+ (id)loadOtherMetadataForPath:(id)path error:(id *)error
{
  v6 = [self otherMetadataURLForPath:path];
  v7 = objc_opt_self();
  v8 = [self loadUserObjectForURL:v6 expectedClass:v7 strict:1 error:error];

  return v8;
}

+ (BOOL)storeOtherMetadataForPath:(id)path otherMetadata:(id)metadata error:(id *)error
{
  pathCopy = path;
  metadataCopy = metadata;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetOtherMetadata];

  v12 = metadataCopy;
  if (v12)
  {
    NSClassFromString(&cfstr_Prpostermetada.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeOtherMetadataForPath:a2 otherMetadata:? error:?];
    }
  }

  v13 = [self otherMetadataURLForPath:pathCopy];
  v14 = [self storeUserObject:v12 path:pathCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (BOOL)removeOtherMetadataForPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v7 resetOtherMetadata];

  v8 = [self otherMetadataURLForPath:pathCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:v8 error:error];

  return error;
}

+ (id)descriptorGalleryOptionsURLForPath:(id)path
{
  contentsURL = [path contentsURL];
  v5 = [self descriptorGalleryOptionsURLForContentsURL:contentsURL];

  return v5;
}

+ (id)loadPosterDescriptorGalleryOptionsForPath:(id)path error:(id *)error
{
  v6 = [self descriptorGalleryOptionsURLForPath:path];
  v7 = objc_opt_self();
  v8 = [self loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:error];

  return v8;
}

+ (BOOL)storePosterDescriptorGalleryOptions:(id)options posterDescriptorGalleryOptions:(id)galleryOptions error:(id *)error
{
  optionsCopy = options;
  galleryOptionsCopy = galleryOptions;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:optionsCopy];
  [v11 resetGalleryOptions];

  v12 = galleryOptionsCopy;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterdescri_2.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storePosterDescriptorGalleryOptions:a2 posterDescriptorGalleryOptions:? error:?];
    }
  }

  v13 = [self descriptorGalleryOptionsURLForPath:optionsCopy];
  v14 = [self storeUserObject:v12 path:optionsCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (BOOL)removePosterDescriptorGalleryOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:optionsCopy];
  [v7 resetGalleryOptions];

  v8 = [self descriptorGalleryOptionsURLForPath:optionsCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:v8 error:error];

  return error;
}

+ (id)ambientWidgetLayoutURLForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isServerPosterPath])
  {
    instanceURL = [pathCopy instanceURL];
    v6 = [self ambientWidgetLayoutURLForInstanceURL:instanceURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadAmbientWidgetLayoutForPath:(id)path error:(id *)error
{
  v6 = [self ambientWidgetLayoutURLForPath:path];
  v7 = objc_opt_self();
  v8 = [self loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:error];

  return v8;
}

+ (BOOL)storeAmbientWidgetLayoutToPath:(id)path posterAmbientWidgetLayout:(id)layout error:(id *)error
{
  pathCopy = path;
  layoutCopy = layout;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetAmbientWidgetLayout];

  v12 = layoutCopy;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterambien_3.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeAmbientWidgetLayoutToPath:a2 posterAmbientWidgetLayout:? error:?];
    }
  }

  v13 = [self ambientWidgetLayoutURLForPath:pathCopy];
  v14 = [self storeUserObject:v12 path:pathCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (BOOL)removeAmbientWidgetLayout:(id)layout error:(id *)error
{
  layoutCopy = layout;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:layoutCopy];
  [v7 resetAmbientWidgetLayout];

  v8 = [self ambientWidgetLayoutURLForPath:layoutCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:v8 error:error];

  return error;
}

+ (id)userInfoURLForPath:(id)path
{
  contentsURL = [path contentsURL];
  v4 = [contentsURL URLByAppendingPathComponent:@"com.apple.posterkit.provider.contents.userInfo" isDirectory:0];

  return v4;
}

+ (id)loadUserInfoForPath:(id)path error:(id *)error
{
  v6 = [self userInfoURLForPath:path];
  v7 = [self loadUserInfoForURL:v6 error:error];

  return v7;
}

+ (id)loadUserInfoForURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = objc_autoreleasePoolPush();
  v17 = 0;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:1 error:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {
    v16 = 0;
    v10 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:&v16];
    v11 = v16;
    if (v11)
    {
      v12 = PRLogModel();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[PRPosterPathUtilities loadUserInfoForURL:error:];
      }

      v13 = v11;
    }
  }

  else
  {
    v11 = v8;
    v10 = 0;
  }

  objc_autoreleasePoolPop(v6);
  if (error && v11)
  {
    v14 = v11;
    *error = v11;
  }

  return v10;
}

+ (BOOL)storeUserInfoToPath:(id)path userInfo:(id)info error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  infoCopy = info;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetUserInfo];

  v12 = infoCopy;
  NSClassFromString(&cfstr_Nsdictionary.isa);
  if (!v12)
  {
    [PRPosterPathUtilities storeUserInfoToPath:a2 userInfo:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterPathUtilities storeUserInfoToPath:a2 userInfo:? error:?];
  }

  v13 = [self userInfoURLForPath:pathCopy];
  v14 = objc_autoreleasePoolPush();
  v31 = 0;
  v15 = [MEMORY[0x1E696AE40] dataWithPropertyList:v12 format:200 options:0 error:&v31];
  v16 = v31;
  if (v16)
  {
    v17 = PRLogModel();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[PRPosterPathUtilities storeUserInfoToPath:userInfo:error:];
    }

    v18 = v16;
  }

  if (v15)
  {
    errorCopy = error;
    v30 = 0;
    v19 = [v15 writeToURL:v13 options:268435457 error:&v30];
    v20 = v30;
    v21 = PRLogModel();
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[PRPosterPathUtilities storeUserInfoToPath:userInfo:error:];
      }

      v23 = v20;
      v22 = v16;
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent = [v13 lastPathComponent];
        uRLByDeletingLastPathComponent = [v13 URLByDeletingLastPathComponent];
        *buf = 138412546;
        v33 = lastPathComponent;
        v34 = 2112;
        v35 = uRLByDeletingLastPathComponent;
        v25 = uRLByDeletingLastPathComponent;
        _os_log_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEFAULT, "saved '%@'': (path=%@)", buf, 0x16u);
      }

      v23 = v16;
    }

    error = errorCopy;
  }

  else
  {
    v19 = 0;
    v23 = v16;
  }

  objc_autoreleasePoolPop(v14);
  if (error && v23)
  {
    v26 = v23;
    *error = v23;
  }

  return v19;
}

+ (BOOL)removeUserInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:infoCopy];
  [v7 resetUserInfo];

  v8 = [self userInfoURLForPath:infoCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:v8 error:error];

  return error;
}

+ (id)proactiveGalleryOptionsURLForPath:(id)path
{
  contentsURL = [path contentsURL];
  v5 = [self proactiveGalleryOptionsURLForContentsURL:contentsURL];

  return v5;
}

+ (id)loadProactiveGalleryOptions:(id)options error:(id *)error
{
  v6 = [self proactiveGalleryOptionsURLForPath:options];
  v7 = objc_opt_self();
  v8 = [self loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:error];

  return v8;
}

+ (BOOL)storeProactiveGalleryOptionsToPath:(id)path proactiveGalleryOptions:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:pathCopy];
  [v11 resetProactiveGalleryOptions];

  v12 = optionsCopy;
  NSClassFromString(&cfstr_Atxposterdescr.isa);
  if (!v12)
  {
    [PRPosterPathUtilities storeProactiveGalleryOptionsToPath:a2 proactiveGalleryOptions:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterPathUtilities storeProactiveGalleryOptionsToPath:a2 proactiveGalleryOptions:? error:?];
  }

  v13 = [self proactiveGalleryOptionsURLForPath:pathCopy];
  v14 = [self storeUserObject:v12 path:pathCopy atURL:v13 clearCache:0 error:error];

  return v14;
}

+ (BOOL)removeProactiveGalleryOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:optionsCopy];
  [v7 resetProactiveGalleryOptions];

  v8 = [self proactiveGalleryOptionsURLForPath:optionsCopy];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(error) = [defaultManager removeItemAtURL:v8 error:error];

  return error;
}

+ (void)storeTitleStyleConfigurationForPath:(char *)a1 titleStyleConfiguration:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterTitleStyleConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storeRenderingConfiguration:(char *)a1 forPath:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterRenderingConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storeConfigurableOptionsForPath:(char *)a1 configurableOptions:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfigurableOptionsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storeHomeScreenConfigurationForPath:(char *)a1 homeScreenConfiguration:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterHomeScreenConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storeFocusConfigurationForPath:(char *)a1 focusConfiguration:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterFocusConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storeComplicationLayoutForPath:(char *)a1 complicationLayout:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterComplicationLayoutClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storeColorVariationsConfigurationForPath:(char *)a1 colorVariationsConfiguration:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterColorVariationsConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storeQuickActionsConfigurationForPath:(char *)a1 quickActionsConfiguration:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterQuickActionsConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storeAmbientConfigurationForPath:(char *)a1 ambientConfiguration:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterAmbientConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storeSuggestionMetadataForPath:(char *)a1 suggestionMetadata:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterSuggestionMetadataClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storeOtherMetadataForPath:(char *)a1 otherMetadata:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterMetadataClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storePosterDescriptorGalleryOptions:(char *)a1 posterDescriptorGalleryOptions:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterDescriptorGalleryOptionsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storeAmbientWidgetLayoutToPath:(char *)a1 posterAmbientWidgetLayout:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterAmbientWidgetLayoutClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)loadUserInfoForURL:error:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v2 = [v1 lastPathComponent];
  v3 = [v0 URLByDeletingLastPathComponent];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_9(&dword_1A8AA7000, v4, v5, "Error during dict-plist deserializing of '%@': %{public}@ (path=%@)", v6, v7, v8, v9, v10);
}

+ (void)storeUserInfoToPath:(char *)a1 userInfo:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDictionaryClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storeUserInfoToPath:userInfo:error:.cold.2()
{
  OUTLINED_FUNCTION_10();
  v2 = [v1 lastPathComponent];
  v3 = [v0 URLByDeletingLastPathComponent];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_9(&dword_1A8AA7000, v4, v5, "Error during dict-plist serializing of '%@': %{public}@ (path=%@)", v6, v7, v8, v9, v10);
}

+ (void)storeUserInfoToPath:userInfo:error:.cold.3()
{
  OUTLINED_FUNCTION_10();
  v2 = [v1 lastPathComponent];
  v3 = [v0 URLByDeletingLastPathComponent];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_9(&dword_1A8AA7000, v4, v5, "Error during dict-plist writing of '%@': %{public}@ (path=%@)", v6, v7, v8, v9, v10);
}

+ (void)storeUserInfoToPath:(char *)a1 userInfo:error:.cold.4(char *a1)
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

+ (void)storeProactiveGalleryOptionsToPath:(char *)a1 proactiveGalleryOptions:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:ATXPosterDescriptorGalleryOptionsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)storeProactiveGalleryOptionsToPath:(char *)a1 proactiveGalleryOptions:error:.cold.2(char *a1)
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