@interface AHTDeviceStats
- (AHTDeviceStats)init;
- (BOOL)getCalibrationSource:(id *)a3;
- (BOOL)getFirstInputPropertyValue:(unsigned int)a3;
- (BOOL)start:(id)a3 error:(id *)a4;
- (BOOL)stop:(id *)a3;
- (int)getAGMDecision:(id *)a3 andAGMDecisionEnum:(unsigned int *)a4 andCalibrationSource:(id *)a5 withAGMEntry:(unsigned int)a6;
- (int)getAuthStatus:(id *)a3 withAGMDecisionEnum:(unsigned int)a4;
- (int)getFirstInputReceived:(BOOL *)a3;
- (unsigned)checkChildrenForMatches:(unsigned int)a3 matchingFunc:(id)a4 depth:(int)a5;
- (unsigned)getAGMEntry;
- (void)agmStackChoiceStatsCollection;
- (void)collectRepairHistoryInvalidationStat;
- (void)dailyStatsCollection;
- (void)restartCriticalErrorCollectionTimer:(unint64_t)a3;
- (void)restartDailyCollectionTimer:(unint64_t)a3;
- (void)startCriticalErrorCollectionTimer;
- (void)startDailyCollectionTimer;
@end

@implementation AHTDeviceStats

- (AHTDeviceStats)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[AHTDeviceStats init]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = AHTDeviceStats;
  v3 = [(AHTDeviceStats *)&v10 init];
  v4 = v3;
  if (v3)
  {
    queue = v3->_queue;
    v3->_queue = 0;

    criticalErrorTimer = v4->_criticalErrorTimer;
    v4->_criticalErrorTimer = 0;

    dailyCollectionTimer = v4->_dailyCollectionTimer;
    v4->_dailyCollectionTimer = 0;

    v8 = v4;
  }

  return v4;
}

- (BOOL)start:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[AHTDeviceStats start:error:]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  queue = self->_queue;
  self->_queue = v5;

  v7 = [(AHTDeviceStats *)self getAGMEntry];
  [(AHTDeviceStats *)self startDailyCollectionTimer];
  if (v7)
  {
    [(AHTDeviceStats *)self startCriticalErrorCollectionTimer];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[AHTDeviceStats start:error:]";
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s Is AGM-based device", &v9, 0xCu);
    }

    IOObjectRelease(v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[AHTDeviceStats start:error:]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s Not AGM-based device", &v9, 0xCu);
  }

  return 1;
}

- (BOOL)stop:(id *)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[AHTDeviceStats stop:]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s ", &v10, 0xCu);
  }

  queue = self->_queue;
  self->_queue = 0;

  criticalErrorTimer = self->_criticalErrorTimer;
  if (criticalErrorTimer)
  {
    dispatch_source_cancel(criticalErrorTimer);
    v6 = self->_criticalErrorTimer;
    self->_criticalErrorTimer = 0;
  }

  dailyCollectionTimer = self->_dailyCollectionTimer;
  if (dailyCollectionTimer)
  {
    dispatch_source_cancel(dailyCollectionTimer);
    v8 = self->_dailyCollectionTimer;
    self->_dailyCollectionTimer = 0;
  }

  return 1;
}

- (unsigned)getAGMEntry
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [&off_EC10 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(&off_EC10);
      }

      LODWORD(v3) = [(AHTDeviceStats *)self copyEntryWithName:@"AppleGenericMultitouchDecider" withParentName:*(*(&v8 + 1) + 8 * v6) depth:1];
      if (v3)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v3 = [&off_EC10 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v4 = v3;
        if (v3)
        {
          goto LABEL_3;
        }

        return v3;
      }
    }
  }

  return v3;
}

- (void)restartDailyCollectionTimer:(unint64_t)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AHTDeviceStats restartDailyCollectionTimer:]";
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s interval: %llu", &v7, 0x16u);
  }

  dailyCollectionTimer = self->_dailyCollectionTimer;
  v6 = dispatch_time(0, 1000000000 * a3);
  dispatch_source_set_timer(dailyCollectionTimer, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (void)restartCriticalErrorCollectionTimer:(unint64_t)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AHTDeviceStats restartCriticalErrorCollectionTimer:]";
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s interval: %llu", &v7, 0x16u);
  }

  criticalErrorTimer = self->_criticalErrorTimer;
  v6 = dispatch_time(0, 1000000000 * a3);
  dispatch_source_set_timer(criticalErrorTimer, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (void)dailyStatsCollection
{
  v3 = MGGetStringAnswer();
  if (CFStringHasPrefix(v3, @"J481") || CFStringHasPrefix(v3, @"J482"))
  {
    [(AHTDeviceStats *)self collectRepairHistoryInvalidationStat];
  }

  [(AHTDeviceStats *)self restartDailyCollectionTimer:86400];
}

- (void)collectRepairHistoryInvalidationStat
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[AHTDeviceStats collectRepairHistoryInvalidationStat]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s collectRepairHistoryInvalidationStat", buf, 0xCu);
  }

  properties = 0;
  v36 = 0;
  v2 = [AHTDevice withName:@"multi-touch"];
  v3 = v2;
  if (!v2)
  {
    sub_6E30();
    goto LABEL_29;
  }

  v4 = [v2 getBootLoader];
  if (!v4)
  {
    sub_6D9C();
    goto LABEL_29;
  }

  v5 = v4;
  v6 = [v4 getRegistryProperties];
  if (!v6)
  {
    sub_6CF8(v5);
    goto LABEL_29;
  }

  v7 = v6;
  v8 = [v6 objectForKey:@"Property Sources"];
  if (!v8)
  {
    sub_6C4C(v7, v5);
    goto LABEL_29;
  }

  v9 = v8;
  v10 = [v8 objectForKey:@"multitouch-to-display-offset"];
  v11 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/chosen");
  if (!v11)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 136315138;
    v39 = "[AHTDeviceStats collectRepairHistoryInvalidationStat]";
    v27 = "%s Fail to find repair history node";
LABEL_40:
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
    goto LABEL_41;
  }

  if (IORegistryEntryCreateCFProperties(v11, &properties, kCFAllocatorDefault, 0))
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 136315138;
    v39 = "[AHTDeviceStats collectRepairHistoryInvalidationStat]";
    v27 = "%s Fail to get property list for repair history node";
    goto LABEL_40;
  }

  v12 = properties;
  if (!properties)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = "[AHTDeviceStats collectRepairHistoryInvalidationStat]";
      v27 = "%s Fail to convert dictionary for repair history node dictionary";
      goto LABEL_40;
    }

LABEL_41:

    goto LABEL_29;
  }

  v28 = v5;
  v13 = [(__CFDictionary *)properties objectForKeyedSubscript:@"repair-history"];
  v14 = v13;
  if (v13)
  {
    v15 = CRWasComponentRepaired("Display", [v13 bytes], objc_msgSend(v13, "length"));
    HIBYTE(v36) = v15;
    v16 = CRWasComponentRepaired("CoverGlass", [v14 bytes], objc_msgSend(v14, "length"));
    LOBYTE(v36) = v16;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v29 = v3;
  if (v10)
  {
    v17 = [v10 isEqualToString:@"Default"];
    v18 = v17 ^ 1;
    v35 = v17 ^ 1;
    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v15 | v16;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v35 = 0;
  }

  v34 = v19 & 1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[AHTDeviceStats collectRepairHistoryInvalidationStat]";
    v40 = 1024;
    v41 = v18;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s isMtDOCalPresent = %x", buf, 0x12u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[AHTDeviceStats collectRepairHistoryInvalidationStat]";
    v40 = 1024;
    v41 = v15;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s isDisplayRepaired = %x", buf, 0x12u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[AHTDeviceStats collectRepairHistoryInvalidationStat]";
    v40 = 1024;
    v41 = v16;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s isCoverGlassRepaired = %x", buf, 0x12u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[AHTDeviceStats collectRepairHistoryInvalidationStat]";
    v40 = 1024;
    v41 = v19 & 1;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s isMtDOInvalidated = %x", buf, 0x12u);
  }

  v20 = [NSData dataWithBytes:&v35 length:1];
  v21 = [NSData dataWithBytes:&v36 + 1 length:1];
  v22 = [NSData dataWithBytes:&v36 length:1];
  [NSData dataWithBytes:&v34 length:1];
  v30 = v20;
  v31 = v21;
  v33 = v32 = v22;
  v23 = v33;
  v24 = v22;
  v25 = v21;
  v26 = v20;
  AnalyticsSendEventLazy();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[AHTDeviceStats collectRepairHistoryInvalidationStat]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s MtDO Invalidation Stat Collection Done", buf, 0xCu);
  }

  v3 = v29;
LABEL_29:
}

- (void)agmStackChoiceStatsCollection
{
  v19 = 255;
  v3 = [(AHTDeviceStats *)self getAGMEntry];
  if (!v3)
  {
    v6 = 0;
    v7 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  v4 = v3;
  v17 = 0;
  v18 = 0;
  v5 = [(AHTDeviceStats *)self getAGMDecision:&v18 andAGMDecisionEnum:&v19 andCalibrationSource:&v17 withAGMEntry:v3];
  v6 = v18;
  v7 = v17;
  IOObjectRelease(v4);
  if (!v6 || !v7)
  {
    goto LABEL_12;
  }

  if (!v5 && ![(AHTDeviceStats *)self ultimateDecisionSet])
  {
    v14[1] = _NSConcreteStackBlock;
    v14[2] = 3221225472;
    v14[3] = sub_3DE0;
    v14[4] = &unk_C490;
    v8 = v6;
    v15 = v8;
    v9 = v7;
    v16 = v9;
    AnalyticsSendEventLazy();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = "[AHTDeviceStats agmStackChoiceStatsCollection]";
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s Sent Ultimate Decision CA event %@ %@", buf, 0x20u);
    }

    [(AHTDeviceStats *)self setUltimateDecisionSet:1];
  }

  if ([(AHTDeviceStats *)self ultimateDecisionSet])
  {
    v14[0] = 0;
    v10 = [(AHTDeviceStats *)self getAuthStatus:v14 withAGMDecisionEnum:v19];
    v11 = v14[0];
    if (!v10)
    {
      sub_6EC4(v13, v11, self);
LABEL_15:
      v12 = 86400;
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
    v11 = 0;
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  v12 = 60;
LABEL_16:
  [(AHTDeviceStats *)self restartCriticalErrorCollectionTimer:v12];
}

- (int)getAGMDecision:(id *)a3 andAGMDecisionEnum:(unsigned int *)a4 andCalibrationSource:(id *)a5 withAGMEntry:(unsigned int)a6
{
  properties = 0;
  v10 = IORegistryEntryCreateCFProperties(a6, &properties, kCFAllocatorDefault, 0);
  if (v10)
  {
    v19 = v10;
    v13 = 0;
    v11 = 0;
  }

  else
  {
    v11 = properties;
    v12 = [(__CFDictionary *)properties objectForKeyedSubscript:@"UltimateDecision"];
    if (v12)
    {
      v13 = v12;
      v14 = [v13 unsignedIntValue];
      v15 = v14;
      if (v14)
      {
        *a5 = @"None";
        v16 = @"Other";
        if (v14 == 1)
        {
          v16 = @"NotAuthentic";
        }

        if (v14 == 2)
        {
          v17 = @"NotAuthenticLaunchFailed";
        }

        else
        {
          v17 = v16;
        }

        goto LABEL_11;
      }

      if ([(AHTDeviceStats *)self getCalibrationSource:a5])
      {
        v17 = @"Authentic";
LABEL_11:
        *a3 = v17;
        *a4 = v15;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v23 = "[AHTDeviceStats getAGMDecision:andAGMDecisionEnum:andCalibrationSource:withAGMEntry:]";
          v24 = 2048;
          v25 = v15;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s AGM decision raw value : 0x%016llx", buf, 0x16u);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [*a3 UTF8String];
          *buf = 136315394;
          v23 = "[AHTDeviceStats getAGMDecision:andAGMDecisionEnum:andCalibrationSource:withAGMEntry:]";
          v24 = 2080;
          v25 = v18;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s AGM decision string    : %s", buf, 0x16u);
        }

        v19 = 0;
        goto LABEL_16;
      }

      v19 = -536870160;
    }

    else
    {
      v19 = -536870184;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v23 = "[AHTDeviceStats getAGMDecision:andAGMDecisionEnum:andCalibrationSource:withAGMEntry:]";
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s Interested property not available yet", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[AHTDeviceStats getAGMDecision:andAGMDecisionEnum:andCalibrationSource:withAGMEntry:]";
    v24 = 1024;
    LODWORD(v25) = v19;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s error: 0x%04x", buf, 0x12u);
  }

LABEL_16:

  return v19;
}

- (int)getAuthStatus:(id *)a3 withAGMDecisionEnum:(unsigned int)a4
{
  v9 = 0;
  if (a4 == 1)
  {
    v7 = [(AHTDeviceStats *)self getFirstInputReceived:&v9];
    if (!v7)
    {
      if ((v9 & 1) == 0)
      {
        sub_7088(buf);
        return *buf;
      }

      v5 = 0;
      v6 = @"ConfirmedNotAuthentic";
      goto LABEL_7;
    }

    v5 = v7;
    if (v7 == -536870184)
    {
      return v5;
    }
  }

  else
  {
    if (!a4)
    {
      v5 = 0;
      v6 = @"ConfirmedAuthentic";
LABEL_7:
      *a3 = v6;
      return v5;
    }

    v5 = -536870212;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[AHTDeviceStats getAuthStatus:withAGMDecisionEnum:]";
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s error: 0x%04x", buf, 0x12u);
  }

  return v5;
}

- (BOOL)getFirstInputPropertyValue:(unsigned int)a3
{
  v4 = IOIteratorNext(a3);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      CFProperty = IORegistryEntryCreateCFProperty(v5, @"FirstInputReceived", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v8 = CFProperty;
        v6 = v6 || CFBooleanGetValue(CFProperty) != 0;
        CFRelease(v8);
      }

      IOObjectRelease(v5);
      v5 = IOIteratorNext(a3);
    }

    while (v5);
  }

  else
  {
    return 0;
  }

  return v6;
}

- (void)startDailyCollectionTimer
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[AHTDeviceStats startDailyCollectionTimer]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  if (queue)
  {
    if (!self->_dailyCollectionTimer)
    {
      v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
      dailyCollectionTimer = self->_dailyCollectionTimer;
      self->_dailyCollectionTimer = v4;

      v6 = self->_dailyCollectionTimer;
      v7 = self;
      dispatch_set_context(v6, v7);
      v8 = self->_dailyCollectionTimer;
      sub_4514();
      v14 = 3221225472;
      v15 = sub_2E70;
      v16 = &unk_C418;
      v17 = v7;
      dispatch_source_set_event_handler(v9, handler);
      v10 = self->_dailyCollectionTimer;
      sub_44EC();
      v12[2] = sub_2E78;
      v12[3] = &unk_C418;
      v12[4] = v7;
      dispatch_source_set_cancel_handler(v11, v12);
      [(AHTDeviceStats *)v7 restartDailyCollectionTimer:0];
      dispatch_resume(self->_dailyCollectionTimer);
    }
  }
}

- (void)startCriticalErrorCollectionTimer
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[AHTDeviceStats startCriticalErrorCollectionTimer]";
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  if (queue)
  {
    if (!self->_criticalErrorTimer)
    {
      v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
      criticalErrorTimer = self->_criticalErrorTimer;
      self->_criticalErrorTimer = v4;

      v6 = self->_criticalErrorTimer;
      sub_4514();
      v12 = 3221225472;
      v13 = sub_2F24;
      v14 = &unk_C418;
      v15 = self;
      dispatch_source_set_event_handler(v7, handler);
      v8 = self->_criticalErrorTimer;
      sub_44EC();
      v10[2] = sub_2F2C;
      v10[3] = &unk_C418;
      v10[4] = self;
      dispatch_source_set_cancel_handler(v9, v10);
      [(AHTDeviceStats *)self restartCriticalErrorCollectionTimer:0];
      dispatch_resume(self->_criticalErrorTimer);
    }
  }
}

- (unsigned)checkChildrenForMatches:(unsigned int)a3 matchingFunc:(id)a4 depth:(int)a5
{
  v8 = a4;
  iterator = 0;
  if (IORegistryEntryGetChildIterator(a3, "IOService", &iterator))
  {
    goto LABEL_13;
  }

  if (!iterator)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if (IOIteratorIsValid(iterator) && (v9 = IOIteratorNext(iterator), v9))
  {
    v10 = v9;
    while (!v8[2](v8, v10))
    {
      if (a5)
      {
        v11 = [(AHTDeviceStats *)self checkChildrenForMatches:v10 matchingFunc:v8 depth:(a5 - 1)];
      }

      else
      {
        v11 = 0;
      }

      v12 = IOIteratorNext(iterator);
      if (v12)
      {
        v10 = v12;
        if (!v11)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    IOObjectRetain(v10);
    v11 = v10;
  }

  else
  {
LABEL_13:
    v11 = 0;
  }

LABEL_15:
  if (iterator)
  {
    IOObjectRelease(iterator);
  }

LABEL_17:

  return v11;
}

- (BOOL)getCalibrationSource:(id *)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 136315138;
    *&v25[4] = "[AHTDeviceStats getCalibrationSource:]";
    sub_44DC();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
  }

  v11 = [(AHTDeviceStats *)self copyEntryWithClass:@"AppleHIDTransportBootloader" withParentName:@"multi-touch" depth:2, *v25];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = sub_41E4(v11, v11);
  v14 = v13;
  v15 = v13 != 0;
  if (!v13)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *v25 = 136315138;
    *&v25[4] = "[AHTDeviceStats getCalibrationSource:]";
    sub_44DC();
    goto LABEL_7;
  }

  v16 = v13;
  *a3 = v14;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [*a3 UTF8String];
    *v25 = 136315394;
    *&v25[4] = "[AHTDeviceStats getCalibrationSource:]";
    *&v25[12] = 2080;
    *&v25[14] = v17;
    v18 = &dword_0;
    v19 = &_os_log_default;
    v20 = "%s Calibration source: %s";
    v21 = v25;
    v22 = OS_LOG_TYPE_DEFAULT;
    v23 = 22;
LABEL_7:
    _os_log_impl(v18, v19, v22, v20, v21, v23);
  }

LABEL_8:
  IOObjectRelease(v12);

  return v15;
}

- (int)getFirstInputReceived:(BOOL *)a3
{
  existing = 0;
  *a3 = 0;
  v5 = IOServiceMatching("AppleHIDTransportHIDDevice");
  if (v5)
  {
    v6 = v5;
    v7 = [[NSDictionary alloc] initWithObjectsAndKeys:{&off_E7F0, @"DeviceUsagePage", &off_E808, @"DeviceUsage", 0}];
    v8 = [[NSArray alloc] initWithObjects:{v7, 0}];
    CFDictionarySetValue(v6, @"DeviceUsagePairs", v8);
    MatchingServices = IOServiceGetMatchingServices(0, v6, &existing);
    *a3 = [(AHTDeviceStats *)self getFirstInputPropertyValue:existing];
    IOObjectRelease(existing);
    if (!*a3)
    {
      v10 = IOServiceMatching("AppleGenericMultitouchHIDSPI");
      if (v10)
      {
        MatchingServices = IOServiceGetMatchingServices(0, v10, &existing);
        *a3 = [(AHTDeviceStats *)self getFirstInputPropertyValue:existing];
        IOObjectRelease(existing);
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    MatchingServices = -536870212;
  }

  return MatchingServices;
}

@end