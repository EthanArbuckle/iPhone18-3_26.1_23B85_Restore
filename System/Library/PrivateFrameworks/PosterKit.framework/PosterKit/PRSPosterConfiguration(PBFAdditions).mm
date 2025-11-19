@interface PRSPosterConfiguration(PBFAdditions)
- (BOOL)pr_storeAmbientWidgetLayout:()PBFAdditions error:;
- (id)pr_loadAmbientConfigurationWithError:()PBFAdditions;
- (id)pr_loadAmbientWidgetLayoutWithError:()PBFAdditions;
- (id)pr_loadColorVariationsWithError:()PBFAdditions;
- (id)pr_loadComplicationLayoutWithError:()PBFAdditions;
- (id)pr_loadConfiguredPropertiesWithError:()PBFAdditions;
- (id)pr_loadFocusConfigurationWithError:()PBFAdditions;
- (id)pr_loadHomeScreenConfigurationWithError:()PBFAdditions;
- (id)pr_loadOtherMetadataWithError:()PBFAdditions;
- (id)pr_loadQuickActionsConfigurationWithError:()PBFAdditions;
- (id)pr_loadSuggestionMetadataWithError:()PBFAdditions;
- (id)pr_loadTitleStyleConfigurationWithError:()PBFAdditions;
- (id)pr_posterProvider;
- (id)pr_posterUUID;
- (id)pr_suggestedTintColor;
- (id)pui_modelObjectCache;
- (uint64_t)pr_isHomeScreenDimmed;
- (void)pr_suggestedTintColor;
@end

@implementation PRSPosterConfiguration(PBFAdditions)

- (id)pui_modelObjectCache
{
  v2 = objc_opt_class();
  if ([v2 isEqual:objc_opt_class()])
  {
    v3 = [a1 _path];
    if ([v3 isServerPosterPath])
    {
      v4 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)pr_loadConfiguredPropertiesWithError:()PBFAdditions
{
  v5 = [a1 pui_modelObjectCache];
  v6 = [v5 configuredProperties];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [a1 _path];
    v8 = [PRPosterPathUtilities loadConfiguredPropertiesForPath:v9 error:a3];
  }

  return v8;
}

- (id)pr_loadFocusConfigurationWithError:()PBFAdditions
{
  v5 = [a1 pui_modelObjectCache];
  v6 = [v5 focusConfiguration];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [a1 _path];
    v8 = [PRPosterPathUtilities loadFocusConfigurationForPath:v9 error:a3];
  }

  return v8;
}

- (id)pr_loadHomeScreenConfigurationWithError:()PBFAdditions
{
  v4 = [a1 pui_modelObjectCache];
  v5 = [v4 homeScreenConfigurationOrError:a3];

  return v5;
}

- (id)pr_loadTitleStyleConfigurationWithError:()PBFAdditions
{
  v5 = [a1 pui_modelObjectCache];
  v6 = [v5 titleStyleConfiguration];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [a1 _path];
    v8 = [PRPosterPathUtilities loadTitleStyleConfigurationForPath:v9 error:a3];
  }

  return v8;
}

- (id)pr_loadComplicationLayoutWithError:()PBFAdditions
{
  v5 = [a1 pui_modelObjectCache];
  v6 = [v5 complicationLayout];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [a1 _path];
    v8 = [PRPosterPathUtilities loadComplicationLayoutForPath:v9 error:a3];
  }

  return v8;
}

- (id)pr_loadColorVariationsWithError:()PBFAdditions
{
  v5 = [a1 pui_modelObjectCache];
  v6 = [v5 colorVariationsConfiguration];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [a1 _path];
    v8 = [PRPosterPathUtilities loadColorVariationsConfigurationForPath:v9 error:a3];
  }

  return v8;
}

- (id)pr_loadQuickActionsConfigurationWithError:()PBFAdditions
{
  v5 = [a1 pui_modelObjectCache];
  v6 = [v5 quickActionsConfiguration];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [a1 _path];
    v8 = [PRPosterPathUtilities loadQuickActionsConfigurationForPath:v9 error:a3];
  }

  return v8;
}

- (id)pr_loadAmbientConfigurationWithError:()PBFAdditions
{
  v5 = [a1 pui_modelObjectCache];
  v6 = [v5 ambientConfiguration];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [a1 _path];
    v8 = [PRPosterPathUtilities loadAmbientConfigurationForPath:v9 error:a3];
  }

  return v8;
}

- (id)pr_loadAmbientWidgetLayoutWithError:()PBFAdditions
{
  v4 = [a1 _path];
  v5 = [PRPosterPathUtilities loadAmbientWidgetLayoutForPath:v4 error:a3];

  return v5;
}

- (id)pr_loadSuggestionMetadataWithError:()PBFAdditions
{
  v5 = [a1 pui_modelObjectCache];
  v6 = [v5 suggestionMetadata];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [a1 _path];
    v8 = [PRPosterPathUtilities loadSuggestionMetadataForPath:v9 error:a3];
  }

  return v8;
}

- (id)pr_loadOtherMetadataWithError:()PBFAdditions
{
  v5 = [a1 pui_modelObjectCache];
  v6 = [v5 otherMetadata];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [a1 _path];
    v8 = [PRPosterPathUtilities loadOtherMetadataForPath:v9 error:a3];
  }

  return v8;
}

- (BOOL)pr_storeAmbientWidgetLayout:()PBFAdditions error:
{
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 widgetLayoutIconState], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9))
  {
    v10 = [a1 _path];
    v11 = [PRPosterPathUtilities storeAmbientWidgetLayoutToPath:v10 posterAmbientWidgetLayout:v7 error:a4];
  }

  else
  {
    v10 = [a1 _path];
    v11 = [PRPosterPathUtilities removeAmbientWidgetLayout:v10 error:a4];
  }

  v12 = v11;

  return v12;
}

- (id)pr_posterProvider
{
  v1 = [a1 _path];
  v2 = [v1 serverIdentity];
  v3 = [v2 provider];

  return v3;
}

- (id)pr_posterUUID
{
  v1 = [a1 _path];
  v2 = [v1 serverIdentity];
  v3 = [v2 posterUUID];

  return v3;
}

- (id)pr_suggestedTintColor
{
  v9 = 0;
  v3 = [a1 pr_loadHomeScreenConfigurationWithError:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = PRLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PRSPosterConfiguration(PBFAdditions) *)a2 pr_suggestedTintColor];
    }
  }

  v6 = [v3 customizationConfiguration];
  v7 = [v6 suggestedTintColor];

  return v7;
}

- (uint64_t)pr_isHomeScreenDimmed
{
  v9 = 0;
  v3 = [a1 pr_loadHomeScreenConfigurationWithError:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = PRLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PRSPosterConfiguration(PBFAdditions) *)a2 pr_suggestedTintColor];
    }
  }

  v6 = [v3 customizationConfiguration];
  v7 = [v6 isDimmed];

  return v7;
}

- (void)pr_suggestedTintColor
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1A8AA7000, v2, v3, "%{public}@ error fetching home screen configuration: %{public}@", v4, v5, v6, v7, v8);
}

@end