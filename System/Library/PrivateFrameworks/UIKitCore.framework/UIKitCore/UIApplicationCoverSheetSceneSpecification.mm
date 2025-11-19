@interface UIApplicationCoverSheetSceneSpecification
- (id)baseSceneComponentClassDictionary;
- (id)connectionHandlers;
@end

@implementation UIApplicationCoverSheetSceneSpecification

- (id)baseSceneComponentClassDictionary
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = _UIStatusBarManagerWindowSceneComponentKey;
  v5[0] = [objc_opt_class() _statusBarManagerClass];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
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