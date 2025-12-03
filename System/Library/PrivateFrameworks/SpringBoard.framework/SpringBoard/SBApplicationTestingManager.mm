@interface SBApplicationTestingManager
+ (id)sharedInstance;
- (SBApplicationTestingManager)init;
- (void)_handleTestEnded;
- (void)_installTestEndedHandler:(id)handler;
- (void)_prepareForTestStartup:(id)startup;
- (void)installNotificationObserverForNotificationName:(id)name notificationCenter:(id)center forOneNotification:(BOOL)notification usingBlock:(id)block;
- (void)markUserLaunchInitiationTime;
- (void)setupKeyboardAnimationSubTestsForTestName:(id)name;
@end

@implementation SBApplicationTestingManager

+ (id)sharedInstance
{
  v2 = sharedInstance_sharedInstance_2;
  if (!sharedInstance_sharedInstance_2)
  {
    kdebug_trace();
    v3 = objc_alloc_init(SBApplicationTestingManager);
    v4 = sharedInstance_sharedInstance_2;
    sharedInstance_sharedInstance_2 = v3;

    kdebug_trace();
    v2 = sharedInstance_sharedInstance_2;
  }

  return v2;
}

- (void)markUserLaunchInitiationTime
{
  v5 = *MEMORY[0x277D85DE8];
  currentTestName = [(SBApplicationTestingManager *)self currentTestName];
  v3 = currentTestName;
  if (currentTestName)
  {
    strncpy(__dst, [currentTestName UTF8String], 0x10uLL);
    [v3 hash];
    [v3 length];
    kdebug_trace();
  }
}

- (SBApplicationTestingManager)init
{
  v6.receiver = self;
  v6.super_class = SBApplicationTestingManager;
  v2 = [(SBApplicationTestingManager *)&v6 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    queue = v2->_queue;
    v2->_queue = Serial;
  }

  return v2;
}

- (void)setupKeyboardAnimationSubTestsForTestName:(id)name
{
  nameCopy = name;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v6 = *MEMORY[0x277D76C60];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __73__SBApplicationTestingManager_setupKeyboardAnimationSubTestsForTestName___block_invoke;
  v27[3] = &unk_2783B7F38;
  v7 = mEMORY[0x277D75128];
  v28 = v7;
  v8 = nameCopy;
  v29 = v8;
  [(SBApplicationTestingManager *)self installNotificationObserverForNotificationName:v6 forOneNotification:1 usingBlock:v27];
  v9 = *MEMORY[0x277D76BA8];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__SBApplicationTestingManager_setupKeyboardAnimationSubTestsForTestName___block_invoke_2;
  v24[3] = &unk_2783B7F38;
  v10 = v7;
  v25 = v10;
  v11 = v8;
  v26 = v11;
  [(SBApplicationTestingManager *)self installNotificationObserverForNotificationName:v9 forOneNotification:1 usingBlock:v24];
  v12 = *MEMORY[0x277D76C50];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __73__SBApplicationTestingManager_setupKeyboardAnimationSubTestsForTestName___block_invoke_3;
  v21[3] = &unk_2783B7F38;
  v13 = v10;
  v22 = v13;
  v14 = v11;
  v23 = v14;
  [(SBApplicationTestingManager *)self installNotificationObserverForNotificationName:v12 forOneNotification:1 usingBlock:v21];
  v15 = *MEMORY[0x277D76BA0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__SBApplicationTestingManager_setupKeyboardAnimationSubTestsForTestName___block_invoke_4;
  v18[3] = &unk_2783B7F38;
  v19 = v13;
  v20 = v14;
  v16 = v14;
  v17 = v13;
  [(SBApplicationTestingManager *)self installNotificationObserverForNotificationName:v15 forOneNotification:1 usingBlock:v18];
}

- (void)installNotificationObserverForNotificationName:(id)name notificationCenter:(id)center forOneNotification:(BOOL)notification usingBlock:(id)block
{
  nameCopy = name;
  centerCopy = center;
  blockCopy = block;
  if (centerCopy)
  {
    defaultCenter = centerCopy;
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  }

  v13 = defaultCenter;
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__69;
  v34 = __Block_byref_object_dispose__69;
  v35 = 0;
  v15 = v13;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __127__SBApplicationTestingManager_installNotificationObserverForNotificationName_notificationCenter_forOneNotification_usingBlock___block_invoke;
  v25[3] = &unk_2783B7F60;
  v28 = &v30;
  notificationCopy = notification;
  v16 = v15;
  v26 = v16;
  v17 = blockCopy;
  v27 = v17;
  v18 = [v16 addObserverForName:nameCopy object:0 queue:mainQueue usingBlock:v25];
  v19 = v31[5];
  v31[5] = v18;

  v20 = +[SBApplicationTestingManager sharedInstance];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __127__SBApplicationTestingManager_installNotificationObserverForNotificationName_notificationCenter_forOneNotification_usingBlock___block_invoke_2;
  v22[3] = &unk_2783A8CE0;
  v24 = &v30;
  v21 = v16;
  v23 = v21;
  [v20 _installTestEndedHandler:v22];

  _Block_object_dispose(&v30, 8);
}

void __127__SBApplicationTestingManager_installNotificationObserverForNotificationName_notificationCenter_forOneNotification_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = v3;
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 32) removeObserver:?];
      v5 = *(*(a1 + 48) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = 0;
    }

    (*(*(a1 + 40) + 16))();
    v4 = v7;
  }
}

void __127__SBApplicationTestingManager_installNotificationObserverForNotificationName_notificationCenter_forOneNotification_usingBlock___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [*(a1 + 32) removeObserver:?];
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }
}

- (void)_prepareForTestStartup:(id)startup
{
  startupCopy = startup;
  startupCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"PPT Test %@", startupCopy];
  v5 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  v6 = [v5 acquireIdleTimerDisableAssertionForReason:startupCopy];

  idleTimerDisableAssertions = self->_idleTimerDisableAssertions;
  if (!idleTimerDisableAssertions)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_idleTimerDisableAssertions;
    self->_idleTimerDisableAssertions = v8;

    idleTimerDisableAssertions = self->_idleTimerDisableAssertions;
  }

  v10 = [(NSMutableDictionary *)idleTimerDisableAssertions objectForKey:startupCopy];

  if (!v10)
  {
    [(NSMutableDictionary *)self->_idleTimerDisableAssertions setObject:v6 forKey:startupCopy];
  }
}

- (void)_handleTestEnded
{
  v26 = *MEMORY[0x277D85DE8];
  _idleTimerDisableAssertions = [(SBApplicationTestingManager *)self _idleTimerDisableAssertions];
  currentTestName = [(SBApplicationTestingManager *)self currentTestName];
  v5 = [_idleTimerDisableAssertions objectForKey:currentTestName];

  if (v5)
  {
    [v5 invalidate];
    _idleTimerDisableAssertions2 = [(SBApplicationTestingManager *)self _idleTimerDisableAssertions];
    currentTestName2 = [(SBApplicationTestingManager *)self currentTestName];
    [_idleTimerDisableAssertions2 removeObjectForKey:currentTestName2];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBApplicationDidExitNotification" object:0];

  [(SBApplicationTestingManager *)self setCurrentTestName:0];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__69;
  v23 = __Block_byref_object_dispose__69;
  v24 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SBApplicationTestingManager__handleTestEnded__block_invoke;
  block[3] = &unk_2783A8CE0;
  block[4] = self;
  block[5] = &v19;
  dispatch_sync(queue, block);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10 = v20[5];
  v11 = [v10 countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v14 objects:v25 count:16];
    }

    while (v11);
  }

  _Block_object_dispose(&v19, 8);
}

void __47__SBApplicationTestingManager__handleTestEnded__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;
}

- (void)_installTestEndedHandler:(id)handler
{
  handlerCopy = handler;
  currentTestName = [(SBApplicationTestingManager *)self currentTestName];

  if (currentTestName)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__SBApplicationTestingManager__installTestEndedHandler___block_invoke;
    v7[3] = &unk_2783A98A0;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_sync(queue, v7);
  }
}

void __56__SBApplicationTestingManager__installTestEndedHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  v6 = MEMORY[0x223D6F7F0](*(a1 + 40));
  [v2 addObject:v6];
}

@end