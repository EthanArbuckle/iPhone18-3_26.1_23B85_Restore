@interface BAAgentDownloadRulesEngine
- (BAAgentDownloadRulesEngine)initWithDelegate:(id)a3;
- (BAAgentDownloadRulesEngineDelegate)delegate;
- (BOOL)isConnectedToPower;
- (BOOL)isValidTimeForDownloads;
- (float)batteryLevel;
- (void)_powerSourceHasChanged;
- (void)_setupPowerSourceMonitor;
- (void)_setupXPCActivity;
- (void)dealloc;
- (void)resume;
- (void)setDebugValidityTimeOverride:(int)a3;
@end

@implementation BAAgentDownloadRulesEngine

- (BAAgentDownloadRulesEngine)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BAAgentDownloadRulesEngine;
  v5 = [(BAAgentDownloadRulesEngine *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(BAAgentDownloadRulesEngine *)v5 setDelegate:v4];
    v7 = dispatch_queue_create("com.apple.backgroundassets.rulesengine", 0);
    [(BAAgentDownloadRulesEngine *)v6 setRulesEngineWorkQueue:v7];

    [(BAAgentDownloadRulesEngine *)v6 setLastDownloadIsValidValue:[(BAAgentDownloadRulesEngine *)v6 isValidTimeForDownloads]];
  }

  return v6;
}

- (void)dealloc
{
  if ([(BAAgentDownloadRulesEngine *)self powerRunLoopSource])
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, [(BAAgentDownloadRulesEngine *)self powerRunLoopSource], kCFRunLoopCommonModes);
    CFRelease(self->_powerRunLoopSource);
    [(BAAgentDownloadRulesEngine *)self setPowerRunLoopSource:0];
  }

  v4.receiver = self;
  v4.super_class = BAAgentDownloadRulesEngine;
  [(BAAgentDownloadRulesEngine *)&v4 dealloc];
}

- (void)setDebugValidityTimeOverride:(int)a3
{
  v5 = [(BAAgentDownloadRulesEngine *)self rulesEngineWorkQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000280F0;
  v6[3] = &unk_100079F90;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (BOOL)isValidTimeForDownloads
{
  if ([(BAAgentDownloadRulesEngine *)self debugRuleValidity])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(BAAgentDownloadRulesEngine *)self isConnectedToPower];
    [(BAAgentDownloadRulesEngine *)self setLastDownloadIsValidValue:v3];
  }

  return v3;
}

- (BOOL)isConnectedToPower
{
  v2 = IOPSCopyPowerSourcesInfo();
  v3 = v2;
  if (v2)
  {
    v4 = IOPSCopyPowerSourcesList(v2);
    for (i = 0; ; ++i)
    {
      Count = CFArrayGetCount(v4);
      v7 = i < Count;
      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
      v9 = IOPSGetPowerSourceDescription(v3, ValueAtIndex);
      if (v9)
      {
        Value = CFDictionaryGetValue(v9, @"Power Source State");
        if (Value)
        {
          if (CFEqual(@"AC Power", Value))
          {
            break;
          }
        }
      }
    }

    CFRelease(v3);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    v11 = sub_1000104FC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Failed to get power sources. Assume connected to power.", v13, 2u);
    }

    return 1;
  }

  return v7;
}

- (float)batteryLevel
{
  v2 = IOPSCopyPowerSourcesInfo();
  v3 = v2;
  if (v2)
  {
    v4 = IOPSCopyPowerSourcesList(v2);
    v5 = 0;
    v6 = 0.0;
    while (v5 < CFArrayGetCount(v4))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
      v8 = IOPSGetPowerSourceDescription(v3, ValueAtIndex);
      if (v8)
      {
        Value = CFDictionaryGetValue(v8, @"Current Capacity");
        v10 = Value;
        if (Value)
        {
          v11 = CFGetTypeID(Value);
          if (v11 == CFNumberGetTypeID())
          {
            valuePtr = 0.0;
            CFNumberGetValue(v10, kCFNumberFloatType, &valuePtr);
            if (valuePtr > v6)
            {
              v6 = valuePtr;
            }
          }
        }
      }

      ++v5;
    }

    CFRelease(v3);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    v12 = sub_1000104FC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Failed to get power sources. Assume full battery.", buf, 2u);
    }

    return 100.0;
  }

  return v6;
}

- (void)resume
{
  [(BAAgentDownloadRulesEngine *)self _setupXPCActivity];

  [(BAAgentDownloadRulesEngine *)self _setupPowerSourceMonitor];
}

- (void)_setupPowerSourceMonitor
{
  [(BAAgentDownloadRulesEngine *)self setPowerRunLoopSource:IOPSNotificationCreateRunLoopSource(j__objc_msgSend__powerSourceHasChanged, self)];
  if ([(BAAgentDownloadRulesEngine *)self powerRunLoopSource])
  {
    Main = CFRunLoopGetMain();
    v4 = [(BAAgentDownloadRulesEngine *)self powerRunLoopSource];

    CFRunLoopAddSource(Main, v4, kCFRunLoopCommonModes);
  }
}

- (void)_setupXPCActivity
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 0);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_DELAY, 14400);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_HOUR);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100028760;
  v4[3] = &unk_100079FB8;
  objc_copyWeak(&v5, &location);
  xpc_activity_register("com.apple.backgroundassets.periodic_check", v3, v4);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", 0, &stru_100079FF8);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_powerSourceHasChanged
{
  v3 = [(BAAgentDownloadRulesEngine *)self lastDownloadIsValidValue];
  if (v3 != [(BAAgentDownloadRulesEngine *)self isValidTimeForDownloads])
  {
    v4 = [(BAAgentDownloadRulesEngine *)self rulesEngineWorkQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000289F8;
    block[3] = &unk_100079260;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (BAAgentDownloadRulesEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end