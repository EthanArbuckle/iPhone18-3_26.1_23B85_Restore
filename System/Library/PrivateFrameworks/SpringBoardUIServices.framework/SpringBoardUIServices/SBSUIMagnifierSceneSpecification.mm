@interface SBSUIMagnifierSceneSpecification
- (id)uiSceneSessionRole;
@end

@implementation SBSUIMagnifierSceneSpecification

- (id)uiSceneSessionRole
{
  if (uiSceneSessionRole_onceToken_1 != -1)
  {
    [SBSUIMagnifierSceneSpecification uiSceneSessionRole];
  }

  return @"SBSUIWindowSceneSessionRoleMagnifier";
}

void __54__SBSUIMagnifierSceneSpecification_uiSceneSessionRole__block_invoke()
{
  v1 = [MEMORY[0x1E69DD860] sharedFactory];
  v0 = objc_opt_new();
  [v1 _registerBuilder:v0 forRole:@"SBSUIWindowSceneSessionRoleMagnifier"];
}

@end