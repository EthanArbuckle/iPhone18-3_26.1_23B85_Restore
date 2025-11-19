@interface BackgroundTaskAgentJobManager
- (BOOL)areNetworkingRequirementsMetForJob:(id)a3 withCurrentDeviceState:(id *)a4;
- (BOOL)validateAndAddDefaults:(id)a3;
- (BackgroundTaskAgentJobManager)initWithUserEventAgentProvider:(void *)a3;
- (void)BackgroundTaskAgentMonitoredConditionChangedWithTimeChange:(double *)a3;
- (void)addJobToQueue:(id)a3 withToken:(__CFNumber *)a4;
- (void)adjustTime:(double)a3;
- (void)cancelJobWithToken:(unint64_t)a3;
- (void)cancelTimer;
- (void)dealloc;
- (void)evalJobConditions:(id)a3 withCurrentDeviceState:(id *)a4 andStoreJobStatusIn:(id *)a5;
- (void)getCurrentDeviceState:(id *)a3;
- (void)hasJobStatusChanged:(id)a3 withToken:(__CFNumber *)a4 withCurrentDeviceState:(id *)a5 withPointerToExpiredJobs:(__CFDictionary *)a6;
- (void)newJob:(id)a3 withToken:(unint64_t)a4;
- (void)pcTimerFired:(id)a3;
- (void)postClientNotificationForJob:(id)a3 withToken:(__CFNumber *)a4;
- (void)printCurrentDeviceState:(id *)a3;
- (void)printJob:(id)a3 withToken:(__CFNumber *)a4 withPrefix:(const char *)a5 withLogLevel:(unsigned __int8)a6 withJobStatus:(BOOL)a7;
- (void)printJobListwithPrefix:(const char *)a3 withLogLevel:(unsigned __int8)a4 withJobStatus:(BOOL)a5;
- (void)processJobList;
- (void)processJobListImmediately;
- (void)processPendingJobs:(id)a3;
- (void)removeJob:(id)a3 withToken:(__CFNumber *)a4;
- (void)scheduleTimerIfNecessary;
@end

@implementation BackgroundTaskAgentJobManager

- (BackgroundTaskAgentJobManager)initWithUserEventAgentProvider:(void *)a3
{
  v9.receiver = self;
  v9.super_class = BackgroundTaskAgentJobManager;
  v4 = [(BackgroundTaskAgentJobManager *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_userEventAgentProvider = a3;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    v5->_jobList = Mutable;
    if (Mutable)
    {
      v7 = [BackgroundTaskAgentMonitor alloc];
      xpc_event_provider_get_queue();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_598C();
    }

    return 0;
  }

  return v5;
}

- (void)processPendingJobs:(id)a3
{
  if ([(BackgroundTaskAgentJobManager *)self hasPendingJobs])
  {

    [(BackgroundTaskAgentJobManager *)self processJobListImmediately];
  }
}

- (void)newJob:(id)a3 withToken:(unint64_t)a4
{
  valuePtr = a4;
  v10[0] = *"<unknown>";
  memset(&v10[1], 0, 112);
  xpc_get_event_name();
  if (a3)
  {
    v6 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if ([(BackgroundTaskAgentJobManager *)self validateAndAddDefaults:a3])
    {
      [(BackgroundTaskAgentJobManager *)self addJobToQueue:a3 withToken:v6];
      [(BackgroundTaskAgentJobManager *)self processJobList];
    }

    else
    {
      [(BackgroundTaskAgentJobManager *)self postClientNotificationForJob:a3 withToken:v6];
    }

    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] debugPrintMonitorStatus];
    v8[0] = @"event";
    v8[1] = @"token";
    v9[0] = @"add";
    v9[1] = v6;
    v8[2] = @"name";
    v9[2] = [NSString stringWithUTF8String:v10];
    v8[3] = @"client";
    v9[3] = [NSString stringWithUTF8String:xpc_dictionary_get_string(a3, "BackgroundTaskAgentClientName")];
    [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];
    PLLogRegisteredEvent();
    CFRelease(v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_59D0();
  }
}

- (void)cancelJobWithToken:(unint64_t)a3
{
  v6 = a3;
  v4 = CFNumberCreate(0, kCFNumberSInt64Type, &v6);
  if (CFDictionaryContainsKey([(BackgroundTaskAgentJobManager *)self jobList], v4))
  {
    Value = CFDictionaryGetValue([(BackgroundTaskAgentJobManager *)self jobList], v4);
    v7[0] = @"event";
    v7[1] = @"token";
    v8[0] = @"remove";
    v8[1] = v4;
    v7[2] = @"client";
    v8[2] = [NSString stringWithUTF8String:xpc_dictionary_get_string(Value, "BackgroundTaskAgentClientName")];
    [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
    PLLogRegisteredEvent();
    [(BackgroundTaskAgentJobManager *)self removeJob:Value withToken:v4];
  }

  else
  {
    Value = 0;
  }

  if (self->_nextHardDeadlineJob == Value || self->_nextSoftDeadlineJob == Value)
  {
    [(BackgroundTaskAgentJobManager *)self processJobList];
  }

  CFRelease(v4);
}

- (void)dealloc
{
  if (self->_jobList)
  {
    if (CFDictionaryGetCount([(BackgroundTaskAgentJobManager *)self jobList]) >= 1)
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_162C;
      v4[3] = &unk_C488;
      v4[4] = self;
      [(__CFDictionary *)[(BackgroundTaskAgentJobManager *)self jobList] enumerateKeysAndObjectsUsingBlock:v4];
    }

    CFRelease(self->_jobList);
  }

  [(BackgroundTaskAgentJobManager *)self cancelTimer];
  v3.receiver = self;
  v3.super_class = BackgroundTaskAgentJobManager;
  [(BackgroundTaskAgentJobManager *)&v3 dealloc];
}

- (BOOL)validateAndAddDefaults:(id)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = xpc_dictionary_get_double(a3, kBackgroundTaskAgentJobWindowStartTime);
  if (v6 < Current + -300.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_5EEC();
    }

LABEL_41:
    xpc_dictionary_set_int64(a3, kBackgroundTaskAgentJobStatus, 1);
    return 0;
  }

  v7 = xpc_dictionary_get_double(a3, kBackgroundTaskAgentJobWindowEndTime);
  if (v7 < v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_5E50();
    }

    goto LABEL_41;
  }

  if (v7 > v6 + 3024000.0 + 300.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_5DBC();
    }

    goto LABEL_41;
  }

  if (v7 > Current + 3024000.0 + 300.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_5D28();
    }

    goto LABEL_41;
  }

  xpc_dictionary_set_BOOL(a3, kBackgroundTaskAgentJobExpired, 0);
  v8 = kBackgroundTaskAgentJobWindowAdjustTime;
  if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentJobWindowAdjustTime))
  {
    v9 = xpc_dictionary_get_BOOL(a3, v8);
  }

  else
  {
    v9 = 1;
    xpc_dictionary_set_BOOL(a3, v8, 1);
  }

  v10 = kBackgroundTaskAgentNetworkRequired;
  v11 = xpc_dictionary_get_BOOL(a3, kBackgroundTaskAgentNetworkRequired);
  v12 = kBackgroundTaskAgentCellularAllowed;
  v13 = xpc_dictionary_get_BOOL(a3, kBackgroundTaskAgentCellularAllowed);
  if (!v11)
  {
    xpc_dictionary_set_BOOL(a3, v10, 0);
    xpc_dictionary_set_BOOL(a3, kBackgroundTaskAgentJobStatusNetwork, 1);
    if (v13)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_5A4C(a3);
      }

      goto LABEL_41;
    }

    goto LABEL_22;
  }

  xpc_dictionary_set_BOOL(a3, kBackgroundTaskAgentJobStatusNetwork, 0);
  if (!v13)
  {
LABEL_22:
    xpc_dictionary_set_BOOL(a3, v12, 0);
  }

  v14 = kBackgroundTaskAgentPowerOptLevel;
  int64 = xpc_dictionary_get_int64(a3, kBackgroundTaskAgentPowerOptLevel);
  v16 = int64;
  if (int64)
  {
    if (int64 >= 3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_5AD0(a3);
      }

      goto LABEL_41;
    }
  }

  else
  {
    v16 = 2;
    xpc_dictionary_set_int64(a3, v14, 2);
  }

  v17 = xpc_dictionary_get_double(a3, kBackgroundTaskAgentScreenBlankedTime);
  if (v17 < 0.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_5B6C(a3);
    }

    goto LABEL_41;
  }

  xpc_dictionary_set_BOOL(a3, kBackgroundTaskAgentJobStatusScreenBlanked, 0);
  v18 = xpc_dictionary_get_double(a3, kBackgroundTaskAgentPowerPluggedinTime);
  if (v18 < 0.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_5C00(a3);
    }

    goto LABEL_41;
  }

  xpc_dictionary_set_BOOL(a3, kBackgroundTaskAgentJobStatusPowerPluggedin, 0);
  v19 = kBackgroundTaskAgentRequiredBatteryLevel;
  v20 = xpc_dictionary_get_double(a3, kBackgroundTaskAgentRequiredBatteryLevel);
  v21 = v20;
  if (v20 < 0.0 || v20 > 0.0)
  {
    if (v20 < 0.0 || v20 > 100.0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_5C94(a3);
      }

      goto LABEL_41;
    }
  }

  else
  {
    xpc_dictionary_set_double(a3, v19, 0.0);
  }

  xpc_dictionary_set_BOOL(a3, kBackgroundTaskAgentJobStatusBatteryLevel, v21 == 0.0);
  v23 = kBackgroundTaskAgentAllowedDuringVoiceCall;
  v24 = xpc_dictionary_get_BOOL(a3, kBackgroundTaskAgentAllowedDuringVoiceCall);
  if (!v24)
  {
    xpc_dictionary_set_BOOL(a3, v23, 0);
  }

  v25 = kBackgroundTaskAgentAllowedDuringRoaming;
  v26 = xpc_dictionary_get_BOOL(a3, kBackgroundTaskAgentAllowedDuringRoaming);
  if (v26)
  {
    xpc_dictionary_set_int64(a3, kBackgroundTaskAgentJobStatus, 3);
    if (!v9)
    {
      goto LABEL_46;
    }
  }

  else
  {
    xpc_dictionary_set_BOOL(a3, v25, 0);
    xpc_dictionary_set_int64(a3, kBackgroundTaskAgentJobStatus, 3);
    if (!v9)
    {
LABEL_46:
      if (!v11)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }
  }

  [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] incrementNumAdjustTimeJobs];
  if (v11)
  {
LABEL_47:
    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] incrementNumNetworkJobs];
  }

LABEL_48:
  if (v17 >= 0.0)
  {
    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] incrementNumScreenBlankedJobs];
  }

  if (v16 != 2 && v18 < 0.0)
  {
    if (v24)
    {
      goto LABEL_53;
    }

LABEL_57:
    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] incrementNumJobsNotAllowedDuringVoiceCall];
    if (v26)
    {
      return 1;
    }

    goto LABEL_54;
  }

  [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] incrementNumPowerPluggedinJobs];
  if (!v24)
  {
    goto LABEL_57;
  }

LABEL_53:
  if (!v26)
  {
LABEL_54:
    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] incrementNumJobsNotAllowedWhileRoaming];
  }

  return 1;
}

- (void)addJobToQueue:(id)a3 withToken:(__CFNumber *)a4
{
  if (CFDictionaryContainsKey([(BackgroundTaskAgentJobManager *)self jobList], a4))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_5F88();
    }

    [(BackgroundTaskAgentJobManager *)self removeJob:CFDictionaryGetValue([(BackgroundTaskAgentJobManager *)self jobList] withToken:a4), a4];
  }

  xpc_retain(a3);
  CFDictionaryAddValue([(BackgroundTaskAgentJobManager *)self jobList], a4, a3);
}

- (void)printCurrentDeviceState:(id *)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v4 = +[NSMutableString string];
    [v4 appendFormat:@"CurrentDeviceState = {\n"];
    [v4 appendFormat:@"    currentTime               = %@;\n", stringFromCFAbsoluteTime(a3->var0)];
    [v4 appendFormat:@"    currentBatteryLevel       = %.1f;\n", *&a3->var3];
    [v4 appendFormat:@"    currentScreenBlankedTime  = %.1f;\n", *&a3->var1];
    [v4 appendFormat:@"    currentPowerPluggedinTime = %.1f;\n", *&a3->var2];
    [v4 appendFormat:@"    isInVoiceCall             = %d;\n", a3->var4];
    [v4 appendFormat:@"    isRoaming                 = %d;\n", a3->var5];
    [v4 appendFormat:@"    primaryLinkQuality        = %d;\n", a3->var6];
    [v4 appendFormat:@"    primaryLinkIsCellular     = %d;\n", a3->var7];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_5FCC(v4);
    }
  }
}

- (void)getCurrentDeviceState:(id *)a3
{
  a3->var0 = CFAbsoluteTimeGetCurrent();
  a3->var6 = [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] primaryLinkQuality];
  a3->var7 = [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] primaryLinkIsCellular];
  [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] batteryLevel];
  a3->var3 = v5;
  a3->var4 = [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] isInVoiceCall];
  a3->var5 = [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] isRoaming];
  v6 = [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] isScreenBlanked];
  v7 = -1.0;
  v8 = -1.0;
  if (v6)
  {
    var0 = a3->var0;
    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] lastScreenBlankedTime];
    v8 = var0 - v10;
  }

  a3->var1 = v8;
  if ([(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] isPowerPluggedin])
  {
    v11 = a3->var0;
    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] lastPowerPluggedinTime];
    v7 = v11 - v12;
  }

  a3->var2 = v7;

  [(BackgroundTaskAgentJobManager *)self printCurrentDeviceState:a3];
}

- (void)processJobList
{
  if ((byte_D938 & 1) == 0)
  {
    byte_D938 = 1;
    dispatch_time(0, 200000000);
    [(BackgroundTaskAgentJobManager *)self userEventAgentProvider];
    xpc_event_provider_get_queue();
  }
}

- (void)processJobListImmediately
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  if ([(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] pendingNetworkUpdate])
  {
    [(BackgroundTaskAgentJobManager *)self setHasPendingJobs:1];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_60DC();
    }
  }

  else
  {
    [(BackgroundTaskAgentJobManager *)self setHasPendingJobs:0];
    [(BackgroundTaskAgentJobManager *)self getCurrentDeviceState:&v14];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v3 = [(BackgroundTaskAgentJobManager *)self jobList];
      Count = CFDictionaryGetCount([(BackgroundTaskAgentJobManager *)self jobList]);
      sub_604C(v22, v3, Count);
    }

    self->_shouldScheduleConditionTimer = 0;
    self->_nextHardDeadlineJob = 0;
    self->_nextSoftDeadlineJob = 0;
    self->_nextSoftDeadlineTime = 6048000.0;
    *&self->_batteryLevelNotificationThreshold = xmmword_8D60;
    v5 = [(BackgroundTaskAgentJobManager *)self jobList];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_22BC;
    v10[3] = &unk_C4D8;
    v11 = v14;
    v12 = v15;
    v13 = v16;
    v10[4] = self;
    v10[5] = &v17;
    [(__CFDictionary *)v5 enumerateKeysAndObjectsUsingBlock:v10];
    v6 = v18[3];
    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "processJobList: Removing all expired jobs", buf, 2u);
        v6 = v18[3];
      }

      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_22D8;
      v9[3] = &unk_C488;
      v9[4] = self;
      [v6 enumerateKeysAndObjectsUsingBlock:v9];
      CFRelease(v18[3]);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v7 = [(BackgroundTaskAgentJobManager *)self jobList];
      v8 = CFDictionaryGetCount([(BackgroundTaskAgentJobManager *)self jobList]);
      sub_6094(buf, v7, v8);
    }

    [(BackgroundTaskAgentJobManager *)self scheduleTimerIfNecessary];
    if (self->_batteryLevelNotificationThreshold <= 100.0)
    {
      [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] notifyWhenBatteryLevel:self->_batteryLevelNotificationThreshold];
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)hasJobStatusChanged:(id)a3 withToken:(__CFNumber *)a4 withCurrentDeviceState:(id *)a5 withPointerToExpiredJobs:(__CFDictionary *)a6
{
  *value = 0u;
  v22 = 0u;
  v11 = kBackgroundTaskAgentJobStatus;
  int64 = xpc_dictionary_get_int64(a3, kBackgroundTaskAgentJobStatus);
  string = xpc_dictionary_get_string(a3, "BackgroundTaskAgentClientName");
  v14 = xpc_dictionary_get_double(a3, kBackgroundTaskAgentJobWindowStartTime);
  v15 = xpc_dictionary_get_double(a3, kBackgroundTaskAgentJobWindowEndTime);
  v16 = xpc_dictionary_get_int64(a3, kBackgroundTaskAgentPowerOptLevel);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v24 = [(NSString *)stringFromCFAbsoluteTime(v14) UTF8String];
    v25 = 2080;
    v26 = [(NSString *)stringFromCFAbsoluteTime(v15) UTF8String];
    v27 = 2080;
    v28 = string;
    v29 = 2080;
    v30 = [-[__CFNumber description](a4 "description")];
    v31 = 1024;
    v32 = int64;
    _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "[Job Window] Start = %s; End = %s; Client=%s; Token=%s; Status = %d;", buf, 0x30u);
  }

  v17 = v14 - a5->var0;
  v18 = v15 - a5->var0;
  if (v17 <= 0.0)
  {
    [(BackgroundTaskAgentJobManager *)self evalJobConditions:a3 withCurrentDeviceState:a5 andStoreJobStatusIn:value];
    xpc_dictionary_set_BOOL(a3, kBackgroundTaskAgentJobStatusNetwork, value[1]);
    xpc_dictionary_set_BOOL(a3, kBackgroundTaskAgentJobStatusScreenBlanked, value[2]);
    xpc_dictionary_set_BOOL(a3, kBackgroundTaskAgentJobStatusPowerPluggedin, value[3]);
    if (v18 >= 0.0)
    {
      self->_shouldScheduleConditionTimer = 1;
      xpc_dictionary_set_BOOL(a3, kBackgroundTaskAgentJobExpired, 0);
      if (value[0])
      {
        if (int64 == 3)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_6270(string, a4);
          }

          xpc_dictionary_set_int64(a3, v11, 2);
          [(BackgroundTaskAgentJobManager *)self postClientNotificationForJob:a3 withToken:a4];
        }
      }

      else
      {
        if (int64 == 2)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_61E8(string, a4);
          }

          xpc_dictionary_set_int64(a3, v11, 3);
          [(BackgroundTaskAgentJobManager *)self postClientNotificationForJob:a3 withToken:a4];
        }

        if (value[5] && *&value[8] < self->_batteryLevelNotificationThreshold)
        {
          self->_batteryLevelNotificationThreshold = *&value[8];
        }

        if (v22 == 1)
        {
          v20 = *(&v22 + 1);
          if (*(&v22 + 1) < self->_nextHardDeadlineTime)
          {
            self->_nextHardDeadlineJob = a3;
            self->_nextHardDeadlineTime = v20;
          }
        }
      }

      goto LABEL_34;
    }

    xpc_dictionary_set_BOOL(a3, kBackgroundTaskAgentJobExpired, 1);
    if (value[0])
    {
      xpc_dictionary_set_int64(a3, v11, 2);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_6380(string, a4);
      }
    }

    else
    {
      xpc_dictionary_set_int64(a3, v11, 3);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_62F8(string, a4);
      }
    }

    [(BackgroundTaskAgentJobManager *)self postClientNotificationForJob:a3 withToken:a4];
    Mutable = *a6;
    if (*a6 || (Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0), (*a6 = Mutable) != 0))
    {
      CFDictionaryAddValue(Mutable, a4, a3);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_6408();
    }
  }

  else if (v16 == 1)
  {
    if (v17 < self->_nextHardDeadlineTime)
    {
      self->_nextHardDeadlineJob = a3;
      self->_nextHardDeadlineTime = v17;
    }
  }

  else if (v16 == 2 && v17 < self->_nextSoftDeadlineTime)
  {
    self->_nextSoftDeadlineJob = a3;
    self->_nextSoftDeadlineTime = v17;
LABEL_34:
    if (v18 < self->_nextHardDeadlineTime)
    {
      self->_nextHardDeadlineJob = a3;
      self->_nextHardDeadlineTime = v18;
    }
  }
}

- (void)postClientNotificationForJob:(id)a3 withToken:(__CFNumber *)a4
{
  [(BackgroundTaskAgentJobManager *)self printJob:a3 withToken:a4 withPrefix:"JobNotification" withLogLevel:2 withJobStatus:1];
  xpc_dictionary_set_BOOL(a3, "BackgroundTaskAgentMessage", 1);
  valuePtr = 0;
  CFNumberGetValue(a4, kCFNumberLongLongType, &valuePtr);
  userEventAgentProvider = self->_userEventAgentProvider;
  xpc_event_provider_token_fire();
}

- (void)removeJob:(id)a3 withToken:(__CFNumber *)a4
{
  v7 = xpc_dictionary_get_BOOL(a3, kBackgroundTaskAgentJobWindowAdjustTime);
  v8 = xpc_dictionary_get_BOOL(a3, kBackgroundTaskAgentNetworkRequired);
  v9 = xpc_dictionary_get_double(a3, kBackgroundTaskAgentScreenBlankedTime);
  v10 = xpc_dictionary_get_double(a3, kBackgroundTaskAgentPowerPluggedinTime);
  int64 = xpc_dictionary_get_int64(a3, kBackgroundTaskAgentPowerOptLevel);
  v12 = xpc_dictionary_get_BOOL(a3, kBackgroundTaskAgentAllowedDuringVoiceCall);
  v13 = xpc_dictionary_get_BOOL(a3, kBackgroundTaskAgentAllowedDuringRoaming);
  if (v7)
  {
    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] decrementNumAdjustTimeJobs];
  }

  if (v8)
  {
    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] decrementNumNetworkJobs];
  }

  if (v9 >= 0.0)
  {
    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] decrementNumScreenBlankedJobs];
  }

  if (v10 >= 0.0 || int64 == 2)
  {
    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] decrementNumPowerPluggedinJobs];
    if (v12)
    {
LABEL_12:
      if (v13)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if (v12)
  {
    goto LABEL_12;
  }

  [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] decrementNumJobsNotAllowedDuringVoiceCall];
  if (!v13)
  {
LABEL_13:
    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] decrementNumJobsNotAllowedWhileRoaming];
  }

LABEL_14:
  CFDictionaryRemoveValue([(BackgroundTaskAgentJobManager *)self jobList], a4);

  xpc_release(a3);
}

- (void)scheduleTimerIfNecessary
{
  if (CFDictionaryGetCount([(BackgroundTaskAgentJobManager *)self jobList]) <= 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_66F0();
    }

    [(BackgroundTaskAgentJobManager *)self cancelTimer];
  }

  else
  {
    [(PCSimpleTimer *)self->_softTimer invalidate];

    self->_softTimer = 0;
    nextSoftDeadlineJob = self->_nextSoftDeadlineJob;
    if (nextSoftDeadlineJob)
    {
      v4 = [[PCSimpleTimer alloc] initWithTimeInterval:+[NSString stringWithFormat:](NSString serviceIdentifier:"stringWithFormat:" target:@"BTA-%s" selector:xpc_dictionary_get_string(nextSoftDeadlineJob userInfo:{"BackgroundTaskAgentClientName")), self, "pcTimerFired:", 0, self->_nextSoftDeadlineTime}];
      self->_softTimer = v4;
      [(PCSimpleTimer *)v4 setDisableSystemWaking:1];
      softTimer = self->_softTimer;
      [(BackgroundTaskAgentJobManager *)self userEventAgentProvider];
      xpc_event_provider_get_queue();
    }

    nextHardDeadlineJob = self->_nextHardDeadlineJob;
    if (self->_shouldScheduleConditionTimer)
    {
      if (!nextHardDeadlineJob || self->_nextHardDeadlineTime > 3600.0)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v8 = @"BTA-PeriodicConditionMonitor";
        v9 = 0.45;
        nextHardDeadlineTime = 3600.0;
        if (Current - *&qword_D928 < 180.0)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_6670();
          }

          return;
        }

        goto LABEL_19;
      }
    }

    else if (!nextHardDeadlineJob)
    {
      v8 = 0;
      v9 = 0.0;
      nextHardDeadlineTime = NAN;
LABEL_21:
      [(PCPersistentTimer *)self->_hardTimer invalidate];

      self->_hardTimer = 0;
      v16 = [[PCPersistentTimer alloc] initWithTimeInterval:v8 serviceIdentifier:self target:"hardTimerFired:" selector:0 userInfo:nextHardDeadlineTime];
      self->_hardTimer = v16;
      [(PCPersistentTimer *)v16 setMinimumEarlyFireProportion:v9];
      hardTimer = self->_hardTimer;
      [(BackgroundTaskAgentJobManager *)self userEventAgentProvider];
      xpc_event_provider_get_queue();
    }

    v11 = [NSDate dateWithTimeIntervalSinceNow:self->_nextHardDeadlineTime];
    lastFireDate = self->_lastFireDate;
    v13 = self->_nextHardDeadlineJob;
    if (!lastFireDate || self->_lastHardDeadlineJob != v13)
    {
LABEL_18:
      self->_lastHardDeadlineJob = v13;

      self->_lastFireDate = v11;
      v15 = v11;
      v8 = [NSString stringWithFormat:@"BTA-%s", xpc_dictionary_get_string(self->_nextHardDeadlineJob, "BackgroundTaskAgentClientName")];
      nextHardDeadlineTime = self->_nextHardDeadlineTime;
      v9 = 1.0;
      Current = NAN;
LABEL_19:
      qword_D928 = *&Current;
      goto LABEL_21;
    }

    [(NSDate *)lastFireDate timeIntervalSinceDate:v11];
    if (v14 > 1.0)
    {
      v13 = self->_nextHardDeadlineJob;
      lastFireDate = self->_lastFireDate;
      goto LABEL_18;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_6588();
    }
  }
}

- (void)pcTimerFired:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_6734();
  }

  [(BackgroundTaskAgentJobManager *)self processJobListImmediately];
}

- (void)cancelTimer
{
  [(PCPersistentTimer *)self->_hardTimer invalidate];

  self->_hardTimer = 0;
  [(PCSimpleTimer *)self->_softTimer invalidate];

  self->_softTimer = 0;
}

- (void)BackgroundTaskAgentMonitoredConditionChangedWithTimeChange:(double *)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_6778();
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a3)
  {
LABEL_3:
    [(BackgroundTaskAgentJobManager *)self adjustTime:*a3];
  }

LABEL_4:
  [(BackgroundTaskAgentJobManager *)self processJobList];
}

- (void)adjustTime:(double)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_2E80;
  v3[3] = &unk_C4F8;
  *&v3[4] = a3;
  [(__CFDictionary *)[(BackgroundTaskAgentJobManager *)self jobList] enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)evalJobConditions:(id)a3 withCurrentDeviceState:(id *)a4 andStoreJobStatusIn:(id *)a5
{
  var1 = a4->var1;
  var2 = a4->var2;
  string = xpc_dictionary_get_string(a3, "BackgroundTaskAgentClientName");
  v12 = xpc_dictionary_get_double(a3, kBackgroundTaskAgentScreenBlankedTime);
  if (v12 < 0.0)
  {
    a5->var2 = 1;
LABEL_5:
    v13 = -1.0;
    goto LABEL_6;
  }

  if (var1 < 0.0)
  {
    a5->var2 = 0;
    goto LABEL_5;
  }

  v13 = v12 - a4->var1;
  a5->var2 = v13 <= 0.0;
LABEL_6:
  v14 = xpc_dictionary_get_double(a3, kBackgroundTaskAgentPowerPluggedinTime);
  if (v14 >= 0.0)
  {
    if (var2 >= 0.0)
    {
      v15 = v14 - a4->var2;
      a5->var3 = v15 <= 0.0;
      goto LABEL_11;
    }

    a5->var3 = 0;
  }

  else
  {
    a5->var3 = 1;
  }

  v15 = -1.0;
LABEL_11:
  a5->var1 = [(BackgroundTaskAgentJobManager *)self areNetworkingRequirementsMetForJob:a3 withCurrentDeviceState:a4];
  v16 = xpc_dictionary_get_double(a3, kBackgroundTaskAgentRequiredBatteryLevel);
  v17 = v16;
  var3 = a4->var3;
  a5->var4 = var3 >= v16;
  v19 = a5->var1;
  if (!v19)
  {
    goto LABEL_35;
  }

  if (a5->var2 && a5->var3)
  {
    if (var3 >= v16)
    {
      v20 = 0;
      v21 = 0;
      v22 = 1;
      a5->var0 = 1;
LABEL_36:
      v27 = 0x4059400000000000;
      a5->var5 = 0;
      a5->var6 = 101.0;
      a5->var7 = 0;
LABEL_37:
      v28 = -1.0;
      a5->var8 = -1.0;
      goto LABEL_38;
    }

LABEL_47:
    v20 = 0;
    v22 = 0;
    a5->var0 = 0;
    v21 = 1;
    a5->var5 = 1;
    a5->var6 = v16;
    a5->var7 = 0;
    v27 = *&v16;
    goto LABEL_37;
  }

  v23 = v12 < 0.0;
  if (var1 < 0.0)
  {
    v23 = 1;
  }

  if (v12 >= 0.0 && v23)
  {
    goto LABEL_35;
  }

  v25 = v14 < 0.0;
  if (var2 < 0.0)
  {
    v25 = 1;
  }

  if (v14 >= 0.0 && v25)
  {
LABEL_35:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    a5->var0 = 0;
    goto LABEL_36;
  }

  if (var3 < v16)
  {
    goto LABEL_47;
  }

  v21 = 0;
  v22 = 0;
  v27 = 0x4059400000000000;
  a5->var0 = 0;
  a5->var5 = 0;
  a5->var6 = 101.0;
  v20 = 1;
  a5->var7 = 1;
  if (v13 <= v15)
  {
    v28 = v15;
  }

  else
  {
    v28 = v13;
  }

  a5->var8 = v28;
LABEL_38:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v29 = a5->var2;
    v30 = a5->var3;
    v31 = 136317442;
    v32 = string;
    v33 = 1024;
    v34 = v22;
    v35 = 1024;
    v36 = v19;
    v37 = 1024;
    v38 = v29;
    v39 = 1024;
    v40 = v30;
    v41 = 1024;
    v42 = var3 >= v17;
    v43 = 1024;
    v44 = v21;
    v45 = 2048;
    v46 = v27;
    v47 = 1024;
    v48 = v20;
    v49 = 2048;
    v50 = v28;
    _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "evalJobConditions(%s): isSatisfied = %d, isNetworkSatisfied = %d, isScreenBlankedSatisfied = %d, isPowerPluggedinSatisfied = %d, isBatteryLevelSatisfied = %d, isBatteryLevelNotificationNeeded = %d, notificationBatteryLevel = %.1f, isOnlyTimeWaitNeeded = %d, waitTime = %.1f", &v31, 0x4Au);
  }
}

- (BOOL)areNetworkingRequirementsMetForJob:(id)a3 withCurrentDeviceState:(id *)a4
{
  var6 = a4->var6;
  var2 = a4->var2;
  var7 = a4->var7;
  var4 = a4->var4;
  var5 = a4->var5;
  int64 = xpc_dictionary_get_int64(a3, kBackgroundTaskAgentPowerOptLevel);
  v11 = xpc_dictionary_get_BOOL(a3, kBackgroundTaskAgentNetworkRequired);
  v12 = xpc_dictionary_get_BOOL(a3, kBackgroundTaskAgentCellularAllowed);
  v13 = xpc_dictionary_get_BOOL(a3, kBackgroundTaskAgentAllowedDuringVoiceCall);
  v14 = xpc_dictionary_get_BOOL(a3, kBackgroundTaskAgentAllowedDuringRoaming) || !var5;
  if (v13 || !var4)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (!v12)
  {
    v15 = 0;
  }

  if (!v11)
  {
    return 1;
  }

  v16 = !var7 | v15;
  if (var2 >= 0.0 || int64 == 1)
  {
    v19 = var6 != 0;
  }

  else
  {
    v19 = var6 > 1;
  }

  return v19 & v16;
}

- (void)printJobListwithPrefix:(const char *)a3 withLogLevel:(unsigned __int8)a4 withJobStatus:(BOOL)a5
{
  if (os_log_type_enabled(&_os_log_default, a4))
  {
    if ([(BackgroundTaskAgentJobManager *)self jobList])
    {
      if (CFDictionaryGetCount([(BackgroundTaskAgentJobManager *)self jobList]) < 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_67BC();
        }
      }

      else
      {
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_34E0;
        v9[3] = &unk_C520;
        v9[4] = self;
        v9[5] = a3;
        v10 = a4;
        v11 = a5;
        [(__CFDictionary *)[(BackgroundTaskAgentJobManager *)self jobList] enumerateKeysAndObjectsUsingBlock:v9];
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_6834(a3);
    }
  }
}

- (void)printJob:(id)a3 withToken:(__CFNumber *)a4 withPrefix:(const char *)a5 withLogLevel:(unsigned __int8)a6 withJobStatus:(BOOL)a7
{
  v7 = a7;
  if (os_log_type_enabled(&_os_log_default, a6))
  {
    v12 = +[NSMutableString string];
    memset(v35, 0, sizeof(v35));
    [v12 appendFormat:@"%s\n(%s, %@) = {\n", a5, xpc_dictionary_get_string(a3, "BackgroundTaskAgentClientName"), a4, 0];
    CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
    if (xpc_get_event_name())
    {
      [v12 appendFormat:@"--- Job Name = %s\n", v35];
    }

    [v12 appendString:@"--- Job Requirements ---------\n"];
    v13 = kBackgroundTaskAgentJobWindowStartTime;
    if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentJobWindowStartTime))
    {
      v14 = xpc_dictionary_get_double(a3, v13);
      [v12 appendFormat:@"    StartTime              = %@;\n", stringFromCFAbsoluteTime(v14)];
    }

    v15 = kBackgroundTaskAgentJobWindowEndTime;
    if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentJobWindowEndTime))
    {
      v16 = xpc_dictionary_get_double(a3, v15);
      [v12 appendFormat:@"    EndTime                = %@;\n", stringFromCFAbsoluteTime(v16)];
    }

    v17 = kBackgroundTaskAgentJobWindowAdjustTime;
    if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentJobWindowAdjustTime))
    {
      [v12 appendFormat:@"    AdjustTime             = %3d;", xpc_dictionary_get_BOOL(a3, v17)];
    }

    v18 = kBackgroundTaskAgentNetworkRequired;
    if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentNetworkRequired))
    {
      [v12 appendFormat:@"    NetworkRequired        = %3d;", xpc_dictionary_get_BOOL(a3, v18)];
    }

    v19 = kBackgroundTaskAgentCellularAllowed;
    if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentCellularAllowed))
    {
      [v12 appendFormat:@"    CellularAllowed        = %3d;\n", xpc_dictionary_get_BOOL(a3, v19)];
    }

    v20 = kBackgroundTaskAgentAllowedDuringVoiceCall;
    if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentAllowedDuringVoiceCall))
    {
      [v12 appendFormat:@"    allowedDuringVoiceCall = %3d;", xpc_dictionary_get_BOOL(a3, v20)];
    }

    v21 = kBackgroundTaskAgentAllowedDuringRoaming;
    if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentAllowedDuringRoaming))
    {
      [v12 appendFormat:@"    allowedDuringRoaming   = %3d;", xpc_dictionary_get_BOOL(a3, v21)];
    }

    v22 = kBackgroundTaskAgentPowerOptLevel;
    if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentPowerOptLevel))
    {
      [v12 appendFormat:@"    PowerOptLevel          = %3lld;\n", xpc_dictionary_get_int64(a3, v22)];
    }

    v23 = kBackgroundTaskAgentScreenBlankedTime;
    if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentScreenBlankedTime))
    {
      [v12 appendFormat:@"    ScreenBlankedTime      = %.1f;", xpc_dictionary_get_double(a3, v23)];
    }

    v24 = kBackgroundTaskAgentPowerPluggedinTime;
    if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentPowerPluggedinTime))
    {
      [v12 appendFormat:@"    PowerPluggedinTime     = %.1f;", xpc_dictionary_get_double(a3, v24)];
    }

    v25 = kBackgroundTaskAgentRequiredBatteryLevel;
    if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentRequiredBatteryLevel))
    {
      [v12 appendFormat:@"    RequiredBatteryLevel   = %.1f;\n", xpc_dictionary_get_double(a3, v25)];
    }

    if (v7)
    {
      [v12 appendString:@"\n--- Status Info --------------\n"];
      v26 = kBackgroundTaskAgentJobStatus;
      if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentJobStatus))
      {
        [v12 appendFormat:@"    JobStatus              = %3lld;", xpc_dictionary_get_int64(a3, v26)];
      }

      v27 = kBackgroundTaskAgentJobExpired;
      if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentJobExpired))
      {
        [v12 appendFormat:@"    JobExpired             = %3d;", xpc_dictionary_get_BOOL(a3, v27)];
      }

      v28 = kBackgroundTaskAgentJobStatusNetwork;
      if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentJobStatusNetwork))
      {
        [v12 appendFormat:@"    JobStatusNetwork       = %3d;\n", xpc_dictionary_get_BOOL(a3, v28)];
      }

      v29 = kBackgroundTaskAgentJobStatusScreenBlanked;
      if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentJobStatusScreenBlanked))
      {
        [v12 appendFormat:@"    JobStatusScreenBlanked = %3d;", xpc_dictionary_get_BOOL(a3, v29)];
      }

      v30 = kBackgroundTaskAgentJobStatusPowerPluggedin;
      if (xpc_dictionary_get_value(a3, kBackgroundTaskAgentJobStatusPowerPluggedin))
      {
        [v12 appendFormat:@"    JobStatusPowerPluggedin= %3d;", xpc_dictionary_get_BOOL(a3, v30)];
      }
    }

    if (os_log_type_enabled(&_os_log_default, a6))
    {
      v31 = [objc_msgSend(v12 "description")];
      *buf = 136315138;
      v34 = v31;
      _os_log_impl(&dword_0, &_os_log_default, a6, "%s\n}", buf, 0xCu);
    }
  }
}

@end