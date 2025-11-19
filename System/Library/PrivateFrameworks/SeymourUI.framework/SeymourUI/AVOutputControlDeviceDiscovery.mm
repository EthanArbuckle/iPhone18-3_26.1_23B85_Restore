@interface AVOutputControlDeviceDiscovery
- (AVOutputControlDeviceDiscovery)init;
- (BOOL)supportsFitnessDataDestinationForDeviceIdentifier:(id)a3;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
@end

@implementation AVOutputControlDeviceDiscovery

- (AVOutputControlDeviceDiscovery)init
{
  v6.receiver = self;
  v6.super_class = AVOutputControlDeviceDiscovery;
  v2 = [(AVOutputControlDeviceDiscovery *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CB86B0]) initWithDeviceFeatures:8];
    session = v2->_session;
    v2->_session = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(AVOutputControlDeviceDiscovery *)self deactivate];
  v3.receiver = self;
  v3.super_class = AVOutputControlDeviceDiscovery;
  [(AVOutputControlDeviceDiscovery *)&v3 dealloc];
}

- (BOOL)supportsFitnessDataDestinationForDeviceIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(AVOutputControlDeviceDiscovery *)self session];
  v6 = [v5 availableOutputDevices];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 deviceID];
        if ([v13 isEqualToString:v4])
        {
          v14 = [v12 supportsFitnessDataDestination];

          v9 |= v14;
        }

        else
        {
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)activate
{
  v2 = [(AVOutputControlDeviceDiscovery *)self session];
  [v2 setDiscoveryMode:2];
}

- (void)deactivate
{
  v2 = [(AVOutputControlDeviceDiscovery *)self session];
  [v2 setDiscoveryMode:0];
}

@end