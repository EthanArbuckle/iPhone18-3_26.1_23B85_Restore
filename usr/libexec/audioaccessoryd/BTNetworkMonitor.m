@interface BTNetworkMonitor
- (BOOL)isMonitoring;
- (BOOL)isNetworkUp;
- (void)notifyNetworkStateChange;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setCachedIsNetworkUp:(BOOL)a3;
- (void)startMonitoringWithCallback:(id)a3;
- (void)stopMonitoring;
@end

@implementation BTNetworkMonitor

- (void)startMonitoringWithCallback:(id)a3
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = a3;
  v7 = dispatch_queue_create("BTNetworkMonitor", v5);
  [(BTNetworkMonitor *)self setCallbackQueue:v7];

  [(BTNetworkMonitor *)self setBlock:v6];
  v8 = +[NWPathEvaluator sharedDefaultEvaluator];
  [(BTNetworkMonitor *)self setEvaluator:v8];

  v9 = [(BTNetworkMonitor *)self evaluator];
  [v9 addObserver:self forKeyPath:@"path" options:5 context:0];
}

- (void)stopMonitoring
{
  v3 = [(BTNetworkMonitor *)self evaluator];
  [v3 removeObserver:self forKeyPath:@"path" context:0];

  [(BTNetworkMonitor *)self setCallbackQueue:0];
  [(BTNetworkMonitor *)self setBlock:0];

  [(BTNetworkMonitor *)self setEvaluator:0];
}

- (BOOL)isMonitoring
{
  v2 = [(BTNetworkMonitor *)self evaluator];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isNetworkUp
{
  v3 = [(BTNetworkMonitor *)self isMonitoring];
  if (v3)
  {
    v4 = [(BTNetworkMonitor *)self evaluator];
    v5 = [v4 path];
    v6 = [v5 status];

    LOBYTE(v3) = (v6 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  return v3;
}

- (void)setCachedIsNetworkUp:(BOOL)a3
{
  v3 = a3;
  v5 = [(BTNetworkMonitor *)self callbackQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_cachedIsNetworkUp != v3)
  {
    self->_cachedIsNetworkUp = v3;

    [(BTNetworkMonitor *)self notifyNetworkStateChange];
  }
}

- (void)notifyNetworkStateChange
{
  v3 = [(BTNetworkMonitor *)self callbackQueue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100005C14("NetworkMonitor");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(BTNetworkMonitor *)self cachedIsNetworkUp];
    v6 = @"DOWN";
    if (v5)
    {
      v6 = @"UP";
    }

    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Network state changed: %@", buf, 0xCu);
  }

  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_100073568;
  activity_block[3] = &unk_1002B6880;
  activity_block[4] = self;
  _os_activity_initiate(&_mh_execute_header, "Network state changed", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a4;
  if ([a3 isEqualToString:@"path"])
  {
    v9 = [(BTNetworkMonitor *)self callbackQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000737F4;
    v10[3] = &unk_1002B6D18;
    v10[4] = self;
    v11 = v8;
    dispatch_async(v9, v10);
  }
}

@end