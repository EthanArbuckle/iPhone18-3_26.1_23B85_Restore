@interface _HKSPDarwinNotificationHeartbeatGenerator
- (_HKSPDarwinNotificationHeartbeatGenerator)initWithLifecycleNotification:(id)a3;
- (void)sendHeartbeat;
@end

@implementation _HKSPDarwinNotificationHeartbeatGenerator

- (_HKSPDarwinNotificationHeartbeatGenerator)initWithLifecycleNotification:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _HKSPDarwinNotificationHeartbeatGenerator;
  v6 = [(_HKSPDarwinNotificationHeartbeatGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lifecycleNotification, a3);
  }

  return v7;
}

- (void)sendHeartbeat
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_lifecycleNotification)
  {
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
      _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] posting lifecycle notification %{public}@", &v9, 0x16u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, self->_lifecycleNotification, 0, 0, 1u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end