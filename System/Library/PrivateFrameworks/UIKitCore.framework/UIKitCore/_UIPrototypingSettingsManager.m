@interface _UIPrototypingSettingsManager
+ (id)sharedManager;
- (NSArray)allSettings;
- (_UIPrototypingSettingsManager)init;
- (id)settingOfType:(int64_t)a3 withName:(id)a4;
- (void)deleteAllStoredSettings;
- (void)synchronizeStoredSettings;
@end

@implementation _UIPrototypingSettingsManager

+ (id)sharedManager
{
  if (qword_1ED4A2528 != -1)
  {
    dispatch_once(&qword_1ED4A2528, &__block_literal_global_640);
  }

  v3 = _MergedGlobals_1343;

  return v3;
}

- (_UIPrototypingSettingsManager)init
{
  v6.receiver = self;
  v6.super_class = _UIPrototypingSettingsManager;
  v2 = [(_UIPrototypingSettingsManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    storedSettings = v2->_storedSettings;
    v2->_storedSettings = v3;

    [(_UIPrototypingSettingsManager *)v2 synchronizeStoredSettings];
  }

  return v2;
}

- (id)settingOfType:(int64_t)a3 withName:(id)a4
{
  v6 = a4;
  v7 = [(_UIPrototypingSettingsManager *)self storedSettings];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v8 = objc_alloc_init(_UIPrototypingValue);
    [(_UIPrototypingValue *)v8 setType:a3];
    [(_UIPrototypingValue *)v8 setName:v6];
    v9 = [(_UIPrototypingSettingsManager *)self storedSettings];
    [v9 setObject:v8 forKeyedSubscript:v6];
  }

  return v8;
}

- (NSArray)allSettings
{
  v2 = [(_UIPrototypingSettingsManager *)self storedSettings];
  v3 = [v2 allValues];

  return v3;
}

- (void)synchronizeStoredSettings
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 valueForKey:@"_UIKitStoredPrototypingValues"];

  if (v4)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58___UIPrototypingSettingsManager_synchronizeStoredSettings__block_invoke;
    v14[3] = &unk_1E71075F8;
    v14[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v14];
  }

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(_UIPrototypingSettingsManager *)self storedSettings];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __58___UIPrototypingSettingsManager_synchronizeStoredSettings__block_invoke_2;
  v12 = &unk_1E7127D48;
  v13 = v5;
  v7 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:&v9];

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v8 setObject:v7 forKey:@"_UIKitStoredPrototypingValues"];
}

- (void)deleteAllStoredSettings
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 removeObjectForKey:@"_UIKitStoredPrototypingValues"];

  v4 = [(_UIPrototypingSettingsManager *)self storedSettings];
  [v4 removeAllObjects];
}

@end