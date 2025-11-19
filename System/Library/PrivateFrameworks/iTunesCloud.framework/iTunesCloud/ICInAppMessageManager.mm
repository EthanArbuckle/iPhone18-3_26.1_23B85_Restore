@interface ICInAppMessageManager
+ (ICInAppMessageManager)sharedManager;
- (BOOL)_privacyAcknowledgementRequired;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ICInAppMessageManager)initWithMessageStore:(id)a3 identityStore:(id)a4;
- (id)_init;
- (id)_resourceCacheDirectoryPath;
- (id)_storeRequestContext;
- (id)_supportedInterfaceForXPCConnection;
- (id)_xpcClientConnection;
- (void)_addConnection:(id)a3;
- (void)_addMessageEntry:(id)a3 completion:(id)a4;
- (void)_checkForMessageResourcesNeedingDownloadForcingIfNecessary:(BOOL)a3;
- (void)_downloadResourcesForMessageWithIdentifier:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5;
- (void)_handleICInAppMessagesDidChangeDistributedNotification:(id)a3;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3;
- (void)_loadConfigurationWithCompletion:(id)a3;
- (void)_performCacheConsistencyCheck;
- (void)_performSyncRetryIfPending:(BOOL)a3;
- (void)_performSyncWithCompletion:(id)a3;
- (void)_processSyncResponse:(id)a3 completion:(id)a4;
- (void)_removeAllMessageEntriesForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)_removeConnection:(id)a3;
- (void)_removeMessageEntryWithIdentifier:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5;
- (void)_schedulePeriodicUpdate;
- (void)_updateShouldDownloadResources:(BOOL)a3 onMessageWithIdentifier:(id)a4 bundleIdentifier:(id)a5 completion:(id)a6;
- (void)addMessageEntry:(id)a3 completion:(id)a4;
- (void)addMessageEntryFromAMSDialogRequest:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5;
- (void)allMessageEntriesWithCompletion:(id)a3;
- (void)clearCachedResourcesForMessageWithIdentifier:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5;
- (void)downloadResourcesForMessageWithIdentifier:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
- (void)flushEventsWithCompletion:(id)a3;
- (void)getAllMetadataForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)getAllMetadataForBundleIdentifiers:(id)a3 completion:(id)a4;
- (void)getGlobalPropertyForKey:(id)a3 completion:(id)a4;
- (void)getMetadataForMessageIdentifier:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5;
- (void)getPropertyForKey:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5;
- (void)messageEntriesForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)messageEntriesForBundleIdentifiers:(id)a3 completion:(id)a4;
- (void)messageEntryWithIdentifier:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5;
- (void)removeAllMessageEntriesForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)removeApplicationBadgeForBundleIdentifier:(id)a3 fromPresentedMessageEntry:(id)a4 completion:(id)a5;
- (void)removeMessageEntryWithIdentifier:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5;
- (void)removeMetadataForMessageIdentifier:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5;
- (void)reportEventForMessageIdentifier:(id)a3 withParams:(id)a4 flushImmediately:(BOOL)a5 completion:(id)a6;
- (void)resetMessagesWithCompletion:(id)a3;
- (void)setGlobalProperty:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setProperty:(id)a3 forKey:(id)a4 bundleIdentifier:(id)a5 completion:(id)a6;
- (void)startSystemService;
- (void)stopSystemService;
- (void)syncMessagesWithCompletion:(id)a3;
- (void)updateMessageEntry:(id)a3 completion:(id)a4;
- (void)updateMetadata:(id)a3 messageIdentifier:(id)a4 bundleIdentifier:(id)a5 completion:(id)a6;
@end

@implementation ICInAppMessageManager

+ (ICInAppMessageManager)sharedManager
{
  if (sharedManager_sOnceToken != -1)
  {
    dispatch_once(&sharedManager_sOnceToken, &__block_literal_global_2689);
  }

  v3 = sharedManager_sSharedManager;

  return v3;
}

uint64_t __38__ICInAppMessageManager_sharedManager__block_invoke()
{
  sharedManager_sSharedManager = [[ICInAppMessageManager alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v3 = objc_alloc_init(ICInAppMessageStore);
  v4 = +[ICUserIdentityStore defaultIdentityStore];
  v5 = [(ICInAppMessageManager *)self initWithMessageStore:v3 identityStore:v4];

  return v5;
}

- (id)_xpcClientConnection
{
  xpcClientConnection = self->_xpcClientConnection;
  if (!xpcClientConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.itunescloud.in-app-message-service" options:0];
    v5 = self->_xpcClientConnection;
    self->_xpcClientConnection = v4;

    [(NSXPCConnection *)self->_xpcClientConnection setExportedObject:self];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2C97F18];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    [v6 setClasses:v9 forSelector:sel_allMessageEntriesWithCompletion_ argumentIndex:0 ofReply:1];

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    [v6 setClasses:v12 forSelector:sel_messageEntriesForBundleIdentifiers_completion_ argumentIndex:0 ofReply:1];

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v6 setClasses:v13 forSelector:sel_addMessageEntry_completion_ argumentIndex:0 ofReply:0];

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
    [v6 setClasses:v17 forSelector:sel_getAllMetadataForBundleIdentifiers_completion_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)self->_xpcClientConnection setRemoteObjectInterface:v6];
    [(NSXPCConnection *)self->_xpcClientConnection setInterruptionHandler:&__block_literal_global_361];
    v18 = self->_xpcClientConnection;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __45__ICInAppMessageManager__xpcClientConnection__block_invoke_362;
    v20[3] = &unk_1E7BFA300;
    v20[4] = self;
    [(NSXPCConnection *)v18 setInvalidationHandler:v20];
    [(NSXPCConnection *)self->_xpcClientConnection resume];

    xpcClientConnection = self->_xpcClientConnection;
  }

  return xpcClientConnection;
}

- (BOOL)_privacyAcknowledgementRequired
{
  v23[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  v23[0] = @"Music";
  v23[1] = @"TV";
  v23[2] = @"AppStore";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v4 = [v2 arrayWithArray:v3];

  v5 = +[ICDeviceInfo currentDeviceInfo];
  v6 = [v5 isMac];

  if ((v6 & 1) == 0)
  {
    v22[0] = @"FitnessPlus";
    v22[1] = @"ImproveFitnessPlus";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    [v4 addObjectsFromArray:v7];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = +[ICPrivacyInfo sharedPrivacyInfo];
        LODWORD(v13) = [v14 privacyAcknowledgementRequiredForIdentifier:v13];

        if (!v13)
        {
          v15 = 0;
          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_13:

  return v15;
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  v4 = a3;
  if ([v4 isRemoteServerLikelyReachable] && ((objc_msgSend(v4, "networkType") - 1) > 0x1F2 || objc_msgSend(v4, "isCurrentNetworkLinkHighQuality")))
  {
    [(ICInAppMessageManager *)self _checkForMessageResourcesNeedingDownloadForcingIfNecessary:0];
  }
}

- (void)_removeConnection:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__ICInAppMessageManager__removeConnection___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (void)_addConnection:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__ICInAppMessageManager__addConnection___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

uint64_t __40__ICInAppMessageManager__addConnection___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    v2 = *(*(a1 + 32) + 96);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (id)_supportedInterfaceForXPCConnection
{
  if (_supportedInterfaceForXPCConnection_onceToken != -1)
  {
    dispatch_once(&_supportedInterfaceForXPCConnection_onceToken, &__block_literal_global_456);
  }

  v3 = _supportedInterfaceForXPCConnection__supportedInterfaceForXPCConnection;

  return v3;
}

uint64_t __60__ICInAppMessageManager__supportedInterfaceForXPCConnection__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2C97F18];
  v1 = _supportedInterfaceForXPCConnection__supportedInterfaceForXPCConnection;
  _supportedInterfaceForXPCConnection__supportedInterfaceForXPCConnection = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  v9 = MSVBundleIDForAuditToken();
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    *&buf[22] = 2114;
    *&buf[24] = v8;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Receiving New incoming connection from %{public}@: %{public}@", buf, 0x20u);
  }

  v11 = [v8 valueForEntitlement:@"com.apple.itunescloud.in-app-message-service"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    [(ICInAppMessageManager *)self _performSyncRetryIfPending:0];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v8);
    v13 = [(ICInAppMessageManager *)self _supportedInterfaceForXPCConnection];
    [v8 setExportedInterface:v13];
    [v8 setExportedObject:self];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __60__ICInAppMessageManager_listener_shouldAcceptNewConnection___block_invoke;
    v21[3] = &unk_1E7BF3E10;
    objc_copyWeak(&v23, buf);
    objc_copyWeak(&v24, &location);
    v14 = v9;
    v22 = v14;
    [v8 setInterruptionHandler:v21];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__ICInAppMessageManager_listener_shouldAcceptNewConnection___block_invoke_454;
    v17[3] = &unk_1E7BF3E10;
    objc_copyWeak(&v19, buf);
    objc_copyWeak(&v20, &location);
    v18 = v14;
    [v8 setInvalidationHandler:v17];
    [(ICInAppMessageManager *)self _addConnection:v8];
    [v8 resume];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);

    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Client process %{public}@ does not have required entitlements - rejecting connection", buf, 0x16u);
    }
  }

  return v12;
}

void __60__ICInAppMessageManager_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543874;
      v7 = WeakRetained;
      v8 = 2114;
      v9 = v5;
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection from %{public}@ interrupted - removing connection %{public}@", &v6, 0x20u);
    }

    if (v3)
    {
      [WeakRetained _removeConnection:v3];
    }
  }
}

void __60__ICInAppMessageManager_listener_shouldAcceptNewConnection___block_invoke_454(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543874;
      v7 = WeakRetained;
      v8 = 2114;
      v9 = v5;
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection from %{public}@ invalidated - removing connection %{public}@", &v6, 0x20u);
    }

    if (v3)
    {
      [WeakRetained _removeConnection:v3];
    }
  }
}

- (void)_performCacheConsistencyCheck
{
  v3 = [ICAsyncBlockOperation alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__ICInAppMessageManager__performCacheConsistencyCheck__block_invoke;
  v5[3] = &unk_1E7BF6C48;
  v5[4] = self;
  v4 = [(ICAsyncBlockOperation *)v3 initWithStartHandler:v5];
  [(ICAsyncBlockOperation *)v4 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.performCacheConsistencyCheck"];
  [(NSOperationQueue *)self->_operationQueue addOperation:v4];
}

void __54__ICInAppMessageManager__performCacheConsistencyCheck__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__ICInAppMessageManager__performCacheConsistencyCheck__block_invoke_2;
  v7[3] = &unk_1E7BF3CD0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 getAllMessageEntriesWithCompletion:v7];
}

void __54__ICInAppMessageManager__performCacheConsistencyCheck__block_invoke_2(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v2, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v53;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v53 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v52 + 1) + 8 * i) applicationMessage];
        v10 = [v9 identifier];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v6);
  }

  v35 = v4;

  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = MEMORY[0x1E695DFF8];
  v14 = [*(a1 + 32) _resourceCacheDirectoryPath];
  v15 = [v13 fileURLWithPath:v14];

  v39 = v12;
  v34 = v15;
  [v12 enumeratorAtURL:v15 includingPropertiesForKeys:0 options:5 errorHandler:0];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v16 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v38 = *v49;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [v39 enumeratorAtURL:*(*(&v48 + 1) + 8 * j) includingPropertiesForKeys:0 options:5 errorHandler:0];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v44 objects:v61 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v45;
          do
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v45 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v44 + 1) + 8 * k);
              v25 = [v24 lastPathComponent];
              if (([v3 containsObject:v25] & 1) == 0)
              {
                [v11 addObject:v24];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v44 objects:v61 count:16];
          }

          while (v21);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v17);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v26 = v11;
  v27 = [v26 countByEnumeratingWithState:&v40 objects:v60 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v41;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v40 + 1) + 8 * m);
        v32 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(a1 + 32);
          *buf = 138543618;
          v57 = v33;
          v58 = 2114;
          v59 = v31;
          _os_log_impl(&dword_1B4491000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Purging orphaned cache directory %{public}@", buf, 0x16u);
        }

        [v39 removeItemAtURL:v31 error:0];
      }

      v28 = [v26 countByEnumeratingWithState:&v40 objects:v60 count:16];
    }

    while (v28);
  }

  [*(a1 + 40) finishWithError:0];
}

- (void)_loadConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[ICURLBagProvider sharedBagProvider];
  v6 = [(ICInAppMessageManager *)self _storeRequestContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__ICInAppMessageManager__loadConfigurationWithCompletion___block_invoke;
  v8[3] = &unk_1E7BF68D8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 getBagForRequestContext:v6 withCompletionHandler:v8];
}

void __58__ICInAppMessageManager__loadConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to load bag for configuration. err=%{public}@", &v14, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [a2 dictionaryForBagKey:@"inAppMessages"];
    if (_NSIsNSDictionary())
    {
      v9 = [[ICInAppMessageConfiguration alloc] initWithDictionary:v8];
      v10 = *(*(a1 + 40) + 16);
    }

    else
    {
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to load configuration from bag", &v14, 0xCu);
      }

      v13 = *(a1 + 40);
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      v10 = *(v13 + 16);
    }

    v10();
  }
}

- (id)_resourceCacheDirectoryPath
{
  v2 = ICDefaultCacheDirectory();
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v2, @"InAppMessages", @"ResourceCache", 0}];
  v4 = [MEMORY[0x1E696AEC0] pathWithComponents:v3];

  return v4;
}

- (void)_downloadResourcesForMessageWithIdentifier:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[ICNetworkConstraints alloc] initWithBundleIdentifier:v9];
  v12 = +[ICEnvironmentMonitor sharedMonitor];
  v13 = [v12 lastKnownNetworkType];

  if ([(ICNetworkConstraints *)v11 shouldAllowDataForNetworkType:v13])
  {
    messageStore = self->_messageStore;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke;
    v17[3] = &unk_1E7BF39D8;
    v17[4] = self;
    v18 = v9;
    v19 = v8;
    v20 = v10;
    [(ICInAppMessageStore *)messageStore getMessageEntryWithIdentifier:v19 bundleIdentifier:v18 completion:v17];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v22 = self;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v8;
      v27 = 1024;
      v28 = v13;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping downloads for message %{public}@:%{public}@ as its not allowed on the current network type (%d)", buf, 0x26u);
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7004 userInfo:0];
    (*(v10 + 2))(v10, v16);
  }
}

void __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138544130;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to fetch message %{public}@:%{public}@ to set the download flag on. err=%{public}@", buf, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_425;
    v15[3] = &unk_1E7BF3DE8;
    v12 = *(a1 + 56);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v20 = v12;
    v15[4] = v13;
    v16 = v14;
    v17 = *(a1 + 48);
    v18 = v5;
    v19 = 0;
    [v11 _loadConfigurationWithCompletion:v15];
  }
}

void __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_425(uint64_t a1, void *a2, void *a3)
{
  v151 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v93 = v5;
  if (!v6)
  {
    v95 = a1;
    v7 = [v5 resourceDomainURL];

    if (!v7)
    {
      v84 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = *(a1 + 32);
        LODWORD(v146) = 138543362;
        *(&v146 + 4) = v85;
        _os_log_impl(&dword_1B4491000, v84, OS_LOG_TYPE_DEFAULT, "%{public}@ base resource url missing from configuration - skipping download", &v146, 0xCu);
      }

      v86 = *(a1 + 72);
      v87 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      (*(v86 + 16))(v86, v87);

      goto LABEL_39;
    }

    *&v146 = 0;
    *(&v146 + 1) = &v146;
    v147 = 0x3032000000;
    v148 = __Block_byref_object_copy__2587;
    v149 = __Block_byref_object_dispose__2588;
    v150 = 0;
    v134[0] = 0;
    v134[1] = v134;
    v134[2] = 0x3032000000;
    v134[3] = __Block_byref_object_copy__2587;
    v134[4] = __Block_byref_object_dispose__2588;
    v135 = [MEMORY[0x1E695DF90] dictionary];
    v8 = [*(a1 + 32) _resourceCacheDirectoryPath];
    v9 = [v8 stringByAppendingPathComponent:*(a1 + 40)];
    v92 = [v9 stringByAppendingPathComponent:*(a1 + 48)];

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v133 = 0;
    [v10 createDirectoryAtPath:v92 withIntermediateDirectories:1 attributes:0 error:&v133];
    v88 = v133;

    group = dispatch_group_create();
    v11 = [*(a1 + 56) applicationMessage];
    LODWORD(v9) = [v11 hasWebArchiveURL];

    if (v9)
    {
      v12 = [*(a1 + 56) cachedLocationForResourceWithIdentifier:@"ICInAppMessageEntryResourceIdentifierWebArchive"];
      v13 = v12 == 0;

      if (v13)
      {
        v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          v16 = *(a1 + 40);
          v17 = *(a1 + 48);
          *buf = 138543874;
          v137 = v15;
          v138 = 2114;
          v139 = v16;
          v140 = 2114;
          v141 = v17;
          _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Downloading web archive for message %{public}@:%{public}@", buf, 0x20u);
        }

        dispatch_group_enter(group);
        v18 = MEMORY[0x1E695DFF8];
        v19 = [*(a1 + 56) applicationMessage];
        v20 = [v19 webArchiveURL];
        v21 = [v93 resourceDomainURL];
        v22 = [v18 URLWithString:v20 relativeToURL:v21];

        v23 = [v22 lastPathComponent];
        v24 = [v92 stringByAppendingPathComponent:v23];

        v25 = [MEMORY[0x1E696AC08] defaultManager];
        [v25 removeItemAtPath:v24 error:0];

        v26 = [ICURLRequest alloc];
        v27 = [*(a1 + 32) _storeRequestContext];
        v28 = [(ICURLRequest *)v26 initWithURL:v22 requestContext:v27];

        v29 = +[ICURLSessionManager defaultSession];
        v30 = [MEMORY[0x1E695DFF8] fileURLWithPath:v24];
        v126[0] = MEMORY[0x1E69E9820];
        v126[1] = 3221225472;
        v126[2] = __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_429;
        v126[3] = &unk_1E7BF3CF8;
        v31 = *(a1 + 32);
        v131 = &v146;
        v126[4] = v31;
        v127 = *(a1 + 56);
        v128 = *(a1 + 64);
        v132 = v134;
        v32 = v24;
        v129 = v32;
        v130 = group;
        [v29 enqueueDownloadRequest:v28 toDestination:v30 withCompletionHandler:v126];
      }
    }

    v33 = [*(a1 + 56) applicationMessage];
    if ([v33 hasTemplateURL])
    {
      v34 = [*(a1 + 56) cachedLocationForResourceWithIdentifier:@"ICInAppMessageEntryResourceIdentifierTemplate"];
      v35 = v34 == 0;

      if (!v35)
      {
LABEL_15:
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v54 = [*(a1 + 56) applicationMessage];
        obj = [v54 contentPages];

        v55 = [obj countByEnumeratingWithState:&v115 objects:v145 count:16];
        if (v55)
        {
          v90 = *v116;
          do
          {
            for (i = 0; i != v55; ++i)
            {
              if (*v116 != v90)
              {
                objc_enumerationMutation(obj);
              }

              v56 = *(*(&v115 + 1) + 8 * i);
              v111 = 0u;
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              v57 = [v56 images];
              v58 = [v57 countByEnumeratingWithState:&v111 objects:v144 count:16];
              if (v58)
              {
                v96 = v57;
                v97 = *v112;
                do
                {
                  for (j = 0; j != v58; ++j)
                  {
                    if (*v112 != v97)
                    {
                      objc_enumerationMutation(v96);
                    }

                    v60 = *(*(&v111 + 1) + 8 * j);
                    if ([v60 hasIdentifier])
                    {
                      if ([v60 hasURL])
                      {
                        v61 = *(v95 + 56);
                        v62 = [v60 identifier];
                        v63 = [v61 cachedLocationForResourceWithIdentifier:v62];
                        LODWORD(v61) = v63 == 0;

                        if (v61)
                        {
                          v64 = os_log_create("com.apple.amp.iTunesCloud", "Default");
                          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                          {
                            v65 = *(v95 + 32);
                            v66 = [v60 identifier];
                            v67 = *(v95 + 40);
                            v68 = *(v95 + 48);
                            *buf = 138544130;
                            v137 = v65;
                            v138 = 2114;
                            v139 = v66;
                            v140 = 2114;
                            v141 = v67;
                            v142 = 2114;
                            v143 = v68;
                            _os_log_impl(&dword_1B4491000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ Downloading image %{public}@ for message %{public}@:%{public}@", buf, 0x2Au);
                          }

                          dispatch_group_enter(group);
                          v69 = MEMORY[0x1E695DFF8];
                          v70 = [v60 uRL];
                          v71 = [v93 resourceDomainURL];
                          v72 = [v69 URLWithString:v70 relativeToURL:v71];

                          v73 = [v72 lastPathComponent];
                          v74 = [v92 stringByAppendingPathComponent:v73];

                          v75 = [MEMORY[0x1E696AC08] defaultManager];
                          [v75 removeItemAtPath:v74 error:0];

                          v76 = [ICURLRequest alloc];
                          v77 = [*(v95 + 32) _storeRequestContext];
                          v78 = [(ICURLRequest *)v76 initWithURL:v72 requestContext:v77];

                          v79 = +[ICURLSessionManager defaultSession];
                          v80 = [MEMORY[0x1E695DFF8] fileURLWithPath:v74];
                          v104[0] = MEMORY[0x1E69E9820];
                          v104[1] = 3221225472;
                          v104[2] = __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_434;
                          v104[3] = &unk_1E7BF3D20;
                          v109 = &v146;
                          v104[4] = *(v95 + 32);
                          v104[5] = v60;
                          v105 = *(v95 + 56);
                          v106 = *(v95 + 64);
                          v110 = v134;
                          v81 = v74;
                          v107 = v81;
                          v108 = group;
                          [v79 enqueueDownloadRequest:v78 toDestination:v80 withCompletionHandler:v104];
                        }
                      }
                    }
                  }

                  v57 = v96;
                  v58 = [v96 countByEnumeratingWithState:&v111 objects:v144 count:16];
                }

                while (v58);
              }
            }

            v55 = [obj countByEnumeratingWithState:&v115 objects:v145 count:16];
          }

          while (v55);
        }

        v82 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_2;
        block[3] = &unk_1E7BF3DC0;
        v83 = *(v95 + 40);
        block[4] = *(v95 + 32);
        v102 = v134;
        v99 = v83;
        v100 = *(v95 + 48);
        v101 = *(v95 + 72);
        v103 = &v146;
        dispatch_group_notify(group, v82, block);

        _Block_object_dispose(v134, 8);
        _Block_object_dispose(&v146, 8);

LABEL_39:
        v6 = 0;
        goto LABEL_40;
      }

      v36 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(a1 + 32);
        v38 = *(a1 + 40);
        v39 = *(a1 + 48);
        *buf = 138543874;
        v137 = v37;
        v138 = 2114;
        v139 = v38;
        v140 = 2114;
        v141 = v39;
        _os_log_impl(&dword_1B4491000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ Downloading template file for message %{public}@:%{public}@", buf, 0x20u);
      }

      dispatch_group_enter(group);
      v40 = MEMORY[0x1E695DFF8];
      v41 = [*(a1 + 56) applicationMessage];
      v42 = [v41 templateURL];
      v43 = [v93 resourceDomainURL];
      v33 = [v40 URLWithString:v42 relativeToURL:v43];

      v44 = [v33 lastPathComponent];
      v45 = [v92 stringByAppendingPathComponent:v44];

      v46 = [MEMORY[0x1E696AC08] defaultManager];
      [v46 removeItemAtPath:v45 error:0];

      v47 = [ICURLRequest alloc];
      v48 = [*(a1 + 32) _storeRequestContext];
      v49 = [(ICURLRequest *)v47 initWithURL:v33 requestContext:v48];

      v50 = +[ICURLSessionManager defaultSession];
      v51 = [MEMORY[0x1E695DFF8] fileURLWithPath:v45];
      v119[0] = MEMORY[0x1E69E9820];
      v119[1] = 3221225472;
      v119[2] = __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_432;
      v119[3] = &unk_1E7BF3CF8;
      v52 = *(a1 + 32);
      v124 = &v146;
      v119[4] = v52;
      v120 = *(a1 + 56);
      v121 = *(a1 + 64);
      v125 = v134;
      v53 = v45;
      v122 = v53;
      v123 = group;
      [v50 enqueueDownloadRequest:v49 toDestination:v51 withCompletionHandler:v119];
    }

    goto LABEL_15;
  }

  (*(*(a1 + 72) + 16))();
LABEL_40:
}

void __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_429(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      *buf = 138543874;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to download web archive for message %{public}@. err=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10 = *(*(a1 + 32) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_430;
    v11[3] = &unk_1E7BFA430;
    v13 = *(a1 + 80);
    v12 = *(a1 + 56);
    dispatch_sync(v10, v11);
    v6 = v12;
  }

  dispatch_group_leave(*(a1 + 64));
}

void __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_432(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      *buf = 138543874;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to download template for message %{public}@. err=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10 = *(*(a1 + 32) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_433;
    v11[3] = &unk_1E7BFA430;
    v13 = *(a1 + 80);
    v12 = *(a1 + 56);
    dispatch_sync(v10, v11);
    v6 = v12;
  }

  dispatch_group_leave(*(a1 + 64));
}

void __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_434(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), a3);
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) identifier];
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *buf = 138544130;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      v22 = 2114;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to download image %{public}@ for message %{public}@. err=%{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v11 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_435;
    block[3] = &unk_1E7BF97E8;
    v17 = *(a1 + 88);
    v12 = *(a1 + 64);
    v13 = *(a1 + 40);
    v15 = v12;
    v16 = v13;
    dispatch_sync(v11, block);
    v6 = v15;
  }

  dispatch_group_leave(*(a1 + 72));
}

void __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(*(*(a1 + 64) + 8) + 40) count];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *buf = 138544130;
    v20 = v3;
    v21 = 1024;
    v22 = v4;
    v23 = 2114;
    v24 = v5;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Downloaded %d resources for message %{public}@:%{public}@", buf, 0x26u);
  }

  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    v7 = [ICAsyncBlockOperation alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_436;
    v15[3] = &unk_1E7BF3D98;
    v14 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v14;
    *(&v12 + 1) = v8;
    v16 = v12;
    v17 = v11;
    v18 = *(a1 + 64);
    v13 = [(ICAsyncBlockOperation *)v7 initWithStartHandler:v15];
    [(ICAsyncBlockOperation *)v13 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.setShouldDownloadResources"];
    [*(*(a1 + 32) + 8) addOperation:v13];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_436(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_2_437;
  v10[3] = &unk_1E7BF3D70;
  v10[4] = v4;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11 = v3;
  v12 = v8;
  v13 = *(a1 + 64);
  v9 = v3;
  [v6 getMessageEntryWithIdentifier:v5 bundleIdentifier:v7 completion:v10];
}

void __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_2_437(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543874;
      v23 = v8;
      v24 = 2114;
      v25 = v5;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to fetch message %{public}@ to update with cached resource locations. err=%{public}@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    v9 = *(*(*(a1 + 56) + 8) + 40);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_438;
    v20[3] = &unk_1E7BF7900;
    v10 = v5;
    v21 = v10;
    [v9 enumerateKeysAndObjectsUsingBlock:v20];
    [v10 setDidCacheRequiredResources:1];
    v11 = *(a1 + 32);
    v12 = *(v11 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_2_440;
    v15[3] = &unk_1E7BF3D48;
    v15[4] = v11;
    v16 = v10;
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    v18 = v13;
    v19 = v14;
    v17 = *(a1 + 40);
    [v12 updateMessageEntry:v16 completion:v15];
  }
}

void __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_2_440(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to update resource cache locations for message %{public}@. err=%{public}@", &v8, 0x20u);
    }
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 48) finishWithError:v3];
  v7 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v7 postNotificationName:@"com.apple.itunescloud.ICInAppMessagesDidChangeDistributedNotification" object:0];
}

void __96__ICInAppMessageManager__downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_435(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 8) + 40);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v1 setObject:v2 forKey:v3];
}

- (void)_checkForMessageResourcesNeedingDownloadForcingIfNecessary:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 || ![(NSOperationQueue *)self->_downloadOperationQueue operationCount])
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = self;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Initiating downloads for messages marked for caching", buf, 0xCu);
    }

    v5 = [ICAsyncBlockOperation alloc];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __84__ICInAppMessageManager__checkForMessageResourcesNeedingDownloadForcingIfNecessary___block_invoke;
    v7[3] = &unk_1E7BF6C48;
    v7[4] = self;
    v6 = [(ICAsyncBlockOperation *)v5 initWithStartHandler:v7];
    [(ICAsyncBlockOperation *)v6 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.downloadMessageResources"];
    [(NSOperationQueue *)self->_downloadOperationQueue addOperation:v6];
  }
}

void __84__ICInAppMessageManager__checkForMessageResourcesNeedingDownloadForcingIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__ICInAppMessageManager__checkForMessageResourcesNeedingDownloadForcingIfNecessary___block_invoke_2;
  v7[3] = &unk_1E7BF3CD0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 getAllMessageEntriesWithCompletion:v7];
}

void __84__ICInAppMessageManager__checkForMessageResourcesNeedingDownloadForcingIfNecessary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v31 = v7;
      v32 = 2114;
      v33 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to load messages to check for downloads. err=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v6 = dispatch_group_create();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          if ([v13 shouldDownloadResources])
          {
            dispatch_group_enter(v6);
            v14 = *(a1 + 32);
            v15 = [v13 applicationMessage];
            v16 = [v15 identifier];
            v17 = [v13 bundleIdentifier];
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __84__ICInAppMessageManager__checkForMessageResourcesNeedingDownloadForcingIfNecessary___block_invoke_419;
            v23[3] = &unk_1E7BF9308;
            v24 = v6;
            [v14 _downloadResourcesForMessageWithIdentifier:v16 bundleIdentifier:v17 completion:v23];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v18 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__ICInAppMessageManager__checkForMessageResourcesNeedingDownloadForcingIfNecessary___block_invoke_2_420;
    block[3] = &unk_1E7BFA300;
    v22 = *(a1 + 40);
    dispatch_group_notify(v6, v18, block);

    v5 = 0;
    v4 = v19;
  }
}

- (void)_updateShouldDownloadResources:(BOOL)a3 onMessageWithIdentifier:(id)a4 bundleIdentifier:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [ICAsyncBlockOperation alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __108__ICInAppMessageManager__updateShouldDownloadResources_onMessageWithIdentifier_bundleIdentifier_completion___block_invoke;
  v18[3] = &unk_1E7BF3A28;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = a3;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = [(ICAsyncBlockOperation *)v13 initWithStartHandler:v18];
  [(ICAsyncBlockOperation *)v17 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.setShouldDownloadResources"];
  [(NSOperationQueue *)self->_operationQueue addOperation:v17];
}

void __108__ICInAppMessageManager__updateShouldDownloadResources_onMessageWithIdentifier_bundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 40);
  v7 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __108__ICInAppMessageManager__updateShouldDownloadResources_onMessageWithIdentifier_bundleIdentifier_completion___block_invoke_2;
  v10[3] = &unk_1E7BF3CA8;
  v10[4] = v4;
  v11 = v7;
  v12 = *(a1 + 40);
  v8 = *(a1 + 56);
  v13 = v3;
  v14 = v8;
  v15 = *(a1 + 64);
  v9 = v3;
  [v6 getMessageEntryWithIdentifier:v5 bundleIdentifier:v11 completion:v10];
}

void __108__ICInAppMessageManager__updateShouldDownloadResources_onMessageWithIdentifier_bundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      *buf = 138544130;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to fetch message %{public}@:%{public}@ to set the download setting on. err=%{public}@", buf, 0x2Au);
    }

    (*(*(a1 + 64) + 16))();
    [*(a1 + 56) finishWithError:v6];
  }

  else
  {
    [v5 setShouldDownloadResources:*(a1 + 72)];
    if ((*(a1 + 72) & 1) == 0)
    {
      [v5 clearCachedResources];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __108__ICInAppMessageManager__updateShouldDownloadResources_onMessageWithIdentifier_bundleIdentifier_completion___block_invoke_415;
    v17[3] = &unk_1E7BF6A70;
    v16 = *(a1 + 32);
    v11 = *(v16 + 40);
    v12 = *(&v16 + 1);
    v13 = *(a1 + 48);
    v20 = *(a1 + 64);
    v14 = *(a1 + 56);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v18 = v16;
    v19 = v15;
    [v11 updateMessageEntry:v5 completion:v17];
  }
}

void __108__ICInAppMessageManager__updateShouldDownloadResources_onMessageWithIdentifier_bundleIdentifier_completion___block_invoke_415(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = 138544130;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to update message %{public}@:%{public}@ with the updated download setting. err=%{public}@", &v8, 0x2Au);
    }
  }

  (*(*(a1 + 64) + 16))();
  [*(a1 + 56) finishWithError:v3];
}

- (void)_performSyncRetryIfPending:(BOOL)a3
{
  v5 = [ICAsyncBlockOperation alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__ICInAppMessageManager__performSyncRetryIfPending___block_invoke;
  v7[3] = &unk_1E7BF3C80;
  v7[4] = self;
  v8 = a3;
  v6 = [(ICAsyncBlockOperation *)v5 initWithStartHandler:v7];
  [(ICAsyncBlockOperation *)v6 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.performSyncRetryIfPending"];
  [(NSOperationQueue *)self->_operationQueue addOperation:v6];
}

void __52__ICInAppMessageManager__performSyncRetryIfPending___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__ICInAppMessageManager__performSyncRetryIfPending___block_invoke_2;
  v7[3] = &unk_1E7BF3C58;
  v9 = *(a1 + 40);
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  [v5 allStorePropertiesWithCompletion:v7];
}

void __52__ICInAppMessageManager__performSyncRetryIfPending___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:@"syncPending"];
  v5 = [v4 BOOLValue];

  v6 = [v3 objectForKey:@"lastSyncAttempt"];

  v7 = [v6 longLongValue];
  if (v5 && ((*(a1 + 48) & 1) != 0 || !v7 || ([MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate], v8 - v7 > 3600.0)))
  {
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Had pending sync - retrying now", buf, 0xCu);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__ICInAppMessageManager__performSyncRetryIfPending___block_invoke_411;
    v13[3] = &unk_1E7BF9308;
    v11 = *(a1 + 32);
    v14 = *(a1 + 40);
    [v11 _performSyncWithCompletion:v13];
  }

  else
  {
    v12 = *(a1 + 40);

    [v12 finishWithError:0];
  }
}

- (void)_handleICInAppMessagesDidChangeDistributedNotification:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"ICInAppMessagesDidChangeNotification" object:self];
}

- (void)_removeAllMessageEntriesForBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  messageStore = self->_messageStore;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__ICInAppMessageManager__removeAllMessageEntriesForBundleIdentifier_completion___block_invoke;
  v11[3] = &unk_1E7BF8F58;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(ICInAppMessageStore *)messageStore getAllMessageEntriesForBundleIdentifier:v10 completion:v11];
}

void __80__ICInAppMessageManager__removeAllMessageEntriesForBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v43 = v7;
      v44 = 2114;
      v45 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to gather messages to remove - some additional cleanup will be skipped. err=%{public}@", buf, 0x16u);
    }
  }

  v8 = +[ICDeviceInfo currentDeviceInfo];
  v9 = [v8 isMac];

  v10 = &unk_1B4755000;
  if ((v9 & 1) == 0)
  {
    v27 = v5;
    v28 = v4;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v4;
    v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v38;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          v16 = [v15 applicationMessage];
          v17 = [v16 identifier];

          if ([v17 hasPrefix:@"ams"])
          {
            v18 = v17;
          }

          else
          {
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ams_%@", v17];
          }

          v19 = v18;
          [ICInAppMessageUserNotificationCoordinator removeNotificationWithIdentifier:v18 forBundleIdentifier:*(a1 + 40)];
          if ([v15 isBadgingApplication])
          {
            v20 = [v15 applicationMessage];
            v21 = [v20 applicationBadge];

            v22 = [v21 bundleIdentifier];
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __80__ICInAppMessageManager__removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_408;
            v34[3] = &unk_1E7BF92E0;
            v35 = *(a1 + 40);
            v36 = v21;
            v23 = v21;
            [ICInAppMessageUserNotificationCoordinator removeBadgeIconForBundleIdentifier:v22 completion:v34];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v12);
    }

    v5 = v27;
    v4 = v28;
    v10 = &unk_1B4755000;
  }

  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v26 = *(v24 + 40);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = v10[114];
  v31[2] = __80__ICInAppMessageManager__removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_409;
  v31[3] = &unk_1E7BF80A8;
  v31[4] = v24;
  v32 = v25;
  v33 = *(a1 + 48);
  [v26 removeAllMessageEntriesForBundleIdentifier:v32 completion:v31];
}

void __80__ICInAppMessageManager__removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_408(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) identifier];
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Failed to remove badge for application with bundleId=%{public}@ and badgeId=%{public}@. err=%{public}@", &v7, 0x20u);
    }
  }
}

void __80__ICInAppMessageManager__removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_409(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138543874;
      v17 = v5;
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to remove messages for bundle identifier %{public}@. err=%{public}@", buf, 0x20u);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(v7 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__ICInAppMessageManager__removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_410;
  v12[3] = &unk_1E7BF8058;
  v12[4] = v7;
  v13 = v8;
  v10 = *(a1 + 48);
  v14 = v3;
  v15 = v10;
  v11 = v3;
  [v9 removeAllMetadataForBundleIdentifier:v13 completion:v12];
}

void __80__ICInAppMessageManager__removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_410(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v10 = 138543874;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to remove message metadata for bundle identifier %{public}@. err=%{public}@", &v10, 0x20u);
    }
  }

  v7 = [*(a1 + 32) _resourceCacheDirectoryPath];
  v8 = [v7 stringByAppendingPathComponent:*(a1 + 40)];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  [v9 removeItemAtPath:v8 error:0];

  (*(*(a1 + 56) + 16))();
}

- (void)_removeMessageEntryWithIdentifier:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  messageStore = self->_messageStore;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__ICInAppMessageManager__removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke;
  v15[3] = &unk_1E7BF39D8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(ICInAppMessageStore *)messageStore getMessageEntryWithIdentifier:v14 bundleIdentifier:v13 completion:v15];
}

void __90__ICInAppMessageManager__removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v33 = v8;
      v34 = 2114;
      v35 = v9;
      v36 = 2114;
      v37 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to fetch with message with identifier:  %{public}@. err=%{public}@. Will not remove badge.", buf, 0x20u);
    }
  }

  v10 = +[ICDeviceInfo currentDeviceInfo];
  v11 = [v10 isMac];

  if ((v11 & 1) == 0)
  {
    if ([*(a1 + 40) hasPrefix:@"ams"])
    {
      v12 = *(a1 + 40);
    }

    else
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ams_%@", *(a1 + 40)];
    }

    v13 = v12;
    v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138543618;
      v33 = v15;
      v34 = 2114;
      v35 = v13;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ removing user notifications with identifier %{public}@", buf, 0x16u);
    }

    [ICInAppMessageUserNotificationCoordinator removeNotificationWithIdentifier:v13 forBundleIdentifier:*(a1 + 48)];
    if ([v5 isBadgingApplication])
    {
      v16 = [v5 applicationMessage];
      v17 = [v16 applicationBadge];

      v18 = [v17 bundleIdentifier];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __90__ICInAppMessageManager__removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_405;
      v30[3] = &unk_1E7BF9308;
      v31 = v17;
      v19 = v17;
      [ICInAppMessageUserNotificationCoordinator removeBadgeIconForBundleIdentifier:v18 completion:v30];
    }
  }

  v20 = *(a1 + 48);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __90__ICInAppMessageManager__removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_406;
  v27[3] = &unk_1E7BF8058;
  v26 = *(a1 + 32);
  v21 = *(v26 + 40);
  v22 = *(&v26 + 1);
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  *&v25 = v23;
  *(&v25 + 1) = v24;
  v28 = v26;
  v29 = v25;
  [v21 removeMessageEntryWithIdentifier:v22 forBundleIdentifier:v20 completion:v27];
}

void __90__ICInAppMessageManager__removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_405(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) bundleIdentifier];
      v6 = [*(a1 + 32) identifier];
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Failed to remove badge for application with bundleId=%{public}@ and badgeId=%{public}@. err=%{public}@", &v7, 0x20u);
    }
  }
}

void __90__ICInAppMessageManager__removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_406(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138543874;
      v19 = v5;
      v20 = 2114;
      v21 = v6;
      v22 = 2114;
      v23 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to remove message %{public}@. err=%{public}@", buf, 0x20u);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(v7 + 40);
  v10 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__ICInAppMessageManager__removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_407;
  v13[3] = &unk_1E7BF6A70;
  v13[4] = v7;
  v14 = v8;
  v15 = *(a1 + 48);
  v11 = *(a1 + 56);
  v16 = v3;
  v17 = v11;
  v12 = v3;
  [v9 removeMetadataForMessageIdentifier:v14 bundleIdentifier:v10 completion:v13];
}

void __90__ICInAppMessageManager__removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_407(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v11 = 138543874;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to remove message metadata for identifier %{public}@. err=%{public}@", &v11, 0x20u);
    }
  }

  v7 = [*(a1 + 32) _resourceCacheDirectoryPath];
  v8 = [v7 stringByAppendingPathComponent:*(a1 + 48)];
  v9 = [v8 stringByAppendingPathComponent:*(a1 + 40)];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  [v10 removeItemAtPath:v9 error:0];

  (*(*(a1 + 64) + 16))();
}

- (void)_addMessageEntry:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 applicationMessage];
  if ([v8 hasAssetPrefetchStrategy] && objc_msgSend(v8, "assetPrefetchStrategy") == 1)
  {
    [v6 setShouldDownloadResources:1];
  }

  v9 = self;
  messageStore = v9->_messageStore;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__ICInAppMessageManager__addMessageEntry_completion___block_invoke;
  v15[3] = &unk_1E7BF8058;
  v16 = v9;
  v17 = v8;
  v18 = v6;
  v19 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v8;
  v14 = v9;
  [(ICInAppMessageStore *)messageStore addMessageEntry:v12 completion:v15];
}

void __53__ICInAppMessageManager__addMessageEntry_completion___block_invoke(uint64_t a1, void *a2)
{
  v66[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v3)
  {
    v7 = [*(a1 + 40) applicationBadge];
    v5 = v7;
    if (v7 && [v7 hasBundleIdentifier])
    {
      v8 = [v5 bundleIdentifier];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __53__ICInAppMessageManager__addMessageEntry_completion___block_invoke_387;
      v51[3] = &unk_1E7BF92E0;
      v52 = v5;
      v53 = *(a1 + 48);
      [ICInAppMessageUserNotificationCoordinator addBadgeIconForBundleIdentifier:v8 completion:v51];
    }

    v6 = [*(a1 + 40) localNotification];
    if (!v6)
    {
      goto LABEL_41;
    }

    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) identifier];
      *buf = 138543618;
      v59 = v4;
      v60 = 2114;
      v61 = v10;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Processing local user notification in message %{public}@", buf, 0x16u);
    }

    v11 = objc_alloc(MEMORY[0x1E698D028]);
    v12 = [*(a1 + 48) bundleIdentifier];
    v66[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
    v14 = [v11 initWithBundleIDs:v13 states:*MEMORY[0x1E698CFE8]];

    v15 = [*(a1 + 48) bundleIdentifier];
    LOBYTE(v13) = [v14 applicationStateForApplication:v15];

    [v14 invalidate];
    if ((v13 & 8) != 0)
    {
      v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [*(a1 + 40) identifier];
        *buf = 138543618;
        v59 = v4;
        v60 = 2114;
        v61 = v28;
        _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Not posting local notification in message %{public}@ because the target app is in the foreground", buf, 0x16u);
      }

      goto LABEL_40;
    }

    v16 = [v6 notification];
    if (!v16)
    {
      v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [*(a1 + 40) identifier];
        *buf = 138543618;
        v59 = v4;
        v60 = 2114;
        v61 = v29;
        _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring local notification in message %{public}@ because the notification string was not provided", buf, 0x16u);
      }

      goto LABEL_39;
    }

    v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v16 options:0];
    v48 = v17;
    v49 = v16;
    if (v17)
    {
      v50 = 0;
      v18 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v17 options:0 error:&v50];
      v19 = v50;
      if (v18)
      {
        v47 = [*(a1 + 48) bundleIdentifier];
        if (v47)
        {
          v45 = v19;
          v20 = _ICLogCategoryDefault_Oversize();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v59 = v4;
            v60 = 2114;
            v61 = v18;
            _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Extracted notification content: %{public}@", buf, 0x16u);
          }

          v46 = v18;

          v42 = +[ICUserIdentityStore defaultIdentityStore];
          v21 = +[ICUserIdentity activeAccount];
          v22 = [v42 DSIDForUserIdentity:v21 outError:0];
          v23 = [v22 stringValue];

          v44 = v23;
          if (v23)
          {
            v54[0] = @"0";
            v54[1] = @"1";
            v55[0] = v23;
            v55[1] = &unk_1F2C92008;
            v54[2] = @"2";
            v54[3] = @"aps";
            v55[2] = v47;
            v55[3] = v46;
            v24 = MEMORY[0x1E695DF20];
            v25 = v55;
            v26 = v54;
            v27 = 4;
          }

          else
          {
            v35 = _ICLogCategoryDefault();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = +[ICUserIdentity activeAccount];
              *buf = 138543618;
              v59 = v4;
              v60 = 2114;
              v61 = v36;
              _os_log_impl(&dword_1B4491000, v35, OS_LOG_TYPE_ERROR, "%{public}@ Could not get DSID for userIdentity=%{public}@.", buf, 0x16u);
            }

            v56[0] = @"1";
            v56[1] = @"2";
            v57[0] = &unk_1F2C92008;
            v57[1] = v47;
            v56[2] = @"aps";
            v57[2] = v46;
            v24 = MEMORY[0x1E695DF20];
            v25 = v57;
            v26 = v56;
            v27 = 3;
          }

          v37 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:v27];
          v38 = [*(a1 + 48) bundleIdentifier];
          v43 = v37;
          v39 = [ICInAppMessageUserNotificationCoordinator scheduleNotificationWithPayload:v37 forBundleIdentifier:v38];

          if (!v39)
          {
            v40 = _ICLogCategoryDefault_Oversize();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [*(a1 + 40) identifier];
              *buf = 138543874;
              v59 = v4;
              v60 = 2114;
              v61 = v41;
              v62 = 2114;
              v63 = v49;
              _os_log_impl(&dword_1B4491000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to process notification for message %{public}@. payload=%{public}@", buf, 0x20u);
            }
          }

          v19 = v45;
          v18 = v46;
          v33 = v43;
        }

        else
        {
          v33 = _ICLogCategoryDefault();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = *(a1 + 48);
            *buf = 138543618;
            v59 = v4;
            v60 = 2114;
            v61 = v34;
            _os_log_impl(&dword_1B4491000, v33, OS_LOG_TYPE_ERROR, "%{public}@ Skipping notification for messageEntry=%{public}@ as there is no bundleIdentifier", buf, 0x16u);
          }
        }

        v30 = v47;
LABEL_38:

        v16 = v49;
LABEL_39:

LABEL_40:
        goto LABEL_41;
      }
    }

    else
    {
      v19 = 0;
    }

    v30 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 40) identifier];
      v32 = v31 = v19;
      *buf = 138544130;
      v59 = v4;
      v60 = 2114;
      v61 = v32;
      v62 = 2114;
      v63 = v31;
      v64 = 2114;
      v65 = v49;
      _os_log_impl(&dword_1B4491000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to parse notification for message %{public}@. err=%{public}@, payload=%{public}@", buf, 0x2Au);

      v19 = v31;
    }

    v18 = 0;
    goto LABEL_38;
  }

  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) identifier];
    *buf = 138543874;
    v59 = v4;
    v60 = 2114;
    v61 = v6;
    v62 = 2114;
    v63 = v3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to add message %{public}@. err=%{public}@", buf, 0x20u);
LABEL_41:
  }

  (*(*(a1 + 56) + 16))();
}

void __53__ICInAppMessageManager__addMessageEntry_completion___block_invoke_387(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) bundleIdentifier];
      v6 = [*(a1 + 32) identifier];
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Failed to badge application with bundleId=%{public}@ and badgeId=%{public}@. err=%{public}@", &v7, 0x20u);
    }
  }

  else
  {
    [*(a1 + 40) setIsBadgingApplication:1];
  }
}

- (void)_processSyncResponse:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  messageStore = self->_messageStore;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__ICInAppMessageManager__processSyncResponse_completion___block_invoke;
  v11[3] = &unk_1E7BF3C30;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [(ICInAppMessageStore *)messageStore getStorePropertyForKey:@"serverRevision" completion:v11];
}

void __57__ICInAppMessageManager__processSyncResponse_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v47 = v5;
  v48 = a3;
  if (v48)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v48;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to get current server revision from message store. err=%{public}@", buf, 0x16u);
    }

    (*(a1[6] + 2))();
    goto LABEL_38;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v78 = __Block_byref_object_copy__2587;
  v79 = __Block_byref_object_dispose__2588;
  v80 = 0;
  v8 = [v5 longLongValue];
  v49 = 0;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x2020000000;
  v68 = 0;
  v9 = "com.apple.amp.iTunesCloud";
  v10 = "Default";
LABEL_6:
  v11 = [a1[5] applicationMessageSyncResponsesCount];
  v12 = *(*&buf[8] + 40);
  if (v49 < v11)
  {
    if (v12)
    {
      goto LABEL_36;
    }

    v13 = [a1[5] applicationMessageSyncResponsesAtIndex:v49];
    v50 = [v13 bundleID];
    for (i = 0; ; ++i)
    {
      if (i >= [v13 syncCommandsCount] || *(*&buf[8] + 40))
      {

        ++v49;
        goto LABEL_6;
      }

      v15 = [v13 syncCommandsAtIndex:i];
      if ([v15 commandSerialNumber] > v8)
      {
        break;
      }

      log = os_log_create(v9, v10);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v25 = a1[4];
        v26 = [v15 commandSerialNumber];
        *v69 = 138543874;
        v70 = v25;
        v71 = 2048;
        v72 = v26;
        v73 = 2048;
        v74 = v8;
        _os_log_impl(&dword_1B4491000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring sync command we've already applied (serial# %lld, currentRevision=%lld)", v69, 0x20u);
      }

LABEL_33:

      v8 = [v15 commandSerialNumber];
    }

    log = [v15 applicationMessage];
    v16 = os_log_create(v9, v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v51 = i;
      v17 = v13;
      v18 = v10;
      v19 = v9;
      v20 = a1;
      v21 = a1[4];
      v22 = [v15 commandSerialNumber];
      v23 = [v15 commandType];
      if (v23 >= 4)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v23, v47];
      }

      else
      {
        v24 = *(&off_1E7BF3E30 + v23);
      }

      v27 = v24;
      v28 = [log identifier];
      *v69 = 138544130;
      v70 = v21;
      v71 = 2048;
      v72 = v22;
      v73 = 2114;
      v74 = v27;
      v75 = 2114;
      v76 = v28;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Processing sync command #%lld: %{public}@ %{public}@", v69, 0x2Au);

      a1 = v20;
      v9 = v19;
      v10 = v18;
      v13 = v17;
      i = v51;
    }

    v29 = [v15 commandType];
    if (v29 > 1)
    {
      if (v29 != 2)
      {
        if (v29 == 3)
        {
          [a1[4] resetMessagesWithCompletion:&__block_literal_global_385];
        }

        goto LABEL_29;
      }

      v38 = dispatch_semaphore_create(0);
      v39 = a1[4];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __57__ICInAppMessageManager__processSyncResponse_completion___block_invoke_3;
      v56[3] = &unk_1E7BF4860;
      v58 = buf;
      v33 = v38;
      v57 = v33;
      [v39 _removeAllMessageEntriesForBundleIdentifier:v50 completion:v56];
      dispatch_semaphore_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
      v34 = v57;
    }

    else if (v29)
    {
      if (v29 != 1)
      {
        goto LABEL_29;
      }

      v30 = dispatch_semaphore_create(0);
      v31 = a1[4];
      v32 = [log identifier];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __57__ICInAppMessageManager__processSyncResponse_completion___block_invoke_2;
      v59[3] = &unk_1E7BF4860;
      v61 = buf;
      v33 = v30;
      v60 = v33;
      [v31 _removeMessageEntryWithIdentifier:v32 forBundleIdentifier:v50 completion:v59];

      dispatch_semaphore_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
      v34 = v60;
    }

    else
    {
      v35 = [[ICInAppMessageEntry alloc] initWithApplicationMessage:log bundleIdentifier:v50];
      v36 = dispatch_semaphore_create(0);
      v37 = a1[4];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __57__ICInAppMessageManager__processSyncResponse_completion___block_invoke_383;
      v62[3] = &unk_1E7BF3BE0;
      v33 = v35;
      v63 = v33;
      v65 = v67;
      v66 = buf;
      v34 = v36;
      v64 = v34;
      [v37 _addMessageEntry:v33 completion:v62];
      dispatch_semaphore_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
    }

LABEL_29:
    if (*(*&buf[8] + 40))
    {
      v40 = os_log_create(v9, v10);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = a1[4];
        v42 = *(*&buf[8] + 40);
        *v69 = 138543618;
        v70 = v41;
        v71 = 2114;
        v72 = v42;
        _os_log_impl(&dword_1B4491000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to process sync command. err=%{public}@", v69, 0x16u);
      }
    }

    goto LABEL_33;
  }

  if (v12)
  {
LABEL_36:
    (*(a1[6] + 2))();
    goto LABEL_37;
  }

  v43 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = a1[4];
    *v69 = 138543618;
    v70 = v44;
    v71 = 2048;
    v72 = v8;
    _os_log_impl(&dword_1B4491000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished processing sync commands. currentSyncRevision=%lld", v69, 0x16u);
  }

  v45 = *(a1[4] + 5);
  v46 = [MEMORY[0x1E696AD98] numberWithLongLong:v8];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __57__ICInAppMessageManager__processSyncResponse_completion___block_invoke_386;
  v53[3] = &unk_1E7BF3C08;
  v54 = a1[6];
  v55 = v67;
  v53[4] = a1[4];
  [v45 updateStoreProperty:v46 forKey:@"serverRevision" completion:v53];

LABEL_37:
  _Block_object_dispose(v67, 8);
  _Block_object_dispose(buf, 8);

LABEL_38:
}

void __57__ICInAppMessageManager__processSyncResponse_completion___block_invoke_383(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) shouldDownloadResources])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __57__ICInAppMessageManager__processSyncResponse_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __57__ICInAppMessageManager__processSyncResponse_completion___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __57__ICInAppMessageManager__processSyncResponse_completion___block_invoke_386(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) _checkForMessageResourcesNeedingDownloadForcingIfNecessary:1];
  }

  v2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v2 postNotificationName:@"com.apple.itunescloud.ICInAppMessagesDidChangeDistributedNotification" object:0];
}

- (void)_performSyncWithCompletion:(id)a3
{
  v4 = a3;
  messageStore = self->_messageStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke;
  v7[3] = &unk_1E7BFA490;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(ICInAppMessageStore *)messageStore updateStoreProperty:MEMORY[0x1E695E118] forKey:@"syncPending" completion:v7];
}

void __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to update sync pending flag. err=%{public}@", buf, 0x16u);
    }
  }

  v6 = *(*(a1 + 32) + 48);
  v7 = +[ICUserIdentity activeAccount];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke_375;
  v9[3] = &unk_1E7BF3BB8;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [v6 getPropertiesForUserIdentity:v7 completionHandler:v9];
}

void __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke_375(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v25 = v8;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to get properties for active account for sync. err=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_15;
  }

  if (!v5)
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138543362;
      v25 = v14;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Not performing sync because there's no active account", buf, 0xCu);
    }

    v15 = *(*(a1 + 32) + 40);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke_376;
    v22[3] = &unk_1E7BF77C0;
    v23 = *(a1 + 40);
    [v15 updateStoreProperty:MEMORY[0x1E695E110] forKey:@"syncPending" completion:v22];
    v16 = v23;
    goto LABEL_14;
  }

  if (![*(a1 + 32) _privacyAcknowledgementRequired])
  {
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = *(v18 + 40);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke_377;
    v20[3] = &unk_1E7BF3AA0;
    v20[4] = v18;
    v21 = v17;
    [v19 getStorePropertyForKey:@"serverRevision" completion:v20];
    v16 = v21;
LABEL_14:

    goto LABEL_15;
  }

  v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 138543362;
    v25 = v10;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Not syncing because privacy acknowledgement is required", buf, 0xCu);
  }

  v11 = *(a1 + 40);
  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7007 userInfo:0];
  (*(v11 + 16))(v11, v12);

LABEL_15:
}

void __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke_377(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v20 = v8;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to get current server revision from message store. err=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v10 = *(*(a1 + 32) + 40);
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:v9];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke_378;
    v15[3] = &unk_1E7BF80A8;
    v12 = v5;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = v12;
    v17 = v13;
    v18 = v14;
    [v10 updateStoreProperty:v11 forKey:@"lastSyncAttempt" completion:v15];
  }
}

void __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke_378(uint64_t a1)
{
  v2 = [*(a1 + 32) longLongValue];
  v3 = [*(a1 + 40) _storeRequestContext];
  v4 = [[ICInAppMessageSyncRequest alloc] initWithStoreRequestContext:v3 fromRevision:v2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7BF3B90;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [(ICInAppMessageSyncRequest *)v4 performRequestWithResponseHandler:v6];
}

void __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Sync request failed. err=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke_380;
    v9[3] = &unk_1E7BFA490;
    v9[4] = v8;
    v10 = *(a1 + 40);
    [v8 _processSyncResponse:a2 completion:v9];
  }
}

void __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke_380(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Sync completed. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__ICInAppMessageManager__performSyncWithCompletion___block_invoke_381;
  v9[3] = &unk_1E7BFA490;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 updateStoreProperty:MEMORY[0x1E695E110] forKey:@"syncPending" completion:v9];
}

- (id)_storeRequestContext
{
  v3 = [ICStoreRequestContext alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__ICInAppMessageManager__storeRequestContext__block_invoke;
  v6[3] = &unk_1E7BF91F0;
  v6[4] = self;
  v4 = [(ICStoreRequestContext *)v3 initWithBlock:v6];

  return v4;
}

void __45__ICInAppMessageManager__storeRequestContext__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[ICUserIdentity activeAccount];
  [v5 setIdentity:v3];

  [v5 setIdentityStore:*(*(a1 + 32) + 48)];
  v4 = [(ICURLResponseAuthenticationProvider *)[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v5 setAuthenticationProvider:v4];

  [v5 setAllowsExpiredBags:1];
  [v5 setPersonalizationStyle:2];
}

- (void)_schedulePeriodicUpdate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__ICInAppMessageManager__schedulePeriodicUpdate__block_invoke;
  v2[3] = &unk_1E7BF3B68;
  v2[4] = self;
  [(ICInAppMessageManager *)self _loadConfigurationWithCompletion:v2];
}

void __48__ICInAppMessageManager__schedulePeriodicUpdate__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [a2 syncPollingInterval];
  v4 = +[ICDefaults standardDefaults];
  v5 = [v4 bypassBagSanityChecks];

  if ((v5 & 1) == 0 && v3 <= 86399)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v13 = v7;
      v14 = 2048;
      v15 = v3;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Adjusting bag refresh interval of %llds --> 7 days", buf, 0x16u);
    }

    v3 = 604800;
  }

  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138543618;
    v13 = v9;
    v14 = 2048;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting timer to perform periodic poll for %llds", buf, 0x16u);
  }

  v10 = +[ICBGTaskScheduler sharedTaskScheduler];
  if (([v10 hasScheduledTask:@"com.apple.itunescloud.ICInAppMessageManager.periodic_poll"] & 1) == 0)
  {
    [v10 scheduleRecurringTask:@"com.apple.itunescloud.ICInAppMessageManager.periodic_poll" withInterval:0 afterDelay:v3 withUserData:v3];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__ICInAppMessageManager__schedulePeriodicUpdate__block_invoke_368;
  v11[3] = &unk_1E7BF6CE8;
  v11[4] = *(a1 + 32);
  [v10 registerForTask:@"com.apple.itunescloud.ICInAppMessageManager.periodic_poll" handler:v11];
}

uint64_t __48__ICInAppMessageManager__schedulePeriodicUpdate__block_invoke_368(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing periodic sync", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__ICInAppMessageManager__schedulePeriodicUpdate__block_invoke_369;
  v6[3] = &unk_1E7BF9308;
  v6[4] = v4;
  return [v4 flushEventsWithCompletion:v6];
}

uint64_t __48__ICInAppMessageManager__schedulePeriodicUpdate__block_invoke_369(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__ICInAppMessageManager__schedulePeriodicUpdate__block_invoke_2;
  v3[3] = &unk_1E7BF9308;
  v3[4] = v1;
  return [v1 syncMessagesWithCompletion:v3];
}

void __48__ICInAppMessageManager__schedulePeriodicUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Periodic sync completed. err=%{public}@", &v6, 0x16u);
  }

  [*(a1 + 32) _performCacheConsistencyCheck];
  [*(a1 + 32) _schedulePeriodicUpdate];
}

void __45__ICInAppMessageManager__xpcClientConnection__block_invoke_362(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "Connection to in-app message service invalidated", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = 0;
}

void __45__ICInAppMessageManager__xpcClientConnection__block_invoke()
{
  v0 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B4491000, v0, OS_LOG_TYPE_DEFAULT, "Connection to in-app message service interrupted", v1, 2u);
  }
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3
{
  v4 = [ICAsyncBlockOperation alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__ICInAppMessageManager__handleUserIdentityStoreDidChangeNotification___block_invoke;
  v6[3] = &unk_1E7BF6C48;
  v6[4] = self;
  v5 = [(ICAsyncBlockOperation *)v4 initWithStartHandler:v6];
  [(ICAsyncBlockOperation *)v5 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.handleAccountChange"];
  [(NSOperationQueue *)self->_operationQueue addOperation:v5];
}

void __71__ICInAppMessageManager__handleUserIdentityStoreDidChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v5 = +[ICUserIdentity activeAccount];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__ICInAppMessageManager__handleUserIdentityStoreDidChangeNotification___block_invoke_2;
  v8[3] = &unk_1E7BF3B40;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 getPropertiesForUserIdentity:v5 completionHandler:v8];
}

void __71__ICInAppMessageManager__handleUserIdentityStoreDidChangeNotification___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get account properties. err=%{public}@", buf, 0xCu);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    v8 = *(*(a1 + 40) + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__ICInAppMessageManager__handleUserIdentityStoreDidChangeNotification___block_invoke_258;
    v11[3] = &unk_1E7BF3B18;
    v12 = *(a1 + 32);
    v9 = v5;
    v10 = *(a1 + 40);
    v13 = v9;
    v14 = v10;
    [v8 getStorePropertyForKey:@"accountDSID" completion:v11];
  }
}

void __71__ICInAppMessageManager__handleUserIdentityStoreDidChangeNotification___block_invoke_258(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "Failed to get message store account property. err=%{public}@", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = v5;
    goto LABEL_7;
  }

  v9 = [a2 longLongValue];
  v10 = [*(a1 + 40) DSID];
  v11 = [v10 longLongValue];

  if (v11 == v9)
  {
    v7 = *(a1 + 32);
    v8 = 0;
LABEL_7:
    [v7 finishWithError:v8];
    goto LABEL_8;
  }

  v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 48);
    *buf = 138543874;
    v20 = v13;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v11;
    _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ account changed from %lld --> %lld - performing reset", buf, 0x20u);
  }

  v14 = *(a1 + 48);
  v15 = *(v14 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__ICInAppMessageManager__handleUserIdentityStoreDidChangeNotification___block_invoke_259;
  v16[3] = &unk_1E7BF3AF0;
  v16[4] = v14;
  v17 = *(a1 + 32);
  v18 = v11;
  [v15 resetStoreWithCompletion:v16];

LABEL_8:
}

void __71__ICInAppMessageManager__handleUserIdentityStoreDidChangeNotification___block_invoke_259(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to reset message store. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    v6 = *(*(a1 + 32) + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 48)];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__ICInAppMessageManager__handleUserIdentityStoreDidChangeNotification___block_invoke_261;
    v9[3] = &unk_1E7BF92E0;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v6 updateStoreProperty:v7 forKey:@"accountDSID" completion:v9];
  }
}

void __71__ICInAppMessageManager__handleUserIdentityStoreDidChangeNotification___block_invoke_261(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to update message store account property. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __71__ICInAppMessageManager__handleUserIdentityStoreDidChangeNotification___block_invoke_262;
    v7[3] = &unk_1E7BF92E0;
    v7[4] = v6;
    v8 = *(a1 + 40);
    [v6 _performSyncWithCompletion:v7];
  }
}

void __71__ICInAppMessageManager__handleUserIdentityStoreDidChangeNotification___block_invoke_262(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to sync after the reset. err=%{public}@", &v6, 0x16u);
    }
  }

  [*(a1 + 40) finishWithError:v3];
}

- (void)removeApplicationBadgeForBundleIdentifier:(id)a3 fromPresentedMessageEntry:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  if ([v11 isBadgingApplication])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __104__ICInAppMessageManager_removeApplicationBadgeForBundleIdentifier_fromPresentedMessageEntry_completion___block_invoke;
    v12[3] = &unk_1E7BF6A70;
    v13 = v11;
    v14 = self;
    v15 = v8;
    v16 = v13;
    v17 = v10;
    [ICInAppMessageUserNotificationCoordinator removeBadgeIconForBundleIdentifier:v15 completion:v12];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

void __104__ICInAppMessageManager_removeApplicationBadgeForBundleIdentifier_fromPresentedMessageEntry_completion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) applicationMessage];
  v5 = [v4 identifier];

  if (v3)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 138544130;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2114;
      v20 = v5;
      v21 = 2114;
      v22 = v3;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to remove badge for application with bundleId=%{public}@ and messageId=%{public}@. err=%{public}@", buf, 0x2Au);
    }
  }

  else
  {
    [*(a1 + 56) setIsBadgingApplication:0];
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__ICInAppMessageManager_removeApplicationBadgeForBundleIdentifier_fromPresentedMessageEntry_completion___block_invoke_257;
    v11[3] = &unk_1E7BF3AC8;
    v12 = 0;
    v13 = v9;
    v14 = v5;
    [v9 updateMessageEntry:v10 completion:v11];

    v6 = v12;
  }

  (*(*(a1 + 64) + 16))();
}

void __104__ICInAppMessageManager_removeApplicationBadgeForBundleIdentifier_fromPresentedMessageEntry_completion___block_invoke_257(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1[4])
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[5];
      v6 = a1[6];
      v7 = 138543874;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to update messageEntry for messageId=%{public}@. err=%{public}@", &v7, 0x20u);
    }
  }
}

- (void)setProperty:(id)a3 forKey:(id)a4 bundleIdentifier:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = v10;
  if (self->_isSystemService)
  {
    messageStore = self->_messageStore;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __72__ICInAppMessageManager_setProperty_forKey_bundleIdentifier_completion___block_invoke_4;
    v23[3] = &unk_1E7BFA490;
    v23[4] = self;
    v13 = &v24;
    v24 = v10;
    v14 = a5;
    v15 = a4;
    v16 = a3;
    [(ICInAppMessageStore *)messageStore updateStoreProperty:v16 forKey:v15 bundleIdentifier:v14 completion:v23];
  }

  else
  {
    v17 = a5;
    v18 = a4;
    v19 = a3;
    v20 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __72__ICInAppMessageManager_setProperty_forKey_bundleIdentifier_completion___block_invoke;
    v27[3] = &unk_1E7BFA490;
    v27[4] = self;
    v13 = &v28;
    v21 = v11;
    v28 = v21;
    v22 = [v20 remoteObjectProxyWithErrorHandler:v27];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __72__ICInAppMessageManager_setProperty_forKey_bundleIdentifier_completion___block_invoke_2;
    v25[3] = &unk_1E7BFA490;
    v25[4] = self;
    v26 = v21;
    [v22 setProperty:v19 forKey:v18 bundleIdentifier:v17 completion:v25];
  }
}

void __72__ICInAppMessageManager_setProperty_forKey_bundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__ICInAppMessageManager_setProperty_forKey_bundleIdentifier_completion___block_invoke_255;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __72__ICInAppMessageManager_setProperty_forKey_bundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ICInAppMessageManager_setProperty_forKey_bundleIdentifier_completion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __72__ICInAppMessageManager_setProperty_forKey_bundleIdentifier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ICInAppMessageManager_setProperty_forKey_bundleIdentifier_completion___block_invoke_5;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)getPropertyForKey:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (self->_isSystemService)
  {
    messageStore = self->_messageStore;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__ICInAppMessageManager_getPropertyForKey_bundleIdentifier_completion___block_invoke_4;
    v19[3] = &unk_1E7BF3AA0;
    v19[4] = self;
    v11 = &v20;
    v20 = v8;
    v12 = a4;
    v13 = a3;
    [(ICInAppMessageStore *)messageStore getStorePropertyForKey:v13 bundleIdentifier:v12 completion:v19];
  }

  else
  {
    v14 = a4;
    v15 = a3;
    v16 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__ICInAppMessageManager_getPropertyForKey_bundleIdentifier_completion___block_invoke;
    v23[3] = &unk_1E7BFA490;
    v23[4] = self;
    v11 = &v24;
    v17 = v9;
    v24 = v17;
    v18 = [v16 remoteObjectProxyWithErrorHandler:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__ICInAppMessageManager_getPropertyForKey_bundleIdentifier_completion___block_invoke_2;
    v21[3] = &unk_1E7BF3AA0;
    v21[4] = self;
    v22 = v17;
    [v18 getPropertyForKey:v15 bundleIdentifier:v14 completion:v21];
  }
}

void __71__ICInAppMessageManager_getPropertyForKey_bundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__ICInAppMessageManager_getPropertyForKey_bundleIdentifier_completion___block_invoke_254;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __71__ICInAppMessageManager_getPropertyForKey_bundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ICInAppMessageManager_getPropertyForKey_bundleIdentifier_completion___block_invoke_3;
  block[3] = &unk_1E7BF9E28;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __71__ICInAppMessageManager_getPropertyForKey_bundleIdentifier_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ICInAppMessageManager_getPropertyForKey_bundleIdentifier_completion___block_invoke_5;
  block[3] = &unk_1E7BF9E28;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)setGlobalProperty:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (self->_isSystemService)
  {
    messageStore = self->_messageStore;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __61__ICInAppMessageManager_setGlobalProperty_forKey_completion___block_invoke_4;
    v19[3] = &unk_1E7BFA490;
    v19[4] = self;
    v11 = &v20;
    v20 = v8;
    v12 = a4;
    v13 = a3;
    [(ICInAppMessageStore *)messageStore updateStoreProperty:v13 forKey:v12 completion:v19];
  }

  else
  {
    v14 = a4;
    v15 = a3;
    v16 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __61__ICInAppMessageManager_setGlobalProperty_forKey_completion___block_invoke;
    v23[3] = &unk_1E7BFA490;
    v23[4] = self;
    v11 = &v24;
    v17 = v9;
    v24 = v17;
    v18 = [v16 remoteObjectProxyWithErrorHandler:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61__ICInAppMessageManager_setGlobalProperty_forKey_completion___block_invoke_2;
    v21[3] = &unk_1E7BFA490;
    v21[4] = self;
    v22 = v17;
    [v18 setGlobalProperty:v15 forKey:v14 completion:v21];
  }
}

void __61__ICInAppMessageManager_setGlobalProperty_forKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__ICInAppMessageManager_setGlobalProperty_forKey_completion___block_invoke_253;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __61__ICInAppMessageManager_setGlobalProperty_forKey_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__ICInAppMessageManager_setGlobalProperty_forKey_completion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __61__ICInAppMessageManager_setGlobalProperty_forKey_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__ICInAppMessageManager_setGlobalProperty_forKey_completion___block_invoke_5;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)getGlobalPropertyForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_isSystemService)
  {
    messageStore = self->_messageStore;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__ICInAppMessageManager_getGlobalPropertyForKey_completion___block_invoke_4;
    v15[3] = &unk_1E7BF3AA0;
    v15[4] = self;
    v9 = &v16;
    v16 = v6;
    v10 = a3;
    [(ICInAppMessageStore *)messageStore getStorePropertyForKey:v10 completion:v15];
  }

  else
  {
    v11 = a3;
    v12 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__ICInAppMessageManager_getGlobalPropertyForKey_completion___block_invoke;
    v19[3] = &unk_1E7BFA490;
    v19[4] = self;
    v9 = &v20;
    v13 = v7;
    v20 = v13;
    v14 = [v12 remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__ICInAppMessageManager_getGlobalPropertyForKey_completion___block_invoke_2;
    v17[3] = &unk_1E7BF3AA0;
    v17[4] = self;
    v18 = v13;
    [v14 getGlobalPropertyForKey:v11 completion:v17];
  }
}

void __60__ICInAppMessageManager_getGlobalPropertyForKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__ICInAppMessageManager_getGlobalPropertyForKey_completion___block_invoke_252;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __60__ICInAppMessageManager_getGlobalPropertyForKey_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__ICInAppMessageManager_getGlobalPropertyForKey_completion___block_invoke_3;
  block[3] = &unk_1E7BF9E28;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __60__ICInAppMessageManager_getGlobalPropertyForKey_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__ICInAppMessageManager_getGlobalPropertyForKey_completion___block_invoke_5;
  block[3] = &unk_1E7BF9E28;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)removeMetadataForMessageIdentifier:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_isSystemService)
  {
    v11 = [ICAsyncBlockOperation alloc];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __88__ICInAppMessageManager_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_4;
    v23 = &unk_1E7BF8BC0;
    v24 = self;
    v12 = &v25;
    v25 = v8;
    v26 = v9;
    v27 = v10;
    v13 = v10;
    v14 = [(ICAsyncBlockOperation *)v11 initWithStartHandler:&v20];
    [(ICAsyncBlockOperation *)v14 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.clearMetadataForMessageIdentifier", v20, v21, v22, v23, v24];
    [(NSOperationQueue *)self->_operationQueue addOperation:v14];

    v15 = v26;
  }

  else
  {
    v16 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __88__ICInAppMessageManager_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke;
    v30[3] = &unk_1E7BFA490;
    v30[4] = self;
    v12 = &v31;
    v17 = v10;
    v31 = v17;
    v18 = [v16 remoteObjectProxyWithErrorHandler:v30];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __88__ICInAppMessageManager_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_2;
    v28[3] = &unk_1E7BFA490;
    v28[4] = self;
    v29 = v17;
    v19 = v17;
    [v18 removeMetadataForMessageIdentifier:v8 bundleIdentifier:v9 completion:v28];

    v15 = v29;
  }
}

void __88__ICInAppMessageManager_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__ICInAppMessageManager_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_248;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __88__ICInAppMessageManager_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__ICInAppMessageManager_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __88__ICInAppMessageManager_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__ICInAppMessageManager_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_5;
  v10[3] = &unk_1E7BF80A8;
  v10[4] = v4;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  [v6 removeMetadataForMessageIdentifier:v5 bundleIdentifier:v7 completion:v10];
}

void __88__ICInAppMessageManager_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __88__ICInAppMessageManager_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_6;
  v10 = &unk_1E7BF9EC8;
  v5 = *(a1 + 48);
  v11 = v3;
  v12 = v5;
  v6 = v3;
  dispatch_async(v4, &v7);
  [*(a1 + 40) finishWithError:{v6, v7, v8, v9, v10}];
}

- (void)updateMetadata:(id)a3 messageIdentifier:(id)a4 bundleIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_isSystemService)
  {
    v14 = [ICAsyncBlockOperation alloc];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __86__ICInAppMessageManager_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke_4;
    v26 = &unk_1E7BF3A78;
    v27 = self;
    v15 = &v28;
    v28 = v10;
    v29 = v11;
    v30 = v12;
    v31 = v13;
    v16 = v13;
    v17 = [(ICAsyncBlockOperation *)v14 initWithStartHandler:&v23];
    [(ICAsyncBlockOperation *)v17 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.updateMetadata", v23, v24, v25, v26, v27];
    [(NSOperationQueue *)self->_operationQueue addOperation:v17];

    v18 = v29;
  }

  else
  {
    v19 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __86__ICInAppMessageManager_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke;
    v34[3] = &unk_1E7BFA490;
    v34[4] = self;
    v15 = &v35;
    v20 = v13;
    v35 = v20;
    v21 = [v19 remoteObjectProxyWithErrorHandler:v34];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __86__ICInAppMessageManager_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke_2;
    v32[3] = &unk_1E7BFA490;
    v32[4] = self;
    v33 = v20;
    v22 = v20;
    [v21 updateMetadata:v10 messageIdentifier:v11 bundleIdentifier:v12 completion:v32];

    v18 = v33;
  }
}

void __86__ICInAppMessageManager_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__ICInAppMessageManager_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke_244;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __86__ICInAppMessageManager_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__ICInAppMessageManager_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __86__ICInAppMessageManager_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__ICInAppMessageManager_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke_5;
  v11[3] = &unk_1E7BF80A8;
  v11[4] = v4;
  v9 = *(a1 + 64);
  v12 = v3;
  v13 = v9;
  v10 = v3;
  [v6 updateMetadata:v5 messageIdentifier:v7 bundleIdentifier:v8 completion:v11];
}

void __86__ICInAppMessageManager_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __86__ICInAppMessageManager_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke_6;
  v10 = &unk_1E7BF9EC8;
  v5 = *(a1 + 48);
  v11 = v3;
  v12 = v5;
  v6 = v3;
  dispatch_async(v4, &v7);
  [*(a1 + 40) finishWithError:{v6, v7, v8, v9, v10}];
}

- (void)getAllMetadataForBundleIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_isSystemService)
  {
    messageStore = self->_messageStore;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__ICInAppMessageManager_getAllMetadataForBundleIdentifiers_completion___block_invoke_4;
    v15[3] = &unk_1E7BF6AC0;
    v15[4] = self;
    v9 = &v16;
    v16 = v6;
    v10 = a3;
    [(ICInAppMessageStore *)messageStore getAllMetadataForBundleIdentifiers:v10 completion:v15];
  }

  else
  {
    v11 = a3;
    v12 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__ICInAppMessageManager_getAllMetadataForBundleIdentifiers_completion___block_invoke;
    v19[3] = &unk_1E7BFA490;
    v19[4] = self;
    v9 = &v20;
    v13 = v7;
    v20 = v13;
    v14 = [v12 remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__ICInAppMessageManager_getAllMetadataForBundleIdentifiers_completion___block_invoke_2;
    v17[3] = &unk_1E7BF6AC0;
    v17[4] = self;
    v18 = v13;
    [v14 getAllMetadataForBundleIdentifiers:v11 completion:v17];
  }
}

void __71__ICInAppMessageManager_getAllMetadataForBundleIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__ICInAppMessageManager_getAllMetadataForBundleIdentifiers_completion___block_invoke_242;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __71__ICInAppMessageManager_getAllMetadataForBundleIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ICInAppMessageManager_getAllMetadataForBundleIdentifiers_completion___block_invoke_3;
  block[3] = &unk_1E7BF9E28;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __71__ICInAppMessageManager_getAllMetadataForBundleIdentifiers_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ICInAppMessageManager_getAllMetadataForBundleIdentifiers_completion___block_invoke_5;
  block[3] = &unk_1E7BF9E28;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)getAllMetadataForBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [v6 setWithObject:a3];
  [(ICInAppMessageManager *)self getAllMetadataForBundleIdentifiers:v8 completion:v7];
}

- (void)getMetadataForMessageIdentifier:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (self->_isSystemService)
  {
    messageStore = self->_messageStore;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __85__ICInAppMessageManager_getMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_4;
    v19[3] = &unk_1E7BF3A50;
    v19[4] = self;
    v11 = &v20;
    v20 = v8;
    v12 = a4;
    v13 = a3;
    [(ICInAppMessageStore *)messageStore getMetadataForMessageIdentifier:v13 bundleIdentifier:v12 completion:v19];
  }

  else
  {
    v14 = a4;
    v15 = a3;
    v16 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __85__ICInAppMessageManager_getMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke;
    v23[3] = &unk_1E7BFA490;
    v23[4] = self;
    v11 = &v24;
    v17 = v9;
    v24 = v17;
    v18 = [v16 remoteObjectProxyWithErrorHandler:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __85__ICInAppMessageManager_getMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_2;
    v21[3] = &unk_1E7BF3A50;
    v21[4] = self;
    v22 = v17;
    [v18 getMetadataForMessageIdentifier:v15 bundleIdentifier:v14 completion:v21];
  }
}

void __85__ICInAppMessageManager_getMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__ICInAppMessageManager_getMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_239;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __85__ICInAppMessageManager_getMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__ICInAppMessageManager_getMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_3;
  block[3] = &unk_1E7BF9E28;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __85__ICInAppMessageManager_getMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (!(v7 | v6))
  {
    v8 = objc_alloc_init(ICInAppMessageMetadataEntry);
  }

  v9 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__ICInAppMessageManager_getMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_5;
  block[3] = &unk_1E7BF9E28;
  v10 = *(a1 + 40);
  v15 = v6;
  v16 = v10;
  v14 = v8;
  v11 = v6;
  v12 = v8;
  dispatch_async(v9, block);
}

- (void)clearCachedResourcesForMessageWithIdentifier:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v25 = self;
    v26 = 2114;
    v27 = v9;
    v28 = 2114;
    v29 = v8;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ clearing cached resources for message %{public}@:%{public}@", buf, 0x20u);
  }

  if (self->_isSystemService)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __98__ICInAppMessageManager_clearCachedResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_4;
    v18[3] = &unk_1E7BF77C0;
    v19 = v10;
    v12 = v10;
    [(ICInAppMessageManager *)self _updateShouldDownloadResources:0 onMessageWithIdentifier:v8 bundleIdentifier:v9 completion:v18];
    v13 = v19;
  }

  else
  {
    v14 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __98__ICInAppMessageManager_clearCachedResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke;
    v22[3] = &unk_1E7BFA490;
    v22[4] = self;
    v15 = v10;
    v23 = v15;
    v16 = [v14 remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __98__ICInAppMessageManager_clearCachedResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_2;
    v20[3] = &unk_1E7BFA490;
    v20[4] = self;
    v21 = v15;
    v17 = v15;
    [v16 clearCachedResourcesForMessageWithIdentifier:v8 bundleIdentifier:v9 completion:v20];

    v13 = v23;
  }
}

void __98__ICInAppMessageManager_clearCachedResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __98__ICInAppMessageManager_clearCachedResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_238;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __98__ICInAppMessageManager_clearCachedResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__ICInAppMessageManager_clearCachedResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)downloadResourcesForMessageWithIdentifier:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v27 = self;
    v28 = 2114;
    v29 = v9;
    v30 = 2114;
    v31 = v8;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ downloading resources for message %{public}@:%{public}@", buf, 0x20u);
  }

  if (self->_isSystemService)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __95__ICInAppMessageManager_downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_4;
    v18[3] = &unk_1E7BF8058;
    v21 = v10;
    v18[4] = self;
    v19 = v8;
    v20 = v9;
    v12 = v10;
    [(ICInAppMessageManager *)self _updateShouldDownloadResources:1 onMessageWithIdentifier:v19 bundleIdentifier:v20 completion:v18];

    v13 = v21;
  }

  else
  {
    v14 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __95__ICInAppMessageManager_downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke;
    v24[3] = &unk_1E7BFA490;
    v24[4] = self;
    v15 = v10;
    v25 = v15;
    v16 = [v14 remoteObjectProxyWithErrorHandler:v24];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __95__ICInAppMessageManager_downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_2;
    v22[3] = &unk_1E7BFA490;
    v22[4] = self;
    v23 = v15;
    v17 = v15;
    [v16 downloadResourcesForMessageWithIdentifier:v8 bundleIdentifier:v9 completion:v22];

    v13 = v25;
  }
}

void __95__ICInAppMessageManager_downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__ICInAppMessageManager_downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_234;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __95__ICInAppMessageManager_downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__ICInAppMessageManager_downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __95__ICInAppMessageManager_downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = [ICAsyncBlockOperation alloc];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __95__ICInAppMessageManager_downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_5;
    v11[3] = &unk_1E7BF8BC0;
    v10 = *(a1 + 32);
    v5 = *(&v10 + 1);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v12 = v10;
    v13 = v8;
    v9 = [(ICAsyncBlockOperation *)v4 initWithStartHandler:v11];
    [(ICAsyncBlockOperation *)v9 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.downloadResourcesForMessageWithIdentifier"];
    [*(*(a1 + 32) + 16) addOperation:v9];
  }
}

void __95__ICInAppMessageManager_downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__ICInAppMessageManager_downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_6;
  v9[3] = &unk_1E7BFA490;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v4 _downloadResourcesForMessageWithIdentifier:v5 bundleIdentifier:v6 completion:v9];
}

void __95__ICInAppMessageManager_downloadResourcesForMessageWithIdentifier_bundleIdentifier_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  [*(a1 + 32) finishWithError:v5];
}

- (void)flushEventsWithCompletion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = self;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Flushing message events", buf, 0xCu);
  }

  if (!self->_isSystemService)
  {
    v8 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke;
    v22[3] = &unk_1E7BFA490;
    v22[4] = self;
    v9 = v4;
    v23 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke_2;
    v20[3] = &unk_1E7BFA490;
    v20[4] = self;
    v21 = v9;
    [v10 flushEventsWithCompletion:v20];

    v11 = v23;
LABEL_10:

    goto LABEL_11;
  }

  if (![(ICInAppMessageManager *)self _privacyAcknowledgementRequired])
  {
    v12 = [ICAsyncBlockOperation alloc];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke_223;
    v17 = &unk_1E7BF8080;
    v18 = self;
    v19 = v4;
    v13 = [(ICAsyncBlockOperation *)v12 initWithStartHandler:&v14];
    [(ICAsyncBlockOperation *)v13 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.flushEvents", v14, v15, v16, v17, v18];
    [(NSOperationQueue *)self->_operationQueue addOperation:v13];

    v11 = v19;
    goto LABEL_10;
  }

  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = self;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Not flushing events because privacy acknowledgement is required", buf, 0xCu);
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7007 userInfo:0];
  (*(v4 + 2))(v4, v7);

LABEL_11:
}

void __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke_221;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke_223(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke_2_224;
  v8[3] = &unk_1E7BF8F58;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v11 = v5;
  v7 = v3;
  [v4 pendingMessageEventsWithCompletion:v8];
}

void __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke_2_224(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v5 = a3;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  v22 = v5;
  if (v5)
  {
    if (v7)
    {
      *buf = 138543362;
      *&buf[4] = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "Failed to load message events. err=%{public}@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) finishWithError:v5];
  }

  else
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v8;
      *&buf[12] = 1024;
      *&buf[14] = [v21 count];
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Flushing %d events", buf, 0x12u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = __Block_byref_object_copy__2587;
    v34 = __Block_byref_object_dispose__2588;
    v35 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v21;
    v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = *v28;
LABEL_9:
      v11 = 0;
      while (1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v13 = dispatch_semaphore_create(0);
        v14 = [ICInAppReportEventRequest alloc];
        v15 = [*(a1 + 40) _storeRequestContext];
        v16 = [v12 messageIdentifier];
        v17 = [v12 params];
        v18 = [(ICInAppReportEventRequest *)v14 initWithStoreRequestContext:v15 messageIdentifier:v16 params:v17];

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke_226;
        v24[3] = &unk_1E7BF7BA0;
        v26 = buf;
        v19 = *(a1 + 40);
        v24[4] = v12;
        v24[5] = v19;
        v20 = v13;
        v25 = v20;
        [(ICInAppReportEventRequest *)v18 performRequestWithResponseHandler:v24];
        dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
        LOBYTE(v16) = *(*&buf[8] + 40) == 0;

        if ((v16 & 1) == 0)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v9)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) finishWithError:*(*&buf[8] + 40)];
    _Block_object_dispose(buf, 8);
  }
}

void __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke_226(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) eventIdentifier];
      v7 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Failed to flush message event %{public}@. err=%{public}@", buf, 0x16u);
    }

    [*(*(a1 + 40) + 40) updateStoreProperty:MEMORY[0x1E695E118] forKey:@"syncPending" completion:&__block_literal_global_229];
  }

  else
  {
    v8 = *(*(a1 + 40) + 40);
    v9 = [*(a1 + 32) eventIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke_2_230;
    v10[3] = &unk_1E7BF9308;
    v10[4] = *(a1 + 32);
    [v8 removePendingMessageEventWithIdentifier:v9 completion:v10];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void __51__ICInAppMessageManager_flushEventsWithCompletion___block_invoke_2_230(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) eventIdentifier];
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Failed to remove completed event %{public}@. err=%{public}@", &v6, 0x16u);
    }
  }
}

- (void)reportEventForMessageIdentifier:(id)a3 withParams:(id)a4 flushImmediately:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v34 = self;
    v35 = 2114;
    v36 = v10;
    v37 = 2114;
    v38 = v11;
    _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Reporting event for message identifier %{public}@: %{public}@", buf, 0x20u);
  }

  if (self->_isSystemService)
  {
    v14 = [ICAsyncBlockOperation alloc];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __96__ICInAppMessageManager_reportEventForMessageIdentifier_withParams_flushImmediately_completion___block_invoke_4;
    v24[3] = &unk_1E7BF3A28;
    v24[4] = self;
    v15 = &v25;
    v25 = v10;
    v16 = v11;
    v28 = v7;
    v26 = v16;
    v27 = v12;
    v17 = v12;
    v18 = [(ICAsyncBlockOperation *)v14 initWithStartHandler:v24];
    [(ICAsyncBlockOperation *)v18 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.reportEvents"];
    [(NSOperationQueue *)self->_operationQueue addOperation:v18];

    v19 = v26;
  }

  else
  {
    v20 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __96__ICInAppMessageManager_reportEventForMessageIdentifier_withParams_flushImmediately_completion___block_invoke;
    v31[3] = &unk_1E7BFA490;
    v31[4] = self;
    v15 = &v32;
    v21 = v12;
    v32 = v21;
    v22 = [v20 remoteObjectProxyWithErrorHandler:v31];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __96__ICInAppMessageManager_reportEventForMessageIdentifier_withParams_flushImmediately_completion___block_invoke_2;
    v29[3] = &unk_1E7BFA490;
    v29[4] = self;
    v30 = v21;
    v23 = v21;
    [v22 reportEventForMessageIdentifier:v10 withParams:v11 flushImmediately:v7 completion:v29];

    v19 = v30;
  }
}

void __96__ICInAppMessageManager_reportEventForMessageIdentifier_withParams_flushImmediately_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__ICInAppMessageManager_reportEventForMessageIdentifier_withParams_flushImmediately_completion___block_invoke_213;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __96__ICInAppMessageManager_reportEventForMessageIdentifier_withParams_flushImmediately_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__ICInAppMessageManager_reportEventForMessageIdentifier_withParams_flushImmediately_completion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __96__ICInAppMessageManager_reportEventForMessageIdentifier_withParams_flushImmediately_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = [[ICInAppMessageEventEntry alloc] initWithMessageIdentifier:*(a1 + 40) params:*(a1 + 48)];
  v5 = *(*(a1 + 32) + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __96__ICInAppMessageManager_reportEventForMessageIdentifier_withParams_flushImmediately_completion___block_invoke_5;
  v8[3] = &unk_1E7BF3A00;
  objc_copyWeak(&v12, &location);
  v6 = v4;
  v9 = v6;
  v13 = *(a1 + 64);
  v11 = *(a1 + 56);
  v7 = v3;
  v10 = v7;
  [v5 addPendingMessageEvent:v6 completion:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __96__ICInAppMessageManager_reportEventForMessageIdentifier_withParams_flushImmediately_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v8 = 138543618;
      v9 = WeakRetained;
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to add message event. err=%{public}@", &v8, 0x16u);
    }
  }

  else if (v6)
  {
    v7 = [*(a1 + 32) eventIdentifier];
    v8 = 138543618;
    v9 = WeakRetained;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Added message event %{public}@ for message ", &v8, 0x16u);
  }

  if (*(a1 + 64) == 1)
  {
    [WeakRetained flushEventsWithCompletion:&__block_literal_global_217];
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) finishWithError:v3];
}

- (void)resetMessagesWithCompletion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_isSystemService)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = self;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing reset", buf, 0xCu);
    }

    v6 = [ICAsyncBlockOperation alloc];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __53__ICInAppMessageManager_resetMessagesWithCompletion___block_invoke_207;
    v17 = &unk_1E7BF8080;
    v7 = &v19;
    v18 = self;
    v19 = v4;
    v8 = v4;
    v9 = [(ICAsyncBlockOperation *)v6 initWithStartHandler:&v14];
    [(ICAsyncBlockOperation *)v9 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.resetMessages", v14, v15, v16, v17, v18];
    [(NSOperationQueue *)self->_operationQueue addOperation:v9];
  }

  else
  {
    v10 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __53__ICInAppMessageManager_resetMessagesWithCompletion___block_invoke;
    v22[3] = &unk_1E7BFA490;
    v22[4] = self;
    v7 = &v23;
    v11 = v4;
    v23 = v11;
    v12 = [v10 remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __53__ICInAppMessageManager_resetMessagesWithCompletion___block_invoke_2;
    v20[3] = &unk_1E7BFA490;
    v20[4] = self;
    v21 = v11;
    v13 = v11;
    [v12 resetMessagesWithCompletion:v20];
  }
}

void __53__ICInAppMessageManager_resetMessagesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__ICInAppMessageManager_resetMessagesWithCompletion___block_invoke_206;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __53__ICInAppMessageManager_resetMessagesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__ICInAppMessageManager_resetMessagesWithCompletion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __53__ICInAppMessageManager_resetMessagesWithCompletion___block_invoke_207(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _resourceCacheDirectoryPath];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  [v5 removeItemAtPath:v4 error:0];

  v6 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__ICInAppMessageManager_resetMessagesWithCompletion___block_invoke_2_209;
  v9[3] = &unk_1E7BFA490;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v6 resetStoreWithCompletion:v9];
}

void __53__ICInAppMessageManager_resetMessagesWithCompletion___block_invoke_2_209(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Failed to reset message store. err=%{public}@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) finishWithError:v3];
}

- (void)syncMessagesWithCompletion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = self;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing sync", buf, 0xCu);
  }

  if (self->_isSystemService)
  {
    v6 = [ICAsyncBlockOperation alloc];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __52__ICInAppMessageManager_syncMessagesWithCompletion___block_invoke_4;
    v17 = &unk_1E7BF8080;
    v7 = &v19;
    v18 = self;
    v19 = v4;
    v8 = v4;
    v9 = [(ICAsyncBlockOperation *)v6 initWithStartHandler:&v14];
    [(ICAsyncBlockOperation *)v9 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.syncMessages", v14, v15, v16, v17, v18];
    [(NSOperationQueue *)self->_operationQueue addOperation:v9];
  }

  else
  {
    v10 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __52__ICInAppMessageManager_syncMessagesWithCompletion___block_invoke;
    v22[3] = &unk_1E7BFA490;
    v22[4] = self;
    v7 = &v23;
    v11 = v4;
    v23 = v11;
    v12 = [v10 remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52__ICInAppMessageManager_syncMessagesWithCompletion___block_invoke_2;
    v20[3] = &unk_1E7BFA490;
    v20[4] = self;
    v21 = v11;
    v13 = v11;
    [v12 syncMessagesWithCompletion:v20];
  }
}

void __52__ICInAppMessageManager_syncMessagesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__ICInAppMessageManager_syncMessagesWithCompletion___block_invoke_202;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __52__ICInAppMessageManager_syncMessagesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__ICInAppMessageManager_syncMessagesWithCompletion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __52__ICInAppMessageManager_syncMessagesWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__ICInAppMessageManager_syncMessagesWithCompletion___block_invoke_5;
  v7[3] = &unk_1E7BFA490;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 _performSyncWithCompletion:v7];
}

void __52__ICInAppMessageManager_syncMessagesWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  [*(a1 + 32) finishWithError:v5];
}

- (void)addMessageEntryFromAMSDialogRequest:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5
{
  v90 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v63 = a5;
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v85 = self;
    v86 = 2114;
    v87 = v9;
    v88 = 2114;
    v89 = v8;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding message for bundle identifier '%{public}@' from dialog request %{public}@", buf, 0x20u);
  }

  v11 = [v8 identifier];
  v12 = v11;
  v61 = self;
  if (v11)
  {
    v65 = v11;
  }

  else
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v65 = [v13 UUIDString];
  }

  v59 = v9;

  v14 = [v8 defaultAction];
  v15 = [v14 deepLink];

  v62 = v15;
  if (v15)
  {
    v16 = [v15 absoluteString];
  }

  else
  {
    v16 = @"music://itunes.apple.com";
  }

  v17 = objc_alloc_init(ICIAMApplicationMessage);
  [(ICIAMApplicationMessage *)v17 setIdentifier:v65];
  v18 = [MEMORY[0x1E695DF00] date];
  [v18 timeIntervalSince1970];
  [(ICIAMApplicationMessage *)v17 setStartDate:?];

  v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1209600.0];
  [v19 timeIntervalSince1970];
  [(ICIAMApplicationMessage *)v17 setEndDate:?];

  [(ICIAMApplicationMessage *)v17 setAssetPrefetchStrategy:1];
  [(ICIAMApplicationMessage *)v17 setHasCloseButton:1];
  [(ICIAMApplicationMessage *)v17 setMaximumDisplays:1];
  [(ICIAMApplicationMessage *)v17 setMessageType:2];
  v20 = objc_alloc_init(ICIAMMessageContent);
  [(ICIAMMessageContent *)v20 setIdentifier:@"content-identifier"];
  v21 = [v8 title];
  [(ICIAMMessageContent *)v20 setTitle:v21];

  v22 = [v8 message];
  [(ICIAMMessageContent *)v20 setSubtitle:v22];

  v58 = v20;
  [(ICIAMApplicationMessage *)v17 addContentPages:v20];
  v23 = [MEMORY[0x1E695DF90] dictionary];
  v82[0] = @"title";
  v24 = [v8 title];
  v83[0] = v24;
  v82[1] = @"body";
  v64 = v8;
  v25 = [v8 message];
  v82[2] = @"level";
  v83[1] = v25;
  v83[2] = &unk_1F2C91FC0;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:3];

  v57 = v26;
  [v23 setObject:v26 forKey:@"alert"];
  v27 = [MEMORY[0x1E695DF70] array];
  v80[0] = @"_tp";
  v80[1] = @"_url";
  v81[0] = &unk_1F2C91FD8;
  v81[1] = v16;
  v80[2] = @"_mt";
  v78[0] = @"actionType";
  v78[1] = @"actionUrl";
  v79[0] = @"tap";
  v79[1] = v16;
  v60 = v16;
  v78[2] = @"eventType";
  v78[3] = @"eventVersion";
  v79[2] = @"notificationAction";
  v79[3] = &unk_1F2C91FD8;
  v78[4] = @"notificationId";
  v78[5] = @"targetType";
  v79[4] = v65;
  v79[5] = @"notification";
  v78[6] = @"topic";
  v78[7] = @"app";
  v79[6] = @"xp_amp_notifications";
  v79[7] = v59;
  v79[8] = @"Content";
  v78[8] = @"notificationType";
  v78[9] = @"details";
  v76 = @"notificationSubtype";
  v77 = @"MusicAlertMessage";
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  v79[9] = v28;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:10];
  v81[2] = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:3];

  v55 = v30;
  [v27 addObject:v30];
  v56 = v27;
  [v23 setObject:v27 forKey:@"_ba"];
  [v23 setObject:&unk_1F2C91FD8 forKey:@"content-available"];
  v31 = +[ICUserIdentityStore defaultIdentityStore];
  v32 = +[ICUserIdentity activeAccount];
  v33 = [v31 DSIDForUserIdentity:v32 outError:0];

  v54 = v33;
  if (v33)
  {
    v34 = [v33 stringValue];
    [v23 setObject:v34 forKey:@"_ds"];
  }

  else
  {
    [v23 setObject:@"0" forKey:@"_ds"];
  }

  [v23 setObject:&unk_1F2C91FF0 forKey:@"_it"];
  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ams_%@", v65];
  [v23 setObject:v35 forKey:@"_id"];

  [v23 setObject:v59 forKey:@"_bid"];
  v74[0] = @"eventType";
  v74[1] = @"eventVersion";
  v75[0] = @"notificationRequest";
  v75[1] = &unk_1F2C91FD8;
  v74[2] = @"language";
  v36 = +[ICDeviceInfo currentDeviceInfo];
  v37 = [v36 currentLocale];
  v38 = v37;
  v39 = &stru_1F2C4A680;
  if (v37)
  {
    v39 = v37;
  }

  v75[2] = v39;
  v75[3] = v65;
  v74[3] = @"notificationId";
  v74[4] = @"notificationType";
  v75[4] = @"Content";
  v75[5] = @"29";
  v74[5] = @"platformId";
  v74[6] = @"platformName";
  v75[6] = @"P84";
  v75[7] = @"xp_amp_notifications";
  v74[7] = @"topic";
  v74[8] = @"app";
  v75[8] = v59;
  v74[9] = @"details";
  v72 = @"notificationSubtype";
  v73 = @"MusicAlertMessage";
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v75[9] = v40;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:10];

  [v23 setObject:v41 forKey:@"_mt"];
  v42 = objc_alloc_init(ICIAMLocalNotification);
  v71 = 0;
  v43 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v23 options:0 error:&v71];
  v44 = v71;
  if (v43 && ([v43 base64EncodedStringWithOptions:0], (v45 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v46 = v45;
    [(ICIAMLocalNotification *)v42 setNotification:v45];
    [(ICIAMApplicationMessage *)v17 setLocalNotification:v42];
    v47 = v61;
  }

  else
  {
    v46 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v47 = v61;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v85 = v61;
      v86 = 2114;
      v87 = v44;
      _os_log_impl(&dword_1B4491000, v46, OS_LOG_TYPE_ERROR, "%{public}@ Failed to serialize local notification data. err=%{public}@", buf, 0x16u);
    }
  }

  v48 = [[ICInAppMessageEntry alloc] initWithApplicationMessage:v17 bundleIdentifier:v59];
  v49 = v47;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __89__ICInAppMessageManager_addMessageEntryFromAMSDialogRequest_bundleIdentifier_completion___block_invoke;
  v66[3] = &unk_1E7BF8058;
  v67 = v49;
  v68 = v17;
  v69 = v59;
  v70 = v63;
  v50 = v59;
  v51 = v17;
  v52 = v63;
  v53 = v49;
  [(ICInAppMessageManager *)v53 addMessageEntry:v48 completion:v66];
}

void __89__ICInAppMessageManager_addMessageEntryFromAMSDialogRequest_bundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished adding message for dialog request. err=%{public}@", buf, 0x16u);
  }

  if (v3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = +[ICInAppMessageManager sharedManager];
    v7 = [*(a1 + 40) identifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __89__ICInAppMessageManager_addMessageEntryFromAMSDialogRequest_bundleIdentifier_completion___block_invoke_201;
    v9[3] = &unk_1E7BF77C0;
    v8 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v6 downloadResourcesForMessageWithIdentifier:v7 bundleIdentifier:v8 completion:v9];
  }
}

- (void)removeAllMessageEntriesForBundleIdentifier:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = self;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ removing all messages for bundle identifier %{public}@", buf, 0x16u);
  }

  if (self->_isSystemService)
  {
    v9 = [ICAsyncBlockOperation alloc];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__ICInAppMessageManager_removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_4;
    v18[3] = &unk_1E7BF8BE8;
    v18[4] = self;
    v10 = &v19;
    v19 = v6;
    v20 = v7;
    v11 = v7;
    v12 = [(ICAsyncBlockOperation *)v9 initWithStartHandler:v18];
    [(ICAsyncBlockOperation *)v12 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.removeAllMessagesForBundleIdentifier"];
    [(NSOperationQueue *)self->_operationQueue addOperation:v12];

    v13 = v20;
  }

  else
  {
    v14 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __79__ICInAppMessageManager_removeAllMessageEntriesForBundleIdentifier_completion___block_invoke;
    v23[3] = &unk_1E7BFA490;
    v23[4] = self;
    v10 = &v24;
    v15 = v7;
    v24 = v15;
    v16 = [v14 remoteObjectProxyWithErrorHandler:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __79__ICInAppMessageManager_removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_2;
    v21[3] = &unk_1E7BFA490;
    v21[4] = self;
    v22 = v15;
    v17 = v15;
    [v16 removeAllMessageEntriesForBundleIdentifier:v6 completion:v21];

    v13 = v22;
  }
}

void __79__ICInAppMessageManager_removeAllMessageEntriesForBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__ICInAppMessageManager_removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_56;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __79__ICInAppMessageManager_removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__ICInAppMessageManager_removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __79__ICInAppMessageManager_removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__ICInAppMessageManager_removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_5;
  v8[3] = &unk_1E7BFA490;
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 _removeAllMessageEntriesForBundleIdentifier:v5 completion:v8];
}

void __79__ICInAppMessageManager_removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  [*(a1 + 32) finishWithError:v5];
}

- (void)removeMessageEntryWithIdentifier:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v34 = self;
    v35 = 2114;
    v36 = v8;
    v37 = 2114;
    v38 = v9;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ removing message %{public}@ for bundle identifier %{public}@", buf, 0x20u);
  }

  if (self->_isSystemService)
  {
    v12 = [ICAsyncBlockOperation alloc];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __89__ICInAppMessageManager_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_4;
    v24 = &unk_1E7BF8BC0;
    v25 = self;
    v13 = &v26;
    v26 = v8;
    v27 = v9;
    v28 = v10;
    v14 = v10;
    v15 = [(ICAsyncBlockOperation *)v12 initWithStartHandler:&v21];
    [(ICAsyncBlockOperation *)v15 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.removeMessageWithIdentifier", v21, v22, v23, v24, v25];
    [(NSOperationQueue *)self->_operationQueue addOperation:v15];

    v16 = v27;
  }

  else
  {
    v17 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __89__ICInAppMessageManager_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke;
    v31[3] = &unk_1E7BFA490;
    v31[4] = self;
    v13 = &v32;
    v18 = v10;
    v32 = v18;
    v19 = [v17 remoteObjectProxyWithErrorHandler:v31];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __89__ICInAppMessageManager_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_2;
    v29[3] = &unk_1E7BFA490;
    v29[4] = self;
    v30 = v18;
    v20 = v18;
    [v19 removeMessageEntryWithIdentifier:v8 forBundleIdentifier:v9 completion:v29];

    v16 = v30;
  }
}

void __89__ICInAppMessageManager_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__ICInAppMessageManager_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_52;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __89__ICInAppMessageManager_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__ICInAppMessageManager_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __89__ICInAppMessageManager_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__ICInAppMessageManager_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_5;
  v9[3] = &unk_1E7BFA490;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v4 _removeMessageEntryWithIdentifier:v5 forBundleIdentifier:v6 completion:v9];
}

void __89__ICInAppMessageManager_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  [*(a1 + 32) finishWithError:v5];
}

- (void)updateMessageEntry:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = self;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ updating message %{public}@", buf, 0x16u);
  }

  if (self->_isSystemService)
  {
    v9 = [ICAsyncBlockOperation alloc];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __55__ICInAppMessageManager_updateMessageEntry_completion___block_invoke_4;
    v18[3] = &unk_1E7BF8BE8;
    v18[4] = self;
    v10 = &v19;
    v19 = v6;
    v20 = v7;
    v11 = v7;
    v12 = [(ICAsyncBlockOperation *)v9 initWithStartHandler:v18];
    [(ICAsyncBlockOperation *)v12 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.updateMessage"];
    [(NSOperationQueue *)self->_operationQueue addOperation:v12];

    v13 = v20;
  }

  else
  {
    v14 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __55__ICInAppMessageManager_updateMessageEntry_completion___block_invoke;
    v23[3] = &unk_1E7BFA490;
    v23[4] = self;
    v10 = &v24;
    v15 = v7;
    v24 = v15;
    v16 = [v14 remoteObjectProxyWithErrorHandler:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __55__ICInAppMessageManager_updateMessageEntry_completion___block_invoke_2;
    v21[3] = &unk_1E7BFA490;
    v21[4] = self;
    v22 = v15;
    v17 = v15;
    [v16 updateMessageEntry:v6 completion:v21];

    v13 = v22;
  }
}

void __55__ICInAppMessageManager_updateMessageEntry_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__ICInAppMessageManager_updateMessageEntry_completion___block_invoke_48;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __55__ICInAppMessageManager_updateMessageEntry_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__ICInAppMessageManager_updateMessageEntry_completion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __55__ICInAppMessageManager_updateMessageEntry_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__ICInAppMessageManager_updateMessageEntry_completion___block_invoke_5;
  v8[3] = &unk_1E7BF80A8;
  v9 = v4;
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  [v5 updateMessageEntry:v9 completion:v8];
}

void __55__ICInAppMessageManager_updateMessageEntry_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Failed to update message %{public}@. err=%{public}@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) finishWithError:v3];
}

- (void)addMessageEntry:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = self;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ adding message: %{public}@", buf, 0x16u);
  }

  if (self->_isSystemService)
  {
    v9 = [ICAsyncBlockOperation alloc];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__ICInAppMessageManager_addMessageEntry_completion___block_invoke_4;
    v18[3] = &unk_1E7BF8BE8;
    v18[4] = self;
    v10 = &v19;
    v19 = v6;
    v20 = v7;
    v11 = v7;
    v12 = [(ICAsyncBlockOperation *)v9 initWithStartHandler:v18];
    [(ICAsyncBlockOperation *)v12 setName:@"com.apple.iTunesCloud.ICInAppMessageManager.addMessage"];
    [(NSOperationQueue *)self->_operationQueue addOperation:v12];

    v13 = v20;
  }

  else
  {
    v14 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __52__ICInAppMessageManager_addMessageEntry_completion___block_invoke;
    v23[3] = &unk_1E7BFA490;
    v23[4] = self;
    v10 = &v24;
    v15 = v7;
    v24 = v15;
    v16 = [v14 remoteObjectProxyWithErrorHandler:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __52__ICInAppMessageManager_addMessageEntry_completion___block_invoke_2;
    v21[3] = &unk_1E7BFA490;
    v21[4] = self;
    v22 = v15;
    v17 = v15;
    [v16 addMessageEntry:v6 completion:v21];

    v13 = v22;
  }
}

void __52__ICInAppMessageManager_addMessageEntry_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__ICInAppMessageManager_addMessageEntry_completion___block_invoke_42;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __52__ICInAppMessageManager_addMessageEntry_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__ICInAppMessageManager_addMessageEntry_completion___block_invoke_3;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __52__ICInAppMessageManager_addMessageEntry_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__ICInAppMessageManager_addMessageEntry_completion___block_invoke_5;
  v8[3] = &unk_1E7BF80A8;
  v9 = v4;
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  [v5 _addMessageEntry:v9 completion:v8];
}

void __52__ICInAppMessageManager_addMessageEntry_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Failed to add message %{public}@. err=%{public}@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) finishWithError:v3];
}

- (void)messageEntryWithIdentifier:(id)a3 bundleIdentifier:(id)a4 completion:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v31 = self;
    v32 = 2114;
    v33 = v8;
    v34 = 2114;
    v35 = v9;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching message with identifier %{public}@ for bundle identifier %{public}@", buf, 0x20u);
  }

  if (self->_isSystemService)
  {
    messageStore = self->_messageStore;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __80__ICInAppMessageManager_messageEntryWithIdentifier_bundleIdentifier_completion___block_invoke_4;
    v22[3] = &unk_1E7BF39D8;
    v22[4] = self;
    v13 = &v23;
    v14 = v8;
    v23 = v14;
    v15 = v9;
    v24 = v15;
    v25 = v10;
    v16 = v10;
    [(ICInAppMessageStore *)messageStore getMessageEntryWithIdentifier:v14 bundleIdentifier:v15 completion:v22];

    v17 = v24;
  }

  else
  {
    v18 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __80__ICInAppMessageManager_messageEntryWithIdentifier_bundleIdentifier_completion___block_invoke;
    v28[3] = &unk_1E7BFA490;
    v28[4] = self;
    v13 = &v29;
    v19 = v10;
    v29 = v19;
    v20 = [v18 remoteObjectProxyWithErrorHandler:v28];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __80__ICInAppMessageManager_messageEntryWithIdentifier_bundleIdentifier_completion___block_invoke_2;
    v26[3] = &unk_1E7BF39B0;
    v26[4] = self;
    v27 = v19;
    v21 = v19;
    [v20 messageEntryWithIdentifier:v8 bundleIdentifier:v9 completion:v26];

    v17 = v27;
  }
}

void __80__ICInAppMessageManager_messageEntryWithIdentifier_bundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__ICInAppMessageManager_messageEntryWithIdentifier_bundleIdentifier_completion___block_invoke_40;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __80__ICInAppMessageManager_messageEntryWithIdentifier_bundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__ICInAppMessageManager_messageEntryWithIdentifier_bundleIdentifier_completion___block_invoke_3;
  block[3] = &unk_1E7BF9E28;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __80__ICInAppMessageManager_messageEntryWithIdentifier_bundleIdentifier_completion___block_invoke_4(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = a1[6];
      v11 = 138544130;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to load message %{public}@ for bundle identifier %{public}@. err=%{public}@", &v11, 0x2Au);
    }
  }

  (*(a1[7] + 16))();
}

- (void)messageEntriesForBundleIdentifiers:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = self;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching messages for bundle identifiers %{public}@", buf, 0x16u);
  }

  if (self->_isSystemService)
  {
    messageStore = self->_messageStore;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71__ICInAppMessageManager_messageEntriesForBundleIdentifiers_completion___block_invoke_4;
    v18[3] = &unk_1E7BF8F58;
    v18[4] = self;
    v10 = &v19;
    v11 = v6;
    v19 = v11;
    v20 = v7;
    v12 = v7;
    [(ICInAppMessageStore *)messageStore getAllMessageEntriesForBundleIdentifiers:v11 completion:v18];
    v13 = v20;
  }

  else
  {
    v14 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__ICInAppMessageManager_messageEntriesForBundleIdentifiers_completion___block_invoke;
    v23[3] = &unk_1E7BFA490;
    v23[4] = self;
    v10 = &v24;
    v15 = v7;
    v24 = v15;
    v16 = [v14 remoteObjectProxyWithErrorHandler:v23];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__ICInAppMessageManager_messageEntriesForBundleIdentifiers_completion___block_invoke_2;
    v21[3] = &unk_1E7BF8FD0;
    v21[4] = self;
    v22 = v15;
    v17 = v15;
    [v16 messageEntriesForBundleIdentifiers:v6 completion:v21];

    v13 = v22;
  }
}

void __71__ICInAppMessageManager_messageEntriesForBundleIdentifiers_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__ICInAppMessageManager_messageEntriesForBundleIdentifiers_completion___block_invoke_39;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __71__ICInAppMessageManager_messageEntriesForBundleIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ICInAppMessageManager_messageEntriesForBundleIdentifiers_completion___block_invoke_3;
  block[3] = &unk_1E7BF9E28;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __71__ICInAppMessageManager_messageEntriesForBundleIdentifiers_completion___block_invoke_4(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = 138543874;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to load messages for bundle identifiers %{public}@. err=%{public}@", &v10, 0x20u);
    }
  }

  (*(a1[6] + 16))();
}

- (void)messageEntriesForBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [v6 setWithObject:a3];
  [(ICInAppMessageManager *)self messageEntriesForBundleIdentifiers:v8 completion:v7];
}

- (void)allMessageEntriesWithCompletion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = self;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching all messages", buf, 0xCu);
  }

  if (self->_isSystemService)
  {
    messageStore = self->_messageStore;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__ICInAppMessageManager_allMessageEntriesWithCompletion___block_invoke_4;
    v13[3] = &unk_1E7BF8FD0;
    v7 = &v14;
    v13[4] = self;
    v14 = v4;
    v8 = v4;
    [(ICInAppMessageStore *)messageStore getAllMessageEntriesWithCompletion:v13];
  }

  else
  {
    v9 = [(ICInAppMessageManager *)self _xpcClientConnection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__ICInAppMessageManager_allMessageEntriesWithCompletion___block_invoke;
    v17[3] = &unk_1E7BFA490;
    v17[4] = self;
    v7 = &v18;
    v10 = v4;
    v18 = v10;
    v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__ICInAppMessageManager_allMessageEntriesWithCompletion___block_invoke_2;
    v15[3] = &unk_1E7BF8FD0;
    v15[4] = self;
    v16 = v10;
    v12 = v10;
    [v11 allMessageEntriesWithCompletion:v15];
  }
}

void __57__ICInAppMessageManager_allMessageEntriesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to connect to remote service. err=%{public}@", buf, 0x16u);
  }

  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__ICInAppMessageManager_allMessageEntriesWithCompletion___block_invoke_36;
  v9[3] = &unk_1E7BF9EC8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void __57__ICInAppMessageManager_allMessageEntriesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ICInAppMessageManager_allMessageEntriesWithCompletion___block_invoke_3;
  block[3] = &unk_1E7BF9E28;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __57__ICInAppMessageManager_allMessageEntriesWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to load all messages. err=%{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)stopSystemService
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping system service...", &v9, 0xCu);
  }

  self->_isSystemService = 0;
  if (self->_musicPrivacyObserverToken)
  {
    v4 = +[ICPrivacyInfo sharedPrivacyInfo];
    [v4 endObservingPrivacyAcknowledgementForIdentifier:@"Music" withToken:self->_musicPrivacyObserverToken];

    musicPrivacyObserverToken = self->_musicPrivacyObserverToken;
    self->_musicPrivacyObserverToken = 0;
  }

  if (self->_fitnessPrivacyObserverToken)
  {
    v6 = +[ICPrivacyInfo sharedPrivacyInfo];
    [v6 endObservingPrivacyAcknowledgementForIdentifier:@"FitnessPlus" withToken:self->_fitnessPrivacyObserverToken];

    fitnessPrivacyObserverToken = self->_fitnessPrivacyObserverToken;
    self->_fitnessPrivacyObserverToken = 0;
  }

  v8 = +[ICEnvironmentMonitor sharedMonitor];
  [v8 unregisterObserver:self];

  [(NSXPCListener *)self->_xpcServiceListener invalidate];
}

- (void)startSystemService
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting system service...", buf, 0xCu);
  }

  self->_isSystemService = 1;
  v4 = +[ICDeviceInfo currentDeviceInfo];
  if (([v4 isWatch] & 1) == 0 && (objc_msgSend(v4, "isAudioAccessory") & 1) == 0 && (objc_msgSend(v4, "isROSDevice") & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__handleUserIdentityStoreDidChangeNotification_ name:@"ICUserIdentityStoreDidChangeNotification" object:self->_identityStore];

    v6 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.itunescloud.in-app-message-service"];
    xpcServiceListener = self->_xpcServiceListener;
    self->_xpcServiceListener = v6;

    [(NSXPCListener *)self->_xpcServiceListener setDelegate:self];
    [(NSXPCListener *)self->_xpcServiceListener resume];
    [(ICInAppMessageManager *)self _schedulePeriodicUpdate];
    [(ICInAppMessageManager *)self _handleUserIdentityStoreDidChangeNotification:0];
    messageStore = self->_messageStore;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __43__ICInAppMessageManager_startSystemService__block_invoke;
    v20[3] = &unk_1E7BF3960;
    v20[4] = self;
    [(ICInAppMessageStore *)messageStore getStorePropertyForKey:@"lastSyncedOSVersion" completion:v20];
    v9 = +[ICEnvironmentMonitor sharedMonitor];
    [v9 registerObserver:self];

    v10 = +[ICPrivacyInfo sharedPrivacyInfo];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __43__ICInAppMessageManager_startSystemService__block_invoke_3;
    v19[3] = &unk_1E7BF3988;
    v19[4] = self;
    v11 = [v10 beginObservingPrivacyAcknowledgementForIdentifier:@"Music" handler:v19];
    musicPrivacyObserverToken = self->_musicPrivacyObserverToken;
    self->_musicPrivacyObserverToken = v11;

    v13 = +[ICDeviceInfo currentDeviceInfo];
    v14 = [v13 isMac];

    if ((v14 & 1) == 0)
    {
      v15 = +[ICPrivacyInfo sharedPrivacyInfo];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __43__ICInAppMessageManager_startSystemService__block_invoke_4;
      v18[3] = &unk_1E7BF3988;
      v18[4] = self;
      v16 = [v15 beginObservingPrivacyAcknowledgementForIdentifier:@"FitnessPlus" handler:v18];
      fitnessPrivacyObserverToken = self->_fitnessPrivacyObserverToken;
      self->_fitnessPrivacyObserverToken = v16;
    }
  }
}

void __43__ICInAppMessageManager_startSystemService__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[ICDeviceInfo currentDeviceInfo];
  v5 = [v4 buildVersion];

  if (!_NSIsNSString() || ([v3 isEqualToString:v5] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543874;
      v9 = v7;
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting a sync because the system version has changed from %{public}@ --> %{public}@", &v8, 0x20u);
    }

    [*(a1 + 32) syncMessagesWithCompletion:&__block_literal_global_29];
    [*(*(a1 + 32) + 40) updateStoreProperty:v5 forKey:@"lastSyncedOSVersion" completion:&__block_literal_global_31];
  }
}

uint64_t __43__ICInAppMessageManager_startSystemService__block_invoke_3(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return [*(result + 32) _performSyncRetryIfPending:1];
  }

  return result;
}

uint64_t __43__ICInAppMessageManager_startSystemService__block_invoke_4(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return [*(result + 32) _performSyncRetryIfPending:1];
  }

  return result;
}

- (ICInAppMessageManager)initWithMessageStore:(id)a3 identityStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = ICInAppMessageManager;
  v9 = [(ICInAppMessageManager *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messageStore, a3);
    objc_storeStrong(&v10->_identityStore, a4);
    v11 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v10->_operationQueue;
    v10->_operationQueue = v11;

    [(NSOperationQueue *)v10->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v10->_operationQueue setName:@"com.apple.iTunesCloud.ICInAppMessageManager.operationQueue"];
    [(NSOperationQueue *)v10->_operationQueue setQualityOfService:25];
    v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    downloadOperationQueue = v10->_downloadOperationQueue;
    v10->_downloadOperationQueue = v13;

    [(NSOperationQueue *)v10->_downloadOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v10->_downloadOperationQueue setName:@"com.apple.iTunesCloud.ICInAppMessageManager.downloadOperationQueue"];
    [(NSOperationQueue *)v10->_downloadOperationQueue setQualityOfService:17];
    v15 = dispatch_queue_create("com.apple.iTunesCloud.ICInAppMessageManager.accessQueue", 0);
    accessQueue = v10->_accessQueue;
    v10->_accessQueue = v15;

    v17 = dispatch_queue_create("com.apple.iTunesCloud.ICInAppMessageManager.accessQueue", MEMORY[0x1E69E96A8]);
    callbackQueue = v10->_callbackQueue;
    v10->_callbackQueue = v17;

    v19 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v19 addObserver:v10 selector:sel__handleICInAppMessagesDidChangeDistributedNotification_ name:@"com.apple.itunescloud.ICInAppMessagesDidChangeDistributedNotification" object:0];
  }

  return v10;
}

@end