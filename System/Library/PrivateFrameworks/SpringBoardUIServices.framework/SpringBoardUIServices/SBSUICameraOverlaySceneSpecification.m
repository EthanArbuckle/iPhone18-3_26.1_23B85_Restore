@interface SBSUICameraOverlaySceneSpecification
- (id)defaultExtensions;
- (id)uiSceneSessionRole;
@end

@implementation SBSUICameraOverlaySceneSpecification

- (id)defaultExtensions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)uiSceneSessionRole
{
  if (uiSceneSessionRole_onceToken_4 != -1)
  {
    [SBSUICameraOverlaySceneSpecification uiSceneSessionRole];
  }

  return @"SBSUIWindowSceneSessionRoleCameraOverlay";
}

void __58__SBSUICameraOverlaySceneSpecification_uiSceneSessionRole__block_invoke()
{
  v1 = [MEMORY[0x1E69DD860] sharedFactory];
  v0 = objc_opt_new();
  [v1 _registerBuilder:v0 forRole:@"SBSUIWindowSceneSessionRoleCameraOverlay"];
}

@end