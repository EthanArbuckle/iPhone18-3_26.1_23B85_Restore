@interface UAUserActivityManager
+ (BOOL)shouldSupportActivityContinuation;
+ (BOOL)userActivityContinuationSupported;
+ (id)_determineMatchingApplicationBundleIdentfierWithOptionsForActivityType:(id)type dynamicType:(id)dynamicType kind:(unint64_t)kind teamIdentifier:(id)identifier;
+ (id)defaultManager;
- (BOOL)allowedToConnect;
- (BOOL)currentUserActivityProxiesWithOptions:(id)options predicate:(id)predicate completionHandler:(id)handler;
- (BOOL)currentUserActivityUUIDWithOptions:(id)options completionHandler:(id)handler;
- (BOOL)determineIfUserActivityIsCurrent:(id)current completionHandler:(id)handler;
- (BOOL)hasUserActivityWithUUID:(id)d;
- (BOOL)initialServerHandshake:(BOOL)handshake;
- (BOOL)registerAsProxyForApplication:(int)application options:(id)options completionBlock:(id)block;
- (BOOL)userActivityIsActive:(id)active;
- (NSSet)userActivityUUIDsSendToServer;
- (NSXPCConnection)connection;
- (UAUserActivityManager)init;
- (UAUserActivityManager)initWithConnection:(id)connection;
- (id)activeActivitiesByPriority;
- (id)activities;
- (id)createByDecodingUserActivity:(id)activity;
- (id)encodeUserActivity:(id)activity options:(id)options;
- (id)fetchUUID:(id)d intervalToWaitForDocumentSynchonization:(double)synchonization withCompletionHandler:(id)handler;
- (id)userActivityForUUID:(id)d;
- (void)addDynamicUserActivity:(id)activity matching:(id)matching;
- (void)addUserActivity:(id)activity;
- (void)askClientUserActivityToSave:(id)save;
- (void)askClientUserActivityToSave:(id)save completionHandler:(id)handler;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)didReceiveInputStreamWithUUID:(id)d inputStream:(id)stream outputStream:(id)outputStream;
- (void)makeActive:(id)active;
- (void)makeInactive:(id)inactive;
- (void)markUserActivityAsDirty:(id)dirty forceImmediate:(BOOL)immediate;
- (void)pinUserActivity:(id)activity withCompletionHandler:(id)handler;
- (void)registerForApplicationDeactivateIfNecessary;
- (void)removeDynamicUserActivity:(id)activity matching:(id)matching;
- (void)removeUserActivity:(id)activity;
- (void)sendCurrentActivityToIndexer:(id)indexer;
- (void)sendToIndexerIfAppropriate:(id)appropriate force:(BOOL)force;
- (void)sendUserActivityInfoToLSUserActivityd:(id)activityd makeCurrent:(BOOL)current;
- (void)setAllowedToConnect:(BOOL)connect;
- (void)tellClientDebuggingEnabled:(BOOL)enabled logFileHandle:(id)handle;
- (void)tellClientUserActivityItWasResumed:(id)resumed;
- (void)tellDaemonAboutNewLSUserActivity:(id)activity;
- (void)unregisterForApplicationDeactivation;
@end

@implementation UAUserActivityManager

+ (id)defaultManager
{
  if (defaultManager_sOnce != -1)
  {
    +[UAUserActivityManager defaultManager];
  }

  v3 = defaultManager_sManager;

  return v3;
}

void __39__UAUserActivityManager_defaultManager__block_invoke()
{
  v0 = objc_alloc_init(UAUserActivityManager);
  v1 = defaultManager_sManager;
  defaultManager_sManager = v0;

  v2 = [defaultManager_sManager serverQ];
  os_state_add_handler();
}

+ (BOOL)shouldSupportActivityContinuation
{
  v2 = MGGetBoolAnswer();
  if (v2)
  {
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    isSharedIPad = [mEMORY[0x277D77BF8] isSharedIPad];

    if (isSharedIPad)
    {
      v5 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_INFO, "Disabling Handoff/UserActivity because the system is in multi-user mode", v7, 2u);
      }

      LOBYTE(v2) = 0;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

void __29__UAUserActivityManager_init__block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __29__UAUserActivityManager_init__block_invoke_2;
  handler[3] = &unk_2785C4048;
  v4 = *(a1 + 32);
  notify_register_dispatch("com.apple.coreservices.useractivity.reconnection", &init_sRegisterForReconnectionNotificationToken_0, v2, handler);
}

- (UAUserActivityManager)init
{
  v17.receiver = self;
  v17.super_class = UAUserActivityManager;
  v2 = [(UAUserActivityManager *)&v17 init];
  if (v2)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    userActivitiesByUUID = v2->_userActivitiesByUUID;
    v2->_userActivitiesByUUID = strongToWeakObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    activeUserActivitiesByUUID = v2->_activeUserActivitiesByUUID;
    v2->_activeUserActivitiesByUUID = strongToWeakObjectsMapTable2;

    v7 = [MEMORY[0x277CBEB58] set];
    userActivityUUIDsSendToServer = v2->_userActivityUUIDsSendToServer;
    v2->_userActivityUUIDsSendToServer = v7;

    v2->_allowedToConnect = 1;
    shouldSupportActivityContinuation = [objc_opt_class() shouldSupportActivityContinuation];
    v2->_supportsActivityContinuation = shouldSupportActivityContinuation;
    v2->_activityContinuationIsEnabled = shouldSupportActivityContinuation;
    v10 = dispatch_queue_create("userActivityQ", 0);
    serverQ = v2->_serverQ;
    v2->_serverQ = v10;

    v12 = dispatch_queue_create("serialQueueForSendingActivitiesToServer", 0);
    serialQueueForSendingActivitiesToServer = v2->_serialQueueForSendingActivitiesToServer;
    v2->_serialQueueForSendingActivitiesToServer = v12;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__UAUserActivityManager_init__block_invoke;
    block[3] = &unk_2785C3D18;
    v16 = v2;
    if (init_sRegisterForReconnectionMessageOnce_0 != -1)
    {
      dispatch_once(&init_sRegisterForReconnectionMessageOnce_0, block);
    }
  }

  return v2;
}

- (NSXPCConnection)connection
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_allowedToConnect)
  {
    connection = selfCopy->_connection;
    if (connection)
    {
      v4 = connection;
    }

    else
    {
      v6 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = UActivityCreationXPCServiceName();
        *buf = 138543362;
        v21 = v7;
        _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_DEBUG, "Creating NSXPCConnection to server %{public}@", buf, 0xCu);
      }

      v8 = selfCopy;
      v9 = objc_alloc(MEMORY[0x277CCAE80]);
      v10 = UActivityCreationXPCServiceName();
      v11 = [v9 initWithMachServiceName:v10 options:0];
      v12 = selfCopy->_connection;
      selfCopy->_connection = v11;

      v13 = _LSGetUserActivityClientProtocolInterface();
      [(NSXPCConnection *)selfCopy->_connection setRemoteObjectInterface:v13];

      [(NSXPCConnection *)selfCopy->_connection setExportedObject:v8];
      v14 = _LSGetUserActivityClientResponseProtocolInterface();
      [(NSXPCConnection *)selfCopy->_connection setExportedInterface:v14];

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __35__UAUserActivityManager_connection__block_invoke;
      v19[3] = &unk_2785C3D18;
      v19[4] = v8;
      [(NSXPCConnection *)selfCopy->_connection setInterruptionHandler:v19];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __35__UAUserActivityManager_connection__block_invoke_2;
      v18[3] = &unk_2785C3D18;
      v18[4] = v8;
      [(NSXPCConnection *)selfCopy->_connection setInvalidationHandler:v18];
      [(NSXPCConnection *)selfCopy->_connection resume];
      v4 = selfCopy->_connection;
    }
  }

  else
  {
    v5 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "Not allowed to connect to useractivityd.", buf, 2u);
    }

    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  if (v4 && ![(UAUserActivityManager *)selfCopy initialServerHandshake:0])
  {
    v15 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_226A4E000, v15, OS_LOG_TYPE_ERROR, "Failed sending initial message for connection to useractivityd.", buf, 2u);
    }

    v4 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSSet)userActivityUUIDsSendToServer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_userActivityUUIDsSendToServer copy];
  objc_sync_exit(selfCopy);

  return v3;
}

void __68__UAUserActivityManager_registerForApplicationDeactivateIfNecessary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if (([*(a1 + 32) registeredForAppResignationMessages] & 1) == 0)
  {
    v3 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_INFO, "registerForApplicationDeactivateIfNecessary()", v6, 2u);
    }

    [*(a1 + 32) setRegisteredForAppResignationMessages:1];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:sel_sendCurrentActivityToIndexer_ name:@"UIApplicationWillResignActiveNotification" object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:*(a1 + 32) selector:sel_sendCurrentActivityToIndexer_ name:@"UIApplicationWillTerminateNotification" object:0];
  }

  objc_sync_exit(v2);
}

- (void)registerForApplicationDeactivateIfNecessary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__UAUserActivityManager_registerForApplicationDeactivateIfNecessary__block_invoke;
  block[3] = &unk_2785C3D18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

char *__39__UAUserActivityManager_defaultManager__block_invoke_2()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAB68] string];
  v25 = 0u;
  v26 = 0u;
  *__s = 0u;
  v24 = 0u;
  strstr("@(#)PROGRAM:UserActivity  PROJECT:UserActivity-551\n", "PROJECT:");
  __strlcpy_chk();
  v1 = strrchr(__s, 10);
  if (v1)
  {
    *v1 = 0;
  }

  if ([defaultManager_sManager supportsActivityContinuation])
  {
    v2 = "YES";
  }

  else
  {
    v2 = "NO";
  }

  if ([defaultManager_sManager activityContinuationIsEnabled])
  {
    v3 = "YES";
  }

  else
  {
    v3 = "NO";
  }

  [v0 appendFormat:@"UAUserActivityManager supportsActivityContinuation=%s isEnabled=%s serverPid=%ld %s", v2, v3, *(defaultManager_sManager + 48), __s];
  v4 = [defaultManager_sManager activeUserActivityUUID];

  if (v4)
  {
    v5 = [defaultManager_sManager activeUserActivityUUID];
    v6 = [v5 UUIDString];
    [v0 appendFormat:@" becomeCurrentUUID=%@", v6];
  }

  v7 = defaultManager_sManager;
  objc_sync_enter(v7);
  v8 = [defaultManager_sManager userActivitiesByUUID];
  v9 = [v8 count] > 1;

  if (v9)
  {
    [v0 appendString:@" - otherUUIDs:["];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [defaultManager_sManager userActivitiesByUUID];
    v11 = [v10 keyEnumerator];

    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [v0 appendFormat:@"%@ ", *(*(&v18 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v0 appendString:@"\n"];
  }

  objc_sync_exit(v7);

  v15 = serializedCFType(v0);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void __29__UAUserActivityManager_init__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEFAULT, "--- Received com.apple.coreservices.useractivity.reconnection notification, and we had an active user activity, so reconnecting to server.", buf, 2u);
  }

  v4 = [*(a1 + 32) serverQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__UAUserActivityManager_init__block_invoke_28;
  block[3] = &unk_2785C3D18;
  v6 = *(a1 + 32);
  dispatch_async(v4, block);

  objc_autoreleasePoolPop(v2);
}

void __29__UAUserActivityManager_init__block_invoke_28(uint64_t a1)
{
  if ([*(a1 + 32) allowedToConnect])
  {
    [*(a1 + 32) setNeedToSendInitialMessage:1];
    v2 = [*(a1 + 32) activeUserActivityUUID];

    if (v2)
    {
      v3 = *(a1 + 32);

      [v3 initialServerHandshake:0];
    }
  }
}

- (BOOL)allowedToConnect
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allowedToConnect = selfCopy->_allowedToConnect;
  objc_sync_exit(selfCopy);

  return allowedToConnect;
}

- (id)activeActivitiesByPriority
{
  activeUserActivitiesByUUID = [(UAUserActivityManager *)self activeUserActivitiesByUUID];
  objectEnumerator = [activeUserActivitiesByUUID objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v5 = [allObjects sortedArrayUsingComparator:&__block_literal_global_53];

  return v5;
}

- (void)unregisterForApplicationDeactivation
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__UAUserActivityManager_unregisterForApplicationDeactivation__block_invoke;
  block[3] = &unk_2785C3D18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __61__UAUserActivityManager_unregisterForApplicationDeactivation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if ([*(a1 + 32) registeredForAppResignationMessages])
  {
    v3 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_INFO, "unregisterForApplicationDeactivation", v6, 2u);
    }

    [*(a1 + 32) setRegisteredForAppResignationMessages:0];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:*(a1 + 32) name:@"UIApplicationWillResignActiveNotification" object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:*(a1 + 32) name:@"UIApplicationWillTerminateNotification" object:0];
  }

  objc_sync_exit(v2);
}

+ (BOOL)userActivityContinuationSupported
{
  v2 = MGGetBoolAnswer();
  if (v2)
  {
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    isSharedIPad = [mEMORY[0x277D77BF8] isSharedIPad];

    if (isSharedIPad)
    {
      v5 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_INFO, "Disabling Handoff/UserActivity because the system is in multi-user mode", v7, 2u);
      }

      LOBYTE(v2) = 0;
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

- (void)setAllowedToConnect:(BOOL)connect
{
  connectCopy = connect;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_allowedToConnect != connectCopy)
  {
    connection = selfCopy->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection invalidate];
      v6 = selfCopy->_connection;
      selfCopy->_connection = 0;
    }

    if (connectCopy)
    {
      serverQ = [(UAUserActivityManager *)selfCopy serverQ];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__UAUserActivityManager_setAllowedToConnect___block_invoke;
      block[3] = &unk_2785C3D18;
      block[4] = selfCopy;
      dispatch_async(serverQ, block);
    }
  }

  objc_sync_exit(selfCopy);
}

void __45__UAUserActivityManager_setAllowedToConnect___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) connection];
}

- (UAUserActivityManager)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(UAUserActivityManager *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v8 = _LSGetUserActivityClientProtocolInterface();
    [(NSXPCConnection *)v7->_connection setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    v9 = _LSGetUserActivityClientResponseProtocolInterface();
    [(NSXPCConnection *)v7->_connection setExportedInterface:v9];

    [(NSXPCConnection *)v7->_connection resume];
  }

  return v7;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = self->_serverQ;
  serverQ = self->_serverQ;
  self->_serverQ = 0;

  v4 = v8[5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__UAUserActivityManager_dealloc__block_invoke;
  block[3] = &unk_2785C3FF8;
  block[4] = &v7;
  dispatch_async(v4, block);
  _Block_object_dispose(&v7, 8);

  v5.receiver = self;
  v5.super_class = UAUserActivityManager;
  [(UAUserActivityManager *)&v5 dealloc];
}

void __32__UAUserActivityManager_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void __35__UAUserActivityManager_connection__block_invoke(uint64_t a1)
{
  v2 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_DEBUG, "CONNECTION INTERRUPTED to useractivityd", buf, 2u);
  }

  v3 = [*(a1 + 32) serverQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__UAUserActivityManager_connection__block_invoke_33;
  block[3] = &unk_2785C3D18;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

void __35__UAUserActivityManager_connection__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) serverQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__UAUserActivityManager_connection__block_invoke_3;
  block[3] = &unk_2785C3D18;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (void)connectionInterrupted
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEFAULT, "CONNECTION: connectionInterrupted, to useractivityd.", buf, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_needToSendInitialMessage = 1;
  [(NSMutableSet *)selfCopy->_userActivityUUIDsSendToServer removeAllObjects];
  objc_sync_exit(selfCopy);

  if ([(UAUserActivityManager *)selfCopy allowedToConnect])
  {
    activeUserActivityUUID = [(UAUserActivityManager *)selfCopy activeUserActivityUUID];
    v6 = activeUserActivityUUID == 0;

    if (!v6)
    {
      v7 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        v13 = 0x3FB999999999999ALL;
        _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_DEBUG, "CONNECTION reconnect; queueing up reconnection attempt in %{public}g seconds because our connection was interrupted.", buf, 0xCu);
      }

      v8 = dispatch_time(0, 100000000);
      serverQ = [(UAUserActivityManager *)selfCopy serverQ];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__UAUserActivityManager_connectionInterrupted__block_invoke;
      block[3] = &unk_2785C3D18;
      block[4] = selfCopy;
      dispatch_after(v8, serverQ, block);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __46__UAUserActivityManager_connectionInterrupted__block_invoke(uint64_t a1)
{
  v2 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "CONNECTION reconnect; sending initial message to useractivityd because we had an active activity at interruption-time.", v4, 2u);
  }

  return [*(a1 + 32) initialServerHandshake:1];
}

- (void)connectionInvalidated
{
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_INFO, "CONNECTION INVALIDATED: to useractivityd; all future attempts to use it will fail.", v5, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_allowedToConnect = 0;
  objc_sync_exit(selfCopy);
}

- (id)fetchUUID:(id)d intervalToWaitForDocumentSynchonization:(double)synchonization withCompletionHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (dCopy)
  {
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3032000000;
    v47[3] = __Block_byref_object_copy__2;
    v47[4] = __Block_byref_object_dispose__2;
    v48 = 0;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = __Block_byref_object_copy__2;
    v45[4] = __Block_byref_object_dispose__2;
    v46 = 0;
    v11 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      uUIDString = [dCopy UUIDString];
      *buf = 138543362;
      v50 = uUIDString;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_DEBUG, "uuid=%{public}@", buf, 0xCu);
    }

    v13 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:1];
    [v13 setCancellable:1];
    [v13 setPausable:0];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __97__UAUserActivityManager_fetchUUID_intervalToWaitForDocumentSynchonization_withCompletionHandler___block_invoke;
    v43[3] = &unk_2785C3D18;
    v14 = dCopy;
    v44 = v14;
    [v13 setCancellationHandler:v43];
    v15 = [(UAUserActivityManager *)self userActivityForUUID:v14];
    if (v15)
    {
      v16 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        uUIDString2 = [v14 UUIDString];
        *buf = 138412290;
        v50 = uUIDString2;
        _os_log_impl(&dword_226A4E000, v16, OS_LOG_TYPE_INFO, "Found activity %@ local to this process, so doing an immediate copy.", buf, 0xCu);
      }

      [v13 setTotalUnitCount:1];
      v18 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __97__UAUserActivityManager_fetchUUID_intervalToWaitForDocumentSynchonization_withCompletionHandler___block_invoke_35;
      block[3] = &unk_2785C4298;
      v41 = v47;
      v37 = v15;
      v38 = v13;
      v39 = v14;
      v42 = v45;
      v40 = v10;
      dispatch_async(v18, block);

      v19 = &v37;
    }

    else
    {
      v21 = _uaGetLogForCategory(@"signposts");
      v22 = os_signpost_id_generate(v21);

      v23 = _uaGetLogForCategory(@"signposts");
      v24 = v23;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 138543362;
        v50 = v14;
        _os_signpost_emit_with_name_impl(&dword_226A4E000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "fetchUserActivity", "Fetching handoff payload:%{public}@", buf, 0xCu);
      }

      serverQ = [(UAUserActivityManager *)self serverQ];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __97__UAUserActivityManager_fetchUUID_intervalToWaitForDocumentSynchonization_withCompletionHandler___block_invoke_37;
      v28[3] = &unk_2785C4310;
      synchonizationCopy = synchonization;
      v29[0] = v14;
      v29[1] = self;
      v32 = v45;
      v30 = v13;
      v33 = v47;
      v31 = v10;
      v35 = v22;
      dispatch_async(serverQ, v28);

      v19 = v29;
    }

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);
  }

  else
  {
    if (handlerCopy)
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
      (v10)[2](v10, 0, v20);
    }

    v13 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v13;
}

void __97__UAUserActivityManager_fetchUUID_intervalToWaitForDocumentSynchonization_withCompletionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) UUIDString];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "cancellationHandler for activity %{public}@ cancelled.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __97__UAUserActivityManager_fetchUUID_intervalToWaitForDocumentSynchonization_withCompletionHandler___block_invoke_35(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) copyWithNewUUID:1];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    [*(a1 + 40) setCompletedUnitCount:1];
    v6 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(*(*(a1 + 64) + 8) + 40) uniqueIdentifier];
      v8 = [v7 UUIDString];
      v9 = *(*(*(a1 + 64) + 8) + 40);
      v17 = 138543619;
      v18 = v8;
      v19 = 2113;
      v20 = v9;
      _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_DEBUG, "Calling completion handler with activity %{public}@/%{private}@", &v17, 0x16u);
    }

    v10 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 48) UUIDString];
      v13 = *(a1 + 32);
      v17 = 138543619;
      v18 = v12;
      v19 = 2113;
      v20 = v13;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_ERROR, "Failed attempting to copy %{public}@/%{private}@, so calling completion handler with UAContinuityClientNoSuchActivity@", &v17, 0x16u);
    }

    v14 = *(a1 + 56);
    v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"UAContinuityErrorDomain" code:-108 userInfo:0];
    (*(v14 + 16))(v14, 0, v15);
  }

  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x277D85DE8];
}

void __97__UAUserActivityManager_fetchUUID_intervalToWaitForDocumentSynchonization_withCompletionHandler___block_invoke_37(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) UUIDString];
    *buf = 138543362;
    *&buf[4] = v3;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_DEBUG, "on serverQ, preparing to call doFetchUserActivityInfoWithUUID to get latest info from server for %{public}@", buf, 0xCu);
  }

  kdebug_trace();
  v4 = dispatch_group_create();
  v5 = 0;
  if (*(a1 + 80) > 0.0)
  {
    v5 = dispatch_group_create();
  }

  v6 = [*(a1 + 40) connection];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __97__UAUserActivityManager_fetchUUID_intervalToWaitForDocumentSynchonization_withCompletionHandler___block_invoke_38;
  v49[3] = &unk_2785C42C0;
  v52 = *(a1 + 64);
  v7 = v4;
  v50 = v7;
  v8 = v5;
  v51 = v8;
  v9 = [v6 remoteObjectProxyWithErrorHandler:v49];

  if (!v9)
  {
    v16 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"UAContinuityErrorDomain" code:-107 userInfo:0];
    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
    goto LABEL_19;
  }

  dispatch_group_enter(v7);
  if (v8)
  {
    dispatch_group_enter(v8);
  }

  v10 = *(a1 + 32);
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = __97__UAUserActivityManager_fetchUUID_intervalToWaitForDocumentSynchonization_withCompletionHandler___block_invoke_40;
  v42 = &unk_2785C42E8;
  v43 = v10;
  v11 = *(a1 + 48);
  v48 = *(a1 + 64);
  v12 = *(a1 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v7;
  v13 = v8;
  v47 = v13;
  [v9 doFetchUserActivityInfoWithUUID:v43 completionHandler:&v39];
  v14 = *(a1 + 80);
  if (v14 < 3.40282347e38)
  {
    v15 = dispatch_time(0, (v14 * 1000000000.0));
    if (!v8)
    {
      goto LABEL_18;
    }

LABEL_13:
    v19 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 80);
      v21 = [*(a1 + 32) UUIDString];
      *buf = 134218242;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v21;
      _os_log_impl(&dword_226A4E000, v19, OS_LOG_TYPE_DEBUG, "-- before waiting up to %g seconds for documentSynchronization of uuid %{public}@", buf, 0x16u);
    }

    dispatch_group_wait(v13, v15);
    v22 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 80);
      v24 = [*(a1 + 32) UUIDString];
      *buf = 134218242;
      *&buf[4] = v23;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      _os_log_impl(&dword_226A4E000, v22, OS_LOG_TYPE_DEBUG, "-- done waiting up to %g seconds for documentSynchronization of uuid %{public}@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v15 = -1;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_18:

  v18 = v43;
LABEL_19:

  if (*(a1 + 56))
  {
    v25 = *(*(*(a1 + 72) + 8) + 40);
    v26 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 56) + 16))();
  }

  v27 = _uaGetLogForCategory(@"signposts");
  v28 = v27;
  v29 = *(a1 + 88);
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    v30 = *(a1 + 32);
    v31 = *(*(*(a1 + 64) + 8) + 40) != 0;
    *buf = 138543618;
    *&buf[4] = v30;
    *&buf[12] = 1026;
    *&buf[14] = v31;
    _os_signpost_emit_with_name_impl(&dword_226A4E000, v28, OS_SIGNPOST_INTERVAL_END, v29, "fetchUserActivity", "Fetching handoff payload:%{public}@ err=%{public}d", buf, 0x12u);
  }

  v32 = _uaGetLogForCategory(@"signposts");
  v33 = *(a1 + 32);
  if (v33)
  {
    *buf = 0;
    *&buf[8] = 0;
    [v33 getUUIDBytes:buf];
    v34 = 0;
    v35 = 0;
    do
    {
      v35 = (buf[v34 + 1] ^ buf[v34]) | (v35 << 8);
      v34 += 2;
    }

    while (v34 != 16);
    if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      v36 = *(a1 + 32);
      v37 = *(*(*(a1 + 64) + 8) + 40) != 0;
      *buf = 138543618;
      *&buf[4] = v36;
      *&buf[12] = 1026;
      *&buf[14] = v37;
      _os_signpost_emit_with_name_impl(&dword_226A4E000, v32, OS_SIGNPOST_INTERVAL_END, v35, "fetchUserActivityQueued", "Fetching handoff payload:%{public}@ err=%{public}d", buf, 0x12u);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __97__UAUserActivityManager_fetchUUID_intervalToWaitForDocumentSynchonization_withCompletionHandler___block_invoke_38(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_ERROR, "Error attempting to get user activity from server: %{public}@", &v8, 0xCu);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  dispatch_group_leave(*(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    dispatch_group_leave(v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __97__UAUserActivityManager_fetchUUID_intervalToWaitForDocumentSynchonization_withCompletionHandler___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 32) UUIDString];
    v18 = 138543875;
    v19 = v8;
    v20 = 2113;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "fetchUUID: for uuid %{public}@, got %{private}@ from server, error=%{public}@", &v18, 0x20u);
  }

  kdebug_trace();
  [*(a1 + 40) setTotalUnitCount:1];
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
    goto LABEL_10;
  }

  v9 = [v5 error];

  if (v9)
  {
    v10 = [v5 error];
LABEL_7:
    v11 = *(*(a1 + 72) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    goto LABEL_10;
  }

  if (!v5)
  {
    v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"UAContinuityErrorDomain" code:-108 userInfo:0];
    goto LABEL_7;
  }

  v13 = [[UAUserActivity alloc] initWithManager:*(a1 + 48) userActivityInfo:v5];
  v14 = *(*(a1 + 80) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  [*(a1 + 40) setCompletedUnitCount:1];
LABEL_10:
  dispatch_group_leave(*(a1 + 56));
  v16 = *(a1 + 64);
  if (v16)
  {
    dispatch_group_leave(v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addUserActivity:(id)activity
{
  v16 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [activityCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v12 = 138543619;
    v13 = uUIDString;
    v14 = 2113;
    v15 = activityCopy;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "(%{public}@, %{private}@)", &v12, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  userActivitiesByUUID = selfCopy->_userActivitiesByUUID;
  uniqueIdentifier2 = [activityCopy uniqueIdentifier];
  [(NSMapTable *)userActivitiesByUUID setObject:activityCopy forKey:uniqueIdentifier2];

  objc_sync_exit(selfCopy);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeUserActivity:(id)activity
{
  activityCopy = activity;
  uniqueIdentifier = [activityCopy uniqueIdentifier];

  if (uniqueIdentifier)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    userActivitiesByUUID = [(UAUserActivityManager *)selfCopy userActivitiesByUUID];
    uniqueIdentifier2 = [activityCopy uniqueIdentifier];
    [userActivitiesByUUID removeObjectForKey:uniqueIdentifier2];

    objc_sync_exit(selfCopy);
  }

  if ([(UAUserActivityManager *)self userActivityIsActive:activityCopy])
  {
    [(UAUserActivityManager *)self makeInactive:activityCopy];
  }

  if ([activityCopy activityHasBeenSentToServer])
  {
    uniqueIdentifier3 = [activityCopy uniqueIdentifier];
    serverQ = [(UAUserActivityManager *)self serverQ];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__UAUserActivityManager_removeUserActivity___block_invoke;
    v12[3] = &unk_2785C4070;
    v12[4] = self;
    v13 = uniqueIdentifier3;
    v11 = uniqueIdentifier3;
    dispatch_async(serverQ, v12);
  }
}

void __44__UAUserActivityManager_removeUserActivity___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) connection];
  v3 = [v2 remoteObjectProxy];

  if (v3)
  {
    v4 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 40) UUIDString];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEBUG, "calling doDeleteUserActivityWithUUID: %{public}@", &v7, 0xCu);
    }

    [v3 doDeleteUserActivityWithUUID:*(a1 + 40)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addDynamicUserActivity:(id)activity matching:(id)matching
{
  activityCopy = activity;
  matchingCopy = matching;
  serverQ = [(UAUserActivityManager *)self serverQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__UAUserActivityManager_addDynamicUserActivity_matching___block_invoke;
  block[3] = &unk_2785C4338;
  block[4] = self;
  v12 = activityCopy;
  v13 = matchingCopy;
  v9 = matchingCopy;
  v10 = activityCopy;
  dispatch_async(serverQ, block);
}

void __57__UAUserActivityManager_addDynamicUserActivity_matching___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) connection];
  v3 = [v2 remoteObjectProxy];

  if (v3)
  {
    v4 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 138478083;
      v9 = v5;
      v10 = 2113;
      v11 = v6;
      _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEBUG, "calling doAddDynamicUserActivity: %{private}@ matching: %{private}@", &v8, 0x16u);
    }

    [v3 doAddDynamicUserActivity:*(a1 + 40) matching:*(a1 + 48)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeDynamicUserActivity:(id)activity matching:(id)matching
{
  activityCopy = activity;
  matchingCopy = matching;
  serverQ = [(UAUserActivityManager *)self serverQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__UAUserActivityManager_removeDynamicUserActivity_matching___block_invoke;
  block[3] = &unk_2785C4338;
  block[4] = self;
  v12 = activityCopy;
  v13 = matchingCopy;
  v9 = matchingCopy;
  v10 = activityCopy;
  dispatch_async(serverQ, block);
}

void __60__UAUserActivityManager_removeDynamicUserActivity_matching___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) connection];
  v3 = [v2 remoteObjectProxy];

  if (v3)
  {
    v4 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 138478083;
      v9 = v5;
      v10 = 2113;
      v11 = v6;
      _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEBUG, "calling doRemoveDynamicUserActivity: %{private}@ matching: %{private}@", &v8, 0x16u);
    }

    [v3 doRemoveDynamicUserActivity:*(a1 + 40) matching:*(a1 + 48)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)makeActive:(id)active
{
  v59 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  if (activeCopy)
  {
    activeUserActivitiesByUUID = [(UAUserActivityManager *)selfCopy activeUserActivitiesByUUID];
    uniqueIdentifier = [activeCopy uniqueIdentifier];
    [activeUserActivitiesByUUID setObject:activeCopy forKey:uniqueIdentifier];
  }

  activeUserActivityUUID = [(UAUserActivityManager *)selfCopy activeUserActivityUUID];
  v10 = activeUserActivityUUID;
  v41 = activeUserActivityUUID;
  if ((activeCopy == 0) == (activeUserActivityUUID != 0))
  {
    if (!activeUserActivityUUID)
    {
      goto LABEL_11;
    }
  }

  else
  {
    uniqueIdentifier2 = [activeCopy uniqueIdentifier];
    v12 = [v10 isEqual:uniqueIdentifier2];

    if (!v10 || ((v12 ^ 1) & 1) == 0)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_10:
      v17 = 0;
      goto LABEL_35;
    }
  }

  userActivitiesByUUID = [(UAUserActivityManager *)obj userActivitiesByUUID];
  v14 = [userActivitiesByUUID objectForKey:v10];

  priority = [activeCopy priority];
  priority2 = [v14 priority];

  if (priority > priority2)
  {
    goto LABEL_10;
  }

LABEL_11:
  activeUserActivitiesByUUID = obj->_activeUserActivitiesByUUID;
  activeUserActivityUUID2 = [(UAUserActivityManager *)obj activeUserActivityUUID];
  v20 = [(NSMapTable *)activeUserActivitiesByUUID objectForKey:activeUserActivityUUID2];

  if (v20)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v21 = +[UAUserActivity observers];
    v22 = [v21 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v22)
    {
      v23 = *v50;
      do
      {
        v24 = 0;
        uniqueIdentifier6 = sel_userActivityWillBecomeCurrent_current_;
        do
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v49 + 1) + 8 * v24);
          if (objc_opt_respondsToSelector())
          {
            parentUserActivity = [v20 parentUserActivity];
            [v25 userActivityWillBecomeCurrent:parentUserActivity current:0];
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [v21 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v22);
    }
  }

  uniqueIdentifier3 = [activeCopy uniqueIdentifier];
  [(UAUserActivityManager *)obj setActiveUserActivityUUID:uniqueIdentifier3];

  uniqueIdentifier4 = [activeCopy uniqueIdentifier];

  if (activeCopy)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = +[UAUserActivity observers];
    v29 = [v28 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v29)
    {
      v30 = *v46;
      do
      {
        v31 = 0;
        uniqueIdentifier6 = sel_userActivityWillBecomeCurrent_current_;
        do
        {
          if (*v46 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v45 + 1) + 8 * v31);
          if (objc_opt_respondsToSelector())
          {
            parentUserActivity2 = [activeCopy parentUserActivity];
            [v32 userActivityWillBecomeCurrent:parentUserActivity2 current:1];
          }

          ++v31;
        }

        while (v29 != v31);
        v29 = [v28 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v29);
    }
  }

  else
  {
    [(UAUserActivityManager *)obj unregisterForApplicationDeactivation];
  }

  v17 = 1;
  v41 = uniqueIdentifier4;
LABEL_35:
  objc_sync_exit(obj);

  v34 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier5 = [activeCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier5 UUIDString];
    v37 = &stru_283A5A2C8;
    if (v41)
    {
      uniqueIdentifier6 = [activeCopy uniqueIdentifier];
      if ([uniqueIdentifier6 isEqual:v41])
      {
        v37 = @" (already active)";
      }
    }

    *buf = 138543618;
    v54 = uUIDString;
    v55 = 2114;
    v56 = v37;
    _os_log_impl(&dword_226A4E000, v34, OS_LOG_TYPE_DEBUG, "makeActive, userActivity=%{public}@%{public}@", buf, 0x16u);
    if (v41)
    {
    }
  }

  if (v17)
  {
    [activeCopy setDirty:1];
    serverQ = [(UAUserActivityManager *)obj serverQ];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__UAUserActivityManager_makeActive___block_invoke;
    block[3] = &unk_2785C4070;
    block[4] = obj;
    v44 = v41;
    dispatch_async(serverQ, block);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __36__UAUserActivityManager_makeActive___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) connection];
  v3 = [v2 remoteObjectProxy];

  v4 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 40) UUIDString];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEBUG, "calling doUpdateUserActivityWithUUID:%{public}@ setActive: YES", &v7, 0xCu);
  }

  [v3 doUpdateUserActivityWithUUID:*(a1 + 40) setActive:1];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)makeInactive:(id)inactive
{
  inactiveCopy = inactive;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeUserActivityUUID = [(UAUserActivityManager *)selfCopy activeUserActivityUUID];
  if (inactiveCopy)
  {
    activeUserActivitiesByUUID = [(UAUserActivityManager *)selfCopy activeUserActivitiesByUUID];
    uniqueIdentifier = [inactiveCopy uniqueIdentifier];
    [activeUserActivitiesByUUID removeObjectForKey:uniqueIdentifier];
  }

  uniqueIdentifier2 = [inactiveCopy uniqueIdentifier];
  v9 = [activeUserActivityUUID isEqual:uniqueIdentifier2];

  if (v9)
  {
    [(UAUserActivityManager *)selfCopy setActiveUserActivityUUID:0];
    activeActivitiesByPriority = [(UAUserActivityManager *)selfCopy activeActivitiesByPriority];
    firstObject = [activeActivitiesByPriority firstObject];
    [(UAUserActivityManager *)selfCopy makeActive:firstObject];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)userActivityIsActive:(id)active
{
  activeCopy = active;
  activeUserActivityUUID = [(UAUserActivityManager *)self activeUserActivityUUID];
  v6 = activeUserActivityUUID;
  v7 = 0;
  if (activeCopy && activeUserActivityUUID)
  {
    uniqueIdentifier = [activeCopy uniqueIdentifier];
    v7 = [v6 isEqual:uniqueIdentifier];
  }

  return v7;
}

- (id)userActivityForUUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userActivitiesByUUID = [(UAUserActivityManager *)selfCopy userActivitiesByUUID];
  v7 = [userActivitiesByUUID objectForKey:dCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

uint64_t __51__UAUserActivityManager_activeActivitiesByPriority__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "priority")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 priority];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)askClientUserActivityToSave:(id)save
{
  v11 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [saveCopy UUIDString];
    v9 = 138543362;
    v10 = uUIDString;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "uuid=%{public}@", &v9, 0xCu);
  }

  v7 = [(UAUserActivityManager *)self userActivityForUUID:saveCopy];
  if (v7)
  {
    [v7 sendUserActivityInfoToLSUserActivityd:0 onAsyncQueue:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)askClientUserActivityToSave:(id)save completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  handlerCopy = handler;
  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    uUIDString = [saveCopy UUIDString];
    *buf = 138543362;
    v36 = uUIDString;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_INFO, "askClientUserActivityToSave: uuid=%{public}@", buf, 0xCu);
  }

  v10 = [(UAUserActivityManager *)self userActivityForUUID:saveCopy];
  v11 = v10;
  if (!v10)
  {
    v17 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      uUIDString2 = [saveCopy UUIDString];
      *buf = 138543362;
      v36 = uUIDString2;
      _os_log_impl(&dword_226A4E000, v17, OS_LOG_TYPE_ERROR, "askClientUserActivityToSave:%{public}@ on activity, which does not seem to exist.", buf, 0xCu);
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = -108;
    goto LABEL_11;
  }

  if ([v10 isInvalidated])
  {
    v12 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      uUIDString3 = [saveCopy UUIDString];
      typeIdentifier = [v11 typeIdentifier];
      *buf = 138543618;
      v36 = uUIDString3;
      v37 = 2114;
      v38 = typeIdentifier;
      _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_ERROR, "askClientUserActivityToSave:%{public}@ %{public}@ on activity which has been invalidated.", buf, 0x16u);
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = -130;
LABEL_11:
    v19 = [v15 errorWithDomain:@"UAContinuityErrorDomain" code:v16 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v19);
    goto LABEL_17;
  }

  parentUserActivity = [v11 parentUserActivity];
  if (parentUserActivity && (v21 = parentUserActivity, [v11 parentUserActivity], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "_supportsSynchronizeActivityWithTimeout"), v22, v21, v23))
  {
    manager = [v11 manager];
    activeUserActivityUUID = [manager activeUserActivityUUID];
    if (activeUserActivityUUID)
    {
      manager2 = [v11 manager];
      activeUserActivityUUID2 = [manager2 activeUserActivityUUID];
      uniqueIdentifier = [v11 uniqueIdentifier];
      v29 = [activeUserActivityUUID2 isEqual:uniqueIdentifier];
    }

    else
    {
      v29 = 0;
    }

    parentUserActivity2 = [v11 parentUserActivity];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __71__UAUserActivityManager_askClientUserActivityToSave_completionHandler___block_invoke;
    v32[3] = &unk_2785C4380;
    v33 = saveCopy;
    v34 = handlerCopy;
    [parentUserActivity2 doSaveUserActivityWithTimeout:v29 isCurrent:v32 withCompletionHandler:3.0];

    v19 = v33;
  }

  else
  {
    v19 = [v11 callWillSaveDelegateIfDirtyAndPackageUpData:1 options:0 clearDirty:1];
    (*(handlerCopy + 2))(handlerCopy, v19, [v11 dirty] ^ 1, 0);
  }

LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
}

void __71__UAUserActivityManager_askClientUserActivityToSave_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) UUIDString];
      v17 = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_ERROR, "Failed asking parentUserActivity to doSaveUserActivityWithTimeout:, activity=%{public}@ error=%{public}@", &v17, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else if (v5)
  {
    v9 = [v5 _internalUserActivity];
    v10 = [v9 userActivityInfoForSelfWithPayload:1 options:0];

    v11 = *(a1 + 40);
    v12 = [v5 _internalUserActivity];
    v13 = [v12 dirty];
    v14 = v13;
    if (v10)
    {
      (*(v11 + 16))(v11, v10, v13 ^ 1u, 0);
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-136 userInfo:0];
      (*(v11 + 16))(v11, 0, v14 ^ 1u, v15);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)tellClientUserActivityItWasResumed:(id)resumed
{
  v12 = *MEMORY[0x277D85DE8];
  resumedCopy = resumed;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [resumedCopy UUIDString];
    v10 = 138543362;
    v11 = uUIDString;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "uuid=%{public}@", &v10, 0xCu);
  }

  v7 = [(UAUserActivityManager *)self userActivityForUUID:resumedCopy];
  v8 = v7;
  if (v7)
  {
    [v7 didSynchronizeUserActivity];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)tellClientDebuggingEnabled:(BOOL)enabled logFileHandle:(id)handle
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v6 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109635;
    v8[1] = enabledCopy;
    v9 = 2113;
    v10 = handleCopy;
    v11 = 1024;
    fileDescriptor = [handleCopy fileDescriptor];
    _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_DEBUG, "Received debug update from server: %d %{private}@(%d)", v8, 0x18u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveInputStreamWithUUID:(id)d inputStream:(id)stream outputStream:(id)outputStream
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  streamCopy = stream;
  outputStreamCopy = outputStream;
  v11 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [dCopy UUIDString];
    v16 = 138543362;
    v17 = uUIDString;
    _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_DEBUG, "uuid=%{public}@", &v16, 0xCu);
  }

  v13 = [(UAUserActivityManager *)self userActivityForUUID:dCopy];
  v14 = v13;
  if (v13)
  {
    [v13 didReceiveInputStream:streamCopy outputStream:outputStreamCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)encodeUserActivity:(id)activity options:(id)options
{
  optionsCopy = options;
  activityCopy = activity;
  v7 = objc_alloc_init(UAUserActivityInfo);
  uniqueIdentifier = [activityCopy uniqueIdentifier];
  [(UAUserActivityInfo *)v7 setUuid:uniqueIdentifier];

  date = [MEMORY[0x277CBEAA8] date];
  [(UAUserActivityInfo *)v7 setWhen:date];

  -[UAUserActivityInfo setType:](v7, "setType:", [activityCopy suggestedActionType]);
  options = [activityCopy options];
  [(UAUserActivityInfo *)v7 setOptions:options];

  title = [activityCopy title];
  [(UAUserActivityInfo *)v7 setTitle:title];

  typeIdentifier = [activityCopy typeIdentifier];
  [(UAUserActivityInfo *)v7 setActivityType:typeIdentifier];

  dynamicIdentifier = [activityCopy dynamicIdentifier];
  [(UAUserActivityInfo *)v7 setDynamicActivityType:dynamicIdentifier];

  webpageURL = [activityCopy webpageURL];
  [(UAUserActivityInfo *)v7 setWebpageURL:webpageURL];

  referrerURL = [activityCopy referrerURL];
  [(UAUserActivityInfo *)v7 setReferrerURL:referrerURL];

  userInfo = [activityCopy userInfo];
  v17 = [activityCopy encodeUserInfo:userInfo options:optionsCopy error:0];

  [(UAUserActivityInfo *)v7 setPayload:v17 identifier:@"UAUserActivityUserInfoPayload"];
  v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];

  return v18;
}

- (id)createByDecodingUserActivity:(id)activity
{
  v3 = MEMORY[0x277CCAAC8];
  activityCopy = activity;
  v5 = [[v3 alloc] initForReadingFromData:activityCopy error:0];

  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  [v5 finishDecoding];

  return v6;
}

- (void)tellDaemonAboutNewLSUserActivity:(id)activity
{
  v20 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [activityCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    *buf = 138543619;
    v17 = uUIDString;
    v18 = 2113;
    v19 = activityCopy;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "Sending initial activity uuid=%{public}@ %{private}@ information to server", buf, 0x16u);
  }

  if ([activityCopy isInvalidated])
  {
    v8 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier2 = [activityCopy uniqueIdentifier];
      uUIDString2 = [uniqueIdentifier2 UUIDString];
      *buf = 138543362;
      v17 = uUIDString2;
      _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_INFO, "Skipping telling server about activity because it has been invalidated, uuid=%{public}@.", buf, 0xCu);
    }
  }

  else
  {
    [(UAUserActivityManager *)self addUserActivity:activityCopy];
    serverQ = [(UAUserActivityManager *)self serverQ];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__UAUserActivityManager_tellDaemonAboutNewLSUserActivity___block_invoke;
    v13[3] = &unk_2785C4070;
    v14 = activityCopy;
    selfCopy = self;
    dispatch_async(serverQ, v13);

    v8 = v14;
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __58__UAUserActivityManager_tellDaemonAboutNewLSUserActivity___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isInvalidated])
  {
    v2 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) uniqueIdentifier];
      v4 = [v3 UUIDString];
      *buf = 138543362;
      v22 = v4;
      _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "Skipping telling server about activity because it was invalidated, uuid=%{public}@.", buf, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  v5 = [*(a1 + 40) userActivityUUIDsSendToServer];
  v6 = [*(a1 + 32) uniqueIdentifier];
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [*(a1 + 40) connection];
    v2 = [v8 remoteObjectProxy];

    v9 = [*(a1 + 32) userActivityInfoForSelfWithPayload:0 options:0];
    v10 = v9;
    if (v2 && v9)
    {
      v11 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_DEBUG, "--- calling doUpdateUserActivityInfo on serverQ", buf, 2u);
      }

      v12 = [*(a1 + 32) uniqueIdentifier];
      v13 = [*(a1 + 40) activeUserActivityUUID];
      v14 = [v12 isEqual:v13];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __58__UAUserActivityManager_tellDaemonAboutNewLSUserActivity___block_invoke_60;
      v18[3] = &unk_2785C43A8;
      v19 = v10;
      v17 = *(a1 + 32);
      v15 = v17.i64[0];
      v20 = vextq_s8(v17, v17, 8uLL);
      [v2 doUpdateUserActivityInfo:v19 makeCurrent:v14 completionHandler:v18];
    }

    goto LABEL_11;
  }

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
}

void __58__UAUserActivityManager_tellDaemonAboutNewLSUserActivity___block_invoke_60(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) uuid];
      v6 = [v5 UUIDString];
      v7 = [*(a1 + 32) activityType];
      *buf = 138543875;
      v14 = v6;
      v15 = 2113;
      v16 = v7;
      v17 = 2114;
      v18 = v3;
      _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_ERROR, "*** Unexpected error from doUpdateUserActivityInfo for activity %{public}@/%{private}@, error=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v8 = [*(a1 + 40) serverQ];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__UAUserActivityManager_tellDaemonAboutNewLSUserActivity___block_invoke_61;
    v11[3] = &unk_2785C4070;
    v9 = *(a1 + 48);
    v11[4] = *(a1 + 40);
    v12 = v9;
    dispatch_async(v8, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __58__UAUserActivityManager_tellDaemonAboutNewLSUserActivity___block_invoke_61(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) uniqueIdentifier];
  [v2 addObject:v3];

  objc_sync_exit(obj);
}

- (void)sendUserActivityInfoToLSUserActivityd:(id)activityd makeCurrent:(BOOL)current
{
  currentCopy = current;
  v22 = *MEMORY[0x277D85DE8];
  activitydCopy = activityd;
  v7 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    uuid = [activitydCopy uuid];
    uUIDString = [uuid UUIDString];
    v10 = uUIDString;
    v11 = @"NO";
    if (currentCopy)
    {
      v11 = @"YES";
    }

    *buf = 138543618;
    v19 = uUIDString;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_DEBUG, "Sending updated activity %{public}@ information to server, makeCurrent=%{public}@", buf, 0x16u);
  }

  if (activitydCopy)
  {
    uuid2 = [activitydCopy uuid];

    if (uuid2)
    {
      serverQ = [(UAUserActivityManager *)self serverQ];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75__UAUserActivityManager_sendUserActivityInfoToLSUserActivityd_makeCurrent___block_invoke;
      block[3] = &unk_2785C43F8;
      block[4] = self;
      v16 = activitydCopy;
      v17 = currentCopy;
      dispatch_async(serverQ, block);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __75__UAUserActivityManager_sendUserActivityInfoToLSUserActivityd_makeCurrent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3 = [v2 remoteObjectProxy];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __75__UAUserActivityManager_sendUserActivityInfoToLSUserActivityd_makeCurrent___block_invoke_2;
    v6[3] = &unk_2785C43D0;
    v7 = v4;
    [v3 doUpdateUserActivityInfo:v7 makeCurrent:v5 completionHandler:v6];
  }
}

void __75__UAUserActivityManager_sendUserActivityInfoToLSUserActivityd_makeCurrent___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 32) uuid];
      v6 = [v5 UUIDString];
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEBUG, "Got error, from doUpdateUserActivityInfo to server, for %{public}@, error: %{public}@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)markUserActivityAsDirty:(id)dirty forceImmediate:(BOOL)immediate
{
  LODWORD(selfCopy) = immediate;
  v46 = *MEMORY[0x277D85DE8];
  dirtyCopy = dirty;
  v7 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [dirtyCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    if (selfCopy)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if ([dirtyCopy isInvalidated])
    {
      v10 = @" (invalidated)";
    }

    else
    {
      v10 = &stru_283A5A2C8;
    }

    v11 = selfCopy;
    selfCopy = self;
    if ([dirtyCopy userInfoContainsFileURLs])
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    *buf = 138544643;
    if ([dirtyCopy encodedContainsUnsynchronizedCloudDocument])
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v35 = uUIDString;
    v36 = 2113;
    v37 = dirtyCopy;
    v38 = 2114;
    v39 = v9;
    v40 = 2114;
    v41 = v10;
    v42 = 2082;
    v43 = v12;
    self = selfCopy;
    LOBYTE(selfCopy) = v11;
    v44 = 2082;
    v45 = v13;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_DEBUG, "userActivity=%{public}@/%{private}@ forceImmediate=%{public}@%{public}@ iCloud=%{public}s/%{public}s", buf, 0x3Eu);
  }

  if (dirtyCopy && ([dirtyCopy isInvalidated] & 1) == 0)
  {
    uniqueIdentifier2 = [dirtyCopy uniqueIdentifier];
    v15 = [uniqueIdentifier2 copy];

    webpageURL = [dirtyCopy webpageURL];
    v17 = [webpageURL copy];

    expirationDate = [dirtyCopy expirationDate];
    v19 = [expirationDate copy];

    LOBYTE(expirationDate) = [dirtyCopy userInfoContainsFileURLs];
    encodedContainsUnsynchronizedCloudDocument = [dirtyCopy encodedContainsUnsynchronizedCloudDocument];
    serverQ = [(UAUserActivityManager *)self serverQ];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__UAUserActivityManager_markUserActivityAsDirty_forceImmediate___block_invoke;
    block[3] = &unk_2785C4420;
    block[4] = self;
    v28 = v15;
    v31 = selfCopy;
    v29 = v17;
    v30 = v19;
    v32 = expirationDate;
    v33 = encodedContainsUnsynchronizedCloudDocument;
    v22 = v19;
    v23 = v17;
    v24 = v15;
    dispatch_async(serverQ, block);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __64__UAUserActivityManager_markUserActivityAsDirty_forceImmediate___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) connection];
  v3 = [v2 remoteObjectProxy];

  if (v3)
  {
    v4 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 40) UUIDString];
      if (*(a1 + 64))
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = [*(a1 + 48) absoluteString];
      v8 = @" webPageURL=<private>";
      v9 = *(a1 + 56);
      v10 = *(a1 + 65);
      v11 = *(a1 + 66);
      if (!v7)
      {
        v8 = &stru_283A5A2C8;
      }

      v15 = 138544642;
      v12 = "NO";
      v16 = v5;
      v18 = v6;
      if (v10)
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      v17 = 2114;
      if (v11)
      {
        v12 = "YES";
      }

      v19 = 2114;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 2082;
      v24 = v13;
      v25 = 2082;
      v26 = v12;
      _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEBUG, "calling doMarkUserActivityAsDirty:%{public}@ forceImmediate:%{public}@ %{public}@ expiration=%{public}@ iCloud=%{public}s/%{public}s", &v15, 0x3Eu);
    }

    [v3 doMarkUserActivityAsDirty:*(a1 + 40) forceImmediate:*(a1 + 64) webpageURL:*(a1 + 48) expiration:*(a1 + 56) hasiCloudDocument:*(a1 + 65) hasUnsynchronizediCloudDoc:*(a1 + 66)];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)currentUserActivityUUIDWithOptions:(id)options completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v9 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    if (optionsCopy)
    {
      v4 = [optionsCopy description];
      v10 = stringRemovingNewlines(v4);
    }

    else
    {
      v10 = @"-";
    }

    *buf = 138543362;
    v18 = v10;
    _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_DEBUG, "options=%{public}@ ", buf, 0xCu);
    if (optionsCopy)
    {
    }
  }

  serverQ = [(UAUserActivityManager *)self serverQ];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__UAUserActivityManager_currentUserActivityUUIDWithOptions_completionHandler___block_invoke;
  v15[3] = &unk_2785C4470;
  v15[4] = self;
  v16 = handlerCopy;
  v12 = handlerCopy;
  dispatch_async(serverQ, v15);

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

void __78__UAUserActivityManager_currentUserActivityUUIDWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__UAUserActivityManager_currentUserActivityUUIDWithOptions_completionHandler___block_invoke_2;
  v10[3] = &unk_2785C3E70;
  v11 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v10];

  if (v3)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__UAUserActivityManager_currentUserActivityUUIDWithOptions_completionHandler___block_invoke_77;
    v8[3] = &unk_2785C4448;
    v9 = *(a1 + 40);
    [v3 doGetCurrentUserActivityInfo:v8];
    v4 = v9;
  }

  else
  {
    v5 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "proxy == nil", v7, 2u);
    }

    v6 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-113 userInfo:0];
    (*(v6 + 16))(v6, 0, 0, 0, 0, v4);
  }
}

void __78__UAUserActivityManager_currentUserActivityUUIDWithOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_ERROR, "XPC Error for Pin Activity Info: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

void __78__UAUserActivityManager_currentUserActivityUUIDWithOptions_completionHandler___block_invoke_77(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v13 = a5;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = @"-";
    v22 = a1;
    if (v12)
    {
      v19 = [v12 UUIDString];
    }

    else
    {
      v19 = @"-";
    }

    if (v13)
    {
      v20 = v13;
    }

    else
    {
      v20 = @"-";
    }

    if (v14)
    {
      v6 = [v14 description];
      v18 = stringRemovingNewlines(v6);
    }

    *buf = 138543875;
    v24 = v19;
    v25 = 2113;
    v26 = v20;
    v27 = 2114;
    v28 = v18;
    _os_log_impl(&dword_226A4E000, v17, OS_LOG_TYPE_DEBUG, "activityUUID=%{public}@ bundleID=%{private}@ error=%{public}@", buf, 0x20u);
    if (v14)
    {
    }

    a1 = v22;
    if (v12)
    {
    }
  }

  (*(*(a1 + 32) + 16))();
  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)currentUserActivityProxiesWithOptions:(id)options predicate:(id)predicate completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  predicateCopy = predicate;
  handlerCopy = handler;
  v12 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (optionsCopy)
    {
      v5 = [optionsCopy description];
      v13 = stringRemovingNewlines(v5);
    }

    else
    {
      v13 = @"-";
    }

    *buf = 138543618;
    v23 = v13;
    v24 = 2114;
    v25 = predicateCopy;
    _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_DEBUG, "options=%{public}@ predicate=%{public}@", buf, 0x16u);
    if (optionsCopy)
    {
    }
  }

  serverQ = [(UAUserActivityManager *)self serverQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__UAUserActivityManager_currentUserActivityProxiesWithOptions_predicate_completionHandler___block_invoke;
  block[3] = &unk_2785C44C0;
  v20 = optionsCopy;
  v21 = handlerCopy;
  block[4] = self;
  v15 = optionsCopy;
  v16 = handlerCopy;
  dispatch_async(serverQ, block);

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

void __91__UAUserActivityManager_currentUserActivityProxiesWithOptions_predicate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__UAUserActivityManager_currentUserActivityProxiesWithOptions_predicate_completionHandler___block_invoke_2;
  v11[3] = &unk_2785C3E70;
  v12 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v11];

  if (v3)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __91__UAUserActivityManager_currentUserActivityProxiesWithOptions_predicate_completionHandler___block_invoke_79;
    v9[3] = &unk_2785C4498;
    v4 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v3 doGetUserActivityProxiesWithOptions:v4 completionHandler:v9];
    v5 = v10;
  }

  else
  {
    v6 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_DEBUG, "proxy == nil", v8, 2u);
    }

    v7 = *(a1 + 48);
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-113 userInfo:0];
    (*(v7 + 16))(v7, 0, v5);
  }
}

void __91__UAUserActivityManager_currentUserActivityProxiesWithOptions_predicate_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_ERROR, "XPC Error for currentUserActivityProxiesWithOptions: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

void __91__UAUserActivityManager_currentUserActivityProxiesWithOptions_predicate_completionHandler___block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v5 description];
    v9 = stringRemovingNewlines(v8);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_DEBUG, "proxies=%{public}@ error=%{public}@", &v11, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)determineIfUserActivityIsCurrent:(id)current completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  currentCopy = current;
  handlerCopy = handler;
  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [currentCopy UUIDString];
    *buf = 138412290;
    v19 = uUIDString;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "uuid=%@", buf, 0xCu);
  }

  serverQ = [(UAUserActivityManager *)self serverQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__UAUserActivityManager_determineIfUserActivityIsCurrent_completionHandler___block_invoke;
  block[3] = &unk_2785C44C0;
  v16 = currentCopy;
  v17 = handlerCopy;
  block[4] = self;
  v11 = currentCopy;
  v12 = handlerCopy;
  dispatch_async(serverQ, block);

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

void __76__UAUserActivityManager_determineIfUserActivityIsCurrent_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__UAUserActivityManager_determineIfUserActivityIsCurrent_completionHandler___block_invoke_2;
  v11[3] = &unk_2785C3E70;
  v12 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v11];

  if (v3)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __76__UAUserActivityManager_determineIfUserActivityIsCurrent_completionHandler___block_invoke_81;
    v9[3] = &unk_2785C44E8;
    v4 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v3 doDetermineIfUserActivityIsCurrent:v4 completionHandler:v9];
    v5 = v10;
  }

  else
  {
    v6 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_DEBUG, "proxy == nil", v8, 2u);
    }

    v7 = *(a1 + 48);
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-113 userInfo:0];
    (*(v7 + 16))(v7, 0, 0, 0, 0, v5);
  }
}

void __76__UAUserActivityManager_determineIfUserActivityIsCurrent_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_ERROR, "XPC Error for Pin Activity Info: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)pinUserActivity:(id)activity withCompletionHandler:(id)handler
{
  activityCopy = activity;
  handlerCopy = handler;
  serverQ = [(UAUserActivityManager *)self serverQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__UAUserActivityManager_pinUserActivity_withCompletionHandler___block_invoke;
  block[3] = &unk_2785C44C0;
  v12 = activityCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = activityCopy;
  v10 = handlerCopy;
  dispatch_async(serverQ, block);
}

void __63__UAUserActivityManager_pinUserActivity_withCompletionHandler___block_invoke(id *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] connection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__UAUserActivityManager_pinUserActivity_withCompletionHandler___block_invoke_2;
  v11[3] = &unk_2785C3E70;
  v12 = a1[6];
  v3 = [v2 remoteObjectProxyWithErrorHandler:v11];

  v4 = [a1[5] callWillSaveDelegateIfDirtyAndPackageUpData:1 options:0 clearDirty:1];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v5 uuid];
      v9 = [v8 UUIDString];
      *buf = 138543619;
      v14 = v9;
      v15 = 2113;
      v16 = v5;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_DEBUG, "Sending Info to pin: %{public}@/%{private}@", buf, 0x16u);
    }

    [v3 doPinUserActivityInfo:v5 completionHandler:a1[6]];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __63__UAUserActivityManager_pinUserActivity_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_ERROR, "XPC Error for Pin Activity Info: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasUserActivityWithUUID:(id)d
{
  if (!d)
  {
    return 0;
  }

  dCopy = d;
  userActivitiesByUUID = [(UAUserActivityManager *)self userActivitiesByUUID];
  v6 = [userActivitiesByUUID objectForKey:dCopy];

  v7 = v6 != 0;
  return v7;
}

- (id)activities
{
  userActivitiesByUUID = [(UAUserActivityManager *)self userActivitiesByUUID];
  objectEnumerator = [userActivitiesByUUID objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  return allObjects;
}

+ (id)_determineMatchingApplicationBundleIdentfierWithOptionsForActivityType:(id)type dynamicType:(id)dynamicType kind:(unint64_t)kind teamIdentifier:(id)identifier
{
  v56 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  dynamicTypeCopy = dynamicType;
  identifierCopy = identifier;
  v12 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138544130;
    v49 = typeCopy;
    v50 = 2114;
    v51 = dynamicTypeCopy;
    v52 = 2048;
    kindCopy = kind;
    v54 = 2114;
    v55 = identifierCopy;
    _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_INFO, "determineMatchingApplicationBundleIdentfierWithOptionsForActivityType:%{public}@/%{public}@ %ld %{public}@", buf, 0x2Au);
  }

  if ([typeCopy isEqual:*MEMORY[0x277CCA850]])
  {
    v13 = applicationProxyForWebBrowserSupportingContinuation();
    v14 = v13;
    if (!v13)
    {
      goto LABEL_7;
    }

    appState = [v13 appState];
    isInstalled = [appState isInstalled];

    if (!isInstalled)
    {
      goto LABEL_7;
    }

    appState2 = [v14 appState];
    isRestricted = [appState2 isRestricted];

    if ((isRestricted & 1) == 0)
    {
      bundleIdentifier = [v14 bundleIdentifier];
    }

    else
    {
LABEL_7:
      bundleIdentifier = 0;
    }
  }

  else
  {
    v20 = *MEMORY[0x277CBECE8];
    v21 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType();
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace applicationsForUserActivityType:v21];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v23 = v46 = 0u;
    v24 = [v23 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v24)
    {
      v25 = v24;
      v40 = defaultWorkspace;
      v41 = v21;
      v42 = dynamicTypeCopy;
      v14 = 0;
      bundleIdentifier = 0;
      v26 = *v44;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          v28 = v14;
          if (*v44 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v14 = *(*(&v43 + 1) + 8 * i);

          appState3 = [v14 appState];
          isPlaceholder = [appState3 isPlaceholder];

          if (isPlaceholder)
          {
            bundleIdentifier2 = [v14 bundleIdentifier];

            bundleIdentifier = bundleIdentifier2;
          }

          else if (v14)
          {
            appState4 = [v14 appState];
            isInstalled2 = [appState4 isInstalled];

            if (isInstalled2)
            {
              appState5 = [v14 appState];
              isRestricted2 = [appState5 isRestricted];

              if ((isRestricted2 & 1) == 0)
              {
                bundleIdentifier3 = [v14 bundleIdentifier];
                v36 = bundleIdentifier;
                bundleIdentifier = bundleIdentifier3;
                goto LABEL_22;
              }
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }

      v36 = v14;
      v14 = 0;
LABEL_22:

      v21 = v41;
      dynamicTypeCopy = v42;
      defaultWorkspace = v40;
    }

    else
    {
      v14 = 0;
      bundleIdentifier = 0;
    }
  }

  v38 = *MEMORY[0x277D85DE8];

  return bundleIdentifier;
}

- (void)sendToIndexerIfAppropriate:(id)appropriate force:(BOOL)force
{
  forceCopy = force;
  v18 = *MEMORY[0x277D85DE8];
  appropriateCopy = appropriate;
  v7 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [appropriateCopy UUIDString];
    v9 = uUIDString;
    v10 = "NO";
    if (forceCopy)
    {
      v10 = "YES";
    }

    v14 = 138543618;
    v15 = uUIDString;
    v16 = 2080;
    v17 = v10;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_DEBUG, "sendToIndexerIfAppropriate(%{public}@,%s)", &v14, 0x16u);
  }

  v11 = [(UAUserActivityManager *)self userActivityForUUID:appropriateCopy];
  v12 = v11;
  if (v11 && [v11 forwardToCoreSpotlightIndexer] && -[UAUserActivityManager userActivityIsActive:](self, "userActivityIsActive:", v12))
  {
    [v12 indexActivity:1 forceIndexing:0.0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendCurrentActivityToIndexer:(id)indexer
{
  v11 = *MEMORY[0x277D85DE8];
  activeUserActivityUUID = [(UAUserActivityManager *)self activeUserActivityUUID];
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    v8 = @"UIApplicationWillResignActiveNotification";
    v9 = 2114;
    v10 = activeUserActivityUUID;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_INFO, "sendCurrentActivityToIndexer, got %{public}@ notification activeUUID=%{public}@", &v7, 0x16u);
  }

  if (activeUserActivityUUID)
  {
    [(UAUserActivityManager *)self sendToIndexerIfAppropriate:activeUserActivityUUID force:1];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerAsProxyForApplication:(int)application options:(id)options completionBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  blockCopy = block;
  v10 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    applicationCopy = application;
    _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_INFO, "doRegisterAsProxyApplicationForPid:%{public}d", buf, 8u);
  }

  serverQ = [(UAUserActivityManager *)self serverQ];
  dispatch_assert_queue_not_V2(serverQ);

  serverQ2 = [(UAUserActivityManager *)self serverQ];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__UAUserActivityManager_registerAsProxyForApplication_options_completionBlock___block_invoke;
  v17[3] = &unk_2785C4530;
  v18 = optionsCopy;
  v19 = blockCopy;
  applicationCopy2 = application;
  v17[4] = self;
  v13 = optionsCopy;
  v14 = blockCopy;
  dispatch_sync(serverQ2, v17);

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

void __79__UAUserActivityManager_registerAsProxyForApplication_options_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __79__UAUserActivityManager_registerAsProxyForApplication_options_completionBlock___block_invoke_2;
  v9 = &unk_2785C3E70;
  v10 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:&v6];

  if (v3)
  {
    v4 = *(a1 + 40);
    LODWORD(v5) = *(a1 + 56);
    [v3 doRegisterAsProxyApplicationForPid:MEMORY[0x277D85DD0] options:3221225472 completionHandler:{__79__UAUserActivityManager_registerAsProxyForApplication_options_completionBlock___block_invoke_95, &__block_descriptor_36_e17_v16__0__NSError_8l, v5, v6, v7, v8, v9}];
  }
}

void __79__UAUserActivityManager_registerAsProxyForApplication_options_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_ERROR, "Error attempting to registerAsProxyForApplication from server: %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

void __79__UAUserActivityManager_registerAsProxyForApplication_options_completionBlock___block_invoke_95(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7[0] = 67240450;
    v7[1] = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_INFO, "doRegisterAsProxyApplicationForPid:%{public}d finished, error=%{public}@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)initialServerHandshake:(BOOL)handshake
{
  v30[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  serverQ = [(UAUserActivityManager *)self serverQ];
  dispatch_assert_queue_V2(serverQ);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = handshake || selfCopy->_needToSendInitialMessage;
  selfCopy->_needToSendInitialMessage = 0;
  allowedToConnect = selfCopy->_allowedToConnect;
  v9 = selfCopy->_connection;
  objc_sync_exit(selfCopy);

  v10 = v26;
  if (allowedToConnect && v9 != 0)
  {
    *(v26 + 24) = 1;
    if (v7)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __57__UAUserActivityManager_Private__initialServerHandshake___block_invoke;
      v24[3] = &unk_2785C4558;
      v24[4] = selfCopy;
      v24[5] = &v25;
      v11 = [(NSXPCConnection *)v9 remoteObjectProxyWithErrorHandler:v24];
      if (v11)
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        if (bundleIdentifier)
        {
          v29 = @"CFBundleIdentifier";
          bundleIdentifier2 = [mainBundle bundleIdentifier];
          v30[0] = bundleIdentifier2;
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
        }

        else
        {
          v15 = 0;
        }

        v16 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_226A4E000, v16, OS_LOG_TYPE_DEBUG, "calling doInitializeWithClientVersion: 1", buf, 2u);
        }

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __57__UAUserActivityManager_Private__initialServerHandshake___block_invoke_265;
        v20[3] = &unk_2785C4580;
        v20[4] = selfCopy;
        v21 = v9;
        v22 = &v25;
        [v11 doInitializeWithClientVersion:1 clientInfo:v15 completionHandler:v20];
      }

      v10 = v26;
    }
  }

  v17 = *(v10 + 24);

  _Block_object_dispose(&v25, 8);
  v18 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void __57__UAUserActivityManager_Private__initialServerHandshake___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_ERROR, "*** Error on connection to useractivityd, err=%{public}@ (possibly useractivityd crashed?)", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  *(*(a1 + 32) + 53) = 1;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  objc_sync_exit(v5);

  v6 = *MEMORY[0x277D85DE8];
}

void __57__UAUserActivityManager_Private__initialServerHandshake___block_invoke_265(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v7 description];
    v11 = stringRemovingNewlines(v10);
    v19 = 134218499;
    v20 = a2;
    v21 = 2113;
    v22 = v11;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_DEBUG, " -- Server response to initialMessage, version=%ld info=%{private}@ error=%{public}@", &v19, 0x20u);
  }

  v12 = *(a1 + 32);
  objc_sync_enter(v12);
  if (v8)
  {
    [*(a1 + 32) setAllowedToConnect:0];
    objc_sync_exit(v12);
  }

  else
  {
    *(*(a1 + 32) + 48) = [*(a1 + 40) processIdentifier];
    objc_sync_exit(v12);

    v13 = [*(a1 + 32) userActivitiesByUUID];
    v14 = [*(a1 + 32) activeUserActivityUUID];
    v12 = [v13 objectForKey:v14];

    if (v12)
    {
      v15 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v12 uniqueIdentifier];
        v17 = [v16 UUIDString];
        v19 = 138543362;
        v20 = v17;
        _os_log_impl(&dword_226A4E000, v15, OS_LOG_TYPE_DEBUG, " -- We had an active user activity, uuid=%{public}@, so sending that to server.", &v19, 0xCu);
      }

      [*(a1 + 32) tellDaemonAboutNewLSUserActivity:v12];
      [*(a1 + 32) markUserActivityAsDirty:v12 forceImmediate:0];
      [*(a1 + 32) makeActive:v12];
      [v12 sendUserActivityInfoToLSUserActivityd:0 onAsyncQueue:0];
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  v18 = *MEMORY[0x277D85DE8];
}

@end