@interface RMSSessionProxy
- (BOOL)sessionMatchesNotification:(id)a3;
- (RMSSessionProxy)initWithTimeout:(double)a3;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationWillResignActiveNotification:(id)a3;
- (void)_sendHeartbeat:(id)a3;
- (void)beginHeartbeat;
- (void)dealloc;
- (void)endHeartbeat;
@end

@implementation RMSSessionProxy

- (RMSSessionProxy)initWithTimeout:(double)a3
{
  v8.receiver = self;
  v8.super_class = RMSSessionProxy;
  v4 = [(RMSSessionProxy *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_sessionTimeout = a3;
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v5 selector:sel__applicationWillResignActiveNotification_ name:*MEMORY[0x277D76768] object:0];
    [v6 addObserver:v5 selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(RMSSessionProxy *)self endHeartbeat];
  v4.receiver = self;
  v4.super_class = RMSSessionProxy;
  [(RMSSessionProxy *)&v4 dealloc];
}

- (void)_applicationWillResignActiveNotification:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_heartbeatTimer)
  {
    v4 = RMSLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_261E98000, v4, OS_LOG_TYPE_DEFAULT, "[%@] Application suspended, pausing heartbeat", &v7, 0xCu);
    }

    [(RMSSessionProxy *)self endHeartbeat];
    self->_isPaused = 1;
  }
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_isPaused)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5 = v4 - self->_lastHeartbeatTime;
    v6 = RMSLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v15 = 138412546;
      v16 = *&v8;
      v17 = 2048;
      v18 = v5;
      _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "[%@] Application foregrounded, time since last heartbeat: %f", &v15, 0x16u);
    }

    v9 = RMSLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sessionTimeout = self->_sessionTimeout;
      v15 = 134217984;
      v16 = sessionTimeout;
      _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "Session timeout: %f", &v15, 0xCu);
    }

    v11 = self->_sessionTimeout;
    v12 = RMSLogger();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v5 >= v11)
    {
      if (v13)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "Backgrounded for too long, session is over", &v15, 2u);
      }

      [(RMSSessionProxy *)self heartbeatDidFail];
      [(RMSSessionProxy *)self endHeartbeat];
      self->_sessionIdentifier = 0;
    }

    else
    {
      if (v13)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "Resuming session", &v15, 2u);
      }

      [(RMSSessionProxy *)self beginHeartbeat];
      if (v5 > ([(RMSSessionProxy *)self heartbeatTime]/ 2))
      {
        v14 = RMSLogger();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_261E98000, v14, OS_LOG_TYPE_DEFAULT, "Sending immediate heartbeat", &v15, 2u);
        }

        [(NSTimer *)self->_heartbeatTimer fire];
      }
    }
  }
}

- (void)beginHeartbeat
{
  if (!self->_heartbeatTimer)
  {
    block[7] = v2;
    block[8] = v3;
    self->_isPaused = 0;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_lastHeartbeatTime = v5;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__RMSSessionProxy_beginHeartbeat__block_invoke;
    block[3] = &unk_279B088E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __33__RMSSessionProxy_beginHeartbeat__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel__sendHeartbeat_ selector:0 userInfo:1 repeats:{objc_msgSend(*(a1 + 32), "heartbeatTime")}];

  return MEMORY[0x2821F96F8]();
}

- (void)endHeartbeat
{
  heartbeatTimer = self->_heartbeatTimer;
  if (heartbeatTimer)
  {
    [(NSTimer *)heartbeatTimer invalidate];
    v4 = self->_heartbeatTimer;
    self->_heartbeatTimer = 0;
  }

  self->_isPaused = 0;
}

- (BOOL)sessionMatchesNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"RMSIDSClientSessionIdentifierNotificationKey"];
  v6 = [v5 intValue];

  LOBYTE(self) = self->_sessionIdentifier == v6;
  return self;
}

- (void)_sendHeartbeat:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RMSSessionProxy *)self sessionIdentifier];
  objc_initWeak(&location, self);
  v6 = RMSLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "Sending heartbeat for session: %@", buf, 0xCu);
  }

  v9 = +[RMSIDSClient sharedClient];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__RMSSessionProxy__sendHeartbeat___block_invoke;
  v10[3] = &unk_279B08930;
  objc_copyWeak(&v11, &location);
  [v9 sendHeartbeatWithSessionIdentifier:v5 completionHandler:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __34__RMSSessionProxy__sendHeartbeat___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[1] && (WeakRetained[4] & 1) == 0)
  {
    if (a2 == 1)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v4[3] = v5;
      v6 = RMSLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "Hearbeat success response for session: %@", &v12, 0xCu);
      }
    }

    else
    {
      v9 = RMSLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "Heartbeat failure response for session: %@", &v12, 0xCu);
      }

      [v4 endHeartbeat];
      [v4 heartbeatDidFail];
    }
  }
}

@end