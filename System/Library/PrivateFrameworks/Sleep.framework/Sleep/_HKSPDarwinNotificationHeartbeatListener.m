@interface _HKSPDarwinNotificationHeartbeatListener
- (HKSPXPCHeartbeatListenerDelegate)delegate;
- (_HKSPDarwinNotificationHeartbeatListener)initWithLifecycleNotification:(id)a3;
- (void)didReceiveLifecycleNotification;
- (void)setHeartbeatDelegate:(id)a3;
@end

@implementation _HKSPDarwinNotificationHeartbeatListener

- (_HKSPDarwinNotificationHeartbeatListener)initWithLifecycleNotification:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _HKSPDarwinNotificationHeartbeatListener;
  v6 = [(_HKSPDarwinNotificationHeartbeatListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lifecycleNotification, a3);
  }

  return v7;
}

- (void)setHeartbeatDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  lifecycleNotification = self->_lifecycleNotification;
  if (a3)
  {

    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleLifeCycleNotification, lifecycleNotification, self, 1028);
  }

  else
  {
    v7 = self->_lifecycleNotification;

    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v7, self);
  }
}

- (void)didReceiveLifecycleNotification
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    lifecycleNotification = self->_lifecycleNotification;
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = lifecycleNotification;
    v6 = v4;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] received lifecycle notification %{public}@", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained listenerDidReceiveHeartbeat:self];

  v8 = *MEMORY[0x277D85DE8];
}

- (HKSPXPCHeartbeatListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end