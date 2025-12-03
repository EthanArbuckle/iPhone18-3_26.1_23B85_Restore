@interface AVOutputControlDeviceDiscovery
- (AVOutputControlDeviceDiscovery)init;
- (BOOL)supportsFitnessDataDestinationForDeviceIdentifier:(id)identifier;
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

- (BOOL)supportsFitnessDataDestinationForDeviceIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  session = [(AVOutputControlDeviceDiscovery *)self session];
  availableOutputDevices = [session availableOutputDevices];

  v7 = [availableOutputDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(availableOutputDevices);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        deviceID = [v12 deviceID];
        if ([deviceID isEqualToString:identifierCopy])
        {
          supportsFitnessDataDestination = [v12 supportsFitnessDataDestination];

          v9 |= supportsFitnessDataDestination;
        }

        else
        {
        }
      }

      v8 = [availableOutputDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  session = [(AVOutputControlDeviceDiscovery *)self session];
  [session setDiscoveryMode:2];
}

- (void)deactivate
{
  session = [(AVOutputControlDeviceDiscovery *)self session];
  [session setDiscoveryMode:0];
}

@end