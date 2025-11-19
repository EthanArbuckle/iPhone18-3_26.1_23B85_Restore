@interface ICDelegationProviderService
+ (ICDelegationProviderService)sharedService;
+ (id)systemServiceWithRequestContext:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_init;
- (id)_xpcConnection;
- (void)_addConnection:(id)a3;
- (void)_netServiceDelegationAccountUUIDsDidChangeNotification:(id)a3;
- (void)_registerNotificationsForDelegationNetService:(id)a3;
- (void)_removeConnection:(id)a3;
- (void)_unregisterNotificationsForDelegationNetService:(id)a3;
- (void)_updateAssertionTimeouts;
- (void)_updateBrowsingStatus;
- (void)_updateDelegationForDiscoveredServices;
- (void)_updateSupportedDelegationAccountUUIDs;
- (void)addAssertion:(id)a3;
- (void)dealloc;
- (void)delegationProviderServiceAddAssertion:(id)a3;
- (void)delegationProviderServiceRemoveAssertion:(id)a3;
- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5;
- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4 moreComing:(BOOL)a5;
- (void)removeAssertion:(id)a3;
- (void)startSystemXPCService;
@end

@implementation ICDelegationProviderService

- (id)_xpcConnection
{
  if (self->_isSystemService)
  {
    v2 = 0;
  }

  else
  {
    xpcConnection = self->_xpcConnection;
    if (!xpcConnection)
    {
      v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.itunescloud.delegation-provider" options:0];
      v6 = self->_xpcConnection;
      self->_xpcConnection = v5;

      v7 = self->_xpcConnection;
      v8 = ICSDelegationProviderServiceXPCGetInterface();
      [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

      [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
      v9 = self->_xpcConnection;
      v10 = ICCDelegationProviderServiceXPCGetInterface();
      [(NSXPCConnection *)v9 setExportedInterface:v10];

      objc_initWeak(&location, self->_xpcConnection);
      objc_initWeak(&from, self);
      v11 = self->_xpcConnection;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __45__ICDelegationProviderService__xpcConnection__block_invoke;
      v20[3] = &unk_1E7BF6D98;
      objc_copyWeak(&v21, &from);
      objc_copyWeak(&v22, &location);
      [(NSXPCConnection *)v11 setInterruptionHandler:v20];
      v12 = self->_xpcConnection;
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __45__ICDelegationProviderService__xpcConnection__block_invoke_2;
      v17 = &unk_1E7BF6D98;
      objc_copyWeak(&v18, &from);
      objc_copyWeak(&v19, &location);
      [(NSXPCConnection *)v12 setInvalidationHandler:&v14];
      [(NSXPCConnection *)self->_xpcConnection resume:v14];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);

      xpcConnection = self->_xpcConnection;
    }

    v2 = xpcConnection;
  }

  return v2;
}

void __45__ICDelegationProviderService__xpcConnection__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "[ICDelegationProviderService] Connection interrupted.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__ICDelegationProviderService__xpcConnection__block_invoke_43;
    v7[3] = &unk_1E7BFA078;
    v8 = WeakRetained;
    v9 = v5;
    dispatch_barrier_async(v6, v7);
  }
}

void __45__ICDelegationProviderService__xpcConnection__block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "[ICDelegationProviderService] Connection invalidated.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__ICDelegationProviderService__xpcConnection__block_invoke_44;
    v7[3] = &unk_1E7BFA078;
    v8 = WeakRetained;
    v9 = v5;
    dispatch_barrier_async(v6, v7);
  }
}

void __45__ICDelegationProviderService__xpcConnection__block_invoke_44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 120);
  if (v3 == v2)
  {
    *(v1 + 120) = 0;
  }
}

void __45__ICDelegationProviderService__xpcConnection__block_invoke_43(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 120);
  if (v3 == v2)
  {
    [v3 invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 120);
    *(v4 + 120) = 0;
  }
}

- (void)_updateSupportedDelegationAccountUUIDs
{
  if (self->_isSystemService)
  {
    v7[7] = v2;
    v7[8] = v3;
    v5 = [ICAsyncBlockOperation alloc];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke;
    v7[3] = &unk_1E7BF6C48;
    v7[4] = self;
    v6 = [(ICAsyncBlockOperation *)v5 initWithStartHandler:v7];
    [(NSOperationQueue *)self->_identityStoreOperationQueue addOperation:v6];
  }
}

void __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v5 = [v4 qualityOfService];

  v6 = dispatch_queue_attr_make_with_qos_class(0, v5, 0);
  v7 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationProviderService.supportedDelegationAccountUUIDsAccessQueue", v6);

  v8 = dispatch_group_create();
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  dispatch_group_enter(v8);
  v10 = *(*(a1 + 32) + 64);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_2;
  v35[3] = &unk_1E7BF4908;
  v11 = v7;
  v36 = v11;
  v12 = v9;
  v37 = v12;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_4;
  v33[3] = &unk_1E7BFA300;
  v13 = v8;
  v34 = v13;
  [v10 enumerateDelegateTokensWithType:1 usingBlock:v35 completionHandler:v33];
  dispatch_group_enter(v13);
  v14 = *(*(a1 + 32) + 64);
  v15 = +[ICUserIdentity activeAccount];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_5;
  v29[3] = &unk_1E7BF7930;
  v16 = v11;
  v30 = v16;
  v17 = v12;
  v31 = v17;
  v32 = v13;
  v18 = v13;
  [v14 getPropertiesForUserIdentity:v15 completionHandler:v29];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_7;
  block[3] = &unk_1E7BF4930;
  v27 = v3;
  v28 = v5;
  v19 = *(a1 + 32);
  v24 = v17;
  v25 = v19;
  v26 = v16;
  v20 = v3;
  v21 = v16;
  v22 = v17;
  dispatch_group_notify(v18, v21, block);
}

void __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_3;
  v7[3] = &unk_1E7BFA078;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_5(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 DSID];
    if (v3)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_6;
      block[3] = &unk_1E7BFA178;
      v4 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = v3;
      v9 = *(a1 + 48);
      dispatch_async(v4, block);
    }

    else
    {
      dispatch_group_leave(*(a1 + 48));
    }
  }

  else
  {
    v5 = *(a1 + 48);

    dispatch_group_leave(v5);
  }
}

void __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_7(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v3 setMaxConcurrentOperationCount:3];
  [v3 setQualityOfService:*(a1 + 64)];
  v4 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        dispatch_group_enter(v4);
        v10 = [ICAsyncBlockOperation alloc];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_8;
        v23[3] = &unk_1E7BFA1C8;
        v11 = *(a1 + 48);
        v23[4] = *(a1 + 40);
        v23[5] = v9;
        v24 = v11;
        v25 = v2;
        v26 = v4;
        v12 = [(ICAsyncBlockOperation *)v10 initWithStartHandler:v23];
        [v3 addOperation:v12];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_11;
  block[3] = &unk_1E7BFA1F0;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v19 = v3;
  v20 = v13;
  v21 = v2;
  v22 = *(a1 + 56);
  v15 = v2;
  v16 = v3;
  dispatch_group_notify(v4, v14, block);
}

void __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 64);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_9;
  v9[3] = &unk_1E7BFA1A0;
  v10 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v13 = v3;
  v14 = *(a1 + 64);
  v8 = v3;
  [v5 getDelegationUUIDsForUserIdentity:v4 completionHandler:v9];
}

void __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_11(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 8);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_12;
  v9 = &unk_1E7BFA078;
  v10 = v2;
  v11 = *(a1 + 48);
  v5 = v3;
  dispatch_barrier_async(v4, &v6);
  [*(a1 + 56) finish];
}

uint64_t __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_12(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 112), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _updateDelegationForDiscoveredServices];
}

void __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_10;
  block[3] = &unk_1E7BFA178;
  v12 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v13 = v7;
  v14 = v8;
  v9 = v5;
  v10 = a3;
  dispatch_async(v6, block);
  [*(a1 + 56) finishWithError:v10];

  dispatch_group_leave(*(a1 + 64));
}

void __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_10(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) setObject:*(a1 + 48) forKey:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __69__ICDelegationProviderService__updateSupportedDelegationAccountUUIDs__block_invoke_6(void *a1)
{
  v2 = a1[4];
  v3 = [ICUserIdentity specificAccountWithDSID:a1[5]];
  [v2 addObject:v3];

  v4 = a1[6];

  dispatch_group_leave(v4);
}

- (void)_updateDelegationForDiscoveredServices
{
  v77 = *MEMORY[0x1E69E9840];
  if (self->_isSystemService)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      supportedDelegationAccountUUIDToUserIdentity = self->_supportedDelegationAccountUUIDToUserIdentity;
      discoveredServices = self->_discoveredServices;
      *buf = 138543874;
      v66 = self;
      v67 = 2114;
      v68 = supportedDelegationAccountUUIDToUserIdentity;
      v69 = 2114;
      v70 = discoveredServices;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating delegation UUIDs [discovered services] - currentUUIDs=%{public}@ - discoveredServices=%{public}@", buf, 0x20u);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = [(NSMutableSet *)self->_discoveredServices copy];
    v46 = [obj countByEnumeratingWithState:&v61 objects:v76 count:16];
    if (v46)
    {
      v45 = *v62;
      *&v6 = 138544130;
      v42 = v6;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v62 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v61 + 1) + 8 * i);
          v9 = [(ICDelegationProviderService *)v8 delegationAccountUUIDs];
          v10 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v66 = v8;
            v67 = 2114;
            v68 = v9;
            _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "   |_ Processing service %{public}@ - delegationAccountUUIDs=%{public}@", buf, 0x16u);
          }

          if ([(NSMutableSet *)v9 count])
          {
            v47 = i;
            v48 = v8;
            v11 = [(NSMutableSet *)v9 mutableCopy];
            v12 = [(NSMutableDictionary *)self->_supportedDelegationAccountUUIDToUserIdentity allKeys];
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v13 = [v11 copy];
            v14 = [v13 countByEnumeratingWithState:&v57 objects:v75 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v58;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v58 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v57 + 1) + 8 * j);
                  if (([v12 containsObject:v18] & 1) == 0)
                  {
                    [v11 removeObject:v18];
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v57 objects:v75 count:16];
              }

              while (v15);
            }

            v19 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v66 = v48;
              v67 = 2114;
              v68 = v11;
              _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "      Processing service %{public}@ - eligibleDelegationAccountUUIDs=%{public}@", buf, 0x16u);
            }

            if ([v11 count])
            {
              v20 = [(NSMapTable *)self->_activeServiceSessions objectForKey:v48];
              v21 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v66 = v48;
                v67 = 2114;
                v68 = v20;
                _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_DEFAULT, "      Processing service %{public}@ - activeSessions=%{public}@", buf, 0x16u);
              }

              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v22 = v20;
              v23 = [v22 countByEnumeratingWithState:&v53 objects:v74 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v54;
LABEL_28:
                v26 = 0;
                while (1)
                {
                  if (*v54 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = [*(*(&v53 + 1) + 8 * v26) delegationAccountUUIDs];
                  [v11 removeObjectsInArray:v27];

                  if (![(NSMutableSet *)v9 count])
                  {
                    break;
                  }

                  if (v24 == ++v26)
                  {
                    v24 = [v22 countByEnumeratingWithState:&v53 objects:v74 count:16];
                    if (v24)
                    {
                      goto LABEL_28;
                    }

                    break;
                  }
                }
              }

              v44 = v22;

              v28 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [(NSMutableSet *)v9 count];
                *buf = 138543874;
                v66 = v48;
                v67 = 2048;
                v68 = v29;
                v69 = 2114;
                v70 = v9;
                _os_log_impl(&dword_1B4491000, v28, OS_LOG_TYPE_DEFAULT, "      Processing service %{public}@ - %lu new delegated accounts - delegationAccountUUIDs=%{public}@", buf, 0x20u);
              }

              if ([(NSMutableSet *)v9 count])
              {
                v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
                v49 = 0u;
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v31 = v11;
                v32 = [v31 countByEnumeratingWithState:&v49 objects:v73 count:16];
                if (v32)
                {
                  v33 = v32;
                  v34 = *v50;
                  do
                  {
                    for (k = 0; k != v33; ++k)
                    {
                      if (*v50 != v34)
                      {
                        objc_enumerationMutation(v31);
                      }

                      v36 = [(NSMutableDictionary *)self->_supportedDelegationAccountUUIDToUserIdentity objectForKey:*(*(&v49 + 1) + 8 * k)];
                      [v30 addObject:v36];
                    }

                    v33 = [v31 countByEnumeratingWithState:&v49 objects:v73 count:16];
                  }

                  while (v33);
                }

                v37 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v42;
                  v66 = self;
                  v67 = 2114;
                  v68 = v30;
                  v69 = 2114;
                  v70 = v9;
                  v71 = 2114;
                  v72 = v48;
                  _os_log_impl(&dword_1B4491000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating delegation provider session [new delegated account] - userIdentity=%{public}@ - delegationAccountUUIDs=%{public}@ -  netService=%{public}@", buf, 0x2Au);
                }

                v38 = [[ICDelegationProviderServiceSession alloc] initWithUserIdentities:v30 userIdentityStore:self->_identityStore requestContext:self->_requestContext netService:v48 delegationAccountUUIDs:v9];
                [(ICDelegationProviderServiceSession *)v38 setDelegate:self];
                v22 = v44;
                if (!v44)
                {
                  v22 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
                  activeServiceSessions = self->_activeServiceSessions;
                  if (!activeServiceSessions)
                  {
                    v40 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
                    v41 = self->_activeServiceSessions;
                    self->_activeServiceSessions = v40;

                    activeServiceSessions = self->_activeServiceSessions;
                  }

                  [(NSMapTable *)activeServiceSessions setObject:v22 forKey:v48];
                }

                [v22 addObject:v38];
                [(ICDelegationProviderServiceSession *)v38 start];
              }
            }

            i = v47;
          }
        }

        v46 = [obj countByEnumeratingWithState:&v61 objects:v76 count:16];
      }

      while (v46);
    }
  }
}

- (void)_updateBrowsingStatus
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isSystemService)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = self;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating browsing status", buf, 0xCu);
    }

    [(ICDelegationProviderService *)self _updateAssertionTimeouts];
    if (![(NSMutableSet *)self->_assertions count])
    {
      self->_isNetServiceBrowserSearching = 0;
      v9 = self->_netServiceBrowser;
      netServiceBrowserQueue = self->_netServiceBrowserQueue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __52__ICDelegationProviderService__updateBrowsingStatus__block_invoke_31;
      v11[3] = &unk_1E7BFA078;
      v12 = v9;
      v13 = self;
      v7 = v9;
      dispatch_async(netServiceBrowserQueue, v11);
      v8 = v12;
      goto LABEL_10;
    }

    if (!self->_netServiceBrowser)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__ICDelegationProviderService__updateBrowsingStatus__block_invoke;
      block[3] = &unk_1E7BFA300;
      block[4] = self;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    isNetServiceBrowserSearching = self->_isNetServiceBrowserSearching;
    self->_isNetServiceBrowserSearching = 1;
    if (!isNetServiceBrowserSearching)
    {
      v5 = self->_netServiceBrowser;
      v6 = self->_netServiceBrowserQueue;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __52__ICDelegationProviderService__updateBrowsingStatus__block_invoke_2;
      v14[3] = &unk_1E7BF9CB0;
      v16 = isNetServiceBrowserSearching;
      v14[4] = self;
      v15 = v5;
      v7 = v5;
      dispatch_async(v6, v14);
      v8 = v15;
LABEL_10:
    }
  }
}

uint64_t __52__ICDelegationProviderService__updateBrowsingStatus__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695AC28]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;

  [*(*(a1 + 32) + 88) setIncludesPeerToPeer:0];
  v5 = *(*(a1 + 32) + 88);

  return [v5 setDelegate:?];
}

uint64_t __52__ICDelegationProviderService__updateBrowsingStatus__block_invoke_2(uint64_t result)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(result + 48) & 1) == 0)
  {
    v1 = result;
    v2 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 32);
      v4 = *(v1 + 40);
      v5 = 138543618;
      v6 = v3;
      v7 = 2114;
      v8 = v4;
      _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Searching for services with browser: %{public}@", &v5, 0x16u);
    }

    return [*(v1 + 40) searchForServicesOfType:@"_itsdlgt._tcp." inDomain:@"local"];
  }

  return result;
}

void __52__ICDelegationProviderService__updateBrowsingStatus__block_invoke_31(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) stop];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping service search with browser: %{public}@", &v5, 0x16u);
  }
}

- (void)_updateAssertionTimeouts
{
  v35 = *MEMORY[0x1E69E9840];
  assertionTimeoutSource = self->_assertionTimeoutSource;
  if (assertionTimeoutSource)
  {
    dispatch_source_cancel(assertionTimeoutSource);
    v4 = self->_assertionTimeoutSource;
    self->_assertionTimeoutSource = 0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = self;
  v5 = self->_assertions;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v12 expirationDate];
        v14 = v13;
        if (v13)
        {
          [v13 timeIntervalSinceNow];
          if (v15 <= 0.00000011920929)
          {
            if (!v9)
            {
              v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            [v9 addObject:v12];
          }

          else if (!v8 || ([v8 earlierDate:v14], v16 = objc_claimAutoreleasedReturnValue(), v16, v16 == v14))
          {
            v17 = v14;

            v8 = v17;
          }
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if ([v9 count])
  {
    [(NSMutableSet *)v26->_assertions minusSet:v9];
  }

  if (v8)
  {
    [v8 timeIntervalSinceNow];
    v19 = v18;
    v20 = dispatch_get_global_queue(0, 0);
    v21 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v20);
    v22 = v26->_assertionTimeoutSource;
    v26->_assertionTimeoutSource = v21;

    v23 = v26->_assertionTimeoutSource;
    v24 = dispatch_time(0, (v19 * 1000000000.0));
    dispatch_source_set_timer(v23, v24, 0xFFFFFFFFFFFFFFFFLL, (v19 * 0.01 * 1000000000.0));
    objc_initWeak(&location, v26);
    v25 = v26->_assertionTimeoutSource;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __55__ICDelegationProviderService__updateAssertionTimeouts__block_invoke;
    handler[3] = &unk_1E7BFA328;
    objc_copyWeak(&v28, &location);
    dispatch_source_set_event_handler(v25, handler);
    dispatch_resume(v26->_assertionTimeoutSource);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

void __55__ICDelegationProviderService__updateAssertionTimeouts__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__ICDelegationProviderService__updateAssertionTimeouts__block_invoke_2;
    block[3] = &unk_1E7BFA300;
    v5 = WeakRetained;
    dispatch_barrier_async(v3, block);
  }
}

uint64_t __55__ICDelegationProviderService__updateAssertionTimeouts__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[73] == 1)
  {
    return [v1 _updateBrowsingStatus];
  }

  else
  {
    return [v1 _updateAssertionTimeouts];
  }
}

- (void)_removeConnection:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSMutableSet *)self->_connections removeObject:v4];
  v5 = [(NSMapTable *)self->_connectionToAssertions objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v11 expirationDate];

          if (!v12)
          {
            [(NSMutableSet *)self->_assertions removeObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(NSMapTable *)self->_connectionToAssertions removeObjectForKey:v4];
  }

  if (![(NSMutableSet *)self->_connections count])
  {
    connections = self->_connections;
    self->_connections = 0;
  }

  [(ICDelegationProviderService *)self _updateBrowsingStatus];
}

- (void)_unregisterNotificationsForDelegationNetService:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:self name:@"ICDelegationProviderNetServiceDelegationAccountUUIDsDidChangeNotification" object:v5];
}

- (void)_registerNotificationsForDelegationNetService:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:self selector:sel__netServiceDelegationAccountUUIDsDidChangeNotification_ name:@"ICDelegationProviderNetServiceDelegationAccountUUIDsDidChangeNotification" object:v5];
}

- (void)_addConnection:(id)a3
{
  v4 = a3;
  connections = self->_connections;
  v8 = v4;
  if (!connections)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v7 = self->_connections;
    self->_connections = v6;

    v4 = v8;
    connections = self->_connections;
  }

  [(NSMutableSet *)connections addObject:v4];
}

- (void)_netServiceDelegationAccountUUIDsDidChangeNotification:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Delegation account UUIDs did change for with notification: %{public}@", buf, 0x16u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__ICDelegationProviderService__netServiceDelegationAccountUUIDsDidChangeNotification___block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

- (void)delegationProviderServiceRemoveAssertion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696B0B8] currentConnection];
    if (v5)
    {
      v6 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v12 = self;
        v13 = 2114;
        v14 = v5;
        v15 = 2114;
        v16 = v4;
        _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection %{public}@ did remove assertion: %{public}@", buf, 0x20u);
      }

      accessQueue = self->_accessQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__ICDelegationProviderService_delegationProviderServiceRemoveAssertion___block_invoke;
      block[3] = &unk_1E7BFA178;
      block[4] = self;
      v9 = v5;
      v10 = v4;
      dispatch_barrier_async(accessQueue, block);
    }
  }
}

void __72__ICDelegationProviderService_delegationProviderServiceRemoveAssertion___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) containsObject:*(a1 + 40)])
  {
    v4 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
    [*(*(a1 + 32) + 40) removeObject:*(a1 + 48)];
    [v4 removeObject:*(a1 + 48)];
    if (![v4 count])
    {
      [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
      if (![*(*(a1 + 32) + 32) count])
      {
        v2 = *(a1 + 32);
        v3 = *(v2 + 32);
        *(v2 + 32) = 0;
      }
    }

    [*(a1 + 32) _updateBrowsingStatus];
  }
}

- (void)delegationProviderServiceAddAssertion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696B0B8] currentConnection];
    if (v5)
    {
      v6 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v12 = self;
        v13 = 2114;
        v14 = v5;
        v15 = 2114;
        v16 = v4;
        _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection %{public}@ did add assertion: %{public}@", buf, 0x20u);
      }

      accessQueue = self->_accessQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__ICDelegationProviderService_delegationProviderServiceAddAssertion___block_invoke;
      block[3] = &unk_1E7BFA178;
      block[4] = self;
      v9 = v5;
      v10 = v4;
      dispatch_barrier_async(accessQueue, block);
    }
  }
}

void __69__ICDelegationProviderService_delegationProviderServiceAddAssertion___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) containsObject:*(a1 + 40)])
  {
    v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
    if (!v2)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v4 = *(*(a1 + 32) + 32);
      v12 = v3;
      if (!v4)
      {
        v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        v6 = *(a1 + 32);
        v7 = *(v6 + 32);
        *(v6 + 32) = v5;

        v4 = *(*(a1 + 32) + 32);
      }

      [v4 setObject:v12 forKey:*(a1 + 40)];
      v2 = v12;
    }

    v13 = v2;
    v8 = *(*(a1 + 32) + 40);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v10 = *(a1 + 32);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = *(*(a1 + 32) + 40);
    }

    [v8 addObject:*(a1 + 48)];
    [v13 addObject:*(a1 + 48)];
    [*(a1 + 32) _updateBrowsingStatus];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.itunescloud.delegation-provider"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    accessQueue = self->_accessQueue;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __66__ICDelegationProviderService_listener_shouldAcceptNewConnection___block_invoke;
    v14 = &unk_1E7BFA078;
    v15 = self;
    v9 = v5;
    v16 = v9;
    dispatch_barrier_sync(accessQueue, &v11);
    [v9 resume];
  }

  return v7;
}

void __66__ICDelegationProviderService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, *(a1 + 40));
  v2 = *(a1 + 40);
  v3 = ICCDelegationProviderServiceXPCGetInterface();
  [v2 setRemoteObjectInterface:v3];

  [*(a1 + 40) setExportedObject:*(a1 + 32)];
  v4 = *(a1 + 40);
  v5 = ICSDelegationProviderServiceXPCGetInterface();
  [v4 setExportedInterface:v5];

  v6 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__ICDelegationProviderService_listener_shouldAcceptNewConnection___block_invoke_2;
  v14[3] = &unk_1E7BF6D98;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  [v6 setInterruptionHandler:v14];
  v7 = *(a1 + 40);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __66__ICDelegationProviderService_listener_shouldAcceptNewConnection___block_invoke_22;
  v11 = &unk_1E7BF6D98;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  [v7 setInvalidationHandler:&v8];
  [*(a1 + 32) _addConnection:{*(a1 + 40), v8, v9, v10, v11}];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __66__ICDelegationProviderService_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "[ICDelegationProviderService] Connection interrupted.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    if (v4)
    {
      [WeakRetained _removeConnection:v4];
    }
  }
}

void __66__ICDelegationProviderService_listener_shouldAcceptNewConnection___block_invoke_22(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "[ICDelegationProviderService] Connection invalidated.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    if (v4)
    {
      [WeakRetained _removeConnection:v4];
    }
  }
}

- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4 moreComing:(BOOL)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing service %{public}@", buf, 0x16u);
    }

    accessQueue = self->_accessQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__ICDelegationProviderService_netServiceBrowser_didRemoveService_moreComing___block_invoke;
    v9[3] = &unk_1E7BFA078;
    v9[4] = self;
    v10 = v6;
    dispatch_barrier_async(accessQueue, v9);
  }
}

void __77__ICDelegationProviderService_netServiceBrowser_didRemoveService_moreComing___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v25 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v24 + 1) + 8 * v6);
      v8 = [v7 netService];
      v9 = *(a1 + 40);

      if (v8 == v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v7;

    if (!v10)
    {
      return;
    }

    [*(a1 + 32) _unregisterNotificationsForDelegationNetService:v10];
    v11 = [*(*(a1 + 32) + 16) objectForKey:v10];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v20 + 1) + 8 * i) stop];
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v13);
    }

    [*(*(a1 + 32) + 16) removeObjectForKey:v10];
    if (![*(*(a1 + 32) + 16) count])
    {
      v16 = *(a1 + 32);
      v17 = *(v16 + 16);
      *(v16 + 16) = 0;
    }

    [*(*(a1 + 32) + 56) removeObject:v10];
    if (![*(*(a1 + 32) + 56) count])
    {
      v18 = *(a1 + 32);
      v19 = *(v18 + 56);
      *(v18 + 56) = 0;
    }
  }

  else
  {
LABEL_9:
    v10 = v2;
  }
}

- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Found service %{public}@", buf, 0x16u);
    }

    v8 = [[ICDelegationProviderNetService alloc] initWithNetService:v6];
    accessQueue = self->_accessQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__ICDelegationProviderService_netServiceBrowser_didFindService_moreComing___block_invoke;
    v11[3] = &unk_1E7BFA078;
    v11[4] = self;
    v12 = v8;
    v10 = v8;
    dispatch_barrier_async(accessQueue, v11);
  }
}

uint64_t __75__ICDelegationProviderService_netServiceBrowser_didFindService_moreComing___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _registerNotificationsForDelegationNetService:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v2 = *(*(a1 + 32) + 56);
  }

  [v2 addObject:*(a1 + 40)];
  v6 = *(a1 + 32);

  return [v6 _updateDelegationForDiscoveredServices];
}

- (void)startSystemXPCService
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_isSystemService)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"ICDelegationProviderService.m" lineNumber:140 description:@"Cannot start XPC service for non-system service."];
  }

  v3 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting XPC service.", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__ICDelegationProviderService_startSystemXPCService__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_barrier_async(accessQueue, block);
}

uint64_t __52__ICDelegationProviderService_startSystemXPCService__block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 80))
  {
    v2 = result;
    v3 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.itunescloud.delegation-provider"];
    v4 = *(v2 + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = v3;

    [*(*(v2 + 32) + 80) setDelegate:?];
    v6 = *(*(v2 + 32) + 80);

    return [v6 resume];
  }

  return result;
}

- (void)removeAssertion:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__ICDelegationProviderService_removeAssertion___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

uint64_t __47__ICDelegationProviderService_removeAssertion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  if (v2[73] == 1)
  {

    return [v2 _updateBrowsingStatus];
  }

  else
  {
    v4 = [v2 _xpcConnection];
    v5 = [v4 remoteObjectProxy];
    [v5 delegationProviderServiceRemoveAssertion:*(a1 + 40)];

    v6 = *(a1 + 32);

    return [v6 _updateAssertionTimeouts];
  }
}

- (void)addAssertion:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__ICDelegationProviderService_addAssertion___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

uint64_t __44__ICDelegationProviderService_addAssertion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1 + 32) + 40);
  }

  [v2 addObject:*(a1 + 40)];
  v6 = *(a1 + 32);
  if (v6[73] == 1)
  {

    return [v6 _updateBrowsingStatus];
  }

  else
  {
    v8 = [v6 _xpcConnection];
    v9 = [v8 remoteObjectProxy];
    [v9 delegationProviderServiceAddAssertion:*(a1 + 40)];

    v10 = *(a1 + 32);

    return [v10 _updateAssertionTimeouts];
  }
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_discoveredServices;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(ICDelegationProviderService *)self _unregisterNotificationsForDelegationNetService:*(*(&v11 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 removeObserver:self name:@"ICUserIdentityStoreDidChangeNotification" object:self->_identityStore];
  [(NSXPCListener *)self->_listener setDelegate:0];
  assertionTimeoutSource = self->_assertionTimeoutSource;
  if (assertionTimeoutSource)
  {
    dispatch_source_cancel(assertionTimeoutSource);
  }

  v10.receiver = self;
  v10.super_class = ICDelegationProviderService;
  [(ICDelegationProviderService *)&v10 dealloc];
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = ICDelegationProviderService;
  v2 = [(ICDelegationProviderService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationProviderService.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;
  }

  return v2;
}

+ (id)systemServiceWithRequestContext:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 73) = 1;
    v7 = dispatch_queue_create("com.apple.iTunesCloud.ICDelegationProviderService.netServiceBrowserQueue", 0);
    v8 = v6[12];
    v6[12] = v7;

    v9 = [v4 copy];
    v10 = v6[16];
    v6[16] = v9;

    v11 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v11 setName:@"com.apple.iTunesCloud.ICDelegationProviderService.identityStoreOperationQueue"];
    [v11 setMaxConcurrentOperationCount:1];
    [v11 setQualityOfService:17];
    v12 = v6[13];
    v6[13] = v11;
    v13 = v11;

    v14 = +[ICUserIdentityStore defaultIdentityStore];
    v15 = v6[8];
    v6[8] = v14;
    v16 = v14;

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v6 selector:sel__userIdentityStoreDidChangeNotification_ name:@"ICUserIdentityStoreDidChangeNotification" object:v16];
    v18 = +[ICSecurityInfo sharedSecurityInfo];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __63__ICDelegationProviderService_systemServiceWithRequestContext___block_invoke;
    v20[3] = &unk_1E7BFA300;
    v21 = v6;
    [v18 performBlockAfterFirstUnlock:v20];
  }

  return v6;
}

+ (ICDelegationProviderService)sharedService
{
  if (sharedService_sOnceToken != -1)
  {
    dispatch_once(&sharedService_sOnceToken, &__block_literal_global_7682);
  }

  v3 = sharedService_sSharedService;

  return v3;
}

uint64_t __44__ICDelegationProviderService_sharedService__block_invoke()
{
  v0 = [[ICDelegationProviderService alloc] _init];
  v1 = sharedService_sSharedService;
  sharedService_sSharedService = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end