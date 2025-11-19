@interface PLBasebandLogChannel
- (BOOL)isValid;
- (BOOL)openWithConnection:(id)a3;
- (PLBasebandLogChannel)init;
- (void)close;
- (void)commitHardwareLogs;
- (void)connectionInvalidated:(id)a3;
- (void)dealloc;
- (void)enableLogCodes:(id)a3 andEvents:(id)a4 andExtraCode:(id)a5;
- (void)flush;
- (void)invalidate;
- (void)sendObjectOverRemotePort:(id)a3;
- (void)setChannelTimeout:(double)a3;
- (void)setHardwareLoggingLevel:(unint64_t)a3 withWindowSize:(unint64_t)a4;
@end

@implementation PLBasebandLogChannel

- (PLBasebandLogChannel)init
{
  v5.receiver = self;
  v5.super_class = PLBasebandLogChannel;
  v2 = [(PLBasebandLogChannel *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->remotePort = 0;
    v2->localPort = 0;
    [(PLBasebandLogChannel *)v2 setCachingEnabled:0];
    [(PLBasebandLogChannel *)v3 setDelegate:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(PLBasebandLogChannel *)self close];
  v4.receiver = self;
  v4.super_class = PLBasebandLogChannel;
  [(PLBasebandLogChannel *)&v4 dealloc];
}

- (BOOL)isValid
{
  if (self->localPort)
  {
    remotePort = self->remotePort;
    if (remotePort)
    {
      LOBYTE(remotePort) = CFMessagePortIsValid(remotePort) != 0;
    }
  }

  else
  {
    LOBYTE(remotePort) = 0;
  }

  return remotePort;
}

- (BOOL)openWithConnection:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[PLBasebandLogChannel openWithConnection:]";
    _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_INFO, "%s: Entered BB logging channel", buf, 0xCu);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __43__PLBasebandLogChannel_openWithConnection___block_invoke;
    v20 = &unk_27825A310;
    v21 = @"Critical";
    v22 = v7;
    if (qword_2811F7838 != -1)
    {
      dispatch_once(&qword_2811F7838, &v17);
    }

    v8 = _MergedGlobals_89;

    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Opening BB logging channel", v17, v18, v19, v20];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLBasebandLogChannel.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandLogChannel openWithConnection:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:53];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  objc_sync_exit(v5);

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __43__PLBasebandLogChannel_openWithConnection___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  _MergedGlobals_89 = result;
  return result;
}

- (void)close
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __29__PLBasebandLogChannel_close__block_invoke;
    v17 = &unk_27825A310;
    v18 = @"Critical";
    v19 = v3;
    if (qword_2811F7840 != -1)
    {
      dispatch_once(&qword_2811F7840, &v14);
    }

    v4 = byte_2811F7831;

    if (v4)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Closing BB logging channel", v14, v15, v16, v17];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLBasebandLogChannel.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandLogChannel close]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:60];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v2->localPort)
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[PLBasebandLogChannel close]";
      _os_log_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_INFO, "%s: Entered Port close, local port ", buf, 0xCu);
    }

    CFMessagePortSetInvalidationCallBack(v2->localPort, 0);
    CFMessagePortInvalidate(v2->localPort);
    CFRelease(v2->localPort);
    v2->localPort = 0;
  }

  if (v2->remotePort)
  {
    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[PLBasebandLogChannel close]";
      _os_log_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_INFO, "%s: Entered Port remote port", buf, 0xCu);
    }

    CFMessagePortSetInvalidationCallBack(v2->remotePort, 0);
    CFMessagePortInvalidate(v2->remotePort);
    CFRelease(v2->remotePort);
    v2->remotePort = 0;
  }

  objc_sync_exit(v2);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __29__PLBasebandLogChannel_close__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F7831 = result;
  return result;
}

- (void)invalidate
{
  v21 = *MEMORY[0x277D85DE8];
  [(PLBasebandLogChannel *)self close];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __34__PLBasebandLogChannel_invalidate__block_invoke;
    v16 = &unk_27825A310;
    v17 = @"Critical";
    v18 = v3;
    if (qword_2811F7848 != -1)
    {
      dispatch_once(&qword_2811F7848, &v13);
    }

    v4 = byte_2811F7832;

    if (v4 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"BB logging channel became Invalid", v13, v14, v15, v16];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLBasebandLogChannel.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandLogChannel invalidate]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:81];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLBasebandLogChannel *)self delegate:v13];
  [v11 channelDidBecomeInvalid:self];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __34__PLBasebandLogChannel_invalidate__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F7832 = result;
  return result;
}

- (void)flush
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CC3A90];
  v6[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(PLBasebandLogChannel *)self sendObjectOverRemotePort:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)commitHardwareLogs
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CC3A78];
  v6[0] = &unk_282C103C8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(PLBasebandLogChannel *)self sendObjectOverRemotePort:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)enableLogCodes:(id)a3 andEvents:(id)a4 andExtraCode:(id)a5
{
  v8 = MEMORY[0x277CBEB38];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v14 = [v8 dictionary];
  v12 = [(PLBasebandLogChannel *)self cachingEnabled];
  v13 = MEMORY[0x277CC3AE0];
  if (!v12)
  {
    v13 = MEMORY[0x277CC3AE8];
  }

  [v14 setObject:*v13 forKeyedSubscript:*MEMORY[0x277CC3AD0]];
  [v14 setObject:v11 forKeyedSubscript:*MEMORY[0x277CC3AB8]];

  [v14 setObject:v10 forKeyedSubscript:*MEMORY[0x277CC3AA0]];
  [v14 setObject:v9 forKeyedSubscript:*MEMORY[0x277CC3A98]];

  [(PLBasebandLogChannel *)self sendObjectOverRemotePort:v14];
}

- (void)sendObjectOverRemotePort:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(PLBasebandLogChannel *)v5 isValid])
  {
    Data = CFPropertyListCreateData(0, v4, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (Data)
    {
      v7 = CFMessagePortSendRequest(v5->remotePort, 0, Data, 1.0, 0.0, 0, 0);
      CFRelease(Data);
      if (v7)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v8 = objc_opt_class();
          block = MEMORY[0x277D85DD0];
          v17 = 3221225472;
          v18 = __49__PLBasebandLogChannel_sendObjectOverRemotePort___block_invoke;
          v19 = &__block_descriptor_40_e5_v8__0lu32l8;
          v20 = v8;
          if (qword_2811F7850 != -1)
          {
            dispatch_once(&qword_2811F7850, &block);
          }

          if (byte_2811F7833 == 1)
          {
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to send object over port (%d)", v7, block, v17, v18, v19, v20];
            v10 = MEMORY[0x277D3F178];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Compositions/Baseband/PLBasebandLogChannel.m"];
            v12 = [v11 lastPathComponent];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandLogChannel sendObjectOverRemotePort:]"];
            [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:121];

            v14 = PLLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v22 = v9;
              _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        [(PLBasebandLogChannel *)v5 invalidate];
      }
    }
  }

  objc_sync_exit(v5);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLBasebandLogChannel_sendObjectOverRemotePort___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7833 = result;
  return result;
}

- (void)setHardwareLoggingLevel:(unint64_t)a3 withWindowSize:(unint64_t)a4
{
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v10 setObject:v7 forKeyedSubscript:*MEMORY[0x277CC3AB0]];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x277CC3AA8]];

  if (a3)
  {
    v9 = MEMORY[0x277CBEC38];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CC3A80]];
    [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x277CC3A88]];
  }

  [(PLBasebandLogChannel *)self sendObjectOverRemotePort:v10];
}

- (void)setChannelTimeout:(double)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = *MEMORY[0x277CC3AD8];
  v4 = *MEMORY[0x277CC3AC0];
  v8[0] = *MEMORY[0x277CC3AC8];
  v8[1] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [(PLBasebandLogChannel *)self sendObjectOverRemotePort:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)connectionInvalidated:(id)a3
{
  if (self->remotePort || self->localPort)
  {
    [(PLBasebandLogChannel *)self invalidate];
  }
}

@end