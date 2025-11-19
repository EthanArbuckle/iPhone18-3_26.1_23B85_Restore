@interface WLDSubscriptionStore
+ (id)_coalescingIDForUser:(id)a3 forcedReload:(BOOL)a4;
+ (id)sharedInstance;
+ (void)_postDidUpdateCrossProcessNotificationWithProcessID:(unint64_t)a3;
- (BOOL)_shouldFetchFreshCopy;
- (WLDSubscriptionStore)init;
- (id)_coalescedCompletion;
- (id)_getSubscriptionDataMaxAge;
- (id)_inflightCoalescingID;
- (id)_readFromDisk;
- (id)_stubbedDataPath;
- (id)_supportPath;
- (void)_activeAccountChangedNotification:(id)a3;
- (void)_fetchDataFromCommerceWithCoalescingID:(id)a3 completion:(id)a4;
- (void)_setAdPlatformsStatusCondition:(id)a3;
- (void)_setCoalescedCompletion:(id)a3;
- (void)_setInflightCoalescingID:(id)a3;
- (void)_writeToDisk:(id)a3;
- (void)dealloc;
@end

@implementation WLDSubscriptionStore

+ (id)sharedInstance
{
  if (sharedInstance___once_0 != -1)
  {
    +[WLDSubscriptionStore sharedInstance];
  }

  v3 = sharedInstance___singleInstance;

  return v3;
}

- (BOOL)_shouldFetchFreshCopy
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"SubscriptionSyncLastSync"];
  os_unfair_lock_lock(&self->_propLock);
  if (v3)
  {
    v4 = +[NSDate date];
    [v4 timeIntervalSinceDate:v3];
    v6 = v5;
    [(NSNumber *)self->_maxAgeInSeconds doubleValue];
    v8 = v6 > v7;
  }

  else
  {
    v8 = 1;
  }

  os_unfair_lock_unlock(&self->_propLock);

  return v8;
}

void __38__WLDSubscriptionStore_sharedInstance__block_invoke(id a1)
{
  sharedInstance___singleInstance = objc_alloc_init(WLDSubscriptionStore);

  _objc_release_x1();
}

- (WLDSubscriptionStore)init
{
  v19.receiver = self;
  v19.super_class = WLDSubscriptionStore;
  v2 = [(WLDSubscriptionStore *)&v19 init];
  if (v2)
  {
    v3 = [NSUserDefaults alloc];
    v4 = [v3 initWithSuiteName:WLKDefaultsDomain];
    defaults = v2->_defaults;
    v2->_defaults = v4;

    v2->_enabled = 1;
    v6 = dispatch_queue_create("com.apple.WatchListKit.SubscriptionStore", 0);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [(WLDSubscriptionStore *)v2 _readFromDisk];
    subscriptionData = v2->_subscriptionData;
    v2->_subscriptionData = v8;

    v10 = +[TVAppAccountStoreObjC activeAccount];
    v11 = [v10 ams_DSID];
    accountID = v2->_accountID;
    v2->_accountID = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    v14 = WLKAccountMonitorAccountDidChange;
    v15 = +[WLKAccountMonitor sharedInstance];
    [v13 addObserver:v2 selector:"_activeAccountChangedNotification:" name:v14 object:v15];

    v2->_propLock._os_unfair_lock_opaque = 0;
    v16 = [(WLDSubscriptionStore *)v2 _getSubscriptionDataMaxAge];
    maxAgeInSeconds = v2->_maxAgeInSeconds;
    v2->_maxAgeInSeconds = v16;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_enabled)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = WLDSubscriptionStore;
  [(WLDSubscriptionStore *)&v4 dealloc];
}

void __73__WLDSubscriptionStore_fetchSubscriptionData_callerProcessID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __73__WLDSubscriptionStore_fetchSubscriptionData_callerProcessID_completion___block_invoke_2;
  block[3] = &unk_100045A88;
  objc_copyWeak(v16, (a1 + 48));
  v8 = *(a1 + 56);
  v13 = v5;
  v16[1] = v8;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(v16);
}

void __73__WLDSubscriptionStore_fetchSubscriptionData_callerProcessID_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [[WLKSubscriptionData alloc] initWithDictionary:*(a1 + 32)];
    if (v3)
    {
      v4 = [WeakRetained[5] isEqual:v3];
      v5 = WLKSubscriptionSyncLogObject();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        if (v6)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "There has been no change in subscription data.", buf, 2u);
        }

        v7 = WeakRetained[3];
        v8 = +[NSDate now];
        [v7 setObject:v8 forKey:@"SubscriptionSyncLastSync"];
      }

      else
      {
        if (v6)
        {
          v13[0] = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Subscription data has changed. Update cached copy.", v13, 2u);
        }

        objc_storeStrong(WeakRetained + 5, v3);
        [WeakRetained _writeToDisk:v3];
        v10 = WeakRetained[3];
        v11 = +[NSDate now];
        [v10 setObject:v11 forKey:@"SubscriptionSyncLastSync"];

        [objc_opt_class() _postDidUpdateCrossProcessNotificationWithProcessID:*(a1 + 64)];
      }
    }

    else
    {
      v9 = WLKSubscriptionSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetched subscription data is nil. No update.", v15, 2u);
      }
    }

    v12 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
    [WeakRetained _setAdPlatformsStatusCondition:v3];
  }
}

- (id)_inflightCoalescingID
{
  os_unfair_lock_lock(&self->_propLock);
  v3 = self->_inflightCoalescingID;
  os_unfair_lock_unlock(&self->_propLock);

  return v3;
}

- (void)_setInflightCoalescingID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_propLock);
  v5 = [v4 copy];

  inflightCoalescingID = self->_inflightCoalescingID;
  self->_inflightCoalescingID = v5;

  os_unfair_lock_unlock(&self->_propLock);
}

- (id)_coalescedCompletion
{
  os_unfair_lock_lock(&self->_propLock);
  v3 = objc_retainBlock(self->_coalescedCompletion);
  os_unfair_lock_unlock(&self->_propLock);
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)_setCoalescedCompletion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_propLock);
  v5 = objc_retainBlock(v4);

  coalescedCompletion = self->_coalescedCompletion;
  self->_coalescedCompletion = v5;

  os_unfair_lock_unlock(&self->_propLock);
}

+ (id)_coalescingIDForUser:(id)a3 forcedReload:(BOOL)a4
{
  v4 = @"NF";
  if (a4)
  {
    v4 = @"F";
  }

  return [NSString stringWithFormat:@"SR-%@-%@", a3, v4];
}

- (void)_fetchDataFromCommerceWithCoalescingID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WLDSubscriptionStore *)self _inflightCoalescingID];
  if ([v8 isEqualToString:v6] && (-[WLDSubscriptionStore _coalescedCompletion](self, "_coalescedCompletion"), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v12 = WLKSubscriptionSyncLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Will coalesce operation: %@. Will _not_ go outbound.", location, 0xCu);
    }

    [(WLDSubscriptionStore *)self _setCoalescedCompletion:v7];
  }

  else
  {
    v10 = objc_alloc_init(WLKSubscriptionDataRequestOperation);
    objc_initWeak(location, v10);
    objc_initWeak(&from, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __74__WLDSubscriptionStore__fetchDataFromCommerceWithCoalescingID_completion___block_invoke;
    v13[3] = &unk_100045B00;
    objc_copyWeak(&v15, &from);
    v14 = v7;
    objc_copyWeak(&v16, location);
    v13[4] = self;
    [v10 setCompletionBlock:v13];
    v11 = +[NSOperationQueue wlkDefaultQueue];
    [v11 addOperation:v10];

    [(WLDSubscriptionStore *)self _setInflightCoalescingID:v6];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }
}

void __74__WLDSubscriptionStore__fetchDataFromCommerceWithCoalescingID_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained _coalescedCompletion];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __74__WLDSubscriptionStore__fetchDataFromCommerceWithCoalescingID_completion___block_invoke_2;
  v24[3] = &unk_100045AD8;
  v25 = a1[5];
  v4 = v3;
  v26 = v4;
  v5 = objc_retainBlock(v24);
  v6 = objc_loadWeakRetained(a1 + 7);
  v7 = [v6 error];
  v8 = [v7 copy];

  if (v8)
  {
    v9 = WLKSubscriptionSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to fetch subscription data", buf, 2u);
    }

    (v5[2])(v5, 0, v8);
  }

  else if ([*(a1[4] + 3) BOOLForKey:@"SubscriptionSyncUseStubbedData"])
  {
    v10 = WLKSubscriptionSyncLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using stubbed subscription data", buf, 2u);
    }

    v11 = [a1[4] _stubbedDataPath];
    v12 = [NSData dataWithContentsOfFile:v11];

    if (v12)
    {
      v22 = 0;
      v13 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v12 error:&v22];
      v21 = v22;
      if (v21)
      {
        v14 = WLKSubscriptionSyncLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __74__WLDSubscriptionStore__fetchDataFromCommerceWithCoalescingID_completion___block_invoke_cold_1();
        }

        v15 = 0;
      }

      else
      {
        v20 = objc_opt_class();
        v19 = objc_opt_class();
        v17 = objc_opt_class();
        v18 = objc_opt_class();
        v14 = [NSSet setWithObjects:v20, v19, v17, v18, objc_opt_class(), 0];
        v15 = [v13 decodeObjectOfClasses:v14 forKey:NSKeyedArchiveRootObjectKey];
      }
    }

    else
    {
      v15 = 0;
    }

    (v5[2])(v5, v15, 0);
  }

  else
  {
    v16 = [v6 response];
    (v5[2])(v5, v16, 0);
  }

  [a1[4] _setInflightCoalescingID:0];
  [a1[4] _setCoalescedCompletion:0];
}

void __74__WLDSubscriptionStore__fetchDataFromCommerceWithCoalescingID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (id)_readFromDisk
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __37__WLDSubscriptionStore__readFromDisk__block_invoke;
  v5[3] = &unk_1000459D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __37__WLDSubscriptionStore__readFromDisk__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _supportPath];
  v3 = [NSData dataWithContentsOfFile:v2];

  if (v3)
  {
    v16 = 0;
    v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v16];
    v5 = v16;
    if (v5)
    {
      v6 = WLKSubscriptionSyncLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __74__WLDSubscriptionStore__fetchDataFromCommerceWithCoalescingID_completion___block_invoke_cold_1();
      }
    }

    else
    {
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v6 = [NSSet setWithObjects:v7, v8, v9, v10, v11, objc_opt_class(), 0];
      v12 = [v4 decodeObjectOfClasses:v6 forKey:NSKeyedArchiveRootObjectKey];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = *(*(a1 + 40) + 8);
        v14 = v12;
        v15 = *(v13 + 40);
        *(v13 + 40) = v14;
      }

      else
      {
        v15 = WLKSubscriptionSyncLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __37__WLDSubscriptionStore__readFromDisk__block_invoke_cold_2();
        }
      }
    }
  }

  else
  {
    [*(*(a1 + 32) + 24) removeObjectForKey:@"SubscriptionSyncLastSync"];
  }
}

- (void)_writeToDisk:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = WLKDefaultSupportPath();
  v13 = 0;
  [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v13];
  v7 = v13;

  if (v7)
  {
    v8 = WLKSubscriptionSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(WLDSubscriptionStore *)v7 _writeToDisk:v8];
    }
  }

  else
  {
    v12 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v12];
    v7 = v12;
    if (v7)
    {
      v9 = WLKSubscriptionSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(WLDSubscriptionStore *)v7 _writeToDisk:v9];
      }
    }

    else
    {
      if (v8)
      {
        v10 = [(WLDSubscriptionStore *)self _supportPath];
        v11 = [v8 writeToFile:v10 atomically:1];
      }

      else
      {
        v11 = 0;
      }

      v9 = WLKSubscriptionSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wrote subscription store %d", buf, 8u);
      }
    }
  }
}

- (id)_supportPath
{
  v2 = WLKDefaultSupportPath();
  v3 = [v2 stringByAppendingPathComponent:@"subscription.plist"];

  v4 = [v3 stringByExpandingTildeInPath];

  return v4;
}

- (id)_stubbedDataPath
{
  v2 = WLKDefaultSupportPath();
  v3 = [v2 stringByAppendingPathComponent:@"stubbedData.plist"];

  v4 = [v3 stringByExpandingTildeInPath];

  return v4;
}

- (void)_activeAccountChangedNotification:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = +[TVAppAccountStoreObjC activeAccount];
  v6 = [v5 ams_DSID];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__WLDSubscriptionStore__activeAccountChangedNotification___block_invoke;
  block[3] = &unk_100045B28;
  v8 = v6;
  v15 = v8;
  v16 = self;
  v17 = &v18;
  dispatch_sync(queue, block);
  if ((v19[3] & 1) != 0 || !v8)
  {
    v9 = WLKSubscriptionSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "User sign-in or sign-out. Remove persisted cache", &buf, 2u);
    }

    [(NSUserDefaults *)self->_defaults removeObjectForKey:@"SubscriptionSyncLastSync"];
    objc_initWeak(&buf, self);
    v10 = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __58__WLDSubscriptionStore__activeAccountChangedNotification___block_invoke_49;
    v11[3] = &unk_1000456C0;
    objc_copyWeak(&v12, &buf);
    v11[4] = self;
    dispatch_async(v10, v11);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&buf);
  }

  _Block_object_dispose(&v18, 8);
}

void __58__WLDSubscriptionStore__activeAccountChangedNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
LABEL_5:
    v3 = *(a1 + 40);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;

    return;
  }

  if (*(*(a1 + 40) + 8) && ([v2 isEqualToNumber:?] & 1) != 0)
  {
    if (*(a1 + 32))
    {
      return;
    }

    goto LABEL_5;
  }

  v5 = WLKSubscriptionSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DSID changed", v6, 2u);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  objc_storeStrong((*(a1 + 40) + 8), *(a1 + 32));
}

void __58__WLDSubscriptionStore__activeAccountChangedNotification___block_invoke_49(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained[5];
  WeakRetained[5] = 0;

  v3 = +[NSFileManager defaultManager];
  v4 = [*(a1 + 32) _supportPath];
  [v3 removeItemAtPath:v4 error:0];

  v5 = +[WLDSubscriptionStore sharedInstance];
  [v5 fetchSubscriptionData:0 callerProcessID:getpid() completion:&__block_literal_global_52];

  v6 = *(a1 + 32);
  [objc_opt_class() _postDidUpdateCrossProcessNotificationWithProcessID:_WLKSystemSubscriptionPID];
}

- (id)_getSubscriptionDataMaxAge
{
  v2 = +[TVAppBag app];
  v3 = [v2 integerForKey:@"tvSubscriptionStatusMaxAgeInSeconds"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &off_100049CF8;
  }

  return v4;
}

+ (void)_postDidUpdateCrossProcessNotificationWithProcessID:(unint64_t)a3
{
  v4 = WLKSubscriptionSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Posting did update cross process note", v7, 2u);
  }

  v5 = _postDidUpdateCrossProcessNotificationWithProcessID__token;
  v6 = _WLKSubscriptionStoreSubscriptionDataDidChangeInternal;
  if (!_postDidUpdateCrossProcessNotificationWithProcessID__token)
  {
    notify_register_check(_WLKSubscriptionStoreSubscriptionDataDidChangeInternal, &_postDidUpdateCrossProcessNotificationWithProcessID__token);
    v5 = _postDidUpdateCrossProcessNotificationWithProcessID__token;
  }

  notify_set_state(v5, a3);
  notify_post(v6);
}

- (void)_setAdPlatformsStatusCondition:(id)a3
{
  v4 = [a3 isTVPlusSubscriber];
  if (v4 == [(NSUserDefaults *)self->_defaults BOOLForKey:@"IsTVPlusSubscriberLastSetValue"])
  {
    v5 = WLKSubscriptionSyncLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No change in condition. Skip setting status condition in adPlatforms", v6, 2u);
    }
  }

  else
  {
    v5 = [[NSUUID alloc] initWithUUIDString:@"25EF2050-5D1D-419D-AC15-CCA299E77EE0"];
    if (v5)
    {
      if (v4)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = __55__WLDSubscriptionStore__setAdPlatformsStatusCondition___block_invoke;
        v8[3] = &unk_100045B90;
        v8[4] = self;
        [PCStatusConditions setStatusCondition:v5 completionHandler:v8];
      }

      else
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = __55__WLDSubscriptionStore__setAdPlatformsStatusCondition___block_invoke_58;
        v7[3] = &unk_100045B90;
        v7[4] = self;
        [PCStatusConditions clearStatusCondition:v5 completionHandler:v7];
      }
    }
  }
}

void __55__WLDSubscriptionStore__setAdPlatformsStatusCondition___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WLKSubscriptionSyncLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      v5 = "Failed to set status condition in adPlatforms: %@";
      v6 = v4;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else
  {
    [*(*(a1 + 32) + 24) setBool:1 forKey:@"IsTVPlusSubscriberLastSetValue"];
    v4 = WLKSubscriptionSyncLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v5 = "Successfully set status condition in adPlatforms";
      v6 = v4;
      v7 = 2;
      goto LABEL_6;
    }
  }
}

void __55__WLDSubscriptionStore__setAdPlatformsStatusCondition___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WLKSubscriptionSyncLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      v5 = "Failed to clear status condition in adPlatforms: %@";
      v6 = v4;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else
  {
    [*(*(a1 + 32) + 24) setBool:0 forKey:@"IsTVPlusSubscriberLastSetValue"];
    v4 = WLKSubscriptionSyncLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v5 = "Successfully cleared status condition in adPlatforms";
      v6 = v4;
      v7 = 2;
      goto LABEL_6;
    }
  }
}

- (void)_writeToDisk:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v4 = WLKDefaultSupportPath();
  v5 = [a1 description];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create directory %@: %@", &v6, 0x16u);
}

- (void)_writeToDisk:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to archive subscription data: %@", v4, 0xCu);
}

@end