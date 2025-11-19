@interface RMSService
+ (id)protobufsFromServices:(id)a3;
+ (id)servicesFromProtobufs:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToService:(id)a3;
- (RMSService)initWithData:(id)a3;
- (RMSService)initWithProtobuf:(id)a3;
- (id)data;
- (id)protobuf;
@end

@implementation RMSService

- (RMSService)initWithProtobuf:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = RMSService;
  v5 = [(RMSService *)&v17 init];
  if (v5)
  {
    v6 = [v4 displayName];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [v4 networkName];
    networkName = v5->_networkName;
    v5->_networkName = v8;

    v10 = [v4 hostName];
    hostName = v5->_hostName;
    v5->_hostName = v10;

    v5->_port = [v4 port];
    v5->_serviceType = [v4 serviceType];
    v5->_serviceDiscoverySource = [v4 serviceDiscoverySource];
    v5->_serviceFlags = [v4 serviceFlags];
    v12 = [v4 homeSharingGroupKey];
    homeSharingGroupKey = v5->_homeSharingGroupKey;
    v5->_homeSharingGroupKey = v12;

    v14 = [v4 uniqueIdentifier];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v14;
  }

  return v5;
}

- (RMSService)initWithData:(id)a3
{
  v4 = a3;
  v5 = [[RMSServiceMessage alloc] initWithData:v4];

  v6 = [(RMSService *)self initWithProtobuf:v5];
  return v6;
}

- (id)protobuf
{
  v3 = objc_opt_new();
  [v3 setDisplayName:self->_displayName];
  [v3 setNetworkName:self->_networkName];
  [v3 setHostName:self->_hostName];
  [v3 setPort:self->_port];
  [v3 setServiceType:LODWORD(self->_serviceType)];
  [v3 setServiceDiscoverySource:LODWORD(self->_serviceDiscoverySource)];
  [v3 setServiceFlags:LODWORD(self->_serviceFlags)];
  [v3 setHomeSharingGroupKey:self->_homeSharingGroupKey];
  [v3 setUniqueIdentifier:self->_uniqueIdentifier];

  return v3;
}

- (id)data
{
  v2 = [(RMSService *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMSService *)self isEqualToService:v4];

  return v5;
}

- (BOOL)isEqualToService:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_47;
  }

  serviceType = self->_serviceType;
  if (serviceType != [v4 serviceType])
  {
    goto LABEL_47;
  }

  networkName = self->_networkName;
  v8 = networkName;
  if (!networkName)
  {
    v9 = [v5 networkName];
    if (!v9)
    {
      goto LABEL_10;
    }

    serviceType = v9;
    v8 = self->_networkName;
  }

  v10 = [v5 networkName];
  v11 = [(NSString *)v8 isEqualToString:v10];

  if (networkName)
  {
    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {

    if (!v11)
    {
      goto LABEL_47;
    }
  }

LABEL_10:
  hostName = self->_hostName;
  v13 = hostName;
  if (!hostName)
  {
    v14 = [v5 hostName];
    if (!v14)
    {
      goto LABEL_17;
    }

    serviceType = v14;
    v13 = self->_hostName;
  }

  v15 = [v5 hostName];
  v16 = [(NSString *)v13 isEqualToString:v15];

  if (hostName)
  {
    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {

    if (!v16)
    {
      goto LABEL_47;
    }
  }

LABEL_17:
  port = self->_port;
  if (port != [v5 port])
  {
    goto LABEL_47;
  }

  displayName = self->_displayName;
  v19 = displayName;
  if (!displayName)
  {
    v20 = [v5 displayName];
    if (!v20)
    {
      goto LABEL_25;
    }

    port = v20;
    v19 = self->_displayName;
  }

  v21 = [v5 displayName];
  v22 = [(NSString *)v19 isEqualToString:v21];

  if (displayName)
  {
    if (!v22)
    {
      goto LABEL_47;
    }
  }

  else
  {

    if (!v22)
    {
      goto LABEL_47;
    }
  }

LABEL_25:
  homeSharingGroupKey = self->_homeSharingGroupKey;
  v24 = homeSharingGroupKey;
  if (!homeSharingGroupKey)
  {
    v25 = [v5 homeSharingGroupKey];
    if (!v25)
    {
      goto LABEL_32;
    }

    port = v25;
    v24 = self->_homeSharingGroupKey;
  }

  v26 = [v5 homeSharingGroupKey];
  v27 = [(NSString *)v24 isEqualToString:v26];

  if (homeSharingGroupKey)
  {
    if (!v27)
    {
      goto LABEL_47;
    }
  }

  else
  {

    if (!v27)
    {
      goto LABEL_47;
    }
  }

LABEL_32:
  uniqueIdentifier = self->_uniqueIdentifier;
  v29 = uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v30 = [v5 uniqueIdentifier];
    if (!v30)
    {
      goto LABEL_39;
    }

    port = v30;
    v29 = self->_uniqueIdentifier;
  }

  v31 = [v5 uniqueIdentifier];
  v32 = [(NSString *)v29 isEqualToString:v31];

  if (!uniqueIdentifier)
  {

    if (v32)
    {
      goto LABEL_39;
    }

LABEL_47:
    v38 = 0;
    goto LABEL_48;
  }

  if (!v32)
  {
    goto LABEL_47;
  }

LABEL_39:
  if (_os_feature_enabled_impl())
  {
    device = self->_device;
    v34 = device;
    if (!device)
    {
      v35 = [v5 device];
      if (!v35)
      {
        goto LABEL_46;
      }

      port = v35;
      v34 = self->_device;
    }

    v36 = [v5 device];
    v37 = [v34 isEqual:v36];

    if (!device)
    {
    }

    if ((v37 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_46:
  v38 = 1;
LABEL_48:

  return v38;
}

+ (id)servicesFromProtobufs:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [RMSService alloc];
        v12 = [(RMSService *)v11 initWithProtobuf:v10, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)protobufsFromServices:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) protobuf];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end