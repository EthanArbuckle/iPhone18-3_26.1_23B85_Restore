@interface VSKeepAliveClient
- (BOOL)_shouldChangeAudioSession;
- (void)cancel;
- (void)dealloc;
- (void)maintainWithAudioType:(int64_t)a3 keepAudioSessionActive:(BOOL)a4;
@end

@implementation VSKeepAliveClient

- (void)cancel
{
  if (self->_isActive)
  {
    self->_isActive = 0;
    transaction = self->_transaction;
    self->_transaction = 0;

    if ([(VSKeepAliveClient *)self _shouldChangeAudioSession])
    {
      sub_1000EB450(0, self->_activity);
    }

    WeakRetained = objc_loadWeakRetained(&self->_manager);
    [WeakRetained cancelKeepAlive:self];

    registryRunLoopSource = self->_registryRunLoopSource;
    if (registryRunLoopSource)
    {

      sub_1000E1A1C(registryRunLoopSource, 0);
    }
  }
}

- (void)maintainWithAudioType:(int64_t)a3 keepAudioSessionActive:(BOOL)a4
{
  if (!self->_isActive)
  {
    self->_isActive = 1;
    self->_activity = a3 & 3;
    self->_keepSessionActive = a4;
    if ([(VSKeepAliveClient *)self _shouldChangeAudioSession])
    {
      sub_1000EB450(1, self->_activity);
    }

    WeakRetained = objc_loadWeakRetained(&self->_manager);
    [WeakRetained maintainKeepAlive:self];

    v9.version = 0;
    memset(&v9.retain, 0, 56);
    v9.info = self;
    v9.perform = nullsub_17;
    v6 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v6;

    v8 = CFRunLoopSourceCreate(0, 0, &v9);
    self->_registryRunLoopSource = v8;
    sub_1000E1A1C(v8, 1);
  }
}

- (BOOL)_shouldChangeAudioSession
{
  activity = self->_activity;
  if (activity)
  {
    LOBYTE(activity) = self->_keepSessionActive;
  }

  return activity & 1;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained cancelKeepAlive:self];

  registryRunLoopSource = self->_registryRunLoopSource;
  if (registryRunLoopSource)
  {
    sub_1000E1A1C(registryRunLoopSource, 0);
    CFRelease(self->_registryRunLoopSource);
  }

  v5.receiver = self;
  v5.super_class = VSKeepAliveClient;
  [(VSKeepAliveClient *)&v5 dealloc];
}

@end