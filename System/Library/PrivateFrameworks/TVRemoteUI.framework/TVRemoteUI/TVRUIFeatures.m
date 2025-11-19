@interface TVRUIFeatures
+ (BOOL)_isInternalInstall;
+ (BOOL)_valueForInternalInstallWithBlock:(id)a3;
+ (BOOL)includeRTReviewInInfoPanel;
+ (BOOL)isDockEnabled;
+ (BOOL)isHintsDebugUIEnabled;
+ (BOOL)isPickerDebugUIEnabled;
+ (BOOL)isTapToRadarEnabled;
+ (BOOL)persistHintsUIEnabled;
+ (BOOL)replaceMuteButtonWithContextMenu;
+ (BOOL)showExperimentalCastTab;
+ (BOOL)swapBackPlayPauseButtonsEnabled;
+ (NSUserDefaults)defaults;
+ (id)_prefForKey:(id)a3;
+ (void)setDockEnabled:(BOOL)a3;
@end

@implementation TVRUIFeatures

+ (BOOL)isTapToRadarEnabled
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__TVRUIFeatures_isTapToRadarEnabled__block_invoke;
  v3[3] = &__block_descriptor_40_e5_B8__0l;
  v3[4] = a1;
  return [a1 _valueForInternalInstallWithBlock:v3];
}

uint64_t __36__TVRUIFeatures_isTapToRadarEnabled__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _prefForKey:@"TVRemoteTTRDisabled"];
  v2 = [v1 BOOLValue];

  return v2 ^ 1u;
}

+ (BOOL)_isInternalInstall
{
  if (_isInternalInstall_onceToken != -1)
  {
    +[TVRUIFeatures _isInternalInstall];
  }

  return _isInternalInstall__isInternal;
}

uint64_t __35__TVRUIFeatures__isInternalInstall__block_invoke()
{
  result = MGGetBoolAnswer();
  _isInternalInstall__isInternal = result;
  return result;
}

+ (BOOL)persistHintsUIEnabled
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__TVRUIFeatures_persistHintsUIEnabled__block_invoke;
  v3[3] = &__block_descriptor_40_e5_B8__0l;
  v3[4] = a1;
  return [a1 _valueForInternalInstallWithBlock:v3];
}

uint64_t __38__TVRUIFeatures_persistHintsUIEnabled__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _prefForKey:@"TVRemotePersistHintsUI"];
  v2 = [v1 BOOLValue];

  return v2;
}

+ (BOOL)isHintsDebugUIEnabled
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__TVRUIFeatures_isHintsDebugUIEnabled__block_invoke;
  v3[3] = &__block_descriptor_40_e5_B8__0l;
  v3[4] = a1;
  return [a1 _valueForInternalInstallWithBlock:v3];
}

uint64_t __38__TVRUIFeatures_isHintsDebugUIEnabled__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _prefForKey:@"TVRemoteHintsDebugUI"];
  v2 = [v1 BOOLValue];

  return v2;
}

+ (BOOL)isPickerDebugUIEnabled
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__TVRUIFeatures_isPickerDebugUIEnabled__block_invoke;
  v3[3] = &__block_descriptor_40_e5_B8__0l;
  v3[4] = a1;
  return [a1 _valueForInternalInstallWithBlock:v3];
}

uint64_t __39__TVRUIFeatures_isPickerDebugUIEnabled__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _prefForKey:@"TVRemotePickerDebugUI"];
  v2 = [v1 BOOLValue];

  return v2;
}

+ (BOOL)swapBackPlayPauseButtonsEnabled
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__TVRUIFeatures_swapBackPlayPauseButtonsEnabled__block_invoke;
  v3[3] = &__block_descriptor_40_e5_B8__0l;
  v3[4] = a1;
  return [a1 _valueForInternalInstallWithBlock:v3];
}

uint64_t __48__TVRUIFeatures_swapBackPlayPauseButtonsEnabled__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _prefForKey:@"TVRemoteSwapBackPlayPauseButtons"];
  v2 = [v1 BOOLValue];

  return v2;
}

+ (BOOL)showExperimentalCastTab
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__TVRUIFeatures_showExperimentalCastTab__block_invoke;
  v3[3] = &__block_descriptor_40_e5_B8__0l;
  v3[4] = a1;
  return [a1 _valueForInternalInstallWithBlock:v3];
}

uint64_t __40__TVRUIFeatures_showExperimentalCastTab__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _prefForKey:@"TVRemoteShowCastTab"];
  v2 = [v1 BOOLValue];

  return v2;
}

+ (BOOL)replaceMuteButtonWithContextMenu
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__TVRUIFeatures_replaceMuteButtonWithContextMenu__block_invoke;
  v3[3] = &__block_descriptor_40_e5_B8__0l;
  v3[4] = a1;
  return [a1 _valueForInternalInstallWithBlock:v3];
}

uint64_t __49__TVRUIFeatures_replaceMuteButtonWithContextMenu__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _prefForKey:@"TVRemoteReplaceMuteButtonWithContextMenu"];
  v2 = [v1 BOOLValue];

  return v2;
}

+ (BOOL)includeRTReviewInInfoPanel
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__TVRUIFeatures_includeRTReviewInInfoPanel__block_invoke;
  v3[3] = &__block_descriptor_40_e5_B8__0l;
  v3[4] = a1;
  return [a1 _valueForInternalInstallWithBlock:v3];
}

uint64_t __43__TVRUIFeatures_includeRTReviewInInfoPanel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _prefForKey:@"TVRemoteIncludeRTInInfoPanel"];
  v2 = [v1 BOOLValue];

  return v2;
}

+ (BOOL)isDockEnabled
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"DockEnabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (void)setDockEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [v5 setObject:v4 forKey:@"DockEnabled"];
}

+ (BOOL)_valueForInternalInstallWithBlock:(id)a3
{
  v4 = a3;
  if ([a1 _isInternalInstall])
  {
    v5 = v4[2](v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NSUserDefaults)defaults
{
  v2 = _defaults;
  if (!_defaults)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.TVRemoteCore"];
    v4 = _defaults;
    _defaults = v3;

    v2 = _defaults;
  }

  return v2;
}

+ (id)_prefForKey:(id)a3
{
  v3 = a3;
  v4 = +[TVRUIFeatures defaults];
  v5 = [v4 objectForKey:v3];

  return v5;
}

@end