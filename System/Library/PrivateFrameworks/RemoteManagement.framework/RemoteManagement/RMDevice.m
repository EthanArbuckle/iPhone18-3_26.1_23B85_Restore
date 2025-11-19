@interface RMDevice
+ (RMDevice)currentDevice;
- (BOOL)hasSEP;
- (BOOL)locked;
- (NSNumber)chipID;
- (NSString)UDID;
- (NSString)modelFamily;
- (NSString)modelIdentifier;
- (NSString)modelMarketingName;
- (NSString)modelNumber;
- (NSString)operatingSystem;
- (NSString)operatingSystemBuildVersion;
- (NSString)operatingSystemMarketingName;
- (NSString)operatingSystemSupplementalBuildVersion;
- (NSString)operatingSystemSupplementalExtraVersion;
- (NSString)operatingSystemVersion;
- (NSString)serialNumber;
- (void)locked;
@end

@implementation RMDevice

+ (RMDevice)currentDevice
{
  if (currentDevice_onceToken != -1)
  {
    +[RMDevice currentDevice];
  }

  v3 = currentDevice_currentDevice;

  return v3;
}

uint64_t __25__RMDevice_currentDevice__block_invoke()
{
  currentDevice_currentDevice = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)UDID
{
  v2 = queryGestalt(@"UniqueDeviceID");
  v3 = [RMFeatureOverrides internalStatusForKey:@"UniqueDeviceID" defaultValue:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F5C08D00;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)serialNumber
{
  v2 = queryGestalt(@"SerialNumber");
  v3 = [RMFeatureOverrides internalStatusForKey:@"SerialNumber" defaultValue:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F5C08D00;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSNumber)chipID
{
  v2 = queryGestalt(@"ChipID");
  v3 = [RMFeatureOverrides internalStatusForKey:@"ChipID" defaultValue:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &unk_1F5C0CEA8;
  }

  v5 = v4;

  return v4;
}

- (NSString)modelFamily
{
  v2 = queryGestalt(@"DeviceClass");
  v3 = [RMFeatureOverrides internalStatusForKey:@"DeviceClass" defaultValue:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F5C08D00;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)modelIdentifier
{
  v2 = queryGestalt(@"ProductType");
  v3 = [RMFeatureOverrides internalStatusForKey:@"ProductType" defaultValue:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F5C08D00;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)modelMarketingName
{
  v2 = queryGestalt(@"marketing-name");
  v3 = [RMFeatureOverrides internalStatusForKey:@"marketing-name" defaultValue:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F5C08D00;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)modelNumber
{
  v2 = queryGestalt(@"ModelNumber");
  v3 = [RMFeatureOverrides internalStatusForKey:@"ModelNumber" defaultValue:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F5C08D00;
  }

  v5 = v4;

  v6 = queryGestalt(@"RegionInfo");
  v7 = [RMFeatureOverrides internalStatusForKey:@"RegionInfo" defaultValue:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F5C08D00;
  }

  v9 = v8;

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v5, v9];

  return v10;
}

- (NSString)operatingSystem
{
  v2 = queryGestalt(@"j9Th5smJpdztHwc+i39zIg");
  v3 = [RMFeatureOverrides internalStatusForKey:@"j9Th5smJpdztHwc+i39zIg" defaultValue:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F5C08D00;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)operatingSystemMarketingName
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RMDevice *)self operatingSystem];
  v5 = [(RMDevice *)self operatingSystemVersion];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (NSString)operatingSystemVersion
{
  v2 = queryGestalt(@"ProductVersion");
  v3 = [RMFeatureOverrides internalStatusForKey:@"ProductVersion" defaultValue:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F5C08D00;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)operatingSystemSupplementalExtraVersion
{
  v2 = queryGestalt(@"ProductVersionExtra");
  v3 = [RMFeatureOverrides internalStatusForKey:@"ProductVersionExtra" defaultValue:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F5C08D00;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)operatingSystemBuildVersion
{
  v2 = queryGestalt(@"BuildVersion");
  v3 = [RMFeatureOverrides internalStatusForKey:@"BuildVersion" defaultValue:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F5C08D00;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)operatingSystemSupplementalBuildVersion
{
  v2 = queryGestalt(@"SupplementalBuildVersion");
  v3 = [RMFeatureOverrides internalStatusForKey:@"SupplementalBuildVersion" defaultValue:v2];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F5C08D00;
  }

  v5 = v4;

  return &v4->isa;
}

- (BOOL)hasSEP
{
  v2 = MGGetBoolAnswer();

  return [RMFeatureOverrides internalStatusForKey:@"HasSEP" defaultBool:v2];
}

- (BOOL)locked
{
  v2 = MKBGetDeviceLockState();
  v3 = +[RMLog device];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(RMDevice *)v2 locked];
  }

  if (v2)
  {
    v4 = v2 == 3;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (void)locked
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_1E1168000, a2, OS_LOG_TYPE_DEBUG, "Lock state %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end