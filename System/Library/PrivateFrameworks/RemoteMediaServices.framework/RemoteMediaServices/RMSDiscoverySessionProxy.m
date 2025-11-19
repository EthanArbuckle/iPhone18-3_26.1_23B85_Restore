@interface RMSDiscoverySessionProxy
- (RMSDiscoverySessionDelegate)delegate;
- (RMSDiscoverySessionProxy)init;
- (void)_availableServicesDidUpdateNotification:(id)a3;
- (void)_handleSessionDidEndNotification:(id)a3;
- (void)_updateNetworkAvailability;
- (void)_wifiAvailabilityDidChange:(id)a3;
- (void)beginDiscovery;
- (void)dealloc;
- (void)endDiscovery;
- (void)setPairedNetworkNames:(id)a3;
@end

@implementation RMSDiscoverySessionProxy

- (RMSDiscoverySessionProxy)init
{
  v7.receiver = self;
  v7.super_class = RMSDiscoverySessionProxy;
  v2 = [(RMSSessionProxy *)&v7 initWithTimeout:*&RMSDiscoverySessionTimeout];
  if (v2)
  {
    v3 = +[RMSIDSClient sharedClient];
    idsClient = v2->_idsClient;
    v2->_idsClient = v3;

    v2->_wifiAvailable = 1;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__availableServicesDidUpdateNotification_ name:@"RMSIDSClientAvailableServicesDidUpdateNotification" object:0];
    [v5 addObserver:v2 selector:sel__handleSessionDidEndNotification_ name:@"RMSIDSClientSessionDidEndNotification" object:0];
    [v5 addObserver:v2 selector:sel__companionAvailabilityDidChange_ name:@"RMSIDSClientCompanionAvailabilityDidChangeNotification" object:0];
    [v5 addObserver:v2 selector:sel__wifiAvailabilityDidChange_ name:@"RMSIDSClientWifiAvailabilityDidChangeNotification" object:0];
    [(RMSDiscoverySessionProxy *)v2 _updateNetworkAvailability];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RMSDiscoverySessionProxy;
  [(RMSSessionProxy *)&v4 dealloc];
}

- (void)beginDiscovery
{
  if (!self->_discovering)
  {
    self->_discovering = 1;
    objc_initWeak(&location, self);
    idsClient = self->_idsClient;
    discoveryTypes_low = LODWORD(self->_discoveryTypes);
    pairedNetworkNames = self->_pairedNetworkNames;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__RMSDiscoverySessionProxy_beginDiscovery__block_invoke;
    v6[3] = &unk_279B088C0;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    [(RMSIDSClient *)idsClient beginDiscoverySessionWithDiscoveryTypes:discoveryTypes_low pairedNetworkNames:pairedNetworkNames completionHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __42__RMSDiscoverySessionProxy_beginDiscovery__block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = RMSLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "Begin discovery success, session established", buf, 2u);
      }

      [v7 setSessionIdentifier:a3];
      [v7 beginHeartbeat];
      *(v7 + 6) = 0;
    }

    else
    {
      v9 = WeakRetained[10];
      WeakRetained[10] = 0;

      *(v7 + 56) = 0;
      v10 = *(v7 + 6);
      if (v10 >= 7)
      {
        v10 = 7;
      }

      *(v7 + 6) = v10 + 1;
      v11 = objc_loadWeakRetained(v7 + 8);
      [v11 discoverySessionDidUpdateAvailableServices:*(a1 + 32)];

      v12 = dispatch_time(0, 1000000000 * *(v7 + 6));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__RMSDiscoverySessionProxy_beginDiscovery__block_invoke_12;
      block[3] = &unk_279B08898;
      objc_copyWeak(&v14, (a1 + 40));
      dispatch_after(v12, MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v14);
    }
  }
}

void __42__RMSDiscoverySessionProxy_beginDiscovery__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained beginDiscovery];
}

- (void)setPairedNetworkNames:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_pairedNetworkNames, a3);
  if ([(RMSSessionProxy *)self sessionIdentifier])
  {
    [(RMSIDSClient *)self->_idsClient updatePairedNetworkNames:self->_pairedNetworkNames sessionIdentifier:[(RMSSessionProxy *)self sessionIdentifier]];
  }
}

- (void)endDiscovery
{
  v3 = RMSLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_261E98000, v3, OS_LOG_TYPE_DEFAULT, "end discovery invoked", v5, 2u);
  }

  if ([(RMSSessionProxy *)self sessionIdentifier])
  {
    [(RMSIDSClient *)self->_idsClient endDiscoverySession:[(RMSSessionProxy *)self sessionIdentifier]];
    [(RMSSessionProxy *)self setSessionIdentifier:0];
  }

  availableServices = self->_availableServices;
  self->_availableServices = 0;

  self->_discovering = 0;
  [(RMSSessionProxy *)self endHeartbeat];
}

- (void)_availableServicesDidUpdateNotification:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(RMSSessionProxy *)self sessionMatchesNotification:v4])
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"RMSIDSClientAvailableServicesNotificationKey"];
    availableServices = self->_availableServices;
    self->_availableServices = v6;

    v8 = RMSLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_availableServices;
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_261E98000, v8, OS_LOG_TYPE_DEFAULT, "Discovery proxy handling available services update: %@", &v11, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained discoverySessionDidUpdateAvailableServices:self];
  }
}

- (void)_handleSessionDidEndNotification:(id)a3
{
  if ([(RMSSessionProxy *)self sessionMatchesNotification:a3])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__RMSDiscoverySessionProxy__handleSessionDidEndNotification___block_invoke;
    block[3] = &unk_279B088E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __61__RMSDiscoverySessionProxy__handleSessionDidEndNotification___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) endHeartbeat];
  v3 = *(a1 + 32);
  if (*(v3 + 56) == 1)
  {
    *(v3 + 56) = 0;
    v4 = *(a1 + 32);

    return [v4 beginDiscovery];
  }

  return result;
}

- (void)_wifiAvailabilityDidChange:(id)a3
{
  v6 = a3;
  if ([(RMSSessionProxy *)self sessionMatchesNotification:?])
  {
    v4 = [v6 userInfo];
    v5 = [v4 objectForKey:@"RMSIDSClientWifiAvailabilityNotificationKey"];
    self->_wifiAvailable = [v5 BOOLValue];

    [(RMSDiscoverySessionProxy *)self _updateNetworkAvailability];
  }
}

- (void)_updateNetworkAvailability
{
  if ([(RMSIDSClient *)self->_idsClient isCompanionAvailable])
  {
    wifiAvailable = self->_wifiAvailable;
  }

  else
  {
    wifiAvailable = 0;
  }

  v4 = wifiAvailable;
  if (self->_networkAvailable != v4)
  {
    self->_networkAvailable = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 discoverySessionNetworkAvailabilityDidChange:self];
    }
  }
}

- (RMSDiscoverySessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end