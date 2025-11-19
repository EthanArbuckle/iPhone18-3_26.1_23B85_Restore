@interface UIApplicationSceneSpecification
- (id)baseSceneComponentClassDictionary;
- (id)connectionHandlers;
- (id)coreSceneComponentClassDictionary;
- (id)defaultExtensions;
- (id)disconnectionHandlers;
- (id)finalActionHandlers;
- (id)initialActionHandlers;
- (id)initialSettingsDiffActions;
@end

@implementation UIApplicationSceneSpecification

- (id)defaultExtensions
{
  v11[13] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = UIApplicationSceneSpecification;
  v2 = [(UIApplicationSceneSpecification *)&v10 defaultExtensions];
  v3 = [v2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v11[3] = objc_opt_class();
  v11[4] = objc_opt_class();
  v11[5] = objc_opt_class();
  v11[6] = objc_opt_class();
  v11[7] = objc_opt_class();
  v11[8] = objc_opt_class();
  v11[9] = objc_opt_class();
  v11[10] = objc_opt_class();
  v11[11] = objc_opt_class();
  v11[12] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:13];
  [v6 addObjectsFromArray:v7];

  v8 = [v6 copy];

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
    v3 = _Block_copy(&__block_literal_global_85);
    v5[0] = v3;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  return v2;
}

- (id)initialSettingsDiffActions
{
  v18[10] = *MEMORY[0x1E69E9840];
  v16 = objc_opt_new();
  v18[0] = v16;
  v15 = objc_opt_new();
  v18[1] = v15;
  v14 = objc_opt_new();
  v18[2] = v14;
  v3 = objc_opt_new();
  v18[3] = v3;
  v4 = objc_opt_new();
  v18[4] = v4;
  v5 = objc_opt_new();
  v18[5] = v5;
  v6 = objc_opt_new();
  v18[6] = v6;
  v7 = objc_opt_new();
  v18[7] = v7;
  v8 = objc_opt_new();
  v18[8] = v8;
  v9 = objc_opt_new();
  v18[9] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:10];
  v17.receiver = self;
  v17.super_class = UIApplicationSceneSpecification;
  v11 = [(FBSSceneSpecification *)&v17 initialSettingsDiffActions];
  v12 = [v10 arrayByAddingObjectsFromArray:v11];

  return v12;
}

- (id)finalActionHandlers
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v6[0] = v2;
  v3 = objc_opt_new();
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)initialActionHandlers
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = objc_opt_new();
  v23[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

  v10 = [UIApp _appAdoptsUISceneLifecycle];
  v11 = v9;
  if (v10)
  {
    v20 = objc_opt_new();
    v22[0] = v20;
    v19 = objc_opt_new();
    v22[1] = v19;
    v18 = objc_opt_new();
    v22[2] = v18;
    v17 = objc_opt_new();
    v22[3] = v17;
    v15 = objc_opt_new();
    v22[4] = v15;
    v5 = objc_opt_new();
    v22[5] = v5;
    v6 = objc_opt_new();
    v22[6] = v6;
    v2 = objc_opt_new();
    v22[7] = v2;
    v3 = objc_opt_new();
    v22[8] = v3;
    v4 = objc_opt_new();
    v22[9] = v4;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:10];
  }

  v21.receiver = self;
  v21.super_class = UIApplicationSceneSpecification;
  v12 = [(FBSSceneSpecification *)&v21 initialActionHandlers];
  v13 = [v11 arrayByAddingObjectsFromArray:v12];

  if (v10)
  {
  }

  return v13;
}

- (id)coreSceneComponentClassDictionary
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setObject:objc_opt_class() forKeyedSubscript:_UIKeyWindowSceneObserverComponentKey];
  if (_UIViewMaskingConfigurationSPIEnabled())
  {
    v3 = objc_opt_class();
    v4 = +[_UIRelativeCornerMaskingProviderSceneComponent componentKey];
    [v2 setObject:v3 forKeyedSubscript:v4];
  }

  [v2 setObject:objc_opt_class() forKeyedSubscript:_UIEventDeferringSceneComponentKey];
  [v2 setObject:objc_opt_class() forKeyedSubscript:0x1EFB5FC50];
  [v2 setObject:objc_opt_class() forKeyedSubscript:0x1EFB5FC30];
  [v2 setObject:objc_opt_class() forKeyedSubscript:_UIFocusSystemSceneComponentKey];
  [v2 setObject:objc_opt_class() forKeyedSubscript:_UIShareableContentSceneComponentKey];
  [v2 setObject:objc_opt_class() forKeyedSubscript:@"_UIHomeAffordanceSceneNotifierComponentKey"];

  return v2;
}

- (id)baseSceneComponentClassDictionary
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setObject:objc_msgSend(objc_opt_class() forKeyedSubscript:{"_statusBarManagerClass"), _UIStatusBarManagerWindowSceneComponentKey}];
  [v2 setObject:objc_opt_class() forKeyedSubscript:_UISystemAppearanceManagerWindowSceneComponentKey];
  [v2 setObject:objc_opt_class() forKeyedSubscript:_UIBannerManagerWindowSceneComponentKey];
  [v2 setObject:objc_opt_class() forKeyedSubscript:_UIAlertControllerStackManagerSceneComponentKey];
  if (+[_UIDebugIdentifierLabelSceneComponent isEnabled])
  {
    [v2 setObject:objc_opt_class() forKeyedSubscript:0x1EFB935F0];
  }

  if (_os_feature_enabled_impl())
  {
    [v2 setObject:objc_opt_class() forKeyedSubscript:@"_UIContentTextExtractionSceneComponentKey"];
  }

  [v2 setObject:objc_opt_class() forKeyedSubscript:_UIRenderingEnvironmentSceneComponentKey];
  [v2 setObject:objc_opt_class() forKeyedSubscript:_UIHDRUsageCoordinatorSceneComponentKey];

  return v2;
}

- (id)disconnectionHandlers
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = _Block_copy(&__block_literal_global_8_1);
    v5[0] = v3;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  return v2;
}

@end