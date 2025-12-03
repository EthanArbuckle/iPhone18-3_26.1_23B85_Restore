@interface REPredictedActionServer
+ (id)sharedInstance;
- (REPredictedActionServer)init;
- (void)_accessOrEnqueueDataRequest:(id)request error:(id)error;
- (void)_clearConnection;
- (void)_finishProcessingData;
- (void)_invalidateConnection;
- (void)_queue_fetchPredicitions;
- (void)_queue_setupConnection;
- (void)_requestPredictions:(id)predictions;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)fetchFirstPerformedActionDate:(id)date;
- (void)fetchPerformedTodayCountForActionWithBundleIdentifer:(id)identifer actionIdentifier:(unint64_t)identifier completion:(id)completion;
- (void)fetchPredictedActions:(id)actions;
@end

@implementation REPredictedActionServer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[REPredictedActionServer sharedInstance];
  }

  v3 = sharedInstance_Server;

  return v3;
}

uint64_t __41__REPredictedActionServer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(REPredictedActionServer);
  v1 = sharedInstance_Server;
  sharedInstance_Server = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (REPredictedActionServer)init
{
  v30.receiver = self;
  v30.super_class = REPredictedActionServer;
  v2 = [(REPredictedActionServer *)&v30 init];
  v3 = v2;
  if (v2)
  {
    predictions = v2->_predictions;
    v5 = MEMORY[0x277CBEBF8];
    v2->_predictions = MEMORY[0x277CBEBF8];

    counts = v3->_counts;
    v3->_counts = v5;

    v7 = dispatch_queue_create("com.apple.RelevanceEngine.REPredictedActionServer", 0);
    queue = v3->_queue;
    v3->_queue = v7;

    v3->_fetchingData = 0;
    array = [MEMORY[0x277CBEB18] array];
    fetchCompletionBlocks = v3->_fetchCompletionBlocks;
    v3->_fetchCompletionBlocks = array;

    v11 = objc_alloc_init(REObserverStore);
    observers = v3->_observers;
    v3->_observers = v11;

    objc_initWeak(&location, v3);
    v13 = v3->_queue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __31__REPredictedActionServer_init__block_invoke;
    v27[3] = &unk_2785F9A90;
    objc_copyWeak(&v28, &location);
    v14 = [REUpNextScheduler schedulerWithQueue:v13 delay:v27 updateBlock:1.0];
    scheduler = v3->_scheduler;
    v3->_scheduler = v14;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, REHandlePredictedActionsUpdated, @"com.apple.relevanceengine.predictedactionsupdated", 0, CFNotificationSuspensionBehaviorCoalesce);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__requestPredictions_ name:@"REShowRecentDeveloperDonationsChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = soft_RESignificantLocationUpdateNotification();
    [defaultCenter2 addObserver:v3 selector:sel__requestPredictions_ name:v19 object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    v21 = RESignificantTimeChangeNotification();
    [defaultCenter3 addObserver:v3 selector:sel__requestPredictions_ name:v21 object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v3 selector:sel__requestPredictions_ name:@"REDeviceLockStateChangedNotification" object:0];

    v23 = v3->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__REPredictedActionServer_init__block_invoke_2;
    block[3] = &unk_2785F9AB8;
    v26 = v3;
    dispatch_async(v23, block);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __31__REPredictedActionServer_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_fetchPredicitions];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.relevanceengine.predictedactionsupdated", 0);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"REShowRecentDeveloperDonationsChangedNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = soft_RESignificantLocationUpdateNotification();
  [defaultCenter2 removeObserver:self name:v6 object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = RESignificantTimeChangeNotification();
  [defaultCenter3 removeObserver:self name:v8 object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 removeObserver:self name:@"REDeviceLockStateChangedNotification" object:0];

  v10.receiver = self;
  v10.super_class = REPredictedActionServer;
  [(REPredictedActionServer *)&v10 dealloc];
}

- (void)addObserver:(id)observer
{
  observers = self->_observers;
  observerCopy = observer;
  [(REObserverStore *)observers addObserver:observerCopy];
  [observerCopy predictedActionsDidUpdate];
}

- (void)fetchPredictedActions:(id)actions
{
  actionsCopy = actions;
  v5 = actionsCopy;
  if (actionsCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__REPredictedActionServer_fetchPredictedActions___block_invoke;
    v8[3] = &unk_2785FB6B0;
    v9 = actionsCopy;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__REPredictedActionServer_fetchPredictedActions___block_invoke_2;
    v6[3] = &unk_2785FA040;
    v7 = v9;
    [(REPredictedActionServer *)self _accessOrEnqueueDataRequest:v8 error:v6];
  }
}

uint64_t __49__REPredictedActionServer_fetchPredictedActions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v2 = *(a2 + 32);
  return (*(*(a1 + 32) + 16))();
}

- (void)fetchFirstPerformedActionDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  if (dateCopy)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__REPredictedActionServer_fetchFirstPerformedActionDate___block_invoke;
    v8[3] = &unk_2785FB6B0;
    v9 = dateCopy;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__REPredictedActionServer_fetchFirstPerformedActionDate___block_invoke_2;
    v6[3] = &unk_2785FA040;
    v7 = v9;
    [(REPredictedActionServer *)self _accessOrEnqueueDataRequest:v8 error:v6];
  }
}

- (void)_accessOrEnqueueDataRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__REPredictedActionServer__accessOrEnqueueDataRequest_error___block_invoke;
  block[3] = &unk_2785FB700;
  block[4] = self;
  v12 = requestCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = requestCopy;
  dispatch_async(queue, block);
}

void __61__REPredictedActionServer__accessOrEnqueueDataRequest_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[56] == 1)
  {
    objc_initWeak(&location, v2);
    v3 = *(*(a1 + 32) + 72);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __61__REPredictedActionServer__accessOrEnqueueDataRequest_error___block_invoke_2;
    v10 = &unk_2785FB6D8;
    objc_copyWeak(&v13, &location);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v4 = MEMORY[0x22AABC5E0](&v7);
    [v3 addObject:{v4, v7, v8, v9, v10}];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void __61__REPredictedActionServer__accessOrEnqueueDataRequest_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchPerformedTodayCountForActionWithBundleIdentifer:(id)identifer actionIdentifier:(unint64_t)identifier completion:(id)completion
{
  identiferCopy = identifer;
  completionCopy = completion;
  if (completionCopy)
  {
    queue = self->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __108__REPredictedActionServer_fetchPerformedTodayCountForActionWithBundleIdentifer_actionIdentifier_completion___block_invoke;
    v11[3] = &unk_2785FB258;
    v11[4] = self;
    v12 = identiferCopy;
    identifierCopy = identifier;
    v13 = completionCopy;
    dispatch_async(queue, v11);
  }
}

void __108__REPredictedActionServer_fetchPerformedTodayCountForActionWithBundleIdentifer_actionIdentifier_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = v2[1];
  if (!v3)
  {
    [v2 _queue_setupConnection];
    v3 = *(a1[4] + 8);
  }

  v4 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_14];
  [v4 fetchPerformedTodayCountForActionWithBundleIdentifer:a1[5] actionIdentifier:a1[7] completion:a1[6]];
}

void __108__REPredictedActionServer_fetchPerformedTodayCountForActionWithBundleIdentifer_actionIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = RELogForDomain(12);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 localizedDescription];
    v6 = 136315138;
    v7 = [v4 UTF8String];
    _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_DEFAULT, "Failed to get server proxy: %s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_requestPredictions:(id)predictions
{
  v15 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  if (predictionsCopy)
  {
    v5 = RELogForDomain(12);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      name = [predictionsCopy name];
      v13 = 138543362;
      v14 = name;
      _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_INFO, "Received %{public}@ notification that will trigger a prediction fetch from relevanced.", &v13, 0xCu);
    }
  }

  name2 = [predictionsCopy name];
  v8 = [name2 isEqualToString:@"com.apple.relevanceengine.predictedactionsupdated"];

  name3 = [predictionsCopy name];
  v10 = [name3 isEqualToString:@"REShowRecentDeveloperDonationsChangedNotification"];

  [(NSDate *)self->_lastFetchedDate timeIntervalSinceNow];
  if (v11 < 0.0)
  {
    v11 = -v11;
  }

  if ((v8 & 1) != 0 || (v10 & 1) != 0 || v11 > 1800.0)
  {
    [(REUpNextScheduler *)self->_scheduler schedule];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_queue_fetchPredicitions
{
  if (self->_fetchingData)
  {
    objc_initWeak(&location, self);
    fetchCompletionBlocks = self->_fetchCompletionBlocks;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke;
    v24[3] = &unk_2785F9A90;
    objc_copyWeak(&v25, &location);
    v4 = MEMORY[0x22AABC5E0](v24);
    [(NSMutableArray *)fetchCompletionBlocks addObject:v4];

    v5 = &v25;
  }

  else
  {
    self->_fetchingData = 1;
    date = [MEMORY[0x277CBEAA8] date];
    lastFetchedDate = self->_lastFetchedDate;
    self->_lastFetchedDate = date;

    if (!self->_connection)
    {
      [(REPredictedActionServer *)self _queue_setupConnection];
    }

    objc_initWeak(&location, self);
    connection = self->_connection;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_16;
    v22[3] = &unk_2785FB728;
    objc_copyWeak(&v23, &location);
    v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v22];
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_17;
    v19[3] = &unk_2785FB750;
    objc_copyWeak(&v21, &location);
    v11 = v10;
    v20 = v11;
    [v9 requestPredictedActionsWithCompletion:v19];
    dispatch_group_enter(v11);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_25;
    v16[3] = &unk_2785FB778;
    objc_copyWeak(&v18, &location);
    v12 = v11;
    v17 = v12;
    [v9 fetchFirstPerformedActionDate:v16];
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_28;
    v14[3] = &unk_2785F9A90;
    objc_copyWeak(&v15, &location);
    dispatch_group_notify(v12, queue, v14);
    objc_destroyWeak(&v15);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v21);

    v5 = &v23;
  }

  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke(uint64_t a1)
{
  v2 = RELogForDomain(12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_INFO, "Enqueue prediction fetch since we were already fetching data.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestPredictions:0];
}

void __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[6];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_2;
    v7[3] = &unk_2785F9AE0;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

uint64_t __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = RELogForDomain(12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) localizedDescription];
    v11 = 136315138;
    v12 = [v3 UTF8String];
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_DEFAULT, "Failed to get server proxy: %s", &v11, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 24);
  v6 = MEMORY[0x277CBEBF8];
  *(v4 + 24) = MEMORY[0x277CBEBF8];

  v7 = *(a1 + 40);
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;

  [*(a1 + 40) _finishProcessingData];
  result = [*(a1 + 40) _notifyObservers];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[6];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_2_18;
    v10[3] = &unk_2785FA4C0;
    v11 = v5;
    v12 = v8;
    v13 = v6;
    v14 = *(a1 + 32);
    dispatch_async(v9, v10);
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_2_18(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = RELogForDomain(12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) valueForKeyPath:@"bundleIdentifier"];
    v4 = [v3 componentsJoinedByString:{@", "}];
    v12 = 138543362;
    v13 = v4;
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_INFO, "Received requested predictions from daemon: %{public}@", &v12, 0xCu);
  }

  v5 = [*(*(a1 + 40) + 24) re_arrayMappedWithArray:*(a1 + 32)];
  v6 = *(a1 + 40);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 48) copyItems:1];
  v9 = *(a1 + 40);
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  dispatch_group_leave(*(a1 + 56));
  v11 = *MEMORY[0x277D85DE8];
}

void __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_2_26;
    block[3] = &unk_2785FB070;
    v8 = v3;
    v9 = v5;
    v10 = *(a1 + 32);
    dispatch_async(v6, block);
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_2_26(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RELogForDomain(12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_INFO, "Received first perfomed action date from daemon: (%@)", &v5, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 40), *(a1 + 32));
  dispatch_group_leave(*(a1 + 48));
  v4 = *MEMORY[0x277D85DE8];
}

void __51__REPredictedActionServer__queue_fetchPredicitions__block_invoke_28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _finishProcessingData];
    [v2 _notifyObservers];
    WeakRetained = v2;
  }
}

- (void)_finishProcessingData
{
  v15 = *MEMORY[0x277D85DE8];
  self->_fetchingData = 0;
  v3 = [(NSMutableArray *)self->_fetchCompletionBlocks copy];
  [(NSMutableArray *)self->_fetchCompletionBlocks removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setupConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.relevanceengine.predictedactionserver" options:4096];
  connection = self->_connection;
  self->_connection = v3;

  v5 = self->_connection;
  v6 = REPredictionServerInterface();
  [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

  v7 = self->_connection;
  v8 = REPredictionClientInterface();
  [(NSXPCConnection *)v7 setExportedInterface:v8];

  [(NSXPCConnection *)self->_connection setExportedObject:self];
  objc_initWeak(&location, self);
  v9 = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__REPredictedActionServer__queue_setupConnection__block_invoke;
  v13[3] = &unk_2785F9A90;
  objc_copyWeak(&v14, &location);
  [(NSXPCConnection *)v9 setInterruptionHandler:v13];
  v10 = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__REPredictedActionServer__queue_setupConnection__block_invoke_33;
  v11[3] = &unk_2785F9A90;
  objc_copyWeak(&v12, &location);
  [(NSXPCConnection *)v10 setInvalidationHandler:v11];
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __49__REPredictedActionServer__queue_setupConnection__block_invoke(uint64_t a1)
{
  v2 = RELogForDomain(12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_DEFAULT, "REPredictedActionServer XPC connection interrupted.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

void __49__REPredictedActionServer__queue_setupConnection__block_invoke_33(uint64_t a1)
{
  v2 = RELogForDomain(12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 0;
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_DEFAULT, "REPredictedActionServer XPC connection invalidated.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] setExportedObject:0];
  }
}

- (void)_clearConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__REPredictedActionServer__clearConnection__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __43__REPredictedActionServer__clearConnection__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateConnection];
  v2 = *(a1 + 32);

  return [v2 _finishProcessingData];
}

- (void)_invalidateConnection
{
  [(NSXPCConnection *)self->_connection setExportedObject:0];
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

@end