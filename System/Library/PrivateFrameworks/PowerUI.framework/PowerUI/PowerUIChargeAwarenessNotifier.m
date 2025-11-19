@interface PowerUIChargeAwarenessNotifier
+ (id)contentForType:(int)a3;
+ (id)sharedInstance;
- (BOOL)readHaveShownMCL;
- (BOOL)readHaveShownWireless;
- (BOOL)readNotificationPendingMCL;
- (BOOL)readNotificationPendingWireless;
- (PowerUIChargeAwarenessNotifier)init;
- (void)cancelNotificationRequestWithIdentifier:(id)a3;
- (void)displayNotificationForMCL:(BOOL)a3 forWireless:(BOOL)a4;
- (void)displayPendingMCLNotification;
- (void)displayPendingWirelessNotification;
- (void)forceDisplayMCLNotification:(id)a3;
- (void)forceDisplayWirelessChargingNotification:(id)a3;
- (void)postNotificationsIfNecessary;
- (void)readFirstInitDate;
- (void)userNotificationCenter:(id)a3 didOpenApplicationForResponse:(id)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation PowerUIChargeAwarenessNotifier

void __38__PowerUIChargeAwarenessNotifier_init__block_invoke_34(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PowerUIChargeAwarenessNotifier_init__block_invoke_2_35;
  block[3] = &unk_2782D3EA8;
  v4 = *(a1 + 32);
  dispatch_sync(v2, block);
}

- (void)postNotificationsIfNecessary
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_21B766000, a2, OS_LOG_TYPE_ERROR, "Unable to get battery properties: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (PowerUIChargeAwarenessNotifier)init
{
  v61 = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = PowerUIChargeAwarenessNotifier;
  v2 = [(PowerUIChargeAwarenessNotifier *)&v58 init];
  if (!v2)
  {
LABEL_43:
    v26 = v2;
    goto LABEL_44;
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.smartcharging.topoffprotection"];
  defaults = v2->_defaults;
  v2->_defaults = v3;

  v5 = os_log_create("com.apple.powerui", "chargingAwarenessNotifications");
  log = v2->_log;
  v2->_log = v5;

  v7 = [(PowerUIChargeAwarenessNotifier *)v2 log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "ChargingAwarenessNotifier initiating...", buf, 2u);
  }

  [(PowerUIChargeAwarenessNotifier *)v2 readFirstInitDate];
  v2->_allowNotificationsOverride = 0;
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    v8 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"allowMCLOverride" inDomain:@"com.apple.smartcharging.topoffprotection"];
    v9 = v8;
    if (v8)
    {
      v2->_allowNotificationsOverride = [v8 BOOLValue];
    }

    v10 = [(PowerUIChargeAwarenessNotifier *)v2 log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "... initialization allowed via override...", buf, 2u);
    }
  }

  v11 = [(PowerUIChargeAwarenessNotifier *)v2 readHaveShownMCL];
  v12 = [(PowerUIChargeAwarenessNotifier *)v2 readHaveShownWireless];
  if (v11 && v12 && !v2->_allowNotificationsOverride)
  {
    v24 = [(PowerUIChargeAwarenessNotifier *)v2 log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "... notifications were already shown, do not init.";
LABEL_28:
      _os_log_impl(&dword_21B766000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
    }
  }

  else
  {
    if ((MGGetBoolAnswer() & 1) != 0 || (MGGetBoolAnswer() & 1) != 0 || v2->_allowNotificationsOverride)
    {
      v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_queue_create("com.apple.powerui.chargingawarenessqueue", v13);
      queue = v2->_queue;
      v2->_queue = v14;

      v16 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.powerui.chargeawareness"];
      unCenter = v2->_unCenter;
      v2->_unCenter = v16;

      [(UNUserNotificationCenter *)v2->_unCenter setDelegate:v2];
      [(UNUserNotificationCenter *)v2->_unCenter setPrivateDelegate:v2];
      [(UNUserNotificationCenter *)v2->_unCenter setWantsNotificationResponsesDelivered];
      if (!v2->_haveShownMCL && [(PowerUIChargeAwarenessNotifier *)v2 readNotificationPendingMCL])
      {
        v18 = [MEMORY[0x277D4DA60] sharedNotifier];
        v19 = [v18 currentState];

        v20 = [(PowerUIChargeAwarenessNotifier *)v2 log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v60 = v19;
          _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "setup state: %lu", buf, 0xCu);
        }

        v21 = [(PowerUIChargeAwarenessNotifier *)v2 log];
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v19 > 1)
        {
          if (v22)
          {
            *buf = 0;
            _os_log_impl(&dword_21B766000, v21, OS_LOG_TYPE_DEFAULT, "MCL notification was pending, buddy complete, display now", buf, 2u);
          }

          [(PowerUIChargeAwarenessNotifier *)v2 displayPendingMCLNotification];
        }

        else
        {
          if (v22)
          {
            *buf = 0;
            _os_log_impl(&dword_21B766000, v21, OS_LOG_TYPE_DEFAULT, "MCL notification pending, set up callback", buf, 2u);
          }

          v23 = [MEMORY[0x277D4DA60] sharedNotifier];
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __38__PowerUIChargeAwarenessNotifier_init__block_invoke;
          v56[3] = &unk_2782D3EA8;
          v57 = v2;
          [v23 addStateCompletionObserver:v56 forState:2];
        }
      }

      if (!v2->_haveShownWireless && [(PowerUIChargeAwarenessNotifier *)v2 readNotificationPendingWireless])
      {
        v27 = [MEMORY[0x277D4DA60] sharedNotifier];
        v28 = [v27 currentState];

        v29 = [(PowerUIChargeAwarenessNotifier *)v2 log];
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (v28 > 1)
        {
          if (v30)
          {
            *buf = 0;
            _os_log_impl(&dword_21B766000, v29, OS_LOG_TYPE_DEFAULT, "wireless notification was pending, buddy complete, display now", buf, 2u);
          }

          [(PowerUIChargeAwarenessNotifier *)v2 displayPendingWirelessNotification];
        }

        else
        {
          if (v30)
          {
            *buf = 0;
            _os_log_impl(&dword_21B766000, v29, OS_LOG_TYPE_DEFAULT, "wireless notification pending, set up callback", buf, 2u);
          }

          v31 = [MEMORY[0x277D4DA60] sharedNotifier];
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __38__PowerUIChargeAwarenessNotifier_init__block_invoke_23;
          v54[3] = &unk_2782D3EA8;
          v55 = v2;
          [v31 addStateCompletionObserver:v54 forState:2];
        }
      }

      v32 = [MEMORY[0x277CFE318] userContext];
      context = v2->_context;
      v2->_context = v32;

      v34 = MEMORY[0x277CFE360];
      v35 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
      v36 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
      v37 = [MEMORY[0x277CFE338] keyPathForForegroundApp];
      v38 = [v34 predicateForKeyPath:v35 withFormat:@"(SELF.%@.value.rawExternalConnected = %@) AND NOT (SELF.%@.value = %@)", v36, MEMORY[0x277CBEC38], v37, @"com.apple.camera"];

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __38__PowerUIChargeAwarenessNotifier_init__block_invoke_34;
      v52[3] = &unk_2782D4138;
      v39 = v2;
      v53 = v39;
      v40 = MEMORY[0x21CEF8A60](v52);
      v41 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.powerui.chargingAwarenessNotifications" contextualPredicate:v38 clientIdentifier:@"com.apple.powerui.chargeAwarenessNotifier" callback:v40];
      [(_CDLocalContext *)v2->_context registerCallback:v41];
      *buf = 0;
      v42 = v2->_queue;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __38__PowerUIChargeAwarenessNotifier_init__block_invoke_3;
      handler[3] = &unk_2782D3E60;
      v43 = v39;
      v51 = v43;
      notify_register_dispatch("com.apple.powerui.testdisplaywireless", buf, v42, handler);
      out_token = 0;
      v44 = v2->_queue;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __38__PowerUIChargeAwarenessNotifier_init__block_invoke_47;
      v47[3] = &unk_2782D3E60;
      v48 = v43;
      notify_register_dispatch("com.apple.powerui.testdisplaynotifications", &out_token, v44, v47);

      goto LABEL_43;
    }

    v24 = [(PowerUIChargeAwarenessNotifier *)v2 log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "... features not supported, do not init.";
      goto LABEL_28;
    }
  }

  v26 = 0;
LABEL_44:

  v45 = *MEMORY[0x277D85DE8];
  return v26;
}

void __38__PowerUIChargeAwarenessNotifier_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PowerUIChargeAwarenessNotifier_init__block_invoke_2;
  block[3] = &unk_2782D3EA8;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

void __38__PowerUIChargeAwarenessNotifier_init__block_invoke_23(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PowerUIChargeAwarenessNotifier_init__block_invoke_2_24;
  block[3] = &unk_2782D3EA8;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

uint64_t __38__PowerUIChargeAwarenessNotifier_init__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to display wireless charging notification", v4, 2u);
  }

  return [*(a1 + 32) displayNotificationForMCL:0 forWireless:1];
}

uint64_t __38__PowerUIChargeAwarenessNotifier_init__block_invoke_47(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to display feature availability notifications", v4, 2u);
  }

  return [*(a1 + 32) postNotificationsIfNecessary];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[PowerUIChargeAwarenessNotifier sharedInstance];
  }

  v3 = sharedInstance_notifier_0;

  return v3;
}

uint64_t __48__PowerUIChargeAwarenessNotifier_sharedInstance__block_invoke()
{
  sharedInstance_notifier_0 = objc_alloc_init(PowerUIChargeAwarenessNotifier);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)readHaveShownWireless
{
  result = [(NSUserDefaults *)self->_defaults BOOLForKey:@"haveShownWirelessNotification"];
  self->_haveShownWireless = result;
  return result;
}

- (BOOL)readHaveShownMCL
{
  result = [(NSUserDefaults *)self->_defaults BOOLForKey:@"haveShownMCLNotification"];
  self->_haveShownMCL = result;
  return result;
}

- (BOOL)readNotificationPendingMCL
{
  result = [(NSUserDefaults *)self->_defaults BOOLForKey:@"notificationPendingMCL"];
  self->_notificationPendingMCL = result;
  return result;
}

- (BOOL)readNotificationPendingWireless
{
  result = [(NSUserDefaults *)self->_defaults BOOLForKey:@"notificationPendingWireless"];
  self->_notificationPendingWireless = result;
  return result;
}

- (void)displayPendingMCLNotification
{
  [(PowerUIChargeAwarenessNotifier *)self displayNotificationForMCL:1 forWireless:0];
  self->_notificationPendingMCL = 0;
  defaults = self->_defaults;

  [(NSUserDefaults *)defaults setBool:0 forKey:@"notificationPendingMCL"];
}

- (void)displayPendingWirelessNotification
{
  [(PowerUIChargeAwarenessNotifier *)self displayNotificationForMCL:0 forWireless:1];
  self->_notificationPendingWireless = 0;
  defaults = self->_defaults;

  [(NSUserDefaults *)defaults setBool:0 forKey:@"notificationPendingWireless"];
}

- (void)readFirstInitDate
{
  [(NSUserDefaults *)self->_defaults doubleForKey:@"firstInitDate"];
  if (v3 == 0.0)
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    [v4 timeIntervalSinceReferenceDate];
    self->_firstInitDate = v5;

    defaults = self->_defaults;
    firstInitDate = self->_firstInitDate;

    [(NSUserDefaults *)defaults setDouble:@"firstInitDate" forKey:firstInitDate];
  }

  else
  {
    self->_firstInitDate = v3;
  }
}

+ (id)contentForType:(int)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PowerUI.framework"];
  v6 = [MEMORY[0x277CCA8D8] bundleWithURL:v5];
  v7 = v6;
  if (!a3)
  {
    v8 = @"bolt.fill";
    v9 = @"lotxMCLCategory";
    v10 = @"AWARENESS_CHARGING_NOTIFICATION_LIMIT_CONTENT";
    v11 = @"AWARENESS_CHARGING_NOTIFICATION_LIMIT_TITLE";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v8 = @"wirelesscharging";
    v9 = @"lotxWirelessCategory";
    v10 = @"AWARENESS_CHARGING_NOTIFICATION_WIRELESS_CONTENT";
    v11 = @"AWARENESS_CHARGING_NOTIFICATION_WIRELESS_TITLE";
LABEL_5:
    v12 = [v6 localizedStringForKey:v11 value:&stru_282D0B728 table:@"Localizable-LotX"];
    [v4 setTitle:v12];

    v13 = [v7 localizedStringForKey:v10 value:&stru_282D0B728 table:@"Localizable-LotX"];
    [v4 setBody:v13];

    [v4 setCategoryIdentifier:v9];
    v14 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:v8];
    [v4 setIcon:v14];

    [v4 setShouldIgnoreDowntime:1];
    [v4 setShouldIgnoreDoNotDisturb:1];
    [v4 setShouldHideDate:1];
    [v4 setShouldSuppressScreenLightUp:1];
    v15 = [MEMORY[0x277CBEAA8] distantFuture];
    [v4 setExpirationDate:v15];

    [v4 setShouldDisplayActionsInline:1];
    [v4 setShouldSuppressDefaultAction:1];
    v16 = [MEMORY[0x277CBEAA8] distantFuture];
    [v4 setDate:v16];

    v17 = v4;
    goto LABEL_7;
  }

  v17 = 0;
LABEL_7:

  return v17;
}

- (void)forceDisplayMCLNotification:(id)a3
{
  v4 = a3;
  [(PowerUIChargeAwarenessNotifier *)self cancelNotificationRequestWithIdentifier:@"chargingAwareness-0"];
  v5 = [objc_opt_class() requestForContent:0];
  if (v5)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Displaying MCL Notification", v7, 2u);
    }

    [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v5 withCompletionHandler:v4];
  }
}

- (void)forceDisplayWirelessChargingNotification:(id)a3
{
  v4 = a3;
  [(PowerUIChargeAwarenessNotifier *)self cancelNotificationRequestWithIdentifier:@"chargingAwareness-1"];
  v5 = [objc_opt_class() requestForContent:1];
  if (v5)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Displaying Wireless Notification", v7, 2u);
    }

    [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v5 withCompletionHandler:v4];
  }
}

- (void)cancelNotificationRequestWithIdentifier:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  unCenter = self->_unCenter;
  v12[0] = a3;
  v5 = MEMORY[0x277CBEA60];
  v6 = a3;
  v7 = [v5 arrayWithObjects:v12 count:1];
  [(UNUserNotificationCenter *)unCenter removeDeliveredNotificationsWithIdentifiers:v7];

  v8 = self->_unCenter;
  v11 = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [(UNUserNotificationCenter *)v8 removePendingNotificationRequestsWithIdentifiers:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)displayNotificationForMCL:(BOOL)a3 forWireless:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v47 = *MEMORY[0x277D85DE8];
  if ((!_os_feature_enabled_impl() || (MGGetBoolAnswer() & 1) == 0) && !self->_allowNotificationsOverride)
  {
    log = self->_log;
    v4 = 0;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Feature not enabled or not supported.", buf, 2u);
      v4 = 0;
    }
  }

  if ((!_os_feature_enabled_impl() || !MGGetBoolAnswer() || (MGGetBoolAnswer() & 1) == 0) && !self->_allowNotificationsOverride)
  {
    v8 = self->_log;
    v5 = 0;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Feature not enabled or not supported.", buf, 2u);
      v5 = 0;
    }
  }

  if (self->_haveShownWireless)
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(PowerUIChargeAwarenessNotifier *)v9 displayNotificationForMCL:v10 forWireless:v11, v12, v13, v14, v15, v16];
    }

    v4 = 0;
  }

  if (self->_haveShownMCL)
  {
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(PowerUIChargeAwarenessNotifier *)v17 displayNotificationForMCL:v18 forWireless:v19, v20, v21, v22, v23, v24];
    }

    v5 = 0;
  }

  if (v4 || v5)
  {
    if (v4)
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __72__PowerUIChargeAwarenessNotifier_displayNotificationForMCL_forWireless___block_invoke;
      v44[3] = &unk_2782D4160;
      v44[4] = self;
      [(PowerUIChargeAwarenessNotifier *)self forceDisplayWirelessChargingNotification:v44];
    }

    if (v5)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __72__PowerUIChargeAwarenessNotifier_displayNotificationForMCL_forWireless___block_invoke_119;
      v43[3] = &unk_2782D4160;
      v43[4] = self;
      [(PowerUIChargeAwarenessNotifier *)self forceDisplayMCLNotification:v43];
    }

    v25 = [MEMORY[0x277CBEB38] dictionary];
    v26 = MEMORY[0x277CCABB0];
    v27 = [MEMORY[0x277CBEAA8] now];
    [v27 timeIntervalSinceReferenceDate];
    v29 = [v26 numberWithInt:((v28 - self->_firstInitDate) / 86400.0)];
    [v25 setObject:v29 forKeyedSubscript:@"daysSinceInit"];

    v30 = @"Wireless";
    if (v4 && v5)
    {
      v30 = @"Both";
    }

    if (v4)
    {
      v31 = v30;
    }

    else
    {
      v31 = @"ManualChargeLimit";
    }

    [v25 setObject:v31 forKeyedSubscript:@"notificationType"];
    v32 = v25;
    AnalyticsSendEventLazy();
    v33 = self->_log;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v32;
      _os_log_impl(&dword_21B766000, v33, OS_LOG_TYPE_DEFAULT, "Sending charge awareness CA event: %@", buf, 0xCu);
    }
  }

  else
  {
    v34 = self->_log;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [(PowerUIChargeAwarenessNotifier *)v34 displayNotificationForMCL:v35 forWireless:v36, v37, v38, v39, v40, v41];
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __72__PowerUIChargeAwarenessNotifier_displayNotificationForMCL_forWireless___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = v4[8];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __72__PowerUIChargeAwarenessNotifier_displayNotificationForMCL_forWireless___block_invoke_cold_1(v3, v5);
    }
  }

  else
  {
    [v4 recordHaveShownWireless];
  }
}

void __72__PowerUIChargeAwarenessNotifier_displayNotificationForMCL_forWireless___block_invoke_119(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = v4[8];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __72__PowerUIChargeAwarenessNotifier_displayNotificationForMCL_forWireless___block_invoke_119_cold_1(v3, v5);
    }
  }

  else
  {
    [v4 recordHaveShownMCL];
  }
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v39 = v9;
    v40 = 2112;
    v41 = v8;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_INFO, "notification request response coming in %@ for center %@", buf, 0x16u);
  }

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [v9 actionIdentifier];
    *buf = 138412290;
    v39 = v14;
    _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_INFO, "notification request coming in: %@", buf, 0xCu);
  }

  v15 = [MEMORY[0x277CBEB38] dictionary];
  [v15 setObject:0 forKeyedSubscript:@"notificationType"];
  [v15 setObject:@"error" forKeyedSubscript:@"action"];
  v16 = [v9 notification];
  v17 = [v16 request];
  v18 = [v17 content];
  v19 = [v18 categoryIdentifier];
  v20 = [v19 isEqualToString:@"lotxWirelessCategory"];

  if (v20)
  {
    v21 = @"wireless";
  }

  else
  {
    v22 = [v9 notification];
    v23 = [v22 request];
    v24 = [v23 content];
    v25 = [v24 categoryIdentifier];
    v26 = [v25 isEqualToString:@"lotxMCLCategory"];

    if (!v26)
    {
      goto LABEL_10;
    }

    v21 = @"mcl";
  }

  [v15 setObject:v21 forKeyedSubscript:@"notificationType"];
LABEL_10:
  v27 = [v15 objectForKeyedSubscript:@"notificationType"];

  if (!v27)
  {
    goto LABEL_22;
  }

  v28 = [v9 actionIdentifier];
  v29 = [v28 isEqualToString:@"poweruiNoOp"];

  if (v29)
  {
    [v15 setObject:@"selectedOK" forKeyedSubscript:@"action"];
    v30 = [(PowerUIChargeAwarenessNotifier *)self log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v15 objectForKeyedSubscript:@"notificationType"];
      *buf = 138412290;
      v39 = v31;
      v32 = "User selected 'OK' on %@ notification";
LABEL_17:
      _os_log_impl(&dword_21B766000, v30, OS_LOG_TYPE_DEFAULT, v32, buf, 0xCu);

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v33 = [v9 actionIdentifier];
  v34 = [v33 isEqualToString:*MEMORY[0x277CE20F0]];

  if (v34)
  {
    [v15 setObject:@"dismissed" forKeyedSubscript:@"action"];
    v30 = [(PowerUIChargeAwarenessNotifier *)self log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v15 objectForKeyedSubscript:@"notificationType"];
      *buf = 138412290;
      v39 = v31;
      v32 = "User dismissed %@ notification";
      goto LABEL_17;
    }

LABEL_18:
  }

  v35 = [(PowerUIChargeAwarenessNotifier *)self log];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v15;
    _os_log_impl(&dword_21B766000, v35, OS_LOG_TYPE_DEFAULT, "Logging to CA: %@", buf, 0xCu);
  }

  v37 = v15;
  AnalyticsSendEventLazy();

LABEL_22:
  v10[2](v10);

  v36 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)a3 didOpenApplicationForResponse:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v25 = v7;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_INFO, "notification request response coming in %@ for center %@", buf, 0x16u);
  }

  v9 = self->_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v7 actionIdentifier];
    *buf = 138412290;
    v25 = v11;
    _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_INFO, "notification request coming in: %@", buf, 0xCu);
  }

  v12 = [MEMORY[0x277CBEB38] dictionary];
  [v12 setObject:0 forKeyedSubscript:@"notificationType"];
  [v12 setObject:@"selectedLearnMore" forKeyedSubscript:@"action"];
  v13 = [v7 actionIdentifier];
  v14 = [v13 isEqualToString:@"poweruiLearnMoreWireless"];

  if (v14)
  {
    v15 = @"wireless";
  }

  else
  {
    v16 = [v7 actionIdentifier];
    v17 = [v16 isEqualToString:@"poweruiLearnMoreMCL"];

    if (!v17)
    {
      goto LABEL_10;
    }

    v15 = @"mcl";
  }

  [v12 setObject:v15 forKeyedSubscript:@"notificationType"];
LABEL_10:
  v18 = [v12 objectForKeyedSubscript:@"notificationType"];

  if (v18)
  {
    v19 = [(PowerUIChargeAwarenessNotifier *)self log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v12 objectForKeyedSubscript:@"notificationType"];
      *buf = 138412290;
      v25 = v20;
      _os_log_impl(&dword_21B766000, v19, OS_LOG_TYPE_DEFAULT, "User selected 'learn more' on %@ notification", buf, 0xCu);
    }

    v21 = [(PowerUIChargeAwarenessNotifier *)self log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_21B766000, v21, OS_LOG_TYPE_DEFAULT, "Logging to CA: %@", buf, 0xCu);
    }

    v23 = v12;
    AnalyticsSendEventLazy();
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __72__PowerUIChargeAwarenessNotifier_displayNotificationForMCL_forWireless___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21B766000, a2, OS_LOG_TYPE_ERROR, "Error showing wireless charging notification: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __72__PowerUIChargeAwarenessNotifier_displayNotificationForMCL_forWireless___block_invoke_119_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21B766000, a2, OS_LOG_TYPE_ERROR, "Error showing mcl charging notification: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end