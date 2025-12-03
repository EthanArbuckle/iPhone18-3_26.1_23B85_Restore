@interface RMSPairingServiceProvider
- (RMSPairingServiceProvider)init;
- (void)dealloc;
- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming;
- (void)setPairedNetworkNames:(id)names;
@end

@implementation RMSPairingServiceProvider

- (RMSPairingServiceProvider)init
{
  v6.receiver = self;
  v6.super_class = RMSPairingServiceProvider;
  v2 = [(RMSBonjourServiceProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    unmonitoredServices = v2->_unmonitoredServices;
    v2->_unmonitoredServices = v3;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = RMSPairingServiceProvider;
  [(RMSBonjourServiceProvider *)&v4 dealloc];
}

- (void)setPairedNetworkNames:(id)names
{
  v19 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  objc_storeStrong(&self->_pairedNetworkNames, names);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_pairedNetworkNames;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_unmonitoredServices objectForKeyedSubscript:v11, v14];
        if (v12)
        {
          [(NSMutableDictionary *)self->_unmonitoredServices removeObjectForKey:v11];
          netServiceBrowser = [(RMSBonjourServiceProvider *)self netServiceBrowser];
          [(RMSPairingServiceProvider *)self netServiceBrowser:netServiceBrowser didFindService:v12 moreComing:1];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)netServiceBrowser:(id)browser didFindService:(id)service moreComing:(BOOL)coming
{
  comingCopy = coming;
  v16 = *MEMORY[0x277D85DE8];
  browserCopy = browser;
  serviceCopy = service;
  name = [serviceCopy name];
  pairedNetworkNames = self->_pairedNetworkNames;
  if (pairedNetworkNames && ![(NSArray *)pairedNetworkNames containsObject:name])
  {
    v12 = RMSLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = name;
      _os_log_impl(&dword_261E98000, v12, OS_LOG_TYPE_DEFAULT, "Discovered a paired service with network name [%@] that doesn't have a matching pairing record, disregarding", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_unmonitoredServices setObject:serviceCopy forKeyedSubscript:name];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = RMSPairingServiceProvider;
    [(RMSBonjourServiceProvider *)&v13 netServiceBrowser:browserCopy didFindService:serviceCopy moreComing:comingCopy];
  }
}

@end