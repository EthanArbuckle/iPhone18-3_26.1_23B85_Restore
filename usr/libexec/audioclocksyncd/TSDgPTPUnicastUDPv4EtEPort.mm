@interface TSDgPTPUnicastUDPv4EtEPort
+ (id)diagnosticInfoForService:(id)service;
- (id)_destinationAddressString;
- (id)_destinationIPv4Address;
- (id)_sourceAddressString;
- (id)propertiesForXPC;
@end

@implementation TSDgPTPUnicastUDPv4EtEPort

- (id)_sourceAddressString
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastUDPv4EtEPort;
  _sourceAddressString = [(TSDgPTPNetworkPort *)&v9 _sourceAddressString];
  service = [(TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"SourceIPAddress"];

  if (v5)
  {
    unsignedIntValue = [v5 unsignedIntValue];
    v7 = [NSString stringWithFormat:@"%u.%u.%u.%u", HIBYTE(unsignedIntValue), BYTE2(unsignedIntValue), BYTE1(unsignedIntValue), unsignedIntValue];

    _sourceAddressString = v7;
  }

  return _sourceAddressString;
}

- (id)_destinationAddressString
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastUDPv4EtEPort;
  _destinationAddressString = [(TSDgPTPNetworkPort *)&v9 _destinationAddressString];
  service = [(TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"DestinationIPAddress"];

  if (v5)
  {
    unsignedIntValue = [v5 unsignedIntValue];
    v7 = [NSString stringWithFormat:@"%u.%u.%u.%u", HIBYTE(unsignedIntValue), BYTE2(unsignedIntValue), BYTE1(unsignedIntValue), unsignedIntValue];

    _destinationAddressString = v7;
  }

  return _destinationAddressString;
}

- (id)_destinationIPv4Address
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"DestinationIPAddress"];

  return v3;
}

- (id)propertiesForXPC
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastUDPv4EtEPort;
  propertiesForXPC = [(TSDgPTPNetworkPort *)&v9 propertiesForXPC];
  service = [(TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"SourceIPAddress"];
  [propertiesForXPC setObject:v5 forKeyedSubscript:@"SourceIPAddress"];

  service2 = [(TSDgPTPPort *)self service];
  v7 = [service2 iodPropertyForKey:@"DestinationIPAddress"];
  [propertiesForXPC setObject:v7 forKeyedSubscript:@"DestinationIPAddress"];

  return propertiesForXPC;
}

+ (id)diagnosticInfoForService:(id)service
{
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___TSDgPTPUnicastUDPv4EtEPort;
  v5 = objc_msgSendSuper2(&v15, "diagnosticInfoForService:", serviceCopy);
  v6 = [NSNumber numberWithInt:6];
  [v5 setObject:v6 forKeyedSubscript:@"PortType"];

  v7 = [serviceCopy iodPropertyForKey:@"SourceIPAddress"];
  v8 = v7;
  if (v7)
  {
    unsignedIntValue = [v7 unsignedIntValue];
    v10 = [NSString stringWithFormat:@"%u.%u.%u.%u", HIBYTE(unsignedIntValue), BYTE2(unsignedIntValue), BYTE1(unsignedIntValue), unsignedIntValue];
    [v5 setObject:v10 forKeyedSubscript:@"SourceAddress"];
  }

  v11 = [serviceCopy iodPropertyForKey:@"DestinationIPAddress"];

  if (v11)
  {
    unsignedIntValue2 = [v11 unsignedIntValue];
    v13 = [NSString stringWithFormat:@"%u.%u.%u.%u", HIBYTE(unsignedIntValue2), BYTE2(unsignedIntValue2), BYTE1(unsignedIntValue2), unsignedIntValue2];
    [v5 setObject:v13 forKeyedSubscript:@"DestinationAddress"];
  }

  return v5;
}

@end