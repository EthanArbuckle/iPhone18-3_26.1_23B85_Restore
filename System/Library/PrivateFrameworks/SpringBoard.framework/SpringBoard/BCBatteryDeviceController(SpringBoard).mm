@interface BCBatteryDeviceController(SpringBoard)
- (id)sb_deviceInternalBattery;
- (uint64_t)sb_isConnectedToWirelessCharger;
@end

@implementation BCBatteryDeviceController(SpringBoard)

- (id)sb_deviceInternalBattery
{
  v12 = *MEMORY[0x277D85DE8];
  [self connectedDevices];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = v10 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if ([v5 isInternal])
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (uint64_t)sb_isConnectedToWirelessCharger
{
  v11 = *MEMORY[0x277D85DE8];
  [self connectedDevices];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = v9 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) isWirelesslyCharging])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

@end