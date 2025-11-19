@interface SUInstallationConstraintObserver
- (BOOL)_hasAnyBlockObservers;
- (SUInstallationConstraintObserver)init;
- (SUInstallationConstraintObserver)initWithDownload:(id)a3 andInstallOptions:(id)a4;
- (SUInstallationConstraintObserver)initWithDownload:(id)a3 installOptions:(id)a4 queue:(id)a5 constraints:(id)a6;
- (id)monitorOfClass:(Class)a3;
- (id)registerObserverBlock:(id)a3;
- (void)_queue_noteInstallationConstraintMonitor:(id)a3 constraintsDidChange:(unint64_t)a4;
- (void)_removeToken:(id)a3;
- (void)dealloc;
- (void)invalidateWithError:(id)a3;
@end

@implementation SUInstallationConstraintObserver

- (SUInstallationConstraintObserver)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SUInstallationConstraintObserver.m" lineNumber:86 description:@"Init is unsupported.  Please use -[SUInstallationConstraintObserver initWithDownload:] instead."];

  return 0;
}

- (SUInstallationConstraintObserver)initWithDownload:(id)a3 andInstallOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_queue_create("com.apple.softwareupdateservices.installationconstraints.bg", 0);
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 bundleIdentifier];
  v12 = [v11 isEqualToString:@"com.apple.softwareupdateservices"];

  if (v12)
  {
    v13 = [MEMORY[0x277D6EDF8] sharedInstance];
    v14 = [v13 currentAudioAndVideoCallCount] != 0;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SUInstallationConstraintObserver_initWithDownload_andInstallOptions___block_invoke;
  block[3] = &unk_279CABA38;
  v31 = v9;
  v32 = v8;
  v33 = v6;
  v34 = v7;
  v36 = v12;
  v35 = v13;
  v37 = v14;
  v15 = v13;
  v16 = v7;
  v17 = v6;
  v18 = v8;
  v19 = v9;
  dispatch_sync(v18, block);
  v20 = [(SUInstallationConstraintObserver *)self initWithDownload:v17 installOptions:v16 queue:v18 constraints:v19];
  v21 = SULogInstallConstraints();
  v29 = SUStringFromInstallationConstraints([(SUComposedInstallationConstraintMonitor *)v20 unsatisfiedConstraints]);
  SULogInfoForSubsystem(v21, @"[InstallationConstraintObserver] Create: %@ (unsatisfied constraints: %@)", v22, v23, v24, v25, v26, v27, v20);

  return v20;
}

void __71__SUInstallationConstraintObserver_initWithDownload_andInstallOptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [[SUInstallationConstraintMonitorForBatteryDiskAndKeybag alloc] initOnQueue:*(a1 + 40) withDownload:*(a1 + 48) andInstallOptions:*(a1 + 56)];
  [v2 addObject:v3];

  v4 = *(a1 + 32);
  v5 = [[SUInstallationConstraintMonitorNetwork alloc] initOnQueue:*(a1 + 40) withDownload:*(a1 + 48)];
  [v4 addObject:v5];

  LODWORD(v5) = *(a1 + 72);
  v6 = *(a1 + 32);
  v7 = [SUInstallationConstraintMonitorPhoneCalls alloc];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v5 == 1)
  {
    v10 = [(SUInstallationConstraintMonitorPhoneCalls *)v7 initOnQueue:v8 withDownload:v9 callCenter:*(a1 + 64) inSpringBoard:*(a1 + 72) onExistingPhoneCall:*(a1 + 73)];
  }

  else
  {
    v10 = [(SUInstallationConstraintMonitorPhoneCalls *)v7 initOnQueue:v8 withDownload:v9];
  }

  v11 = v10;
  [v6 addObject:v10];

  v12 = *(a1 + 32);
  v13 = [[SUInstallationConstraintMonitorRestoreFromICloud alloc] initOnQueue:*(a1 + 40) withDownload:*(a1 + 48)];
  [v12 addObject:v13];

  v14 = *(a1 + 32);
  v15 = [[SUInstallationConstraintMonitorRestoreFromITunes alloc] initOnQueue:*(a1 + 40) withDownload:*(a1 + 48)];
  [v14 addObject:v15];

  v16 = *(a1 + 32);
  v17 = [[SUInstallationConstraintMonitorSync alloc] initOnQueue:*(a1 + 40) withDownload:*(a1 + 48)];
  [v16 addObject:v17];

  v18 = *(a1 + 32);
  v19 = [[SUInstallationConstraintMonitorCarplay alloc] initOnQueue:*(a1 + 40) withDownload:*(a1 + 48)];
  [v18 addObject:v19];

  v20 = *(a1 + 32);
  v21 = [[SUInstallationConstraintMonitorMediaPlaying alloc] initOnQueue:*(a1 + 40) withDownload:*(a1 + 48)];
  [v20 addObject:v21];

  v22 = *(a1 + 32);
  v23 = [[SUInstallationConstraintMonitorDriving alloc] initOnQueue:*(a1 + 40) withDownload:*(a1 + 48)];
  [v22 addObject:v23];

  v24 = *(a1 + 32);
  v25 = [[SUInstallationConstraintMonitorWombat alloc] initOnQueue:*(a1 + 40) withDownload:*(a1 + 48)];
  [v24 addObject:v25];
}

- (SUInstallationConstraintObserver)initWithDownload:(id)a3 installOptions:(id)a4 queue:(id)a5 constraints:(id)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = SUInstallationConstraintObserver;
  v13 = [(SUComposedInstallationConstraintMonitor *)&v18 initWithInternalQueue:a5 withInstallationConstraintMonitors:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_download, a3);
    objc_storeStrong(&v14->_installOptions, a4);
    v15 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:517 valueOptions:0];
    queue_observerBlockTokens = v14->_queue_observerBlockTokens;
    v14->_queue_observerBlockTokens = v15;

    v14->_queue_tokenCount = 0;
  }

  return v14;
}

- (void)dealloc
{
  v3 = SULogInstallConstraints();
  SULogInfoForSubsystem(v3, @"[InstallationConstraintObserver] Dealloc: %@", v4, v5, v6, v7, v8, v9, self);

  v10.receiver = self;
  v10.super_class = SUInstallationConstraintObserver;
  [(SUComposedInstallationConstraintMonitor *)&v10 dealloc];
}

- (id)registerObserverBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SUInstallationConstraintObserver *)a2 registerObserverBlock:?];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SUInstallationConstraintObserver_registerObserverBlock___block_invoke;
  block[3] = &unk_279CABA60;
  block[4] = self;
  v16 = &v17;
  v7 = v5;
  v15 = v7;
  dispatch_sync(queue, block);
  v8 = self->super._queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__SUInstallationConstraintObserver_registerObserverBlock___block_invoke_2;
  v12[3] = &unk_279CAAF08;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  dispatch_async(v8, v12);
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __58__SUInstallationConstraintObserver_registerObserverBlock___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 72) & 1) == 0)
  {
    v2 = [[_SUInstallationConstraintBlockObserverToken alloc] initWithObserver:*(a1 + 32)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      ++*(*(a1 + 32) + 80);
      v5 = *(*(a1 + 32) + 64);
      v7 = [*(a1 + 40) copy];
      v6 = MEMORY[0x26D668B30]();
      [v5 setObject:v6 forKey:*(*(*(a1 + 48) + 8) + 40)];
    }
  }
}

uint64_t __58__SUInstallationConstraintObserver_registerObserverBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _queue_unsatisfiedConstraints];
  v4 = [*(a1 + 32) _queue_representedConstraints];
  v5 = *(v2 + 16);

  return v5(v2, v3, v4, 0);
}

- (void)invalidateWithError:(id)a3
{
  v4 = a3;
  queue = self->super._queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SUInstallationConstraintObserver_invalidateWithError___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __56__SUInstallationConstraintObserver_invalidateWithError___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = SULogInstallConstraints();
  SULogInfoForSubsystem(v2, @"[InstallationConstraintObserver] Invalidate: %@", v3, v4, v5, v6, v7, v8, *(a1 + 32));

  v9 = *(a1 + 32);
  if ((*(v9 + 72) & 1) == 0)
  {
    *(v9 + 72) = 1;
    if (*(a1 + 40))
    {
      v10 = [*(*(a1 + 32) + 64) copy];
      v11 = [v10 objectEnumerator];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          v16 = 0;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            (*(*(*(&v20 + 1) + 8 * v16) + 16))(*(*(&v20 + 1) + 8 * v16), 0, [*(a1 + 32) _queue_representedConstraints], *(a1 + 40));
            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }
    }

    [*(a1 + 32) _queue_invalidateChildConstraintMonitors];
    [*(*(a1 + 32) + 64) removeAllObjects];
    v17 = *(a1 + 32);
    v18 = *(v17 + 64);
    *(v17 + 64) = 0;

    [*(a1 + 32) _queue_clearDelegate];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)monitorOfClass:(Class)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  queue = self->super._queue;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUInstallationConstraintObserver_monitorOfClass___block_invoke;
  block[3] = &unk_279CABA88;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __51__SUInstallationConstraintObserver_monitorOfClass___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) constraintMonitors];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = *(a1 + 48);
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_noteInstallationConstraintMonitor:(id)a3 constraintsDidChange:(unint64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  queue = self->super._queue;
  BSDispatchQueueAssert();
  v7 = [(SUComposedInstallationConstraintMonitor *)self _queue_unsatisfiedConstraints];
  v8 = SULogInstallConstraints();
  v24 = SUStringFromInstallationConstraints(v7);
  SULogInfoForSubsystem(v8, @"%@ - unsatisfied constraints changed (unsatisfied? %@)", v9, v10, v11, v12, v13, v14, self);

  v15 = [(NSMapTable *)self->_queue_observerBlockTokens copy];
  v16 = [v15 objectEnumerator];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        (*(*(*(&v25 + 1) + 8 * v21++) + 16))();
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v19);
  }

  v22 = [(SUComposedInstallationConstraintMonitor *)self _queue_delegate];
  [v22 installationConstraintMonitor:self constraintsDidChange:a4];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_removeToken:(id)a3
{
  if (!a3)
  {
    [(SUInstallationConstraintObserver *)a2 _removeToken:?];
  }

  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUInstallationConstraintObserver__removeToken___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __49__SUInstallationConstraintObserver__removeToken___block_invoke(uint64_t a1)
{
  --*(*(a1 + 32) + 80);
  v2 = *(a1 + 32);
  if (!v2[10])
  {
    v3 = [v2 _queue_delegate];
    [v3 installationConstraintObserverDidRemoveAllObserverBlocks:*(a1 + 32)];
  }
}

- (BOOL)_hasAnyBlockObservers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->super._queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__SUInstallationConstraintObserver__hasAnyBlockObservers__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)registerObserverBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUInstallationConstraintObserver.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

- (void)_removeToken:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUInstallationConstraintObserver.m" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"token"}];
}

@end