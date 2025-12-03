@interface TCSBehavior
+ (BOOL)_isM8Device;
+ (BOOL)isAppleInternalInstall;
+ (BOOL)isM8Device;
+ (BOOL)isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot;
+ (BOOL)isRunningInStoreDemoModeOrSimulator;
+ (id)_regionCode;
+ (id)regionCode;
+ (id)sharedBehavior;
- (TCSBehavior)init;
- (void)_handleDeviceFirstUnlock;
- (void)dealloc;
@end

@implementation TCSBehavior

- (TCSBehavior)init
{
  v11.receiver = self;
  v11.super_class = TCSBehavior;
  v2 = [(TCSBehavior *)&v11 init];
  if (v2)
  {
    v2->_isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot = [objc_opt_class() _isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot];
    v2->_isAppleInternalInstall = [objc_opt_class() _isAppleInternalInstall];
    v2->_isM8Device = [objc_opt_class() _isM8Device];
    v2->_isRunningInStoreDemoModeOrSimulator = [objc_opt_class() _isRunningInStoreDemoModeOrSimulator];
    _regionCode = [objc_opt_class() _regionCode];
    regionCode = v2->_regionCode;
    v2->_regionCode = _regionCode;

    if (!v2->_isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot)
    {
      objc_initWeak(&location, v2);
      v5 = MEMORY[0x277D85CD0];
      v6 = MEMORY[0x277D85CD0];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __19__TCSBehavior_init__block_invoke;
      v8[3] = &unk_279DC1A78;
      objc_copyWeak(&v9, &location);
      notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &v2->_firstUnlockToken, v5, v8);

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

void __19__TCSBehavior_init__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[2] == a2)
  {
    v4 = WeakRetained;
    [WeakRetained _handleDeviceFirstUnlock];
    WeakRetained = v4;
  }
}

- (void)dealloc
{
  notify_cancel(self->_firstUnlockToken);
  v3.receiver = self;
  v3.super_class = TCSBehavior;
  [(TCSBehavior *)&v3 dealloc];
}

+ (id)sharedBehavior
{
  if (sharedBehavior_onceToken != -1)
  {
    +[TCSBehavior sharedBehavior];
  }

  v3 = sharedBehavior__defaultBehavior;

  return v3;
}

uint64_t __29__TCSBehavior_sharedBehavior__block_invoke()
{
  sharedBehavior__defaultBehavior = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot
{
  sharedBehavior = [self sharedBehavior];
  isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot = [sharedBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot];

  return isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot;
}

+ (BOOL)isAppleInternalInstall
{
  sharedBehavior = [self sharedBehavior];
  isAppleInternalInstall = [sharedBehavior isAppleInternalInstall];

  return isAppleInternalInstall;
}

+ (BOOL)isM8Device
{
  sharedBehavior = [self sharedBehavior];
  isM8Device = [sharedBehavior isM8Device];

  return isM8Device;
}

+ (BOOL)isRunningInStoreDemoModeOrSimulator
{
  sharedBehavior = [self sharedBehavior];
  isRunningInStoreDemoModeOrSimulator = [sharedBehavior isRunningInStoreDemoModeOrSimulator];

  return isRunningInStoreDemoModeOrSimulator;
}

+ (id)regionCode
{
  sharedBehavior = [self sharedBehavior];
  regionCode = [sharedBehavior regionCode];

  return regionCode;
}

+ (BOOL)_isM8Device
{
  v2 = 1;
  v3 = MGGetProductType();
  if (v3 > 1302273957)
  {
    if (v3 == 1302273958)
    {
      return v2;
    }

    v4 = 2445473385;
  }

  else
  {
    if (v3 == 262180327)
    {
      return v2;
    }

    v4 = 761631964;
  }

  if (v3 != v4)
  {
    return 0;
  }

  return v2;
}

+ (id)_regionCode
{
  v2 = MGGetStringAnswer();

  return v2;
}

- (void)_handleDeviceFirstUnlock
{
  self->_isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot = [objc_opt_class() _isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot];
  _TCSInitializeLogging();
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSBehavior notifying clients of device first unlock.", v5, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TCSFirstUnlockNotification" object:self];
}

@end