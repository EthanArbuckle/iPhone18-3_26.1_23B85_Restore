@interface RMSTVRemoteCoreServiceProvider
+ (id)_serviceWithDevice:(id)device;
- (RMSServiceProviderDelegate)delegate;
- (RMSTVRemoteCoreServiceProvider)init;
- (void)_didDiscoverDevice:(id)device;
- (void)_didRemoveDevice:(id)device;
- (void)beginDiscovery;
- (void)deviceQueryDidUpdateDevices:(id)devices;
@end

@implementation RMSTVRemoteCoreServiceProvider

- (RMSTVRemoteCoreServiceProvider)init
{
  v6.receiver = self;
  v6.super_class = RMSTVRemoteCoreServiceProvider;
  v2 = [(RMSTVRemoteCoreServiceProvider *)&v6 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    services = v2->_services;
    v2->_services = strongToStrongObjectsMapTable;
  }

  return v2;
}

- (void)beginDiscovery
{
  deviceQuery = self->_deviceQuery;
  if (!deviceQuery)
  {
    v4 = objc_alloc_init(MEMORY[0x277D6C4E0]);
    v5 = self->_deviceQuery;
    self->_deviceQuery = v4;

    [(TVRCDeviceQuery *)self->_deviceQuery setDelegate:self];
    deviceQuery = self->_deviceQuery;
  }

  [(TVRCDeviceQuery *)deviceQuery start];
}

- (void)deviceQueryDidUpdateDevices:(id)devices
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = self->_devices;
  devices = [(TVRCDeviceQuery *)self->_deviceQuery devices];
  v6 = [(NSSet *)v4 mutableCopy];
  [v6 minusSet:devices];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(RMSTVRemoteCoreServiceProvider *)self _didRemoveDevice:*(*(&v23 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v12 = [(NSSet *)devices mutableCopy];
  [v12 minusSet:v4];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(RMSTVRemoteCoreServiceProvider *)self _didDiscoverDevice:*(*(&v19 + 1) + 8 * v17++), v19];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  devices = self->_devices;
  self->_devices = devices;
}

- (void)_didDiscoverDevice:(id)device
{
  deviceCopy = device;
  v8 = [objc_opt_class() _serviceWithDevice:deviceCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serviceProvider:self serviceDidBecomeAvailable:v8];

  services = self->_services;
  uniqueIdentifier = [v8 uniqueIdentifier];
  [(NSMapTable *)services setObject:v8 forKey:uniqueIdentifier];
}

- (void)_didRemoveDevice:(id)device
{
  deviceCopy = device;
  v8 = [objc_opt_class() _serviceWithDevice:deviceCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serviceProvider:self serviceDidBecomeUnavailable:v8];

  services = self->_services;
  uniqueIdentifier = [v8 uniqueIdentifier];
  [(NSMapTable *)services removeObjectForKey:uniqueIdentifier];
}

+ (id)_serviceWithDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_alloc_init(RMSService);
  [(RMSService *)v4 setServiceType:2];
  [(RMSService *)v4 setServiceFlags:2];
  identifier = [deviceCopy identifier];
  [(RMSService *)v4 setUniqueIdentifier:identifier];

  name = [deviceCopy name];
  [(RMSService *)v4 setDisplayName:name];

  uniqueIdentifier = [(RMSService *)v4 uniqueIdentifier];
  [(RMSService *)v4 setNetworkName:uniqueIdentifier];

  uniqueIdentifier2 = [(RMSService *)v4 uniqueIdentifier];
  [(RMSService *)v4 setHomeSharingGroupKey:uniqueIdentifier2];

  if (_os_feature_enabled_impl())
  {
    [(RMSService *)v4 setDevice:deviceCopy];
  }

  return v4;
}

- (RMSServiceProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end