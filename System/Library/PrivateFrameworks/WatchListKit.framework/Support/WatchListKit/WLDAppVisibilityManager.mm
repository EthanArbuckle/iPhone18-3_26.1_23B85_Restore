@interface WLDAppVisibilityManager
+ (id)sharedManager;
- (WLDAppVisibilityManager)init;
- (void)_accountDidChangeNotification:(id)notification;
- (void)_networkReachabilityDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)updateAppVisibility;
@end

@implementation WLDAppVisibilityManager

+ (id)sharedManager
{
  if (sharedManager___once_0 != -1)
  {
    +[WLDAppVisibilityManager sharedManager];
  }

  v3 = sharedManager___sharedManager_0;

  return v3;
}

void __40__WLDAppVisibilityManager_sharedManager__block_invoke(id a1)
{
  sharedManager___sharedManager_0 = objc_alloc_init(WLDAppVisibilityManager);

  _objc_release_x1();
}

- (WLDAppVisibilityManager)init
{
  v12.receiver = self;
  v12.super_class = WLDAppVisibilityManager;
  v2 = [(WLDAppVisibilityManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    queue = v2->_queue;
    v2->_queue = v3;

    [(NSOperationQueue *)v2->_queue setName:@"com.apple.WLDAppVisibilitymanager"];
    [(NSOperationQueue *)v2->_queue setMaxConcurrentOperationCount:1];
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = WLKReachabilityMonitorReachabilityDidChange;
    v7 = +[WLKReachabilityMonitor sharedInstance];
    [v5 addObserver:v2 selector:"_networkReachabilityDidChangeNotification:" name:v6 object:v7];

    v8 = +[NSNotificationCenter defaultCenter];
    v9 = WLKAccountMonitorAccountDidChange;
    v10 = +[WLKAccountMonitor sharedInstance];
    [v8 addObserver:v2 selector:"_accountDidChangeNotification:" name:v9 object:v10];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = WLKReachabilityMonitorReachabilityDidChange;
  v5 = +[WLKReachabilityMonitor sharedInstance];
  [v3 removeObserver:self name:v4 object:v5];

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = WLKAccountMonitorAccountDidChange;
  v8 = +[WLKAccountMonitor sharedInstance];
  [v6 removeObserver:self name:v7 object:v8];

  v9.receiver = self;
  v9.super_class = WLDAppVisibilityManager;
  [(WLDAppVisibilityManager *)&v9 dealloc];
}

- (void)_networkReachabilityDidChangeNotification:(id)notification
{
  if (self->_updateRequestedOnNetworkChange)
  {
    v4 = +[WLKReachabilityMonitor sharedInstance];
    isNetworkReachable = [v4 isNetworkReachable];

    if (isNetworkReachable)
    {
      NSLog(@"WLDAppVisibilityManager - reachability changed");

      [(WLDAppVisibilityManager *)self updateAppVisibility];
    }
  }
}

- (void)_accountDidChangeNotification:(id)notification
{
  if (self->_updateRequestedOnAccountChange)
  {
    v4 = +[TVAppAccountStoreObjC activeAccount];

    if (v4)
    {
      NSLog(@"WLDAppVisibilityManager - account changed");

      [(WLDAppVisibilityManager *)self updateAppVisibility];
    }
  }
}

- (void)updateAppVisibility
{
  v3 = WLKTVAppEnabledOverride();
  v4 = v3;
  if (v3)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __46__WLDAppVisibilityManager_updateAppVisibility__block_invoke;
    v19[3] = &unk_100044DB8;
    v20 = v3;
    v5 = [WLDTransactionBlockOperation blockOperationWithBlock:v19];
  }

  else
  {
    v5 = objc_alloc_init(WLDTransactionBlockOperation);
    objc_initWeak(&location, v5);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __46__WLDAppVisibilityManager_updateAppVisibility__block_invoke_2;
    v16[3] = &unk_1000457A8;
    v16[4] = self;
    objc_copyWeak(&v17, &location);
    [(WLDTransactionBlockOperation *)v5 addExecutionBlock:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  operations = [(NSOperationQueue *)self->_queue operations];
  v7 = [operations countByEnumeratingWithState:&v12 objects:v21 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(operations);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v10 isExecuting] & 1) == 0)
        {
          NSLog(@"WLDAppVisibilityManager - cancelling queued op %@", v10);
          [v10 cancel];
        }
      }

      v7 = [operations countByEnumeratingWithState:&v12 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = MGCopyAnswer();
  NSLog(@"WLDAppVisibilityManager - Enqueue appVisibilityOp for region: %@ %@", v11, v5);
  [(NSOperationQueue *)self->_queue addOperation:v5];
}

id __46__WLDAppVisibilityManager_updateAppVisibility__block_invoke(uint64_t a1)
{
  NSLog(@"WLDAppVisibilityManager - TV app enabled *override*: %d", [*(a1 + 32) BOOLValue]);
  v2 = [*(a1 + 32) BOOLValue];

  return [WLKManagedConfigurationInterface setTVAppAllowed:v2];
}

void __46__WLDAppVisibilityManager_updateAppVisibility__block_invoke_2(uint64_t a1)
{
  v2 = +[TVAppAccountStoreObjC activeAccount];
  v3 = [v2 ams_storefront];
  NSLog(@"WLDAppVisibilityManager - active account storefront: %@", v3);
  v4 = +[WLKAccountMonitor sharedInstance];
  v5 = [v4 activeAccount];
  v6 = [v5 ams_storefront];
  NSLog(@"WLDAppVisibilityManager - device storefront: %@", v6);

  if (v2)
  {
    if ([v3 length])
    {
      v7 = dispatch_semaphore_create(0);
      v8 = objc_opt_class();
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = __46__WLDAppVisibilityManager_updateAppVisibility__block_invoke_3;
      v13[3] = &unk_1000455E0;
      objc_copyWeak(&v16, (a1 + 40));
      v9 = v7;
      v10 = *(a1 + 32);
      v14 = v9;
      v15 = v10;
      [v8 isFullTVAppEnabledWithCompletion:v13];
      v11 = dispatch_time(0, 30000000000);
      if (dispatch_semaphore_wait(v9, v11))
      {
        *(*(a1 + 32) + 8) = 1;
        NSLog(@"WLDAppVisibilityManager - Unable to update TV app visibility, bag fetch timed out. Will try again on reachability change.");
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained cancel];
      }

      objc_destroyWeak(&v16);
    }

    else
    {
      NSLog(@"WLDAppVisibilityManager - Error: Nil storefront identifier.");
    }
  }

  else
  {
    NSLog(@"WLDAppVisibilityManager - Error: no active account. Will retry on account change.");
    *(*(a1 + 32) + 9) = 1;
  }
}

void __46__WLDAppVisibilityManager_updateAppVisibility__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (v6 = WeakRetained, v7 = objc_loadWeakRetained((a1 + 48)), v8 = [v7 isCancelled], v7, v6, !v8))
  {
    if (v9)
    {
      *(*(a1 + 40) + 8) = 1;
      NSLog(@"WLDAppVisibilityManager - Unable to update TV app visibility: %@. Will try again on reachability change.", v9);
    }

    else
    {
      NSLog(@"WLDAppVisibilityManager - TV app will be enabled: %d", a2);
      [WLKManagedConfigurationInterface setTVAppAllowed:a2];
    }
  }

  else
  {
    NSLog(@"WLDAppVisibilityManager - operation was cancelled during bag fetch.");
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

@end