@interface BatterySaverWatcher
- (BOOL)batterySaverEnabled;
- (BatterySaverWatcher)initWithDelegate:(id)a3;
- (BatterySaverWatcherDelegate)delegate;
- (unint64_t)_getState;
- (void)_notifyDelegate;
- (void)_registerNotifier;
- (void)_updateStatus;
- (void)dealloc;
@end

@implementation BatterySaverWatcher

- (BatterySaverWatcher)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BatterySaverWatcher;
  v5 = [(BatterySaverWatcher *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_enabled = 0;
    objc_storeWeak(&v5->_delegate, v4);
    [(BatterySaverWatcher *)v6 _registerNotifier];
  }

  return v6;
}

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = BatterySaverWatcher;
  [(BatterySaverWatcher *)&v3 dealloc];
}

- (BOOL)batterySaverEnabled
{
  v2 = self;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  notifyQueue = self->_notifyQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B1518;
  v5[3] = &unk_1003274C0;
  v5[4] = v2;
  v5[5] = v6;
  dispatch_sync(notifyQueue, v5);
  LOBYTE(v2) = v2->_enabled;
  _Block_object_dispose(v6, 8);
  return v2;
}

- (unint64_t)_getState
{
  state64 = 0;
  token = self->_token;
  if (!token)
  {
    return 0;
  }

  notify_get_state(token, &state64);
  return state64;
}

- (void)_notifyDelegate
{
  v3 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B15F8;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_registerNotifier
{
  v3 = dispatch_queue_create("com.apple.itunesstored.BatterySaverWatcher", 0);
  notifyQueue = self->_notifyQueue;
  self->_notifyQueue = v3;

  objc_initWeak(&location, self);
  v5 = self->_notifyQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000B1794;
  handler[3] = &unk_1003278B0;
  handler[4] = self;
  objc_copyWeak(&v9, &location);
  notify_register_dispatch("com.apple.system.batterysavermode.discretionary", &self->_token, v5, handler);
  v6 = self->_notifyQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B17E8;
  v7[3] = &unk_100327110;
  v7[4] = self;
  dispatch_sync(v6, v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_updateStatus
{
  v3 = [(BatterySaverWatcher *)self _getState]!= 0;
  if (self->_enabled != v3)
  {
    self->_enabled = v3;

    [(BatterySaverWatcher *)self _notifyDelegate];
  }
}

- (BatterySaverWatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end