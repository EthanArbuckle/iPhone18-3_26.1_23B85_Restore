@interface SBSUIRemoteAlertSceneSpecification
- (id)defaultExtensions;
- (id)initialSettingsDiffActions;
@end

@implementation SBSUIRemoteAlertSceneSpecification

- (id)defaultExtensions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)initialSettingsDiffActions
{
  v6.receiver = self;
  v6.super_class = SBSUIRemoteAlertSceneSpecification;
  v2 = [(UIApplicationSceneSpecification *)&v6 initialSettingsDiffActions];
  v3 = objc_opt_new();
  v4 = [v2 arrayByAddingObject:v3];

  return v4;
}

@end