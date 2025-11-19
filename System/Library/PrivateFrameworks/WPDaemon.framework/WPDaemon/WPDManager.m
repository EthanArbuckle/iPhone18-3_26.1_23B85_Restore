@interface WPDManager
+ (id)cbStateAsString:(int64_t)a3;
+ (id)wpStateAsString:(int64_t)a3;
+ (void)initialize;
+ (void)initializeAdvDenylist:(id)a3 AdvAllowlist:(id)a4 ScanDenylist:(id)a5 ScanAllowlist:(id)a6;
- (BOOL)isAdvertisingAllowlistedForType:(unsigned __int8)a3;
- (BOOL)isScanAllowlistedForType:(unsigned __int8)a3;
- (NSString)description;
- (WPDManager)initWithServer:(id)a3 Name:(id)a4;
- (WPDaemonServer)server;
- (id)generateStateDumpStrings;
- (void)cbManagerDidUpdateState:(id)a3;
- (void)cleanup;
- (void)dealloc;
- (void)generateStateDump;
- (void)update;
@end

@implementation WPDManager

- (WPDaemonServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

+ (void)initialize
{
  v14 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    _isInternalBuild = os_variant_has_internal_diagnostics();
    if (WPLogInitOnce != -1)
    {
      +[WPDManager initialize];
    }

    v2 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      LODWORD(v13) = _isInternalBuild;
      _os_log_impl(&dword_272965000, v2, OS_LOG_TYPE_DEFAULT, "WPDManager _isInternalBuild: %d", &v12, 8u);
    }

    if (_isInternalBuild == 1)
    {
      v3 = _getCombinedAllowlist(@"ScanDenylist", @"ScanAllowlist");
      v4 = _scanAllowlist;
      _scanAllowlist = v3;

      if (WPLogInitOnce != -1)
      {
        +[WPDManager initialize];
      }

      v5 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = _scanAllowlist;
        _os_log_impl(&dword_272965000, v5, OS_LOG_TYPE_DEFAULT, "WPDManager scanAllowlist: %@", &v12, 0xCu);
      }

      v6 = _getCombinedAllowlist(@"AdvDenylist", @"AdvAllowlist");
      v7 = _advAllowlist;
      _advAllowlist = v6;

      if (WPLogInitOnce != -1)
      {
        +[WPDManager initialize];
      }

      v8 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = _advAllowlist;
        _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "WPDManager advAllowlist %@", &v12, 0xCu);
      }
    }

    else
    {
      v9 = _scanAllowlist;
      _scanAllowlist = 0;

      v10 = _advAllowlist;
      _advAllowlist = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (WPDManager)initWithServer:(id)a3 Name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = WPDManager;
  v8 = [(WPDManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_server, v6);
    objc_storeStrong(&v9->_name, a4);
    v9->_state = 0;
    *&v9->_restricted = 0;
    cbManagers = v9->_cbManagers;
    v9->_cbManagers = 0;

    v9->_isHomePod = +[WPDaemonServer isHomePod];
  }

  return v9;
}

- (void)cleanup
{
  v8 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDManager cleanup];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    name = self->_name;
    v6 = 138412290;
    v7 = name;
    _os_log_impl(&dword_272965000, v3, OS_LOG_TYPE_DEFAULT, "%@ dealloc", &v6, 0xCu);
  }

  [(WPDManager *)self setState:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(WPDManager *)self cleanup];
  v3.receiver = self;
  v3.super_class = WPDManager;
  [(WPDManager *)&v3 dealloc];
}

- (NSString)description
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [(WPDManager *)self generateStateDumpStrings];
  v5 = [v4 count] - 1;
  v6 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@\n", self->_name];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v4 subarrayWithRange:{1, v5}];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 appendString:*(*(&v15 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithString:v6];

  objc_autoreleasePoolPop(v3);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)generateStateDumpStrings
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"========= %@ =========\n", self->_name];
  [v3 addObject:v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = [WPDManager wpStateAsString:[(WPDManager *)self state]];
  v7 = [v5 stringWithFormat:@"state: %@ (%d)\n", v6, -[WPDManager state](self, "state")];
  [v3 addObject:v7];

  v8 = MEMORY[0x277CCACA8];
  v9 = [(WPDManager *)self testMode];
  v10 = "no";
  if (v9)
  {
    v10 = "yes";
  }

  v11 = [v8 stringWithFormat:@"testMode: %s\n", v10];
  [v3 addObject:v11];

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  return v12;
}

- (void)generateStateDump
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(WPDManager *)self generateStateDumpStrings];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (WPLogInitOnce != -1)
        {
          [WPDManager generateStateDump];
        }

        v8 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = v7;
          _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "WPDaemon statedump: %@", buf, 0xCu);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cbManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = [(WPDManager *)self cbManagers];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(WPDManager *)self server];
    [v7 cbManagerDidUpdateState:v4];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDManager cbManagerDidUpdateState:];
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDManager *)v8 cbManagerDidUpdateState:v4];
    }
  }
}

- (void)update
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[WPDManager update]";
  _os_log_error_impl(&dword_272965000, log, OS_LOG_TYPE_ERROR, "%s must override", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (BOOL)isScanAllowlistedForType:(unsigned __int8)a3
{
  v3 = a3;
  v4 = +[WPDManager scanAllowlist];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 containsIndex:v3];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isAdvertisingAllowlistedForType:(unsigned __int8)a3
{
  v3 = a3;
  v4 = +[WPDManager advAllowlist];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 containsIndex:v3];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)wpStateAsString:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_279E58E58[a3 - 1];
  }
}

+ (id)cbStateAsString:(int64_t)a3
{
  if ((a3 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_279E58E70[a3 - 1];
  }
}

+ (void)initializeAdvDenylist:(id)a3 AdvAllowlist:(id)a4 ScanDenylist:(id)a5 ScanAllowlist:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (_isInternalBuild == 1)
  {
    v13 = _combineDenylistAndAllowlist(v11, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = _scanAllowlist;
  _scanAllowlist = v13;

  if (_scanAllowlist)
  {
    if (WPLogInitOnce != -1)
    {
      +[WPDManager initializeAdvDenylist:AdvAllowlist:ScanDenylist:ScanAllowlist:];
    }

    v15 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412802;
      v21 = @"ScanDenylist";
      v22 = 2112;
      v23 = @"ScanAllowlist";
      v24 = 2112;
      v25 = _scanAllowlist;
      _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_DEFAULT, "Combined %@ and %@ into allowlist: %@", &v20, 0x20u);
    }
  }

  if (_isInternalBuild == 1)
  {
    v16 = _combineDenylistAndAllowlist(v9, v10);
  }

  else
  {
    v16 = 0;
  }

  v17 = _advAllowlist;
  _advAllowlist = v16;

  if (_advAllowlist)
  {
    if (WPLogInitOnce != -1)
    {
      +[WPDManager initializeAdvDenylist:AdvAllowlist:ScanDenylist:ScanAllowlist:];
    }

    v18 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412802;
      v21 = @"AdvDenylist";
      v22 = 2112;
      v23 = @"AdvAllowlist";
      v24 = 2112;
      v25 = _advAllowlist;
      _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_DEFAULT, "Combined %@ and %@ into allowlist: %@", &v20, 0x20u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)cbManagerDidUpdateState:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 name];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a3;
  _os_log_error_impl(&dword_272965000, v5, OS_LOG_TYPE_ERROR, "%@ manager - unexpected CB manager %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end