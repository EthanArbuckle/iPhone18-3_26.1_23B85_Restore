@interface SPApplicationBeacon
- (SPApplicationBeacon)initWithInternalSimpleBeacon:(id)beacon;
@end

@implementation SPApplicationBeacon

- (SPApplicationBeacon)initWithInternalSimpleBeacon:(id)beacon
{
  beaconCopy = beacon;
  v42.receiver = self;
  v42.super_class = SPApplicationBeacon;
  v5 = [(SPApplicationBeacon *)&v42 init];
  if (v5)
  {
    name = [beaconCopy name];
    v7 = [name copy];
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

    identifier = [beaconCopy identifier];
    v11 = [identifier copy];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    groupIdentifier = [beaconCopy groupIdentifier];
    v14 = [groupIdentifier copy];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v14;

    type = [beaconCopy type];
    type = v5->_type;
    v5->_type = type;

    v5->_batteryLevel = [beaconCopy batteryLevel];
    productUUID = [beaconCopy productUUID];
    v19 = [productUUID copy];
    productUUID = v5->_productUUID;
    v5->_productUUID = v19;

    v5->_partIdentifier = [beaconCopy partIdentifier];
    lostModeInfo = [beaconCopy lostModeInfo];
    v22 = [lostModeInfo copy];
    lostModeInfo = v5->_lostModeInfo;
    v5->_lostModeInfo = v22;

    taskInformation = [beaconCopy taskInformation];
    v25 = [taskInformation copy];
    taskInformation = v5->_taskInformation;
    v5->_taskInformation = v25;

    owner = [beaconCopy owner];
    owner = v5->_owner;
    v5->_owner = owner;

    role = [beaconCopy role];
    v30 = [role copy];
    role = v5->_role;
    v5->_role = v30;

    safeLocations = [beaconCopy safeLocations];
    v33 = [safeLocations copy];
    safeLocations = v5->_safeLocations;
    v5->_safeLocations = v33;

    accessoryProductInfo = [beaconCopy accessoryProductInfo];
    accessoryProductInfo = v5->_accessoryProductInfo;
    v5->_accessoryProductInfo = accessoryProductInfo;

    v5->_isAppleAudioAccessory = [beaconCopy isAppleAudioAccessory];
    v5->_isZeus = [beaconCopy isZeus];
    v5->_canBeLeashedByHost = [beaconCopy canBeLeashedByHost];
    v5->_connected = [beaconCopy connected];
    systemVersion = [beaconCopy systemVersion];
    systemVersion = v5->_systemVersion;
    v5->_systemVersion = systemVersion;

    v5->_vendorId = [beaconCopy vendorId];
    v5->_productId = [beaconCopy productId];
    serialNumber = [beaconCopy serialNumber];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = serialNumber;

    v5->_discoveryId = [beaconCopy discoveryId];
  }

  return v5;
}

@end