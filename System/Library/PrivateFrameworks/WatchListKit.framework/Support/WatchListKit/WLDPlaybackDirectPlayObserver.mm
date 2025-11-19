@interface WLDPlaybackDirectPlayObserver
- (BOOL)_getAppRunningState;
- (WLDPlaybackDirectPlayObserver)initWithBundleID:(id)a3;
- (id)_identifier;
- (void)_startObserving;
- (void)_stopObserving;
- (void)dealloc;
- (void)setAppIsRunning:(BOOL)a3;
@end

@implementation WLDPlaybackDirectPlayObserver

- (WLDPlaybackDirectPlayObserver)initWithBundleID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WLDPlaybackDirectPlayObserver;
  v5 = [(WLDPlaybackDirectPlayObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WLDPlaybackDirectPlayObserver *)v5 setBundleID:v4];
    [(WLDPlaybackDirectPlayObserver *)v6 setAppIsRunning:0];
    [(WLDPlaybackDirectPlayObserver *)v6 _startObserving];
  }

  return v6;
}

- (void)dealloc
{
  [(WLDPlaybackDirectPlayObserver *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = WLDPlaybackDirectPlayObserver;
  [(WLDPlaybackDirectPlayObserver *)&v3 dealloc];
}

- (void)_startObserving
{
  v3 = [(WLDPlaybackDirectPlayObserver *)self bundleID];
  NSLog(@"WLDPlaybackDirectPlayObserver: Start Observing (%@)", v3);

  objc_initWeak(&location, self);
  [(WLDPlaybackDirectPlayObserver *)self bundleID];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __48__WLDPlaybackDirectPlayObserver__startObserving__block_invoke;
  v4 = v6[3] = &unk_100045A20;
  v7 = v4;
  objc_copyWeak(&v9, &location);
  v8 = self;
  v5 = [RBSProcessMonitor monitorWithConfiguration:v6];
  [(WLDPlaybackDirectPlayObserver *)self setStateMonitor:v5];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__WLDPlaybackDirectPlayObserver__startObserving__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessStateDescriptor descriptor];
  [v4 setValues:1];
  [v3 setStateDescriptor:v4];
  v5 = [RBSProcessPredicate predicateMatchingBundleIdentifier:*(a1 + 32)];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  [v3 setPredicates:v6];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __48__WLDPlaybackDirectPlayObserver__startObserving__block_invoke_2;
  v7[3] = &unk_1000459F8;
  objc_copyWeak(&v8, (a1 + 48));
  v7[4] = *(a1 + 40);
  [v3 setUpdateHandler:v7];
  objc_destroyWeak(&v8);
}

void __48__WLDPlaybackDirectPlayObserver__startObserving__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained _getAppRunningState];
    v4 = @"NO";
    if (v3)
    {
      v4 = @"YES";
    }

    NSLog(@"WLDPlaybackDirectPlayObserver: _handleStateChange: appIsRunning: %@", v4);
    [*(a1 + 32) setAppIsRunning:v3];
    WeakRetained = v5;
  }
}

- (void)_stopObserving
{
  NSLog(@"WLDPlaybackDirectPlayObserver: Stop Observing", a2);
  v3 = [(WLDPlaybackDirectPlayObserver *)self stateMonitor];
  [v3 invalidate];

  [(WLDPlaybackDirectPlayObserver *)self setStateMonitor:0];
}

- (void)setAppIsRunning:(BOOL)a3
{
  if (self->_appIsRunning != a3)
  {
    self->_appIsRunning = a3;
    if (a3)
    {
      v4 = [WLKTransactionScope alloc];
      v5 = [(WLDPlaybackDirectPlayObserver *)self _identifier];
      v6 = [v4 initWithIdentifier:v5 delay:10.0];

      [(WLDPlaybackDirectPlayObserver *)self setTransaction:v6];
    }

    else
    {
      [(WLDPlaybackDirectPlayObserver *)self setTransaction:0];
    }

    v7 = [(WLDPlaybackDirectPlayObserver *)self updateHandler];

    if (v7)
    {
      v8 = *(self->_updateHandler + 2);

      v8();
    }
  }
}

- (BOOL)_getAppRunningState
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(WLDPlaybackDirectPlayObserver *)self stateMonitor];
  v4 = [v3 states];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v19 + 1) + 8 * v8);
      v10 = [v9 process];
      v11 = [v10 bundle];
      v12 = [v11 identifier];
      v13 = [(WLDPlaybackDirectPlayObserver *)self bundleID];
      v14 = [v12 isEqualToString:v13];

      if (v14)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v9;

    if (!v15)
    {
      goto LABEL_12;
    }

    v16 = [v15 isRunning];
  }

  else
  {
LABEL_9:

LABEL_12:
    v15 = [(WLDPlaybackDirectPlayObserver *)self bundleID];
    NSLog(@"WLDPlaybackDirectPlayObserver: No process state matching %@", v15);
    v16 = 0;
  }

  return v16;
}

- (id)_identifier
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(WLDPlaybackDirectPlayObserver *)self bundleID];
  v6 = [NSString stringWithFormat:@"%@-%@", v4, v5];

  return v6;
}

@end