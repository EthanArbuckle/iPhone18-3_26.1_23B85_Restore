@interface FBSMutableSceneClientSettings(PREditingScene)
- (uint64_t)pr_areContentsCoveredByModalPresentation;
- (uint64_t)pr_isEditingFocusActive;
- (void)pr_setComplicationRowMode:()PREditingScene;
- (void)pr_setContentsCoveredByModalPresentation:()PREditingScene;
- (void)pr_setEditingFocusActive:()PREditingScene;
- (void)pr_setInjectedEditingClientSettings:()PREditingScene;
- (void)pr_setShouldShowEditingReticles:()PREditingScene;
@end

@implementation FBSMutableSceneClientSettings(PREditingScene)

- (uint64_t)pr_isEditingFocusActive
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20812];

  return v2;
}

- (uint64_t)pr_areContentsCoveredByModalPresentation
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:20813];

  return v2;
}

- (void)pr_setEditingFocusActive:()PREditingScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20812];
}

- (void)pr_setContentsCoveredByModalPresentation:()PREditingScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20813];
}

- (void)pr_setInjectedEditingClientSettings:()PREditingScene
{
  v4 = a3;
  otherSettings = [self otherSettings];
  [otherSettings setObject:v4 forSetting:20814];
}

- (void)pr_setShouldShowEditingReticles:()PREditingScene
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:20780];
}

- (void)pr_setComplicationRowMode:()PREditingScene
{
  otherSettings = [self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [otherSettings setObject:v4 forSetting:20781];
}

@end