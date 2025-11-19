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
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20812];

  return v2;
}

- (uint64_t)pr_areContentsCoveredByModalPresentation
{
  v1 = [a1 otherSettings];
  v2 = [v1 BOOLForSetting:20813];

  return v2;
}

- (void)pr_setEditingFocusActive:()PREditingScene
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20812];
}

- (void)pr_setContentsCoveredByModalPresentation:()PREditingScene
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20813];
}

- (void)pr_setInjectedEditingClientSettings:()PREditingScene
{
  v4 = a3;
  v5 = [a1 otherSettings];
  [v5 setObject:v4 forSetting:20814];
}

- (void)pr_setShouldShowEditingReticles:()PREditingScene
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:20780];
}

- (void)pr_setComplicationRowMode:()PREditingScene
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:20781];
}

@end