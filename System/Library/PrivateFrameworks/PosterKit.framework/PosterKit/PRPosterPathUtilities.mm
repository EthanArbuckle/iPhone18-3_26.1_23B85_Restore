@interface PRPosterPathUtilities
+ (BOOL)removeAmbientConfigurationForPath:(id)a3 error:(id *)a4;
+ (BOOL)removeAmbientWidgetLayout:(id)a3 error:(id *)a4;
+ (BOOL)removeColorVariationsConfigurationForPath:(id)a3 error:(id *)a4;
+ (BOOL)removeComplicationLayoutForPath:(id)a3 error:(id *)a4;
+ (BOOL)removeConfigurableOptionsForPath:(id)a3 error:(id *)a4;
+ (BOOL)removeFocusConfigurationForPath:(id)a3 error:(id *)a4;
+ (BOOL)removeOtherMetadataForPath:(id)a3 error:(id *)a4;
+ (BOOL)removePosterDescriptorGalleryOptions:(id)a3 error:(id *)a4;
+ (BOOL)removeProactiveGalleryOptions:(id)a3 error:(id *)a4;
+ (BOOL)removeQuickActionsConfigurationForPath:(id)a3 error:(id *)a4;
+ (BOOL)removeRenderingConfigurationForPath:(id)a3 error:(id *)a4;
+ (BOOL)removeSuggestionMetadataForPath:(id)a3 error:(id *)a4;
+ (BOOL)removeTitleStyleConfigurationForPath:(id)a3 error:(id *)a4;
+ (BOOL)removeUserInfo:(id)a3 error:(id *)a4;
+ (BOOL)storeAmbientConfigurationForPath:(id)a3 ambientConfiguration:(id)a4 error:(id *)a5;
+ (BOOL)storeAmbientWidgetLayoutToPath:(id)a3 posterAmbientWidgetLayout:(id)a4 error:(id *)a5;
+ (BOOL)storeColorVariationsConfigurationForPath:(id)a3 colorVariationsConfiguration:(id)a4 error:(id *)a5;
+ (BOOL)storeComplicationLayoutForPath:(id)a3 complicationLayout:(id)a4 error:(id *)a5;
+ (BOOL)storeConfigurableOptionsForPath:(id)a3 configurableOptions:(id)a4 error:(id *)a5;
+ (BOOL)storeConfiguredPropertiesForPath:(id)a3 configuredProperties:(id)a4 error:(id *)a5;
+ (BOOL)storeFocusConfigurationForPath:(id)a3 focusConfiguration:(id)a4 error:(id *)a5;
+ (BOOL)storeHomeScreenConfigurationForPath:(id)a3 homeScreenConfiguration:(id)a4 error:(id *)a5;
+ (BOOL)storeOtherMetadataForPath:(id)a3 otherMetadata:(id)a4 error:(id *)a5;
+ (BOOL)storePosterDescriptorGalleryOptions:(id)a3 posterDescriptorGalleryOptions:(id)a4 error:(id *)a5;
+ (BOOL)storeProactiveGalleryOptionsToPath:(id)a3 proactiveGalleryOptions:(id)a4 error:(id *)a5;
+ (BOOL)storeQuickActionsConfigurationForPath:(id)a3 quickActionsConfiguration:(id)a4 error:(id *)a5;
+ (BOOL)storeRenderingConfiguration:(id)a3 forPath:(id)a4 error:(id *)a5;
+ (BOOL)storeSuggestionMetadataForPath:(id)a3 suggestionMetadata:(id)a4 error:(id *)a5;
+ (BOOL)storeTitleStyleConfigurationForPath:(id)a3 titleStyleConfiguration:(id)a4 error:(id *)a5;
+ (BOOL)storeUserInfoToPath:(id)a3 userInfo:(id)a4 error:(id *)a5;
+ (BOOL)storeUserObject:(id)a3 path:(id)a4 atURL:(id)a5 clearCache:(BOOL)a6 error:(id *)a7;
+ (id)ambientConfigurationURLForPath:(id)a3;
+ (id)ambientWidgetLayoutURLForPath:(id)a3;
+ (id)colorVariationsConfigurationURLForPath:(id)a3;
+ (id)complicationsLayoutURLForPath:(id)a3;
+ (id)configurableOptionsURLForPath:(id)a3;
+ (id)depthEffectConfigurationURLForPath:(id)a3;
+ (id)descriptorGalleryOptionsURLForPath:(id)a3;
+ (id)expectedConfigurationFilesForPath:(id)a3;
+ (id)focusConfigurationURLForPath:(id)a3;
+ (id)homeScreenConfigurationURLForPath:(id)a3;
+ (id)loadAmbientConfigurationForPath:(id)a3 error:(id *)a4;
+ (id)loadAmbientWidgetLayoutForPath:(id)a3 error:(id *)a4;
+ (id)loadColorVariationsConfigurationForPath:(id)a3 error:(id *)a4;
+ (id)loadComplicationLayoutForPath:(id)a3 error:(id *)a4;
+ (id)loadConfigurableOptionsForPath:(id)a3 error:(id *)a4;
+ (id)loadConfiguredPropertiesForPath:(id)a3 error:(id *)a4;
+ (id)loadFocusConfigurationForPath:(id)a3 error:(id *)a4;
+ (id)loadHomeScreenConfigurationForPath:(id)a3 error:(id *)a4;
+ (id)loadOtherMetadataForPath:(id)a3 error:(id *)a4;
+ (id)loadPosterDescriptorGalleryOptionsForPath:(id)a3 error:(id *)a4;
+ (id)loadPosterDescriptorIdentifierForPathAtURL:(id)a3 type:(int64_t)a4 posterUUID:(id)a5;
+ (id)loadProactiveGalleryOptions:(id)a3 error:(id *)a4;
+ (id)loadQuickActionsConfigurationForPath:(id)a3 error:(id *)a4;
+ (id)loadRenderingConfigurationForPath:(id)a3 error:(id *)a4;
+ (id)loadSuggestionMetadataForPath:(id)a3 error:(id *)a4;
+ (id)loadTitleStyleConfigurationForPath:(id)a3 error:(id *)a4;
+ (id)loadUserInfoForPath:(id)a3 error:(id *)a4;
+ (id)loadUserInfoForURL:(id)a3 error:(id *)a4;
+ (id)loadUserObjectForURL:(id)a3 expectedClass:(Class)a4 strict:(BOOL)a5 error:(id *)a6;
+ (id)oldHomeScreenConfigurationURLForPath:(id)a3;
+ (id)otherMetadataURLForPath:(id)a3;
+ (id)proactiveGalleryOptionsURLForPath:(id)a3;
+ (id)quickActionsConfigurationURLForPath:(id)a3;
+ (id)renderingConfigurationURLForPath:(id)a3;
+ (id)suggestionMetadataURLForPath:(id)a3;
+ (id)titleStyleConfigurationURLForPath:(id)a3;
+ (id)userInfoURLForPath:(id)a3;
@end

@implementation PRPosterPathUtilities

+ (id)expectedConfigurationFilesForPath:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [a1 descriptorGalleryOptionsURLForPath:v4];
  if ([v6 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v6];
  }

  v7 = [a1 otherMetadataURLForPath:v4];
  if ([v7 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v7];
  }

  v8 = [a1 suggestionMetadataURLForPath:v4];
  if ([v8 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v8];
  }

  v9 = [a1 colorVariationsConfigurationURLForPath:v4];
  if ([v9 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v9];
  }

  v10 = [a1 complicationsLayoutURLForPath:v4];
  if ([v10 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v10];
  }

  v11 = [a1 focusConfigurationURLForPath:v4];
  if ([v11 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v11];
  }

  v12 = [a1 homeScreenConfigurationURLForPath:v4];
  if ([v12 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v12];
  }

  v29 = v7;
  v13 = [a1 oldHomeScreenConfigurationURLForPath:v4];
  if ([v13 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v13];
  }

  v28 = v8;
  v14 = [a1 renderingConfigurationURLForPath:{v4, v13}];
  if ([v14 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v14];
  }

  v27 = v9;
  v15 = [a1 depthEffectConfigurationURLForPath:v4];
  if ([v15 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v15];
  }

  v26 = v10;
  v16 = [a1 titleStyleConfigurationURLForPath:v4];
  if ([v16 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v16];
  }

  v25 = v11;
  v17 = [a1 ambientConfigurationURLForPath:v4];
  if ([v17 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v17];
  }

  v24 = v12;
  v18 = [a1 ambientWidgetLayoutURLForPath:v4];
  if ([v18 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v18];
  }

  v30 = v6;
  v19 = [a1 userInfoURLForPath:v4];
  if ([v19 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v19];
  }

  v20 = [a1 configurableOptionsURLForPath:v4];
  if ([v20 checkResourceIsReachableAndReturnError:0])
  {
    [v5 addObject:v20];
  }

  v21 = [v5 copy];

  return v21;
}

+ (id)loadUserObjectForURL:(id)a3 expectedClass:(Class)a4 strict:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (![v9 checkResourceIsReachableAndReturnError:a6])
  {
    v15 = 0;
    goto LABEL_15;
  }

  v10 = objc_autoreleasePoolPush();
  v22 = 0;
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v9 options:1 error:&v22];
  v12 = v22;
  if (v11)
  {
    v13 = MEMORY[0x1E696ACD0];
    v14 = [MEMORY[0x1E695DFD8] setWithObject:a4];
    v20 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __73__PRPosterPathUtilities_loadUserObjectForURL_expectedClass_strict_error___block_invoke;
    v21[3] = &__block_descriptor_40_e27_v16__0__NSKeyedUnarchiver_8lu32l8;
    v21[4] = a4;
    v15 = [v13 pf_unarchivedObjectOfClasses:v14 fromData:v11 strict:v7 classReplacementBlock:v21 error:&v20];
    v16 = v20;

    if (v15)
    {
      goto LABEL_11;
    }

    v17 = PRLogModel();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v24 = v9;
      v25 = 2112;
      v26 = a4;
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
      v24 = v9;
      v25 = 2112;
      v26 = a4;
      v27 = 2114;
      v28 = v12;
      _os_log_debug_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEBUG, "Unable to load user object @ %@; expected class %@: %{public}@", buf, 0x20u);
    }
  }

  v15 = 0;
  v16 = v12;
LABEL_11:

  objc_autoreleasePoolPop(v10);
  if (a6 && v16)
  {
    v18 = v16;
    *a6 = v16;
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

+ (BOOL)storeUserObject:(id)a3 path:(id)a4 atURL:(id)a5 clearCache:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v37 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v8)
  {
    [PRPosterPathModelObjectCache invalidateModelObjectCacheForPath:v12];
  }

  v14 = PRLogModel();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v32 = v11;
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v13;
    _os_log_debug_impl(&dword_1A8AA7000, v14, OS_LOG_TYPE_DEBUG, "Storing %@ for path %@ to URL '%@'", buf, 0x20u);
  }

  if (v11)
  {
    v30 = 0;
    v15 = [v12 ensureContentsURLIsReachableAndReturnError:&v30];
    v16 = v30;
    v17 = v16;
    if (v15)
    {
      v29 = 0;
      v18 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v29];
      v19 = v29;
      v20 = v19;
      if (v19)
      {
        if (a7)
        {
          v21 = v19;
          *a7 = v20;
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
        v23 = [v18 writeToURL:v13 options:268435457 error:&v28];
        v22 = v28;
        v25 = PRLogModel();
        v26 = v25;
        if (v23)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v32 = v11;
            v33 = 2112;
            v34 = v12;
            v35 = 2112;
            v36 = v13;
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
      if (a7)
      {
        v24 = v16;
        *a7 = v17;
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

+ (id)loadConfiguredPropertiesForPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [a1 loadComplicationLayoutForPath:v5 error:0];
  [v6 setComplicationLayout:v7];

  v8 = [a1 loadFocusConfigurationForPath:v5 error:0];
  [v6 setFocusConfiguration:v8];

  v9 = [a1 loadTitleStyleConfigurationForPath:v5 error:0];
  [v6 setTitleStyleConfiguration:v9];

  v10 = [a1 loadRenderingConfigurationForPath:v5 error:0];
  [v6 setRenderingConfiguration:v10];

  v11 = [a1 loadHomeScreenConfigurationForPath:v5 error:0];
  [v6 setHomeScreenConfiguration:v11];

  v12 = [a1 loadColorVariationsConfigurationForPath:v5 error:0];
  [v6 setColorVariationsConfiguration:v12];

  v13 = [a1 loadQuickActionsConfigurationForPath:v5 error:0];
  [v6 setQuickActionsConfiguration:v13];

  v14 = [a1 loadSuggestionMetadataForPath:v5 error:0];
  [v6 setSuggestionMetadata:v14];

  v15 = [a1 loadOtherMetadataForPath:v5 error:0];
  [v6 setOtherMetadata:v15];

  v16 = [a1 loadUserInfoForPath:v5 error:0];
  [v6 setUserInfo:v16];

  v17 = [a1 loadAmbientConfigurationForPath:v5 error:0];
  [v6 setAmbientConfiguration:v17];

  v18 = [a1 loadAmbientWidgetLayoutForPath:v5 error:0];

  [v6 setAmbientWidgetLayout:v18];

  return v6;
}

+ (BOOL)storeConfiguredPropertiesForPath:(id)a3 configuredProperties:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  [PRPosterPathModelObjectCache invalidateModelObjectCacheForPath:v8];
  v10 = [v9 complicationLayout];
  if (v10 && ![a1 storeComplicationLayoutForPath:v8 complicationLayout:v10 error:a5])
  {
    v25 = 0;
  }

  else
  {
    v11 = [v9 focusConfiguration];
    if (v11 && ![a1 storeFocusConfigurationForPath:v8 focusConfiguration:v11 error:a5])
    {
      v25 = 0;
    }

    else
    {
      v12 = [v9 suggestionMetadata];
      if (v12 && ![a1 storeSuggestionMetadataForPath:v8 suggestionMetadata:v12 error:a5])
      {
        v25 = 0;
      }

      else
      {
        v13 = [v9 otherMetadata];
        if (v13 && ![a1 storeOtherMetadataForPath:v8 otherMetadata:v13 error:a5])
        {
          v25 = 0;
        }

        else
        {
          v14 = [v9 homeScreenConfiguration];
          if (v14 && ![a1 storeHomeScreenConfigurationForPath:v8 homeScreenConfiguration:v14 error:a5])
          {
            v25 = 0;
          }

          else
          {
            v15 = [v9 titleStyleConfiguration];
            if (v15 && ![a1 storeTitleStyleConfigurationForPath:v8 titleStyleConfiguration:v15 error:a5])
            {
              v25 = 0;
            }

            else
            {
              v31 = v15;
              v16 = [v9 renderingConfiguration];
              if (v16 && ![a1 storeRenderingConfiguration:v16 forPath:v8 error:a5])
              {
                v25 = 0;
              }

              else
              {
                v30 = v16;
                v17 = [v9 colorVariationsConfiguration];
                if (v17 && ![a1 storeColorVariationsConfigurationForPath:v8 colorVariationsConfiguration:v17 error:a5])
                {
                  v25 = 0;
                }

                else
                {
                  v29 = v17;
                  v18 = [v9 quickActionsConfiguration];
                  if (v18 && ![a1 storeQuickActionsConfigurationForPath:v8 quickActionsConfiguration:v18 error:a5])
                  {
                    v25 = 0;
                  }

                  else
                  {
                    v28 = v18;
                    v19 = [v9 ambientConfiguration];
                    if (v19 && ![a1 storeAmbientConfigurationForPath:v8 ambientConfiguration:v19 error:a5])
                    {
                      v25 = 0;
                    }

                    else
                    {
                      v27 = v19;
                      v20 = [v9 ambientWidgetLayout];
                      if (v20 && ![a1 storeAmbientWidgetLayoutToPath:v8 posterAmbientWidgetLayout:v20 error:a5])
                      {
                        v25 = 0;
                      }

                      else
                      {
                        v21 = [v9 userInfo];
                        v25 = 1;
                        if (v21)
                        {
                          v22 = a1;
                          v23 = v21;
                          v24 = [v22 storeUserInfoToPath:v8 userInfo:v21 error:a5];
                          v21 = v23;
                          if (!v24)
                          {
                            v25 = 0;
                          }
                        }
                      }

                      v19 = v27;
                    }

                    v18 = v28;
                  }

                  v17 = v29;
                }

                v16 = v30;
              }

              v15 = v31;
            }
          }
        }
      }
    }
  }

  return v25;
}

+ (id)titleStyleConfigurationURLForPath:(id)a3
{
  v4 = a3;
  if ([v4 isServerPosterPath])
  {
    v5 = [v4 instanceURL];
    v6 = [a1 titleStyleConfigurationURLForPathInstanceURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadTitleStyleConfigurationForPath:(id)a3 error:(id *)a4
{
  v6 = [a1 titleStyleConfigurationURLForPath:a3];
  v7 = objc_opt_self();
  v8 = [a1 loadUserObjectForURL:v6 expectedClass:v7 strict:1 error:a4];

  return v8;
}

+ (BOOL)storeTitleStyleConfigurationForPath:(id)a3 titleStyleConfiguration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetTitleStyleConfiguration];

  v12 = v10;
  if (v12)
  {
    NSClassFromString(&cfstr_Prpostertitles_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeTitleStyleConfigurationForPath:a2 titleStyleConfiguration:? error:?];
    }
  }

  v13 = [a1 titleStyleConfigurationURLForPath:v9];
  v14 = [a1 storeUserObject:v12 path:v9 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (BOOL)removeTitleStyleConfigurationForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetTitleStyleConfiguration];

  v8 = [a1 titleStyleConfigurationURLForPath:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v9 removeItemAtURL:v8 error:a4];

  return a4;
}

+ (id)renderingConfigurationURLForPath:(id)a3
{
  v4 = a3;
  if ([v4 isServerPosterPath])
  {
    v5 = [v4 instanceURL];
    v6 = [a1 renderingConfigurationURLForPathInstanceURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)depthEffectConfigurationURLForPath:(id)a3
{
  v3 = a3;
  if ([v3 isServerPosterPath])
  {
    v4 = [v3 instanceURL];
    v5 = [v4 URLByAppendingPathComponent:@"com.apple.posterkit.provider.instance.depthEffectConfiguration.plist" isDirectory:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)loadRenderingConfigurationForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 depthEffectConfigurationURLForPath:v6];
  v8 = objc_opt_self();
  v9 = [a1 loadUserObjectForURL:v7 expectedClass:v8 strict:1 error:a4];

  if (!v9)
  {
    v10 = [a1 renderingConfigurationURLForPath:v6];

    v11 = objc_opt_self();
    v9 = [a1 loadUserObjectForURL:v10 expectedClass:v11 strict:1 error:a4];

    v7 = v10;
  }

  return v9;
}

+ (BOOL)storeRenderingConfiguration:(id)a3 forPath:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v10];
  [v11 resetRenderingConfiguration];

  v12 = v9;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterrender.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeRenderingConfiguration:a2 forPath:? error:?];
    }
  }

  v13 = [a1 renderingConfigurationURLForPath:v10];
  v14 = [a1 storeUserObject:v12 path:v10 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (BOOL)removeRenderingConfigurationForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetRenderingConfiguration];

  v8 = [a1 depthEffectConfigurationURLForPath:v6];
  v9 = [a1 renderingConfigurationURLForPath:v6];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  [v10 removeItemAtURL:v8 error:0];

  v11 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v11 removeItemAtURL:v9 error:a4];

  return a4;
}

+ (id)configurableOptionsURLForPath:(id)a3
{
  v3 = [a3 contentsURL];
  v4 = [v3 URLByAppendingPathComponent:@".com.apple.posterkit.provider.contents.configurableOptions.plist" isDirectory:0];

  return v4;
}

+ (id)loadConfigurableOptionsForPath:(id)a3 error:(id *)a4
{
  v6 = [a1 configurableOptionsURLForPath:a3];
  v7 = objc_opt_self();
  v8 = [a1 loadUserObjectForURL:v6 expectedClass:v7 strict:1 error:a4];

  return v8;
}

+ (BOOL)storeConfigurableOptionsForPath:(id)a3 configurableOptions:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetConfigurableOptions];

  v12 = v10;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterconfig_3.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeConfigurableOptionsForPath:a2 configurableOptions:? error:?];
    }
  }

  v13 = [a1 configurableOptionsURLForPath:v9];
  v14 = [a1 storeUserObject:v12 path:v9 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (BOOL)removeConfigurableOptionsForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetConfigurableOptions];

  v8 = [a1 configurableOptionsURLForPath:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v9 removeItemAtURL:v8 error:a4];

  return a4;
}

+ (id)oldHomeScreenConfigurationURLForPath:(id)a3
{
  v4 = a3;
  if ([v4 isServerPosterPath])
  {
    v5 = [v4 identifierURL];
    v6 = [a1 oldHomeScreenConfigurationURLForIdentifierURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)homeScreenConfigurationURLForPath:(id)a3
{
  v4 = a3;
  if ([v4 isServerPosterPath])
  {
    v5 = [v4 supplementURL];
    v6 = [a1 homeScreenConfigurationURLForSupplementURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadHomeScreenConfigurationForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 homeScreenConfigurationURLForPath:v6];
  v8 = objc_opt_self();
  v9 = [a1 loadUserObjectForURL:v7 expectedClass:v8 strict:0 error:a4];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [a1 oldHomeScreenConfigurationURLForPath:v6];

    v12 = objc_opt_self();
    v10 = [a1 loadUserObjectForURL:v11 expectedClass:v12 strict:0 error:a4];

    v7 = v11;
  }

  return v10;
}

+ (BOOL)storeHomeScreenConfigurationForPath:(id)a3 homeScreenConfiguration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetHomeScreenConfiguration];

  v12 = v10;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterhomesc.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeHomeScreenConfigurationForPath:a2 homeScreenConfiguration:? error:?];
    }
  }

  v13 = [a1 homeScreenConfigurationURLForPath:v9];
  v14 = [a1 storeUserObject:v12 path:v9 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (id)focusConfigurationURLForPath:(id)a3
{
  v4 = a3;
  if ([v4 isServerPosterPath])
  {
    v5 = [v4 identifierURL];
    v6 = [a1 focusConfigurationURLForIdentifierURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadFocusConfigurationForPath:(id)a3 error:(id *)a4
{
  v6 = [a1 focusConfigurationURLForPath:a3];
  v7 = objc_opt_self();
  v8 = [a1 loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:a4];

  return v8;
}

+ (BOOL)storeFocusConfigurationForPath:(id)a3 focusConfiguration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetFocusConfiguration];

  v12 = v10;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterfocusc.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeFocusConfigurationForPath:a2 focusConfiguration:? error:?];
    }
  }

  v13 = [a1 focusConfigurationURLForPath:v9];
  v14 = [a1 storeUserObject:v12 path:v9 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (BOOL)removeFocusConfigurationForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetFocusConfiguration];

  v8 = [a1 focusConfigurationURLForPath:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v9 removeItemAtURL:v8 error:a4];

  return a4;
}

+ (id)complicationsLayoutURLForPath:(id)a3
{
  v4 = a3;
  if ([v4 isServerPosterPath])
  {
    v5 = [v4 instanceURL];
    v6 = [a1 complicationsLayoutURLForInstanceURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadComplicationLayoutForPath:(id)a3 error:(id *)a4
{
  v6 = [a1 complicationsLayoutURLForPath:a3];
  v7 = objc_opt_self();
  v8 = [a1 loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:a4];

  return v8;
}

+ (BOOL)storeComplicationLayoutForPath:(id)a3 complicationLayout:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetComplicationLayout];

  v12 = v10;
  if (v12)
  {
    NSClassFromString(&cfstr_Prpostercompli.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeComplicationLayoutForPath:a2 complicationLayout:? error:?];
    }
  }

  v13 = [a1 complicationsLayoutURLForPath:v9];
  v14 = [a1 storeUserObject:v12 path:v9 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (BOOL)removeComplicationLayoutForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetComplicationLayout];

  v8 = [a1 complicationsLayoutURLForPath:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v9 removeItemAtURL:v8 error:a4];

  return a4;
}

+ (id)colorVariationsConfigurationURLForPath:(id)a3
{
  v4 = a3;
  if ([v4 isServerPosterPath])
  {
    v5 = [v4 instanceURL];
    v6 = [a1 colorVariationsConfigurationURLForInstanceURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadColorVariationsConfigurationForPath:(id)a3 error:(id *)a4
{
  v6 = [a1 colorVariationsConfigurationURLForPath:a3];
  v7 = objc_opt_self();
  v8 = [a1 loadUserObjectForURL:v6 expectedClass:v7 strict:1 error:a4];

  return v8;
}

+ (BOOL)storeColorVariationsConfigurationForPath:(id)a3 colorVariationsConfiguration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetColorVariationsConfiguration];

  v12 = v10;
  if (v12)
  {
    NSClassFromString(&cfstr_Prpostercolorv.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeColorVariationsConfigurationForPath:a2 colorVariationsConfiguration:? error:?];
    }
  }

  v13 = [a1 colorVariationsConfigurationURLForPath:v9];
  v14 = [a1 storeUserObject:v12 path:v9 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (BOOL)removeColorVariationsConfigurationForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetColorVariationsConfiguration];

  v8 = [a1 colorVariationsConfigurationURLForPath:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v9 removeItemAtURL:v8 error:a4];

  return a4;
}

+ (id)quickActionsConfigurationURLForPath:(id)a3
{
  v4 = a3;
  if ([v4 isServerPosterPath])
  {
    v5 = [v4 instanceURL];
    v6 = [a1 quickActionsConfigurationURLForInstanceURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadQuickActionsConfigurationForPath:(id)a3 error:(id *)a4
{
  v6 = [a1 quickActionsConfigurationURLForPath:a3];
  v7 = objc_opt_self();
  v8 = [a1 loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:a4];

  return v8;
}

+ (BOOL)storeQuickActionsConfigurationForPath:(id)a3 quickActionsConfiguration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetQuickActionsConfiguration];

  v12 = v10;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterquicka.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeQuickActionsConfigurationForPath:a2 quickActionsConfiguration:? error:?];
    }
  }

  v13 = [a1 quickActionsConfigurationURLForPath:v9];
  v14 = [a1 storeUserObject:v12 path:v9 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (BOOL)removeQuickActionsConfigurationForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetQuickActionsConfiguration];

  v8 = [a1 quickActionsConfigurationURLForPath:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v9 removeItemAtURL:v8 error:a4];

  return a4;
}

+ (id)ambientConfigurationURLForPath:(id)a3
{
  v4 = [a3 contentsURL];
  v5 = [a1 ambientConfigurationURLForContentsURL:v4];

  return v5;
}

+ (id)loadAmbientConfigurationForPath:(id)a3 error:(id *)a4
{
  v6 = [a1 ambientConfigurationURLForPath:a3];
  v7 = objc_opt_self();
  v8 = [a1 loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:a4];

  return v8;
}

+ (BOOL)storeAmbientConfigurationForPath:(id)a3 ambientConfiguration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetAmbientConfiguration];

  v12 = v10;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterambien_1.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeAmbientConfigurationForPath:a2 ambientConfiguration:? error:?];
    }
  }

  v13 = [a1 ambientConfigurationURLForPath:v9];
  v14 = [a1 storeUserObject:v12 path:v9 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (BOOL)removeAmbientConfigurationForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetAmbientConfiguration];

  v8 = [a1 ambientConfigurationURLForPath:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v9 removeItemAtURL:v8 error:a4];

  return a4;
}

+ (id)suggestionMetadataURLForPath:(id)a3
{
  v4 = a3;
  if ([v4 isServerPosterPath])
  {
    v5 = [v4 identifierURL];
    v6 = [a1 suggestionMetadataURLForIdentifierURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadSuggestionMetadataForPath:(id)a3 error:(id *)a4
{
  v6 = [a1 suggestionMetadataURLForPath:a3];
  v7 = objc_opt_self();
  v8 = [a1 loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:a4];

  return v8;
}

+ (BOOL)storeSuggestionMetadataForPath:(id)a3 suggestionMetadata:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetSuggestionMetadata];

  v12 = v10;
  if (v12)
  {
    NSClassFromString(&cfstr_Prpostersugges.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeSuggestionMetadataForPath:a2 suggestionMetadata:? error:?];
    }
  }

  v13 = [a1 suggestionMetadataURLForPath:v9];
  v14 = [a1 storeUserObject:v12 path:v9 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (BOOL)removeSuggestionMetadataForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetSuggestionMetadata];

  v8 = [a1 suggestionMetadataURLForPath:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v9 removeItemAtURL:v8 error:a4];

  return a4;
}

+ (id)loadPosterDescriptorIdentifierForPathAtURL:(id)a3 type:(int64_t)a4 posterUUID:(id)a5
{
  v6 = [MEMORY[0x1E695DFF8] pf_posterPathIdentifierURLProviderURL:a3 type:a4 posterUUID:a5];
  v7 = [v6 URLByAppendingPathComponent:@"com.apple.posterkit.provider.identifierURL.suggestionMetadata.plist" isDirectory:0];
  v8 = objc_opt_self();
  v9 = [a1 loadUserObjectForURL:v7 expectedClass:v8 strict:0 error:0];

  v10 = [v9 suggestedGalleryItem];
  v11 = [v10 descriptorIdentifier];
  v12 = [v11 stringByDeletingPathExtension];

  return v12;
}

+ (id)otherMetadataURLForPath:(id)a3
{
  v4 = [a3 contentsURL];
  v5 = [a1 otherMetadataURLForContentsURL:v4];

  return v5;
}

+ (id)loadOtherMetadataForPath:(id)a3 error:(id *)a4
{
  v6 = [a1 otherMetadataURLForPath:a3];
  v7 = objc_opt_self();
  v8 = [a1 loadUserObjectForURL:v6 expectedClass:v7 strict:1 error:a4];

  return v8;
}

+ (BOOL)storeOtherMetadataForPath:(id)a3 otherMetadata:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetOtherMetadata];

  v12 = v10;
  if (v12)
  {
    NSClassFromString(&cfstr_Prpostermetada.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeOtherMetadataForPath:a2 otherMetadata:? error:?];
    }
  }

  v13 = [a1 otherMetadataURLForPath:v9];
  v14 = [a1 storeUserObject:v12 path:v9 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (BOOL)removeOtherMetadataForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetOtherMetadata];

  v8 = [a1 otherMetadataURLForPath:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v9 removeItemAtURL:v8 error:a4];

  return a4;
}

+ (id)descriptorGalleryOptionsURLForPath:(id)a3
{
  v4 = [a3 contentsURL];
  v5 = [a1 descriptorGalleryOptionsURLForContentsURL:v4];

  return v5;
}

+ (id)loadPosterDescriptorGalleryOptionsForPath:(id)a3 error:(id *)a4
{
  v6 = [a1 descriptorGalleryOptionsURLForPath:a3];
  v7 = objc_opt_self();
  v8 = [a1 loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:a4];

  return v8;
}

+ (BOOL)storePosterDescriptorGalleryOptions:(id)a3 posterDescriptorGalleryOptions:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetGalleryOptions];

  v12 = v10;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterdescri_2.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storePosterDescriptorGalleryOptions:a2 posterDescriptorGalleryOptions:? error:?];
    }
  }

  v13 = [a1 descriptorGalleryOptionsURLForPath:v9];
  v14 = [a1 storeUserObject:v12 path:v9 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (BOOL)removePosterDescriptorGalleryOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetGalleryOptions];

  v8 = [a1 descriptorGalleryOptionsURLForPath:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v9 removeItemAtURL:v8 error:a4];

  return a4;
}

+ (id)ambientWidgetLayoutURLForPath:(id)a3
{
  v4 = a3;
  if ([v4 isServerPosterPath])
  {
    v5 = [v4 instanceURL];
    v6 = [a1 ambientWidgetLayoutURLForInstanceURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)loadAmbientWidgetLayoutForPath:(id)a3 error:(id *)a4
{
  v6 = [a1 ambientWidgetLayoutURLForPath:a3];
  v7 = objc_opt_self();
  v8 = [a1 loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:a4];

  return v8;
}

+ (BOOL)storeAmbientWidgetLayoutToPath:(id)a3 posterAmbientWidgetLayout:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetAmbientWidgetLayout];

  v12 = v10;
  if (v12)
  {
    NSClassFromString(&cfstr_Prposterambien_3.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterPathUtilities storeAmbientWidgetLayoutToPath:a2 posterAmbientWidgetLayout:? error:?];
    }
  }

  v13 = [a1 ambientWidgetLayoutURLForPath:v9];
  v14 = [a1 storeUserObject:v12 path:v9 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (BOOL)removeAmbientWidgetLayout:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetAmbientWidgetLayout];

  v8 = [a1 ambientWidgetLayoutURLForPath:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v9 removeItemAtURL:v8 error:a4];

  return a4;
}

+ (id)userInfoURLForPath:(id)a3
{
  v3 = [a3 contentsURL];
  v4 = [v3 URLByAppendingPathComponent:@"com.apple.posterkit.provider.contents.userInfo" isDirectory:0];

  return v4;
}

+ (id)loadUserInfoForPath:(id)a3 error:(id *)a4
{
  v6 = [a1 userInfoURLForPath:a3];
  v7 = [a1 loadUserInfoForURL:v6 error:a4];

  return v7;
}

+ (id)loadUserInfoForURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v17 = 0;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:1 error:&v17];
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
  if (a4 && v11)
  {
    v14 = v11;
    *a4 = v11;
  }

  return v10;
}

+ (BOOL)storeUserInfoToPath:(id)a3 userInfo:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetUserInfo];

  v12 = v10;
  NSClassFromString(&cfstr_Nsdictionary.isa);
  if (!v12)
  {
    [PRPosterPathUtilities storeUserInfoToPath:a2 userInfo:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterPathUtilities storeUserInfoToPath:a2 userInfo:? error:?];
  }

  v13 = [a1 userInfoURLForPath:v9];
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
    v29 = a5;
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
        v28 = [v13 lastPathComponent];
        v24 = [v13 URLByDeletingLastPathComponent];
        *buf = 138412546;
        v33 = v28;
        v34 = 2112;
        v35 = v24;
        v25 = v24;
        _os_log_impl(&dword_1A8AA7000, v22, OS_LOG_TYPE_DEFAULT, "saved '%@'': (path=%@)", buf, 0x16u);
      }

      v23 = v16;
    }

    a5 = v29;
  }

  else
  {
    v19 = 0;
    v23 = v16;
  }

  objc_autoreleasePoolPop(v14);
  if (a5 && v23)
  {
    v26 = v23;
    *a5 = v23;
  }

  return v19;
}

+ (BOOL)removeUserInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetUserInfo];

  v8 = [a1 userInfoURLForPath:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v9 removeItemAtURL:v8 error:a4];

  return a4;
}

+ (id)proactiveGalleryOptionsURLForPath:(id)a3
{
  v4 = [a3 contentsURL];
  v5 = [a1 proactiveGalleryOptionsURLForContentsURL:v4];

  return v5;
}

+ (id)loadProactiveGalleryOptions:(id)a3 error:(id *)a4
{
  v6 = [a1 proactiveGalleryOptionsURLForPath:a3];
  v7 = objc_opt_self();
  v8 = [a1 loadUserObjectForURL:v6 expectedClass:v7 strict:0 error:a4];

  return v8;
}

+ (BOOL)storeProactiveGalleryOptionsToPath:(id)a3 proactiveGalleryOptions:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v9];
  [v11 resetProactiveGalleryOptions];

  v12 = v10;
  NSClassFromString(&cfstr_Atxposterdescr.isa);
  if (!v12)
  {
    [PRPosterPathUtilities storeProactiveGalleryOptionsToPath:a2 proactiveGalleryOptions:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterPathUtilities storeProactiveGalleryOptionsToPath:a2 proactiveGalleryOptions:? error:?];
  }

  v13 = [a1 proactiveGalleryOptionsURLForPath:v9];
  v14 = [a1 storeUserObject:v12 path:v9 atURL:v13 clearCache:0 error:a5];

  return v14;
}

+ (BOOL)removeProactiveGalleryOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v6];
  [v7 resetProactiveGalleryOptions];

  v8 = [a1 proactiveGalleryOptionsURLForPath:v6];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(a4) = [v9 removeItemAtURL:v8 error:a4];

  return a4;
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