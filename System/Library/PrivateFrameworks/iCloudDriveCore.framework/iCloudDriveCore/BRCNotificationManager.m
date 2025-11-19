@interface BRCNotificationManager
- (BOOL)hasWatcherMatchingGlobalItemID:(id)a3;
- (BRCNotificationManager)initWithAccountSession:(id)a3;
- (id)pipeWithReceiver:(id)a3;
- (void)_dispatchUpdatesToPipesWithRank:(unint64_t)a3;
- (void)_queueAdditionalUpdates;
- (void)close;
- (void)fetchLastFlushedRankWithReply:(id)a3;
- (void)flushUpdatesWithRank:(unint64_t)a3;
- (void)getPipeWithXPCReceiver:(id)a3 client:(id)a4 reply:(id)a5;
- (void)invalidatePipeReceiversWatchingAppLibraryIDs:(id)a3 completionBlock:(id)a4;
- (void)invalidatePipesWatchingAppLibraryIDs:(id)a3;
- (void)pipeDelegateInvalidated:(id)a3;
- (void)queueUpdate:(id)a3;
- (void)queueUpdateForItemAtRowID:(unint64_t)a3;
- (void)registerAppLibraries:(id)a3 forFlags:(unint64_t)a4;
- (void)registerPipe:(id)a3 asWatcherForFileObjectID:(id)a4;
- (void)unregisterAppLibraries:(id)a3 forFlags:(unint64_t)a4;
- (void)unregisterPipeAsWatcher:(id)a3;
@end

@implementation BRCNotificationManager

- (void)_queueAdditionalUpdates
{
  v31 = *MEMORY[0x277D85DE8];
  obj = self->_additionalUpdatesItemRowID;
  objc_sync_enter(obj);
  if ([(NSMutableSet *)self->_additionalUpdatesItemRowID count])
  {
    v3 = [(NSMutableSet *)self->_additionalUpdatesItemRowID copy];
    [(NSMutableSet *)self->_additionalUpdatesItemRowID removeAllObjects];
    objc_sync_exit(obj);

    memset(v23, 0, sizeof(v23));
    __brc_create_section(0, "[BRCNotificationManager _queueAdditionalUpdates]", 248, 0, v23);
    v4 = brc_bread_crumbs();
    v5 = brc_notifications_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v16 = v23[0];
      v17 = [v3 count];
      *buf = 134218498;
      v26 = v16;
      v27 = 2048;
      v28 = v17;
      v29 = 2112;
      v30 = v4;
      _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx collecting %lu additional folder updates%@", buf, 0x20u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          v12 = [(BRCAccountSession *)self->_session itemFetcher];
          v13 = [v12 itemByRowID:{objc_msgSend(v10, "unsignedLongLongValue")}];

          [v13 triggerNotificationIfNeeded];
          objc_autoreleasePoolPop(v11);
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);
    }

    __brc_leave_section(v23);
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    objc_sync_exit(obj);
    v15 = *MEMORY[0x277D85DE8];
  }
}

- (BRCNotificationManager)initWithAccountSession:(id)a3
{
  v5 = a3;
  v34.receiver = self;
  v34.super_class = BRCNotificationManager;
  v6 = [(BRCNotificationManager *)&v34 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
    v8 = [(BRCPersistedState *)BRCClientRanksPersistedState loadFromClientStateInSession:v7->_session];
    state = v7->_state;
    v7->_state = v8;

    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    pipes = v7->_pipes;
    v7->_pipes = v10;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(v12, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.brc.notififcation-mgr", v13);

    queue = v7->_queue;
    v7->_queue = v14;

    v16 = objc_alloc_init(MEMORY[0x277CFAE70]);
    notifs = v7->_notifs;
    v7->_notifs = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    additionalUpdatesItemRowID = v7->_additionalUpdatesItemRowID;
    v7->_additionalUpdatesItemRowID = v18;

    v20 = [(BRCAccountSession *)v7->_session clientDB];
    v21 = [v20 serialQueue];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __49__BRCNotificationManager_initWithAccountSession___block_invoke;
    v31 = &unk_2784FF478;
    v32 = v5;
    v22 = v7;
    v33 = v22;
    dispatch_sync(v21, &v28);

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    watchersByFileObjectID = v22->_watchersByFileObjectID;
    v22->_watchersByFileObjectID = v23;

    v25 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    fileObjectIDByWatcher = v22->_fileObjectIDByWatcher;
    v22->_fileObjectIDByWatcher = v25;
  }

  return v7;
}

void __49__BRCNotificationManager_initWithAccountSession___block_invoke(uint64_t a1)
{
  v2 = [(BRCPersistedState *)BRCClientRanksPersistedState loadFromClientStateInSession:*(a1 + 32)];
  v3 = [v2 nextNotifRank];

  *(*(a1 + 40) + 88) = v3;
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__BRCNotificationManager_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = self;
  objc_sync_enter(v4);
  watchersByFileObjectID = v4->_watchersByFileObjectID;
  v4->_watchersByFileObjectID = 0;

  fileObjectIDByWatcher = v4->_fileObjectIDByWatcher;
  v4->_fileObjectIDByWatcher = 0;

  objc_sync_exit(v4);
}

uint64_t __31__BRCNotificationManager_close__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 16) objectEnumerator];
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

        [*(*(&v11 + 1) + 8 * v6++) close];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = 0;

  result = [*(*(a1 + 32) + 56) removeAllObjects];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)registerAppLibraries:(id)a3 forFlags:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    v9 = (a4 >> 1) & 1;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v10++) registerQueryIsRecursive:v9];
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)unregisterAppLibraries:(id)a3 forFlags:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    v9 = (a4 >> 1) & 1;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v10++) unregisterQueryIsRecursive:v9];
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerPipe:(id)a3 asWatcherForFileObjectID:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  [(BRCNotificationManager *)v8 unregisterPipeAsWatcher:v6];
  v9 = [(NSMapTable *)v8->_fileObjectIDByWatcher objectForKey:v6];
  if (v9)
  {
    v10 = [(NSMutableDictionary *)v8->_watchersByFileObjectID objectForKeyedSubscript:v9];
    [v10 removeObject:v6];
  }

  [(NSMapTable *)v8->_fileObjectIDByWatcher setObject:v7 forKey:v6];
  v11 = [(NSMutableDictionary *)v8->_watchersByFileObjectID objectForKeyedSubscript:v7];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(NSMutableDictionary *)v8->_watchersByFileObjectID setObject:v11 forKeyedSubscript:v7];
  }

  [v11 addObject:v6];
  v12 = brc_bread_crumbs();
  v13 = brc_notifications_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[NOTIF] Pipe %@ watching %@%@", &v15, 0x20u);
  }

  objc_sync_exit(v8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)unregisterPipeAsWatcher:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMapTable *)v5->_fileObjectIDByWatcher objectForKey:v4];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)v5->_watchersByFileObjectID objectForKeyedSubscript:v6];
    [v7 removeObject:v4];
    if (![v7 count])
    {
      [(NSMutableDictionary *)v5->_watchersByFileObjectID setObject:0 forKeyedSubscript:v6];
    }

    v8 = brc_bread_crumbs();
    v9 = brc_notifications_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412802;
      v12 = v4;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[NOTIF] Pipe %@ no longer watching %@%@", &v11, 0x20u);
    }
  }

  objc_sync_exit(v5);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)getPipeWithXPCReceiver:(id)a3 client:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [BRCNotificationManager getPipeWithXPCReceiver:client:reply:];
  }

  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__BRCNotificationManager_getPipeWithXPCReceiver_client_reply___block_invoke;
  v15[3] = &unk_278500CE0;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __62__BRCNotificationManager_getPipeWithXPCReceiver_client_reply___block_invoke(void *a1)
{
  v2 = [[BRCNotificationPipe alloc] initWithXPCReceiver:a1[4] client:a1[5] manager:a1[6] startingRank:*(a1[6] + 88)];
  [(BRCNotificationPipe *)v2 setDelegate:a1[5]];
  [*(a1[6] + 16) addObject:v2];
  (*(a1[7] + 16))();
}

- (id)pipeWithReceiver:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__BRCNotificationManager_pipeWithReceiver___block_invoke;
  block[3] = &unk_278500D08;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

uint64_t __43__BRCNotificationManager_pipeWithReceiver___block_invoke(void *a1)
{
  v2 = [[BRCNotificationPipe alloc] initWithReceiver:a1[4] manager:a1[5] startingRank:*(a1[5] + 88)];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1[5] + 16);
  v6 = *(*(a1[6] + 8) + 40);

  return [v5 addObject:v6];
}

- (void)queueUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 fileObjectID];

  if (!v5)
  {
    [BRCNotificationManager queueUpdate:];
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__BRCNotificationManager_queueUpdate___block_invoke;
  v8[3] = &unk_2784FF478;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async_with_logs_1(queue, v8);
}

- (void)queueUpdateForItemAtRowID:(unint64_t)a3
{
  obj = self->_additionalUpdatesItemRowID;
  objc_sync_enter(obj);
  additionalUpdatesItemRowID = self->_additionalUpdatesItemRowID;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableSet *)additionalUpdatesItemRowID addObject:v6];

  objc_sync_exit(obj);
}

- (void)fetchLastFlushedRankWithReply:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__BRCNotificationManager_fetchLastFlushedRankWithReply___block_invoke;
  v7[3] = &unk_2784FFBC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_dispatchUpdatesToPipesWithRank:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_previousMaxRank != a3)
  {
    v5 = [MEMORY[0x277CFAE58] br_getDomainIdentifierForCurrentPersona];
    v6 = [MEMORY[0x277CC64A8] br_sharedProviderManagerWithDomainID:v5];
    [v6 br_signalWorkingSetEnumeratorWithCompletionHandler:&__block_literal_global_13];
  }

  self->_previousMaxRank = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_pipes;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        [v12 processUpdates:self->_notifs withRank:{a3, v15}];
        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(BRNotificationQueue *)self->_notifs removeAllObjects];
  v14 = *MEMORY[0x277D85DE8];
}

void __58__BRCNotificationManager__dispatchUpdatesToPipesWithRank___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      __58__BRCNotificationManager__dispatchUpdatesToPipesWithRank___block_invoke_cold_1(v2, v3, v4);
    }
  }
}

- (void)flushUpdatesWithRank:(unint64_t)a3
{
  [(BRCNotificationManager *)self _queueAdditionalUpdates];
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__BRCNotificationManager_flushUpdatesWithRank___block_invoke;
  v6[3] = &unk_278500D50;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async_with_logs_1(queue, v6);
}

- (void)invalidatePipesWatchingAppLibraryIDs:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__BRCNotificationManager_invalidatePipesWatchingAppLibraryIDs___block_invoke;
  v7[3] = &unk_2784FF478;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __63__BRCNotificationManager_invalidatePipesWatchingAppLibraryIDs___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  __brc_create_section(0, "[BRCNotificationManager invalidatePipesWatchingAppLibraryIDs:]_block_invoke", 268, 0, v14);
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    *buf = 134218498;
    v17 = v14[0];
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx invalidating pipes watching %@%@", buf, 0x20u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(*(a1 + 40) + 16) objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidateIfWatchingAppLibraryIDs:*(a1 + 32)];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  __brc_leave_section(v14);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)pipeDelegateInvalidated:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__BRCNotificationManager_pipeDelegateInvalidated___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __50__BRCNotificationManager_pipeDelegateInvalidated___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 delegate];
        v10 = *(a1 + 40);

        if (v9 == v10)
        {
          [v8 close];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)invalidatePipeReceiversWatchingAppLibraryIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__BRCNotificationManager_invalidatePipeReceiversWatchingAppLibraryIDs_completionBlock___block_invoke;
  v11[3] = &unk_2784FF5B8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async_with_logs_1(queue, v11);
}

void __87__BRCNotificationManager_invalidatePipeReceiversWatchingAppLibraryIDs_completionBlock___block_invoke(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  __brc_create_section(0, "[BRCNotificationManager invalidatePipeReceiversWatchingAppLibraryIDs:completionBlock:]_block_invoke", 293, 0, v14);
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[4];
    *buf = 134218498;
    v17 = v14[0];
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[NOTIF] ┏%llx invalidating NSMDQs watching %@%@", buf, 0x20u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1[5] + 16);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidateReceiverIfWatchingAppLibraryIDs:{a1[4], v10}];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  (*(a1[6] + 16))();
  __brc_leave_section(v14);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasWatcherMatchingGlobalItemID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5->_pipes;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v12 + 1) + 8 * i) isWatchingGlobalItemID:{v4, v12}])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v5);
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)getPipeWithXPCReceiver:client:reply:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: reply%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)queueUpdate:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: item.fileObjectID%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __58__BRCNotificationManager__dispatchUpdatesToPipesWithRank___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] failed to signal enumerator for root container: %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end