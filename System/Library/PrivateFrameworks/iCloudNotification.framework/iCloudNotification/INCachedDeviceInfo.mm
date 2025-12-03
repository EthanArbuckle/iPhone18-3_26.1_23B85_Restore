@interface INCachedDeviceInfo
+ (id)currentDeviceInfo;
- (INCachedDeviceInfo)initWithDeviceInfo:(id)info;
- (NSString)deviceEnclosureColor;
- (NSString)mobileEquipmentIdentifier;
@end

@implementation INCachedDeviceInfo

- (INCachedDeviceInfo)initWithDeviceInfo:(id)info
{
  infoCopy = info;
  v6 = [(INCachedDeviceInfo *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceInfo, info);
  }

  return v7;
}

+ (id)currentDeviceInfo
{
  if (qword_100063680 != -1)
  {
    sub_100039718();
  }

  v3 = qword_100063678;

  return v3;
}

- (NSString)mobileEquipmentIdentifier
{
  mobileEquipmentIdentifier = self->_mobileEquipmentIdentifier;
  if (!mobileEquipmentIdentifier)
  {
    mobileEquipmentIdentifier = [(AADeviceInfo *)self->_deviceInfo mobileEquipmentIdentifier];
    v5 = self->_mobileEquipmentIdentifier;
    self->_mobileEquipmentIdentifier = mobileEquipmentIdentifier;

    mobileEquipmentIdentifier = self->_mobileEquipmentIdentifier;
  }

  return mobileEquipmentIdentifier;
}

- (NSString)deviceEnclosureColor
{
  deviceEnclosureColor = self->_deviceEnclosureColor;
  if (!deviceEnclosureColor)
  {
    deviceEnclosureColor = [(AADeviceInfo *)self->_deviceInfo deviceEnclosureColor];
    v5 = self->_deviceEnclosureColor;
    self->_deviceEnclosureColor = deviceEnclosureColor;

    deviceEnclosureColor = self->_deviceEnclosureColor;
  }

  return deviceEnclosureColor;
}

@end