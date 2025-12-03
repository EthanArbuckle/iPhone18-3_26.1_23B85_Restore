@interface PowerUIDrainMonitor
+ (id)sharedInstance;
- (BOOL)hasVariationForMedianLevels:(id)levels;
- (BOOL)isAtKnownChargingLocation;
- (PowerUIDrainMonitor)init;
- (id)isTrendingLowerWithBatteryLevel:(int64_t)level atDate:(id)date;
- (unint64_t)slotForDate:(id)date withTimeSlotWidth:(unint64_t)width;
- (void)disableLPM;
- (void)disableMitigations;
- (void)enableLPM;
- (void)enableMitigations;
- (void)evaluateNudgeForLPM;
- (void)postLPMNudgeNotificationWithInfo:(id)info;
- (void)start;
@end

@implementation PowerUIDrainMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[PowerUIDrainMonitor sharedInstance];
  }

  v3 = sharedInstance_drainMonitor;

  return v3;
}

uint64_t __37__PowerUIDrainMonitor_sharedInstance__block_invoke()
{
  sharedInstance_drainMonitor = objc_alloc_init(PowerUIDrainMonitor);

  return MEMORY[0x2821F96F8]();
}

- (PowerUIDrainMonitor)init
{
  v20.receiver = self;
  v20.super_class = PowerUIDrainMonitor;
  v2 = [(PowerUIDrainMonitor *)&v20 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerui.drainMonitor"];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.powerui.powerUIDrainMonitor", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = os_log_create("com.apple.powerui", "powerUIDrainMonitor");
    log = v2->_log;
    v2->_log = v8;

    v10 = [(PowerUIDrainMonitor *)v2 log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "PowerUIDrainMonitor initiating...", buf, 2u);
    }

    userContext = [MEMORY[0x277CFE318] userContext];
    context = v2->_context;
    v2->_context = userContext;

    v13 = [(NSUserDefaults *)v2->_defaults objectForKey:@"didEnableLPM"];
    v14 = v13;
    if (v13)
    {
      v2->_didEnableLPM = [v13 BOOLValue];
    }

    *buf = 0;
    v15 = v2->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __27__PowerUIDrainMonitor_init__block_invoke;
    handler[3] = &unk_2782D3E60;
    v18 = v2;
    notify_register_dispatch("com.apple.powerui.drainmonitor.notification", buf, v15, handler);
  }

  return v2;
}

void __27__PowerUIDrainMonitor_init__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v2 = MEMORY[0x277CBEC38];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"shouldEngage"];
  [v3 setObject:&unk_282D4E230 forKeyedSubscript:@"currentLevel"];
  [v3 setObject:&unk_282D4E248 forKeyedSubscript:@"referenceLevel"];
  [v3 setObject:v2 forKeyedSubscript:@"ignoreLastNudge"];
  [*(a1 + 32) postLPMNudgeNotificationWithInfo:v3];
}

- (void)start
{
  v3 = MEMORY[0x277CFE360];
  keyPathForBatteryLevel = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v5 = [v3 predicateForChangeAtKeyPath:keyPathForBatteryLevel];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __28__PowerUIDrainMonitor_start__block_invoke;
  v12[3] = &unk_2782D4138;
  v12[4] = self;
  v6 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.powerui.drainMonitor" contextualPredicate:v5 clientIdentifier:@"com.apple.PowerUIAgent.contextstore-registration" callback:v12];
  notify_register_check([@"com.apple.powerui.nudge.LPM" UTF8String], &self->_notifyToken);
  [(_CDLocalContext *)self->_context registerCallback:v6];
  v7 = +[PowerUIBrightnessController sharedInstance];
  [v7 start];

  v8 = [PowerUILocationSignalMonitor monitorWithDelegate:self];
  locationSignalMonitor = self->_locationSignalMonitor;
  self->_locationSignalMonitor = v8;

  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __28__PowerUIDrainMonitor_start__block_invoke_3;
  v11[3] = &unk_2782D3E60;
  v11[4] = self;
  notify_register_dispatch("com.apple.powerui.ambrosia.enableMitigation", &self->_notifyTestToken, queue, v11);
}

void __28__PowerUIDrainMonitor_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__PowerUIDrainMonitor_start__block_invoke_2;
  block[3] = &unk_2782D3EA8;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

void __28__PowerUIDrainMonitor_start__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [MEMORY[0x277CFE338] keyPathForPluginStatus];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    [*(a1 + 32) disableMitigations];
    v6 = *(a1 + 32);
    if (v6[8] == 1)
    {

      [v6 disableLPM];
    }
  }

  else if (!_os_feature_enabled_impl() || ([*(a1 + 32) enableMitigations], _os_feature_enabled_impl()))
  {
    v7 = *(*(a1 + 32) + 40);
    v8 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
    v9 = [v7 objectForContextualKeyPath:v8];
    v10 = [v9 integerValue];

    if (v10 <= 20)
    {
      [*(a1 + 32) enableLPM];
    }

    v11 = *(*(a1 + 32) + 40);
    v12 = [MEMORY[0x277CFE338] keyPathForLowPowerModeStatus];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = [v13 BOOLValue];

    if ((v14 & 1) == 0)
    {
      v15 = *(a1 + 32);

      [v15 evaluateNudgeForLPM];
    }
  }
}

void __28__PowerUIDrainMonitor_start__block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  notify_set_state(*(*(a1 + 32) + 16), 1uLL);
  notify_post([@"com.apple.powerui.nudge.LPM" UTF8String]);
  v2 = +[PowerUIBrightnessController sharedInstance];
  [v2 engageMitigation];

  [*(a1 + 32) enableLPM];
  v3 = [*(a1 + 32) log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_21B766000, v3, OS_LOG_TYPE_DEFAULT, "SMDEBUG: Posting Ambrosia Engage notification", &v7, 2u);
  }

  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) isAtKnownChargingLocation];
    v7 = 134217984;
    v8 = v5;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "SMDEBUG: Is at known location: %lu", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)enableLPM
{
  v3 = [(PowerUIDrainMonitor *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B766000, v3, OS_LOG_TYPE_DEFAULT, "SMDEBUG: Enabling LPM", v5, 2u);
  }

  mEMORY[0x277D244D8] = [MEMORY[0x277D244D8] sharedInstance];
  [mEMORY[0x277D244D8] setPowerMode:1 fromSource:@"com.apple.powerui.ambrosia"];

  self->_didEnableLPM = 1;
  [(NSUserDefaults *)self->_defaults setBool:1 forKey:@"didEnableLPM"];
}

- (void)disableLPM
{
  v3 = [(PowerUIDrainMonitor *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21B766000, v3, OS_LOG_TYPE_DEFAULT, "SMDEBUG: Disabling LPM", v5, 2u);
  }

  mEMORY[0x277D244D8] = [MEMORY[0x277D244D8] sharedInstance];
  [mEMORY[0x277D244D8] setPowerMode:0 fromSource:@"com.apple.powerui.ambrosia"];

  self->_didEnableLPM = 0;
  [(NSUserDefaults *)self->_defaults setBool:0 forKey:@"didEnableLPM"];
}

- (void)enableMitigations
{
  notify_set_state(self->_notifyToken, 1uLL);
  notify_post([@"com.apple.powerui.nudge.LPM" UTF8String]);
  v2 = +[PowerUIBrightnessController sharedInstance];
  [v2 engageMitigation];
}

- (void)disableMitigations
{
  v3 = +[PowerUIBrightnessController sharedInstance];
  [v3 resetMitigation];

  notify_set_state(self->_notifyToken, 0);
  uTF8String = [@"com.apple.powerui.nudge.LPM" UTF8String];

  notify_post(uTF8String);
}

- (void)evaluateNudgeForLPM
{
  v16 = *MEMORY[0x277D85DE8];
  context = self->_context;
  keyPathForBatteryLevel = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v5 = [(_CDLocalContext *)context objectForContextualKeyPath:keyPathForBatteryLevel];
  integerValue = [v5 integerValue];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = integerValue;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Current battery level %lu", &v14, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v9 = [(PowerUIDrainMonitor *)self isTrendingLowerWithBatteryLevel:integerValue atDate:date];

  v10 = [v9 objectForKeyedSubscript:@"shouldEngage"];

  if (v10)
  {
    v11 = [v9 objectForKeyedSubscript:@"shouldEngage"];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      [(PowerUIDrainMonitor *)self postLPMNudgeNotificationWithInfo:v9];
      [(PowerUIDrainMonitor *)self enableMitigations];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)postLPMNudgeNotificationWithInfo:(id)info
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = infoCopy;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Posting LPM notification %@", buf, 0xCu);
    }

    v27 = +[PowerUINotificationManager sharedInstance];
    date = [MEMORY[0x277CBEAA8] date];
    v7 = [(NSUserDefaults *)self->_defaults objectForKey:@"kLastALPMNotificationDate"];
    v8 = [infoCopy objectForKeyedSubscript:@"ignoreLastNudge"];
    if (([v8 BOOLValue] & 1) != 0 || !v7)
    {
    }

    else
    {
      [v7 timeIntervalSinceNow];
      v10 = v9;

      if (v10 >= -43200.0)
      {
        v11 = self->_log;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Posted LPM notification in last 12 hours; Skipping", buf, 2u);
        }

LABEL_16:

        goto LABEL_17;
      }
    }

    v12 = [infoCopy objectForKeyedSubscript:@"currentLevel"];
    integerValue = [v12 integerValue];

    v14 = MEMORY[0x277CCACA8];
    v15 = [infoCopy objectForKeyedSubscript:@"referenceLevel"];
    v16 = [v14 stringWithFormat:@"Your battery level is trending lower than typical!(Current:%ld Typical:%ld)", integerValue, objc_msgSend(v15, "integerValue")];

    v17 = @"Enabled Ambrosia!";
    if (integerValue <= 9)
    {
      v18 = [infoCopy objectForKeyedSubscript:@"knownChargingLocation"];
      bOOLValue = [v18 BOOLValue];

      if (bOOLValue)
      {
        v17 = @"Charge Device!";
      }
    }

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@!!", v16, v17];
    v21 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"battery.25percent"];
    v22 = [date dateByAddingTimeInterval:1800.0];
    v23 = [MEMORY[0x277CBEBC0] URLWithString:@"E-T-Insights://"];
    date2 = [MEMORY[0x277CBEAA8] date];
    [v27 postInternalNotificationAtDate:date2 withTitle:@"[Internal] IBLM" withTextContent:v20 icon:v21 url:v23 expirationDate:v22];

    v25 = self->_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Posted LPM notification ", buf, 2u);
    }

    [(NSUserDefaults *)self->_defaults setObject:date forKey:@"kLastALPMNotificationDate"];

    goto LABEL_16;
  }

LABEL_17:

  v26 = *MEMORY[0x277D85DE8];
}

- (unint64_t)slotForDate:(id)date withTimeSlotWidth:(unint64_t)width
{
  v5 = MEMORY[0x277CBEA80];
  dateCopy = date;
  currentCalendar = [v5 currentCalendar];
  v8 = [currentCalendar components:540 fromDate:dateCopy];
  v9 = [currentCalendar dateFromComponents:v8];
  [dateCopy timeIntervalSinceDate:v9];
  v11 = v10;

  return (v11 / (60 * width));
}

- (BOOL)hasVariationForMedianLevels:(id)levels
{
  v29 = *MEMORY[0x277D85DE8];
  levelsCopy = levels;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [levelsCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    integerValue2 = 0;
    v8 = *v21;
    integerValue = 101;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(levelsCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v11 integerValue] < integerValue)
        {
          integerValue = [v11 integerValue];
        }

        if ([v11 integerValue] > integerValue2)
        {
          integerValue2 = [v11 integerValue];
        }
      }

      v6 = [levelsCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

  else
  {
    integerValue2 = 0;
    integerValue = 101;
  }

  v12 = integerValue2 - integerValue;
  if (integerValue2 - integerValue <= 45)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = log;
      v16 = [v14 numberWithInteger:integerValue];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue2];
      *buf = 138412546;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "Not enough variation in the values. Min %@, Max %@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12 > 45;
}

- (BOOL)isAtKnownChargingLocation
{
  requiredFullChargeDate = [(PowerUILocationSignalMonitor *)self->_locationSignalMonitor requiredFullChargeDate];
  [requiredFullChargeDate timeIntervalSinceNow];
  v4 = v3 > 0.0;

  return v4;
}

- (id)isTrendingLowerWithBatteryLevel:(int64_t)level atDate:(id)date
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_new();
  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"shouldEngage"];
  v7 = +[PowerUIBatteryData sharedInstance];
  date = [MEMORY[0x277CBEAA8] date];
  if ([PowerUISmartChargeUtilities isWeekend:date])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v7 medianBatteryLevelByTimeSlot:15 dayType:v9];
  v11 = [v10 objectAtIndexedSubscript:{-[PowerUIDrainMonitor slotForDate:withTimeSlotWidth:](self, "slotForDate:withTimeSlotWidth:", date, 15)}];
  integerValue = [v11 integerValue];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:level];
  [v6 setObject:v13 forKeyedSubscript:@"currentLevel"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
  [v6 setObject:v14 forKeyedSubscript:@"referenceLevel"];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 134218240;
    levelCopy = level;
    v27 = 2048;
    v28 = integerValue;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Current battery level %lu, Reference level %lu", &v25, 0x16u);
  }

  if ([(PowerUIDrainMonitor *)self hasVariationForMedianLevels:v10])
  {
    v16 = 10.0;
    if (level < 50)
    {
      v16 = 5.0;
    }

    if ((level - 50) >= 0x1E)
    {
      v17 = v16;
    }

    else
    {
      v17 = 7.0;
    }

    v18 = (integerValue - level);
    if (v17 < v18)
    {
      [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:{@"shouldEngage", v16}];
      v19 = &unk_282D4E290;
      if (v17 * 1.5 < v18)
      {
        v19 = &unk_282D4E278;
      }

      if (v17 + v17 >= v18)
      {
        v20 = v19;
      }

      else
      {
        v20 = &unk_282D4E260;
      }

      [v6 setObject:v20 forKeyedSubscript:@"mitigationEffort"];
    }

    isAtKnownChargingLocation = [(PowerUIDrainMonitor *)self isAtKnownChargingLocation];
    v22 = [MEMORY[0x277CCABB0] numberWithBool:isAtKnownChargingLocation];
    [v6 setObject:v22 forKeyedSubscript:@"knownChargingLocation"];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v6;
}

@end