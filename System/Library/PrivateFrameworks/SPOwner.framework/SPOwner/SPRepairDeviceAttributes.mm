@interface SPRepairDeviceAttributes
- (SPRepairDeviceAttributes)initWithInternalSimpleBeacon:(id)beacon;
@end

@implementation SPRepairDeviceAttributes

- (SPRepairDeviceAttributes)initWithInternalSimpleBeacon:(id)beacon
{
  beaconCopy = beacon;
  v31.receiver = self;
  v31.super_class = SPRepairDeviceAttributes;
  v5 = [(SPRepairDeviceAttributes *)&v31 init];
  if (v5)
  {
    name = [beaconCopy name];
    name = v5->_name;
    v5->_name = name;

    identifier = [beaconCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    serialNumber = [beaconCopy serialNumber];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = serialNumber;

    owner = [beaconCopy owner];
    owner = v5->_owner;
    v5->_owner = owner;

    deviceClass = [beaconCopy deviceClass];
    deviceClass = v5->_deviceClass;
    v5->_deviceClass = deviceClass;

    deviceModel = [beaconCopy deviceModel];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = deviceModel;

    rawDeviceModel = [beaconCopy rawDeviceModel];
    rawDeviceModel = v5->_rawDeviceModel;
    v5->_rawDeviceModel = rawDeviceModel;

    deviceColor = [beaconCopy deviceColor];
    deviceColor = v5->_deviceColor;
    v5->_deviceColor = deviceColor;

    thisDevice = [beaconCopy thisDevice];
    thisDevice = v5->_thisDevice;
    v5->_thisDevice = thisDevice;

    isMine = [beaconCopy isMine];
    isMine = v5->_isMine;
    v5->_isMine = isMine;

    v5->_repairState = [beaconCopy repairState];
    isRepairCapable = [beaconCopy isRepairCapable];
    isRepairCapable = v5->_isRepairCapable;
    v5->_isRepairCapable = isRepairCapable;

    imageBaseUrl = [beaconCopy imageBaseUrl];
    imageBaseUrl = v5->_imageBaseUrl;
    v5->_imageBaseUrl = imageBaseUrl;
  }

  return v5;
}

@end