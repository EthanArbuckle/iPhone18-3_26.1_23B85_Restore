@interface ICMusicSubscriptionStatusMonitor
+ (id)_sharedInstanceManager;
+ (id)sharedMonitorForIdentity:(id)a3;
+ (id)sharedMonitorForIdentity:(id)a3 identityStore:(id)a4;
- (BOOL)_isMonitoringSubscriptionStatusForAutoupdatingIdentity;
- (id)_effectiveIdentityForRequestingSubscriptionStatus;
- (id)_initWithIdentityContext:(id)a3;
- (id)beginObservingSubscriptionStatusWithHandler:(id)a3;
- (id)description;
- (void)_beginObservingSubscriptionStatus;
- (void)_endObservingSubscriptionStatus;
- (void)_handleActiveUserIdentityDidChangeRemoteNotification;
- (void)_handleHomeManagerPropertiesDidChange:(id)a3;
- (void)_handleSubscriptionStatusDidChange:(id)a3;
- (void)_handleUserIdentityStoreDidChange:(id)a3;
- (void)_invokeAccessHandlersWithSubscriptionStatus:(id)a3 error:(id)a4;
- (void)_requestSubscriptionStatusWithCachingPolicy:(unint64_t)a3 completion:(id)a4;
- (void)_updateWithSubscriptionStatus:(id)a3;
- (void)dealloc;
- (void)endObservingSubscriptionStatusWithToken:(id)a3;
- (void)performBlockWithLoadedSubscriptionStatus:(id)a3;
- (void)refreshSubscriptionStatus;
@end

@implementation ICMusicSubscriptionStatusMonitor

uint64_t __58__ICMusicSubscriptionStatusMonitor__sharedInstanceManager__block_invoke()
{
  _sharedInstanceManager_sSharedInstanceManager = [[ICKeyedSharedInstanceManager alloc] initWithInstantiationHandler:&__block_literal_global_24];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_sharedInstanceManager
{
  if (_sharedInstanceManager_sSharedInstanceManagerOnceToken != -1)
  {
    dispatch_once(&_sharedInstanceManager_sSharedInstanceManagerOnceToken, &__block_literal_global_36914);
  }

  v3 = _sharedInstanceManager_sSharedInstanceManager;

  return v3;
}

- (id)_effectiveIdentityForRequestingSubscriptionStatus
{
  v2 = [(ICUserIdentityContext *)self->_identityContext identity];
  v3 = [v2 type];
  switch(v3)
  {
    case 9:
      v4 = +[ICUserIdentity defaultMediaIdentity];
      break;
    case 3:
      v4 = +[ICUserIdentity activeLockerAccount];
      break;
    case 2:
      v4 = +[ICUserIdentity activeAccount];
      break;
    default:
      v4 = v2;
      break;
  }

  v5 = v4;

  return v5;
}

- (void)_beginObservingSubscriptionStatus
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Beginning to observe subscription status.", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [MEMORY[0x1E695DF70] array];
  objc_initWeak(buf, self);
  v6 = +[ICMusicSubscriptionStatusController sharedStatusController];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__ICMusicSubscriptionStatusMonitor__beginObservingSubscriptionStatus__block_invoke;
  v19[3] = &unk_1E7BF9368;
  objc_copyWeak(&v20, buf);
  v7 = [v4 addObserverForName:@"ICMusicSubscriptionStatusDidChangeNotification" object:v6 queue:0 usingBlock:v19];
  [v5 addObject:v7];

  v8 = [(ICUserIdentityContext *)self->_identityContext identityStore];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__ICMusicSubscriptionStatusMonitor__beginObservingSubscriptionStatus__block_invoke_2;
  v17[3] = &unk_1E7BF9368;
  objc_copyWeak(&v18, buf);
  v9 = [v4 addObserverForName:@"ICUserIdentityStoreDidChangeNotification" object:v8 queue:0 usingBlock:v17];
  [v5 addObject:v9];

  v10 = [(ICUserIdentityContext *)self->_identityContext identity];
  v11 = [v10 type];

  if (v11 == 9)
  {
    v12 = [(ICUserIdentityContext *)self->_identityContext identityStore];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__ICMusicSubscriptionStatusMonitor__beginObservingSubscriptionStatus__block_invoke_3;
    v15[3] = &unk_1E7BF9368;
    objc_copyWeak(&v16, buf);
    v13 = [v4 addObserverForName:@"com.apple.iTunesCloud.ICHomeManager.ICHomeManagerPropertiesDidChangeNotification" object:v12 queue:0 usingBlock:v15];
    [v5 addObject:v13];

    objc_destroyWeak(&v16);
  }

  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_notificationHandlers, v5);
  os_unfair_lock_unlock(&self->_lock);
  if ([(ICMusicSubscriptionStatusMonitor *)self _isMonitoringSubscriptionStatusForAutoupdatingIdentity])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _ICMusicSubscriptionStatusMonitorHandleActiveUserIdentityDidChangeRemoteNotification, @"com.apple.itunescloudd.activeUserIdentityDidChangeNotification", 0, 1028);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

id __58__ICMusicSubscriptionStatusMonitor__sharedInstanceManager__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ICMusicSubscriptionStatusMonitor alloc] _initWithIdentityContext:v2];

  return v3;
}

- (BOOL)_isMonitoringSubscriptionStatusForAutoupdatingIdentity
{
  v2 = [(ICUserIdentityContext *)self->_identityContext identity];
  v3 = [v2 type];

  return (v3 < 0xA) & (0x20Cu >> v3);
}

- (id)description
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  v7 = [(ICUserIdentityContext *)self->_identityContext identity];
  [v6 appendFormat:@"; identity = %@", v7];

  v8 = [(ICUserIdentityContext *)self->_identityContext identityStore];
  if ([v8 identityStoreStyle])
  {
    [v6 appendFormat:@"; identityStore = %@", v8];
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_observers count];
  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    [v6 appendFormat:@"; observersCount = %lu", v9];
  }

  [v6 appendString:@">"];

  return v6;
}

- (void)_invokeAccessHandlersWithSubscriptionStatus:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableArray *)self->_accessHandlers copy];
  accessHandlers = self->_accessHandlers;
  self->_accessHandlers = 0;

  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v15 + 1) + 8 * v14) + 16))(*(*(&v15 + 1) + 8 * v14));
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)_updateWithSubscriptionStatus:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_subscriptionStatus;
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [(ICMusicSubscriptionStatus *)v6 isEqual:v5];

    if (!v8)
    {
      objc_storeStrong(&self->_subscriptionStatus, a3);
      v9 = [(NSMutableDictionary *)self->_observers copy];
      os_unfair_lock_unlock(&self->_lock);
      v10 = [v9 count];
      v11 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "s";
        *buf = 138544130;
        v22 = 2114;
        v21 = self;
        if (v10 == 1)
        {
          v12 = "";
        }

        v23 = v5;
        v24 = 2048;
        v25 = v10;
        v26 = 2080;
        v27 = v12;
        _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Subscription status did change: %{public}@. About to invoke %llu observation handler%s.", buf, 0x2Au);
      }

      if (v10)
      {
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __66__ICMusicSubscriptionStatusMonitor__updateWithSubscriptionStatus___block_invoke;
        v17 = &unk_1E7BF93E8;
        v18 = self;
        v19 = v5;
        [v9 enumerateKeysAndObjectsUsingBlock:&v14];
      }

      goto LABEL_13;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = self;
    _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Subscription status did not change. Skipping invoking observation handlers.", buf, 0xCu);
  }

  v9 = 0;
LABEL_13:
  [(ICMusicSubscriptionStatusMonitor *)self _invokeAccessHandlersWithSubscriptionStatus:v5 error:0, v14, v15, v16, v17, v18];
}

void __66__ICMusicSubscriptionStatusMonitor__updateWithSubscriptionStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 40);
    v12 = 138544130;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v10;
    v18 = 2048;
    v19 = v11;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Invoking observation handler with token %{public}@; subscription status = <%{public}@: %p>", &v12, 0x2Au);
  }

  (*(v6 + 2))(v6, *(a1 + 32), *(a1 + 40));
}

- (void)_requestSubscriptionStatusWithCachingPolicy:(unint64_t)a3 completion:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v7 = [(ICMusicSubscriptionStatusMonitor *)self _effectiveIdentityForRequestingSubscriptionStatus];
  v8 = [ICStoreRequestContext alloc];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __91__ICMusicSubscriptionStatusMonitor__requestSubscriptionStatusWithCachingPolicy_completion___block_invoke;
  v22[3] = &unk_1E7BF9398;
  v22[4] = self;
  v9 = v7;
  v23 = v9;
  v10 = [(ICStoreRequestContext *)v8 initWithBlock:v22];
  v11 = [[ICMusicSubscriptionStatusRequest alloc] initWithStoreRequestContext:v10];
  [(ICMusicSubscriptionStatusRequest *)v11 setAllowsFallbackToExpiredStatus:1];
  [(ICMusicSubscriptionStatusRequest *)v11 setAllowsFallbackToStatusNeedingReload:1];
  [(ICMusicSubscriptionStatusRequest *)v11 setCarrierBundleProvisioningStyle:1];
  if (a3 == 2)
  {
    [(ICMusicSubscriptionStatusRequest *)v11 setShouldReturnLastKnownStatusOnly:1];
    v12 = @"required";
  }

  else if (a3 == 1)
  {
    [(ICMusicSubscriptionStatusRequest *)v11 setShouldIgnoreCache:1];
    v12 = @"restricted";
  }

  else if (a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = @"allowed";
  }

  v13 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v25 = self;
    v26 = 2114;
    v27 = v12;
    v28 = 2114;
    v29 = v11;
    _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting subscription status with caching %{public}@, using %{public}@.", buf, 0x20u);
  }

  v14 = +[ICMusicSubscriptionStatusController sharedStatusController];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__ICMusicSubscriptionStatusMonitor__requestSubscriptionStatusWithCachingPolicy_completion___block_invoke_43;
  v18[3] = &unk_1E7BF93C0;
  v18[4] = self;
  v19 = v11;
  v20 = v9;
  v21 = v6;
  v15 = v6;
  v16 = v9;
  v17 = v11;
  [v14 performSubscriptionStatusRequest:v17 withCompletionHandler:v18];
}

void __91__ICMusicSubscriptionStatusMonitor__requestSubscriptionStatusWithCachingPolicy_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v3 identityStore];
  [v4 setIdentityStore:v5];

  [v4 setIdentity:*(a1 + 40)];
  [v4 setAllowsExpiredBags:1];
  v6 = [(ICURLResponseAuthenticationProvider *)[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v4 setAuthenticationProvider:v6];
}

void __91__ICMusicSubscriptionStatusMonitor__requestSubscriptionStatusWithCachingPolicy_completion___block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v21 = 138543874;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Did complete %{public}@. Encountered error: %{public}@.", &v21, 0x20u);
    }

    [*(a1 + 32) _invokeAccessHandlersWithSubscriptionStatus:0 error:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v12;
      v25 = 2114;
      v26 = v5;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Did complete %{public}@. Received subscription status response %{public}@.", &v21, 0x20u);
    }

    v13 = [*(a1 + 32) _effectiveIdentityForRequestingSubscriptionStatus];
    v14 = *(a1 + 48);
    v15 = +[ICUserIdentityStore defaultIdentityStore];
    LOBYTE(v14) = [v13 isEqualToIdentity:v14 inStore:v15];

    if (v14)
    {
      v16 = [v5 subscriptionStatus];
      v17 = [v16 copy];

      [*(a1 + 32) _updateWithSubscriptionStatus:v17];
    }

    else
    {
      v17 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 48);
        v21 = 138543874;
        v22 = v18;
        v23 = 2114;
        v24 = v19;
        v25 = 2114;
        v26 = v13;
        _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring response because the effective user identity has changed since the request was made: %{public}@ --> %{public}@", &v21, 0x20u);
      }
    }
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    (*(v20 + 16))();
  }
}

- (void)_endObservingSubscriptionStatus
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_notificationHandlers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeObserver:{*(*(&v12 + 1) + 8 * v8++), v12}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }

  if ([(ICMusicSubscriptionStatusMonitor *)self _isMonitoringSubscriptionStatusForAutoupdatingIdentity])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunescloudd.activeUserIdentityDidChangeNotification", 0);
  }

  os_unfair_lock_lock(&self->_lock);
  notificationHandlers = self->_notificationHandlers;
  self->_notificationHandlers = 0;

  os_unfair_lock_unlock(&self->_lock);
  v11 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = self;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopped observing subscription status.", buf, 0xCu);
  }
}

void __69__ICMusicSubscriptionStatusMonitor__beginObservingSubscriptionStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSubscriptionStatusDidChange:v3];
}

void __69__ICMusicSubscriptionStatusMonitor__beginObservingSubscriptionStatus__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUserIdentityStoreDidChange:v3];
}

void __69__ICMusicSubscriptionStatusMonitor__beginObservingSubscriptionStatus__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleHomeManagerPropertiesDidChange:v3];
}

- (void)_handleHomeManagerPropertiesDidChange:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling %{public}@.", &v8, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  subscriptionStatus = self->_subscriptionStatus;
  self->_subscriptionStatus = 0;

  os_unfair_lock_unlock(&self->_lock);
  [(ICMusicSubscriptionStatusMonitor *)self _requestSubscriptionStatusWithCachingPolicy:0 completion:0];
}

- (void)_handleUserIdentityStoreDidChange:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = [(ICMusicSubscriptionStatusMonitor *)self _effectiveIdentityForRequestingSubscriptionStatus];
  v6 = [(ICUserIdentityContext *)self->_identityContext identityStore];
  v22 = 0;
  v7 = [v6 DSIDForUserIdentity:v5 outError:&v22];
  v8 = v22;

  if (v8)
  {
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v4 name];
      *buf = 138544130;
      v24 = self;
      v25 = 2114;
      v26 = v10;
      v27 = 2112;
      v28 = v5;
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Upon handling %{public}@, encountered unexpected error while resolving DSID for effective user identity %@: %{public}@.", buf, 0x2Au);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v11 = self->_DSID;
  v12 = v11;
  if (v11 == v7)
  {
  }

  else
  {
    v13 = [(NSNumber *)v11 isEqual:v7];

    if ((v13 & 1) == 0)
    {
      v14 = self->_DSID;
      objc_storeStrong(&self->_DSID, v7);
      os_unfair_lock_unlock(&self->_lock);
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v4 name];
        *buf = 138544130;
        v24 = self;
        v25 = 2114;
        v26 = v16;
        v27 = 2112;
        v28 = v14;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling %{public}@. DSID changed from %@ to %@. Checking to see if the subscription status has changed.", buf, 0x2Au);
      }

      v17 = [(ICUserIdentityContext *)self->_identityContext identity];
      v18 = [v17 type];
      if (v18 == 9 || v18 == 2)
      {
        v19 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v24 = self;
          _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: clearing current subscription status for dsid change", buf, 0xCu);
        }

        os_unfair_lock_lock(&self->_lock);
        subscriptionStatus = self->_subscriptionStatus;
        self->_subscriptionStatus = 0;

        os_unfair_lock_unlock(&self->_lock);
      }

      goto LABEL_18;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    v14 = 0;
LABEL_18:
    [(ICMusicSubscriptionStatusMonitor *)self _requestSubscriptionStatusWithCachingPolicy:0 completion:0];
    goto LABEL_19;
  }

  v14 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(&v14->super.super, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v4 name];
    *buf = 138543874;
    v24 = self;
    v25 = 2114;
    v26 = v21;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_1B4491000, &v14->super.super, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling %{public}@. DSID has not changed (it is still equal to %@). Ignoring this notification.", buf, 0x20u);
  }

LABEL_19:
}

- (void)_handleSubscriptionStatusDidChange:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"ICUserIdentityForMusicSubscriptionStatusDidChangeKey"];

  if (v6 && (-[ICMusicSubscriptionStatusMonitor _effectiveIdentityForRequestingSubscriptionStatus](self, "_effectiveIdentityForRequestingSubscriptionStatus"), v7 = objc_claimAutoreleasedReturnValue(), -[ICUserIdentityContext identityStore](self->_identityContext, "identityStore"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqualToIdentity:v6 inStore:v8], v8, v7, (v9 & 1) == 0))
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 name];
      v14 = 138543874;
      v15 = self;
      v16 = 2114;
      v17 = v13;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring %{public}@ because it specifically refers to a different user identity: %{public}@.", &v14, 0x20u);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 name];
      v14 = 138543618;
      v15 = self;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling %{public}@.", &v14, 0x16u);
    }

    [(ICMusicSubscriptionStatusMonitor *)self _requestSubscriptionStatusWithCachingPolicy:0 completion:0];
  }
}

- (void)_handleActiveUserIdentityDidChangeRemoteNotification
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543618;
    v5 = self;
    v6 = 2114;
    v7 = @"com.apple.itunescloudd.activeUserIdentityDidChangeNotification";
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Handling %{public}@. The active user identity has changed in the daemon. Checking to see if the subscription status has changed.", &v4, 0x16u);
  }

  [(ICMusicSubscriptionStatusMonitor *)self _requestSubscriptionStatusWithCachingPolicy:0 completion:0];
}

- (void)refreshSubscriptionStatus
{
  os_unfair_lock_assert_not_owner(&self->_lock);

  [(ICMusicSubscriptionStatusMonitor *)self _requestSubscriptionStatusWithCachingPolicy:1 completion:0];
}

- (void)performBlockWithLoadedSubscriptionStatus:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [(ICMusicSubscriptionStatus *)self->_subscriptionStatus copy];
  if (v4)
  {
    os_unfair_lock_unlock(&self->_lock);
    v10[2](v10, v4, 0);
  }

  else
  {
    accessHandlers = self->_accessHandlers;
    if (!accessHandlers)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v7 = self->_accessHandlers;
      self->_accessHandlers = v6;

      accessHandlers = self->_accessHandlers;
    }

    v8 = [v10 copy];
    v9 = MEMORY[0x1B8C781E0]();
    [(NSMutableArray *)accessHandlers addObject:v9];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)endObservingSubscriptionStatusWithToken:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_observers removeObjectForKey:v4];
  v5 = [(NSMutableDictionary *)self->_observers count];
  if (!v5)
  {
    DSID = self->_DSID;
    self->_DSID = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543874;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    v13 = 1024;
    v14 = v5 == 0;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Removed subscription status observer with token: %{public}@. wasLastObserver=%{BOOL}u", &v9, 0x1Cu);
  }

  if (!v5)
  {
    [(ICMusicSubscriptionStatusMonitor *)self _endObservingSubscriptionStatus];
  }

  v8 = [objc_opt_class() _sharedInstanceManager];
  [v8 decrementUsageCountForKey:self->_identityContext];
}

- (id)beginObservingSubscriptionStatusWithHandler:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() _sharedInstanceManager];
  [v5 incrementUsageCountForKey:self->_identityContext];

  v6 = [(ICMusicSubscriptionStatusMonitor *)self _effectiveIdentityForRequestingSubscriptionStatus];
  v7 = [MEMORY[0x1E696AFB0] UUID];
  os_unfair_lock_lock(&self->_lock);
  observers = self->_observers;
  v9 = [v4 copy];

  v10 = MEMORY[0x1B8C781E0](v9);
  [(NSMutableDictionary *)observers setObject:v10 forKey:v7];

  v11 = [(NSMutableDictionary *)self->_observers count];
  if (v11 == 1)
  {
    v12 = [(ICUserIdentityContext *)self->_identityContext identityStore];
    v20 = 0;
    v13 = [v12 DSIDForUserIdentity:v6 outError:&v20];
    v14 = v20;
    DSID = self->_DSID;
    self->_DSID = v13;
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v16 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = self;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Registered new subscription status observer with token: %{public}@.", buf, 0x16u);
  }

  if (v14)
  {
    v17 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v22 = self;
      v23 = 2112;
      v24 = v6;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Encountered unexpected error while resolving DSID for effective user identity %@: %{public}@.", buf, 0x20u);
    }
  }

  if (v11 == 1)
  {
    [(ICMusicSubscriptionStatusMonitor *)self _beginObservingSubscriptionStatus];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__ICMusicSubscriptionStatusMonitor_beginObservingSubscriptionStatusWithHandler___block_invoke;
    v19[3] = &unk_1E7BFA300;
    v19[4] = self;
    [(ICMusicSubscriptionStatusMonitor *)self _requestSubscriptionStatusWithCachingPolicy:2 completion:v19];
  }

  return v7;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_observers count];
  [(NSMutableDictionary *)self->_observers removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v7 = self;
    v8 = 1024;
    v9 = v3 != 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ is being deallocated. wasObservingSubscriptionStatus=%{BOOL}u", buf, 0x12u);
  }

  if (v3)
  {
    [(ICMusicSubscriptionStatusMonitor *)self _endObservingSubscriptionStatus];
  }

  v5.receiver = self;
  v5.super_class = ICMusicSubscriptionStatusMonitor;
  [(ICMusicSubscriptionStatusMonitor *)&v5 dealloc];
}

- (id)_initWithIdentityContext:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ICMusicSubscriptionStatusMonitor;
  v6 = [(ICMusicSubscriptionStatusMonitor *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_identityContext, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observers = v7->_observers;
    v7->_observers = v8;

    notificationHandlers = v7->_notificationHandlers;
    v7->_notificationHandlers = 0;

    v11 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ was initialized.", buf, 0xCu);
    }
  }

  return v7;
}

+ (id)sharedMonitorForIdentity:(id)a3 identityStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[ICUserIdentityContext alloc] initWithIdentity:v7 identityStore:v6];

  v9 = [a1 _sharedInstanceManager];
  v10 = [v9 sharedInstanceForKey:v8];

  return v10;
}

+ (id)sharedMonitorForIdentity:(id)a3
{
  v4 = a3;
  v5 = +[ICUserIdentityStore defaultIdentityStore];
  v6 = [a1 sharedMonitorForIdentity:v4 identityStore:v5];

  return v6;
}

@end