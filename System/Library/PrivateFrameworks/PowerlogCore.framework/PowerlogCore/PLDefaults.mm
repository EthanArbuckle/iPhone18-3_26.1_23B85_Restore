@interface PLDefaults
+ (BOOL)BOOLForKey:(id)a3 ifNotSet:(BOOL)a4;
+ (BOOL)debugEnabled;
+ (BOOL)eplEnabled;
+ (BOOL)fullModeForClass:(Class)a3;
+ (BOOL)fullPLLog;
+ (BOOL)isClassDebugEnabled:(Class)a3;
+ (BOOL)isClassDebugEnabled:(Class)a3 forKey:(id)a4;
+ (BOOL)isClassNameDebugEnabled:(id)a3;
+ (BOOL)isClassNameDebugEnabled:(id)a3 forKey:(id)a4;
+ (BOOL)isDevBoard;
+ (BOOL)isModelTrigger;
+ (BOOL)isModelingDebugEnabled;
+ (BOOL)isTaskFullEPLMode;
+ (BOOL)objectExistsForKey:(id)a3;
+ (BOOL)oldFullMode;
+ (double)doubleForKey:(id)a3 ifNotSet:(double)a4;
+ (id)allDefaultsEnabled;
+ (id)applicationID;
+ (id)objectForKey:(id)a3;
+ (id)objectForKey:(id)a3 ifNotSet:(id)a4;
+ (id)sharedDefaults;
+ (int)liveModeQuery;
+ (int64_t)longForKey:(id)a3 ifNotSet:(int64_t)a4;
+ (int64_t)mode;
+ (void)enableRestartAtEPL;
+ (void)registerEPLNotificationWithQueue:(id)a3;
+ (void)resetUserDefaultCacheForKey:(id)a3;
+ (void)resetUserDefaultCacheForKey:(id)a3 forApplicationID:(id)a4;
- (PLDefaults)init;
- (id)instancePrefsObjectForKey:(id)a3;
- (id)managedPrefsObjectForKey:(id)a3 forApplicationID:(id)a4 synchronize:(BOOL)a5;
- (id)userDefaultsObjectForKey:(id)a3 forApplicationID:(id)a4 synchronize:(BOOL)a5;
- (void)resetUserDefaultCacheForKey:(id)a3 forApplicationID:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4 forApplicationID:(id)a5 saveToDisk:(BOOL)a6;
@end

@implementation PLDefaults

+ (BOOL)debugEnabled
{
  v2 = +[PLDefaults sharedDefaults];
  v3 = [v2 debugEnabled];

  return v3;
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
  v3 = [v2 eplEnabled];

  return v3;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [objc_opt_class() applicationID];
  v5 = CFPreferencesCopyKeyList(v4, *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E898]);
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
        v12 = [a1 objectForKey:{v11, v15}];
        [v3 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (BOOL)objectExistsForKey:(id)a3
{
  v3 = [PLDefaults objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

+ (id)objectForKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() applicationID];
  v5 = [PLDefaults objectForKey:v3 forApplicationID:v4 synchronize:0];

  return v5;
}

+ (id)objectForKey:(id)a3 ifNotSet:(id)a4
{
  v6 = a4;
  v7 = [a1 objectForKey:a3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

+ (void)resetUserDefaultCacheForKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() applicationID];
  [PLDefaults resetUserDefaultCacheForKey:v3 forApplicationID:v4];
}

+ (void)resetUserDefaultCacheForKey:(id)a3 forApplicationID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PLDefaults sharedDefaults];
  [v7 resetUserDefaultCacheForKey:v6 forApplicationID:v5];
}

+ (BOOL)fullModeForClass:(Class)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromClass(a3);
  v6 = [v4 stringWithFormat:@"%@_FullMode", v5];

  v7 = [PLDefaults objectForKey:v6];

  if (v7)
  {
    v8 = [PLDefaults objectForKey:v6];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = [a1 fullMode];
  }

  return v9;
}

+ (int)liveModeQuery
{
  v2 = [PLDefaults objectForKey:@"Mode"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    if (!+[PLPlatform isWatch])
    {
      [PLDefaults setObject:&unk_1F5405D78 forKey:@"Mode" saveToDisk:1];
    }

    v4 = 0;
  }

  return v4;
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

+ (BOOL)BOOLForKey:(id)a3 ifNotSet:(BOOL)a4
{
  v5 = [PLDefaults objectForKey:a3];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

+ (double)doubleForKey:(id)a3 ifNotSet:(double)a4
{
  v5 = [PLDefaults objectForKey:a3];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    a4 = v7;
  }

  return a4;
}

+ (int64_t)longForKey:(id)a3 ifNotSet:(int64_t)a4
{
  v5 = [PLDefaults objectForKey:a3];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 longLongValue];
  }

  return a4;
}

+ (BOOL)fullPLLog
{
  v2 = [a1 debugEnabled];
  if (v2)
  {
    v3 = PLD_NSLogDebugKey;

    LOBYTE(v2) = [PLDefaults BOOLForKey:v3];
  }

  return v2;
}

+ (BOOL)isClassDebugEnabled:(Class)a3
{
  v4 = +[PLDefaults sharedDefaults];
  v5 = [v4 debugEnabled];

  if (!v5)
  {
    return 0;
  }

  v6 = NSStringFromClass(a3);
  v7 = [PLDefaults isClassNameDebugEnabled:v6];

  return v7;
}

+ (BOOL)isClassDebugEnabled:(Class)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = +[PLDefaults sharedDefaults];
  v7 = [v6 debugEnabled];

  if (v7)
  {
    v8 = NSStringFromClass(a3);
    v9 = [PLDefaults isClassNameDebugEnabled:v8 forKey:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isClassNameDebugEnabled:(id)a3
{
  v3 = a3;
  v4 = +[PLDefaults sharedDefaults];
  v5 = [v4 debugEnabled];

  if (v5)
  {
    v6 = [v3 stringByAppendingString:@"_Debug"];
    if ([PLDefaults objectExistsForKey:v6])
    {
      v7 = [PLDefaults objectForKey:v6];
      LOBYTE(v5) = [v7 BOOLValue];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (BOOL)isClassNameDebugEnabled:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[PLDefaults sharedDefaults];
  v8 = [v7 debugEnabled];

  if (v8)
  {
    v9 = [v5 stringByAppendingString:@"_Debug"];
    if (+[PLDefaults objectExistsForKey:](PLDefaults, "objectExistsForKey:", v9) && (+[PLDefaults objectForKey:](PLDefaults, "objectForKey:", v9), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 BOOLValue], v10, (v11 & 1) != 0))
    {
      v12 = 1;
    }

    else
    {
      v13 = [v9 stringByAppendingFormat:@"_%@", v6];

      if ([PLDefaults objectExistsForKey:v13])
      {
        v14 = [PLDefaults objectForKey:v13];
        v12 = [v14 BOOLValue];
      }

      else
      {
        v12 = 0;
      }

      v9 = v13;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
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

    v9 = [objc_opt_class() applicationID];
    v10 = [(PLDefaults *)v2 objectForKey:@"debugEnabled" forApplicationID:v9 synchronize:0];

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

- (id)managedPrefsObjectForKey:(id)a3 forApplicationID:(id)a4 synchronize:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  objc_sync_enter(@"__managedPrefsCacheSync__");
  if (v5)
  {
    v10 = objc_opt_new();
    [(PLDefaults *)self setManagedPrefsCache:v10];
  }

  v11 = [(PLDefaults *)self managedPrefsCache];
  v12 = [v11 objectForKey:v9];

  if (!v12)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@.plist", PLD_ManagedPreferencePath, v9];
    v14 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v13];
    v15 = [(PLDefaults *)self managedPrefsCache];
    if (v14)
    {
      [v15 setObject:v14 forKey:v9];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v15 setObject:v16 forKey:v9];
    }
  }

  v17 = [(PLDefaults *)self managedPrefsCache];
  v18 = [v17 objectForKey:v9];
  v19 = [MEMORY[0x1E695DFB0] null];

  if (v18 == v19)
  {
    v22 = 0;
  }

  else
  {
    v20 = [(PLDefaults *)self managedPrefsCache];
    v21 = [v20 objectForKey:v9];
    v22 = [v21 objectForKey:v8];
  }

  objc_sync_exit(@"__managedPrefsCacheSync__");

  return v22;
}

- (id)userDefaultsObjectForKey:(id)a3 forApplicationID:(id)a4 synchronize:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  objc_sync_enter(@"__userPrefsCacheSync__");
  v11 = [(PLDefaults *)self userPrefsCache];
  v12 = [v11 objectForKeyedSubscript:v9];

  if (!v12)
  {
    v13 = objc_opt_new();
    v14 = [(PLDefaults *)self userPrefsCache];
    [v14 setObject:v13 forKeyedSubscript:v9];

    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    v15 = [(PLDefaults *)self userPrefsCache];
    v16 = [v15 objectForKeyedSubscript:v9];
    [v16 removeObjectForKey:v8];

    PLCFPreferencesAppSynchronize(v9);
  }

LABEL_6:
  v17 = [(PLDefaults *)self userPrefsCache];
  v18 = [v17 objectForKeyedSubscript:v9];
  v19 = [v18 objectForKeyedSubscript:v8];

  if (!v19)
  {
    if ([(__CFString *)v9 isEqualToString:@"com.apple.powerlogd"])
    {
      if (CFPreferencesAppValueIsForced(v8, v9))
      {
        v20 = PLCFPreferencesCopyAppValue(v8, v9);
      }

      else
      {
        v20 = PLCFPreferencesCopyValue(v8, v9, *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
      }
    }

    else
    {
      v20 = CFPreferencesCopyValue(v8, v9, @"mobile", *MEMORY[0x1E695E8B0]);
    }

    v21 = v20;
    if (v20)
    {
      v22 = [(PLDefaults *)self userPrefsCache];
      v23 = [v22 objectForKeyedSubscript:v9];
      [v23 setObject:v21 forKeyedSubscript:v8];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      v23 = [(PLDefaults *)self userPrefsCache];
      v24 = [v23 objectForKeyedSubscript:v9];
      [v24 setObject:v22 forKeyedSubscript:v8];
    }
  }

  v25 = [(PLDefaults *)self userPrefsCache];
  v26 = [v25 objectForKeyedSubscript:v9];
  v27 = [v26 objectForKeyedSubscript:v8];
  v28 = [MEMORY[0x1E695DFB0] null];

  if (v27 == v28)
  {
    v31 = 0;
  }

  else
  {
    v29 = [(PLDefaults *)self userPrefsCache];
    v30 = [v29 objectForKeyedSubscript:v9];
    v31 = [v30 objectForKeyedSubscript:v8];
  }

  objc_sync_exit(@"__userPrefsCacheSync__");
  objc_autoreleasePoolPop(v10);

  return v31;
}

- (id)instancePrefsObjectForKey:(id)a3
{
  v4 = a3;
  objc_sync_enter(@"__instancePrefsCacheSync__");
  v5 = [(PLDefaults *)self instancePrefsCache];
  v6 = [v5 objectForKey:v4];

  objc_sync_exit(@"__instancePrefsCacheSync__");

  return v6;
}

- (void)resetUserDefaultCacheForKey:(id)a3 forApplicationID:(id)a4
{
  v11 = a3;
  v6 = a4;
  objc_sync_enter(@"__userPrefsCacheSync__");
  v7 = [(PLDefaults *)self userPrefsCache];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(PLDefaults *)self userPrefsCache];
    v10 = [v9 objectForKeyedSubscript:v6];
    [v10 removeObjectForKey:v11];
  }

  objc_sync_exit(@"__userPrefsCacheSync__");
}

- (void)setObject:(id)a3 forKey:(id)a4 forApplicationID:(id)a5 saveToDisk:(BOOL)a6
{
  v6 = a6;
  value = a3;
  v10 = a4;
  v11 = a5;
  v12 = [objc_opt_class() applicationID];
  v13 = [(__CFString *)v11 isEqualToString:v12];

  if (v13)
  {
    objc_sync_enter(@"__instancePrefsCacheSync__");
    v14 = [(PLDefaults *)self instancePrefsCache];
    if (value)
    {
      [v14 setObject:value forKey:v10];
    }

    else
    {
      [v14 removeObjectForKey:v10];
    }

    objc_sync_exit(@"__instancePrefsCacheSync__");
  }

  if (v6)
  {
    if ([(__CFString *)v11 isEqualToString:@"com.apple.powerlogd"])
    {
      if (CFPreferencesAppValueIsForced(v10, v11))
      {
        PLCFPreferencesSetAppValue(v10, value, v11);
      }

      else
      {
        PLCFPreferencesSetValue(v10, value, v11, *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
      }

      PLCFPreferencesAppSynchronize(v11);
    }

    else
    {
      v15 = *MEMORY[0x1E695E8B0];
      CFPreferencesSetValue(v10, value, v11, @"mobile", *MEMORY[0x1E695E8B0]);
      CFPreferencesSynchronize(v11, @"mobile", v15);
    }

    objc_sync_enter(@"__userPrefsCacheSync__");
    if (value)
    {
      v16 = [(PLDefaults *)self userPrefsCache];
      v17 = [v16 objectForKeyedSubscript:v11];
      [v17 setObject:value forKeyedSubscript:v10];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      v17 = [(PLDefaults *)self userPrefsCache];
      v18 = [v17 objectForKeyedSubscript:v11];
      [v18 setObject:v16 forKeyedSubscript:v10];
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
      v5 = [v4 lastPathComponent];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLDefaults enableRestartAtEPL]"];
      [PLCoreStorage logMessage:v3 fromFile:v5 fromFunction:v6 fromLineNumber:478];

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

+ (void)registerEPLNotificationWithQueue:(id)a3
{
  v4 = a3;
  CFPreferencesAppSynchronize(@"com.apple.da");
  v5 = CFPreferencesCopyValue(@"HTEPL.EPLEnabled", @"com.apple.da", @"mobile", *MEMORY[0x1E695E898]);
  v6 = +[PLDefaults sharedDefaults];
  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  [v6 setEplEnabled:v7];

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
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLDefaults registerEPLNotificationWithQueue:]"];
      [PLCoreStorage logMessage:v11 fromFile:v13 fromFunction:v14 fromLineNumber:489];

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
  handler[4] = a1;
  v16 = notify_register_dispatch("com.apple.plde.epl_changed", &out_token, v4, handler);
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
        v21 = [v20 lastPathComponent];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLDefaults registerEPLNotificationWithQueue:]"];
        [PLCoreStorage logMessage:v19 fromFile:v21 fromFunction:v22 fromLineNumber:504];

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