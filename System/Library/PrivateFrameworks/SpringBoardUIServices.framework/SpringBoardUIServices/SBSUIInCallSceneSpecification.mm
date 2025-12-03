@interface SBSUIInCallSceneSpecification
- (id)defaultExtensions;
- (id)initialActionHandlers;
- (id)initialSettingsDiffActions;
@end

@implementation SBSUIInCallSceneSpecification

- (id)defaultExtensions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getAMUIAmbientPresentationSceneExtensionClass_softClass_0;
  v10 = getAMUIAmbientPresentationSceneExtensionClass_softClass_0;
  if (!getAMUIAmbientPresentationSceneExtensionClass_softClass_0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getAMUIAmbientPresentationSceneExtensionClass_block_invoke_0;
    v6[3] = &unk_1E789DA88;
    v6[4] = &v7;
    __getAMUIAmbientPresentationSceneExtensionClass_block_invoke_0(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v11[0] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v4;
}

- (id)initialActionHandlers
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = SBSUIInCallSceneSpecification;
  initialActionHandlers = [(UIApplicationSceneSpecification *)&v7 initialActionHandlers];
  v3 = objc_alloc_init(SBSUIInCallWindowSceneBSActionsHandler);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [initialActionHandlers arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (id)initialSettingsDiffActions
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = SBSUIInCallSceneSpecification;
  initialSettingsDiffActions = [(UIApplicationSceneSpecification *)&v7 initialSettingsDiffActions];
  v3 = objc_alloc_init(SBSUIInCallWindowSceneSettingsDiffAction);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [initialSettingsDiffActions arrayByAddingObjectsFromArray:v4];

  return v5;
}

@end