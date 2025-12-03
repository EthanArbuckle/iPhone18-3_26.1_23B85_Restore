@interface STDeviceUnlockStateListener
- (BOOL)deviceIsLocked;
- (STDeviceUnlockStateListener)init;
- (void)dealloc;
@end

@implementation STDeviceUnlockStateListener

- (STDeviceUnlockStateListener)init
{
  v10.receiver = self;
  v10.super_class = STDeviceUnlockStateListener;
  v2 = [(STDeviceUnlockStateListener *)&v10 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    if (MKBDeviceFormattedForContentProtection())
    {
      v3 = *MEMORY[0x277D28B30];
      v4 = MEMORY[0x277D85CD0];
      v5 = MEMORY[0x277D85CD0];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __35__STDeviceUnlockStateListener_init__block_invoke;
      v7[3] = &unk_279B7D730;
      objc_copyWeak(&v8, &location);
      notify_register_dispatch(v3, &v2->_notifyToken, v4, v7);

      objc_destroyWeak(&v8);
    }

    objc_destroyWeak(&location);
  }

  return v2;
}

void __35__STDeviceUnlockStateListener_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x277D4BA00] deviceState];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264BA2000, v2, OS_LOG_TYPE_DEFAULT, "Device lock stated changed", v4, 2u);
  }

  v3 = [WeakRetained lockStateChangeHandler];
  if (v3)
  {
    v3[2](v3, [WeakRetained deviceIsLocked]);
  }
}

- (void)dealloc
{
  notify_cancel(self->_notifyToken);
  v3.receiver = self;
  v3.super_class = STDeviceUnlockStateListener;
  [(STDeviceUnlockStateListener *)&v3 dealloc];
}

- (BOOL)deviceIsLocked
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = MKBGetDeviceLockState();
  deviceState = [MEMORY[0x277D4BA00] deviceState];
  if (os_log_type_enabled(deviceState, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&dword_264BA2000, deviceState, OS_LOG_TYPE_DEFAULT, "Device lock state %d", v6, 8u);
  }

  if (v2)
  {
    v4 = v2 == 3;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

@end