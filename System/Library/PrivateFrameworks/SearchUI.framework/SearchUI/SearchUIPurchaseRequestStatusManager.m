@interface SearchUIPurchaseRequestStatusManager
+ (SearchUIPurchaseRequestStatusManager)sharedManager;
- (SearchUIPurchaseRequestStatusManager)init;
- (id)addObserver:(id)a3;
- (int)statusForRequestID:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)setupSink;
- (void)updateWithEvent:(id)a3;
@end

@implementation SearchUIPurchaseRequestStatusManager

+ (SearchUIPurchaseRequestStatusManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[SearchUIPurchaseRequestStatusManager sharedManager];
  }

  v3 = sharedManager_sharedObserver_0;

  return v3;
}

uint64_t __53__SearchUIPurchaseRequestStatusManager_sharedManager__block_invoke()
{
  sharedManager_sharedObserver_0 = objc_alloc_init(SearchUIPurchaseRequestStatusManager);

  return MEMORY[0x1EEE66BB8]();
}

- (SearchUIPurchaseRequestStatusManager)init
{
  v8.receiver = self;
  v8.super_class = SearchUIPurchaseRequestStatusManager;
  v2 = [(SearchUIPurchaseRequestStatusManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestStatuses = v2->_requestStatuses;
    v2->_requestStatuses = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696AD88]);
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v5;

    [(SearchUIPurchaseRequestStatusManager *)v2 setupSink];
  }

  return v2;
}

- (void)setupSink
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.SearchUI.SearchUIPurchaseRequestStatusManager.queue", v3);

  v5 = [objc_alloc(MEMORY[0x1E698F258]) initWithIdentifier:@"com.apple.SearchUI.SearchUIPurchaseRequestStatusManager.scheduler" targetQueue:v4 waking:0];
  objc_initWeak(&location, self);
  v6 = BiomeLibrary();
  v7 = [v6 Family];
  v8 = [v7 AskToBuy];
  v9 = [v8 DSLPublisher];
  v10 = [v9 subscribeOn:v5];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __49__SearchUIPurchaseRequestStatusManager_setupSink__block_invoke_2;
  v15 = &unk_1E85B2A50;
  objc_copyWeak(&v16, &location);
  v11 = [v10 sinkWithCompletion:&__block_literal_global_17 receiveInput:&v12];
  [(SearchUIPurchaseRequestStatusManager *)self setBiomeSink:v11, v12, v13, v14, v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __49__SearchUIPurchaseRequestStatusManager_setupSink__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 eventBody];

  [WeakRetained updateWithEvent:v4];
}

- (int)statusForRequestID:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIPurchaseRequestStatusManager *)self requestStatuses];
  v6 = [v5 objectForKeyedSubscript:v4];

  LODWORD(v4) = [v6 intValue];
  return v4;
}

- (id)addObserver:(id)a3
{
  v4 = a3;
  notificationCenter = self->_notificationCenter;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__SearchUIPurchaseRequestStatusManager_addObserver___block_invoke;
  v9[3] = &unk_1E85B2A78;
  v10 = v4;
  v6 = v4;
  v7 = [(NSNotificationCenter *)notificationCenter addObserverForName:@"purchaseRequestStatusDidChangeNotification" object:0 queue:0 usingBlock:v9];

  return v7;
}

void __52__SearchUIPurchaseRequestStatusManager_addObserver___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = [v3 userInfo];
  v4 = [v7 objectForKeyedSubscript:@"requestID"];
  v5 = [v3 userInfo];

  v6 = [v5 objectForKeyedSubscript:@"status"];
  (*(v2 + 16))(v2, v4, [v6 intValue]);
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSNotificationCenter *)self->_notificationCenter removeObserver:?];
  }
}

- (void)updateWithEvent:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "status")}];
  v7 = [(SearchUIPurchaseRequestStatusManager *)self requestStatuses];
  v8 = [v5 requestID];
  [v7 setObject:v6 forKeyedSubscript:v8];

  notificationCenter = self->_notificationCenter;
  v15[0] = @"requestID";
  v10 = [v5 requestID];
  v15[1] = @"status";
  v16[0] = v10;
  v11 = MEMORY[0x1E696AD98];
  v12 = [v5 status];

  v13 = [v11 numberWithInt:v12];
  v16[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [(NSNotificationCenter *)notificationCenter postNotificationName:@"purchaseRequestStatusDidChangeNotification" object:0 userInfo:v14];
}

- (void)dealloc
{
  v3 = [(SearchUIPurchaseRequestStatusManager *)self biomeSink];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = SearchUIPurchaseRequestStatusManager;
  [(SearchUIPurchaseRequestStatusManager *)&v4 dealloc];
}

@end