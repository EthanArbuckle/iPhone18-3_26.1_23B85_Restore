@interface SUScriptSubscriptionStatusObserver
+ (id)sharedObserver;
- (SUScriptSubscriptionStatusObserver)init;
- (void)_updateWithSubscriptionStatus:(id)status;
- (void)dealloc;
@end

@implementation SUScriptSubscriptionStatusObserver

+ (id)sharedObserver
{
  if (sharedObserver_sSharedObserverOnceToken != -1)
  {
    +[SUScriptSubscriptionStatusObserver sharedObserver];
  }

  v3 = sharedObserver_sSharedObserver;

  return v3;
}

uint64_t __52__SUScriptSubscriptionStatusObserver_sharedObserver__block_invoke()
{
  sharedObserver_sSharedObserver = objc_alloc_init(SUScriptSubscriptionStatusObserver);

  return MEMORY[0x1EEE66BB8]();
}

- (SUScriptSubscriptionStatusObserver)init
{
  v22.receiver = self;
  v22.super_class = SUScriptSubscriptionStatusObserver;
  v2 = [(SUScriptSubscriptionStatusObserver *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesStoreUI.SUScriptSubscriptionStatusObserver", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    autoupdatingActiveAccount = [(objc_class *)getICUserIdentityClass_1() autoupdatingActiveAccount];
    v6 = [(objc_class *)getICMusicSubscriptionStatusMonitorClass_1() sharedMonitorForIdentity:autoupdatingActiveAccount];
    subscriptionStatusMonitor = v2->_subscriptionStatusMonitor;
    v2->_subscriptionStatusMonitor = v6;

    subscriptionStatus = [(ICMusicSubscriptionStatusMonitor *)v2->_subscriptionStatusMonitor subscriptionStatus];
    v9 = v2->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__SUScriptSubscriptionStatusObserver_init__block_invoke;
    block[3] = &unk_1E81644A8;
    v10 = v2;
    v20 = v10;
    v11 = subscriptionStatus;
    v21 = v11;
    dispatch_sync(v9, block);
    objc_initWeak(&location, v10);
    v12 = v2->_subscriptionStatusMonitor;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __42__SUScriptSubscriptionStatusObserver_init__block_invoke_2;
    v16[3] = &unk_1E81670D8;
    objc_copyWeak(&v17, &location);
    v13 = [(ICMusicSubscriptionStatusMonitor *)v12 beginObservingSubscriptionStatusWithHandler:v16];
    subscriptionStatusMonitorObservationToken = v10->_subscriptionStatusMonitorObservationToken;
    v10->_subscriptionStatusMonitorObservationToken = v13;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __42__SUScriptSubscriptionStatusObserver_init__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [[SUScriptSubscriptionStatusResponse alloc] initWithSubscriptionStatus:*(a1 + 40) isFinal:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  objc_storeStrong((*(a1 + 32) + 16), v3);
  if (v2)
  {
  }
}

void __42__SUScriptSubscriptionStatusObserver_init__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateWithSubscriptionStatus:v4];
}

- (void)dealloc
{
  [(ICMusicSubscriptionStatusMonitor *)self->_subscriptionStatusMonitor endObservingSubscriptionStatusWithToken:self->_subscriptionStatusMonitorObservationToken];
  v3.receiver = self;
  v3.super_class = SUScriptSubscriptionStatusObserver;
  [(SUScriptSubscriptionStatusObserver *)&v3 dealloc];
}

- (void)_updateWithSubscriptionStatus:(id)status
{
  v22[1] = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v5 = statusCopy;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (statusCopy)
  {
    statusCopy = [[SUScriptSubscriptionStatusResponse alloc] initWithSubscriptionStatus:statusCopy isFinal:1];
  }

  accessQueue = self->_accessQueue;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __68__SUScriptSubscriptionStatusObserver__updateWithSubscriptionStatus___block_invoke;
  v13 = &unk_1E8167100;
  selfCopy = self;
  v7 = statusCopy;
  v15 = v7;
  v16 = &v17;
  dispatch_sync(accessQueue, &v10);
  if (*(v18 + 24) == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v21 = @"service";
    v22[0] = @"AppleMusic";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [defaultCenter postNotificationName:@"SUScriptSubscriptionStatusDidChangeNotification" object:self userInfo:v9];
  }

  _Block_object_dispose(&v17, 8);
}

void __68__SUScriptSubscriptionStatusObserver__updateWithSubscriptionStatus___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  if (v3 != v2 && ([v3 isEqual:?] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

@end