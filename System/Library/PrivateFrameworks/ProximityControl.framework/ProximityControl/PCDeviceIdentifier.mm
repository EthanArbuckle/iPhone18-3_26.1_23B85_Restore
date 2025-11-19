@interface PCDeviceIdentifier
- (PCDeviceIdentifier)initWithCoder:(id)a3;
- (PCDeviceIdentifier)initWithDeviceName:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCDeviceIdentifier

- (PCDeviceIdentifier)initWithDeviceName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PCDeviceIdentifier;
  v6 = [(PCDeviceIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceName, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  assetType = self->_assetType;
  v7 = v4;
  if (assetType)
  {
    [v4 encodeInteger:assetType forKey:@"at"];
    v4 = v7;
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v7 encodeObject:deviceName forKey:@"dname"];
    v4 = v7;
  }
}

- (PCDeviceIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PCDeviceIdentifier;
  v5 = [(PCDeviceIdentifier *)&v9 init];
  if (v5)
  {
    v6 = v4;
    if ([v6 containsValueForKey:@"at"])
    {
      v5->_assetType = [v6 decodeIntegerForKey:@"at"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v7 = v5;
  }

  return v5;
}

@end