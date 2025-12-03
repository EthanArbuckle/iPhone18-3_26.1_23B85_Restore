@interface SPCertificationAssistantBeacon
- (SPCertificationAssistantBeacon)initWithInternalSimpleBeacon:(id)beacon;
@end

@implementation SPCertificationAssistantBeacon

- (SPCertificationAssistantBeacon)initWithInternalSimpleBeacon:(id)beacon
{
  beaconCopy = beacon;
  v33.receiver = self;
  v33.super_class = SPCertificationAssistantBeacon;
  v5 = [(SPCertificationAssistantBeacon *)&v33 init];
  if (v5)
  {
    identifier = [beaconCopy identifier];
    v7 = [identifier copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    name = [beaconCopy name];
    v10 = [name copy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_2875DB468;
    }

    objc_storeStrong(&v5->_name, v12);

    modelName = [beaconCopy modelName];
    v14 = [modelName copy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_2875DB468;
    }

    objc_storeStrong(&v5->_model, v16);

    accessoryProductInfo = [beaconCopy accessoryProductInfo];
    accessoryProductInfo = v5->_accessoryProductInfo;
    v5->_accessoryProductInfo = accessoryProductInfo;

    systemVersion = [beaconCopy systemVersion];
    systemVersion = v5->_systemVersion;
    v5->_systemVersion = systemVersion;

    role = [beaconCopy role];
    v22 = [role copy];
    role = v5->_role;
    v5->_role = v22;

    type = [beaconCopy type];
    type = v5->_type;
    v5->_type = type;

    v5->_vendorId = [beaconCopy vendorId];
    v5->_productId = [beaconCopy productId];
    taskInformation = [beaconCopy taskInformation];
    taskInformation = v5->_taskInformation;
    v5->_taskInformation = taskInformation;

    accessoryProductInfo2 = [beaconCopy accessoryProductInfo];
    v29 = v5->_accessoryProductInfo;
    v5->_accessoryProductInfo = accessoryProductInfo2;

    rawMetadata = [beaconCopy rawMetadata];
    rawMetadata = v5->_rawMetadata;
    v5->_rawMetadata = rawMetadata;
  }

  return v5;
}

@end