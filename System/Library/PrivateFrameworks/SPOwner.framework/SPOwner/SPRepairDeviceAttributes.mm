@interface SPRepairDeviceAttributes
- (SPRepairDeviceAttributes)initWithInternalSimpleBeacon:(id)a3;
@end

@implementation SPRepairDeviceAttributes

- (SPRepairDeviceAttributes)initWithInternalSimpleBeacon:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = SPRepairDeviceAttributes;
  v5 = [(SPRepairDeviceAttributes *)&v31 init];
  if (v5)
  {
    v6 = [v4 name];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 serialNumber];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v10;

    v12 = [v4 owner];
    owner = v5->_owner;
    v5->_owner = v12;

    v14 = [v4 deviceClass];
    deviceClass = v5->_deviceClass;
    v5->_deviceClass = v14;

    v16 = [v4 deviceModel];
    deviceModel = v5->_deviceModel;
    v5->_deviceModel = v16;

    v18 = [v4 rawDeviceModel];
    rawDeviceModel = v5->_rawDeviceModel;
    v5->_rawDeviceModel = v18;

    v20 = [v4 deviceColor];
    deviceColor = v5->_deviceColor;
    v5->_deviceColor = v20;

    v22 = [v4 thisDevice];
    thisDevice = v5->_thisDevice;
    v5->_thisDevice = v22;

    v24 = [v4 isMine];
    isMine = v5->_isMine;
    v5->_isMine = v24;

    v5->_repairState = [v4 repairState];
    v26 = [v4 isRepairCapable];
    isRepairCapable = v5->_isRepairCapable;
    v5->_isRepairCapable = v26;

    v28 = [v4 imageBaseUrl];
    imageBaseUrl = v5->_imageBaseUrl;
    v5->_imageBaseUrl = v28;
  }

  return v5;
}

@end