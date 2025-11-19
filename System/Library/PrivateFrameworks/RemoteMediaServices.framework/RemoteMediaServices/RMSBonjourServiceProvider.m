@interface RMSBonjourServiceProvider
- (RMSBonjourServiceProvider)init;
- (RMSServiceProviderDelegate)delegate;
- (id)_identifierForNetService:(id)a3;
- (id)_searchString;
- (id)_valueForTXTRecordKey:(id)a3 inTXTDictionary:(id)a4;
- (int64_t)serviceTypeFromTXTDictionary:(id)a3;
- (void)_updateCacheWithService:(id)a3 identifier:(id)a4;
- (void)_updateService:(id)a3 withNetService:(id)a4 txtData:(id)a5;
- (void)beginDiscovery;
- (void)dealloc;
- (void)netService:(id)a3 didNotResolve:(id)a4;
- (void)netService:(id)a3 didUpdateTXTRecordData:(id)a4;
- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5;
- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4 moreComing:(BOOL)a5;
- (void)netServiceDidResolveAddress:(id)a3;
@end

@implementation RMSBonjourServiceProvider

- (RMSBonjourServiceProvider)init
{
  v13.receiver = self;
  v13.super_class = RMSBonjourServiceProvider;
  v2 = [(RMSBonjourServiceProvider *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    services = v2->_services;
    v2->_services = v3;

    v5 = objc_opt_new();
    netServiceBrowser = v2->_netServiceBrowser;
    v2->_netServiceBrowser = v5;

    [(NSNetServiceBrowser *)v2->_netServiceBrowser setDelegate:v2];
    CFPreferencesAppSynchronize(@"com.apple.RemoteMediaServices");
    v7 = CFPreferencesCopyAppValue(@"BonjourCacheKey", @"com.apple.RemoteMediaServices");
    v8 = [v7 mutableCopy];
    cache = v2->_cache;
    v2->_cache = v8;

    if (!v2->_cache)
    {
      v10 = objc_opt_new();
      v11 = v2->_cache;
      v2->_cache = v10;
    }
  }

  return v2;
}

- (void)dealloc
{
  [(NSNetServiceBrowser *)self->_netServiceBrowser setDelegate:0];
  v3.receiver = self;
  v3.super_class = RMSBonjourServiceProvider;
  [(RMSBonjourServiceProvider *)&v3 dealloc];
}

- (void)beginDiscovery
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(RMSBonjourServiceProvider *)self _searchString];
  v4 = RMSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_261E98000, v4, OS_LOG_TYPE_DEFAULT, "Searching for services of type: %@", &v7, 0xCu);
  }

  netServiceBrowser = self->_netServiceBrowser;
  v6 = [(RMSBonjourServiceProvider *)self searchDomain];
  [(NSNetServiceBrowser *)netServiceBrowser searchForServicesOfType:v3 inDomain:v6];
}

- (int64_t)serviceTypeFromTXTDictionary:(id)a3
{
  v3 = [(RMSBonjourServiceProvider *)self _valueForTXTRecordKey:@"DvTy" inTXTDictionary:a3];
  if ([v3 containsString:@"AppleTV"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)netServiceBrowser:(id)a3 didFindService:(id)a4 moreComing:(BOOL)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = RMSLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 name];
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&dword_261E98000, v7, OS_LOG_TYPE_DEFAULT, "Net service browser did find service: %@", &v15, 0xCu);
  }

  v9 = [(RMSBonjourServiceProvider *)self _identifierForNetService:v6];
  [v6 setDelegate:self];
  [v6 startMonitoring];
  v10 = objc_opt_new();
  [v10 setState:0];
  [v10 setNetService:v6];
  [(NSMutableDictionary *)self->_services setObject:v10 forKeyedSubscript:v9];
  v11 = [(NSMutableDictionary *)self->_cache objectForKey:v9];
  if (v11)
  {
    v12 = [[RMSService alloc] initWithData:v11];
    [v10 setService:v12];
    [v10 setAvailable:1];
    v13 = RMSLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_261E98000, v13, OS_LOG_TYPE_DEFAULT, "Found cached data for service: %@", &v15, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained serviceProvider:self serviceDidBecomeAvailable:v12];
  }

  else
  {
    v12 = objc_opt_new();
    [v10 setService:v12];
  }
}

- (void)netServiceBrowser:(id)a3 didRemoveService:(id)a4 moreComing:(BOOL)a5
{
  v9 = [(RMSBonjourServiceProvider *)self _identifierForNetService:a4];
  v6 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:?];
  if ([v6 isAvailable])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [v6 service];
    [WeakRetained serviceProvider:self serviceDidBecomeUnavailable:v8];
  }

  [(NSMutableDictionary *)self->_services removeObjectForKey:v9];
}

- (void)netService:(id)a3 didUpdateTXTRecordData:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(RMSBonjourServiceProvider *)self _identifierForNetService:v6];
  v9 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:v8];
  v10 = RMSLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 name];
    v18 = 138412290;
    v19 = v11;
    _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "Service txt record update: %@", &v18, 0xCu);
  }

  v12 = [v9 state];
  if (v12 == 2)
  {
    v15 = RMSLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_261E98000, v15, OS_LOG_TYPE_DEFAULT, "DNS resolution already complete for this service, updating clients immediately", &v18, 2u);
    }

    v16 = [v9 service];
    [(RMSBonjourServiceProvider *)self _updateService:v16 withNetService:v6 txtData:v7];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained serviceProvider:self serviceDidBecomeAvailable:v16];

    [(RMSBonjourServiceProvider *)self _updateCacheWithService:v16 identifier:v8];
  }

  else if (!v12)
  {
    v13 = RMSLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 name];
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&dword_261E98000, v13, OS_LOG_TYPE_DEFAULT, "Performing DNS resolution for service: %@", &v18, 0xCu);
    }

    [v9 setState:1];
    [v6 resolveWithTimeout:10.0];
  }
}

- (void)_updateCacheWithService:(id)a3 identifier:(id)a4
{
  cache = self->_cache;
  v7 = a4;
  v8 = [a3 data];
  [(NSMutableDictionary *)cache setObject:v8 forKey:v7];

  CFPreferencesSetAppValue(@"BonjourCacheKey", self->_cache, @"com.apple.RemoteMediaServices");

  CFPreferencesAppSynchronize(@"com.apple.RemoteMediaServices");
}

- (void)netServiceDidResolveAddress:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RMSBonjourServiceProvider *)self _identifierForNetService:v4];
  v6 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:v5];
  [v6 setAvailable:1];
  [v6 setState:2];
  v7 = [v6 service];
  v8 = [v4 TXTRecordData];
  [(RMSBonjourServiceProvider *)self _updateService:v7 withNetService:v4 txtData:v8];

  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 name];
    v11 = [v7 displayName];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v15 = 138412802;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "Service [%@] resolved and fully available: %@, source: %@", &v15, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serviceProvider:self serviceDidBecomeAvailable:v7];

  [(RMSBonjourServiceProvider *)self _updateCacheWithService:v7 identifier:v5];
}

- (void)netService:(id)a3 didNotResolve:(id)a4
{
  v4 = a3;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [RMSBonjourServiceProvider netService:v4 didNotResolve:v5];
  }

  [v4 resolveWithTimeout:30.0];
}

- (void)_updateService:(id)a3 withNetService:(id)a4 txtData:(id)a5
{
  v17 = a3;
  v8 = MEMORY[0x277CCAB78];
  v9 = a4;
  v10 = [v8 dictionaryFromTXTRecordData:a5];
  v11 = [v9 name];
  [v17 setNetworkName:v11];

  v12 = [v9 hostName];
  [v17 setHostName:v12];

  v13 = [v9 port];
  [v17 setPort:v13];
  [v17 setServiceType:{-[RMSBonjourServiceProvider serviceTypeFromTXTDictionary:](self, "serviceTypeFromTXTDictionary:", v10)}];
  [v17 setServiceFlags:{-[RMSBonjourServiceProvider serviceFlagsFromTXTDictionary:](self, "serviceFlagsFromTXTDictionary:", v10)}];
  v14 = [(RMSBonjourServiceProvider *)self _valueForTXTRecordKey:@"hG" inTXTDictionary:v10];
  [v17 setHomeSharingGroupKey:v14];
  [v17 setServiceDiscoverySource:{-[RMSBonjourServiceProvider serviceDiscoverySource](self, "serviceDiscoverySource")}];
  v15 = [(RMSBonjourServiceProvider *)self _valueForTXTRecordKey:@"Name" inTXTDictionary:v10];
  if (!v15)
  {
    v15 = [(RMSBonjourServiceProvider *)self _valueForTXTRecordKey:@"Machine Name" inTXTDictionary:v10];
    if (!v15)
    {
      v15 = [(RMSBonjourServiceProvider *)self _valueForTXTRecordKey:@"CtlN" inTXTDictionary:v10];
    }
  }

  v16 = v15;
  [v17 setDisplayName:v15];
}

- (id)_valueForTXTRecordKey:(id)a3 inTXTDictionary:(id)a4
{
  v4 = [a4 objectForKey:a3];
  if ([v4 length])
  {
    v5 = [v4 bytes];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_identifierForNetService:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 type];
  v7 = [v4 domain];

  v8 = [v3 stringWithFormat:@"%@%@%@", v5, v6, v7];

  return v8;
}

- (id)_searchString
{
  v3 = [(RMSBonjourServiceProvider *)self searchType];
  v4 = [(RMSBonjourServiceProvider *)self searchScope];
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, _%@", v3, v4];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (RMSServiceProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)netService:(void *)a1 didNotResolve:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_261E98000, a2, OS_LOG_TYPE_ERROR, "Service did not resolve: %@", &v4, 0xCu);
}

@end