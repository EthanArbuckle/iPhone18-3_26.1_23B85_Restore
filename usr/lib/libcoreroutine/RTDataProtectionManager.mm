@interface RTDataProtectionManager
+ (id)dataProtectionLockStateToString:(int64_t)string;
+ (id)encryptedDataAvailabilityToString:(int64_t)string;
- (RTDataProtectionManager)init;
- (RTDataProtectionManager)initWithKeybagMonitor:(id)monitor notificationHelper:(id)helper;
- (void)_shutdownWithHandler:(id)handler;
- (void)dealloc;
- (void)fetchLockStateDisabledWithHandler:(id)handler;
- (void)handleKeybagLockStatusChange:(int64_t)change;
- (void)handleUnlockedSinceBoot;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
@end

@implementation RTDataProtectionManager

- (RTDataProtectionManager)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(RTDataProtectionManager *)self initWithKeybagMonitor:v3 notificationHelper:v4];

  return v5;
}

- (RTDataProtectionManager)initWithKeybagMonitor:(id)monitor notificationHelper:(id)helper
{
  monitorCopy = monitor;
  helperCopy = helper;
  v12.receiver = self;
  v12.super_class = RTDataProtectionManager;
  v9 = [(RTNotifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notificationHelper, helper);
    objc_storeStrong(&v10->_keybagMonitor, monitor);
    v10->_encryptedDataAvailability = 0;
    v10->_unlockedSinceBoot = 1;
  }

  return v10;
}

+ (id)dataProtectionLockStateToString:(int64_t)string
{
  if (string > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788D3508[string];
  }
}

+ (id)encryptedDataAvailabilityToString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2788D3528[string - 1];
  }
}

- (void)dealloc
{
  notificationHelper = [(RTDataProtectionManager *)self notificationHelper];
  [notificationHelper removeObserver:self center:CFNotificationCenterGetDarwinNotifyCenter() key:@"com.apple.mobile.keybagd.lock_status" info:0];

  notificationHelper2 = [(RTDataProtectionManager *)self notificationHelper];
  [notificationHelper2 removeObserver:self center:CFNotificationCenterGetDarwinNotifyCenter() key:@"com.apple.mobile.keybagd.first_unlock" info:0];

  v5.receiver = self;
  v5.super_class = RTDataProtectionManager;
  [(RTDataProtectionManager *)&v5 dealloc];
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  notificationHelper = [(RTDataProtectionManager *)self notificationHelper];
  [notificationHelper removeObserver:self center:CFNotificationCenterGetDarwinNotifyCenter() key:@"com.apple.mobile.keybagd.lock_status" info:0];

  notificationHelper2 = [(RTDataProtectionManager *)self notificationHelper];
  [notificationHelper2 removeObserver:self center:CFNotificationCenterGetDarwinNotifyCenter() key:@"com.apple.mobile.keybagd.first_unlock" info:0];

  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v6 = handlerCopy;
  }
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v32 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  v8 = +[(RTNotification *)RTDataProtectionManagerNotificationEncryptedDataAvailability];
  v9 = [(__CFString *)nameCopy isEqualToString:v8];

  if (v9)
  {
    if ([(RTNotifier *)self getNumberOfObservers:nameCopy]== 1)
    {
      notificationHelper = [(RTDataProtectionManager *)self notificationHelper];
      [notificationHelper addObserver:self center:CFNotificationCenterGetDarwinNotifyCenter() key:@"com.apple.mobile.keybagd.lock_status" callback:onKeybagLockStatusChange info:0 suspensionBehavior:1];

      keybagMonitor = [(RTDataProtectionManager *)self keybagMonitor];
      getDeviceLockState = [keybagMonitor getDeviceLockState];

      if (getDeviceLockState < 0)
      {
        v24 = _rt_log_facility_get_os_log(RTLogFacilityDataProtection);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v28 = 134217984;
          v29 = getDeviceLockState;
          _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Failed to determine lock state, %ld", &v28, 0xCu);
        }

        selfCopy2 = self;
        v14 = 0;
      }

      else
      {
        selfCopy2 = self;
        if (getDeviceLockState == 2)
        {
          v14 = 3;
        }

        else if (getDeviceLockState == 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }
      }

      [(RTDataProtectionManager *)selfCopy2 setEncryptedDataAvailability:v14];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v25 = _rt_log_facility_get_os_log(RTLogFacilityDataProtection);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = [RTDataProtectionManager dataProtectionLockStateToString:getDeviceLockState];
          v27 = [RTDataProtectionManager encryptedDataAvailabilityToString:[(RTDataProtectionManager *)self encryptedDataAvailability]];
          v28 = 138412546;
          v29 = v26;
          v30 = 2112;
          v31 = v27;
          _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "lock state, %@, encrypted data availability, %@", &v28, 0x16u);
        }
      }
    }

    v22 = [[RTDataProtectionManagerNotificationEncryptedDataAvailability alloc] initWithEncryptedDataAvailability:[(RTDataProtectionManager *)self encryptedDataAvailability]];
LABEL_29:
    p_super = &v22->super.super;
    [(RTNotifier *)self postNotification:v22 toObserver:observerCopy];
    goto LABEL_30;
  }

  v15 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
  v16 = [(__CFString *)nameCopy isEqualToString:v15];

  if (v16)
  {
    if ([(RTNotifier *)self getNumberOfObservers:nameCopy]== 1)
    {
      notificationHelper2 = [(RTDataProtectionManager *)self notificationHelper];
      [notificationHelper2 addObserver:self center:CFNotificationCenterGetDarwinNotifyCenter() key:@"com.apple.mobile.keybagd.first_unlock" callback:onUnlockedSinceBoot info:0 suspensionBehavior:1];
    }

    keybagMonitor2 = [(RTDataProtectionManager *)self keybagMonitor];
    -[RTDataProtectionManager setUnlockedSinceBoot:](self, "setUnlockedSinceBoot:", [keybagMonitor2 getUnlockedSinceBoot]);

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityDataProtection);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        unlockedSinceBoot = [(RTDataProtectionManager *)self unlockedSinceBoot];
        v21 = @"NO";
        if (unlockedSinceBoot)
        {
          v21 = @"YES";
        }

        v28 = 138412290;
        v29 = v21;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "unlocked since boot, %@", &v28, 0xCu);
      }
    }

    v22 = [[RTDataProtectionManagerNotificationUnlockedSinceBoot alloc] initWithUnlockedSinceBoot:[(RTDataProtectionManager *)self unlockedSinceBoot]];
    goto LABEL_29;
  }

  p_super = _rt_log_facility_get_os_log(RTLogFacilityDataProtection);
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
  {
    v28 = 138412290;
    v29 = nameCopy;
    _os_log_error_impl(&dword_2304B3000, p_super, OS_LOG_TYPE_ERROR, "unhandled notification %@", &v28, 0xCu);
  }

LABEL_30:
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = +[(RTNotification *)RTDataProtectionManagerNotificationEncryptedDataAvailability];
  v7 = [nameCopy isEqualToString:v6];

  if (v7)
  {
    if (![(RTNotifier *)self getNumberOfObservers:nameCopy])
    {
      notificationHelper = [(RTDataProtectionManager *)self notificationHelper];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v10 = @"com.apple.mobile.keybagd.lock_status";
LABEL_7:
      [notificationHelper removeObserver:self center:DarwinNotifyCenter key:v10 info:0];
    }
  }

  else
  {
    v11 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
    v12 = [nameCopy isEqualToString:v11];

    if (v12)
    {
      if (![(RTNotifier *)self getNumberOfObservers:nameCopy])
      {
        notificationHelper = [(RTDataProtectionManager *)self notificationHelper];
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v10 = @"com.apple.mobile.keybagd.first_unlock";
        goto LABEL_7;
      }
    }

    else
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityDataProtection);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = nameCopy;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "unhandled notification %@", &v14, 0xCu);
      }
    }
  }
}

- (void)handleKeybagLockStatusChange:(int64_t)change
{
  queue = [(RTNotifier *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__RTDataProtectionManager_handleKeybagLockStatusChange___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = change;
  dispatch_async(queue, v6);
}

void __56__RTDataProtectionManager_handleKeybagLockStatusChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) encryptedDataAvailability];
  v3 = *(a1 + 40);
  v4 = 2;
  if (v3 == 2)
  {
    v4 = 3;
  }

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  [*(a1 + 32) setEncryptedDataAvailability:v5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDataProtection);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [RTDataProtectionManager dataProtectionLockStateToString:*(a1 + 40)];
      v8 = +[RTDataProtectionManager encryptedDataAvailabilityToString:](RTDataProtectionManager, "encryptedDataAvailabilityToString:", [*(a1 + 32) encryptedDataAvailability]);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "received lock state change, %@, encrypted data availability, %@", &v10, 0x16u);
    }
  }

  if ([*(a1 + 32) encryptedDataAvailability] != v2)
  {
    v9 = [[RTDataProtectionManagerNotificationEncryptedDataAvailability alloc] initWithEncryptedDataAvailability:*(*(a1 + 32) + 56)];
    [*(a1 + 32) postNotification:v9];
  }
}

- (void)handleUnlockedSinceBoot
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTDataProtectionManager_handleUnlockedSinceBoot__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__RTDataProtectionManager_handleUnlockedSinceBoot__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityDataProtection);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "received unlock since boot notification", v4, 2u);
    }
  }

  [*(a1 + 32) setUnlockedSinceBoot:1];
  v3 = -[RTDataProtectionManagerNotificationUnlockedSinceBoot initWithUnlockedSinceBoot:]([RTDataProtectionManagerNotificationUnlockedSinceBoot alloc], "initWithUnlockedSinceBoot:", [*(a1 + 32) unlockedSinceBoot]);
  [*(a1 + 32) postNotification:v3];
}

- (void)fetchLockStateDisabledWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__RTDataProtectionManager_fetchLockStateDisabledWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __61__RTDataProtectionManager_fetchLockStateDisabledWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keybagMonitor];
  [v2 getDeviceLockState];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

@end