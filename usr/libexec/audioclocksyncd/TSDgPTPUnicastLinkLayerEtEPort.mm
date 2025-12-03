@interface TSDgPTPUnicastLinkLayerEtEPort
+ (id)diagnosticInfoForService:(id)service;
- (id)_destinationAddressString;
- (id)_destinationMACAddress;
- (id)_sourceAddressString;
- (id)propertiesForXPC;
@end

@implementation TSDgPTPUnicastLinkLayerEtEPort

- (id)_sourceAddressString
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastLinkLayerEtEPort;
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

- (id)_destinationAddressString
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastLinkLayerEtEPort;
  _destinationAddressString = [(TSDgPTPNetworkPort *)&v9 _destinationAddressString];
  service = [(TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"DestinationMACAddress"];

  if (v5)
  {
    bytes = [v5 bytes];
    v7 = [NSString stringWithFormat:@"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5]];

    _destinationAddressString = v7;
  }

  return _destinationAddressString;
}

- (id)_destinationMACAddress
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"DestinationMACAddress"];

  return v3;
}

- (id)propertiesForXPC
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastLinkLayerEtEPort;
  propertiesForXPC = [(TSDgPTPNetworkPort *)&v9 propertiesForXPC];
  service = [(TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"SourceMACAddress"];
  [propertiesForXPC setObject:v5 forKeyedSubscript:@"SourceMACAddress"];

  service2 = [(TSDgPTPPort *)self service];
  v7 = [service2 iodPropertyForKey:@"DestinationMACAddress"];
  [propertiesForXPC setObject:v7 forKeyedSubscript:@"DestinationMACAddress"];

  return propertiesForXPC;
}

+ (id)diagnosticInfoForService:(id)service
{
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___TSDgPTPUnicastLinkLayerEtEPort;
  v5 = objc_msgSendSuper2(&v15, "diagnosticInfoForService:", serviceCopy);
  v6 = [NSNumber numberWithInt:5];
  [v5 setObject:v6 forKeyedSubscript:@"PortType"];

  v7 = [serviceCopy iodPropertyForKey:@"SourceMACAddress"];
  v8 = v7;
  if (v7)
  {
    bytes = [v7 bytes];
    v10 = [NSString stringWithFormat:@"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5]];
    [v5 setObject:v10 forKeyedSubscript:@"SourceAddress"];
  }

  v11 = [serviceCopy iodPropertyForKey:@"DestinationMACAddress"];

  if (v11)
  {
    bytes2 = [v11 bytes];
    v13 = [NSString stringWithFormat:@"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", *bytes2, bytes2[1], bytes2[2], bytes2[3], bytes2[4], bytes2[5]];
    [v5 setObject:v13 forKeyedSubscript:@"DestinationAddress"];
  }

  return v5;
}

@end