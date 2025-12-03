@interface ICURLBagMonitor
+ (ICURLBagMonitor)sharedBagMonitor;
- (ICURLBag)bag;
- (NSString)description;
- (id)_description;
- (id)_init;
- (id)beginObservingBagWithHandler:(id)handler;
- (void)_beginObservingBag;
- (void)_endObservingBag;
- (void)_handleUserIdentityStoreDidChange:(id)change;
- (void)_invalidateBagExpirationTimer;
- (void)_requestBagWithPolicy:(unint64_t)policy completionHandler:(id)handler;
- (void)_scheduleBagExpirationTimerForDate:(id)date;
- (void)_updateWithBag:(id)bag;
- (void)dealloc;
- (void)endObservingBagWithToken:(id)token;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
@end

@implementation ICURLBagMonitor

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  v11 = *MEMORY[0x1E69E9840];
  reachabilityCopy = reachability;
  os_unfair_lock_assert_not_owner(&self->_lock);
  isRemoteServerLikelyReachable = [reachabilityCopy isRemoteServerLikelyReachable];

  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 1024;
    v10 = isRemoteServerLikelyReachable;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling network reachability change; isRemoteServerLikelyReachable = %{BOOL}u.", &v7, 0x12u);
  }

  if (isRemoteServerLikelyReachable)
  {
    [(ICURLBagMonitor *)self _requestBagWithPolicy:1 completionHandler:0];
  }
}

- (void)_updateWithBag:(id)bag
{
  v36 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (![(ICURLBag *)self->_bag isEqual:bagCopy])
  {
    objc_storeStrong(&self->_bag, bag);
    v11 = [(NSMutableDictionary *)self->_observers copy];
    v13 = [v11 count];
    v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      _description = [(ICURLBagMonitor *)self _description];
      serverCorrelationKey = [bagCopy serverCorrelationKey];
      serverEnvironment = [bagCopy serverEnvironment];
      v18 = serverEnvironment;
      *buf = 138544642;
      v19 = "s";
      v25 = _description;
      if (v13 == 1)
      {
        v19 = "";
      }

      v26 = 2114;
      v27 = bagCopy;
      v28 = 2114;
      v29 = serverCorrelationKey;
      v30 = 2114;
      v31 = serverEnvironment;
      v32 = 2048;
      v33 = v13;
      v34 = 2080;
      v35 = v19;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Bag did change: %{public}@ (serverCorrelationKey: %{public}@; serverEnvironment: %{public}@). About to invoke %llu observation handler%s.", buf, 0x3Eu);
    }

    goto LABEL_11;
  }

  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _description2 = [(ICURLBagMonitor *)self _description];
    *buf = 138543362;
    v25 = _description2;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Bag did not change. Skipping invoking observation handlers.", buf, 0xCu);
  }

  expirationDate = [(ICURLBag *)self->_bag expirationDate];
  expirationDate2 = [bagCopy expirationDate];
  v10 = [expirationDate compare:expirationDate2];

  v11 = 0;
  v12 = 0;
  if (v10 == -1)
  {
LABEL_11:
    expirationDate3 = [bagCopy expirationDate];
    [(ICURLBagMonitor *)self _scheduleBagExpirationTimerForDate:expirationDate3];

    v12 = v11;
  }

  os_unfair_lock_unlock(&self->_lock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __34__ICURLBagMonitor__updateWithBag___block_invoke;
  v22[3] = &unk_1E7BF6828;
  v22[4] = self;
  v23 = bagCopy;
  v21 = bagCopy;
  [v12 enumerateKeysAndObjectsUsingBlock:v22];
}

void __34__ICURLBagMonitor__updateWithBag___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Invoking observation handler with token %{public}@; bag = %{public}@.", &v10, 0x20u);
  }

  v6[2](v6, *(a1 + 40));
}

- (void)_requestBagWithPolicy:(unint64_t)policy completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  if (policy == 1)
  {
    v7 = 0;
    v8 = @"requireValidBag";
  }

  else if (policy)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 1;
    v8 = @"allowExpiredBag";
  }

  v9 = [ICStoreRequestContext alloc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__ICURLBagMonitor__requestBagWithPolicy_completionHandler___block_invoke;
  v16[3] = &unk_1E7BF6800;
  v16[4] = self;
  v17 = v7;
  v10 = [(ICStoreRequestContext *)v9 initWithBlock:v16];
  v11 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting bag with policy %{public}@.", buf, 0x16u);
  }

  v12 = +[ICURLBagProvider sharedBagProvider];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__ICURLBagMonitor__requestBagWithPolicy_completionHandler___block_invoke_29;
  v14[3] = &unk_1E7BF68D8;
  v14[4] = self;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [v12 getBagForRequestContext:v10 withCompletionHandler:v14];
}

void __59__ICURLBagMonitor__requestBagWithPolicy_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 24);
  v4 = a2;
  [v4 setIdentityStore:v3];
  v5 = +[ICUserIdentity activeAccount];
  [v4 setIdentity:v5];

  [v4 setAllowsExpiredBags:*(a1 + 40)];
  v6 = [[ICURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v4 setAuthenticationProvider:v6];
}

void __59__ICURLBagMonitor__requestBagWithPolicy_completionHandler___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) _updateWithBag:v5];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch bag with error: %{public}@.", &v10, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

- (void)_handleUserIdentityStoreDidChange:(id)change
{
  v11 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [changeCopy name];
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = name;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling %{public}@.", &v7, 0x16u);
  }

  [(ICURLBagMonitor *)self _requestBagWithPolicy:1 completionHandler:0];
}

- (void)_endObservingBag
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"ICUserIdentityStoreDidChangeNotification" object:self->_identityStore];
  [(ICURLBagMonitor *)self _invalidateBagExpirationTimer];
  v4 = +[ICEnvironmentMonitor sharedMonitor];
  [v4 unregisterObserver:self];

  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _description = [(ICURLBagMonitor *)self _description];
    v7 = 138543362;
    v8 = _description;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopped observing bag.", &v7, 0xCu);
  }
}

- (void)_beginObservingBag
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _description = [(ICURLBagMonitor *)self _description];
    v8 = 138543362;
    v9 = _description;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning to observe bag.", &v8, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleUserIdentityStoreDidChange_ name:@"ICUserIdentityStoreDidChangeNotification" object:self->_identityStore];
  expirationDate = [(ICURLBag *)self->_bag expirationDate];
  if (expirationDate)
  {
    [(ICURLBagMonitor *)self _scheduleBagExpirationTimerForDate:expirationDate];
  }

  v7 = +[ICEnvironmentMonitor sharedMonitor];
  [v7 registerObserver:self];
}

- (void)_scheduleBagExpirationTimerForDate:(id)date
{
  v25 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  os_unfair_lock_assert_owner(&self->_lock);
  [(ICURLBagMonitor *)self _invalidateBagExpirationTimer];
  [dateCopy timeIntervalSinceNow];
  v6 = v5;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 >= 0.00000011920929)
  {
    if (v8)
    {
      _description = [(ICURLBagMonitor *)self _description];
      *buf = 138543874;
      v20 = _description;
      v21 = 2114;
      v22 = dateCopy;
      v23 = 2048;
      v24 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling timer for bag expiration for date %{public}@; i.e. for %.1f seconds.", buf, 0x20u);
    }

    v11 = dispatch_get_global_queue(0, 0);
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);
    bagExpirationTimer = self->_bagExpirationTimer;
    self->_bagExpirationTimer = v12;

    v14 = self->_bagExpirationTimer;
    v15 = dispatch_time(0, (v6 * 1000000000.0));
    dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    objc_initWeak(buf, self);
    v16 = self->_bagExpirationTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __54__ICURLBagMonitor__scheduleBagExpirationTimerForDate___block_invoke;
    handler[3] = &unk_1E7BFA328;
    objc_copyWeak(&v18, buf);
    dispatch_source_set_event_handler(v16, handler);
    dispatch_resume(self->_bagExpirationTimer);
    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v8)
    {
      _description2 = [(ICURLBagMonitor *)self _description];
      *buf = 138543618;
      v20 = _description2;
      v21 = 2114;
      v22 = dateCopy;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Bag expiration date is in the past: %{public}@. Not scheduling timer for bag expiration.", buf, 0x16u);
    }
  }
}

void __54__ICURLBagMonitor__scheduleBagExpirationTimerForDate___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138543362;
    v4 = WeakRetained;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Bag expiration timer did fire.", &v3, 0xCu);
  }

  [WeakRetained _handleBagExpirationTimerFired];
}

- (void)_invalidateBagExpirationTimer
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  bagExpirationTimer = self->_bagExpirationTimer;
  if (bagExpirationTimer)
  {
    dispatch_source_cancel(bagExpirationTimer);
    v4 = self->_bagExpirationTimer;
    self->_bagExpirationTimer = 0;

    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      _description = [(ICURLBagMonitor *)self _description];
      v7 = 138543362;
      v8 = _description;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidated timer for bag expiration.", &v7, 0xCu);
    }
  }
}

- (void)endObservingBagWithToken:(id)token
{
  v12 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_observers removeObjectForKey:tokenCopy];
  v5 = [(NSMutableDictionary *)self->_observers count];
  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _description = [(ICURLBagMonitor *)self _description];
    v8 = 138543618;
    v9 = _description;
    v10 = 2114;
    v11 = tokenCopy;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Removed bag observer with token: %{public}@.", &v8, 0x16u);
  }

  if (!v5)
  {
    [(ICURLBagMonitor *)self _endObservingBag];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)beginObservingBagWithHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  os_unfair_lock_assert_not_owner(&self->_lock);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  os_unfair_lock_lock(&self->_lock);
  observers = self->_observers;
  v7 = [handlerCopy copy];

  v8 = MEMORY[0x1B8C781E0](v7);
  [(NSMutableDictionary *)observers setObject:v8 forKey:uUID];

  v9 = [(NSMutableDictionary *)self->_observers count];
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    _description = [(ICURLBagMonitor *)self _description];
    *buf = 138543618;
    v15 = _description;
    v16 = 2114;
    v17 = uUID;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Registered new bag observer with token: %{public}@.", buf, 0x16u);
  }

  if (v9 == 1)
  {
    [(ICURLBagMonitor *)self _beginObservingBag];
    os_unfair_lock_unlock(&self->_lock);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__ICURLBagMonitor_beginObservingBagWithHandler___block_invoke;
    v13[3] = &unk_1E7BFA300;
    v13[4] = self;
    [(ICURLBagMonitor *)self _requestBagWithPolicy:0 completionHandler:v13];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return uUID;
}

- (ICURLBag)bag
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_bag;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)description
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  _description = [(ICURLBagMonitor *)self _description];
  os_unfair_lock_unlock(&self->_lock);

  return _description;
}

- (id)_description
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  v7 = [(NSMutableDictionary *)self->_observers count];
  if (v7)
  {
    [v6 appendFormat:@"; observersCount = %lu", v7];
  }

  [v6 appendString:@">"];

  return v6;
}

- (void)dealloc
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(ICURLBagMonitor *)self _endObservingBag];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = ICURLBagMonitor;
  [(ICURLBagMonitor *)&v3 dealloc];
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = ICURLBagMonitor;
  v2 = [(ICURLBagMonitor *)&v8 init];
  if (v2)
  {
    v3 = +[ICUserIdentityStore defaultIdentityStore];
    identityStore = v2->_identityStore;
    v2->_identityStore = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observers = v2->_observers;
    v2->_observers = v5;
  }

  return v2;
}

+ (ICURLBagMonitor)sharedBagMonitor
{
  if (sharedBagMonitor_sSharedBagMonitorOnceToken != -1)
  {
    dispatch_once(&sharedBagMonitor_sSharedBagMonitorOnceToken, &__block_literal_global_24509);
  }

  v3 = sharedBagMonitor_sSharedBagMonitor;

  return v3;
}

uint64_t __35__ICURLBagMonitor_sharedBagMonitor__block_invoke()
{
  v0 = [[ICURLBagMonitor alloc] _init];
  v1 = sharedBagMonitor_sSharedBagMonitor;
  sharedBagMonitor_sSharedBagMonitor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end