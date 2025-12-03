@interface RMSService
+ (id)protobufsFromServices:(id)services;
+ (id)servicesFromProtobufs:(id)protobufs;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToService:(id)service;
- (RMSService)initWithData:(id)data;
- (RMSService)initWithProtobuf:(id)protobuf;
- (id)data;
- (id)protobuf;
@end

@implementation RMSService

- (RMSService)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v17.receiver = self;
  v17.super_class = RMSService;
  v5 = [(RMSService *)&v17 init];
  if (v5)
  {
    displayName = [protobufCopy displayName];
    displayName = v5->_displayName;
    v5->_displayName = displayName;

    networkName = [protobufCopy networkName];
    networkName = v5->_networkName;
    v5->_networkName = networkName;

    hostName = [protobufCopy hostName];
    hostName = v5->_hostName;
    v5->_hostName = hostName;

    v5->_port = [protobufCopy port];
    v5->_serviceType = [protobufCopy serviceType];
    v5->_serviceDiscoverySource = [protobufCopy serviceDiscoverySource];
    v5->_serviceFlags = [protobufCopy serviceFlags];
    homeSharingGroupKey = [protobufCopy homeSharingGroupKey];
    homeSharingGroupKey = v5->_homeSharingGroupKey;
    v5->_homeSharingGroupKey = homeSharingGroupKey;

    uniqueIdentifier = [protobufCopy uniqueIdentifier];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = uniqueIdentifier;
  }

  return v5;
}

- (RMSService)initWithData:(id)data
{
  dataCopy = data;
  v5 = [[RMSServiceMessage alloc] initWithData:dataCopy];

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
  protobuf = [(RMSService *)self protobuf];
  data = [protobuf data];

  return data;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMSService *)self isEqualToService:equalCopy];

  return v5;
}

- (BOOL)isEqualToService:(id)service
{
  serviceCopy = service;
  v5 = serviceCopy;
  if (!serviceCopy)
  {
    goto LABEL_47;
  }

  serviceType = self->_serviceType;
  if (serviceType != [serviceCopy serviceType])
  {
    goto LABEL_47;
  }

  networkName = self->_networkName;
  v8 = networkName;
  if (!networkName)
  {
    networkName = [v5 networkName];
    if (!networkName)
    {
      goto LABEL_10;
    }

    serviceType = networkName;
    v8 = self->_networkName;
  }

  networkName2 = [v5 networkName];
  v11 = [(NSString *)v8 isEqualToString:networkName2];

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
    hostName = [v5 hostName];
    if (!hostName)
    {
      goto LABEL_17;
    }

    serviceType = hostName;
    v13 = self->_hostName;
  }

  hostName2 = [v5 hostName];
  v16 = [(NSString *)v13 isEqualToString:hostName2];

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
    displayName = [v5 displayName];
    if (!displayName)
    {
      goto LABEL_25;
    }

    port = displayName;
    v19 = self->_displayName;
  }

  displayName2 = [v5 displayName];
  v22 = [(NSString *)v19 isEqualToString:displayName2];

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
    homeSharingGroupKey = [v5 homeSharingGroupKey];
    if (!homeSharingGroupKey)
    {
      goto LABEL_32;
    }

    port = homeSharingGroupKey;
    v24 = self->_homeSharingGroupKey;
  }

  homeSharingGroupKey2 = [v5 homeSharingGroupKey];
  v27 = [(NSString *)v24 isEqualToString:homeSharingGroupKey2];

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
    uniqueIdentifier = [v5 uniqueIdentifier];
    if (!uniqueIdentifier)
    {
      goto LABEL_39;
    }

    port = uniqueIdentifier;
    v29 = self->_uniqueIdentifier;
  }

  uniqueIdentifier2 = [v5 uniqueIdentifier];
  v32 = [(NSString *)v29 isEqualToString:uniqueIdentifier2];

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
      device = [v5 device];
      if (!device)
      {
        goto LABEL_46;
      }

      port = device;
      v34 = self->_device;
    }

    device2 = [v5 device];
    v37 = [v34 isEqual:device2];

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

+ (id)servicesFromProtobufs:(id)protobufs
{
  v19 = *MEMORY[0x277D85DE8];
  protobufsCopy = protobufs;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = protobufsCopy;
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

+ (id)protobufsFromServices:(id)services
{
  v17 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = servicesCopy;
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

        protobuf = [*(*(&v12 + 1) + 8 * i) protobuf];
        [v4 addObject:protobuf];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end