@interface SYDDaemonToClientConnection
+ (id)changeDictionaryWithChangedKeys:(id)keys reason:(int64_t)reason changeToken:(id)token;
+ (id)changedKeysForStoreIdentifier:(id)identifier sinceChangeTokenIfValid:(id)valid inCoreDataStore:(id)store error:(id *)error;
+ (id)errorForUnknownStore:(id)store;
+ (id)errorNotEntitledForStoreConfiguration:(id)configuration;
- (BOOL)_isEntitledForStoreConfiguration:(id)configuration;
- (BOOL)isCloudSyncEnablementEntitledForStoreIdentifier:(id)identifier;
- (BOOL)isEntitledForStoreConfiguration:(id)configuration;
- (BOOL)isKnownStore:(id)store;
- (BOOL)isPerformingManualSync;
- (BOOL)shouldEnforceQuotaForStoreConfiguration:(id)configuration;
- (NSString)applicationIdentifier;
- (NSString)description;
- (SYDDaemonToClientConnection)initWithXPCConnection:(id)connection delegate:(id)delegate;
- (SYDDaemonToClientConnectionDelegate)delegate;
- (SYDEntitlements)entitlements;
- (id)changeTokenURLForStoreConfiguration:(id)configuration xpcConnection:(id)connection error:(id *)error;
- (id)client;
- (id)relatedApplicationsForStoreIdentifier:(id)identifier;
- (id)valueForEntitlement:(id)entitlement storeConfiguration:(id)configuration;
- (void)allStoreIdentifiersWithCompletionHandler:(id)handler;
- (void)applicationIdentifier;
- (void)changeDictionarySinceChangeToken:(id)token inStoreWithConfiguration:(id)configuration reply:(id)reply;
- (void)changeTokenForStoreWithConfiguration:(id)configuration reply:(id)reply;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)containerIDWithConfiguration:(id)configuration reply:(id)reply;
- (void)daemonToClientConnectionDidChangeValues:(id)values;
- (void)dealloc;
- (void)decrementManualSyncCount;
- (void)deleteDataFromDiskForStoreWithConfiguration:(id)configuration reply:(id)reply;
- (void)dictionaryRepresentationForStoreWithConfiguration:(id)configuration reply:(id)reply;
- (void)exit;
- (void)incrementManualSyncCount;
- (void)isCloudSyncUserDefaultEnabledForStoreIdentifier:(id)identifier completionHandler:(id)handler;
- (void)isUIFrameworkLinkedInDaemonWithReply:(id)reply;
- (void)notifyAccountDidChangeFromAccountID:(id)d toAccountID:(id)iD completionHandler:(id)handler;
- (void)objectForKey:(id)key inStoreWithConfiguration:(id)configuration reply:(id)reply;
- (void)personaUniqueStringWithReply:(id)reply;
- (void)postFakeAccountChangeNotificationWithPreviousID:(id)d currentID:(id)iD completionHandler:(id)handler;
- (void)postFakeSyncManagerChangeNotificationForStoreWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)processAccountChangesWithCompletionHandler:(id)handler;
- (void)registerForChangeNotificationsForStoreWithConfiguration:(id)configuration reply:(id)reply;
- (void)removeObjectForKey:(id)key inStoreWithConfiguration:(id)configuration reply:(id)reply;
- (void)removeUnitTestSyncManagersWithReply:(id)reply;
- (void)resume;
- (void)saveChangeToken:(id)token forStoreWithConfiguration:(id)configuration reply:(id)reply;
- (void)setFakeError:(id)error forNextCloudKitRequestOfClassName:(id)name inStoreWithConfiguration:(id)configuration;
- (void)setObject:(id)object forKey:(id)key inStoreWithConfiguration:(id)configuration reply:(id)reply;
- (void)syncManagerDidChangeNotification:(id)notification;
- (void)synchronizeStoreWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)synchronizeStoresWithIdentifiers:(id)identifiers type:(int64_t)type testConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation SYDDaemonToClientConnection

- (void)resume
{
  v7 = *MEMORY[0x277D85DE8];
  xpcConnection = [self xpcConnection];
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

  registeredStoreIDs = [(SYDDaemonToClientConnection *)self registeredStoreIDs];
  v8 = [registeredStoreIDs count];

  if (v8)
  {
    registeredStoreIDs2 = [(SYDDaemonToClientConnection *)self registeredStoreIDs];
    allObjects = [registeredStoreIDs2 allObjects];
    v11 = [allObjects componentsJoinedByString:{@", "}];
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
  xpcConnection = [(SYDDaemonToClientConnection *)self xpcConnection];
  v5 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SYDDaemonToClientConnection *)selfCopy setManualSyncCount:[(SYDDaemonToClientConnection *)selfCopy manualSyncCount]+ 1];
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SYDDaemonToClientConnection *)selfCopy incrementManualSyncCount];
  }

  objc_sync_exit(selfCopy);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)decrementManualSyncCount
{
  v5[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SYDDaemonToClientConnection *)selfCopy setManualSyncCount:[(SYDDaemonToClientConnection *)selfCopy manualSyncCount]- 1];
  v3 = SYDGetConnectionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SYDDaemonToClientConnection *)selfCopy decrementManualSyncCount];
  }

  objc_sync_exit(selfCopy);
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SYDDaemonToClientConnection;
  [(SYDDaemonToClientConnection *)&v4 dealloc];
}

- (SYDDaemonToClientConnection)initWithXPCConnection:(id)connection delegate:(id)delegate
{
  connectionCopy = connection;
  delegateCopy = delegate;
  v29.receiver = self;
  v29.super_class = SYDDaemonToClientConnection;
  v9 = [(SYDDaemonToClientConnection *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xpcConnection, connection);
    [connectionCopy setDelegate:v10];
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = [connectionCopy valueForEntitlement:@"com.apple.private.kvs.test"];
    v10->_supportsTesting = v11 != 0;

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.kvs.daemon-to-client.%d", objc_msgSend(connectionCopy, "processIdentifier")];
    uTF8String = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(uTF8String, v14);
    queue = v10->_queue;
    v10->_queue = v15;

    v17 = [v12 stringByAppendingString:@".callback"];

    uTF8String2 = [v17 UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(uTF8String2, v19);
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_syncManagerDidChangeNotification_ name:@"SYDSyncManagerNotificationValuesDidChange" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v10 selector:sel_daemonToClientConnectionDidChangeValues_ name:@"SYDDaemonToClientConnectionNotificationChangedValues" object:0];

    [(SYDDaemonToClientConnection *)v10 resume];
  }

  return v10;
}

- (NSString)applicationIdentifier
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_applicationIdentifier)
  {
    xpcConnection = [(SYDDaemonToClientConnection *)self xpcConnection];

    if (!xpcConnection)
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

    xpcConnection2 = [(SYDDaemonToClientConnection *)self xpcConnection];
    v7 = xpcConnection2;
    if (xpcConnection2)
    {
      [xpcConnection2 auditToken];
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

- (id)relatedApplicationsForStoreIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CBEB58];
  identifierCopy = identifier;
  v6 = [v4 set];
  applicationIdentifier = [(SYDDaemonToClientConnection *)self applicationIdentifier];
  if (applicationIdentifier)
  {
    [v6 addObject:applicationIdentifier];
  }

  entitlements = [(SYDDaemonToClientConnection *)self entitlements];
  v9 = [entitlements relatedApplicationsForStoreIdentifier:identifierCopy];

  [v6 addObjectsFromArray:v9];
  allObjects = [v6 allObjects];

  return allObjects;
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

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  invocationCopy = invocation;
  v10 = SYDGetConnectionLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (replyCopy)
  {
    if (v11)
    {
      v12 = NSStringFromSelector([invocationCopy selector]);
      currentPersona = [MEMORY[0x277D77C08] currentPersona];
      v14 = SYDUserPersonaDescription(currentPersona);
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
    v12 = NSStringFromSelector([invocationCopy selector]);
    currentPersona = [MEMORY[0x277D77C08] currentPersona];
    v14 = SYDUserPersonaDescription(currentPersona);
    *v19 = 138412546;
    *&v19[4] = v12;
    *&v19[12] = 2112;
    *&v19[14] = v14;
    v15 = "Handling invocation -%@ with persona: %@";
    goto LABEL_6;
  }

  if (protocol_getMethodDescription(&unk_287CF4838, [invocationCopy selector], 1, 1).name && !-[SYDDaemonToClientConnection supportsTesting](self, "supportsTesting"))
  {
    v16 = SYDGetConnectionLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [SYDDaemonToClientConnection connection:handleInvocation:isReply:];
    }

    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    [currentConnection invalidate];
  }

  [invocationCopy invoke];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)valueForEntitlement:(id)entitlement storeConfiguration:(id)configuration
{
  entitlementCopy = entitlement;
  configurationCopy = configuration;
  if (!-[SYDDaemonToClientConnection supportsTesting](self, "supportsTesting") || ([configurationCopy entitlementOverrides], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", entitlementCopy), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    entitlements = [(SYDDaemonToClientConnection *)self entitlements];
    v9 = [entitlements valueForEntitlement:entitlementCopy];
  }

  return v9;
}

- (BOOL)isEntitledForStoreConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(SYDDaemonToClientConnection *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SYDDaemonToClientConnection_isEntitledForStoreConfiguration___block_invoke;
  v8[3] = &unk_279D2F890;
  v10 = &v11;
  v8[4] = self;
  v6 = configurationCopy;
  v9 = v6;
  syd_call_or_dispatch_sync_if_not_key(queue, &self->_queue, v8);

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

- (BOOL)_isEntitledForStoreConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = SYDGetConnectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection _isEntitledForStoreConfiguration:];
  }

  storeID = [configurationCopy storeID];
  identifier = [storeID identifier];
  v8 = [(SYDDaemonToClientConnection *)self valueForEntitlement:@"com.apple.developer.ubiquity-kvstore-identifier" storeConfiguration:configurationCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 isEqualToString:identifier])
  {
    entitlements = [(SYDDaemonToClientConnection *)self entitlements];
    additionalStoreIdentifiers = [entitlements additionalStoreIdentifiers];

    if ([additionalStoreIdentifiers containsObject:identifier])
    {
      v12 = SYDGetConnectionLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SYDDaemonToClientConnection _isEntitledForStoreConfiguration:];
      }

      v10 = 1;
      goto LABEL_42;
    }

    v12 = [(SYDDaemonToClientConnection *)self valueForEntitlement:@"com.apple.private.ubiquity-kvstore-identifier-prefix" storeConfiguration:configurationCopy];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [identifier hasPrefix:v12])
    {
      v13 = SYDGetConnectionLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [SYDDaemonToClientConnection _isEntitledForStoreConfiguration:];
      }

      v10 = 1;
      goto LABEL_41;
    }

    v13 = [(SYDDaemonToClientConnection *)self valueForEntitlement:@"com.apple.private.ubiquity-kvstore-manage" storeConfiguration:configurationCopy];
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

    xpcConnection = [(SYDDaemonToClientConnection *)self xpcConnection];
    v16 = [xpcConnection valueForEntitlement:@"com.apple.private.trust-ubiquity-kvstore-identifier"];

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
    v18 = [(SYDDaemonToClientConnection *)self valueForEntitlement:@"com.apple.private.ubiquity-kvstore-access" storeConfiguration:configurationCopy];
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
      v19 = [(SYDDaemonToClientConnection *)self valueForEntitlement:@"com.apple.private.kvs.test" storeConfiguration:configurationCopy];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || !-[NSObject BOOLValue](v19, "BOOLValue") || ![identifier hasPrefix:@"com.apple.kvs.test"])
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

  additionalStoreIdentifiers = SYDGetConnectionLog();
  if (os_log_type_enabled(additionalStoreIdentifiers, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection _isEntitledForStoreConfiguration:];
  }

  v10 = 1;
LABEL_43:

  return v10;
}

+ (id)errorNotEntitledForStoreConfiguration:(id)configuration
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  storeID = [configuration storeID];
  identifier = [storeID identifier];
  v6 = [v3 stringWithFormat:@"Not entitled to access store %@", identifier];

  v7 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v7 errorWithDomain:@"SyncedDefaults" code:3333 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)shouldEnforceQuotaForStoreConfiguration:(id)configuration
{
  configurationCopy = configuration;
  ignoreQuotaEntitlementValue = [(SYDDaemonToClientConnection *)self ignoreQuotaEntitlementValue];

  if (!ignoreQuotaEntitlementValue)
  {
    v6 = [(SYDDaemonToClientConnection *)self valueForEntitlement:@"com.apple.private.kvs.ignore-quota" storeConfiguration:configurationCopy];
    [(SYDDaemonToClientConnection *)self setIgnoreQuotaEntitlementValue:v6];
  }

  ignoreQuotaEntitlementValue2 = [(SYDDaemonToClientConnection *)self ignoreQuotaEntitlementValue];
  bOOLValue = [ignoreQuotaEntitlementValue2 BOOLValue];

  return bOOLValue ^ 1;
}

- (void)setObject:(id)object forKey:(id)key inStoreWithConfiguration:(id)configuration reply:(id)reply
{
  v35[2] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  configurationCopy = configuration;
  replyCopy = reply;
  if (![(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:configurationCopy])
  {
    v26 = [objc_opt_class() errorNotEntitledForStoreConfiguration:configurationCopy];
LABEL_14:
    v27 = v26;
    replyCopy[2](replyCopy, v26);

    goto LABEL_15;
  }

  if (![(SYDDaemonToClientConnection *)self isKnownStore:configurationCopy])
  {
    v26 = [objc_opt_class() errorForUnknownStore:configurationCopy];
    goto LABEL_14;
  }

  v14 = SYDGetConnectionLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection setObject:forKey:inStoreWithConfiguration:reply:];
  }

  v32 = 0;
  delegate = [(SYDDaemonToClientConnection *)self delegate];
  storeID = [configurationCopy storeID];
  v31 = 0;
  v17 = [delegate connection:self syncManagerForStoreID:storeID error:&v31];
  v18 = v31;

  if (v17 && !v18)
  {
    v19 = [(SYDDaemonToClientConnection *)self shouldEnforceQuotaForStoreConfiguration:configurationCopy];
    storeID2 = [configurationCopy storeID];
    identifier = [storeID2 identifier];
    v30 = 0;
    [v17 setObject:objectCopy forKey:keyCopy inStoreWithIdentifier:identifier excludeFromChangeTracking:1 enforceQuota:v19 didChangeValue:&v32 error:&v30];
    v18 = v30;
  }

  if (!v18 && v32 == 1)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v33 = keyCopy;
    v34[0] = @"changedKeys";
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    v34[1] = @"storeID";
    v35[0] = v29;
    storeID3 = [configurationCopy storeID];
    v35[1] = storeID3;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    [defaultCenter postNotificationName:@"SYDDaemonToClientConnectionNotificationChangedValues" object:self userInfo:v24];
  }

  v25 = SYDClientSuitableError(v18);
  replyCopy[2](replyCopy, v25);

LABEL_15:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)objectForKey:(id)key inStoreWithConfiguration:(id)configuration reply:(id)reply
{
  keyCopy = key;
  configurationCopy = configuration;
  replyCopy = reply;
  if (![(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:configurationCopy])
  {
    v20 = [objc_opt_class() errorNotEntitledForStoreConfiguration:configurationCopy];
LABEL_11:
    v21 = v20;
    replyCopy[2](replyCopy, 0, v20);

    goto LABEL_12;
  }

  if (![(SYDDaemonToClientConnection *)self isKnownStore:configurationCopy])
  {
    v20 = [objc_opt_class() errorForUnknownStore:configurationCopy];
    goto LABEL_11;
  }

  v11 = SYDGetConnectionLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection objectForKey:inStoreWithConfiguration:reply:];
  }

  delegate = [(SYDDaemonToClientConnection *)self delegate];
  storeID = [configurationCopy storeID];
  v23 = 0;
  v14 = [delegate connection:self syncManagerForStoreID:storeID error:&v23];
  v15 = v23;

  v16 = 0;
  if (v14 && !v15)
  {
    storeID2 = [configurationCopy storeID];
    identifier = [storeID2 identifier];
    v22 = 0;
    v16 = [v14 objectForKey:keyCopy inStoreWithIdentifier:identifier error:&v22];
    v15 = v22;
  }

  v19 = SYDClientSuitableError(v15);
  (replyCopy)[2](replyCopy, v16, v19);

LABEL_12:
}

- (void)removeObjectForKey:(id)key inStoreWithConfiguration:(id)configuration reply:(id)reply
{
  keyCopy = key;
  configurationCopy = configuration;
  replyCopy = reply;
  if (![(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:configurationCopy])
  {
    v19 = [objc_opt_class() errorNotEntitledForStoreConfiguration:configurationCopy];
LABEL_11:
    v20 = v19;
    replyCopy[2](replyCopy, v19);

    goto LABEL_12;
  }

  if (![(SYDDaemonToClientConnection *)self isKnownStore:configurationCopy])
  {
    v19 = [objc_opt_class() errorForUnknownStore:configurationCopy];
    goto LABEL_11;
  }

  v11 = SYDGetConnectionLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection removeObjectForKey:inStoreWithConfiguration:reply:];
  }

  delegate = [(SYDDaemonToClientConnection *)self delegate];
  storeID = [configurationCopy storeID];
  v22 = 0;
  v14 = [delegate connection:self syncManagerForStoreID:storeID error:&v22];
  v15 = v22;

  if (v14 && !v15)
  {
    storeID2 = [configurationCopy storeID];
    identifier = [storeID2 identifier];
    v21 = 0;
    [v14 removeObjectForKey:keyCopy inStoreWithIdentifier:identifier excludeFromChangeTracking:1 error:&v21];
    v15 = v21;
  }

  v18 = SYDClientSuitableError(v15);
  replyCopy[2](replyCopy, v18);

LABEL_12:
}

- (void)synchronizeStoreWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v31[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  if (![(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:configurationCopy])
  {
    v15 = [objc_opt_class() errorNotEntitledForStoreConfiguration:configurationCopy];
LABEL_9:
    v16 = v15;
    handlerCopy[2](handlerCopy, v15);

    goto LABEL_16;
  }

  if (![(SYDDaemonToClientConnection *)self isKnownStore:configurationCopy])
  {
    v15 = [objc_opt_class() errorForUnknownStore:configurationCopy];
    goto LABEL_9;
  }

  v8 = SYDGetConnectionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection synchronizeStoreWithConfiguration:completionHandler:];
  }

  delegate = [(SYDDaemonToClientConnection *)self delegate];
  storeID = [configurationCopy storeID];
  v29 = 0;
  v11 = [delegate connection:self syncManagerForStoreID:storeID error:&v29];
  v12 = v29;

  if (v11)
  {
    [(SYDDaemonToClientConnection *)self incrementManualSyncCount];
    storeID2 = [configurationCopy storeID];
    identifier = [storeID2 identifier];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__SYDDaemonToClientConnection_synchronizeStoreWithConfiguration_completionHandler___block_invoke;
    v26[3] = &unk_279D2F8E0;
    v26[4] = self;
    v27 = configurationCopy;
    v28 = handlerCopy;
    [v11 synchronizeStoreWithIdentifier:identifier completionHandler:v26];
  }

  else
  {
    v17 = SYDGetConnectionLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SYDDaemonToClientConnection synchronizeStoreWithConfiguration:completionHandler:];
    }

    v18 = MEMORY[0x277CCACA8];
    storeID3 = [configurationCopy storeID];
    identifier2 = [storeID3 identifier];
    v21 = [v18 stringWithFormat:@"No sync manager trying to sync store %@", identifier2];

    if (!v12)
    {
      v22 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = v21;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v12 = [v22 errorWithDomain:@"SyncedDefaults" code:1234 userInfo:v23];
    }

    v24 = SYDClientSuitableError(v12);
    handlerCopy[2](handlerCopy, v24);
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

- (void)synchronizeStoresWithIdentifiers:(id)identifiers type:(int64_t)type testConfiguration:(id)configuration completionHandler:(id)handler
{
  v50 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  configurationCopy = configuration;
  handlerCopy = handler;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = identifiersCopy;
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

        v16 = [objc_alloc(MEMORY[0x277D6B888]) initWithIdentifier:*(*(&v43 + 1) + 8 * v15) type:type];
        [v16 setTestConfiguration:configurationCopy];
        v17 = [objc_alloc(MEMORY[0x277D6B880]) initWithStoreID:v16];
        if (![(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:v17])
        {
          v28 = [objc_opt_class() errorNotEntitledForStoreConfiguration:v17];
          v27 = handlerCopy;
          (*(handlerCopy + 2))(handlerCopy, v28);

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
      [SYDDaemonToClientConnection synchronizeStoresWithIdentifiers:type type:? testConfiguration:? completionHandler:?];
    }

    v21 = objc_alloc(MEMORY[0x277D6B888]);
    firstObject = [v11 firstObject];
    v23 = [v21 initWithIdentifier:firstObject type:type];

    [v23 setTestConfiguration:configurationCopy];
    delegate = [(SYDDaemonToClientConnection *)self delegate];
    v41 = 0;
    v25 = [delegate connection:self syncManagerForStoreID:v23 error:&v41];
    v26 = v41;

    if (v25)
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __105__SYDDaemonToClientConnection_synchronizeStoresWithIdentifiers_type_testConfiguration_completionHandler___block_invoke;
      v39[3] = &unk_279D2F930;
      v39[4] = self;
      v27 = handlerCopy;
      v40 = handlerCopy;
      [v25 synchronizeStoresWithIdentifiers:v11 completionHandler:v39];
    }

    else
    {
      v29 = SYDGetConnectionLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [SYDDaemonToClientConnection synchronizeStoresWithIdentifiers:type type:? testConfiguration:? completionHandler:?];
      }

      v30 = MEMORY[0x277CCACA8];
      v31 = SYDStringForStoreType(type);
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
      v27 = handlerCopy;
      (*(handlerCopy + 2))(handlerCopy, v35);
    }
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26C384000, v20, OS_LOG_TYPE_INFO, "Asked to sync zero stores", buf, 2u);
    }

    v27 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, 0);
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

- (void)dictionaryRepresentationForStoreWithConfiguration:(id)configuration reply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  if ([(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:configurationCopy])
  {
    v8 = SYDGetConnectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SYDDaemonToClientConnection dictionaryRepresentationForStoreWithConfiguration:reply:];
    }

    delegate = [(SYDDaemonToClientConnection *)self delegate];
    storeID = [configurationCopy storeID];
    v20 = 0;
    v11 = [delegate connection:self syncManagerForStoreID:storeID error:&v20];
    v12 = v20;

    v13 = 0;
    if (v11 && !v12)
    {
      coreDataStore = [v11 coreDataStore];
      storeID2 = [configurationCopy storeID];
      identifier = [storeID2 identifier];
      v19 = 0;
      v13 = [coreDataStore dictionaryRepresentationForStoreWithIdentifier:identifier error:&v19];
      v12 = v19;
    }

    v17 = SYDClientSuitableError(v12);
    replyCopy[2](replyCopy, v13, v17);
  }

  else
  {
    v18 = [objc_opt_class() errorNotEntitledForStoreConfiguration:configurationCopy];
    replyCopy[2](replyCopy, 0, v18);
  }
}

- (void)allStoreIdentifiersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = SYDGetConnectionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection allStoreIdentifiersWithCompletionHandler:];
  }

  xpcConnection = [(SYDDaemonToClientConnection *)self xpcConnection];
  v7 = [xpcConnection valueForEntitlement:@"com.apple.private.ubiquity-kvsutil-access"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 BOOLValue])
  {
    delegate = [(SYDDaemonToClientConnection *)self delegate];
    v12 = 0;
    v9 = [delegate allStoreIdentifiersWithError:&v12];
    v10 = v12;

    if (!handlerCopy)
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
    if (!handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v9 = 0;
  if (handlerCopy)
  {
LABEL_9:
    v11 = SYDClientSuitableError(v10);
    handlerCopy[2](handlerCopy, v9, v11);
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

- (BOOL)isCloudSyncEnablementEntitledForStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  xpcConnection = [(SYDDaemonToClientConnection *)self xpcConnection];
  v6 = [xpcConnection valueForEntitlement:@"com.apple.private.kvs.allow-sync-enablement-modifications"];

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

- (void)isCloudSyncUserDefaultEnabledForStoreIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([(SYDDaemonToClientConnection *)self isCloudSyncEnablementEntitledForStoreIdentifier:identifierCopy])
  {
    v7 = +[SYDStoreBundleMap sharedInstance];
    v8 = [v7 isCloudSyncUserDefaultEnabledForStoreIdentifier:identifierCopy];
  }

  else
  {
    v8 = 1;
  }

  handlerCopy[2](handlerCopy, v8);
}

- (void)registerForChangeNotificationsForStoreWithConfiguration:(id)configuration reply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  if ([(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:configurationCopy])
  {
    queue = [(SYDDaemonToClientConnection *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __93__SYDDaemonToClientConnection_registerForChangeNotificationsForStoreWithConfiguration_reply___block_invoke;
    v10[3] = &unk_279D2F678;
    v11 = configurationCopy;
    selfCopy = self;
    dispatch_sync(queue, v10);

    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v9 = [objc_opt_class() errorNotEntitledForStoreConfiguration:configurationCopy];
    (replyCopy)[2](replyCopy, v9);
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

- (void)changeDictionarySinceChangeToken:(id)token inStoreWithConfiguration:(id)configuration reply:(id)reply
{
  v37 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  configurationCopy = configuration;
  replyCopy = reply;
  if ([(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:configurationCopy])
  {
    v11 = SYDGetConnectionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v32 = tokenCopy;
      v33 = 2112;
      v34 = configurationCopy;
      v35 = 2112;
      selfCopy = self;
      _os_log_debug_impl(&dword_26C384000, v11, OS_LOG_TYPE_DEBUG, "Generating change dictionary for token %@ in store (%@) for %@", buf, 0x20u);
    }

    delegate = [(SYDDaemonToClientConnection *)self delegate];
    storeID = [configurationCopy storeID];
    v30 = 0;
    v14 = [delegate connection:self syncManagerForStoreID:storeID error:&v30];
    v15 = v30;

    v16 = 0;
    if (v14 && !v15)
    {
      storeID2 = [configurationCopy storeID];
      identifier = [storeID2 identifier];

      coreDataStore = [v14 coreDataStore];
      v29 = 0;
      v20 = [coreDataStore currentChangeTokenForStoreIdentifier:identifier error:&v29];
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
        coreDataStore2 = [v14 coreDataStore];
        v28 = 0;
        v21 = [v23 changedKeysForStoreIdentifier:identifier sinceChangeTokenIfValid:tokenCopy inCoreDataStore:coreDataStore2 error:&v28];
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
    replyCopy[2](replyCopy, v16, v26);
  }

  else
  {
    v22 = [objc_opt_class() errorNotEntitledForStoreConfiguration:configurationCopy];
    replyCopy[2](replyCopy, 0, v22);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)changeTokenForStoreWithConfiguration:(id)configuration reply:(id)reply
{
  v35[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  replyCopy = reply;
  if ([(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:configurationCopy])
  {
    xpcConnection = [(SYDDaemonToClientConnection *)self xpcConnection];
    v33 = 0;
    v9 = [(SYDDaemonToClientConnection *)self changeTokenURLForStoreConfiguration:configurationCopy xpcConnection:xpcConnection error:&v33];
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
            [SYDDaemonToClientConnection changeTokenForStoreWithConfiguration:configurationCopy reply:?];
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

        domain = [v10 domain];
        if ([domain isEqualToString:*MEMORY[0x277CCA050]])
        {
          code = [v10 code];

          if (code == 260)
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

      domain2 = [v14 domain];
      if ([domain2 isEqualToString:*MEMORY[0x277CCA050]])
      {
        code2 = [v14 code];

        if (code2 == 260)
        {

          v19 = 0;
LABEL_20:
          v14 = 0;
LABEL_32:
          v28 = SYDClientSuitableError(v14);
          replyCopy[2](replyCopy, v19, v28);

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

  v20 = [objc_opt_class() errorNotEntitledForStoreConfiguration:configurationCopy];
  replyCopy[2](replyCopy, 0, v20);

LABEL_33:
  v29 = *MEMORY[0x277D85DE8];
}

- (void)saveChangeToken:(id)token forStoreWithConfiguration:(id)configuration reply:(id)reply
{
  tokenCopy = token;
  configurationCopy = configuration;
  replyCopy = reply;
  if ([(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:configurationCopy])
  {
    xpcConnection = [(SYDDaemonToClientConnection *)self xpcConnection];
    v43 = 0;
    v12 = [(SYDDaemonToClientConnection *)self changeTokenURLForStoreConfiguration:configurationCopy xpcConnection:xpcConnection error:&v43];
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
    if (!tokenCopy)
    {
      if (v15)
      {
        [SYDDaemonToClientConnection saveChangeToken:forStoreWithConfiguration:reply:];
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v42 = v13;
      v23 = [defaultManager removeItemAtURL:v12 error:&v42];
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
      replyCopy[2](replyCopy, v33);

      goto LABEL_48;
    }

    if (v15)
    {
      [SYDDaemonToClientConnection saveChangeToken:forStoreWithConfiguration:reply:];
    }

    currentProcess = [MEMORY[0x277D46F48] currentProcess];
    v17 = [currentProcess isXPCService] ^ 1;

    storeID = [configurationCopy storeID];
    v19 = SYDFileProtectionTypeForStoreType([storeID type]);

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
    v25 = [tokenCopy writeToURL:v12 options:v20 error:&v41];
    v26 = v41;

    if (v25)
    {
      v13 = v26;
      goto LABEL_46;
    }

    if (SYDIsFileNotFoundError(v26))
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      uRLByDeletingLastPathComponent = [v12 URLByDeletingLastPathComponent];
      v40 = v26;
      v29 = [defaultManager2 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v40];
      v34 = v40;

      if (v29)
      {

        v37 = 0;
        [tokenCopy writeToURL:v12 options:v20 error:&v37];
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

    domain = [v13 domain];
    if ([domain isEqual:*MEMORY[0x277CCA050]])
    {
      code = [v13 code];

      if (code == 640)
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

  v21 = [objc_opt_class() errorNotEntitledForStoreConfiguration:configurationCopy];
  replyCopy[2](replyCopy, v21);

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

+ (id)changedKeysForStoreIdentifier:(id)identifier sinceChangeTokenIfValid:(id)valid inCoreDataStore:(id)store error:(id *)error
{
  identifierCopy = identifier;
  storeCopy = store;
  v19 = 0;
  v11 = [storeCopy changedKeysForStoreIdentifier:identifierCopy sinceChangeToken:valid error:&v19];
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
    v14 = [storeCopy changedKeysForStoreIdentifier:identifierCopy sinceChangeToken:0 error:&v17];
    v12 = v17;

    v11 = v14;
  }

  if (error)
  {
    v15 = v12;
    *error = v12;
  }

  return v11;
}

+ (id)changeDictionaryWithChangedKeys:(id)keys reason:(int64_t)reason changeToken:(id)token
{
  v15[2] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  tokenCopy = token;
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  if ([keysCopy count])
  {
    v14[0] = *MEMORY[0x277CCA7B0];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:reason];
    v14[1] = *MEMORY[0x277CCA7B8];
    v15[0] = v10;
    v15[1] = keysCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

    [v9 setObject:v11 forKeyedSubscript:@"NSUbiquitousKeyValueStoreDidChangeExternallyNotificationUserInfo"];
  }

  if (tokenCopy)
  {
    [v9 setObject:tokenCopy forKeyedSubscript:@"ChangeToken"];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)processAccountChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SYDDaemonToClientConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SYDDaemonToClientConnection_processAccountChangesWithCompletionHandler___block_invoke;
  v7[3] = &unk_279D2F908;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
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

- (void)syncManagerDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  if (![(SYDDaemonToClientConnection *)self isPerformingManualSync])
  {
    queue = [(SYDDaemonToClientConnection *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__SYDDaemonToClientConnection_syncManagerDidChangeNotification___block_invoke;
    v6[3] = &unk_279D2F678;
    v7 = notificationCopy;
    selfCopy = self;
    dispatch_async(queue, v6);
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

- (void)notifyAccountDidChangeFromAccountID:(id)d toAccountID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_26C384000, "kvs/notify-account-change", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  queue = [(SYDDaemonToClientConnection *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__SYDDaemonToClientConnection_notifyAccountDidChangeFromAccountID_toAccountID_completionHandler___block_invoke;
  v16[3] = &unk_279D2F9A8;
  v16[4] = self;
  v17 = dCopy;
  v18 = iDCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = iDCopy;
  v15 = dCopy;
  dispatch_async(queue, v16);

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

- (void)daemonToClientConnectionDidChangeValues:(id)values
{
  v43 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  object = [valuesCopy object];

  if (object != self)
  {
    userInfo = [valuesCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"storeID"];

    userInfo2 = [valuesCopy userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:@"changedKeys"];

    if (v7 && [v9 count])
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      queue = [(SYDDaemonToClientConnection *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__SYDDaemonToClientConnection_daemonToClientConnectionDidChangeValues___block_invoke;
      block[3] = &unk_279D2F890;
      v34 = &v35;
      block[4] = self;
      v11 = v7;
      v33 = v11;
      dispatch_sync(queue, block);

      if (v36[3])
      {
        delegate = [(SYDDaemonToClientConnection *)self delegate];
        v31 = 0;
        v13 = [delegate connection:self syncManagerForStoreID:v11 error:&v31];
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
          coreDataStore = [v13 coreDataStore];
          identifier = [v11 identifier];
          v30 = 0;
          v17 = [coreDataStore currentChangeTokenForStoreIdentifier:identifier error:&v30];
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
              identifier2 = [v11 identifier];
              *buf = 67109378;
              v40 = v25;
              v41 = 2112;
              v42 = identifier2;
              _os_log_impl(&dword_26C384000, v21, OS_LOG_TYPE_INFO, "Sending notification about %d changed keys for store <(%@)>", buf, 0x12u);

              v20 = v26;
            }

            personaUniqueString = [v11 personaUniqueString];
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __71__SYDDaemonToClientConnection_daemonToClientConnectionDidChangeValues___block_invoke_153;
            v27[3] = &unk_279D2F768;
            v27[4] = self;
            v28 = v11;
            v18 = v20;
            v29 = v18;
            SYDPerformWithPersona(personaUniqueString, v27);
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

- (void)deleteDataFromDiskForStoreWithConfiguration:(id)configuration reply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  if ([(SYDDaemonToClientConnection *)self isEntitledForStoreConfiguration:configurationCopy])
  {
    v8 = SYDGetConnectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SYDDaemonToClientConnection deleteDataFromDiskForStoreWithConfiguration:reply:];
    }

    delegate = [(SYDDaemonToClientConnection *)self delegate];
    storeID = [configurationCopy storeID];
    v19 = 0;
    v11 = [delegate connection:self syncManagerForStoreID:storeID error:&v19];
    v12 = v19;

    if (v11 && !v12)
    {
      coreDataStore = [v11 coreDataStore];
      storeID2 = [configurationCopy storeID];
      identifier = [storeID2 identifier];
      v18 = 0;
      [coreDataStore deleteDataForStoreWithIdentifier:identifier error:&v18];
      v12 = v18;

      [v11 resetSyncEngine];
    }

    v16 = SYDClientSuitableError(v12);
    replyCopy[2](replyCopy, v16);
  }

  else
  {
    v17 = [objc_opt_class() errorNotEntitledForStoreConfiguration:configurationCopy];
    replyCopy[2](replyCopy, v17);
  }
}

- (void)personaUniqueStringWithReply:(id)reply
{
  v3 = MEMORY[0x277D77C08];
  replyCopy = reply;
  currentPersona = [v3 currentPersona];
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];

  replyCopy[2](replyCopy, userPersonaUniqueString);
}

- (void)postFakeAccountChangeNotificationWithPreviousID:(id)d currentID:(id)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __107__SYDDaemonToClientConnection_postFakeAccountChangeNotificationWithPreviousID_currentID_completionHandler___block_invoke;
  v10[3] = &unk_279D2F958;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(SYDDaemonToClientConnection *)self notifyAccountDidChangeFromAccountID:d toAccountID:iD completionHandler:v10];
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

- (void)postFakeSyncManagerChangeNotificationForStoreWithConfiguration:(id)configuration completionHandler:(id)handler
{
  v19[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = SYDGetConnectionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SYDDaemonToClientConnection postFakeSyncManagerChangeNotificationForStoreWithConfiguration:completionHandler:];
  }

  delegate = [(SYDDaemonToClientConnection *)self delegate];
  storeID = [configurationCopy storeID];
  v17 = 0;
  v11 = [delegate connection:self syncManagerForStoreID:storeID error:&v17];
  v12 = v17;

  if (v11)
  {
    v19[0] = &unk_287CF24C0;
    v18[0] = @"changedKeys";
    v18[1] = @"storeID";
    storeID2 = [configurationCopy storeID];
    v19[1] = storeID2;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SYDSyncManagerNotificationValuesDidChange" object:v11 userInfo:v14];
  }

  handlerCopy[2](handlerCopy);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setFakeError:(id)error forNextCloudKitRequestOfClassName:(id)name inStoreWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  nameCopy = name;
  errorCopy = error;
  delegate = [(SYDDaemonToClientConnection *)self delegate];
  storeID = [configurationCopy storeID];

  v14 = [delegate connection:self syncManagerForStoreID:storeID error:0];

  container = [v14 container];
  [container setFakeError:errorCopy forNextRequestOfClassName:nameCopy];
}

- (void)isUIFrameworkLinkedInDaemonWithReply:(id)reply
{
  replyCopy = reply;
  v3 = NSClassFromString(&cfstr_Uiapplication.isa) != 0;
  replyCopy[2](replyCopy, v3);
}

- (void)containerIDWithConfiguration:(id)configuration reply:(id)reply
{
  replyCopy = reply;
  configurationCopy = configuration;
  delegate = [(SYDDaemonToClientConnection *)self delegate];
  storeID = [configurationCopy storeID];

  v12 = [delegate connection:self syncManagerForStoreID:storeID error:0];

  container = [v12 container];
  containerID = [container containerID];
  replyCopy[2](replyCopy, containerID);
}

- (void)removeUnitTestSyncManagersWithReply:(id)reply
{
  replyCopy = reply;
  delegate = [(SYDDaemonToClientConnection *)self delegate];
  [delegate removeUnitTestSyncManagers];

  replyCopy[2]();
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
  xpcConnection = [(SYDDaemonToClientConnection *)self xpcConnection];
  _unboostingRemoteObjectProxy = [xpcConnection _unboostingRemoteObjectProxy];

  return _unboostingRemoteObjectProxy;
}

- (id)changeTokenURLForStoreConfiguration:(id)configuration xpcConnection:(id)connection error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  connectionCopy = connection;
  v9 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
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

  v14 = SYDKVSDirectory(error);
  if (v14)
  {
LABEL_7:
    v15 = SYDChangeTokenURL(configurationCopy, v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isKnownStore:(id)store
{
  storeID = [store storeID];
  identifier = [storeID identifier];

  v6 = +[SYDStoreBundleMap sharedInstance];
  if ([v6 isStoreIdentifierUsedOnThisDevice:identifier])
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
    if (([v6 isStoreIdentifierUsedOnThisDevice:identifier] & 1) == 0)
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

+ (id)errorForUnknownStore:(id)store
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  storeID = [store storeID];
  identifier = [storeID identifier];
  v6 = [v3 stringWithFormat:@"Tried to access unknown store %@", identifier];

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(SYDDaemonToClientConnection *)selfCopy manualSyncCount]!= 0;
  objc_sync_exit(selfCopy);

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