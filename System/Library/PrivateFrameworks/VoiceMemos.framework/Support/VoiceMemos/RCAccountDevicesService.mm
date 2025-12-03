@interface RCAccountDevicesService
- (BOOL)_deviceRecordIsCompatible:(id)compatible;
- (BOOL)_recordsContainIncompatibleDevice:(id)device;
- (BOOL)_versionNumber:(id)number isGreaterThanOrEqualTo:(id)to;
- (RCAccountDevicesService)init;
- (void)fetchDeviceCompatibility:(id)compatibility;
@end

@implementation RCAccountDevicesService

- (RCAccountDevicesService)init
{
  v6.receiver = self;
  v6.super_class = RCAccountDevicesService;
  v2 = [(RCAccountDevicesService *)&v6 init];
  if (v2)
  {
    v7[0] = @"OSX";
    v7[1] = @"watchOS";
    v8[0] = @"13.1";
    v8[1] = @"9.2";
    v7[2] = @"iOS";
    v8[2] = @"16.2";
    v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
    deviceTypesToMinimumVersions = v2->_deviceTypesToMinimumVersions;
    v2->_deviceTypesToMinimumVersions = v3;
  }

  return v2;
}

- (void)fetchDeviceCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  v5 = objc_alloc_init(RCCloudKitService);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022260;
  v7[3] = &unk_1000564C8;
  v7[4] = self;
  v8 = compatibilityCopy;
  v6 = compatibilityCopy;
  [(RCCloudKitService *)v5 fetchDeviceRecords:v7];
}

- (BOOL)_recordsContainIncompatibleDevice:(id)device
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  deviceCopy = device;
  v5 = [deviceCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(deviceCopy);
        }

        if (![(RCAccountDevicesService *)self _deviceRecordIsCompatible:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [deviceCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)_deviceRecordIsCompatible:(id)compatible
{
  compatibleCopy = compatible;
  v5 = [compatibleCopy objectForKeyedSubscript:@"DeviceOSType"];
  v6 = [compatibleCopy objectForKeyedSubscript:@"DeviceOSVersionNumber"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    deviceTypesToMinimumVersions = [(RCAccountDevicesService *)self deviceTypesToMinimumVersions];
    v10 = [deviceTypesToMinimumVersions objectForKeyedSubscript:v5];

    if (v10)
    {
      v8 = [(RCAccountDevicesService *)self _versionNumber:v6 isGreaterThanOrEqualTo:v10];
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)_versionNumber:(id)number isGreaterThanOrEqualTo:(id)to
{
  toCopy = to;
  _LSVersionNumberMakeWithString();
  _LSVersionNumberMakeWithString();

  return _LSVersionNumberCompare() != -1;
}

@end