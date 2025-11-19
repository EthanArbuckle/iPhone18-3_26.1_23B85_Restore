@interface SYDRemotePreferencesSource
- (BOOL)removeObjectForKey:(id)a3 error:(id *)a4;
- (BOOL)setObject:(id)a3 forKey:(id)a4 error:(id *)a5;
- (SYDRemotePreferencesSource)initWithApplicationID:(__CFString *)a3 storeID:(__CFString *)a4 shared:(BOOL)a5 additionalSource:(BOOL)a6 containerPath:(__CFString *)a7 storeType:(int64_t)a8;
- (__CFDictionary)copyDictionary;
- (id)dictionaryRepresentationWithError:(id *)a3;
- (id)objectForKey:(id)a3 error:(id *)a4;
- (unsigned)hasExternalChanges;
- (unsigned)synchronize;
- (void)dealloc;
- (void)getValueForKey:(__CFString *)a3;
- (void)ping;
- (void)registerForSynchronizedDefaults;
- (void)scheduleRemoteSynchronization;
- (void)setDefaultsConfiguration:(id)a3;
- (void)setValue:(void *)a3 forKey:(__CFString *)a4;
- (void)synchronizationWithCompletionHandler:(id)a3;
- (void)unregisterForSynchronizedDefaults;
- (void)updateConfiguration;
@end

@implementation SYDRemotePreferencesSource

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = SYDRemotePreferencesSource;
  [(SYDRemotePreferencesSource *)&v4 dealloc];
}

- (SYDRemotePreferencesSource)initWithApplicationID:(__CFString *)a3 storeID:(__CFString *)a4 shared:(BOOL)a5 additionalSource:(BOOL)a6 containerPath:(__CFString *)a7 storeType:(int64_t)a8
{
  v26 = *MEMORY[0x1E69E9840];
  v12 = SYDGetConnectionLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = 138412802;
    v21 = v19;
    v22 = 2112;
    v23 = a3;
    v24 = 2112;
    v25 = a4;
    _os_log_debug_impl(&dword_1C8626000, v12, OS_LOG_TYPE_DEBUG, "Initializing %@ with applicationID=%@ storeID=%@", &v20, 0x20u);
  }

  v13 = a4;
  if (v13 || ([SYDClientToDaemonConnection defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:a3], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = [[SYDClientToDaemonConnection alloc] initWithStoreIdentifier:v13 type:a8];
  }

  else
  {
    if (initWithApplicationID_storeID_shared_additionalSource_containerPath_storeType__onceToken != -1)
    {
      [SYDRemotePreferencesSource initWithApplicationID:storeID:shared:additionalSource:containerPath:storeType:];
    }

    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return &v15->super;
}

void __108__SYDRemotePreferencesSource_initWithApplicationID_storeID_shared_additionalSource_containerPath_storeType___block_invoke()
{
  v0 = SYDGetConnectionLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __108__SYDRemotePreferencesSource_initWithApplicationID_storeID_shared_additionalSource_containerPath_storeType___block_invoke_cold_1(v0);
  }
}

- (id)objectForKey:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:87 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource objectForKey:error:]", v8}];

  return 0;
}

- (void)getValueForKey:(__CFString *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:92 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource getValueForKey:]", v7}];

  return 0;
}

- (BOOL)setObject:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:97 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource setObject:forKey:error:]", v9}];

  return 0;
}

- (BOOL)removeObjectForKey:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:102 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource removeObjectForKey:error:]", v8}];

  return 0;
}

- (void)setValue:(void *)a3 forKey:(__CFString *)a4
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:107 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource setValue:forKey:]", v7}];
}

- (void)setDefaultsConfiguration:(id)a3
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v7 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:111 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource setDefaultsConfiguration:]", v6}];
}

- (void)scheduleRemoteSynchronization
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:115 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource scheduleRemoteSynchronization]", v5}];
}

- (void)synchronizationWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:119 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource synchronizationWithCompletionHandler:]", v8}];

  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SYDRemotePreferencesSource_synchronizationWithCompletionHandler___block_invoke;
  block[3] = &unk_1E831A570;
  v12 = v5;
  v10 = v5;
  dispatch_async(v9, block);
}

void __67__SYDRemotePreferencesSource_synchronizationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Trying to call a method on an invalid object.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"SyncedDefaults" code:1040 userInfo:v3];
  (*(v1 + 16))(v1, v4);

  v5 = *MEMORY[0x1E69E9840];
}

- (unsigned)synchronize
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:126 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource synchronize]", v6}];

  return 0;
}

- (unsigned)hasExternalChanges
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:141 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource hasExternalChanges]", v6}];

  return 0;
}

- (id)dictionaryRepresentationWithError:(id *)a3
{
  v3 = [(SYDRemotePreferencesSource *)self copyDictionary];

  return v3;
}

- (__CFDictionary)copyDictionary
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:156 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource copyDictionary]", v6}];

  return 0;
}

- (void)registerForSynchronizedDefaults
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:161 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource registerForSynchronizedDefaults]", v5}];
}

- (void)unregisterForSynchronizedDefaults
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:165 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource unregisterForSynchronizedDefaults]", v5}];
}

- (void)updateConfiguration
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:169 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource updateConfiguration]", v5}];
}

- (void)ping
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:173 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource ping]", v5}];
}

@end