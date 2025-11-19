@interface WBTabGroupSyncAgentProxy
+ (WBTabGroupSyncAgentProxy)sharedProxy;
- (BOOL)_shouldAttemptToReconnect;
- (WBTabGroupSyncAgentProxy)init;
- (id)_remoteObjectProxy;
- (void)_enumerateSyncObserversUsingBlock:(id)a3;
- (void)_setUpConnection;
- (void)_setUpConnectionIfNeeded;
- (void)_setUpSyncObserverIfNeeded;
- (void)acceptShareForURL:(id)a3 invitationTokenData:(id)a4 completionHandler:(id)a5;
- (void)activeParticipantsDidUpdateInTabGroupWithUUID:(id)a3;
- (void)activeParticipantsDidUpdateInTabWithUUID:(id)a3;
- (void)addSyncObserver:(id)a3;
- (void)beginSharingTabGroupWithUUID:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)didAddTabWithUUID:(id)a3 title:(id)a4 inSharedTabGroupWithUUID:(id)a5 byParticipantWithRecordID:(id)a6;
- (void)didChangeBackgroundImageInSharedTabGroupWithUUID:(id)a3 byParticipantWithRecordID:(id)a4;
- (void)didChangeScopedFavoritesInSharedTabGroupWithUUID:(id)a3 byParticipantWithRecordID:(id)a4;
- (void)didFetchRecentlyAcceptedSharedTabGroupWithUUID:(id)a3 acceptedShareDate:(id)a4;
- (void)didNavigateInTabWithUUID:(id)a3 title:(id)a4 inSharedTabGroupWithUUID:(id)a5 byParticipantWithRecordID:(id)a6;
- (void)didRemoveTabWithUUID:(id)a3 title:(id)a4 inSharedTabGroupWithUUID:(id)a5 byParticipantWithRecordID:(id)a6;
- (void)movePresenceForParticipantToTabWithUUID:(id)a3;
- (void)participants:(id)a3 didJoinSharedTabGroupWithUUID:(id)a4;
- (void)participants:(id)a3 didLeaveSharedTabGroupWithUUID:(id)a4;
- (void)removeSyncObserver:(id)a3;
- (void)scheduleSyncIfNeeded;
- (void)sentinelDidDeallocateWithContext:(id)a3;
- (void)shareDidUpdateForTabGroupWithUUID:(id)a3;
- (void)userDidAcceptTabGroupShareWithMetadata:(id)a3 inProfileWithIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation WBTabGroupSyncAgentProxy

+ (WBTabGroupSyncAgentProxy)sharedProxy
{
  if (sharedProxy_onceToken != -1)
  {
    +[WBTabGroupSyncAgentProxy sharedProxy];
  }

  v3 = sharedProxy_sharedProxy;

  return v3;
}

uint64_t __39__WBTabGroupSyncAgentProxy_sharedProxy__block_invoke()
{
  sharedProxy_sharedProxy = objc_alloc_init(WBTabGroupSyncAgentProxy);

  return MEMORY[0x2821F96F8]();
}

- (WBTabGroupSyncAgentProxy)init
{
  v13.receiver = self;
  v13.super_class = WBTabGroupSyncAgentProxy;
  v2 = [(WBTabGroupSyncAgentProxy *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    syncObservers = v3->_syncObservers;
    v3->_syncObservers = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.WebBookmarks.WBTabGroupSyncAgentProxy.%@.%p._syncObserverQueue", objc_opt_class(), v3];
    v8 = dispatch_queue_create([v7 UTF8String], v6);
    syncObserverQueue = v3->_syncObserverQueue;
    v3->_syncObserverQueue = v8;

    v10 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v10 addObserver:v3 selector:sel__syncAgentDidLaunch_ name:*MEMORY[0x277D49D28] object:0];

    [(WBTabGroupSyncAgentProxy *)v3 _setUpConnectionIfNeeded];
    v11 = v3;
  }

  return v3;
}

- (void)_setUpConnectionIfNeeded
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_connection)
  {
    [(WBTabGroupSyncAgentProxy *)self _setUpConnection];
    [(WBTabGroupSyncAgentProxy *)self _setUpSyncObserverIfNeeded];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setUpConnection
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_alloc(MEMORY[0x277CCAE80]);
  v4 = [v3 initWithMachServiceName:*MEMORY[0x277D49D38] options:0];
  connection = self->_connection;
  self->_connection = v4;

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_288273B90];
  WBSetupTabGroupSyncAgentProtocolInterface(v6);
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__WBTabGroupSyncAgentProxy__setUpConnection__block_invoke;
  v17[3] = &unk_279E75450;
  objc_copyWeak(&v18, &location);
  v7 = MEMORY[0x2743D6830](v17);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__WBTabGroupSyncAgentProxy__setUpConnection__block_invoke_2;
  v15[3] = &unk_279E75478;
  v8 = v7;
  v16 = v8;
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v15];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __44__WBTabGroupSyncAgentProxy__setUpConnection__block_invoke_68;
  v13 = &unk_279E75478;
  v9 = v8;
  v14 = v9;
  [(NSXPCConnection *)self->_connection setInvalidationHandler:&v10];
  [(NSXPCConnection *)self->_connection resume:v10];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_setUpSyncObserverIfNeeded
{
  syncObserverQueue = self->_syncObserverQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WBTabGroupSyncAgentProxy__setUpSyncObserverIfNeeded__block_invoke;
  block[3] = &unk_279E751F0;
  block[4] = self;
  dispatch_async(syncObserverQueue, block);
}

void __54__WBTabGroupSyncAgentProxy__setUpSyncObserverIfNeeded__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 32) count])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__0;
    v13 = __Block_byref_object_dispose__0;
    v14 = 0;
    v2 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v5 = __54__WBTabGroupSyncAgentProxy__setUpSyncObserverIfNeeded__block_invoke_75;
    v6 = &unk_279E754E0;
    v7 = v2;
    v8 = &v9;
    v3 = v4;
    os_unfair_lock_lock(v2 + 2);
    v5(v3);

    os_unfair_lock_unlock(v2 + 2);
    [v10[5] addSyncObserver:*(a1 + 32)];
    _Block_object_dispose(&v9, 8);
  }
}

- (void)scheduleSyncIfNeeded
{
  v2 = [(WBTabGroupSyncAgentProxy *)self _remoteObjectProxy];
  [v2 scheduleSyncIfNeeded];
}

- (id)_remoteObjectProxy
{
  [(WBTabGroupSyncAgentProxy *)self _setUpConnectionIfNeeded];
  connection = self->_connection;

  return [(NSXPCConnection *)connection remoteObjectProxy];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = WBTabGroupSyncAgentProxy;
  [(WBTabGroupSyncAgentProxy *)&v3 dealloc];
}

void __44__WBTabGroupSyncAgentProxy__setUpConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 2);
    v2 = *&v3[4]._os_unfair_lock_opaque;
    *&v3[4]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v3 + 2);
    [(os_unfair_lock_s *)v3 _setUpSyncObserverIfNeeded];
    WeakRetained = v3;
  }
}

uint64_t __44__WBTabGroupSyncAgentProxy__setUpConnection__block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __44__WBTabGroupSyncAgentProxy__setUpConnection__block_invoke_2_cold_1(v2);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __44__WBTabGroupSyncAgentProxy__setUpConnection__block_invoke_68(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __44__WBTabGroupSyncAgentProxy__setUpConnection__block_invoke_68_cold_1(v2);
  }

  return (*(*(a1 + 32) + 16))();
}

- (BOOL)_shouldAttemptToReconnect
{
  os_unfair_lock_assert_owner(&self->_lock);
  firstReconnectionAttemptDate = self->_firstReconnectionAttemptDate;
  if (!firstReconnectionAttemptDate)
  {
    return 1;
  }

  [(NSDate *)firstReconnectionAttemptDate timeIntervalSinceNow];
  if (v4 < -20.0)
  {
    v5 = self->_firstReconnectionAttemptDate;
    self->_firstReconnectionAttemptDate = 0;

    return 1;
  }

  return self->_numberOfReconnectionAttempts < 5;
}

void __54__WBTabGroupSyncAgentProxy__setUpSyncObserverIfNeeded__block_invoke_75(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (v2[2])
  {
    v4 = [v2[2] remoteObjectProxy];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    *(*(a1 + 32) + 48) = 0;
  }

  else
  {
    v9 = [v2 _shouldAttemptToReconnect];
    v10 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Will attempt to add sync observer again after connection ended", &v21, 2u);
      }

      if (!*(*v3 + 40))
      {
        v12 = [MEMORY[0x277CBEAA8] now];
        v13 = *(*v3 + 40);
        *(*v3 + 40) = v12;

        *(*v3 + 48) = 0;
      }

      v14 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(*v3 + 40);
        v16 = *(*v3 + 48);
        v21 = 134218242;
        v22 = v16;
        v23 = 2114;
        v24 = v15;
        _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "Will attempt to reconnect after %ld retries since %{public}@", &v21, 0x16u);
      }

      ++*(*(a1 + 32) + 48);
      [*(a1 + 32) _setUpConnection];
      v17 = [*(*(a1 + 32) + 16) remoteObjectProxy];
      v18 = *(*(a1 + 40) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __54__WBTabGroupSyncAgentProxy__setUpSyncObserverIfNeeded__block_invoke_75_cold_1(v3, v11);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateSyncObserversUsingBlock:(id)a3
{
  v4 = a3;
  syncObserverQueue = self->_syncObserverQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__WBTabGroupSyncAgentProxy__enumerateSyncObserversUsingBlock___block_invoke;
  v7[3] = &unk_279E75530;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(syncObserverQueue, v7);
}

void __62__WBTabGroupSyncAgentProxy__enumerateSyncObserversUsingBlock___block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 32) setRepresentation];
  v4 = v11[5];
  v11[5] = v3;

  v5 = [v11[5] count];
  if (!v5)
  {
    v6 = [*(a1 + 32) _remoteObjectProxy];
    [v6 removeSyncObserver:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__WBTabGroupSyncAgentProxy__enumerateSyncObserversUsingBlock___block_invoke_2;
    v7[3] = &unk_279E75508;
    v9 = &v10;
    v8 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  _Block_object_dispose(&v10, 8);
}

void __62__WBTabGroupSyncAgentProxy__enumerateSyncObserversUsingBlock___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
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
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addSyncObserver:(id)a3
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__0;
  v7[4] = __Block_byref_object_dispose__0;
  v8 = a3;
  syncObserverQueue = self->_syncObserverQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__WBTabGroupSyncAgentProxy_addSyncObserver___block_invoke;
  v6[3] = &unk_279E75260;
  v6[4] = self;
  v6[5] = v7;
  v5 = v8;
  dispatch_async(syncObserverQueue, v6);
  _Block_object_dispose(v7, 8);
}

void __44__WBTabGroupSyncAgentProxy_addSyncObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v16 = v2;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = [*(*(a1 + 32) + 32) safari_isEmpty];
  [*(*(a1 + 32) + 32) addObject:v2];
  [v16 safari_setDeallocationSentinelForObserver:*(a1 + 32)];
  if (v5)
  {
    v6 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v13 = __44__WBTabGroupSyncAgentProxy_addSyncObserver___block_invoke_2;
    v14 = &unk_279E751F0;
    v15 = v6;
    v7 = v12;
    os_unfair_lock_lock(v6 + 2);
    v13(v7);

    os_unfair_lock_unlock(v6 + 2);
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    os_unfair_lock_unlock((v8 + 8));
    if (v9)
    {
      v10 = [*(a1 + 32) _remoteObjectProxy];
      [v10 addSyncObserver:*(a1 + 32)];
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __44__WBTabGroupSyncAgentProxy_addSyncObserver___block_invoke_cold_1(v11);
      }
    }
  }

  WBSReleaseOnMainQueueImpl();
}

void *__44__WBTabGroupSyncAgentProxy_addSyncObserver___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return [result _setUpConnection];
  }

  return result;
}

- (void)removeSyncObserver:(id)a3
{
  v4 = a3;
  syncObserverQueue = self->_syncObserverQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__WBTabGroupSyncAgentProxy_removeSyncObserver___block_invoke;
  v7[3] = &unk_279E753F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(syncObserverQueue, v7);
}

void __47__WBTabGroupSyncAgentProxy_removeSyncObserver___block_invoke(uint64_t a1)
{
  [*(a1 + 32) safari_removeDeallocationSentinelForObserver:*(a1 + 40)];
  [*(*(a1 + 40) + 32) removeObject:*(a1 + 32)];
  if ([*(*(a1 + 40) + 32) safari_isEmpty])
  {
    os_unfair_lock_lock((*(a1 + 40) + 8));
    v2 = *(a1 + 40);
    v3 = *(v2 + 16);
    os_unfair_lock_unlock((v2 + 8));
    if (v3)
    {
      v4 = [*(a1 + 40) _remoteObjectProxy];
      [v4 removeSyncObserver:*(a1 + 40)];
    }
  }
}

- (void)userDidAcceptTabGroupShareWithMetadata:(id)a3 inProfileWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WBTabGroupSyncAgentProxy *)self _remoteObjectProxy];
  [v11 userDidAcceptTabGroupShareWithMetadata:v10 inProfileWithIdentifier:v9 completionHandler:v8];
}

- (void)beginSharingTabGroupWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(WBTabGroupSyncAgentProxy *)self _setUpConnectionIfNeeded];
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__WBTabGroupSyncAgentProxy_beginSharingTabGroupWithUUID_completionHandler___block_invoke;
  v11[3] = &unk_279E75558;
  v12 = v6;
  v9 = v6;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
  [v10 beginSharingTabGroupWithUUID:v7 completionHandler:v9];
}

- (void)movePresenceForParticipantToTabWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(WBTabGroupSyncAgentProxy *)self _remoteObjectProxy];
  [v5 movePresenceForParticipantToTabWithUUID:v4];
}

- (void)acceptShareForURL:(id)a3 invitationTokenData:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WBTabGroupSyncAgentProxy *)self _remoteObjectProxy];
  [v11 acceptShareForURL:v10 invitationTokenData:v9 completionHandler:v8];
}

- (void)sentinelDidDeallocateWithContext:(id)a3
{
  syncObserverQueue = self->_syncObserverQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WBTabGroupSyncAgentProxy_sentinelDidDeallocateWithContext___block_invoke;
  block[3] = &unk_279E751F0;
  block[4] = self;
  dispatch_async(syncObserverQueue, block);
}

void __61__WBTabGroupSyncAgentProxy_sentinelDidDeallocateWithContext___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 32) safari_isEmpty])
  {
    v2 = [*(a1 + 32) _remoteObjectProxy];
    [v2 removeSyncObserver:*(a1 + 32)];
  }
}

- (void)shareDidUpdateForTabGroupWithUUID:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__WBTabGroupSyncAgentProxy_shareDidUpdateForTabGroupWithUUID___block_invoke;
  v7[3] = &unk_279E75580;
  v8 = v5;
  v9 = a2;
  v6 = v5;
  [(WBTabGroupSyncAgentProxy *)self _enumerateSyncObserversUsingBlock:v7];
}

void __62__WBTabGroupSyncAgentProxy_shareDidUpdateForTabGroupWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 shareDidUpdateForTabGroupWithUUID:*(a1 + 32)];
  }
}

- (void)participants:(id)a3 didJoinSharedTabGroupWithUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__WBTabGroupSyncAgentProxy_participants_didJoinSharedTabGroupWithUUID___block_invoke;
  v11[3] = &unk_279E755A8;
  v13 = v8;
  v14 = a2;
  v12 = v7;
  v9 = v8;
  v10 = v7;
  [(WBTabGroupSyncAgentProxy *)self _enumerateSyncObserversUsingBlock:v11];
}

void __71__WBTabGroupSyncAgentProxy_participants_didJoinSharedTabGroupWithUUID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 participants:a1[4] didJoinSharedTabGroupWithUUID:a1[5]];
  }
}

- (void)participants:(id)a3 didLeaveSharedTabGroupWithUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__WBTabGroupSyncAgentProxy_participants_didLeaveSharedTabGroupWithUUID___block_invoke;
  v11[3] = &unk_279E755A8;
  v13 = v8;
  v14 = a2;
  v12 = v7;
  v9 = v8;
  v10 = v7;
  [(WBTabGroupSyncAgentProxy *)self _enumerateSyncObserversUsingBlock:v11];
}

void __72__WBTabGroupSyncAgentProxy_participants_didLeaveSharedTabGroupWithUUID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 participants:a1[4] didLeaveSharedTabGroupWithUUID:a1[5]];
  }
}

- (void)activeParticipantsDidUpdateInTabGroupWithUUID:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__WBTabGroupSyncAgentProxy_activeParticipantsDidUpdateInTabGroupWithUUID___block_invoke;
  v7[3] = &unk_279E75580;
  v8 = v5;
  v9 = a2;
  v6 = v5;
  [(WBTabGroupSyncAgentProxy *)self _enumerateSyncObserversUsingBlock:v7];
}

void __74__WBTabGroupSyncAgentProxy_activeParticipantsDidUpdateInTabGroupWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 activeParticipantsDidUpdateInTabGroupWithUUID:*(a1 + 32)];
  }
}

- (void)activeParticipantsDidUpdateInTabWithUUID:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__WBTabGroupSyncAgentProxy_activeParticipantsDidUpdateInTabWithUUID___block_invoke;
  v7[3] = &unk_279E75580;
  v8 = v5;
  v9 = a2;
  v6 = v5;
  [(WBTabGroupSyncAgentProxy *)self _enumerateSyncObserversUsingBlock:v7];
}

void __69__WBTabGroupSyncAgentProxy_activeParticipantsDidUpdateInTabWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 activeParticipantsDidUpdateInTabWithUUID:*(a1 + 32)];
  }
}

- (void)didAddTabWithUUID:(id)a3 title:(id)a4 inSharedTabGroupWithUUID:(id)a5 byParticipantWithRecordID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__WBTabGroupSyncAgentProxy_didAddTabWithUUID_title_inSharedTabGroupWithUUID_byParticipantWithRecordID___block_invoke;
  v19[3] = &unk_279E755D0;
  v23 = v14;
  v24 = a2;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  [(WBTabGroupSyncAgentProxy *)self _enumerateSyncObserversUsingBlock:v19];
}

void __103__WBTabGroupSyncAgentProxy_didAddTabWithUUID_title_inSharedTabGroupWithUUID_byParticipantWithRecordID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[8];
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 didAddTabWithUUID:a1[4] title:a1[5] inSharedTabGroupWithUUID:a1[6] byParticipantWithRecordID:a1[7]];
  }
}

- (void)didNavigateInTabWithUUID:(id)a3 title:(id)a4 inSharedTabGroupWithUUID:(id)a5 byParticipantWithRecordID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __110__WBTabGroupSyncAgentProxy_didNavigateInTabWithUUID_title_inSharedTabGroupWithUUID_byParticipantWithRecordID___block_invoke;
  v19[3] = &unk_279E755D0;
  v23 = v14;
  v24 = a2;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  [(WBTabGroupSyncAgentProxy *)self _enumerateSyncObserversUsingBlock:v19];
}

void __110__WBTabGroupSyncAgentProxy_didNavigateInTabWithUUID_title_inSharedTabGroupWithUUID_byParticipantWithRecordID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[8];
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 didNavigateInTabWithUUID:a1[4] title:a1[5] inSharedTabGroupWithUUID:a1[6] byParticipantWithRecordID:a1[7]];
  }
}

- (void)didRemoveTabWithUUID:(id)a3 title:(id)a4 inSharedTabGroupWithUUID:(id)a5 byParticipantWithRecordID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __106__WBTabGroupSyncAgentProxy_didRemoveTabWithUUID_title_inSharedTabGroupWithUUID_byParticipantWithRecordID___block_invoke;
  v19[3] = &unk_279E755D0;
  v23 = v14;
  v24 = a2;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  [(WBTabGroupSyncAgentProxy *)self _enumerateSyncObserversUsingBlock:v19];
}

void __106__WBTabGroupSyncAgentProxy_didRemoveTabWithUUID_title_inSharedTabGroupWithUUID_byParticipantWithRecordID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[8];
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 didRemoveTabWithUUID:a1[4] title:a1[5] inSharedTabGroupWithUUID:a1[6] byParticipantWithRecordID:a1[7]];
  }
}

- (void)didChangeScopedFavoritesInSharedTabGroupWithUUID:(id)a3 byParticipantWithRecordID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __103__WBTabGroupSyncAgentProxy_didChangeScopedFavoritesInSharedTabGroupWithUUID_byParticipantWithRecordID___block_invoke;
  v11[3] = &unk_279E755A8;
  v13 = v8;
  v14 = a2;
  v12 = v7;
  v9 = v8;
  v10 = v7;
  [(WBTabGroupSyncAgentProxy *)self _enumerateSyncObserversUsingBlock:v11];
}

void __103__WBTabGroupSyncAgentProxy_didChangeScopedFavoritesInSharedTabGroupWithUUID_byParticipantWithRecordID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 didChangeScopedFavoritesInSharedTabGroupWithUUID:a1[4] byParticipantWithRecordID:a1[5]];
  }
}

- (void)didChangeBackgroundImageInSharedTabGroupWithUUID:(id)a3 byParticipantWithRecordID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __103__WBTabGroupSyncAgentProxy_didChangeBackgroundImageInSharedTabGroupWithUUID_byParticipantWithRecordID___block_invoke;
  v11[3] = &unk_279E755A8;
  v13 = v8;
  v14 = a2;
  v12 = v7;
  v9 = v8;
  v10 = v7;
  [(WBTabGroupSyncAgentProxy *)self _enumerateSyncObserversUsingBlock:v11];
}

void __103__WBTabGroupSyncAgentProxy_didChangeBackgroundImageInSharedTabGroupWithUUID_byParticipantWithRecordID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 didChangeBackgroundImageInSharedTabGroupWithUUID:a1[4] byParticipantWithRecordID:a1[5]];
  }
}

- (void)didFetchRecentlyAcceptedSharedTabGroupWithUUID:(id)a3 acceptedShareDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__WBTabGroupSyncAgentProxy_didFetchRecentlyAcceptedSharedTabGroupWithUUID_acceptedShareDate___block_invoke;
  v11[3] = &unk_279E755A8;
  v13 = v8;
  v14 = a2;
  v12 = v7;
  v9 = v8;
  v10 = v7;
  [(WBTabGroupSyncAgentProxy *)self _enumerateSyncObserversUsingBlock:v11];
}

void __93__WBTabGroupSyncAgentProxy_didFetchRecentlyAcceptedSharedTabGroupWithUUID_acceptedShareDate___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = v3;
  if (objc_opt_respondsToSelector())
  {
    [v5 didFetchRecentlyAcceptedSharedTabGroupWithUUID:a1[4] acceptedShareDate:a1[5]];
  }
}

void __54__WBTabGroupSyncAgentProxy__setUpSyncObserverIfNeeded__block_invoke_75_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_fault_impl(&dword_272C20000, a2, OS_LOG_TYPE_FAULT, "Failed to reconnect too many times to sync agent since %{public}@, stopping.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end