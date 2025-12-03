@interface SCKDatabase
- (BOOL)t_flushChangesWithTimeout:(double)timeout;
- (SCKDatabase)initWithSchema:(id)schema store:(id)store features:(int64_t)features mergeHandlers:(id)handlers containerProxy:(id)proxy;
- (id)_emptyZonesNeedingFirstSync;
- (id)_sanitizeErrorForClients:(id)clients;
- (id)_zoneWithSchema:(id)schema zoneStore:(id)store;
- (id)_zonesNeedingFetch;
- (id)_zonesNeedingSave;
- (void)_createZoneInContainerWithSchema:(id)schema completion:(id)completion;
- (void)_deleteAndRecreateAllZonesWithCompletion:(id)completion;
- (void)_enqueueStartupSequenceWithFeatures:(int64_t)features;
- (void)_fetchDatabaseAndZoneChangesWithCompletion:(id)completion;
- (void)_fetchDatabaseChangesWithCompletion:(id)completion;
- (void)_fetchZoneChangesForZones:(id)zones completion:(id)completion;
- (void)_recoverFromIdentityLossWithCompletion:(id)completion;
- (void)_reloadSnapshotOfZone:(id)zone fromStore:(id)store;
- (void)_runCKOperation:(id)operation;
- (void)_saveZoneToContainer:(id)container allowRecoveryAttempt:(BOOL)attempt completion:(id)completion;
- (void)_saveZonesToContainer:(id)container allowRecoveryAttempt:(BOOL)attempt completion:(id)completion;
- (void)_squashZoneForMerge:(id)merge zoneStore:(id)store;
- (void)addObserver:(id)observer forZone:(id)zone;
- (void)checkSyncingEnabledWithCompletion:(id)completion;
- (void)handleRemoteNotification:(id)notification completion:(id)completion;
- (void)modifyContentsOfZone:(id)zone withCommand:(id)command;
- (void)pollForChangesWithCondition:(id)condition completion:(id)completion;
- (void)readContentsOfZone:(id)zone withBlock:(id)block;
- (void)removeObserver:(id)observer forZone:(id)zone;
- (void)savePendingChangesToServerWithCompletion:(id)completion;
- (void)synchronize;
@end

@implementation SCKDatabase

- (SCKDatabase)initWithSchema:(id)schema store:(id)store features:(int64_t)features mergeHandlers:(id)handlers containerProxy:(id)proxy
{
  v60 = *MEMORY[0x277D85DE8];
  schemaCopy = schema;
  storeCopy = store;
  handlersCopy = handlers;
  proxyCopy = proxy;
  v58.receiver = self;
  v58.super_class = SCKDatabase;
  v17 = [(SCKDatabase *)&v58 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_schema, schema);
    v19 = [handlersCopy copy];
    mergeHandlers = v18->_mergeHandlers;
    v18->_mergeHandlers = v19;

    v21 = [[SCKStartupQueue alloc] initWithDeferredStartup:1];
    startupQueue = v18->_startupQueue;
    v18->_startupQueue = v21;

    v23 = objc_alloc_init(SCKAsyncSerialQueue);
    ckSyncQueue = v18->_ckSyncQueue;
    v18->_ckSyncQueue = v23;

    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create("SCKDatabase.callback", v25);
    callbackQueue = v18->_callbackQueue;
    v18->_callbackQueue = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observersByZoneName = v18->_observersByZoneName;
    v18->_observersByZoneName = v28;

    v18->_observersLock._os_unfair_lock_opaque = 0;
    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    zoneSnapshotsByZoneName = v18->_zoneSnapshotsByZoneName;
    v18->_zoneSnapshotsByZoneName = v30;

    if ([storeCopy conformsToProtocol:&unk_287C96D78])
    {
      v32 = storeCopy;
    }

    else
    {
      v32 = [[SCKFauxDatabaseStoreCoordinator alloc] initWithDatabaseStore:storeCopy];
    }

    storeCoordinator = v18->_storeCoordinator;
    v18->_storeCoordinator = v32;

    v52 = handlersCopy;
    v53 = storeCopy;
    v51 = proxyCopy;
    if (proxyCopy)
    {
      v34 = proxyCopy;
      container = v18->_container;
      v18->_container = v34;
    }

    else
    {
      container = [schemaCopy containerID];
      v36 = objc_alloc_init(MEMORY[0x277CBC230]);
      [v36 setCaptureResponseHTTPHeaders:1];
      [v36 setUseZoneWidePCS:1];
      v37 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:container options:v36];
      v38 = v18->_container;
      v18->_container = v37;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v39 = schemaCopy;
    zoneSchemas = [schemaCopy zoneSchemas];
    v41 = [zoneSchemas countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v55;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v55 != v43)
          {
            objc_enumerationMutation(zoneSchemas);
          }

          v45 = *(*(&v54 + 1) + 8 * i);
          v46 = [[SCKZoneSnapshot alloc] initWithZoneSchema:v45 records:0];
          zoneSnapshotsByZoneName = [(SCKDatabase *)v18 zoneSnapshotsByZoneName];
          zoneName = [v45 zoneName];
          [zoneSnapshotsByZoneName setObject:v46 forKeyedSubscript:zoneName];
        }

        v42 = [zoneSchemas countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v42);
    }

    storeCoordinator = [(SCKDatabase *)v18 storeCoordinator];
    [storeCoordinator addObserver:v18];

    [(SCKDatabase *)v18 _enqueueStartupSequenceWithFeatures:features];
    schemaCopy = v39;
    handlersCopy = v52;
    storeCopy = v53;
    proxyCopy = v51;
  }

  return v18;
}

- (void)readContentsOfZone:(id)zone withBlock:(id)block
{
  zoneCopy = zone;
  blockCopy = block;
  schema = [(SCKDatabase *)self schema];
  v9 = [schema schemaForZoneName:zoneCopy];

  if (v9)
  {
    startupQueue = [(SCKDatabase *)self startupQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__SCKDatabase_readContentsOfZone_withBlock___block_invoke_3;
    v14[3] = &unk_279D16980;
    v14[4] = self;
    v15 = v9;
    v17 = blockCopy;
    v16 = zoneCopy;
    v11 = blockCopy;
    [startupQueue executeAfterStartup:v14];

    v12 = v15;
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __44__SCKDatabase_readContentsOfZone_withBlock___block_invoke;
    v18[3] = &unk_279D15ED8;
    v18[4] = self;
    v19 = blockCopy;
    v13 = blockCopy;
    __44__SCKDatabase_readContentsOfZone_withBlock___block_invoke(v18);
    v12 = v19;
  }
}

void __44__SCKDatabase_readContentsOfZone_withBlock___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__SCKDatabase_readContentsOfZone_withBlock___block_invoke_2;
    block[3] = &unk_279D15FA0;
    v4 = *(a1 + 40);
    dispatch_async(v2, block);
  }
}

void __44__SCKDatabase_readContentsOfZone_withBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SCKErrorDomain" code:2 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __44__SCKDatabase_readContentsOfZone_withBlock___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) storeCoordinator];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SCKDatabase_readContentsOfZone_withBlock___block_invoke_4;
  v6[3] = &unk_279D16958;
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v8 = v4;
  v6[4] = v5;
  v7 = *(a1 + 48);
  [v2 readZone:v3 withAccessor:v6];
}

void __44__SCKDatabase_readContentsOfZone_withBlock___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__SCKDatabase_readContentsOfZone_withBlock___block_invoke_5;
    block[3] = &unk_279D15F28;
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8 = v3;
    block[4] = v4;
    v7 = v5;
    dispatch_async(v2, block);
  }
}

void __44__SCKDatabase_readContentsOfZone_withBlock___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) zoneSnapshotsByZoneName];
  v3 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  (*(v2 + 16))(v2, v3, 0);
}

- (void)modifyContentsOfZone:(id)zone withCommand:(id)command
{
  zoneCopy = zone;
  commandCopy = command;
  schema = [(SCKDatabase *)self schema];
  v9 = [schema schemaForZoneName:zoneCopy];

  if (v9)
  {
    startupQueue = [(SCKDatabase *)self startupQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__SCKDatabase_modifyContentsOfZone_withCommand___block_invoke_30;
    v12[3] = &unk_279D15FC8;
    v12[4] = self;
    v13 = v9;
    v14 = commandCopy;
    [startupQueue executeAfterStartup:v12];

    v11 = v13;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__SCKDatabase_modifyContentsOfZone_withCommand___block_invoke;
    v15[3] = &unk_279D15BF0;
    v16 = zoneCopy;
    __48__SCKDatabase_modifyContentsOfZone_withCommand___block_invoke(v15);
    v11 = v16;
  }
}

void __48__SCKDatabase_modifyContentsOfZone_withCommand___block_invoke(uint64_t a1)
{
  v2 = SCKDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48__SCKDatabase_modifyContentsOfZone_withCommand___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void __48__SCKDatabase_modifyContentsOfZone_withCommand___block_invoke_30(uint64_t a1)
{
  v2 = [*(a1 + 32) storeCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__SCKDatabase_modifyContentsOfZone_withCommand___block_invoke_2;
  v11[3] = &unk_279D169A8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v4;
  v13 = v5;
  v14 = v6;
  [v2 writeZone:v3 withAccessor:v11];

  v7 = [*(a1 + 32) ckSyncQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SCKDatabase_modifyContentsOfZone_withCommand___block_invoke_3;
  v9[3] = &unk_279D169D0;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [v7 enqueueBlock:v9];
}

void __48__SCKDatabase_modifyContentsOfZone_withCommand___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v6 count:1];
  [v4 addPendingCommands:{v5, v6, v7}];

  [*(a1 + 40) _reloadSnapshotOfZone:*(a1 + 48) fromStore:v4];
}

void __48__SCKDatabase_modifyContentsOfZone_withCommand___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__SCKDatabase_modifyContentsOfZone_withCommand___block_invoke_5;
    v8[3] = &unk_279D165B8;
    v6 = v9;
    v9[0] = v3;
    v7 = v3;
    [v5 _saveZoneToContainer:v4 allowRecoveryAttempt:1 completion:v8];
  }

  else
  {
    v9[1] = MEMORY[0x277D85DD0];
    v9[2] = 3221225472;
    v9[3] = __48__SCKDatabase_modifyContentsOfZone_withCommand___block_invoke_4;
    v9[4] = &unk_279D15FA0;
    v6 = &v10;
    v10 = v3;
    v3[2](v3);
  }
}

- (void)addObserver:(id)observer forZone:(id)zone
{
  observerCopy = observer;
  zoneCopy = zone;
  os_unfair_lock_lock(&self->_observersLock);
  observersByZoneName = [(SCKDatabase *)self observersByZoneName];
  v8 = [observersByZoneName objectForKeyedSubscript:zoneCopy];

  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    observersByZoneName2 = [(SCKDatabase *)self observersByZoneName];
    [observersByZoneName2 setObject:v8 forKeyedSubscript:zoneCopy];
  }

  [v8 addObject:observerCopy];
  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeObserver:(id)observer forZone:(id)zone
{
  zoneCopy = zone;
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  observersByZoneName = [(SCKDatabase *)self observersByZoneName];
  v9 = [observersByZoneName objectForKeyedSubscript:zoneCopy];

  [v9 removeObject:observerCopy];
  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)handleRemoteNotification:(id)notification completion:(id)completion
{
  notificationCopy = notification;
  completionCopy = completion;
  startupQueue = [(SCKDatabase *)self startupQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__SCKDatabase_handleRemoteNotification_completion___block_invoke;
  v11[3] = &unk_279D15F00;
  v12 = notificationCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = notificationCopy;
  v10 = completionCopy;
  [startupQueue executeAfterStartup:v11];
}

void __51__SCKDatabase_handleRemoteNotification_completion___block_invoke(id *a1)
{
  v2 = [a1[4] ckSyncQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_2;
  v3[3] = &unk_279D16A68;
  v3[4] = a1[4];
  v5 = a1[6];
  v4 = a1[5];
  [v2 enqueueBlock:v3];
}

void __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v4 = [MEMORY[0x277CBC4C0] notificationFromRemoteNotificationDictionary:*(a1 + 40)];
    if ([v4 notificationType] == 4 && (objc_msgSend(v4, "subscriptionID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"DatabaseSubscription"), v5, (v6 & 1) != 0))
    {
      v7 = [*(a1 + 32) storeCoordinator];
      [v7 writeWithAccessor:&__block_literal_global_38];

      v8 = *(a1 + 32);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_8;
      v17[3] = &unk_279D16A40;
      v9 = &v18;
      v18 = v3;
      v10 = &v19;
      v11 = *(a1 + 48);
      v12 = *(a1 + 32);
      v19 = v11;
      v17[4] = v12;
      [v8 _fetchDatabaseAndZoneChangesWithCompletion:v17];
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_5;
      v20[3] = &unk_279D169F8;
      v9 = &v21;
      v21 = v3;
      v10 = &v22;
      v15 = *(a1 + 48);
      v16 = *(a1 + 32);
      v22 = v15;
      v20[4] = v16;
      __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_5(v20);
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_3;
    v23[3] = &unk_279D169F8;
    v24 = v3;
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    v25 = v13;
    v23[4] = v14;
    __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_3(v23);

    v4 = v24;
  }
}

void __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_4;
    block[3] = &unk_279D15FA0;
    v4 = *(a1 + 48);
    dispatch_async(v2, block);
  }
}

void __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_6;
    block[3] = &unk_279D15FA0;
    v4 = *(a1 + 48);
    dispatch_async(v2, block);
  }
}

void __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v3 setLastDirtyDate:v4];
}

void __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v4 = [*(a1 + 32) callbackQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__SCKDatabase_handleRemoteNotification_completion___block_invoke_9;
    v5[3] = &unk_279D15ED8;
    v7 = *(a1 + 48);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)pollForChangesWithCondition:(id)condition completion:(id)completion
{
  conditionCopy = condition;
  completionCopy = completion;
  startupQueue = [(SCKDatabase *)self startupQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke;
  v11[3] = &unk_279D15F00;
  v12 = conditionCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = conditionCopy;
  v10 = completionCopy;
  [startupQueue executeAfterStartup:v11];
}

void __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke(id *a1)
{
  v2 = [a1[4] ckSyncQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke_2;
  v3[3] = &unk_279D16A68;
  v3[4] = a1[4];
  v5 = a1[6];
  v4 = a1[5];
  [v2 enqueueBlock:v3];
}

void __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] status] == 1)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v4 = [a1[4] storeCoordinator];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke_5;
    v17[3] = &unk_279D16A90;
    v18 = a1[5];
    v19 = &v20;
    [v4 readWithAccessor:v17];

    if (*(v21 + 24) == 1)
    {
      v5 = a1[4];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke_6;
      v14[3] = &unk_279D16A40;
      v15 = v3;
      v6 = a1[6];
      v7 = a1[4];
      v16 = v6;
      v14[4] = v7;
      [v5 _fetchDatabaseAndZoneChangesWithCompletion:v14];
      v8 = &v15;
      v9 = v16;
    }

    else
    {
      v3[2](v3);
      if (!a1[6])
      {
LABEL_8:

        _Block_object_dispose(&v20, 8);
        goto LABEL_9;
      }

      v9 = [a1[4] callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke_8;
      block[3] = &unk_279D15FA0;
      v8 = &v13;
      v13 = a1[6];
      dispatch_async(v9, block);
    }

    goto LABEL_8;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke_3;
  v24[3] = &unk_279D169F8;
  v25 = v3;
  v10 = a1[6];
  v11 = a1[4];
  v26 = v10;
  v24[4] = v11;
  __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke_3(v24);

LABEL_9:
}

void __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke_4;
    block[3] = &unk_279D15FA0;
    v4 = *(a1 + 48);
    dispatch_async(v2, block);
  }
}

void __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 lastSyncDate];
  if (!v3 || (v4 = v3, [MEMORY[0x277CBEAA8] date], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "lastSyncDate"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "timeIntervalSinceDate:", v6), v8 = v7, objc_msgSend(*(a1 + 32), "minIntervalSinceLastSync"), v10 = v9, v6, v5, v4, v8 >= v10))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v4 = [*(a1 + 32) callbackQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__SCKDatabase_pollForChangesWithCondition_completion___block_invoke_7;
    v5[3] = &unk_279D15ED8;
    v7 = *(a1 + 48);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)checkSyncingEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  startupQueue = [(SCKDatabase *)self startupQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SCKDatabase_checkSyncingEnabledWithCompletion___block_invoke;
  v7[3] = &unk_279D160E0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [startupQueue executeAfterStartup:v7];
}

void __49__SCKDatabase_checkSyncingEnabledWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ckSyncQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SCKDatabase_checkSyncingEnabledWithCompletion___block_invoke_2;
  v4[3] = &unk_279D16AB8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 enqueueBlock:v4];
}

void __49__SCKDatabase_checkSyncingEnabledWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a2);
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) callbackQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__SCKDatabase_checkSyncingEnabledWithCompletion___block_invoke_3;
    v5[3] = &unk_279D15ED8;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    dispatch_async(v3, v5);
  }
}

uint64_t __49__SCKDatabase_checkSyncingEnabledWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) status] == 1;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)savePendingChangesToServerWithCompletion:(id)completion
{
  completionCopy = completion;
  startupQueue = [(SCKDatabase *)self startupQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SCKDatabase_savePendingChangesToServerWithCompletion___block_invoke;
  v7[3] = &unk_279D160E0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [startupQueue executeAfterStartup:v7];
}

void __56__SCKDatabase_savePendingChangesToServerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ckSyncQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SCKDatabase_savePendingChangesToServerWithCompletion___block_invoke_2;
  v4[3] = &unk_279D16AE0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 enqueueBlock:v4];
}

void __56__SCKDatabase_savePendingChangesToServerWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v4 = *(a1 + 32);
    v5 = [v4 schema];
    v6 = [v5 zoneSchemas];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__SCKDatabase_savePendingChangesToServerWithCompletion___block_invoke_5;
    v15[3] = &unk_279D16A40;
    v7 = &v16;
    v16 = v3;
    v8 = &v17;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v17 = v9;
    v15[4] = v10;
    v11 = v3;
    [v4 _saveZonesToContainer:v6 allowRecoveryAttempt:1 completion:v15];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __56__SCKDatabase_savePendingChangesToServerWithCompletion___block_invoke_3;
    v18[3] = &unk_279D169F8;
    v7 = &v19;
    v19 = v3;
    v8 = &v20;
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v20 = v12;
    v18[4] = v13;
    v14 = v3;
    __56__SCKDatabase_savePendingChangesToServerWithCompletion___block_invoke_3(v18);
  }
}

void __56__SCKDatabase_savePendingChangesToServerWithCompletion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SCKDatabase_savePendingChangesToServerWithCompletion___block_invoke_4;
    block[3] = &unk_279D15FA0;
    v4 = *(a1 + 48);
    dispatch_async(v2, block);
  }
}

void __56__SCKDatabase_savePendingChangesToServerWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SCKErrorDomain" code:3 userInfo:MEMORY[0x277CBEC10]];
  (*(v1 + 16))(v1, v2);
}

void __56__SCKDatabase_savePendingChangesToServerWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v4 = [*(a1 + 32) callbackQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__SCKDatabase_savePendingChangesToServerWithCompletion___block_invoke_6;
    v5[3] = &unk_279D15ED8;
    v7 = *(a1 + 48);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)synchronize
{
  storeCoordinator = [(SCKDatabase *)self storeCoordinator];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__SCKDatabase_synchronize__block_invoke;
  v4[3] = &unk_279D16B08;
  v4[4] = self;
  [storeCoordinator reloadWithAccessor:v4];
}

void __26__SCKDatabase_synchronize__block_invoke(uint64_t a1, void *a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [*(a1 + 32) schema];
    v7 = [v6 zoneSchemas];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = *(a1 + 32);
          v14 = [v5 zoneStoreForSchema:v12];
          [v13 _reloadSnapshotOfZone:v12 fromStore:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)t_flushChangesWithTimeout:(double)timeout
{
  v5 = dispatch_semaphore_create(0);
  startupQueue = [(SCKDatabase *)self startupQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__SCKDatabase_t_flushChangesWithTimeout___block_invoke;
  v10[3] = &unk_279D16520;
  v10[4] = self;
  v11 = v5;
  v7 = v5;
  [startupQueue executeAfterStartup:v10];

  v8 = dispatch_time(0, (timeout * 1000000000.0));
  LOBYTE(v5) = dispatch_semaphore_wait(v7, v8) == 0;

  return v5;
}

void __41__SCKDatabase_t_flushChangesWithTimeout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ckSyncQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__SCKDatabase_t_flushChangesWithTimeout___block_invoke_2;
  v3[3] = &unk_279D16B30;
  v4 = *(a1 + 40);
  [v2 enqueueBlock:v3];
}

void __41__SCKDatabase_t_flushChangesWithTimeout___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  dispatch_semaphore_signal(v2);
  v3[2]();
}

- (void)_enqueueStartupSequenceWithFeatures:(int64_t)features
{
  startupQueue = [(SCKDatabase *)self startupQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke;
  v18[3] = &unk_279D16BD0;
  v18[4] = self;
  v18[5] = features;
  [startupQueue enqueueStartupBlock:v18];

  startupQueue2 = [(SCKDatabase *)self startupQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_53;
  v17[3] = &unk_279D16B30;
  v17[4] = self;
  [startupQueue2 enqueueStartupBlock:v17];

  if ((features & 4) != 0)
  {
    startupQueue3 = [(SCKDatabase *)self startupQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_55;
    v16[3] = &unk_279D16B30;
    v16[4] = self;
    [startupQueue3 enqueueStartupBlock:v16];
  }

  startupQueue4 = [(SCKDatabase *)self startupQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_3_57;
  v15[3] = &unk_279D16B30;
  v15[4] = self;
  [startupQueue4 enqueueStartupBlock:v15];

  startupQueue5 = [(SCKDatabase *)self startupQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_8;
  v14[3] = &unk_279D15BF0;
  v14[4] = self;
  [startupQueue5 executeAfterStartup:v14];

  startupQueue6 = [(SCKDatabase *)self startupQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_13;
  v13[3] = &unk_279D15BF0;
  v13[4] = self;
  [startupQueue6 executeAfterStartup:v13];

  if ((features & 2) != 0)
  {
    startupQueue7 = [(SCKDatabase *)self startupQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_18;
    v12[3] = &unk_279D15BF0;
    v12[4] = self;
    [startupQueue7 executeAfterStartup:v12];
  }
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a2);
  v3 = [*(a1 + 32) ckSyncQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_2;
  v5[3] = &unk_279D16BD0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v5[5] = v4;
  [v3 enqueueBlock:v5];
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_3;
  v18[3] = &unk_279D16B58;
  v18[4] = *(a1 + 32);
  v4 = MEMORY[0x26D68CA60](v18);
  v5 = v4;
  if (*(a1 + 40))
  {
    v9 = [*(a1 + 32) container];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_51;
    v12[3] = &unk_279D16BA8;
    v10 = *(a1 + 32);
    v6 = &v13;
    v12[4] = v10;
    v13 = v5;
    v14 = v3;
    v11 = v5;
    [v9 accountInfoWithCompletionHandler:v12];

    v8 = v14;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_50;
    v15[3] = &unk_279D16B80;
    v6 = &v16;
    v16 = v4;
    v17 = v3;
    v7 = v5;
    __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_50(v15);
    v8 = v17;
  }
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_3(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = SCKDatabaseLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"disabled";
    if (a2)
    {
      v5 = @"enabled";
    }

    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_26BAAD000, v4, OS_LOG_TYPE_DEFAULT, "finished database startup with syncing %{public}@", &v9, 0xCu);
  }

  if (a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [*(a1 + 32) setStatus:v6];
  v7 = [*(a1 + 32) storeCoordinator];
  v8 = [v7 underlyingStore];
  [v8 setCloudBackupEnabled:a2 ^ 1u];
}

uint64_t __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_50(uint64_t a1)
{
  v2 = SCKDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26BAAD000, v2, OS_LOG_TYPE_DEFAULT, "database does not have syncing feature enabled", v4, 2u);
  }

  (*(*(a1 + 32) + 16))();
  return (*(*(a1 + 40) + 16))();
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SCKDatabaseLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_51_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) schema];
    v9 = [v8 requiresDeviceToDeviceEncryption];

    v10 = *(a1 + 40);
    v11 = [v5 accountStatus];
    if (v9)
    {
      if (v11 == 1)
      {
        v12 = [v5 supportsDeviceToDeviceEncryption];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = v11 == 1;
    }

    (*(v10 + 16))(v10, v12);
  }

  (*(*(a1 + 48) + 16))();
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) storeCoordinator];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_2_54;
  v6[3] = &unk_279D16BF8;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 readWithAccessor:v6];
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_2_54(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [*(a1 + 32) schema];
  v5 = [v4 zoneSchemas];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v46 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v33;
    *&v7 = 138544386;
    v25 = v7;
    v26 = a1;
    v27 = v3;
    do
    {
      v10 = 0;
      v28 = v8;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        v12 = *(a1 + 32);
        v13 = [v3 zoneStoreForSchema:{v11, v25}];
        [v12 _reloadSnapshotOfZone:v11 fromStore:v13];

        v14 = [v3 zoneStoreForSchema:v11];
        v15 = [*(a1 + 32) zoneSnapshotsByZoneName];
        v16 = [v11 zoneName];
        v17 = [v15 objectForKeyedSubscript:v16];

        v18 = SCKDatabaseLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v11 zoneName];
          v31 = [v14 serverRecords];
          v20 = [v31 count];
          v30 = [v17 allRecords];
          v21 = v9;
          v22 = [v30 count];
          v23 = [v14 pendingCommands];
          v24 = [v17 descriptionOfContents];
          *buf = v25;
          v37 = v19;
          v38 = 2048;
          v39 = v20;
          v8 = v28;
          v40 = 2048;
          v41 = v22;
          v9 = v21;
          v42 = 2114;
          v43 = v23;
          v44 = 2114;
          v45 = v24;
          _os_log_impl(&dword_26BAAD000, v18, OS_LOG_TYPE_DEFAULT, "loaded zone %{public}@ from disk with %lu server records, %lu client records, pending commands: %{public}@, and client contents: %{public}@", buf, 0x34u);

          a1 = v26;
          v3 = v27;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 40) + 16))();
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeCoordinator];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_2_56;
  v6[3] = &unk_279D16C20;
  v6[4] = *(a1 + 32);
  [v5 writeWithAccessor:v6];

  v4[2](v4);
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_2_56(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 32) schema];
  v5 = [v4 zoneSchemas];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = *(a1 + 32);
        v12 = [v3 zoneStoreForSchema:v10];
        [v11 _squashZoneForMerge:v10 zoneStore:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_3_57(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _emptyZonesNeedingFirstSync];
  if ([v4 count])
  {
    v5 = [*(a1 + 32) ckSyncQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_5;
    v8[3] = &unk_279D16A68;
    v8[4] = *(a1 + 32);
    v10 = v3;
    v9 = v4;
    v6 = v3;
    [v5 enqueueBlock:v8];

    v7 = v10;
  }

  else
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_4;
    v14 = &unk_279D15FA0;
    v15 = v3;
    v3[2](v3);
    v7 = v3;
  }
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_7;
    v10[3] = &unk_279D16C48;
    v6 = &v11;
    v11 = v3;
    v7 = &v12;
    v12 = *(a1 + 48);
    v8 = v3;
    [v4 _fetchZoneChangesForZones:v5 completion:v10];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_6;
    v13[3] = &unk_279D16B80;
    v6 = &v14;
    v14 = v3;
    v7 = &v15;
    v15 = *(a1 + 48);
    v9 = v3;
    __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_6(v13);
  }
}

uint64_t __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_7(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) _zonesNeedingFetch];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) ckSyncQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_10;
    v4[3] = &unk_279D169D0;
    v4[4] = *(a1 + 32);
    v5 = v2;
    [v3 enqueueBlock:v4];
  }
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_12;
    v8[3] = &unk_279D165B8;
    v6 = v9;
    v9[0] = v3;
    v7 = v3;
    [v5 _fetchZoneChangesForZones:v4 completion:v8];
  }

  else
  {
    v9[1] = MEMORY[0x277D85DD0];
    v9[2] = 3221225472;
    v9[3] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_11;
    v9[4] = &unk_279D15FA0;
    v6 = &v10;
    v10 = v3;
    v3[2](v3);
  }
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_13(uint64_t a1)
{
  v2 = [*(a1 + 32) _zonesNeedingSave];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) ckSyncQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_15;
    v4[3] = &unk_279D169D0;
    v4[4] = *(a1 + 32);
    v5 = v2;
    [v3 enqueueBlock:v4];
  }
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_17;
    v8[3] = &unk_279D165B8;
    v6 = v9;
    v9[0] = v3;
    v7 = v3;
    [v5 _saveZonesToContainer:v4 allowRecoveryAttempt:1 completion:v8];
  }

  else
  {
    v9[1] = MEMORY[0x277D85DD0];
    v9[2] = 3221225472;
    v9[3] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_16;
    v9[4] = &unk_279D15FA0;
    v6 = &v10;
    v10 = v3;
    v3[2](v3);
  }
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_18(uint64_t a1)
{
  v2 = [*(a1 + 32) ckSyncQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_19;
  v3[3] = &unk_279D16B30;
  v3[4] = *(a1 + 32);
  [v2 enqueueBlock:v3];
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_19(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBC4D0]);
    [v4 setShouldSendContentAvailable:1];
    v5 = [objc_alloc(MEMORY[0x277CBC2A0]) initWithSubscriptionID:@"DatabaseSubscription"];
    [v5 setNotificationInfo:v4];
    v6 = objc_alloc_init(MEMORY[0x277CBC4B0]);
    v9[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v6 setSubscriptionsToSave:v7];

    [v6 setModifySubscriptionsCompletionBlock:&__block_literal_global_67];
    [*(a1 + 32) _runCKOperation:v6];
    v3[2](v3);
  }

  else
  {
    v8 = v3;
    (v3[2])();
    v4 = v8;
  }
}

void __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_21(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if (v4)
  {
    v5 = SCKDatabaseLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__SCKDatabase__enqueueStartupSequenceWithFeatures___block_invoke_21_cold_1();
    }
  }
}

- (void)_fetchDatabaseAndZoneChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SCKDatabase__fetchDatabaseAndZoneChangesWithCompletion___block_invoke;
  v6[3] = &unk_279D16C90;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(SCKDatabase *)self _fetchDatabaseChangesWithCompletion:v6];
}

void __58__SCKDatabase__fetchDatabaseAndZoneChangesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__SCKDatabase__fetchDatabaseAndZoneChangesWithCompletion___block_invoke_2;
    v9[3] = &unk_279D15ED8;
    v4 = &v11;
    v11 = *(a1 + 40);
    v10 = v3;
    __58__SCKDatabase__fetchDatabaseAndZoneChangesWithCompletion___block_invoke_2(v9);
    v5 = v10;
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = [v6 _zonesNeedingFetch];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__SCKDatabase__fetchDatabaseAndZoneChangesWithCompletion___block_invoke_3;
    v7[3] = &unk_279D165B8;
    v4 = &v8;
    v8 = *(a1 + 40);
    [v6 _fetchZoneChangesForZones:v5 completion:v7];
  }
}

- (void)_fetchDatabaseChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = SCKDatabaseLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BAAD000, v5, OS_LOG_TYPE_DEFAULT, "will fetch database changes", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  storeCoordinator = [(SCKDatabase *)self storeCoordinator];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke;
  v18[3] = &unk_279D16CB8;
  v18[4] = buf;
  [storeCoordinator readWithAccessor:v18];

  v7 = objc_alloc_init(MEMORY[0x277CBC388]);
  [v7 setPreviousServerChangeToken:*(v20 + 5)];
  [v7 setFetchAllChanges:1];
  array = [MEMORY[0x277CBEB18] array];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke_2;
  v16[3] = &unk_279D16CE0;
  v16[4] = self;
  v9 = array;
  v17 = v9;
  [v7 setRecordZoneWithIDChangedBlock:v16];
  [v7 setRecordZoneWithIDWasPurgedBlock:&__block_literal_global_74];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke_2_75;
  v12[3] = &unk_279D16D78;
  v12[4] = self;
  v15 = buf;
  v10 = v9;
  v13 = v10;
  v11 = completionCopy;
  v14 = v11;
  [v7 setFetchDatabaseChangesCompletionBlock:v12];
  [(SCKDatabase *)self _runCKOperation:v7];

  _Block_object_dispose(buf, 8);
}

uint64_t __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serverChangeToken];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SCKDatabaseLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 zoneName];
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_26BAAD000, v4, OS_LOG_TYPE_DEFAULT, "fetching database changes reported a change to zone %{public}@", buf, 0xCu);
  }

  v6 = [*(a1 + 32) schema];
  v7 = [v3 zoneName];
  v8 = [v6 schemaForZoneName:v7];

  if (v8)
  {
    [*(a1 + 40) addObject:v8];
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke_70;
    v9[3] = &unk_279D15BF0;
    v10 = v3;
    __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke_70(v9);
  }
}

void __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke_70(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = SCKDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_26BAAD000, v2, OS_LOG_TYPE_DEFAULT, "ignoring change to unknown zone: %{public}@", &v4, 0xCu);
  }
}

void __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke_2_75(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v7;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (v7)
  {
    v9 = [v7 sck_hasUnderlyingErrorCode:21];
    v10 = SCKDatabaseLog();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26BAAD000, v11, OS_LOG_TYPE_DEFAULT, "encountered expired change token for database", buf, 2u);
      }

      v11 = [*(a1 + 32) storeCoordinator];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke_78;
      v14[3] = &unk_279D16D50;
      v14[4] = *(a1 + 56);
      v14[5] = &v21;
      [v11 writeWithAccessor:v14];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke_2_75_cold_1();
    }
  }

  else
  {
    v12 = SCKDatabaseLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BAAD000, v12, OS_LOG_TYPE_DEFAULT, "successfully fetched database changes", buf, 2u);
    }

    v13 = [*(a1 + 32) storeCoordinator];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke_76;
    v15[3] = &unk_279D16D28;
    v18 = *(a1 + 56);
    v16 = v6;
    v17 = *(a1 + 40);
    v19 = &v21;
    [v13 writeWithAccessor:v15];

    v11 = v16;
  }

  if (*(v22 + 24) == 1)
  {
    [*(a1 + 32) _fetchDatabaseChangesWithCompletion:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v21, 8);
}

void __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke_76(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D82BB8];
  v5 = [v3 serverChangeToken];
  LODWORD(v4) = [v4 sck_object:v5 isEqualToObject:*(*(*(a1 + 48) + 8) + 40)];

  if (v4)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [v3 setLastSyncDate:v6];

    [v3 setServerChangeToken:*(a1 + 32)];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v3 zoneStoreForSchema:{*(*(&v14 + 1) + 8 * v11), v14}];
          v13 = [MEMORY[0x277CBEAA8] date];
          [v12 setLastDirtyDate:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __51__SCKDatabase__fetchDatabaseChangesWithCompletion___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D82BB8];
  v6 = v3;
  v5 = [v3 serverChangeToken];
  LODWORD(v4) = [v4 sck_object:v5 isEqualToObject:*(*(*(a1 + 32) + 8) + 40)];

  if (v4)
  {
    [v6 setServerChangeToken:0];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)_fetchZoneChangesForZones:(id)zones completion:(id)completion
{
  v58 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  completionCopy = completion;
  if ([zonesCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storeCoordinator = [(SCKDatabase *)self storeCoordinator];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_2;
    v46[3] = &unk_279D16DA0;
    v29 = zonesCopy;
    v47 = zonesCopy;
    v48 = array;
    v12 = array2;
    v49 = v12;
    v13 = dictionary;
    v50 = v13;
    v14 = array;
    [storeCoordinator readWithAccessor:v46];

    v15 = SCKDatabaseLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v57 = v12;
      _os_log_impl(&dword_26BAAD000, v15, OS_LOG_TYPE_DEFAULT, "will fetch changes for zones: %{public}@", buf, 0xCu);
    }

    v16 = objc_alloc_init(MEMORY[0x277CBC3B8]);
    [v16 setRecordZoneIDs:v14];
    [v16 setConfigurationsByRecordZoneID:v13];
    [v16 setFetchAllChanges:1];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_82;
    v44[3] = &unk_279D16DC8;
    v18 = dictionary2;
    v45 = v18;
    [v16 setRecordChangedBlock:v44];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_2_84;
    v42[3] = &unk_279D16DF0;
    v20 = dictionary3;
    v43 = v20;
    [v16 setRecordWithIDWasDeletedBlock:v42];
    array3 = [MEMORY[0x277CBEB18] array];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_3;
    v35[3] = &unk_279D16E68;
    v36 = v18;
    v37 = v20;
    selfCopy = self;
    v39 = v13;
    v22 = array3;
    v40 = v22;
    v23 = completionCopy;
    v41 = v23;
    completionCopy = v13;
    v24 = v18;
    v25 = v20;
    [v16 setRecordZoneFetchCompletionBlock:v35];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_92;
    v30[3] = &unk_279D16E90;
    v31 = v22;
    selfCopy2 = self;
    v33 = v12;
    v34 = v23;
    v26 = v22;
    v27 = v23;
    v28 = v12;
    [v16 setFetchRecordZoneChangesCompletionBlock:v30];
    [(SCKDatabase *)self _runCKOperation:v16];

    zonesCopy = v29;
  }

  else
  {
    v51 = MEMORY[0x277D85DD0];
    v52 = 3221225472;
    v53 = __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke;
    v54 = &unk_279D15FA0;
    v55 = completionCopy;
    v14 = completionCopy;
    v14[2](v14, 0);
  }
}

void __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v3 zoneStoreForSchema:v8];
        v10 = *(a1 + 40);
        v11 = [v8 zoneID];
        [v10 addObject:v11];

        v12 = *(a1 + 48);
        v13 = [v8 zoneName];
        [v12 addObject:v13];

        v14 = objc_alloc_init(MEMORY[0x277CBC3A0]);
        v15 = [v9 serverChangeToken];
        [v14 setPreviousServerChangeToken:v15];

        v16 = [v8 allRecordFieldNames];
        [v14 setDesiredKeys:v16];

        v17 = *(a1 + 56);
        v18 = [v8 zoneID];
        [v17 setObject:v14 forKeyedSubscript:v18];
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }
}

void __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v16 = v3;
  v5 = [v3 recordID];
  v6 = [v5 zoneID];
  v7 = [v4 objectForKeyedSubscript:v6];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB18] array];
  }

  v9 = *(a1 + 32);
  v10 = [v16 recordID];
  v11 = [v10 zoneID];
  [v9 setObject:v8 forKeyedSubscript:v11];

  if (!v7)
  {
  }

  v12 = *(a1 + 32);
  v13 = [v16 recordID];
  v14 = [v13 zoneID];
  v15 = [v12 objectForKeyedSubscript:v14];
  [v15 addObject:v16];
}

void __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_2_84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  v5 = [v3 zoneID];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
  }

  v8 = *(a1 + 32);
  v9 = [v13 zoneID];
  [v8 setObject:v7 forKeyedSubscript:v9];

  if (!v6)
  {
  }

  v10 = *(a1 + 32);
  v11 = [v13 zoneID];
  v12 = [v10 objectForKeyedSubscript:v11];
  [v12 addObject:v13];
}

void __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v64 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  if (v13 && ![v13 sck_hasUnderlyingErrorCode:26])
  {
    if ([v14 sck_hasUnderlyingErrorCode:21])
    {
      v30 = SCKDatabaseLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v10 zoneName];
        *buf = 138543362;
        v59 = v31;
        _os_log_impl(&dword_26BAAD000, v30, OS_LOG_TYPE_DEFAULT, "encountered expired change token for zone %{public}@", buf, 0xCu);
      }

      v32 = [*(a1 + 48) schema];
      v33 = [v10 zoneName];
      v34 = [v32 schemaForZoneName:v33];

      if (v34)
      {
        v35 = [*(a1 + 48) storeCoordinator];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_90;
        v41[3] = &unk_279D16E40;
        v36 = &v42;
        v42 = *(a1 + 56);
        v43 = v10;
        v44 = *(a1 + 64);
        v45 = v34;
        [v35 writeZone:v45 withAccessor:v41];
      }

      else
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_89;
        v46[3] = &unk_279D15BF0;
        v36 = &v47;
        v47 = v10;
        __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_89(v46);
      }
    }

    else if ([v14 sck_hasUnderlyingErrorCode:112])
    {
      v37 = SCKDatabaseLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [v10 zoneName];
        *buf = 138543362;
        v59 = v38;
        _os_log_impl(&dword_26BAAD000, v37, OS_LOG_TYPE_DEFAULT, "encountered missing identity error fetching changes for zone %{public}@, so attempting to recover", buf, 0xCu);
      }

      [*(a1 + 48) _recoverFromIdentityLossWithCompletion:*(a1 + 72)];
    }
  }

  else
  {
    v39 = v12;
    v40 = v11;
    v15 = [*(a1 + 32) objectForKeyedSubscript:v10];
    v16 = [*(a1 + 40) objectForKeyedSubscript:v10];
    v17 = [[SCKZoneDiff alloc] initWithModifiedRecords:v15 deletedRecordIDs:v16];
    v18 = SCKDatabaseLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v15 count];
      v20 = [v16 count];
      v21 = [v10 zoneName];
      *buf = 134218498;
      v59 = v19;
      v60 = 2048;
      v61 = v20;
      v62 = 2114;
      v63 = v21;
      _os_log_impl(&dword_26BAAD000, v18, OS_LOG_TYPE_DEFAULT, "fetched %lu changed records and %lu deleted records for zone %{public}@", buf, 0x20u);
    }

    v22 = [*(a1 + 48) schema];
    v23 = [v10 zoneName];
    v24 = [v22 schemaForZoneName:v23];

    if (v24)
    {
      v25 = [*(a1 + 48) storeCoordinator];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_88;
      v48[3] = &unk_279D16E18;
      v26 = &v49;
      v49 = *(a1 + 56);
      v50 = v10;
      v51 = v40;
      v27 = v17;
      v28 = *(a1 + 48);
      v52 = v27;
      v53 = v28;
      v29 = v24;
      v54 = v29;
      v55 = *(a1 + 64);
      [v25 writeZone:v29 withAccessor:v48];
    }

    else
    {
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_87;
      v56[3] = &unk_279D15BF0;
      v26 = &v57;
      v57 = v10;
      __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_87(v56);
    }

    v12 = v39;
    v11 = v40;
  }
}

void __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_87(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = SCKDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_26BAAD000, v2, OS_LOG_TYPE_DEFAULT, "ignoring changes to unknown zone %{public}@", &v4, 0xCu);
  }
}

void __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_88(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v5 = [v4 previousServerChangeToken];

  v6 = MEMORY[0x277D82BB8];
  v7 = [v3 serverChangeToken];
  LODWORD(v6) = [v6 sck_object:v7 isEqualToObject:v5];

  if (v6)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    [v3 setLastSyncDate:v8];

    [v3 setServerChangeToken:*(a1 + 48)];
    if ([*(a1 + 56) isEmpty])
    {
      v9 = SCKDatabaseLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 40) zoneName];
        *buf = 138543362;
        v22 = v10;
        _os_log_impl(&dword_26BAAD000, v9, OS_LOG_TYPE_DEFAULT, "no changes to process for zone %{public}@", buf, 0xCu);
      }
    }

    else
    {
      [v3 applyServerRecordsDiff:*(a1 + 56)];
      [*(a1 + 64) _reloadSnapshotOfZone:*(a1 + 72) fromStore:v3];
      v11 = [*(a1 + 64) zoneSnapshotsByZoneName];
      v12 = [*(a1 + 72) zoneName];
      v9 = [v11 objectForKeyedSubscript:v12];

      v13 = SCKDatabaseLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 72) zoneName];
        v20 = [v3 serverRecords];
        v15 = [v20 count];
        v16 = [v9 allRecords];
        v17 = [v16 count];
        v18 = [v3 pendingCommands];
        v19 = [v9 descriptionOfContents];
        *buf = 138544386;
        v22 = v14;
        v23 = 2048;
        v24 = v15;
        v25 = 2048;
        v26 = v17;
        v27 = 2114;
        v28 = v18;
        v29 = 2114;
        v30 = v19;
        _os_log_impl(&dword_26BAAD000, v13, OS_LOG_TYPE_DEFAULT, "fetched changes for zone %{public}@ from server resulting in %lu server records, %lu client records, pending commands: %{public}@, and client contents: %{public}@", buf, 0x34u);
      }
    }
  }

  else
  {
    [*(a1 + 80) addObject:*(a1 + 72)];
  }
}

void __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_89(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = SCKDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_26BAAD000, v2, OS_LOG_TYPE_DEFAULT, "ignoring expired change token for unknown zone %{public}@", &v4, 0xCu);
  }
}

void __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_90(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 previousServerChangeToken];

  v5 = MEMORY[0x277D82BB8];
  v6 = [v7 serverChangeToken];
  LODWORD(v5) = [v5 sck_object:v6 isEqualToObject:v4];

  if (v5)
  {
    [v7 setServerChangeToken:0];
    [*(a1 + 48) addObject:*(a1 + 56)];
  }
}

void __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_92(id *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([a1[4] count])
  {
    v4 = SCKDatabaseLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&dword_26BAAD000, v4, OS_LOG_TYPE_DEFAULT, "retrying fetch changes for zones: %{public}@", buf, 0xCu);
    }

    [a1[5] _fetchZoneChangesForZones:a1[4] completion:a1[7]];
  }

  else if (v3)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_93;
    v8[3] = &unk_279D164A8;
    v9 = a1[6];
    v10 = v3;
    v11 = a1[7];
    __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_93(v8);
  }

  else
  {
    v6 = SCKDatabaseLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[6];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_26BAAD000, v6, OS_LOG_TYPE_DEFAULT, "successfully fetched changes for zones: %{public}@", buf, 0xCu);
    }

    (*(a1[7] + 2))();
  }
}

uint64_t __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_93(uint64_t a1)
{
  v2 = SCKDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_93_cold_1(a1, v2);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_saveZoneToContainer:(id)container allowRecoveryAttempt:(BOOL)attempt completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  completionCopy = completion;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__1;
  v44 = __Block_byref_object_dispose__1;
  v45 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  storeCoordinator = [(SCKDatabase *)self storeCoordinator];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke;
  v30[3] = &unk_279D16ED8;
  v30[4] = self;
  v11 = containerCopy;
  v31 = v11;
  v32 = &v40;
  v33 = v39;
  v34 = &v35;
  [storeCoordinator readZone:v11 withAccessor:v30];

  if (*(v36 + 24) == 1 && ![v41[5] isEmpty])
  {
    v13 = SCKDatabaseLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      zoneName = [v11 zoneName];
      *buf = 138543362;
      v47 = zoneName;
      _os_log_impl(&dword_26BAAD000, v13, OS_LOG_TYPE_DEFAULT, "will save zone %{public}@", buf, 0xCu);
    }

    v12 = objc_alloc_init(MEMORY[0x277CBC4A0]);
    [v12 setSavePolicy:0];
    [v12 setAtomic:{objc_msgSend(v11, "isAtomic")}];
    [v41[5] applyToModifyRecordsOperation:v12];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_100;
    v18[3] = &unk_279D16FE8;
    attemptCopy = attempt;
    v21 = completionCopy;
    v15 = v11;
    v19 = v15;
    selfCopy = self;
    v22 = &v40;
    v23 = v39;
    [v12 setModifyRecordsCompletionBlock:v18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_113;
    v16[3] = &unk_279D17010;
    v17 = v15;
    [v12 setRequestCompletedBlock:v16];
    [(SCKDatabase *)self _runCKOperation:v12];
  }

  else
  {
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_3;
    v28 = &unk_279D15FA0;
    v29 = completionCopy;
    v29[2](v29, 0);
    v12 = v29;
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v40, 8);
}

void __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v11 = [v3 _zoneWithSchema:v4 zoneStore:v5];
  v6 = [v11 clientDiff];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 pendingCommands];
  *(*(a1[7] + 8) + 24) = [v9 count];

  v10 = [v5 pendingCommands];

  *(*(a1[8] + 8) + 24) = [v10 sck_containsObjectPassingTest:&__block_literal_global_96];
}

uint64_t __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shouldDeferUpload] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_100(uint64_t a1, void *a2, void *a3, void *a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    if (*(a1 + 72))
    {
      if ([v9 sck_hasUnderlyingErrorCode:26])
      {
        v11 = SCKDatabaseLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(a1 + 32) zoneName];
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v12;
          _os_log_impl(&dword_26BAAD000, v11, OS_LOG_TYPE_DEFAULT, "failed to save zone %{public}@ because the zone does not exist, so creating it before trying again", &buf, 0xCu);
        }

        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_103;
        v44[3] = &unk_279D16F28;
        v45 = v13;
        v15 = *(a1 + 48);
        v46 = *(a1 + 40);
        v47 = v15;
        [v14 _createZoneInContainerWithSchema:v45 completion:v44];
      }

      else if ([v10 sck_hasUnderlyingErrorCode:14])
      {
        v22 = SCKDatabaseLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [*(a1 + 32) zoneName];
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v23;
          _os_log_impl(&dword_26BAAD000, v22, OS_LOG_TYPE_DEFAULT, "encountered merge conflicts saving zone %{public}@, so fetching server changes before trying again", &buf, 0xCu);
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v59 = 0x3032000000;
        v60 = __Block_byref_object_copy__1;
        v61 = __Block_byref_object_dispose__1;
        v62 = 0;
        v24 = [*(a1 + 40) storeCoordinator];
        v25 = *(a1 + 32);
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_105;
        v43[3] = &unk_279D16F50;
        v43[4] = &buf;
        [v24 readZone:v25 withAccessor:v43];

        v26 = *(a1 + 40);
        v57 = *(a1 + 32);
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_106;
        v38[3] = &unk_279D16F98;
        v39 = *(a1 + 32);
        v28 = *(a1 + 48);
        v40 = *(a1 + 40);
        v41 = v28;
        p_buf = &buf;
        [v26 _fetchZoneChangesForZones:v27 completion:v38];

        _Block_object_dispose(&buf, 8);
      }

      else if ([v10 sck_hasUnderlyingErrorCode:11])
      {
        v29 = SCKDatabaseLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [*(a1 + 32) zoneName];
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v30;
          _os_log_impl(&dword_26BAAD000, v29, OS_LOG_TYPE_DEFAULT, "encountered unknown item saving zone %{public}@, so staging the zone for merge before trying again", &buf, 0xCu);
        }

        v31 = [*(a1 + 40) storeCoordinator];
        v35 = *(a1 + 32);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_112;
        v36[3] = &unk_279D16FC0;
        v37 = vextq_s8(v35, v35, 8uLL);
        [v31 writeZone:v35.i64[0] withAccessor:v36];

        [*(a1 + 40) _saveZoneToContainer:*(a1 + 32) allowRecoveryAttempt:1 completion:*(a1 + 48)];
      }

      else if ([v10 sck_hasUnderlyingErrorCode:112])
      {
        v32 = SCKDatabaseLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [*(a1 + 32) zoneName];
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v33;
          _os_log_impl(&dword_26BAAD000, v32, OS_LOG_TYPE_DEFAULT, "encountered missing identity error saving zone %{public}@, so attempting to recover", &buf, 0xCu);
        }

        [*(a1 + 40) _recoverFromIdentityLossWithCompletion:*(a1 + 48)];
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_101;
      v54[3] = &unk_279D15ED8;
      v56 = *(a1 + 48);
      v55 = v10;
      __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_101(v54);
    }
  }

  else
  {
    v16 = SCKDatabaseLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 32) zoneName];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_26BAAD000, v16, OS_LOG_TYPE_DEFAULT, "successfully saved zone %{public}@", &buf, 0xCu);
    }

    v18 = [*(a1 + 40) storeCoordinator];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_102;
    v48[3] = &unk_279D16F00;
    v34 = *(a1 + 32);
    v19 = v34.i64[0];
    v49 = vextq_s8(v34, v34, 8uLL);
    v52 = *(a1 + 56);
    v50 = v7;
    v20 = v8;
    v21 = *(a1 + 64);
    v51 = v20;
    v53 = v21;
    [v18 writeZone:v19 withAccessor:v48];

    (*(*(a1 + 48) + 16))();
  }
}

void __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_102(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _zoneWithSchema:*(a1 + 40) zoneStore:v3];
  v5 = [v4 clientDiff];
  if ([v5 hasSameBaseAsDiff:*(*(*(a1 + 64) + 8) + 40)])
  {
    v6 = [[SCKZoneDiff alloc] initWithModifiedRecords:*(a1 + 48) deletedRecordIDs:*(a1 + 56)];
    [v3 applyServerRecordsDiff:v6];
    [v3 clearPendingCommandsUpToCount:*(*(*(a1 + 72) + 8) + 24)];
  }

  else
  {
    v6 = SCKDatabaseLog();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) zoneName];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_26BAAD000, &v6->super, OS_LOG_TYPE_DEFAULT, "not committing save for zone %{public}@ because it was saved by another process", &v8, 0xCu);
    }
  }
}

void __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_103(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_104;
    v4[3] = &unk_279D164A8;
    v5 = a1[4];
    v6 = v3;
    v7 = a1[6];
    __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_104(v4);
  }

  else
  {
    [a1[5] _saveZoneToContainer:a1[4] allowRecoveryAttempt:1 completion:a1[6]];
  }
}

uint64_t __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_104(uint64_t a1)
{
  v2 = SCKDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_104_cold_1(a1);
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_105(uint64_t a1, void *a2)
{
  v3 = [a2 serverChangeToken];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_106(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_3_107;
    v16[3] = &unk_279D164A8;
    v17 = *(a1 + 32);
    v18 = v3;
    v19 = *(a1 + 48);
    __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_3_107(v16);
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = 0;
    v4 = [*(a1 + 40) storeCoordinator];
    v5 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_108;
    v9[3] = &unk_279D16F50;
    v9[4] = &v10;
    [v4 readZone:v5 withAccessor:v9];

    if ([v11[5] isEqual:*(*(*(a1 + 56) + 8) + 40)])
    {
      v6 = SCKDatabaseLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) zoneName];
        *buf = 138543362;
        v21 = v7;
        _os_log_impl(&dword_26BAAD000, v6, OS_LOG_TYPE_DEFAULT, "resetting change token for zone %{public}@ because it's missing server changes but didn't get any when fetching", buf, 0xCu);
      }

      v8 = [*(a1 + 40) storeCoordinator];
      [v8 writeZone:*(a1 + 32) withAccessor:&__block_literal_global_111];
    }

    [*(a1 + 40) _saveZoneToContainer:*(a1 + 32) allowRecoveryAttempt:1 completion:*(a1 + 48)];
    _Block_object_dispose(&v10, 8);
  }
}

uint64_t __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_3_107(uint64_t a1)
{
  v2 = SCKDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_3_107_cold_1(a1);
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_108(uint64_t a1, void *a2)
{
  v3 = [a2 serverChangeToken];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

void __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_113(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SCKDatabaseLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) zoneName];
    v6 = [v3 requestUUID];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_26BAAD000, v4, OS_LOG_TYPE_DEFAULT, "issued request for zone %{public}@ with UUID %{public}@", &v7, 0x16u);
  }
}

- (void)_saveZonesToContainer:(id)container allowRecoveryAttempt:(BOOL)attempt completion:(id)completion
{
  attemptCopy = attempt;
  containerCopy = container;
  completionCopy = completion;
  if ([containerCopy count])
  {
    firstObject = [containerCopy firstObject];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__SCKDatabase__saveZonesToContainer_allowRecoveryAttempt_completion___block_invoke_2;
    v13[3] = &unk_279D17038;
    v11 = &v16;
    v16 = completionCopy;
    v14 = containerCopy;
    selfCopy = self;
    v17 = attemptCopy;
    v12 = completionCopy;
    [(SCKDatabase *)self _saveZoneToContainer:firstObject allowRecoveryAttempt:attemptCopy completion:v13];
  }

  else
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __69__SCKDatabase__saveZonesToContainer_allowRecoveryAttempt_completion___block_invoke;
    v21 = &unk_279D15FA0;
    v11 = &v22;
    v22 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __69__SCKDatabase__saveZonesToContainer_allowRecoveryAttempt_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __69__SCKDatabase__saveZonesToContainer_allowRecoveryAttempt_completion___block_invoke_3;
    v5[3] = &unk_279D15ED8;
    v7 = *(a1 + 48);
    v6 = v3;
    __69__SCKDatabase__saveZonesToContainer_allowRecoveryAttempt_completion___block_invoke_3(v5);
  }

  else
  {
    v4 = [*(a1 + 32) mutableCopy];
    [v4 removeObjectAtIndex:0];
    [*(a1 + 40) _saveZonesToContainer:v4 allowRecoveryAttempt:*(a1 + 56) completion:*(a1 + 48)];
  }
}

- (void)_squashZoneForMerge:(id)merge zoneStore:(id)store
{
  v60 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  storeCopy = store;
  [(SCKDatabase *)self _reloadSnapshotOfZone:mergeCopy fromStore:?];
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  zoneSnapshotsByZoneName = [(SCKDatabase *)self zoneSnapshotsByZoneName];
  v36 = mergeCopy;
  zoneName = [mergeCopy zoneName];
  v10 = [zoneSnapshotsByZoneName objectForKeyedSubscript:zoneName];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v34 = v10;
  obj = [v10 allRecords];
  v11 = [obj countByEnumeratingWithState:&v44 objects:v59 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v45;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v44 + 1) + 8 * i);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        mergeHandlers = [(SCKDatabase *)selfCopy mergeHandlers];
        v17 = [mergeHandlers countByEnumeratingWithState:&v40 objects:v58 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v41;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v41 != v19)
              {
                objc_enumerationMutation(mergeHandlers);
              }

              v21 = [*(*(&v40 + 1) + 8 * j) commandsToMergeRecordWithServer:v15];
              [array addObjectsFromArray:v21];
            }

            v18 = [mergeHandlers countByEnumeratingWithState:&v40 objects:v58 count:16];
          }

          while (v18);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v44 objects:v59 count:16];
    }

    while (v12);
  }

  v22 = storeCopy;
  [storeCopy setServerRecords:MEMORY[0x277CBEBF8]];
  [storeCopy setServerChangeToken:0];
  [storeCopy setLastSyncDate:0];
  [storeCopy setLastDirtyDate:0];
  [storeCopy setPendingCommands:array];
  v23 = v36;
  [(SCKDatabase *)selfCopy _reloadSnapshotOfZone:v36 fromStore:storeCopy];
  zoneSnapshotsByZoneName2 = [(SCKDatabase *)selfCopy zoneSnapshotsByZoneName];
  zoneName2 = [v36 zoneName];
  v26 = [zoneSnapshotsByZoneName2 objectForKeyedSubscript:zoneName2];

  v27 = SCKDatabaseLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    zoneName3 = [v36 zoneName];
    serverRecords = [storeCopy serverRecords];
    v29 = [serverRecords count];
    allRecords = [v26 allRecords];
    v31 = [allRecords count];
    pendingCommands = [storeCopy pendingCommands];
    descriptionOfContents = [v26 descriptionOfContents];
    *buf = 138544386;
    v49 = zoneName3;
    v50 = 2048;
    v51 = v29;
    v52 = 2048;
    v53 = v31;
    v54 = 2114;
    v55 = pendingCommands;
    v56 = 2114;
    v57 = descriptionOfContents;
    _os_log_impl(&dword_26BAAD000, v27, OS_LOG_TYPE_DEFAULT, "finished staging zone %{public}@ for merge resulting in %lu server records, %lu client records, pending commands: %{public}@, and client contents: %{public}@", buf, 0x34u);

    v23 = v36;
    v22 = storeCopy;
  }
}

- (void)_createZoneInContainerWithSchema:(id)schema completion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = MEMORY[0x277CBC5E8];
  schemaCopy = schema;
  v9 = [v7 alloc];
  zoneName = [schemaCopy zoneName];

  v11 = [v9 initWithZoneName:zoneName];
  v12 = objc_alloc_init(MEMORY[0x277CBC490]);
  v17[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v12 setRecordZonesToSave:v13];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__SCKDatabase__createZoneInContainerWithSchema_completion___block_invoke;
  v15[3] = &unk_279D17060;
  v16 = completionCopy;
  v14 = completionCopy;
  [v12 setModifyRecordZonesCompletionBlock:v15];
  [(SCKDatabase *)self _runCKOperation:v12];
}

- (void)_deleteAndRecreateAllZonesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x277CBC490]);
  schema = [(SCKDatabase *)self schema];
  zoneIDs = [schema zoneIDs];
  [v5 setRecordZoneIDsToDelete:zoneIDs];

  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __56__SCKDatabase__deleteAndRecreateAllZonesWithCompletion___block_invoke;
  v12 = &unk_279D17088;
  selfCopy = self;
  v14 = completionCopy;
  v8 = completionCopy;
  [v5 setModifyRecordZonesCompletionBlock:&v9];
  [(SCKDatabase *)self _runCKOperation:v5, v9, v10, v11, v12, selfCopy];
}

void __56__SCKDatabase__deleteAndRecreateAllZonesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9 && ([v9 sck_hasUnderlyingErrorCode:26] & 1) == 0)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __56__SCKDatabase__deleteAndRecreateAllZonesWithCompletion___block_invoke_2;
    v31[3] = &unk_279D15ED8;
    v33 = *(a1 + 40);
    v32 = v10;
    __56__SCKDatabase__deleteAndRecreateAllZonesWithCompletion___block_invoke_2(v31);

    v11 = v33;
  }

  else
  {
    v23 = v8;
    v24 = v7;
    v11 = [MEMORY[0x277CBEB18] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = [*(a1 + 32) schema];
    v13 = [v12 zoneSchemas];

    v14 = [v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        v17 = 0;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * v17);
          v19 = objc_alloc(MEMORY[0x277CBC5E8]);
          v20 = [v18 zoneName];
          v21 = [v19 initWithZoneName:v20];

          [v11 addObject:v21];
          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v15);
    }

    v22 = objc_alloc_init(MEMORY[0x277CBC490]);
    [v22 setRecordZonesToSave:v11];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__SCKDatabase__deleteAndRecreateAllZonesWithCompletion___block_invoke_3;
    v25[3] = &unk_279D17060;
    v26 = *(a1 + 40);
    [v22 setModifyRecordZonesCompletionBlock:v25];
    [*(a1 + 32) _runCKOperation:v22];

    v8 = v23;
    v7 = v24;
  }
}

- (id)_zoneWithSchema:(id)schema zoneStore:(id)store
{
  storeCopy = store;
  schemaCopy = schema;
  v7 = [[SCKZone alloc] initWithSchema:schemaCopy store:storeCopy];

  return v7;
}

- (id)_emptyZonesNeedingFirstSync
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  schema = [(SCKDatabase *)self schema];
  zoneSchemas = [schema zoneSchemas];

  obj = zoneSchemas;
  v6 = [zoneSchemas countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        storeCoordinator = [(SCKDatabase *)self storeCoordinator];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __42__SCKDatabase__emptyZonesNeedingFirstSync__block_invoke;
        v14[3] = &unk_279D169A8;
        v14[4] = self;
        v14[5] = v10;
        v15 = array;
        [storeCoordinator readZone:v10 withAccessor:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return array;
}

void __42__SCKDatabase__emptyZonesNeedingFirstSync__block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) _zoneWithSchema:*(a1 + 40) zoneStore:a2];
  if ([v5 needsFirstSync])
  {
    v3 = [v5 clientRecords];
    v4 = [v3 count];

    if (!v4)
    {
      [*(a1 + 48) addObject:*(a1 + 40)];
    }
  }
}

- (id)_zonesNeedingFetch
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  schema = [(SCKDatabase *)self schema];
  zoneSchemas = [schema zoneSchemas];

  obj = zoneSchemas;
  v6 = [zoneSchemas countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        storeCoordinator = [(SCKDatabase *)self storeCoordinator];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __33__SCKDatabase__zonesNeedingFetch__block_invoke;
        v14[3] = &unk_279D169A8;
        v14[4] = self;
        v14[5] = v10;
        v15 = array;
        [storeCoordinator readZone:v10 withAccessor:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return array;
}

void __33__SCKDatabase__zonesNeedingFetch__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _zoneWithSchema:*(a1 + 40) zoneStore:a2];
  if ([v3 isDirty])
  {
    [*(a1 + 48) addObject:*(a1 + 40)];
  }
}

- (id)_zonesNeedingSave
{
  v22 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  schema = [(SCKDatabase *)self schema];
  zoneSchemas = [schema zoneSchemas];

  obj = zoneSchemas;
  v6 = [zoneSchemas countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        storeCoordinator = [(SCKDatabase *)self storeCoordinator];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __32__SCKDatabase__zonesNeedingSave__block_invoke;
        v14[3] = &unk_279D16FC0;
        v15 = array;
        v16 = v10;
        [storeCoordinator readZone:v10 withAccessor:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return array;
}

void __32__SCKDatabase__zonesNeedingSave__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pendingCommands];
  v4 = [v3 count];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 addObject:v6];
  }
}

- (void)_reloadSnapshotOfZone:(id)zone fromStore:(id)store
{
  zoneCopy = zone;
  storeCopy = store;
  zoneSnapshotsByZoneName = [(SCKDatabase *)self zoneSnapshotsByZoneName];
  zoneName = [zoneCopy zoneName];
  v10 = [zoneSnapshotsByZoneName objectForKeyedSubscript:zoneName];

  v11 = [(SCKDatabase *)self _zoneWithSchema:zoneCopy zoneStore:storeCopy];

  v12 = [SCKZoneSnapshot alloc];
  clientRecords = [v11 clientRecords];
  v14 = [(SCKZoneSnapshot *)v12 initWithZoneSchema:zoneCopy records:clientRecords];
  zoneSnapshotsByZoneName2 = [(SCKDatabase *)self zoneSnapshotsByZoneName];
  zoneName2 = [zoneCopy zoneName];
  [zoneSnapshotsByZoneName2 setObject:v14 forKeyedSubscript:zoneName2];

  zoneSnapshotsByZoneName3 = [(SCKDatabase *)self zoneSnapshotsByZoneName];
  zoneName3 = [zoneCopy zoneName];
  v19 = [zoneSnapshotsByZoneName3 objectForKeyedSubscript:zoneName3];

  if (([v10 isEqualToSnapshot:v19] & 1) == 0)
  {
    os_unfair_lock_lock(&self->_observersLock);
    observersByZoneName = [(SCKDatabase *)self observersByZoneName];
    zoneName4 = [zoneCopy zoneName];
    v22 = [observersByZoneName objectForKeyedSubscript:zoneName4];
    v23 = [v22 copy];

    os_unfair_lock_unlock(&self->_observersLock);
    callbackQueue = [(SCKDatabase *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SCKDatabase__reloadSnapshotOfZone_fromStore___block_invoke;
    block[3] = &unk_279D170B0;
    v27 = v23;
    selfCopy = self;
    v29 = zoneCopy;
    v30 = v10;
    v31 = v19;
    v25 = v23;
    dispatch_async(callbackQueue, block);
  }
}

void __47__SCKDatabase__reloadSnapshotOfZone_fromStore___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v9 = [*(a1 + 48) zoneName];
        [v7 database:v8 didChangeZone:v9 from:*(a1 + 56) to:*(a1 + 64)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)_recoverFromIdentityLossWithCompletion:(id)completion
{
  completionCopy = completion;
  storeCoordinator = [(SCKDatabase *)self storeCoordinator];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__SCKDatabase__recoverFromIdentityLossWithCompletion___block_invoke;
  v9[3] = &unk_279D16C20;
  v9[4] = self;
  [storeCoordinator writeWithAccessor:v9];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SCKDatabase__recoverFromIdentityLossWithCompletion___block_invoke_2;
  v7[3] = &unk_279D16C90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(SCKDatabase *)self _deleteAndRecreateAllZonesWithCompletion:v7];
}

void __54__SCKDatabase__recoverFromIdentityLossWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 32) schema];
  v5 = [v4 zoneSchemas];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = *(a1 + 32);
        v12 = [v3 zoneStoreForSchema:v10];
        [v11 _squashZoneForMerge:v10 zoneStore:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void __54__SCKDatabase__recoverFromIdentityLossWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__SCKDatabase__recoverFromIdentityLossWithCompletion___block_invoke_3;
    v10[3] = &unk_279D15ED8;
    v4 = &v12;
    v12 = *(a1 + 40);
    v11 = v3;
    __54__SCKDatabase__recoverFromIdentityLossWithCompletion___block_invoke_3(v10);
    v5 = v11;
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = [v6 schema];
    v7 = [v5 zoneSchemas];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__SCKDatabase__recoverFromIdentityLossWithCompletion___block_invoke_4;
    v8[3] = &unk_279D165B8;
    v4 = &v9;
    v9 = *(a1 + 40);
    [v6 _saveZonesToContainer:v7 allowRecoveryAttempt:0 completion:v8];
  }
}

- (void)_runCKOperation:(id)operation
{
  operationCopy = operation;
  configuration = [operationCopy configuration];
  v6 = [configuration copy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v10 = v8;

  [v10 setAutomaticallyRetryNetworkFailures:0];
  [v10 setDiscretionaryNetworkBehavior:0];
  [operationCopy setConfiguration:v10];
  container = [(SCKDatabase *)self container];
  [container addDatabaseOperation:operationCopy];
}

- (id)_sanitizeErrorForClients:(id)clients
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA7E8];
  v10[0] = clients;
  v4 = MEMORY[0x277CBEAC0];
  clientsCopy = clients;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v3 errorWithDomain:@"SCKErrorDomain" code:1 userInfo:v6];

  return v7;
}

void __52__SCKDatabase__fetchZoneChangesForZones_completion___block_invoke_93_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_26BAAD000, a2, OS_LOG_TYPE_ERROR, "failed to fetch changes for zones: %{public}@ with error: %{public}@", &v4, 0x16u);
}

void __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_104_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneName];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26BAAD000, v2, v3, "failed to create zone %{public}@ with error: %{public}@", v4, v5, v6, v7, v8);
}

void __68__SCKDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_3_107_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneName];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_26BAAD000, v2, v3, "failed to save zone %{public}@ because we couldn't fetch changes due to error: %{public}@", v4, v5, v6, v7, v8);
}

@end