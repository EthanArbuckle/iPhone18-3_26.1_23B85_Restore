@interface NSUserDefaults(Workflow)
+ (id)simulatedFeatureFlagState:()Workflow;
+ (id)siriAssistantUserDefaults;
+ (id)systemShortcutsUserDefaults;
+ (id)workflowUserDefaults;
+ (uint64_t)allowActionsFromAllBundles;
+ (uint64_t)forceSpotlightImplicitResult;
+ (uint64_t)forceSpotlightRunSource;
+ (uint64_t)markdownRenderingV2Enabled;
+ (uint64_t)parameterSummaryDebugOverlayEnabled;
+ (uint64_t)remoteWidgetConfigurationEnabled;
+ (uint64_t)searchActionEnabled;
+ (uint64_t)showAllAppIntents;
+ (uint64_t)smartPromptsExplicitlyDisabled;
+ (uint64_t)toolKitIndexingEnabled;
+ (uint64_t)universalPreviewsEnabled;
+ (uint64_t)watchAutomationEnabled;
+ (void)lastAppShortcutUpdateDate;
+ (void)setSimulatedStateForTesting:()Workflow forFeatureFlag:;
@end

@implementation NSUserDefaults(Workflow)

+ (id)workflowUserDefaults
{
  if (workflowUserDefaults_onceToken != -1)
  {
    dispatch_once(&workflowUserDefaults_onceToken, &__block_literal_global_790);
  }

  v1 = workflowUserDefaults_workflowUserDefaults;

  return v1;
}

+ (id)systemShortcutsUserDefaults
{
  if (systemShortcutsUserDefaults_onceToken != -1)
  {
    dispatch_once(&systemShortcutsUserDefaults_onceToken, &__block_literal_global_334);
  }

  v1 = systemShortcutsUserDefaults_systemShortcutsUserDefaults;

  return v1;
}

+ (uint64_t)forceSpotlightRunSource
{
  systemShortcutsUserDefaults = [self systemShortcutsUserDefaults];
  v2 = [systemShortcutsUserDefaults BOOLForKey:@"WFForceSpotlightRunSource"];

  return v2;
}

+ (uint64_t)smartPromptsExplicitlyDisabled
{
  result = VCIsInternalBuild();
  if (result)
  {
    systemShortcutsUserDefaults = [self systemShortcutsUserDefaults];
    v4 = [systemShortcutsUserDefaults BOOLForKey:@"WFDisableSmartPrompts"];

    return v4;
  }

  return result;
}

+ (uint64_t)parameterSummaryDebugOverlayEnabled
{
  systemShortcutsUserDefaults = [self systemShortcutsUserDefaults];
  v2 = [systemShortcutsUserDefaults BOOLForKey:@"WFParameterSummaryDebugOverlayKey"];

  return v2;
}

+ (uint64_t)forceSpotlightImplicitResult
{
  systemShortcutsUserDefaults = [self systemShortcutsUserDefaults];
  v2 = [systemShortcutsUserDefaults BOOLForKey:@"WFForceSpotlightImplicitResult"];

  return v2;
}

+ (void)lastAppShortcutUpdateDate
{
  systemShortcutsUserDefaults = [self systemShortcutsUserDefaults];
  v2 = [systemShortcutsUserDefaults objectForKey:@"WFLastAppShortcutUpdateDateKey"];

  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (uint64_t)showAllAppIntents
{
  systemShortcutsUserDefaults = [self systemShortcutsUserDefaults];
  v2 = [systemShortcutsUserDefaults stringForKey:@"WFShortcutsDrawerVisibilityLevelKey"];
  v3 = [v2 isEqualToString:@"Everything"];

  return v3;
}

+ (uint64_t)searchActionEnabled
{
  v0 = [MEMORY[0x1E695E000] simulatedFeatureFlagState:@"search_action"];
  v1 = v0;
  if (v0)
  {
    bOOLValue = [v0 BOOLValue];
  }

  else
  {
    bOOLValue = _os_feature_enabled_impl();
  }

  v3 = bOOLValue;

  return v3;
}

+ (uint64_t)toolKitIndexingEnabled
{
  systemShortcutsUserDefaults = [self systemShortcutsUserDefaults];
  v2 = [systemShortcutsUserDefaults BOOLForKey:@"WFToolKitIndexingEnabled"];

  return v2;
}

+ (uint64_t)remoteWidgetConfigurationEnabled
{
  v0 = [MEMORY[0x1E695E000] simulatedFeatureFlagState:@"remote_widget_configuration"];
  v1 = v0;
  if (v0)
  {
    bOOLValue = [v0 BOOLValue];
  }

  else
  {
    bOOLValue = _os_feature_enabled_impl();
  }

  v3 = bOOLValue;

  return v3;
}

+ (uint64_t)watchAutomationEnabled
{
  v0 = [MEMORY[0x1E695E000] simulatedFeatureFlagState:@"watch_automation"];
  v1 = v0;
  if (v0)
  {
    bOOLValue = [v0 BOOLValue];
  }

  else
  {
    bOOLValue = _os_feature_enabled_impl();
  }

  v3 = bOOLValue;

  return v3;
}

+ (uint64_t)allowActionsFromAllBundles
{
  systemShortcutsUserDefaults = [self systemShortcutsUserDefaults];
  v2 = [systemShortcutsUserDefaults BOOLForKey:@"WFAllowActionsFromAllBundles"];

  return v2;
}

+ (uint64_t)markdownRenderingV2Enabled
{
  v0 = [MEMORY[0x1E695E000] simulatedFeatureFlagState:@"markdown_rendering_v2"];
  v1 = v0;
  if (v0)
  {
    bOOLValue = [v0 BOOLValue];
  }

  else
  {
    bOOLValue = _os_feature_enabled_impl();
  }

  v3 = bOOLValue;

  return v3;
}

+ (uint64_t)universalPreviewsEnabled
{
  v0 = [MEMORY[0x1E695E000] simulatedFeatureFlagState:@"universal_previews"];
  v1 = v0;
  if (v0)
  {
    bOOLValue = [v0 BOOLValue];
  }

  else
  {
    bOOLValue = _os_feature_enabled_impl();
  }

  v3 = bOOLValue;

  return v3;
}

+ (id)simulatedFeatureFlagState:()Workflow
{
  v3 = a3;
  os_unfair_lock_lock(&WFFeatureFlagTestingLock);
  v4 = WFGetFeatureFlagTestingTable();
  v5 = [v4 objectForKeyedSubscript:v3];

  os_unfair_lock_unlock(&WFFeatureFlagTestingLock);

  return v5;
}

+ (void)setSimulatedStateForTesting:()Workflow forFeatureFlag:
{
  v7 = a4;
  os_unfair_lock_lock(&WFFeatureFlagTestingLock);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v6 = WFGetFeatureFlagTestingTable();
  [v6 setObject:v5 forKeyedSubscript:v7];

  os_unfair_lock_unlock(&WFFeatureFlagTestingLock);
}

+ (id)siriAssistantUserDefaults
{
  if (siriAssistantUserDefaults_onceToken != -1)
  {
    dispatch_once(&siriAssistantUserDefaults_onceToken, &__block_literal_global_355);
  }

  v1 = siriAssistantUserDefaults_siriAssistantUserDefaults;

  return v1;
}

@end