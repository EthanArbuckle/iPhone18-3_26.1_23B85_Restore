@interface SPFinderStateManager
- (SPFinderStateManager)init;
- (SPFinderStateXPCProtocol)proxy;
- (id)remoteInterface;
- (void)dealloc;
- (void)disableFinderModeWithCompletion:(id)completion;
- (void)enableFinderModeWithCompletion:(id)completion;
- (void)fetchFinderState:(id)state;
- (void)setActiveCache:(int64_t)cache completion:(id)completion;
- (void)start;
- (void)stateInfoWithCompletion:(id)completion;
- (void)updateStateBlock;
@end

@implementation SPFinderStateManager

- (SPFinderStateManager)init
{
  v11.receiver = self;
  v11.super_class = SPFinderStateManager;
  v2 = [(SPFinderStateManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPFinderStateManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc(MEMORY[0x277D07BA0]);
    remoteInterface = [(SPFinderStateManager *)v2 remoteInterface];
    v8 = [v6 initWithMachServiceName:@"com.apple.icloud.searchpartyd.finderstatemanager" options:0 remoteObjectInterface:remoteInterface interruptionHandler:0 invalidationHandler:0];
    serviceDescription = v2->_serviceDescription;
    v2->_serviceDescription = v8;
  }

  return v2;
}

- (id)remoteInterface
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2875DBAE0];
  v3 = MEMORY[0x277CBEB98];
  v8[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_stateInfoWithCompletion_ argumentIndex:0 ofReply:1];

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)start
{
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2643BF000, v3, OS_LOG_TYPE_DEFAULT, "SPFinderStateManager: start observing state change notification", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, finderStateChangedHandler, @"SPFinderStateChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  [(SPFinderStateManager *)self updateStateBlock];
}

- (void)enableFinderModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643BF000, v5, OS_LOG_TYPE_DEFAULT, "enableFinderModeWithCompletion", buf, 2u);
  }

  queue = [(SPFinderStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SPFinderStateManager_enableFinderModeWithCompletion___block_invoke;
  v8[3] = &unk_279B577E8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
}

void __55__SPFinderStateManager_enableFinderModeWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__SPFinderStateManager_enableFinderModeWithCompletion___block_invoke_2;
  v2[3] = &unk_279B577E8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  _os_activity_initiate(&dword_2643BF000, "SPFinderStateManager enableFinderModeWithCompletion:", OS_ACTIVITY_FLAG_DEFAULT, v2);
}

void __55__SPFinderStateManager_enableFinderModeWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 enableFinderModeWithCompletion:*(a1 + 40)];
}

- (void)disableFinderModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643BF000, v5, OS_LOG_TYPE_DEFAULT, "disableFinderModeWithCompletion", buf, 2u);
  }

  queue = [(SPFinderStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SPFinderStateManager_disableFinderModeWithCompletion___block_invoke;
  v8[3] = &unk_279B577E8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
}

void __56__SPFinderStateManager_disableFinderModeWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__SPFinderStateManager_disableFinderModeWithCompletion___block_invoke_2;
  v2[3] = &unk_279B577E8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  _os_activity_initiate(&dword_2643BF000, "SPFinderStateManager disableFinderModeWithCompletion:", OS_ACTIVITY_FLAG_DEFAULT, v2);
}

void __56__SPFinderStateManager_disableFinderModeWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 disableFinderModeWithCompletion:*(a1 + 40)];
}

- (void)setActiveCache:(int64_t)cache completion:(id)completion
{
  completionCopy = completion;
  queue = [(SPFinderStateManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SPFinderStateManager_setActiveCache_completion___block_invoke;
  block[3] = &unk_279B57818;
  v10 = completionCopy;
  cacheCopy = cache;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __50__SPFinderStateManager_setActiveCache_completion___block_invoke(void *a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __50__SPFinderStateManager_setActiveCache_completion___block_invoke_2;
  activity_block[3] = &unk_279B57818;
  v2 = a1[5];
  v1 = a1[6];
  activity_block[4] = a1[4];
  v5 = v1;
  v4 = v2;
  _os_activity_initiate(&dword_2643BF000, "SPFinderStateManager setActiveCache:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __50__SPFinderStateManager_setActiveCache_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 setActiveCache:*(a1 + 48) completion:*(a1 + 40)];
}

- (void)updateStateBlock
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __40__SPFinderStateManager_updateStateBlock__block_invoke;
  v2[3] = &unk_279B57868;
  v2[4] = self;
  [(SPFinderStateManager *)self stateInfoWithCompletion:v2];
}

void __40__SPFinderStateManager_updateStateBlock__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = LogCategory_Unspecified();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __40__SPFinderStateManager_updateStateBlock__block_invoke_cold_1(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = [v5 state];
      _os_log_impl(&dword_2643BF000, v8, OS_LOG_TYPE_DEFAULT, "Fetched latest finder state %i:", buf, 8u);
    }

    v9 = [*(a1 + 32) stateChangedBlock];

    if (v9)
    {
      activity_block[0] = MEMORY[0x277D85DD0];
      activity_block[1] = 3221225472;
      activity_block[2] = __40__SPFinderStateManager_updateStateBlock__block_invoke_65;
      activity_block[3] = &unk_279B57840;
      activity_block[4] = *(a1 + 32);
      v15 = v5;
      _os_activity_initiate(&dword_2643BF000, "SPFinderStateManager stateChangedBlock", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
    }

    v10 = [*(a1 + 32) stateInfoChangedBlock];

    if (v10)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __40__SPFinderStateManager_updateStateBlock__block_invoke_2;
      v12[3] = &unk_279B57840;
      v12[4] = *(a1 + 32);
      v13 = v5;
      _os_activity_initiate(&dword_2643BF000, "SPFinderStateManager stateInfoChangedBlock", OS_ACTIVITY_FLAG_DEFAULT, v12);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __40__SPFinderStateManager_updateStateBlock__block_invoke_65(uint64_t a1)
{
  v2 = [*(a1 + 32) stateChangedBlock];
  v2[2](v2, [*(a1 + 40) state]);
}

void __40__SPFinderStateManager_updateStateBlock__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) stateInfoChangedBlock];
  v2[2](v2, *(a1 + 40));
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_2643BF000, v3, OS_LOG_TYPE_DEFAULT, "SPFinderStateManager: Dealloc %@", buf, 0xCu);
  }

  session = [(SPFinderStateManager *)self session];
  [session invalidate];

  [(SPFinderStateManager *)self setSession:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SPFinderStateChangedNotification", 0);
  v7.receiver = self;
  v7.super_class = SPFinderStateManager;
  [(SPFinderStateManager *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (SPFinderStateXPCProtocol)proxy
{
  v18 = *MEMORY[0x277D85DE8];
  queue = [(SPFinderStateManager *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(SPFinderStateManager *)self session];

  if (!session)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    serviceDescription = [(SPFinderStateManager *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:serviceDescription];
    [(SPFinderStateManager *)self setSession:v7];

    v8 = LogCategory_Unspecified();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      serviceDescription2 = [(SPFinderStateManager *)self serviceDescription];
      machService = [serviceDescription2 machService];
      v16 = 138412290;
      v17 = machService;
      _os_log_impl(&dword_2643BF000, v8, OS_LOG_TYPE_DEFAULT, "SPFinderStateManager: Establishing XPC connection to %@", &v16, 0xCu);
    }

    session2 = [(SPFinderStateManager *)self session];
    [session2 resume];
  }

  session3 = [(SPFinderStateManager *)self session];
  proxy = [session3 proxy];

  v14 = *MEMORY[0x277D85DE8];

  return proxy;
}

- (void)fetchFinderState:(id)state
{
  stateCopy = state;
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643BF000, v5, OS_LOG_TYPE_DEFAULT, "fetching Finder State...", buf, 2u);
  }

  queue = [(SPFinderStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SPFinderStateManager_fetchFinderState___block_invoke;
  v8[3] = &unk_279B577E8;
  v8[4] = self;
  v9 = stateCopy;
  v7 = stateCopy;
  dispatch_async(queue, v8);
}

void __41__SPFinderStateManager_fetchFinderState___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__SPFinderStateManager_fetchFinderState___block_invoke_2;
  v2[3] = &unk_279B577E8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  _os_activity_initiate(&dword_2643BF000, "SPFinderStateManager fetchFinderState", OS_ACTIVITY_FLAG_DEFAULT, v2);
}

void __41__SPFinderStateManager_fetchFinderState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 fetchFinderState:*(a1 + 40)];
}

- (void)stateInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(SPFinderStateManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SPFinderStateManager_stateInfoWithCompletion___block_invoke;
  v7[3] = &unk_279B577E8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __48__SPFinderStateManager_stateInfoWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__SPFinderStateManager_stateInfoWithCompletion___block_invoke_2;
  v2[3] = &unk_279B577E8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  _os_activity_initiate(&dword_2643BF000, "SPFinderStateManager stateInfoWithCompletion", OS_ACTIVITY_FLAG_DEFAULT, v2);
}

void __48__SPFinderStateManager_stateInfoWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) proxy];
  [v2 stateInfoWithCompletion:*(a1 + 40)];
}

void __40__SPFinderStateManager_updateStateBlock__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2643BF000, a2, OS_LOG_TYPE_ERROR, "Error fetching latest state change: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end