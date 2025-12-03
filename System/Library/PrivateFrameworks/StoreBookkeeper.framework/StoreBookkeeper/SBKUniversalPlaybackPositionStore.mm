@interface SBKUniversalPlaybackPositionStore
- (BOOL)_timerIsStopped;
- (SBKUniversalPlaybackPositionDataSource)dataSource;
- (SBKUniversalPlaybackPositionStore)initWithDomain:(id)domain dataSource:(id)source automaticSynchronizeOptions:(unint64_t)options accountIdentifier:(id)identifier isActive:(BOOL)active;
- (SBKUniversalPlaybackPositionStore)initWithInitialUpdateDelay:(double)delay;
- (double)_effectiveAutorefreshRate;
- (id)_accountForSyncing;
- (void)_onQueueLoadBagContextWithCompletionHandler:(id)handler;
- (void)_onQueueLoadRemoteDomainVersionWithCompletionBlock:(id)block;
- (void)_onQueuePullMetadataItemWithItemIdentifier:(id)identifier completionBlock:(id)block;
- (void)_onQueuePushMetadataItem:(id)item completionBlock:(id)block;
- (void)_onQueueResumeTimer;
- (void)_onQueueRunNextPendingTaskBlock;
- (void)_onQueueRunTaskWithName:(id)name taskCompletionHandler:(id)handler runTaskBlock:(id)block;
- (void)_onQueueScheduleTimer;
- (void)_onQueueStartNewTimer;
- (void)_onQueueStartNewTimerWithTimeIntervalSinceNow:(double)now;
- (void)_onQueueStopTimer;
- (void)_onQueueSuspendTimer;
- (void)_onQueueSynchronizeImmediatelyWithCompletionHandler:(id)handler;
- (void)_onQueueSynchronizeWithAutosynchronizeMask:(unint64_t)mask withCompletionBlock:(id)block;
- (void)_onQueueUpdateTimerForActiveChanges;
- (void)_onQueueUpdateTimerForAutomaticSyncOptionChanges;
- (void)_timerFired:(id)fired;
- (void)_updateAutorefreshRateSettingAndRestartTimer:(BOOL)timer;
- (void)_updateForStoreAccountsChange;
- (void)_updateSettingsFromLoadedBagContext:(id)context;
- (void)becomeActive;
- (void)checkForAvailabilityWithCompletionBlock:(id)block;
- (void)dealloc;
- (void)loadBagContextWithCompletionBlock:(id)block;
- (void)loadRemoteDomainVersionWithCompletionBlock:(id)block;
- (void)pullMetadataItemWithItemIdentifier:(id)identifier completionBlock:(id)block;
- (void)pushMetadataItem:(id)item completionBlock:(id)block;
- (void)resignActive;
- (void)setAutomaticSynchronizeOptions:(unint64_t)options;
- (void)setAutomaticallySynchronizeLocalChangesOnResignActive:(BOOL)active;
- (void)setAutomaticallySynchronizeOnBecomeActive:(BOOL)active;
- (void)setHasLocalChangesToSync:(BOOL)sync;
- (void)synchronizeImmediatelyWithCompletionBlock:(id)block;
- (void)synchronizeImmediatelyWithCompletionHandler:(id)handler;
@end

@implementation SBKUniversalPlaybackPositionStore

- (SBKUniversalPlaybackPositionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_onQueueStartNewTimerWithTimeIntervalSinceNow:(double)now
{
  [(SBKUniversalPlaybackPositionStore *)self _onQueueStopTimer];
  if (now >= 31536000.0)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    [(SBKUniversalPlaybackPositionStore *)self setDateToFireNextTimer:distantFuture];
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:now];
    [(SBKUniversalPlaybackPositionStore *)self setDateToFireNextTimer:v5];

    [(SBKUniversalPlaybackPositionStore *)self _onQueueResumeTimer];
  }
}

- (void)_onQueueStartNewTimer
{
  if (self->_initialAutosyncInterval == 31536000.0)
  {
    autorefreshInterval = self->_autorefreshInterval;
  }

  [(SBKUniversalPlaybackPositionStore *)self _onQueueStartNewTimerWithTimeIntervalSinceNow:?];
}

- (void)_onQueueStopTimer
{
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [(SBKUniversalPlaybackPositionStore *)self setDateToFireNextTimer:distantFuture];

  [(SBKUniversalPlaybackPositionStore *)self _onQueueSuspendTimer];
}

- (void)_onQueueResumeTimer
{
  if (self->_isActive && !self->_refreshTimerActive && ![(SBKUniversalPlaybackPositionStore *)self _timerIsStopped])
  {

    [(SBKUniversalPlaybackPositionStore *)self _onQueueScheduleTimer];
  }
}

- (void)_onQueueSuspendTimer
{
  if (self->_refreshTimerActive)
  {
    v7 = v2;
    v8 = v3;
    v5 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26BC19000, v5, OS_LOG_TYPE_DEFAULT, "suspending update timer", v6, 2u);
    }

    [(NSTimer *)self->_timer invalidate];
    [(SBKUniversalPlaybackPositionStore *)self setTimer:0];
    self->_refreshTimerActive = 0;
  }
}

- (void)_onQueueScheduleTimer
{
  if (!self->_refreshTimerActive)
  {
    self->_refreshTimerActive = 1;
    dateToFireNextTimer = [(SBKUniversalPlaybackPositionStore *)self dateToFireNextTimer];
    [dateToFireNextTimer timeIntervalSinceNow];
    v5 = v4;

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__SBKUniversalPlaybackPositionStore__onQueueScheduleTimer__block_invoke;
    v6[3] = &unk_279D22D68;
    v6[5] = v5;
    v6[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __58__SBKUniversalPlaybackPositionStore__onQueueScheduleTimer__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 >= 0.0)
  {
    if (v2 < 31536000.0)
    {
      v4 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:*(a1 + 40)];
        v6 = [MEMORY[0x277CBEAA8] date];
        [v5 timeIntervalSinceNow];
        v8 = v7;
        [v6 timeIntervalSinceNow];
        v10 = v8 - v9;
        if (v10 <= 60.0)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f seconds", *&v10, v17];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%lld minutes, %lld seconds", v10 / 60, v10 % 60];
        }
        v11 = ;
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@ from now)", v5, v11];

        *buf = 138412290;
        v19 = v12;
        _os_log_impl(&dword_26BC19000, v4, OS_LOG_TYPE_DEFAULT, "scheduling next timer update at %@", buf, 0xCu);
      }

      v13 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel__timerFired_ selector:0 userInfo:0 repeats:*(a1 + 40)];
      v14 = *(a1 + 32);
      v15 = *(v14 + 152);
      *(v14 + 152) = v13;
    }
  }

  else
  {
    v3 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BC19000, v3, OS_LOG_TYPE_DEFAULT, "scheduled timer date already passed.  Firing immediately", buf, 2u);
    }

    [*(a1 + 32) _timerFired:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_timerIsStopped
{
  dateToFireNextTimer = [(SBKUniversalPlaybackPositionStore *)self dateToFireNextTimer];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v4 = [dateToFireNextTimer isEqualToDate:distantFuture];

  return v4;
}

- (void)_timerFired:(id)fired
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SBKUniversalPlaybackPositionStore__timerFired___block_invoke;
  block[3] = &unk_279D231C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_updateAutorefreshRateSettingAndRestartTimer:(BOOL)timer
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__SBKUniversalPlaybackPositionStore__updateAutorefreshRateSettingAndRestartTimer___block_invoke;
  v4[3] = &unk_279D22AF0;
  v4[4] = self;
  timerCopy = timer;
  dispatch_sync(queue, v4);
}

uint64_t __82__SBKUniversalPlaybackPositionStore__updateAutorefreshRateSettingAndRestartTimer___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _effectiveAutorefreshRate];
  *(*(a1 + 32) + 72) = v3;
  if (*(a1 + 40) == 1)
  {
    v4 = *(a1 + 32);

    return [v4 _onQueueStartNewTimer];
  }

  return result;
}

- (double)_effectiveAutorefreshRate
{
  if ((self->_automaticSynchronizeOptions & 1) == 0)
  {
    return 31536000.0;
  }

  v4 = self->_pollingLimitFromBag / 60.0;
  v5 = +[SBKPreferences storeBookkeeperPreferences];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pollingLimitFromBag];
  v7 = [v5 objectForKey:@"AutoSyncRateInMinutes" withDefaultValue:v6];
  [v7 floatValue];
  v9 = v8;

  if (v4 != v9)
  {
    return v9 * 60.0;
  }

  result = self->_pollingLimitFromBag;
  if (result <= 0.00000011920929)
  {
    return 31536000.0;
  }

  return result;
}

- (void)_updateForStoreAccountsChange
{
  _accountForSyncing = [(SBKUniversalPlaybackPositionStore *)self _accountForSyncing];

  queue = self->_queue;
  if (_accountForSyncing)
  {
    v5 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v6 = __66__SBKUniversalPlaybackPositionStore__updateForStoreAccountsChange__block_invoke;
  }

  else
  {
    v5 = v7;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v6 = __66__SBKUniversalPlaybackPositionStore__updateForStoreAccountsChange__block_invoke_2;
  }

  v5[2] = v6;
  v5[3] = &unk_279D231C8;
  v5[4] = self;
  dispatch_async(queue, v5);
}

- (void)_onQueueLoadBagContextWithCompletionHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __81__SBKUniversalPlaybackPositionStore__onQueueLoadBagContextWithCompletionHandler___block_invoke;
  v38[3] = &unk_279D22B90;
  v38[4] = self;
  v5 = handlerCopy;
  v39 = v5;
  v6 = MEMORY[0x26D6917A0](v38);
  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier && ![(NSNumber *)accountIdentifier isEqual:&unk_287CA2738])
  {
    if (self->_bagLookupTask)
    {
      v13 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26BC19000, v13, OS_LOG_TYPE_DEFAULT, "_onQueueLoadBag - load bag already in progress.  pending our completion block to be notified when it completes.", buf, 2u);
      }

      [(SBKAsynchronousTask *)self->_bagLookupTask addTaskCompletionBlock:v6];
    }

    else
    {
      v14 = [[SBKAsynchronousTask alloc] initWithHandlerQueue:self->_queue timeout:@"SBKUPPStore Load Bag" debugDescription:20.0];
      bagLookupTask = self->_bagLookupTask;
      self->_bagLookupTask = v14;

      [(SBKAsynchronousTask *)self->_bagLookupTask addTaskCompletionBlock:v6];
      selfCopy = self;
      v17 = self->_bagLookupTask;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __81__SBKUniversalPlaybackPositionStore__onQueueLoadBagContextWithCompletionHandler___block_invoke_123;
      v33[3] = &unk_279D231C8;
      v18 = selfCopy;
      v34 = v18;
      [(SBKAsynchronousTask *)v17 setExpirationHandler:v33];
      v19 = self->_bagLookupTask;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __81__SBKUniversalPlaybackPositionStore__onQueueLoadBagContextWithCompletionHandler___block_invoke_2;
      v31[3] = &unk_279D231C8;
      v20 = v18;
      v32 = v20;
      [(SBKAsynchronousTask *)v19 setFinishedHandler:v31];
      [(SBKAsynchronousTask *)self->_bagLookupTask beginTaskOperation];
      v21 = MEMORY[0x277D69C88];
      v22 = [MEMORY[0x277D69C90] contextWithBagType:0];
      v23 = [v21 URLBagForContext:v22];

      if (v23)
      {
        v24 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26BC19000, v24, OS_LOG_TYPE_DEFAULT, "_onQueueLoadBag - load bag operation beginning...", buf, 2u);
        }

        domain = v20->_domain;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __81__SBKUniversalPlaybackPositionStore__onQueueLoadBagContextWithCompletionHandler___block_invoke_131;
        v29[3] = &unk_279D22C00;
        v30 = v20;
        [SBKStoreURLBagContext loadBagContextFromURLBag:v23 domain:domain completionBlock:v29];
        v26 = v30;
      }

      else
      {
        v27 = self->_bagLookupTask;
        v26 = [SBKStoreError keyValueStoreDisabledErrorWithTransaction:0 underlyingError:0];
        [(SBKAsynchronousTask *)v27 finishTaskOperationWithResult:0 error:v26];
      }
    }
  }

  else
  {
    v8 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NSNumber *)self->_accountIdentifier description];
      *buf = 138412290;
      v41 = v9;
      _os_log_impl(&dword_26BC19000, v8, OS_LOG_TYPE_DEFAULT, "_onQueueLoadBag - skipping bag load: _accountIdentifier=%@ [no valid account identifier]", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBKStoreErrorDomain" code:-1001 userInfo:0];
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__SBKUniversalPlaybackPositionStore__onQueueLoadBagContextWithCompletionHandler___block_invoke_119;
    block[3] = &unk_279D23100;
    v36 = v10;
    v37 = v6;
    v12 = v10;
    dispatch_async(v11, block);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __81__SBKUniversalPlaybackPositionStore__onQueueLoadBagContextWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  [*(a1 + 32) _updateSettingsFromLoadedBagContext:v10];
  if (*(a1 + 40))
  {
    if (v10)
    {
      if (![v10 domainDisabled])
      {
LABEL_7:
        (*(*(a1 + 40) + 16))();
        goto LABEL_8;
      }

      v6 = -2007;
    }

    else
    {
      v6 = -2008;
    }

    v7 = MEMORY[0x277CCA9B8];
    v8 = ErrorInfoWithUnderlyingError_924(v5);
    v9 = [v7 errorWithDomain:@"SBKStoreErrorDomain" code:v6 userInfo:v8];

    v5 = v9;
    goto LABEL_7;
  }

LABEL_8:
}

void __81__SBKUniversalPlaybackPositionStore__onQueueLoadBagContextWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 128);
  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  *(v3 + 128) = 0;

  v5 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v2 error];
    if (v6)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [v2 error];
      v9 = [v8 localizedDescription];
      v10 = [v7 stringWithFormat:@" ERROR = '%@'.", v9];
      *buf = 138412290;
      v13 = v10;
      _os_log_impl(&dword_26BC19000, v5, OS_LOG_TYPE_DEFAULT, "_onQueueLoadBag - load bag completed.%@", buf, 0xCu);
    }

    else
    {
      *buf = 138412290;
      v13 = &stru_287C9CB50;
      _os_log_impl(&dword_26BC19000, v5, OS_LOG_TYPE_DEFAULT, "_onQueueLoadBag - load bag completed.%@", buf, 0xCu);
    }
  }

  [v2 invokeTaskCompletionBlocksWithBlock:&__block_literal_global_126];
  v11 = *MEMORY[0x277D85DE8];
}

void __81__SBKUniversalPlaybackPositionStore__onQueueLoadBagContextWithCompletionHandler___block_invoke_131(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SBKUniversalPlaybackPositionStore__onQueueLoadBagContextWithCompletionHandler___block_invoke_2_132;
  block[3] = &unk_279D23050;
  v12 = v7;
  v13 = v5;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

void __81__SBKUniversalPlaybackPositionStore__onQueueLoadBagContextWithCompletionHandler___block_invoke_124(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = MEMORY[0x26D6917A0](a2);
  v8[2](v8, v7, v6);
}

- (void)_updateSettingsFromLoadedBagContext:(id)context
{
  contextCopy = context;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SBKUniversalPlaybackPositionStore__updateSettingsFromLoadedBagContext___block_invoke;
  v6[3] = &unk_279D23150;
  v6[4] = self;
  v7 = contextCopy;
  v5 = contextCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __73__SBKUniversalPlaybackPositionStore__updateSettingsFromLoadedBagContext___block_invoke(uint64_t a1)
{
  [*(a1 + 40) pollingIntervalInSeconds];
  *(*(a1 + 32) + 64) = v2;
  [*(a1 + 32) _effectiveAutorefreshRate];
  v4 = *(a1 + 32);
  v5 = v4[7] == 31536000.0 && v3 != v4[9];

  return [v4 _updateAutorefreshRateSettingAndRestartTimer:v5];
}

- (id)_accountForSyncing
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  v4 = [defaultStore accountWithUniqueIdentifier:self->_accountIdentifier];

  return v4;
}

- (void)_onQueuePullMetadataItemWithItemIdentifier:(id)identifier completionBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__925;
  v18[4] = __Block_byref_object_dispose__926;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __96__SBKUniversalPlaybackPositionStore__onQueuePullMetadataItemWithItemIdentifier_completionBlock___block_invoke;
  v15[3] = &unk_279D22CF0;
  v17 = v18;
  v8 = blockCopy;
  v16 = v8;
  v9 = MEMORY[0x26D6917A0](v15);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__SBKUniversalPlaybackPositionStore__onQueuePullMetadataItemWithItemIdentifier_completionBlock___block_invoke_2;
  v11[3] = &unk_279D22D40;
  v14 = v18;
  v10 = identifierCopy;
  v12 = v10;
  selfCopy = self;
  [(SBKUniversalPlaybackPositionStore *)self _onQueueRunTaskWithName:@"GET value" taskCompletionHandler:v9 runTaskBlock:v11];

  _Block_object_dispose(v18, 8);
}

void __96__SBKUniversalPlaybackPositionStore__onQueuePullMetadataItemWithItemIdentifier_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = a3;
  v6 = [v4 resultItemPayloadPair];
  v7 = [v6 kvsKey];
  v8 = [*(*(*(a1 + 40) + 8) + 40) resultItemPayloadPair];
  v9 = [v8 kvsPayload];
  v12 = [SBKUniversalPlaybackPositionMetadata metadataWithItemIdentifier:v7 keyValueStorePayload:v9];

  v10 = [*(*(*(a1 + 40) + 8) + 40) resultItemVersionAnchor];
  v11 = [*(*(*(a1 + 40) + 8) + 40) resultDomainVersion];
  (*(*(a1 + 32) + 16))();
}

void __96__SBKUniversalPlaybackPositionStore__onQueuePullMetadataItemWithItemIdentifier_completionBlock___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[SBKPullValueTransaction alloc] initWithStoreBagContext:v6 requestedKey:a1[4] clientItemPayloadPair:0 clientItemVersionAnchor:0];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [[SBKSimpleTransactionRequestHandler alloc] initWithBagContext:v6];
  v11 = a1[5];
  v12 = *(v11 + 136);
  *(v11 + 136) = v10;
  v13 = v10;

  v14 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BC19000, v14, OS_LOG_TYPE_DEFAULT, "_onQueueSync - pull value operation beginning...", buf, 2u);
  }

  v15 = *(*(a1[6] + 8) + 40);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__SBKUniversalPlaybackPositionStore__onQueuePullMetadataItemWithItemIdentifier_completionBlock___block_invoke_117;
  v17[3] = &unk_279D22D18;
  v18 = v5;
  v16 = v5;
  [(SBKSimpleTransactionRequestHandler *)v13 scheduleTransaction:v15 finishedBlock:v17];
}

- (void)_onQueuePushMetadataItem:(id)item completionBlock:(id)block
{
  itemCopy = item;
  blockCopy = block;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__925;
  v18[4] = __Block_byref_object_dispose__926;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__SBKUniversalPlaybackPositionStore__onQueuePushMetadataItem_completionBlock___block_invoke;
  v15[3] = &unk_279D22CF0;
  v17 = v18;
  v8 = blockCopy;
  v16 = v8;
  v9 = MEMORY[0x26D6917A0](v15);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__SBKUniversalPlaybackPositionStore__onQueuePushMetadataItem_completionBlock___block_invoke_2;
  v11[3] = &unk_279D22D40;
  v14 = v18;
  v10 = itemCopy;
  v12 = v10;
  selfCopy = self;
  [(SBKUniversalPlaybackPositionStore *)self _onQueueRunTaskWithName:@"PUT value" taskCompletionHandler:v9 runTaskBlock:v11];

  _Block_object_dispose(v18, 8);
}

void __78__SBKUniversalPlaybackPositionStore__onQueuePushMetadataItem_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = a3;
  v6 = [v4 resultItemPayloadPair];
  v7 = [v6 kvsKey];
  v8 = [*(*(*(a1 + 40) + 8) + 40) resultItemPayloadPair];
  v9 = [v8 kvsPayload];
  v12 = [SBKUniversalPlaybackPositionMetadata metadataWithItemIdentifier:v7 keyValueStorePayload:v9];

  v10 = [*(*(*(a1 + 40) + 8) + 40) resultItemVersionAnchor];
  v11 = [*(*(*(a1 + 40) + 8) + 40) resultDomainVersion];
  (*(*(a1 + 32) + 16))();
}

void __78__SBKUniversalPlaybackPositionStore__onQueuePushMetadataItem_completionBlock___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[SBKPushValueTransaction alloc] initWithStoreBagContext:v6 clientItemPayloadPair:a1[4] clientItemVersionAnchor:0];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [[SBKSimpleTransactionRequestHandler alloc] initWithBagContext:v6];
  v11 = a1[5];
  v12 = *(v11 + 136);
  *(v11 + 136) = v10;
  v13 = v10;

  v14 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BC19000, v14, OS_LOG_TYPE_DEFAULT, "_onQueueSync - push value operation beginning...", buf, 2u);
  }

  v15 = *(*(a1[6] + 8) + 40);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SBKUniversalPlaybackPositionStore__onQueuePushMetadataItem_completionBlock___block_invoke_111;
  v17[3] = &unk_279D22D18;
  v18 = v5;
  v16 = v5;
  [(SBKSimpleTransactionRequestHandler *)v13 scheduleTransaction:v15 finishedBlock:v17];
}

- (void)_onQueueSynchronizeImmediatelyWithCompletionHandler:(id)handler
{
  if (self->_currentTask)
  {
    handlerCopy2 = handler;
    v5 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BC19000, v5, OS_LOG_TYPE_DEFAULT, "_onQueueSync - synchronize already in progress.  pending our completion block to be notified when it completes.", buf, 2u);
    }

    [(SBKAsynchronousTask *)self->_currentTask addTaskCompletionBlock:handlerCopy2];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __89__SBKUniversalPlaybackPositionStore__onQueueSynchronizeImmediatelyWithCompletionHandler___block_invoke;
    v6[3] = &unk_279D22CC8;
    v6[4] = self;
    handlerCopy2 = handler;
    [(SBKUniversalPlaybackPositionStore *)self _onQueueRunTaskWithName:@"synchronize" taskCompletionHandler:handlerCopy2 runTaskBlock:v6];
  }
}

void __89__SBKUniversalPlaybackPositionStore__onQueueSynchronizeImmediatelyWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [SBKPlaybackPositionSyncRequestHandler alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  v9 = [(SBKPlaybackPositionSyncRequestHandler *)v7 initWithDataSource:WeakRetained bagContext:v6 accountIdentifier:*(*(a1 + 32) + 40)];

  v10 = *(a1 + 32);
  v11 = *(v10 + 136);
  *(v10 + 136) = v9;
  v12 = v9;

  v13 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BC19000, v13, OS_LOG_TYPE_DEFAULT, "_onQueueSync - synchronize operation beginning...", buf, 2u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__SBKUniversalPlaybackPositionStore__onQueueSynchronizeImmediatelyWithCompletionHandler___block_invoke_104;
  v15[3] = &unk_279D22B40;
  v16 = v5;
  v14 = v5;
  [(SBKPlaybackPositionSyncRequestHandler *)v12 synchronizeWithCompletionHandler:v15];
}

- (void)_onQueueRunTaskWithName:(id)name taskCompletionHandler:(id)handler runTaskBlock:(id)block
{
  location[3] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  blockCopy = block;
  _accountForSyncing = [(SBKUniversalPlaybackPositionStore *)self _accountForSyncing];

  if (_accountForSyncing)
  {
    if (self->_currentTask)
    {
      objc_initWeak(location, self);
      pendingTaskBlocks = self->_pendingTaskBlocks;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_2;
      v35[3] = &unk_279D22C28;
      objc_copyWeak(&v39, location);
      v36 = nameCopy;
      v37 = handlerCopy;
      v38 = blockCopy;
      v13 = MEMORY[0x26D6917A0](v35);
      [(NSMutableArray *)pendingTaskBlocks addObject:v13];

      objc_destroyWeak(&v39);
      objc_destroyWeak(location);
    }

    else
    {
      self->_initialAutosyncInterval = 31536000.0;
      v18 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = nameCopy;
        _os_log_impl(&dword_26BC19000, v18, OS_LOG_TYPE_DEFAULT, "_onQueueSync - beginning %@ operation...", location, 0xCu);
      }

      [(SBKUniversalPlaybackPositionStore *)self _onQueueStopTimer];
      v19 = [[SBKAsynchronousTask alloc] initWithHandlerQueue:self->_queue timeout:@"SBKUPPStore Synchronize" debugDescription:20.0];
      p_currentTask = &self->_currentTask;
      currentTask = self->_currentTask;
      self->_currentTask = v19;

      [(SBKAsynchronousTask *)self->_currentTask addTaskCompletionBlock:handlerCopy];
      selfCopy = self;
      v23 = self->_currentTask;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_93;
      v33[3] = &unk_279D231C8;
      v24 = selfCopy;
      v34 = v24;
      [(SBKAsynchronousTask *)v23 setExpirationHandler:v33];
      v25 = *p_currentTask;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_2_94;
      v30[3] = &unk_279D23150;
      v31 = v24;
      v32 = nameCopy;
      v26 = v24;
      [(SBKAsynchronousTask *)v25 setFinishedHandler:v30];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_2_98;
      v28[3] = &unk_279D22B90;
      v28[4] = v26;
      v29 = blockCopy;
      [(SBKUniversalPlaybackPositionStore *)v26 _onQueueLoadBagContextWithCompletionHandler:v28];
    }
  }

  else
  {
    v14 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = nameCopy;
      _os_log_impl(&dword_26BC19000, v14, OS_LOG_TYPE_DEFAULT, "_onQueueRunTaskWithName %@ - short circuiting. _accountForSyncing=nil", location, 0xCu);
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBKStoreErrorDomain" code:-1001 userInfo:0];
    v16 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke;
    block[3] = &unk_279D23100;
    v41 = v15;
    v42 = handlerCopy;
    v17 = v15;
    dispatch_async(v16, block);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _onQueueRunTaskWithName:*(a1 + 32) taskCompletionHandler:*(a1 + 40) runTaskBlock:*(a1 + 48)];
}

uint64_t __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_93(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) cancelType];
  v3 = *(*(a1 + 32) + 136);
  if (v2 == 2)
  {

    return [v3 timeout];
  }

  else
  {

    return [v3 cancel];
  }
}

uint64_t __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_2_94(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 32) + 112);
  v5 = *(a1 + 32);
  v6 = *(v5 + 112);
  *(v5 + 112) = 0;

  v7 = *(a1 + 32);
  if (*(v7 + 17))
  {
    v8 = [v4 result];
    *(*(a1 + 32) + 17) = [v8 BOOLValue] ^ 1;
  }

  else
  {
    *(v7 + 17) = 0;
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 136);
  *(v9 + 136) = 0;

  v11 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = [v4 error];
    if (v13)
    {
      v14 = MEMORY[0x277CCACA8];
      v1 = [v4 error];
      v2 = [v1 localizedDescription];
      v15 = [v14 stringWithFormat:@" ERROR = '%@'.", v2];
    }

    else
    {
      v15 = &stru_287C9CB50;
    }

    *buf = 138412546;
    v20 = v12;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&dword_26BC19000, v11, OS_LOG_TYPE_DEFAULT, "_onQueueSync - %@ completed. %@", buf, 0x16u);
    if (v13)
    {
    }
  }

  [v4 invokeTaskCompletionBlocksWithBlock:&__block_literal_global_97];
  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 postNotificationName:@"SBKUniversalPlaybackPositionStoreDidSynchronizeNotification" object:*(a1 + 32)];

  [*(a1 + 32) _onQueueStartNewTimer];
  result = [*(a1 + 32) _onQueueRunNextPendingTaskBlock];
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_2_98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_3;
  v12[3] = &unk_279D22CA0;
  v13 = v6;
  v14 = v5;
  v15 = v8;
  v16 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v11 = v2;
  }

  else
  {
    v5 = *(a1 + 40);
    if (!v5)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = ErrorInfoWithUnderlyingError_924(*(a1 + 32));
      v11 = [v9 errorWithDomain:@"SBKStoreErrorDomain" code:-2008 userInfo:v10];

      if (v11)
      {
        goto LABEL_3;
      }

      v5 = *(a1 + 40);
    }

    if (![v5 domainDisabled] || (v6 = MEMORY[0x277CCA9B8], ErrorInfoWithUnderlyingError_924(*(a1 + 32)), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "errorWithDomain:code:userInfo:", @"SBKStoreErrorDomain", -2007, v7), v11 = objc_claimAutoreleasedReturnValue(), v7, !v11))
    {
      [*(*(a1 + 48) + 112) beginTaskOperation];
      v8 = *(a1 + 40);
      v13 = *(a1 + 48);
      (*(*(a1 + 56) + 16))();
      return;
    }
  }

LABEL_3:
  v3 = *(*(a1 + 48) + 112);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{0, v11}];
  [v3 finishTaskOperationWithResult:v4 error:v12];
}

void __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_5;
  block[3] = &unk_279D22C50;
  v11 = a2;
  block[4] = v6;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

void __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_5(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  [v2 finishTaskOperationWithResult:v3 error:*(a1 + 40)];
}

void __96__SBKUniversalPlaybackPositionStore__onQueueRunTaskWithName_taskCompletionHandler_runTaskBlock___block_invoke_95(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = MEMORY[0x26D6917A0](a2);
  v6[2](v6, v5 == 0, v5);
}

- (void)_onQueueRunNextPendingTaskBlock
{
  firstObject = [(NSMutableArray *)self->_pendingTaskBlocks firstObject];
  if (firstObject)
  {
    v4 = firstObject;
    [(NSMutableArray *)self->_pendingTaskBlocks removeObjectAtIndex:0];
    v4[2](v4);
    firstObject = v4;
  }
}

- (void)_onQueueLoadRemoteDomainVersionWithCompletionBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  lookupDomainVersionTask = self->_lookupDomainVersionTask;
  blockCopy = block;
  v6 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (lookupDomainVersionTask)
  {
    if (v7)
    {
      *buf = 136315394;
      v19 = "[SBKUniversalPlaybackPositionStore _onQueueLoadRemoteDomainVersionWithCompletionBlock:]";
      v20 = 2112;
      v21 = @"domain version lookup";
      _os_log_impl(&dword_26BC19000, v6, OS_LOG_TYPE_DEFAULT, "%s - %@ already in progress.  pending our completion block to be notified when it completes.", buf, 0x16u);
    }

    [(SBKAsynchronousTask *)self->_lookupDomainVersionTask addTaskCompletionBlock:blockCopy];
  }

  else
  {
    if (v7)
    {
      *buf = 136315394;
      v19 = "[SBKUniversalPlaybackPositionStore _onQueueLoadRemoteDomainVersionWithCompletionBlock:]";
      v20 = 2112;
      v21 = @"domain version lookup";
      _os_log_impl(&dword_26BC19000, v6, OS_LOG_TYPE_DEFAULT, "%s - beginning %@...", buf, 0x16u);
    }

    v8 = [[SBKAsynchronousTask alloc] initWithHandlerQueue:self->_queue timeout:@"SBKUPPStore LookupDomainVersion" debugDescription:20.0];
    v9 = self->_lookupDomainVersionTask;
    self->_lookupDomainVersionTask = v8;

    [(SBKAsynchronousTask *)self->_lookupDomainVersionTask addTaskCompletionBlock:blockCopy];
    selfCopy = self;
    [(SBKAsynchronousTask *)self->_lookupDomainVersionTask setExpirationHandler:&__block_literal_global_71];
    v11 = self->_lookupDomainVersionTask;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__SBKUniversalPlaybackPositionStore__onQueueLoadRemoteDomainVersionWithCompletionBlock___block_invoke_2;
    v14[3] = &unk_279D23050;
    v15 = selfCopy;
    v16 = selfCopy;
    v17 = @"domain version lookup";
    blockCopy = selfCopy;
    [(SBKAsynchronousTask *)v11 setFinishedHandler:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __88__SBKUniversalPlaybackPositionStore__onQueueLoadRemoteDomainVersionWithCompletionBlock___block_invoke_2_83;
    v13[3] = &unk_279D22C00;
    v13[4] = blockCopy;
    [(SBKUniversalPlaybackPositionStore *)blockCopy _onQueueLoadBagContextWithCompletionHandler:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __88__SBKUniversalPlaybackPositionStore__onQueueLoadRemoteDomainVersionWithCompletionBlock___block_invoke_2(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a1[4] + 120);
  v5 = a1[5];
  v6 = *(v5 + 120);
  *(v5 + 120) = 0;

  [v4 setFinishedHandler:0];
  v7 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[6];
    v9 = [v4 error];
    if (v9)
    {
      v10 = MEMORY[0x277CCACA8];
      v1 = [v4 error];
      v2 = [v1 localizedDescription];
      v11 = [v10 stringWithFormat:@" ERROR = '%@'.", v2];
    }

    else
    {
      v11 = &stru_287C9CB50;
    }

    *buf = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_26BC19000, v7, OS_LOG_TYPE_DEFAULT, "_onQueueSync - %@ completed. %@", buf, 0x16u);
    if (v9)
    {
    }
  }

  [v4 invokeTaskCompletionBlocksWithBlock:&__block_literal_global_82];
  v12 = *MEMORY[0x277D85DE8];
}

void __88__SBKUniversalPlaybackPositionStore__onQueueLoadRemoteDomainVersionWithCompletionBlock___block_invoke_2_83(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SBKUniversalPlaybackPositionStore__onQueueLoadRemoteDomainVersionWithCompletionBlock___block_invoke_3;
  block[3] = &unk_279D23050;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __88__SBKUniversalPlaybackPositionStore__onQueueLoadRemoteDomainVersionWithCompletionBlock___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 120);
  if (v2)
  {

    [v3 finishTaskOperationWithResult:&unk_287CA2738 error:?];
  }

  else
  {
    [v3 beginTaskOperation];
    v4 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BC19000, v4, OS_LOG_TYPE_DEFAULT, "_onQueueSync - synchronize operation beginning...", buf, 2u);
    }

    v5 = [(SBKSyncRequestHandler *)[SBKLoadDomainVersionRequestHandler alloc] initWithBagContext:a1[6]];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __88__SBKUniversalPlaybackPositionStore__onQueueLoadRemoteDomainVersionWithCompletionBlock___block_invoke_86;
    v7[3] = &unk_279D22BD8;
    v7[4] = a1[5];
    v8 = v5;
    v6 = v5;
    [(SBKLoadDomainVersionRequestHandler *)v6 runWithCompletionHandler:v7];
  }
}

void __88__SBKUniversalPlaybackPositionStore__onQueueLoadRemoteDomainVersionWithCompletionBlock___block_invoke_86(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SBKUniversalPlaybackPositionStore__onQueueLoadRemoteDomainVersionWithCompletionBlock___block_invoke_2_87;
  block[3] = &unk_279D23050;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);
}

void __88__SBKUniversalPlaybackPositionStore__onQueueLoadRemoteDomainVersionWithCompletionBlock___block_invoke_2_87(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v3 = [*(a1 + 40) responseDomainVersion];
  [v2 finishTaskOperationWithResult:v3 error:*(a1 + 48)];
}

void __88__SBKUniversalPlaybackPositionStore__onQueueLoadRemoteDomainVersionWithCompletionBlock___block_invoke_79(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = MEMORY[0x26D6917A0](a2);
  v8[2](v8, v7, v6);
}

- (void)_onQueueSynchronizeWithAutosynchronizeMask:(unint64_t)mask withCompletionBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __100__SBKUniversalPlaybackPositionStore__onQueueSynchronizeWithAutosynchronizeMask_withCompletionBlock___block_invoke;
  v7[3] = &unk_279D22B40;
  v8 = blockCopy;
  v6 = blockCopy;
  [(SBKUniversalPlaybackPositionStore *)self _onQueueSynchronizeImmediatelyWithCompletionHandler:v7];
}

uint64_t __100__SBKUniversalPlaybackPositionStore__onQueueSynchronizeWithAutosynchronizeMask_withCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadBagContextWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__SBKUniversalPlaybackPositionStore_loadBagContextWithCompletionBlock___block_invoke;
    v7[3] = &unk_279D23100;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_sync(queue, v7);
  }
}

void __71__SBKUniversalPlaybackPositionStore_loadBagContextWithCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __71__SBKUniversalPlaybackPositionStore_loadBagContextWithCompletionBlock___block_invoke_2;
  v2[3] = &unk_279D22B90;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _onQueueLoadBagContextWithCompletionHandler:v2];
}

void __71__SBKUniversalPlaybackPositionStore_loadBagContextWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && ([v6 domainDisabled] & 1) == 0)
  {
    [*(a1 + 32) _accountForSyncing];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)loadRemoteDomainVersionWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __80__SBKUniversalPlaybackPositionStore_loadRemoteDomainVersionWithCompletionBlock___block_invoke;
    v7[3] = &unk_279D23100;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_sync(queue, v7);
  }
}

void __80__SBKUniversalPlaybackPositionStore_loadRemoteDomainVersionWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __80__SBKUniversalPlaybackPositionStore_loadRemoteDomainVersionWithCompletionBlock___block_invoke_2;
  v2[3] = &unk_279D22B68;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _onQueueLoadRemoteDomainVersionWithCompletionBlock:v2];
}

- (void)checkForAvailabilityWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__SBKUniversalPlaybackPositionStore_checkForAvailabilityWithCompletionBlock___block_invoke;
    v7[3] = &unk_279D23100;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_sync(queue, v7);
  }
}

void __77__SBKUniversalPlaybackPositionStore_checkForAvailabilityWithCompletionBlock___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__SBKUniversalPlaybackPositionStore_checkForAvailabilityWithCompletionBlock___block_invoke_2;
  v4[3] = &unk_279D22B90;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 _onQueueLoadBagContextWithCompletionHandler:v4];
}

void __77__SBKUniversalPlaybackPositionStore_checkForAvailabilityWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v8 && ![v8 domainDisabled])
  {
    v7 = [*(a1 + 32) _accountForSyncing];
    (*(v6 + 16))(v6, v7 != 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }
}

- (void)synchronizeImmediatelyWithCompletionBlock:(id)block
{
  blockCopy = block;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__SBKUniversalPlaybackPositionStore_synchronizeImmediatelyWithCompletionBlock___block_invoke;
  v11[3] = &unk_279D22B40;
  v12 = blockCopy;
  v5 = blockCopy;
  v6 = MEMORY[0x26D6917A0](v11);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SBKUniversalPlaybackPositionStore_synchronizeImmediatelyWithCompletionBlock___block_invoke_2;
  block[3] = &unk_279D23100;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(queue, block);
}

uint64_t __79__SBKUniversalPlaybackPositionStore_synchronizeImmediatelyWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)pullMetadataItemWithItemIdentifier:(id)identifier completionBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SBKUniversalPlaybackPositionStore_pullMetadataItemWithItemIdentifier_completionBlock___block_invoke;
  block[3] = &unk_279D22B18;
  block[4] = self;
  v12 = identifierCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = identifierCopy;
  dispatch_sync(queue, block);
}

- (void)pushMetadataItem:(id)item completionBlock:(id)block
{
  itemCopy = item;
  blockCopy = block;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SBKUniversalPlaybackPositionStore_pushMetadataItem_completionBlock___block_invoke;
  block[3] = &unk_279D22B18;
  block[4] = self;
  v12 = itemCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = itemCopy;
  dispatch_sync(queue, block);
}

- (void)synchronizeImmediatelyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__SBKUniversalPlaybackPositionStore_synchronizeImmediatelyWithCompletionHandler___block_invoke;
  v7[3] = &unk_279D23100;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

- (void)setAutomaticallySynchronizeOnBecomeActive:(BOOL)active
{
  activeCopy = active;
  v5 = [(SBKUniversalPlaybackPositionStore *)self automaticSynchronizeOptions]& 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!activeCopy)
  {
    v6 = 0;
  }

  [(SBKUniversalPlaybackPositionStore *)self setAutomaticSynchronizeOptions:v5 | v6];
}

- (void)setAutomaticallySynchronizeLocalChangesOnResignActive:(BOOL)active
{
  activeCopy = active;
  v5 = [(SBKUniversalPlaybackPositionStore *)self automaticSynchronizeOptions]& 0xFFFFFFFFFFFFFFFBLL;
  v6 = 4;
  if (!activeCopy)
  {
    v6 = 0;
  }

  [(SBKUniversalPlaybackPositionStore *)self setAutomaticSynchronizeOptions:v5 | v6];
}

- (void)setHasLocalChangesToSync:(BOOL)sync
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__SBKUniversalPlaybackPositionStore_setHasLocalChangesToSync___block_invoke;
  v4[3] = &unk_279D22AF0;
  v4[4] = self;
  syncCopy = sync;
  dispatch_sync(queue, v4);
}

- (void)setAutomaticSynchronizeOptions:(unint64_t)options
{
  automaticSynchronizeOptions = self->_automaticSynchronizeOptions;
  if (automaticSynchronizeOptions != options)
  {
    self->_automaticSynchronizeOptions = options;
    if ((automaticSynchronizeOptions ^ options))
    {
      [(SBKUniversalPlaybackPositionStore *)self _onQueueUpdateTimerForAutomaticSyncOptionChanges];
    }
  }
}

- (void)resignActive
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SBKUniversalPlaybackPositionStore_resignActive__block_invoke;
  block[3] = &unk_279D231C8;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __49__SBKUniversalPlaybackPositionStore_resignActive__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 16) == 1)
  {
    v2 = result;
    *(v1 + 16) = 0;
    [*(result + 32) _onQueueUpdateTimerForActiveChanges];
    result = *(v2 + 32);
    if (*(result + 17) == 1)
    {
      result = [result _automaticallySynchronizeLocalChangesOnResignActive];
      if (result)
      {
        v3 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *v4 = 0;
          _os_log_impl(&dword_26BC19000, v3, OS_LOG_TYPE_DEFAULT, "starting synchronizing changes for resignActive", v4, 2u);
        }

        return [*(v2 + 32) _onQueueSynchronizeWithAutosynchronizeMask:4 withCompletionBlock:&__block_literal_global_946];
      }
    }
  }

  return result;
}

void __49__SBKUniversalPlaybackPositionStore_resignActive__block_invoke_59()
{
  v0 = os_log_create("com.apple.amp.StoreBookkeeper", "UPP");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26BC19000, v0, OS_LOG_TYPE_DEFAULT, "finished synchronizing changes for resignActive", v1, 2u);
  }
}

- (void)becomeActive
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SBKUniversalPlaybackPositionStore_becomeActive__block_invoke;
  block[3] = &unk_279D231C8;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __49__SBKUniversalPlaybackPositionStore_becomeActive__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 16) & 1) == 0)
  {
    *(v1 + 16) = 1;
    return [*(result + 32) _onQueueUpdateTimerForActiveChanges];
  }

  return result;
}

- (void)_onQueueUpdateTimerForAutomaticSyncOptionChanges
{
  if (self->_isActive && (self->_automaticSynchronizeOptions & 3) != 0)
  {
    [(SBKUniversalPlaybackPositionStore *)self _onQueueResumeTimer];
  }

  else
  {
    [(SBKUniversalPlaybackPositionStore *)self _onQueueSuspendTimer];
  }
}

- (void)_onQueueUpdateTimerForActiveChanges
{
  if (self->_isActive && (self->_automaticSynchronizeOptions & 2) != 0)
  {
    if ([(SBKUniversalPlaybackPositionStore *)self _automaticallySynchronizeOnBecomeActive])
    {
      initialAutosyncInterval = self->_initialAutosyncInterval;
      if (initialAutosyncInterval == 31536000.0)
      {
        initialAutosyncInterval = 2.0;
      }

      [(SBKUniversalPlaybackPositionStore *)self _onQueueStartNewTimerWithTimeIntervalSinceNow:initialAutosyncInterval];
    }

    else
    {

      [(SBKUniversalPlaybackPositionStore *)self _onQueueResumeTimer];
    }
  }

  else
  {

    [(SBKUniversalPlaybackPositionStore *)self _onQueueSuspendTimer];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_accountsObserver];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self->_prefsObserver];

  bagLookupTask = [(SBKUniversalPlaybackPositionStore *)self bagLookupTask];
  [bagLookupTask invalidate];

  currentTask = [(SBKUniversalPlaybackPositionStore *)self currentTask];
  [currentTask invalidate];

  lookupDomainVersionTask = [(SBKUniversalPlaybackPositionStore *)self lookupDomainVersionTask];
  [lookupDomainVersionTask invalidate];

  timer = [(SBKUniversalPlaybackPositionStore *)self timer];
  [timer invalidate];

  [(SBKUniversalPlaybackPositionStore *)self _onQueueSuspendTimer];
  v9.receiver = self;
  v9.super_class = SBKUniversalPlaybackPositionStore;
  [(SBKUniversalPlaybackPositionStore *)&v9 dealloc];
}

- (SBKUniversalPlaybackPositionStore)initWithInitialUpdateDelay:(double)delay
{
  v4 = [(SBKUniversalPlaybackPositionStore *)self init];
  v5 = v4;
  if (v4)
  {
    if (delay <= 0.0)
    {
      delayCopy = 31536000.0;
    }

    else
    {
      delayCopy = delay;
    }

    v4->_initialAutosyncInterval = delayCopy;
    v4->_automaticSynchronizeOptions = 6;
    [(SBKUniversalPlaybackPositionStore *)v4 _updateAutorefreshRateSettingAndRestartTimer:0];
    if (v5->_initialAutosyncInterval != 31536000.0)
    {
      queue = v5->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__SBKUniversalPlaybackPositionStore_initWithInitialUpdateDelay___block_invoke;
      block[3] = &unk_279D231C8;
      v10 = v5;
      dispatch_sync(queue, block);
    }
  }

  return v5;
}

uint64_t __64__SBKUniversalPlaybackPositionStore_initWithInitialUpdateDelay___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onQueueStopTimer];
  v2 = *(a1 + 32);
  v3 = v2[7];

  return [v2 _onQueueStartNewTimerWithTimeIntervalSinceNow:v3];
}

- (SBKUniversalPlaybackPositionStore)initWithDomain:(id)domain dataSource:(id)source automaticSynchronizeOptions:(unint64_t)options accountIdentifier:(id)identifier isActive:(BOOL)active
{
  domainCopy = domain;
  sourceCopy = source;
  identifierCopy = identifier;
  if (!domainCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBKUniversalPlaybackPositionStore.m" lineNumber:100 description:@"Invalid paramter.  no domain specified"];
  }

  v38.receiver = self;
  v38.super_class = SBKUniversalPlaybackPositionStore;
  v17 = [(SBKUniversalPlaybackPositionStore *)&v38 init];
  if (v17)
  {
    v18 = dispatch_queue_create("SBKUniversalPlaybackPositionStore.queue", 0);
    v19 = *(v17 + 1);
    *(v17 + 1) = v18;

    v17[16] = active;
    objc_storeStrong(v17 + 4, domain);
    objc_storeWeak(v17 + 13, sourceCopy);
    objc_storeStrong(v17 + 5, identifier);
    *(v17 + 6) = options;
    *(v17 + 56) = vdupq_n_s64(0x417E133800000000uLL);
    array = [MEMORY[0x277CBEB18] array];
    v21 = *(v17 + 3);
    *(v17 + 3) = array;

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    [v17 setDateToFireNextTimer:distantFuture];

    [v17 _updateAutorefreshRateSettingAndRestartTimer:0];
    if (v17[48])
    {
      [v17 _onQueueLoadBagContextWithCompletionHandler:0];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    objc_initWeak(&location, v17);
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v25 = *MEMORY[0x277D69D70];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __118__SBKUniversalPlaybackPositionStore_initWithDomain_dataSource_automaticSynchronizeOptions_accountIdentifier_isActive___block_invoke;
    v35[3] = &unk_279D22AC0;
    objc_copyWeak(&v36, &location);
    v26 = [defaultCenter addObserverForName:v25 object:0 queue:mainQueue usingBlock:v35];
    v27 = *(v17 + 11);
    *(v17 + 11) = v26;

    mainQueue2 = [MEMORY[0x277CCABD8] mainQueue];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __118__SBKUniversalPlaybackPositionStore_initWithDomain_dataSource_automaticSynchronizeOptions_accountIdentifier_isActive___block_invoke_2;
    v33[3] = &unk_279D22AC0;
    objc_copyWeak(&v34, &location);
    v29 = [defaultCenter addObserverForName:@"SBKPreferencesDidChangeNotification" object:0 queue:mainQueue2 usingBlock:v33];
    v30 = *(v17 + 12);
    *(v17 + 12) = v29;

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v17;
}

void __118__SBKUniversalPlaybackPositionStore_initWithDomain_dataSource_automaticSynchronizeOptions_accountIdentifier_isActive___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateForStoreAccountsChange];
    WeakRetained = v2;
  }
}

void __118__SBKUniversalPlaybackPositionStore_initWithDomain_dataSource_automaticSynchronizeOptions_accountIdentifier_isActive___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateAutorefreshRateSettingAndRestartTimer:1];
    WeakRetained = v2;
  }
}

@end