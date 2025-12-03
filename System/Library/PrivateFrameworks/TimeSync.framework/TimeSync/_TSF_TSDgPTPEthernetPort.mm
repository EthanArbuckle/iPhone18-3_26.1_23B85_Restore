@interface _TSF_TSDgPTPEthernetPort
+ (id)diagnosticInfoForService:(id)service;
- (id)_sourceAddressString;
- (id)propertiesForXPC;
@end

@implementation _TSF_TSDgPTPEthernetPort

- (id)_sourceAddressString
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPEthernetPort;
  _sourceAddressString = [(_TSF_TSDgPTPNetworkPort *)&v9 _sourceAddressString];
  service = [(_TSF_TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"SourceMACAddress"];

  if (v5)
  {
    bytes = [v5 bytes];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5]];

    _sourceAddressString = v7;
  }

  return _sourceAddressString;
}

- (id)propertiesForXPC
{
  v7.receiver = self;
  v7.super_class = _TSF_TSDgPTPEthernetPort;
  propertiesForXPC = [(_TSF_TSDgPTPNetworkPort *)&v7 propertiesForXPC];
  service = [(_TSF_TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"SourceMACAddress"];
  [propertiesForXPC setObject:v5 forKeyedSubscript:@"SourceMACAddress"];

  return propertiesForXPC;
}

+ (id)diagnosticInfoForService:(id)service
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS____TSF_TSDgPTPEthernetPort;
  serviceCopy = service;
  v4 = objc_msgSendSuper2(&v10, sel_diagnosticInfoForService_, serviceCopy);
  v5 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v4 setObject:v5 forKeyedSubscript:@"PortType"];

  v6 = [serviceCopy iodPropertyForKey:@"SourceMACAddress"];

  if (v6)
  {
    bytes = [v6 bytes];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5], v10.receiver, v10.super_class];
    [v4 setObject:v8 forKeyedSubscript:@"SourceAddress"];
  }

  [v4 setObject:@"01:80:c2:00:00:0e" forKeyedSubscript:@"DestinationAddress"];

  return v4;
}

@end