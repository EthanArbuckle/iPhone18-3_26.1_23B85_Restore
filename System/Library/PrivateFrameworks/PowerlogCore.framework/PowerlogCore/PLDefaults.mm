@interface PLDefaults
+ (BOOL)BOOLForKey:(id)key ifNotSet:(BOOL)set;
+ (BOOL)debugEnabled;
+ (BOOL)eplEnabled;
+ (BOOL)fullModeForClass:(Class)class;
+ (BOOL)fullPLLog;
+ (BOOL)isClassDebugEnabled:(Class)enabled;
+ (BOOL)isClassDebugEnabled:(Class)enabled forKey:(id)key;
+ (BOOL)isClassNameDebugEnabled:(id)enabled;
+ (BOOL)isClassNameDebugEnabled:(id)enabled forKey:(id)key;
+ (BOOL)isDevBoard;
+ (BOOL)isModelTrigger;
+ (BOOL)isModelingDebugEnabled;
+ (BOOL)isTaskFullEPLMode;
+ (BOOL)objectExistsForKey:(id)key;
+ (BOOL)oldFullMode;
+ (double)doubleForKey:(id)key ifNotSet:(double)set;
+ (id)allDefaultsEnabled;
+ (id)applicationID;
+ (id)objectForKey:(id)key;
+ (id)objectForKey:(id)key ifNotSet:(id)set;
+ (id)sharedDefaults;
+ (int)liveModeQuery;
+ (int64_t)longForKey:(id)key ifNotSet:(int64_t)set;
+ (int64_t)mode;
+ (void)enableRestartAtEPL;
+ (void)registerEPLNotificationWithQueue:(id)queue;
+ (void)resetUserDefaultCacheForKey:(id)key;
+ (void)resetUserDefaultCacheForKey:(id)key forApplicationID:(id)d;
- (PLDefaults)init;
- (id)instancePrefsObjectForKey:(id)key;
- (id)managedPrefsObjectForKey:(id)key forApplicationID:(id)d synchronize:(BOOL)synchronize;
- (id)userDefaultsObjectForKey:(id)key forApplicationID:(id)d synchronize:(BOOL)synchronize;
- (void)resetUserDefaultCacheForKey:(id)key forApplicationID:(id)d;
- (void)setObject:(id)object forKey:(id)key forApplicationID:(id)d saveToDisk:(BOOL)disk;
@end

@implementation PLDefaults

+ (BOOL)debugEnabled
{
  v2 = +[PLDefaults sharedDefaults];
  debugEnabled = [v2 debugEnabled];

  return debugEnabled;
}

+ (id)sharedDefaults
{
  if (sharedDefaults_onceSharedDefaults != -1)
  {
    +[PLDefaults sharedDefaults];
  }

  v3 = sharedDefaults_sharedDefaults;

  return v3;
}

+ (int64_t)mode
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__PLDefaults_mode__block_invoke;
  block[3] = &unk_1E85190B8;
  v5 = @"Mode";
  if (mode_defaultOnce != -1)
  {
    dispatch_once(&mode_defaultOnce, block);
  }

  v2 = mode_objectForKey;

  return v2;
}

+ (BOOL)isDevBoard
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__PLDefaults_isDevBoard__block_invoke;
  block[3] = &unk_1E85190B8;
  v5 = @"DevBoard";
  if (isDevBoard_defaultOnce != -1)
  {
    dispatch_once(&isDevBoard_defaultOnce, block);
  }

  v2 = isDevBoard_objectForKey;

  return v2;
}

+ (id)applicationID
{
  if (applicationID_onceToken != -1)
  {
    +[PLDefaults applicationID];
  }

  v3 = applicationID_applicationID;

  return v3;
}

+ (BOOL)isTaskFullEPLMode
{
  if (+[PLDefaults taskMode](PLDefaults, "taskMode") || +[PLDefaults fullMode])
  {
    return 1;
  }

  return +[PLDefaults eplEnabled];
}

+ (BOOL)eplEnabled
{
  v2 = +[PLDefaults sharedDefaults];
  eplEnabled = [v2 eplEnabled];

  return eplEnabled;
}

uint64_t __27__PLDefaults_applicationID__block_invoke()
{
  v0 = +[PLUtilities isPowerlogHelperd];
  v1 = @"com.apple.powerlogd";
  if (v0)
  {
    v1 = @"com.apple.powerlogHelperd";
  }

  applicationID_applicationID = v1;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __28__PLDefaults_sharedDefaults__block_invoke()
{
  sharedDefaults_sharedDefaults = objc_alloc_init(PLDefaults);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)allDefaultsEnabled
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  applicationID = [objc_opt_class() applicationID];
  v5 = CFPreferencesCopyKeyList(applicationID, *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [self objectForKey:{v11, v15}];
        [dictionary setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (BOOL)objectExistsForKey:(id)key
{
  v3 = [PLDefaults objectForKey:key];
  v4 = v3 != 0;

  return v4;
}

+ (id)objectForKey:(id)key
{
  keyCopy = key;
  applicationID = [objc_opt_class() applicationID];
  v5 = [PLDefaults objectForKey:keyCopy forApplicationID:applicationID synchronize:0];

  return v5;
}

+ (id)objectForKey:(id)key ifNotSet:(id)set
{
  setCopy = set;
  v7 = [self objectForKey:key];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = setCopy;
  }

  v10 = v9;

  return v10;
}

+ (void)resetUserDefaultCacheForKey:(id)key
{
  keyCopy = key;
  applicationID = [objc_opt_class() applicationID];
  [PLDefaults resetUserDefaultCacheForKey:keyCopy forApplicationID:applicationID];
}

+ (void)resetUserDefaultCacheForKey:(id)key forApplicationID:(id)d
{
  dCopy = d;
  keyCopy = key;
  v7 = +[PLDefaults sharedDefaults];
  [v7 resetUserDefaultCacheForKey:keyCopy forApplicationID:dCopy];
}

+ (BOOL)fullModeForClass:(Class)class
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromClass(class);
  v6 = [v4 stringWithFormat:@"%@_FullMode", v5];

  v7 = [PLDefaults objectForKey:v6];

  if (v7)
  {
    v8 = [PLDefaults objectForKey:v6];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = [self fullMode];
  }

  return bOOLValue;
}

+ (int)liveModeQuery
{
  v2 = [PLDefaults objectForKey:@"Mode"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    if (!+[PLPlatform isWatch])
    {
      [PLDefaults setObject:&unk_1F5405D78 forKey:@"Mode" saveToDisk:1];
    }

    intValue = 0;
  }

  return intValue;
}

+ (BOOL)oldFullMode
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__PLDefaults_oldFullMode__block_invoke;
  block[3] = &unk_1E85190B8;
  v5 = @"FullMode";
  if (oldFullMode_defaultOnce != -1)
  {
    dispatch_once(&oldFullMode_defaultOnce, block);
  }

  v2 = oldFullMode_objectForKey;

  return v2;
}

BOOL __25__PLDefaults_oldFullMode__block_invoke(uint64_t a1)
{
  result = [PLDefaults BOOLForKey:*(a1 + 32)];
  oldFullMode_objectForKey = result;
  return result;
}

int64_t __18__PLDefaults_mode__block_invoke(uint64_t a1)
{
  result = [PLDefaults longForKey:*(a1 + 32)];
  mode_objectForKey = result;
  return result;
}

BOOL __24__PLDefaults_isDevBoard__block_invoke(uint64_t a1)
{
  result = [PLDefaults BOOLForKey:*(a1 + 32)];
  isDevBoard_objectForKey = result;
  return result;
}

+ (BOOL)isModelingDebugEnabled
{
  if (+[PLDefaults isDevBoard])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__PLDefaults_isModelingDebugEnabled__block_invoke;
    block[3] = &unk_1E85190B8;
    v5 = @"ModelingDebugEnabled";
    if (isModelingDebugEnabled_defaultOnce != -1)
    {
      dispatch_once(&isModelingDebugEnabled_defaultOnce, block);
    }

    v2 = isModelingDebugEnabled_objectForKey;

    isModelingDebugEnabled__modelingDebugEnabled = v2;
  }

  else
  {
    v2 = isModelingDebugEnabled__modelingDebugEnabled;
  }

  return v2 & 1;
}

BOOL __36__PLDefaults_isModelingDebugEnabled__block_invoke(uint64_t a1)
{
  result = [PLDefaults BOOLForKey:*(a1 + 32)];
  isModelingDebugEnabled_objectForKey = result;
  return result;
}

+ (BOOL)isModelTrigger
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__PLDefaults_isModelTrigger__block_invoke;
  block[3] = &unk_1E85190B8;
  v5 = @"ModelTrigger";
  if (isModelTrigger_defaultOnce != -1)
  {
    dispatch_once(&isModelTrigger_defaultOnce, block);
  }

  v2 = isModelTrigger_objectForKey;

  return v2;
}

BOOL __28__PLDefaults_isModelTrigger__block_invoke(uint64_t a1)
{
  result = [PLDefaults BOOLForKey:*(a1 + 32)];
  isModelTrigger_objectForKey = result;
  return result;
}

+ (BOOL)BOOLForKey:(id)key ifNotSet:(BOOL)set
{
  v5 = [PLDefaults objectForKey:key];
  v6 = v5;
  if (v5)
  {
    set = [v5 BOOLValue];
  }

  return set;
}

+ (double)doubleForKey:(id)key ifNotSet:(double)set
{
  v5 = [PLDefaults objectForKey:key];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    set = v7;
  }

  return set;
}

+ (int64_t)longForKey:(id)key ifNotSet:(int64_t)set
{
  v5 = [PLDefaults objectForKey:key];
  v6 = v5;
  if (v5)
  {
    set = [v5 longLongValue];
  }

  return set;
}

+ (BOOL)fullPLLog
{
  debugEnabled = [self debugEnabled];
  if (debugEnabled)
  {
    v3 = PLD_NSLogDebugKey;

    LOBYTE(debugEnabled) = [PLDefaults BOOLForKey:v3];
  }

  return debugEnabled;
}

+ (BOOL)isClassDebugEnabled:(Class)enabled
{
  v4 = +[PLDefaults sharedDefaults];
  debugEnabled = [v4 debugEnabled];

  if (!debugEnabled)
  {
    return 0;
  }

  v6 = NSStringFromClass(enabled);
  v7 = [PLDefaults isClassNameDebugEnabled:v6];

  return v7;
}

+ (BOOL)isClassDebugEnabled:(Class)enabled forKey:(id)key
{
  keyCopy = key;
  v6 = +[PLDefaults sharedDefaults];
  debugEnabled = [v6 debugEnabled];

  if (debugEnabled)
  {
    v8 = NSStringFromClass(enabled);
    v9 = [PLDefaults isClassNameDebugEnabled:v8 forKey:keyCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isClassNameDebugEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = +[PLDefaults sharedDefaults];
  debugEnabled = [v4 debugEnabled];

  if (debugEnabled)
  {
    v6 = [enabledCopy stringByAppendingString:@"_Debug"];
    if ([PLDefaults objectExistsForKey:v6])
    {
      v7 = [PLDefaults objectForKey:v6];
      LOBYTE(debugEnabled) = [v7 BOOLValue];
    }

    else
    {
      LOBYTE(debugEnabled) = 0;
    }
  }

  return debugEnabled;
}

+ (BOOL)isClassNameDebugEnabled:(id)enabled forKey:(id)key
{
  enabledCopy = enabled;
  keyCopy = key;
  v7 = +[PLDefaults sharedDefaults];
  debugEnabled = [v7 debugEnabled];

  if (debugEnabled)
  {
    v9 = [enabledCopy stringByAppendingString:@"_Debug"];
    if (+[PLDefaults objectExistsForKey:](PLDefaults, "objectExistsForKey:", v9) && (+[PLDefaults objectForKey:](PLDefaults, "objectForKey:", v9), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 BOOLValue], v10, (v11 & 1) != 0))
    {
      bOOLValue = 1;
    }

    else
    {
      keyCopy = [v9 stringByAppendingFormat:@"_%@", keyCopy];

      if ([PLDefaults objectExistsForKey:keyCopy])
      {
        v14 = [PLDefaults objectForKey:keyCopy];
        bOOLValue = [v14 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v9 = keyCopy;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (PLDefaults)init
{
  v12.receiver = self;
  v12.super_class = PLDefaults;
  v2 = [(PLDefaults *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    managedPrefsCache = v2->_managedPrefsCache;
    v2->_managedPrefsCache = v3;

    v5 = objc_opt_new();
    instancePrefsCache = v2->_instancePrefsCache;
    v2->_instancePrefsCache = v5;

    v7 = objc_opt_new();
    userPrefsCache = v2->_userPrefsCache;
    v2->_userPrefsCache = v7;

    applicationID = [objc_opt_class() applicationID];
    v10 = [(PLDefaults *)v2 objectForKey:@"debugEnabled" forApplicationID:applicationID synchronize:0];

    if (v10 && [v10 BOOLValue])
    {
      v2->_debugEnabled = 1;
      NSLog(&cfstr_DebugEnabled.isa);
    }

    else
    {
      v2->_debugEnabled = 0;
    }
  }

  return v2;
}

- (id)managedPrefsObjectForKey:(id)key forApplicationID:(id)d synchronize:(BOOL)synchronize
{
  synchronizeCopy = synchronize;
  keyCopy = key;
  dCopy = d;
  objc_sync_enter(@"__managedPrefsCacheSync__");
  if (synchronizeCopy)
  {
    v10 = objc_opt_new();
    [(PLDefaults *)self setManagedPrefsCache:v10];
  }

  managedPrefsCache = [(PLDefaults *)self managedPrefsCache];
  v12 = [managedPrefsCache objectForKey:dCopy];

  if (!v12)
  {
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@.plist", PLD_ManagedPreferencePath, dCopy];
    v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:dCopy];
    managedPrefsCache2 = [(PLDefaults *)self managedPrefsCache];
    if (v14)
    {
      [managedPrefsCache2 setObject:v14 forKey:dCopy];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [managedPrefsCache2 setObject:null forKey:dCopy];
    }
  }

  managedPrefsCache3 = [(PLDefaults *)self managedPrefsCache];
  v18 = [managedPrefsCache3 objectForKey:dCopy];
  null2 = [MEMORY[0x1E695DFB0] null];

  if (v18 == null2)
  {
    v22 = 0;
  }

  else
  {
    managedPrefsCache4 = [(PLDefaults *)self managedPrefsCache];
    v21 = [managedPrefsCache4 objectForKey:dCopy];
    v22 = [v21 objectForKey:keyCopy];
  }

  objc_sync_exit(@"__managedPrefsCacheSync__");

  return v22;
}

- (id)userDefaultsObjectForKey:(id)key forApplicationID:(id)d synchronize:(BOOL)synchronize
{
  synchronizeCopy = synchronize;
  keyCopy = key;
  dCopy = d;
  v10 = objc_autoreleasePoolPush();
  objc_sync_enter(@"__userPrefsCacheSync__");
  userPrefsCache = [(PLDefaults *)self userPrefsCache];
  v12 = [userPrefsCache objectForKeyedSubscript:dCopy];

  if (!v12)
  {
    v13 = objc_opt_new();
    userPrefsCache2 = [(PLDefaults *)self userPrefsCache];
    [userPrefsCache2 setObject:v13 forKeyedSubscript:dCopy];

    if (!synchronizeCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (synchronizeCopy)
  {
LABEL_5:
    userPrefsCache3 = [(PLDefaults *)self userPrefsCache];
    v16 = [userPrefsCache3 objectForKeyedSubscript:dCopy];
    [v16 removeObjectForKey:keyCopy];

    PLCFPreferencesAppSynchronize(dCopy);
  }

LABEL_6:
  userPrefsCache4 = [(PLDefaults *)self userPrefsCache];
  v18 = [userPrefsCache4 objectForKeyedSubscript:dCopy];
  v19 = [v18 objectForKeyedSubscript:keyCopy];

  if (!v19)
  {
    if ([(__CFString *)dCopy isEqualToString:@"com.apple.powerlogd"])
    {
      if (CFPreferencesAppValueIsForced(keyCopy, dCopy))
      {
        v20 = PLCFPreferencesCopyAppValue(keyCopy, dCopy);
      }

      else
      {
        v20 = PLCFPreferencesCopyValue(keyCopy, dCopy, *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
      }
    }

    else
    {
      v20 = CFPreferencesCopyValue(keyCopy, dCopy, @"mobile", *MEMORY[0x1E695E8B0]);
    }

    v21 = v20;
    if (v20)
    {
      userPrefsCache5 = [(PLDefaults *)self userPrefsCache];
      userPrefsCache6 = [userPrefsCache5 objectForKeyedSubscript:dCopy];
      [userPrefsCache6 setObject:v21 forKeyedSubscript:keyCopy];
    }

    else
    {
      userPrefsCache5 = [MEMORY[0x1E695DFB0] null];
      userPrefsCache6 = [(PLDefaults *)self userPrefsCache];
      v24 = [userPrefsCache6 objectForKeyedSubscript:dCopy];
      [v24 setObject:userPrefsCache5 forKeyedSubscript:keyCopy];
    }
  }

  userPrefsCache7 = [(PLDefaults *)self userPrefsCache];
  v26 = [userPrefsCache7 objectForKeyedSubscript:dCopy];
  v27 = [v26 objectForKeyedSubscript:keyCopy];
  null = [MEMORY[0x1E695DFB0] null];

  if (v27 == null)
  {
    v31 = 0;
  }

  else
  {
    userPrefsCache8 = [(PLDefaults *)self userPrefsCache];
    v30 = [userPrefsCache8 objectForKeyedSubscript:dCopy];
    v31 = [v30 objectForKeyedSubscript:keyCopy];
  }

  objc_sync_exit(@"__userPrefsCacheSync__");
  objc_autoreleasePoolPop(v10);

  return v31;
}

- (id)instancePrefsObjectForKey:(id)key
{
  keyCopy = key;
  objc_sync_enter(@"__instancePrefsCacheSync__");
  instancePrefsCache = [(PLDefaults *)self instancePrefsCache];
  v6 = [instancePrefsCache objectForKey:keyCopy];

  objc_sync_exit(@"__instancePrefsCacheSync__");

  return v6;
}

- (void)resetUserDefaultCacheForKey:(id)key forApplicationID:(id)d
{
  keyCopy = key;
  dCopy = d;
  objc_sync_enter(@"__userPrefsCacheSync__");
  userPrefsCache = [(PLDefaults *)self userPrefsCache];
  v8 = [userPrefsCache objectForKeyedSubscript:dCopy];

  if (v8)
  {
    userPrefsCache2 = [(PLDefaults *)self userPrefsCache];
    v10 = [userPrefsCache2 objectForKeyedSubscript:dCopy];
    [v10 removeObjectForKey:keyCopy];
  }

  objc_sync_exit(@"__userPrefsCacheSync__");
}

- (void)setObject:(id)object forKey:(id)key forApplicationID:(id)d saveToDisk:(BOOL)disk
{
  diskCopy = disk;
  value = object;
  keyCopy = key;
  dCopy = d;
  applicationID = [objc_opt_class() applicationID];
  v13 = [(__CFString *)dCopy isEqualToString:applicationID];

  if (v13)
  {
    objc_sync_enter(@"__instancePrefsCacheSync__");
    instancePrefsCache = [(PLDefaults *)self instancePrefsCache];
    if (value)
    {
      [instancePrefsCache setObject:value forKey:keyCopy];
    }

    else
    {
      [instancePrefsCache removeObjectForKey:keyCopy];
    }

    objc_sync_exit(@"__instancePrefsCacheSync__");
  }

  if (diskCopy)
  {
    if ([(__CFString *)dCopy isEqualToString:@"com.apple.powerlogd"])
    {
      if (CFPreferencesAppValueIsForced(keyCopy, dCopy))
      {
        PLCFPreferencesSetAppValue(keyCopy, value, dCopy);
      }

      else
      {
        PLCFPreferencesSetValue(keyCopy, value, dCopy, *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
      }

      PLCFPreferencesAppSynchronize(dCopy);
    }

    else
    {
      v15 = *MEMORY[0x1E695E8B0];
      CFPreferencesSetValue(keyCopy, value, dCopy, @"mobile", *MEMORY[0x1E695E8B0]);
      CFPreferencesSynchronize(dCopy, @"mobile", v15);
    }

    objc_sync_enter(@"__userPrefsCacheSync__");
    if (value)
    {
      userPrefsCache = [(PLDefaults *)self userPrefsCache];
      userPrefsCache2 = [userPrefsCache objectForKeyedSubscript:dCopy];
      [userPrefsCache2 setObject:value forKeyedSubscript:keyCopy];
    }

    else
    {
      userPrefsCache = [MEMORY[0x1E695DFB0] null];
      userPrefsCache2 = [(PLDefaults *)self userPrefsCache];
      v18 = [userPrefsCache2 objectForKeyedSubscript:dCopy];
      [v18 setObject:userPrefsCache forKeyedSubscript:keyCopy];
    }

    objc_sync_exit(@"__userPrefsCacheSync__");
  }
}

+ (void)enableRestartAtEPL
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__PLDefaults_enableRestartAtEPL__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (enableRestartAtEPL_defaultOnce != -1)
    {
      dispatch_once(&enableRestartAtEPL_defaultOnce, block);
    }

    if (enableRestartAtEPL_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Restart requested at EPL enable\n"];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLDefaults.m"];
      lastPathComponent = [v4 lastPathComponent];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLDefaults enableRestartAtEPL]"];
      [PLCoreStorage logMessage:v3 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:478];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v8 = +[PLDefaults sharedDefaults];
  [v8 setEnableRestartAtEPL:1];
}

BOOL __32__PLDefaults_enableRestartAtEPL__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  enableRestartAtEPL_classDebugEnabled = result;
  return result;
}

+ (void)registerEPLNotificationWithQueue:(id)queue
{
  queueCopy = queue;
  CFPreferencesAppSynchronize(@"com.apple.da");
  v5 = CFPreferencesCopyValue(@"HTEPL.EPLEnabled", @"com.apple.da", @"mobile", *MEMORY[0x1E695E898]);
  v6 = +[PLDefaults sharedDefaults];
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  [v6 setEplEnabled:bOOLValue];

  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__PLDefaults_registerEPLNotificationWithQueue___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (registerEPLNotificationWithQueue__defaultOnce != -1)
    {
      dispatch_once(&registerEPLNotificationWithQueue__defaultOnce, block);
    }

    if (registerEPLNotificationWithQueue__classDebugEnabled == 1)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = +[PLDefaults sharedDefaults];
      v11 = [v9 stringWithFormat:@"Initially, EPLEnabled %d\n", objc_msgSend(v10, "eplEnabled")];

      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLDefaults.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLDefaults registerEPLNotificationWithQueue:]"];
      [PLCoreStorage logMessage:v11 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:489];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  out_token = 0;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __47__PLDefaults_registerEPLNotificationWithQueue___block_invoke_96;
  handler[3] = &__block_descriptor_40_e8_v12__0i8l;
  handler[4] = self;
  v16 = notify_register_dispatch("com.apple.plde.epl_changed", &out_token, queueCopy, handler);
  if (v16)
  {
    v17 = v16;
    if (+[PLDefaults debugEnabled])
    {
      v18 = objc_opt_class();
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __47__PLDefaults_registerEPLNotificationWithQueue___block_invoke_104;
      v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v24[4] = v18;
      if (registerEPLNotificationWithQueue__defaultOnce_102 != -1)
      {
        dispatch_once(&registerEPLNotificationWithQueue__defaultOnce_102, v24);
      }

      if (registerEPLNotificationWithQueue__classDebugEnabled_103 == 1)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"notify_register_dispatch failed %d %s", v17, "com.apple.plde.epl_changed"];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLDefaults.m"];
        lastPathComponent2 = [v20 lastPathComponent];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLDefaults registerEPLNotificationWithQueue:]"];
        [PLCoreStorage logMessage:v19 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:504];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }
  }
}

BOOL __47__PLDefaults_registerEPLNotificationWithQueue___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  registerEPLNotificationWithQueue__classDebugEnabled = result;
  return result;
}

void __47__PLDefaults_registerEPLNotificationWithQueue___block_invoke_96(uint64_t a1)
{
  CFPreferencesAppSynchronize(@"com.apple.da");
  v2 = CFPreferencesCopyValue(@"HTEPL.EPLEnabled", @"com.apple.da", @"mobile", *MEMORY[0x1E695E898]);
  v3 = +[PLDefaults sharedDefaults];
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  [v3 setEplEnabled:v4];

  if (+[PLDefaults debugEnabled])
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __47__PLDefaults_registerEPLNotificationWithQueue___block_invoke_2;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v6;
    if (instancePrefsCacheSync_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&instancePrefsCacheSync_block_invoke_defaultOnce, &block);
    }

    if (instancePrefsCacheSync_block_invoke_classDebugEnabled == 1)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = +[PLDefaults sharedDefaults];
      v9 = [v8 eplEnabled];
      v10 = [v7 stringWithFormat:@"EPLEnabled changed to %d\n", v9, block, v19, v20, v21, v22];

      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLDefaults.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLDefaults registerEPLNotificationWithQueue:]_block_invoke"];
      [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:498];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v15 = +[PLDefaults sharedDefaults];
  if ([v15 enableRestartAtEPL])
  {
    v16 = +[PLDefaults sharedDefaults];
    v17 = [v16 eplEnabled];

    if (v17)
    {
      [PLUtilities exitWithReason:7];
    }
  }

  else
  {
  }
}

BOOL __47__PLDefaults_registerEPLNotificationWithQueue___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  instancePrefsCacheSync_block_invoke_classDebugEnabled = result;
  return result;
}

BOOL __47__PLDefaults_registerEPLNotificationWithQueue___block_invoke_104(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  registerEPLNotificationWithQueue__classDebugEnabled_103 = result;
  return result;
}

@end