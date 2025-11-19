@interface UIPrototypingSettingsManager
@end

@implementation UIPrototypingSettingsManager

void __46___UIPrototypingSettingsManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(_UIPrototypingSettingsManager);
  v1 = _MergedGlobals_1343;
  _MergedGlobals_1343 = v0;
}

void __58___UIPrototypingSettingsManager_synchronizeStoredSettings__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [[_UIPrototypingValue alloc] initWithDictionary:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) storedSettings];
    v8 = [v7 objectForKeyedSubscript:v10];

    if (!v8)
    {
      v9 = [*(a1 + 32) storedSettings];
      [v9 setObject:v6 forKeyedSubscript:v10];
    }
  }
}

void __58___UIPrototypingSettingsManager_synchronizeStoredSettings__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

@end