@interface SBSUIAXUIServerActiveWindowSceneSpecification
- (id)uiSceneSessionRole;
@end

@implementation SBSUIAXUIServerActiveWindowSceneSpecification

- (id)uiSceneSessionRole
{
  if (uiSceneSessionRole_onceToken != -1)
  {
    [SBSUIAXUIServerActiveWindowSceneSpecification uiSceneSessionRole];
  }

  return @"SBSUIWindowSceneSessionRoleAXUIServerActiveWindowScene";
}

void __67__SBSUIAXUIServerActiveWindowSceneSpecification_uiSceneSessionRole__block_invoke()
{
  v1 = [MEMORY[0x1E69DD860] sharedFactory];
  v0 = objc_opt_new();
  [v1 _registerBuilder:v0 forRole:@"SBSUIWindowSceneSessionRoleAXUIServerActiveWindowScene"];
}

@end