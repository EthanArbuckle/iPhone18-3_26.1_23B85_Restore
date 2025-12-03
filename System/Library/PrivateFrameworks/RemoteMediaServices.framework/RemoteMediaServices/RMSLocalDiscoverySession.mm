@interface RMSLocalDiscoverySession
- (RMSDiscoverySessionDelegate)delegate;
- (RMSLocalDiscoverySession)init;
- (id)_providerForDiscoveryType:(int64_t)type;
- (void)_enableProviders;
- (void)_handleHSGroupIDDidChangeNotification:(id)notification;
- (void)_updateWifiAvailability;
- (void)beginDiscovery;
- (void)dealloc;
- (void)endDiscovery;
- (void)serviceProvider:(id)provider serviceDidBecomeAvailable:(id)available;
- (void)serviceProvider:(id)provider serviceDidBecomeUnavailable:(id)unavailable;
- (void)setPairedNetworkNames:(id)names;
@end

@implementation RMSLocalDiscoverySession

- (RMSLocalDiscoverySession)init
{
  v9.receiver = self;
  v9.super_class = RMSLocalDiscoverySession;
  v2 = [(RMSLocalDiscoverySession *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    availableServices = v2->_availableServices;
    v2->_availableServices = v3;

    v5 = +[Reachability reachabilityForLocalWiFi];
    reachability = v2->_reachability;
    v2->_reachability = v5;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleHSGroupIDDidChangeNotification_ name:*MEMORY[0x277D18000] object:0];
    if (v2->_reachability)
    {
      [defaultCenter addObserver:v2 selector:sel__handleReachabilityChangedNotification_ name:kReachabilityChangedNotification object:0];
    }
  }

  return v2;
}

- (void)dealloc
{
  [(RMSLocalDiscoverySession *)self endDiscovery];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = RMSLocalDiscoverySession;
  [(RMSLocalDiscoverySession *)&v4 dealloc];
}

- (void)beginDiscovery
{
  v13 = *MEMORY[0x277D85DE8];
  [(RMSLocalDiscoverySession *)self endDiscovery];
  [(RMSLocalDiscoverySession *)self _enableProviders];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_providers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) beginDiscovery];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(Reachability *)self->_reachability startNotifier];
  [(RMSLocalDiscoverySession *)self _updateWifiAvailability];
}

- (void)endDiscovery
{
  v13 = *MEMORY[0x277D85DE8];
  [(Reachability *)self->_reachability stopNotifier];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_providers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) endDiscovery];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_availableServices removeAllObjects];
}

- (void)setPairedNetworkNames:(id)names
{
  v17 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  if (namesCopy)
  {
    v5 = namesCopy;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong(&self->_pairedNetworkNames, v5);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_providers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 setPairedNetworkNames:{self->_pairedNetworkNames, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)serviceProvider:(id)provider serviceDidBecomeAvailable:(id)available
{
  v13 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  availableCopy = available;
  v8 = availableCopy;
  if ((self->_discoveryTypes & 8) != 0 && [availableCopy serviceType] == 2 && (objc_msgSend(v8, "isLegacyAppleTV") & 1) == 0 && (objc_msgSend(v8, "isTVRemoteCoreSupported") & 1) == 0)
  {
    v10 = RMSLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_261E98000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring legacy Apple TV service: %@", &v11, 0xCu);
    }
  }

  else
  {
    [(NSMutableSet *)self->_availableServices addObject:v8];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained discoverySessionDidUpdateAvailableServices:self];
  }
}

- (void)serviceProvider:(id)provider serviceDidBecomeUnavailable:(id)unavailable
{
  [(NSMutableSet *)self->_availableServices removeObject:unavailable];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained discoverySessionDidUpdateAvailableServices:self];
}

- (void)_enableProviders
{
  v3 = objc_opt_new();
  discoveryTypes = self->_discoveryTypes;
  if (discoveryTypes >= 1)
  {
    for (i = 1; i <= discoveryTypes; i *= 2)
    {
      if ((discoveryTypes & i) != 0)
      {
        v6 = [(RMSLocalDiscoverySession *)self _providerForDiscoveryType:i];
        v7 = v6;
        if (v6)
        {
          [v6 setDelegate:self];
          [(NSArray *)v3 addObject:v7];
        }

        discoveryTypes = self->_discoveryTypes;
      }
    }
  }

  providers = self->_providers;
  self->_providers = v3;
}

- (id)_providerForDiscoveryType:(int64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = RMSLogger();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (type <= 3)
  {
    if (type == 1)
    {
      if (v6)
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Enabling home-sharing discovery provider", &v10, 2u);
      }

      goto LABEL_17;
    }

    if (type == 2)
    {
      if (v6)
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Enabling appleTV discovery provider", &v10, 2u);
      }

LABEL_17:

      v7 = objc_opt_new();
LABEL_18:
      v8 = v7;
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (type != 4)
  {
    if (type == 8)
    {
      if (v6)
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Enabling TVRemoteCore discovery provider", &v10, 2u);
      }

      v7 = objc_alloc_init(RMSTVRemoteCoreServiceProvider);
      goto LABEL_18;
    }

LABEL_12:
    if (v6)
    {
      v10 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Discovery controller attempted to enable unknown provider type: %zd", &v10, 0xCu);
    }

    v8 = 0;
    goto LABEL_22;
  }

  if (v6)
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Enabling pairing discovery provider", &v10, 2u);
  }

  v8 = objc_opt_new();
  [v8 setPairedNetworkNames:self->_pairedNetworkNames];
LABEL_22:

  return v8;
}

- (void)_handleHSGroupIDDidChangeNotification:(id)notification
{
  v4 = RMSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_261E98000, v4, OS_LOG_TYPE_DEFAULT, "Home sharing ID changed, restarting discovery", v5, 2u);
  }

  [(RMSLocalDiscoverySession *)self endDiscovery];
  [(RMSLocalDiscoverySession *)self beginDiscovery];
}

- (void)_updateWifiAvailability
{
  v3 = [(Reachability *)self->_reachability currentReachabilityStatus]!= 0;
  if (self->_networkAvailable != v3)
  {
    self->_networkAvailable = v3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 discoverySessionNetworkAvailabilityDidChange:self];
    }
  }
}

- (RMSDiscoverySessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end