@interface SBWakeLogger
+ (id)sharedInstance;
- (SBWakeLogger)init;
- (void)_lock_wakeDidBegin:(int64_t)begin;
- (void)dealloc;
- (void)lockDidBegin;
- (void)wakeDidBegin:(int64_t)begin;
- (void)wakeDidEnd;
- (void)wakeMayBegin:(int64_t)begin withTimestamp:(unint64_t)timestamp;
@end

@implementation SBWakeLogger

- (SBWakeLogger)init
{
  v16[1] = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v12.receiver = self;
  v12.super_class = SBWakeLogger;
  v3 = [(SBWakeLogger *)&v12 init];
  if (v3)
  {
    v15 = @"IOPropertyMatch";
    v13 = @"backlight-control";
    v14 = *MEMORY[0x1E695E4D0];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v16[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

    v3->_lock._os_unfair_lock_opaque = 0;
    mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
    v3->_homeButtonType = [mEMORY[0x1E698E730] homeButtonType];

    v7 = *MEMORY[0x1E696CD60];
    v8 = IOServiceMatching("AppleSPUTimesync");
    v3->_timesyncService = IOServiceGetMatchingService(v7, v8);
    if (MGGetBoolAnswer())
    {
      IOMobileFramebufferGetMainDisplay();
    }

    else
    {
      v3->_backlightService = IOServiceGetMatchingService(v7, v5);
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    wakeSouceToEventDict = v3->_wakeSouceToEventDict;
    v3->_wakeSouceToEventDict = v9;
  }

  kdebug_trace();
  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[SBWakeLogger sharedInstance];
  }

  v3 = __loggerInstance;

  return v3;
}

uint64_t __30__SBWakeLogger_sharedInstance__block_invoke()
{
  __loggerInstance = objc_alloc_init(SBWakeLogger);

  return MEMORY[0x1EEE66BB8]();
}

- (void)wakeDidEnd
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_trackingWake)
  {
    self->_trackingWake = 0;
    v3 = IORegistryEntrySearchCFProperty(self->_backlightService, "IOService", @"displayOnContinuousTimestamp", *MEMORY[0x1E695E480], 1u);
    v4 = SBLogTailspinSignposts();
    if (os_signpost_enabled(v4))
    {
      v5 = 134349056;
      unsignedLongLongValue = [v3 unsignedLongLongValue];
      _os_signpost_emit_with_name_impl(&dword_1BEA11000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_WAKE_EVENT", "%{public,signpost.description:end_time}llu enableTelemetry=YES ", &v5, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  IOObjectRelease(self->_timesyncService);
  IOObjectRelease(self->_backlightService);
  v3.receiver = self;
  v3.super_class = SBWakeLogger;
  [(SBWakeLogger *)&v3 dealloc];
}

- (void)wakeMayBegin:(int64_t)begin withTimestamp:(unint64_t)timestamp
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = [[SBWakeEvent alloc] initWithTimestamp:timestamp];
  wakeSouceToEventDict = self->_wakeSouceToEventDict;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:begin];
  [(NSMutableDictionary *)wakeSouceToEventDict setObject:v7 forKeyedSubscript:v9];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)wakeDidBegin:(int64_t)begin
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(SBWakeLogger *)self _lock_wakeDidBegin:begin];
  self->_activeWakeLoggerSource = begin;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)lockDidBegin
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_wakeSouceToEventDict removeAllObjects];
  self->_activeWakeLoggerSource = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_wakeDidBegin:(int64_t)begin
{
  v62 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_backlightService)
  {
    v55 = 0;
    v56 = 0;
    mach_get_times();
    v5 = 0uLL;
    valuePtr = 0u;
    v54 = 0u;
    timesyncService = self->_timesyncService;
    if (timesyncService)
    {
      CFProperty = IORegistryEntryCreateCFProperty(timesyncService, @"timesync", *MEMORY[0x1E695E480], 0);
      if (CFProperty)
      {
        v8 = CFProperty;
        Value = CFDictionaryGetValue(CFProperty, @"ap");
        v10 = CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
        v11 = CFDictionaryGetValue(v8, @"ap-cont");
        v12 = v10 & CFNumberGetValue(v11, kCFNumberLongLongType, &valuePtr + 8);
        v13 = CFDictionaryGetValue(v8, @"spu");
        v14 = CFNumberGetValue(v13, kCFNumberLongLongType, &v54);
        v15 = CFDictionaryGetValue(v8, @"calendar");
        v48 = v12 & (v14 & CFNumberGetValue(v15, kCFNumberLongLongType, &v54 + 8)) & 1;
        CFRelease(v8);
      }

      else
      {
        v48 = 0;
      }

      v5 = 0uLL;
    }

    else
    {
      v48 = 0;
    }

    v51 = v5;
    v52 = v5;
    v49 = v5;
    v50 = v5;
    obj = self->_wakeSouceToEventDict;
    v16 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v16)
    {
      v18 = v16;
      v19 = *v50;
      *&v17 = 134349056;
      v45 = v17;
      beginCopy = begin;
      do
      {
        v20 = 0;
        do
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v49 + 1) + 8 * v20);
          v22 = [(NSMutableDictionary *)self->_wakeSouceToEventDict objectForKey:v21, v45];
          integerValue = [v21 integerValue];
          eventRecvContTimestamp = [v22 eventRecvContTimestamp];
          eventAbsTimestamp = [v22 eventAbsTimestamp];
          if (integerValue <= 6)
          {
            v26 = eventAbsTimestamp;
            if (((1 << integerValue) & 0x66) != 0)
            {
              if (!v48)
              {
                goto LABEL_33;
              }

              v27 = valuePtr;
              v28 = v54;
              *info = 0;
              mach_timebase_info(info);
              v29 = v26 * *info / *&info[4];
              v30 = v28 - v27;
              goto LABEL_17;
            }

            if (integerValue == 3)
            {
              homeButtonType = self->_homeButtonType;
              if (homeButtonType != 1)
              {
                if (homeButtonType)
                {
                  goto LABEL_33;
                }

                goto LABEL_23;
              }

              if (!v48)
              {
                goto LABEL_33;
              }

              v42 = valuePtr;
              v43 = v54;
              *info = 0;
              mach_timebase_info(info);
              v29 = v26 * *info / *&info[4];
              v30 = v43 - v42;
LABEL_17:
              v31 = (v30 + v29) / 0x3E8;
              *info = 0;
              mach_timebase_info(info);
              v32 = v31 * *&info[4];
              begin = beginCopy;
              v33 = 1000 * v32 / *info;
            }

            else
            {
              if (integerValue != 4)
              {
                goto LABEL_33;
              }

LABEL_23:
              v57 = 0;
              *info = 0;
              mach_get_times();
              v33 = v57 + v26 - *info;
            }

            if (integerValue == begin)
            {
              self->_trackingWake = 1;
              v35 = SBLogTailspinSignposts();
              if (os_signpost_enabled(v35))
              {
                v36 = SBWakeLoggerSourceDescription(begin);
                uTF8String = [v36 UTF8String];
                *info = 134349314;
                *&info[4] = v33;
                v59 = 2082;
                v60 = uTF8String;
                _os_signpost_emit_with_name_impl(&dword_1BEA11000, v35, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_WAKE_EVENT", "%{public,signpost.description:begin_time,public}llu WakeReason=%{public,signpost.telemetry:string1}s enableTelemetry=YES ", info, 0x16u);
              }
            }

            v38 = SBLogTailspinSignposts();
            if (os_signpost_enabled(v38))
            {
              v39 = SBWakeLoggerSourceDescription(begin);
              uTF8String2 = [v39 UTF8String];
              *info = 134349314;
              *&info[4] = v33;
              v59 = 2082;
              v60 = uTF8String2;
              _os_signpost_emit_with_name_impl(&dword_1BEA11000, v38, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_WAKE_EVENT_HID_LATENCY", "%{public,signpost.description:begin_time}llu WakeReason=%{public,signpost.telemetry:string1}s enableTelemetry=YES ", info, 0x16u);
            }

            v41 = SBLogTailspinSignposts();
            if (os_signpost_enabled(v41))
            {
              *info = v45;
              *&info[4] = eventRecvContTimestamp;
              _os_signpost_emit_with_name_impl(&dword_1BEA11000, v41, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_WAKE_EVENT_HID_LATENCY", "%{public,signpost.description:end_time}llu enableTelemetry=YES ", info, 0xCu);
            }
          }

LABEL_33:

          ++v20;
        }

        while (v18 != v20);
        v44 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v49 objects:v61 count:16];
        v18 = v44;
      }

      while (v44);
    }

    [(NSMutableDictionary *)self->_wakeSouceToEventDict removeAllObjects];
  }
}

@end