@interface SBSUIScreenSharingOverlaySceneSpecification
- (id)defaultExtensions;
- (id)uiSceneSessionRole;
@end

@implementation SBSUIScreenSharingOverlaySceneSpecification

- (id)uiSceneSessionRole
{
  if (uiSceneSessionRole_onceToken_0 != -1)
  {
    [SBSUIScreenSharingOverlaySceneSpecification uiSceneSessionRole];
  }

  return @"SBSUIWindowSceneSessionRoleScreenSharingOverlay";
}

void __65__SBSUIScreenSharingOverlaySceneSpecification_uiSceneSessionRole__block_invoke()
{
  v1 = [MEMORY[0x1E69DD860] sharedFactory];
  v0 = objc_opt_new();
  [v1 _registerBuilder:v0 forRole:@"SBSUIWindowSceneSessionRoleScreenSharingOverlay"];
}

- (id)defaultExtensions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = SBSUIScreenSharingOverlaySceneSpecification;
  v2 = [(UIApplicationSceneSpecification *)&v7 defaultExtensions];
  v3 = [v2 count];
  v4 = objc_opt_class();
  if (v3)
  {
    [v2 arrayByAddingObject:v4];
  }

  else
  {
    v8[0] = v4;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }
  v5 = ;

  return v5;
}

@end