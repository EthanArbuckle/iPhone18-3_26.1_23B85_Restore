@interface PowerUIIBLMNotificationManager
+ (id)sharedInstance;
- (PowerUIIBLMNotificationManager)init;
- (void)displayIBLMEngagedNotification;
- (void)recordIBLMFirstUserNotificationResponse:(int64_t)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation PowerUIIBLMNotificationManager

- (PowerUIIBLMNotificationManager)init
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = PowerUIIBLMNotificationManager;
  v2 = [(PowerUIIBLMNotificationManager *)&v13 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerui.iblm", "NotificationManager");
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.powerui.iblmnotificationmanager.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.osintelligence.notifications"];
    unCenter = v2->_unCenter;
    v2->_unCenter = v8;

    [(UNUserNotificationCenter *)v2->_unCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_unCenter setWantsNotificationResponsesDelivered];
    v10 = v2->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = @"com.apple.osi.iblm.engagedNotification";
      _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "PowerUIIBLMNotificationManager initialized with bundle identifier: %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_once_1 != -1)
  {
    +[PowerUIIBLMNotificationManager sharedInstance];
  }

  v3 = sharedInstance_instance_1;

  return v3;
}

void __48__PowerUIIBLMNotificationManager_sharedInstance__block_invoke()
{
  if (!sharedInstance_instance_1)
  {
    sharedInstance_instance_1 = objc_alloc_init(PowerUIIBLMNotificationManager);

    MEMORY[0x2821F96F8]();
  }
}

- (void)displayIBLMEngagedNotification
{
  v26 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Posting First time IBLM notification", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.osintelligence.notifications.bundle"];
  v6 = [MEMORY[0x277CCA8D8] bundleWithURL:v5];
  v7 = [v6 localizedStringForKey:@"ADAPTIVE_POWER_FIRST_TIME_TITLE" value:&stru_282D0B728 table:@"Localizable-IBLM"];
  [v4 setTitle:v7];

  v8 = [v6 localizedStringForKey:@"ADAPTIVE_POWER_FIRST_TIME_BODY" value:&stru_282D0B728 table:@"Localizable-IBLM"];
  [v4 setBody:v8];

  v9 = self->_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v4 title];
    v12 = [v4 body];
    *buf = 138412546;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Content title : %@, Body %@", buf, 0x16u);
  }

  [v4 setShouldIgnoreDowntime:1];
  [v4 setShouldIgnoreDoNotDisturb:1];
  [v4 setShouldHideDate:1];
  [v4 setShouldSuppressScreenLightUp:1];
  v13 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Battery/POWER_MODE_SPECIFIER_IDENTIFIER"];
  [v4 setDefaultActionURL:v13];

  [v4 setShouldPreventNotificationDismissalAfterDefaultAction:0];
  [v4 setShouldBackgroundDefaultAction:1];
  [v4 setCategoryIdentifier:@"firstTimeIBLMCategory"];
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
  [v4 setExpirationDate:v14];

  v15 = [MEMORY[0x277CE1FB0] iconNamed:@"battery-rcl"];
  [v4 setIcon:v15];

  v16 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"IBLM-Engaged" content:v4 trigger:0];
  [v16 setDestinations:3];
  objc_initWeak(buf, self);
  unCenter = self->_unCenter;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__PowerUIIBLMNotificationManager_displayIBLMEngagedNotification__block_invoke;
  v19[3] = &unk_2782D4810;
  objc_copyWeak(&v21, buf);
  v20 = @"IBLM-Engaged";
  [(UNUserNotificationCenter *)unCenter addNotificationRequest:v16 withCompletionHandler:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v18 = *MEMORY[0x277D85DE8];
}

void __64__PowerUIIBLMNotificationManager_displayIBLMEngagedNotification__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained log];
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __64__PowerUIIBLMNotificationManager_displayIBLMEngagedNotification__block_invoke_cold_1(a1, v3, v7);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "Successfully posted IBLM notification with identifier: %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)recordIBLMFirstUserNotificationResponse:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CFE318] userContext];
  v7 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:v6];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  [v5 setObject:v8 forKeyedSubscript:@"batteryLevel"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v9 forKeyedSubscript:@"notificationResponse"];

  v10 = v5;
  AnalyticsSendEventLazy();
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v10;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Sending IBLM User Notification CA event: %@", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = log;
    v13 = [v9 actionIdentifier];
    v20 = 138412290;
    v21 = v13;
    _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "IBLM notification response received: %@", &v20, 0xCu);
  }

  v14 = [v9 actionIdentifier];
  v15 = [v14 isEqualToString:*MEMORY[0x277CE20F0]];

  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v17 = [v9 actionIdentifier];
    v18 = [v17 isEqualToString:*MEMORY[0x277CE20E8]];

    if (v18)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }
  }

  [(PowerUIIBLMNotificationManager *)self recordIBLMFirstUserNotificationResponse:v16];
  v10[2](v10);

  v19 = *MEMORY[0x277D85DE8];
}

void __64__PowerUIIBLMNotificationManager_displayIBLMEngagedNotification__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_21B766000, log, OS_LOG_TYPE_ERROR, "Failed to post IBLM notification with identifier %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end