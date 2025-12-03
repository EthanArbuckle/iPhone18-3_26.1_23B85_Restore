@interface _TSF_TSDgPTPUnicastUDPv4EtEPort
+ (id)diagnosticInfoForService:(id)service;
- (id)_destinationAddressString;
- (id)_destinationIPv4Address;
- (id)_sourceAddressString;
- (id)propertiesForXPC;
@end

@implementation _TSF_TSDgPTPUnicastUDPv4EtEPort

- (id)_sourceAddressString
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastUDPv4EtEPort;
  _sourceAddressString = [(_TSF_TSDgPTPNetworkPort *)&v9 _sourceAddressString];
  service = [(_TSF_TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"SourceIPAddress"];

  if (v5)
  {
    unsignedIntValue = [v5 unsignedIntValue];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u.%u.%u.%u", HIBYTE(unsignedIntValue), BYTE2(unsignedIntValue), BYTE1(unsignedIntValue), unsignedIntValue];

    _sourceAddressString = v7;
  }

  return _sourceAddressString;
}

- (id)_destinationAddressString
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastUDPv4EtEPort;
  _destinationAddressString = [(_TSF_TSDgPTPNetworkPort *)&v9 _destinationAddressString];
  service = [(_TSF_TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"DestinationIPAddress"];

  if (v5)
  {
    unsignedIntValue = [v5 unsignedIntValue];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u.%u.%u.%u", HIBYTE(unsignedIntValue), BYTE2(unsignedIntValue), BYTE1(unsignedIntValue), unsignedIntValue];

    _destinationAddressString = v7;
  }

  return _destinationAddressString;
}

- (id)_destinationIPv4Address
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"DestinationIPAddress"];

  return v3;
}

- (id)propertiesForXPC
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastUDPv4EtEPort;
  propertiesForXPC = [(_TSF_TSDgPTPNetworkPort *)&v9 propertiesForXPC];
  service = [(_TSF_TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"SourceIPAddress"];
  [propertiesForXPC setObject:v5 forKeyedSubscript:@"SourceIPAddress"];

  service2 = [(_TSF_TSDgPTPPort *)self service];
  v7 = [service2 iodPropertyForKey:@"DestinationIPAddress"];
  [propertiesForXPC setObject:v7 forKeyedSubscript:@"DestinationIPAddress"];

  return propertiesForXPC;
}

+ (id)diagnosticInfoForService:(id)service
{
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS____TSF_TSDgPTPUnicastUDPv4EtEPort;
  v5 = objc_msgSendSuper2(&v15, sel_diagnosticInfoForService_, serviceCopy);
  v6 = [MEMORY[0x277CCABB0] numberWithInt:6];
  [v5 setObject:v6 forKeyedSubscript:@"PortType"];

  v7 = [serviceCopy iodPropertyForKey:@"SourceIPAddress"];
  v8 = v7;
  if (v7)
  {
    unsignedIntValue = [v7 unsignedIntValue];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u.%u.%u.%u", HIBYTE(unsignedIntValue), BYTE2(unsignedIntValue), BYTE1(unsignedIntValue), unsignedIntValue];
    [v5 setObject:v10 forKeyedSubscript:@"SourceAddress"];
  }

  v11 = [serviceCopy iodPropertyForKey:@"DestinationIPAddress"];

  if (v11)
  {
    unsignedIntValue2 = [v11 unsignedIntValue];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u.%u.%u.%u", HIBYTE(unsignedIntValue2), BYTE2(unsignedIntValue2), BYTE1(unsignedIntValue2), unsignedIntValue2];
    [v5 setObject:v13 forKeyedSubscript:@"DestinationAddress"];
  }

  return v5;
}

@end