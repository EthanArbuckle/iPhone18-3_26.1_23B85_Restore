@interface AnalyticsStoreDescriptor
+ (id)applicationSupportDirectoryPath;
+ (id)defaultModel;
+ (id)defaultModelURL;
+ (id)defaultPersistentStoreURL;
+ (id)optionDescription:(unint64_t)a3;
+ (id)storeDescriptor;
- (AnalyticsStoreDescriptor)initWithStoreURL:(id)a3 modelURL:(id)a4;
@end

@implementation AnalyticsStoreDescriptor

+ (id)defaultModel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AnalyticsStoreDescriptor_defaultModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1EDE5CA78 != -1)
  {
    dispatch_once(&qword_1EDE5CA78, block);
  }

  v2 = qword_1EDE5CA80;

  return v2;
}

void __40__AnalyticsStoreDescriptor_defaultModel__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695D638]);
  v5 = [*(a1 + 32) defaultModelURL];
  v3 = [v2 initWithContentsOfURL:v5];
  v4 = qword_1EDE5CA80;
  qword_1EDE5CA80 = v3;
}

void __53__AnalyticsStoreDescriptor_defaultPersistentStoreURL__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() applicationSupportDirectoryPath];
  if (!v2)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_7;
    }

    v15 = 136446466;
    v16 = "+[AnalyticsStoreDescriptor defaultPersistentStoreURL]_block_invoke";
    v17 = 1024;
    v18 = 202;
    v10 = "%{public}s::%d:applicationSupportDirectoryPath is nil";
    v11 = v9;
    v12 = OS_LOG_TYPE_FAULT;
    v13 = 18;
    goto LABEL_6;
  }

  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
  v4 = qword_1EDE5CA60;
  qword_1EDE5CA60 = v3;

  if (!qword_1EDE5CA60)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_7;
    }

    v15 = 136446722;
    v16 = "+[AnalyticsStoreDescriptor defaultPersistentStoreURL]_block_invoke";
    v17 = 1024;
    v18 = 205;
    v19 = 2112;
    v20 = v2;
    v10 = "%{public}s::%d:defaultPersistentStoreURL is nil with path %@";
    v11 = v9;
    v12 = OS_LOG_TYPE_FAULT;
    goto LABEL_5;
  }

  v5 = [qword_1EDE5CA60 URLByAppendingPathComponent:@"DeviceAnalyticsModel"];
  v6 = qword_1EDE5CA60;
  qword_1EDE5CA60 = v5;

  v7 = [qword_1EDE5CA60 URLByAppendingPathExtension:@"sqlite"];
  v8 = qword_1EDE5CA60;
  qword_1EDE5CA60 = v7;

  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v15 = 136446722;
    v16 = "+[AnalyticsStoreDescriptor defaultPersistentStoreURL]_block_invoke";
    v17 = 1024;
    v18 = 209;
    v19 = 2112;
    v20 = qword_1EDE5CA60;
    v10 = "%{public}s::%d:defaultPersistentStoreURL is %@";
    v11 = v9;
    v12 = OS_LOG_TYPE_INFO;
LABEL_5:
    v13 = 28;
LABEL_6:
    _os_log_impl(&dword_1C8460000, v11, v12, v10, &v15, v13);
  }

LABEL_7:

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)applicationSupportDirectoryPath
{
  v38 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v2 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v3 = v2;
  if (!v2)
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v31 = "+[AnalyticsStoreDescriptor applicationSupportDirectoryPath]";
      v32 = 1024;
      v33 = 163;
LABEL_19:
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:NSCachesDirectory paths nil", buf, 0x12u);
    }

LABEL_20:

LABEL_8:
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __59__AnalyticsStoreDescriptor_applicationSupportDirectoryPath__block_invoke;
    v22[3] = &unk_1E830D818;
    v22[4] = &v24;
    [WAUtil getLazyNSNumberPreference:@"applicationSupportDirectoryPathNil" domain:@"com.apple.wifi.analytics" exists:v22];
    v16 = v25[5];
    goto LABEL_12;
  }

  v4 = [v2 firstObject];
  v5 = v25[5];
  v25[5] = v4;

  v6 = v25[5];
  if (!v6)
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v31 = "+[AnalyticsStoreDescriptor applicationSupportDirectoryPath]";
      v32 = 1024;
      v33 = 166;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v7 = [v6 stringByAppendingPathComponent:@"com.apple.wifianalyticsd"];
  v8 = v25[5];
  v25[5] = v7;

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:v25[5]];

  if (v10)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = v25[5];
  v23 = 0;
  v13 = [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v23];
  v14 = v23;

  v15 = v14 ? 0 : v13;
  if (v15)
  {
    goto LABEL_8;
  }

  v17 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    v18 = v25[5];
    *buf = 136446978;
    v31 = "+[AnalyticsStoreDescriptor applicationSupportDirectoryPath]";
    v32 = 1024;
    v33 = 176;
    v34 = 2112;
    v35 = v18;
    v36 = 2112;
    v37 = v14;
    _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to create directory at %@: %@", buf, 0x26u);
  }

  v16 = 0;
LABEL_12:

  _Block_object_dispose(&v24, 8);
  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)defaultModelURL
{
  if (qword_1EDE5CA68 != -1)
  {
    dispatch_once(&qword_1EDE5CA68, &__block_literal_global);
  }

  v3 = qword_1EDE5CA70;

  return v3;
}

void __43__AnalyticsStoreDescriptor_defaultModelURL__block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = +[WAUtil resourcePath];
  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v0];
  v2 = qword_1EDE5CA70;
  qword_1EDE5CA70 = v1;

  if (qword_1EDE5CA70)
  {
    v3 = [qword_1EDE5CA70 URLByAppendingPathComponent:@"DeviceAnalyticsModel"];
    v4 = qword_1EDE5CA70;
    qword_1EDE5CA70 = v3;

    v5 = [qword_1EDE5CA70 URLByAppendingPathExtension:@"momd"];
    v6 = qword_1EDE5CA70;
    qword_1EDE5CA70 = v5;

    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 136446722;
      v13 = "+[AnalyticsStoreDescriptor defaultModelURL]_block_invoke";
      v14 = 1024;
      v15 = 227;
      v16 = 2112;
      v17 = qword_1EDE5CA70;
      v8 = "%{public}s::%d:defaultModelURL is %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_1C8460000, v9, v10, v8, &v12, 0x1Cu);
    }
  }

  else
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446722;
      v13 = "+[AnalyticsStoreDescriptor defaultModelURL]_block_invoke";
      v14 = 1024;
      v15 = 229;
      v16 = 2112;
      v17 = v0;
      v8 = "%{public}s::%d:ERROR defaultModelURL is nil with path %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)storeDescriptor
{
  v2 = [AnalyticsStoreDescriptor alloc];
  v3 = +[AnalyticsStoreDescriptor defaultPersistentStoreURL];
  v4 = +[AnalyticsStoreDescriptor defaultModelURL];
  v5 = [(AnalyticsStoreDescriptor *)v2 initWithStoreURL:v3 modelURL:v4];

  return v5;
}

+ (id)defaultPersistentStoreURL
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AnalyticsStoreDescriptor_defaultPersistentStoreURL__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals != -1)
  {
    dispatch_once(&_MergedGlobals, block);
  }

  v2 = qword_1EDE5CA60;

  return v2;
}

+ (id)optionDescription:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = v4;
  if (v3)
  {
    [v4 appendFormat:@"SetupXPCStore "];
  }

  if ((v3 & 2) != 0)
  {
    [v5 appendFormat:@"AllowMigration "];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithString:v5];

  return v6;
}

- (AnalyticsStoreDescriptor)initWithStoreURL:(id)a3 modelURL:(id)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = +[WAUtil customMigrationOnProcess];
  v10 = v9;
  v11 = @"wifianalyticsd";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = +[WAUtil customXPCStoreOnProcess];
  v14 = v13;
  v15 = @"NONE";
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v51.receiver = self;
  v51.super_class = AnalyticsStoreDescriptor;
  v17 = [(AnalyticsStoreDescriptor *)&v51 init];
  v18 = v17;
  if (!v7)
  {
    v47 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v53 = "[AnalyticsStoreDescriptor initWithStoreURL:modelURL:]";
      v54 = 1024;
      v55 = 74;
      v48 = "%{public}s::%d:storeURL is nil";
LABEL_28:
      _os_log_impl(&dword_1C8460000, v47, OS_LOG_TYPE_FAULT, v48, buf, 0x12u);
    }

LABEL_29:

    v28 = 0;
    p_super = &v18->super;
    v18 = 0;
    goto LABEL_23;
  }

  if (!v8)
  {
    v47 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v53 = "[AnalyticsStoreDescriptor initWithStoreURL:modelURL:]";
      v54 = 1024;
      v55 = 75;
      v48 = "%{public}s::%d:modelURL is nil";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  objc_storeStrong(&v17->_storeURL, a3);
  objc_storeStrong(&v18->_modelURL, a4);
  v18->_analyticsStoreOptions = 0;
  v19 = [MEMORY[0x1E696AE30] processInfo];
  v20 = [v19 processName];
  v21 = [v20 isEqualToString:v12];

  if (v21)
  {
    v18->_analyticsStoreOptions |= 2uLL;
  }

  v22 = [MEMORY[0x1E696AE30] processInfo];
  v23 = [v22 processName];
  v24 = [v23 isEqualToString:v16];

  if (v24)
  {
    v18->_analyticsStoreOptions |= 1uLL;
  }

  v25 = [objc_opt_class() optionDescription:v18->_analyticsStoreOptions];
  analyticsStoreOptionsDescription = v18->_analyticsStoreOptionsDescription;
  v18->_analyticsStoreOptionsDescription = v25;

  analyticsStoreOptions = v18->_analyticsStoreOptions;
  v28 = [MEMORY[0x1E695D6C8] persistentStoreDescriptionWithURL:v18->_storeURL];
  [v28 setType:*MEMORY[0x1E695D4A8]];
  [v28 setConfiguration:@"Default"];
  [v28 setShouldInferMappingModelAutomatically:(analyticsStoreOptions >> 1) & 1];
  [v28 setShouldMigrateStoreAutomatically:(analyticsStoreOptions >> 1) & 1];
  [v28 setShouldAddStoreAsynchronously:0];
  [v28 setOption:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E695D3C0]];
  [v28 setOption:&unk_1F483E158 forKey:*MEMORY[0x1E695D3D0]];
  v49 = v12;
  v50 = v8;
  if (analyticsStoreOptions)
  {
    v31 = *MEMORY[0x1E695D518];
    [v28 setOption:@"com.apple.wifianalyticsd.devicestore" forKey:*MEMORY[0x1E695D518]];
    v32 = *MEMORY[0x1E695D4F8];
    v33 = v16;
    v34 = v7;
    v35 = MEMORY[0x1E695E118];
    [v28 setOption:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695D4F8]];
    v36 = *MEMORY[0x1E695D430];
    [v28 setOption:v35 forKey:*MEMORY[0x1E695D430]];
    objc_storeStrong(&v18->_storeDescription, v28);
    v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSDictionary *)v37 setObject:@"com.apple.wifianalyticsd.devicestore" forKeyedSubscript:v31];
    [(NSDictionary *)v37 setObject:v35 forKeyedSubscript:*MEMORY[0x1E695D508]];
    [(NSDictionary *)v37 setObject:v35 forKeyedSubscript:v32];
    [(NSDictionary *)v37 setObject:v35 forKeyedSubscript:*MEMORY[0x1E695D428]];
    v38 = v35;
    v7 = v34;
    v16 = v33;
    [(NSDictionary *)v37 setObject:v38 forKeyedSubscript:v36];
    remoteStoreOptions = v18->_remoteStoreOptions;
    v18->_remoteStoreOptions = v37;
  }

  else
  {
    v29 = v28;
    remoteStoreOptions = v18->_storeDescription;
    v18->_storeDescription = v29;
  }

  p_super = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [MEMORY[0x1E696AE30] processInfo];
    v41 = [v40 processName];
    if (v18->_remoteStoreOptions)
    {
      v42 = @"YES";
    }

    else
    {
      v42 = @"NO";
    }

    v43 = [v28 shouldMigrateStoreAutomatically];
    *buf = 136447234;
    v53 = "[AnalyticsStoreDescriptor initWithStoreURL:modelURL:]";
    if (v43)
    {
      v44 = @"YES";
    }

    else
    {
      v44 = @"NO";
    }

    v54 = 1024;
    v55 = 150;
    v56 = 2112;
    v57 = v41;
    v58 = 2112;
    v59 = v42;
    v60 = 2112;
    v61 = v44;
    _os_log_impl(&dword_1C8460000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:processName:%@ setupXPCStore: %@ migrateIfNecessary: %@", buf, 0x30u);
  }

  v12 = v49;
  v8 = v50;
LABEL_23:

  v45 = *MEMORY[0x1E69E9840];
  return v18;
}

void __59__AnalyticsStoreDescriptor_applicationSupportDirectoryPath__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([a2 BOOLValue])
  {
    v3 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446722;
      v8 = "+[AnalyticsStoreDescriptor applicationSupportDirectoryPath]_block_invoke";
      v9 = 1024;
      v10 = 188;
      v11 = 2080;
      v12 = "+[AnalyticsStoreDescriptor applicationSupportDirectoryPath]_block_invoke";
      _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: OVERRIDING applicationSupportDirectoryPath to nil", &v7, 0x1Cu);
    }

    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end