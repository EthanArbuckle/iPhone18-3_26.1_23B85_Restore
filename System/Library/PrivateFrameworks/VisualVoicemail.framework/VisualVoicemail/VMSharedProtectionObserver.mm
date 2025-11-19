@interface VMSharedProtectionObserver
+ (id)sharedProtectionObserver;
- (BOOL)checkUnlockSinceBootState;
- (VMSharedProtectionObserver)init;
- (void)setupMobileKeyBag;
@end

@implementation VMSharedProtectionObserver

+ (id)sharedProtectionObserver
{
  if (qword_10010D7C0 != -1)
  {
    sub_10009C270();
  }

  v3 = qword_10010D7B8;

  return v3;
}

- (VMSharedProtectionObserver)init
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating ProtectionObserver", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = VMSharedProtectionObserver;
  v4 = [(VMSharedProtectionObserver *)&v7 init];
  if (v4)
  {
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ProtectionObserver mode KEYBAG_AVAILABLE", buf, 2u);
    }

    v4->_hasDeviceBeenUnlockedSinceBoot = 0;
    [(VMSharedProtectionObserver *)v4 setupMobileKeyBag];
  }

  return v4;
}

- (void)setupMobileKeyBag
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "setupMobileKeyBag", buf, 2u);
  }

  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setupMobileKeyBag: register for notification", buf, 2u);
  }

  objc_initWeak(buf, self);
  out_token = 0;
  v5 = dispatch_get_global_queue(0, 0);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10001D614;
  v9 = &unk_1000EDDE8;
  objc_copyWeak(&v10, buf);
  v11 = 0;
  notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v5, &v6);

  [(VMSharedProtectionObserver *)self checkUnlockSinceBootState:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (BOOL)checkUnlockSinceBootState
{
  v3 = MKBDeviceUnlockedSinceBoot();
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unlocked since boot %d", v7, 8u);
  }

  if (v3 == 1)
  {
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "hasDeviceBeenUnlockedSinceBoot = YES", v7, 2u);
    }

    [(VMSharedProtectionObserver *)self setHasDeviceBeenUnlockedSinceBoot:1];
  }

  return [(VMSharedProtectionObserver *)self hasDeviceBeenUnlockedSinceBoot];
}

@end