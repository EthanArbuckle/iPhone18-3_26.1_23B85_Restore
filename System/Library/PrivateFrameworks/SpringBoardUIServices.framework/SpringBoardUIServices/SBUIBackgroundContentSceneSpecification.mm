@interface SBUIBackgroundContentSceneSpecification
- (id)defaultExtensions;
- (id)initialActionHandlers;
- (id)initialSettingsDiffActions;
@end

@implementation SBUIBackgroundContentSceneSpecification

- (id)defaultExtensions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)initialActionHandlers
{
  v6.receiver = self;
  v6.super_class = SBUIBackgroundContentSceneSpecification;
  initialActionHandlers = [(UIApplicationSceneSpecification *)&v6 initialActionHandlers];
  v3 = objc_alloc_init(SBUIBackgroundContentActionHandler);
  v4 = [initialActionHandlers arrayByAddingObject:v3];

  return v4;
}

- (id)initialSettingsDiffActions
{
  v6.receiver = self;
  v6.super_class = SBUIBackgroundContentSceneSpecification;
  initialSettingsDiffActions = [(UIApplicationSceneSpecification *)&v6 initialSettingsDiffActions];
  v3 = objc_opt_new();
  v4 = [initialSettingsDiffActions arrayByAddingObject:v3];

  return v4;
}

@end