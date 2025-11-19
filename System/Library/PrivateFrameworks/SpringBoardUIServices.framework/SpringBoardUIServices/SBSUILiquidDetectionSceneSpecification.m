@interface SBSUILiquidDetectionSceneSpecification
- (id)uiSceneSessionRole;
@end

@implementation SBSUILiquidDetectionSceneSpecification

- (id)uiSceneSessionRole
{
  if (uiSceneSessionRole_onceToken_5 != -1)
  {
    [SBSUILiquidDetectionSceneSpecification uiSceneSessionRole];
  }

  return @"SBSUIWindowSceneSessionRoleLiquidDetection";
}

void __60__SBSUILiquidDetectionSceneSpecification_uiSceneSessionRole__block_invoke()
{
  v1 = [MEMORY[0x1E69DD860] sharedFactory];
  v0 = objc_opt_new();
  [v1 _registerBuilder:v0 forRole:@"SBSUIWindowSceneSessionRoleLiquidDetection"];
}

@end