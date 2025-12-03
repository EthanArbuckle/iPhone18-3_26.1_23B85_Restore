@interface TSDgPTPUnicastUDPv6PtPPort
+ (id)diagnosticInfoForService:(id)service;
+ (id)iokitMatchingDictionaryForInterfaceName:(id)name andIPv6Address:(char *)address;
- (id)_destinationAddressString;
- (id)_destinationIPv6Address;
- (id)_sourceAddressString;
- (id)propertiesForXPC;
@end

@implementation TSDgPTPUnicastUDPv6PtPPort

+ (id)iokitMatchingDictionaryForInterfaceName:(id)name andIPv6Address:(char *)address
{
  v19[0] = @"IOTimeSyncUnicastUDPv6PtPPort";
  v18[0] = @"IOProviderClass";
  v18[1] = @"IOParentMatch";
  nameCopy = name;
  v16[0] = @"IOProviderClass";
  v16[1] = @"IOPropertyMatch";
  v17[0] = @"IOTimeSyncInterfaceAdapter";
  v14 = @"InterfaceName";
  nameCopy2 = name;
  v6 = [NSDictionary dictionaryWithObjects:&nameCopy forKeys:&v14 count:1];
  v17[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[1] = v7;
  v18[2] = @"IOPropertyMatch";
  v12 = @"DestinationIPAddress";
  v8 = [NSData dataWithBytes:address length:16];
  v13 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v19[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];

  return v10;
}

- (id)_sourceAddressString
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastUDPv6PtPPort;
  _sourceAddressString = [(TSDgPTPNetworkPort *)&v9 _sourceAddressString];
  service = [(TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"SourceIPAddress"];

  if (v5)
  {
    bytes = [v5 bytes];
    v7 = [NSString stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5], bytes[6], bytes[7], bytes[8], bytes[9], bytes[10], bytes[11], bytes[12], bytes[13], bytes[14], bytes[15]];

    _sourceAddressString = v7;
  }

  return _sourceAddressString;
}

- (id)_destinationAddressString
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastUDPv6PtPPort;
  _destinationAddressString = [(TSDgPTPNetworkPort *)&v9 _destinationAddressString];
  service = [(TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:@"DestinationIPAddress"];

  if (v5)
  {
    bytes = [v5 bytes];
    v7 = [NSString stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5], bytes[6], bytes[7], bytes[8], bytes[9], bytes[10], bytes[11], bytes[12], bytes[13], bytes[14], bytes[15]];

    _destinationAddressString = v7;
  }

  return _destinationAddressString;
}

- (id)_destinationIPv6Address
{
  service = [(TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:@"DestinationIPAddress"];

  return v3;
}

- (id)propertiesForXPC
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastUDPv6PtPPort;
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
  v15.super_class = &OBJC_METACLASS___TSDgPTPUnicastUDPv6PtPPort;
  v5 = objc_msgSendSuper2(&v15, "diagnosticInfoForService:", serviceCopy);
  v6 = [NSNumber numberWithInt:4];
  [v5 setObject:v6 forKeyedSubscript:@"PortType"];

  v7 = [serviceCopy iodPropertyForKey:@"SourceIPAddress"];
  v8 = v7;
  if (v7)
  {
    bytes = [v7 bytes];
    v10 = [NSString stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5], bytes[6], bytes[7], bytes[8], bytes[9], bytes[10], bytes[11], bytes[12], bytes[13], bytes[14], bytes[15]];
    [v5 setObject:v10 forKeyedSubscript:@"SourceAddress"];
  }

  v11 = [serviceCopy iodPropertyForKey:@"DestinationIPAddress"];

  if (v11)
  {
    bytes2 = [v11 bytes];
    v13 = [NSString stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *bytes2, bytes2[1], bytes2[2], bytes2[3], bytes2[4], bytes2[5], bytes2[6], bytes2[7], bytes2[8], bytes2[9], bytes2[10], bytes2[11], bytes2[12], bytes2[13], bytes2[14], bytes2[15]];
    [v5 setObject:v13 forKeyedSubscript:@"DestinationAddress"];
  }

  return v5;
}

@end