@interface WiFiSoftApUsageMonitor
+ (id)sharedInstance;
- (WiFiSoftApUsageMonitor)init;
- (id)statsDictionary;
- (void)initStats;
- (void)initStats:(id)stats;
- (void)persistStats;
- (void)resetStats;
- (void)resetStatsInternal;
- (void)statsDictionaryInternal:(id)internal;
- (void)updateStats:(id)stats;
- (void)updateStatsInternal:(id)internal;
@end

@implementation WiFiSoftApUsageMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[WiFiSoftApUsageMonitor sharedInstance];
  }

  v3 = sharedInstance_sharedWiFiSoftApUsageMonitor;

  return v3;
}

- (id)statsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  internalQueue = self->_internalQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__WiFiSoftApUsageMonitor_statsDictionary__block_invoke;
  v9[3] = &unk_2789C6608;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  dispatch_sync(internalQueue, v9);
  v6 = v10;
  v7 = v5;

  return v5;
}

uint64_t __40__WiFiSoftApUsageMonitor_sharedInstance__block_invoke()
{
  sharedInstance_sharedWiFiSoftApUsageMonitor = objc_alloc_init(WiFiSoftApUsageMonitor);

  return MEMORY[0x2821F96F8]();
}

- (WiFiSoftApUsageMonitor)init
{
  v8.receiver = self;
  v8.super_class = WiFiSoftApUsageMonitor;
  v2 = [(WiFiSoftApUsageMonitor *)&v8 init];
  v2->_statsValid = 0;
  softApOldestActiveTime = v2->_softApOldestActiveTime;
  v2->_softApOldestActiveTime = 0;

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.wifi.softap-usage-monitor", v4);
  internalQueue = v2->_internalQueue;
  v2->_internalQueue = v5;

  [(WiFiSoftApUsageMonitor *)v2 initStats];
  return v2;
}

- (void)initStats:(id)stats
{
  v20 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  keyEnumerator = [statsCopy keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v8 = nextObject;
    v9 = 0;
    v10 = MEMORY[0x277D86220];
    *&v7 = 136315394;
    v18 = v7;
    while (1)
    {
      v11 = v9;
      stringValue = [v8 stringValue];
      v9 = [statsCopy objectForKey:stringValue];

      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([stringValue isEqualToString:@"OldestActiveTime"])
          {
            objc_storeStrong(&self->_softApOldestActiveTime, v9);
          }

          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([stringValue isEqualToString:@"StatsValid"])
          {
            self->_statsValid = [v9 BOOLValue];
          }

          else if ([stringValue isEqualToString:@"MaximizeCompatibilityEnabled"])
          {
            self->_compatibilityEnabled = [v9 BOOLValue];
          }

          else if ([stringValue isEqualToString:@"MaximizeCompatibilityToggled"])
          {
            self->_compatibilityToggled = [v9 BOOLValue];
          }

          else
          {
            unsignedLongValue = [v9 unsignedLongValue];
            if ([stringValue isEqualToString:@"SoftApUpCount"])
            {
              self->_softApUpCount = unsignedLongValue;
            }

            else if ([stringValue isEqualToString:@"NoClientConnectedSessionCount"])
            {
              self->_noClientConnectedSessionCount = unsignedLongValue;
            }

            else if ([stringValue isEqualToString:@"OnlyAppleClientConnectedSessionCount"])
            {
              self->_onlyAppleClientConnectedSessionCount = unsignedLongValue;
            }

            else if ([stringValue isEqualToString:@"OnlyOtherClientConnectedSessionCount"])
            {
              self->_onlyOtherClientConnectedSessionCount = unsignedLongValue;
            }

            else if ([stringValue isEqualToString:@"MixClientConnectedSessionCount"])
            {
              self->_mixClientConnectedSessionCount = unsignedLongValue;
            }

            else if ([stringValue isEqualToString:@"AppleClientConnectCount"])
            {
              self->_appleClientConnectCount = unsignedLongValue;
            }

            else if ([stringValue isEqualToString:@"OtherClientConnectCount"])
            {
              self->_otherClientConnectCount = unsignedLongValue;
            }

            else if ([stringValue isEqualToString:@"24GHzSessionCount"])
            {
              self->_twoFourGHzSessionCount = unsignedLongValue;
            }

            else if ([stringValue isEqualToString:@"5GHzSessionCount"])
            {
              self->_fiveGHzSessionCount = unsignedLongValue;
            }
          }

          goto LABEL_15;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          *&buf[4] = "[WiFiSoftApUsageMonitor initStats:]";
          *&buf[12] = 2112;
          *&buf[14] = stringValue;
          v13 = v10;
          v14 = "%s: unexpected value for %@";
          goto LABEL_14;
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v18;
        *&buf[4] = "[WiFiSoftApUsageMonitor initStats:]";
        *&buf[12] = 2112;
        *&buf[14] = stringValue;
        v13 = v10;
        v14 = "%s: value is null for %@";
LABEL_14:
        _os_log_impl(&dword_2332D7000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);
      }

LABEL_15:

      nextObject2 = [keyEnumerator nextObject];

      v8 = nextObject2;
      if (!nextObject2)
      {

        break;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)initStats
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"WiFiHotspotUsageHistory"];
  if (v3)
  {
    [(WiFiSoftApUsageMonitor *)self initStats:v3];
  }
}

- (void)updateStatsInternal:(id)internal
{
  internalCopy = internal;
  compatibilityEnabled = self->_compatibilityEnabled;
  v20 = internalCopy;
  v6 = [internalCopy objectForKey:@"MaximizeCompatibilityEnabled"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_compatibilityEnabled = [v6 BOOLValue];
    }
  }

  softApOldestActiveTime = self->_softApOldestActiveTime;
  self->_compatibilityToggled |= self->_compatibilityEnabled ^ compatibilityEnabled;
  if (softApOldestActiveTime && self->_statsValid)
  {
    v8 = v6;
  }

  else
  {
    [(WiFiSoftApUsageMonitor *)self resetStatsInternal];
    v8 = [v20 objectForKey:@"SessionStartTimestamp"];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_softApOldestActiveTime, v8);
      }
    }
  }

  v9 = [v20 objectForKey:@"AppleClientConnectCount"];

  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedLongValue = [v9 unsignedLongValue];
    self->_appleClientConnectCount += unsignedLongValue;
    v11 = unsignedLongValue == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = [v20 objectForKey:@"OtherClientConnectCount"];

  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedLongValue2 = [v12 unsignedLongValue];
    self->_otherClientConnectCount += unsignedLongValue2;
    v14 = unsignedLongValue2 != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = !v14;
  v16 = 32;
  if (!v15)
  {
    v16 = 48;
  }

  v17 = 40;
  if (!v15)
  {
    v17 = 56;
  }

  if (!v11)
  {
    v16 = v17;
  }

  ++*(&self->super.isa + v16);
  v18 = [v20 objectForKey:@"TwoFourGHzChannelCount"];

  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v18 unsignedLongValue])
      {
        ++self->_twoFourGHzSessionCount;
      }
    }
  }

  v19 = [v20 objectForKey:@"FiveGHzChannelCount"];

  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v19 unsignedLongValue])
      {
        ++self->_fiveGHzSessionCount;
      }
    }
  }

  ++self->_softApUpCount;
  self->_statsValid = 1;
}

- (void)updateStats:(id)stats
{
  statsCopy = stats;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__WiFiSoftApUsageMonitor_updateStats___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = statsCopy;
  v6 = statsCopy;
  dispatch_sync(internalQueue, v7);
}

uint64_t __38__WiFiSoftApUsageMonitor_updateStats___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateStatsInternal:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 persistStats];
}

- (void)resetStatsInternal
{
  self->_statsValid = 0;
  softApOldestActiveTime = self->_softApOldestActiveTime;
  self->_softApOldestActiveTime = 0;

  self->_compatibilityToggled = 0;
  *&self->_softApUpCount = 0u;
  *&self->_onlyAppleClientConnectedSessionCount = 0u;
  *&self->_mixClientConnectedSessionCount = 0u;
  *&self->_otherClientConnectCount = 0u;
  self->_fiveGHzSessionCount = 0;
}

- (void)resetStats
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__WiFiSoftApUsageMonitor_resetStats__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)statsDictionaryInternal:(id)internal
{
  internalCopy = internal;
  v18 = internalCopy;
  if (self->_statsValid)
  {
    [internalCopy setObject:self->_softApOldestActiveTime forKeyedSubscript:@"OldestActiveTime"];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_softApUpCount];
    [v18 setObject:v5 forKeyedSubscript:@"SoftApUpCount"];

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_noClientConnectedSessionCount];
    [v18 setObject:v6 forKeyedSubscript:@"NoClientConnectedSessionCount"];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_onlyAppleClientConnectedSessionCount];
    [v18 setObject:v7 forKeyedSubscript:@"OnlyAppleClientConnectedSessionCount"];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_onlyOtherClientConnectedSessionCount];
    [v18 setObject:v8 forKeyedSubscript:@"OnlyOtherClientConnectedSessionCount"];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_mixClientConnectedSessionCount];
    [v18 setObject:v9 forKeyedSubscript:@"MixClientConnectedSessionCount"];

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_appleClientConnectCount];
    [v18 setObject:v10 forKeyedSubscript:@"AppleClientConnectCount"];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_otherClientConnectCount];
    [v18 setObject:v11 forKeyedSubscript:@"OtherClientConnectCount"];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_twoFourGHzSessionCount];
    [v18 setObject:v12 forKeyedSubscript:@"24GHzSessionCount"];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_fiveGHzSessionCount];
    [v18 setObject:v13 forKeyedSubscript:@"5GHzSessionCount"];

    v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_compatibilityEnabled];
    [v18 setObject:v14 forKeyedSubscript:@"MaximizeCompatibilityEnabled"];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_compatibilityToggled];
    [v18 setObject:v15 forKeyedSubscript:@"MaximizeCompatibilityToggled"];

    statsValid = self->_statsValid;
  }

  else
  {
    statsValid = 0;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithBool:statsValid];
  [v18 setObject:v17 forKeyedSubscript:@"StatsValid"];
}

- (void)persistStats
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(WiFiSoftApUsageMonitor *)self statsDictionaryInternal:v4];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:v4 forKey:@"WiFiHotspotUsageHistory"];
}

@end