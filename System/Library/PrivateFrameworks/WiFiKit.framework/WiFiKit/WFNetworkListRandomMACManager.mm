@interface WFNetworkListRandomMACManager
- (BOOL)isSSIDinCache:(id)a3;
- (BOOL)shouldEnableRandomMACForSSID:(id)a3;
- (WFNetworkListRandomMACManager)initWithClient:(id)a3;
- (id)cachedRandomMACForSSID:(id)a3;
- (id)newScanRecordWithRandomMACFromScanRecord:(id)a3;
- (void)resetCacheWithCurrentNetworkName:(id)a3;
- (void)setRandomMAC:(id)a3 forNetwork:(id)a4 mode:(unint64_t)a5;
@end

@implementation WFNetworkListRandomMACManager

- (WFNetworkListRandomMACManager)initWithClient:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WFNetworkListRandomMACManager;
  v5 = [(WFNetworkListRandomMACManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(WFNetworkListRandomMACManager *)v5 setClient:v4];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(WFNetworkListRandomMACManager *)v6 setCache:v7];

    [(WFNetworkListRandomMACManager *)v6 setShouldResetCache:0];
  }

  return v6;
}

- (void)resetCacheWithCurrentNetworkName:(id)a3
{
  *&v17[13] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(8uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    shouldResetCache = self->_shouldResetCache;
    v14 = 136315650;
    v15 = "[WFNetworkListRandomMACManager resetCacheWithCurrentNetworkName:]";
    v16 = 1024;
    *v17 = shouldResetCache;
    v17[2] = 2112;
    *&v17[3] = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: shouldResetCache=%d currentNetworkName=%@", &v14, 0x1Cu);
  }

  if (self->_shouldResetCache)
  {
    if (v4)
    {
      v8 = [(NSMutableDictionary *)self->_cache objectForKey:v4];
      v9 = [(WFNetworkListRandomMACManager *)self cache];
      [v9 removeAllObjects];

      if (v8)
      {
        v10 = WFLogForCategory(8uLL);
        v11 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v11))
        {
          v14 = 136315394;
          v15 = "[WFNetworkListRandomMACManager resetCacheWithCurrentNetworkName:]";
          v16 = 2112;
          *v17 = v4;
          _os_log_impl(&dword_273ECD000, v10, v11, "%s: leaving current network='%@' in cache", &v14, 0x16u);
        }

        v12 = [(WFNetworkListRandomMACManager *)self cache];
        [v12 setObject:v8 forKey:v4];
      }

      self->_shouldResetCache = 0;
    }
  }

  else
  {
    self->_shouldResetCache = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)newScanRecordWithRandomMACFromScanRecord:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 attributes];
  v6 = [v5 mutableCopy];

  v7 = [v4 privateAddressMode];
  cache = self->_cache;
  v9 = [v4 ssid];
  v10 = [(NSMutableDictionary *)cache objectForKey:v9];

  if (v10)
  {
    v11 = [v10 objectForKey:@"kWFNetworkListRandomMACCacheAddressKey"];
    if (!v11)
    {
      v12 = WFLogForCategory(8uLL);
      v13 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v12)
      {
        v14 = v12;
        if (os_log_type_enabled(v14, v13))
        {
          v15 = [v4 ssid];
          v36 = 136315394;
          v37 = "[WFNetworkListRandomMACManager newScanRecordWithRandomMACFromScanRecord:]";
          v38 = 2112;
          v39 = v15;
          _os_log_impl(&dword_273ECD000, v14, v13, "%s: private address not in cache for '%@'", &v36, 0x16u);
        }
      }

      v16 = [(WFNetworkListRandomMACManager *)self client];
      v17 = [v4 ssid];
      v11 = [v16 newRandomMACAddressForSSID:v17];
    }

    v18 = [v10 objectForKey:@"kWFNetworkListRandomMACCacheStatusKey"];
    v7 = [v18 intValue];
  }

  else
  {
    v18 = [(WFNetworkListRandomMACManager *)self client];
    v19 = [v4 ssid];
    v11 = [v18 newRandomMACAddressForSSID:v19];
  }

  v20 = WFLogForCategory(8uLL);
  v21 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v20)
  {
    v22 = v20;
    if (os_log_type_enabled(v22, v21))
    {
      v23 = [v4 ssid];
      v36 = 136315906;
      v37 = "[WFNetworkListRandomMACManager newScanRecordWithRandomMACFromScanRecord:]";
      v38 = 2112;
      v39 = v11;
      v40 = 2112;
      v41 = v23;
      v42 = 2048;
      v43 = v7;
      _os_log_impl(&dword_273ECD000, v22, v21, "%s: private address='%@' for '%@' (mode=%lu)", &v36, 0x2Au);
    }
  }

  if (v11)
  {
    v24 = ether_aton([v11 UTF8String]);
    if (v24)
    {
      v25 = v24;
      v26 = objc_opt_new();
      v27 = CFDataCreate(0, v25, 6);
      if (v27)
      {
        v28 = v27;
        [v26 setObject:v27 forKey:@"PRIVATE_MAC_ADDRESS_VALUE"];

        v29 = [MEMORY[0x277CCABB0] numberWithInt:v7];
        [v26 setObject:v29 forKey:@"PRIVATE_MAC_ADDRESS_TYPE"];

        [v6 setObject:v26 forKey:@"PRIVATE_MAC_ADDRESS"];
      }
    }

    v30 = [v4 ssid];

    if (v30)
    {
      v31 = [v4 ssid];
      [(WFNetworkListRandomMACManager *)self setRandomMAC:v11 forNetwork:v31 mode:v7];
    }
  }

  v32 = WiFiNetworkCreate();
  v33 = [[WFNetworkScanRecord alloc] initWithNetworkRef:v32];
  CFRelease(v32);

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)setRandomMAC:(id)a3 forNetwork:(id)a4 mode:(unint64_t)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(NSMutableDictionary *)self->_cache objectForKey:v9];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    [v10 setObject:v8 forKey:@"kWFNetworkListRandomMACCacheAddressKey"];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    [v10 setObject:v11 forKey:@"kWFNetworkListRandomMACCacheStatusKey"];

    [(NSMutableDictionary *)self->_cache setObject:v10 forKey:v9];
    v12 = WFLogForCategory(8uLL);
    v13 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v12 && os_log_type_enabled(v12, v13))
    {
      v16 = 136315906;
      v17 = "[WFNetworkListRandomMACManager setRandomMAC:forNetwork:mode:]";
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2048;
      v23 = a5;
      _os_log_impl(&dword_273ECD000, v12, v13, "%s: caching private address='%@' for '%@' (mode=%lu)", &v16, 0x2Au);
    }
  }

  else
  {
    v10 = WFLogForCategory(8uLL);
    v15 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v15))
    {
      v16 = 136315650;
      v17 = "[WFNetworkListRandomMACManager setRandomMAC:forNetwork:mode:]";
      v18 = 2112;
      v19 = v9;
      v20 = 2048;
      v21 = a5;
      _os_log_impl(&dword_273ECD000, v10, v15, "%s: unable to cache nil private address for '%@' (mode=%lu)", &v16, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSSIDinCache:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:v4];
  v6 = WFLogForCategory(8uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
  {
    v10 = 136315650;
    v11 = "[WFNetworkListRandomMACManager isSSIDinCache:]";
    v12 = 1024;
    v13 = v5 != 0;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_273ECD000, v6, v7, "%s: cached=%d private address for '%@'", &v10, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (BOOL)shouldEnableRandomMACForSSID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"kWFNetworkListRandomMACCacheStatusKey"];
    v8 = [v7 BOOLValue];

    v9 = WFLogForCategory(8uLL);
    v10 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v9 && os_log_type_enabled(v9, v10))
    {
      v18 = 136315650;
      v19 = "[WFNetworkListRandomMACManager shouldEnableRandomMACForSSID:]";
      v20 = 2112;
      v21 = v4;
      v22 = 1024;
      v23 = v8;
      v11 = "%s: cached value for '%@' enabled=%d";
      v12 = v9;
      v13 = v10;
      v14 = 28;
LABEL_10:
      _os_log_impl(&dword_273ECD000, v12, v13, v11, &v18, v14);
    }
  }

  else
  {
    v9 = WFLogForCategory(8uLL);
    v15 = OSLogForWFLogLevel(4uLL);
    LOBYTE(v8) = 1;
    if (WFCurrentLogLevel() >= 4 && v9 && os_log_type_enabled(v9, v15))
    {
      v18 = 136315394;
      v19 = "[WFNetworkListRandomMACManager shouldEnableRandomMACForSSID:]";
      v20 = 2112;
      v21 = v4;
      v11 = "%s: no cached value for '%@'";
      v12 = v9;
      v13 = v15;
      v14 = 22;
      goto LABEL_10;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)cachedRandomMACForSSID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"kWFNetworkListRandomMACCacheAddressKey"];
    if (v7)
    {
      goto LABEL_13;
    }

    v8 = WFLogForCategory(8uLL);
    v9 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v8)
    {
      v8 = v8;
      if (os_log_type_enabled(v8, v9))
      {
        v10 = [(NSMutableDictionary *)self->_cache count];
        v14 = 136315650;
        v15 = "[WFNetworkListRandomMACManager cachedRandomMACForSSID:]";
        v16 = 2112;
        v17 = v4;
        v18 = 2048;
        v19 = v10;
        _os_log_impl(&dword_273ECD000, v8, v9, "%s: no private address found for '%@' (cached=%lu)", &v14, 0x20u);
      }
    }
  }

  else
  {
    v8 = WFLogForCategory(8uLL);
    v11 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v11))
    {
      v14 = 136315394;
      v15 = "[WFNetworkListRandomMACManager cachedRandomMACForSSID:]";
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_273ECD000, v8, v11, "%s: '%@' does not exist in cache", &v14, 0x16u);
    }
  }

  v7 = 0;
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

@end