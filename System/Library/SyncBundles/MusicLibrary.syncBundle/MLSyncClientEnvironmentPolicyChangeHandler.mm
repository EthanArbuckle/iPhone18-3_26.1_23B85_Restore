@interface MLSyncClientEnvironmentPolicyChangeHandler
+ (id)sharedInstance;
- (id)_atAssetTypeForRemovedMediaApp:(int64_t)app;
- (id)_init;
- (id)_observers;
- (void)_cancelDownloadsMatchingPredicate:(id)predicate excludeActiveDownloads:(BOOL)downloads error:(id)error;
- (void)_handleNetworkConditionsOrCellularDataPolicyChanged;
- (void)_notifyAppRemoved:(int64_t)removed;
- (void)_notifyPowerStateChangedInitiateSyncOrKeepLocalSessionWithOptions:(id)options;
- (void)addObserver:(id)observer;
- (void)assetLinkControllerDidProcessAllTrackAssets:(id)assets;
- (void)environmentMonitorDidChangeBatteryLevel:(id)level;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)environmentMonitorDidChangePower:(id)power;
- (void)environmentMonitorDidChangeThermalLevel:(id)level;
- (void)removeObserver:(id)observer;
@end

@implementation MLSyncClientEnvironmentPolicyChangeHandler

- (void)_handleNetworkConditionsOrCellularDataPolicyChanged
{
  v3 = +[ICEnvironmentMonitor sharedMonitor];
  v4 = sub_724F4(8);
  v5 = sub_724F4(4);
  isNetworkConstrained = [v3 isNetworkConstrained];
  [v3 networkType];
  IsCellular = ICEnvironmentNetworkTypeIsCellular();
  isCurrentNetworkLinkHighQuality = [v3 isCurrentNetworkLinkHighQuality];
  [v3 lastKnownNetworkType];
  v9 = ICEnvironmentNetworkTypeIsCellular();
  v10 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v40 = v4;
    v41 = 1024;
    v42 = v5;
    v43 = 1024;
    v44 = isNetworkConstrained;
    v45 = 1024;
    v46 = IsCellular;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "handling network reachability or cellular policy changed notification. musicDownloadsAllowed=%{BOOL}u, podcastsDownloadsAllowed=%{BOOL}u, isNetworkConstrained=%{BOOL}u, networkTypeIsCellular=%{BOOL}u", buf, 0x1Au);
  }

  if ((v4 & 1) == 0)
  {
    if (IsCellular)
    {
      v11 = 35;
    }

    else
    {
      v11 = 8;
    }

    v12 = [NSError errorWithDomain:@"ATError" code:v11 userInfo:0];
    [NSPredicate predicateWithFormat:@"enqueueSource=%d and assetType=%@", 2, @"Music"];
    v14 = v13 = v4;
    [(MLSyncClientEnvironmentPolicyChangeHandler *)self _cancelDownloadsMatchingPredicate:v14 excludeActiveDownloads:0 error:v12];

    v4 = v13;
  }

  if ((v5 & 1) == 0)
  {
    if (IsCellular)
    {
      v15 = 35;
    }

    else
    {
      v15 = 8;
    }

    v16 = [NSError errorWithDomain:@"ATError" code:v15 userInfo:0];
    v17 = [NSPredicate predicateWithFormat:@"enqueueSource=%d and assetType=%@", 2, @"Podcast"];
    [(MLSyncClientEnvironmentPolicyChangeHandler *)self _cancelDownloadsMatchingPredicate:v17 excludeActiveDownloads:0 error:v16];
  }

  if (isNetworkConstrained)
  {
    v18 = +[ICDeviceInfo currentDeviceInfo];
    isWatch = [v18 isWatch];

    if (isWatch)
    {
      v20 = [NSError errorWithDomain:@"ATError" code:34 userInfo:0];
      v21 = [NSPredicate predicateWithFormat:@"allowDownloadOnConstrainedNetwork=%d", 0];
      [(MLSyncClientEnvironmentPolicyChangeHandler *)self _cancelDownloadsMatchingPredicate:v21 excludeActiveDownloads:1 error:v20];
    }
  }

  v22 = +[ICDeviceInfo currentDeviceInfo];
  v23 = [v22 isWatch] & v9;

  if (!(isCurrentNetworkLinkHighQuality & 1 | ((v23 & 1) == 0)))
  {
    v31 = v4;
    v24 = [NSError errorWithDomain:@"ATError" code:35 userInfo:0];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = [&off_A1410 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(&off_A1410);
          }

          v29 = [NSPredicate predicateWithFormat:@"enqueueSource=%d and assetType=%@ and isForeground=%d", 2, *(*(&v32 + 1) + 8 * i), 0];
          [(MLSyncClientEnvironmentPolicyChangeHandler *)self _cancelDownloadsMatchingPredicate:v29 excludeActiveDownloads:0 error:v24];
        }

        v26 = [&off_A1410 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v26);
    }

    v4 = v31;
  }

  if ((v4 | v5))
  {
    v36 = @"MLSyncPolicyChangedObserverStartKeepLocalSessionEnqueueAssetsKey";
    v37 = &off_A0EB0;
    v30 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [(MLSyncClientEnvironmentPolicyChangeHandler *)self _notifyPowerStateChangedInitiateSyncOrKeepLocalSessionWithOptions:v30];
  }
}

- (id)_atAssetTypeForRemovedMediaApp:(int64_t)app
{
  if (app > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_9EAE0 + app);
  }
}

- (void)_cancelDownloadsMatchingPredicate:(id)predicate excludeActiveDownloads:(BOOL)downloads error:(id)error
{
  downloadsCopy = downloads;
  errorCopy = error;
  predicateCopy = predicate;
  v9 = +[ATAssetLinkController sharedInstance];
  [v9 cancelAllAssetsMatchingPredicate:predicateCopy excludeActiveDownloads:downloadsCopy withError:errorCopy completion:0];
}

- (void)_notifyAppRemoved:(int64_t)removed
{
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v11) = removed;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Media App %d removed", buf, 8u);
  }

  v6 = [(MLSyncClientEnvironmentPolicyChangeHandler *)self _atAssetTypeForRemovedMediaApp:removed];
  if (v6)
  {
    v7 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = v6;
      v12 = 1024;
      v13 = 2;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Cancelling all assets with assetType=%{public}@, source=%d as media app is removed.", buf, 0x12u);
    }

    v8 = [NSError errorWithDomain:@"ATError" code:2 userInfo:0];
    v9 = [NSPredicate predicateWithFormat:@"enqueueSource=%d and assetType=%@", 2, v6];
    [(MLSyncClientEnvironmentPolicyChangeHandler *)self _cancelDownloadsMatchingPredicate:v9 excludeActiveDownloads:0 error:v8];
  }
}

- (void)_notifyPowerStateChangedInitiateSyncOrKeepLocalSessionWithOptions:(id)options
{
  optionsCopy = options;
  _observers = [(MLSyncClientEnvironmentPolicyChangeHandler *)self _observers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [_observers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(_observers);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          calloutQueue = self->_calloutQueue;
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_61AA0;
          v12[3] = &unk_9EC30;
          v12[4] = v10;
          v13 = optionsCopy;
          dispatch_async(calloutQueue, v12);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [_observers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)_observers
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSHashTable *)self->_observers copy];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)assetLinkControllerDidProcessAllTrackAssets:(id)assets
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_61B74;
  block[3] = &unk_9F248;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)environmentMonitorDidChangeBatteryLevel:(id)level
{
  levelCopy = level;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_61D04;
  v7[3] = &unk_9EC30;
  v7[4] = self;
  v8 = levelCopy;
  v6 = levelCopy;
  dispatch_async(accessQueue, v7);
}

- (void)environmentMonitorDidChangeThermalLevel:(id)level
{
  levelCopy = level;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_61F80;
  v7[3] = &unk_9EC30;
  v7[4] = self;
  v8 = levelCopy;
  v6 = levelCopy;
  dispatch_async(accessQueue, v7);
}

- (void)environmentMonitorDidChangePower:(id)power
{
  powerCopy = power;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_62280;
  v7[3] = &unk_9EC30;
  v8 = powerCopy;
  selfCopy = self;
  v6 = powerCopy;
  dispatch_async(accessQueue, v7);
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_624C0;
  block[3] = &unk_9F248;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_recursive_lock_lock_with_options();
    [(NSHashTable *)self->_observers removeObject:observerCopy];

    os_unfair_recursive_lock_unlock();
  }
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_recursive_lock_lock_with_options();
    [(NSHashTable *)self->_observers addObject:observerCopy];

    os_unfair_recursive_lock_unlock();
  }
}

- (id)_init
{
  v23.receiver = self;
  v23.super_class = MLSyncClientEnvironmentPolicyChangeHandler;
  v2 = [(MLSyncClientEnvironmentPolicyChangeHandler *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.amp.MLSyncClientEnvironmentPolicyChangeHandler.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("com.apple.amp.MLSyncClientEnvironmentPolicyChangeHandler.calloutQueue", &_dispatch_queue_attr_concurrent);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v5;

    v7 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v7;

    v2->_observersLock = 0;
    v9 = +[ICEnvironmentMonitor sharedMonitor];
    [v9 registerObserver:v2];

    v10 = +[ATAssetLinkController sharedInstance];
    [v10 addObserver:v2];

    v11 = +[ICEnvironmentMonitor sharedMonitor];
    [v11 currentBatteryLevel];
    v2->_cachedBatteryLevel = v12;

    v13 = +[ICEnvironmentMonitor sharedMonitor];
    v2->_cachedThermalLevel = [v13 currentThermalLevel];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_62A18, @"com.apple.Music-AllowsCellularDataDownloads", 0, CFNotificationSuspensionBehaviorDrop);
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, v2, sub_628DC, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorCoalesce);
    v16 = +[ICDeviceInfo currentDeviceInfo];
    isWatch = [v16 isWatch];

    if (isWatch)
    {
      v18 = [ICStoreRequestContext alloc];
      v19 = +[ICUserIdentity activeAccount];
      v20 = [v18 initWithIdentity:v19];

      v21 = +[ICURLBagProvider sharedBagProvider];
      [v21 getBagForRequestContext:v20 withCompletionHandler:&stru_9EA98];
    }
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_A7708 != -1)
  {
    dispatch_once(&qword_A7708, &stru_9EA58);
  }

  v3 = qword_A7710;

  return v3;
}

@end