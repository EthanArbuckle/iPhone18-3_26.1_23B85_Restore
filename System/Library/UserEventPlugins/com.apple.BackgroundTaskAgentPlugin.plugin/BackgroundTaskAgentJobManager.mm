@interface BackgroundTaskAgentJobManager
- (BOOL)areNetworkingRequirementsMetForJob:(id)job withCurrentDeviceState:(id *)state;
- (BOOL)validateAndAddDefaults:(id)defaults;
- (BackgroundTaskAgentJobManager)initWithUserEventAgentProvider:(void *)provider;
- (void)BackgroundTaskAgentMonitoredConditionChangedWithTimeChange:(double *)change;
- (void)addJobToQueue:(id)queue withToken:(__CFNumber *)token;
- (void)adjustTime:(double)time;
- (void)cancelJobWithToken:(unint64_t)token;
- (void)cancelTimer;
- (void)dealloc;
- (void)evalJobConditions:(id)conditions withCurrentDeviceState:(id *)state andStoreJobStatusIn:(id *)in;
- (void)getCurrentDeviceState:(id *)state;
- (void)hasJobStatusChanged:(id)changed withToken:(__CFNumber *)token withCurrentDeviceState:(id *)state withPointerToExpiredJobs:(__CFDictionary *)jobs;
- (void)newJob:(id)job withToken:(unint64_t)token;
- (void)pcTimerFired:(id)fired;
- (void)postClientNotificationForJob:(id)job withToken:(__CFNumber *)token;
- (void)printCurrentDeviceState:(id *)state;
- (void)printJob:(id)job withToken:(__CFNumber *)token withPrefix:(const char *)prefix withLogLevel:(unsigned __int8)level withJobStatus:(BOOL)status;
- (void)printJobListwithPrefix:(const char *)prefix withLogLevel:(unsigned __int8)level withJobStatus:(BOOL)status;
- (void)processJobList;
- (void)processJobListImmediately;
- (void)processPendingJobs:(id)jobs;
- (void)removeJob:(id)job withToken:(__CFNumber *)token;
- (void)scheduleTimerIfNecessary;
@end

@implementation BackgroundTaskAgentJobManager

- (BackgroundTaskAgentJobManager)initWithUserEventAgentProvider:(void *)provider
{
  v9.receiver = self;
  v9.super_class = BackgroundTaskAgentJobManager;
  v4 = [(BackgroundTaskAgentJobManager *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_userEventAgentProvider = provider;
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

- (void)processPendingJobs:(id)jobs
{
  if ([(BackgroundTaskAgentJobManager *)self hasPendingJobs])
  {

    [(BackgroundTaskAgentJobManager *)self processJobListImmediately];
  }
}

- (void)newJob:(id)job withToken:(unint64_t)token
{
  valuePtr = token;
  v10[0] = *"<unknown>";
  memset(&v10[1], 0, 112);
  xpc_get_event_name();
  if (job)
  {
    v6 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if ([(BackgroundTaskAgentJobManager *)self validateAndAddDefaults:job])
    {
      [(BackgroundTaskAgentJobManager *)self addJobToQueue:job withToken:v6];
      [(BackgroundTaskAgentJobManager *)self processJobList];
    }

    else
    {
      [(BackgroundTaskAgentJobManager *)self postClientNotificationForJob:job withToken:v6];
    }

    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] debugPrintMonitorStatus];
    v8[0] = @"event";
    v8[1] = @"token";
    v9[0] = @"add";
    v9[1] = v6;
    v8[2] = @"name";
    v9[2] = [NSString stringWithUTF8String:v10];
    v8[3] = @"client";
    v9[3] = [NSString stringWithUTF8String:xpc_dictionary_get_string(job, "BackgroundTaskAgentClientName")];
    [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];
    PLLogRegisteredEvent();
    CFRelease(v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_59D0();
  }
}

- (void)cancelJobWithToken:(unint64_t)token
{
  tokenCopy = token;
  v4 = CFNumberCreate(0, kCFNumberSInt64Type, &tokenCopy);
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

- (BOOL)validateAndAddDefaults:(id)defaults
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = xpc_dictionary_get_double(defaults, kBackgroundTaskAgentJobWindowStartTime);
  if (v6 < Current + -300.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_5EEC();
    }

LABEL_41:
    xpc_dictionary_set_int64(defaults, kBackgroundTaskAgentJobStatus, 1);
    return 0;
  }

  v7 = xpc_dictionary_get_double(defaults, kBackgroundTaskAgentJobWindowEndTime);
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

  xpc_dictionary_set_BOOL(defaults, kBackgroundTaskAgentJobExpired, 0);
  v8 = kBackgroundTaskAgentJobWindowAdjustTime;
  if (xpc_dictionary_get_value(defaults, kBackgroundTaskAgentJobWindowAdjustTime))
  {
    v9 = xpc_dictionary_get_BOOL(defaults, v8);
  }

  else
  {
    v9 = 1;
    xpc_dictionary_set_BOOL(defaults, v8, 1);
  }

  v10 = kBackgroundTaskAgentNetworkRequired;
  v11 = xpc_dictionary_get_BOOL(defaults, kBackgroundTaskAgentNetworkRequired);
  v12 = kBackgroundTaskAgentCellularAllowed;
  v13 = xpc_dictionary_get_BOOL(defaults, kBackgroundTaskAgentCellularAllowed);
  if (!v11)
  {
    xpc_dictionary_set_BOOL(defaults, v10, 0);
    xpc_dictionary_set_BOOL(defaults, kBackgroundTaskAgentJobStatusNetwork, 1);
    if (v13)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_5A4C(defaults);
      }

      goto LABEL_41;
    }

    goto LABEL_22;
  }

  xpc_dictionary_set_BOOL(defaults, kBackgroundTaskAgentJobStatusNetwork, 0);
  if (!v13)
  {
LABEL_22:
    xpc_dictionary_set_BOOL(defaults, v12, 0);
  }

  v14 = kBackgroundTaskAgentPowerOptLevel;
  int64 = xpc_dictionary_get_int64(defaults, kBackgroundTaskAgentPowerOptLevel);
  v16 = int64;
  if (int64)
  {
    if (int64 >= 3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_5AD0(defaults);
      }

      goto LABEL_41;
    }
  }

  else
  {
    v16 = 2;
    xpc_dictionary_set_int64(defaults, v14, 2);
  }

  v17 = xpc_dictionary_get_double(defaults, kBackgroundTaskAgentScreenBlankedTime);
  if (v17 < 0.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_5B6C(defaults);
    }

    goto LABEL_41;
  }

  xpc_dictionary_set_BOOL(defaults, kBackgroundTaskAgentJobStatusScreenBlanked, 0);
  v18 = xpc_dictionary_get_double(defaults, kBackgroundTaskAgentPowerPluggedinTime);
  if (v18 < 0.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_5C00(defaults);
    }

    goto LABEL_41;
  }

  xpc_dictionary_set_BOOL(defaults, kBackgroundTaskAgentJobStatusPowerPluggedin, 0);
  v19 = kBackgroundTaskAgentRequiredBatteryLevel;
  v20 = xpc_dictionary_get_double(defaults, kBackgroundTaskAgentRequiredBatteryLevel);
  v21 = v20;
  if (v20 < 0.0 || v20 > 0.0)
  {
    if (v20 < 0.0 || v20 > 100.0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_5C94(defaults);
      }

      goto LABEL_41;
    }
  }

  else
  {
    xpc_dictionary_set_double(defaults, v19, 0.0);
  }

  xpc_dictionary_set_BOOL(defaults, kBackgroundTaskAgentJobStatusBatteryLevel, v21 == 0.0);
  v23 = kBackgroundTaskAgentAllowedDuringVoiceCall;
  v24 = xpc_dictionary_get_BOOL(defaults, kBackgroundTaskAgentAllowedDuringVoiceCall);
  if (!v24)
  {
    xpc_dictionary_set_BOOL(defaults, v23, 0);
  }

  v25 = kBackgroundTaskAgentAllowedDuringRoaming;
  v26 = xpc_dictionary_get_BOOL(defaults, kBackgroundTaskAgentAllowedDuringRoaming);
  if (v26)
  {
    xpc_dictionary_set_int64(defaults, kBackgroundTaskAgentJobStatus, 3);
    if (!v9)
    {
      goto LABEL_46;
    }
  }

  else
  {
    xpc_dictionary_set_BOOL(defaults, v25, 0);
    xpc_dictionary_set_int64(defaults, kBackgroundTaskAgentJobStatus, 3);
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

- (void)addJobToQueue:(id)queue withToken:(__CFNumber *)token
{
  if (CFDictionaryContainsKey([(BackgroundTaskAgentJobManager *)self jobList], token))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_5F88();
    }

    [(BackgroundTaskAgentJobManager *)self removeJob:CFDictionaryGetValue([(BackgroundTaskAgentJobManager *)self jobList] withToken:token), token];
  }

  xpc_retain(queue);
  CFDictionaryAddValue([(BackgroundTaskAgentJobManager *)self jobList], token, queue);
}

- (void)printCurrentDeviceState:(id *)state
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v4 = +[NSMutableString string];
    [v4 appendFormat:@"CurrentDeviceState = {\n"];
    [v4 appendFormat:@"    currentTime               = %@;\n", stringFromCFAbsoluteTime(state->var0)];
    [v4 appendFormat:@"    currentBatteryLevel       = %.1f;\n", *&state->var3];
    [v4 appendFormat:@"    currentScreenBlankedTime  = %.1f;\n", *&state->var1];
    [v4 appendFormat:@"    currentPowerPluggedinTime = %.1f;\n", *&state->var2];
    [v4 appendFormat:@"    isInVoiceCall             = %d;\n", state->var4];
    [v4 appendFormat:@"    isRoaming                 = %d;\n", state->var5];
    [v4 appendFormat:@"    primaryLinkQuality        = %d;\n", state->var6];
    [v4 appendFormat:@"    primaryLinkIsCellular     = %d;\n", state->var7];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_5FCC(v4);
    }
  }
}

- (void)getCurrentDeviceState:(id *)state
{
  state->var0 = CFAbsoluteTimeGetCurrent();
  state->var6 = [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] primaryLinkQuality];
  state->var7 = [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] primaryLinkIsCellular];
  [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] batteryLevel];
  state->var3 = v5;
  state->var4 = [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] isInVoiceCall];
  state->var5 = [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] isRoaming];
  isScreenBlanked = [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] isScreenBlanked];
  v7 = -1.0;
  v8 = -1.0;
  if (isScreenBlanked)
  {
    var0 = state->var0;
    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] lastScreenBlankedTime];
    v8 = var0 - v10;
  }

  state->var1 = v8;
  if ([(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] isPowerPluggedin])
  {
    v11 = state->var0;
    [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] lastPowerPluggedinTime];
    v7 = v11 - v12;
  }

  state->var2 = v7;

  [(BackgroundTaskAgentJobManager *)self printCurrentDeviceState:state];
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
      jobList = [(BackgroundTaskAgentJobManager *)self jobList];
      Count = CFDictionaryGetCount([(BackgroundTaskAgentJobManager *)self jobList]);
      sub_604C(v22, jobList, Count);
    }

    self->_shouldScheduleConditionTimer = 0;
    self->_nextHardDeadlineJob = 0;
    self->_nextSoftDeadlineJob = 0;
    self->_nextSoftDeadlineTime = 6048000.0;
    *&self->_batteryLevelNotificationThreshold = xmmword_8D60;
    jobList2 = [(BackgroundTaskAgentJobManager *)self jobList];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_22BC;
    v10[3] = &unk_C4D8;
    v11 = v14;
    v12 = v15;
    v13 = v16;
    v10[4] = self;
    v10[5] = &v17;
    [(__CFDictionary *)jobList2 enumerateKeysAndObjectsUsingBlock:v10];
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
      jobList3 = [(BackgroundTaskAgentJobManager *)self jobList];
      v8 = CFDictionaryGetCount([(BackgroundTaskAgentJobManager *)self jobList]);
      sub_6094(buf, jobList3, v8);
    }

    [(BackgroundTaskAgentJobManager *)self scheduleTimerIfNecessary];
    if (self->_batteryLevelNotificationThreshold <= 100.0)
    {
      [(BackgroundTaskAgentMonitor *)[(BackgroundTaskAgentJobManager *)self monitor] notifyWhenBatteryLevel:self->_batteryLevelNotificationThreshold];
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)hasJobStatusChanged:(id)changed withToken:(__CFNumber *)token withCurrentDeviceState:(id *)state withPointerToExpiredJobs:(__CFDictionary *)jobs
{
  *value = 0u;
  v22 = 0u;
  v11 = kBackgroundTaskAgentJobStatus;
  int64 = xpc_dictionary_get_int64(changed, kBackgroundTaskAgentJobStatus);
  string = xpc_dictionary_get_string(changed, "BackgroundTaskAgentClientName");
  v14 = xpc_dictionary_get_double(changed, kBackgroundTaskAgentJobWindowStartTime);
  v15 = xpc_dictionary_get_double(changed, kBackgroundTaskAgentJobWindowEndTime);
  v16 = xpc_dictionary_get_int64(changed, kBackgroundTaskAgentPowerOptLevel);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    uTF8String = [(NSString *)stringFromCFAbsoluteTime(v14) UTF8String];
    v25 = 2080;
    uTF8String2 = [(NSString *)stringFromCFAbsoluteTime(v15) UTF8String];
    v27 = 2080;
    v28 = string;
    v29 = 2080;
    v30 = [-[__CFNumber description](token "description")];
    v31 = 1024;
    v32 = int64;
    _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "[Job Window] Start = %s; End = %s; Client=%s; Token=%s; Status = %d;", buf, 0x30u);
  }

  v17 = v14 - state->var0;
  v18 = v15 - state->var0;
  if (v17 <= 0.0)
  {
    [(BackgroundTaskAgentJobManager *)self evalJobConditions:changed withCurrentDeviceState:state andStoreJobStatusIn:value];
    xpc_dictionary_set_BOOL(changed, kBackgroundTaskAgentJobStatusNetwork, value[1]);
    xpc_dictionary_set_BOOL(changed, kBackgroundTaskAgentJobStatusScreenBlanked, value[2]);
    xpc_dictionary_set_BOOL(changed, kBackgroundTaskAgentJobStatusPowerPluggedin, value[3]);
    if (v18 >= 0.0)
    {
      self->_shouldScheduleConditionTimer = 1;
      xpc_dictionary_set_BOOL(changed, kBackgroundTaskAgentJobExpired, 0);
      if (value[0])
      {
        if (int64 == 3)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_6270(string, token);
          }

          xpc_dictionary_set_int64(changed, v11, 2);
          [(BackgroundTaskAgentJobManager *)self postClientNotificationForJob:changed withToken:token];
        }
      }

      else
      {
        if (int64 == 2)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_61E8(string, token);
          }

          xpc_dictionary_set_int64(changed, v11, 3);
          [(BackgroundTaskAgentJobManager *)self postClientNotificationForJob:changed withToken:token];
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
            self->_nextHardDeadlineJob = changed;
            self->_nextHardDeadlineTime = v20;
          }
        }
      }

      goto LABEL_34;
    }

    xpc_dictionary_set_BOOL(changed, kBackgroundTaskAgentJobExpired, 1);
    if (value[0])
    {
      xpc_dictionary_set_int64(changed, v11, 2);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_6380(string, token);
      }
    }

    else
    {
      xpc_dictionary_set_int64(changed, v11, 3);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_62F8(string, token);
      }
    }

    [(BackgroundTaskAgentJobManager *)self postClientNotificationForJob:changed withToken:token];
    Mutable = *jobs;
    if (*jobs || (Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0), (*jobs = Mutable) != 0))
    {
      CFDictionaryAddValue(Mutable, token, changed);
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
      self->_nextHardDeadlineJob = changed;
      self->_nextHardDeadlineTime = v17;
    }
  }

  else if (v16 == 2 && v17 < self->_nextSoftDeadlineTime)
  {
    self->_nextSoftDeadlineJob = changed;
    self->_nextSoftDeadlineTime = v17;
LABEL_34:
    if (v18 < self->_nextHardDeadlineTime)
    {
      self->_nextHardDeadlineJob = changed;
      self->_nextHardDeadlineTime = v18;
    }
  }
}

- (void)postClientNotificationForJob:(id)job withToken:(__CFNumber *)token
{
  [(BackgroundTaskAgentJobManager *)self printJob:job withToken:token withPrefix:"JobNotification" withLogLevel:2 withJobStatus:1];
  xpc_dictionary_set_BOOL(job, "BackgroundTaskAgentMessage", 1);
  valuePtr = 0;
  CFNumberGetValue(token, kCFNumberLongLongType, &valuePtr);
  userEventAgentProvider = self->_userEventAgentProvider;
  xpc_event_provider_token_fire();
}

- (void)removeJob:(id)job withToken:(__CFNumber *)token
{
  v7 = xpc_dictionary_get_BOOL(job, kBackgroundTaskAgentJobWindowAdjustTime);
  v8 = xpc_dictionary_get_BOOL(job, kBackgroundTaskAgentNetworkRequired);
  v9 = xpc_dictionary_get_double(job, kBackgroundTaskAgentScreenBlankedTime);
  v10 = xpc_dictionary_get_double(job, kBackgroundTaskAgentPowerPluggedinTime);
  int64 = xpc_dictionary_get_int64(job, kBackgroundTaskAgentPowerOptLevel);
  v12 = xpc_dictionary_get_BOOL(job, kBackgroundTaskAgentAllowedDuringVoiceCall);
  v13 = xpc_dictionary_get_BOOL(job, kBackgroundTaskAgentAllowedDuringRoaming);
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
  CFDictionaryRemoveValue([(BackgroundTaskAgentJobManager *)self jobList], token);

  xpc_release(job);
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

- (void)pcTimerFired:(id)fired
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

- (void)BackgroundTaskAgentMonitoredConditionChangedWithTimeChange:(double *)change
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_6778();
    if (!change)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (change)
  {
LABEL_3:
    [(BackgroundTaskAgentJobManager *)self adjustTime:*change];
  }

LABEL_4:
  [(BackgroundTaskAgentJobManager *)self processJobList];
}

- (void)adjustTime:(double)time
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_2E80;
  v3[3] = &unk_C4F8;
  *&v3[4] = time;
  [(__CFDictionary *)[(BackgroundTaskAgentJobManager *)self jobList] enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)evalJobConditions:(id)conditions withCurrentDeviceState:(id *)state andStoreJobStatusIn:(id *)in
{
  var1 = state->var1;
  var2 = state->var2;
  string = xpc_dictionary_get_string(conditions, "BackgroundTaskAgentClientName");
  v12 = xpc_dictionary_get_double(conditions, kBackgroundTaskAgentScreenBlankedTime);
  if (v12 < 0.0)
  {
    in->var2 = 1;
LABEL_5:
    v13 = -1.0;
    goto LABEL_6;
  }

  if (var1 < 0.0)
  {
    in->var2 = 0;
    goto LABEL_5;
  }

  v13 = v12 - state->var1;
  in->var2 = v13 <= 0.0;
LABEL_6:
  v14 = xpc_dictionary_get_double(conditions, kBackgroundTaskAgentPowerPluggedinTime);
  if (v14 >= 0.0)
  {
    if (var2 >= 0.0)
    {
      v15 = v14 - state->var2;
      in->var3 = v15 <= 0.0;
      goto LABEL_11;
    }

    in->var3 = 0;
  }

  else
  {
    in->var3 = 1;
  }

  v15 = -1.0;
LABEL_11:
  in->var1 = [(BackgroundTaskAgentJobManager *)self areNetworkingRequirementsMetForJob:conditions withCurrentDeviceState:state];
  v16 = xpc_dictionary_get_double(conditions, kBackgroundTaskAgentRequiredBatteryLevel);
  v17 = v16;
  var3 = state->var3;
  in->var4 = var3 >= v16;
  v19 = in->var1;
  if (!v19)
  {
    goto LABEL_35;
  }

  if (in->var2 && in->var3)
  {
    if (var3 >= v16)
    {
      v20 = 0;
      v21 = 0;
      v22 = 1;
      in->var0 = 1;
LABEL_36:
      v27 = 0x4059400000000000;
      in->var5 = 0;
      in->var6 = 101.0;
      in->var7 = 0;
LABEL_37:
      v28 = -1.0;
      in->var8 = -1.0;
      goto LABEL_38;
    }

LABEL_47:
    v20 = 0;
    v22 = 0;
    in->var0 = 0;
    v21 = 1;
    in->var5 = 1;
    in->var6 = v16;
    in->var7 = 0;
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
    in->var0 = 0;
    goto LABEL_36;
  }

  if (var3 < v16)
  {
    goto LABEL_47;
  }

  v21 = 0;
  v22 = 0;
  v27 = 0x4059400000000000;
  in->var0 = 0;
  in->var5 = 0;
  in->var6 = 101.0;
  v20 = 1;
  in->var7 = 1;
  if (v13 <= v15)
  {
    v28 = v15;
  }

  else
  {
    v28 = v13;
  }

  in->var8 = v28;
LABEL_38:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v29 = in->var2;
    v30 = in->var3;
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

- (BOOL)areNetworkingRequirementsMetForJob:(id)job withCurrentDeviceState:(id *)state
{
  var6 = state->var6;
  var2 = state->var2;
  var7 = state->var7;
  var4 = state->var4;
  var5 = state->var5;
  int64 = xpc_dictionary_get_int64(job, kBackgroundTaskAgentPowerOptLevel);
  v11 = xpc_dictionary_get_BOOL(job, kBackgroundTaskAgentNetworkRequired);
  v12 = xpc_dictionary_get_BOOL(job, kBackgroundTaskAgentCellularAllowed);
  v13 = xpc_dictionary_get_BOOL(job, kBackgroundTaskAgentAllowedDuringVoiceCall);
  v14 = xpc_dictionary_get_BOOL(job, kBackgroundTaskAgentAllowedDuringRoaming) || !var5;
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

- (void)printJobListwithPrefix:(const char *)prefix withLogLevel:(unsigned __int8)level withJobStatus:(BOOL)status
{
  if (os_log_type_enabled(&_os_log_default, level))
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
        v9[5] = prefix;
        levelCopy = level;
        statusCopy = status;
        [(__CFDictionary *)[(BackgroundTaskAgentJobManager *)self jobList] enumerateKeysAndObjectsUsingBlock:v9];
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_6834(prefix);
    }
  }
}

- (void)printJob:(id)job withToken:(__CFNumber *)token withPrefix:(const char *)prefix withLogLevel:(unsigned __int8)level withJobStatus:(BOOL)status
{
  statusCopy = status;
  if (os_log_type_enabled(&_os_log_default, level))
  {
    v12 = +[NSMutableString string];
    memset(v35, 0, sizeof(v35));
    [v12 appendFormat:@"%s\n(%s, %@) = {\n", prefix, xpc_dictionary_get_string(job, "BackgroundTaskAgentClientName"), token, 0];
    CFNumberGetValue(token, kCFNumberSInt64Type, &valuePtr);
    if (xpc_get_event_name())
    {
      [v12 appendFormat:@"--- Job Name = %s\n", v35];
    }

    [v12 appendString:@"--- Job Requirements ---------\n"];
    v13 = kBackgroundTaskAgentJobWindowStartTime;
    if (xpc_dictionary_get_value(job, kBackgroundTaskAgentJobWindowStartTime))
    {
      v14 = xpc_dictionary_get_double(job, v13);
      [v12 appendFormat:@"    StartTime              = %@;\n", stringFromCFAbsoluteTime(v14)];
    }

    v15 = kBackgroundTaskAgentJobWindowEndTime;
    if (xpc_dictionary_get_value(job, kBackgroundTaskAgentJobWindowEndTime))
    {
      v16 = xpc_dictionary_get_double(job, v15);
      [v12 appendFormat:@"    EndTime                = %@;\n", stringFromCFAbsoluteTime(v16)];
    }

    v17 = kBackgroundTaskAgentJobWindowAdjustTime;
    if (xpc_dictionary_get_value(job, kBackgroundTaskAgentJobWindowAdjustTime))
    {
      [v12 appendFormat:@"    AdjustTime             = %3d;", xpc_dictionary_get_BOOL(job, v17)];
    }

    v18 = kBackgroundTaskAgentNetworkRequired;
    if (xpc_dictionary_get_value(job, kBackgroundTaskAgentNetworkRequired))
    {
      [v12 appendFormat:@"    NetworkRequired        = %3d;", xpc_dictionary_get_BOOL(job, v18)];
    }

    v19 = kBackgroundTaskAgentCellularAllowed;
    if (xpc_dictionary_get_value(job, kBackgroundTaskAgentCellularAllowed))
    {
      [v12 appendFormat:@"    CellularAllowed        = %3d;\n", xpc_dictionary_get_BOOL(job, v19)];
    }

    v20 = kBackgroundTaskAgentAllowedDuringVoiceCall;
    if (xpc_dictionary_get_value(job, kBackgroundTaskAgentAllowedDuringVoiceCall))
    {
      [v12 appendFormat:@"    allowedDuringVoiceCall = %3d;", xpc_dictionary_get_BOOL(job, v20)];
    }

    v21 = kBackgroundTaskAgentAllowedDuringRoaming;
    if (xpc_dictionary_get_value(job, kBackgroundTaskAgentAllowedDuringRoaming))
    {
      [v12 appendFormat:@"    allowedDuringRoaming   = %3d;", xpc_dictionary_get_BOOL(job, v21)];
    }

    v22 = kBackgroundTaskAgentPowerOptLevel;
    if (xpc_dictionary_get_value(job, kBackgroundTaskAgentPowerOptLevel))
    {
      [v12 appendFormat:@"    PowerOptLevel          = %3lld;\n", xpc_dictionary_get_int64(job, v22)];
    }

    v23 = kBackgroundTaskAgentScreenBlankedTime;
    if (xpc_dictionary_get_value(job, kBackgroundTaskAgentScreenBlankedTime))
    {
      [v12 appendFormat:@"    ScreenBlankedTime      = %.1f;", xpc_dictionary_get_double(job, v23)];
    }

    v24 = kBackgroundTaskAgentPowerPluggedinTime;
    if (xpc_dictionary_get_value(job, kBackgroundTaskAgentPowerPluggedinTime))
    {
      [v12 appendFormat:@"    PowerPluggedinTime     = %.1f;", xpc_dictionary_get_double(job, v24)];
    }

    v25 = kBackgroundTaskAgentRequiredBatteryLevel;
    if (xpc_dictionary_get_value(job, kBackgroundTaskAgentRequiredBatteryLevel))
    {
      [v12 appendFormat:@"    RequiredBatteryLevel   = %.1f;\n", xpc_dictionary_get_double(job, v25)];
    }

    if (statusCopy)
    {
      [v12 appendString:@"\n--- Status Info --------------\n"];
      v26 = kBackgroundTaskAgentJobStatus;
      if (xpc_dictionary_get_value(job, kBackgroundTaskAgentJobStatus))
      {
        [v12 appendFormat:@"    JobStatus              = %3lld;", xpc_dictionary_get_int64(job, v26)];
      }

      v27 = kBackgroundTaskAgentJobExpired;
      if (xpc_dictionary_get_value(job, kBackgroundTaskAgentJobExpired))
      {
        [v12 appendFormat:@"    JobExpired             = %3d;", xpc_dictionary_get_BOOL(job, v27)];
      }

      v28 = kBackgroundTaskAgentJobStatusNetwork;
      if (xpc_dictionary_get_value(job, kBackgroundTaskAgentJobStatusNetwork))
      {
        [v12 appendFormat:@"    JobStatusNetwork       = %3d;\n", xpc_dictionary_get_BOOL(job, v28)];
      }

      v29 = kBackgroundTaskAgentJobStatusScreenBlanked;
      if (xpc_dictionary_get_value(job, kBackgroundTaskAgentJobStatusScreenBlanked))
      {
        [v12 appendFormat:@"    JobStatusScreenBlanked = %3d;", xpc_dictionary_get_BOOL(job, v29)];
      }

      v30 = kBackgroundTaskAgentJobStatusPowerPluggedin;
      if (xpc_dictionary_get_value(job, kBackgroundTaskAgentJobStatusPowerPluggedin))
      {
        [v12 appendFormat:@"    JobStatusPowerPluggedin= %3d;", xpc_dictionary_get_BOOL(job, v30)];
      }
    }

    if (os_log_type_enabled(&_os_log_default, level))
    {
      v31 = [objc_msgSend(v12 "description")];
      *buf = 136315138;
      v34 = v31;
      _os_log_impl(&dword_0, &_os_log_default, level, "%s\n}", buf, 0xCu);
    }
  }
}

@end