@interface SRAuthorizationClient
+ (SRAuthorizationClient)sharedInstance;
+ (void)initialize;
+ (void)setAuthClient:(id)client;
- (BOOL)dataCollectionEnabled;
- (BOOL)firstRunOnboardingCompleted;
- (NSArray)legacyResearchStudyBundleIDs;
- (NSDictionary)authorizedServices;
- (NSString)legacyResearchStudyEntitlement;
- (SRAuthorizationClient)init;
- (SRAuthorizationClient)initWithConnection:(id)connection;
- (uint64_t)authorizedServicesForBundleId:(void *)id;
- (uint64_t)deniedServicesForBundleId:(void *)id;
- (uint64_t)syncProxy;
- (void)addListener:(id)listener forBundleId:(id)id;
- (void)authorizedServicesDidChange:(id)change deniedServices:(id)services prerequisites:(int64_t)prerequisites lastModifiedTimes:(id)times bundleIdentifier:(id)identifier;
- (void)completeEnrollmentForBundleId:(id)id sensors:(id)sensors;
- (void)dealloc;
- (void)initialAuthorizationStateForBundleId:(id)id authorizationState:(id)state;
- (void)invalidate;
- (void)lastModifiedTimesForBundleId:(void *)result;
- (void)notifyListener:(uint64_t)listener withAuthorizationChangeForBundleIdentifier:;
- (void)removeListener:(id)listener;
- (void)reregisterAfterInterruption:(id)interruption effectiveBundleId:(id)id;
- (void)updateInitialAuthorizationStateIfNeeded;
@end

@implementation SRAuthorizationClient

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogAuthorizationClient = os_log_create("com.apple.SensorKit", "AuthorizationClient");
  }
}

+ (void)setAuthClient:(id)client
{
  if (_MergedGlobals_0 != client)
  {

    _MergedGlobals_0 = client;
  }
}

+ (SRAuthorizationClient)sharedInstance
{
  result = _MergedGlobals_0;
  if (!_MergedGlobals_0)
  {
    if (qword_28001AB00 != -1)
    {
      dispatch_once(&qword_28001AB00, &__block_literal_global_1);
    }

    return qword_28001AAF8;
  }

  return result;
}

SRAuthorizationClient *__39__SRAuthorizationClient_sharedInstance__block_invoke()
{
  result = objc_alloc_init(SRAuthorizationClient);
  qword_28001AAF8 = result;
  return result;
}

- (SRAuthorizationClient)init
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.SensorKit.authorization" options:4096];

  return [(SRAuthorizationClient *)self initWithConnection:v3];
}

- (SRAuthorizationClient)initWithConnection:(id)connection
{
  v34 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = SRAuthorizationClient;
  v4 = [(SRAuthorizationClient *)&v26 init];
  v5 = v4;
  if (v4)
  {
    [(SRAuthorizationClient *)v4 setInitialAuthNeeded:1];
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    objc_setProperty_nonatomic(v5, v7, weakToStrongObjectsMapTable, 24);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    objc_setProperty_atomic(v5, v9, dictionary, 32);
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    objc_setProperty_atomic(v5, v11, dictionary2, 40);
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    objc_setProperty_atomic(v5, v13, dictionary3, 48);
    objc_setProperty_nonatomic(v5, v14, connection, 16);
    -[NSXPCConnection setRemoteObjectInterface:](v5->_connection, "setRemoteObjectInterface:", [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287707418]);
    -[NSXPCConnection setExportedInterface:](v5->_connection, "setExportedInterface:", [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287705218]);
    [(NSXPCConnection *)v5->_connection setExportedObject:v5];
    objc_initWeak(&location, v5);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __44__SRAuthorizationClient_initWithConnection___block_invoke;
    v23[3] = &unk_279B99D38;
    objc_copyWeak(&v24, &location);
    v23[4] = connection;
    [(NSXPCConnection *)v5->_connection setInterruptionHandler:v23];
    [(NSXPCConnection *)v5->_connection resume];
    v15 = SRLogAuthorizationClient;
    if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(handler[0]) = 0;
      _os_log_debug_impl(&dword_26561F000, v15, OS_LOG_TYPE_DEBUG, "Registering for prerequisites notification", handler, 2u);
    }

    objc_initWeak(&from, v5);
    v5->_registrationToken = -1;
    p_registrationToken = &v5->_registrationToken;
    uTF8String = [@"com.apple.SensorKit.prerequisitesUpdated" UTF8String];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __56__SRAuthorizationClient_registerForPrerequisitesUpdated__block_invoke;
    handler[3] = &unk_279B99CD8;
    objc_copyWeak(&v28, &from);
    v18 = notify_register_dispatch(uTF8String, &v5->_registrationToken, MEMORY[0x277D85CD0], handler);
    if (v18 || *p_registrationToken == -1)
    {
      v19 = SRLogAuthorizationClient;
      if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_ERROR))
      {
        v20 = *p_registrationToken;
        *buf = 67240448;
        v31 = v18;
        v32 = 1026;
        v33 = v20;
        _os_log_error_impl(&dword_26561F000, v19, OS_LOG_TYPE_ERROR, "Failed to register for prerequisites notification status %{public}d, registration token %{public}d", buf, 0xEu);
      }
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

id *__44__SRAuthorizationClient_initWithConnection___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  result = objc_loadWeak((a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = v3[3];
    objc_sync_enter(v6);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v3[3];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [v5 addObject:{objc_msgSend(v3[3], "objectForKey:", *(*(&v21 + 1) + 8 * i))}];
        }

        v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }

    objc_sync_exit(v6);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    result = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    v11 = result;
    if (result)
    {
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          if ([v14 isEqualToString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle"), "bundleIdentifier")}])
          {
            v15 = 0;
          }

          else
          {
            v15 = v14;
          }

          [v3 reregisterAfterInterruption:v4 effectiveBundleId:v15];
          v13 = (v13 + 1);
        }

        while (v11 != v13);
        result = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
        v11 = result;
      }

      while (result);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)invalidate
{
  [(NSXPCConnection *)self->_connection invalidate];

  self->_connection = 0;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    registrationToken = self->_registrationToken;
    if (registrationToken != -1)
    {
      v4 = SRLogAuthorizationClient;
      if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_26561F000, v4, OS_LOG_TYPE_DEBUG, "Unregistering for prerequisites notification", buf, 2u);
        registrationToken = self->_registrationToken;
      }

      if (notify_cancel(registrationToken))
      {
        v5 = SRLogAuthorizationClient;
        if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_ERROR))
        {
          v10 = self->_registrationToken;
          *buf = 67240192;
          v13 = v10;
          _os_log_error_impl(&dword_26561F000, v5, OS_LOG_TYPE_ERROR, "Failed to cancel notification status %{public}d", buf, 8u);
        }
      }

      self->_registrationToken = -1;
    }
  }

  self->_listeners = 0;
  self->_actualAuthorizedServices = 0;
  objc_setProperty_atomic(self, v6, 0, 56);
  objc_setProperty_atomic(self, v7, 0, 40);

  self->_connection = 0;
  objc_setProperty_atomic(self, v8, 0, 48);
  v11.receiver = self;
  v11.super_class = SRAuthorizationClient;
  [(SRAuthorizationClient *)&v11 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)reregisterAfterInterruption:(id)interruption effectiveBundleId:(id)id
{
  remoteObjectProxy = [interruption remoteObjectProxy];

  [remoteObjectProxy registerForAuthorizationChangeNotificationsWithEffectiveBundleId:id];
}

- (void)updateInitialAuthorizationStateIfNeeded
{
  if (result)
  {
    v1 = result;
    result = [result initialAuthNeeded];
    if (result)
    {
      v2 = SRLogAuthorizationClient;
      if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26561F000, v2, OS_LOG_TYPE_INFO, "Retrieving initial authorization state", buf, 2u);
      }

      syncProxy = [(SRAuthorizationClient *)v1 syncProxy];
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __64__SRAuthorizationClient_updateInitialAuthorizationStateIfNeeded__block_invoke;
      v4[3] = &unk_279B99D60;
      v4[4] = v1;
      return [syncProxy retrieveCurrentAuthorizedServicesWithReply:v4];
    }
  }

  return result;
}

- (uint64_t)syncProxy
{
  if (!self)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v2 = *(self + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__SRAuthorizationClient_syncProxy__block_invoke;
  v8[3] = &unk_279B99D88;
  v8[4] = &v9;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v8];
  if (!v3)
  {
    domain = [v10[5] domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA050]] && objc_msgSend(v10[5], "code") == 4097)
    {

      v5 = SRLogAuthorizationClient;
      if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_26561F000, v5, OS_LOG_TYPE_DEFAULT, "Connection was interrupted, retrying...", v7, 2u);
      }

      v3 = [*(self + 16) synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_38];
    }

    else
    {
      v3 = 0;
    }
  }

  _Block_object_dispose(&v9, 8);
  return v3;
}

uint64_t __64__SRAuthorizationClient_updateInitialAuthorizationStateIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 24);
  }

  else
  {
    v8 = 0;
  }

  v50 = v8;
  objc_sync_enter(v8);
  v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a2];
  v11 = *(a1 + 32);
  if (v11)
  {
    objc_setProperty_atomic(v11, v9, v10, 32);
  }

  v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3];
  v14 = *(a1 + 32);
  if (v14)
  {
    objc_setProperty_atomic(v14, v12, v13, 40);
  }

  v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a4];
  v17 = *(a1 + 32);
  if (v17)
  {
    objc_setProperty_atomic(v17, v15, v16, 48);
  }

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v20 = *(a1 + 32);
  if (v20)
  {
    objc_setProperty_atomic(v20, v18, v19, 56);
  }

  v21 = SRLogAuthorizationClient;
  if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_INFO))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v22, 56, 1);
    }

    *buf = 134217984;
    v69 = [Property integerValue];
    _os_log_impl(&dword_26561F000, v21, OS_LOG_TYPE_INFO, "Retrieved initial authorization state. prerequisites: %ld", buf, 0xCu);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v24 = [a2 countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v24)
  {
    v25 = *v63;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v63 != v25)
        {
          objc_enumerationMutation(a2);
        }

        v27 = *(*(&v62 + 1) + 8 * i);
        v28 = SRLogAuthorizationClient;
        if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_INFO))
        {
          v30 = *(a1 + 32);
          if (v30)
          {
            v30 = objc_getProperty(v30, v29, 32, 1);
          }

          v31 = [v30 objectForKeyedSubscript:v27];
          *buf = 138543619;
          v69 = v27;
          v70 = 2113;
          v71 = v31;
          _os_log_impl(&dword_26561F000, v28, OS_LOG_TYPE_INFO, "%{public}@ authorized: %{private}@", buf, 0x16u);
        }
      }

      v24 = [a2 countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v24);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v32 = [a3 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v32)
  {
    v33 = *v59;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v59 != v33)
        {
          objc_enumerationMutation(a3);
        }

        v35 = *(*(&v58 + 1) + 8 * j);
        v36 = SRLogAuthorizationClient;
        if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_INFO))
        {
          v38 = *(a1 + 32);
          if (v38)
          {
            v38 = objc_getProperty(v38, v37, 40, 1);
          }

          v39 = [v38 objectForKeyedSubscript:v35];
          *buf = 138543619;
          v69 = v35;
          v70 = 2113;
          v71 = v39;
          _os_log_impl(&dword_26561F000, v36, OS_LOG_TYPE_INFO, "%{public}@ denied: %{private}@", buf, 0x16u);
        }
      }

      v32 = [a3 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v32);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v40 = [a4 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v40)
  {
    v41 = *v55;
    do
    {
      for (k = 0; k != v40; ++k)
      {
        if (*v55 != v41)
        {
          objc_enumerationMutation(a4);
        }

        v43 = *(*(&v54 + 1) + 8 * k);
        v44 = SRLogAuthorizationClient;
        if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_INFO))
        {
          v46 = *(a1 + 32);
          if (v46)
          {
            v46 = objc_getProperty(v46, v45, 48, 1);
          }

          v47 = [v46 objectForKeyedSubscript:v43];
          *buf = 138543619;
          v69 = v43;
          v70 = 2113;
          v71 = v47;
          _os_log_impl(&dword_26561F000, v44, OS_LOG_TYPE_INFO, "%{public}@ last modified times: %{private}@", buf, 0x16u);
        }
      }

      v40 = [a4 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v40);
  }

  [*(a1 + 32) setInitialAuthNeeded:0];
  result = objc_sync_exit(v50);
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

void __56__SRAuthorizationClient_registerForPrerequisitesUpdated__block_invoke(uint64_t a1)
{
  [objc_loadWeak((a1 + 32)) setInitialAuthNeeded:1];
  v1 = SRLogAuthorizationClient;
  if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_26561F000, v1, OS_LOG_TYPE_DEBUG, "Received notification of prerequisite change", v2, 2u);
  }
}

- (NSDictionary)authorizedServices
{
  [(SRAuthorizationClient *)self updateInitialAuthorizationStateIfNeeded];
  if (self)
  {
    listeners = self->_listeners;
    objc_sync_enter(listeners);
    v4 = MEMORY[0x277CBEAC0];
    Property = objc_getProperty(self, v5, 32, 1);
  }

  else
  {
    objc_sync_enter(0);
    listeners = 0;
    Property = 0;
    v4 = MEMORY[0x277CBEAC0];
  }

  v7 = [v4 dictionaryWithDictionary:{objc_msgSend(Property, "copy")}];
  objc_sync_exit(listeners);
  return v7;
}

- (BOOL)dataCollectionEnabled
{
  [(SRAuthorizationClient *)self updateInitialAuthorizationStateIfNeeded];
  if (self)
  {
    Property = objc_getProperty(self, v3, 56, 1);
  }

  else
  {
    Property = 0;
  }

  return [Property integerValue] & 1;
}

- (BOOL)firstRunOnboardingCompleted
{
  [(SRAuthorizationClient *)self updateInitialAuthorizationStateIfNeeded];
  if (self)
  {
    Property = objc_getProperty(self, v3, 56, 1);
  }

  else
  {
    Property = 0;
  }

  return ([Property integerValue] >> 1) & 1;
}

- (void)completeEnrollmentForBundleId:(id)id sensors:(id)sensors
{
  syncProxy = [(SRAuthorizationClient *)self syncProxy];

  [syncProxy completeEnrollmentForBundleId:id sensors:sensors];
}

id __34__SRAuthorizationClient_syncProxy__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = SRLogAuthorizationClient;
  if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_error_impl(&dword_26561F000, v4, OS_LOG_TYPE_ERROR, "Failed to get sync proxy to daemon, error %{public}@", &v7, 0xCu);
  }

  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __34__SRAuthorizationClient_syncProxy__block_invoke_36(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SRLogAuthorizationClient;
  if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = a2;
    _os_log_error_impl(&dword_26561F000, v3, OS_LOG_TYPE_ERROR, "Failed to get sync proxy to daemon, error %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (NSArray)legacyResearchStudyBundleIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  syncProxy = [(SRAuthorizationClient *)self syncProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__SRAuthorizationClient_legacyResearchStudyBundleIDs__block_invoke;
  v5[3] = &unk_279B99DB0;
  v5[4] = &v6;
  [syncProxy legacyResearchStudyBundleIDs:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __53__SRAuthorizationClient_legacyResearchStudyBundleIDs__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (NSString)legacyResearchStudyEntitlement
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  syncProxy = [(SRAuthorizationClient *)self syncProxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SRAuthorizationClient_legacyResearchStudyEntitlement__block_invoke;
  v5[3] = &unk_279B99DD8;
  v5[4] = &v6;
  [syncProxy legacyResearchStudyEntitlement:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __55__SRAuthorizationClient_legacyResearchStudyEntitlement__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (void)addListener:(id)listener forBundleId:(id)id
{
  if (self)
  {
    listeners = self->_listeners;
  }

  else
  {
    listeners = 0;
  }

  objc_sync_enter(listeners);
  v8 = [(NSMapTable *)self->_listeners objectForKey:listener];
  v9 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v10 = v9;
  if (id)
  {
    idCopy = id;
  }

  else
  {
    idCopy = v9;
  }

  [(NSMapTable *)self->_listeners setObject:idCopy forKey:listener];
  if ((!v8 || [v8 isEqualToString:idCopy]) && ((v12 = objc_msgSend(id, "isEqualToString:", v10), v13 = -[NSXPCConnection remoteObjectProxy](self->_connection, "remoteObjectProxy"), !v12) ? (v14 = id) : (v14 = 0), objc_msgSend(v13, "registerForAuthorizationChangeNotificationsWithEffectiveBundleId:", v14), -[SRAuthorizationClient initialAuthNeeded](self, "initialAuthNeeded")))
  {
    v15 = SRLogAuthorizationClient;
    if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_26561F000, v15, OS_LOG_TYPE_DEFAULT, "Authorization state has not yet been sent from the daemon.", v18, 2u);
    }

    objc_sync_exit(listeners);
  }

  else
  {
    objc_sync_exit(listeners);
    v16 = [(SRAuthorizationClient *)self authorizedServicesForBundleId:idCopy];
    v17 = [(SRAuthorizationClient *)self deniedServicesForBundleId:idCopy];
    if ([v16 count] || objc_msgSend(v17, "count"))
    {

      [(SRAuthorizationClient *)self notifyListener:listener withAuthorizationChangeForBundleIdentifier:idCopy];
    }
  }
}

- (uint64_t)authorizedServicesForBundleId:(void *)id
{
  if (!id)
  {
    return 0;
  }

  v4 = id[3];
  objc_sync_enter(v4);
  v6 = [objc_msgSend(objc_getProperty(id v5];
  objc_sync_exit(v4);
  if (v6)
  {
    return v6;
  }

  v8 = MEMORY[0x277CBEB98];

  return [v8 set];
}

- (uint64_t)deniedServicesForBundleId:(void *)id
{
  if (!id)
  {
    return 0;
  }

  v4 = id[3];
  objc_sync_enter(v4);
  v6 = [objc_msgSend(objc_getProperty(id v5];
  objc_sync_exit(v4);
  if (v6)
  {
    return v6;
  }

  v8 = MEMORY[0x277CBEB98];

  return [v8 set];
}

- (void)notifyListener:(uint64_t)listener withAuthorizationChangeForBundleIdentifier:
{
  if (result)
  {
    v5 = result;
    v6 = [(SRAuthorizationClient *)result authorizedServicesForBundleId:listener];
    v7 = [(SRAuthorizationClient *)v5 deniedServicesForBundleId:listener];
    dataCollectionEnabled = [v5 dataCollectionEnabled];
    firstRunOnboardingCompleted = [v5 firstRunOnboardingCompleted];
    v10 = [(SRAuthorizationClient *)v5 lastModifiedTimesForBundleId:listener];

    return [a2 authorizedServicesDidChange:v6 deniedServices:v7 dataCollectionEnabled:dataCollectionEnabled onboardingCompleted:firstRunOnboardingCompleted lastModifiedTimes:v10 forBundleIdentifier:listener];
  }

  return result;
}

- (void)removeListener:(id)listener
{
  if (self)
  {
    listeners = self->_listeners;
    objc_sync_enter(listeners);
    v6 = self->_listeners;
  }

  else
  {
    objc_sync_enter(0);
    listeners = 0;
    v6 = 0;
  }

  [(NSMapTable *)v6 removeObjectForKey:listener];

  objc_sync_exit(listeners);
}

- (void)lastModifiedTimesForBundleId:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[3];
    objc_sync_enter(v4);
    v6 = [objc_msgSend(objc_getProperty(v3 v5];
    objc_sync_exit(v4);
    if (v6)
    {
      return v6;
    }

    else
    {
      return MEMORY[0x277CBEC10];
    }
  }

  return result;
}

- (void)initialAuthorizationStateForBundleId:(id)id authorizationState:(id)state
{
  [(SRAuthorizationClient *)self updateInitialAuthorizationStateIfNeeded];
  v7 = [(SRAuthorizationClient *)self authorizedServicesForBundleId:id];
  v8 = [(SRAuthorizationClient *)self deniedServicesForBundleId:id];
  dataCollectionEnabled = [(SRAuthorizationClient *)self dataCollectionEnabled];
  firstRunOnboardingCompleted = [(SRAuthorizationClient *)self firstRunOnboardingCompleted];
  v11 = [(SRAuthorizationClient *)self lastModifiedTimesForBundleId:id];
  v12 = *(state + 2);

  v12(state, v7, v8, dataCollectionEnabled, firstRunOnboardingCompleted, v11);
}

- (void)authorizedServicesDidChange:(id)change deniedServices:(id)services prerequisites:(int64_t)prerequisites lastModifiedTimes:(id)times bundleIdentifier:(id)identifier
{
  v48 = *MEMORY[0x277D85DE8];
  v13 = SRLogAuthorizationClient;
  if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544387;
    identifierCopy = identifier;
    v40 = 2050;
    prerequisitesCopy = prerequisites;
    v42 = 2114;
    changeCopy = change;
    v44 = 2114;
    servicesCopy = services;
    v46 = 2113;
    timesCopy = times;
    _os_log_impl(&dword_26561F000, v13, OS_LOG_TYPE_DEFAULT, "Daemon authorization update for bundle: %{public}@, prerequisites: %{public}ld, authorized: %{public}@, denied: %{public}@, last modified times: %{private}@", buf, 0x34u);
  }

  if (self)
  {
    listeners = self->_listeners;
    objc_sync_enter(listeners);
    Property = objc_getProperty(self, v15, 32, 1);
  }

  else
  {
    objc_sync_enter(0);
    listeners = 0;
    Property = 0;
  }

  if ([objc_msgSend(Property objectForKeyedSubscript:{identifier), "isEqual:", change}] && (!self ? (v18 = 0) : (v18 = objc_getProperty(self, v17, 40, 1)), objc_msgSend(objc_msgSend(v18, "objectForKeyedSubscript:", identifier), "isEqualToSet:", services)))
  {
    if (self)
    {
      if (objc_getProperty(self, v17, 56, 1) && [objc_getProperty(self v17] == prerequisites)
      {
        v19 = SRLogAuthorizationClient;
        if (os_log_type_enabled(SRLogAuthorizationClient, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26561F000, v19, OS_LOG_TYPE_DEFAULT, "Ignoring duplicate daemon authorization update", buf, 2u);
        }

        objc_sync_exit(listeners);
        goto LABEL_32;
      }

      goto LABEL_16;
    }
  }

  else if (self)
  {
LABEL_16:
    v20 = objc_getProperty(self, v17, 32, 1);
    goto LABEL_17;
  }

  v20 = 0;
LABEL_17:
  [v20 setObject:change forKeyedSubscript:identifier];
  if (self)
  {
    v22 = objc_getProperty(self, v21, 40, 1);
  }

  else
  {
    v22 = 0;
  }

  [v22 setObject:services forKeyedSubscript:identifier];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:prerequisites];
  if (self)
  {
    objc_setProperty_atomic(self, v24, v23, 56);
    v26 = objc_getProperty(self, v25, 48, 1);
  }

  else
  {
    v26 = 0;
  }

  [v26 setObject:times forKeyedSubscript:identifier];
  objc_sync_exit(listeners);
  [(SRAuthorizationClient *)self setInitialAuthNeeded:0];
  if (self)
  {
    v27 = self->_listeners;
    objc_sync_enter(v27);
    v28 = [(NSMapTable *)self->_listeners copy];
    objc_sync_exit(v27);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = [v28 countByEnumeratingWithState:&v34 objects:buf count:16];
    if (v29)
    {
      v30 = *v35;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v35 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v34 + 1) + 8 * i);
          if ([objc_msgSend(v28 objectForKey:{v32), "isEqual:", identifier}])
          {
            [(SRAuthorizationClient *)self notifyListener:v32 withAuthorizationChangeForBundleIdentifier:identifier];
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v34 objects:buf count:16];
      }

      while (v29);
    }
  }

LABEL_32:
  v33 = *MEMORY[0x277D85DE8];
}

@end