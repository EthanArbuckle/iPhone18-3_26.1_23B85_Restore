@interface _UISceneRenderingEnvironmentSettings
+ (void)configureSetting:(id)setting;
@end

@implementation _UISceneRenderingEnvironmentSettings

+ (void)configureSetting:(id)setting
{
  settingCopy = setting;
  if (([settingCopy matchesProperty:sel_modern_isCapturingContentForAdditionalRenderingDestination] & 1) != 0 || objc_msgSend(settingCopy, "matchesProperty:", sel_systemDisplayIdentifier))
  {
    [settingCopy setPropagating:1];
    [settingCopy setNullPreserving:1];
  }

  if ([settingCopy matchesProperty:sel_activeAppearance])
  {
    [settingCopy setPropagating:1];
    [settingCopy setNullPreserving:1];
    [settingCopy setDefaultValue:&unk_1EFE321E8];
    [settingCopy setDescriptionProvider:&__block_literal_global_442];
  }
}

@end