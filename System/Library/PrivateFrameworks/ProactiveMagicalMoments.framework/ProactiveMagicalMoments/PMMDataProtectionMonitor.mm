@interface PMMDataProtectionMonitor
+ (id)PMMDataProtectionMonitorDataProtectionStatus:(int64_t)a3;
+ (id)PMMDataProtectionMonitorEncryptedDataAvailabilityToString:(int64_t)a3;
+ (id)PMMDataProtectionMonitorLockStateToString:(int64_t)a3;
- (BOOL)dataProtectionEnabled;
- (BOOL)unlockedSinceBoot;
- (PMMDataProtectionMonitor)init;
- (PMMDataProtectionMonitorDelegate)delegate;
- (int64_t)encryptedDataAvailability;
- (void)_registerForKeyBagNotifications;
- (void)dealloc;
- (void)handkeKeybagLockStatusChange:(int64_t)a3;
- (void)handleUnlockedSinceBoot;
- (void)setDataProtectionStatus:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setEncryptedDataAvailability:(int64_t)a3;
- (void)setUnlockedSinceBoot:(BOOL)a3;
@end

@implementation PMMDataProtectionMonitor

- (int64_t)encryptedDataAvailability
{
  pthread_rwlock_rdlock(&self->_rwlock);
  encryptedDataAvailability = self->_encryptedDataAvailability;
  pthread_rwlock_unlock(&self->_rwlock);
  return encryptedDataAvailability;
}

+ (id)PMMDataProtectionMonitorLockStateToString:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_278592250[a3];
  }
}

+ (id)PMMDataProtectionMonitorEncryptedDataAvailabilityToString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_278592270[a3 - 1];
  }
}

+ (id)PMMDataProtectionMonitorDataProtectionStatus:(int64_t)a3
{
  v3 = @"unknown";
  if (a3 == 1)
  {
    v3 = @"enabled";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"disabled";
  }
}

- (PMMDataProtectionMonitor)init
{
  v5.receiver = self;
  v5.super_class = PMMDataProtectionMonitor;
  v2 = [(PMMDataProtectionMonitor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->_rwlock, 0);
    pthread_rwlock_wrlock(&v3->_rwlock);
    v3->_encryptedDataAvailability = 0;
    v3->_unlockedSinceBoot = 1;
    v3->_dataProtectionStatus = 2;
    pthread_rwlock_unlock(&v3->_rwlock);
    [(PMMDataProtectionMonitor *)v3 _registerForKeyBagNotifications];
  }

  return v3;
}

- (void)_registerForKeyBagNotifications
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_22639A000, a2, OS_LOG_TYPE_ERROR, "Failed to determine lock state, %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D28B30]], 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"com.apple.mobile.keybagd.first_unlock", 0);
  pthread_rwlock_destroy(&self->_rwlock);
  v5.receiver = self;
  v5.super_class = PMMDataProtectionMonitor;
  [(PMMDataProtectionMonitor *)&v5 dealloc];
}

- (void)handkeKeybagLockStatusChange:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = 2;
  if (a3 == 2)
  {
    v5 = 3;
  }

  if (a3 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  [(PMMDataProtectionMonitor *)self setEncryptedDataAvailability:v6];
  [(PMMDataProtectionMonitor *)self setDataProtectionStatus:MKBGetDeviceLockState() != 3];
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [PMMDataProtectionMonitor PMMDataProtectionMonitorLockStateToString:a3];
    v9 = [PMMDataProtectionMonitor PMMDataProtectionMonitorEncryptedDataAvailabilityToString:[(PMMDataProtectionMonitor *)self encryptedDataAvailability]];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_22639A000, v7, OS_LOG_TYPE_INFO, "received lock state change, %@, encrypted data availability, %@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleUnlockedSinceBoot
{
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22639A000, v3, OS_LOG_TYPE_INFO, "received unlock since boot notification", v4, 2u);
  }

  [(PMMDataProtectionMonitor *)self setUnlockedSinceBoot:1];
}

- (PMMDataProtectionMonitorDelegate)delegate
{
  pthread_rwlock_rdlock(&self->_rwlock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pthread_rwlock_unlock(&self->_rwlock);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  pthread_rwlock_wrlock(&self->_rwlock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
  }

  pthread_rwlock_unlock(&self->_rwlock);
}

- (void)setEncryptedDataAvailability:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  pthread_rwlock_wrlock(&self->_rwlock);
  if (self->_encryptedDataAvailability != a3)
  {
    self->_encryptedDataAvailability = a3;
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [PMMDataProtectionMonitor PMMDataProtectionMonitorEncryptedDataAvailabilityToString:self->_encryptedDataAvailability];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_22639A000, v5, OS_LOG_TYPE_INFO, "encrypted data availability changed to, %@", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained dataProtectionMonitor:self encryptedDataAvailbilityDidChange:self->_encryptedDataAvailability];
    }
  }

  pthread_rwlock_unlock(&self->_rwlock);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)unlockedSinceBoot
{
  pthread_rwlock_rdlock(&self->_rwlock);
  unlockedSinceBoot = self->_unlockedSinceBoot;
  pthread_rwlock_unlock(&self->_rwlock);
  return unlockedSinceBoot;
}

- (void)setUnlockedSinceBoot:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  pthread_rwlock_wrlock(&self->_rwlock);
  if (self->_unlockedSinceBoot != v3)
  {
    self->_unlockedSinceBoot = v3;
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      unlockedSinceBoot = self->_unlockedSinceBoot;
      v9[0] = 67109120;
      v9[1] = unlockedSinceBoot;
      _os_log_impl(&dword_22639A000, v5, OS_LOG_TYPE_INFO, "unlocked since boot changed to, %{BOOL}d", v9, 8u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained dataProtectionMonitor:self unlockedSinceBoot:self->_unlockedSinceBoot];
    }
  }

  pthread_rwlock_unlock(&self->_rwlock);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)dataProtectionEnabled
{
  pthread_rwlock_rdlock(&self->_rwlock);
  v3 = self->_dataProtectionStatus != 0;
  pthread_rwlock_unlock(&self->_rwlock);
  return v3;
}

- (void)setDataProtectionStatus:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  pthread_rwlock_wrlock(&self->_rwlock);
  if (self->_dataProtectionStatus != v3)
  {
    self->_dataProtectionStatus = v3;
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [PMMDataProtectionMonitor PMMDataProtectionMonitorDataProtectionStatus:self->_dataProtectionStatus];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_22639A000, v5, OS_LOG_TYPE_INFO, "data protection enabled, %@", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained dataProtectionMonitor:self dataProtectionStatusDidChange:self->_dataProtectionStatus];
    }
  }

  pthread_rwlock_unlock(&self->_rwlock);
  v8 = *MEMORY[0x277D85DE8];
}

@end