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
    _path = [self _path];
    if ([_path isServerPosterPath])
    {
      v4 = [PRPosterPathModelObjectCache modelObjectCacheForPath:_path];
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
  pui_modelObjectCache = [self pui_modelObjectCache];
  configuredProperties = [pui_modelObjectCache configuredProperties];
  v7 = configuredProperties;
  if (configuredProperties)
  {
    v8 = configuredProperties;
  }

  else
  {
    _path = [self _path];
    v8 = [PRPosterPathUtilities loadConfiguredPropertiesForPath:_path error:a3];
  }

  return v8;
}

- (id)pr_loadFocusConfigurationWithError:()PBFAdditions
{
  pui_modelObjectCache = [self pui_modelObjectCache];
  focusConfiguration = [pui_modelObjectCache focusConfiguration];
  v7 = focusConfiguration;
  if (focusConfiguration)
  {
    v8 = focusConfiguration;
  }

  else
  {
    _path = [self _path];
    v8 = [PRPosterPathUtilities loadFocusConfigurationForPath:_path error:a3];
  }

  return v8;
}

- (id)pr_loadHomeScreenConfigurationWithError:()PBFAdditions
{
  pui_modelObjectCache = [self pui_modelObjectCache];
  v5 = [pui_modelObjectCache homeScreenConfigurationOrError:a3];

  return v5;
}

- (id)pr_loadTitleStyleConfigurationWithError:()PBFAdditions
{
  pui_modelObjectCache = [self pui_modelObjectCache];
  titleStyleConfiguration = [pui_modelObjectCache titleStyleConfiguration];
  v7 = titleStyleConfiguration;
  if (titleStyleConfiguration)
  {
    v8 = titleStyleConfiguration;
  }

  else
  {
    _path = [self _path];
    v8 = [PRPosterPathUtilities loadTitleStyleConfigurationForPath:_path error:a3];
  }

  return v8;
}

- (id)pr_loadComplicationLayoutWithError:()PBFAdditions
{
  pui_modelObjectCache = [self pui_modelObjectCache];
  complicationLayout = [pui_modelObjectCache complicationLayout];
  v7 = complicationLayout;
  if (complicationLayout)
  {
    v8 = complicationLayout;
  }

  else
  {
    _path = [self _path];
    v8 = [PRPosterPathUtilities loadComplicationLayoutForPath:_path error:a3];
  }

  return v8;
}

- (id)pr_loadColorVariationsWithError:()PBFAdditions
{
  pui_modelObjectCache = [self pui_modelObjectCache];
  colorVariationsConfiguration = [pui_modelObjectCache colorVariationsConfiguration];
  v7 = colorVariationsConfiguration;
  if (colorVariationsConfiguration)
  {
    v8 = colorVariationsConfiguration;
  }

  else
  {
    _path = [self _path];
    v8 = [PRPosterPathUtilities loadColorVariationsConfigurationForPath:_path error:a3];
  }

  return v8;
}

- (id)pr_loadQuickActionsConfigurationWithError:()PBFAdditions
{
  pui_modelObjectCache = [self pui_modelObjectCache];
  quickActionsConfiguration = [pui_modelObjectCache quickActionsConfiguration];
  v7 = quickActionsConfiguration;
  if (quickActionsConfiguration)
  {
    v8 = quickActionsConfiguration;
  }

  else
  {
    _path = [self _path];
    v8 = [PRPosterPathUtilities loadQuickActionsConfigurationForPath:_path error:a3];
  }

  return v8;
}

- (id)pr_loadAmbientConfigurationWithError:()PBFAdditions
{
  pui_modelObjectCache = [self pui_modelObjectCache];
  ambientConfiguration = [pui_modelObjectCache ambientConfiguration];
  v7 = ambientConfiguration;
  if (ambientConfiguration)
  {
    v8 = ambientConfiguration;
  }

  else
  {
    _path = [self _path];
    v8 = [PRPosterPathUtilities loadAmbientConfigurationForPath:_path error:a3];
  }

  return v8;
}

- (id)pr_loadAmbientWidgetLayoutWithError:()PBFAdditions
{
  _path = [self _path];
  v5 = [PRPosterPathUtilities loadAmbientWidgetLayoutForPath:_path error:a3];

  return v5;
}

- (id)pr_loadSuggestionMetadataWithError:()PBFAdditions
{
  pui_modelObjectCache = [self pui_modelObjectCache];
  suggestionMetadata = [pui_modelObjectCache suggestionMetadata];
  v7 = suggestionMetadata;
  if (suggestionMetadata)
  {
    v8 = suggestionMetadata;
  }

  else
  {
    _path = [self _path];
    v8 = [PRPosterPathUtilities loadSuggestionMetadataForPath:_path error:a3];
  }

  return v8;
}

- (id)pr_loadOtherMetadataWithError:()PBFAdditions
{
  pui_modelObjectCache = [self pui_modelObjectCache];
  otherMetadata = [pui_modelObjectCache otherMetadata];
  v7 = otherMetadata;
  if (otherMetadata)
  {
    v8 = otherMetadata;
  }

  else
  {
    _path = [self _path];
    v8 = [PRPosterPathUtilities loadOtherMetadataForPath:_path error:a3];
  }

  return v8;
}

- (BOOL)pr_storeAmbientWidgetLayout:()PBFAdditions error:
{
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 widgetLayoutIconState], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9))
  {
    _path = [self _path];
    v11 = [PRPosterPathUtilities storeAmbientWidgetLayoutToPath:_path posterAmbientWidgetLayout:v7 error:a4];
  }

  else
  {
    _path = [self _path];
    v11 = [PRPosterPathUtilities removeAmbientWidgetLayout:_path error:a4];
  }

  v12 = v11;

  return v12;
}

- (id)pr_posterProvider
{
  _path = [self _path];
  serverIdentity = [_path serverIdentity];
  provider = [serverIdentity provider];

  return provider;
}

- (id)pr_posterUUID
{
  _path = [self _path];
  serverIdentity = [_path serverIdentity];
  posterUUID = [serverIdentity posterUUID];

  return posterUUID;
}

- (id)pr_suggestedTintColor
{
  v9 = 0;
  v3 = [self pr_loadHomeScreenConfigurationWithError:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = PRLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PRSPosterConfiguration(PBFAdditions) *)a2 pr_suggestedTintColor];
    }
  }

  customizationConfiguration = [v3 customizationConfiguration];
  suggestedTintColor = [customizationConfiguration suggestedTintColor];

  return suggestedTintColor;
}

- (uint64_t)pr_isHomeScreenDimmed
{
  v9 = 0;
  v3 = [self pr_loadHomeScreenConfigurationWithError:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = PRLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PRSPosterConfiguration(PBFAdditions) *)a2 pr_suggestedTintColor];
    }
  }

  customizationConfiguration = [v3 customizationConfiguration];
  isDimmed = [customizationConfiguration isDimmed];

  return isDimmed;
}

- (void)pr_suggestedTintColor
{
  v1 = NSStringFromSelector(self);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_3(&dword_1A8AA7000, v2, v3, "%{public}@ error fetching home screen configuration: %{public}@", v4, v5, v6, v7, v8);
}

@end