@interface _TSF_TSDgPTPUnicastUDPv6PtPPort
+ (id)diagnosticInfoForService:(id)service;
+ (id)iokitMatchingDictionaryForInterfaceName:(id)name andIPv6Address:(char *)address;
- (id)_destinationAddressString;
- (id)_destinationIPv6Address;
- (id)_sourceAddressString;
- (id)propertiesForXPC;
@end

@implementation _TSF_TSDgPTPUnicastUDPv6PtPPort

+ (id)iokitMatchingDictionaryForInterfaceName:(id)name andIPv6Address:(char *)address
{
  v21[3] = *MEMORY[0x277D85DE8];
  v21[0] = @"IOTimeSyncUnicastUDPv6PtPPort";
  v20[0] = @"IOProviderClass";
  v20[1] = @"IOParentMatch";
  nameCopy = name;
  v18[0] = @"IOProviderClass";
  v18[1] = @"IOPropertyMatch";
  v19[0] = @"IOTimeSyncInterfaceAdapter";
  v16 = @"InterfaceName";
  v5 = MEMORY[0x277CBEAC0];
  nameCopy2 = name;
  v7 = [v5 dictionaryWithObjects:&nameCopy forKeys:&v16 count:1];
  v19[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[1] = v8;
  v20[2] = @"IOPropertyMatch";
  v14 = @"DestinationIPAddress";
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:address length:16];
  v15 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v21[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_sourceAddressString
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastUDPv6PtPPort;
  _sourceAddressString = [(_TSF_TSDgPTPNetworkPort *)&v9 _sourceAddressString];
  service = [(_TSF_TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"SourceIPAddress"];

  if (v5)
  {
    bytes = [v5 bytes];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5], bytes[6], bytes[7], bytes[8], bytes[9], bytes[10], bytes[11], bytes[12], bytes[13], bytes[14], bytes[15]];

    _sourceAddressString = v7;
  }

  return _sourceAddressString;
}

- (id)_destinationAddressString
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastUDPv6PtPPort;
  _destinationAddressString = [(_TSF_TSDgPTPNetworkPort *)&v9 _destinationAddressString];
  service = [(_TSF_TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"DestinationIPAddress"];

  if (v5)
  {
    bytes = [v5 bytes];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5], bytes[6], bytes[7], bytes[8], bytes[9], bytes[10], bytes[11], bytes[12], bytes[13], bytes[14], bytes[15]];

    _destinationAddressString = v7;
  }

  return _destinationAddressString;
}

- (id)_destinationIPv6Address
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"DestinationIPAddress"];

  return v3;
}

- (id)propertiesForXPC
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastUDPv6PtPPort;
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
  v15.super_class = &OBJC_METACLASS____TSF_TSDgPTPUnicastUDPv6PtPPort;
  v5 = objc_msgSendSuper2(&v15, sel_diagnosticInfoForService_, serviceCopy);
  v6 = [MEMORY[0x277CCABB0] numberWithInt:4];
  [v5 setObject:v6 forKeyedSubscript:@"PortType"];

  v7 = [serviceCopy iodPropertyForKey:@"SourceIPAddress"];
  v8 = v7;
  if (v7)
  {
    bytes = [v7 bytes];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5], bytes[6], bytes[7], bytes[8], bytes[9], bytes[10], bytes[11], bytes[12], bytes[13], bytes[14], bytes[15]];
    [v5 setObject:v10 forKeyedSubscript:@"SourceAddress"];
  }

  v11 = [serviceCopy iodPropertyForKey:@"DestinationIPAddress"];

  if (v11)
  {
    bytes2 = [v11 bytes];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *bytes2, bytes2[1], bytes2[2], bytes2[3], bytes2[4], bytes2[5], bytes2[6], bytes2[7], bytes2[8], bytes2[9], bytes2[10], bytes2[11], bytes2[12], bytes2[13], bytes2[14], bytes2[15]];
    [v5 setObject:v13 forKeyedSubscript:@"DestinationAddress"];
  }

  return v5;
}

@end