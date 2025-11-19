@interface PowerUIRuntimeAwarenessNotifier
+ (id)sharedInstance;
- (BOOL)shouldAdviseToCharge;
- (BOOL)shouldThrottleChargingAdviceNotification;
- (PowerUIRuntimeAwarenessNotifier)init;
- (void)checkBatteryLevelAndPostNotificationIfNeeded;
@end

@implementation PowerUIRuntimeAwarenessNotifier

- (PowerUIRuntimeAwarenessNotifier)init
{
  v34.receiver = self;
  v34.super_class = PowerUIRuntimeAwarenessNotifier;
  v2 = [(PowerUIRuntimeAwarenessNotifier *)&v34 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerui", "runtimeAwarenessNotifications");
    log = v2->_log;
    v2->_log = v3;

    v5 = [(PowerUIRuntimeAwarenessNotifier *)v2 log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "RuntimeAwarenessNotifier initiating...", buf, 2u);
    }

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.powerui.runtimeawarenessqueue", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v2->_lastSeenBatteryLevel = -1;
  }

  v9 = [MEMORY[0x277D36CC8] predictor];
  batteryPredictor = v2->_batteryPredictor;
  v2->_batteryPredictor = v9;

  v11 = [PowerUILocationSignalMonitor monitorWithDelegate:v2];
  locationMonitor = v2->_locationMonitor;
  v2->_locationMonitor = v11;

  v13 = [PowerUISmartChargeUtilities dateForPreferenceKey:@"lastChargingAdviceNotificationDate" inDomain:@"com.apple.powerui.runtimeAwareness"];
  lastChargingAdviceNotificationDate = v2->_lastChargingAdviceNotificationDate;
  v2->_lastChargingAdviceNotificationDate = v13;

  v15 = [MEMORY[0x277CFE318] userContext];
  context = v2->_context;
  v2->_context = v15;

  v17 = MEMORY[0x277CFE360];
  v18 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v19 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v20 = [v17 predicateForKeyPath:v18 withFormat:@"(SELF.%@.value.rawExternalConnected = %@)", v19, MEMORY[0x277CBEC28]];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __39__PowerUIRuntimeAwarenessNotifier_init__block_invoke;
  v32[3] = &unk_2782D4138;
  v21 = v2;
  v33 = v21;
  v22 = MEMORY[0x21CEF8A60](v32);
  v23 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.powerui.runtimeAwarenessNotifications" contextualPredicate:v20 clientIdentifier:@"com.apple.powerui.runtimeAwarenessNotifier" callback:v22];
  [(_CDLocalContext *)v2->_context registerCallback:v23];
  *buf = 0;
  v24 = v21->_queue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __39__PowerUIRuntimeAwarenessNotifier_init__block_invoke_25;
  handler[3] = &unk_2782D3E60;
  v25 = v21;
  v30 = v25;
  notify_register_dispatch("com.apple.powerui.runtimeAwareness.run", buf, v24, handler);
  v26 = v30;
  v27 = v25;

  return v27;
}

void __39__PowerUIRuntimeAwarenessNotifier_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PowerUIRuntimeAwarenessNotifier_init__block_invoke_2;
  block[3] = &unk_2782D3EA8;
  v4 = *(a1 + 32);
  dispatch_sync(v2, block);
}

uint64_t __39__PowerUIRuntimeAwarenessNotifier_init__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B766000, v2, OS_LOG_TYPE_DEFAULT, "Triggering LRN check", v4, 2u);
  }

  return [*(a1 + 32) checkBatteryLevelAndPostNotificationIfNeeded];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[PowerUIRuntimeAwarenessNotifier sharedInstance];
  }

  v3 = sharedInstance_notifier_1;

  return v3;
}

uint64_t __49__PowerUIRuntimeAwarenessNotifier_sharedInstance__block_invoke()
{
  sharedInstance_notifier_1 = objc_alloc_init(PowerUIRuntimeAwarenessNotifier);

  return MEMORY[0x2821F96F8]();
}

- (void)checkBatteryLevelAndPostNotificationIfNeeded
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    lastSeenBatteryLevel = self->_lastSeenBatteryLevel;
    v15 = 134218240;
    v16 = v3;
    v17 = 2048;
    v18 = lastSeenBatteryLevel;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Current battery level: %ld%%, last seen: %ld%%", &v15, 0x16u);
  }

  if (v3 != self->_lastSeenBatteryLevel)
  {
    if (_os_feature_enabled_impl())
    {
      if (+[PowerUISmartChargeUtilities isInternalBuild])
      {
        if (v3 <= 49)
        {
          if ([(PowerUIRuntimeAwarenessNotifier *)self shouldAdviseToCharge])
          {
            if (![(PowerUIRuntimeAwarenessNotifier *)self shouldThrottleChargingAdviceNotification])
            {
              v6 = +[PowerUINotificationManager sharedInstance];
              v7 = [v6 postChargingAdviceNotification];

              v8 = [MEMORY[0x277CBEAA8] date];
              lastChargingAdviceNotificationDate = self->_lastChargingAdviceNotificationDate;
              self->_lastChargingAdviceNotificationDate = v8;

              [PowerUISmartChargeUtilities setDate:self->_lastChargingAdviceNotificationDate forPreferenceKey:@"lastChargingAdviceNotificationDate" inDomain:@"com.apple.powerui.runtimeAwareness"];
              v10 = self->_log;
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v15) = 0;
                _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Posted internal charging advice notification, next eligible in 16 hours", &v15, 2u);
              }
            }
          }
        }
      }
    }

    if (_os_feature_enabled_impl() && +[PowerUISmartChargeUtilities isInternalBuild]&& v3 == 3 && self->_lastSeenBatteryLevel != 3)
    {
      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 67109120;
        LODWORD(v16) = 3;
        _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Battery level changed to exactly %d%%", &v15, 8u);
      }

      v12 = +[PowerUINotificationManager sharedInstance];
      v13 = [v12 postLowRuntimeNotification];
    }

    self->_lastSeenBatteryLevel = v3;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldAdviseToCharge
{
  v33 = *MEMORY[0x277D85DE8];
  [(PowerUILocationSignalMonitor *)self->_locationMonitor requiredFullChargeDate];
  v3 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  v5 = [*&v3 isEqualToDate:v4];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [v6 components:32 fromDate:v7];
    v9 = [v8 hour];
    if ((v9 - 21) <= 0xFFFFFFFFFFFFFFF0)
    {
      v10 = *&v9;
      log = self->_log;
      v12 = 0;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 134217984;
        v30 = v10;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Not showing internal charging advice during nighttime hours (current hour: %ld)", &v29, 0xCu);
        v12 = 0;
      }

      goto LABEL_19;
    }

    v14 = [v6 components:28 fromDate:v7];
    [v14 setHour:21];
    [v14 setMinute:0];
    [v14 setSecond:0];
    v15 = [v6 dateFromComponents:v14];
    [v15 timeIntervalSinceDate:v7];
    v17 = v16;
    [(_OSBatteryPredictor *)self->_batteryPredictor timeToEmpty];
    v19 = v18;
    if (v18 <= 0.0)
    {
      v23 = self->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 134217984;
        v30 = v19;
        v24 = "Invalid TTE prediction: %f";
        v25 = v23;
        v26 = 12;
LABEL_16:
        _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, v24, &v29, v26);
      }
    }

    else
    {
      v20 = self->_log;
      v21 = v17 / 60.0;
      v22 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19 < v21)
      {
        if (v22)
        {
          v29 = 134218240;
          v30 = v19 / 60.0;
          v31 = 2048;
          v32 = v21 / 60.0;
          _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "TTE %f hours, but %f hours until 9 PM - suggesting charge", &v29, 0x16u);
        }

        v12 = 1;
        goto LABEL_18;
      }

      if (v22)
      {
        v29 = 134218240;
        v30 = v19 / 60.0;
        v31 = 2048;
        v32 = v21 / 60.0;
        v24 = "TTE %f hours, %f hours until 9 PM - no charge needed";
        v25 = v20;
        v26 = 22;
        goto LABEL_16;
      }
    }

    v12 = 0;
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v13 = self->_log;
  v12 = 0;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = v3;
    _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "Unlikely in known charge location: %@", &v29, 0xCu);
    v12 = 0;
  }

LABEL_20:

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)shouldThrottleChargingAdviceNotification
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_lastChargingAdviceNotificationDate)
  {
    log = self->_log;
    v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (!v7)
    {
      goto LABEL_11;
    }

    LOWORD(v14) = 0;
    v9 = "No previous TTE notification recorded, allowing internal notification";
    v10 = log;
    v11 = 2;
LABEL_10:
    _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
    LOBYTE(v7) = 0;
    goto LABEL_11;
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:self->_lastChargingAdviceNotificationDate];
  v5 = v4;

  v6 = self->_log;
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 >= 57600.0)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v14 = 134217984;
    v15 = v5 / 3600.0;
    v9 = "Allowing internal charging advice notification - last sent %f hours ago";
    v10 = v6;
    v11 = 12;
    goto LABEL_10;
  }

  if (v7)
  {
    v14 = 134218240;
    v15 = v5 / 3600.0;
    v16 = 2048;
    v17 = 0x4030000000000000;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Throttling internal charging advice notification - last sent %f hours ago, threshold is %f hours", &v14, 0x16u);
  }

  LOBYTE(v7) = 1;
LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

@end