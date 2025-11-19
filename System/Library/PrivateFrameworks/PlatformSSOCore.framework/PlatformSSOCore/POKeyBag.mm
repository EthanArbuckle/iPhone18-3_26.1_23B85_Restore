@interface POKeyBag
- (BOOL)isUserKeybagUnlocked;
- (POKeyBag)init;
- (void)dealloc;
- (void)isUserKeybagUnlocked;
- (void)startObservingKeyBagLockStatusChanges;
- (void)stopObservingKeyBagLockStatusChanges;
- (void)waitForKeyBagFirstUnlockOnStartupWithCompletion:(id)a3;
- (void)waitForKeyBagUnlockWithCompletion:(id)a3;
@end

@implementation POKeyBag

- (POKeyBag)init
{
  v3.receiver = self;
  v3.super_class = POKeyBag;
  result = [(POKeyBag *)&v3 init];
  if (result)
  {
    result->_firstUnlock = 0;
    result->_notifyToken = 0;
  }

  return result;
}

- (void)dealloc
{
  [(POKeyBag *)self stopObservingKeyBagLockStatusChanges];
  v3.receiver = self;
  v3.super_class = POKeyBag;
  [(POKeyBag *)&v3 dealloc];
}

- (BOOL)isUserKeybagUnlocked
{
  v2 = MKBGetDeviceLockState();
  v3 = PO_LOG_POKeyBag();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(POKeyBag *)v2 isUserKeybagUnlocked];
  }

  return v2 == 0;
}

- (void)waitForKeyBagUnlockWithCompletion:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ([(POKeyBag *)v4 isUserKeybagUnlocked])
  {
    v5[2](v5);
  }

  else
  {
    [(POKeyBag *)v4 setUnlockCompletion:v5];
  }

  objc_sync_exit(v4);
}

- (void)waitForKeyBagFirstUnlockOnStartupWithCompletion:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ([(POKeyBag *)v4 firstUnlock]|| [(POKeyBag *)v4 isUserKeybagUnlocked])
  {
    v5[2]();
  }

  else
  {
    [(POKeyBag *)v4 setStartupCompletion:v5];
  }

  objc_sync_exit(v4);
}

- (void)startObservingKeyBagLockStatusChanges
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_ERROR, "notify_register_dispatch failed: %u", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void __49__POKeyBag_startObservingKeyBagLockStatusChanges__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) isUserKeybagUnlocked];
  v4 = PO_LOG_POKeyBag();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __49__POKeyBag_startObservingKeyBagLockStatusChanges__block_invoke_cold_2();
    }

    [*(a1 + 32) setFirstUnlock:1];
    v6 = [*(a1 + 32) startupCompletion];

    if (v6)
    {
      v7 = PO_LOG_POKeyBag();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __49__POKeyBag_startObservingKeyBagLockStatusChanges__block_invoke_cold_3();
      }

      v8 = [*(a1 + 32) startupCompletion];
      v8[2]();

      [*(a1 + 32) setStartupCompletion:0];
    }

    v9 = [*(a1 + 32) unlockCompletion];

    if (v9)
    {
      v10 = PO_LOG_POKeyBag();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __49__POKeyBag_startObservingKeyBagLockStatusChanges__block_invoke_cold_4();
      }

      v11 = [*(a1 + 32) unlockCompletion];
      v11[2]();

      [*(a1 + 32) setUnlockCompletion:0];
    }
  }

  else
  {
    if (v5)
    {
      __49__POKeyBag_startObservingKeyBagLockStatusChanges__block_invoke_cold_1();
    }

    v12 = [*(a1 + 32) lockHandler];

    if (v12)
    {
      v13 = [*(a1 + 32) lockHandler];
      v13[2]();
    }
  }

  objc_sync_exit(v2);
}

- (void)stopObservingKeyBagLockStatusChanges
{
  notifyToken = self->_notifyToken;
  if (notifyToken)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = 0;
  }
}

- (void)isUserKeybagUnlocked
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_DEBUG, "unlock state %x", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end