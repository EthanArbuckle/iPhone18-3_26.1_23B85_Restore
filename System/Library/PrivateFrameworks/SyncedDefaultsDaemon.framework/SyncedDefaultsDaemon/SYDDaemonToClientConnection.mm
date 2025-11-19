@interface SYDDaemonToClientConnection
+ (id)changeDictionaryWithChangedKeys:(id)a3 reason:(int64_t)a4 changeToken:(id)a5;
+ (id)changedKeysForStoreIdentifier:(id)a3 sinceChangeTokenIfValid:(id)a4 inCoreDataStore:(id)a5 error:(id *)a6;
+ (id)errorForUnknownStore:(id)a3;
+ (id)errorNotEntitledForStoreConfiguration:(id)a3;
- (BOOL)_isEntitledForStoreConfiguration:(id)a3;
- (BOOL)isCloudSyncEnablementEntitledForStoreIdentifier:(id)a3;
- (BOOL)isEntitledForStoreConfiguration:(id)a3;
- (BOOL)isKnownStore:(id)a3;
- (BOOL)isPerformingManualSync;
- (BOOL)shouldEnforceQuotaForStoreConfiguration:(id)a3;
- (NSString)applicationIdentifier;
- (NSString)description;
- (SYDDaemonToClientConnection)initWithXPCConnection:(id)a3 delegate:(id)a4;
- (SYDDaemonToClientConnectionDelegate)delegate;
- (SYDEntitlements)entitlements;
- (id)changeTokenURLForStoreConfiguration:(id)a3 xpcConnection:(id)a4 error:(id *)a5;
- (id)client;
- (id)relatedApplicationsForStoreIdentifier:(id)a3;
- (id)valueForEntitlement:(id)a3 storeConfiguration:(id)a4;
- (void)allStoreIdentifiersWithCompletionHandler:(id)a3;
- (void)applicationIdentifier;
- (void)changeDictionarySinceChangeToken:(id)a3 inStoreWithConfiguration:(id)a4 reply:(id)a5;
- (void)changeTokenForStoreWithConfiguration:(id)a3 reply:(id)a4;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)containerIDWithConfiguration:(id)a3 reply:(id)a4;
- (void)daemonToClientConnectionDidChangeValues:(id)a3;
- (void)dealloc;
- (void)decrementManualSyncCount;
- (void)deleteDataFromDiskForStoreWithConfiguration:(id)a3 reply:(id)a4;
- (void)dictionaryRepresentationForStoreWithConfiguration:(id)a3 reply:(id)a4;
- (void)exit;
- (void)incrementManualSyncCount;
- (void)isCloudSyncUserDefaultEnabledForStoreIdentifier:(id)a3 completionHandler:(id)a4;
- (void)isUIFrameworkLinkedInDaemonWithReply:(id)a3;
- (void)notifyAccountDidChangeFromAccountID:(id)a3 toAccountID:(id)a4 completionHandler:(id)a5;
- (void)objectForKey:(id)a3 inStoreWithConfiguration:(id)a4 reply:(id)a5;
- (void)personaUniqueStringWithReply:(id)a3;
- (void)postFakeAccountChangeNotificationWithPreviousID:(id)a3 currentID:(id)a4 completionHandler:(id)a5;
- (void)postFakeSyncManagerChangeNotificationForStoreWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)processAccountChangesWithCompletionHandler:(id)a3;
- (void)registerForChangeNotificationsForStoreWithConfiguration:(id)a3 reply:(id)a4;
- (void)removeObjectForKey:(id)a3 inStoreWithConfiguration:(id)a4 reply:(id)a5;
- (void)removeUnitTestSyncManagersWithReply:(id)a3;
- (void)resume;
- (void)saveChangeToken:(id)a3 forStoreWithConfiguration:(id)a4 reply:(id)a5;
- (void)setFakeError:(id)a3 forNextCloudKitRequestOfClassName:(id)a4 inStoreWithConfiguration:(id)a5;
- (void)setObject:(id)a3 forKey:(id)a4 inStoreWithConfiguration:(id)a5 reply:(id)a6;
- (void)syncManagerDidChangeNotification:(id)a3;
- (void)synchronizeStoreWithConfiguration:(id)a3 completionHandler:(id)a4;
- (void)synchronizeStoresWithIdentifiers:(id)a3 type:(int64_t)a4 testConfiguration:(id)a5 completionHandler:(id)a6;
@end

@implementation SYDDaemonToClientConnection

- (void)resume
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 xpcConnection];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];;

  v7 = [(SYDDaemonToClientConnection *)self registeredStoreIDs];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(SYDDaemonToClientConnection *)self registeredStoreIDs];
    v10 = [v9 allObjects];
    v11 = [v10 componentsJoinedByString:{@", "}];
    [v6 appendFormat:@" registeredStoreIDs=[%@]", v11];
  }

  xpcConnection = self->_xpcConnection;
  if (xpcConnection && [(NSXPCConnection *)xpcConnection processIdentifier])
  {
    [v6 appendFormat:@" clientPID=%d", -[NSXPCConnection processIdentifier](self->_xpcConnection, "processIdentifier")];
  }

  [v6 appendString:@">"];

  return v6;
}

- (SYDDaemonToClientConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SYDEntitlements)entitlements
{
  v3 = objc_alloc(MEMORY[0x277D6B878]);
  v4 = [(SYDDaemonToClientConnection *)self xpcConnection];
  v5 = v4;
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v6 = [v3 initWithAuditToken:v8];

  return v6;
}

- (void)incrementManualSyncCount
{
  v5[3] = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  [(SYDDaemonToClientConnection *)v2 setManualSyncCount:[(SYDDaemonToClientConnection *)v2 manualSyncCount]+ 1];
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SYDDaemonToClientConnection *)v2 incrementManualSyncCount];
  }

  objc_sync_exit(v2);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)decrementManualSyncCount
{
  v5[3] = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  [(SYDDaemonToClientConnection *)v2 setManualSyncCount:[(SYDDaemonToClientConnection *)v2 manualSyncCount]- 1];
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SYDDaemonToClientConnection *)v2 decrementManualSyncCount];
  }

  objc_sync_exit(v2);
  v4 = *MEMORY[0x277D85DE8];
}

void __37__SYDDaemonToClientConnection_resume__block_invoke_42(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = SYDGetConnectionLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [WeakRetained xpcConnection];
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_26C384000, v2, OS_LOG_TYPE_INFO, "Connection invalidated %@", &v6, 0xCu);
    }

    v4 = [WeakRetained delegate];
    [v4 connectionDidInvalidate:WeakRetained];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SYDDaemonToClientConnection;
  [(SYDDaemonToClientConnection *)&v4 dealloc];
}

- (SYDDaemonToClientConnection)initWithXPCConnection:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = SYDDaemonToClientConnection;
  v9 = [(SYDDaemonToClientConnection *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xpcConnection, a3);
    [v7 setDelegate:v10];
    objc_storeWeak(&v10->_delegate, v8);
    v11 = [v7 valueForEntitlement:@"com.apple.private.kvs.test"];
    v10->_supportsTesting = v11 != 0;

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.kvs.daemon-to-client.%d", objc_msgSend(v7, "processIdentifier")];
    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    queue = v10->_queue;
    v10->_queue = v15;

    v17 = [v12 stringByAppendingString:@".callback"];

    v18 = [v17 UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(v18, v19);
    callbackQueue = v10->_callbackQueue;
    v10->_callbackQueue = v20;

    dispatch_queue_set_specific(v10->_queue, &v10->_queue, 1, 0);
    v22 = [MEMORY[0x277CBEB58] set];
    registeredStoreIDs = v10->_registeredStoreIDs;
    v10->_registeredStoreIDs = v22;

    v24 = [MEMORY[0x277CBEB58] set];
    entitledStoreIDs = v10->_entitledStoreIDs;
    v10->_entitledStoreIDs = v24;

    v10->_manualSyncCount = 0;
    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 addObserver:v10 selector:sel_syncManagerDidChangeNotification_ name:@"SYDSyncManagerNotificationValuesDidChange" object:0];

    v27 = [MEMORY[0x277CCAB98] defaultCenter];
    [v27 addObserver:v10 selector:sel_daemonToClientConnectionDidChangeValues_ name:@"SYDDaemonToClientConnectionNotificationChangedValues" object:0];

    [(SYDDaemonToClientConnection *)v10 resume];
  }

  return v10;
}

- (NSString)applicationIdentifier
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_applicationIdentifier)
  {
    v3 = [(SYDDaemonToClientConnection *)self xpcConnection];

    if (!v3)
    {
      v4 = SYDGetConnectionLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [SYDDaemonToClientConnection applicationIdentifier];
      }
    }

    v5 = SYDGetConnectionLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      buf.val[0] = 138412290;
      *&buf.val[1] = self;
      _os_log_impl(&dword_26C384000, v5, OS_LOG_TYPE_INFO, "Looking up application identifier for %@", &buf, 0xCu);
    }

    v6 = [(SYDDaemonToClientConnection *)self xpcConnection];
    v7 = v6;
    if (v6)
    {
      [v6 auditToken];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    v8 = SecTaskCreateWithAuditToken(0, &buf);

    if (v8)
    {
      error = 0;
      v9 = SecTaskCopySigningIdentifier(v8, &error);
      v10 = v9;
      v11 = error;
      if (error)
      {
        applicationIdentifier = SYDGetConnectionLog();
        if (os_log_type_enabled(applicationIdentifier, OS_LOG_TYPE_ERROR))
        {
          [SYDDaemonToClientConnection applicationIdentifier];
        }
      }

      else
      {
        if (!v9)
        {
LABEL_23:
          CFRelease(v8);

          goto LABEL_24;
        }

        v14 = SYDGetConnectionLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          buf.val[0] = 138412546;
          *&buf.val[1] = v10;
          LOWORD(buf.val[3]) = 2112;
          *(&buf.val[3] + 2) = self;
          _os_log_impl(&dword_26C384000, v14, OS_LOG_TYPE_INFO, "Found application identifier %@ for %@", &buf, 0x16u);
        }

        v15 = v10;
        applicationIdentifier = self->_applicationIdentifier;
        self->_applicationIdentifier = v15;
      }

      goto LABEL_23;
    }

    v13 = SYDGetConnectionLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SYDDaemonToClientConnection applicationIdentifier];
    }
  }

LABEL_24:
  v16 = self->_applicationIdentifier;
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)relatedApplicationsForStoreIdentifier:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(SYDDaemonToClientConnection *)self applicationIdentifier];
  if (v7)
  {
    [v6 addObject:v7];
  }

  v8 = [(SYDDaemonToClientConnection *)self entitlements];
  v9 = [v8 relatedApplicationsForStoreIdentifier:v5];

  [v6 addObjectsFromArray:v9];
  v10 = [v6 allObjects];

  return v10;
}

void __37__SYDDaemonToClientConnection_resume__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = SYDGetConnectionLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [WeakRetained xpcConnection];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_26C384000, v2, OS_LOG_TYPE_INFO, "Connection interrupted %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = SYDGetConnectionLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v11)
    {
      v12 = NSStringFromSelector([v9 selector]);
      v13 = [MEMORY[0x277D77C08] currentPersona];
      v14 = SYDUserPersonaDescription(v13);
      *v19 = 138412546;
      *&v19[4] = v12;
      *&v19[12] = 2112;
      *&v19[14] = v14;
      v15 = "Handling invocation -%@ reply with persona: %@";
LABEL_6:
      _os_log_impl(&dword_26C384000, v10, OS_LOG_TYPE_INFO, v15, v19, 0x16u);
    }
  }

  else if (v11)
  {
    v12 = NSStringFromSelector([v9 selector]);
    v13 = [MEMORY[0x277D77C08] currentPersona];
    v14 = SYDUserPersonaDescription(v13);
    *v19 = 138412546;
    *&v19[4] = v12;
    *&v19[12] = 2112;
    *&v19[14] = v14;
    v15 = "Handling invocation -%@ with persona: %@";
    goto LABEL_6;
  }

  if (protocol_getMethodDescription(&unk_287CF4838, [v9 selector], 1, 1).name && !-[SYDDaemonToClientConnection supportsTesting](self, "supportsTesting"))
  {
    v16 = SYDGetConnectionLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [SYDDaemonToClientConnection connection:handleInvocation:isReply:];
    }

    v17 = [MEMORY[0x277CCAE80] currentConnection];
    [v17 invalidate];
  }

  [v9 invoke];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)valueForEntitlement:(id)a3 storeConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!-[SYDDaemonToClientConnection supportsTesting](self, "supportsTesting") || ([v7 entitlementOverrides], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", v6), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = [(SYDDaemonToClientConnection *)self entitlements];
    v9 = [v10 valueForEntitlement:v6];
  }

  return v9;
}

- (BOOL)isEntitledForStoreConfiguration:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(SYDDaemonToClientConnection *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SYDDaemonToClientConnection_isEntitledForStoreConfiguration___block_invoke;
  v8[3] = &unk_279D2F890;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  syd_call_or_dispatch_sync_if_not_key(v5, &self->_queue, v8);

  LOBYTE(self) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return self;
}

void __63__SYDDaemonToClientConnection_isEntitledForStoreConfiguration___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) entitledStoreIDs];
  v4 = (a1 + 40);
  v5 = [*(a1 + 40) storeID];
  *(*(*(a1 + 48) + 8) + 24) = [v3 containsObject:v5];

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _isEntitledForStoreConfiguration:*(a1 + 40)];
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v6 = SYDGetConnectionLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __63__SYDDaemonToClientConnection_isEntitledForStoreConfiguration___block_invoke_cold_2(v4);
      }

      v7 = [*v2 entitledStoreIDs];
      v8 = [*v4 storeID];
      [v7 addObject:v8];
    }

    else
    {
      v9 = [*v2 notEntitledStoreIDs];
      v10 = [*v4 storeID];
      v11 = [v9 containsObject:v10];

      if (v11)
      {
        return;
      }

      v12 = [*v2 notEntitledStoreIDs];

      if (!v12)
      {
        v13 = [MEMORY[0x277CBEB58] setWithCapacity:1];
        [*v2 setNotEntitledStoreIDs:v13];
      }

      v14 = [*v2 notEntitledStoreIDs];
      v15 = [*v4 storeID];
      [v14 addObject:v15];

      v7 = SYDGetConnectionLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __63__SYDDaemonToClientConnection_isEntitledForStoreConfiguration___block_invoke_cold_1(v4);
      }
    }
  }
}

- (BOOL)_isEntitledForStoreConfiguration:(id)a3
{
  v4 = a3;
  v5 = SYDGetConnectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection _isEntitledForStoreConfiguration:];
  }

  v6 = [v4 storeID];
  v7 = [v6 identifier];
  v8 = [(SYDDaemonToClientConnection *)self valueForEntitlement:@"com.apple.developer.ubiquity-kvstore-identifier" storeConfiguration:v4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 isEqualToString:v7])
  {
    v11 = [(SYDDaemonToClientConnection *)self entitlements];
    v9 = [v11 additionalStoreIdentifiers];

    if ([v9 containsObject:v7])
    {
      v12 = SYDGetConnectionLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SYDDaemonToClientConnection _isEntitledForStoreConfiguration:];
      }

      v10 = 1;
      goto LABEL_42;
    }

    v12 = [(SYDDaemonToClientConnection *)self valueForEntitlement:@"com.apple.private.ubiquity-kvstore-identifier-prefix" storeConfiguration:v4];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 hasPrefix:v12])
    {
      v13 = SYDGetConnectionLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [SYDDaemonToClientConnection _isEntitledForStoreConfiguration:];
      }

      v10 = 1;
      goto LABEL_41;
    }

    v13 = [(SYDDaemonToClientConnection *)self valueForEntitlement:@"com.apple.private.ubiquity-kvstore-manage" storeConfiguration:v4];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 BOOLValue])
    {
      v14 = SYDGetConnectionLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [SYDDaemonToClientConnection _isEntitledForStoreConfiguration:];
      }

      v10 = 1;
      goto LABEL_40;
    }

    v15 = [(SYDDaemonToClientConnection *)self xpcConnection];
    v16 = [v15 valueForEntitlement:@"com.apple.private.trust-ubiquity-kvstore-identifier"];

    v14 = v16;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 BOOLValue])
    {
      v17 = SYDGetConnectionLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [SYDDaemonToClientConnection _isEntitledForStoreConfiguration:];
      }

      v10 = 1;
      goto LABEL_39;
    }

    v22 = v16;
    v18 = [(SYDDaemonToClientConnection *)self valueForEntitlement:@"com.apple.private.ubiquity-kvstore-access" storeConfiguration:v4];
    objc_opt_class();
    v17 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = SYDGetConnectionLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [SYDDaemonToClientConnection _isEntitledForStoreConfiguration:];
      }
    }

    else
    {
      v19 = [(SYDDaemonToClientConnection *)self valueForEntitlement:@"com.apple.private.kvs.test" storeConfiguration:v4];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || !-[NSObject BOOLValue](v19, "BOOLValue") || ![v7 hasPrefix:@"com.apple.kvs.test"])
      {
        v10 = 0;
        goto LABEL_38;
      }

      v21 = SYDGetConnectionLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [SYDDaemonToClientConnection _isEntitledForStoreConfiguration:];
      }
    }

    v10 = 1;
LABEL_38:

    v14 = v22;
LABEL_39:

LABEL_40:
LABEL_41:

LABEL_42:
    goto LABEL_43;
  }

  v9 = SYDGetConnectionLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection _isEntitledForStoreConfiguration:];
  }

  v10 = 1;
LABEL_43:

  return v10;
}

+ (id)errorNotEntitledForStoreConfiguration:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 storeID];
  v5 = [v4 identifier];
  v6 = [v3 stringWithFormat:@"Not entitled to access store %@", v5];

  v7 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v7 errorWithDomain:@"SyncedDefaults" code:3333 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)shouldEnforceQuotaForStoreConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SYDDaemonToClientConnection *)self ignoreQuotaEntitlementValue];

  if (!v5)
  {
    v6 = [(SYDDaemonToClientConnection *)self valueForEntitlement:@"com.apple.private.kvs.ignore-quota" storeConfiguration:v4];
    [(SYDDaemonToClientConnection *)self setIgnoreQuotaEntitlementValue:v6];
  }

  v7 = [(SYDDaemonToClientConnection *)self ignoreQuotaEntitlementValue];
  v8 = [v7 BOOLValue];

  return v8 ^ 1;
}

- (void)setObject:(id)a3 forKey:(id)a4 inStoreWithConfiguration:(id)a5 reply:(id)a6
{
  v35[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:v12])
  {
    v26 = [objc_opt_class() errorNotEntitledForStoreConfiguration:v12];
LABEL_14:
    v27 = v26;
    v13[2](v13, v26);

    goto LABEL_15;
  }

  if (![(SYDDaemonToClientConnection *)self isKnownStore:v12])
  {
    v26 = [objc_opt_class() errorForUnknownStore:v12];
    goto LABEL_14;
  }

  v14 = SYDGetConnectionLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection setObject:forKey:inStoreWithConfiguration:reply:];
  }

  v32 = 0;
  v15 = [(SYDDaemonToClientConnection *)self delegate];
  v16 = [v12 storeID];
  v31 = 0;
  v17 = [v15 connection:self syncManagerForStoreID:v16 error:&v31];
  v18 = v31;

  if (v17 && !v18)
  {
    v19 = [(SYDDaemonToClientConnection *)self shouldEnforceQuotaForStoreConfiguration:v12];
    v20 = [v12 storeID];
    v21 = [v20 identifier];
    v30 = 0;
    [v17 setObject:v10 forKey:v11 inStoreWithIdentifier:v21 excludeFromChangeTracking:1 enforceQuota:v19 didChangeValue:&v32 error:&v30];
    v18 = v30;
  }

  if (!v18 && v32 == 1)
  {
    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    v33 = v11;
    v34[0] = @"changedKeys";
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    v34[1] = @"storeID";
    v35[0] = v29;
    v23 = [v12 storeID];
    v35[1] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    [v22 postNotificationName:@"SYDDaemonToClientConnectionNotificationChangedValues" object:self userInfo:v24];
  }

  v25 = SYDClientSuitableError(v18);
  v13[2](v13, v25);

LABEL_15:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)objectForKey:(id)a3 inStoreWithConfiguration:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:v9])
  {
    v20 = [objc_opt_class() errorNotEntitledForStoreConfiguration:v9];
LABEL_11:
    v21 = v20;
    v10[2](v10, 0, v20);

    goto LABEL_12;
  }

  if (![(SYDDaemonToClientConnection *)self isKnownStore:v9])
  {
    v20 = [objc_opt_class() errorForUnknownStore:v9];
    goto LABEL_11;
  }

  v11 = SYDGetConnectionLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection objectForKey:inStoreWithConfiguration:reply:];
  }

  v12 = [(SYDDaemonToClientConnection *)self delegate];
  v13 = [v9 storeID];
  v23 = 0;
  v14 = [v12 connection:self syncManagerForStoreID:v13 error:&v23];
  v15 = v23;

  v16 = 0;
  if (v14 && !v15)
  {
    v17 = [v9 storeID];
    v18 = [v17 identifier];
    v22 = 0;
    v16 = [v14 objectForKey:v8 inStoreWithIdentifier:v18 error:&v22];
    v15 = v22;
  }

  v19 = SYDClientSuitableError(v15);
  (v10)[2](v10, v16, v19);

LABEL_12:
}

- (void)removeObjectForKey:(id)a3 inStoreWithConfiguration:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:v9])
  {
    v19 = [objc_opt_class() errorNotEntitledForStoreConfiguration:v9];
LABEL_11:
    v20 = v19;
    v10[2](v10, v19);

    goto LABEL_12;
  }

  if (![(SYDDaemonToClientConnection *)self isKnownStore:v9])
  {
    v19 = [objc_opt_class() errorForUnknownStore:v9];
    goto LABEL_11;
  }

  v11 = SYDGetConnectionLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection removeObjectForKey:inStoreWithConfiguration:reply:];
  }

  v12 = [(SYDDaemonToClientConnection *)self delegate];
  v13 = [v9 storeID];
  v22 = 0;
  v14 = [v12 connection:self syncManagerForStoreID:v13 error:&v22];
  v15 = v22;

  if (v14 && !v15)
  {
    v16 = [v9 storeID];
    v17 = [v16 identifier];
    v21 = 0;
    [v14 removeObjectForKey:v8 inStoreWithIdentifier:v17 excludeFromChangeTracking:1 error:&v21];
    v15 = v21;
  }

  v18 = SYDClientSuitableError(v15);
  v10[2](v10, v18);

LABEL_12:
}

- (void)synchronizeStoreWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:v6])
  {
    v15 = [objc_opt_class() errorNotEntitledForStoreConfiguration:v6];
LABEL_9:
    v16 = v15;
    v7[2](v7, v15);

    goto LABEL_16;
  }

  if (![(SYDDaemonToClientConnection *)self isKnownStore:v6])
  {
    v15 = [objc_opt_class() errorForUnknownStore:v6];
    goto LABEL_9;
  }

  v8 = SYDGetConnectionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection synchronizeStoreWithConfiguration:completionHandler:];
  }

  v9 = [(SYDDaemonToClientConnection *)self delegate];
  v10 = [v6 storeID];
  v29 = 0;
  v11 = [v9 connection:self syncManagerForStoreID:v10 error:&v29];
  v12 = v29;

  if (v11)
  {
    [(SYDDaemonToClientConnection *)self incrementManualSyncCount];
    v13 = [v6 storeID];
    v14 = [v13 identifier];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__SYDDaemonToClientConnection_synchronizeStoreWithConfiguration_completionHandler___block_invoke;
    v26[3] = &unk_279D2F8E0;
    v26[4] = self;
    v27 = v6;
    v28 = v7;
    [v11 synchronizeStoreWithIdentifier:v14 completionHandler:v26];
  }

  else
  {
    v17 = SYDGetConnectionLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SYDDaemonToClientConnection synchronizeStoreWithConfiguration:completionHandler:];
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [v6 storeID];
    v20 = [v19 identifier];
    v21 = [v18 stringWithFormat:@"No sync manager trying to sync store %@", v20];

    if (!v12)
    {
      v22 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = v21;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v12 = [v22 errorWithDomain:@"SyncedDefaults" code:1234 userInfo:v23];
    }

    v24 = SYDClientSuitableError(v12);
    v7[2](v7, v24);
  }

LABEL_16:
  v25 = *MEMORY[0x277D85DE8];
}

void __83__SYDDaemonToClientConnection_synchronizeStoreWithConfiguration_completionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] decrementManualSyncCount];
  v4 = [a1[4] callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SYDDaemonToClientConnection_synchronizeStoreWithConfiguration_completionHandler___block_invoke_2;
  block[3] = &unk_279D2F8B8;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void __83__SYDDaemonToClientConnection_synchronizeStoreWithConfiguration_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = SYDClientSuitableError(*(a1 + 32));
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __83__SYDDaemonToClientConnection_synchronizeStoreWithConfiguration_completionHandler___block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)synchronizeStoresWithIdentifiers:(id)a3 type:(int64_t)a4 testConfiguration:(id)a5 completionHandler:(id)a6
{
  v50 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v38 = a5;
  v37 = a6;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [objc_alloc(MEMORY[0x277D6B888]) initWithIdentifier:*(*(&v43 + 1) + 8 * v15) type:a4];
        [v16 setTestConfiguration:v38];
        v17 = [objc_alloc(MEMORY[0x277D6B880]) initWithStoreID:v16];
        if (![(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:v17])
        {
          v28 = [objc_opt_class() errorNotEntitledForStoreConfiguration:v17];
          v27 = v37;
          (*(v37 + 2))(v37, v28);

          goto LABEL_24;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = [v11 count];
  v19 = SYDGetConnectionLog();
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [SYDDaemonToClientConnection synchronizeStoresWithIdentifiers:a4 type:? testConfiguration:? completionHandler:?];
    }

    v21 = objc_alloc(MEMORY[0x277D6B888]);
    v22 = [v11 firstObject];
    v23 = [v21 initWithIdentifier:v22 type:a4];

    [v23 setTestConfiguration:v38];
    v24 = [(SYDDaemonToClientConnection *)self delegate];
    v41 = 0;
    v25 = [v24 connection:self syncManagerForStoreID:v23 error:&v41];
    v26 = v41;

    if (v25)
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __105__SYDDaemonToClientConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke;
      v39[3] = &unk_279D2F930;
      v39[4] = self;
      v27 = v37;
      v40 = v37;
      [v25 synchronizeStoresWithIdentifiers:v11 completionHandler:v39];
    }

    else
    {
      v29 = SYDGetConnectionLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [SYDDaemonToClientConnection synchronizeStoresWithIdentifiers:a4 type:? testConfiguration:? completionHandler:?];
      }

      v30 = MEMORY[0x277CCACA8];
      v31 = SYDStringForStoreType(a4);
      v32 = [v30 stringWithFormat:@"No sync manager trying to sync stores with type %@", v31];

      if (!v26)
      {
        v33 = MEMORY[0x277CCA9B8];
        v47 = *MEMORY[0x277CCA450];
        v48 = v32;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v26 = [v33 errorWithDomain:@"SyncedDefaults" code:1234 userInfo:v34];
      }

      v35 = SYDClientSuitableError(v26);
      v27 = v37;
      (*(v37 + 2))(v37, v35);
    }
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26C384000, v20, OS_LOG_TYPE_INFO, "Asked to sync zero stores", buf, 2u);
    }

    v27 = v37;
    (*(v37 + 2))(v37, 0);
  }

LABEL_24:

  v36 = *MEMORY[0x277D85DE8];
}

void __105__SYDDaemonToClientConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __105__SYDDaemonToClientConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_2;
  v6[3] = &unk_279D2F908;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __105__SYDDaemonToClientConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = SYDClientSuitableError(*(a1 + 32));
  (*(*(a1 + 40) + 16))();
}

- (void)dictionaryRepresentationForStoreWithConfiguration:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:v6])
  {
    v8 = SYDGetConnectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SYDDaemonToClientConnection dictionaryRepresentationForStoreWithConfiguration:reply:];
    }

    v9 = [(SYDDaemonToClientConnection *)self delegate];
    v10 = [v6 storeID];
    v20 = 0;
    v11 = [v9 connection:self syncManagerForStoreID:v10 error:&v20];
    v12 = v20;

    v13 = 0;
    if (v11 && !v12)
    {
      v14 = [v11 coreDataStore];
      v15 = [v6 storeID];
      v16 = [v15 identifier];
      v19 = 0;
      v13 = [v14 dictionaryRepresentationForStoreWithIdentifier:v16 error:&v19];
      v12 = v19;
    }

    v17 = SYDClientSuitableError(v12);
    v7[2](v7, v13, v17);
  }

  else
  {
    v18 = [objc_opt_class() errorNotEntitledForStoreConfiguration:v6];
    v7[2](v7, 0, v18);
  }
}

- (void)allStoreIdentifiersWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = SYDGetConnectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection allStoreIdentifiersWithCompletionHandler:];
  }

  v6 = [(SYDDaemonToClientConnection *)self xpcConnection];
  v7 = [v6 valueForEntitlement:@"com.apple.private.ubiquity-kvsutil-access"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 BOOLValue])
  {
    v8 = [(SYDDaemonToClientConnection *)self delegate];
    v12 = 0;
    v9 = [v8 allStoreIdentifiersWithError:&v12];
    v10 = v12;

    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (allStoreIdentifiersWithCompletionHandler__onceToken != -1)
  {
    [SYDDaemonToClientConnection allStoreIdentifiersWithCompletionHandler:];
    v10 = 0;
    v9 = 0;
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v9 = 0;
  if (v4)
  {
LABEL_9:
    v11 = SYDClientSuitableError(v10);
    v4[2](v4, v9, v11);
  }

LABEL_10:
}

void __72__SYDDaemonToClientConnection_allStoreIdentifiersWithCompletionHandler___block_invoke()
{
  v0 = SYDGetConnectionLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __72__SYDDaemonToClientConnection_allStoreIdentifiersWithCompletionHandler___block_invoke_cold_1();
  }
}

- (BOOL)isCloudSyncEnablementEntitledForStoreIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SYDDaemonToClientConnection *)self xpcConnection];
  v6 = [v5 valueForEntitlement:@"com.apple.private.kvs.allow-sync-enablement-modifications"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = 1;
  }

  else
  {
    v8 = SYDGetConnectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [SYDDaemonToClientConnection isCloudSyncEnablementEntitledForStoreIdentifier:];
    }

    v7 = 0;
  }

  return v7;
}

- (void)isCloudSyncUserDefaultEnabledForStoreIdentifier:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(SYDDaemonToClientConnection *)self isCloudSyncEnablementEntitledForStoreIdentifier:v9])
  {
    v7 = +[SYDStoreBundleMap sharedInstance];
    v8 = [v7 isCloudSyncUserDefaultEnabledForStoreIdentifier:v9];
  }

  else
  {
    v8 = 1;
  }

  v6[2](v6, v8);
}

- (void)registerForChangeNotificationsForStoreWithConfiguration:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:v6])
  {
    v8 = [(SYDDaemonToClientConnection *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __93__SYDDaemonToClientConnection_registerForChangeNotificationsForStoreWithConfiguration_reply___block_invoke;
    v10[3] = &unk_279D2F678;
    v11 = v6;
    v12 = self;
    dispatch_sync(v8, v10);

    v7[2](v7, 0);
  }

  else
  {
    v9 = [objc_opt_class() errorNotEntitledForStoreConfiguration:v6];
    (v7)[2](v7, v9);
  }
}

void __93__SYDDaemonToClientConnection_registerForChangeNotificationsForStoreWithConfiguration_reply___block_invoke(uint64_t a1)
{
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __93__SYDDaemonToClientConnection_registerForChangeNotificationsForStoreWithConfiguration_reply___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) registeredStoreIDs];
  v4 = [*(a1 + 32) storeID];
  v5 = [v3 containsObject:v4];

  if ((v5 & 1) == 0)
  {
    v6 = SYDGetConnectionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __93__SYDDaemonToClientConnection_registerForChangeNotificationsForStoreWithConfiguration_reply___block_invoke_cold_2((a1 + 32));
    }

    v7 = [*(a1 + 40) registeredStoreIDs];
    v8 = [*(a1 + 32) storeID];
    [v7 addObject:v8];
  }

  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__SYDDaemonToClientConnection_registerForChangeNotificationsForStoreWithConfiguration_reply___block_invoke_119;
  block[3] = &unk_279D2F628;
  block[4] = *(a1 + 40);
  dispatch_async(v9, block);
}

void __93__SYDDaemonToClientConnection_registerForChangeNotificationsForStoreWithConfiguration_reply___block_invoke_119(uint64_t a1)
{
  v2 = +[SYDTCCHelper sharedHelper];
  v3 = [*(a1 + 32) xpcConnection];
  v4 = v3;
  if (v3)
  {
    [v3 auditToken];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  [v2 enableUbiquityIfNecessaryForAuditToken:v5];
}

- (void)changeDictionarySinceChangeToken:(id)a3 inStoreWithConfiguration:(id)a4 reply:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:v9])
  {
    v11 = SYDGetConnectionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v32 = v8;
      v33 = 2112;
      v34 = v9;
      v35 = 2112;
      v36 = self;
      _os_log_debug_impl(&dword_26C384000, v11, OS_LOG_TYPE_DEBUG, "Generating change dictionary for token %@ in store (%@) for %@", buf, 0x20u);
    }

    v12 = [(SYDDaemonToClientConnection *)self delegate];
    v13 = [v9 storeID];
    v30 = 0;
    v14 = [v12 connection:self syncManagerForStoreID:v13 error:&v30];
    v15 = v30;

    v16 = 0;
    if (v14 && !v15)
    {
      v17 = [v9 storeID];
      v18 = [v17 identifier];

      v19 = [v14 coreDataStore];
      v29 = 0;
      v20 = [v19 currentChangeTokenForStoreIdentifier:v18 error:&v29];
      v15 = v29;

      if (v15)
      {
        v21 = SYDGetConnectionLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [SYDDaemonToClientConnection changeDictionarySinceChangeToken:inStoreWithConfiguration:reply:];
        }

        v16 = 0;
      }

      else
      {
        v23 = objc_opt_class();
        v24 = [v14 coreDataStore];
        v28 = 0;
        v21 = [v23 changedKeysForStoreIdentifier:v18 sinceChangeTokenIfValid:v8 inCoreDataStore:v24 error:&v28];
        v15 = v28;

        if (v15)
        {
          v25 = SYDGetConnectionLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [SYDDaemonToClientConnection changeDictionarySinceChangeToken:inStoreWithConfiguration:reply:];
          }

          v16 = 0;
        }

        else
        {
          v16 = [objc_opt_class() changeDictionaryWithChangedKeys:v21 reason:0 changeToken:v20];
          v25 = SYDGetConnectionLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            [SYDDaemonToClientConnection changeDictionarySinceChangeToken:v21 inStoreWithConfiguration:? reply:?];
          }
        }
      }
    }

    v26 = SYDClientSuitableError(v15);
    v10[2](v10, v16, v26);
  }

  else
  {
    v22 = [objc_opt_class() errorNotEntitledForStoreConfiguration:v9];
    v10[2](v10, 0, v22);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)changeTokenForStoreWithConfiguration:(id)a3 reply:(id)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:v6])
  {
    v8 = [(SYDDaemonToClientConnection *)self xpcConnection];
    v33 = 0;
    v9 = [(SYDDaemonToClientConnection *)self changeTokenURLForStoreConfiguration:v6 xpcConnection:v8 error:&v33];
    v10 = v33;

    if (v9)
    {
      v32 = 0;
      v11 = *MEMORY[0x277CBE818];
      v31 = 0;
      v12 = [v9 getResourceValue:&v32 forKey:v11 error:&v31];
      v13 = v32;
      v14 = v31;

      if (v12)
      {
        if ([v13 isEqual:*MEMORY[0x277CBE828]])
        {
          v15 = SYDGetConnectionLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            [SYDDaemonToClientConnection changeTokenForStoreWithConfiguration:v6 reply:?];
          }

          v16 = MEMORY[0x277CCA9B8];
          v34 = *MEMORY[0x277CCA450];
          v35[0] = @"Change token should not be a symbolic link";
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
          v18 = [v16 errorWithDomain:@"SyncedDefaults" code:1040 userInfo:v17];

          v19 = 0;
          v14 = v18;
          goto LABEL_32;
        }

        v30 = v14;
        v19 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9 options:0 error:&v30];
        v10 = v30;

        if (!v10)
        {
          goto LABEL_20;
        }

        v24 = [v10 domain];
        if ([v24 isEqualToString:*MEMORY[0x277CCA050]])
        {
          v25 = [v10 code];

          if (v25 == 260)
          {

            goto LABEL_20;
          }
        }

        else
        {
        }

        v27 = SYDGetConnectionLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [SYDDaemonToClientConnection changeTokenForStoreWithConfiguration:reply:];
        }

LABEL_31:
        v14 = v10;
        goto LABEL_32;
      }

      v22 = [v14 domain];
      if ([v22 isEqualToString:*MEMORY[0x277CCA050]])
      {
        v23 = [v14 code];

        if (v23 == 260)
        {

          v19 = 0;
LABEL_20:
          v14 = 0;
LABEL_32:
          v28 = SYDClientSuitableError(v14);
          v7[2](v7, v19, v28);

          goto LABEL_33;
        }
      }

      else
      {
      }

      v26 = SYDGetConnectionLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SYDDaemonToClientConnection changeTokenForStoreWithConfiguration:reply:];
      }
    }

    else
    {
      v21 = SYDGetConnectionLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SYDDaemonToClientConnection changeTokenForStoreWithConfiguration:reply:];
      }

      if (v10)
      {
        v13 = 0;
        v19 = 0;
        goto LABEL_31;
      }

      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:260 userInfo:0];
      v13 = 0;
    }

    v19 = 0;
    goto LABEL_32;
  }

  v20 = [objc_opt_class() errorNotEntitledForStoreConfiguration:v6];
  v7[2](v7, 0, v20);

LABEL_33:
  v29 = *MEMORY[0x277D85DE8];
}

- (void)saveChangeToken:(id)a3 forStoreWithConfiguration:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:v9])
  {
    v11 = [(SYDDaemonToClientConnection *)self xpcConnection];
    v43 = 0;
    v12 = [(SYDDaemonToClientConnection *)self changeTokenURLForStoreConfiguration:v9 xpcConnection:v11 error:&v43];
    v13 = v43;

    if (!v12)
    {
      v19 = SYDGetConnectionLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SYDDaemonToClientConnection saveChangeToken:forStoreWithConfiguration:reply:];
      }

      goto LABEL_46;
    }

    v14 = SYDGetConnectionLog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (!v8)
    {
      if (v15)
      {
        [SYDDaemonToClientConnection saveChangeToken:forStoreWithConfiguration:reply:];
      }

      v22 = [MEMORY[0x277CCAA00] defaultManager];
      v42 = v13;
      v23 = [v22 removeItemAtURL:v12 error:&v42];
      v24 = v42;

      if (v23)
      {
        goto LABEL_47;
      }

      if (SYDIsFileNotFoundError(v24))
      {
        v13 = 0;
        v19 = v24;
      }

      else
      {
        v19 = SYDGetConnectionLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [SYDDaemonToClientConnection saveChangeToken:forStoreWithConfiguration:reply:];
        }

        v13 = v24;
      }

LABEL_46:

      v24 = v13;
LABEL_47:
      v33 = SYDClientSuitableError(v24);
      v10[2](v10, v33);

      goto LABEL_48;
    }

    if (v15)
    {
      [SYDDaemonToClientConnection saveChangeToken:forStoreWithConfiguration:reply:];
    }

    v16 = [MEMORY[0x277D46F48] currentProcess];
    v17 = [v16 isXPCService] ^ 1;

    v18 = [v9 storeID];
    v19 = SYDFileProtectionTypeForStoreType([v18 type]);

    if ([v19 isEqualToString:*MEMORY[0x277CCA1B8]])
    {
      v20 = v17 | 0x10000000;
    }

    else if ([v19 isEqualToString:*MEMORY[0x277CCA1A0]])
    {
      v20 = v17 | 0x40000000;
    }

    else if ([v19 isEqualToString:*MEMORY[0x277CCA198]])
    {
      v20 = v17 | 0x30000000;
    }

    else if ([v19 isEqualToString:*MEMORY[0x277CCA190]])
    {
      v20 = v17 | 0x20000000;
    }

    else
    {
      v20 = v17;
    }

    v41 = v13;
    v25 = [v8 writeToURL:v12 options:v20 error:&v41];
    v26 = v41;

    if (v25)
    {
      v13 = v26;
      goto LABEL_46;
    }

    if (SYDIsFileNotFoundError(v26))
    {
      v27 = [MEMORY[0x277CCAA00] defaultManager];
      v28 = [v12 URLByDeletingLastPathComponent];
      v40 = v26;
      v29 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v40];
      v34 = v40;

      if (v29)
      {

        v37 = 0;
        [v8 writeToURL:v12 options:v20 error:&v37];
        v13 = v37;
        if (!v13)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __79__SYDDaemonToClientConnection_saveChangeToken_forStoreWithConfiguration_reply___block_invoke;
        v38[3] = &unk_279D2F628;
        v13 = v34;
        v39 = v13;
        if (saveChangeToken_forStoreWithConfiguration_reply__onceToken != -1)
        {
          dispatch_once(&saveChangeToken_forStoreWithConfiguration_reply__onceToken, v38);
        }

        if (!v13)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v13 = v26;
      if (!v26)
      {
        goto LABEL_46;
      }
    }

    v30 = [v13 domain];
    if ([v30 isEqual:*MEMORY[0x277CCA050]])
    {
      v31 = [v13 code];

      if (v31 == 640)
      {
        v32 = SYDGetConnectionLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [SYDDaemonToClientConnection saveChangeToken:forStoreWithConfiguration:reply:];
        }

LABEL_45:

        goto LABEL_46;
      }
    }

    else
    {
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__SYDDaemonToClientConnection_saveChangeToken_forStoreWithConfiguration_reply___block_invoke_128;
    block[3] = &unk_279D2F628;
    v36 = v13;
    if (saveChangeToken_forStoreWithConfiguration_reply__onceToken_127 != -1)
    {
      dispatch_once(&saveChangeToken_forStoreWithConfiguration_reply__onceToken_127, block);
    }

    v32 = v36;
    goto LABEL_45;
  }

  v21 = [objc_opt_class() errorNotEntitledForStoreConfiguration:v9];
  v10[2](v10, v21);

LABEL_48:
}

void __79__SYDDaemonToClientConnection_saveChangeToken_forStoreWithConfiguration_reply___block_invoke(uint64_t a1)
{
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __79__SYDDaemonToClientConnection_saveChangeToken_forStoreWithConfiguration_reply___block_invoke_cold_1(a1);
  }
}

void __79__SYDDaemonToClientConnection_saveChangeToken_forStoreWithConfiguration_reply___block_invoke_128(uint64_t a1)
{
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __79__SYDDaemonToClientConnection_saveChangeToken_forStoreWithConfiguration_reply___block_invoke_128_cold_1(a1);
  }
}

+ (id)changedKeysForStoreIdentifier:(id)a3 sinceChangeTokenIfValid:(id)a4 inCoreDataStore:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v19 = 0;
  v11 = [v10 changedKeysForStoreIdentifier:v9 sinceChangeToken:a4 error:&v19];
  v12 = v19;
  if (v12 && [SYDCoreDataStore isInvalidTokenError:v12])
  {
    v13 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26C384000, v13, OS_LOG_TYPE_INFO, "Received error about a bad persistent history token. Throwing it away and trying again.", buf, 2u);
    }

    v17 = 0;
    v14 = [v10 changedKeysForStoreIdentifier:v9 sinceChangeToken:0 error:&v17];
    v12 = v17;

    v11 = v14;
  }

  if (a6)
  {
    v15 = v12;
    *a6 = v12;
  }

  return v11;
}

+ (id)changeDictionaryWithChangedKeys:(id)a3 reason:(int64_t)a4 changeToken:(id)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  if ([v7 count])
  {
    v14[0] = *MEMORY[0x277CCA7B0];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v14[1] = *MEMORY[0x277CCA7B8];
    v15[0] = v10;
    v15[1] = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

    [v9 setObject:v11 forKeyedSubscript:@"NSUbiquitousKeyValueStoreDidChangeExternallyNotificationUserInfo"];
  }

  if (v8)
  {
    [v9 setObject:v8 forKeyedSubscript:@"ChangeToken"];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)processAccountChangesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SYDDaemonToClientConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SYDDaemonToClientConnection_processAccountChangesWithCompletionHandler___block_invoke;
  v7[3] = &unk_279D2F908;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __74__SYDDaemonToClientConnection_processAccountChangesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __74__SYDDaemonToClientConnection_processAccountChangesWithCompletionHandler___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) delegate];
  [v3 processAccountChanges];

  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__SYDDaemonToClientConnection_processAccountChangesWithCompletionHandler___block_invoke_137;
    block[3] = &unk_279D2F958;
    v6 = *(a1 + 40);
    dispatch_async(v4, block);
  }
}

- (void)syncManagerDidChangeNotification:(id)a3
{
  v4 = a3;
  if (![(SYDDaemonToClientConnection *)self isPerformingManualSync])
  {
    v5 = [(SYDDaemonToClientConnection *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__SYDDaemonToClientConnection_syncManagerDidChangeNotification___block_invoke;
    v6[3] = &unk_279D2F678;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
  }
}

void __64__SYDDaemonToClientConnection_syncManagerDidChangeNotification___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) object];
  v4 = [*v2 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"storeID"];

  if (!v5)
  {
    v10 = SYDGetConnectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __64__SYDDaemonToClientConnection_syncManagerDidChangeNotification___block_invoke_cold_4(v2);
    }

    goto LABEL_21;
  }

  if (!v3)
  {
    v10 = SYDGetConnectionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __64__SYDDaemonToClientConnection_syncManagerDidChangeNotification___block_invoke_cold_3(v2);
    }

    goto LABEL_21;
  }

  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  v8 = [v7 registeredStoreIDs];
  v9 = [v8 containsObject:v5];

  if (v9)
  {
    v10 = _os_activity_create(&dword_26C384000, "kvs/notify-store-change", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v10, &state);
    v11 = SYDGetConnectionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __64__SYDDaemonToClientConnection_syncManagerDidChangeNotification___block_invoke_cold_1(v5, v6);
    }

    v12 = [*v2 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"changedKeys"];

    v14 = [*v2 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = [*v2 object];
      v17 = [v16 coreDataStore];
      v18 = [v5 identifier];
      v37 = 0;
      v19 = [v17 currentChangeTokenForStoreIdentifier:v18 error:&v37];
      v20 = v37;

      if (v20)
      {
        v21 = SYDGetConnectionLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __64__SYDDaemonToClientConnection_syncManagerDidChangeNotification___block_invoke_cold_2();
        }
      }

      else
      {
        v25 = *v6;
        v26 = [objc_opt_class() changeDictionaryWithChangedKeys:v13 reason:0 changeToken:v19];
        v27 = SYDGetConnectionLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v33 = v26;
          v32 = [v13 count];
          v28 = [v5 identifier];
          v29 = [v13 componentsJoinedByString:{@", "}];
          *buf = 67109634;
          *v40 = v32;
          *&v40[4] = 2112;
          *&v40[6] = v28;
          v41 = 2112;
          v42 = v29;
          _os_log_impl(&dword_26C384000, v27, OS_LOG_TYPE_INFO, "Sending notification about %d changed keys for store <(%@)>:(%@)", buf, 0x1Cu);

          v26 = v33;
        }

        v30 = [v5 personaUniqueString];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __64__SYDDaemonToClientConnection_syncManagerDidChangeNotification___block_invoke_139;
        v34[3] = &unk_279D2F768;
        v34[4] = *v6;
        v35 = v5;
        v21 = v26;
        v36 = v21;
        SYDPerformWithPersona(v30, v34);
      }
    }

    else
    {
      v19 = SYDGetConnectionLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v22 = [*v2 object];
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138412290;
        *v40 = v24;
        _os_log_impl(&dword_26C384000, v19, OS_LOG_TYPE_INFO, "Received a notification about a changed sync manager, but the notification object is a %@", buf, 0xCu);
      }
    }

    os_activity_scope_leave(&state);
LABEL_21:
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __64__SYDDaemonToClientConnection_syncManagerDidChangeNotification___block_invoke_139(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  [v2 storeDidChangeWithStoreID:*(a1 + 40) changeDictionary:*(a1 + 48)];
}

- (void)notifyAccountDidChangeFromAccountID:(id)a3 toAccountID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_26C384000, "kvs/notify-account-change", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v12 = [(SYDDaemonToClientConnection *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__SYDDaemonToClientConnection_notifyAccountDidChangeFromAccountID_toAccountID_completionHandler___block_invoke;
  v16[3] = &unk_279D2F9A8;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v12, v16);

  os_activity_scope_leave(&state);
}

void __97__SYDDaemonToClientConnection_notifyAccountDidChangeFromAccountID_toAccountID_completionHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __97__SYDDaemonToClientConnection_notifyAccountDidChangeFromAccountID_toAccountID_completionHandler___block_invoke_cold_1(a1);
  }

  v3 = dispatch_group_create();
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v19 setObject:&unk_287CF2418 forKeyedSubscript:*MEMORY[0x277CCA7B0]];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v4)
  {
    if (v5)
    {
      if ([v4 isEqual:?])
      {
        goto LABEL_11;
      }

      v6 = &unk_287CF2460;
    }

    else
    {
      v6 = &unk_287CF2448;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = &unk_287CF2430;
  }

  [v19 setObject:v6 forKeyedSubscript:@"accountChangeTypeKey"];
LABEL_11:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [*(a1 + 32) registeredStoreIDs];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        v11 = v3;
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 personaUniqueString];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __97__SYDDaemonToClientConnection_notifyAccountDidChangeFromAccountID_toAccountID_completionHandler___block_invoke_151;
        v22[3] = &unk_279D2F980;
        v22[4] = v12;
        v3 = v11;
        v14 = v11;
        v15 = *(a1 + 32);
        v23 = v14;
        v24 = v15;
        v25 = v19;
        SYDPerformWithPersona(v13, v22);
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  if (*(a1 + 56))
  {
    v16 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__SYDDaemonToClientConnection_notifyAccountDidChangeFromAccountID_toAccountID_completionHandler___block_invoke_152;
    block[3] = &unk_279D2F958;
    v21 = *(a1 + 56);
    dispatch_group_notify(v3, v16, block);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __97__SYDDaemonToClientConnection_notifyAccountDidChangeFromAccountID_toAccountID_completionHandler___block_invoke_151(uint64_t a1)
{
  if (SYDIsDataSeparatedPersona())
  {
    v2 = SYDGetConnectionLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __97__SYDDaemonToClientConnection_notifyAccountDidChangeFromAccountID_toAccountID_completionHandler___block_invoke_151_cold_2(a1);
    }
  }

  else
  {
    dispatch_group_enter(*(a1 + 40));
    v3 = [*(a1 + 48) delegate];
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v15 = 0;
    v6 = [v3 connection:v4 syncManagerForStoreID:v5 error:&v15];
    v2 = v15;

    if (v6)
    {
      v7 = v2 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = [v6 coreDataStore];
      v9 = [*(a1 + 32) identifier];
      v14 = 0;
      v10 = [v8 currentChangeTokenForStoreIdentifier:v9 error:&v14];
      v2 = v14;

      if (v2)
      {
        v11 = SYDGetConnectionLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __97__SYDDaemonToClientConnection_notifyAccountDidChangeFromAccountID_toAccountID_completionHandler___block_invoke_151_cold_1();
        }
      }

      else
      {
        if (v10)
        {
          v12 = 2;
        }

        else
        {
          v12 = 1;
        }

        v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v12];
        [v11 setObject:*(a1 + 56) forKeyedSubscript:@"NSUbiquitousKeyValueStoreDidChangeExternallyNotificationUserInfo"];
        if (v10)
        {
          [v11 setObject:v10 forKeyedSubscript:@"ChangeToken"];
        }

        v13 = [*(a1 + 48) client];
        [v13 storeDidChangeWithStoreID:*(a1 + 32) changeDictionary:v11];

        dispatch_group_leave(*(a1 + 40));
      }
    }

    else
    {
      dispatch_group_leave(*(a1 + 40));
    }
  }
}

- (void)daemonToClientConnectionDidChangeValues:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];

  if (v5 != self)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"storeID"];

    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"changedKeys"];

    if (v7 && [v9 count])
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      v10 = [(SYDDaemonToClientConnection *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__SYDDaemonToClientConnection_daemonToClientConnectionDidChangeValues___block_invoke;
      block[3] = &unk_279D2F890;
      v34 = &v35;
      block[4] = self;
      v11 = v7;
      v33 = v11;
      dispatch_sync(v10, block);

      if (v36[3])
      {
        v12 = [(SYDDaemonToClientConnection *)self delegate];
        v31 = 0;
        v13 = [v12 connection:self syncManagerForStoreID:v11 error:&v31];
        v14 = v31;

        if (!v13 || v14)
        {
          v17 = SYDGetConnectionLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [SYDDaemonToClientConnection daemonToClientConnectionDidChangeValues:];
          }
        }

        else
        {
          v15 = [v13 coreDataStore];
          v16 = [v11 identifier];
          v30 = 0;
          v17 = [v15 currentChangeTokenForStoreIdentifier:v16 error:&v30];
          v14 = v30;

          if (v14)
          {
            v18 = SYDGetConnectionLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [SYDDaemonToClientConnection daemonToClientConnectionDidChangeValues:];
            }
          }

          else
          {
            v20 = [objc_opt_class() changeDictionaryWithChangedKeys:v9 reason:0 changeToken:v17];
            v21 = SYDGetConnectionLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v26 = v20;
              v25 = [v9 count];
              v22 = [v11 identifier];
              *buf = 67109378;
              v40 = v25;
              v41 = 2112;
              v42 = v22;
              _os_log_impl(&dword_26C384000, v21, OS_LOG_TYPE_INFO, "Sending notification about %d changed keys for store <(%@)>", buf, 0x12u);

              v20 = v26;
            }

            v23 = [v11 personaUniqueString];
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __71__SYDDaemonToClientConnection_daemonToClientConnectionDidChangeValues___block_invoke_153;
            v27[3] = &unk_279D2F768;
            v27[4] = self;
            v28 = v11;
            v18 = v20;
            v29 = v18;
            SYDPerformWithPersona(v23, v27);
          }
        }
      }

      _Block_object_dispose(&v35, 8);
    }

    else
    {
      v19 = SYDGetConnectionLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [SYDDaemonToClientConnection daemonToClientConnectionDidChangeValues:];
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __71__SYDDaemonToClientConnection_daemonToClientConnectionDidChangeValues___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredStoreIDs];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

void __71__SYDDaemonToClientConnection_daemonToClientConnectionDidChangeValues___block_invoke_153(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  [v2 storeDidChangeWithStoreID:*(a1 + 40) changeDictionary:*(a1 + 48)];
}

- (void)deleteDataFromDiskForStoreWithConfiguration:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:v6])
  {
    v8 = SYDGetConnectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SYDDaemonToClientConnection deleteDataFromDiskForStoreWithConfiguration:reply:];
    }

    v9 = [(SYDDaemonToClientConnection *)self delegate];
    v10 = [v6 storeID];
    v19 = 0;
    v11 = [v9 connection:self syncManagerForStoreID:v10 error:&v19];
    v12 = v19;

    if (v11 && !v12)
    {
      v13 = [v11 coreDataStore];
      v14 = [v6 storeID];
      v15 = [v14 identifier];
      v18 = 0;
      [v13 deleteDataForStoreWithIdentifier:v15 error:&v18];
      v12 = v18;

      [v11 resetSyncEngine];
    }

    v16 = SYDClientSuitableError(v12);
    v7[2](v7, v16);
  }

  else
  {
    v17 = [objc_opt_class() errorNotEntitledForStoreConfiguration:v6];
    v7[2](v7, v17);
  }
}

- (void)personaUniqueStringWithReply:(id)a3
{
  v3 = MEMORY[0x277D77C08];
  v4 = a3;
  v5 = [v3 currentPersona];
  v6 = [v5 userPersonaUniqueString];

  v4[2](v4, v6);
}

- (void)postFakeAccountChangeNotificationWithPreviousID:(id)a3 currentID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __107__SYDDaemonToClientConnection_postFakeAccountChangeNotificationWithPreviousID_currentID_completionHandler___block_invoke;
  v10[3] = &unk_279D2F958;
  v11 = v8;
  v9 = v8;
  [(SYDDaemonToClientConnection *)self notifyAccountDidChangeFromAccountID:a3 toAccountID:a4 completionHandler:v10];
}

uint64_t __107__SYDDaemonToClientConnection_postFakeAccountChangeNotificationWithPreviousID_currentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)postFakeSyncManagerChangeNotificationForStoreWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SYDGetConnectionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection postFakeSyncManagerChangeNotificationForStoreWithConfiguration:completionHandler:];
  }

  v9 = [(SYDDaemonToClientConnection *)self delegate];
  v10 = [v6 storeID];
  v17 = 0;
  v11 = [v9 connection:self syncManagerForStoreID:v10 error:&v17];
  v12 = v17;

  if (v11)
  {
    v19[0] = &unk_287CF24C0;
    v18[0] = @"changedKeys";
    v18[1] = @"storeID";
    v13 = [v6 storeID];
    v19[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 postNotificationName:@"SYDSyncManagerNotificationValuesDidChange" object:v11 userInfo:v14];
  }

  v7[2](v7);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setFakeError:(id)a3 forNextCloudKitRequestOfClassName:(id)a4 inStoreWithConfiguration:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SYDDaemonToClientConnection *)self delegate];
  v12 = [v8 storeID];

  v14 = [v11 connection:self syncManagerForStoreID:v12 error:0];

  v13 = [v14 container];
  [v13 setFakeError:v10 forNextRequestOfClassName:v9];
}

- (void)isUIFrameworkLinkedInDaemonWithReply:(id)a3
{
  v4 = a3;
  v3 = NSClassFromString(&cfstr_Uiapplication.isa) != 0;
  v4[2](v4, v3);
}

- (void)containerIDWithConfiguration:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SYDDaemonToClientConnection *)self delegate];
  v9 = [v7 storeID];

  v12 = [v8 connection:self syncManagerForStoreID:v9 error:0];

  v10 = [v12 container];
  v11 = [v10 containerID];
  v6[2](v6, v11);
}

- (void)removeUnitTestSyncManagersWithReply:(id)a3
{
  v5 = a3;
  v4 = [(SYDDaemonToClientConnection *)self delegate];
  [v4 removeUnitTestSyncManagers];

  v5[2]();
}

- (void)exit
{
  v2 = SYDGetConnectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_26C384000, v2, OS_LOG_TYPE_DEFAULT, "Exiting", v3, 2u);
  }

  exit(0);
}

- (id)client
{
  v2 = [(SYDDaemonToClientConnection *)self xpcConnection];
  v3 = [v2 _unboostingRemoteObjectProxy];

  return v3;
}

- (id)changeTokenURLForStoreConfiguration:(id)a3 xpcConnection:(id)a4 error:(id *)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    [v8 auditToken];
  }

  if (!sandbox_container_path_for_audit_token())
  {
    if (v18[0])
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
      v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10 isDirectory:1];
      v12 = [v11 URLByAppendingPathComponent:@"Library" isDirectory:1];

      v13 = [v12 URLByAppendingPathComponent:@"SyncedPreferences" isDirectory:1];

      v14 = [v13 URLByAppendingPathComponent:@"com.apple.kvs" isDirectory:1];

      if (v14)
      {
        goto LABEL_7;
      }
    }
  }

  v14 = SYDKVSDirectory(a5);
  if (v14)
  {
LABEL_7:
    v15 = SYDChangeTokenURL(v7, v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isKnownStore:(id)a3
{
  v4 = [a3 storeID];
  v5 = [v4 identifier];

  v6 = +[SYDStoreBundleMap sharedInstance];
  if ([v6 isStoreIdentifierUsedOnThisDevice:v5])
  {
    v7 = 1;
  }

  else
  {
    if ([(SYDDaemonToClientConnection *)self didRefreshBundleMap])
    {
      goto LABEL_7;
    }

    v8 = SYDGetConnectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SYDDaemonToClientConnection isKnownStore:];
    }

    [v6 clearCachedStoreBundleMap];
    v7 = 1;
    [(SYDDaemonToClientConnection *)self setDidRefreshBundleMap:1];
    if (([v6 isStoreIdentifierUsedOnThisDevice:v5] & 1) == 0)
    {
LABEL_7:
      v9 = SYDGetConnectionLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [SYDDaemonToClientConnection isKnownStore:];
      }

      v7 = 0;
    }
  }

  return v7;
}

+ (id)errorForUnknownStore:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 storeID];
  v5 = [v4 identifier];
  v6 = [v3 stringWithFormat:@"Tried to access unknown store %@", v5];

  v7 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v7 errorWithDomain:@"SyncedDefaults" code:101010 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isPerformingManualSync
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SYDDaemonToClientConnection *)v2 manualSyncCount]!= 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)applicationIdentifier
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error getting application identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)connection:handleInvocation:isReply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Not entitled for test invocation: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__SYDDaemonToClientConnection_isEntitledForStoreConfiguration___block_invoke_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*a1 processName];
  v8 = [*a1 storeID];
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __63__SYDDaemonToClientConnection_isEntitledForStoreConfiguration___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_13(a1, *MEMORY[0x277D85DE8]);
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_isEntitledForStoreConfiguration:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isEntitledForStoreConfiguration:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isEntitledForStoreConfiguration:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isEntitledForStoreConfiguration:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isEntitledForStoreConfiguration:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isEntitledForStoreConfiguration:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isEntitledForStoreConfiguration:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isEntitledForStoreConfiguration:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setObject:forKey:inStoreWithConfiguration:reply:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)objectForKey:inStoreWithConfiguration:reply:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeObjectForKey:inStoreWithConfiguration:reply:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeStoreWithConfiguration:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v0, v1, "Handling sync for store=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeStoreWithConfiguration:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "No sync manager for store=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __83__SYDDaemonToClientConnection_synchronizeStoreWithConfiguration_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeStoresWithIdentifiers:(unint64_t)a1 type:testConfiguration:completionHandler:.cold.1(unint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = SYDStringForStoreType(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeStoresWithIdentifiers:(unint64_t)a1 type:testConfiguration:completionHandler:.cold.2(unint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = SYDStringForStoreType(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dictionaryRepresentationForStoreWithConfiguration:reply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v0, v1, "Handling dictionaryRepresentation for store=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isCloudSyncEnablementEntitledForStoreIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "BUG IN CLIENT OF KVS: Connection is trying to use an a sync status operation without the correct entitlement for store %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __93__SYDDaemonToClientConnection_registerForChangeNotificationsForStoreWithConfiguration_reply___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v1, v2, "Asked to register for store %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __93__SYDDaemonToClientConnection_registerForChangeNotificationsForStoreWithConfiguration_reply___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_13(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v1, v2, "Registering for store %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)changeDictionarySinceChangeToken:inStoreWithConfiguration:reply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Unable to get current change token: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)changeDictionarySinceChangeToken:inStoreWithConfiguration:reply:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Unable to get changed keys: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)changeDictionarySinceChangeToken:(void *)a1 inStoreWithConfiguration:reply:.cold.3(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)changeTokenForStoreWithConfiguration:reply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Unable to determine if change token URL is a symbolic link: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)changeTokenForStoreWithConfiguration:reply:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error loading change token from disk: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)changeTokenForStoreWithConfiguration:(void *)a1 reply:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 storeID];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)saveChangeToken:forStoreWithConfiguration:reply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v0, v1, "Saving change token to disk for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveChangeToken:forStoreWithConfiguration:reply:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error saving change token to disk: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveChangeToken:forStoreWithConfiguration:reply:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v0, v1, "Removing change token from disk for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveChangeToken:forStoreWithConfiguration:reply:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error removing change token when setting nil change token: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveChangeToken:forStoreWithConfiguration:reply:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Could not find change token URL to save change token: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __79__SYDDaemonToClientConnection_saveChangeToken_forStoreWithConfiguration_reply___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8(&dword_26C384000, v1, v2, "Error creating change token directory: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __79__SYDDaemonToClientConnection_saveChangeToken_forStoreWithConfiguration_reply___block_invoke_128_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8(&dword_26C384000, v1, v2, "Error saving change token to disk: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __64__SYDDaemonToClientConnection_syncManagerDidChangeNotification___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __64__SYDDaemonToClientConnection_syncManagerDidChangeNotification___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error getting change token to send change dictionary: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__SYDDaemonToClientConnection_syncManagerDidChangeNotification___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_13(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "No sync manager for sync manager change notification %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __64__SYDDaemonToClientConnection_syncManagerDidChangeNotification___block_invoke_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_13(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "No store ID for sync manager change notification %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __97__SYDDaemonToClientConnection_notifyAccountDidChangeFromAccountID_toAccountID_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v1, v2, "Notifying client that account did change %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __97__SYDDaemonToClientConnection_notifyAccountDidChangeFromAccountID_toAccountID_completionHandler___block_invoke_151_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error getting change token to notify about account change: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __97__SYDDaemonToClientConnection_notifyAccountDidChangeFromAccountID_toAccountID_completionHandler___block_invoke_151_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_8_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v1, v2, "Not notifying data-separated client about account change: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)daemonToClientConnectionDidChangeValues:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error getting change token to send change dictionary for local change: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)daemonToClientConnectionDidChangeValues:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error getting sync manager to notify client of changes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)daemonToClientConnectionDidChangeValues:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deleteDataFromDiskForStoreWithConfiguration:reply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v0, v1, "Handling deleteData for store=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)postFakeSyncManagerChangeNotificationForStoreWithConfiguration:completionHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26C384000, v0, v1, "Posting fake notification for store %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isKnownStore:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "BUG IN CLIENT OF KVS: Tried to access unknown store %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end