@interface BMRapportDiscoveryManager
- (BMRapportDiscoveryManager)initWithServiceName:(id)name delegate:(id)delegate queue:(id)queue;
- (NSArray)devices;
- (id)deviceWithIdentifier:(id)identifier;
- (id)localDevice;
- (id)newDiscoveryClients;
- (void)ignoreDevice:(id)device;
- (void)invalidate;
- (void)rapportClient:(id)client didDiscoverDevice:(id)device;
- (void)rapportClient:(id)client didLoseDevice:(id)device;
- (void)startWithCompletion:(id)completion;
- (void)stop;
@end

@implementation BMRapportDiscoveryManager

- (BMRapportDiscoveryManager)initWithServiceName:(id)name delegate:(id)delegate queue:(id)queue
{
  nameCopy = name;
  delegateCopy = delegate;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = BMRapportDiscoveryManager;
  v12 = [(BMRapportDiscoveryManager *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceName, name);
    objc_storeStrong(&v13->_queue, queue);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = objc_opt_new();
    devices = v13->_devices;
    v13->_devices = v14;

    v16 = objc_opt_new();
    unsupportedDevices = v13->_unsupportedDevices;
    v13->_unsupportedDevices = v16;
  }

  return v13;
}

- (id)newDiscoveryClients
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_invalidated)
  {
    return 0;
  }

  v4 = [BMRapportClient clientForSameAccountDiscoveryWithServiceName:@"com.apple.biomesyncd.rapport" delegate:self queue:self->_queue];
  v5 = v4;
  if (!v4)
  {
    v5 = +[NSNull null];
  }

  v10[0] = v5;
  v6 = [BMRapportClient clientForSharedHomeDiscoveryWithServiceName:@"com.apple.biomesyncd.rapport" delegate:self queue:self->_queue];
  v7 = v6;
  if (!v6)
  {
    v7 = +[NSNull null];
  }

  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];
  v3 = [v8 _pas_filteredArrayWithTest:&stru_100078DA0];

  if (!v6)
  {
  }

  if (!v4)
  {
  }

  return v3;
}

- (void)rapportClient:(id)client didDiscoverDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_invalidated)
  {
    bm_companionLinkDeviceIdentifier = [deviceCopy bm_companionLinkDeviceIdentifier];
    if (bm_companionLinkDeviceIdentifier)
    {
      model = [deviceCopy model];

      if (model)
      {
        v8 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:bm_companionLinkDeviceIdentifier];
        if (v8)
        {
        }

        else
        {
          v10 = [(NSMutableDictionary *)self->_unsupportedDevices objectForKeyedSubscript:bm_companionLinkDeviceIdentifier];

          if (!v10)
          {
            v11 = [[BMRapportDevice alloc] initWithRPCompanionLinkDevice:deviceCopy];
            serviceTypes = [(BMRapportDevice *)v11 serviceTypes];
            if (serviceTypes && (v13 = serviceTypes, -[BMRapportDevice serviceTypes](v11, "serviceTypes"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 containsObject:self->_serviceName], v14, v13, (v15 & 1) == 0))
            {
              [(NSMutableDictionary *)self->_unsupportedDevices setObject:v11 forKeyedSubscript:bm_companionLinkDeviceIdentifier];
            }

            else
            {
              WeakRetained = objc_loadWeakRetained(&self->_delegate);
              if ([WeakRetained discoveryManager:self supportsDevice:v11])
              {
                [(NSMutableDictionary *)self->_devices setObject:v11 forKeyedSubscript:bm_companionLinkDeviceIdentifier];
                v17 = __biome_log_for_category();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                {
                  shortenedRapportIdentifier = [(BMRapportDevice *)v11 shortenedRapportIdentifier];
                  v19 = 138412290;
                  v20 = shortenedRapportIdentifier;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "BMRappportDiscoveryManager: discovered device %@", &v19, 0xCu);
                }

                [WeakRetained discoveryManager:self didDiscoverDevice:v11];
              }

              else
              {
                [(NSMutableDictionary *)self->_unsupportedDevices setObject:v11 forKeyedSubscript:bm_companionLinkDeviceIdentifier];
              }
            }
          }
        }

        goto LABEL_11;
      }

      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100047F90(deviceCopy, v9);
      }
    }

    else
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100048008(deviceCopy, v9);
      }
    }

LABEL_11:
  }
}

- (void)rapportClient:(id)client didLoseDevice:(id)device
{
  clientCopy = client;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_invalidated)
  {
    bm_companionLinkDeviceIdentifier = [deviceCopy bm_companionLinkDeviceIdentifier];
    v9 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:bm_companionLinkDeviceIdentifier];
    if (v9)
    {
    }

    else
    {
      v10 = [(NSMutableDictionary *)self->_unsupportedDevices objectForKeyedSubscript:bm_companionLinkDeviceIdentifier];

      if (!v10)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = self->_discoveryClients;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          if (v16 != clientCopy)
          {
            activeDevices = [v16 activeDevices];
            v18 = [activeDevices containsObject:deviceCopy];

            if (v18)
            {
              WeakRetained = __biome_log_for_category();
              if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v27 = deviceCopy;
                _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_INFO, "BMRappportDiscoveryManager: already discovered by other connection to rapport %@", buf, 0xCu);
              }

              goto LABEL_20;
            }
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v11 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:bm_companionLinkDeviceIdentifier];
    [(NSMutableDictionary *)self->_devices setObject:0 forKeyedSubscript:bm_companionLinkDeviceIdentifier];
    [(NSMutableDictionary *)self->_unsupportedDevices setObject:0 forKeyedSubscript:bm_companionLinkDeviceIdentifier];
    if (v11)
    {
      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        shortenedRapportIdentifier = [(NSArray *)v11 shortenedRapportIdentifier];
        *buf = 138412290;
        v27 = shortenedRapportIdentifier;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "BMRappportDiscoveryManager: lost device %@", buf, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained discoveryManager:self didLoseDevice:v11];
LABEL_20:
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (void)ignoreDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  if (deviceCopy)
  {
    if (!self->_invalidated)
    {
      unsupportedDevices = self->_unsupportedDevices;
      rapportIdentifier = [deviceCopy rapportIdentifier];
      v7 = [(NSMutableDictionary *)unsupportedDevices objectForKeyedSubscript:rapportIdentifier];

      if (!v7)
      {
        devices = self->_devices;
        rapportIdentifier2 = [deviceCopy rapportIdentifier];
        v10 = [(NSMutableDictionary *)devices objectForKeyedSubscript:rapportIdentifier2];

        if (v10)
        {
          v11 = __biome_log_for_category();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            shortenedRapportIdentifier = [deviceCopy shortenedRapportIdentifier];
            v18 = 138412290;
            v19 = shortenedRapportIdentifier;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "BMRappportDiscoveryManager: ignore device %@", &v18, 0xCu);
          }

          v13 = self->_devices;
          rapportIdentifier3 = [deviceCopy rapportIdentifier];
          [(NSMutableDictionary *)v13 setObject:0 forKeyedSubscript:rapportIdentifier3];

          v15 = self->_unsupportedDevices;
          rapportIdentifier4 = [deviceCopy rapportIdentifier];
          [(NSMutableDictionary *)v15 setObject:deviceCopy forKeyedSubscript:rapportIdentifier4];

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained discoveryManager:self didLoseDevice:deviceCopy];
        }
      }
    }
  }
}

- (NSArray)devices
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_invalidated)
  {
    allValues = 0;
  }

  else
  {
    allValues = [(NSMutableDictionary *)self->_devices allValues];
  }

  return allValues;
}

- (id)deviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_invalidated)
  {
    v5 = 0;
  }

  else
  {
    firstObject = [(NSArray *)self->_discoveryClients firstObject];
    localDevice = [firstObject localDevice];
    bm_companionLinkDeviceIdentifier = [localDevice bm_companionLinkDeviceIdentifier];
    v9 = [bm_companionLinkDeviceIdentifier isEqual:identifierCopy];

    if (v9)
    {
      [(BMRapportDiscoveryManager *)self localDevice];
    }

    else
    {
      [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifierCopy];
    }
    v5 = ;
  }

  return v5;
}

- (id)localDevice
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_invalidated)
  {
    v3 = 0;
  }

  else
  {
    v4 = [BMRapportDevice alloc];
    firstObject = [(NSArray *)self->_discoveryClients firstObject];
    localDevice = [firstObject localDevice];
    v3 = [(BMRapportDevice *)v4 initWithRPCompanionLinkDevice:localDevice];
  }

  return v3;
}

- (void)startWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_invalidated)
  {
    v32 = NSLocalizedDescriptionKey;
    v33 = @"BMRappportDiscoveryManager has been invalidated";
    v5 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v6 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:4 userInfo:v5];
    completionCopy[2](completionCopy, v6);
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "BMRappportDiscoveryManager: start", buf, 2u);
    }

    v5 = objc_opt_new();
    v6 = dispatch_group_create();
    discoveryClients = self->_discoveryClients;
    if (!discoveryClients)
    {
      newDiscoveryClients = [(BMRapportDiscoveryManager *)self newDiscoveryClients];
      v10 = self->_discoveryClients;
      self->_discoveryClients = newDiscoveryClients;

      discoveryClients = self->_discoveryClients;
    }

    selfCopy = self;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = discoveryClients;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          dispatch_group_enter(v6);
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10000E680;
          v23[3] = &unk_100078DC8;
          v24 = v5;
          v25 = v6;
          [v16 activateWithCompletion:v23];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v13);
    }

    if (completionCopy)
    {
      queue = selfCopy->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000E6C4;
      block[3] = &unk_100078DF0;
      v5 = v5;
      v20 = v5;
      v21 = selfCopy;
      v22 = completionCopy;
      dispatch_group_notify(v6, queue, block);
    }
  }
}

- (void)stop
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_invalidated)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BMRappportDiscoveryManager: stop", buf, 2u);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_discoveryClients;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8) invalidate];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }

    discoveryClients = self->_discoveryClients;
    self->_discoveryClients = 0;
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_invalidated)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BMRappportDiscoveryManager: invalidate", buf, 2u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_discoveryClients;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v12 + 1) + 8 * v8) invalidate];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v6);
    }

    discoveryClients = self->_discoveryClients;
    self->_discoveryClients = 0;

    unsupportedDevices = self->_unsupportedDevices;
    self->_unsupportedDevices = 0;

    devices = self->_devices;
    self->_devices = 0;
  }
}

@end