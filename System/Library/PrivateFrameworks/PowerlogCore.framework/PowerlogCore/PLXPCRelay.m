@interface PLXPCRelay
+ (id)sharedInstance;
- (BOOL)isDebugEnabled;
- (OS_xpc_object)relayConnection;
- (PLXPCRelay)init;
- (void)handleCrashMoverConnection:(id)a3;
- (void)handlePeer:(id)a3 forEvent:(id)a4;
- (void)movePowerlogs;
- (void)resetRelayConnection;
- (void)startRelay;
- (void)stopRelay;
@end

@implementation PLXPCRelay

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[PLXPCRelay sharedInstance];
  }

  v3 = sharedInstance__sharedRelay;

  return v3;
}

uint64_t __28__PLXPCRelay_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PLXPCRelay);
  sharedInstance__sharedRelay = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

- (PLXPCRelay)init
{
  v21.receiver = self;
  v21.super_class = PLXPCRelay;
  v2 = [(PLXPCRelay *)&v21 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  if (+[PLUtilities isLiteModeDaemon])
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create_with_target_V2("com.apple.powerlog_mover", v4, 0);
    v6 = *(v2 + 5);
    *(v2 + 5) = v5;

    mach_service = xpc_connection_create_mach_service("com.apple.powerlog_mover", *(v2 + 5), 1uLL);
    v8 = *(v2 + 4);
    *(v2 + 4) = mach_service;

    xpc_connection_set_context(*(v2 + 4), v2);
    v9 = *(v2 + 4);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __18__PLXPCRelay_init__block_invoke_20;
    v18[3] = &unk_1E8519FA8;
    v19 = v2;
    xpc_connection_set_event_handler(v9, v18);
    xpc_connection_activate(*(v2 + 4));

LABEL_4:
    v10 = v2;
    goto LABEL_13;
  }

  if (+[PLDefaults debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __18__PLXPCRelay_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (init_defaultOnce_1 != -1)
    {
      dispatch_once(&init_defaultOnce_1, block);
    }

    if (init_classDebugEnabled_1 == 1)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: Bad processname, no xpc relay for you"];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay init]"];
      [PLCoreStorage logMessage:v12 fromFile:v14 fromFunction:v15 fromLineNumber:46];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

BOOL __18__PLXPCRelay_init__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_1 = result;
  return result;
}

void __18__PLXPCRelay_init__block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x1DA71B8B0]() == MEMORY[0x1E69E9E68])
  {
    [*(a1 + 32) handleCrashMoverConnection:v3];
  }
}

- (void)startRelay
{
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__PLXPCRelay_startRelay__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (startRelay_defaultOnce != -1)
    {
      dispatch_once(&startRelay_defaultOnce, block);
    }

    if (startRelay_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: Relay running in aggd with service %s to %s", "com.apple.powerlog.plxpclogger.xpc", "com.apple.powerlogd.XPCService.xpc"];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay startRelay]"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:71];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [(PLXPCRelay *)self setRelayActive:1];
  v9 = [PLUtilities workQueueForKey:@"XPCRelay_Connection"];
  mach_service = xpc_connection_create_mach_service("com.apple.powerlog.plxpclogger.xpc", v9, 1uLL);
  [(PLXPCRelay *)self setXpcConnection:mach_service];

  v11 = [(PLXPCRelay *)self xpcConnection];
  xpc_connection_set_context(v11, self);

  v12 = [(PLXPCRelay *)self xpcConnection];
  v13 = dispatch_get_global_queue(2, 0);
  xpc_connection_set_target_queue(v12, v13);

  v14 = [(PLXPCRelay *)self xpcConnection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __24__PLXPCRelay_startRelay__block_invoke_30;
  handler[3] = &unk_1E8519FA8;
  handler[4] = self;
  xpc_connection_set_event_handler(v14, handler);

  v15 = [(PLXPCRelay *)self xpcConnection];
  xpc_connection_activate(v15);
}

BOOL __24__PLXPCRelay_startRelay__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  startRelay_classDebugEnabled = result;
  return result;
}

void __24__PLXPCRelay_startRelay__block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[PLDefaults debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__PLXPCRelay_startRelay__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (relayConnectionSync_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&relayConnectionSync_block_invoke_defaultOnce, block);
    }

    if (relayConnectionSync_block_invoke_classDebugEnabled == 1)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [*(a1 + 32) xpcConnection];
      v8 = [v6 stringWithFormat:@"Relay: event handler fired peerPID=%d %@", xpc_connection_get_pid(v7), v3];

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay startRelay]_block_invoke"];
      [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:78];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (MEMORY[0x1DA71B8B0](v3) != MEMORY[0x1E69E9E98])
  {
    v13 = v3;
    v14 = [*(a1 + 32) xpcConnection];
    context = xpc_connection_get_context(v14);
    xpc_connection_set_context(v13, context);

    v16 = dispatch_get_global_queue(2, 0);
    xpc_connection_set_target_queue(v13, v16);

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __24__PLXPCRelay_startRelay__block_invoke_41;
    handler[3] = &unk_1E851B250;
    handler[4] = *(a1 + 32);
    v25 = v13;
    v17 = v13;
    xpc_connection_set_event_handler(v17, handler);
    xpc_connection_activate(v17);

LABEL_10:
    goto LABEL_18;
  }

  if (+[PLDefaults debugEnabled])
  {
    v18 = *(a1 + 32);
    v19 = objc_opt_class();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __24__PLXPCRelay_startRelay__block_invoke_36;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v19;
    if (relayConnectionSync_block_invoke_defaultOnce_34 != -1)
    {
      dispatch_once(&relayConnectionSync_block_invoke_defaultOnce_34, v26);
    }

    if (relayConnectionSync_block_invoke_classDebugEnabled_35 == 1)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: XPC error! %@", v3];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v21 = [v20 lastPathComponent];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay startRelay]_block_invoke_2"];
      [PLCoreStorage logMessage:v17 fromFile:v21 fromFunction:v22 fromLineNumber:81];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      goto LABEL_10;
    }
  }

LABEL_18:
}

BOOL __24__PLXPCRelay_startRelay__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_classDebugEnabled = result;
  return result;
}

BOOL __24__PLXPCRelay_startRelay__block_invoke_36(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_classDebugEnabled_35 = result;
  return result;
}

void __24__PLXPCRelay_startRelay__block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[PLDefaults debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __24__PLXPCRelay_startRelay__block_invoke_2_42;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v5;
    if (relayConnectionSync_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&relayConnectionSync_block_invoke_2_defaultOnce, &block);
    }

    if (relayConnectionSync_block_invoke_2_classDebugEnabled == 1)
    {
      v6 = MEMORY[0x1E696AEC0];
      pid = xpc_connection_get_pid(*(a1 + 40));
      v8 = [v6 stringWithFormat:@"Relay: peer(%d) connected", pid, block, v15, v16, v17, v18];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay startRelay]_block_invoke"];
      [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:88];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v13 = xpc_connection_get_context(*(a1 + 40));
  [v13 handlePeer:*(a1 + 40) forEvent:v3];
}

BOOL __24__PLXPCRelay_startRelay__block_invoke_2_42(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_2_classDebugEnabled = result;
  return result;
}

- (void)stopRelay
{
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __23__PLXPCRelay_stopRelay__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (stopRelay_defaultOnce != -1)
    {
      dispatch_once(&stopRelay_defaultOnce, block);
    }

    if (stopRelay_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: closing relay in aggd with service %s to %s", "com.apple.powerlog.plxpclogger.xpc", "com.apple.powerlogd.XPCService.xpc"];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay stopRelay]"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:106];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  [(PLXPCRelay *)self setRelayActive:0];
  v9 = [(PLXPCRelay *)self xpcConnection];
  xpc_connection_cancel(v9);

  [(PLXPCRelay *)self setXpcConnection:0];
  [(PLXPCRelay *)self resetRelayConnection];
}

BOOL __23__PLXPCRelay_stopRelay__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  stopRelay_classDebugEnabled = result;
  return result;
}

- (void)handleCrashMoverConnection:(id)a3
{
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __41__PLXPCRelay_handleCrashMoverConnection___block_invoke;
  handler[3] = &unk_1E8519FA8;
  handler[4] = self;
  v4 = a3;
  xpc_connection_set_event_handler(v4, handler);
  xpc_connection_set_target_queue(v4, self->_crashMoverQueue);
  xpc_connection_activate(v4);
}

uint64_t __41__PLXPCRelay_handleCrashMoverConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA71B8B0](a2);
  if (result == MEMORY[0x1E69E9E80])
  {
    v4 = *(a1 + 32);

    return [v4 movePowerlogs];
  }

  return result;
}

- (void)movePowerlogs
{
  if (+[PLDefaults fullMode])
  {

    MEMORY[0x1EEE2EC08]();
  }
}

- (BOOL)isDebugEnabled
{
  v2 = objc_opt_class();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__PLXPCRelay_isDebugEnabled__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = v2;
  if (isDebugEnabled_defaultOnce != -1)
  {
    dispatch_once(&isDebugEnabled_defaultOnce, block);
  }

  return (isDebugEnabled_classDebugEnabled & 1) != 0 || [PLDefaults isClassNameDebugEnabled:@"PLXPCService"];
}

BOOL __28__PLXPCRelay_isDebugEnabled__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  isDebugEnabled_classDebugEnabled = result;
  return result;
}

- (void)handlePeer:(id)a3 forEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1DA71B8B0]();
  if (v8 == MEMORY[0x1E69E9E98])
  {
    if (v7 == MEMORY[0x1E69E9E20])
    {
      if (!+[PLDefaults debugEnabled])
      {
        goto LABEL_47;
      }

      v30 = objc_opt_class();
      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v114[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke;
      v114[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v114[4] = v30;
      if (handlePeer_forEvent__defaultOnce != -1)
      {
        dispatch_once(&handlePeer_forEvent__defaultOnce, v114);
      }

      if (handlePeer_forEvent__classDebugEnabled != 1)
      {
        goto LABEL_47;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: peer(%d) received XPC_ERROR_CONNECTION_INVALID", xpc_connection_get_pid(v6)];
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v32 = [v31 lastPathComponent];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
      [PLCoreStorage logMessage:v18 fromFile:v32 fromFunction:v33 fromLineNumber:146];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    else if (v7 == MEMORY[0x1E69E9E18])
    {
      if (!+[PLDefaults debugEnabled])
      {
        goto LABEL_47;
      }

      v34 = objc_opt_class();
      v113[0] = MEMORY[0x1E69E9820];
      v113[1] = 3221225472;
      v113[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_57;
      v113[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v113[4] = v34;
      if (handlePeer_forEvent__defaultOnce_55 != -1)
      {
        dispatch_once(&handlePeer_forEvent__defaultOnce_55, v113);
      }

      if (handlePeer_forEvent__classDebugEnabled_56 != 1)
      {
        goto LABEL_47;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", xpc_connection_get_pid(v6)];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v36 = [v35 lastPathComponent];
      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
      [PLCoreStorage logMessage:v18 fromFile:v36 fromFunction:v37 fromLineNumber:150];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9E38];
      v16 = +[PLDefaults debugEnabled];
      if (v7 == v15)
      {
        if (!v16)
        {
          goto LABEL_47;
        }

        v38 = objc_opt_class();
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_63;
        v112[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v112[4] = v38;
        if (handlePeer_forEvent__defaultOnce_61 != -1)
        {
          dispatch_once(&handlePeer_forEvent__defaultOnce_61, v112);
        }

        if (handlePeer_forEvent__classDebugEnabled_62 != 1)
        {
          goto LABEL_47;
        }

        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", xpc_connection_get_pid(v6)];
        v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        v40 = [v39 lastPathComponent];
        v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
        [PLCoreStorage logMessage:v18 fromFile:v40 fromFunction:v41 fromLineNumber:154];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }

      else
      {
        if (!v16)
        {
          goto LABEL_47;
        }

        v17 = objc_opt_class();
        v111[0] = MEMORY[0x1E69E9820];
        v111[1] = 3221225472;
        v111[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_69;
        v111[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v111[4] = v17;
        if (handlePeer_forEvent__defaultOnce_67 != -1)
        {
          dispatch_once(&handlePeer_forEvent__defaultOnce_67, v111);
        }

        if (handlePeer_forEvent__classDebugEnabled_68 != 1)
        {
          goto LABEL_47;
        }

        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: peer(%d) received Unidentified error:%@", xpc_connection_get_pid(v6), v7];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        v20 = [v19 lastPathComponent];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
        [PLCoreStorage logMessage:v18 fromFile:v20 fromFunction:v21 fromLineNumber:159];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

LABEL_47:
    xpc_connection_cancel(v6);
    goto LABEL_117;
  }

  if (v8 == MEMORY[0x1E69E9E80])
  {
    v10 = _CFXPCCreateCFObjectFromXPCMessage();
    if (+[PLDefaults debugEnabled])
    {
      v23 = objc_opt_class();
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_75;
      v110[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v110[4] = v23;
      if (handlePeer_forEvent__defaultOnce_73 != -1)
      {
        dispatch_once(&handlePeer_forEvent__defaultOnce_73, v110);
      }

      if (handlePeer_forEvent__classDebugEnabled_74 == 1)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: message = %@", v10];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        v26 = [v25 lastPathComponent];
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
        [PLCoreStorage logMessage:v24 fromFile:v26 fromFunction:v27 fromLineNumber:165];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if (!v10)
    {
      goto LABEL_116;
    }

    v29 = [v10 objectForKey:@"shouldLog"];
    if (v29)
    {
    }

    else
    {
      v42 = [v10 objectForKey:@"Query"];

      if (!v42)
      {
        v82 = [v10 objectForKey:@"Post"];

        if (v82)
        {
          v83 = _CFXPCCreateXPCMessageWithCFObject();
          if (!v83)
          {
            v14 = PLLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              [PLXPCRelay handlePeer:forEvent:];
            }

            goto LABEL_115;
          }

          v14 = v83;
          v84 = [(PLXPCRelay *)self relayConnection];
          xpc_connection_send_notification();
        }

        else
        {
          if (!+[PLDefaults debugEnabled])
          {
            goto LABEL_116;
          }

          v86 = objc_opt_class();
          v105[0] = MEMORY[0x1E69E9820];
          v105[1] = 3221225472;
          v105[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_117;
          v105[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v105[4] = v86;
          if (handlePeer_forEvent__defaultOnce_115 != -1)
          {
            dispatch_once(&handlePeer_forEvent__defaultOnce_115, v105);
          }

          if (handlePeer_forEvent__classDebugEnabled_116 != 1)
          {
            goto LABEL_116;
          }

          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Message with no direction: %@", v10];
          v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
          v88 = [v87 lastPathComponent];
          v89 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
          [PLCoreStorage logMessage:v14 fromFile:v88 fromFunction:v89 fromLineNumber:260];

          v84 = PLLogCommon();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }

        goto LABEL_94;
      }
    }

    v43 = [v10 objectForKey:@"Query"];
    if (v43)
    {
      v44 = v43;
      v45 = [PLUtilities allowQueryFromPeer:v6];

      if (!v45)
      {
        goto LABEL_116;
      }
    }

    v46 = _CFXPCCreateXPCMessageWithCFObject();
    if (!v46)
    {
      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PLXPCRelay handlePeer:forEvent:];
      }

      goto LABEL_115;
    }

    v14 = v46;
    v47 = [(PLXPCRelay *)self relayConnection];
    v48 = xpc_connection_send_message_with_reply_sync(v47, v14);

    if (v48)
    {
      if (+[PLDefaults debugEnabled])
      {
        v49 = objc_opt_class();
        v109[0] = MEMORY[0x1E69E9820];
        v109[1] = 3221225472;
        v109[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_87;
        v109[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v109[4] = v49;
        if (handlePeer_forEvent__defaultOnce_85 != -1)
        {
          dispatch_once(&handlePeer_forEvent__defaultOnce_85, v109);
        }

        if (handlePeer_forEvent__classDebugEnabled_86 == 1)
        {
          v100 = v48;
          v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: xpc_response=%@", v48];
          v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
          v52 = [v51 lastPathComponent];
          v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
          [PLCoreStorage logMessage:v50 fromFile:v52 fromFunction:v53 fromLineNumber:190];

          v54 = v50;
          v55 = PLLogCommon();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }

          v48 = v100;
        }
      }

      v56 = xpc_dictionary_get_value(v48, [@"PLXPCConnectionReturnDict" UTF8String]);
      if (v56)
      {
        if (+[PLDefaults debugEnabled])
        {
          v57 = objc_opt_class();
          v108[0] = MEMORY[0x1E69E9820];
          v108[1] = 3221225472;
          v108[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_96;
          v108[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v108[4] = v57;
          if (handlePeer_forEvent__defaultOnce_94 != -1)
          {
            dispatch_once(&handlePeer_forEvent__defaultOnce_94, v108);
          }

          if (handlePeer_forEvent__classDebugEnabled_95 == 1)
          {
            v97 = v56;
            v101 = v48;
            v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: xpc_return_dict=%@", v56];
            v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
            v59 = [v58 lastPathComponent];
            v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
            [PLCoreStorage logMessage:v94 fromFile:v59 fromFunction:v60 fromLineNumber:201];

            v61 = PLLogCommon();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }

            v56 = v97;
            v48 = v101;
          }
        }

        v62 = _CFXPCCreateCFObjectFromXPCMessage();
        if (v62)
        {
          v63 = v62;
          if (+[PLDefaults debugEnabled])
          {
            v64 = objc_opt_class();
            v107[0] = MEMORY[0x1E69E9820];
            v107[1] = 3221225472;
            v107[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_102;
            v107[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v107[4] = v64;
            if (handlePeer_forEvent__defaultOnce_100 != -1)
            {
              dispatch_once(&handlePeer_forEvent__defaultOnce_100, v107);
            }

            if (handlePeer_forEvent__classDebugEnabled_101 == 1)
            {
              v98 = v56;
              v102 = v48;
              v95 = v63;
              v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: response=%@", v63];
              v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
              v67 = [v66 lastPathComponent];
              v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
              [PLCoreStorage logMessage:v65 fromFile:v67 fromFunction:v68 fromLineNumber:213];

              v69 = v65;
              v70 = PLLogCommon();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
              {
                [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
              }

              v56 = v98;
              v48 = v102;
              v63 = v95;
            }
          }

          v71 = xpc_dictionary_get_remote_connection(v7);
          if (v71)
          {
            v72 = v71;
            if (+[PLDefaults debugEnabled])
            {
              v73 = objc_opt_class();
              v106[0] = MEMORY[0x1E69E9820];
              v106[1] = 3221225472;
              v106[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_108;
              v106[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v106[4] = v73;
              if (handlePeer_forEvent__defaultOnce_106 != -1)
              {
                dispatch_once(&handlePeer_forEvent__defaultOnce_106, v106);
              }

              if (handlePeer_forEvent__classDebugEnabled_107 == 1)
              {
                v99 = v56;
                v103 = v48;
                v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: have remoteConnection"];
                v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
                v76 = [v75 lastPathComponent];
                v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
                [PLCoreStorage logMessage:v74 fromFile:v76 fromFunction:v77 fromLineNumber:224];

                v78 = PLLogCommon();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
                {
                  [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
                }

                v56 = v99;
                v48 = v103;
              }
            }

            reply = xpc_dictionary_create_reply(v7);
            if (reply)
            {
              v80 = reply;
              v81 = _CFXPCCreateXPCMessageWithCFObject();
              if (v81)
              {
                xpc_dictionary_set_value(v80, [@"PLXPCConnectionReturnDict" UTF8String], v81);
                xpc_connection_send_message(v72, v80);
              }

              else
              {
                v96 = v63;
                v92 = v48;
                v93 = PLLogCommon();
                if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                {
                  [PLXPCRelay handlePeer:forEvent:];
                }

                v48 = v92;
                v63 = v96;
              }

              goto LABEL_116;
            }

            v91 = PLLogCommon();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              [PLXPCRelay handlePeer:forEvent:];
            }
          }

          else
          {
            v90 = PLLogCommon();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              [PLXPCRelay handlePeer:forEvent:];
            }
          }

          v14 = v63;
          goto LABEL_115;
        }

        v85 = PLLogCommon();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          [PLXPCRelay handlePeer:forEvent:];
        }
      }

      else
      {
        v85 = PLLogCommon();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          [PLXPCRelay handlePeer:forEvent:];
        }
      }

LABEL_115:
LABEL_116:

      goto LABEL_117;
    }

    v84 = PLLogCommon();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      [PLXPCRelay handlePeer:forEvent:];
    }

LABEL_94:

    goto LABEL_115;
  }

  if (+[PLDefaults debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__PLXPCRelay_handlePeer_forEvent___block_invoke_123;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (handlePeer_forEvent__defaultOnce_121 != -1)
    {
      dispatch_once(&handlePeer_forEvent__defaultOnce_121, block);
    }

    if (handlePeer_forEvent__classDebugEnabled_122 == 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: unknown type"];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay handlePeer:forEvent:]"];
      [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:264];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      goto LABEL_115;
    }
  }

LABEL_117:
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_57(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_56 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_63(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_62 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_69(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_68 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_75(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_74 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_87(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_86 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_96(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_95 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_102(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_101 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_108(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_107 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_117(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_116 = result;
  return result;
}

BOOL __34__PLXPCRelay_handlePeer_forEvent___block_invoke_123(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_122 = result;
  return result;
}

- (OS_xpc_object)relayConnection
{
  objc_sync_enter(@"__relayConnectionSync__");
  if (self->_relayConnection)
  {
    if (+[PLDefaults debugEnabled])
    {
      v3 = objc_opt_class();
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __29__PLXPCRelay_relayConnection__block_invoke_161;
      v28 = &__block_descriptor_40_e5_v8__0lu32l8;
      v29 = v3;
      if (relayConnection_defaultOnce_159 != -1)
      {
        dispatch_once(&relayConnection_defaultOnce_159, &v25);
      }

      if (relayConnection_classDebugEnabled_160 == 1)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: Reusing connection!", v25, v26, v27, v28, v29];
        v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        v6 = [v5 lastPathComponent];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]"];
        [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:296];

        v8 = PLLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

LABEL_21:
      }
    }
  }

  else
  {
    if (+[PLDefaults debugEnabled])
    {
      v9 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__PLXPCRelay_relayConnection__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v9;
      if (relayConnection_defaultOnce != -1)
      {
        dispatch_once(&relayConnection_defaultOnce, block);
      }

      if (relayConnection_classDebugEnabled == 1)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: creating connection!"];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        v12 = [v11 lastPathComponent];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]"];
        [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:277];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v15 = [PLUtilities workQueueForKey:@"XPCRelay_Relay"];
    mach_service = xpc_connection_create_mach_service("com.apple.powerlogd.XPCService.xpc", v15, 0);
    relayConnection = self->_relayConnection;
    self->_relayConnection = mach_service;

    v18 = self->_relayConnection;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __29__PLXPCRelay_relayConnection__block_invoke_133;
    handler[3] = &unk_1E8519FA8;
    handler[4] = self;
    xpc_connection_set_event_handler(v18, handler);
    xpc_connection_activate(self->_relayConnection);
    if (+[PLDefaults debugEnabled])
    {
      v19 = objc_opt_class();
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __29__PLXPCRelay_relayConnection__block_invoke_155;
      v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v30[4] = v19;
      if (relayConnection_defaultOnce_153 != -1)
      {
        dispatch_once(&relayConnection_defaultOnce_153, v30);
      }

      if (relayConnection_classDebugEnabled_154 == 1)
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relay: connection created!"];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        v21 = [v20 lastPathComponent];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]"];
        [PLCoreStorage logMessage:v4 fromFile:v21 fromFunction:v22 fromLineNumber:294];

        v8 = PLLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_21;
      }
    }
  }

  v23 = self->_relayConnection;
  objc_sync_exit(@"__relayConnectionSync__");

  return v23;
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnection_classDebugEnabled = result;
  return result;
}

void __29__PLXPCRelay_relayConnection__block_invoke_133(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[PLDefaults debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__PLXPCRelay_relayConnection__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (relayConnectionSync_block_invoke_3_defaultOnce != -1)
    {
      dispatch_once(&relayConnectionSync_block_invoke_3_defaultOnce, block);
    }

    if (relayConnectionSync_block_invoke_3_classDebugEnabled == 1)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [*(a1 + 32) relayConnection];
      v8 = [v6 stringWithFormat:@"Relay: event handler fired peerPID=%d %@", xpc_connection_get_pid(v7), v3];

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]_block_invoke"];
      [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:280];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v13 = MEMORY[0x1DA71B8B0](v3);
  v14 = MEMORY[0x1E69E9E98];
  v15 = +[PLDefaults debugEnabled];
  if (v13 == v14)
  {
    if (v15)
    {
      v23 = *(a1 + 32);
      v24 = objc_opt_class();
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __29__PLXPCRelay_relayConnection__block_invoke_136;
      v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v39[4] = v24;
      if (relayConnectionSync_block_invoke_3_defaultOnce_134 != -1)
      {
        dispatch_once(&relayConnectionSync_block_invoke_3_defaultOnce_134, v39);
      }

      if (relayConnectionSync_block_invoke_3_classDebugEnabled_135 == 1)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** Relay ERROR*** XPC error! %@", v3];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
        v27 = [v26 lastPathComponent];
        v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]_block_invoke_2"];
        [PLCoreStorage logMessage:v25 fromFile:v27 fromFunction:v28 fromLineNumber:283];

        v29 = PLLogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if (v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18])
    {
      if (+[PLDefaults debugEnabled])
      {
        v30 = *(a1 + 32);
        v31 = objc_opt_class();
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __29__PLXPCRelay_relayConnection__block_invoke_143;
        v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v38[4] = v31;
        if (relayConnectionSync_block_invoke_3_defaultOnce_141 != -1)
        {
          dispatch_once(&relayConnectionSync_block_invoke_3_defaultOnce_141, v38);
        }

        if (relayConnectionSync_block_invoke_3_classDebugEnabled_142 == 1)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** Relay RESET *** Resetting our connection"];
          v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
          v34 = [v33 lastPathComponent];
          v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]_block_invoke_2"];
          [PLCoreStorage logMessage:v32 fromFile:v34 fromFunction:v35 fromLineNumber:285];

          v36 = PLLogCommon();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      [*(a1 + 32) resetRelayConnection];
    }
  }

  else if (v15)
  {
    v16 = *(a1 + 32);
    v17 = objc_opt_class();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __29__PLXPCRelay_relayConnection__block_invoke_149;
    v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v37[4] = v17;
    if (relayConnectionSync_block_invoke_3_defaultOnce_147 != -1)
    {
      dispatch_once(&relayConnectionSync_block_invoke_3_defaultOnce_147, v37);
    }

    if (relayConnectionSync_block_invoke_3_classDebugEnabled_148 == 1)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** Relay ERROR*** XPC relay back? %@", v3];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PLXPCRelay.m"];
      v20 = [v19 lastPathComponent];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLXPCRelay relayConnection]_block_invoke_2"];
      [PLCoreStorage logMessage:v18 fromFile:v20 fromFunction:v21 fromLineNumber:290];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_3_classDebugEnabled = result;
  return result;
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke_136(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_3_classDebugEnabled_135 = result;
  return result;
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke_143(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_3_classDebugEnabled_142 = result;
  return result;
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke_149(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnectionSync_block_invoke_3_classDebugEnabled_148 = result;
  return result;
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke_155(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnection_classDebugEnabled_154 = result;
  return result;
}

BOOL __29__PLXPCRelay_relayConnection__block_invoke_161(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  relayConnection_classDebugEnabled_160 = result;
  return result;
}

- (void)resetRelayConnection
{
  objc_sync_enter(@"__relayConnectionSync__");
  relayConnection = self->_relayConnection;
  if (relayConnection)
  {
    xpc_connection_cancel(relayConnection);
    v4 = self->_relayConnection;
    self->_relayConnection = 0;
  }

  objc_sync_exit(@"__relayConnectionSync__");
}

@end