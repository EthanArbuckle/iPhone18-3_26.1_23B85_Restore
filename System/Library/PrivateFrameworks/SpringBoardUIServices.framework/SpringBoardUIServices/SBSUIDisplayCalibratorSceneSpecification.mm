@interface SBSUIDisplayCalibratorSceneSpecification
- (id)uiSceneSessionRole;
@end

@implementation SBSUIDisplayCalibratorSceneSpecification

- (id)uiSceneSessionRole
{
  if (uiSceneSessionRole_onceToken_3 != -1)
  {
    [SBSUIDisplayCalibratorSceneSpecification uiSceneSessionRole];
  }

  return @"SBSUIWindowSceneSessionRoleDisplayCalibrator";
}

void __62__SBSUIDisplayCalibratorSceneSpecification_uiSceneSessionRole__block_invoke()
{
  v1 = [MEMORY[0x1E69DD860] sharedFactory];
  v0 = objc_opt_new();
  [v1 _registerBuilder:v0 forRole:@"SBSUIWindowSceneSessionRoleDisplayCalibrator"];
}

@end