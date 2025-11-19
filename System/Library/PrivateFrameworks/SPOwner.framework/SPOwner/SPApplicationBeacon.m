@interface SPApplicationBeacon
- (SPApplicationBeacon)initWithInternalSimpleBeacon:(id)a3;
@end

@implementation SPApplicationBeacon

- (SPApplicationBeacon)initWithInternalSimpleBeacon:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = SPApplicationBeacon;
  v5 = [(SPApplicationBeacon *)&v42 init];
  if (v5)
  {
    v6 = [v4 name];
    v7 = [v6 copy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_2875DB468;
    }

    objc_storeStrong(&v5->_name, v9);

    v10 = [v4 identifier];
    v11 = [v10 copy];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v13 = [v4 groupIdentifier];
    v14 = [v13 copy];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v14;

    v16 = [v4 type];
    type = v5->_type;
    v5->_type = v16;

    v5->_batteryLevel = [v4 batteryLevel];
    v18 = [v4 productUUID];
    v19 = [v18 copy];
    productUUID = v5->_productUUID;
    v5->_productUUID = v19;

    v5->_partIdentifier = [v4 partIdentifier];
    v21 = [v4 lostModeInfo];
    v22 = [v21 copy];
    lostModeInfo = v5->_lostModeInfo;
    v5->_lostModeInfo = v22;

    v24 = [v4 taskInformation];
    v25 = [v24 copy];
    taskInformation = v5->_taskInformation;
    v5->_taskInformation = v25;

    v27 = [v4 owner];
    owner = v5->_owner;
    v5->_owner = v27;

    v29 = [v4 role];
    v30 = [v29 copy];
    role = v5->_role;
    v5->_role = v30;

    v32 = [v4 safeLocations];
    v33 = [v32 copy];
    safeLocations = v5->_safeLocations;
    v5->_safeLocations = v33;

    v35 = [v4 accessoryProductInfo];
    accessoryProductInfo = v5->_accessoryProductInfo;
    v5->_accessoryProductInfo = v35;

    v5->_isAppleAudioAccessory = [v4 isAppleAudioAccessory];
    v5->_isZeus = [v4 isZeus];
    v5->_canBeLeashedByHost = [v4 canBeLeashedByHost];
    v5->_connected = [v4 connected];
    v37 = [v4 systemVersion];
    systemVersion = v5->_systemVersion;
    v5->_systemVersion = v37;

    v5->_vendorId = [v4 vendorId];
    v5->_productId = [v4 productId];
    v39 = [v4 serialNumber];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v39;

    v5->_discoveryId = [v4 discoveryId];
  }

  return v5;
}

@end