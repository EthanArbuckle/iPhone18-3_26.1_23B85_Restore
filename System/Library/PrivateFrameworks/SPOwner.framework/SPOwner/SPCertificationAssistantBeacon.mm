@interface SPCertificationAssistantBeacon
- (SPCertificationAssistantBeacon)initWithInternalSimpleBeacon:(id)a3;
@end

@implementation SPCertificationAssistantBeacon

- (SPCertificationAssistantBeacon)initWithInternalSimpleBeacon:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = SPCertificationAssistantBeacon;
  v5 = [(SPCertificationAssistantBeacon *)&v33 init];
  if (v5)
  {
    v6 = [v4 identifier];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 name];
    v10 = [v9 copy];
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

    v13 = [v4 modelName];
    v14 = [v13 copy];
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

    v17 = [v4 accessoryProductInfo];
    accessoryProductInfo = v5->_accessoryProductInfo;
    v5->_accessoryProductInfo = v17;

    v19 = [v4 systemVersion];
    systemVersion = v5->_systemVersion;
    v5->_systemVersion = v19;

    v21 = [v4 role];
    v22 = [v21 copy];
    role = v5->_role;
    v5->_role = v22;

    v24 = [v4 type];
    type = v5->_type;
    v5->_type = v24;

    v5->_vendorId = [v4 vendorId];
    v5->_productId = [v4 productId];
    v26 = [v4 taskInformation];
    taskInformation = v5->_taskInformation;
    v5->_taskInformation = v26;

    v28 = [v4 accessoryProductInfo];
    v29 = v5->_accessoryProductInfo;
    v5->_accessoryProductInfo = v28;

    v30 = [v4 rawMetadata];
    rawMetadata = v5->_rawMetadata;
    v5->_rawMetadata = v30;
  }

  return v5;
}

@end