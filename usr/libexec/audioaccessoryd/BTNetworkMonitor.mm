@interface BTNetworkMonitor
- (BOOL)isMonitoring;
- (BOOL)isNetworkUp;
- (void)notifyNetworkStateChange;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCachedIsNetworkUp:(BOOL)up;
- (void)startMonitoringWithCallback:(id)callback;
- (void)stopMonitoring;
@end

@implementation BTNetworkMonitor

- (void)startMonitoringWithCallback:(id)callback
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  callbackCopy = callback;
  v7 = dispatch_queue_create("BTNetworkMonitor", v5);
  [(BTNetworkMonitor *)self setCallbackQueue:v7];

  [(BTNetworkMonitor *)self setBlock:callbackCopy];
  v8 = +[NWPathEvaluator sharedDefaultEvaluator];
  [(BTNetworkMonitor *)self setEvaluator:v8];

  evaluator = [(BTNetworkMonitor *)self evaluator];
  [evaluator addObserver:self forKeyPath:@"path" options:5 context:0];
}

- (void)stopMonitoring
{
  evaluator = [(BTNetworkMonitor *)self evaluator];
  [evaluator removeObserver:self forKeyPath:@"path" context:0];

  [(BTNetworkMonitor *)self setCallbackQueue:0];
  [(BTNetworkMonitor *)self setBlock:0];

  [(BTNetworkMonitor *)self setEvaluator:0];
}

- (BOOL)isMonitoring
{
  evaluator = [(BTNetworkMonitor *)self evaluator];
  v3 = evaluator != 0;

  return v3;
}

- (BOOL)isNetworkUp
{
  isMonitoring = [(BTNetworkMonitor *)self isMonitoring];
  if (isMonitoring)
  {
    evaluator = [(BTNetworkMonitor *)self evaluator];
    path = [evaluator path];
    status = [path status];

    LOBYTE(isMonitoring) = (status & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  return isMonitoring;
}

- (void)setCachedIsNetworkUp:(BOOL)up
{
  upCopy = up;
  callbackQueue = [(BTNetworkMonitor *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  if (self->_cachedIsNetworkUp != upCopy)
  {
    self->_cachedIsNetworkUp = upCopy;

    [(BTNetworkMonitor *)self notifyNetworkStateChange];
  }
}

- (void)notifyNetworkStateChange
{
  callbackQueue = [(BTNetworkMonitor *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  v4 = sub_100005C14("NetworkMonitor");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    cachedIsNetworkUp = [(BTNetworkMonitor *)self cachedIsNetworkUp];
    v6 = @"DOWN";
    if (cachedIsNetworkUp)
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if ([path isEqualToString:@"path"])
  {
    callbackQueue = [(BTNetworkMonitor *)self callbackQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000737F4;
    v10[3] = &unk_1002B6D18;
    v10[4] = self;
    v11 = objectCopy;
    dispatch_async(callbackQueue, v10);
  }
}

@end