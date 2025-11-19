@interface SBSUIProximityReaderIDVerifierSceneSpecification
- (id)uiSceneSessionRole;
@end

@implementation SBSUIProximityReaderIDVerifierSceneSpecification

- (id)uiSceneSessionRole
{
  if (uiSceneSessionRole_onceToken_26 != -1)
  {
    [SBSUIProximityReaderIDVerifierSceneSpecification uiSceneSessionRole];
  }

  return @"SBSUIWindowSceneSessionRoleProximityReaderIDVerifier";
}

void __70__SBSUIProximityReaderIDVerifierSceneSpecification_uiSceneSessionRole__block_invoke()
{
  v1 = [MEMORY[0x1E69DD860] sharedFactory];
  v0 = objc_opt_new();
  [v1 _registerBuilder:v0 forRole:@"SBSUIWindowSceneSessionRoleProximityReaderIDVerifier"];
}

@end