@interface RMSBonjourServiceProvider
- (RMSBonjourServiceProvider)init;
- (RMSServiceProviderDelegate)delegate;
- (id)_identifierForNetService:(id)service;
- (id)_searchString;
- (id)_valueForTXTRecordKey:(id)key inTXTDictionary:(id)dictionary;
- (int64_t)serviceTypeFromTXTDictionary:(id)dictionary;
- (void)_updateCacheWithService:(id)service identifier:(id)identifier;
- (void)_updateService:(id)service withNetService:(id)netService txtData:(id)data;
- (void)beginDiscovery;
- (void)dealloc;
- (void)netService:(id)service didNotResolve:(id)resolve;
- (void)netService:(id)service didUpdateTXTRecordData:(id)data;
- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming;
- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming;
- (void)netServiceDidResolveAddress:(id)address;
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
  _searchString = [(RMSBonjourServiceProvider *)self _searchString];
  v4 = RMSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = _searchString;
    _os_log_impl(&dword_261E98000, v4, OS_LOG_TYPE_DEFAULT, "Searching for services of type: %@", &v7, 0xCu);
  }

  netServiceBrowser = self->_netServiceBrowser;
  searchDomain = [(RMSBonjourServiceProvider *)self searchDomain];
  [(NSNetServiceBrowser *)netServiceBrowser searchForServicesOfType:_searchString inDomain:searchDomain];
}

- (int64_t)serviceTypeFromTXTDictionary:(id)dictionary
{
  v3 = [(RMSBonjourServiceProvider *)self _valueForTXTRecordKey:@"DvTy" inTXTDictionary:dictionary];
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

- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming
{
  v17 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v7 = RMSLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [serviceCopy name];
    v15 = 138412290;
    v16 = name;
    _os_log_impl(&dword_261E98000, v7, OS_LOG_TYPE_DEFAULT, "Net service browser did find service: %@", &v15, 0xCu);
  }

  v9 = [(RMSBonjourServiceProvider *)self _identifierForNetService:serviceCopy];
  [serviceCopy setDelegate:self];
  [serviceCopy startMonitoring];
  v10 = objc_opt_new();
  [v10 setState:0];
  [v10 setNetService:serviceCopy];
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

- (void)netServiceBrowser:(id)browser didRemoveService:(id)service moreComing:(BOOL)coming
{
  v9 = [(RMSBonjourServiceProvider *)self _identifierForNetService:service];
  v6 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:?];
  if ([v6 isAvailable])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    service = [v6 service];
    [WeakRetained serviceProvider:self serviceDidBecomeUnavailable:service];
  }

  [(NSMutableDictionary *)self->_services removeObjectForKey:v9];
}

- (void)netService:(id)service didUpdateTXTRecordData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dataCopy = data;
  v8 = [(RMSBonjourServiceProvider *)self _identifierForNetService:serviceCopy];
  v9 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:v8];
  v10 = RMSLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name = [serviceCopy name];
    v18 = 138412290;
    v19 = name;
    _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "Service txt record update: %@", &v18, 0xCu);
  }

  state = [v9 state];
  if (state == 2)
  {
    v15 = RMSLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_261E98000, v15, OS_LOG_TYPE_DEFAULT, "DNS resolution already complete for this service, updating clients immediately", &v18, 2u);
    }

    service = [v9 service];
    [(RMSBonjourServiceProvider *)self _updateService:service withNetService:serviceCopy txtData:dataCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained serviceProvider:self serviceDidBecomeAvailable:service];

    [(RMSBonjourServiceProvider *)self _updateCacheWithService:service identifier:v8];
  }

  else if (!state)
  {
    v13 = RMSLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [serviceCopy name];
      v18 = 138412290;
      v19 = name2;
      _os_log_impl(&dword_261E98000, v13, OS_LOG_TYPE_DEFAULT, "Performing DNS resolution for service: %@", &v18, 0xCu);
    }

    [v9 setState:1];
    [serviceCopy resolveWithTimeout:10.0];
  }
}

- (void)_updateCacheWithService:(id)service identifier:(id)identifier
{
  cache = self->_cache;
  identifierCopy = identifier;
  data = [service data];
  [(NSMutableDictionary *)cache setObject:data forKey:identifierCopy];

  CFPreferencesSetAppValue(@"BonjourCacheKey", self->_cache, @"com.apple.RemoteMediaServices");

  CFPreferencesAppSynchronize(@"com.apple.RemoteMediaServices");
}

- (void)netServiceDidResolveAddress:(id)address
{
  v21 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v5 = [(RMSBonjourServiceProvider *)self _identifierForNetService:addressCopy];
  v6 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:v5];
  [v6 setAvailable:1];
  [v6 setState:2];
  service = [v6 service];
  tXTRecordData = [addressCopy TXTRecordData];
  [(RMSBonjourServiceProvider *)self _updateService:service withNetService:addressCopy txtData:tXTRecordData];

  v9 = RMSLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    name = [addressCopy name];
    displayName = [service displayName];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v15 = 138412802;
    v16 = name;
    v17 = 2112;
    v18 = displayName;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_261E98000, v9, OS_LOG_TYPE_DEFAULT, "Service [%@] resolved and fully available: %@, source: %@", &v15, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serviceProvider:self serviceDidBecomeAvailable:service];

  [(RMSBonjourServiceProvider *)self _updateCacheWithService:service identifier:v5];
}

- (void)netService:(id)service didNotResolve:(id)resolve
{
  serviceCopy = service;
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [RMSBonjourServiceProvider netService:serviceCopy didNotResolve:v5];
  }

  [serviceCopy resolveWithTimeout:30.0];
}

- (void)_updateService:(id)service withNetService:(id)netService txtData:(id)data
{
  serviceCopy = service;
  v8 = MEMORY[0x277CCAB78];
  netServiceCopy = netService;
  v10 = [v8 dictionaryFromTXTRecordData:data];
  name = [netServiceCopy name];
  [serviceCopy setNetworkName:name];

  hostName = [netServiceCopy hostName];
  [serviceCopy setHostName:hostName];

  port = [netServiceCopy port];
  [serviceCopy setPort:port];
  [serviceCopy setServiceType:{-[RMSBonjourServiceProvider serviceTypeFromTXTDictionary:](self, "serviceTypeFromTXTDictionary:", v10)}];
  [serviceCopy setServiceFlags:{-[RMSBonjourServiceProvider serviceFlagsFromTXTDictionary:](self, "serviceFlagsFromTXTDictionary:", v10)}];
  v14 = [(RMSBonjourServiceProvider *)self _valueForTXTRecordKey:@"hG" inTXTDictionary:v10];
  [serviceCopy setHomeSharingGroupKey:v14];
  [serviceCopy setServiceDiscoverySource:{-[RMSBonjourServiceProvider serviceDiscoverySource](self, "serviceDiscoverySource")}];
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
  [serviceCopy setDisplayName:v15];
}

- (id)_valueForTXTRecordKey:(id)key inTXTDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:key];
  if ([v4 length])
  {
    bytes = [v4 bytes];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:bytes];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_identifierForNetService:(id)service
{
  v3 = MEMORY[0x277CCACA8];
  serviceCopy = service;
  name = [serviceCopy name];
  type = [serviceCopy type];
  domain = [serviceCopy domain];

  v8 = [v3 stringWithFormat:@"%@%@%@", name, type, domain];

  return v8;
}

- (id)_searchString
{
  searchType = [(RMSBonjourServiceProvider *)self searchType];
  searchScope = [(RMSBonjourServiceProvider *)self searchScope];
  if (searchScope)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, _%@", searchType, searchScope];
  }

  else
  {
    v5 = searchType;
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