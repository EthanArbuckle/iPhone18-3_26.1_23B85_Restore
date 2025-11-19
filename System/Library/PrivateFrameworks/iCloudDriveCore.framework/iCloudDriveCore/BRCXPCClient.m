@interface BRCXPCClient
- (BOOL)_canCreateAppLibraryWithID:(id)a3 error:(id *)a4;
- (BOOL)_entitlementBooleanValueForKey:(id)a3;
- (BOOL)_hasAccessToAppLibraryID:(id)a3 error:(id *)a4;
- (BOOL)_hasPrivateIPCEntitlementForSelector:(SEL)a3 error:(id *)a4;
- (BOOL)_isAppLibraryProxyEntitled;
- (BOOL)_isAppLibraryProxyWithError:(id *)a3;
- (BOOL)_isAutomationEntitled;
- (BOOL)canAccessPath:(const char *)a3 accessKind:(int64_t)a4;
- (BOOL)canAccessPhysicalURL:(id)a3;
- (BOOL)checkTCCAccess;
- (BOOL)hasPrivateSharingInterfaceEntitlement;
- (BOOL)isFPFSExtension;
- (BRCXPCClient)initWithConnection:(id)a3;
- (BRMangledID)defaultMangledID;
- (NSSet)entitledAppLibraryIDs;
- (NSString)bundleID;
- (NSString)description;
- (NSXPCConnection)connection;
- (char)cloudEnabledStatus;
- (id)_auditedURLFromPath:(id)a3;
- (id)_entitlementValueForKey:(id)a3 ofClass:(Class)a4;
- (id)_setupAppLibrary:(id)a3 error:(id *)a4;
- (id)issueContainerExtensionForURL:(id)a3 error:(id *)a4;
- (void)_auditURL:(id)a3;
- (void)_process:(int)a3 didBecomeForeground:(BOOL)a4;
- (void)_removeAllAppLibraries;
- (void)_setupAppLibraryAndZoneWithID:(id)a3 recreateDocumentsIfNeeded:(BOOL)a4 reply:(id)a5;
- (void)_startMonitoringProcessIfNeeded;
- (void)_startSharingOperationAfterAcceptation:(id)a3 client:(id)a4 item:(id)a5;
- (void)_stopMonitoringProcess;
- (void)_waitForContainerToBeForcedIngestWithContainerID:(id)a3 containerURL:(id)a4 sandboxExtension:(id)a5 bundleVersion:(id)a6 error:(id)a7 reply:(id)a8;
- (void)addAppLibrary:(id)a3;
- (void)addOperation:(id)a3;
- (void)dumpToContext:(id)a3;
- (void)invalidate;
- (void)performBlockWithAnySession:(id)a3;
- (void)process:(int)a3 didBecomeForeground:(BOOL)a4;
- (void)removeAppLibrary:(id)a3;
- (void)setPrivilegesDescriptor:(id)a3;
- (void)setSession:(id)a3;
- (void)setupNonSandboxedAccessForUbiquityContainers:(id)a3 forBundleID:(id)a4;
- (void)wait;
@end

@implementation BRCXPCClient

- (void)invalidate
{
  v24 = *MEMORY[0x277D85DE8];
  obj = self;
  objc_sync_enter(obj);
  if ((*(obj + 32) & 1) == 0)
  {
    *(obj + 32) |= 1u;
    brc_task_tracker_cancel(obj->_tracker);
    v2 = [(BRCXPCClient *)obj session];
    objc_sync_exit(obj);

    memset(v17, 0, sizeof(v17));
    __brc_create_section(0, "[BRCXPCClient invalidate]", 288, 0, v17);
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v19 = v17[0];
      v20 = 2112;
      v21 = obj;
      v22 = 2112;
      v23 = v3;
      _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx invalidating connection with %@%@", buf, 0x20u);
    }

    [(BRCXPCClient *)obj _stopMonitoringProcess];
    [(BRCXPCClient *)obj _removeAllAppLibraries];
    v5 = [v2 notificationManager];
    [v5 pipeDelegateInvalidated:obj];

    v6 = [BRCUserDefaults defaultsForMangledID:0];
    if ([v6 fpfsUploadV2])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(BRCXPCClient *)obj bundleID];
        if ([v7 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"])
        {
        }

        else
        {
          v9 = [(BRCXPCClient *)obj bundleID];
          v10 = [v9 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];

          if (!v10)
          {
LABEL_14:
            [v2 unregisterClient:{obj, obj}];
            [obja[8] cancelAllOperations];
            WeakRetained = objc_loadWeakRetained(obja + 15);
            [WeakRetained invalidate];

            __brc_leave_section(v17);
            v14 = *MEMORY[0x277D85DE8];
            return;
          }
        }

        v11 = [v2 personaIdentifier];
        v6 = [BRCUploadSyncUpRequestsManager defaultManagerWithPersonaIdentifier:v11];

        v12 = [MEMORY[0x277CCABB0] numberWithInt:obj->_clientPid];
        [v6 invalidateRequestsOfClient:v12];
      }
    }

    goto LABEL_14;
  }

  objc_sync_exit(obj);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoringProcess
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCXPCClient _stopMonitoringProcess];
  }

  v5 = +[BRCSystemResourcesManager manager];
  [v5 removeProcessMonitor:self];
}

- (void)_removeAllAppLibraries
{
  foregroundBackgroundHandlingQueue = self->_foregroundBackgroundHandlingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BRCXPCClient__removeAllAppLibraries__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async_and_wait(foregroundBackgroundHandlingQueue, block);
}

uint64_t __38__BRCXPCClient__removeAllAppLibraries__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __38__BRCXPCClient__removeAllAppLibraries__block_invoke_cold_1(a1);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 109))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(v4 + 56);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * v9++) removeForegroundClient:{*(a1 + 32), v12}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    *(*(a1 + 32) + 109) &= ~1u;
    v4 = *(a1 + 32);
  }

  result = [*(v4 + 56) removeAllObjects];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isFPFSExtension
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(BRCClientPrivilegesDescriptor *)v2->_clientPriviledgesDescriptor isFPFSExtension];
  objc_sync_exit(v2);

  return v3;
}

- (NSString)bundleID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(BRCClientPrivilegesDescriptor *)v2->_clientPriviledgesDescriptor applicationIdentifier];
  objc_sync_exit(v2);

  return v3;
}

- (NSString)description
{
  v3 = [(BRCXPCClient *)self session];

  if (v3)
  {
    v4 = &stru_2837504F0;
  }

  else
  {
    v4 = @" (Logged out)";
  }

  v5 = self;
  objc_sync_enter(v5);
  v6 = MEMORY[0x277CCACA8];
  v7 = [(BRCClientPrivilegesDescriptor *)v5->_clientPriviledgesDescriptor description];
  v8 = [v7 fp_obfuscatedDotSeparatedComponents];
  v9 = [v6 stringWithFormat:@"%@%@", v8, v4];

  objc_sync_exit(v5);

  return v9;
}

- (BOOL)_isAppLibraryProxyEntitled
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(BRCClientPrivilegesDescriptor *)v2->_clientPriviledgesDescriptor isProxyEntitled];
  objc_sync_exit(v2);

  return v3;
}

- (void)setPrivilegesDescriptor:(id)a3
{
  objc_storeStrong(&self->_clientPriviledgesDescriptor, a3);
  v5 = a3;
  clientPriviledgesDescriptor = self->_clientPriviledgesDescriptor;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained setUserInfo:clientPriviledgesDescriptor];
}

- (void)setSession:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if ((*(v6 + 32) & 1) == 0)
  {
    p_session = &v6->__session;
    session = v6->__session;
    if (session != v5)
    {
      [(BRCAccountSession *)session unregisterClient:v6];
      if (!v5)
      {
        v10 = brc_bread_crumbs();
        v11 = brc_default_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [BRCXPCClient setSession:];
        }
      }

      objc_storeStrong(&v6->__session, a3);
      if (![(BRCAccountSession *)v6->__session registerClient:v6])
      {
        v9 = *p_session;
        *p_session = 0;
      }
    }
  }

  objc_sync_exit(v6);
}

- (BRCXPCClient)initWithConnection:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BRCXPCClient;
  v5 = [(BRCXPCClient *)&v24 init];
  if (v5)
  {
    if (initWithConnection__onceToken != -1)
    {
      [BRCXPCClient initWithConnection:];
    }

    v6 = brc_task_tracker_create("XPC Client task tracker");
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    objc_storeWeak(v5 + 15, v4);
    *(v5 + 18) = [v4 processIdentifier];
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    *(v5 + 76) = v22;
    *(v5 + 92) = v23;
    v8 = objc_alloc_init(MEMORY[0x277CCA940]);
    v9 = *(v5 + 7);
    *(v5 + 7) = v8;

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"xpc-client-queue-%d", *(v5 + 18)];
    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v13 = initWithConnection__xpcWorkloop;
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(v12, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create_with_target_V2(v11, v14, v13);

    v16 = *(v5 + 2);
    *(v5 + 2) = v15;

    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(v17, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("foreground-background-handling", v18);

    v20 = *(v5 + 6);
    *(v5 + 6) = v19;
  }

  return v5;
}

uint64_t __35__BRCXPCClient_initWithConnection___block_invoke()
{
  initWithConnection__xpcWorkloop = dispatch_workloop_create("xpc-client-workloop");

  return MEMORY[0x2821F96F8]();
}

- (void)wait
{
  brc_task_tracker_wait(self->_tracker);
  operationQueue = self->_operationQueue;

  [(NSOperationQueue *)operationQueue waitUntilAllOperationsAreFinished];
}

- (void)dumpToContext:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v5 writeLineWithFormat:@" o %@", v4];
  objc_sync_exit(v4);
}

- (void)addOperation:(id)a3
{
  v12 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (*(v4 + 32))
  {
    [v12 cancel];
  }

  operationQueue = v4->_operationQueue;
  if (!operationQueue)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v7 = v4->_operationQueue;
    v4->_operationQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(v8, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("misc-operations", v9);

    [(NSOperationQueue *)v4->_operationQueue setUnderlyingQueue:v10];
    operationQueue = v4->_operationQueue;
  }

  [(NSOperationQueue *)operationQueue addOperation:v12];
  objc_sync_exit(v4);

  v11 = [(BRCXPCClient *)v4 session];
  [v11 addMiscOperation:v12];
}

- (void)_process:(int)a3 didBecomeForeground:(BOOL)a4
{
  foregroundBackgroundHandlingQueue = self->_foregroundBackgroundHandlingQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__BRCXPCClient__process_didBecomeForeground___block_invoke;
  v5[3] = &unk_278500EE0;
  v5[4] = self;
  v6 = a4;
  dispatch_async_and_wait(foregroundBackgroundHandlingQueue, v5);
}

void __45__BRCXPCClient__process_didBecomeForeground___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if ((*(*(a1 + 32) + 109) & 1) == *(a1 + 40))
  {
    v3 = 0;
  }

  else
  {
    if (*(a1 + 40))
    {
      v4 = brc_bread_crumbs();
      v5 = brc_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __45__BRCXPCClient__process_didBecomeForeground___block_invoke_cold_2(v2);
      }
    }

    else
    {
      v4 = brc_bread_crumbs();
      v5 = brc_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __45__BRCXPCClient__process_didBecomeForeground___block_invoke_cold_1(v2);
      }
    }

    v3 = [*(*(a1 + 32) + 56) copy];
    *(*(a1 + 32) + 109) = *(*(a1 + 32) + 109) & 0xFE | *(a1 + 40);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        v12 = *(a1 + 32);
        if (*(a1 + 40) == 1)
        {
          [v11 addForegroundClient:v12];
        }

        else
        {
          [v11 removeForegroundClient:{v12, v14}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)process:(int)a3 didBecomeForeground:(BOOL)a4
{
  v4 = [(BRCXPCClient *)self session];
  v5 = [v4 personaIdentifier];
  BRPerformWithPersonaAndError();
}

void __44__BRCXPCClient_process_didBecomeForeground___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __44__BRCXPCClient_process_didBecomeForeground___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 44);
    v7 = *(a1 + 32);

    [v7 _process:v5 didBecomeForeground:v6];
  }
}

- (void)_startMonitoringProcessIfNeeded
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCXPCClient _startMonitoringProcessIfNeeded];
  }

  if ([(BRCXPCClient *)self _isAutomationEntitled])
  {
    [(BRCXPCClient *)self process:self->_clientPid didBecomeForeground:1];
  }

  else
  {
    v5 = +[BRCSystemResourcesManager manager];
    [v5 addProcessMonitor:self forProcessID:self->_clientPid];
  }
}

- (BOOL)checkTCCAccess
{
  v2 = self;
  v3 = [(BRCXPCClient *)self session];
  LOBYTE(v2) = [(BRCXPCClient *)v2 checkTCCAccessForSession:v3];

  return v2;
}

- (void)addAppLibrary:(id)a3
{
  v4 = a3;
  foregroundBackgroundHandlingQueue = self->_foregroundBackgroundHandlingQueue;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __30__BRCXPCClient_addAppLibrary___block_invoke;
  v10 = &unk_2784FF478;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_async_and_wait(foregroundBackgroundHandlingQueue, &v7);
  [(BRCXPCClient *)self _startMonitoringProcessIfNeeded:v7];
}

void __30__BRCXPCClient_addAppLibrary___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    v3 = *(v1 + 109);
    [*(v1 + 56) addObject:*(a1 + 40)];
    v4 = [*(*(a1 + 32) + 56) countForObject:*(a1 + 40)];
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = "YES";
      v15 = 138413058;
      if (v4 == 1)
      {
        v12 = "YES";
      }

      else
      {
        v12 = "NO";
      }

      v16 = v10;
      v17 = 2080;
      if ((v3 & 1) == 0)
      {
        v11 = "NO";
      }

      v18 = v12;
      v19 = 2080;
      v20 = v11;
      v21 = 2112;
      v22 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - shouldNotify: %s, isForeground: %s%@", &v15, 0x2Au);
    }

    if ((v3 & 1) != 0 && v4 == 1)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 32);
        v14 = [*(a1 + 40) logName];
        v15 = 138412802;
        v16 = v13;
        v17 = 2112;
        v18 = v14;
        v19 = 2112;
        v20 = v7;
        _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - is now monitoring %@%@", &v15, 0x20u);
      }

      [*(a1 + 40) addForegroundClient:*(a1 + 32)];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeAppLibrary:(id)a3
{
  v4 = a3;
  foregroundBackgroundHandlingQueue = self->_foregroundBackgroundHandlingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__BRCXPCClient_removeAppLibrary___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(foregroundBackgroundHandlingQueue, v7);
}

void __33__BRCXPCClient_removeAppLibrary___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    v3 = *(v1 + 109);
    v4 = [*(v1 + 56) countForObject:*(a1 + 40)];
    [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = "YES";
      v15 = 138413058;
      if (v4 == 1)
      {
        v12 = "YES";
      }

      else
      {
        v12 = "NO";
      }

      v16 = v10;
      v17 = 2080;
      if ((v3 & 1) == 0)
      {
        v11 = "NO";
      }

      v18 = v12;
      v19 = 2080;
      v20 = v11;
      v21 = 2112;
      v22 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - shouldNotify: %s, isForeground: %s%@", &v15, 0x2Au);
    }

    if ((v3 & 1) != 0 && v4 == 1)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 32);
        v14 = [*(a1 + 40) logName];
        v15 = 138412802;
        v16 = v13;
        v17 = 2112;
        v18 = v14;
        v19 = 2112;
        v20 = v7;
        _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - is no longer monitoring %@%@", &v15, 0x20u);
      }

      [*(a1 + 40) removeForegroundClient:*(a1 + 32)];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (char)cloudEnabledStatus
{
  v2 = self;
  objc_sync_enter(v2);
  clientPriviledgesDescriptor = v2->_clientPriviledgesDescriptor;
  v4 = [(BRCXPCClient *)v2 session];
  LOBYTE(clientPriviledgesDescriptor) = [(BRCClientPrivilegesDescriptor *)clientPriviledgesDescriptor cloudEnabledStatusWithHasSession:v4 != 0];

  objc_sync_exit(v2);
  return clientPriviledgesDescriptor;
}

- (BOOL)_hasAccessToAppLibraryID:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(BRCXPCClient *)self _isAppLibraryProxyEntitled])
  {
    goto LABEL_2;
  }

  if (![(BRCXPCClient *)self isSandboxed]&& [(BRCXPCClient *)self checkTCCAccess])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412802;
      v16 = v6;
      v17 = 2112;
      v18 = self;
      v19 = 2112;
      v20 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] granting access to %@ for non-sandboxed app %@%@", &v15, 0x20u);
    }

    goto LABEL_2;
  }

  v10 = [(BRCXPCClient *)self entitledAppLibraryIDs];
  if ([v10 count])
  {
    if (!v6 || ([v6 appLibraryOrZoneName], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "containsObject:", v11), v11, v12))
    {
      if ([(BRCXPCClient *)self cloudEnabledStatus]== 1)
      {

LABEL_2:
        v7 = 1;
        goto LABEL_16;
      }
    }
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:1 description:@"Not entitled to access container"];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_16:

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_canCreateAppLibraryWithID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (([v6 isReservedMangedID] & 1) == 0)
  {
    if ([(BRCXPCClient *)self _isAppLibraryProxyEntitled])
    {
      v7 = 1;
      goto LABEL_15;
    }

    v8 = [(BRCXPCClient *)self entitledAppLibraryIDs];
    if ([v8 count])
    {
      v9 = [v6 appLibraryOrZoneName];
      if (v9 && [v8 containsObject:v9] && -[BRCXPCClient cloudEnabledStatus](self, "cloudEnabledStatus") == 1)
      {

        v7 = 1;
LABEL_14:

        goto LABEL_15;
      }
    }

    if (a4)
    {
      [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:1 description:@"Not entitled to create container"];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_14;
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (BOOL)_isAppLibraryProxyWithError:(id *)a3
{
  if ([(BRCXPCClient *)self _isAppLibraryProxyEntitled]|| ![(BRCXPCClient *)self isSandboxed]&& [(BRCXPCClient *)self checkTCCAccess])
  {
    return 1;
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, 0x90u))
  {
    [BRCXPCClient _isAppLibraryProxyWithError:];
  }

  if (!a3)
  {
    return 0;
  }

  v8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:1 description:@"Not a container proxy"];
  v9 = v8;
  result = 0;
  *a3 = v8;
  return result;
}

- (BOOL)_hasPrivateIPCEntitlementForSelector:(SEL)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(BRCXPCClient *)self _isAutomationEntitled])
  {
    v7 = 1;
  }

  else
  {
    v8 = NSStringFromSelector(a3);
    v9 = [(BRCXPCClient *)self _entitlementValueForKey:*MEMORY[0x277CFAC88] ofClass:objc_opt_class()];
    v7 = [v9 containsObject:v8];
    if ((v7 & 1) == 0)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, 0x90u))
      {
        *buf = 138412802;
        v15 = self;
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v10;
        _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] %@: is trying to call %@, but has no access%@", buf, 0x20u);
      }

      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:1 description:{@"Not entitled to access: %@", v8}];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_entitlementValueForKey:(id)a3 ofClass:(Class)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v7 = [WeakRetained valueForEntitlement:v5];

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_entitlementBooleanValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(BRCXPCClient *)self _entitlementValueForKey:v4 ofClass:objc_opt_class()];

  v6 = [v5 BOOLValue];
  return v6;
}

- (BRMangledID)defaultMangledID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(BRCClientPrivilegesDescriptor *)v2->_clientPriviledgesDescriptor defaultAppLibraryID];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CFAE60]);
    v5 = [(BRCClientPrivilegesDescriptor *)v2->_clientPriviledgesDescriptor defaultAppLibraryID];
    v6 = [v4 initWithAppLibraryName:v5];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v2);

  return v6;
}

- (NSSet)entitledAppLibraryIDs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(BRCClientPrivilegesDescriptor *)v2->_clientPriviledgesDescriptor appLibraryIDs];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)_isAutomationEntitled
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(BRCClientPrivilegesDescriptor *)v2->_clientPriviledgesDescriptor isAutomationEntitled];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)hasPrivateSharingInterfaceEntitlement
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(BRCClientPrivilegesDescriptor *)v2->_clientPriviledgesDescriptor isSharingPrivateInterfaceEntitled];
  objc_sync_exit(v2);

  return v3;
}

- (void)_auditURL:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 lastPathComponent];
  if (![v5 br_isSideFaultName])
  {
LABEL_6:

    goto LABEL_7;
  }

  v6 = [v4 checkResourceIsReachableAndReturnError:0];

  if ((v6 & 1) == 0)
  {
    v5 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      v9 = [v4 path];
      v10 = 138412802;
      v11 = self;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_223E7A000, v7, 0x90u, "[ERROR] Client %@ gave us a non-existing fault URL path %@%@", &v10, 0x20u);
    }

    goto LABEL_6;
  }

LABEL_7:

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_auditedURLFromPath:(id)a3
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3];
  [(BRCXPCClient *)self _auditURL:v4];

  return v4;
}

- (BOOL)canAccessPath:(const char *)a3 accessKind:(int64_t)a4
{
  v7 = *MEMORY[0x277D861D8];
  if (a4 <= 2)
  {
    v8 = off_278507728[a4];
  }

  auditToken = self->auditToken;
  v9 = sandbox_check_by_audit_token();
  if (a4 || v9)
  {
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = *self->auditToken.val;
    v14 = *&self->auditToken.val[4];
    if (!sandbox_check_by_audit_token())
    {
LABEL_6:
      LOBYTE(v10) = 1;
      return v10;
    }
  }

  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    [BRCXPCClient canAccessPath:a3 accessKind:?];
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)performBlockWithAnySession:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__52;
  v14 = __Block_byref_object_dispose__52;
  v15 = [(BRCXPCClient *)self session];
  if (v11[5])
  {
    v4[2](v4);
  }

  else
  {
    v5 = +[BRCAccountsManager sharedManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__BRCXPCClient_performBlockWithAnySession___block_invoke;
    v7[3] = &unk_278506E08;
    v9 = &v10;
    v6 = v4;
    v8 = v6;
    [v5 enumerateAccountHandlers:v7];

    if (!v11[5])
    {
      (v6[2])(v6, 0);
    }
  }

  _Block_object_dispose(&v10, 8);
}

void __43__BRCXPCClient_performBlockWithAnySession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = v3;
    v4 = [v3 session];

    v3 = v9;
    if (v4)
    {
      v5 = [v9 session];
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = *(*(*(a1 + 40) + 8) + 40);
      (*(*(a1 + 32) + 16))();
      v3 = v9;
    }
  }
}

- (BOOL)canAccessPhysicalURL:(id)a3
{
  v4 = [a3 path];
  LOBYTE(self) = -[BRCXPCClient canAccessPath:accessKind:](self, "canAccessPath:accessKind:", [v4 fileSystemRepresentation], 0);

  return self;
}

- (id)issueContainerExtensionForURL:(id)a3 error:(id *)a4
{
  v5 = *MEMORY[0x277CFABF0];
  v6 = a3;
  v7 = [v6 brc_issueSandboxExtensionOfClass:objc_msgSend(v5 error:{"UTF8String"), a4}];

  return v7;
}

- (id)_setupAppLibrary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__52;
  v20 = __Block_byref_object_dispose__52;
  v21 = 0;
  tracker = self->_tracker;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__BRCXPCClient__setupAppLibrary_error___block_invoke;
  v12[3] = &unk_278506E30;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v14 = &v16;
  v15 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__BRCXPCClient__setupAppLibrary_error___block_invoke_95;
  v11[3] = &__block_descriptor_40_e5_v8__0l;
  v11[4] = a4;
  brc_task_tracker_sync(tracker, v12, v11);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __39__BRCXPCClient__setupAppLibrary_error___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _canCreateAppLibraryWithID:*(a1 + 40) error:0];
  v3 = [*(a1 + 32) session];
  v4 = v3;
  v5 = *(a1 + 40);
  if (v2)
  {
    [v3 getOrCreateAppLibraryAndPrivateZonesIfNecessary:v5];
  }

  else
  {
    [v3 appLibraryByMangledID:v5];
  }
  v6 = ;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = "create";
    if (!v2)
    {
      v9 = "load";
    }

    v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CCA050] code:257 description:{@"can't %s app library for %@", v9, *(a1 + 40)}];
    if (v10)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, 0x90u))
      {
        v15 = *(a1 + 56);
        *buf = 136315906;
        if (v15)
        {
          v16 = "(passed to caller)";
        }

        else
        {
          v16 = "(ignored by caller)";
        }

        v18 = "[BRCXPCClient _setupAppLibrary:error:]_block_invoke";
        v19 = 2080;
        v20 = v16;
        v21 = 2112;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_error_impl(&dword_223E7A000, v12, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      objc_storeStrong(v13, v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __39__BRCXPCClient__setupAppLibrary_error___block_invoke_95(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  if (v2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      v7 = *(a1 + 32);
      v9 = 136315906;
      if (v7)
      {
        v8 = "(passed to caller)";
      }

      else
      {
        v8 = "(ignored by caller)";
      }

      v10 = "[BRCXPCClient _setupAppLibrary:error:]_block_invoke";
      v11 = 2080;
      v12 = v8;
      v13 = 2112;
      v14 = v2;
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&dword_223E7A000, v4, 0x90u, "[ERROR] %s: %s error: %@%@", &v9, 0x2Au);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    objc_storeStrong(v5, v2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_waitForContainerToBeForcedIngestWithContainerID:(id)a3 containerURL:(id)a4 sandboxExtension:(id)a5 bundleVersion:(id)a6 error:(id)a7 reply:(id)a8
{
  v53 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v15)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [BRCXPCClient _waitForContainerToBeForcedIngestWithContainerID:containerURL:sandboxExtension:bundleVersion:error:reply:];
    }

    v22 = [(BRCXPCClient *)self session];
    v23 = [v22 appLibraryByID:v14];

    if (v23)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __121__BRCXPCClient__waitForContainerToBeForcedIngestWithContainerID_containerURL_sandboxExtension_bundleVersion_error_reply___block_invoke;
      v35[3] = &unk_278504438;
      v35[4] = self;
      v36 = v15;
      v37 = v16;
      v38 = v17;
      v39 = v18;
      v40 = v19;
      [v23 waitForRootIngestionWithCompletion:v35];
    }

    else
    {
      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        [BRCXPCClient _waitForContainerToBeForcedIngestWithContainerID:containerURL:sandboxExtension:bundleVersion:error:reply:];
      }

      v34 = v16;

      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:v14];
        *buf = 138413570;
        v42 = self;
        v43 = 2112;
        v44 = 0;
        v45 = 2112;
        v46 = 0;
        v47 = 2112;
        v48 = 0;
        v49 = 2112;
        v50 = v31;
        v51 = 2112;
        v52 = v29;
        _os_log_impl(&dword_223E7A000, v30, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@)%@", buf, 0x3Eu);
      }

      v32 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:v14];
      (*(v19 + 2))(v19, 0, 0, 0, v32);

      v16 = v34;
    }
  }

  else
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:v14];
      *buf = 138413570;
      v42 = self;
      v43 = 2112;
      v44 = 0;
      v45 = 2112;
      v46 = 0;
      v47 = 2112;
      v48 = 0;
      v49 = 2112;
      v50 = v26;
      v51 = 2112;
      v52 = v24;
      _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@)%@", buf, 0x3Eu);
    }

    v23 = [MEMORY[0x277CCA9B8] brc_errorInvalidParameter:@"containerID" value:v14];
    (*(v19 + 2))(v19, 0, 0, 0, v23);
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __121__BRCXPCClient__waitForContainerToBeForcedIngestWithContainerID_containerURL_sandboxExtension_bundleVersion_error_reply___block_invoke(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[8];
    v15 = 138413570;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@)%@", &v15, 0x3Eu);
  }

  v9 = a1[8];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  result = (*(a1[9] + 16))();
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_setupAppLibraryAndZoneWithID:(id)a3 recreateDocumentsIfNeeded:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  location = 0;
  v9 = a5;
  v10 = [(BRCXPCClient *)self _setupAppLibrary:v8 error:&location];
  if (v10)
  {
    if (v6)
    {
      v11 = [(BRCXPCClient *)self session];
      v12 = [v11 clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __78__BRCXPCClient__setupAppLibraryAndZoneWithID_recreateDocumentsIfNeeded_reply___block_invoke;
      block[3] = &unk_2784FF478;
      block[4] = self;
      v26 = v10;
      dispatch_async_and_wait(v12, block);
    }

    v13 = [v10 url];
    if ([(BRCXPCClient *)self canAccessPhysicalURL:v13])
    {
      v14 = 0;
    }

    else
    {
      obj = location;
      v14 = [(BRCXPCClient *)self issueContainerExtensionForURL:v13 error:&obj];
      objc_storeStrong(&location, obj);
      if (!v14)
      {

        v13 = 0;
      }
    }

    v18 = [v10 containerMetadata];
    v19 = [(BRCXPCClient *)self bundleID];
    v20 = [v18 versionNumberForBundleIdentifier:v19];

    [(BRCXPCClient *)self addAppLibrary:v10];
    v21 = [v8 appLibraryOrZoneName];
    v22 = [location brc_wrappedError];
    [(BRCXPCClient *)self _waitForContainerToBeForcedIngestWithContainerID:v21 containerURL:v13 sandboxExtension:v14 bundleVersion:v20 error:v22 reply:v9];

    v9 = v14;
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [location brc_wrappedError];
      *buf = 138413570;
      v29 = self;
      v30 = 2112;
      v31 = 0;
      v32 = 2112;
      v33 = 0;
      v34 = 2112;
      v35 = 0;
      v36 = 2112;
      v37 = v17;
      v38 = 2112;
      v39 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] %@: reply(%@, %@, %@, %@)%@", buf, 0x3Eu);
    }

    v13 = [location brc_wrappedError];
    (*(v9 + 2))(v9, 0, 0, 0, v13);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __78__BRCXPCClient__setupAppLibraryAndZoneWithID_recreateDocumentsIfNeeded_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  v3 = [v2 clientDB];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__BRCXPCClient__setupAppLibraryAndZoneWithID_recreateDocumentsIfNeeded_reply___block_invoke_2;
  v4[3] = &unk_2784FFA48;
  v5 = *(a1 + 40);
  [v3 performWithFlags:4 action:v4];
}

- (void)setupNonSandboxedAccessForUbiquityContainers:(id)a3 forBundleID:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [BRCClientPrivilegesDescriptor alloc];
  v10 = *&v8->auditToken.val[4];
  *v15 = *v8->auditToken.val;
  *&v15[16] = v10;
  v11 = [(BRCClientPrivilegesDescriptor *)v9 initWithNonSandboxedAppWithAppLibraryIDs:v6 bundleID:v7 auditToken:v15];
  [(BRCXPCClient *)v8 setPrivilegesDescriptor:v11];

  objc_sync_exit(v8);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 138413058;
    *&v15[4] = v8;
    *&v15[12] = 2112;
    *&v15[14] = v6;
    *&v15[22] = 2112;
    *&v15[24] = v7;
    v16 = 2112;
    v17 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: unsandboxed app is now using %@ as %@%@", v15, 0x2Au);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_startSharingOperationAfterAcceptation:(id)a3 client:(id)a4 item:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  [v8 setRemoteClientProxy:a4];
  v10 = [v9 clientZone];
  if ([v10 isSharedZone])
  {
    v11 = [v9 clientZone];
    v12 = [v11 asSharedClientZone];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v9 itemID];
  v14 = [v12 shareAcceptOperationForItemID:v13];

  if (v14)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138412802;
      v20 = v14;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v15;
      _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] add dependency %@ for operation %@%@", &v19, 0x20u);
    }

    [v8 addDependency:v14];
  }

  v17 = [(BRCXPCClient *)self session];
  [v17 addMiscOperation:v8];

  [v8 schedule];
  v18 = *MEMORY[0x277D85DE8];
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end