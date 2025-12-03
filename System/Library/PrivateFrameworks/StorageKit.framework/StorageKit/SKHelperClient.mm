@interface SKHelperClient
+ (id)sharedClient;
- (BOOL)_isRecachingDiskAbuse:(id)abuse;
- (SKHelperClient)init;
- (id)_parameters:(id)_parameters valueAtIndex:(unint64_t)index;
- (id)_scheduleCompletionUUID:(id)d forFunction:(const char *)function blocking:(BOOL)blocking withBlock:(id)block;
- (id)_scheduleSyncCompletionUUID:(id)d forFunction:(const char *)function withBlock:(id)block;
- (id)eraseWithEraser:(id)eraser completionBlock:(id)block;
- (id)queueWithBlocking:(BOOL)blocking;
- (id)remoteObjectProxyWithSync:(BOOL)sync errorHandler:(id)handler;
- (id)remoteObjectWithUUID:(id)d errorHandler:(id)handler;
- (id)resize:(id)resize toSize:(unint64_t)size completionBlock:(id)block;
- (id)retrieveFilesystems;
- (void)_abortAllCalls;
- (void)_scheduleCompletionUUID:(id)d progress:(id)progress forFunction:(const char *)function withBlock:(id)block;
- (void)createXPCConnection;
- (void)disksAppeared:(id)appeared;
- (void)disksChanged:(id)changed;
- (void)disksDisappeared:(id)disappeared;
- (void)filesystemsWithCallbackBlock:(id)block;
- (void)initialPopulateComplete;
- (void)managerResumed;
- (void)managerStalled;
- (void)renameDisk:(id)disk to:(id)to withCompletionBlock:(id)block;
- (void)requestWithUUID:(id)d didCompleteWithResult:(id)result;
- (void)syncAllDisks;
- (void)syncAllDisksWithCompletionBlock:(id)block;
- (void)updateUUID:(id)d progress:(float)progress message:(id)message;
@end

@implementation SKHelperClient

+ (id)sharedClient
{
  if (sharedClient_once != -1)
  {
    +[SKHelperClient sharedClient];
  }

  v3 = sSharedClient;

  return v3;
}

uint64_t __30__SKHelperClient_sharedClient__block_invoke()
{
  sSharedClient = objc_alloc_init(SKHelperClient);

  return MEMORY[0x2821F96F8]();
}

- (SKHelperClient)init
{
  v12.receiver = self;
  v12.super_class = SKHelperClient;
  v2 = [(SKHelperClient *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(SKHelperClient *)v2 setRecacheAbuseLimiterInfo:v5];

    [(SKHelperClient *)v2 createXPCConnection];
    xpcConnection = [(SKHelperClient *)v2 xpcConnection];
    _queue = [xpcConnection _queue];
    xpcQueue = v2->_xpcQueue;
    v2->_xpcQueue = _queue;

    v9 = dispatch_queue_create("com.apple.StorageKit.Callbacks", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v9;
  }

  return v2;
}

- (id)queueWithBlocking:(BOOL)blocking
{
  if (blocking)
  {
    [(SKHelperClient *)self xpcQueue];
  }

  else
  {
    [(SKHelperClient *)self callbackQueue];
  }
  v3 = ;

  return v3;
}

- (void)syncAllDisks
{
  v2 = [[SKSyncXPCCaller alloc] initWithHelperClient:self];
  syncRemoteObject = [(SKSyncXPCCaller *)v2 syncRemoteObject];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__SKHelperClient_syncAllDisks__block_invoke;
  v5[3] = &unk_279D1F5B0;
  v6 = v2;
  v4 = v2;
  [syncRemoteObject syncAllDisksWithCompletionBlock:v5];

  [(SKSyncXPCCaller *)v4 wait];
}

- (void)syncAllDisksWithCompletionBlock:(id)block
{
  blockCopy = block;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__SKHelperClient_syncAllDisksWithCompletionBlock___block_invoke;
  v12[3] = &unk_279D1FAA0;
  v13 = blockCopy;
  v7 = blockCopy;
  [(SKHelperClient *)self _scheduleCompletionUUID:uUIDString forFunction:"[SKHelperClient syncAllDisksWithCompletionBlock:]" withBlock:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__SKHelperClient_syncAllDisksWithCompletionBlock___block_invoke_2;
  v10[3] = &unk_279D1FAC8;
  v10[4] = self;
  v11 = uUIDString;
  v8 = uUIDString;
  v9 = [(SKHelperClient *)self remoteObjectWithUUID:v8 errorHandler:v10];
  [v9 syncAllDisksWithCompletionUUID:v8];
}

uint64_t __50__SKHelperClient_syncAllDisksWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)renameDisk:(id)disk to:(id)to withCompletionBlock:(id)block
{
  blockCopy = block;
  v9 = MEMORY[0x277CCAD78];
  toCopy = to;
  diskCopy = disk;
  uUID = [v9 UUID];
  uUIDString = [uUID UUIDString];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __52__SKHelperClient_renameDisk_to_withCompletionBlock___block_invoke;
  v24[3] = &unk_279D1FAF0;
  v24[4] = self;
  v25 = blockCopy;
  v14 = blockCopy;
  [(SKHelperClient *)self _scheduleCompletionUUID:uUIDString forFunction:"[SKHelperClient renameDisk:to:withCompletionBlock:]" withBlock:v24];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __52__SKHelperClient_renameDisk_to_withCompletionBlock___block_invoke_2;
  v21 = &unk_279D1FAC8;
  selfCopy = self;
  v23 = uUIDString;
  v15 = uUIDString;
  v16 = [(SKHelperClient *)self remoteObjectWithUUID:v15 errorHandler:&v18];
  minimalDictionaryRepresentation = [diskCopy minimalDictionaryRepresentation];

  [v16 renameDisk:minimalDictionaryRepresentation to:toCopy withCompletionUUID:v15];
}

void __52__SKHelperClient_renameDisk_to_withCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) _parameters:a2 valueAtIndex:0];
    (*(*(a1 + 40) + 16))();
  }
}

void __52__SKHelperClient_renameDisk_to_withCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  [v2 requestWithUUID:v3 didCompleteWithResult:{v6, v8, v9}];

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __61__SKHelperClient_recacheDisk_options_blocking_callbackBlock___block_invoke(uint64_t a1)
{
  v2 = SKGetOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_26BBB8000, v2, OS_LOG_TYPE_ERROR, "Caller has hit recacheDisk: abuse limit. Disk data may be stale", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __61__SKHelperClient_recacheDisk_options_blocking_callbackBlock___block_invoke_80(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = [*(a1 + 32) completionHandlers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v5 semaphore];
  v7 = v6;
  if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

void __62__SKHelperClient_wholeDiskForDisk_blocking_withCallbackBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) completionHandlers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v5 semaphore];

  if (*(a1 + 48))
  {
    v7 = [*(a1 + 32) _parameters:v3 valueAtIndex:0];
    v8 = +[SKManager sharedManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__SKHelperClient_wholeDiskForDisk_blocking_withCallbackBlock___block_invoke_2;
    v10[3] = &unk_279D1FB40;
    v12 = *(a1 + 48);
    v11 = v6;
    v9 = [*(a1 + 32) queueWithBlocking:{*(a1 + 56), v10[0], 3221225472, __62__SKHelperClient_wholeDiskForDisk_blocking_withCallbackBlock___block_invoke_2, &unk_279D1FB40}];
    [v8 knownDiskForDictionary:v7 notify:v10 onQueue:v9];
  }

  else if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

NSObject *__62__SKHelperClient_wholeDiskForDisk_blocking_withCallbackBlock___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = *(a1 + 32);
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

void __62__SKHelperClient_wholeDiskForDisk_blocking_withCallbackBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SKGetOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = "[SKHelperClient wholeDiskForDisk:blocking:withCallbackBlock:]_block_invoke_3";
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "%s ** error: %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = [MEMORY[0x277CBEB68] null];
  v10 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [v6 requestWithUUID:v5 didCompleteWithResult:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __68__SKHelperClient_childDisksForWholeDisk_blocking_withCallbackBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) _parameters:v11 valueAtIndex:0];
    v4 = *(a1 + 48);
    v5 = +[SKManager sharedManager];
    v6 = [v5 knownDisksForDictionaries:v3];
    (*(v4 + 16))(v4, v6);
  }

  v7 = [*(a1 + 32) completionHandlers];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];
  v9 = [v8 semaphore];
  v10 = v9;
  if (v9)
  {
    dispatch_semaphore_signal(v9);
  }
}

void __68__SKHelperClient_childDisksForWholeDisk_blocking_withCallbackBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SKGetOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = "[SKHelperClient childDisksForWholeDisk:blocking:withCallbackBlock:]_block_invoke_2";
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "%s ** error: %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = [MEMORY[0x277CBEB68] null];
  v10 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [v6 requestWithUUID:v5 didCompleteWithResult:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __53__SKHelperClient_isBusyWithBlocking_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) _parameters:v8 valueAtIndex:0];
    [v3 BOOLValue];

    (*(*(a1 + 48) + 16))();
  }

  v4 = [*(a1 + 32) completionHandlers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v5 semaphore];
  v7 = v6;
  if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

- (id)retrieveFilesystems
{
  v2 = [[SKSyncXPCCaller alloc] initWithHelperClient:self];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = MEMORY[0x277CBEBF8];
  syncRemoteObject = [(SKSyncXPCCaller *)v2 syncRemoteObject];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __37__SKHelperClient_retrieveFilesystems__block_invoke;
  v10 = &unk_279D1FBB8;
  v4 = v2;
  v11 = v4;
  v12 = &v13;
  [syncRemoteObject filesystemsWithCallbackBlock:&v7];

  [(SKSyncXPCCaller *)v4 wait:v7];
  v5 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v5;
}

void __37__SKHelperClient_retrieveFilesystems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SKHelperClient_retrieveFilesystems__block_invoke_2;
  v7[3] = &unk_279D1FB90;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 queueWithCompletionBlock:v7];
}

- (void)filesystemsWithCallbackBlock:(id)block
{
  blockCopy = block;
  retrieveFilesystems = [(SKHelperClient *)self retrieveFilesystems];
  (*(block + 2))(blockCopy, retrieveFilesystems);
}

void __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v3 = [*(a1 + 32) completionHandlers];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  v16 = [v4 semaphore];

  v5 = [*(a1 + 32) _parameters:v17 valueAtIndex:0];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__3;
  v33[4] = __Block_byref_object_dispose__3;
  v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v6 = dispatch_queue_create("com.apple.storagekitd.diskeval", 0);
  v7 = dispatch_group_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        dispatch_group_enter(v7);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_2;
        block[3] = &unk_279D1FBE0;
        block[4] = v11;
        v28 = v33;
        v27 = v7;
        dispatch_async(v6, block);
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_4;
  v19[3] = &unk_279D1FC30;
  v12 = *(a1 + 32);
  v20 = v7;
  v21 = v12;
  v25 = *(a1 + 56);
  v23 = *(a1 + 48);
  v24 = v33;
  v22 = v16;
  v13 = v16;
  v14 = v7;
  dispatch_sync(v6, v19);

  _Block_object_dispose(v33, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = +[SKManager sharedManager];
  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_3;
  v7[3] = &unk_279D1F6C8;
  v6 = *(a1 + 40);
  v4 = v6;
  v8 = v6;
  v5 = dispatch_get_global_queue(0, 0);
  [v2 knownDiskForDictionary:v3 notify:v7 onQueue:v5];
}

void __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  objc_sync_enter(v3);
  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }

  objc_sync_exit(v3);

  dispatch_group_leave(*(a1 + 32));
}

void __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_4(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = [*(a1 + 40) queueWithBlocking:*(a1 + 72)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_5;
  block[3] = &unk_279D1FC08;
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v7 = v3;
  v8 = v4;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

NSObject *__71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_5(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1[6] + 8) + 40));
  }

  result = a1[4];
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

void __71__SKHelperClient_physicalStoresForAPFSVolume_blocking_completionBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SKGetOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SKHelperClient physicalStoresForAPFSVolume:blocking:completionBlock:]_block_invoke_6";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "%s ** error: %@", &v6, 0x16u);
  }

  [*(a1 + 32) requestWithUUID:*(a1 + 40) didCompleteWithResult:&unk_287C9A6B8];
  v5 = *MEMORY[0x277D85DE8];
}

void __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v3 = [*(a1 + 32) completionHandlers];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  v14 = [v4 semaphore];

  v5 = [*(a1 + 32) _parameters:v15 valueAtIndex:0];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__3;
  v29[4] = __Block_byref_object_dispose__3;
  v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v6 = dispatch_queue_create("com.apple.storagekitd.diskeval", 0);
  v7 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        dispatch_group_enter(v7);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_2;
        block[3] = &unk_279D1FBE0;
        block[4] = v11;
        v24 = v29;
        v23 = v7;
        dispatch_async(v6, block);
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v8);
  }

  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_4;
  v17[3] = &unk_279D1FC58;
  v17[4] = *(a1 + 32);
  v21 = *(a1 + 56);
  v19 = *(a1 + 48);
  v20 = v29;
  v18 = v14;
  v12 = v14;
  dispatch_sync(v6, v17);

  _Block_object_dispose(v29, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = +[SKManager sharedManager];
  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_3;
  v7[3] = &unk_279D1F6C8;
  v6 = *(a1 + 40);
  v4 = v6;
  v8 = v6;
  v5 = dispatch_get_global_queue(0, 0);
  [v2 knownDiskForDictionary:v3 notify:v7 onQueue:v5];
}

void __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    objc_sync_enter(v3);
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) queueWithBlocking:*(a1 + 64)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_5;
  block[3] = &unk_279D1FC08;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  v6 = *(a1 + 40);
  dispatch_async(v2, block);
}

NSObject *__60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_5(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1[6] + 8) + 40));
  }

  result = a1[4];
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

void __60__SKHelperClient_volumesForAPFSPS_blocking_completionBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SKGetOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[SKHelperClient volumesForAPFSPS:blocking:completionBlock:]_block_invoke_6";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "%s ** error: %@", &v6, 0x16u);
  }

  [*(a1 + 32) requestWithUUID:*(a1 + 40) didCompleteWithResult:&unk_287C9A6D0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateUUID:(id)d progress:(float)progress message:(id)message
{
  messageCopy = message;
  dCopy = d;
  completionHandlers = [(SKHelperClient *)self completionHandlers];
  v11 = [completionHandlers objectForKeyedSubscript:dCopy];

  if (v11)
  {
    progressBlock = [v11 progressBlock];

    if (progressBlock)
    {
      progressBlock2 = [v11 progressBlock];
      callbackQueue = [(SKHelperClient *)self callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__SKHelperClient_updateUUID_progress_message___block_invoke;
      block[3] = &unk_279D1FC80;
      v18 = progressBlock2;
      progressCopy = progress;
      v17 = messageCopy;
      v15 = progressBlock2;
      dispatch_async(callbackQueue, block);
    }
  }
}

- (void)requestWithUUID:(id)d didCompleteWithResult:(id)result
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  resultCopy = result;
  completionHandlers = [(SKHelperClient *)self completionHandlers];
  v9 = [completionHandlers objectForKeyedSubscript:dCopy];

  v10 = SKGetOSLog();
  completionHandlers2 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = dCopy;
      v23 = 2082;
      functionName = [v9 functionName];
      _os_log_impl(&dword_26BBB8000, completionHandlers2, OS_LOG_TYPE_DEFAULT, "Reached XPC reply for %{public}@ %{public}s", buf, 0x16u);
    }

    [v9 setProgressBlock:0];
    semaphore = [v9 semaphore];

    if (semaphore)
    {
      completionBlock = [v9 completionBlock];
      (completionBlock)[2](completionBlock, resultCopy);

      v14 = SKGetOSLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = dCopy;
        _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_DEFAULT, "Completion block directly executed for: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      callbackQueue = [(SKHelperClient *)self callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__SKHelperClient_requestWithUUID_didCompleteWithResult___block_invoke;
      block[3] = &unk_279D1FCA8;
      v18 = dCopy;
      v19 = v9;
      v20 = resultCopy;
      dispatch_async(callbackQueue, block);

      v14 = v18;
    }

    completionHandlers2 = [(SKHelperClient *)self completionHandlers];
    [completionHandlers2 setObject:0 forKeyedSubscript:dCopy];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v22 = dCopy;
    _os_log_impl(&dword_26BBB8000, completionHandlers2, OS_LOG_TYPE_ERROR, "Error: no completion handler for %{public}@", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __56__SKHelperClient_requestWithUUID_didCompleteWithResult___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SKGetOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_26BBB8000, v2, OS_LOG_TYPE_DEFAULT, "Completion callback for: %{public}@ - start", &v8, 0xCu);
  }

  v4 = [*(a1 + 40) completionBlock];
  v4[2](v4, *(a1 + 48));

  v5 = SKGetOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_26BBB8000, v5, OS_LOG_TYPE_DEFAULT, "Completion callback for: %{public}@ - end", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initialPopulateComplete
{
  v2 = +[SKManager sharedManager];
  [v2 initialPopulateComplete];
}

- (void)disksAppeared:(id)appeared
{
  appearedCopy = appeared;
  v4 = +[SKManager sharedManager];
  [v4 disksAppeared:appearedCopy];
}

- (void)disksChanged:(id)changed
{
  changedCopy = changed;
  v4 = +[SKManager sharedManager];
  [v4 disksChanged:changedCopy];
}

- (void)disksDisappeared:(id)disappeared
{
  disappearedCopy = disappeared;
  v4 = +[SKManager sharedManager];
  [v4 disksDisappeared:disappearedCopy];
}

- (void)managerStalled
{
  v2 = +[SKManager sharedManager];
  [v2 managerStalled];
}

- (void)managerResumed
{
  v2 = +[SKManager sharedManager];
  [v2 managerResumed];
}

- (id)remoteObjectProxyWithSync:(BOOL)sync errorHandler:(id)handler
{
  syncCopy = sync;
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (![(SKHelperClient *)self connectionDone])
  {
    v7 = SKGetOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "async";
      if (syncCopy)
      {
        v8 = "sync";
      }

      v14 = 136315394;
      v15 = "[SKHelperClient remoteObjectProxyWithSync:errorHandler:]";
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&dword_26BBB8000, v7, OS_LOG_TYPE_DEFAULT, "%s: Going to send first message from client, in %s mode", &v14, 0x16u);
    }

    [(SKHelperClient *)self setConnectionDone:1];
  }

  xpcConnection = [(SKHelperClient *)self xpcConnection];
  v10 = xpcConnection;
  if (syncCopy)
  {
    [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    [xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }
  v11 = ;

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)remoteObjectWithUUID:(id)d errorHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  xpcQueue = [(SKHelperClient *)self xpcQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SKHelperClient_remoteObjectWithUUID_errorHandler___block_invoke;
  block[3] = &unk_279D1FCD0;
  block[4] = self;
  v14 = dCopy;
  v15 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(xpcQueue, block);

  v11 = [(SKHelperClient *)self remoteObjectProxyWithSync:0 errorHandler:v9];

  return v11;
}

void __52__SKHelperClient_remoteObjectWithUUID_errorHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) completionHandlers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 setErrorBlock:*(a1 + 48)];
  }

  else
  {
    v4 = SKGetOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v7 = 136315394;
      v8 = "[SKHelperClient remoteObjectWithUUID:errorHandler:]_block_invoke";
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_ERROR, "%s: No completion handler set for %{public}@, cannot set error block", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)createXPCConnection
{
  v22 = *MEMORY[0x277D85DE8];
  getpid();
  v3 = *MEMORY[0x277D861D8];
  -[SKHelperClient setHasDaemonAccess:](self, "setHasDaemonAccess:", sandbox_check() == 0, [@"com.apple.storagekitd" UTF8String]);
  v4 = SKGetOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    hasDaemonAccess = [(SKHelperClient *)self hasDaemonAccess];
    v6 = @"doesn't have";
    if (hasDaemonAccess)
    {
      v6 = @"has";
    }

    *buf = 136315394;
    v19 = "[SKHelperClient createXPCConnection]";
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_DEFAULT, "%s: Client %@ access to storagekitd", buf, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.storagekitd" options:4096];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v7;

  v9 = SKHelperConnectionInterface();
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v9];

  [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
  v10 = SKHelperClientInterface();
  [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v10];

  objc_initWeak(buf, self);
  v11 = self->_xpcConnection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__SKHelperClient_createXPCConnection__block_invoke;
  v16[3] = &unk_279D1FCF8;
  objc_copyWeak(&v17, buf);
  [(NSXPCConnection *)v11 setInterruptionHandler:v16];
  v12 = self->_xpcConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__SKHelperClient_createXPCConnection__block_invoke_108;
  v14[3] = &unk_279D1FCF8;
  objc_copyWeak(&v15, buf);
  [(NSXPCConnection *)v12 setInvalidationHandler:v14];
  [(NSXPCConnection *)self->_xpcConnection resume];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
  v13 = *MEMORY[0x277D85DE8];
}

void __37__SKHelperClient_createXPCConnection__block_invoke(uint64_t a1)
{
  v2 = SKGetOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26BBB8000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _abortAllCalls];
}

void __37__SKHelperClient_createXPCConnection__block_invoke_108(uint64_t a1)
{
  v2 = SKGetOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26BBB8000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _abortAllCalls];
}

- (void)_abortAllCalls
{
  v25 = *MEMORY[0x277D85DE8];
  [(SKHelperClient *)self setConnectionDone:0];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  completionHandlers = [(SKHelperClient *)self completionHandlers];
  allKeys = [completionHandlers allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = SKGetOSLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v23 = v10;
          _os_log_impl(&dword_26BBB8000, v11, OS_LOG_TYPE_DEFAULT, "Calling completion handler to abort UUID: %{public}@", buf, 0xCu);
        }

        completionHandlers2 = [(SKHelperClient *)self completionHandlers];
        v13 = [completionHandlers2 objectForKeyedSubscript:v10];

        errorBlock = [v13 errorBlock];

        if (errorBlock)
        {
          errorBlock2 = [v13 errorBlock];
          (errorBlock2)[2](errorBlock2, v3);
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  completionHandlers3 = [(SKHelperClient *)self completionHandlers];
  [completionHandlers3 removeAllObjects];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleCompletionUUID:(id)d progress:(id)progress forFunction:(const char *)function withBlock:(id)block
{
  dCopy = d;
  progressCopy = progress;
  blockCopy = block;
  xpcQueue = [(SKHelperClient *)self xpcQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SKHelperClient__scheduleCompletionUUID_progress_forFunction_withBlock___block_invoke;
  block[3] = &unk_279D1FD20;
  v21 = progressCopy;
  functionCopy = function;
  v18 = dCopy;
  selfCopy = self;
  v20 = blockCopy;
  v14 = progressCopy;
  v15 = blockCopy;
  v16 = dCopy;
  dispatch_async(xpcQueue, block);
}

void __73__SKHelperClient__scheduleCompletionUUID_progress_forFunction_withBlock___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = SKGetOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v8 = 136315394;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_26BBB8000, v2, OS_LOG_TYPE_DEFAULT, "Setting completion callback for (%s) to: %{public}@", &v8, 0x16u);
  }

  v5 = [[SKCompletionHandler alloc] initWithCompletionBlock:*(a1 + 48) progressBlock:*(a1 + 56) function:*(a1 + 64)];
  v6 = [*(a1 + 40) completionHandlers];
  [v6 setObject:v5 forKeyedSubscript:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_scheduleSyncCompletionUUID:(id)d forFunction:(const char *)function withBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v10 = dispatch_semaphore_create(0);
  xpcQueue = [(SKHelperClient *)self xpcQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SKHelperClient__scheduleSyncCompletionUUID_forFunction_withBlock___block_invoke;
  block[3] = &unk_279D1FD48;
  v21 = blockCopy;
  functionCopy = function;
  v18 = dCopy;
  v12 = v10;
  v19 = v12;
  selfCopy = self;
  v13 = blockCopy;
  v14 = dCopy;
  dispatch_async(xpcQueue, block);

  v15 = v12;
  return v12;
}

void __68__SKHelperClient__scheduleSyncCompletionUUID_forFunction_withBlock___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = SKGetOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v8 = 136315394;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_26BBB8000, v2, OS_LOG_TYPE_DEFAULT, "Setting sync completion callback for (%s) to: %{public}@", &v8, 0x16u);
  }

  v5 = [[SKCompletionHandler alloc] initWithCompletionBlock:*(a1 + 56) progressBlock:0 function:*(a1 + 64)];
  [(SKCompletionHandler *)v5 setSemaphore:*(a1 + 40)];
  v6 = [*(a1 + 48) completionHandlers];
  [v6 setObject:v5 forKeyedSubscript:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_scheduleCompletionUUID:(id)d forFunction:(const char *)function blocking:(BOOL)blocking withBlock:(id)block
{
  if (blocking)
  {
    v6 = [(SKHelperClient *)self _scheduleSyncCompletionUUID:d forFunction:function withBlock:block];
  }

  else
  {
    [(SKHelperClient *)self _scheduleCompletionUUID:d progress:0 forFunction:function withBlock:block];
    v6 = 0;
  }

  return v6;
}

- (id)_parameters:(id)_parameters valueAtIndex:(unint64_t)index
{
  _parametersCopy = _parameters;
  if ([_parametersCopy count] > index)
  {
    v6 = [_parametersCopy objectAtIndex:index];
    null = [MEMORY[0x277CBEB68] null];
    v8 = [v6 isEqual:null];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (BOOL)_isRecachingDiskAbuse:(id)abuse
{
  v25[2] = *MEMORY[0x277D85DE8];
  minimalDictionaryRepresentation = [abuse minimalDictionaryRepresentation];
  recacheAbuseLimiterInfo = [(SKHelperClient *)self recacheAbuseLimiterInfo];
  v6 = [recacheAbuseLimiterInfo objectForKey:minimalDictionaryRepresentation];

  if (v6)
  {
    date3 = [v6 objectForKey:@"FirstCallTime"];
    v8 = [v6 objectForKey:@"CallCount"];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:date3];
    v11 = v10;

    if (v11 >= 60.0)
    {
      v24[0] = @"FirstCallTime";
      date2 = [MEMORY[0x277CBEAA8] date];
      v24[1] = @"CallCount";
      v25[0] = date2;
      v25[1] = &unk_287C9A670;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

      v12 = 0;
      v6 = v14;
    }

    else
    {
      v12 = [v8 integerValue] > 3;
    }
  }

  else
  {
    v22[0] = @"FirstCallTime";
    date3 = [MEMORY[0x277CBEAA8] date];
    v22[1] = @"CallCount";
    v23[0] = date3;
    v23[1] = &unk_287C9A670;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v12 = 0;
  }

  v15 = [v6 objectForKey:@"CallCount"];
  integerValue = [v15 integerValue];
  v17 = [v6 mutableCopy];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
  [v17 setObject:v18 forKey:@"CallCount"];

  recacheAbuseLimiterInfo2 = [(SKHelperClient *)self recacheAbuseLimiterInfo];
  [recacheAbuseLimiterInfo2 setObject:v17 forKey:minimalDictionaryRepresentation];

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

void __67__SKHelperClient_unmountDisk_options_blocking_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) _parameters:v8 valueAtIndex:0];
    (*(*(a1 + 48) + 16))();
  }

  v4 = [*(a1 + 32) completionHandlers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v5 semaphore];
  v7 = v6;
  if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

void __67__SKHelperClient_unmountDisk_options_blocking_withCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  [v2 requestWithUUID:v3 didCompleteWithResult:{v6, v8, v9}];

  v7 = *MEMORY[0x277D85DE8];
}

void __61__SKHelperClient_mountDisk_options_blocking_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) _parameters:v8 valueAtIndex:0];
    (*(*(a1 + 48) + 16))();
  }

  v4 = [*(a1 + 32) completionHandlers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v5 semaphore];
  v7 = v6;
  if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

void __61__SKHelperClient_mountDisk_options_blocking_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  [v2 requestWithUUID:v3 didCompleteWithResult:{v6, v8, v9}];

  v7 = *MEMORY[0x277D85DE8];
}

void __57__SKHelperClient_ejectDisk_blocking_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) _parameters:v8 valueAtIndex:0];
    (*(*(a1 + 48) + 16))();
  }

  v4 = [*(a1 + 32) completionHandlers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v5 semaphore];
  v7 = v6;
  if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

void __57__SKHelperClient_ejectDisk_blocking_withCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  [v2 requestWithUUID:v3 didCompleteWithResult:{v6, v8, v9}];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)eraseWithEraser:(id)eraser completionBlock:(id)block
{
  blockCopy = block;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke;
  v15[3] = &unk_279D1FD70;
  v15[4] = self;
  v7 = blockCopy;
  v16 = v7;
  eraserCopy = eraser;
  v9 = [(SKHelperClient *)self remoteObjectProxyWithSync:0 errorHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke_3;
  v13[3] = &unk_279D1FD98;
  v13[4] = self;
  v14 = v7;
  v10 = v7;
  v11 = [v9 eraseWithEraser:eraserCopy reply:v13];

  return v11;
}

void __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke_2;
  v7[3] = &unk_279D1F678;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _parameters:v4 valueAtIndex:0];
  v6 = [*(a1 + 32) _parameters:v4 valueAtIndex:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = +[SKManager sharedManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke_4;
    v9[3] = &unk_279D1FB40;
    v11 = *(a1 + 40);
    v10 = v6;
    v8 = [*(a1 + 32) callbackQueue];
    [v7 knownDiskForDictionary:v5 notify:v9 onQueue:v8];
  }
}

void __50__SKHelperClient_eraseWithEraser_completionBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SKGetOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SKHelperClient eraseWithEraser:completionBlock:]_block_invoke_4";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_26BBB8000, v4, OS_LOG_TYPE_DEFAULT, "%s: Erase completed successfully: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (id)resize:(id)resize toSize:(unint64_t)size completionBlock:(id)block
{
  blockCopy = block;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__SKHelperClient_resize_toSize_completionBlock___block_invoke;
  v18[3] = &unk_279D1FD70;
  v18[4] = self;
  v9 = blockCopy;
  v19 = v9;
  resizeCopy = resize;
  v11 = [(SKHelperClient *)self remoteObjectProxyWithSync:0 errorHandler:v18];
  minimalDictionaryRepresentation = [resizeCopy minimalDictionaryRepresentation];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__SKHelperClient_resize_toSize_completionBlock___block_invoke_3;
  v16[3] = &unk_279D1FD70;
  v16[4] = self;
  v17 = v9;
  v13 = v9;
  v14 = [v11 resizeDisk:minimalDictionaryRepresentation size:size reply:v16];

  return v14;
}

void __48__SKHelperClient_resize_toSize_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SKHelperClient_resize_toSize_completionBlock___block_invoke_2;
  v7[3] = &unk_279D1F678;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __48__SKHelperClient_resize_toSize_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SKHelperClient_resize_toSize_completionBlock___block_invoke_4;
  v7[3] = &unk_279D1F678;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

@end