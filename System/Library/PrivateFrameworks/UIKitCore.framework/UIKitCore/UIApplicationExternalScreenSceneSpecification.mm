@interface UIApplicationExternalScreenSceneSpecification
- (id)connectionHandlers;
- (id)initialSettingsDiffActions;
@end

@implementation UIApplicationExternalScreenSceneSpecification

- (id)initialSettingsDiffActions
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v10[0] = v2;
  v3 = objc_opt_new();
  v10[1] = v3;
  v4 = objc_opt_new();
  v10[2] = v4;
  v5 = objc_opt_new();
  v10[3] = v5;
  v6 = objc_opt_new();
  v10[4] = v6;
  v7 = objc_opt_new();
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
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

@end