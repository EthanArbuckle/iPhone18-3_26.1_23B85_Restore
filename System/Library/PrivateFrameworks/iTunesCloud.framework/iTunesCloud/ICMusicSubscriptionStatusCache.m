@interface ICMusicSubscriptionStatusCache
+ (ICMusicSubscriptionStatusCache)sharedCache;
- (id)_init;
- (id)_statusChangeUserInfoForUserIdentity:(id)a3 oldStatus:(id)a4 newStatus:(id)a5;
- (void)_getCacheKeyForRequestContext:(id)a3 completion:(id)a4;
- (void)_handleActiveAccountDidChangeNotification:(id)a3;
- (void)_handlePhoneNumberDidChangeNotification:(id)a3;
- (void)_handleSubscriptionStatusChangedDistributedNotification:(id)a3;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3;
- (void)_loadPersistedCacheWithCompletion:(id)a3;
- (void)_persistCachePostingGlobalNotification:(BOOL)a3;
- (void)_postLocalChangeNotificationWithUserInfo:(id)a3;
- (void)dealloc;
- (void)getCachedSubscriptionStatusResponseForRequestContext:(id)a3 completion:(id)a4;
- (void)setCachedSubscriptionStatusResponse:(id)a3 forRequestContext:(id)a4 completion:(id)a5;
- (void)setCachedSubscriptionStatusResponseNeedsReloadForAllRequestContextsWithCompletion:(id)a3;
- (void)setCachedSubscriptionStatusResponseNeedsReloadForRequestContext:(id)a3 completion:(id)a4;
- (void)updateBaseCacheKey;
@end

@implementation ICMusicSubscriptionStatusCache

+ (ICMusicSubscriptionStatusCache)sharedCache
{
  if (sharedCache_sOnceToken != -1)
  {
    dispatch_once(&sharedCache_sOnceToken, &__block_literal_global);
  }

  v3 = sharedCache_sSharedCache;

  return v3;
}

uint64_t __45__ICMusicSubscriptionStatusCache_sharedCache__block_invoke()
{
  sharedCache_sSharedCache = [[ICMusicSubscriptionStatusCache alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v21.receiver = self;
  v21.super_class = ICMusicSubscriptionStatusCache;
  v2 = [(ICMusicSubscriptionStatusCache *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicSubscriptionStatusCache.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicSubscriptionStatusCache.calloutQueue", 0);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v5;

    v7 = dispatch_queue_create("com.apple.iTunesCloud.ICMusicSubscriptionStatusCache.persistenceQueue", 0);
    persistenceQueue = v2->_persistenceQueue;
    v2->_persistenceQueue = v7;

    v9 = +[ICDeviceInfo currentDeviceInfo];
    v2->_isPhoneNumberAccessRestricted = [v9 isPhoneNumberAccessRestricted];

    v10 = +[ICDefaults standardDefaults];
    v11 = [v10 lastKnownSubscriptionStatusBaseCacheKey];

    if (v11)
    {
      v12 = [[ICMusicSubscriptionStatusCacheKey alloc] initWithDictionaryRepresentation:v11 requiringDSID:0];
      baseCacheKey = v2->_baseCacheKey;
      v2->_baseCacheKey = v12;
    }

    [(ICMusicSubscriptionStatusCache *)v2 updateBaseCacheKey];
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    if (v2->_isPhoneNumberAccessRestricted)
    {
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "Subscription status cache will not observe phone number because phone number access is restricted.", v20, 2u);
      }
    }

    else
    {
      v15 = +[ICTelephonyController sharedController];
      [v14 addObserver:v2 selector:sel__handlePhoneNumberDidChangeNotification_ name:@"ICTelephonyPhoneNumberDidChangeNotification" object:v15];
    }

    v16 = +[ICUserIdentityStore defaultIdentityStore];
    [v14 addObserver:v2 selector:sel__handleUserIdentityStoreDidChangeNotification_ name:@"ICUserIdentityStoreDidChangeNotification" object:v16];

    v17 = +[ICUserIdentityStore defaultIdentityStore];
    [v14 addObserver:v2 selector:sel__handleActiveAccountDidChangeNotification_ name:@"ICActiveUserIdentityDidChangeNotification" object:v17];

    v18 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v18 addObserver:v2 selector:sel__handleSubscriptionStatusChangedDistributedNotification_ name:@"com.apple.itunescloud.ICMusicSubscriptionStatusDidChangeDistributedNotification" object:0];

    [(ICMusicSubscriptionStatusCache *)v2 _loadPersistedCacheWithCompletion:0];
  }

  return v2;
}

- (void)updateBaseCacheKey
{
  isPhoneNumberAccessRestricted = self->_isPhoneNumberAccessRestricted;
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__ICMusicSubscriptionStatusCache_updateBaseCacheKey__block_invoke;
  v4[3] = &unk_1E7BF7860;
  v4[4] = self;
  v5 = isPhoneNumberAccessRestricted;
  dispatch_barrier_async(accessQueue, v4);
}

void __52__ICMusicSubscriptionStatusCache_updateBaseCacheKey__block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 8));
  v2 = [[ICStoreRequestContext alloc] initWithBlock:&__block_literal_global_53];
  v3 = +[ICURLBagProvider sharedBagProvider];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__ICMusicSubscriptionStatusCache_updateBaseCacheKey__block_invoke_3;
  v4[3] = &unk_1E7BF3590;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 getBagForRequestContext:v2 forceRefetch:0 withCompletionHandler:v4];
}

void __52__ICMusicSubscriptionStatusCache_updateBaseCacheKey__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = +[ICUserIdentity activeAccount];
  [v3 setIdentity:v2];

  [v3 setAllowsExpiredBags:1];
}

void __52__ICMusicSubscriptionStatusCache_updateBaseCacheKey__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  if (v7)
  {
    v8 = [v7 copy];
  }

  else
  {
    v8 = objc_alloc_init(ICMusicSubscriptionStatusCacheKey);
  }

  v9 = v8;
  v10 = [v5 stringForBagKey:@"storeFrontId"];
  if ([v10 length])
  {
    [(ICMusicSubscriptionStatusCacheKey *)v9 setStorefrontIdentifier:v10];
  }

  if (*(a1 + 40))
  {
    v11 = 0;
  }

  else
  {
    v12 = +[ICTelephonyController sharedController];
    v11 = [v12 phoneNumber];
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F2C4A680;
  }

  [(ICMusicSubscriptionStatusCacheKey *)v9 setPhoneNumber:v13];
  v14 = *(*(a1 + 32) + 40);
  v15 = v14;
  if (v14 == v9)
  {
  }

  else
  {
    v16 = [(ICMusicSubscriptionStatusCacheKey *)v14 isEqual:v9];

    if (!v16)
    {
      v17 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(a1 + 32) + 40);
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v9;
        _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "Base cache key for subscription status cache updated from %{public}@ to %{public}@.", buf, 0x16u);
      }

      v19 = [(ICMusicSubscriptionStatusCacheKey *)v9 copy];
      v20 = *(a1 + 32);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      v22 = [*(*(a1 + 32) + 40) dictionaryRepresentationIncludingDSID:0];
      v23 = +[ICDefaults standardDefaults];
      [v23 setLastKnownSubscriptionStatusBaseCacheKey:v22];

      v24 = *(a1 + 32);
      v25 = *(v24 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__ICMusicSubscriptionStatusCache_updateBaseCacheKey__block_invoke_59;
      block[3] = &unk_1E7BFA300;
      block[4] = v24;
      dispatch_async(v25, block);
      goto LABEL_20;
    }
  }

  v22 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(*(a1 + 32) + 40);
    *buf = 138543362;
    v29 = v26;
    _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "Base cache key for subscription status cache remains unchanged: %{public}@.", buf, 0xCu);
  }

LABEL_20:

  dispatch_resume(*(*(a1 + 32) + 8));
}

- (id)_statusChangeUserInfoForUserIdentity:(id)a3 oldStatus:(id)a4 newStatus:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E695DF90];
  v10 = a3;
  v11 = [v9 dictionaryWithCapacity:3];
  v12 = [v10 copy];

  [v11 setObject:v12 forKeyedSubscript:@"ICUserIdentityForMusicSubscriptionStatusDidChangeKey"];
  if (v7)
  {
    v13 = [v7 copy];
    [v11 setObject:v13 forKeyedSubscript:@"ICOldStatusForMusicSubscriptionStatusDidChangeKey"];
  }

  if (v8)
  {
    v14 = [v8 copy];
    [v11 setObject:v14 forKeyedSubscript:@"ICNewStatusForMusicSubscriptionStatusDidChangeKey"];
  }

  v15 = [v11 copy];

  return v15;
}

- (void)_postLocalChangeNotificationWithUserInfo:(id)a3
{
  calloutQueue = self->_calloutQueue;
  v5 = a3;
  dispatch_assert_queue_V2(calloutQueue);
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"ICMusicSubscriptionStatusCacheDidChangeNotification" object:self userInfo:v5];
}

- (void)_persistCachePostingGlobalNotification:(BOOL)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_cachedSubscriptionStatusResponses, "count")}];
  cachedSubscriptionStatusResponses = self->_cachedSubscriptionStatusResponses;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73__ICMusicSubscriptionStatusCache__persistCachePostingGlobalNotification___block_invoke;
  v23[3] = &unk_1E7BF35B8;
  v7 = v5;
  v24 = v7;
  [(NSMutableDictionary *)cachedSubscriptionStatusResponses enumerateKeysAndObjectsUsingBlock:v23];
  v8 = +[ICUserIdentityStore defaultIdentityStore];
  v9 = +[ICUserIdentity activeAccount];
  v22 = 0;
  v10 = [v8 DSIDForUserIdentity:v9 outError:&v22];
  v11 = v22;

  if (v11)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = self;
      v27 = 2114;
      v28 = v11;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load active account DSID to save. err=%{public}@", buf, 0x16u);
    }
  }

  v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v14 = +[ICDeviceInfo currentDeviceInfo];
  v15 = [v14 buildVersion];
  [v13 setValue:v15 forKey:@"lastKnownOSVersion"];

  if (v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = &unk_1F2C91FA8;
  }

  [v13 setValue:v16 forKey:@"lastKnownActiveDSID"];
  [v13 setValue:v7 forKey:@"responses"];
  persistenceQueue = self->_persistenceQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73__ICMusicSubscriptionStatusCache__persistCachePostingGlobalNotification___block_invoke_72;
  v19[3] = &unk_1E7BF7860;
  v20 = v13;
  v21 = a3;
  v18 = v13;
  dispatch_async(persistenceQueue, v19);
}

void __73__ICMusicSubscriptionStatusCache__persistCachePostingGlobalNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = [a2 stringRepresentation];
  v6 = [v5 propertyListRepresentation];

  if (v7 && v6)
  {
    [*(a1 + 32) setObject:v6 forKey:v7];
  }
}

void __73__ICMusicSubscriptionStatusCache__persistCachePostingGlobalNotification___block_invoke_72(uint64_t a1)
{
  v2 = +[ICDefaults standardDefaults];
  [v2 setCachedSubscriptionStatus:*(a1 + 32)];

  v3 = +[ICDefaults standardDefaults];
  [v3 synchronize];

  if (*(a1 + 40) == 1)
  {
    v4 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v4 postNotificationName:@"com.apple.itunescloud.ICMusicSubscriptionStatusDidChangeDistributedNotification" object:0];
  }
}

- (void)_loadPersistedCacheWithCompletion:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__ICMusicSubscriptionStatusCache__loadPersistedCacheWithCompletion___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

void __68__ICMusicSubscriptionStatusCache__loadPersistedCacheWithCompletion___block_invoke(uint64_t a1)
{
  v92 = *MEMORY[0x1E69E9840];
  v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = +[ICDefaults standardDefaults];
  [v1 synchronize];

  v2 = +[ICDefaults standardDefaults];
  v3 = [v2 cachedSubscriptionStatus];

  v4 = [v3 ic_dictionaryValueForKey:@"responses"];
  v5 = [v3 ic_stringValueForKey:@"lastKnownOSVersion"];
  v6 = +[ICDeviceInfo currentDeviceInfo];
  v7 = [v6 buildVersion];

  v8 = +[ICUserIdentityStore defaultIdentityStore];
  v9 = +[ICUserIdentity activeAccount];
  v80 = 0;
  v10 = [v8 DSIDForUserIdentity:v9 outError:&v80];
  v11 = v80;

  v12 = [v3 ic_numberValueForKey:@"lastKnownActiveDSID"];
  if (v11)
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 138543618;
      v83 = v14;
      v84 = 2114;
      v85 = v11;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load active account DSID - skipping account check. err=%{public}@", buf, 0x16u);
    }
  }

  if ((v5 == v7 || [v5 isEqual:v7]) && (v11 || (v15 = objc_msgSend(v12, "unsignedLongLongValue"), v15 == objc_msgSend(v10, "unsignedLongLongValue"))))
  {
    v66 = 0;
  }

  else
  {
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138544386;
      v83 = v17;
      v84 = 2114;
      v85 = v5;
      v86 = 2114;
      v87 = v7;
      v88 = 2114;
      v89 = v12;
      v90 = 2114;
      v91 = v10;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidating loaded cached subscription status. cachedOSVersion=%{public}@, currentOSVersion=%{public}@; cachedActiveAcccountDSID=%{public}@, currentActiveAccountDSID=%{public}@", buf, 0x34u);
    }

    v66 = 1;
  }

  if (!(v5 | v4))
  {
    if ([v3 count])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  v59 = v7;
  v60 = v5;
  v61 = v3;
  v18 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    *buf = 138543618;
    v83 = v19;
    v84 = 2114;
    v85 = v4;
    _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ loaded subscription status cache: %{public}@", buf, 0x16u);
  }

  v56 = v12;
  v57 = v11;
  v58 = v10;

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v20 = v4;
  v21 = [v20 countByEnumeratingWithState:&v76 objects:v81 count:16];
  v68 = v20;
  if (!v21)
  {
    v67 = 0;
    v23 = 0;
    v25 = a1;
    goto LABEL_53;
  }

  v22 = v21;
  v67 = 0;
  v23 = 0;
  v69 = *v77;
  v24 = 0x1E7BF2000uLL;
  v25 = a1;
  v26 = 0x1E695D000uLL;
  do
  {
    v27 = 0;
    do
    {
      if (*v77 != v69)
      {
        objc_enumerationMutation(v20);
      }

      v28 = *(*(&v76 + 1) + 8 * v27);
      v29 = [v20 objectForKey:v28];
      if (!_NSIsNSString() || !_NSIsNSDictionary())
      {
        v30 = 0;
        v33 = 0;
LABEL_42:
        if (!v23)
        {
          goto LABEL_43;
        }

        goto LABEL_44;
      }

      v30 = [[ICMusicSubscriptionStatusCacheKey alloc] initWithStringRepresentation:v28];
      v31 = v29;
      if (([*(v24 + 1912) isValidSubscriptionStatusPropertyListRepresentation:v31 error:0] & 1) == 0)
      {

        v33 = 0;
LABEL_48:
        v20 = v68;
        if (!v23)
        {
LABEL_43:
          v23 = objc_alloc_init(*(v26 + 3952));
        }

LABEL_44:
        [v23 addObject:v28];
        goto LABEL_45;
      }

      v32 = [objc_alloc(*(v24 + 1912)) initWithPropertyListRepresentation:v31];
      v33 = v32;
      if (v66)
      {
        [v32 setNeedsReload:1];
      }

      if (!v30)
      {
        goto LABEL_48;
      }

      v20 = v68;
      if (!v33)
      {
        goto LABEL_42;
      }

      v34 = v67;
      if (!v67)
      {
        v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v67 = v34;
      [v34 setObject:v33 forKey:v30];
      v35 = [*(*(v25 + 32) + 48) objectForKey:v30];
      v36 = *(*(v25 + 32) + 48);
      if (!v36)
      {
        v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v38 = *(v25 + 32);
        v39 = *(v38 + 48);
        *(v38 + 48) = v37;

        v36 = *(*(v25 + 32) + 48);
      }

      [v36 setObject:v33 forKey:v30];
      v40 = [v35 subscriptionStatus];
      v41 = [v33 subscriptionStatus];
      v42 = v41;
      if (v40 != v41 && (!v40 || !v41 || ([v40 isEqualToStatus:v41] & 1) == 0))
      {
        v64 = [(ICMusicSubscriptionStatusCacheKey *)v30 DSID];
        [ICUserIdentity specificAccountWithDSID:v64];
        v43 = v65 = v35;
        v44 = [*(v25 + 32) _statusChangeUserInfoForUserIdentity:v43 oldStatus:v40 newStatus:v42];
        [v62 addObject:v44];

        v25 = a1;
        v35 = v65;
      }

      v26 = 0x1E695D000;
      v20 = v68;
LABEL_45:

      ++v27;
      v24 = 0x1E7BF2000;
    }

    while (v22 != v27);
    v45 = [v20 countByEnumeratingWithState:&v76 objects:v81 count:16];
    v22 = v45;
  }

  while (v45);
LABEL_53:

  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __68__ICMusicSubscriptionStatusCache__loadPersistedCacheWithCompletion___block_invoke_69;
  v73[3] = &unk_1E7BF9E28;
  v46 = *(v25 + 40);
  v47 = *(v25 + 32);
  v75 = v46;
  v73[4] = v47;
  v48 = v62;
  v74 = v48;
  v49 = MEMORY[0x1B8C781E0](v73);
  if ([v23 count] && (objc_msgSend(MEMORY[0x1E696AE30], "processInfo"), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "ic_isCloudDaemon"), v50, (v51 & 1) != 0))
  {
    v52 = [v61 mutableCopy];
    [v52 removeObjectsForKeys:v23];
    v53 = [v52 copy];

    v54 = *(*(v25 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__ICMusicSubscriptionStatusCache__loadPersistedCacheWithCompletion___block_invoke_3;
    block[3] = &unk_1E7BF9EC8;
    v55 = v53;
    v71 = v55;
    v72 = v49;
    dispatch_async(v54, block);
  }

  else
  {
    v49[2](v49);
    v55 = v61;
  }
}

void __68__ICMusicSubscriptionStatusCache__loadPersistedCacheWithCompletion___block_invoke_69(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = *(*(a1 + 32) + 16);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __68__ICMusicSubscriptionStatusCache__loadPersistedCacheWithCompletion___block_invoke_2;
    v4[3] = &unk_1E7BF9EC8;
    v6 = v1;
    v5 = *(a1 + 40);
    dispatch_async(v3, v4);
  }
}

uint64_t __68__ICMusicSubscriptionStatusCache__loadPersistedCacheWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = +[ICDefaults standardDefaults];
  [v2 setCachedSubscriptionStatus:*(a1 + 32)];

  v3 = +[ICDefaults standardDefaults];
  [v3 synchronize];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __68__ICMusicSubscriptionStatusCache__loadPersistedCacheWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)_getCacheKeyForRequestContext:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_accessQueue);
  v8 = [(ICMusicSubscriptionStatusCacheKey *)self->_baseCacheKey copy];
  v9 = [v6 delegatedIdentity];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v6 identity];
  }

  v12 = v11;

  v13 = [v6 identityStore];
  v24 = 0;
  v14 = [v13 getPropertiesForUserIdentity:v12 error:&v24];
  v15 = v24;

  if (v15)
  {
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = self;
      v27 = 2114;
      v28 = v15;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load account properties to form the cache key with. err=%{public}@", buf, 0x16u);
    }

    v7[2](v7, 0, v15);
  }

  else
  {
    v17 = [v14 DSID];
    if (v17)
    {
      [v8 setDSID:v17];
    }

    v18 = [[ICStoreRequestContext alloc] initWithBlock:&__block_literal_global_66];
    v19 = +[ICURLBagProvider sharedBagProvider];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75__ICMusicSubscriptionStatusCache__getCacheKeyForRequestContext_completion___block_invoke_2;
    v20[3] = &unk_1E7BF9DB0;
    v21 = v8;
    v22 = 0;
    v23 = v7;
    [v19 getBagForRequestContext:v18 forceRefetch:0 withCompletionHandler:v20];
  }
}

void __75__ICMusicSubscriptionStatusCache__getCacheKeyForRequestContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 stringForBagKey:@"storeFrontId"];
  if ([v3 length])
  {
    [*(a1 + 32) setStorefrontIdentifier:v3];
  }

  (*(*(a1 + 48) + 16))();
}

void __75__ICMusicSubscriptionStatusCache__getCacheKeyForRequestContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = +[ICUserIdentity activeAccount];
  [v3 setIdentity:v2];

  [v3 setAllowsExpiredBags:1];
}

- (void)_handleSubscriptionStatusChangedDistributedNotification:(id)a3
{
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Reloading subscription status cache due to external change notification", buf, 2u);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90__ICMusicSubscriptionStatusCache__handleSubscriptionStatusChangedDistributedNotification___block_invoke;
  v5[3] = &unk_1E7BF4740;
  v5[4] = self;
  [(ICMusicSubscriptionStatusCache *)self _loadPersistedCacheWithCompletion:v5];
}

void __90__ICMusicSubscriptionStatusCache__handleSubscriptionStatusChangedDistributedNotification___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[ICDefaults standardDefaults];
  if ([v4 shouldTreatSubscriptionStatusAsExpired])
  {
    v5 = MSVDeviceOSIsInternalInstall();

    if (v5)
    {
      v6 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "Posting local change notification as shouldTreatSubscriptionStatusAsExpired is set", buf, 2u);
      }

      [*(a1 + 32) _postLocalChangeNotificationWithUserInfo:0];
      goto LABEL_16;
    }
  }

  else
  {
  }

  if ([v3 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(a1 + 32) _postLocalChangeNotificationWithUserInfo:{*(*(&v12 + 1) + 8 * v11++), v12}];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v9);
    }
  }

LABEL_16:
}

- (void)_handleActiveAccountDidChangeNotification:(id)a3
{
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Received active identity did change notification - invalidating cache.", v5, 2u);
  }

  [(ICMusicSubscriptionStatusCache *)self setCachedSubscriptionStatusResponseNeedsReloadForAllRequestContextsWithCompletion:&__block_literal_global_63];
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3
{
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Received user identity store did change notification. Updating base cache key for subscription status cache.", v5, 2u);
  }

  [(ICMusicSubscriptionStatusCache *)self updateBaseCacheKey];
}

- (void)_handlePhoneNumberDidChangeNotification:(id)a3
{
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Received phone number did change notification. Updating base cache key for subscription status cache.", v5, 2u);
  }

  [(ICMusicSubscriptionStatusCache *)self updateBaseCacheKey];
}

void __52__ICMusicSubscriptionStatusCache_updateBaseCacheKey__block_invoke_59(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = @"ICMusicSubscriptionStatusCacheUnderlyingCachingPropertiesDidChangeNotification";
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "Posting %{public}@.", &v4, 0xCu);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"ICMusicSubscriptionStatusCacheUnderlyingCachingPropertiesDidChangeNotification" object:*(a1 + 32)];
}

- (void)setCachedSubscriptionStatusResponseNeedsReloadForRequestContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponseNeedsReloadForRequestContext_completion___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_async(accessQueue, block);
}

void __109__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponseNeedsReloadForRequestContext_completion___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __109__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponseNeedsReloadForRequestContext_completion___block_invoke_2;
  v4[3] = &unk_1E7BF34F0;
  v4[4] = v2;
  v5 = *(a1 + 48);
  [v2 _getCacheKeyForRequestContext:v3 completion:v4];
}

void __109__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponseNeedsReloadForRequestContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v6 msv_description];
      *buf = 138543874;
      v17 = v8;
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to set refresh flag because we failed to fetch cache key. err=%{public}@ error=%{public}@", buf, 0x20u);
    }
  }

  if (v5)
  {
    v10 = [*(*(a1 + 32) + 48) objectForKey:v5];
    v11 = [v10 copy];

    if (v11)
    {
      if ([v11 needsReload])
      {
        [*(*(a1 + 32) + 48) setObject:v11 forKey:v5];
      }

      else
      {
        [v11 setNeedsReload:1];
        [*(*(a1 + 32) + 48) setObject:v11 forKey:v5];
        [*(a1 + 32) _persistCachePostingGlobalNotification:1];
      }
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponseNeedsReloadForRequestContext_completion___block_invoke_49;
    block[3] = &unk_1E7BF9D20;
    v15 = v12;
    dispatch_async(v13, block);
  }

  dispatch_resume(*(*(a1 + 32) + 8));
}

- (void)setCachedSubscriptionStatusResponseNeedsReloadForAllRequestContextsWithCompletion:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __116__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponseNeedsReloadForAllRequestContextsWithCompletion___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(accessQueue, v7);
}

void __116__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponseNeedsReloadForAllRequestContextsWithCompletion___block_invoke(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v2 = [*(*(a1 + 32) + 48) copy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __116__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponseNeedsReloadForAllRequestContextsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7BF3568;
  v7[4] = *(a1 + 32);
  v7[5] = &v8;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];

  if (*(v9 + 24) == 1)
  {
    [*(a1 + 32) _persistCachePostingGlobalNotification:1];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __116__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponseNeedsReloadForAllRequestContextsWithCompletion___block_invoke_3;
    block[3] = &unk_1E7BF9D20;
    v6 = v3;
    dispatch_async(v4, block);
  }

  _Block_object_dispose(&v8, 8);
}

void __116__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponseNeedsReloadForAllRequestContextsWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 copy];
  if (([v5 needsReload] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    [v5 setNeedsReload:1];
  }

  [*(*(a1 + 32) + 48) setObject:v5 forKey:v6];
}

- (void)setCachedSubscriptionStatusResponse:(id)a3 forRequestContext:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([v9 isFinalResponse] & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"ICMusicSubscriptionStatusCache.m" lineNumber:120 description:{@"Caching a non final subscription status request is not allowed: %@.", v9}];
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponse_forRequestContext_completion___block_invoke;
  block[3] = &unk_1E7BF9E78;
  block[4] = self;
  v18 = v10;
  v19 = v9;
  v20 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v10;
  dispatch_barrier_async(accessQueue, block);
}

void __99__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponse_forRequestContext_completion___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 8));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __99__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponse_forRequestContext_completion___block_invoke_2;
  v9[3] = &unk_1E7BF3540;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v3 _getCacheKeyForRequestContext:v2 completion:v9];
}

void __99__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponse_forRequestContext_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = [v6 msv_description];
      *buf = 138543874;
      v35 = v8;
      v36 = 2114;
      v37 = v6;
      v38 = 2114;
      v39 = v9;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Cant update cache because we failed to fetch cache key. err=%{public}@ error=%{public}@", buf, 0x20u);
    }
  }

  if (v5)
  {
    v10 = [*(a1[4] + 6) objectForKey:v5];
    v11 = a1[5];
    v12 = *(a1[4] + 6);
    if (v11)
    {
      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = a1[4];
        v15 = v14[6];
        v14[6] = v13;

        v11 = a1[5];
        v12 = *(a1[4] + 6);
      }

      [v12 setObject:v11 forKey:v5];
      v16 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [a1[5] subscriptionStatus];
        *buf = 138543618;
        v35 = v5;
        v36 = 2114;
        v37 = v17;
        _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "Setting cached subscription status response for cache key %{public}@: %{public}@.", buf, 0x16u);
      }
    }

    else
    {
      [v12 removeObjectForKey:v5];
      v16 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v35 = v5;
        _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_DEFAULT, "Removing cached subscription status response for cache key %{public}@.", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = [v10 subscriptionStatus];
  v19 = [a1[5] subscriptionStatus];
  v20 = v19;
  if (v18 == v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = 1;
    if (v18 && v19)
    {
      v21 = [v18 isEqualToStatus:v19] ^ 1;
    }
  }

  [a1[4] _persistCachePostingGlobalNotification:1];
  v22 = *(a1[4] + 2);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __99__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponse_forRequestContext_completion___block_invoke_47;
  v27[3] = &unk_1E7BF3518;
  v33 = v21;
  v23 = a1[6];
  v24 = a1[4];
  v28 = v23;
  v29 = v24;
  v30 = v18;
  v31 = v20;
  v32 = a1[7];
  v25 = v20;
  v26 = v18;
  dispatch_async(v22, v27);
  dispatch_resume(*(a1[4] + 1));
}

uint64_t __99__ICMusicSubscriptionStatusCache_setCachedSubscriptionStatusResponse_forRequestContext_completion___block_invoke_47(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = [*(a1 + 32) delegatedIdentity];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = [*(a1 + 32) identity];
    }

    v5 = v4;

    v6 = *(a1 + 40);
    v7 = [v6 _statusChangeUserInfoForUserIdentity:v5 oldStatus:*(a1 + 48) newStatus:*(a1 + 56)];
    [v6 _postLocalChangeNotificationWithUserInfo:v7];
  }

  result = *(a1 + 64);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

- (void)getCachedSubscriptionStatusResponseForRequestContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__ICMusicSubscriptionStatusCache_getCachedSubscriptionStatusResponseForRequestContext_completion___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(accessQueue, block);
}

void __98__ICMusicSubscriptionStatusCache_getCachedSubscriptionStatusResponseForRequestContext_completion___block_invoke(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __98__ICMusicSubscriptionStatusCache_getCachedSubscriptionStatusResponseForRequestContext_completion___block_invoke_2;
  v4[3] = &unk_1E7BF34F0;
  v4[4] = v2;
  v5 = *(a1 + 48);
  [v2 _getCacheKeyForRequestContext:v3 completion:v4];
}

void __98__ICMusicSubscriptionStatusCache_getCachedSubscriptionStatusResponseForRequestContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v6 msv_description];
      *buf = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v6;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Cant get cached status because we failed to fetch cache key. err=%{public}@ error=%{public}@", buf, 0x20u);
    }
  }

  if (v5)
  {
    v10 = [*(*(a1 + 32) + 48) objectForKey:v5];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__ICMusicSubscriptionStatusCache_getCachedSubscriptionStatusResponseForRequestContext_completion___block_invoke_37;
  block[3] = &unk_1E7BF9E28;
  v12 = *(a1 + 40);
  v17 = v6;
  v18 = v12;
  v16 = v10;
  v13 = v6;
  v14 = v10;
  dispatch_async(v11, block);
  dispatch_resume(*(*(a1 + 32) + 8));
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self name:@"com.apple.itunescloud.ICMusicSubscriptionStatusDidChangeDistributedNotification" object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  if (!self->_isPhoneNumberAccessRestricted)
  {
    v5 = +[ICTelephonyController sharedController];
    [v4 removeObserver:self name:@"ICTelephonyPhoneNumberDidChangeNotification" object:v5];
  }

  v6 = +[ICUserIdentityStore defaultIdentityStore];
  [v4 removeObserver:self name:@"ICUserIdentityStoreDidChangeNotification" object:v6];

  v7.receiver = self;
  v7.super_class = ICMusicSubscriptionStatusCache;
  [(ICMusicSubscriptionStatusCache *)&v7 dealloc];
}

@end