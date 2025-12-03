@interface PowerUIBluetoothHandler
- (BOOL)isDeviceConnected:(BTDeviceImpl *)connected forSession:(BTSessionImpl *)session;
- (BTDeviceImpl)getDeviceForAddressString:(id)string forSession:(BTSessionImpl *)session;
- (PowerUIBluetoothHandler)init;
- (id)getAddressStringForDevice:(BTDeviceImpl *)device;
- (unsigned)productIDForDevice:(BTDeviceImpl *)device;
- (unsigned)protocolForDevice:(BTDeviceImpl *)device;
@end

@implementation PowerUIBluetoothHandler

- (PowerUIBluetoothHandler)init
{
  v3.receiver = self;
  v3.super_class = PowerUIBluetoothHandler;
  return [(PowerUIBluetoothHandler *)&v3 init];
}

- (id)getAddressStringForDevice:(BTDeviceImpl *)device
{
  v7 = *MEMORY[0x277D85DE8];
  BTDeviceGetAddressString();
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v6];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BTDeviceImpl)getDeviceForAddressString:(id)string forSession:(BTSessionImpl *)session
{
  result = string;
  if (string)
  {
    [string UTF8String];
    if (BTDeviceAddressFromString() || BTDeviceFromAddress())
    {
      return 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)isDeviceConnected:(BTDeviceImpl *)connected forSession:(BTSessionImpl *)session
{
  BTAccessoryManagerGetDefault();
  BTDeviceGetConnectedServices();
  return 0;
}

- (unsigned)protocolForDevice:(BTDeviceImpl *)device
{
  v13 = 0;
  v5 = [(PowerUIBluetoothHandler *)self isAppleAudioDeviceWrapperWithDevice:device withBool:&v13];
  v6 = 0;
  if (!v5)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v7 = [(PowerUIBluetoothHandler *)self getDeviceIDWrapperWithDevice:device withVendorIdSource:&v12 withVendorId:&v11 + 4 withProductId:&v11 withVersionId:&v10];
    v6 = 0;
    if (!v7)
    {
      if (!v13)
      {
        return -1;
      }

      if ([(PowerUIBluetoothHandler *)self isAccessorySupported:v11])
      {
        if (_os_feature_enabled_impl())
        {
          return 3;
        }

        else
        {
          return 2;
        }
      }

      if (!v13)
      {
        return -1;
      }

      if (v11 == 8206 || v11 == 8211)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }
  }

  return v6;
}

- (unsigned)productIDForDevice:(BTDeviceImpl *)device
{
  v6 = 0;
  v5 = 0;
  v4 = 0;
  if ([(PowerUIBluetoothHandler *)self getDeviceIDWrapperWithDevice:device withVendorIdSource:&v6 withVendorId:&v5 withProductId:&v4 + 4 withVersionId:&v4])
  {
    return 0;
  }

  else
  {
    return HIDWORD(v4);
  }
}

@end