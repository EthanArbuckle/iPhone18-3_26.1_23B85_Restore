@interface SCWDatabase
- (BOOL)t_flushChangesWithTimeout:(double)a3;
- (SCWDatabase)initWithSchema:(id)a3 store:(id)a4 features:(int64_t)a5 mergeHandlers:(id)a6 containerProxy:(id)a7;
- (id)_emptyZonesNeedingFirstSync;
- (id)_sanitizeErrorForClients:(id)a3;
- (id)_zoneWithSchema:(id)a3 zoneStore:(id)a4;
- (id)_zonesNeedingFetch;
- (id)_zonesNeedingSave;
- (void)_createZoneInContainerWithSchema:(id)a3 completion:(id)a4;
- (void)_deleteAndRecreateAllZonesWithCompletion:(id)a3;
- (void)_enqueueStartupSequenceWithFeatures:(int64_t)a3;
- (void)_fetchDatabaseAndZoneChangesWithCompletion:(id)a3;
- (void)_fetchDatabaseChangesWithCompletion:(id)a3;
- (void)_fetchZoneChangesForZones:(id)a3 completion:(id)a4;
- (void)_recoverFromIdentityLossWithCompletion:(id)a3;
- (void)_reloadSnapshotOfZone:(id)a3 fromStore:(id)a4;
- (void)_runCKOperation:(id)a3;
- (void)_saveZoneToContainer:(id)a3 allowRecoveryAttempt:(BOOL)a4 completion:(id)a5;
- (void)_squashZoneForMerge:(id)a3 zoneStore:(id)a4;
- (void)addObserver:(id)a3 forZone:(id)a4;
- (void)checkSyncingEnabledWithCompletion:(id)a3;
- (void)handleRemoteNotification:(id)a3 completion:(id)a4;
- (void)modifyContentsOfZone:(id)a3 withCommand:(id)a4;
- (void)pollForChangesWithCondition:(id)a3 completion:(id)a4;
- (void)readContentsOfZone:(id)a3 withBlock:(id)a4;
- (void)removeObserver:(id)a3 forZone:(id)a4;
- (void)savePendingChangesToServerWithCompletion:(id)a3;
- (void)synchronize;
@end

@implementation SCWDatabase

- (id)_emptyZonesNeedingFirstSync
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(SCWDatabase *)self schema];
  v5 = [v4 zoneSchemas];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        v11 = [(SCWDatabase *)self storeCoordinator];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __42__SCWDatabase__emptyZonesNeedingFirstSync__block_invoke;
        v15[3] = &unk_1E85E3668;
        v15[4] = self;
        v15[5] = v10;
        v16 = v3;
        [v11 readZone:v10 withAccessor:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

void __42__SCWDatabase__emptyZonesNeedingFirstSync__block_invoke(uint64_t a1, uint64_t a2)
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
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(SCWDatabase *)self schema];
  v5 = [v4 zoneSchemas];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        v11 = [(SCWDatabase *)self storeCoordinator];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __33__SCWDatabase__zonesNeedingFetch__block_invoke;
        v15[3] = &unk_1E85E3668;
        v15[4] = self;
        v15[5] = v10;
        v16 = v3;
        [v11 readZone:v10 withAccessor:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

void __33__SCWDatabase__zonesNeedingFetch__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _zoneWithSchema:*(a1 + 40) zoneStore:a2];
  if ([v3 isDirty])
  {
    [*(a1 + 48) addObject:*(a1 + 40)];
  }
}

- (id)_zonesNeedingSave
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(SCWDatabase *)self schema];
  v5 = [v4 zoneSchemas];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(SCWDatabase *)self storeCoordinator];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __32__SCWDatabase__zonesNeedingSave__block_invoke;
        v15[3] = &unk_1E85E3CD0;
        v16 = v3;
        v17 = v10;
        [v11 readZone:v10 withAccessor:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

void __32__SCWDatabase__zonesNeedingSave__block_invoke(uint64_t a1, void *a2)
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

- (SCWDatabase)initWithSchema:(id)a3 store:(id)a4 features:(int64_t)a5 mergeHandlers:(id)a6 containerProxy:(id)a7
{
  v61 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v59.receiver = self;
  v59.super_class = SCWDatabase;
  v17 = [(SCWDatabase *)&v59 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_schema, a3);
    v19 = [v15 copy];
    mergeHandlers = v18->_mergeHandlers;
    v18->_mergeHandlers = v19;

    v21 = [[SCWStartupQueue alloc] initWithDeferredStartup:1];
    startupQueue = v18->_startupQueue;
    v18->_startupQueue = v21;

    v23 = [[SCWAsyncSerialQueue alloc] initWithQualityOfService:17];
    ckSyncQueue = v18->_ckSyncQueue;
    v18->_ckSyncQueue = v23;

    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create("SCWDatabase.callback", v25);
    callbackQueue = v18->_callbackQueue;
    v18->_callbackQueue = v26;

    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observersByZoneName = v18->_observersByZoneName;
    v18->_observersByZoneName = v28;

    v18->_observersLock._os_unfair_lock_opaque = 0;
    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    zoneSnapshotsByZoneName = v18->_zoneSnapshotsByZoneName;
    v18->_zoneSnapshotsByZoneName = v30;

    if ([v14 conformsToProtocol:&unk_1F56AB730])
    {
      v32 = v14;
    }

    else
    {
      v32 = [[SCWFauxDatabaseStoreCoordinator alloc] initWithDatabaseStore:v14];
    }

    storeCoordinator = v18->_storeCoordinator;
    v18->_storeCoordinator = v32;

    v53 = v15;
    v54 = v14;
    v52 = v16;
    if (v16)
    {
      v34 = v16;
      container = v18->_container;
      v18->_container = v34;
    }

    else
    {
      container = [v13 containerID];
      v36 = objc_alloc_init(MEMORY[0x1E695B8B0]);
      [v36 setCaptureResponseHTTPHeaders:1];
      [v36 setUseZoneWidePCS:1];
      v37 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:container options:v36];
      v38 = v18->_container;
      v18->_container = v37;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v39 = v13;
    v40 = [v13 zoneSchemas];
    v41 = [v40 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v56;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v56 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v55 + 1) + 8 * i);
          v46 = [[SCWZoneSnapshot alloc] initWithZoneSchema:v45 records:0];
          v47 = [(SCWDatabase *)v18 zoneSnapshotsByZoneName];
          v48 = [v45 zoneName];
          [v47 setObject:v46 forKeyedSubscript:v48];
        }

        v42 = [v40 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v42);
    }

    v49 = [(SCWDatabase *)v18 storeCoordinator];
    [v49 addObserver:v18];

    [(SCWDatabase *)v18 _enqueueStartupSequenceWithFeatures:a5];
    v13 = v39;
    v15 = v53;
    v14 = v54;
    v16 = v52;
  }

  v50 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)readContentsOfZone:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCWDatabase *)self schema];
  v9 = [v8 schemaForZoneName:v6];

  if (v9)
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy_;
    v22[4] = __Block_byref_object_dispose_;
    v23 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SCWDatabase_readContentsOfZone_withBlock___block_invoke_29;
    block[3] = &unk_1E85E35C8;
    v20 = v7;
    v21 = v22;
    v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    v11 = [(SCWDatabase *)self startupQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__SCWDatabase_readContentsOfZone_withBlock___block_invoke_2_30;
    v14[3] = &unk_1E85E3618;
    v14[4] = self;
    v15 = v9;
    v18 = v22;
    v16 = v6;
    v12 = v10;
    v17 = v12;
    [v11 executeAfterStartup:v14];

    _Block_object_dispose(v22, 8);
    v13 = v23;
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __44__SCWDatabase_readContentsOfZone_withBlock___block_invoke;
    v24[3] = &unk_1E85E35A0;
    v24[4] = self;
    v25 = v7;
    __44__SCWDatabase_readContentsOfZone_withBlock___block_invoke(v24);
    v13 = v25;
  }
}

void __44__SCWDatabase_readContentsOfZone_withBlock___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SCWDatabase_readContentsOfZone_withBlock___block_invoke_2;
    block[3] = &unk_1E85E3578;
    v4 = *(a1 + 40);
    dispatch_async(v2, block);
  }
}

void __44__SCWDatabase_readContentsOfZone_withBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SCWErrorDomain" code:2 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __44__SCWDatabase_readContentsOfZone_withBlock___block_invoke_2_30(uint64_t a1)
{
  v2 = [*(a1 + 32) storeCoordinator];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SCWDatabase_readContentsOfZone_withBlock___block_invoke_3;
  v5[3] = &unk_1E85E35F0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = *(a1 + 64);
  v5[4] = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 readZone:v4 withAccessor:v5];
}

void __44__SCWDatabase_readContentsOfZone_withBlock___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) zoneSnapshotsByZoneName];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) callbackQueue];
  dispatch_async(v6, *(a1 + 48));
}

- (void)modifyContentsOfZone:(id)a3 withCommand:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCWDatabase *)self schema];
  v9 = [v8 schemaForZoneName:v6];

  if (v9)
  {
    v10 = [(SCWDatabase *)self startupQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__SCWDatabase_modifyContentsOfZone_withCommand___block_invoke_32;
    v12[3] = &unk_1E85E36E0;
    v12[4] = self;
    v13 = v9;
    v14 = v7;
    [v10 executeAfterStartup:v12];

    v11 = v13;
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__SCWDatabase_modifyContentsOfZone_withCommand___block_invoke;
    v15[3] = &unk_1E85E3640;
    v16 = v6;
    __48__SCWDatabase_modifyContentsOfZone_withCommand___block_invoke(v15);
    v11 = v16;
  }
}

void __48__SCWDatabase_modifyContentsOfZone_withCommand___block_invoke(uint64_t a1)
{
  v2 = SCWDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48__SCWDatabase_modifyContentsOfZone_withCommand___block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void __48__SCWDatabase_modifyContentsOfZone_withCommand___block_invoke_32(uint64_t a1)
{
  v2 = [*(a1 + 32) storeCoordinator];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__SCWDatabase_modifyContentsOfZone_withCommand___block_invoke_2;
  v11[3] = &unk_1E85E3668;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v4;
  v13 = v5;
  v14 = v6;
  [v2 writeZone:v3 withAccessor:v11];

  v7 = [*(a1 + 32) ckSyncQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__SCWDatabase_modifyContentsOfZone_withCommand___block_invoke_3;
  v9[3] = &unk_1E85E36B8;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [v7 enqueueBlock:v9];
}

void __48__SCWDatabase_modifyContentsOfZone_withCommand___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v7 count:1];
  [v4 addPendingCommands:{v5, v7, v8}];

  [*(a1 + 40) _reloadSnapshotOfZone:*(a1 + 48) fromStore:v4];
  v6 = *MEMORY[0x1E69E9840];
}

void __48__SCWDatabase_modifyContentsOfZone_withCommand___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__SCWDatabase_modifyContentsOfZone_withCommand___block_invoke_5;
    v8[3] = &unk_1E85E3690;
    v6 = v9;
    v9[0] = v3;
    v7 = v3;
    [v5 _saveZoneToContainer:v4 allowRecoveryAttempt:1 completion:v8];
  }

  else
  {
    v9[1] = MEMORY[0x1E69E9820];
    v9[2] = 3221225472;
    v9[3] = __48__SCWDatabase_modifyContentsOfZone_withCommand___block_invoke_4;
    v9[4] = &unk_1E85E3578;
    v6 = &v10;
    v10 = v3;
    v3[2](v3);
  }
}

- (void)addObserver:(id)a3 forZone:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_observersLock);
  v7 = [(SCWDatabase *)self observersByZoneName];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    v9 = [(SCWDatabase *)self observersByZoneName];
    [v9 setObject:v8 forKeyedSubscript:v6];
  }

  [v8 addObject:v10];
  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeObserver:(id)a3 forZone:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v8 = [(SCWDatabase *)self observersByZoneName];
  v9 = [v8 objectForKeyedSubscript:v6];

  [v9 removeObject:v7];
  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)handleRemoteNotification:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCWDatabase *)self startupQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__SCWDatabase_handleRemoteNotification_completion___block_invoke;
  v11[3] = &unk_1E85E37A0;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [v8 executeAfterStartup:v11];
}

void __51__SCWDatabase_handleRemoteNotification_completion___block_invoke(id *a1)
{
  v2 = [a1[4] ckSyncQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_2;
  v3[3] = &unk_1E85E3778;
  v3[4] = a1[4];
  v5 = a1[6];
  v4 = a1[5];
  [v2 enqueueBlock:v3];
}

void __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v4 = [MEMORY[0x1E695B9D8] notificationFromRemoteNotificationDictionary:*(a1 + 40)];
    if ([v4 notificationType] == 4 && (objc_msgSend(v4, "subscriptionID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"DatabaseSubscription"), v5, (v6 & 1) != 0))
    {
      v7 = [*(a1 + 32) storeCoordinator];
      [v7 writeWithAccessor:&__block_literal_global_40];

      v8 = *(a1 + 32);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_8;
      v17[3] = &unk_1E85E3750;
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
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_5;
      v20[3] = &unk_1E85E3708;
      v9 = &v21;
      v21 = v3;
      v10 = &v22;
      v15 = *(a1 + 48);
      v16 = *(a1 + 32);
      v22 = v15;
      v20[4] = v16;
      __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_5(v20);
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_3;
    v23[3] = &unk_1E85E3708;
    v24 = v3;
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    v25 = v13;
    v23[4] = v14;
    __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_3(v23);

    v4 = v24;
  }
}

void __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_4;
    block[3] = &unk_1E85E3578;
    v4 = *(a1 + 48);
    dispatch_async(v2, block);
  }
}

void __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_6;
    block[3] = &unk_1E85E3578;
    v4 = *(a1 + 48);
    dispatch_async(v2, block);
  }
}

void __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v4 = [v2 date];
  [v3 setLastDirtyDate:v4];
}

void __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v4 = [*(a1 + 32) callbackQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__SCWDatabase_handleRemoteNotification_completion___block_invoke_9;
    v5[3] = &unk_1E85E35A0;
    v7 = *(a1 + 48);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)pollForChangesWithCondition:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCWDatabase *)self startupQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke;
  v11[3] = &unk_1E85E37A0;
  v12 = v6;
  v13 = v7;
  v11[4] = self;
  v9 = v6;
  v10 = v7;
  [v8 executeAfterStartup:v11];
}

void __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke(id *a1)
{
  v2 = [a1[4] ckSyncQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke_2;
  v3[3] = &unk_1E85E3778;
  v3[4] = a1[4];
  v5 = a1[6];
  v4 = a1[5];
  [v2 enqueueBlock:v3];
}

void __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] status] == 1)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v4 = [a1[4] storeCoordinator];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke_5;
    v17[3] = &unk_1E85E37C8;
    v18 = a1[5];
    v19 = &v20;
    [v4 readWithAccessor:v17];

    if (*(v21 + 24) == 1)
    {
      v5 = a1[4];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke_6;
      v14[3] = &unk_1E85E3750;
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
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke_8;
      block[3] = &unk_1E85E3578;
      v8 = &v13;
      v13 = a1[6];
      dispatch_async(v9, block);
    }

    goto LABEL_8;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke_3;
  v24[3] = &unk_1E85E3708;
  v25 = v3;
  v10 = a1[6];
  v11 = a1[4];
  v26 = v10;
  v24[4] = v11;
  __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke_3(v24);

LABEL_9:
}

void __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke_4;
    block[3] = &unk_1E85E3578;
    v4 = *(a1 + 48);
    dispatch_async(v2, block);
  }
}

void __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 lastSyncDate];
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = v3;
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v11 lastSyncDate];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;
  [*(a1 + 32) minIntervalSinceLastSync];
  v10 = v9;

  if (v8 >= v10)
  {
LABEL_3:
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v4 = [*(a1 + 32) callbackQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__SCWDatabase_pollForChangesWithCondition_completion___block_invoke_7;
    v5[3] = &unk_1E85E35A0;
    v7 = *(a1 + 48);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)checkSyncingEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCWDatabase *)self startupQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SCWDatabase_checkSyncingEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E85E34E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 executeAfterStartup:v7];
}

void __49__SCWDatabase_checkSyncingEnabledWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ckSyncQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SCWDatabase_checkSyncingEnabledWithCompletion___block_invoke_2;
  v4[3] = &unk_1E85E3508;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 enqueueBlock:v4];
}

void __49__SCWDatabase_checkSyncingEnabledWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a2);
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) callbackQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__SCWDatabase_checkSyncingEnabledWithCompletion___block_invoke_3;
    v5[3] = &unk_1E85E35A0;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    dispatch_async(v3, v5);
  }
}

uint64_t __49__SCWDatabase_checkSyncingEnabledWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) status] == 1;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)savePendingChangesToServerWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCWDatabase *)self startupQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SCWDatabase_savePendingChangesToServerWithCompletion___block_invoke;
  v7[3] = &unk_1E85E34E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 executeAfterStartup:v7];
}

void __56__SCWDatabase_savePendingChangesToServerWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ckSyncQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SCWDatabase_savePendingChangesToServerWithCompletion___block_invoke_2;
  v4[3] = &unk_1E85E37F0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 enqueueBlock:v4];
}

void __56__SCWDatabase_savePendingChangesToServerWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v4 = *(a1 + 32);
    v5 = [v4 schema];
    v6 = [v5 zoneSchemas];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__SCWDatabase_savePendingChangesToServerWithCompletion___block_invoke_5;
    v15[3] = &unk_1E85E3750;
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
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__SCWDatabase_savePendingChangesToServerWithCompletion___block_invoke_3;
    v18[3] = &unk_1E85E3708;
    v7 = &v19;
    v19 = v3;
    v8 = &v20;
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v20 = v12;
    v18[4] = v13;
    v14 = v3;
    __56__SCWDatabase_savePendingChangesToServerWithCompletion___block_invoke_3(v18);
  }
}

void __56__SCWDatabase_savePendingChangesToServerWithCompletion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__SCWDatabase_savePendingChangesToServerWithCompletion___block_invoke_4;
    block[3] = &unk_1E85E3578;
    v4 = *(a1 + 48);
    dispatch_async(v2, block);
  }
}

void __56__SCWDatabase_savePendingChangesToServerWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SCWErrorDomain" code:3 userInfo:MEMORY[0x1E695E0F8]];
  (*(v1 + 16))(v1, v2);
}

void __56__SCWDatabase_savePendingChangesToServerWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48))
  {
    v4 = [*(a1 + 32) callbackQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__SCWDatabase_savePendingChangesToServerWithCompletion___block_invoke_6;
    v5[3] = &unk_1E85E35A0;
    v7 = *(a1 + 48);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)synchronize
{
  v3 = [(SCWDatabase *)self storeCoordinator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__SCWDatabase_synchronize__block_invoke;
  v4[3] = &unk_1E85E3818;
  v4[4] = self;
  [v3 reloadWithAccessor:v4];
}

void __26__SCWDatabase_synchronize__block_invoke(uint64_t a1, void *a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [*(a1 + 32) schema];
    v7 = [v6 zoneSchemas];

    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = *(a1 + 32);
          v14 = [v5 zoneStoreForSchema:v12];
          [v13 _reloadSnapshotOfZone:v12 fromStore:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)t_flushChangesWithTimeout:(double)a3
{
  v5 = dispatch_semaphore_create(0);
  v6 = [(SCWDatabase *)self startupQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__SCWDatabase_t_flushChangesWithTimeout___block_invoke;
  v10[3] = &unk_1E85E3448;
  v10[4] = self;
  v11 = v5;
  v7 = v5;
  [v6 executeAfterStartup:v10];

  v8 = dispatch_time(0, (a3 * 1000000000.0));
  LOBYTE(v5) = dispatch_semaphore_wait(v7, v8) == 0;

  return v5;
}

void __41__SCWDatabase_t_flushChangesWithTimeout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ckSyncQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__SCWDatabase_t_flushChangesWithTimeout___block_invoke_2;
  v3[3] = &unk_1E85E3840;
  v4 = *(a1 + 40);
  [v2 enqueueBlock:v3];
}

void __41__SCWDatabase_t_flushChangesWithTimeout___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  dispatch_semaphore_signal(v2);
  v3[2]();
}

- (void)_enqueueStartupSequenceWithFeatures:(int64_t)a3
{
  v5 = [(SCWDatabase *)self startupQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke;
  v18[3] = &unk_1E85E38E0;
  v18[4] = self;
  v18[5] = a3;
  [v5 enqueueStartupBlock:v18];

  v6 = [(SCWDatabase *)self startupQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_55;
  v17[3] = &unk_1E85E3840;
  v17[4] = self;
  [v6 enqueueStartupBlock:v17];

  if ((a3 & 4) != 0)
  {
    v7 = [(SCWDatabase *)self startupQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_57;
    v16[3] = &unk_1E85E3840;
    v16[4] = self;
    [v7 enqueueStartupBlock:v16];
  }

  v8 = [(SCWDatabase *)self startupQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_3_59;
  v15[3] = &unk_1E85E3840;
  v15[4] = self;
  [v8 enqueueStartupBlock:v15];

  v9 = [(SCWDatabase *)self startupQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_8;
  v14[3] = &unk_1E85E3640;
  v14[4] = self;
  [v9 executeAfterStartup:v14];

  v10 = [(SCWDatabase *)self startupQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_13;
  v13[3] = &unk_1E85E3640;
  v13[4] = self;
  [v10 executeAfterStartup:v13];

  if ((a3 & 2) != 0)
  {
    v11 = [(SCWDatabase *)self startupQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_18;
    v12[3] = &unk_1E85E3640;
    v12[4] = self;
    [v11 executeAfterStartup:v12];
  }
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a2);
  v3 = [*(a1 + 32) ckSyncQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_2;
  v5[3] = &unk_1E85E38E0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v5[5] = v4;
  [v3 enqueueBlock:v5];
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_3;
  aBlock[3] = &unk_1E85E3868;
  aBlock[4] = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (*(a1 + 40))
  {
    v9 = [*(a1 + 32) container];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_53;
    v12[3] = &unk_1E85E38B8;
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
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_52;
    v15[3] = &unk_1E85E3890;
    v6 = &v16;
    v16 = v4;
    v17 = v3;
    v7 = v5;
    __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_52(v15);
    v8 = v17;
  }
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_3(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = SCWDatabaseLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"disabled";
    if (a2)
    {
      v5 = @"enabled";
    }

    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_1DAA3F000, v4, OS_LOG_TYPE_DEFAULT, "finished database startup with syncing %{public}@", &v10, 0xCu);
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

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_52(uint64_t a1)
{
  v2 = SCWDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, OS_LOG_TYPE_DEFAULT, "database does not have syncing feature enabled", v4, 2u);
  }

  (*(*(a1 + 32) + 16))();
  return (*(*(a1 + 40) + 16))();
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SCWDatabaseLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_53_cold_1();
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

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) storeCoordinator];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_2_56;
  v6[3] = &unk_1E85E3908;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 readWithAccessor:v6];
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_2_56(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = [*(a1 + 32) schema];
  v5 = [v4 zoneSchemas];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v34;
    *&v7 = 138544386;
    v26 = v7;
    v27 = a1;
    v28 = v3;
    do
    {
      v10 = 0;
      v29 = v8;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        v12 = *(a1 + 32);
        v13 = [v3 zoneStoreForSchema:{v11, v26}];
        [v12 _reloadSnapshotOfZone:v11 fromStore:v13];

        v14 = [v3 zoneStoreForSchema:v11];
        v15 = [*(a1 + 32) zoneSnapshotsByZoneName];
        v16 = [v11 zoneName];
        v17 = [v15 objectForKeyedSubscript:v16];

        v18 = SCWDatabaseLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v11 zoneName];
          v32 = [v14 serverRecords];
          v20 = [v32 count];
          v31 = [v17 allRecords];
          v21 = v9;
          v22 = [v31 count];
          v23 = [v17 descriptionOfContents];
          v24 = [v14 pendingCommands];
          *buf = v26;
          v38 = v19;
          v39 = 2048;
          v40 = v20;
          v8 = v29;
          v41 = 2048;
          v42 = v22;
          v9 = v21;
          v43 = 2114;
          v44 = v23;
          v45 = 2114;
          v46 = v24;
          _os_log_impl(&dword_1DAA3F000, v18, OS_LOG_TYPE_DEFAULT, "loaded zone %{public}@ from disk with %lu server records, %lu client records, client contents: %{public}@, and pending commands: %{public}@", buf, 0x34u);

          a1 = v27;
          v3 = v28;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v8);
  }

  (*(*(a1 + 40) + 16))();
  v25 = *MEMORY[0x1E69E9840];
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 storeCoordinator];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_2_58;
  v6[3] = &unk_1E85E3930;
  v6[4] = *(a1 + 32);
  [v5 writeWithAccessor:v6];

  v4[2](v4);
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_2_58(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [*(a1 + 32) schema];
  v5 = [v4 zoneSchemas];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = *(a1 + 32);
        v12 = [v3 zoneStoreForSchema:v10];
        [v11 _squashZoneForMerge:v10 zoneStore:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_3_59(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _emptyZonesNeedingFirstSync];
  if ([v4 count])
  {
    v5 = [*(a1 + 32) ckSyncQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_5;
    v8[3] = &unk_1E85E3778;
    v8[4] = *(a1 + 32);
    v10 = v3;
    v9 = v4;
    v6 = v3;
    [v5 enqueueBlock:v8];

    v7 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_4;
    v14 = &unk_1E85E3578;
    v15 = v3;
    v3[2](v3);
    v7 = v3;
  }
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_7;
    v10[3] = &unk_1E85E3958;
    v6 = &v11;
    v11 = v3;
    v7 = &v12;
    v12 = *(a1 + 48);
    v8 = v3;
    [v4 _fetchZoneChangesForZones:v5 completion:v10];
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_6;
    v13[3] = &unk_1E85E3890;
    v6 = &v14;
    v14 = v3;
    v7 = &v15;
    v15 = *(a1 + 48);
    v9 = v3;
    __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_6(v13);
  }
}

uint64_t __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_7(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) _zonesNeedingFetch];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) ckSyncQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_10;
    v4[3] = &unk_1E85E36B8;
    v4[4] = *(a1 + 32);
    v5 = v2;
    [v3 enqueueBlock:v4];
  }
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_12;
    v8[3] = &unk_1E85E3690;
    v6 = v9;
    v9[0] = v3;
    v7 = v3;
    [v5 _fetchZoneChangesForZones:v4 completion:v8];
  }

  else
  {
    v9[1] = MEMORY[0x1E69E9820];
    v9[2] = 3221225472;
    v9[3] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_11;
    v9[4] = &unk_1E85E3578;
    v6 = &v10;
    v10 = v3;
    v3[2](v3);
  }
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_13(uint64_t a1)
{
  v2 = [*(a1 + 32) _zonesNeedingSave];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) ckSyncQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_15;
    v4[3] = &unk_1E85E36B8;
    v4[4] = *(a1 + 32);
    v5 = v2;
    [v3 enqueueBlock:v4];
  }
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_17;
    v8[3] = &unk_1E85E3690;
    v6 = v9;
    v9[0] = v3;
    v7 = v3;
    [v5 _saveZonesToContainer:v4 allowRecoveryAttempt:1 completion:v8];
  }

  else
  {
    v9[1] = MEMORY[0x1E69E9820];
    v9[2] = 3221225472;
    v9[3] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_16;
    v9[4] = &unk_1E85E3578;
    v6 = &v10;
    v10 = v3;
    v3[2](v3);
  }
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_18(uint64_t a1)
{
  v2 = [*(a1 + 32) ckSyncQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_19;
  v3[3] = &unk_1E85E3840;
  v3[4] = *(a1 + 32);
  [v2 enqueueBlock:v3];
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_19(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) status] == 1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695B9F0]);
    [v4 setShouldSendContentAvailable:1];
    v5 = [objc_alloc(MEMORY[0x1E695B8C0]) initWithSubscriptionID:@"DatabaseSubscription"];
    [v5 setNotificationInfo:v4];
    v6 = objc_alloc_init(MEMORY[0x1E695B9C8]);
    v10[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v6 setSubscriptionsToSave:v7];

    [v6 setModifySubscriptionsCompletionBlock:&__block_literal_global_69];
    [*(a1 + 32) _runCKOperation:v6];
    v3[2](v3);
  }

  else
  {
    v9 = v3;
    (v3[2])();
    v4 = v9;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_21(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if (v4)
  {
    v5 = SCWDatabaseLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_21_cold_1();
    }
  }
}

- (void)_fetchDatabaseAndZoneChangesWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__SCWDatabase__fetchDatabaseAndZoneChangesWithCompletion___block_invoke;
  v6[3] = &unk_1E85E39A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SCWDatabase *)self _fetchDatabaseChangesWithCompletion:v6];
}

void __58__SCWDatabase__fetchDatabaseAndZoneChangesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__SCWDatabase__fetchDatabaseAndZoneChangesWithCompletion___block_invoke_2;
    v9[3] = &unk_1E85E35A0;
    v4 = &v11;
    v11 = *(a1 + 40);
    v10 = v3;
    __58__SCWDatabase__fetchDatabaseAndZoneChangesWithCompletion___block_invoke_2(v9);
    v5 = v10;
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = [v6 _zonesNeedingFetch];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__SCWDatabase__fetchDatabaseAndZoneChangesWithCompletion___block_invoke_3;
    v7[3] = &unk_1E85E3690;
    v4 = &v8;
    v8 = *(a1 + 40);
    [v6 _fetchZoneChangesForZones:v5 completion:v7];
  }
}

- (void)_fetchDatabaseChangesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = SCWDatabaseLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DAA3F000, v5, OS_LOG_TYPE_DEFAULT, "will fetch database changes", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v6 = [(SCWDatabase *)self storeCoordinator];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke;
  v18[3] = &unk_1E85E39C8;
  v18[4] = buf;
  [v6 readWithAccessor:v18];

  v7 = objc_alloc_init(MEMORY[0x1E695B8F8]);
  [v7 setPreviousServerChangeToken:*(v20 + 5)];
  [v7 setFetchAllChanges:1];
  v8 = [MEMORY[0x1E695DF70] array];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke_2;
  v16[3] = &unk_1E85E39F0;
  v16[4] = self;
  v9 = v8;
  v17 = v9;
  [v7 setRecordZoneWithIDChangedBlock:v16];
  [v7 setRecordZoneWithIDWasPurgedBlock:&__block_literal_global_76];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke_2_77;
  v12[3] = &unk_1E85E3A88;
  v12[4] = self;
  v15 = buf;
  v10 = v9;
  v13 = v10;
  v11 = v4;
  v14 = v11;
  [v7 setFetchDatabaseChangesCompletionBlock:v12];
  [(SCWDatabase *)self _runCKOperation:v7];

  _Block_object_dispose(buf, 8);
}

uint64_t __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serverChangeToken];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

void __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SCWDatabaseLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 zoneName];
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&dword_1DAA3F000, v4, OS_LOG_TYPE_DEFAULT, "fetching database changes reported a change to zone %{public}@", buf, 0xCu);
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
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke_72;
    v10[3] = &unk_1E85E3640;
    v11 = v3;
    __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke_72(v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke_72(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SCWDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1DAA3F000, v2, OS_LOG_TYPE_DEFAULT, "ignoring change to unknown zone: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke_2_77(uint64_t a1, void *a2, uint64_t a3, void *a4)
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
    v9 = [v7 sc_hasUnderlyingErrorCode:21];
    v10 = SCWDatabaseLog();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DAA3F000, v11, OS_LOG_TYPE_DEFAULT, "encountered expired change token for database", buf, 2u);
      }

      v11 = [*(a1 + 32) storeCoordinator];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke_80;
      v14[3] = &unk_1E85E3A60;
      v14[4] = *(a1 + 56);
      v14[5] = &v21;
      [v11 writeWithAccessor:v14];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke_2_77_cold_1();
    }
  }

  else
  {
    v12 = SCWDatabaseLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DAA3F000, v12, OS_LOG_TYPE_DEFAULT, "successfully fetched database changes", buf, 2u);
    }

    v13 = [*(a1 + 32) storeCoordinator];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke_78;
    v15[3] = &unk_1E85E3A38;
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

void __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke_78(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69E58C0];
  v5 = [v3 serverChangeToken];
  LODWORD(v4) = [v4 scw_object:v5 isEqualToObject:*(*(*(a1 + 48) + 8) + 40)];

  if (v4)
  {
    v6 = [MEMORY[0x1E695DF00] date];
    [v3 setLastSyncDate:v6];

    [v3 setServerChangeToken:*(a1 + 32)];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v3 zoneStoreForSchema:{*(*(&v15 + 1) + 8 * v11), v15}];
          v13 = [MEMORY[0x1E695DF00] date];
          [v12 setLastDirtyDate:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke_80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69E58C0];
  v6 = v3;
  v5 = [v3 serverChangeToken];
  LODWORD(v4) = [v4 scw_object:v5 isEqualToObject:*(*(*(a1 + 32) + 8) + 40)];

  if (v4)
  {
    [v6 setServerChangeToken:0];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)_fetchZoneChangesForZones:(id)a3 completion:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = [(SCWDatabase *)self storeCoordinator];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_2;
    v47[3] = &unk_1E85E3AB0;
    v30 = v6;
    v48 = v6;
    v49 = v8;
    v12 = v9;
    v50 = v12;
    v13 = v10;
    v51 = v13;
    v14 = v8;
    [v11 readWithAccessor:v47];

    v15 = SCWDatabaseLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v58 = v12;
      _os_log_impl(&dword_1DAA3F000, v15, OS_LOG_TYPE_DEFAULT, "will fetch changes for zones: %{public}@", buf, 0xCu);
    }

    v16 = objc_alloc_init(MEMORY[0x1E695B918]);
    [v16 setRecordZoneIDs:v14];
    [v16 setConfigurationsByRecordZoneID:v13];
    [v16 setFetchAllChanges:1];
    v17 = [MEMORY[0x1E695DF90] dictionary];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_84;
    v45[3] = &unk_1E85E3AD8;
    v18 = v17;
    v46 = v18;
    [v16 setRecordWasChangedBlock:v45];
    v19 = [MEMORY[0x1E695DF90] dictionary];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_2_86;
    v43[3] = &unk_1E85E3B00;
    v20 = v19;
    v44 = v20;
    [v16 setRecordWithIDWasDeletedBlock:v43];
    v21 = [MEMORY[0x1E695DF70] array];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_3;
    v36[3] = &unk_1E85E3B78;
    v37 = v18;
    v38 = v20;
    v39 = self;
    v40 = v13;
    v22 = v21;
    v41 = v22;
    v23 = v7;
    v42 = v23;
    v7 = v13;
    v24 = v18;
    v25 = v20;
    [v16 setRecordZoneFetchCompletionBlock:v36];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_94;
    v31[3] = &unk_1E85E3BA0;
    v32 = v22;
    v33 = self;
    v34 = v12;
    v35 = v23;
    v26 = v22;
    v27 = v23;
    v28 = v12;
    [v16 setFetchRecordZoneChangesCompletionBlock:v31];
    [(SCWDatabase *)self _runCKOperation:v16];

    v6 = v30;
  }

  else
  {
    v52 = MEMORY[0x1E69E9820];
    v53 = 3221225472;
    v54 = __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke;
    v55 = &unk_1E85E3578;
    v56 = v7;
    v14 = v7;
    v14[2](v14, 0);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v3 zoneStoreForSchema:v8];
        v10 = *(a1 + 40);
        v11 = [v8 zoneID];
        [v10 addObject:v11];

        v12 = *(a1 + 48);
        v13 = [v8 zoneName];
        [v12 addObject:v13];

        v14 = objc_alloc_init(MEMORY[0x1E695B908]);
        v15 = [v9 serverChangeToken];
        [v14 setPreviousServerChangeToken:v15];

        v16 = [v8 allRecordFieldNames];
        [v14 setDesiredKeys:v16];

        v17 = *(a1 + 56);
        v18 = [v8 zoneID];
        [v17 setObject:v14 forKeyedSubscript:v18];
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = *(a1 + 32);
    v17 = v4;
    v6 = [v4 recordID];
    v7 = [v6 zoneID];
    v8 = [v5 objectForKeyedSubscript:v7];
    v9 = v8;
    if (!v8)
    {
      v9 = [MEMORY[0x1E695DF70] array];
    }

    v10 = *(a1 + 32);
    v11 = [v17 recordID];
    v12 = [v11 zoneID];
    [v10 setObject:v9 forKeyedSubscript:v12];

    if (!v8)
    {
    }

    v13 = *(a1 + 32);
    v14 = [v17 recordID];
    v15 = [v14 zoneID];
    v16 = [v13 objectForKeyedSubscript:v15];
    [v16 addObject:v17];

    v4 = v17;
  }
}

void __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_2_86(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  v5 = [v3 zoneID];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
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

void __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  if (v13 && ![v13 sc_hasUnderlyingErrorCode:26])
  {
    if ([v14 sc_hasUnderlyingErrorCode:21])
    {
      v30 = SCWDatabaseLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v10 zoneName];
        *buf = 138543362;
        v60 = v31;
        _os_log_impl(&dword_1DAA3F000, v30, OS_LOG_TYPE_DEFAULT, "encountered expired change token for zone %{public}@", buf, 0xCu);
      }

      v32 = [*(a1 + 48) schema];
      v33 = [v10 zoneName];
      v34 = [v32 schemaForZoneName:v33];

      if (v34)
      {
        v35 = [*(a1 + 48) storeCoordinator];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_92;
        v42[3] = &unk_1E85E3B50;
        v36 = &v43;
        v43 = *(a1 + 56);
        v44 = v10;
        v45 = *(a1 + 64);
        v46 = v34;
        [v35 writeZone:v46 withAccessor:v42];
      }

      else
      {
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_91;
        v47[3] = &unk_1E85E3640;
        v36 = &v48;
        v48 = v10;
        __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_91(v47);
      }
    }

    else if ([v14 sc_hasUnderlyingErrorCode:112])
    {
      v38 = SCWDatabaseLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v10 zoneName];
        *buf = 138543362;
        v60 = v39;
        _os_log_impl(&dword_1DAA3F000, v38, OS_LOG_TYPE_DEFAULT, "encountered missing identity error fetching changes for zone %{public}@, so attempting to recover", buf, 0xCu);
      }

      [*(a1 + 48) _recoverFromIdentityLossWithCompletion:*(a1 + 72)];
    }
  }

  else
  {
    v40 = v12;
    v41 = v11;
    v15 = [*(a1 + 32) objectForKeyedSubscript:v10];
    v16 = [*(a1 + 40) objectForKeyedSubscript:v10];
    v17 = [[SCWZoneDiff alloc] initWithModifiedRecords:v15 deletedRecordIDs:v16];
    v18 = SCWDatabaseLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v15 count];
      v20 = [v16 count];
      v21 = [v10 zoneName];
      *buf = 134218498;
      v60 = v19;
      v61 = 2048;
      v62 = v20;
      v63 = 2114;
      v64 = v21;
      _os_log_impl(&dword_1DAA3F000, v18, OS_LOG_TYPE_DEFAULT, "fetched %lu changed records and %lu deleted records for zone %{public}@", buf, 0x20u);
    }

    v22 = [*(a1 + 48) schema];
    v23 = [v10 zoneName];
    v24 = [v22 schemaForZoneName:v23];

    if (v24)
    {
      v25 = [*(a1 + 48) storeCoordinator];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_90;
      v49[3] = &unk_1E85E3B28;
      v26 = &v50;
      v50 = *(a1 + 56);
      v51 = v10;
      v52 = v41;
      v27 = v17;
      v28 = *(a1 + 48);
      v53 = v27;
      v54 = v28;
      v29 = v24;
      v55 = v29;
      v56 = *(a1 + 64);
      [v25 writeZone:v29 withAccessor:v49];
    }

    else
    {
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_89;
      v57[3] = &unk_1E85E3640;
      v26 = &v58;
      v58 = v10;
      __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_89(v57);
    }

    v12 = v40;
    v11 = v41;
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_89(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SCWDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1DAA3F000, v2, OS_LOG_TYPE_DEFAULT, "ignoring changes to unknown zone %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_90(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v5 = [v4 previousServerChangeToken];

  v6 = MEMORY[0x1E69E58C0];
  v7 = [v3 serverChangeToken];
  LODWORD(v6) = [v6 scw_object:v7 isEqualToObject:v5];

  if (v6)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    [v3 setLastSyncDate:v8];

    [v3 setServerChangeToken:*(a1 + 48)];
    if ([*(a1 + 56) isEmpty])
    {
      v9 = SCWDatabaseLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 40) zoneName];
        *buf = 138543362;
        v23 = v10;
        _os_log_impl(&dword_1DAA3F000, v9, OS_LOG_TYPE_DEFAULT, "no changes to process for zone %{public}@", buf, 0xCu);
      }
    }

    else
    {
      [v3 applyServerRecordsDiff:*(a1 + 56)];
      [*(a1 + 64) _reloadSnapshotOfZone:*(a1 + 72) fromStore:v3];
      v11 = [*(a1 + 64) zoneSnapshotsByZoneName];
      v12 = [*(a1 + 72) zoneName];
      v9 = [v11 objectForKeyedSubscript:v12];

      v13 = SCWDatabaseLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 72) zoneName];
        v21 = [v3 serverRecords];
        v15 = [v21 count];
        v16 = [v9 allRecords];
        v17 = [v16 count];
        v18 = [v3 pendingCommands];
        v19 = [v9 descriptionOfContents];
        *buf = 138544386;
        v23 = v14;
        v24 = 2048;
        v25 = v15;
        v26 = 2048;
        v27 = v17;
        v28 = 2114;
        v29 = v18;
        v30 = 2114;
        v31 = v19;
        _os_log_impl(&dword_1DAA3F000, v13, OS_LOG_TYPE_DEFAULT, "fetched changes for zone %{public}@ from server resulting in %lu server records, %lu client records, pending commands: %{public}@, and client contents: %{public}@", buf, 0x34u);
      }
    }
  }

  else
  {
    [*(a1 + 80) addObject:*(a1 + 72)];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_91(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SCWDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1DAA3F000, v2, OS_LOG_TYPE_DEFAULT, "ignoring expired change token for unknown zone %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_92(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 previousServerChangeToken];

  v5 = MEMORY[0x1E69E58C0];
  v6 = [v7 serverChangeToken];
  LODWORD(v5) = [v5 scw_object:v6 isEqualToObject:v4];

  if (v5)
  {
    [v7 setServerChangeToken:0];
    [*(a1 + 48) addObject:*(a1 + 56)];
  }
}

void __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_94(id *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([a1[4] count])
  {
    v4 = SCWDatabaseLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1DAA3F000, v4, OS_LOG_TYPE_DEFAULT, "retrying fetch changes for zones: %{public}@", buf, 0xCu);
    }

    [a1[5] _fetchZoneChangesForZones:a1[4] completion:a1[7]];
  }

  else if (v3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_95;
    v9[3] = &unk_1E85E33D0;
    v10 = a1[6];
    v11 = v3;
    v12 = a1[7];
    __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_95(v9);
  }

  else
  {
    v6 = SCWDatabaseLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[6];
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_1DAA3F000, v6, OS_LOG_TYPE_DEFAULT, "successfully fetched changes for zones: %{public}@", buf, 0xCu);
    }

    (*(a1[7] + 2))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_95(uint64_t a1)
{
  v2 = SCWDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_95_cold_1(a1, v2);
  }

  v3 = *(a1 + 40);
  return (*(*(a1 + 48) + 16))();
}

- (void)_saveZoneToContainer:(id)a3 allowRecoveryAttempt:(BOOL)a4 completion:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v10 = [(SCWDatabase *)self storeCoordinator];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke;
  v31[3] = &unk_1E85E3BE8;
  v31[4] = self;
  v11 = v8;
  v32 = v11;
  v33 = &v41;
  v34 = v40;
  v35 = &v36;
  [v10 readZone:v11 withAccessor:v31];

  if (*(v37 + 24) == 1 && ![v42[5] isEmpty])
  {
    v13 = SCWDatabaseLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v11 zoneName];
      *buf = 138543362;
      v48 = v14;
      _os_log_impl(&dword_1DAA3F000, v13, OS_LOG_TYPE_DEFAULT, "will save zone %{public}@", buf, 0xCu);
    }

    v12 = objc_alloc_init(MEMORY[0x1E695B9B8]);
    [v12 setSavePolicy:0];
    [v12 setAtomic:{objc_msgSend(v11, "isAtomic")}];
    [v42[5] applyToModifyRecordsOperation:v12];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_102;
    v19[3] = &unk_1E85E3CF8;
    v25 = a4;
    v22 = v9;
    v15 = v11;
    v20 = v15;
    v21 = self;
    v23 = &v41;
    v24 = v40;
    [v12 setModifyRecordsCompletionBlock:v19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_115;
    v17[3] = &unk_1E85E3D20;
    v18 = v15;
    [v12 setRequestCompletedBlock:v17];
    [(SCWDatabase *)self _runCKOperation:v12];
  }

  else
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_3;
    v29 = &unk_1E85E3578;
    v30 = v9;
    v30[2](v30, 0);
    v12 = v30;
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&v41, 8);

  v16 = *MEMORY[0x1E69E9840];
}

void __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke(void *a1, void *a2)
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

  *(*(a1[8] + 8) + 24) = [v10 scw_containsObjectPassingTest:&__block_literal_global_98];
}

uint64_t __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2(uint64_t a1, void *a2)
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

void __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_102(uint64_t a1, void *a2, void *a3, void *a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    if (*(a1 + 72))
    {
      if ([v9 sc_hasUnderlyingErrorCode:26])
      {
        v11 = SCWDatabaseLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [*(a1 + 32) zoneName];
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v12;
          _os_log_impl(&dword_1DAA3F000, v11, OS_LOG_TYPE_DEFAULT, "failed to save zone %{public}@ because the zone does not exist, so creating it before trying again", &buf, 0xCu);
        }

        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_105;
        v47[3] = &unk_1E85E3C38;
        v48 = v13;
        v15 = *(a1 + 48);
        v49 = *(a1 + 40);
        v50 = v15;
        [v14 _createZoneInContainerWithSchema:v48 completion:v47];
      }

      else if ([v10 sc_hasUnderlyingErrorCode:14])
      {
        v23 = SCWDatabaseLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [*(a1 + 32) zoneName];
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v24;
          _os_log_impl(&dword_1DAA3F000, v23, OS_LOG_TYPE_DEFAULT, "encountered merge conflicts saving zone %{public}@, so fetching server changes before trying again", &buf, 0xCu);
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v62 = 0x3032000000;
        v63 = __Block_byref_object_copy_;
        v64 = __Block_byref_object_dispose_;
        v65 = 0;
        v25 = [*(a1 + 40) storeCoordinator];
        v26 = *(a1 + 32);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_107;
        v46[3] = &unk_1E85E3C60;
        v46[4] = &buf;
        [v25 readZone:v26 withAccessor:v46];

        v27 = *(a1 + 40);
        v60 = *(a1 + 32);
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_108;
        v41[3] = &unk_1E85E3CA8;
        v42 = *(a1 + 32);
        v29 = *(a1 + 48);
        v43 = *(a1 + 40);
        v44 = v29;
        p_buf = &buf;
        [v27 _fetchZoneChangesForZones:v28 completion:v41];

        _Block_object_dispose(&buf, 8);
      }

      else if ([v10 sc_hasUnderlyingErrorCode:11])
      {
        v30 = SCWDatabaseLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [*(a1 + 32) zoneName];
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v31;
          _os_log_impl(&dword_1DAA3F000, v30, OS_LOG_TYPE_DEFAULT, "encountered unknown item saving zone %{public}@, so staging the zone for merge before trying again", &buf, 0xCu);
        }

        v32 = [*(a1 + 40) storeCoordinator];
        v38 = *(a1 + 32);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_114;
        v39[3] = &unk_1E85E3CD0;
        v40 = vextq_s8(v38, v38, 8uLL);
        [v32 writeZone:v38.i64[0] withAccessor:v39];

        [*(a1 + 40) _saveZoneToContainer:*(a1 + 32) allowRecoveryAttempt:1 completion:*(a1 + 48)];
      }

      else
      {
        v33 = [v10 sc_hasUnderlyingErrorCode:112];
        v34 = SCWDatabaseLog();
        v35 = v34;
        if (v33)
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [*(a1 + 32) zoneName];
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v36;
            _os_log_impl(&dword_1DAA3F000, v35, OS_LOG_TYPE_DEFAULT, "encountered missing identity error saving zone %{public}@, so attempting to recover", &buf, 0xCu);
          }

          [*(a1 + 40) _recoverFromIdentityLossWithCompletion:*(a1 + 48)];
        }

        else
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_102_cold_1(a1);
          }

          (*(*(a1 + 48) + 16))();
        }
      }
    }

    else
    {
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_103;
      v57[3] = &unk_1E85E35A0;
      v59 = *(a1 + 48);
      v58 = v10;
      __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_103(v57);
    }
  }

  else
  {
    v16 = SCWDatabaseLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 32) zoneName];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_1DAA3F000, v16, OS_LOG_TYPE_DEFAULT, "successfully saved zone %{public}@", &buf, 0xCu);
    }

    v18 = [*(a1 + 40) storeCoordinator];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_104;
    v51[3] = &unk_1E85E3C10;
    v37 = *(a1 + 32);
    v19 = v37.i64[0];
    v52 = vextq_s8(v37, v37, 8uLL);
    v55 = *(a1 + 56);
    v53 = v7;
    v20 = v8;
    v21 = *(a1 + 64);
    v54 = v20;
    v56 = v21;
    [v18 writeZone:v19 withAccessor:v51];

    (*(*(a1 + 48) + 16))();
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_104(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _zoneWithSchema:*(a1 + 40) zoneStore:v3];
  v5 = [v4 clientDiff];
  if ([v5 hasSameBaseAsDiff:*(*(*(a1 + 64) + 8) + 40)])
  {
    v6 = [[SCWZoneDiff alloc] initWithModifiedRecords:*(a1 + 48) deletedRecordIDs:*(a1 + 56)];
    [v3 applyServerRecordsDiff:v6];
    [v3 clearPendingCommandsUpToCount:*(*(*(a1 + 72) + 8) + 24)];
  }

  else
  {
    v6 = SCWDatabaseLog();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) zoneName];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1DAA3F000, &v6->super, OS_LOG_TYPE_DEFAULT, "not committing save for zone %{public}@ because it was modified in the interim", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_105(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_106;
    v4[3] = &unk_1E85E33D0;
    v5 = a1[4];
    v6 = v3;
    v7 = a1[6];
    __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_106(v4);
  }

  else
  {
    [a1[5] _saveZoneToContainer:a1[4] allowRecoveryAttempt:1 completion:a1[6]];
  }
}

uint64_t __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_106(uint64_t a1)
{
  v2 = SCWDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_106_cold_1(a1);
  }

  v3 = *(a1 + 40);
  return (*(*(a1 + 48) + 16))();
}

uint64_t __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_107(uint64_t a1, void *a2)
{
  v3 = [a2 serverChangeToken];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

void __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_108(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_3_109;
    v17[3] = &unk_1E85E33D0;
    v18 = *(a1 + 32);
    v19 = v3;
    v20 = *(a1 + 48);
    __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_3_109(v17);
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = 0;
    v4 = [*(a1 + 40) storeCoordinator];
    v5 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_110;
    v10[3] = &unk_1E85E3C60;
    v10[4] = &v11;
    [v4 readZone:v5 withAccessor:v10];

    if ([v12[5] isEqual:*(*(*(a1 + 56) + 8) + 40)])
    {
      v6 = SCWDatabaseLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) zoneName];
        *buf = 138543362;
        v22 = v7;
        _os_log_impl(&dword_1DAA3F000, v6, OS_LOG_TYPE_DEFAULT, "resetting change token for zone %{public}@ because it's missing server changes but didn't get any when fetching", buf, 0xCu);
      }

      v8 = [*(a1 + 40) storeCoordinator];
      [v8 writeZone:*(a1 + 32) withAccessor:&__block_literal_global_113];
    }

    [*(a1 + 40) _saveZoneToContainer:*(a1 + 32) allowRecoveryAttempt:1 completion:*(a1 + 48)];
    _Block_object_dispose(&v11, 8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_3_109(uint64_t a1)
{
  v2 = SCWDatabaseLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_3_109_cold_1(a1);
  }

  v3 = *(a1 + 40);
  return (*(*(a1 + 48) + 16))();
}

uint64_t __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_110(uint64_t a1, void *a2)
{
  v3 = [a2 serverChangeToken];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

void __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_115(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SCWDatabaseLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) zoneName];
    v6 = [v3 requestUUID];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1DAA3F000, v4, OS_LOG_TYPE_DEFAULT, "issued request for zone %{public}@ with UUID %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __69__SCWDatabase__saveZonesToContainer_allowRecoveryAttempt_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__SCWDatabase__saveZonesToContainer_allowRecoveryAttempt_completion___block_invoke_3;
    v5[3] = &unk_1E85E35A0;
    v7 = *(a1 + 48);
    v6 = v3;
    __69__SCWDatabase__saveZonesToContainer_allowRecoveryAttempt_completion___block_invoke_3(v5);
  }

  else
  {
    v4 = [*(a1 + 32) mutableCopy];
    [v4 removeObjectAtIndex:0];
    [*(a1 + 40) _saveZonesToContainer:v4 allowRecoveryAttempt:*(a1 + 56) completion:*(a1 + 48)];
  }
}

- (void)_squashZoneForMerge:(id)a3 zoneStore:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v36 = a4;
  [(SCWDatabase *)self _reloadSnapshotOfZone:v6 fromStore:?];
  v7 = [MEMORY[0x1E695DF70] array];
  v39 = self;
  v8 = [(SCWDatabase *)self zoneSnapshotsByZoneName];
  v37 = v6;
  v9 = [v6 zoneName];
  v10 = [v8 objectForKeyedSubscript:v9];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v35 = v10;
  obj = [v10 allRecords];
  v11 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v45 + 1) + 8 * i);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v16 = [(SCWDatabase *)v39 mergeHandlers];
        v17 = [v16 countByEnumeratingWithState:&v41 objects:v59 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v42;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v42 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v41 + 1) + 8 * j) commandsToMergeRecordWithServer:v15];
              [v7 addObjectsFromArray:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v41 objects:v59 count:16];
          }

          while (v18);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
    }

    while (v12);
  }

  v22 = v36;
  [v36 setServerRecords:MEMORY[0x1E695E0F0]];
  [v36 setServerChangeToken:0];
  [v36 setLastSyncDate:0];
  [v36 setLastDirtyDate:0];
  [v36 setPendingCommands:v7];
  v23 = v37;
  [(SCWDatabase *)v39 _reloadSnapshotOfZone:v37 fromStore:v36];
  v24 = [(SCWDatabase *)v39 zoneSnapshotsByZoneName];
  v25 = [v37 zoneName];
  v26 = [v24 objectForKeyedSubscript:v25];

  v27 = SCWDatabaseLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v37 zoneName];
    v40 = [v36 serverRecords];
    v29 = [v40 count];
    v30 = [v26 allRecords];
    v31 = [v30 count];
    v32 = [v36 pendingCommands];
    v33 = [v26 descriptionOfContents];
    *buf = 138544386;
    v50 = v28;
    v51 = 2048;
    v52 = v29;
    v53 = 2048;
    v54 = v31;
    v55 = 2114;
    v56 = v32;
    v57 = 2114;
    v58 = v33;
    _os_log_impl(&dword_1DAA3F000, v27, OS_LOG_TYPE_DEFAULT, "finished staging zone %{public}@ for merge resulting in %lu server records, %lu client records, pending commands: %{public}@, and client contents: %{public}@", buf, 0x34u);

    v23 = v37;
    v22 = v36;
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)_createZoneInContainerWithSchema:(id)a3 completion:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E695BA80];
  v8 = a3;
  v9 = [v7 alloc];
  v10 = [v8 zoneName];

  v11 = [v9 initWithZoneName:v10];
  v12 = objc_alloc_init(MEMORY[0x1E695B9B0]);
  v18[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v12 setRecordZonesToSave:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__SCWDatabase__createZoneInContainerWithSchema_completion___block_invoke;
  v16[3] = &unk_1E85E3D70;
  v17 = v6;
  v14 = v6;
  [v12 setModifyRecordZonesCompletionBlock:v16];
  [(SCWDatabase *)self _runCKOperation:v12];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_deleteAndRecreateAllZonesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695B9B0]);
  v6 = [(SCWDatabase *)self schema];
  v7 = [v6 zoneIDs];
  [v5 setRecordZoneIDsToDelete:v7];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __56__SCWDatabase__deleteAndRecreateAllZonesWithCompletion___block_invoke;
  v12 = &unk_1E85E3D98;
  v13 = self;
  v14 = v4;
  v8 = v4;
  [v5 setModifyRecordZonesCompletionBlock:&v9];
  [(SCWDatabase *)self _runCKOperation:v5, v9, v10, v11, v12, v13];
}

void __56__SCWDatabase__deleteAndRecreateAllZonesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9 && ([v9 sc_hasUnderlyingErrorCode:26] & 1) == 0)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __56__SCWDatabase__deleteAndRecreateAllZonesWithCompletion___block_invoke_2;
    v32[3] = &unk_1E85E35A0;
    v34 = *(a1 + 40);
    v33 = v10;
    __56__SCWDatabase__deleteAndRecreateAllZonesWithCompletion___block_invoke_2(v32);

    v11 = v34;
  }

  else
  {
    v24 = v8;
    v25 = v7;
    v11 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = [*(a1 + 32) schema];
    v13 = [v12 zoneSchemas];

    v14 = [v13 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        v17 = 0;
        do
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * v17);
          v19 = objc_alloc(MEMORY[0x1E695BA80]);
          v20 = [v18 zoneName];
          v21 = [v19 initWithZoneName:v20];

          [v11 addObject:v21];
          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v15);
    }

    v22 = objc_alloc_init(MEMORY[0x1E695B9B0]);
    [v22 setRecordZonesToSave:v11];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __56__SCWDatabase__deleteAndRecreateAllZonesWithCompletion___block_invoke_3;
    v26[3] = &unk_1E85E3D70;
    v27 = *(a1 + 40);
    [v22 setModifyRecordZonesCompletionBlock:v26];
    [*(a1 + 32) _runCKOperation:v22];

    v8 = v24;
    v7 = v25;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_zoneWithSchema:(id)a3 zoneStore:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SCWZone alloc] initWithSchema:v6 store:v5];

  return v7;
}

- (void)_reloadSnapshotOfZone:(id)a3 fromStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCWDatabase *)self zoneSnapshotsByZoneName];
  v9 = [v6 zoneName];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [(SCWDatabase *)self _zoneWithSchema:v6 zoneStore:v7];

  v12 = [SCWZoneSnapshot alloc];
  v13 = [v11 clientRecords];
  v14 = [(SCWZoneSnapshot *)v12 initWithZoneSchema:v6 records:v13];
  v15 = [(SCWDatabase *)self zoneSnapshotsByZoneName];
  v16 = [v6 zoneName];
  [v15 setObject:v14 forKeyedSubscript:v16];

  v17 = [(SCWDatabase *)self zoneSnapshotsByZoneName];
  v18 = [v6 zoneName];
  v19 = [v17 objectForKeyedSubscript:v18];

  if (([v10 isEqualToSnapshot:v19] & 1) == 0)
  {
    os_unfair_lock_lock(&self->_observersLock);
    v20 = [(SCWDatabase *)self observersByZoneName];
    v21 = [v6 zoneName];
    v22 = [v20 objectForKeyedSubscript:v21];
    v23 = [v22 copy];

    os_unfair_lock_unlock(&self->_observersLock);
    v24 = [(SCWDatabase *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__SCWDatabase__reloadSnapshotOfZone_fromStore___block_invoke;
    block[3] = &unk_1E85E3DC0;
    v27 = v23;
    v28 = self;
    v29 = v6;
    v30 = v10;
    v31 = v19;
    v25 = v23;
    dispatch_async(v24, block);
  }
}

void __47__SCWDatabase__reloadSnapshotOfZone_fromStore___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v9 = [*(a1 + 48) zoneName];
        [v7 database:v8 didChangeZone:v9 from:*(a1 + 56) to:*(a1 + 64)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_recoverFromIdentityLossWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCWDatabase *)self storeCoordinator];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__SCWDatabase__recoverFromIdentityLossWithCompletion___block_invoke;
  v9[3] = &unk_1E85E3930;
  v9[4] = self;
  [v5 writeWithAccessor:v9];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SCWDatabase__recoverFromIdentityLossWithCompletion___block_invoke_2;
  v7[3] = &unk_1E85E39A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SCWDatabase *)self _deleteAndRecreateAllZonesWithCompletion:v7];
}

void __54__SCWDatabase__recoverFromIdentityLossWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [*(a1 + 32) schema];
  v5 = [v4 zoneSchemas];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = *(a1 + 32);
        v12 = [v3 zoneStoreForSchema:v10];
        [v11 _squashZoneForMerge:v10 zoneStore:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __54__SCWDatabase__recoverFromIdentityLossWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__SCWDatabase__recoverFromIdentityLossWithCompletion___block_invoke_3;
    v10[3] = &unk_1E85E35A0;
    v4 = &v12;
    v12 = *(a1 + 40);
    v11 = v3;
    __54__SCWDatabase__recoverFromIdentityLossWithCompletion___block_invoke_3(v10);
    v5 = v11;
  }

  else
  {
    v6 = *(a1 + 32);
    v5 = [v6 schema];
    v7 = [v5 zoneSchemas];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__SCWDatabase__recoverFromIdentityLossWithCompletion___block_invoke_4;
    v8[3] = &unk_1E85E3690;
    v4 = &v9;
    v9 = *(a1 + 40);
    [v6 _saveZonesToContainer:v7 allowRecoveryAttempt:0 completion:v8];
  }
}

- (void)_runCKOperation:(id)a3
{
  v4 = a3;
  v5 = [v4 configuration];
  v6 = [v5 copy];
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
  [v4 setConfiguration:v10];
  v9 = [(SCWDatabase *)self container];
  [v9 addDatabaseOperation:v4];
}

- (id)_sanitizeErrorForClients:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696AA08];
  v11[0] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"SCWErrorDomain" code:1 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __48__SCWDatabase_modifyContentsOfZone_withCommand___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_1_0(&dword_1DAA3F000, a2, a3, "rejecting attempt to modify an unknown zone: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_53_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_1DAA3F000, v0, v1, "failed to fetch account info with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__SCWDatabase__enqueueStartupSequenceWithFeatures___block_invoke_21_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_1DAA3F000, v0, v1, "failed to save database subscription with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__SCWDatabase__fetchDatabaseChangesWithCompletion___block_invoke_2_77_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_1DAA3F000, v0, v1, "failed to fetch database changes with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__SCWDatabase__fetchZoneChangesForZones_completion___block_invoke_95_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = 138543618;
  v6 = v2;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_1DAA3F000, a2, OS_LOG_TYPE_ERROR, "failed to fetch changes for zones: %{public}@ with error: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_102_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) zoneName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_1DAA3F000, v2, v3, "failed to save zone %{public}@ with error: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_2_106_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) zoneName];
  v3 = *(a1 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_1DAA3F000, v4, v5, "failed to create zone %{public}@ with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __68__SCWDatabase__saveZoneToContainer_allowRecoveryAttempt_completion___block_invoke_3_109_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) zoneName];
  v3 = *(a1 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_1DAA3F000, v4, v5, "failed to save zone %{public}@ because we couldn't fetch changes due to error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end