@interface _UIPrototypingSettingsManager
+ (id)sharedManager;
- (NSArray)allSettings;
- (_UIPrototypingSettingsManager)init;
- (id)settingOfType:(int64_t)type withName:(id)name;
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storedSettings = v2->_storedSettings;
    v2->_storedSettings = dictionary;

    [(_UIPrototypingSettingsManager *)v2 synchronizeStoredSettings];
  }

  return v2;
}

- (id)settingOfType:(int64_t)type withName:(id)name
{
  nameCopy = name;
  storedSettings = [(_UIPrototypingSettingsManager *)self storedSettings];
  v8 = [storedSettings objectForKeyedSubscript:nameCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(_UIPrototypingValue);
    [(_UIPrototypingValue *)v8 setType:type];
    [(_UIPrototypingValue *)v8 setName:nameCopy];
    storedSettings2 = [(_UIPrototypingSettingsManager *)self storedSettings];
    [storedSettings2 setObject:v8 forKeyedSubscript:nameCopy];
  }

  return v8;
}

- (NSArray)allSettings
{
  storedSettings = [(_UIPrototypingSettingsManager *)self storedSettings];
  allValues = [storedSettings allValues];

  return allValues;
}

- (void)synchronizeStoredSettings
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults valueForKey:@"_UIKitStoredPrototypingValues"];

  if (v4)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __58___UIPrototypingSettingsManager_synchronizeStoredSettings__block_invoke;
    v14[3] = &unk_1E71075F8;
    v14[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v14];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  storedSettings = [(_UIPrototypingSettingsManager *)self storedSettings];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __58___UIPrototypingSettingsManager_synchronizeStoredSettings__block_invoke_2;
  v12 = &unk_1E7127D48;
  v13 = dictionary;
  v7 = dictionary;
  [storedSettings enumerateKeysAndObjectsUsingBlock:&v9];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 setObject:v7 forKey:@"_UIKitStoredPrototypingValues"];
}

- (void)deleteAllStoredSettings
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"_UIKitStoredPrototypingValues"];

  storedSettings = [(_UIPrototypingSettingsManager *)self storedSettings];
  [storedSettings removeAllObjects];
}

@end