@interface IOKitHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (IOKitHandler)init;
- (int)read:(id)read returnedValues:(id)values;
- (unint64_t)mostRecentAPSleepMachTime;
- (unint64_t)mostRecentAPWakeMachTime;
- (void)dealloc;
- (void)disableIOKitAssertionNotifications;
- (void)disableIOKitPowerNotifications;
- (void)enableIOKitAssertionNotifications;
- (void)enableIOKitPowerNotifications;
- (void)reportIOPMAssertionException:(int)exception pid:(int)pid;
- (void)updateMostRecentAPSleepTime;
- (void)updateMostRecentAPWakeTime;
@end

@implementation IOKitHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__IOKitHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_20 != -1)
  {
    dispatch_once(&sharedInstance_pred_20, block);
  }

  v2 = sharedInstance_sharedInstance_20;

  return v2;
}

- (unint64_t)mostRecentAPWakeMachTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mostRecentAPWakeMachTime = selfCopy->_mostRecentAPWakeMachTime;
  objc_sync_exit(selfCopy);

  return mostRecentAPWakeMachTime;
}

- (void)updateMostRecentAPWakeTime
{
  obj = self;
  objc_sync_enter(obj);
  [(IOKitHandler *)obj willChangeValueForKey:@"mostRecentAPWakeMachTime"];
  obj->_mostRecentAPWakeMachTime = mach_absolute_time();
  [(IOKitHandler *)obj didChangeValueForKey:@"mostRecentAPWakeMachTime"];
  objc_sync_exit(obj);
}

void __30__IOKitHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_20;
  sharedInstance_sharedInstance_20 = v1;

  [sharedInstance_sharedInstance_20 enableIOKitPowerNotifications];
  [sharedInstance_sharedInstance_20 enableIOKitAssertionNotifications];
  v3 = sharedInstance_sharedInstance_20;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

- (IOKitHandler)init
{
  v7.receiver = self;
  v7.super_class = IOKitHandler;
  v2 = [(IOKitHandler *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.iokit.pmassertion", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)dealloc
{
  [(IOKitHandler *)self disableIOKitAssertionNotifications];
  [(IOKitHandler *)self disableIOKitPowerNotifications];
  v3.receiver = self;
  v3.super_class = IOKitHandler;
  [(IOKitHandler *)&v3 dealloc];
}

- (void)enableIOKitAssertionNotifications
{
  v3 = +[SystemProperties sharedInstance];
  internalBuild = [v3 internalBuild];

  if (internalBuild && !self->_ioHdl)
  {
    v5 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Enabling scheduling of IOPMAssertionExceptionNotifications", buf, 2u);
    }

    queue = self->_queue;
    v7 = IOPMScheduleAssertionExceptionNotification();
    self->_ioHdl = v7;
    if (!v7)
    {
      v8 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "IOPMScheduleAssertionExceptionNotification failed", buf, 2u);
      }
    }
  }
}

void __49__IOKitHandler_enableIOKitAssertionNotifications__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v9 = *MEMORY[0x277D85DE8];
  if (a2 <= 4 && ((1 << a2) & 0x16) != 0)
  {
    v4 = *(a1 + 32);
    v5 = *MEMORY[0x277D85DE8];

    [v4 reportIOPMAssertionException:a2 pid:a3];
  }

  else
  {
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Received an IOPMAssertionException that we don't handle: %d.", v8, 8u);
    }

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (void)disableIOKitAssertionNotifications
{
  if (self->_ioHdl)
  {
    IOPMUnregisterExceptionNotification();
    self->_ioHdl = 0;
  }
}

- (void)reportIOPMAssertionException:(int)exception pid:(int)pid
{
  exceptionCopy = exception;
  v56 = *MEMORY[0x277D85DE8];
  valuePtr = pid;
  v6 = debuggabilityLogHandle;
  switch(exception)
  {
    case 4:
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315394;
      *&buf[4] = "kIOPMAssertionSystemTimeoutException";
      *&buf[12] = 1024;
      pidCopy3 = pid;
      v7 = "Received IOPMAssertion of type %s for pid %d received.";
      goto LABEL_10;
    case 2:
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315394;
      *&buf[4] = "kIOPMAssertionAggregateException";
      *&buf[12] = 1024;
      pidCopy3 = pid;
      v7 = "Received IOPMAssertion of type %s for pid %d received.";
      goto LABEL_10;
    case 1:
      if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315394;
      *&buf[4] = "kIOPMAssertionDurationException";
      *&buf[12] = 1024;
      pidCopy3 = pid;
      v7 = "Received IOPMAssertion of type %s for pid %d received.";
LABEL_10:
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 18;
      goto LABEL_13;
  }

  if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    goto LABEL_14;
  }

  *buf = 67109376;
  *&buf[4] = exceptionCopy;
  *&buf[8] = 1024;
  *&buf[10] = pid;
  v7 = "Received an IOPMAssertionException that we don't handle: %d for pid %d.";
  v8 = v6;
  v9 = OS_LOG_TYPE_INFO;
  v10 = 14;
LABEL_13:
  _os_log_impl(&dword_23255B000, v8, v9, v7, buf, v10);
LABEL_14:
  v11 = +[PowerStateRelay defaultRelay];
  pluggedIn = [v11 pluggedIn];

  if (!pluggedIn)
  {
    *buf = 0;
    v14 = *MEMORY[0x277CBECE8];
    v15 = 0;
    if (IOPMCopyAssertionsByProcessWithAllocator())
    {
      v16 = 1;
    }

    else
    {
      v16 = *buf == 0;
    }

    if (!v16)
    {
      v17 = CFNumberCreate(v14, kCFNumberIntType, &valuePtr);
      Value = CFDictionaryGetValue(*buf, v17);
      if (v17)
      {
        CFRelease(v17);
      }

      if (Value)
      {
        Count = CFArrayGetCount(Value);
        array = [MEMORY[0x277CBEB18] array];
        v15 = array;
        if (Count >= 1)
        {
          v46 = array;
          v45 = exceptionCopy;
          v21 = 0;
          v22 = *MEMORY[0x277CBECD0];
          v47 = Value;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, v21);
            if (ValueAtIndex)
            {
              v24 = ValueAtIndex;
              v25 = CFDictionaryGetValue(ValueAtIndex, @"AssertLevel");
              v26 = CFDictionaryGetValue(v24, @"AssertName");
              v27 = CFDictionaryGetValue(v24, @"AssertStartWhen");
              v28 = CFDictionaryGetValue(v24, @"AssertTimeoutUpdateTime");
              v29 = CFDictionaryGetValue(v24, @"AssertType");
              v30 = CFDictionaryGetValue(v24, @"AssertionTrueType");
              v31 = CFDictionaryGetValue(v24, @"Details");
              v48 = CFDictionaryGetValue(v24, @"Process Name");
              v49 = CFDictionaryGetValue(v24, @"HumanReadableReason");
              v50 = CFDictionaryGetValue(v24, @"AssertionOnBehalfOfBundleID");
              dictionary = [MEMORY[0x277CBEB38] dictionary];
              v33 = dictionary;
              if (v25)
              {
                [dictionary setObject:v25 forKeyedSubscript:@"AssertLevel"];
              }

              if (v26)
              {
                [v33 setObject:v26 forKeyedSubscript:@"AssertName"];
              }

              if (v27)
              {
                v34 = [MEMORY[0x277CCABB0] numberWithDouble:MEMORY[0x2383869E0](v27) + v22];
                [v33 setObject:v34 forKeyedSubscript:@"AssertStartWhen"];
              }

              if (v28)
              {
                v35 = [MEMORY[0x277CCABB0] numberWithDouble:MEMORY[0x2383869E0](v28) + v22];
                [v33 setObject:v35 forKeyedSubscript:@"AssertTimeoutUpdateTime"];
              }

              if (v29)
              {
                [v33 setObject:v29 forKeyedSubscript:@"AssertType"];
              }

              if (v30)
              {
                [v33 setObject:v30 forKeyedSubscript:@"AssertTrueType"];
              }

              if (v31)
              {
                [v33 setObject:v31 forKeyedSubscript:@"Details"];
              }

              Value = v47;
              if (v48)
              {
                [v33 setObject:v48 forKeyedSubscript:@"Process Name"];
              }

              if (v49)
              {
                [v33 setObject:v49 forKeyedSubscript:@"HumanReadableReason"];
              }

              if (v50)
              {
                [v33 setObject:v50 forKeyedSubscript:@"AssertionOnBehalfOfBundleID"];
              }

              if ([v33 count])
              {
                [v46 addObject:v33];
              }
            }

            ++v21;
          }

          while (Count != v21);
          exceptionCopy = v45;
          v15 = v46;
        }
      }

      else
      {
        v15 = 0;
      }

      if (*buf)
      {
        CFRelease(*buf);
        *buf = 0;
      }
    }

    v36 = pid_to_process_name(valuePtr);
    v37 = pid_to_uuid_string(valuePtr);
    v38 = [EventDescription alloc];
    v39 = -[EventDescription initWithType:length:data:fromPid:named:bundleId:](v38, "initWithType:length:data:fromPid:named:bundleId:", 1, 0, 0, valuePtr, [v36 UTF8String], 0);
    if ([v37 length])
    {
      eventQualifiers = [(EventDescription *)v39 eventQualifiers];
      [eventQualifiers setObject:v37 forKeyedSubscript:@"UUID"];
    }

    if ([v15 count])
    {
      eventQualifiers2 = [(EventDescription *)v39 eventQualifiers];
      [eventQualifiers2 setObject:v15 forKeyedSubscript:@"events"];
    }

    switch(exceptionCopy)
    {
      case 1:
        v42 = @"com.apple.symptoms.IOPMAssertion.duration";
        break;
      case 4:
        v42 = @"com.apple.symptoms.IOPMAssertion.timeout";
        break;
      case 2:
        v42 = @"com.apple.symptoms.IOPMAssertion.aggregate";
        break;
      default:
LABEL_66:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__IOKitHandler_reportIOPMAssertionException_pid___block_invoke;
        block[3] = &unk_27898A0C8;
        v52 = v39;
        v43 = v39;
        dispatch_async(MEMORY[0x277D85CD0], block);

        goto LABEL_67;
    }

    [(EventDescription *)v39 setEventKey:v42];
    goto LABEL_66;
  }

  v13 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "Device is plugged in, ignoring assertion.", buf, 2u);
  }

LABEL_67:
  v44 = *MEMORY[0x277D85DE8];
}

- (void)enableIOKitPowerNotifications
{
  if (!self->_pwrConnect)
  {
    v11 = v2;
    v12 = v3;
    v5 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Registering for IOKitPowerNotifications", buf, 2u);
    }

    self->_pwrConnect = IORegisterForSystemPower(0, &self->_pwrPort, systemPowerNotificationHandler, &self->_pwrNotifier);
    pwrPort = self->_pwrPort;
    if (pwrPort)
    {
      IONotificationPortSetDispatchQueue(pwrPort, self->_queue);
    }

    else
    {
      v7 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "IORegisterForSystemPower failed", v9, 2u);
      }

      pwrConnect = self->_pwrConnect;
      if (pwrConnect)
      {
        IOServiceClose(pwrConnect);
        self->_pwrConnect = 0;
      }
    }
  }
}

- (void)disableIOKitPowerNotifications
{
  p_pwrConnect = &self->_pwrConnect;
  if (self->_pwrConnect)
  {
    IONotificationPortSetDispatchQueue(self->_pwrPort, 0);
    IODeregisterForSystemPower(&self->_pwrNotifier);
    IOServiceClose(self->_pwrConnect);
    IONotificationPortDestroy(self->_pwrPort);
    *p_pwrConnect = 0;
    *(p_pwrConnect + 1) = 0;
  }
}

- (unint64_t)mostRecentAPSleepMachTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mostRecentAPSleepMachTime = selfCopy->_mostRecentAPSleepMachTime;
  objc_sync_exit(selfCopy);

  return mostRecentAPSleepMachTime;
}

- (void)updateMostRecentAPSleepTime
{
  obj = self;
  objc_sync_enter(obj);
  [(IOKitHandler *)obj willChangeValueForKey:@"mostRecentAPSleepMachTime"];
  obj->_mostRecentAPSleepMachTime = mach_absolute_time();
  [(IOKitHandler *)obj didChangeValueForKey:@"mostRecentAPSleepMachTime"];
  objc_sync_exit(obj);
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[IOKitHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end