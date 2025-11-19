@interface SPScheduler
- (SPScheduler)init;
- (SPSchedulerXPCProtocol)proxy;
- (void)dealloc;
- (void)publishImmediatelyWithCompletion:(id)a3;
- (void)schedulePublishWakeWithInformation:(id)a3 completion:(id)a4;
@end

@implementation SPScheduler

- (SPScheduler)init
{
  v11.receiver = self;
  v11.super_class = SPScheduler;
  v2 = [(SPScheduler *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.icloud.searchpartyd.scheduler", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc(MEMORY[0x277D07BA0]);
    v7 = [(SPScheduler *)v2 remoteInterface];
    v8 = [v6 initWithMachServiceName:@"com.apple.icloud.searchpartyd.scheduler" options:0 remoteObjectInterface:v7 interruptionHandler:0 invalidationHandler:0];
    serviceDescription = v2->_serviceDescription;
    v2->_serviceDescription = v8;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(SPScheduler *)self session];
  [v3 invalidate];

  [(SPScheduler *)self setSession:0];
  v4.receiver = self;
  v4.super_class = SPScheduler;
  [(SPScheduler *)&v4 dealloc];
}

- (SPSchedulerXPCProtocol)proxy
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(SPScheduler *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SPScheduler *)self session];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D07BA8]);
    v6 = [(SPScheduler *)self serviceDescription];
    v7 = [v5 initWithServiceDescription:v6];
    [(SPScheduler *)self setSession:v7];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(SPScheduler *)self serviceDescription];
      v9 = [v8 machService];
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&dword_2643BF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SPScheduler: Establishing XPC connection to %@", &v15, 0xCu);
    }

    v10 = [(SPScheduler *)self session];
    [v10 resume];
  }

  v11 = [(SPScheduler *)self session];
  v12 = [v11 proxy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)schedulePublishWakeWithInformation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __61__SPScheduler_schedulePublishWakeWithInformation_completion___block_invoke;
  activity_block[3] = &unk_279B57798;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643BF000, "SPScheduler schedulePublishWakeWithInformation", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __61__SPScheduler_schedulePublishWakeWithInformation_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__SPScheduler_schedulePublishWakeWithInformation_completion___block_invoke_2;
  v3[3] = &unk_279B57770;
  objc_copyWeak(&v6, &location);
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __61__SPScheduler_schedulePublishWakeWithInformation_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained proxy];
  [v2 schedulePublishWakeWithInformation:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)publishImmediatelyWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SPScheduler_publishImmediatelyWithCompletion___block_invoke;
  v6[3] = &unk_279B577E8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643BF000, "SPScheduler publishImmediatelyWithCompletion", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __48__SPScheduler_publishImmediatelyWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SPScheduler_publishImmediatelyWithCompletion___block_invoke_2;
  block[3] = &unk_279B577C0;
  objc_copyWeak(&v5, &location);
  v4 = *(a1 + 40);
  dispatch_async(v2, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__SPScheduler_publishImmediatelyWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained proxy];
  [v2 publishImmediatelyWithCompletion:*(a1 + 32)];
}

@end