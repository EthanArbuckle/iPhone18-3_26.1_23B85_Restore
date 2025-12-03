@interface WFNetworkListRandomMACManager
- (BOOL)isSSIDinCache:(id)cache;
- (BOOL)shouldEnableRandomMACForSSID:(id)d;
- (WFNetworkListRandomMACManager)initWithClient:(id)client;
- (id)cachedRandomMACForSSID:(id)d;
- (id)newScanRecordWithRandomMACFromScanRecord:(id)record;
- (void)resetCacheWithCurrentNetworkName:(id)name;
- (void)setRandomMAC:(id)c forNetwork:(id)network mode:(unint64_t)mode;
@end

@implementation WFNetworkListRandomMACManager

- (WFNetworkListRandomMACManager)initWithClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = WFNetworkListRandomMACManager;
  v5 = [(WFNetworkListRandomMACManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(WFNetworkListRandomMACManager *)v5 setClient:clientCopy];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(WFNetworkListRandomMACManager *)v6 setCache:v7];

    [(WFNetworkListRandomMACManager *)v6 setShouldResetCache:0];
  }

  return v6;
}

- (void)resetCacheWithCurrentNetworkName:(id)name
{
  *&v17[13] = *MEMORY[0x277D85DE8];
  nameCopy = name;
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
    *&v17[3] = nameCopy;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: shouldResetCache=%d currentNetworkName=%@", &v14, 0x1Cu);
  }

  if (self->_shouldResetCache)
  {
    if (nameCopy)
    {
      v8 = [(NSMutableDictionary *)self->_cache objectForKey:nameCopy];
      cache = [(WFNetworkListRandomMACManager *)self cache];
      [cache removeAllObjects];

      if (v8)
      {
        v10 = WFLogForCategory(8uLL);
        v11 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v11))
        {
          v14 = 136315394;
          v15 = "[WFNetworkListRandomMACManager resetCacheWithCurrentNetworkName:]";
          v16 = 2112;
          *v17 = nameCopy;
          _os_log_impl(&dword_273ECD000, v10, v11, "%s: leaving current network='%@' in cache", &v14, 0x16u);
        }

        cache2 = [(WFNetworkListRandomMACManager *)self cache];
        [cache2 setObject:v8 forKey:nameCopy];
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

- (id)newScanRecordWithRandomMACFromScanRecord:(id)record
{
  v44 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  attributes = [recordCopy attributes];
  v6 = [attributes mutableCopy];

  privateAddressMode = [recordCopy privateAddressMode];
  cache = self->_cache;
  ssid = [recordCopy ssid];
  v10 = [(NSMutableDictionary *)cache objectForKey:ssid];

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
          ssid2 = [recordCopy ssid];
          v36 = 136315394;
          v37 = "[WFNetworkListRandomMACManager newScanRecordWithRandomMACFromScanRecord:]";
          v38 = 2112;
          v39 = ssid2;
          _os_log_impl(&dword_273ECD000, v14, v13, "%s: private address not in cache for '%@'", &v36, 0x16u);
        }
      }

      client = [(WFNetworkListRandomMACManager *)self client];
      ssid3 = [recordCopy ssid];
      v11 = [client newRandomMACAddressForSSID:ssid3];
    }

    client2 = [v10 objectForKey:@"kWFNetworkListRandomMACCacheStatusKey"];
    privateAddressMode = [client2 intValue];
  }

  else
  {
    client2 = [(WFNetworkListRandomMACManager *)self client];
    ssid4 = [recordCopy ssid];
    v11 = [client2 newRandomMACAddressForSSID:ssid4];
  }

  v20 = WFLogForCategory(8uLL);
  v21 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v20)
  {
    v22 = v20;
    if (os_log_type_enabled(v22, v21))
    {
      ssid5 = [recordCopy ssid];
      v36 = 136315906;
      v37 = "[WFNetworkListRandomMACManager newScanRecordWithRandomMACFromScanRecord:]";
      v38 = 2112;
      v39 = v11;
      v40 = 2112;
      v41 = ssid5;
      v42 = 2048;
      v43 = privateAddressMode;
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

        v29 = [MEMORY[0x277CCABB0] numberWithInt:privateAddressMode];
        [v26 setObject:v29 forKey:@"PRIVATE_MAC_ADDRESS_TYPE"];

        [v6 setObject:v26 forKey:@"PRIVATE_MAC_ADDRESS"];
      }
    }

    ssid6 = [recordCopy ssid];

    if (ssid6)
    {
      ssid7 = [recordCopy ssid];
      [(WFNetworkListRandomMACManager *)self setRandomMAC:v11 forNetwork:ssid7 mode:privateAddressMode];
    }
  }

  v32 = WiFiNetworkCreate();
  v33 = [[WFNetworkScanRecord alloc] initWithNetworkRef:v32];
  CFRelease(v32);

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)setRandomMAC:(id)c forNetwork:(id)network mode:(unint64_t)mode
{
  v24 = *MEMORY[0x277D85DE8];
  cCopy = c;
  networkCopy = network;
  if (cCopy)
  {
    v10 = [(NSMutableDictionary *)self->_cache objectForKey:networkCopy];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    [v10 setObject:cCopy forKey:@"kWFNetworkListRandomMACCacheAddressKey"];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
    [v10 setObject:v11 forKey:@"kWFNetworkListRandomMACCacheStatusKey"];

    [(NSMutableDictionary *)self->_cache setObject:v10 forKey:networkCopy];
    v12 = WFLogForCategory(8uLL);
    v13 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v12 && os_log_type_enabled(v12, v13))
    {
      v16 = 136315906;
      v17 = "[WFNetworkListRandomMACManager setRandomMAC:forNetwork:mode:]";
      v18 = 2112;
      v19 = cCopy;
      v20 = 2112;
      modeCopy2 = networkCopy;
      v22 = 2048;
      modeCopy = mode;
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
      v19 = networkCopy;
      v20 = 2048;
      modeCopy2 = mode;
      _os_log_impl(&dword_273ECD000, v10, v15, "%s: unable to cache nil private address for '%@' (mode=%lu)", &v16, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSSIDinCache:(id)cache
{
  v16 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:cacheCopy];
  v6 = WFLogForCategory(8uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
  {
    v10 = 136315650;
    v11 = "[WFNetworkListRandomMACManager isSSIDinCache:]";
    v12 = 1024;
    v13 = v5 != 0;
    v14 = 2112;
    v15 = cacheCopy;
    _os_log_impl(&dword_273ECD000, v6, v7, "%s: cached=%d private address for '%@'", &v10, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (BOOL)shouldEnableRandomMACForSSID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"kWFNetworkListRandomMACCacheStatusKey"];
    bOOLValue = [v7 BOOLValue];

    v9 = WFLogForCategory(8uLL);
    v10 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v9 && os_log_type_enabled(v9, v10))
    {
      v18 = 136315650;
      v19 = "[WFNetworkListRandomMACManager shouldEnableRandomMACForSSID:]";
      v20 = 2112;
      v21 = dCopy;
      v22 = 1024;
      v23 = bOOLValue;
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
    LOBYTE(bOOLValue) = 1;
    if (WFCurrentLogLevel() >= 4 && v9 && os_log_type_enabled(v9, v15))
    {
      v18 = 136315394;
      v19 = "[WFNetworkListRandomMACManager shouldEnableRandomMACForSSID:]";
      v20 = 2112;
      v21 = dCopy;
      v11 = "%s: no cached value for '%@'";
      v12 = v9;
      v13 = v15;
      v14 = 22;
      goto LABEL_10;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (id)cachedRandomMACForSSID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:dCopy];
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
        v17 = dCopy;
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
      v17 = dCopy;
      _os_log_impl(&dword_273ECD000, v8, v11, "%s: '%@' does not exist in cache", &v14, 0x16u);
    }
  }

  v7 = 0;
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

@end