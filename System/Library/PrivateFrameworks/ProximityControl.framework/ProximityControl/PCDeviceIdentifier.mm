@interface PCDeviceIdentifier
- (PCDeviceIdentifier)initWithCoder:(id)coder;
- (PCDeviceIdentifier)initWithDeviceName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCDeviceIdentifier

- (PCDeviceIdentifier)initWithDeviceName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = PCDeviceIdentifier;
  v6 = [(PCDeviceIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceName, name);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetType = self->_assetType;
  v7 = coderCopy;
  if (assetType)
  {
    [coderCopy encodeInteger:assetType forKey:@"at"];
    coderCopy = v7;
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v7 encodeObject:deviceName forKey:@"dname"];
    coderCopy = v7;
  }
}

- (PCDeviceIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PCDeviceIdentifier;
  v5 = [(PCDeviceIdentifier *)&v9 init];
  if (v5)
  {
    v6 = coderCopy;
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