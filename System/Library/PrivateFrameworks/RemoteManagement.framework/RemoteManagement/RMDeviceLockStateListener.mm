@interface RMDeviceLockStateListener
+ (id)newListenerWithDelegate:(id)delegate;
- (RMDeviceLockStateListener)initWithDelegate:(id)delegate;
- (RMDeviceLockStateListenerDelegate)delegate;
- (void)didReceiveNotificationForStream:(id)stream notificationName:(id)name;
- (void)startListening;
- (void)stopListening;
- (void)triggerAggregatingTimerAction;
@end

@implementation RMDeviceLockStateListener

+ (id)newListenerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[RMDeviceLockStateListener alloc] initWithDelegate:delegateCopy];

  return v4;
}

- (RMDeviceLockStateListener)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = RMDeviceLockStateListener;
  v5 = [(RMDeviceLockStateListener *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [RMDebounceTimer debounceTimerWithMinimumInterval:v6 maximumInterval:@"RMDeviceLockStateListener" delegate:1.0 identifier:5.0];
    debouncer = v6->_debouncer;
    v6->_debouncer = v7;

    v9 = objc_opt_new();
    syncLock = v6->_syncLock;
    v6->_syncLock = v9;

    v11 = +[RMDevice currentDevice];
    v6->_previousLockState = [v11 locked];

    v6->_listening = 0;
  }

  return v6;
}

- (void)startListening
{
  if (!self->_listening)
  {
    v3 = self->_syncLock;
    objc_sync_enter(v3);
    v4 = +[RMLog deviceLockState];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100029A58(v4);
    }

    v5 = +[RMDevice currentDevice];
    self->_previousLockState = [v5 locked];

    v6 = +[RMLog deviceLockState];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [NSNumber numberWithBool:self->_previousLockState];
      sub_100029A9C(v7, v10, v6);
    }

    if (MKBDeviceFormattedForContentProtection())
    {
      v8 = [RMXPCEvent newXPCEventForDarwinNotification:@"com.apple.mobile.keybagd.lock_status"];
      v9 = +[RMXPCNotifications sharedNotifier];
      [v9 addObserverForEvent:v8 observer:self];
    }

    self->_listening = 1;
    objc_sync_exit(v3);
  }
}

- (void)stopListening
{
  if (self->_listening)
  {
    v3 = +[RMLog deviceLockState];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100029AF4(v3);
    }

    v4 = self->_syncLock;
    objc_sync_enter(v4);
    v5 = [RMXPCEvent newXPCEventForDarwinNotification:@"com.apple.mobile.keybagd.lock_status"];
    v6 = +[RMXPCNotifications sharedNotifier];
    [v6 removeObserverForEvent:v5];

    self->_listening = 0;
    objc_sync_exit(v4);
  }
}

- (void)didReceiveNotificationForStream:(id)stream notificationName:(id)name
{
  v5 = [RMLog deviceLockState:stream];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Device lock state notification", v7, 2u);
  }

  debouncer = [(RMDeviceLockStateListener *)self debouncer];
  [debouncer trigger];
}

- (void)triggerAggregatingTimerAction
{
  v3 = self->_syncLock;
  objc_sync_enter(v3);
  v4 = +[RMDevice currentDevice];
  locked = [v4 locked];

  if (self->_previousLockState != locked)
  {
    self->_previousLockState = locked;
    v6 = +[RMLog deviceLockState];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [NSNumber numberWithBool:locked];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Device lock state changed to: %{public}@", &v9, 0xCu);
    }

    delegate = [(RMDeviceLockStateListener *)self delegate];
    [delegate lockStateDidChange:locked];
  }

  objc_sync_exit(v3);
}

- (RMDeviceLockStateListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end