@interface CNHotspotSessionManager
+ (id)eventTypeString:(int)a3;
+ (id)hotspotSessionQueue;
+ (id)sessionStatusString:(int)a3;
+ (id)sessionTypeString:(int)a3;
- (CNHotspotSessionManager)init;
- (void)dealloc;
- (void)invalidate;
- (void)scheduleRequestCompletionHandler:(int)a3;
- (void)stop;
@end

@implementation CNHotspotSessionManager

+ (id)hotspotSessionQueue
{
  if (hotspotSessionQueue_onceToken != -1)
  {
    +[CNHotspotSessionManager hotspotSessionQueue];
  }

  v3 = hotspotSessionQueue_g_queue;

  return v3;
}

uint64_t __46__CNHotspotSessionManager_hotspotSessionQueue__block_invoke()
{
  hotspotSessionQueue_g_queue = dispatch_queue_create("CNHotspotSessionManager_Queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (CNHotspotSessionManager)init
{
  v6.receiver = self;
  v6.super_class = CNHotspotSessionManager;
  v2 = [(CNHotspotSessionManager *)&v6 init];
  v3 = +[CNHotspotSessionManager hotspotSessionQueue];
  queue = v2->_queue;
  v2->_queue = v3;

  v2->_currentSessionStatus = 0;
  return v2;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = mysyslog_get_logger();
  v4 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 138412290;
    v8 = self;
    _os_log_impl(&dword_277237000, v3, v4, "%@: dealloc", buf, 0xCu);
  }

  [(CNHotspotSessionManager *)self setHandler:0];
  [(CNHotspotSessionManager *)self setRunloop:0];
  [(CNHotspotSessionManager *)self setContext:0];
  [(CNHotspotSessionManager *)self setQueue:0];
  if ([(CNHotspotSessionManager *)self hotspotSession])
  {
    [(CNHotspotSessionManager *)self hotspotSession];
    ne_session_release();
    [(CNHotspotSessionManager *)self setHotspotSession:0];
  }

  v6.receiver = self;
  v6.super_class = CNHotspotSessionManager;
  [(CNHotspotSessionManager *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)scheduleRequestCompletionHandler:(int)a3
{
  if (a3 == 1)
  {
    hotspotSession = self->_hotspotSession;
    ne_session_cancel();
  }

  if (self->_handler)
  {
    runloop = self->_runloop;
    if (runloop)
    {
      runloopMode = self->_runloopMode;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __60__CNHotspotSessionManager_scheduleRequestCompletionHandler___block_invoke;
      v8[3] = &unk_27A714630;
      v8[4] = self;
      v9 = a3;
      CFRunLoopPerformBlock(runloop, runloopMode, v8);
      CFRunLoopWakeUp(self->_runloop);
    }
  }
}

+ (id)sessionTypeString:(int)a3
{
  v3 = @"Unsupported";
  if (a3 == 12)
  {
    v3 = @"Authentication";
  }

  if (a3 == 11)
  {
    return @"Evaluation";
  }

  else
  {
    return v3;
  }
}

+ (id)eventTypeString:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_27A7146A0[a3 - 1];
  }
}

+ (id)sessionStatusString:(int)a3
{
  if (a3 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_27A7146B8[a3];
  }
}

void __64__CNHotspotSessionManager_startWithConfigurationID_sessionType___block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = mysyslog_get_logger();
  v6 = _SC_syslog_os_log_mapping();
  v7 = v5;
  if (os_log_type_enabled(v7, v6))
  {
    v8 = [WeakRetained hotspotSession];
    v9 = [CNHotspotSessionManager eventTypeString:a2];
    *buf = 138413058;
    v18 = WeakRetained;
    v19 = 2080;
    v20 = "[CNHotspotSessionManager startWithConfigurationID:sessionType:]_block_invoke";
    v21 = 2048;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_277237000, v7, v6, "%@: (%s): hotspot session([%p]) received event:[%@]", buf, 0x2Au);
  }

  if (a2 == 2)
  {
    v11 = mysyslog_get_logger();
    v12 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(a1 + 40);
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&dword_277237000, v11, v12, "hotspot session was cancelled for configuration [%@]", buf, 0xCu);
    }

    if ([WeakRetained hotspotSession])
    {
      [WeakRetained hotspotSession];
      ne_session_release();
      [WeakRetained setHotspotSession:0];
    }
  }

  else if (a2 == 1)
  {
    [WeakRetained hotspotSession];
    v10 = [WeakRetained queue];
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    ne_session_get_status();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __64__CNHotspotSessionManager_startWithConfigurationID_sessionType___block_invoke_69(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = mysyslog_get_logger();
  v5 = _SC_syslog_os_log_mapping();
  v6 = v4;
  if (os_log_type_enabled(v6, v5))
  {
    v7 = *(a1 + 32);
    v8 = [v7 hotspotSession];
    v9 = [CNHotspotSessionManager sessionStatusString:a2];
    v29 = 138413058;
    v30 = v7;
    v31 = 2080;
    v32 = "[CNHotspotSessionManager startWithConfigurationID:sessionType:]_block_invoke";
    v33 = 2048;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&dword_277237000, v6, v5, "%@: (%s): hotspot session([%p]) received session status:[%@]", &v29, 0x2Au);
  }

  if ([*(a1 + 40) currentSessionStatus] != a2)
  {
    if (a2 == 1)
    {
      v23 = mysyslog_get_logger();
      v24 = _SC_syslog_os_log_mapping();
      v25 = v23;
      if (os_log_type_enabled(v25, v24))
      {
        v26 = [*(a1 + 32) hotspotSession];
        v27 = *(a1 + 48);
        v29 = 134218242;
        v30 = v26;
        v31 = 2112;
        v32 = v27;
        _os_log_impl(&dword_277237000, v25, v24, "hotspot session([%p]) status changed to disconnected for configuration [%@]", &v29, 0x16u);
      }

      [*(a1 + 32) setCurrentSessionStatus:1];
      v21 = *(a1 + 32);
      v22 = 1;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_16;
      }

      v16 = mysyslog_get_logger();
      v17 = _SC_syslog_os_log_mapping();
      v18 = v16;
      if (os_log_type_enabled(v18, v17))
      {
        v19 = [*(a1 + 32) hotspotSession];
        v20 = *(a1 + 48);
        v29 = 134218242;
        v30 = v19;
        v31 = 2112;
        v32 = v20;
        _os_log_impl(&dword_277237000, v18, v17, "hotspot session([%p]) status changed to connected for configuration [%@]", &v29, 0x16u);
      }

      [*(a1 + 32) setCurrentSessionStatus:3];
      v21 = *(a1 + 32);
      v22 = 3;
    }

    [v21 scheduleRequestCompletionHandler:v22];
    goto LABEL_16;
  }

  v10 = mysyslog_get_logger();
  v11 = _SC_syslog_os_log_mapping();
  v12 = v10;
  if (os_log_type_enabled(v12, v11))
  {
    v13 = *(a1 + 32);
    v14 = [v13 hotspotSession];
    v15 = *(a1 + 48);
    v29 = 138412802;
    v30 = v13;
    v31 = 2048;
    v32 = v14;
    v33 = 2112;
    v34 = v15;
    _os_log_impl(&dword_277237000, v12, v11, "%@ hotspot session([%p]) status did not change for configuration [%@]", &v29, 0x20u);
  }

LABEL_16:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  if (self->_hotspotSession)
  {
    if (self->_currentSessionStatus == 3)
    {
      MEMORY[0x282204A80]();
    }
  }
}

- (void)invalidate
{
  if (self->_hotspotSession)
  {
    ne_session_release();
    self->_hotspotSession = 0;
    self->_currentSessionStatus = 0;
  }
}

@end