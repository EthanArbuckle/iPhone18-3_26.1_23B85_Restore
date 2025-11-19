@interface SYDClientToDaemonConnection
+ (BOOL)hasPerformedAppLaunchSyncForStoreIdentifier:(id)a3;
+ (BOOL)isCloudSyncUserDefaultEnabledForStoreIdentifier:(id)a3;
+ (id)allStoreIdentifiersWithError:(id *)a3;
+ (id)clientProtocolInterface;
+ (id)connection;
+ (id)connectionUsingTestServer:(BOOL)a3;
+ (id)daemonProtocolInterface;
+ (id)defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:(id)a3;
+ (id)disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier:(id)a3;
+ (id)newXPCConnection;
+ (void)processAccountChangesWithCompletionHandler:(id)a3;
+ (void)removeUnitTestSyncManagers;
+ (void)setHasPerformedAppLaunchSyncForStoreIdentifier:(id)a3;
+ (void)synchronizeStoresWithIdentifiers:(id)a3 type:(int64_t)a4 testConfiguration:(id)a5 completionHandler:(id)a6;
- (BOOL)getObject:(id *)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)isUIFrameworkLinkedInDaemon;
- (BOOL)removeObjectForKey:(id)a3 error:(id *)a4;
- (BOOL)setObject:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)validateKey:(id)a3 error:(id *)a4;
- (NSString)storeIdentifier;
- (NSXPCConnection)xpcConnection;
- (SYDClientToDaemonConnection)init;
- (SYDClientToDaemonConnection)initWithStoreConfiguration:(id)a3;
- (SYDClientToDaemonConnection)initWithStoreIdentifier:(id)a3 type:(int64_t)a4;
- (SYDClientToDaemonConnectionDelegate)delegate;
- (__CFDictionary)copyDictionary;
- (id)_cachedObjectForKey:(id)a3;
- (id)changeToken;
- (id)containerIDFromDaemonWithError:(id *)a3;
- (id)copyDictionaryWithoutNullValues:(id)a3;
- (id)description;
- (id)dictionaryRepresentationWithError:(id *)a3;
- (id)objectForKey:(id)a3 error:(id *)a4;
- (id)personaUniqueString;
- (int64_t)storeType;
- (unsigned)_synchronize:(BOOL)a3;
- (void)___For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist___;
- (void)___NSUbiquitousKeyValueStore_isnt_sure_exactly_what_you_did_but_it_was_invalid___:(id)a3;
- (void)___Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore___:(id)a3;
- (void)___We_looked_everywhere_but_we_cant_find_your_store_identifier___;
- (void)___You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore___;
- (void)___You_are_not_entitled_for_NSUbiquitousKeyValueStore___;
- (void)___You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore___;
- (void)___You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again___;
- (void)___Your_store_identifier_is_empty___;
- (void)_clearCachedObjects;
- (void)_daemonWithOptions:(int64_t)a3 retries:(unint64_t)a4 errorHandler:(id)a5 daemonHandler:(id)a6;
- (void)_handleCacheErrorForKey:(id)a3;
- (void)applicationWillEnterForeground;
- (void)changeToken;
- (void)daemonDidWake;
- (void)daemonWithOptions:(int64_t)a3 errorHandler:(id)a4 daemonHandler:(id)a5;
- (void)dealloc;
- (void)deleteDataFromDisk;
- (void)exit:(id)a3;
- (void)logFaultIfNecessaryForError:(id)a3;
- (void)performOpportunisticAppLaunchSyncIfNecessary;
- (void)postFakeAccountChangeNotificationWithCompletionHandler:(id)a3;
- (void)postFakeSyncManagerChangeNotificationWithCompletionHandler:(id)a3;
- (void)processChangeDictionary:(id)a3;
- (void)registerForApplicationLifecycleEvents;
- (void)registerForDaemonDidWakeNotifications;
- (void)registerForSynchronizedDefaults;
- (void)setChangeToken:(id)a3;
- (void)setFakeError:(id)a3 forNextCloudKitRequestOfClassName:(id)a4 inStoreWithConfiguration:(id)a5;
- (void)storeDidChangeWithStoreID:(id)a3 changeDictionary:(id)a4;
- (void)synchronizationWithCompletionHandler:(id)a3;
@end

@implementation SYDClientToDaemonConnection

- (NSString)storeIdentifier
{
  v2 = [(SYDClientToDaemonConnection *)self storeConfiguration];
  v3 = [v2 storeID];
  v4 = [v3 identifier];

  return v4;
}

- (void)registerForSynchronizedDefaults
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)registerForApplicationLifecycleEvents
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)registerForDaemonDidWakeNotifications
{
  objc_initWeak(&location, self);
  v3 = [(SYDClientToDaemonConnection *)self queue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__SYDClientToDaemonConnection_registerForDaemonDidWakeNotifications__block_invoke;
  v4[3] = &unk_1E831AA08;
  objc_copyWeak(&v5, &location);
  notify_register_dispatch("com.apple.syncdefaultsd.daemon.wake", &self->_daemonWakeNotifyToken, v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)performOpportunisticAppLaunchSyncIfNecessary
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 5000000000);
  v4 = [(SYDClientToDaemonConnection *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__SYDClientToDaemonConnection_performOpportunisticAppLaunchSyncIfNecessary__block_invoke;
  v5[3] = &unk_1E831AA58;
  objc_copyWeak(&v6, &location);
  dispatch_after(v3, v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (NSXPCConnection)xpcConnection
{
  v2 = self;
  objc_sync_enter(v2);
  xpcConnection = v2->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = SYDGetConnectionLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C8626000, v4, OS_LOG_TYPE_INFO, "Creating new XPC connection", buf, 2u);
    }

    objc_initWeak(buf, v2);
    v5 = [objc_opt_class() connectionUsingTestServer:{-[SYDClientToDaemonConnection useTestServer](v2, "useTestServer")}];
    v6 = v2->_xpcConnection;
    v2->_xpcConnection = v5;

    [(NSXPCConnection *)v2->_xpcConnection setInterruptionHandler:&__block_literal_global_345];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__SYDClientToDaemonConnection_xpcConnection__block_invoke_346;
    v12[3] = &unk_1E831AA58;
    objc_copyWeak(&v13, buf);
    [(NSXPCConnection *)v2->_xpcConnection setInvalidationHandler:v12];
    v7 = +[SYDClientToDaemonConnection clientProtocolInterface];
    [(NSXPCConnection *)v2->_xpcConnection setExportedInterface:v7];

    v8 = [[SYDClientProtocolProxy alloc] initWithTarget:v2];
    [(NSXPCConnection *)v2->_xpcConnection setExportedObject:v8];

    v9 = +[SYDClientToDaemonConnection daemonProtocolInterface];
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v9];

    [(NSXPCConnection *)v2->_xpcConnection resume];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
    xpcConnection = v2->_xpcConnection;
  }

  v10 = xpcConnection;
  objc_sync_exit(v2);

  return v10;
}

uint64_t __54__SYDClientToDaemonConnection_clientProtocolInterface__block_invoke()
{
  clientProtocolInterface_interface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48453E8];

  return MEMORY[0x1EEE66BB8]();
}

void __54__SYDClientToDaemonConnection_daemonProtocolInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4846E68];
  v1 = [MEMORY[0x1E695DF90] dictionary];
  v2 = NSStringFromSelector(sel_setObject_forKey_inStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v2];

  v3 = NSStringFromSelector(sel_objectForKey_inStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E20 forKeyedSubscript:v3];

  v4 = NSStringFromSelector(sel_removeObjectForKey_inStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v4];

  v5 = NSStringFromSelector(sel_dictionaryRepresentationForStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E20 forKeyedSubscript:v5];

  v6 = NSStringFromSelector(sel_registerForChangeNotificationsForStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v6];

  v7 = NSStringFromSelector(sel_changeDictionarySinceChangeToken_inStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E20 forKeyedSubscript:v7];

  v8 = NSStringFromSelector(sel_changeTokenForStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E20 forKeyedSubscript:v8];

  v9 = NSStringFromSelector(sel_saveChangeToken_forStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v9];

  v10 = NSStringFromSelector(sel_synchronizeStoreWithConfiguration_completionHandler_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v10];

  v11 = NSStringFromSelector(sel_processAccountChangesWithCompletionHandler_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v11];

  v12 = NSStringFromSelector(sel_deleteDataFromDiskForStoreWithConfiguration_reply_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v12];

  v13 = NSStringFromSelector(sel_postFakeAccountChangeNotificationWithCompletionHandler_);
  [v1 setObject:&unk_1F4843E08 forKeyedSubscript:v13];

  v14 = NSStringFromSelector(sel_postFakeSyncManagerChangeNotificationForStoreWithConfiguration_completionHandler_);
  [v1 setObject:0 forKeyedSubscript:v14];

  v15 = NSStringFromSelector(sel_setFakeError_forNextCloudKitRequestOfClassName_inStoreWithConfiguration_);
  [v1 setObject:0 forKeyedSubscript:v15];

  v16 = NSStringFromSelector(sel_personaUniqueStringWithReply_);
  [v1 setObject:0 forKeyedSubscript:v16];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__SYDClientToDaemonConnection_daemonProtocolInterface__block_invoke_336;
  v20[3] = &unk_1E831AB70;
  v17 = v0;
  v21 = v17;
  [v1 enumerateKeysAndObjectsUsingBlock:v20];

  v18 = CKErrorUserInfoClasses();
  [v17 setClasses:v18 forSelector:sel_setFakeError_forNextCloudKitRequestOfClassName_inStoreWithConfiguration_ argumentIndex:0 ofReply:0];

  v19 = daemonProtocolInterface_interface;
  daemonProtocolInterface_interface = v17;
}

+ (id)clientProtocolInterface
{
  if (clientProtocolInterface_onceToken != -1)
  {
    +[SYDClientToDaemonConnection clientProtocolInterface];
  }

  v3 = clientProtocolInterface_interface;

  return v3;
}

+ (id)daemonProtocolInterface
{
  if (daemonProtocolInterface_onceToken != -1)
  {
    +[SYDClientToDaemonConnection daemonProtocolInterface];
  }

  v3 = daemonProtocolInterface_interface;

  return v3;
}

void __54__SYDClientToDaemonConnection_daemonProtocolInterface__block_invoke_336(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v9 = SYDErrorUserInfoClasses();
  v7 = NSSelectorFromString(v6);

  v8 = [v5 integerValue];
  [v4 setClasses:v9 forSelector:v7 argumentIndex:v8 ofReply:1];
}

- (SYDClientToDaemonConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)changeToken
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v3 = _os_activity_create(&dword_1C8626000, "kvs/get-change-token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = SYDGetConnectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SYDClientToDaemonConnection changeToken];
  }

  v10 = 0;
  v11[0] = &v10;
  v11[1] = 0x3032000000;
  v11[2] = __Block_byref_object_copy_;
  v11[3] = __Block_byref_object_dispose_;
  v12 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__SYDClientToDaemonConnection_changeToken__block_invoke;
  v9[3] = &unk_1E831A600;
  v9[4] = &v10;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SYDClientToDaemonConnection_changeToken__block_invoke_2;
  v8[3] = &unk_1E831A7E0;
  v8[4] = self;
  v8[5] = &v10;
  v8[6] = &v14;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:v9 daemonHandler:v8];
  if (*(v11[0] + 40))
  {
    v5 = SYDGetConnectionLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SYDClientToDaemonConnection *)v11 changeToken];
    }
  }

  else
  {
    v5 = SYDGetConnectionLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SYDClientToDaemonConnection changeToken];
    }
  }

  v6 = v15[5];
  _Block_object_dispose(&v10, 8);

  os_activity_scope_leave(&state);
  _Block_object_dispose(&v14, 8);

  return v6;
}

- (void)changeToken
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v3, v4, "Error getting change token from daemon: %@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SYDClientToDaemonConnection *)self storeConfiguration];
  v7 = [v3 stringWithFormat:@"<%@: %p storeConfiguration=%@>", v5, self, v6];;

  return v7;
}

void __42__SYDClientToDaemonConnection_changeToken__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeConfiguration];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__SYDClientToDaemonConnection_changeToken__block_invoke_3;
  v6[3] = &unk_1E831A808;
  v7 = *(a1 + 40);
  [v4 changeTokenForStoreWithConfiguration:v5 reply:v6];
}

void __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_216(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 storeConfiguration];
  [v3 registerForChangeNotificationsForStoreWithConfiguration:v4 reply:&__block_literal_global_218];
}

void __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_2_cold_2();
  }
}

void __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)applicationWillEnterForeground
{
  v3 = [(SYDClientToDaemonConnection *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SYDClientToDaemonConnection_applicationWillEnterForeground__block_invoke;
  block[3] = &unk_1E831A5D8;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __61__SYDClientToDaemonConnection_applicationWillEnterForeground__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) storeIdentifier];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1C8626000, v2, OS_LOG_TYPE_INFO, "Performing moved to foreground sync for store <(%@)>", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SYDClientToDaemonConnection_applicationWillEnterForeground__block_invoke_226;
  v7[3] = &unk_1E831AA30;
  v7[4] = v4;
  result = [v4 synchronizationWithCompletionHandler:v7];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __42__SYDClientToDaemonConnection_changeToken__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __61__SYDClientToDaemonConnection_applicationWillEnterForeground__block_invoke_226(uint64_t a1)
{
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__SYDClientToDaemonConnection_applicationWillEnterForeground__block_invoke_226_cold_1(a1);
  }
}

void __61__SYDClientToDaemonConnection_applicationWillEnterForeground__block_invoke_226_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_11(a1) storeIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __75__SYDClientToDaemonConnection_performOpportunisticAppLaunchSyncIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained storeIdentifier];
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v4 processName];
    v6 = [v5 isEqualToString:@"cfprefsd"];

    if ((v6 & 1) == 0)
    {
      v7 = [MEMORY[0x1E69C75D0] currentProcess];
      v8 = [v7 isApplication];

      if (v8)
      {
        if (([objc_opt_class() hasPerformedAppLaunchSyncForStoreIdentifier:v3] & 1) == 0)
        {
          v9 = [v2 storeConfiguration];
          v10 = [v9 storeID];
          v11 = [v10 testConfiguration];
          if (v11)
          {
            v12 = v11;
            v13 = [objc_opt_class() shouldSyncOnFirstInitializationOverride];
            v14 = [v13 BOOLValue];

            if ((v14 & 1) == 0)
            {
              v15 = SYDGetConnectionLog();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                __75__SYDClientToDaemonConnection_performOpportunisticAppLaunchSyncIfNecessary__block_invoke_cold_1();
              }

              goto LABEL_14;
            }
          }

          else
          {
          }

          [objc_opt_class() setHasPerformedAppLaunchSyncForStoreIdentifier:v3];
          v16 = SYDGetConnectionLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            __75__SYDClientToDaemonConnection_performOpportunisticAppLaunchSyncIfNecessary__block_invoke_cold_2();
          }

          [v2 synchronizationWithCompletionHandler:0];
        }
      }
    }

LABEL_14:
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (SYDClientToDaemonConnection)initWithStoreIdentifier:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_opt_class() defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:0];
    if (!v7)
    {
      [(SYDClientToDaemonConnection *)self ___We_looked_everywhere_but_we_cant_find_your_store_identifier];
      goto LABEL_8;
    }
  }

  if ([(SYDClientToDaemonConnection *)v7 length])
  {
    v8 = [[SYDStoreID alloc] initWithIdentifier:v7 type:a4];
    v9 = [[SYDStoreConfiguration alloc] initWithStoreID:v8];
    self = [(SYDClientToDaemonConnection *)self initWithStoreConfiguration:v9];

    v7 = self;
  }

  else
  {
    [(SYDClientToDaemonConnection *)self ___Your_store_identifier_is_empty];

    v7 = 0;
  }

LABEL_8:

  return v7;
}

- (SYDClientToDaemonConnection)initWithStoreConfiguration:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    [(SYDClientToDaemonConnection *)self initWithStoreConfiguration:a2];
  }

  v7 = SYDGetConnectionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 storeID];
    v11 = [v10 identifier];
    *buf = 138412802;
    v35 = v9;
    v36 = 2112;
    v37 = v6;
    v38 = 2112;
    v39 = v11;
    _os_log_impl(&dword_1C8626000, v7, OS_LOG_TYPE_INFO, "Initializing %@ with configuration %@ store <(%@)>", buf, 0x20u);
  }

  v33.receiver = self;
  v33.super_class = SYDClientToDaemonConnection;
  v12 = [(SYDClientToDaemonConnection *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storeConfiguration, a3);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.kvs.client", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.kvs.client.callback", v17);
    callbackQueue = v13->_callbackQueue;
    v13->_callbackQueue = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, 0xFFFF8000, -15);

    v22 = dispatch_queue_create("com.apple.kvs.client.analytics", v21);
    analyticsQueue = v13->_analyticsQueue;
    v13->_analyticsQueue = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedObjects = v13->_cachedObjects;
    v13->_cachedObjects = v24;

    v26 = objc_alloc_init(MEMORY[0x1E696AD10]);
    cacheLock = v13->_cacheLock;
    v13->_cacheLock = v26;

    v13->_hasFullCachedDictionary = 0;
    v13->_syncingWithCloudCounter = 0;
    v13->_needsChangeDictionaryFromDaemon = 1;
    v13->_useTestServer = [objc_opt_class() useTestServerByDefault];
    [(SYDClientToDaemonConnection *)v13 registerForDaemonDidWakeNotifications];
    [(SYDClientToDaemonConnection *)v13 registerForApplicationLifecycleEvents];
    [(SYDClientToDaemonConnection *)v13 performOpportunisticAppLaunchSyncIfNecessary];
    v28 = [(SYDClientToDaemonConnection *)v13 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SYDClientToDaemonConnection_initWithStoreConfiguration___block_invoke;
    block[3] = &unk_1E831A5D8;
    v32 = v13;
    dispatch_async(v28, block);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v13;
}

- (SYDClientToDaemonConnection)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(sel_initWithStoreIdentifier_type_);
  [v4 handleFailureInMethod:a2 object:self file:@"SYDClientToDaemonConnection.m" lineNumber:130 description:{@"Please use -%@", v5}];

  return 0;
}

- (int64_t)storeType
{
  v2 = [(SYDClientToDaemonConnection *)self storeConfiguration];
  v3 = [v2 storeID];
  v4 = [v3 type];

  return v4;
}

+ (id)allStoreIdentifiersWithError:(id *)a3
{
  v5 = _os_activity_create(&dword_1C8626000, "kvs/all-store-identifiers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v6 = [a1 newXPCConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__SYDClientToDaemonConnection_allStoreIdentifiersWithError___block_invoke;
  v17[3] = &unk_1E831A600;
  v17[4] = &v18;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__SYDClientToDaemonConnection_allStoreIdentifiersWithError___block_invoke_25;
  v10[3] = &unk_1E831A628;
  v10[4] = &v11;
  v10[5] = &v18;
  [v7 allStoreIdentifiersWithCompletionHandler:v10];
  if (a3)
  {
    *a3 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);
  os_activity_scope_leave(&state);

  return v8;
}

void __60__SYDClientToDaemonConnection_allStoreIdentifiersWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SYDGetConnectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__SYDClientToDaemonConnection_allStoreIdentifiersWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __60__SYDClientToDaemonConnection_allStoreIdentifiersWithError___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (id)defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v6 bundleIdentifier];

    if (!v5)
    {
      v7 = [MEMORY[0x1E696AE30] processInfo];
      v5 = [v7 processName];
    }
  }

  v8 = SYDGetConnectionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[SYDClientToDaemonConnection defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:];
  }

  v9 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v9)
  {
    v10 = v9;
    v11 = SecTaskCopyValueForEntitlement(v9, @"com.apple.developer.ubiquity-kvstore-identifier", 0);
    CFRelease(v10);
    v12 = SYDGetConnectionLog();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        +[SYDClientToDaemonConnection defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:];
      }

LABEL_19:

      goto LABEL_21;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[SYDClientToDaemonConnection defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:];
    }
  }

  else
  {
    v13 = SYDGetConnectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SYDClientToDaemonConnection defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:];
    }
  }

  if (v5)
  {
    v11 = [a1 disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier:v5];
    if (!v11)
    {
      goto LABEL_21;
    }

    v13 = SYDGetConnectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SYDClientToDaemonConnection defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:];
    }

    goto LABEL_19;
  }

  v11 = 0;
LABEL_21:

  return v11;
}

+ (id)disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier:(id)a3
{
  v3 = disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[SYDClientToDaemonConnection disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier:];
  }

  v5 = [disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier__specialStoreIdentifiersByApplicationIdentifier objectForKeyedSubscript:v4];

  return v5;
}

void __99__SYDClientToDaemonConnection_disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier___block_invoke()
{
  v4[21] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.sbd";
  v3[1] = @"com.apple.security.cloudkeychainproxy3";
  v4[0] = @"com.apple.sbd3";
  v4[1] = @"com.apple.security.cloudkeychainproxy3";
  v3[2] = @"accountsd";
  v3[3] = @"com.apple.finder";
  v4[2] = @"com.apple.accounts";
  v4[3] = @"com.apple.finder";
  v3[4] = @"com.apple.VoiceOverTouch";
  v3[5] = @"com.apple.TextInput.kbd";
  v4[4] = @"com.apple.VoiceOverTouch";
  v4[5] = @"com.apple.inputmethod.kbd";
  v3[6] = @"com.apple.nanoweatherprefsd";
  v3[7] = @"com.apple.springboard";
  v4[6] = @"com.apple.weather";
  v4[7] = @"com.apple.springboard";
  v3[8] = @"com.apple.backboardd";
  v3[9] = @"com.apple.datamigrator";
  v4[8] = @"com.apple.backboardd";
  v4[9] = @"com.apple.datamigrator";
  v3[10] = @"com.apple.CoreSuggestions";
  v3[11] = @"com.apple.cmfsyncagent";
  v4[10] = @"com.apple.CoreSuggestions";
  v4[11] = @"com.apple.cmfsyncagent";
  v3[12] = @"com.apple.accessibility.heard";
  v3[13] = @"wifid";
  v4[12] = @"com.apple.HearingAids";
  v4[13] = @"com.apple.wifid.known-networks";
  v3[14] = @"com.apple.wifi.manager";
  v3[15] = @"com.apple.wifid";
  v4[14] = @"com.apple.wifid.known-networks";
  v4[15] = @"com.apple.wifid.known-networks";
  v3[16] = @"com.apple.wifi.WiFiAgent";
  v3[17] = @"com.apple.coretelephony";
  v4[16] = @"com.apple.wifid.known-networks";
  v4[17] = @"com.apple.coretelephony";
  v3[18] = @"com.apple.mediaaccessibilityd";
  v3[19] = @"com.apple.tipsd";
  v4[18] = @"com.apple.mediaaccessibility";
  v4[19] = @"com.apple.tipsd";
  v3[20] = @"com.apple.touristd";
  v4[20] = @"com.apple.touristd";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:21];
  v1 = disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier__specialStoreIdentifiersByApplicationIdentifier;
  disgustingUglyHardcodedKnownStoreIdentifierForApplicationIdentifier__specialStoreIdentifiersByApplicationIdentifier = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_handleCacheErrorForKey:(id)a3
{
  v4 = a3;
  v5 = [(SYDClientToDaemonConnection *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SYDClientToDaemonConnection *)self cacheLock];
  [v6 lock];

  v7 = [(SYDClientToDaemonConnection *)self cachedObjects];
  [v7 removeObjectForKey:v4];

  v8 = [(SYDClientToDaemonConnection *)self cacheLock];
  [v8 unlock];
}

- (BOOL)setObject:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = _os_activity_create(&dword_1C8626000, "kvs/set-object", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = SYDGetAccessorSignpostsLog();
  v11 = os_signpost_id_generate(v10);

  v12 = SYDGetAccessorSignpostsLog();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = [(SYDClientToDaemonConnection *)self storeIdentifier];
    v15 = v14;
    v16 = [v14 UTF8String];
    v17 = v8;
    v18 = [v8 UTF8String];
    *buf = 136315394;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = v18;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SetObject", "StoreIdentifier=%{signpost.description:attribute}s Key=%{signpost.description:attribute}s", buf, 0x16u);
  }

  v19 = SYDGetConnectionLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [(SYDClientToDaemonConnection *)self storeIdentifier];
    *buf = 141559043;
    *&buf[4] = 1752392040;
    *&buf[12] = 2113;
    *&buf[14] = v8;
    *&buf[22] = 2160;
    v68 = 1752392040;
    *v69 = 2117;
    *&v69[2] = v7;
    *&v69[10] = 2112;
    *&v69[12] = v20;
    _os_log_impl(&dword_1C8626000, v19, OS_LOG_TYPE_INFO, "Setting object for key <(%{private, mask.hash}@)> = <(%{sensitive, mask.hash}@)> in store <(%@)>", buf, 0x34u);
  }

  v63 = 0;
  v21 = [(SYDClientToDaemonConnection *)self validateKey:v8 error:&v63];
  v22 = v63;
  if (v21)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v68 = __Block_byref_object_copy_;
    *v69 = __Block_byref_object_dispose_;
    *&v69[8] = 0;
    v23 = [v8 length];
    if (v23 > [(SYDRemotePreferencesSource *)self maximumKeyLength])
    {
      v24 = MEMORY[0x1E695DF30];
      v25 = [(SYDRemotePreferencesSource *)self maximumKeyLength];
      [v24 raise:*MEMORY[0x1E695D940] format:{@"NSUbiquitousKeyValueStore key '%@' is longer than the maximum allowed UTF-16 code units of (%ld)", v8, v25}];
LABEL_49:
      v27 = 0;
LABEL_50:
      _Block_object_dispose(buf, 8);

      goto LABEL_51;
    }

    v28 = [(SYDClientToDaemonConnection *)self storeConfiguration];
    v29 = [v28 storeID];
    v30 = [v29 type] == 0;

    if (v30 && [v8 lengthOfBytesUsingEncoding:4] >= 0xBE)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"NSUbiquitousKeyValueStore key '%@' is larger than the maximum allowed UTF-8 code units of (%ld)", v8, 189}];
      goto LABEL_49;
    }

    if (v7 && ([MEMORY[0x1E696AE40] propertyList:v7 isValidForFormat:200] & 1) == 0)
    {
      v47 = MEMORY[0x1E696ABC0];
      v65 = *MEMORY[0x1E696A578];
      v66 = @"Tried to set an object that is not a valid plist value.";
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v49 = [v47 errorWithDomain:@"SyncedDefaults" code:2222 userInfo:v48];
      v50 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v49;

      if (a5)
      {
        *a5 = *(*&buf[8] + 40);
      }

      [(SYDClientToDaemonConnection *)self ___Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore___:v7];
      goto LABEL_49;
    }

    v31 = [(SYDClientToDaemonConnection *)self cacheLock];
    [v31 lock];

    v32 = [(SYDClientToDaemonConnection *)self cachedObjects];
    v53 = [v32 objectForKey:v8];

    v33 = [(SYDClientToDaemonConnection *)self cacheLock];
    [v33 unlock];

    if (v53)
    {
      v34 = v7 != 0;
    }

    else
    {
      v34 = 0;
    }

    if (v34)
    {
      if ([v53 isEqual:v7])
      {
        v35 = SYDGetConnectionLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [(SYDClientToDaemonConnection *)self storeIdentifier];
          objc_claimAutoreleasedReturnValue();
          [SYDClientToDaemonConnection setObject:forKey:error:];
        }

LABEL_22:

        goto LABEL_30;
      }
    }

    else if (!v7)
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      v37 = [v53 isEqual:v36];

      if (v37)
      {
        v35 = SYDGetConnectionLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [(SYDClientToDaemonConnection *)self storeIdentifier];
          objc_claimAutoreleasedReturnValue();
          [SYDClientToDaemonConnection setObject:forKey:error:];
        }

        goto LABEL_22;
      }
    }

    v38 = [(SYDClientToDaemonConnection *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke;
    block[3] = &unk_1E831A678;
    block[4] = self;
    v60 = v7;
    v61 = v8;
    v62 = buf;
    dispatch_sync(v38, block);

LABEL_30:
    v39 = *(*&buf[8] + 40);
    if (v39)
    {
      v40 = [v39 domain];
      if (![v40 isEqualToString:@"SyncedDefaults"])
      {
LABEL_36:

        goto LABEL_37;
      }

      v41 = [*(*&buf[8] + 40) code] == 6666;

      if (v41)
      {
        v42 = SYDGetConnectionLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [SYDClientToDaemonConnection setObject:v8 forKey:&buf[8] error:?];
        }

        v43 = [(SYDClientToDaemonConnection *)self callbackQueue];
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_138;
        v56[3] = &unk_1E831A6A0;
        v57 = v8;
        v58 = self;
        dispatch_async(v43, v56);

        v40 = v57;
        goto LABEL_36;
      }
    }

LABEL_37:
    [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:*(*&buf[8] + 40)];
    if (a5)
    {
      *a5 = *(*&buf[8] + 40);
    }

    v44 = SYDGetConnectionLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [(SYDClientToDaemonConnection *)self storeIdentifier];
      objc_claimAutoreleasedReturnValue();
      [SYDClientToDaemonConnection setObject:forKey:error:];
    }

    v45 = SYDGetAccessorSignpostsLog();
    v46 = v45;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      *v55 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8626000, v46, OS_SIGNPOST_INTERVAL_END, v11, "SetObject", &unk_1C863C3EA, v55, 2u);
    }

    v27 = *(*&buf[8] + 40) == 0;
    goto LABEL_50;
  }

  [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:v22];
  if (a5)
  {
    v26 = v22;
    v27 = 0;
    *a5 = v22;
  }

  else
  {
    v27 = 0;
  }

LABEL_51:

  os_activity_scope_leave(&state);
  v51 = *MEMORY[0x1E69E9840];
  return v27;
}

void __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 connection:*(a1 + 32) willSetObject:*(a1 + 40) forKey:*(a1 + 48)];
  }

  v4 = *(a1 + 32);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_2;
  v23[3] = &unk_1E831A600;
  v23[4] = *(a1 + 56);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_3;
  v20[3] = &unk_1E831A650;
  v5 = *(a1 + 40);
  v6 = (a1 + 48);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = *(a1 + 56);
  *&v9 = v5;
  *(&v9 + 1) = v7;
  v21 = v9;
  v22 = v8;
  [v4 daemonWithOptions:1 errorHandler:v23 daemonHandler:v20];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [*v2 _handleCacheErrorForKey:*v6];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 connection:*(a1 + 32) didSetObject:*(a1 + 40) forKey:*(a1 + 48)];
    }

    v10 = *(a1 + 40);
    v11 = SYDGetConnectionLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      if (v12)
      {
        __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_cold_1((a1 + 48), v2);
      }

      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], *(a1 + 40), 0);
      v14 = [*(a1 + 32) cacheLock];
      [v14 lock];

      v15 = [*(a1 + 32) cachedObjects];
      [v15 setObject:DeepCopy forKey:*(a1 + 48)];

      v16 = [*(a1 + 32) cacheLock];
      [v16 unlock];
    }

    else
    {
      if (v12)
      {
        __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_cold_2((a1 + 48), v2);
      }

      v17 = [*v2 cacheLock];
      [v17 lock];

      v18 = [*v2 cachedObjects];
      v19 = [MEMORY[0x1E695DFB0] null];
      [v18 setObject:v19 forKey:*v6];

      DeepCopy = [*v2 cacheLock];
      [DeepCopy unlock];
    }
  }
}

void __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [v5 storeConfiguration];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_4;
  v8[3] = &unk_1E831A600;
  v8[4] = a1[7];
  [v6 setObject:v3 forKey:v4 inStoreWithConfiguration:v7 reply:v8];
}

void __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_138(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696A9D8];
  v10[0] = &unk_1F4843DF0;
  v3 = *MEMORY[0x1E696A9E0];
  v9[0] = v2;
  v9[1] = v3;
  v8 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"SYDUbiquitousKeyValueStoreDidChangeExternallyNotification" object:*(a1 + 40) userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)removeObjectForKey:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = _os_activity_create(&dword_1C8626000, "kvs/remove-object", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = SYDGetAccessorSignpostsLog();
  v9 = os_signpost_id_generate(v8);

  v10 = SYDGetAccessorSignpostsLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v12 = [(SYDClientToDaemonConnection *)self storeIdentifier];
    v13 = v12;
    v14 = [v12 UTF8String];
    v15 = v6;
    v16 = [v6 UTF8String];
    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = v16;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RemoveObject", "StoreIdentifier=%{signpost.description:attribute}s Key=%{signpost.description:attribute}s", buf, 0x16u);
  }

  v17 = SYDGetConnectionLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [(SYDClientToDaemonConnection *)self storeIdentifier];
    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 2113;
    *&buf[14] = v6;
    *&buf[22] = 2112;
    v43 = v18;
    _os_log_impl(&dword_1C8626000, v17, OS_LOG_TYPE_INFO, "Removing object for key <(%{private, mask.hash}@)> in store <(%@)>", buf, 0x20u);
  }

  v40 = 0;
  v19 = [(SYDClientToDaemonConnection *)self validateKey:v6 error:&v40];
  v20 = v40;
  if (v19)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = __Block_byref_object_copy_;
    v44 = __Block_byref_object_dispose_;
    v45 = 0;
    v21 = [(SYDClientToDaemonConnection *)self cacheLock];
    [v21 lock];

    v22 = [(SYDClientToDaemonConnection *)self cachedObjects];
    v23 = [v22 objectForKey:v6];

    v24 = [(SYDClientToDaemonConnection *)self cacheLock];
    [v24 unlock];

    v25 = [MEMORY[0x1E695DFB0] null];
    v26 = [v23 isEqual:v25];

    if (v26)
    {
      v27 = SYDGetConnectionLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [(SYDClientToDaemonConnection *)self storeIdentifier];
        objc_claimAutoreleasedReturnValue();
        [SYDClientToDaemonConnection removeObjectForKey:error:];
      }
    }

    else
    {
      v30 = [(SYDClientToDaemonConnection *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke;
      block[3] = &unk_1E831A6F0;
      block[4] = self;
      v38 = v6;
      v39 = buf;
      dispatch_sync(v30, block);
    }

    [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:*(*&buf[8] + 40)];
    if (a4)
    {
      *a4 = *(*&buf[8] + 40);
    }

    v31 = SYDGetConnectionLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [(SYDClientToDaemonConnection *)self storeIdentifier];
      objc_claimAutoreleasedReturnValue();
      [SYDClientToDaemonConnection removeObjectForKey:error:];
    }

    v32 = SYDGetAccessorSignpostsLog();
    v33 = v32;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *v36 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8626000, v33, OS_SIGNPOST_INTERVAL_END, v9, "RemoveObject", &unk_1C863C3EA, v36, 2u);
    }

    v29 = *(*&buf[8] + 40) == 0;
    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:v20];
    if (a4)
    {
      v28 = v20;
      v29 = 0;
      *a4 = v20;
    }

    else
    {
      v29 = 0;
    }
  }

  os_activity_scope_leave(&state);
  v34 = *MEMORY[0x1E69E9840];
  return v29;
}

void __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 connection:*(a1 + 32) willRemoveObjectForKey:*(a1 + 40)];
  }

  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = *(v4 - 1);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke_2;
  v21[3] = &unk_1E831A600;
  v21[4] = v4[1];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke_3;
  v17 = &unk_1E831A6C8;
  v7 = v5;
  v8 = *(v4 - 1);
  v18 = v7;
  v19 = v8;
  v20 = v4[1];
  [v6 daemonWithOptions:1 errorHandler:v21 daemonHandler:&v14];
  if (*(*(v4[1] + 8) + 40))
  {
    [*v2 _handleCacheErrorForKey:{*v4, v14, v15, v16, v17}];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 connection:*v2 didRemoveObjectForKey:{*v4, v14, v15, v16, v17}];
    }

    v9 = SYDGetConnectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke_cold_1(v4, v2);
    }

    v10 = [*v2 cacheLock];
    [v10 lock];

    v11 = [*v2 cachedObjects];
    v12 = [MEMORY[0x1E695DFB0] null];
    [v11 setObject:v12 forKey:*v4];

    v13 = [*v2 cacheLock];
    [v13 unlock];
  }
}

void __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 storeConfiguration];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke_4;
  v7[3] = &unk_1E831A600;
  v7[4] = a1[6];
  [v5 removeObjectForKey:v3 inStoreWithConfiguration:v6 reply:v7];
}

- (id)objectForKey:(id)a3 error:(id *)a4
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v42 = _os_activity_create(&dword_1C8626000, "kvs/get-object", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v42, &state);
  v7 = SYDGetAccessorSignpostsLog();
  v8 = os_signpost_id_generate(v7);

  v9 = SYDGetAccessorSignpostsLog();
  v10 = v9;
  v41 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = [(SYDClientToDaemonConnection *)self storeIdentifier];
    v12 = v11;
    v13 = [v11 UTF8String];
    v14 = v6;
    v15 = [v6 UTF8String];
    *buf = 136315394;
    v76 = v13;
    v77 = 2080;
    v78 = v15;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "GetObject", "StoreIdentifier=%{signpost.description:attribute}s Key=%{signpost.description:attribute}s", buf, 0x16u);
  }

  v16 = SYDGetConnectionLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(SYDClientToDaemonConnection *)self storeIdentifier];
    objc_claimAutoreleasedReturnValue();
    [SYDClientToDaemonConnection objectForKey:error:];
  }

  v73 = 0;
  v17 = [(SYDClientToDaemonConnection *)self validateKey:v6 error:&v73];
  v18 = v73;
  if (v17)
  {
    v67 = 0;
    v68 = &v67;
    v69 = 0x3032000000;
    v70 = __Block_byref_object_copy_;
    v71 = __Block_byref_object_dispose_;
    v72 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy_;
    v65 = __Block_byref_object_dispose_;
    v66 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke;
    v53[3] = &unk_1E831A718;
    v53[4] = self;
    v55 = &v61;
    v19 = v6;
    v54 = v19;
    v56 = &v57;
    v20 = MEMORY[0x1CCA79010](v53);
    v20[2]();
    if ((v58[3] & 1) == 0)
    {
      v21 = [(SYDClientToDaemonConnection *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2;
      block[3] = &unk_1E831A790;
      v49 = v20;
      v50 = &v57;
      block[4] = self;
      v48 = v19;
      v51 = &v67;
      v52 = &v61;
      dispatch_sync(v21, block);
    }

    [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:v68[5]];
    v22 = [(SYDClientToDaemonConnection *)self storeIdentifier];
    v23 = [(SYDClientToDaemonConnection *)self analyticsQueue];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_148;
    v43[3] = &unk_1E831A6F0;
    v24 = v19;
    v44 = v24;
    v25 = v22;
    v45 = v25;
    v46 = &v57;
    dispatch_async(v23, v43);

    v26 = SYDGetConnectionLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v40 = v6;
      v27 = v8;
      v28 = a4;
      v29 = *(v58 + 24);
      v30 = v62[5];
      v31 = [(SYDClientToDaemonConnection *)self storeIdentifier];
      v32 = v31;
      v33 = &stru_1F4842FF0;
      *buf = 138413571;
      if (v29)
      {
        v33 = @" (from cache)";
      }

      v76 = v33;
      v77 = 2160;
      v78 = 1752392040;
      v79 = 2113;
      v80 = v24;
      v81 = 2160;
      v82 = 1752392040;
      v83 = 2117;
      v84 = v30;
      v85 = 2112;
      v86 = v31;
      _os_log_impl(&dword_1C8626000, v26, OS_LOG_TYPE_INFO, "Returning object%@ for key <(%{private, mask.hash}@)> = <(%{sensitive, mask.hash}@)> in store <(%@)>", buf, 0x3Eu);

      a4 = v28;
      v8 = v27;
      v6 = v40;
    }

    if (a4)
    {
      *a4 = v68[5];
    }

    v34 = SYDGetAccessorSignpostsLog();
    v35 = v34;
    if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8626000, v35, OS_SIGNPOST_INTERVAL_END, v8, "GetObject", &unk_1C863C3EA, buf, 2u);
    }

    v36 = v62[5];
    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v61, 8);

    _Block_object_dispose(&v67, 8);
  }

  else
  {
    [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:v18];
    if (a4)
    {
      v37 = v18;
      v36 = 0;
      *a4 = v18;
    }

    else
    {
      v36 = 0;
    }
  }

  os_activity_scope_leave(&state);
  v38 = *MEMORY[0x1E69E9840];

  return v36;
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cacheLock];
  [v2 lock];

  v3 = [*(a1 + 32) cachedObjects];
  v4 = [v3 objectForKey:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) cacheLock];
  [v7 unlock];

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = [MEMORY[0x1E695DFB0] null];
    LODWORD(v8) = [v8 isEqual:v9];

    if (v8)
    {
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;
    }
  }
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v2 = (a1 + 32);
    v3 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 connection:*(a1 + 32) willGetObjectForKey:*(a1 + 40)];
    }

    v5 = (a1 + 40);
    v4 = *(a1 + 40);
    v6 = *(a1 + 32);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_3;
    v21[3] = &unk_1E831A600;
    v21[4] = *(a1 + 64);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_4;
    v17[3] = &unk_1E831A768;
    v7 = v4;
    v8 = *(a1 + 32);
    v18 = v7;
    v19 = v8;
    v20 = *(a1 + 64);
    [v6 daemonWithOptions:1 errorHandler:v21 daemonHandler:v17];
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v9 = *(*(*(a1 + 72) + 8) + 40);
      v10 = SYDGetConnectionLog();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      if (v9)
      {
        if (v11)
        {
          __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2_cold_1((a1 + 40), a1 + 32);
        }

        v12 = [*(a1 + 32) cacheLock];
        [v12 lock];

        v13 = [*(a1 + 32) cachedObjects];
        [v13 setObject:*(*(*(a1 + 72) + 8) + 40) forKey:*(a1 + 40)];
      }

      else
      {
        if (v11)
        {
          __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2_cold_2((a1 + 40), a1 + 32);
        }

        v14 = [*v2 cacheLock];
        [v14 lock];

        v13 = [*v2 cachedObjects];
        v15 = [MEMORY[0x1E695DFB0] null];
        [v13 setObject:v15 forKey:*v5];
      }

      v16 = [*v2 cacheLock];
      [v16 unlock];
    }
  }
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 storeConfiguration];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_5;
  v7[3] = &unk_1E831A740;
  v8 = *(a1 + 48);
  [v5 objectForKey:v3 inStoreWithConfiguration:v6 reply:v7];
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_148(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  AnalyticsSendEventLazy();
}

id __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2_152(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"keyHash";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "hash")}];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10[0] = v2;
  v10[1] = v3;
  v9[1] = @"storeIdentifier";
  v9[2] = @"objectExistedInCache";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(*(v4 + 8) + 24)];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)getObject:(id *)a3 forKey:(id)a4 error:(id *)a5
{
  v12 = 0;
  v7 = [(SYDClientToDaemonConnection *)self objectForKey:a4 error:&v12];
  v8 = v12;
  if (a3)
  {
    v9 = v7;
    *a3 = v7;
  }

  if (a5)
  {
    v10 = v8;
    *a5 = v8;
  }

  return v8 == 0;
}

- (id)_cachedObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(SYDClientToDaemonConnection *)self cacheLock];
  [v5 lock];

  v6 = [(SYDClientToDaemonConnection *)self cachedObjects];
  v7 = [v6 objectForKey:v4];

  v8 = [(SYDClientToDaemonConnection *)self cacheLock];
  [v8 unlock];

  return v7;
}

- (void)_clearCachedObjects
{
  v3 = [(SYDClientToDaemonConnection *)self cacheLock];
  [v3 lock];

  [(SYDClientToDaemonConnection *)self setHasFullCachedDictionary:0];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(SYDClientToDaemonConnection *)self setCachedObjects:v4];

  v5 = [(SYDClientToDaemonConnection *)self cacheLock];
  [v5 unlock];
}

- (id)dictionaryRepresentationWithError:(id *)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = [(SYDClientToDaemonConnection *)self cacheLock];
  [v5 lock];

  if ([(SYDClientToDaemonConnection *)self hasFullCachedDictionary])
  {
    v6 = SYDGetConnectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(SYDClientToDaemonConnection *)self dictionaryRepresentationWithError:v6];
    }

    v7 = [(SYDClientToDaemonConnection *)self cachedObjects];
    v8 = [(SYDClientToDaemonConnection *)self copyDictionaryWithoutNullValues:v7];

    v9 = [(SYDClientToDaemonConnection *)self cacheLock];
    [v9 unlock];
  }

  else
  {
    v10 = [(SYDClientToDaemonConnection *)self cacheLock];
    [v10 unlock];

    v9 = _os_activity_create(&dword_1C8626000, "kvs/dictionary-representation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v9, &state);
    v11 = SYDGetAccessorSignpostsLog();
    v12 = os_signpost_id_generate(v11);

    v13 = SYDGetAccessorSignpostsLog();
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v15 = [(SYDClientToDaemonConnection *)self storeIdentifier];
      v16 = v15;
      v17 = [v15 UTF8String];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v17;
      _os_signpost_emit_with_name_impl(&dword_1C8626000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "GetDictionaryRepresentation", "StoreIdentifier=%{signpost.description:attribute}s", &buf, 0xCu);
    }

    v18 = SYDGetConnectionLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = [(SYDClientToDaemonConnection *)self storeIdentifier];
      [(SYDClientToDaemonConnection *)v19 dictionaryRepresentationWithError:v55, v18];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy_;
    v53 = __Block_byref_object_dispose_;
    v54 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy_;
    v40 = __Block_byref_object_dispose_;
    v41 = 0;
    v20 = [(SYDClientToDaemonConnection *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v20 connectionWillGetDictionaryRepresentation:self];
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __65__SYDClientToDaemonConnection_dictionaryRepresentationWithError___block_invoke;
    v35[3] = &unk_1E831A600;
    v35[4] = &v36;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __65__SYDClientToDaemonConnection_dictionaryRepresentationWithError___block_invoke_2;
    v34[3] = &unk_1E831A7E0;
    v34[4] = self;
    v34[5] = &v36;
    v34[6] = &buf;
    [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:v35 daemonHandler:v34];
    v21 = v37[5];
    if (!v21)
    {
      v22 = SYDGetConnectionLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = [(SYDClientToDaemonConnection *)self storeIdentifier];
        [(SYDClientToDaemonConnection *)v23 dictionaryRepresentationWithError:v49, v22];
      }

      v24 = [(SYDClientToDaemonConnection *)self cacheLock];
      [v24 lock];

      v25 = [*(*(&buf + 1) + 40) mutableCopy];
      [(SYDClientToDaemonConnection *)self setCachedObjects:v25];

      [(SYDClientToDaemonConnection *)self setHasFullCachedDictionary:1];
      v26 = [(SYDClientToDaemonConnection *)self cacheLock];
      [v26 unlock];

      v21 = v37[5];
    }

    [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:v21];
    if (!*(*(&buf + 1) + 40))
    {
      *(*(&buf + 1) + 40) = MEMORY[0x1E695E0F8];
    }

    v27 = SYDGetConnectionLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [(SYDClientToDaemonConnection *)self storeIdentifier];
      v29 = *(*(&buf + 1) + 40);
      *v43 = 138412803;
      v44 = v28;
      v45 = 2160;
      v46 = 1752392040;
      v47 = 2117;
      v48 = v29;
      _os_log_impl(&dword_1C8626000, v27, OS_LOG_TYPE_INFO, "Returning dictionary representation for store <%@>: %{sensitive, mask.hash}@", v43, 0x20u);
    }

    if (a3)
    {
      *a3 = v37[5];
    }

    v30 = SYDGetAccessorSignpostsLog();
    v31 = v30;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *v43 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8626000, v31, OS_SIGNPOST_INTERVAL_END, v12, "GetDictionaryRepresentation", &unk_1C863C3EA, v43, 2u);
    }

    v8 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&v36, 8);

    _Block_object_dispose(&buf, 8);
    os_activity_scope_leave(&state);
  }

  v32 = *MEMORY[0x1E69E9840];

  return v8;
}

void __65__SYDClientToDaemonConnection_dictionaryRepresentationWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeConfiguration];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__SYDClientToDaemonConnection_dictionaryRepresentationWithError___block_invoke_3;
  v6[3] = &unk_1E831A628;
  v7 = *(a1 + 40);
  [v4 dictionaryRepresentationForStoreWithConfiguration:v5 reply:v6];
}

void __65__SYDClientToDaemonConnection_dictionaryRepresentationWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)copyDictionaryWithoutNullValues:(id)a3
{
  v3 = [a3 mutableCopy];
  v4 = [MEMORY[0x1E695DFB0] null];
  v5 = [v3 allKeysForObject:v4];

  [v3 removeObjectsForKeys:v5];
  v6 = [v3 copy];

  return v6;
}

- (__CFDictionary)copyDictionary
{
  v2 = [(SYDClientToDaemonConnection *)self dictionaryRepresentation];

  return CFRetain(v2);
}

- (void)setChangeToken:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/save-change-token", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = SYDGetConnectionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SYDClientToDaemonConnection setChangeToken:];
  }

  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x3032000000;
  v15[2] = __Block_byref_object_copy_;
  v15[3] = __Block_byref_object_dispose_;
  v16 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__SYDClientToDaemonConnection_setChangeToken___block_invoke;
  v13[3] = &unk_1E831A600;
  v13[4] = &v14;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__SYDClientToDaemonConnection_setChangeToken___block_invoke_2;
  v9[3] = &unk_1E831A6C8;
  v7 = v4;
  v10 = v7;
  v11 = self;
  v12 = &v14;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:v13 daemonHandler:v9];
  if (*(v15[0] + 40))
  {
    v8 = SYDGetConnectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SYDClientToDaemonConnection setChangeToken:v15];
    }
  }

  else
  {
    v8 = SYDGetConnectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SYDClientToDaemonConnection setChangeToken:];
    }
  }

  _Block_object_dispose(&v14, 8);
  os_activity_scope_leave(&state);
}

void __46__SYDClientToDaemonConnection_setChangeToken___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 storeConfiguration];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SYDClientToDaemonConnection_setChangeToken___block_invoke_3;
  v7[3] = &unk_1E831A600;
  v7[4] = a1[6];
  [v5 saveChangeToken:v3 forStoreWithConfiguration:v6 reply:v7];
}

- (BOOL)validateKey:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 length])
  {
    LOBYTE(a4) = 1;
  }

  else if (a4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid key parameter provided"];
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a4 = [v8 errorWithDomain:@"SyncedDefaults" code:2222 userInfo:v9];

    LOBYTE(a4) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return a4;
}

- (unsigned)_synchronize:(BOOL)a3
{
  v5 = _os_activity_create(&dword_1C8626000, "kvs/synchronize", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v6 = [(SYDClientToDaemonConnection *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SYDClientToDaemonConnection__synchronize___block_invoke;
  v8[3] = &unk_1E831A830;
  v8[4] = self;
  v8[5] = &v16;
  v9 = a3;
  v8[6] = &v10;
  dispatch_sync(v6, v8);

  [(SYDClientToDaemonConnection *)self logFaultIfNecessaryForError:v11[5]];
  LOBYTE(self) = *(v17 + 24);
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  os_activity_scope_leave(&state);

  return self;
}

void __44__SYDClientToDaemonConnection__synchronize___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) needsChangeDictionaryFromDaemon];
  v4 = SYDGetConnectionLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = [*v2 storeIdentifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1C8626000, v5, OS_LOG_TYPE_INFO, "Synchronizing for store <(%@)>", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    v7 = [*v2 changeToken];
    v8 = [*v2 delegate];
    if (*(a1 + 56) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v8 connectionWillSynchronize:*v2];
    }

    v9 = *(a1 + 32);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __44__SYDClientToDaemonConnection__synchronize___block_invoke_178;
    v27[3] = &unk_1E831A600;
    v27[4] = *(a1 + 48);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __44__SYDClientToDaemonConnection__synchronize___block_invoke_2;
    v22[3] = &unk_1E831A768;
    v10 = v7;
    v11 = *(a1 + 32);
    v23 = v10;
    v24 = v11;
    v25 = *(a1 + 48);
    p_buf = &buf;
    [v9 daemonWithOptions:1 errorHandler:v27 daemonHandler:v22];
    if (objc_opt_respondsToSelector())
    {
      v12 = *(a1 + 32);
      v13 = *(*(&buf + 1) + 40);
      v14 = *(*(a1 + 48) + 8);
      obj = *(v14 + 40);
      v15 = [v8 connection:v12 didSynchronize:v13 error:&obj];
      objc_storeStrong((v14 + 40), obj);
      v16 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v15;
    }

    if (*(*(&buf + 1) + 40))
    {
      v17 = SYDGetConnectionLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __44__SYDClientToDaemonConnection__synchronize___block_invoke_cold_2(v2);
      }

      [*v2 setNeedsChangeDictionaryFromDaemon:0];
      [*v2 processChangeDictionary:*(*(&buf + 1) + 40)];
      v18 = 1;
    }

    else
    {
      v19 = SYDGetConnectionLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __44__SYDClientToDaemonConnection__synchronize___block_invoke_cold_3(v2);
      }

      v18 = 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = v18;

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __44__SYDClientToDaemonConnection__synchronize___block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __44__SYDClientToDaemonConnection__synchronize___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 storeConfiguration];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SYDClientToDaemonConnection__synchronize___block_invoke_3;
  v7[3] = &unk_1E831A628;
  v8 = *(a1 + 48);
  [v5 changeDictionarySinceChangeToken:v3 inStoreWithConfiguration:v6 reply:v7];
}

void __44__SYDClientToDaemonConnection__synchronize___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)processChangeDictionary:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SYDClientToDaemonConnection *)self queue];
  dispatch_assert_queue_V2(v5);

  v23 = v4;
  v6 = [v4 objectForKeyedSubscript:@"NSUbiquitousKeyValueStoreDidChangeExternallyNotificationUserInfo"];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A9E0]];
  v22 = v6;
  v21 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A9D8]];
  if ([v21 integerValue] == 3)
  {
    [(SYDClientToDaemonConnection *)self _clearCachedObjects];
  }

  v8 = [(SYDClientToDaemonConnection *)self cacheLock];
  [v8 lock];

  [(SYDClientToDaemonConnection *)self setHasFullCachedDictionary:0];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        v15 = SYDGetConnectionLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 141558275;
          v32 = 1752392040;
          v33 = 2113;
          v34 = v14;
          _os_log_debug_impl(&dword_1C8626000, v15, OS_LOG_TYPE_DEBUG, "Invalidating cached value for changed key <(%{private, mask.hash}@)>", buf, 0x16u);
        }

        v16 = [(SYDClientToDaemonConnection *)self cachedObjects];
        [v16 removeObjectForKey:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v11);
  }

  v17 = [(SYDClientToDaemonConnection *)self cacheLock];
  [v17 unlock];

  if (v22)
  {
    v18 = [(SYDClientToDaemonConnection *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__SYDClientToDaemonConnection_processChangeDictionary___block_invoke;
    block[3] = &unk_1E831A858;
    block[4] = self;
    v25 = v22;
    v26 = v9;
    dispatch_async(v18, block);
  }

  v19 = [v23 objectForKeyedSubscript:@"ChangeToken"];
  if (v19)
  {
    [(SYDClientToDaemonConnection *)self setChangeToken:v19];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __55__SYDClientToDaemonConnection_processChangeDictionary___block_invoke(uint64_t a1)
{
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__SYDClientToDaemonConnection_processChangeDictionary___block_invoke_cold_1(a1);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"SYDUbiquitousKeyValueStoreDidChangeExternallyNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (void)synchronizationWithCompletionHandler:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/cloud-sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = SYDGetSyncSignpostsLog();
  v7 = os_signpost_id_generate(v6);

  v8 = SYDGetSyncSignpostsLog();
  v9 = v8;
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = [(SYDClientToDaemonConnection *)self storeIdentifier];
    v11 = v10;
    v12 = [v10 UTF8String];
    *buf = 136315138;
    v28 = v12;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Sync", "StoreIdentifier=%{signpost.description:attribute}s enableTelemetry=YES ", buf, 0xCu);
  }

  v13 = SYDGetConnectionLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(SYDClientToDaemonConnection *)self storeIdentifier];
    *buf = 138412546;
    v28 = v14;
    v29 = 2112;
    v30 = self;
    _os_log_impl(&dword_1C8626000, v13, OS_LOG_TYPE_INFO, "Synchronizing with cloud for store <(%@)> %@", buf, 0x16u);
  }

  v15 = [(SYDClientToDaemonConnection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v15 connectionWillSynchronize:self];
  }

  v16 = self;
  objc_sync_enter(v16);
  [(SYDClientToDaemonConnection *)v16 setSyncingWithCloudCounter:[(SYDClientToDaemonConnection *)v16 syncingWithCloudCounter]+ 1];
  objc_sync_exit(v16);

  objc_initWeak(buf, v16);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke;
  v23[3] = &unk_1E831A8D0;
  objc_copyWeak(v25, buf);
  v23[4] = v16;
  v17 = v4;
  v24 = v17;
  v25[1] = v7;
  v18 = MEMORY[0x1CCA79010](v23);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_188;
  v21[3] = &unk_1E831A8F8;
  v21[4] = v16;
  v19 = v18;
  v22 = v19;
  [(SYDClientToDaemonConnection *)v16 daemonWithOptions:0 errorHandler:v19 daemonHandler:v21];

  objc_destroyWeak(v25);
  objc_destroyWeak(buf);

  os_activity_scope_leave(&state);
  v20 = *MEMORY[0x1E69E9840];
}

void __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SYDGetConnectionLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained storeIdentifier];
    *buf = 138412290;
    v24 = v7;
    _os_log_impl(&dword_1C8626000, v5, OS_LOG_TYPE_INFO, "Done synchronizing with cloud for store <(%@)>", buf, 0xCu);
  }

  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    objc_sync_enter(v10);
    [v10 setSyncingWithCloudCounter:{objc_msgSend(v10, "syncingWithCloudCounter") - 1}];
    objc_sync_exit(v10);

    v11 = [v10 callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_187;
    block[3] = &unk_1E831A8A8;
    v12 = *(a1 + 40);
    block[4] = *(a1 + 32);
    block[5] = v10;
    v21 = v12;
    v13 = v3;
    v14 = *(a1 + 56);
    v20 = v13;
    v22 = v14;
    dispatch_async(v11, block);
  }

  else
  {
    v15 = SYDGetSyncSignpostsLog();
    v16 = v15;
    v17 = *(a1 + 56);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8626000, v16, OS_SIGNPOST_INTERVAL_END, v17, "Sync", &unk_1C863C3EA, buf, 2u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_187(uint64_t a1)
{
  [*(a1 + 32) setNeedsChangeDictionaryFromDaemon:1];
  [*(a1 + 40) _synchronize:0];
  v2 = [*(a1 + 40) callbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E831A880;
  v7 = *(a1 + 56);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v6 = v3;
  v8 = v4;
  dispatch_async(v2, block);
}

void __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4]);
  }

  v3 = SYDGetSyncSignpostsLog();
  v4 = v3;
  v5 = a1[6];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v4, OS_SIGNPOST_INTERVAL_END, v5, "Sync", &unk_1C863C3EA, v6, 2u);
  }
}

void __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_188(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeConfiguration];
  [v4 synchronizeStoreWithConfiguration:v5 completionHandler:*(a1 + 40)];
}

+ (void)synchronizeStoresWithIdentifiers:(id)a3 type:(int64_t)a4 testConfiguration:(id)a5 completionHandler:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = _os_activity_create(&dword_1C8626000, "kvs/cloud-sync-multiple", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  v14 = SYDGetSyncSignpostsLog();
  v15 = os_signpost_id_generate(v14);

  v16 = SYDGetSyncSignpostsLog();
  v17 = v16;
  if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = [v10 componentsJoinedByString:{@", "}];
    v19 = v18;
    v20 = [v18 UTF8String];
    *buf = 136315138;
    v37 = v20;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SyncMultiple", "Stores=%{signpost.description:attribute}s enableTelemetry=YES ", buf, 0xCu);
  }

  v21 = SYDGetConnectionLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = SYDStringForStoreType(a4);
    *buf = 138412546;
    v37 = v22;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&dword_1C8626000, v21, OS_LOG_TYPE_INFO, "Synchronizing stores of type %@ with the cloud: %@", buf, 0x16u);
  }

  v23 = [a1 newXPCConnection];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke;
  v33[3] = &unk_1E831A920;
  v24 = v12;
  v34 = v24;
  v25 = [v23 remoteObjectProxyWithErrorHandler:v33];
  objc_initWeak(buf, v23);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_192;
  v29[3] = &unk_1E831A8D0;
  objc_copyWeak(v32, buf);
  v26 = v10;
  v30 = v26;
  v27 = v24;
  v31 = v27;
  v32[1] = v15;
  [v25 synchronizeStoresWithIdentifiers:v26 type:a4 testConfiguration:v11 completionHandler:v29];

  objc_destroyWeak(v32);
  objc_destroyWeak(buf);

  os_activity_scope_leave(&state);
  v28 = *MEMORY[0x1E69E9840];
}

void __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SYDGetConnectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_192(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = SYDGetConnectionLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_192_cold_1();
    }

    v6 = [v3 domain];
    if ([v6 isEqual:@"SyncedDefaults"])
    {
      v7 = [v3 code];

      if (v7 != 3333)
      {
        goto LABEL_12;
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_193;
      v18[3] = &unk_1E831A5D8;
      v19 = *(a1 + 32);
      if (_block_invoke_onceToken != -1)
      {
        dispatch_once(&_block_invoke_onceToken, v18);
      }

      v6 = v19;
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&dword_1C8626000, v6, OS_LOG_TYPE_INFO, "Done synchronizing with cloud for stores: %@", buf, 0xCu);
  }

LABEL_12:
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_194;
    block[3] = &unk_1E831A948;
    v17 = v9;
    v16 = v3;
    dispatch_async(v10, block);
  }

  v11 = SYDGetSyncSignpostsLog();
  v12 = v11;
  v13 = *(a1 + 56);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8626000, v12, OS_SIGNPOST_INTERVAL_END, v13, "SyncMultiple", &unk_1C863C3EA, buf, 2u);
  }

  [WeakRetained setInvalidationHandler:0];
  [WeakRetained setInterruptionHandler:0];
  [WeakRetained invalidate];

  v14 = *MEMORY[0x1E69E9840];
}

void __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_193(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_2;
  block[3] = &unk_1E831A5D8;
  v2 = *(a1 + 32);
  if (_block_invoke_2_innerOnceToken != -1)
  {
    dispatch_once(&_block_invoke_2_innerOnceToken, block);
  }
}

void __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_2_cold_1(a1);
  }
}

+ (BOOL)isCloudSyncUserDefaultEnabledForStoreIdentifier:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/is-cloud-sync-enabled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [a1 newXPCConnection];
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_196];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__SYDClientToDaemonConnection_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_197;
  v10[3] = &unk_1E831A990;
  v10[4] = &v11;
  [v7 isCloudSyncUserDefaultEnabledForStoreIdentifier:v4 completionHandler:v10];
  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  os_activity_scope_leave(&state);
  return v8;
}

void __79__SYDClientToDaemonConnection_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __79__SYDClientToDaemonConnection_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_1();
  }
}

void __78__SYDClientToDaemonConnection_setCloudSyncUserDefaultEnabled_storeIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __78__SYDClientToDaemonConnection_setCloudSyncUserDefaultEnabled_storeIdentifier___block_invoke_cold_1();
  }
}

+ (id)connection
{
  v3 = [a1 useTestServerByDefault];

  return [a1 connectionUsingTestServer:v3];
}

+ (id)connectionUsingTestServer:(BOOL)a3
{
  if (a3)
  {
    v3 = SYDGetConnectionLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C8626000, v3, OS_LOG_TYPE_INFO, "Using test server service name", v6, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.CloudKeyValuesTestingService" options:0];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.kvsd" options:0];
  }

  return v4;
}

+ (id)newXPCConnection
{
  v2 = [a1 connection];
  [v2 setInterruptionHandler:&__block_literal_global_209];
  [v2 setInvalidationHandler:&__block_literal_global_212];
  v3 = +[SYDClientToDaemonConnection daemonProtocolInterface];
  [v2 setRemoteObjectInterface:v3];

  [v2 resume];
  return v2;
}

void __47__SYDClientToDaemonConnection_newXPCConnection__block_invoke()
{
  v0 = SYDGetConnectionLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C8626000, v0, OS_LOG_TYPE_INFO, "XPC connection was interrupted", v1, 2u);
  }
}

void __47__SYDClientToDaemonConnection_newXPCConnection__block_invoke_210()
{
  v0 = SYDGetConnectionLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __47__SYDClientToDaemonConnection_newXPCConnection__block_invoke_210_cold_1();
  }
}

- (void)deleteDataFromDisk
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__SYDClientToDaemonConnection_deleteDataFromDisk__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeConfiguration];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__SYDClientToDaemonConnection_deleteDataFromDisk__block_invoke_3;
  v6[3] = &unk_1E831A600;
  v6[4] = *(a1 + 40);
  [v4 deleteDataFromDiskForStoreWithConfiguration:v5 reply:v6];
}

void __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_cold_1();
  }
}

void __68__SYDClientToDaemonConnection_registerForDaemonDidWakeNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained daemonDidWake];
}

- (void)daemonDidWake
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)setHasPerformedAppLaunchSyncForStoreIdentifier:(id)a3
{
  v8 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  v5 = sAppLaunchSyncStoreIdentifiers;
  if (!sAppLaunchSyncStoreIdentifiers)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = sAppLaunchSyncStoreIdentifiers;
    sAppLaunchSyncStoreIdentifiers = v6;

    v5 = sAppLaunchSyncStoreIdentifiers;
  }

  [v5 addObject:v8];
  objc_sync_exit(v4);
}

+ (BOOL)hasPerformedAppLaunchSyncForStoreIdentifier:(id)a3
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v6 = [sAppLaunchSyncStoreIdentifiers containsObject:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)logFaultIfNecessaryForError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [v4 domain];
    v6 = [v5 isEqualToString:@"SyncedDefaults"];

    if (v6)
    {
      v7 = [v10 code];
      if (v7 <= 5554)
      {
        if (v7 == 2222)
        {
          [(SYDClientToDaemonConnection *)self ___NSUbiquitousKeyValueStore_isnt_sure_exactly_what_you_did_but_it_was_invalid___:v10];
        }

        else if (v7 == 3333 && ![(SYDClientToDaemonConnection *)self didLogFaultForEntitlements])
        {
          [(SYDClientToDaemonConnection *)self setDidLogFaultForEntitlements:1];
          [(SYDClientToDaemonConnection *)self ___You_are_not_entitled_for_NSUbiquitousKeyValueStore];
        }
      }

      else
      {
        switch(v7)
        {
          case 5555:
            [(SYDClientToDaemonConnection *)self ___You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore];
            break;
          case 6666:
            [(SYDClientToDaemonConnection *)self ___You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore];
            break;
          case 101010:
            [(SYDClientToDaemonConnection *)self ___For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist];
            break;
        }
      }
    }

    else
    {
      v8 = [v10 domain];
      v9 = [v8 isEqualToString:*MEMORY[0x1E696A250]];

      if (v9 && [v10 code] == 4099)
      {
        [(SYDClientToDaemonConnection *)self ___You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again];
      }
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)___You_are_not_entitled_for_NSUbiquitousKeyValueStore___
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__SYDClientToDaemonConnection____You_are_not_entitled_for_NSUbiquitousKeyValueStore_____block_invoke;
  block[3] = &unk_1E831A5D8;
  block[4] = self;
  if (___You_are_not_entitled_for_NSUbiquitousKeyValueStore____onceToken != -1)
  {
    dispatch_once(&___You_are_not_entitled_for_NSUbiquitousKeyValueStore____onceToken, block);
  }
}

void __87__SYDClientToDaemonConnection____You_are_not_entitled_for_NSUbiquitousKeyValueStore_____block_invoke(uint64_t a1)
{
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __87__SYDClientToDaemonConnection____You_are_not_entitled_for_NSUbiquitousKeyValueStore_____block_invoke_cold_1(a1);
  }
}

- (void)___We_looked_everywhere_but_we_cant_find_your_store_identifier___
{
  if (___We_looked_everywhere_but_we_cant_find_your_store_identifier____onceToken != -1)
  {
    [SYDClientToDaemonConnection ___We_looked_everywhere_but_we_cant_find_your_store_identifier___];
  }
}

void __96__SYDClientToDaemonConnection____We_looked_everywhere_but_we_cant_find_your_store_identifier_____block_invoke()
{
  v0 = SYDGetConnectionLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __96__SYDClientToDaemonConnection____We_looked_everywhere_but_we_cant_find_your_store_identifier_____block_invoke_cold_1();
  }
}

- (void)___Your_store_identifier_is_empty___
{
  if (___Your_store_identifier_is_empty____onceToken != -1)
  {
    [SYDClientToDaemonConnection ___Your_store_identifier_is_empty___];
  }
}

void __67__SYDClientToDaemonConnection____Your_store_identifier_is_empty_____block_invoke()
{
  v0 = SYDGetConnectionLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __67__SYDClientToDaemonConnection____Your_store_identifier_is_empty_____block_invoke_cold_1();
  }
}

- (void)___You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore___
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__SYDClientToDaemonConnection____You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore_____block_invoke;
  block[3] = &unk_1E831A5D8;
  block[4] = self;
  if (___You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore____onceToken != -1)
  {
    dispatch_once(&___You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore____onceToken, block);
  }
}

void __92__SYDClientToDaemonConnection____You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore_____block_invoke(uint64_t a1)
{
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __92__SYDClientToDaemonConnection____You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore_____block_invoke_cold_1(a1);
  }
}

- (void)___For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist___
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__SYDClientToDaemonConnection____For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist_____block_invoke;
  block[3] = &unk_1E831A5D8;
  block[4] = self;
  if (___For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist____onceToken != -1)
  {
    dispatch_once(&___For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist____onceToken, block);
  }
}

void __100__SYDClientToDaemonConnection____For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist_____block_invoke(uint64_t a1)
{
  has_internal_content = os_variant_has_internal_content();
  v3 = SYDGetConnectionLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
  if (has_internal_content)
  {
    if (v4)
    {
      __100__SYDClientToDaemonConnection____For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist_____block_invoke_cold_2(a1);
    }
  }

  else if (v4)
  {
    __100__SYDClientToDaemonConnection____For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist_____block_invoke_cold_1(a1);
  }
}

- (void)___NSUbiquitousKeyValueStore_isnt_sure_exactly_what_you_did_but_it_was_invalid___:(id)a3
{
  v3 = a3;
  v4 = SYDGetConnectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [SYDClientToDaemonConnection ___NSUbiquitousKeyValueStore_isnt_sure_exactly_what_you_did_but_it_was_invalid___:];
  }
}

- (void)___You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again___
{
  if (___You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again____onceToken != -1)
  {
    [SYDClientToDaemonConnection ___You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again___];
  }
}

void __113__SYDClientToDaemonConnection____You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again_____block_invoke()
{
  v0 = SYDGetConnectionLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __113__SYDClientToDaemonConnection____You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again_____block_invoke_cold_1();
  }
}

- (void)___You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore___
{
  if (___You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore____onceToken != -1)
  {
    [SYDClientToDaemonConnection ___You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore___];
  }
}

void __95__SYDClientToDaemonConnection____You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore_____block_invoke()
{
  v0 = SYDGetConnectionLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __95__SYDClientToDaemonConnection____You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore_____block_invoke_cold_1();
  }
}

- (void)___Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore___:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__SYDClientToDaemonConnection____Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore______block_invoke;
  block[3] = &unk_1E831A5D8;
  v7 = v3;
  v4 = ___Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore_____onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&___Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore_____onceToken, block);
  }
}

void __94__SYDClientToDaemonConnection____Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore______block_invoke(uint64_t a1)
{
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __94__SYDClientToDaemonConnection____Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore______block_invoke_cold_1(a1);
  }
}

- (void)storeDidChangeWithStoreID:(id)a3 changeDictionary:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1C8626000, "kvs/store-did-change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = [(SYDClientToDaemonConnection *)self storeConfiguration];
  v10 = [v9 storeID];
  v11 = [v10 isEqual:v6];

  if (v11)
  {
    v12 = SYDGetConnectionLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(SYDClientToDaemonConnection *)self storeIdentifier];
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&dword_1C8626000, v12, OS_LOG_TYPE_INFO, "Received storeDidChange for store <(%@)>", buf, 0xCu);
    }

    v14 = [(SYDClientToDaemonConnection *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v14 connectionStoreWillChange:self];
    }

    if ([(SYDClientToDaemonConnection *)self isSyncingWithCloud])
    {
      v15 = SYDGetConnectionLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [SYDClientToDaemonConnection storeDidChangeWithStoreID:changeDictionary:];
      }
    }

    else
    {
      v17 = [(SYDClientToDaemonConnection *)self queue];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __74__SYDClientToDaemonConnection_storeDidChangeWithStoreID_changeDictionary___block_invoke;
      v19[3] = &unk_1E831A6A0;
      v19[4] = self;
      v20 = v7;
      dispatch_async(v17, v19);
    }
  }

  else
  {
    v14 = SYDGetConnectionLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = [(SYDClientToDaemonConnection *)self storeConfiguration];
      [(SYDClientToDaemonConnection *)v16 storeDidChangeWithStoreID:v6 changeDictionary:buf, v14];
    }
  }

  os_activity_scope_leave(&state);
  v18 = *MEMORY[0x1E69E9840];
}

+ (void)processAccountChangesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/process-account-changes", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = SYDGetConnectionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[SYDClientToDaemonConnection processAccountChangesWithCompletionHandler:];
  }

  v7 = [a1 newXPCConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke;
  v15[3] = &unk_1E831A920;
  v8 = v4;
  v16 = v8;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v15];
  objc_initWeak(&location, v7);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_243;
  v11[3] = &unk_1E831AA80;
  objc_copyWeak(&v13, &location);
  v10 = v8;
  v12 = v10;
  [v9 processAccountChangesWithCompletionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  os_activity_scope_leave(&state);
}

void __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SYDGetConnectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_243(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = SYDGetConnectionLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_243_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_243_cold_2();
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  [WeakRetained setInvalidationHandler:0];
  [WeakRetained setInterruptionHandler:0];
  [WeakRetained invalidate];
}

- (void)exit:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/exit", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = SYDGetConnectionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C8626000, v6, OS_LOG_TYPE_INFO, "Telling daemon to exit", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__SYDClientToDaemonConnection_exit___block_invoke;
  v10[3] = &unk_1E831A920;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__SYDClientToDaemonConnection_exit___block_invoke_2;
  v8[3] = &unk_1E831AAA8;
  v7 = v11;
  v9 = v7;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:0 errorHandler:v10 daemonHandler:v8];

  os_activity_scope_leave(&state);
}

uint64_t __36__SYDClientToDaemonConnection_exit___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 exit];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)postFakeAccountChangeNotificationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/post-fake-account-change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = SYDGetConnectionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C8626000, v6, OS_LOG_TYPE_INFO, "Telling daemon to post fake account change notification", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__SYDClientToDaemonConnection_postFakeAccountChangeNotificationWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E831A920;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__SYDClientToDaemonConnection_postFakeAccountChangeNotificationWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E831AAA8;
  v7 = v11;
  v9 = v7;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:0 errorHandler:v10 daemonHandler:v8];

  os_activity_scope_leave(&state);
}

- (void)postFakeSyncManagerChangeNotificationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1C8626000, "kvs/post-fake-sync-manager-change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = SYDGetConnectionLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C8626000, v6, OS_LOG_TYPE_INFO, "Telling daemon to post fake sync manager change notification", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__SYDClientToDaemonConnection_postFakeSyncManagerChangeNotificationWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E831A920;
  v11 = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__SYDClientToDaemonConnection_postFakeSyncManagerChangeNotificationWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E831A8F8;
  v8[4] = self;
  v7 = v11;
  v9 = v7;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:0 errorHandler:v10 daemonHandler:v8];

  os_activity_scope_leave(&state);
}

void __90__SYDClientToDaemonConnection_postFakeSyncManagerChangeNotificationWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeConfiguration];
  [v4 postFakeSyncManagerChangeNotificationForStoreWithConfiguration:v5 completionHandler:*(a1 + 40)];
}

- (void)setFakeError:(id)a3 forNextCloudKitRequestOfClassName:(id)a4 inStoreWithConfiguration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_1C8626000, "kvs/set-fake-cloudkit-error", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v12 = SYDGetConnectionLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C8626000, v12, OS_LOG_TYPE_INFO, "Telling daemon to set fake CloudKit request error", buf, 2u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103__SYDClientToDaemonConnection_setFakeError_forNextCloudKitRequestOfClassName_inStoreWithConfiguration___block_invoke_246;
  v16[3] = &unk_1E831AAD0;
  v13 = v8;
  v17 = v13;
  v14 = v9;
  v18 = v14;
  v15 = v10;
  v19 = v15;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:&__block_literal_global_245 daemonHandler:v16];

  os_activity_scope_leave(&state);
}

void __103__SYDClientToDaemonConnection_setFakeError_forNextCloudKitRequestOfClassName_inStoreWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __103__SYDClientToDaemonConnection_setFakeError_forNextCloudKitRequestOfClassName_inStoreWithConfiguration___block_invoke_cold_1();
  }
}

- (id)personaUniqueString
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SYDClientToDaemonConnection_personaUniqueString__block_invoke_249;
  v4[3] = &unk_1E831AB20;
  v4[4] = &v5;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:&__block_literal_global_248 daemonHandler:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __50__SYDClientToDaemonConnection_personaUniqueString__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__SYDClientToDaemonConnection_personaUniqueString__block_invoke_cold_1();
  }
}

uint64_t __50__SYDClientToDaemonConnection_personaUniqueString__block_invoke_249(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__SYDClientToDaemonConnection_personaUniqueString__block_invoke_2;
  v3[3] = &unk_1E831AAF8;
  v3[4] = *(a1 + 32);
  return [a2 personaUniqueStringWithReply:v3];
}

- (BOOL)isUIFrameworkLinkedInDaemon
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SYDClientToDaemonConnection_isUIFrameworkLinkedInDaemon__block_invoke_253;
  v4[3] = &unk_1E831AB20;
  v4[4] = &v5;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:&__block_literal_global_252 daemonHandler:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __58__SYDClientToDaemonConnection_isUIFrameworkLinkedInDaemon__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __58__SYDClientToDaemonConnection_isUIFrameworkLinkedInDaemon__block_invoke_cold_1();
  }
}

uint64_t __58__SYDClientToDaemonConnection_isUIFrameworkLinkedInDaemon__block_invoke_253(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__SYDClientToDaemonConnection_isUIFrameworkLinkedInDaemon__block_invoke_2;
  v3[3] = &unk_1E831A990;
  v3[4] = *(a1 + 32);
  return [a2 isUIFrameworkLinkedInDaemonWithReply:v3];
}

- (id)containerIDFromDaemonWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SYDClientToDaemonConnection_containerIDFromDaemonWithError___block_invoke;
  v7[3] = &unk_1E831A600;
  v7[4] = &v14;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SYDClientToDaemonConnection_containerIDFromDaemonWithError___block_invoke_254;
  v6[3] = &unk_1E831A9B8;
  v6[4] = self;
  v6[5] = &v8;
  [(SYDClientToDaemonConnection *)self daemonWithOptions:1 errorHandler:v7 daemonHandler:v6];
  if (a3)
  {
    *a3 = v15[5];
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v4;
}

void __62__SYDClientToDaemonConnection_containerIDFromDaemonWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SYDGetConnectionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__SYDClientToDaemonConnection_containerIDFromDaemonWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __62__SYDClientToDaemonConnection_containerIDFromDaemonWithError___block_invoke_254(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeConfiguration];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SYDClientToDaemonConnection_containerIDFromDaemonWithError___block_invoke_2;
  v6[3] = &unk_1E831AB48;
  v6[4] = *(a1 + 40);
  [v4 containerIDWithConfiguration:v5 reply:v6];
}

+ (void)removeUnitTestSyncManagers
{
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C8626000, v3, OS_LOG_TYPE_INFO, "Removing unit test sync managers", v6, 2u);
  }

  v4 = [a1 newXPCConnection];
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_257];
  [v5 removeUnitTestSyncManagersWithReply:&__block_literal_global_260];
}

void __57__SYDClientToDaemonConnection_removeUnitTestSyncManagers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__SYDClientToDaemonConnection_allStoreIdentifiersWithError___block_invoke_cold_1();
  }
}

void __57__SYDClientToDaemonConnection_removeUnitTestSyncManagers__block_invoke_258()
{
  v0 = SYDGetConnectionLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __57__SYDClientToDaemonConnection_removeUnitTestSyncManagers__block_invoke_258_cold_1();
  }
}

void __44__SYDClientToDaemonConnection_xpcConnection__block_invoke()
{
  v0 = SYDGetConnectionLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C8626000, v0, OS_LOG_TYPE_INFO, "XPC connection was interrupted", v1, 2u);
  }
}

void __44__SYDClientToDaemonConnection_xpcConnection__block_invoke_346(uint64_t a1)
{
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C8626000, v2, OS_LOG_TYPE_INFO, "XPC connection was invalidated", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    [v5 setXpcConnection:0];
    objc_sync_exit(v5);
  }
}

- (void)daemonWithOptions:(int64_t)a3 errorHandler:(id)a4 daemonHandler:(id)a5
{
  v8 = a5;
  v11 = a4;
  v9 = [(SYDClientToDaemonConnection *)self xpcConnection];
  v10 = [v9 _queue];
  dispatch_assert_queue_not_V2(v10);

  [(SYDClientToDaemonConnection *)self _daemonWithOptions:a3 retries:1 errorHandler:v11 daemonHandler:v8];
}

- (void)_daemonWithOptions:(int64_t)a3 retries:(unint64_t)a4 errorHandler:(id)a5 daemonHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __85__SYDClientToDaemonConnection__daemonWithOptions_retries_errorHandler_daemonHandler___block_invoke;
  v30[3] = &__block_descriptor_40_e17_B16__0__NSError_8l;
  v30[4] = a4;
  v12 = MEMORY[0x1CCA79010](v30);
  objc_initWeak(&location, self);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __85__SYDClientToDaemonConnection__daemonWithOptions_retries_errorHandler_daemonHandler___block_invoke_2;
  v24 = &unk_1E831ABB8;
  objc_copyWeak(v28, &location);
  v13 = v12;
  v25 = v13;
  v28[1] = a3;
  v28[2] = a4;
  v14 = v10;
  v26 = v14;
  v15 = v11;
  v27 = v15;
  v16 = MEMORY[0x1CCA79010](&v21);
  v17 = objc_autoreleasePoolPush();
  v18 = [(SYDClientToDaemonConnection *)self xpcConnection:v21];
  v19 = v18;
  if (a3)
  {
    [v18 synchronousRemoteObjectProxyWithErrorHandler:v16];
  }

  else
  {
    [v18 remoteObjectProxyWithErrorHandler:v16];
  }
  v20 = ;
  if (v15)
  {
    (*(v15 + 2))(v15, v20);
  }

  objc_autoreleasePoolPop(v17);
  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
}

BOOL __85__SYDClientToDaemonConnection__daemonWithOptions_retries_errorHandler_daemonHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v6 = [v4 code] == 4097;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __85__SYDClientToDaemonConnection__daemonWithOptions_retries_errorHandler_daemonHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ((*(*(a1 + 32) + 16))())
  {
    v5 = SYDGetConnectionLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C8626000, v5, OS_LOG_TYPE_INFO, "Retrying XPC message on interruption", v7, 2u);
    }

    [WeakRetained _daemonWithOptions:*(a1 + 64) retries:*(a1 + 72) - 1 errorHandler:*(a1 + 40) daemonHandler:*(a1 + 48)];
  }

  else if (*(a1 + 40))
  {
    v6 = SYDGetConnectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __85__SYDClientToDaemonConnection__daemonWithOptions_retries_errorHandler_daemonHandler___block_invoke_2_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)initWithStoreConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"SYDClientToDaemonConnection.m" lineNumber:100 description:{@"Must specify a store configuration when initializing %@", v5}];
}

void __60__SYDClientToDaemonConnection_allStoreIdentifiersWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Error obtaining synchronous remote object proxy to get all store identifiers: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setObject:forKey:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(v1, v2, v3, 7.2226e-34);
  OUTLINED_FUNCTION_10(&dword_1C8626000, "Not setting identical nil value for key <(%{private, mask.hash}@)> in store <(%@)>", v4, v5);
}

- (void)setObject:forKey:error:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(v1, v2, v3, 7.2226e-34);
  OUTLINED_FUNCTION_10(&dword_1C8626000, "Not setting identical object for key <(%{private, mask.hash}@)> in store <(%@)>", v4, v5);
}

- (void)setObject:(uint64_t)a1 forKey:(uint64_t)a2 error:.cold.3(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_13();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setObject:forKey:error:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(v1, v2, v3, 7.2226e-34);
  OUTLINED_FUNCTION_10(&dword_1C8626000, "Did set object for key <(%{private, mask.hash}@)> in store <(%@)>", v4, v5);
}

void __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_9(a1 a2)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void __54__SYDClientToDaemonConnection_setObject_forKey_error___block_invoke_cold_2(uint64_t *a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_9(a1 a2)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectForKey:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(v1, v2, v3, 7.2226e-34);
  OUTLINED_FUNCTION_10(&dword_1C8626000, "Not removing already-nil object for key <(%{private, mask.hash}@)> from store <(%@)>", v4, v5);
}

- (void)removeObjectForKey:error:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(v1, v2, v3, 7.2226e-34);
  OUTLINED_FUNCTION_10(&dword_1C8626000, "Did remove object for key <(%{private, mask.hash}@)> in store <(%@)>", v4, v5);
}

void __56__SYDClientToDaemonConnection_removeObjectForKey_error___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_9(a1 a2)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)objectForKey:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(v1, v2, v3, 7.2226e-34);
  OUTLINED_FUNCTION_10(&dword_1C8626000, "Getting object for key <(%{private, mask.hash}@)> in store <(%@)>", v4, v5);
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_9(a1 a2)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void __50__SYDClientToDaemonConnection_objectForKey_error___block_invoke_2_cold_2(uint64_t *a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_9(a1 a2)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dictionaryRepresentationWithError:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1C8626000, log, OS_LOG_TYPE_DEBUG, "Getting dictionary representation for store <(%@)>", buf, 0xCu);
}

- (void)dictionaryRepresentationWithError:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1C8626000, log, OS_LOG_TYPE_DEBUG, "Caching dictionary representation for store <(%@)>", buf, 0xCu);
}

- (void)dictionaryRepresentationWithError:(void *)a1 .cold.3(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a1 storeIdentifier];
  v5 = [a1 cachedObjects];
  v7 = 138412803;
  v8 = v4;
  v9 = 2160;
  v10 = 1752392040;
  v11 = 2117;
  v12 = v5;
  _os_log_debug_impl(&dword_1C8626000, a2, OS_LOG_TYPE_DEBUG, "Returning cached dictionary representation for store <(%@)>: %{sensitive, mask.hash}@", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setChangeToken:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setChangeToken:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v3, v4, "Error saving change token to daemon: %@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setChangeToken:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__SYDClientToDaemonConnection__synchronize___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__SYDClientToDaemonConnection__synchronize___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__SYDClientToDaemonConnection__synchronize___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_17(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__SYDClientToDaemonConnection_processChangeDictionary___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E696A9D8]];
  [*(a1 + 48) count];
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void __68__SYDClientToDaemonConnection_synchronizationWithCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained storeIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_15();
  v9 = a2;
  _os_log_error_impl(&dword_1C8626000, a3, OS_LOG_TYPE_ERROR, "Error synchronizing with cloud for store <(%@)>: %@", v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Error obtaining remote object proxy for syncing multiple stores: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_192_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Error synchronizing multiple stores with cloud: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __105__SYDClientToDaemonConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_11(a1) componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8(&dword_1C8626000, v3, v4, "BUG IN CLIENT OF KVS: Tried to sync multiple stores, but not entitled for all of them: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __79__SYDClientToDaemonConnection_isCloudSyncUserDefaultEnabledForStoreIdentifier___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Error obtaining synchronous remote object proxy to check cloud sync enablement: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)setCloudSyncUserDefaultEnabled:storeIdentifier:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)setCloudSyncUserDefaultEnabled:storeIdentifier:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __78__SYDClientToDaemonConnection_setCloudSyncUserDefaultEnabled_storeIdentifier___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Error obtaining synchronous remote object proxy to set cloud sync enablement: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__SYDClientToDaemonConnection_newXPCConnection__block_invoke_210_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Error getting proxy to register: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__SYDClientToDaemonConnection_registerForSynchronizedDefaults__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Error registering for change notifications: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __75__SYDClientToDaemonConnection_performOpportunisticAppLaunchSyncIfNecessary__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__SYDClientToDaemonConnection_performOpportunisticAppLaunchSyncIfNecessary__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __87__SYDClientToDaemonConnection____You_are_not_entitled_for_NSUbiquitousKeyValueStore_____block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_11(a1) storeIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8(&dword_1C8626000, v3, v4, "BUG IN CLIENT OF KVS: Tried to access NSUbiquitousKeyValueStore '%@' without the proper entitlements. If your process is not entitled to access this store, then any attempts to get data will return nil, and any attempts to set data will be ignored. Please add the proper entitlements to access this store, or stop trying to access it in an unentitled process.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __96__SYDClientToDaemonConnection____We_looked_everywhere_but_we_cant_find_your_store_identifier_____block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __67__SYDClientToDaemonConnection____Your_store_identifier_is_empty_____block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __92__SYDClientToDaemonConnection____You_are_about_to_lose_data_in_NSUbiquitousKeyValueStore_____block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_11(a1) storeIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8(&dword_1C8626000, v3, v4, "BUG IN CLIENT OF KVS: Tried to access encrypted store '%@' before first unlock. When this fault occurs, NSUbiquitousKeyValueStore is about to return a nil value for any key you just asked for, even if there’s data in the store for that key. Depending on what might be done with that return value, this could result in data loss.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __100__SYDClientToDaemonConnection____For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist_____block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_11(a1) storeIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8(&dword_1C8626000, v3, v4, "BUG IN KVS: Tried to access store that is unknown to the system (%{public}@). Please submit a bug report with a sysdiagnose.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __100__SYDClientToDaemonConnection____For_some_reason_NSUbiquitousKeyValueStore_thinks_you_dont_exist_____block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_11(a1) storeIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8(&dword_1C8626000, v3, v4, "BUG IN KVS: Tried to access store that is unknown to the system (%{public}@). Please file a bug with a sysdiagnose on NSUbiquitousKeyValueStore.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)___NSUbiquitousKeyValueStore_isnt_sure_exactly_what_you_did_but_it_was_invalid___:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __113__SYDClientToDaemonConnection____You_think_you_can_just_XPC_into_any_process_all_willy_nilly_well_think_again_____block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __95__SYDClientToDaemonConnection____You_exceeded_the_quota_limit_for_NSUbiquitousKeyValueStore_____block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __94__SYDClientToDaemonConnection____Tried_to_set_invalid_object_in_NSUbiquitousKeyValueStore______block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_12();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)storeDidChangeWithStoreID:(uint8_t *)buf changeDictionary:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C8626000, log, OS_LOG_TYPE_DEBUG, "Received storeDidChange for store that is not our store: self.configuration=%@ configuration=%@", buf, 0x16u);
}

- (void)storeDidChangeWithStoreID:changeDictionary:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)processAccountChangesWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Error obtaining asynchronous remote object proxy to process account changes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_243_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Failed to tell daemon to process account changes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __74__SYDClientToDaemonConnection_processAccountChangesWithCompletionHandler___block_invoke_243_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __103__SYDClientToDaemonConnection_setFakeError_forNextCloudKitRequestOfClassName_inStoreWithConfiguration___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Failed to set fake CloudKit request error with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __50__SYDClientToDaemonConnection_personaUniqueString__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Error obtaining synchronous remote object proxy to fetch persona unique string: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__SYDClientToDaemonConnection_isUIFrameworkLinkedInDaemon__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Error obtaining synchronous remote object proxy to fetch if a UI framework is linked: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__SYDClientToDaemonConnection_containerIDFromDaemonWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_1C8626000, v0, v1, "Error obtaining synchronous remote object proxy to fetch value for containerID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __57__SYDClientToDaemonConnection_removeUnitTestSyncManagers__block_invoke_258_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __85__SYDClientToDaemonConnection__daemonWithOptions_retries_errorHandler_daemonHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 64);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

@end