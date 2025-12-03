@interface PLTelephonyConnection
+ (id)sharedTelephonyConnection;
- (BOOL)requestBasebandCoreDump:(id)dump;
- (BOOL)requestBasebandStateDump:(id)dump;
- (PLTelephonyConnection)init;
- (__CTServerConnection)connection;
- (id)currentCallStatus;
- (id)getProperty:(id)property forTrace:(id)trace;
- (id)humanReadableRATName:(__CFString *)name;
- (void)deregisterForAllTelephonyNotifications;
- (void)enableDiagLogging;
- (void)getRAT:(id *)t preferredRAT:(id *)aT campedRAT:(id *)rAT;
- (void)getSignalStrength:(int64_t *)strength asPercentage:(int64_t *)percentage withBars:(int64_t *)bars;
- (void)registerCallback:(void *)callback forTelephonyNotification:(__CFString *)notification;
- (void)teardownConnection;
@end

@implementation PLTelephonyConnection

+ (id)sharedTelephonyConnection
{
  if (qword_2811F7F48 != -1)
  {
    dispatch_once(&qword_2811F7F48, &__block_literal_global_51);
  }

  v3 = qword_2811F7F50;

  return v3;
}

void __50__PLTelephonyConnection_sharedTelephonyConnection__block_invoke()
{
  if (!qword_2811F7F50)
  {
    v0 = objc_opt_new();
    qword_2811F7F50 = v0;

    MEMORY[0x2821F96F8](v0);
  }
}

- (PLTelephonyConnection)init
{
  v7.receiver = self;
  v7.super_class = PLTelephonyConnection;
  v2 = [(PLTelephonyConnection *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->connection = 0;
    v2->ctServerPort = 0;
    v2->ctServerSource = 0;
    CFRunLoopGetMain();
    v4 = *MEMORY[0x277CBF058];
    CTTelephonyCenterSetDefaultRunloop();
    CTTelephonyCenterGetDefault();
    v5 = *MEMORY[0x277CC4308];
    CTTelephonyCenterAddObserver();
  }

  return v3;
}

- (void)getRAT:(id *)t preferredRAT:(id *)aT campedRAT:(id *)rAT
{
  v37 = *MEMORY[0x277D85DE8];
  if (t && aT && rAT)
  {
    v33 = 0;
    v34 = 0;
    v32 = 0;
    [(PLTelephonyConnection *)self connection];
    RATSelection = _CTServerConnectionGetRATSelection();
    v10 = HIDWORD(RATSelection);
    if (HIDWORD(RATSelection))
    {
      v11 = RATSelection;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v12 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__PLTelephonyConnection_getRAT_preferredRAT_campedRAT___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v12;
        if (qword_2811F7F58 != -1)
        {
          dispatch_once(&qword_2811F7F58, block);
        }

        if (_MergedGlobals_112 == 1)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not get the selected radio mode. (domain: %d error: %d)", v11, v10];
          v14 = MEMORY[0x277D3F178];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLTelephonyConnection.m"];
          lastPathComponent = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTelephonyConnection getRAT:preferredRAT:campedRAT:]"];
          [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:69];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v36 = v13;
            _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }

    *t = [(PLTelephonyConnection *)self humanReadableRATName:v34];
    *aT = [(PLTelephonyConnection *)self humanReadableRATName:v33];
    [(PLTelephonyConnection *)self connection];
    RadioAccessTechnology = _CTServerConnectionGetRadioAccessTechnology();
    v20 = HIDWORD(RadioAccessTechnology);
    if (HIDWORD(RadioAccessTechnology))
    {
      v21 = RadioAccessTechnology;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v22 = objc_opt_class();
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __55__PLTelephonyConnection_getRAT_preferredRAT_campedRAT___block_invoke_17;
        v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v30[4] = v22;
        if (qword_2811F7F60 != -1)
        {
          dispatch_once(&qword_2811F7F60, v30);
        }

        if (byte_2811F7F39 == 1)
        {
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not get the selected radio mode. (domain: %d error: %d)", v21, v20];
          v24 = MEMORY[0x277D3F178];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLTelephonyConnection.m"];
          lastPathComponent2 = [v25 lastPathComponent];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTelephonyConnection getRAT:preferredRAT:campedRAT:]"];
          [v24 logMessage:v23 fromFile:lastPathComponent2 fromFunction:v27 fromLineNumber:78];

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v36 = v23;
            _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }

    *rAT = [(PLTelephonyConnection *)self humanReadableRATName:v32];
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PLTelephonyConnection_getRAT_preferredRAT_campedRAT___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_112 = result;
  return result;
}

uint64_t __55__PLTelephonyConnection_getRAT_preferredRAT_campedRAT___block_invoke_17(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7F39 = result;
  return result;
}

- (void)enableDiagLogging
{
  v16 = *MEMORY[0x277D85DE8];
  [(PLTelephonyConnection *)self connection];
  v2 = _CTServerConnectionSetTraceProperty();
  v3 = HIDWORD(v2);
  if (HIDWORD(v2))
  {
    v4 = v2;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PLTelephonyConnection_enableDiagLogging__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (qword_2811F7F68 != -1)
      {
        dispatch_once(&qword_2811F7F68, block);
      }

      if (byte_2811F7F3A == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not enable diag logging. (domain: %d error: %d)", v4, v3];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLTelephonyConnection.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTelephonyConnection enableDiagLogging]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:94];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v15 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLTelephonyConnection_enableDiagLogging__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7F3A = result;
  return result;
}

- (BOOL)requestBasebandStateDump:(id)dump
{
  v19 = *MEMORY[0x277D85DE8];
  dumpCopy = dump;
  [(PLTelephonyConnection *)self connection];
  v5 = _CTServerConnectionDumpBasebandState();

  v6 = HIDWORD(v5);
  if (HIDWORD(v5))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__PLTelephonyConnection_requestBasebandStateDump___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v7;
      if (qword_2811F7F70 != -1)
      {
        dispatch_once(&qword_2811F7F70, block);
      }

      if (byte_2811F7F3B == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to dump baseband state (domain=%d, error=%d)", v5, HIDWORD(v5)];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLTelephonyConnection.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTelephonyConnection requestBasebandStateDump:]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:101];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v18 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLTelephonyConnection *)self teardownConnection];
  }

  result = v6 == 0;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __50__PLTelephonyConnection_requestBasebandStateDump___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7F3B = result;
  return result;
}

- (BOOL)requestBasebandCoreDump:(id)dump
{
  v19 = *MEMORY[0x277D85DE8];
  dumpCopy = dump;
  [(PLTelephonyConnection *)self connection];
  v5 = _CTServerConnectionResetModemWithCrashLogs();

  v6 = HIDWORD(v5);
  if (HIDWORD(v5))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__PLTelephonyConnection_requestBasebandCoreDump___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v7;
      if (qword_2811F7F78 != -1)
      {
        dispatch_once(&qword_2811F7F78, block);
      }

      if (byte_2811F7F3C == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get baseband core dump (domain=%d, error=%d)", v5, HIDWORD(v5)];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLTelephonyConnection.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTelephonyConnection requestBasebandCoreDump:]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:111];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v18 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [(PLTelephonyConnection *)self teardownConnection];
  }

  result = v6 == 0;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __49__PLTelephonyConnection_requestBasebandCoreDump___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7F3C = result;
  return result;
}

- (id)getProperty:(id)property forTrace:(id)trace
{
  v37 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  traceCopy = trace;
  v34 = 0;
  v33 = 0;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLTelephonyConnection_getProperty_forTrace___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F7F80 != -1)
    {
      dispatch_once(&qword_2811F7F80, block);
    }

    if (byte_2811F7F3D == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLTelephonyConnection getProperty:forTrace:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLTelephonyConnection.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTelephonyConnection getProperty:forTrace:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:122];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PLTelephonyConnection *)selfCopy connection];
  v16 = _CTServerConnectionCopyTraceProperty();
  objc_sync_exit(selfCopy);

  if (HIDWORD(v16))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v18 = objc_opt_class();
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __46__PLTelephonyConnection_getProperty_forTrace___block_invoke_42;
      v30 = &__block_descriptor_40_e5_v8__0lu32l8;
      v31 = v18;
      if (qword_2811F7F88 != -1)
      {
        dispatch_once(&qword_2811F7F88, &v27);
      }

      if (byte_2811F7F3E == 1)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to retrieve property %@ from telephony trace %@ (domain=%d, error=%d)", propertyCopy, traceCopy, v16, HIDWORD(v16), v27, v28, v29, v30, v31];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLTelephonyConnection.m"];
        lastPathComponent2 = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTelephonyConnection getProperty:forTrace:]"];
        [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:132];

        v24 = PLLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v36 = v19;
          _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v17 = 0;
  }

  else
  {
    v17 = v33;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __46__PLTelephonyConnection_getProperty_forTrace___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7F3D = result;
  return result;
}

uint64_t __46__PLTelephonyConnection_getProperty_forTrace___block_invoke_42(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7F3E = result;
  return result;
}

- (void)getSignalStrength:(int64_t *)strength asPercentage:(int64_t *)percentage withBars:(int64_t *)bars
{
  CTIndicatorsGetSignalStrength();
  *strength = -1;
  *percentage = -1;
  *bars = -1;
}

- (id)currentCallStatus
{
  v3 = *MEMORY[0x277CBECE8];
  v4 = CTCopyCurrentCalls();
  v5 = v4;
  if (v4 && [v4 count])
  {
    if ([v5 count] <= 1)
    {
      [v5 objectAtIndex:0];
      v6 = [(PLTelephonyConnection *)self humanReadableCallStatus:CTCallGetStatus()];
    }

    else
    {
      v6 = @"Multiple";
    }
  }

  else
  {
    v6 = @"Inactive";
  }

  return v6;
}

- (id)humanReadableRATName:(__CFString *)name
{
  if (name)
  {
    if (CFEqual(name, *MEMORY[0x277CC3D60]) || CFEqual(name, *MEMORY[0x277CC3E00]) || CFEqual(name, *MEMORY[0x277CC3E08]))
    {
      v5 = @"GSM";
    }

    else if (CFEqual(name, *MEMORY[0x277CC3D78]) || CFEqual(name, *MEMORY[0x277CC3E28]))
    {
      v5 = @"UMTS";
    }

    else if (CFEqual(name, *MEMORY[0x277CC3D98]))
    {
      v5 = @"Dual";
    }

    else if (CFEqual(name, *MEMORY[0x277CC3DD8]) || CFEqual(name, *MEMORY[0x277CC3E38]))
    {
      v5 = @"Unknown";
    }

    else if (CFEqual(name, *MEMORY[0x277CC3DA0]) || CFEqual(name, *MEMORY[0x277CC3DE8]))
    {
      v5 = @"1x";
    }

    else if (CFEqual(name, *MEMORY[0x277CC3DA8]) || CFEqual(name, *MEMORY[0x277CC3DF0]))
    {
      v5 = @"EVDO";
    }

    else if (CFEqual(name, *MEMORY[0x277CC3DB0]) || CFEqual(name, *MEMORY[0x277CC3DF8]))
    {
      v5 = @"CDMAHybrid";
    }

    else if (CFEqual(name, *MEMORY[0x277CC3DB8]) || CFEqual(name, *MEMORY[0x277CC3E10]))
    {
      v5 = @"LTE";
    }

    else if (CFEqual(name, *MEMORY[0x277CC3DC8]) || CFEqual(name, *MEMORY[0x277CC3E30]))
    {
      v5 = @"UTRAN";
    }

    else if (CFEqual(name, *MEMORY[0x277CC3DC0]))
    {
      v5 = @"Automatic";
    }

    else if (CFEqual(name, *MEMORY[0x277CC3D88]) || CFEqual(name, *MEMORY[0x277CC3E20]))
    {
      v5 = @"NR";
    }

    else if (CFEqual(name, *MEMORY[0x277CC3DD0]))
    {
      v5 = @"NR_SA";
    }

    else if (CFEqual(name, *MEMORY[0x277CC3D80]))
    {
      v5 = @"NR_NSA";
    }

    else
    {
      v5 = [(__CFString *)name copy];
    }
  }

  else
  {
    v5 = @"None";
  }

  return v5;
}

- (void)teardownConnection
{
  if (self->ctServerSource)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, self->ctServerSource, *MEMORY[0x277CBF058]);
    CFRelease(self->ctServerSource);
    self->ctServerSource = 0;
  }

  ctServerPort = self->ctServerPort;
  if (ctServerPort)
  {
    CFMachPortInvalidate(ctServerPort);
    CFRelease(self->ctServerPort);
    self->ctServerPort = 0;
  }

  connection = self->connection;
  if (connection)
  {
    CFRelease(connection);
    self->connection = 0;
  }
}

- (__CTServerConnection)connection
{
  v19 = *MEMORY[0x277D85DE8];
  block[5] = 0;
  v15 = 0u;
  v16 = 0;
  block[6] = self;
  result = self->connection;
  if (!result)
  {
    [(PLTelephonyConnection *)self teardownConnection];
    v4 = _CTServerConnectionCreate();
    self->connection = v4;
    if (v4)
    {
      CFRunLoopGetMain();
      v5 = *MEMORY[0x277CBF058];
      _CTServerConnectionAddToRunLoop();
      result = self->connection;
    }

    else
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v6 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __35__PLTelephonyConnection_connection__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v6;
        if (qword_2811F7F90 != -1)
        {
          dispatch_once(&qword_2811F7F90, block);
        }

        if (byte_2811F7F3F == 1)
        {
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to allocate a CTServer connection"];
          v8 = MEMORY[0x277D3F178];
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLTelephonyConnection.m"];
          lastPathComponent = [v9 lastPathComponent];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLTelephonyConnection connection]"];
          [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:299];

          v12 = PLLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v18 = v7;
            _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      result = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __35__PLTelephonyConnection_connection__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7F3F = result;
  return result;
}

- (void)registerCallback:(void *)callback forTelephonyNotification:(__CFString *)notification
{
  CTTelephonyCenterGetDefault();
  observerAgent = [(PLTelephonyConnection *)self observerAgent];
  CTTelephonyCenterAddObserver();
}

- (void)deregisterForAllTelephonyNotifications
{
  Default = CTTelephonyCenterGetDefault();

  MEMORY[0x282113100](Default, self);
}

@end