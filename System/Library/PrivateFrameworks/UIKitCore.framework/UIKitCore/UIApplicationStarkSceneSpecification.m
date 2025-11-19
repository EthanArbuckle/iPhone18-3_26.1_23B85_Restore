@interface UIApplicationStarkSceneSpecification
- (id)baseSceneComponentClassDictionary;
- (id)connectionHandlers;
- (id)defaultExtensions;
- (id)finalActionHandlers;
- (id)initialSettingsDiffActions;
@end

@implementation UIApplicationStarkSceneSpecification

- (id)baseSceneComponentClassDictionary
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = _UICarPlaySceneComponentKey;
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)initialSettingsDiffActions
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v11[0] = v2;
  v3 = objc_opt_new();
  v11[1] = v3;
  v4 = objc_opt_new();
  v11[2] = v4;
  v5 = objc_opt_new();
  v11[3] = v5;
  v6 = objc_opt_new();
  v11[4] = v6;
  v7 = objc_opt_new();
  v11[5] = v7;
  v8 = objc_opt_new();
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

- (id)finalActionHandlers
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v8.receiver = self;
  v8.super_class = UIApplicationStarkSceneSpecification;
  v5 = [(UIApplicationSceneSpecification *)&v8 finalActionHandlers];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (id)connectionHandlers
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = _Block_copy(&__block_literal_global_20);
    v5[0] = v3;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  return v2;
}

- (id)defaultExtensions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end