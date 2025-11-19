@interface MABrainRestartManager
+ (id)sharedInstance;
- (MABrainRestartManager)init;
- (void)handleSignal:(int)a3;
- (void)quiesceAndRestartMobileAsset;
- (void)quiesceMobileAsset;
- (void)setupSignalHandlers;
@end

@implementation MABrainRestartManager

- (MABrainRestartManager)init
{
  v6.receiver = self;
  v6.super_class = MABrainRestartManager;
  v2 = [(MABrainRestartManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MobileAsset.MABrain.restartmanager", 0);
    operationsQueue = v2->_operationsQueue;
    v2->_operationsQueue = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MABrainRestartManager sharedInstance];
  }

  v3 = sharedInstance_singleton;

  return v3;
}

void __39__MABrainRestartManager_sharedInstance__block_invoke(id a1)
{
  sharedInstance_singleton = objc_alloc_init(MABrainRestartManager);

  _objc_release_x1();
}

- (void)handleSignal:(int)a3
{
  v5 = [(MABrainRestartManager *)self operationsQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __38__MABrainRestartManager_handleSignal___block_invoke;
  v6[3] = &unk_4B38D0;
  v7 = a3;
  v6[4] = self;
  dispatch_sync(v5, v6);
}

void __38__MABrainRestartManager_handleSignal___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = _MADLog(@"Brain");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 15)
  {
    if (v4)
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[MAB]: Received SIGTERM", v6, 2u);
    }

    [*(a1 + 32) quiesceMobileAsset];
    exit(0);
  }

  if (v4)
  {
    v5 = *(a1 + 40);
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[MAB]: Signal(%d) is not currently handled. Nothing to do", v6, 8u);
  }
}

- (void)quiesceMobileAsset
{
  v2 = [(MABrainRestartManager *)self operationsQueue];
  dispatch_assert_queue_V2(v2);

  v3 = _MADLog(@"Brain");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[MAB]: Asking autoControlManager to terminate", v4, 2u);
  }

  +[MADAutoAssetControlManager shutdown];
}

- (void)setupSignalHandlers
{
  v3 = [(MABrainRestartManager *)self operationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__MABrainRestartManager_setupSignalHandlers__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __44__MABrainRestartManager_setupSignalHandlers__block_invoke(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__MABrainRestartManager_setupSignalHandlers__block_invoke_2;
  block[3] = &unk_4B2AA0;
  block[4] = *(a1 + 32);
  if (MALOG_ANALYTICS_OBSERVER_MASK_block_invoke_setupSignalHandlersDispatchOnce != -1)
  {
    dispatch_once(&MALOG_ANALYTICS_OBSERVER_MASK_block_invoke_setupSignalHandlersDispatchOnce, block);
  }
}

void __44__MABrainRestartManager_setupSignalHandlers__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(21, 0);
  for (i = 0; i != 3; ++i)
  {
    v4 = MALOG_ANALYTICS_OBSERVER_MASK_block_invoke_2_signals[i];
    v5 = dispatch_source_create(&_dispatch_source_type_signal, v4, 0, v2);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __44__MABrainRestartManager_setupSignalHandlers__block_invoke_3;
    v8[3] = &unk_4B38D0;
    v8[4] = *(a1 + 32);
    v9 = v4;
    dispatch_source_set_event_handler(v5, v8);
    dispatch_resume(v5);
    v6 = MALOG_ANALYTICS_OBSERVER_MASK_block_invoke_2_signalSources[i];
    MALOG_ANALYTICS_OBSERVER_MASK_block_invoke_2_signalSources[i] = v5;
    v7 = v5;

    signal(v4, (&dword_0 + 1));
  }
}

- (void)quiesceAndRestartMobileAsset
{
  v3 = [(MABrainRestartManager *)self operationsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __53__MABrainRestartManager_quiesceAndRestartMobileAsset__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __53__MABrainRestartManager_quiesceAndRestartMobileAsset__block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"Brain");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[MAB]: Attempting to quiesce MobileAsset", buf, 2u);
  }

  [*(a1 + 32) quiesceMobileAsset];
  v3 = _MADLog(@"Brain");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[MAB]: Done with quiesce. Restarting mobileassetd", v4, 2u);
  }

  exit(0);
}

@end