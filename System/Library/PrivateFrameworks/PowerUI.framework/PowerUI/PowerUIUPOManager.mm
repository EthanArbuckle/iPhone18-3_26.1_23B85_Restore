@interface PowerUIUPOManager
+ (id)sharedInstance;
- (PowerUIUPOManager)init;
- (id)mitigationsEnabledNotificationRequest;
- (void)clearMitigationsEnabledNotificationRequestIfNecessary;
- (void)dataProviderDidLoad;
- (void)displayMitigationsEnabledNotification;
- (void)registerForWithdrawalNotifications;
- (void)removeMitigationsEnabledNotification;
- (void)requestBulletin;
@end

@implementation PowerUIUPOManager

void __55__PowerUIUPOManager_registerForWithdrawalNotifications__block_invoke(uint64_t a1, int token)
{
  v28 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = *(*(a1 + 32) + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 8);
    *buf = 134218240;
    v25 = state64;
    v26 = 1024;
    v27 = v4;
    _os_log_impl(&dword_21B766000, v3, OS_LOG_TYPE_DEFAULT, "Lock state changed: %llu (Loaded = %u)", buf, 0x12u);
  }

  if (*(*(a1 + 32) + 8) == 1)
  {
    v5 = state64;
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = *(a1 + 32);
    if (v5)
    {
      v8 = v7[7];
      v7[7] = v6;

      v9 = *(*(a1 + 32) + 72);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 56);
        *buf = 138412290;
        v25 = v10;
        _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Locked at %@", buf, 0xCu);
      }

      goto LABEL_22;
    }

    v11 = [v7 upoTime];
    [v6 timeIntervalSinceDate:v11];
    v13 = v12;

    v14 = *(a1 + 32);
    if (v13 >= 180.0)
    {
      if (*(v14 + 56))
      {
        [v6 timeIntervalSinceDate:?];
        if (v17 >= 15.0)
        {
          ++*(*(*(a1 + 40) + 8) + 24);
          v18 = *(*(a1 + 32) + 72);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 67109120;
            LODWORD(v25) = v19;
            _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_DEFAULT, "Unlock Count: %d", buf, 8u);
          }

          if (*(*(*(a1 + 40) + 8) + 24) >= 1)
          {
            [*(a1 + 32) removeMitigationsEnabledNotification];
            v20 = *(a1 + 32);
            v21 = *(v20 + 16);
            if (v21 != -1)
            {
              notify_cancel(v21);
              v20 = *(a1 + 32);
            }

            notify_cancel(*(v20 + 12));
          }

          goto LABEL_21;
        }

        v15 = *(*(a1 + 32) + 72);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v25) = 15;
          v16 = "Device was locked for less than %ds. Not counting this unlock";
          goto LABEL_14;
        }
      }
    }

    else
    {
      v15 = *(v14 + 72);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v25) = 180;
        v16 = "Notification posted less than %ds ago. Not counting this unlock.";
LABEL_14:
        _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 8u);
      }
    }

LABEL_21:
  }

LABEL_22:
  v22 = *MEMORY[0x277D85DE8];
}

- (PowerUIUPOManager)init
{
  v25.receiver = self;
  v25.super_class = PowerUIUPOManager;
  v2 = [(PowerUIUPOManager *)&v25 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PowerUI.framework"];
    v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
    v5 = *(v2 + 3);
    *(v2 + 3) = v4;

    v6 = os_log_create("com.apple.thermalmonitor.ui", "mitigationsEnabled");
    v7 = *(v2 + 9);
    *(v2 + 9) = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.thermalmonitor.postUPONotificationResponseQueue", v8);
    v10 = *(v2 + 11);
    *(v2 + 11) = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, 2u, 0);

    v13 = dispatch_queue_create("com.apple.thermalmonitor.lockNotificationQueue", v12);
    v14 = *(v2 + 10);
    *(v2 + 10) = v13;

    *(v2 + 12) = -1;
    v15 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.powerui.thermalmonitor"];
    v16 = *(v2 + 4);
    *(v2 + 4) = v15;

    v17 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.thermalmonitor.mitigationsUI"];
    v18 = *(v2 + 5);
    *(v2 + 5) = v17;

    [v2 clearMitigationsEnabledNotificationRequestIfNecessary];
    out_token = 0;
    notify_register_dispatch("com.apple.language.changed", &out_token, MEMORY[0x277D85CD0], &__block_literal_global_5);
    v23 = 0;
    v19 = *(v2 + 11);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __25__PowerUIUPOManager_init__block_invoke_2;
    v21[3] = &unk_2782D3E60;
    v22 = v2;
    notify_register_dispatch("com.apple.thermalmonitor.testdisplayuponotification", &v23, v19, v21);
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__PowerUIUPOManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_manager;

  return v2;
}

uint64_t __35__PowerUIUPOManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_manager = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (void)dataProviderDidLoad
{
  v9 = *MEMORY[0x277D85DE8];
  self->_dataProviderLoaded = 1;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x277CBEAA8];
    v4 = log;
    v5 = [v3 date];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Data provider loaded: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)displayMitigationsEnabledNotification
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"bulletinPosted"];

  if (v3)
  {
    [(UNUserNotificationCenter *)self->_userNotificationCenter removeAllDeliveredNotifications];
  }

  v6 = [(PowerUIUPOManager *)self mitigationsEnabledNotificationRequest];
  [(UNUserNotificationCenter *)self->_userNotificationCenter addNotificationRequest:v6 withCompletionHandler:0];
  ADClientAddValueForScalarKey();
  [(NSUserDefaults *)self->_defaults setBool:1 forKey:@"bulletinPosted"];
  defaults = self->_defaults;
  v5 = [(PowerUIUPOManager *)self upoTime];
  [(NSUserDefaults *)defaults setObject:v5 forKey:@"upoTime"];
}

- (void)removeMitigationsEnabledNotification
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"bulletinPosted"];

  if (v3)
  {
    [(UNUserNotificationCenter *)self->_userNotificationCenter removeAllDeliveredNotifications];
  }

  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"upoTime"];
  defaults = self->_defaults;

  [(NSUserDefaults *)defaults removeObjectForKey:@"bulletinPosted"];
}

- (void)clearMitigationsEnabledNotificationRequestIfNecessary
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"bulletinPosted"];

  if (v3)
  {
    v4 = [(NSUserDefaults *)self->_defaults objectForKey:@"upoTime"];
    if (v4)
    {
      [(PowerUIUPOManager *)self setUpoTime:v4];
    }

    else
    {
      v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-180.0];
      [(PowerUIUPOManager *)self setUpoTime:v5];
    }
  }

  [(PowerUIUPOManager *)self registerForWithdrawalNotifications];
}

- (void)registerForWithdrawalNotifications
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  lockNotificationQueue = self->_lockNotificationQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __55__PowerUIUPOManager_registerForWithdrawalNotifications__block_invoke;
  handler[3] = &unk_2782D41D0;
  handler[4] = self;
  handler[5] = v7;
  notify_register_dispatch("com.apple.springboard.lockstate", &self->_unlockToken, lockNotificationQueue, handler);
  v4 = self->_lockNotificationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PowerUIUPOManager_registerForWithdrawalNotifications__block_invoke_33;
  v5[3] = &unk_2782D3E60;
  v5[4] = self;
  notify_register_dispatch("com.apple.thermalmonitor.ageAwareMitigationsDisabled", &self->_mitigationsDisabledToken, v4, v5);
  _Block_object_dispose(v7, 8);
}

uint64_t __55__PowerUIUPOManager_registerForWithdrawalNotifications__block_invoke_33(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "Mitigations disabled.", v6, 2u);
  }

  [*(a1 + 32) removeMitigationsEnabledNotification];
  v3 = *(a1 + 32);
  v4 = *(v3 + 12);
  if (v4 != -1)
  {
    notify_cancel(v4);
    v3 = *(a1 + 32);
  }

  return notify_cancel(*(v3 + 16));
}

- (void)requestBulletin
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Bulletin requested", buf, 2u);
  }

  v4 = [MEMORY[0x277CBEAA8] date];
  [(PowerUIUPOManager *)self setUpoTime:v4];

  v6 = 0;
  v5 = SBSSpringBoardBlockableServerPort();
  MEMORY[0x21CEF8550](v5, &v6, 900);
  [(PowerUIUPOManager *)self displayMitigationsEnabledNotification];
  [(PowerUIUPOManager *)self registerForWithdrawalNotifications];
}

- (id)mitigationsEnabledNotificationRequest
{
  v3 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v4 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"MITIGATIONS_UPO_ENABLED_TITLE" arguments:0];
  [v3 setTitle:v4];

  v5 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"MITIGATIONS_UPO_ENABLED_BODY" arguments:0];
  [v3 setBody:v5];

  [v3 setCategoryIdentifier:@"mitigations-enabled"];
  v6 = [(PowerUIUPOManager *)self upoTime];
  [v3 setDate:v6];

  [v3 setShouldSuppressScreenLightUp:1];
  v7 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Battery/BATTERY_HEALTH_TITLE"];
  [v3 setDefaultActionURL:v7];

  v8 = [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:@"com.apple.Preferences"];
  [v3 setIcon:v8];

  v9 = MEMORY[0x277CE1FC0];
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [v10 UUIDString];
  v12 = [v9 requestWithIdentifier:v11 content:v3 trigger:0];

  return v12;
}

@end