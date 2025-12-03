@interface MTSubscriptionEntitlementsObserver
- (MTSubscriptionEntitlementsObserver)initWithDelegate:(id)delegate onQueue:(id)queue;
- (MTSubscriptionEntitlementsObserverDelegate)delegate;
- (void)entitlementsDidChange:(id)change;
@end

@implementation MTSubscriptionEntitlementsObserver

- (MTSubscriptionEntitlementsObserver)initWithDelegate:(id)delegate onQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = MTSubscriptionEntitlementsObserver;
  v8 = [(MTSubscriptionEntitlementsObserver *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v9->_subscriptionsEntitlementsLock._os_unfair_lock_opaque = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__MTSubscriptionEntitlementsObserver_initWithDelegate_onQueue___block_invoke;
    block[3] = &unk_1E8568E28;
    v12 = v9;
    dispatch_async(queueCopy, block);
  }

  return v9;
}

void __63__MTSubscriptionEntitlementsObserver_initWithDelegate_onQueue___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v2 = getASDSubscriptionEntitlementsClass_softClass;
  v22 = getASDSubscriptionEntitlementsClass_softClass;
  if (!getASDSubscriptionEntitlementsClass_softClass)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getASDSubscriptionEntitlementsClass_block_invoke;
    v17 = &unk_1E856B060;
    v18 = &v19;
    __getASDSubscriptionEntitlementsClass_block_invoke(&v14);
    v2 = v20[3];
  }

  v3 = v2;
  _Block_object_dispose(&v19, 8);
  v4 = objc_opt_new();
  [*(a1 + 32) setEntitlements:v4];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *(a1 + 32);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v7 = getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_ptr;
  v22 = getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_ptr;
  if (!getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_ptr)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_block_invoke;
    v17 = &unk_1E856B060;
    v18 = &v19;
    v8 = AppStoreDaemonLibrary();
    v9 = dlsym(v8, "ASDSubscriptionEntitlementsPodcastDidChangeNotification");
    *(v18[1] + 24) = v9;
    getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_ptr = *(v18[1] + 24);
    v7 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v7)
  {
    v13 = __63__MTSubscriptionEntitlementsObserver_initWithDelegate_onQueue___block_invoke_cold_1();
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v13);
  }

  v10 = *(a1 + 32);
  v11 = *v7;
  v12 = [v10 entitlements];
  [v5 addObserver:v6 selector:sel_entitlementsDidChange_ name:v11 object:v12];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

- (void)entitlementsDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MTSubscriptionEntitlementsObserver_entitlementsDidChange___block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__MTSubscriptionEntitlementsObserver_entitlementsDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 entitlementsDidChange];
}

- (MTSubscriptionEntitlementsObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

uint64_t __63__MTSubscriptionEntitlementsObserver_initWithDelegate_onQueue___block_invoke_cold_1()
{
  dlerror();
  abort_report_np();
  return __getASDSubscriptionEntitlementsClass_block_invoke_cold_1();
}

@end