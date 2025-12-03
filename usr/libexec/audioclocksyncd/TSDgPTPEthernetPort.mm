@interface TSDgPTPEthernetPort
+ (id)diagnosticInfoForService:(id)service;
- (id)_sourceAddressString;
- (id)propertiesForXPC;
@end

@implementation TSDgPTPEthernetPort

- (id)_sourceAddressString
{
  v9.receiver = self;
  v9.super_class = TSDgPTPEthernetPort;
  _sourceAddressString = [(TSDgPTPNetworkPort *)&v9 _sourceAddressString];
  service = [(TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"SourceMACAddress"];

  if (v5)
  {
    bytes = [v5 bytes];
    v7 = [NSString stringWithFormat:@"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5]];

    _sourceAddressString = v7;
  }

  return _sourceAddressString;
}

- (id)propertiesForXPC
{
  v7.receiver = self;
  v7.super_class = TSDgPTPEthernetPort;
  propertiesForXPC = [(TSDgPTPNetworkPort *)&v7 propertiesForXPC];
  service = [(TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"SourceMACAddress"];
  [propertiesForXPC setObject:v5 forKeyedSubscript:@"SourceMACAddress"];

  return propertiesForXPC;
}

+ (id)diagnosticInfoForService:(id)service
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___TSDgPTPEthernetPort;
  serviceCopy = service;
  v4 = objc_msgSendSuper2(&v10, "diagnosticInfoForService:", serviceCopy);
  v5 = [NSNumber numberWithInt:1];
  [v4 setObject:v5 forKeyedSubscript:@"PortType"];

  v6 = [serviceCopy iodPropertyForKey:@"SourceMACAddress"];

  if (v6)
  {
    bytes = [v6 bytes];
    v8 = [NSString stringWithFormat:@"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5], v10.receiver, v10.super_class];
    [v4 setObject:v8 forKeyedSubscript:@"SourceAddress"];
  }

  [v4 setObject:@"01:80:c2:00:00:0e" forKeyedSubscript:@"DestinationAddress"];

  return v4;
}

@end