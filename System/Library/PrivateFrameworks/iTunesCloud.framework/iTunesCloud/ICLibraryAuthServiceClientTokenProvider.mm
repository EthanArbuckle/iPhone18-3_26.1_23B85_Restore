@interface ICLibraryAuthServiceClientTokenProvider
+ (ICLibraryAuthServiceClientTokenProvider)sharedProvider;
- (BOOL)_isPrivacyAcknowledgementRequiredForAccountDSID:(id)d;
- (BOOL)_shouldStopBackgroundRefreshForError:(id)error;
- (BOOL)_updateEntriesForAccountsChanges;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DevicePresetTokenResult)_checkTokenPresetsForDSIDs:(SEL)ds forceRefresh:(id)refresh;
- (DevicePresetTokenResult)_devicePresetErrorForConfiguration:(SEL)configuration WithSpecifiedDSIDs:(id)ds;
- (DevicePresetTokenResult)_devicePresetForConfiguration:(SEL)configuration withDSIDs:(id)ds;
- (DevicePresetTokenResult)_devicePresetNonDiscriminatoryFailForConfiguration:(SEL)configuration;
- (DevicePresetTokenResult)_devicePresetNonDiscriminatorySucceedForConfiguration:(SEL)configuration DSIDsToUse:(id)use;
- (ICLibraryAuthServiceClientTokenProvider)init;
- (id)_clientConnection;
- (id)_loggableTokenCacheDictionary;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (id)_supportedInterfaceForXPCConnection;
- (id)cachedTokenAndResetCache:(BOOL)cache;
- (void)_addConnection:(id)connection;
- (void)_commitCache;
- (void)_handleLibraryAuthServiceClientTokenDidChangeDistributedNotification:(id)notification;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)notification;
- (void)_loadCache;
- (void)_refreshTokenForDSID:(id)d forExternalRequest:(BOOL)request completion:(id)completion;
- (void)_refreshTokensForDSIDs:(id)ds forExternalRequest:(BOOL)request completion:(id)completion;
- (void)_removeConnection:(id)connection;
- (void)_updateRefreshTimer;
- (void)_updateTokenCacheEntryForDSID:(id)d tokenResult:(id)result error:(id)error;
- (void)addTokenResult:(id)result forDSID:(id)d completion:(id)completion;
- (void)dealloc;
- (void)getAllTokenStatusForAssistantForcingRefresh:(BOOL)refresh completion:(id)completion;
- (void)getAllTokensForAssistantForcingRefresh:(BOOL)refresh completion:(id)completion;
- (void)getTokenForDSID:(id)d forceRefresh:(BOOL)refresh completion:(id)completion;
- (void)getTokenForcingRefresh:(BOOL)refresh completion:(id)completion;
- (void)getTokenResultForDSID:(id)d forceRefresh:(BOOL)refresh completion:(id)completion;
- (void)getTokenResultsForDSIDs:(id)ds forceRefresh:(BOOL)refresh completion:(id)completion;
- (void)getTokenStatusForDSIDs:(id)ds forcingRefresh:(BOOL)refresh completion:(id)completion;
- (void)getTokenStatusForcingRefresh:(BOOL)refresh completion:(id)completion;
- (void)startService;
- (void)stopService;
@end

@implementation ICLibraryAuthServiceClientTokenProvider

+ (ICLibraryAuthServiceClientTokenProvider)sharedProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ICLibraryAuthServiceClientTokenProvider_sharedProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedProvider_sOnceToken != -1)
  {
    dispatch_once(&sharedProvider_sOnceToken, block);
  }

  v2 = sharedProvider_sSharedProvider;

  return v2;
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__ICLibraryAuthServiceClientTokenProvider__removeConnection___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__ICLibraryAuthServiceClientTokenProvider__addConnection___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_sync(accessQueue, v7);
}

uint64_t __58__ICLibraryAuthServiceClientTokenProvider__addConnection___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (id)_supportedInterfaceForXPCConnection
{
  if (_supportedInterfaceForXPCConnection_onceToken_25319 != -1)
  {
    dispatch_once(&_supportedInterfaceForXPCConnection_onceToken_25319, &__block_literal_global_209_25320);
  }

  v3 = _supportedInterfaceForXPCConnection__supportedInterfaceForXPCConnection_25321;

  return v3;
}

uint64_t __78__ICLibraryAuthServiceClientTokenProvider__supportedInterfaceForXPCConnection__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CB1048];
  v1 = _supportedInterfaceForXPCConnection__supportedInterfaceForXPCConnection_25321;
  _supportedInterfaceForXPCConnection__supportedInterfaceForXPCConnection_25321 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  _supportedInterfaceForXPCConnection = [(ICLibraryAuthServiceClientTokenProvider *)self _supportedInterfaceForXPCConnection];
  [connectionCopy setExportedInterface:_supportedInterfaceForXPCConnection];
  [connectionCopy setExportedObject:self];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__ICLibraryAuthServiceClientTokenProvider_listener_shouldAcceptNewConnection___block_invoke;
  v16[3] = &unk_1E7BF6D98;
  objc_copyWeak(&v17, &location);
  objc_copyWeak(&v18, &from);
  [connectionCopy setInterruptionHandler:v16];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __78__ICLibraryAuthServiceClientTokenProvider_listener_shouldAcceptNewConnection___block_invoke_207;
  v13 = &unk_1E7BF6D98;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  [connectionCopy setInvalidationHandler:&v10];
  [(ICLibraryAuthServiceClientTokenProvider *)self _addConnection:connectionCopy, v10, v11, v12, v13];
  [connectionCopy resume];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __78__ICLibraryAuthServiceClientTokenProvider_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = WeakRetained;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection interrupted", &v5, 0xCu);
    }

    v4 = objc_loadWeakRetained((a1 + 40));
    if (v4)
    {
      [WeakRetained _removeConnection:v4];
    }
  }
}

void __78__ICLibraryAuthServiceClientTokenProvider_listener_shouldAcceptNewConnection___block_invoke_207(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = WeakRetained;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection invalidated", &v5, 0xCu);
    }

    v4 = objc_loadWeakRetained((a1 + 40));
    if (v4)
    {
      [WeakRetained _removeConnection:v4];
    }
  }
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)notification
{
  v4 = [ICAsyncBlockOperation alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__ICLibraryAuthServiceClientTokenProvider__handleUserIdentityStoreDidChangeNotification___block_invoke;
  v6[3] = &unk_1E7BF6C48;
  v6[4] = self;
  v5 = [(ICAsyncBlockOperation *)v4 initWithStartHandler:v6];
  [(ICAsyncBlockOperation *)v5 setName:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider._handleUserIdentityStoreDidChangeNotification"];
  [(NSOperationQueue *)self->_operationQueue addOperation:v5];
}

void __89__ICLibraryAuthServiceClientTokenProvider__handleUserIdentityStoreDidChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) _updateEntriesForAccountsChanges])
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Rescheduling a refresh due to account changes", &v7, 0xCu);
    }

    [*(a1 + 32) _updateRefreshTimer];
    v6 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v6 postNotificationName:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider._ICLibraryAuthServiceClientTokenDidChangeDistributedNotification" object:0];
  }

  [v3 finishWithError:0];
}

- (id)_loggableTokenCacheDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_tokenCache, "count")}];
  tokenCache = self->_tokenCache;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__ICLibraryAuthServiceClientTokenProvider__loggableTokenCacheDictionary__block_invoke;
  v7[3] = &unk_1E7BF6C98;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)tokenCache enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __72__ICLibraryAuthServiceClientTokenProvider__loggableTokenCacheDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = ICCreateLoggableValueForDSID(a2);
  [*(a1 + 32) setObject:v5 forKey:v6];
}

- (BOOL)_updateEntriesForAccountsChanges
{
  v60 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v31 = +[ICDeviceInfo currentDeviceInfo];
  supportsMultipleITunesAccounts = [v31 supportsMultipleITunesAccounts];
  v4 = +[ICMonitoredAccountStore sharedAccountStore];
  v47 = 0;
  v5 = [v4 allStoreAccountsWithError:&v47];
  v33 = v47;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __75__ICLibraryAuthServiceClientTokenProvider__updateEntriesForAccountsChanges__block_invoke;
  v45[3] = &__block_descriptor_33_e19_B16__0__ACAccount_8l;
  v46 = supportsMultipleITunesAccounts;
  v34 = [v5 msv_filter:v45];

  v32 = [v34 msv_map:&__block_literal_global_25339];
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _loggableTokenCacheDictionary = [(ICLibraryAuthServiceClientTokenProvider *)self _loggableTokenCacheDictionary];
    *buf = 138543874;
    selfCopy4 = self;
    v56 = 2114;
    v57 = _loggableTokenCacheDictionary;
    v58 = 2114;
    v59 = v32;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Reconciling cache entries %{public}@ with current account list %{public}@", buf, 0x20u);
  }

  if (v33)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v56 = 2114;
      v57 = v33;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to gather DSIDs from the account store to fetch tokens for. err=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v34, "count")}];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = v34;
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v10)
    {
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          ic_DSID = [v13 ic_DSID];
          [v8 addObject:ic_DSID];
          if ([v13 isAuthenticated])
          {
            v15 = [(NSMutableDictionary *)self->_tokenCache objectForKey:ic_DSID];
            v16 = v15 == 0;

            if (v16)
            {
              v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = ICCreateLoggableValueForDSID(ic_DSID);
                *buf = 138543618;
                selfCopy4 = self;
                v56 = 2112;
                v57 = v18;
                _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Pre-fetching library token for new account with DSID %@", buf, 0x16u);
              }

              [(ICLibraryAuthServiceClientTokenProvider *)self getTokenResultForDSID:ic_DSID forceRefresh:0 completion:&__block_literal_global_202_25343];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v10);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    allKeys = [(NSMutableDictionary *)self->_tokenCache allKeys];
    v20 = [allKeys copy];

    v21 = [v20 countByEnumeratingWithState:&v37 objects:v52 count:16];
    if (v21)
    {
      v22 = *v38;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v37 + 1) + 8 * j);
          if (([v8 containsObject:v24]& 1) == 0)
          {
            v25 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = ICCreateLoggableValueForDSID(v24);
              *buf = 138543618;
              selfCopy4 = self;
              v56 = 2112;
              v57 = v26;
              _os_log_impl(&dword_1B4491000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing token entry for non-existent or inactive account DSID %@", buf, 0x16u);
            }

            [(NSMutableDictionary *)self->_tokenCache removeObjectForKey:v24];
            *(v49 + 24) = 1;
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v37 objects:v52 count:16];
      }

      while (v21);
    }
  }

  v27 = [(ICLibraryAuthServiceClientTokenProvider *)self _isPrivacyAcknowledgementRequiredForAccountDSID:0];
  tokenCache = self->_tokenCache;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __75__ICLibraryAuthServiceClientTokenProvider__updateEntriesForAccountsChanges__block_invoke_203;
  v35[3] = &unk_1E7BF6D70;
  v36 = v27;
  v35[4] = &v48;
  [(NSMutableDictionary *)tokenCache enumerateKeysAndObjectsUsingBlock:v35];
  v29 = *(v49 + 24);

  _Block_object_dispose(&v48, 8);
  return v29 & 1;
}

uint64_t __75__ICLibraryAuthServiceClientTokenProvider__updateEntriesForAccountsChanges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ic_isLocalAccount])
  {
    v4 = 0;
  }

  else if (*(a1 + 32))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 ic_isActive];
  }

  return v4;
}

uint64_t __75__ICLibraryAuthServiceClientTokenProvider__updateEntriesForAccountsChanges__block_invoke_203(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [v11 shouldExcludeFromBackgroundRefresh];
  v5 = v11;
  if (v4)
  {
    v6 = [v11 lastError];
    v7 = v6;
    if ((*(a1 + 40) & 1) == 0)
    {
      v8 = [v6 domain];
      if ([v8 isEqualToString:@"ICError"])
      {
        v9 = [v7 code];

        if (v9 == -7007)
        {
          [v11 setShouldExcludeFromBackgroundRefresh:0];
          *(*(*(a1 + 32) + 8) + 24) = 1;
        }
      }

      else
      {
      }
    }

    v5 = v11;
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (BOOL)_isPrivacyAcknowledgementRequiredForAccountDSID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = [ICUserIdentity specificAccountWithDSID:dCopy];
    v5 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:v4];
  }

  else
  {
    v5 = +[ICPrivacyInfo sharedPrivacyInfo];
  }

  v6 = [v5 shouldBlockPersonalizedNetworkRequestsForIdentifier:@"Music"] && (objc_msgSend(v5, "privacyAcknowledgementRequiredForIdentifier:", @"TV") & 1) != 0;

  return v6;
}

- (void)_updateTokenCacheEntryForDSID:(id)d tokenResult:(id)result error:(id)error
{
  resultCopy = result;
  tokenCache = self->_tokenCache;
  errorCopy = error;
  dCopy = d;
  v11 = [(NSMutableDictionary *)tokenCache objectForKey:dCopy];
  if (!v11)
  {
    v11 = objc_alloc_init(ICLibraryAuthServiceClientTokenStatus);
  }

  if (resultCopy)
  {
    [(ICLibraryAuthServiceClientTokenStatus *)v11 setTokenResult:resultCopy];
  }

  [(ICLibraryAuthServiceClientTokenStatus *)v11 setShouldExcludeFromBackgroundRefresh:[(ICLibraryAuthServiceClientTokenProvider *)self _shouldStopBackgroundRefreshForError:errorCopy]];
  [(ICLibraryAuthServiceClientTokenStatus *)v11 setLastError:errorCopy];

  v12 = [MEMORY[0x1E695DF00] now];
  [v12 timeIntervalSinceReferenceDate];
  [(ICLibraryAuthServiceClientTokenStatus *)v11 setLastUpdateAttemptTime:?];

  [(NSMutableDictionary *)self->_tokenCache setObject:v11 forKey:dCopy];
}

- (BOOL)_shouldStopBackgroundRefreshForError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  v8 = 0;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v6 = [domain isEqualToString:@"ICError"];

    if (v6)
    {
      code = [v4 code];
      if ((code + 7403) < 4 || code == -7007)
      {
        v8 = 1;
      }
    }
  }

  return v8;
}

- (void)_updateRefreshTimer
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__25353;
  v24 = __Block_byref_object_dispose__25354;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__25353;
  v18 = __Block_byref_object_dispose__25354;
  v19 = 0;
  tokenCache = self->_tokenCache;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__ICLibraryAuthServiceClientTokenProvider__updateRefreshTimer__block_invoke;
  v13[3] = &unk_1E7BF6C70;
  v13[5] = &v20;
  v13[6] = &v14;
  v13[4] = self;
  [(NSMutableDictionary *)tokenCache enumerateKeysAndObjectsUsingBlock:v13];
  if (v21[5])
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v15[5];
      v6 = v21[5];
      *buf = 138543874;
      selfCopy = self;
      v30 = 2112;
      v31 = v5;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting timer to refresh library auth token for DSID %@ at %{public}@}", buf, 0x20u);
    }

    v7 = +[ICBGTaskScheduler sharedTaskScheduler];
    [v21[5] timeIntervalSinceNow];
    v9 = v8;
    v10 = v15[5];
    v26 = @"dsid";
    v27 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v7 scheduleTask:@"com.apple.itunescloud.ICLibraryAuthServiceClientTokenProvider.refresh_timer" afterDelay:v11 withUserData:v9];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__ICLibraryAuthServiceClientTokenProvider__updateRefreshTimer__block_invoke_187;
    v12[3] = &unk_1E7BF6CE8;
    v12[4] = self;
    [v7 registerForTask:@"com.apple.itunescloud.ICLibraryAuthServiceClientTokenProvider.refresh_timer" handler:v12];
  }

  else
  {
    v7 = +[ICBGTaskScheduler sharedTaskScheduler];
    [v7 cancelTask:@"com.apple.itunescloud.ICLibraryAuthServiceClientTokenProvider.refresh_timer"];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

void __62__ICLibraryAuthServiceClientTokenProvider__updateRefreshTimer__block_invoke(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (([v7 shouldExcludeFromBackgroundRefresh] & 1) == 0)
  {
    v11 = [v7 tokenResult];
    v12 = [v11 expirationDate];
    [v12 timeIntervalSinceReferenceDate];
    v14 = v13;
    [v7 lastUpdateAttemptTime];
    if (v15 != 0.0 && v14 < v15 + 600.0)
    {
      v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];

      v12 = v16;
    }

    if (!v12)
    {
      goto LABEL_13;
    }

    v17 = *(a1[5] + 8);
    v18 = *(v17 + 40);
    if (v18)
    {
      if ([v18 compare:v12] != 1)
      {
LABEL_13:

        goto LABEL_14;
      }

      v17 = *(a1[5] + 8);
    }

    objc_storeStrong((v17 + 40), v12);
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    goto LABEL_13;
  }

  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = [v7 lastError];
    v19 = 138543874;
    v20 = v9;
    v21 = 2112;
    v22 = v6;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping background refresh of DSID %@. last error: %{public}@}", &v19, 0x20u);
  }

LABEL_14:
}

void __62__ICLibraryAuthServiceClientTokenProvider__updateRefreshTimer__block_invoke_187(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 ic_numberValueForKey:@"dsid"];
  v5 = [ICAsyncBlockOperation alloc];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __62__ICLibraryAuthServiceClientTokenProvider__updateRefreshTimer__block_invoke_2;
  v12 = &unk_1E7BF6CC0;
  v6 = *(a1 + 32);
  v13 = v4;
  v14 = v6;
  v7 = v4;
  v8 = [(ICAsyncBlockOperation *)v5 initWithStartHandler:&v9];
  [(ICAsyncBlockOperation *)v8 setName:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider.tokenRefreshTimer", v9, v10, v11, v12];
  [*(*(a1 + 32) + 16) addOperation:v8];
}

void __62__ICLibraryAuthServiceClientTokenProvider__updateRefreshTimer__block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) longLongValue] && objc_msgSend(*(*(a1 + 40) + 24), "count") < 2)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Refreshing token for DSID %@", buf, 0x16u);
    }

    v15 = a1 + 32;
    v13 = *(a1 + 32);
    v14 = *(v15 + 8);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __62__ICLibraryAuthServiceClientTokenProvider__updateRefreshTimer__block_invoke_190;
    v18[3] = &unk_1E7BF6980;
    v19 = v3;
    [v14 _refreshTokenForDSID:v13 forExternalRequest:0 completion:v18];
    v8 = v19;
  }

  else
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138543362;
      v25 = v5;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing bulk token refresh", buf, 0xCu);
    }

    v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(*(a1 + 40) + 24), "count")}];
    v7 = *(*(a1 + 40) + 24);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __62__ICLibraryAuthServiceClientTokenProvider__updateRefreshTimer__block_invoke_188;
    v22[3] = &unk_1E7BF6C98;
    v8 = v6;
    v23 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:v22];
    if ([v8 count])
    {
      v9 = *(a1 + 40);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __62__ICLibraryAuthServiceClientTokenProvider__updateRefreshTimer__block_invoke_189;
      v20[3] = &unk_1E7BF6A20;
      v21 = v3;
      [v9 _refreshTokensForDSIDs:v8 forExternalRequest:0 completion:v20];
    }

    else
    {
      v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        *buf = 138543362;
        v25 = v17;
        _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ No DSIDs available to refresh - ignoring", buf, 0xCu);
      }

      [v3 finishWithError:0];
    }
  }
}

void __62__ICLibraryAuthServiceClientTokenProvider__updateRefreshTimer__block_invoke_188(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 shouldExcludeFromBackgroundRefresh] & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)_commitCache
{
  if (!self->_isService)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICLibraryAuthServiceClientTokenProvider.m" lineNumber:1025 description:@"Committing the cache is not allowed from a client"];
  }

  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_tokenCache, "count")}];
  tokenCache = self->_tokenCache;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __55__ICLibraryAuthServiceClientTokenProvider__commitCache__block_invoke;
  v13 = &unk_1E7BF8B48;
  selfCopy = self;
  v15 = v3;
  v5 = v3;
  [(NSMutableDictionary *)tokenCache enumerateKeysAndObjectsUsingBlock:&v10];
  v6 = [ICDefaults standardDefaults:v10];
  v7 = [v5 copy];
  [v6 setAuthServiceClientTokenCache:v7];
}

void __55__ICLibraryAuthServiceClientTokenProvider__commitCache__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ACC8];
  v12 = 0;
  v6 = a2;
  v7 = [v5 archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v12];
  v8 = v12;
  v9 = [v6 stringValue];

  if (v8)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to serialize token result to cache. err=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    [*(a1 + 40) setObject:v7 forKey:v9];
  }
}

- (DevicePresetTokenResult)_devicePresetForConfiguration:(SEL)configuration withDSIDs:(id)ds
{
  dsCopy = ds;
  v9 = a5;
  retstr->var0 = 0;
  retstr->var1 = 0;
  if (!dsCopy)
  {
    p_var2 = &retstr->var2;
    goto LABEL_5;
  }

  [(ICLibraryAuthServiceClientTokenProvider *)self _devicePresetNonDiscriminatoryFailForConfiguration:dsCopy];
  retstr->var0 = v12;
  retstr->var1 = v13;
  retstr->var2 = v14;
  p_var2 = &retstr->var2;
  if (!v14)
  {
    [(ICLibraryAuthServiceClientTokenProvider *)self _devicePresetNonDiscriminatorySucceedForConfiguration:dsCopy DSIDsToUse:v9];
    retstr->var0 = v12;

    retstr->var1 = v13;
    retstr->var2 = v14;
    [(ICLibraryAuthServiceClientTokenProvider *)self _devicePresetErrorForConfiguration:dsCopy WithSpecifiedDSIDs:v9];
    retstr->var0 = 0;

    retstr->var1 = 0;
    retstr->var2 = v14;
LABEL_5:
    *p_var2 = 0;
  }

  return result;
}

- (DevicePresetTokenResult)_devicePresetErrorForConfiguration:(SEL)configuration WithSpecifiedDSIDs:(id)ds
{
  v20 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v8 = a5;
  retstr->var0 = 0;
  retstr->var1 = 0;
  errorDSIDs = [dsCopy errorDSIDs];
  if ([errorDSIDs count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = *v16;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v10);
          }

          if ([errorDSIDs containsObject:{*(*(&v15 + 1) + 8 * v13), v15}])
          {
            retstr->var1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
            if (!retstr->var2)
            {
              retstr->var2 = 1;
            }

            goto LABEL_15;
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  retstr->var2 = 0;
LABEL_15:

  return result;
}

- (DevicePresetTokenResult)_devicePresetNonDiscriminatorySucceedForConfiguration:(SEL)configuration DSIDsToUse:(id)use
{
  v41 = *MEMORY[0x1E69E9840];
  useCopy = use;
  v26 = retstr;
  v27 = a5;
  retstr->var0 = 0;
  retstr->var1 = 0;
  v25 = useCopy;
  if ([useCopy allDSIDsShouldSucceed])
  {
    v30 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v27, "count")}];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v27;
    v8 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v8)
    {
      v29 = *v33;
      do
      {
        v31 = v8;
        for (i = 0; i != v31; ++i)
        {
          if (*v33 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          v38[0] = @"generatedAtMillis";
          v11 = MEMORY[0x1E696AD98];
          date = [MEMORY[0x1E695DF00] date];
          [date timeIntervalSince1970];
          v14 = [v11 numberWithDouble:v13 * 1000.0];
          v39[0] = v14;
          v39[1] = &unk_1F2C92230;
          v38[1] = @"lifespanMillis";
          v38[2] = @"timeToLiveMillis";
          v39[2] = &unk_1F2C92248;
          v38[3] = @"token";
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];
          v39[3] = uUIDString;
          v38[4] = @"tokenID";
          v36[0] = @"deviceGUID";
          v17 = +[ICDeviceInfo currentDeviceInfo];
          deviceGUID = [v17 deviceGUID];
          v36[1] = @"dsid";
          v37[0] = deviceGUID;
          v37[1] = v10;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
          v39[4] = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:5];

          v21 = [[ICLibraryAuthServiceClientTokenResult alloc] initWithResponseDictionary:v20];
          [v30 setObject:v21 forKey:v10];
        }

        v8 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v8);
    }

    v22 = v26;
    v26->var0 = v30;
    v23 = 1;
  }

  else
  {
    v23 = 0;
    v22 = retstr;
  }

  v22->var2 = v23;

  return result;
}

- (DevicePresetTokenResult)_devicePresetNonDiscriminatoryFailForConfiguration:(SEL)configuration
{
  v5 = a4;
  retstr->var0 = 0;
  retstr->var1 = 0;
  v8 = v5;
  if ([v5 allDSIDsShouldError])
  {
    retstr->var1 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  retstr->var2 = v6;

  return result;
}

- (DevicePresetTokenResult)_checkTokenPresetsForDSIDs:(SEL)ds forceRefresh:(id)refresh
{
  v5 = a5;
  refreshCopy = refresh;
  retstr->var0 = 0;
  retstr->var1 = 0;
  v9 = +[ICDefaults standardDefaults];
  presetsFound = [v9 presetsFound];

  if (presetsFound)
  {
    +[ICDefaults standardDefaults];
    if (v5)
      v11 = {;
      [v11 debugRefreshConfiguration];
    }

    else
      v11 = {;
      [v11 debugFetchConfiguration];
    }
    v12 = ;
    [(ICLibraryAuthServiceClientTokenProvider *)self _devicePresetForConfiguration:v12 withDSIDs:refreshCopy];
    *&retstr->var0 = v14;
    retstr->var2 = v15;
  }

  else
  {
    retstr->var2 = 0;
  }

  return result;
}

- (void)_loadCache
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[ICDefaults standardDefaults];
  authServiceClientTokenCache = [v3 authServiceClientTokenCache];

  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(authServiceClientTokenCache, "count")}];
  tokenCache = self->_tokenCache;
  self->_tokenCache = v5;

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__ICLibraryAuthServiceClientTokenProvider__loadCache__block_invoke;
  v9[3] = &unk_1E7BF7900;
  v9[4] = self;
  [authServiceClientTokenCache enumerateKeysAndObjectsUsingBlock:v9];
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _loggableTokenCacheDictionary = [(ICLibraryAuthServiceClientTokenProvider *)self _loggableTokenCacheDictionary];
    *buf = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = _loggableTokenCacheDictionary;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Loaded cached tokens: %{public}@", buf, 0x16u);
  }
}

void __53__ICLibraryAuthServiceClientTokenProvider__loadCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (_NSIsNSString() && _NSIsNSData() && [v5 longLongValue] >= 1)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "longLongValue")}];
    v15 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v15];
    v9 = v15;
    v10 = v9;
    if (v8)
    {
      if (v9)
      {
        goto LABEL_6;
      }
    }

    else
    {

      v14 = 0;
      v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v14];
      v10 = v14;
      if (v13)
      {
        v8 = objc_alloc_init(ICLibraryAuthServiceClientTokenStatus);
        [(ICLibraryAuthServiceClientTokenStatus *)v8 setTokenResult:v13];
      }

      else
      {
        v8 = 0;
      }

      if (v10)
      {
LABEL_6:
        v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 32);
          *buf = 138543618;
          v17 = v12;
          v18 = 2114;
          v19 = v10;
          _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to deserialize cached token result data. err=%{public}@", buf, 0x16u);
        }

LABEL_15:
        goto LABEL_16;
      }
    }

    if (v8)
    {
      [*(*(a1 + 32) + 24) setObject:v8 forKey:v7];
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _clientConnection = [(ICLibraryAuthServiceClientTokenProvider *)self _clientConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__ICLibraryAuthServiceClientTokenProvider__remoteObjectProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7BFA490;
  v9[4] = self;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_clientConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __78__ICLibraryAuthServiceClientTokenProvider__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to get remote object proxy. err=%{public}@", &v8, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 56);
  *(v6 + 56) = 0;

  (*(*(a1 + 40) + 16))();
}

- (id)_clientConnection
{
  v25 = *MEMORY[0x1E69E9840];
  xpcClientConnection = self->_xpcClientConnection;
  if (!xpcClientConnection)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Connecting to token provider service", buf, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.itunescloud.library-auth-token-provider" options:0];
    v6 = self->_xpcClientConnection;
    self->_xpcClientConnection = v5;

    [(NSXPCConnection *)self->_xpcClientConnection setExportedObject:self];
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CB1048];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    [v7 setClasses:v11 forSelector:sel_getTokenResultsForDSIDs_forceRefresh_completion_ argumentIndex:0 ofReply:1];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    [v7 setClasses:v15 forSelector:sel_getTokenStatusForDSIDs_forcingRefresh_completion_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)self->_xpcClientConnection setRemoteObjectInterface:v7];
    objc_initWeak(buf, self);
    v16 = self->_xpcClientConnection;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __60__ICLibraryAuthServiceClientTokenProvider__clientConnection__block_invoke;
    v21[3] = &unk_1E7BFA328;
    objc_copyWeak(&v22, buf);
    [(NSXPCConnection *)v16 setInterruptionHandler:v21];
    v17 = self->_xpcClientConnection;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__ICLibraryAuthServiceClientTokenProvider__clientConnection__block_invoke_151;
    v19[3] = &unk_1E7BFA328;
    objc_copyWeak(&v20, buf);
    [(NSXPCConnection *)v17 setInvalidationHandler:v19];
    [(NSXPCConnection *)self->_xpcClientConnection resume];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);

    xpcClientConnection = self->_xpcClientConnection;
  }

  return xpcClientConnection;
}

void __60__ICLibraryAuthServiceClientTokenProvider__clientConnection__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138543362;
    v4 = WeakRetained;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ client connection interrupted", &v3, 0xCu);
  }
}

void __60__ICLibraryAuthServiceClientTokenProvider__clientConnection__block_invoke_151(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = WeakRetained;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ client connection invalidated", &v4, 0xCu);
  }

  v3 = WeakRetained[7];
  WeakRetained[7] = 0;
}

- (void)_handleLibraryAuthServiceClientTokenDidChangeDistributedNotification:(id)notification
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ got change notification", buf, 0xCu);
  }

  v5 = [ICAsyncBlockOperation alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __112__ICLibraryAuthServiceClientTokenProvider__handleLibraryAuthServiceClientTokenDidChangeDistributedNotification___block_invoke;
  v7[3] = &unk_1E7BF6C48;
  v7[4] = self;
  v6 = [(ICAsyncBlockOperation *)v5 initWithStartHandler:v7];
  [(ICAsyncBlockOperation *)v6 setName:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider._handleLibraryAuthServiceClientTokenDidChangeDistributedNotification"];
  [(NSOperationQueue *)self->_operationQueue addOperation:v6];
}

void __112__ICLibraryAuthServiceClientTokenProvider__handleLibraryAuthServiceClientTokenDidChangeDistributedNotification___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((*(*(a1 + 32) + 32) & 1) == 0)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Clearing token cache for external change notification", &v7, 0xCu);
    }

    [*(*(a1 + 32) + 24) removeAllObjects];
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"ICLibraryAuthServiceClientTokenDidChangeNotification" object:0];

  [v3 finishWithError:0];
}

- (void)_refreshTokensForDSIDs:(id)ds forExternalRequest:(BOOL)request completion:(id)completion
{
  requestCopy = request;
  v72 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = dsCopy;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Refreshing tokens for DSIDs %@", buf, 0x16u);
  }

  if (requestCopy)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      _loggableTokenCacheDictionary = [(ICLibraryAuthServiceClientTokenProvider *)self _loggableTokenCacheDictionary];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = _loggableTokenCacheDictionary;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Current token status: %{public}@", buf, 0x16u);
    }
  }

  v9 = +[ICUserIdentityStore defaultIdentityStore];
  v10 = +[ICUserIdentity activeAccount];
  v34 = [v9 DSIDForUserIdentity:v10 outError:0];

  if ([v34 longLongValue] && !-[ICLibraryAuthServiceClientTokenProvider _isPrivacyAcknowledgementRequiredForAccountDSID:](self, "_isPrivacyAcknowledgementRequiredForAccountDSID:", 0))
  {
    if (requestCopy)
    {
      v27 = +[ICDeviceInfo currentDeviceInfo];
      if ([v27 isAudioAccessory])
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }
    }

    else
    {
      v28 = 1;
    }

    v29 = [ICStoreRequestContext alloc];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_2_82;
    v44[3] = &__block_descriptor_40_e31_v16__0__ICStoreRequestContext_8l;
    v44[4] = v28;
    v30 = [(ICStoreRequestContext *)v29 initWithBlock:v44];
    v31 = [[ICLibraryAuthServiceBulkClientTokenRequest alloc] initWithStoreRequestContext:v30 accountDSIDs:dsCopy];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_3;
    v40[3] = &unk_1E7BF6C20;
    v40[4] = self;
    v41 = dsCopy;
    v42 = completionCopy;
    v43 = v28;
    v32 = completionCopy;
    [(ICLibraryAuthServiceBulkClientTokenRequest *)v31 performRequestWithResponseHandler:v40];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Not performing bulk refresh because we couldn't find an active account or its not in good standing", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v69 = __Block_byref_object_copy__25353;
    v70 = __Block_byref_object_dispose__25354;
    v71 = 0;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x2020000000;
    v62 = 0;
    v12 = dispatch_group_create();
    queue = dispatch_queue_create("com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider._refreshTokensForDSIDs.resultsGroup", 0);
    v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = dsCopy;
    v14 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v14)
    {
      v15 = *v58;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v58 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v57 + 1) + 8 * i);
          v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = ICCreateLoggableValueForDSID(v17);
            *v63 = 138543618;
            selfCopy = self;
            v65 = 2114;
            v66 = v19;
            _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching token for DSID %{public}@", v63, 0x16u);
          }

          if (requestCopy)
          {
            v20 = +[ICDeviceInfo currentDeviceInfo];
            if ([v20 isAudioAccessory])
            {
              v21 = 2;
            }

            else
            {
              v21 = 1;
            }
          }

          else
          {
            v21 = 1;
          }

          v22 = [ICStoreRequestContext alloc];
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke;
          v56[3] = &unk_1E7BF6AE8;
          v56[4] = v17;
          v56[5] = v21;
          v23 = [(ICStoreRequestContext *)v22 initWithBlock:v56];
          dispatch_group_enter(v12);
          v24 = [[ICLibraryAuthServiceClientTokenRequest alloc] initWithStoreRequestContext:v23];
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_2;
          v50[3] = &unk_1E7BF6B60;
          v50[4] = self;
          v50[5] = v17;
          v51 = queue;
          v54 = buf;
          v52 = v13;
          v55 = v61;
          v53 = v12;
          [(ICLibraryAuthServiceClientTokenRequest *)v24 performRequestWithResponseHandler:v50];
        }

        v14 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v14);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_81;
    block[3] = &unk_1E7BF6B88;
    v47 = completionCopy;
    v48 = v61;
    block[4] = self;
    v46 = v13;
    v49 = buf;
    v25 = completionCopy;
    v26 = v13;
    dispatch_group_notify(v12, queue, block);

    _Block_object_dispose(v61, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [ICUserIdentity specificAccountWithDSID:v3];
  [v6 setIdentity:v4];

  v5 = [(ICURLResponseAuthenticationProvider *)[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:*(a1 + 40)];
  [v6 setAuthenticationProvider:v5];

  [v6 setAllowsExpiredBags:1];
}

void __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 tokenResult];
  v7 = v5;
  if (!(v5 | v6))
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = ICCreateLoggableValueForDSID(*(a1 + 40));
      *buf = 138543618;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Token result missing from response for DSID %{public}@", buf, 0x16u);
    }

    v7 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7102 debugDescription:@"token result missing from response"];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_80;
  block[3] = &unk_1E7BF6B38;
  v17 = *(a1 + 32);
  v18 = v6;
  v19 = v7;
  v21 = *(a1 + 72);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 80);
  v20 = v12;
  v22 = v13;
  v14 = v7;
  v15 = v6;
  dispatch_sync(v11, block);
  dispatch_group_leave(*(a1 + 64));
}

uint64_t __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_81(uint64_t a1)
{
  [*(a1 + 32) _commitCache];
  [*(a1 + 32) _updateRefreshTimer];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v2 postNotificationName:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider._ICLibraryAuthServiceClientTokenDidChangeDistributedNotification" object:0];
  }

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if ([v4 count])
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(*(a1 + 64) + 8) + 40);
  }

  v6 = *(v3 + 16);

  return v6(v3, v4, v5);
}

void __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_2_82(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[ICUserIdentity activeAccount];
  [v5 setIdentity:v3];

  v4 = [(ICURLResponseAuthenticationProvider *)[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:*(a1 + 32)];
  [v5 setAuthenticationProvider:v4];

  [v5 setAllowsExpiredBags:1];
  [v5 setPersonalizationStyle:2];
}

void __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v31 = a2;
  v32 = a3;
  if (v32)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138543874;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2114;
      v69 = v32;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch new tokens for DSIDs %@. err=%{public}@", buf, 0x20u);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v57 objects:v72 count:16];
    if (v9)
    {
      v10 = *v58;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v58 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [*(a1 + 32) _updateTokenCacheEntryForDSID:*(*(&v57 + 1) + 8 * i) tokenResult:0 error:v32];
        }

        v9 = [v8 countByEnumeratingWithState:&v57 objects:v72 count:16];
      }

      while (v9);
    }

    [*(a1 + 32) _commitCache];
    [*(a1 + 32) _updateRefreshTimer];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v69 = __Block_byref_object_copy__25353;
    v70 = __Block_byref_object_dispose__25354;
    v71 = 0;
    v55[0] = 0;
    v55[1] = v55;
    v55[2] = 0x2020000000;
    v56 = 0;
    v12 = dispatch_group_create();
    queue = dispatch_queue_create("com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider._refreshTokensForDSIDs.resultsGroup", 0);
    v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = *(a1 + 40);
    v14 = [obj countByEnumeratingWithState:&v51 objects:v67 count:16];
    if (v14)
    {
      v15 = *v52;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v51 + 1) + 8 * j);
          dispatch_group_enter(v12);
          v18 = [v31 tokenResultForAccountDSID:v17];
          v19 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            if (v20)
            {
              v21 = *(a1 + 32);
              *v61 = 138543874;
              v62 = v21;
              v63 = 2112;
              v64 = v17;
              v65 = 2114;
              v66 = v18;
              _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ fetched new token result for DSID %@: %{public}@", v61, 0x20u);
            }

            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_88;
            block[3] = &unk_1E7BF6BF8;
            v39 = v13;
            v40 = v18;
            v41 = v17;
            v42 = *(a1 + 32);
            v43 = v55;
            dispatch_sync(queue, block);
            dispatch_group_leave(v12);
          }

          else
          {
            if (v20)
            {
              v22 = *(a1 + 32);
              *v61 = 138543618;
              v62 = v22;
              v63 = 2112;
              v64 = v17;
              _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ No token result for DSID %@ - attempting to fetch it individually", v61, 0x16u);
            }

            v23 = [ICStoreRequestContext alloc];
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v50[2] = __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_85;
            v50[3] = &unk_1E7BF6AE8;
            v24 = *(a1 + 56);
            v50[4] = v17;
            v50[5] = v24;
            v25 = [(ICStoreRequestContext *)v23 initWithBlock:v50];
            v26 = [[ICLibraryAuthServiceClientTokenRequest alloc] initWithStoreRequestContext:v25];
            v44[0] = MEMORY[0x1E69E9820];
            v44[1] = 3221225472;
            v44[2] = __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_2_86;
            v44[3] = &unk_1E7BF6B60;
            v44[4] = *(a1 + 32);
            v44[5] = v17;
            v45 = queue;
            v48 = buf;
            v46 = v13;
            v49 = v55;
            v47 = v12;
            [(ICLibraryAuthServiceClientTokenRequest *)v26 performRequestWithResponseHandler:v44];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v51 objects:v67 count:16];
      }

      while (v14);
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_2_89;
    v33[3] = &unk_1E7BF6B88;
    v33[4] = *(a1 + 32);
    v36 = v55;
    v27 = *(a1 + 48);
    v34 = v13;
    v35 = v27;
    v37 = buf;
    v28 = v13;
    dispatch_group_notify(v12, queue, v33);

    _Block_object_dispose(v55, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_85(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [ICUserIdentity specificAccountWithDSID:v3];
  [v6 setIdentity:v4];

  v5 = [(ICURLResponseAuthenticationProvider *)[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:*(a1 + 40)];
  [v6 setAuthenticationProvider:v5];

  [v6 setAllowsExpiredBags:1];
}

void __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_2_86(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 tokenResult];
  v7 = v5;
  if (!(v5 | v6))
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138543618;
      v27 = v9;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Token result missing from response for DSID %@", buf, 0x16u);
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_87;
  v18[3] = &unk_1E7BF6BD0;
  v19 = *(a1 + 32);
  v20 = v6;
  v21 = v5;
  v11 = *(a1 + 72);
  v22 = v7;
  v24 = v11;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 80);
  v23 = v13;
  v25 = v14;
  v15 = v7;
  v16 = v5;
  v17 = v6;
  dispatch_sync(v12, v18);
  dispatch_group_leave(*(a1 + 64));
}

uint64_t __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_88(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKey:*(a1 + 48)];
  result = [*(a1 + 56) _updateTokenCacheEntryForDSID:*(a1 + 48) tokenResult:*(a1 + 40) error:0];
  *(*(*(a1 + 64) + 8) + 24) = 1;
  return result;
}

uint64_t __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_2_89(uint64_t a1)
{
  [*(a1 + 32) _commitCache];
  [*(a1 + 32) _updateRefreshTimer];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v2 postNotificationName:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider._ICLibraryAuthServiceClientTokenDidChangeDistributedNotification" object:0];
  }

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if ([v4 count])
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(*(a1 + 64) + 8) + 40);
  }

  v6 = *(v3 + 16);

  return v6(v3, v4, v5);
}

void __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_87(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _updateTokenCacheEntryForDSID:*(a1 + 40) tokenResult:*(a1 + 48) error:*(a1 + 56)];
  v2 = *(a1 + 64);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 56);
      v11 = 138543874;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch new token for DSID %@. err=%{public}@", &v11, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(a1 + 64));
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = 138543874;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ fetched new token result for DSID %@: %{public}@", &v11, 0x20u);
    }

    [*(a1 + 72) setObject:*(a1 + 48) forKey:*(a1 + 40)];
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }
}

void __96__ICLibraryAuthServiceClientTokenProvider__refreshTokensForDSIDs_forExternalRequest_completion___block_invoke_80(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _updateTokenCacheEntryForDSID:*(a1 + 40) tokenResult:*(a1 + 48) error:*(a1 + 56)];
  v2 = *(a1 + 56);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = ICCreateLoggableValueForDSID(*(a1 + 40));
      v7 = *(a1 + 56);
      v11 = 138543874;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch new token for DSID %{public}@. err=%{public}@", &v11, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 56));
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = ICCreateLoggableValueForDSID(*(a1 + 40));
      v10 = *(a1 + 48);
      v11 = 138543874;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ fetched new token result for DSID %{public}@: %{public}@", &v11, 0x20u);
    }

    [*(a1 + 64) setObject:*(a1 + 48) forKey:*(a1 + 40)];
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }
}

- (void)_refreshTokenForDSID:(id)d forExternalRequest:(BOOL)request completion:(id)completion
{
  requestCopy = request;
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Refreshing token for DSID %@", buf, 0x16u);
  }

  if (requestCopy)
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      _loggableTokenCacheDictionary = [(ICLibraryAuthServiceClientTokenProvider *)self _loggableTokenCacheDictionary];
      *buf = 138543618;
      selfCopy3 = self;
      v29 = 2114;
      v30 = _loggableTokenCacheDictionary;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Current token status: %{public}@", buf, 0x16u);
    }

    if (![(ICLibraryAuthServiceClientTokenProvider *)self _isPrivacyAcknowledgementRequiredForAccountDSID:dCopy])
    {
      v13 = +[ICDeviceInfo currentDeviceInfo];
      if ([v13 isAudioAccessory])
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      goto LABEL_16;
    }
  }

  else if (![(ICLibraryAuthServiceClientTokenProvider *)self _isPrivacyAcknowledgementRequiredForAccountDSID:dCopy])
  {
    v14 = 1;
LABEL_16:
    v17 = [ICStoreRequestContext alloc];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __94__ICLibraryAuthServiceClientTokenProvider__refreshTokenForDSID_forExternalRequest_completion___block_invoke;
    v24[3] = &unk_1E7BF6AE8;
    v18 = dCopy;
    v25 = v18;
    v26 = v14;
    v19 = [(ICStoreRequestContext *)v17 initWithBlock:v24];
    v20 = [[ICLibraryAuthServiceClientTokenRequest alloc] initWithStoreRequestContext:v19];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __94__ICLibraryAuthServiceClientTokenProvider__refreshTokenForDSID_forExternalRequest_completion___block_invoke_2;
    v21[3] = &unk_1E7BF6B10;
    v21[4] = self;
    v22 = v18;
    v23 = completionCopy;
    [(ICLibraryAuthServiceClientTokenRequest *)v20 performRequestWithResponseHandler:v21];

    v16 = v25;
    goto LABEL_17;
  }

  v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v29 = 2112;
    v30 = dCopy;
    _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Not refreshing token for DSID %@ because privacy acknowledgement is required", buf, 0x16u);
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7007 userInfo:0];
  [(ICLibraryAuthServiceClientTokenProvider *)self _updateTokenCacheEntryForDSID:dCopy tokenResult:0 error:v16];
  [(ICLibraryAuthServiceClientTokenProvider *)self _commitCache];
  [(ICLibraryAuthServiceClientTokenProvider *)self _updateRefreshTimer];
  (*(completionCopy + 2))(completionCopy, 0, v16);
LABEL_17:
}

void __94__ICLibraryAuthServiceClientTokenProvider__refreshTokenForDSID_forExternalRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [ICUserIdentity specificAccountWithDSID:v3];
  [v6 setIdentity:v4];

  v5 = [(ICURLResponseAuthenticationProvider *)[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:*(a1 + 40)];
  [v6 setAuthenticationProvider:v5];

  [v6 setAllowsExpiredBags:1];
  [v6 setPersonalizationStyle:2];
}

void __94__ICLibraryAuthServiceClientTokenProvider__refreshTokenForDSID_forExternalRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 tokenResult];
  v7 = v5;
  if (!(v5 | v6))
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Token result missing from response for DSID %@", &v15, 0x16u);
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
  }

  v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = 138544130;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2114;
    v20 = v7;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Finished fetching new token for DSID %@. err=%{public}@. token=%@", &v15, 0x2Au);
  }

  [*(a1 + 32) _updateTokenCacheEntryForDSID:*(a1 + 40) tokenResult:v6 error:v7];
  [*(a1 + 32) _commitCache];
  [*(a1 + 32) _updateRefreshTimer];
  if (!v7)
  {
    v14 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v14 postNotificationName:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider._ICLibraryAuthServiceClientTokenDidChangeDistributedNotification" object:0];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getAllTokenStatusForAssistantForcingRefresh:(BOOL)refresh completion:(id)completion
{
  refreshCopy = refresh;
  v43 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = +[ICUserIdentityStore defaultIdentityStore];
  _unsafeBackend = [v6 _unsafeBackend];

  v37 = 0;
  v8 = [_unsafeBackend allStoreAccountsWithError:&v37];
  v9 = v37;
  if (v9)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v41 = 2114;
      v42 = v9;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to gather DSIDs from the account store to fetch tokens for. err=%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    v24 = refreshCopy;
    v25 = _unsafeBackend;
    v26 = completionCopy;
    v11 = [MEMORY[0x1E695DFA8] set];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          if ([v17 isAuthenticated] && (objc_msgSend(v17, "ic_homeUserIdentifiers"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v19))
          {
            ic_DSID = [v17 ic_DSID];
            [v11 addObject:ic_DSID];

            ic_DSID2 = [v17 ic_DSID];
            [dictionary setObject:v17 forKeyedSubscript:ic_DSID2];
          }

          else
          {
            ic_DSID2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(ic_DSID2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              selfCopy2 = self;
              v41 = 2112;
              v42 = v17;
              _os_log_impl(&dword_1B4491000, ic_DSID2, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping account %@ because either the DSID is missing or it has no home user ids", buf, 0x16u);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __98__ICLibraryAuthServiceClientTokenProvider_getAllTokenStatusForAssistantForcingRefresh_completion___block_invoke;
      v29[3] = &unk_1E7BF9560;
      v29[4] = self;
      completionCopy = v26;
      v32 = v26;
      v30 = v11;
      v22 = dictionary;
      v31 = dictionary;
      [(ICLibraryAuthServiceClientTokenProvider *)self getTokenStatusForDSIDs:v30 forcingRefresh:v24 completion:v29];

      v9 = 0;
      _unsafeBackend = v25;
    }

    else
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      completionCopy = v26;
      (v26)[2](v26, dictionary2, 0);

      v9 = 0;
      _unsafeBackend = v25;
      v22 = dictionary;
    }
  }
}

void __98__ICLibraryAuthServiceClientTokenProvider_getAllTokenStatusForAssistantForcingRefresh_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v28 = a3;
  if (v28)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = v28;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch all client tokens. err=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v62 = __Block_byref_object_copy__25353;
    v63 = __Block_byref_object_dispose__25354;
    v64 = 0;
    queue = dispatch_queue_create("com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider.allTokens", 0);
    v7 = dispatch_group_create();
    v33 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = *(a1 + 40);
    v8 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v8)
    {
      v30 = *v52;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v52 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v51 + 1) + 8 * i);
          v35 = [v4 objectForKey:v9];
          if (!v35 || ([v35 tokenResult], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "token"), v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v10, v12))
          {
            v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v25 = *(a1 + 32);
              *v56 = 138543618;
              v57 = v25;
              v58 = 2112;
              v59 = v9;
              _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "%{public}@ No token result for DSID %@ in bulk response - this will be treated as an error", v56, 0x16u);
            }
          }

          else
          {
            v13 = [*(a1 + 48) objectForKey:v9];
            v14 = [v13 ic_homeUserIdentifiers];
            v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = *(a1 + 32);
              v17 = [v14 count];
              *v56 = 138543618;
              v57 = v16;
              v58 = 2050;
              v59 = v17;
              _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ iterating through home %{public}lu identifiers", v56, 0x16u);
            }

            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v32 = v14;
            v18 = [v32 countByEnumeratingWithState:&v47 objects:v55 count:16];
            if (v18)
            {
              v19 = *v48;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  v21 = v4;
                  if (*v48 != v19)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v22 = *(*(&v47 + 1) + 8 * j);
                  dispatch_group_enter(v7);
                  v23 = *(*(a1 + 32) + 64);
                  v24 = [v22 UUIDString];
                  v41[0] = MEMORY[0x1E69E9820];
                  v41[1] = 3221225472;
                  v41[2] = __98__ICLibraryAuthServiceClientTokenProvider_getAllTokenStatusForAssistantForcingRefresh_completion___block_invoke_68;
                  v41[3] = &unk_1E7BF6930;
                  v41[4] = *(a1 + 32);
                  v41[5] = v22;
                  v46 = buf;
                  v42 = queue;
                  v43 = v33;
                  v44 = v35;
                  v45 = v7;
                  [v23 getSharedUserIdForHomeUserId:v24 completion:v41];

                  v4 = v21;
                }

                v18 = [v32 countByEnumeratingWithState:&v47 objects:v55 count:16];
              }

              while (v18);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v8);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__ICLibraryAuthServiceClientTokenProvider_getAllTokenStatusForAssistantForcingRefresh_completion___block_invoke_2;
    block[3] = &unk_1E7BF7BF0;
    v26 = *(a1 + 56);
    v38 = v33;
    v39 = v26;
    v40 = buf;
    v27 = v33;
    dispatch_group_notify(v7, queue, block);

    _Block_object_dispose(buf, 8);
  }
}

void __98__ICLibraryAuthServiceClientTokenProvider_getAllTokenStatusForAssistantForcingRefresh_completion___block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138543874;
    v22 = v8;
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed getting user ids for home user id %{public}@. Err=%{public}@", buf, 0x20u);
  }

  if (!v5 || v6)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      *buf = 138544131;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      v25 = 2113;
      v26 = v5;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ failed fetching siri shared user id for homeIdentifier %{public}@:%{private}@. err=%{public}@", buf, 0x2Au);
    }

    v15 = *(*(a1 + 80) + 8);
    v16 = v6;
    v11 = *(v15 + 40);
    *(v15 + 40) = v16;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__ICLibraryAuthServiceClientTokenProvider_getAllTokenStatusForAssistantForcingRefresh_completion___block_invoke_69;
    block[3] = &unk_1E7BFA178;
    v10 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = v5;
    v20 = *(a1 + 64);
    dispatch_sync(v10, block);

    v11 = v18;
  }

  dispatch_group_leave(*(a1 + 72));
}

- (void)getTokenStatusForcingRefresh:(BOOL)refresh completion:(id)completion
{
  refreshCopy = refresh;
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = +[ICUserIdentityStore defaultIdentityStore];
  v8 = +[ICUserIdentity activeAccount];
  v21 = 0;
  v9 = [v7 getPropertiesForUserIdentity:v8 error:&v21];
  v10 = v21;

  if (v10)
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v26 = 2114;
      v27 = v10;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to get identity properties for token request. err=%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    dSID = [v9 DSID];
    if (dSID)
    {
      v13 = [MEMORY[0x1E695DFD8] setWithObject:dSID];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __83__ICLibraryAuthServiceClientTokenProvider_getTokenStatusForcingRefresh_completion___block_invoke;
      v18[3] = &unk_1E7BF6AC0;
      v19 = dSID;
      v20 = completionCopy;
      [(ICLibraryAuthServiceClientTokenProvider *)self getTokenStatusForDSIDs:v13 forcingRefresh:refreshCopy completion:v18];

      v14 = v19;
    }

    else
    {
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ not fetching library token because there's no active account", buf, 0xCu);
      }

      v22 = *MEMORY[0x1E696A278];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to fetch library token [no DSID on active account] - properties=%@", v9];
      v23 = v16;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7400 userInfo:v14];
      completionCopy[2](completionCopy, 0, v17);
    }
  }
}

void __83__ICLibraryAuthServiceClientTokenProvider_getTokenStatusForcingRefresh_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 objectForKey:v5];
  (*(*(a1 + 40) + 16))();
}

- (void)getTokenStatusForDSIDs:(id)ds forcingRefresh:(BOOL)refresh completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching token status", buf, 0xCu);
  }

  v11 = [ICAsyncBlockOperation alloc];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __92__ICLibraryAuthServiceClientTokenProvider_getTokenStatusForDSIDs_forcingRefresh_completion___block_invoke;
  v18 = &unk_1E7BF69F8;
  refreshCopy = refresh;
  v19 = dsCopy;
  selfCopy2 = self;
  v21 = completionCopy;
  v12 = completionCopy;
  v13 = dsCopy;
  v14 = [(ICAsyncBlockOperation *)v11 initWithStartHandler:&v15];
  [(ICAsyncBlockOperation *)v14 setName:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider.addTokenResult", v15, v16, v17, v18];
  [(NSOperationQueue *)self->_operationQueue addOperation:v14];
}

void __92__ICLibraryAuthServiceClientTokenProvider_getTokenStatusForDSIDs_forcingRefresh_completion___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  if ((*(a1 + 56) & 1) == 0)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          v11 = [*(*(a1 + 40) + 24) objectForKey:v10];
          if (v11)
          {
            [v4 setObject:v11 forKey:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v7);
    }
  }

  v12 = [v4 count];
  if (v12 == [*(a1 + 32) count])
  {
    goto LABEL_13;
  }

  v13 = *(a1 + 40);
  if ((v13[32] & 1) == 0)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __92__ICLibraryAuthServiceClientTokenProvider_getTokenStatusForDSIDs_forcingRefresh_completion___block_invoke_2;
    v32[3] = &unk_1E7BFA490;
    v34 = *(a1 + 48);
    v19 = v3;
    v33 = v19;
    v20 = [v13 _remoteObjectProxyWithErrorHandler:v32];
    v21 = *(a1 + 56);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __92__ICLibraryAuthServiceClientTokenProvider_getTokenStatusForDSIDs_forcingRefresh_completion___block_invoke_3;
    v29[3] = &unk_1E7BF6A98;
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
    v29[4] = *(a1 + 40);
    v31 = v23;
    v30 = v19;
    [v20 getTokenStatusForDSIDs:v22 forcingRefresh:v21 completion:v29];

    v18 = v34;
    goto LABEL_18;
  }

  if (*(a1 + 56))
  {
    v14 = *(a1 + 32);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __92__ICLibraryAuthServiceClientTokenProvider_getTokenStatusForDSIDs_forcingRefresh_completion___block_invoke_4;
    v24[3] = &unk_1E7BF9560;
    v15 = v14;
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v25 = v15;
    v26 = v16;
    v28 = v17;
    v27 = v3;
    [v13 _refreshTokensForDSIDs:v15 forExternalRequest:1 completion:v24];

    v18 = v25;
LABEL_18:

    goto LABEL_19;
  }

LABEL_13:
  (*(*(a1 + 48) + 16))();
  [v3 finishWithError:0];
LABEL_19:
}

void __92__ICLibraryAuthServiceClientTokenProvider_getTokenStatusForDSIDs_forcingRefresh_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, 0, v5);
  [*(a1 + 32) finishWithError:v5];
}

void __92__ICLibraryAuthServiceClientTokenProvider_getTokenStatusForDSIDs_forcingRefresh_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 24);
  v9 = a3;
  v6 = a2;
  [v5 addEntriesFromDictionary:v6];
  v7 = *(a1 + 48);
  v8 = [v9 msv_errorByRemovingUnsafeUserInfo];
  (*(v7 + 16))(v7, v6, v8);

  [*(a1 + 40) finishWithError:v9];
}

void __92__ICLibraryAuthServiceClientTokenProvider_getTokenStatusForDSIDs_forcingRefresh_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        v12 = [*(*(a1 + 40) + 24) objectForKey:{v11, v15}];
        if (v12)
        {
          [v5 setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *(a1 + 56);
  v14 = [v4 msv_errorByRemovingUnsafeUserInfo];
  (*(v13 + 16))(v13, v5, v14);

  [*(a1 + 48) finishWithError:v4];
}

- (void)addTokenResult:(id)result forDSID:(id)d completion:(id)completion
{
  resultCopy = result;
  dCopy = d;
  completionCopy = completion;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICLibraryAuthServiceClientTokenProvider.m" lineNumber:385 description:@"addTokenResult requires a valid DSID"];
  }

  v12 = [ICAsyncBlockOperation alloc];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __77__ICLibraryAuthServiceClientTokenProvider_addTokenResult_forDSID_completion___block_invoke;
  v21 = &unk_1E7BF8BC0;
  selfCopy = self;
  v23 = resultCopy;
  v24 = dCopy;
  v25 = completionCopy;
  v13 = dCopy;
  v14 = resultCopy;
  v15 = completionCopy;
  v16 = [(ICAsyncBlockOperation *)v12 initWithStartHandler:&v18];
  [(ICAsyncBlockOperation *)v16 setName:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider.addTokenResult", v18, v19, v20, v21, selfCopy];
  [(NSOperationQueue *)self->_operationQueue addOperation:v16];
}

void __77__ICLibraryAuthServiceClientTokenProvider_addTokenResult_forDSID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[32])
  {
    v5 = objc_alloc_init(ICLibraryAuthServiceClientTokenStatus);
    [(ICLibraryAuthServiceClientTokenStatus *)v5 setTokenResult:*(a1 + 40)];
    [*(*(a1 + 32) + 24) setObject:v5 forKey:*(a1 + 48)];
    [*(a1 + 32) _commitCache];
    v6 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v6 postNotificationName:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider._ICLibraryAuthServiceClientTokenDidChangeDistributedNotification" object:0];

    (*(*(a1 + 56) + 16))();
    [v3 finishWithError:0];
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__ICLibraryAuthServiceClientTokenProvider_addTokenResult_forDSID_completion___block_invoke_2;
    v19[3] = &unk_1E7BFA490;
    v21 = *(a1 + 56);
    v7 = v3;
    v20 = v7;
    v8 = [v4 _remoteObjectProxyWithErrorHandler:v19];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__ICLibraryAuthServiceClientTokenProvider_addTokenResult_forDSID_completion___block_invoke_3;
    v13[3] = &unk_1E7BF6A70;
    v11 = v9;
    v12 = *(a1 + 32);
    v14 = v11;
    v15 = v12;
    v16 = *(a1 + 48);
    v18 = *(a1 + 56);
    v17 = v7;
    [v8 addTokenResult:v11 forDSID:v10 completion:v13];
  }
}

void __77__ICLibraryAuthServiceClientTokenProvider_addTokenResult_forDSID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  [*(a1 + 32) finishWithError:v5];
}

void __77__ICLibraryAuthServiceClientTokenProvider_addTokenResult_forDSID_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    v3 = objc_alloc_init(ICLibraryAuthServiceClientTokenStatus);
    [(ICLibraryAuthServiceClientTokenStatus *)v3 setTokenResult:*(a1 + 32)];
    [*(*(a1 + 40) + 24) setObject:v3 forKey:*(a1 + 48)];
  }

  (*(*(a1 + 64) + 16))();
  [*(a1 + 56) finishWithError:v4];
}

- (id)cachedTokenAndResetCache:(BOOL)cache
{
  cacheCopy = cache;
  v17 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = cacheCopy;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ cachedTokenAndResetCache %d", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__25353;
  v15 = __Block_byref_object_dispose__25354;
  v16 = 0;
  v6 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__ICLibraryAuthServiceClientTokenProvider_cachedTokenAndResetCache___block_invoke;
  v10[3] = &unk_1E7BF6A48;
  v12 = buf;
  v7 = v6;
  v11 = v7;
  [(ICLibraryAuthServiceClientTokenProvider *)self getTokenForcingRefresh:cacheCopy completion:v10];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v8;
}

void __68__ICLibraryAuthServiceClientTokenProvider_cachedTokenAndResetCache___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)getTokenResultsForDSIDs:(id)ds forceRefresh:(BOOL)refresh completion:(id)completion
{
  refreshCopy = refresh;
  v23 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = dsCopy;
    *&buf[22] = 1024;
    v22 = refreshCopy;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching token results for DSIDs %@. forceRefresh=%{BOOL}u", buf, 0x1Cu);
  }

  memset(buf, 0, sizeof(buf));
  [(ICLibraryAuthServiceClientTokenProvider *)self _checkTokenPresetsForDSIDs:dsCopy forceRefresh:refreshCopy];
  if (buf[16] == 1)
  {
    (*(completionCopy + 2))(completionCopy, *buf, *&buf[8]);
  }

  else
  {
    v11 = [ICAsyncBlockOperation alloc];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __91__ICLibraryAuthServiceClientTokenProvider_getTokenResultsForDSIDs_forceRefresh_completion___block_invoke;
    v16 = &unk_1E7BF69F8;
    v17 = dsCopy;
    selfCopy = self;
    v20 = refreshCopy;
    v19 = completionCopy;
    v12 = [(ICAsyncBlockOperation *)v11 initWithStartHandler:&v13];
    [(ICAsyncBlockOperation *)v12 setName:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider.getTokenResultsForDSIDs", v13, v14, v15, v16];
    [(NSOperationQueue *)self->_operationQueue addOperation:v12];
  }
}

void __91__ICLibraryAuthServiceClientTokenProvider_getTokenResultsForDSIDs_forceRefresh_completion___block_invoke(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v33 = a2;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        v11 = [*(*(a1 + 40) + 24) objectForKey:v10];
        v12 = [v11 tokenResult];
        if (!v12)
        {

          goto LABEL_14;
        }

        v13 = v12;
        [v3 setObject:v12 forKey:v10];
        if ([v13 isExpired] && (objc_msgSend(v11, "shouldExcludeFromBackgroundRefresh") & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v14 = [v3 count];
  if (v14 == [*(a1 + 32) count] && (*(a1 + 56) & 1) == 0)
  {
    v26 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 40);
      *buf = 138543618;
      v51 = v27;
      v52 = 2114;
      v53 = v3;
      _os_log_impl(&dword_1B4491000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ getTokenResultsForDSIDs returning cached token results %{public}@", buf, 0x16u);
    }

    v28 = *(a1 + 48);
    v29 = [v3 copy];
    (*(v28 + 16))(v28, v29, 0);

    v17 = v33;
    if ([v4 count])
    {
      v30 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 40);
        *buf = 138543618;
        v51 = v31;
        v52 = 2112;
        v53 = v4;
        _os_log_impl(&dword_1B4491000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Refreshing expired tokens for DSIDs %@", buf, 0x16u);
      }

      v32 = *(a1 + 40);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __91__ICLibraryAuthServiceClientTokenProvider_getTokenResultsForDSIDs_forceRefresh_completion___block_invoke_56;
      v45[3] = &unk_1E7BF6A20;
      v45[4] = v32;
      [v32 getTokenResultsForDSIDs:v4 forceRefresh:1 completion:v45];
    }

    [v33 finishWithError:0];
  }

  else
  {
    v15 = *(a1 + 40);
    if (v15[32])
    {
      v16 = *(a1 + 32);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __91__ICLibraryAuthServiceClientTokenProvider_getTokenResultsForDSIDs_forceRefresh_completion___block_invoke_3;
      v34[3] = &unk_1E7BF6AC0;
      v36 = *(a1 + 48);
      v17 = v33;
      v35 = v33;
      [v15 _refreshTokensForDSIDs:v16 forExternalRequest:1 completion:v34];

      v18 = v36;
    }

    else
    {
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __91__ICLibraryAuthServiceClientTokenProvider_getTokenResultsForDSIDs_forceRefresh_completion___block_invoke_57;
      v42[3] = &unk_1E7BFA490;
      v44 = *(a1 + 48);
      v17 = v33;
      v19 = v33;
      v43 = v19;
      v20 = [v15 _remoteObjectProxyWithErrorHandler:v42];
      v21 = *(a1 + 32);
      v22 = *(a1 + 56);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __91__ICLibraryAuthServiceClientTokenProvider_getTokenResultsForDSIDs_forceRefresh_completion___block_invoke_2;
      v37[3] = &unk_1E7BF9560;
      v23 = v21;
      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v38 = v23;
      v39 = v24;
      v41 = v25;
      v40 = v19;
      [v20 getTokenResultsForDSIDs:v23 forceRefresh:v22 completion:v37];

      v18 = v44;
    }
  }
}

void __91__ICLibraryAuthServiceClientTokenProvider_getTokenResultsForDSIDs_forceRefresh_completion___block_invoke_56(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Failed to refresh tokens. err=%{public}@", &v7, 0x16u);
    }
  }
}

void __91__ICLibraryAuthServiceClientTokenProvider_getTokenResultsForDSIDs_forceRefresh_completion___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, 0, v5);
  [*(a1 + 32) finishWithError:v5];
}

void __91__ICLibraryAuthServiceClientTokenProvider_getTokenResultsForDSIDs_forceRefresh_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:{v12, v14}];
        [*(a1 + 40) _updateTokenCacheEntryForDSID:v12 tokenResult:v13 error:v6];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 48) finishWithError:v6];
}

void __91__ICLibraryAuthServiceClientTokenProvider_getTokenResultsForDSIDs_forceRefresh_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v8 = a3;
  v6 = a2;
  v7 = [v8 msv_errorByRemovingUnsafeUserInfo];
  (*(v5 + 16))(v5, v6, v7);

  [*(a1 + 32) finishWithError:v8];
}

- (void)getTokenResultForDSID:(id)d forceRefresh:(BOOL)refresh completion:(id)completion
{
  refreshCopy = refresh;
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICLibraryAuthServiceClientTokenProvider.m" lineNumber:252 description:@"getTokenForDSID requires a valid DSID"];
  }

  v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = ICCreateLoggableValueForDSID(dCopy);
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching token for DSID %{public}@", buf, 0x16u);
  }

  memset(buf, 0, sizeof(buf));
  v13 = [MEMORY[0x1E695DFD8] setWithObject:dCopy];
  [(ICLibraryAuthServiceClientTokenProvider *)self _checkTokenPresetsForDSIDs:v13 forceRefresh:refreshCopy];

  if (buf[16] == 1)
  {
    v14 = [*buf objectForKey:dCopy];
    completionCopy[2](completionCopy, v14, *&buf[8]);
  }

  else
  {
    v15 = [ICAsyncBlockOperation alloc];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __89__ICLibraryAuthServiceClientTokenProvider_getTokenResultForDSID_forceRefresh_completion___block_invoke;
    v21 = &unk_1E7BF69F8;
    selfCopy = self;
    v23 = dCopy;
    v25 = refreshCopy;
    v24 = completionCopy;
    v16 = [(ICAsyncBlockOperation *)v15 initWithStartHandler:&v18];
    [(ICAsyncBlockOperation *)v16 setName:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider.getTokenResultForDSID", v18, v19, v20, v21, selfCopy];
    [(NSOperationQueue *)self->_operationQueue addOperation:v16];
  }
}

void __89__ICLibraryAuthServiceClientTokenProvider_getTokenResultForDSID_forceRefresh_completion___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v5 = [v4 tokenResult];

  if (v5 && (*(a1 + 56) & 1) == 0)
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138543618;
      v32 = v14;
      v33 = 2114;
      v34 = v5;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ getTokenResultForDSID returning cached token result %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
    if ([v5 isExpired])
    {
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        *buf = 138543618;
        v32 = v16;
        v33 = 2112;
        v34 = v17;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Refreshing expired token for DSID %@", buf, 0x16u);
      }

      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __89__ICLibraryAuthServiceClientTokenProvider_getTokenResultForDSID_forceRefresh_completion___block_invoke_49;
      v30[3] = &unk_1E7BF6980;
      v30[4] = v18;
      [v18 getTokenResultForDSID:v19 forceRefresh:1 completion:v30];
    }

    [v3 finishWithError:0];
  }

  else
  {
    v6 = *(a1 + 32);
    if (v6[32])
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __89__ICLibraryAuthServiceClientTokenProvider_getTokenResultForDSID_forceRefresh_completion___block_invoke_3;
      v20[3] = &unk_1E7BF69D0;
      v7 = *(a1 + 40);
      v22 = *(a1 + 48);
      v21 = v3;
      [v6 _refreshTokenForDSID:v7 forExternalRequest:1 completion:v20];

      v8 = v22;
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __89__ICLibraryAuthServiceClientTokenProvider_getTokenResultForDSID_forceRefresh_completion___block_invoke_50;
      v27[3] = &unk_1E7BFA490;
      v29 = *(a1 + 48);
      v9 = v3;
      v28 = v9;
      v10 = [v6 _remoteObjectProxyWithErrorHandler:v27];
      v11 = *(a1 + 56);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __89__ICLibraryAuthServiceClientTokenProvider_getTokenResultForDSID_forceRefresh_completion___block_invoke_2;
      v23[3] = &unk_1E7BF69A8;
      v12 = *(a1 + 40);
      v23[4] = *(a1 + 32);
      v24 = v12;
      v26 = *(a1 + 48);
      v25 = v9;
      [v10 getTokenResultForDSID:v24 forceRefresh:v11 completion:v23];

      v8 = v29;
    }
  }
}

void __89__ICLibraryAuthServiceClientTokenProvider_getTokenResultForDSID_forceRefresh_completion___block_invoke_49(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to refresh the token. err=%{public}@", &v7, 0x16u);
    }
  }
}

void __89__ICLibraryAuthServiceClientTokenProvider_getTokenResultForDSID_forceRefresh_completion___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, 0, v5);
  [*(a1 + 32) finishWithError:v5];
}

void __89__ICLibraryAuthServiceClientTokenProvider_getTokenResultForDSID_forceRefresh_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a3;
  v7 = a2;
  [v5 _updateTokenCacheEntryForDSID:v6 tokenResult:v7 error:v8];
  (*(*(a1 + 56) + 16))();

  [*(a1 + 48) finishWithError:v8];
}

void __89__ICLibraryAuthServiceClientTokenProvider_getTokenResultForDSID_forceRefresh_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v8 = a3;
  v6 = a2;
  v7 = [v8 msv_errorByRemovingUnsafeUserInfo];
  (*(v5 + 16))(v5, v6, v7);

  [*(a1 + 32) finishWithError:v8];
}

- (void)getTokenForDSID:(id)d forceRefresh:(BOOL)refresh completion:(id)completion
{
  refreshCopy = refresh;
  dCopy = d;
  completionCopy = completion;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICLibraryAuthServiceClientTokenProvider.m" lineNumber:245 description:@"getTokenForDSID requires a valid DSID"];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__ICLibraryAuthServiceClientTokenProvider_getTokenForDSID_forceRefresh_completion___block_invoke;
  v13[3] = &unk_1E7BF6958;
  v14 = completionCopy;
  v11 = completionCopy;
  [(ICLibraryAuthServiceClientTokenProvider *)self getTokenResultForDSID:dCopy forceRefresh:refreshCopy completion:v13];
}

void __83__ICLibraryAuthServiceClientTokenProvider_getTokenForDSID_forceRefresh_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 token];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)getAllTokensForAssistantForcingRefresh:(BOOL)refresh completion:(id)completion
{
  refreshCopy = refresh;
  v43 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = +[ICUserIdentityStore defaultIdentityStore];
  _unsafeBackend = [v6 _unsafeBackend];

  v37 = 0;
  v8 = [_unsafeBackend allStoreAccountsWithError:&v37];
  v9 = v37;
  if (v9)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v41 = 2114;
      v42 = v9;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to gather DSIDs from the account store to fetch tokens for. err=%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    v24 = refreshCopy;
    v25 = _unsafeBackend;
    v26 = completionCopy;
    v11 = [MEMORY[0x1E695DFA8] set];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          if ([v17 isAuthenticated] && (objc_msgSend(v17, "ic_homeUserIdentifiers"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v19))
          {
            ic_DSID = [v17 ic_DSID];
            [v11 addObject:ic_DSID];

            ic_DSID2 = [v17 ic_DSID];
            [dictionary setObject:v17 forKeyedSubscript:ic_DSID2];
          }

          else
          {
            ic_DSID2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(ic_DSID2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              selfCopy2 = self;
              v41 = 2112;
              v42 = v17;
              _os_log_impl(&dword_1B4491000, ic_DSID2, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping account %@ because either the DSID is missing or it has no home user ids", buf, 0x16u);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __93__ICLibraryAuthServiceClientTokenProvider_getAllTokensForAssistantForcingRefresh_completion___block_invoke;
      v29[3] = &unk_1E7BF9560;
      v29[4] = self;
      completionCopy = v26;
      v32 = v26;
      v30 = v11;
      v22 = dictionary;
      v31 = dictionary;
      [(ICLibraryAuthServiceClientTokenProvider *)self getTokenResultsForDSIDs:v30 forceRefresh:v24 completion:v29];

      v9 = 0;
      _unsafeBackend = v25;
    }

    else
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      completionCopy = v26;
      (v26)[2](v26, dictionary2, 0);

      v9 = 0;
      _unsafeBackend = v25;
      v22 = dictionary;
    }
  }
}

void __93__ICLibraryAuthServiceClientTokenProvider_getAllTokensForAssistantForcingRefresh_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v24 = a3;
  if (v24)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch all client tokens. err=%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v58 = __Block_byref_object_copy__25353;
    v59 = __Block_byref_object_dispose__25354;
    v60 = 0;
    queue = dispatch_queue_create("com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider.allTokens", 0);
    v7 = dispatch_group_create();
    v29 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = *(a1 + 40);
    v8 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v8)
    {
      v26 = *v48;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v48 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v47 + 1) + 8 * i);
          v31 = [v4 objectForKey:v9];
          if (!v31 || ([v31 token], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
          {
            v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            v27 = v20;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = *(a1 + 32);
              *v52 = 138543618;
              v53 = v21;
              v54 = 2112;
              v55 = v9;
              _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "%{public}@ No token result for DSID %@ in bulk response - this will be treated as an error", v52, 0x16u);
            }
          }

          else
          {
            dispatch_group_enter(v7);
            v12 = [*(a1 + 48) objectForKey:v9];
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v27 = v12;
            v13 = [v12 ic_homeUserIdentifiers];
            v14 = [v13 countByEnumeratingWithState:&v43 objects:v51 count:16];
            if (v14)
            {
              v15 = *v44;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v44 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v17 = *(*(&v43 + 1) + 8 * j);
                  dispatch_group_enter(v7);
                  v18 = *(*(a1 + 32) + 64);
                  v19 = [v17 UUIDString];
                  v37[0] = MEMORY[0x1E69E9820];
                  v37[1] = 3221225472;
                  v37[2] = __93__ICLibraryAuthServiceClientTokenProvider_getAllTokensForAssistantForcingRefresh_completion___block_invoke_36;
                  v37[3] = &unk_1E7BF6930;
                  v37[4] = *(a1 + 32);
                  v37[5] = v17;
                  v42 = buf;
                  v38 = queue;
                  v39 = v29;
                  v40 = v31;
                  v41 = v7;
                  [v18 getSharedUserIdForHomeUserId:v19 completion:v37];
                }

                v14 = [v13 countByEnumeratingWithState:&v43 objects:v51 count:16];
              }

              while (v14);
            }

            dispatch_group_leave(v7);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v8);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__ICLibraryAuthServiceClientTokenProvider_getAllTokensForAssistantForcingRefresh_completion___block_invoke_2;
    block[3] = &unk_1E7BF7BF0;
    v22 = *(a1 + 56);
    v34 = v29;
    v35 = v22;
    v36 = buf;
    v23 = v29;
    dispatch_group_notify(v7, queue, block);

    _Block_object_dispose(buf, 8);
  }
}

void __93__ICLibraryAuthServiceClientTokenProvider_getAllTokensForAssistantForcingRefresh_completion___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138544131;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      v23 = 2113;
      v24 = v5;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "%{public}@ failed fetching siri shared user id for homeIdentifier %{public}@:%{private}@. err=%{public}@", buf, 0x2Au);
    }

    v13 = *(*(a1 + 80) + 8);
    v14 = v7;
    v9 = *(v13 + 40);
    *(v13 + 40) = v14;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__ICLibraryAuthServiceClientTokenProvider_getAllTokensForAssistantForcingRefresh_completion___block_invoke_37;
    block[3] = &unk_1E7BFA178;
    v8 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = v5;
    v18 = *(a1 + 64);
    dispatch_sync(v8, block);

    v9 = v16;
  }

  dispatch_group_leave(*(a1 + 72));
}

void __93__ICLibraryAuthServiceClientTokenProvider_getAllTokensForAssistantForcingRefresh_completion___block_invoke_37(uint64_t a1)
{
  v2 = [*(a1 + 48) token];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)getTokenForcingRefresh:(BOOL)refresh completion:(id)completion
{
  refreshCopy = refresh;
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = +[ICUserIdentityStore defaultIdentityStore];
  v8 = +[ICUserIdentity activeAccount];
  v19 = 0;
  v9 = [v7 getPropertiesForUserIdentity:v8 error:&v19];
  v10 = v19;

  if (v10)
  {
    v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to get identity properties for token request. err=%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    dSID = [v9 DSID];
    if (dSID)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __77__ICLibraryAuthServiceClientTokenProvider_getTokenForcingRefresh_completion___block_invoke;
      v17[3] = &unk_1E7BF6908;
      v18 = completionCopy;
      [(ICLibraryAuthServiceClientTokenProvider *)self getTokenForDSID:dSID forceRefresh:refreshCopy completion:v17];
      v13 = v18;
    }

    else
    {
      v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ not fetching library token because there's no active account", buf, 0xCu);
      }

      v20 = *MEMORY[0x1E696A278];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to fetch library token [no DSID on active account] - properties=%@", v9];
      v21 = v15;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7400 userInfo:v13];
      completionCopy[2](completionCopy, 0, v16);
    }
  }
}

- (void)stopService
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping system service...", &v5, 0xCu);
  }

  [(NSXPCListener *)self->_xpcServiceListener invalidate];
  xpcServiceListener = self->_xpcServiceListener;
  self->_xpcServiceListener = 0;
}

- (void)startService
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting system service...", &v7, 0xCu);
  }

  self->_isService = 1;
  [(ICLibraryAuthServiceClientTokenProvider *)self _loadCache];
  [(ICLibraryAuthServiceClientTokenProvider *)self _updateEntriesForAccountsChanges];
  [(ICLibraryAuthServiceClientTokenProvider *)self _updateRefreshTimer];
  v4 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.itunescloud.library-auth-token-provider"];
  xpcServiceListener = self->_xpcServiceListener;
  self->_xpcServiceListener = v4;

  [(NSXPCListener *)self->_xpcServiceListener setDelegate:self];
  [(NSXPCListener *)self->_xpcServiceListener resume];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleUserIdentityStoreDidChangeNotification_ name:@"ICUserIdentityStoreDidChangeNotification" object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider._ICLibraryAuthServiceClientTokenDidChangeDistributedNotification" object:0];

  xpcClientConnection = self->_xpcClientConnection;
  if (xpcClientConnection)
  {
    [(NSXPCConnection *)xpcClientConnection invalidate];
    v5 = self->_xpcClientConnection;
    self->_xpcClientConnection = 0;
  }

  xpcServiceListener = self->_xpcServiceListener;
  if (xpcServiceListener)
  {
    [(NSXPCListener *)xpcServiceListener invalidate];
    v7 = self->_xpcServiceListener;
    self->_xpcServiceListener = 0;
  }

  v8.receiver = self;
  v8.super_class = ICLibraryAuthServiceClientTokenProvider;
  [(ICLibraryAuthServiceClientTokenProvider *)&v8 dealloc];
}

- (ICLibraryAuthServiceClientTokenProvider)init
{
  v15.receiver = self;
  v15.super_class = ICLibraryAuthServiceClientTokenProvider;
  v2 = [(ICLibraryAuthServiceClientTokenProvider *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v5;

    [(NSOperationQueue *)v2->_operationQueue setName:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider.operationQueue"];
    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_operationQueue setQualityOfService:25];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    tokenCache = v2->_tokenCache;
    v2->_tokenCache = dictionary;

    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v9 = getAFMultiUserConnectionClass_softClass;
    v20 = getAFMultiUserConnectionClass_softClass;
    if (!getAFMultiUserConnectionClass_softClass)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __getAFMultiUserConnectionClass_block_invoke;
      v16[3] = &unk_1E7BFA0A0;
      v16[4] = &v17;
      __getAFMultiUserConnectionClass_block_invoke(v16);
      v9 = v18[3];
    }

    v10 = v9;
    _Block_object_dispose(&v17, 8);
    v11 = objc_alloc_init(v9);
    siriConnection = v2->_siriConnection;
    v2->_siriConnection = v11;

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleLibraryAuthServiceClientTokenDidChangeDistributedNotification_ name:@"com.apple.iTunesCloud.ICLibraryAuthServiceClientTokenProvider._ICLibraryAuthServiceClientTokenDidChangeDistributedNotification" object:0];
  }

  return v2;
}

uint64_t __57__ICLibraryAuthServiceClientTokenProvider_sharedProvider__block_invoke()
{
  sharedProvider_sSharedProvider = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

@end