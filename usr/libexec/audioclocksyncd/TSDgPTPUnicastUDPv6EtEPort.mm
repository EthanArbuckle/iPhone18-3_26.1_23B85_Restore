@interface TSDgPTPUnicastUDPv6EtEPort
+ (id)diagnosticInfoForService:(id)a3;
- (id)_destinationAddressString;
- (id)_destinationIPv6Address;
- (id)_sourceAddressString;
- (id)propertiesForXPC;
@end

@implementation TSDgPTPUnicastUDPv6EtEPort

- (id)_sourceAddressString
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastUDPv6EtEPort;
  v3 = [(TSDgPTPNetworkPort *)&v9 _sourceAddressString];
  v4 = [(TSDgPTPPort *)self service];
  v5 = [v4 iodPropertyForKey:@"SourceIPAddress"];

  if (v5)
  {
    v6 = [v5 bytes];
    v7 = [NSString stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *v6, v6[1], v6[2], v6[3], v6[4], v6[5], v6[6], v6[7], v6[8], v6[9], v6[10], v6[11], v6[12], v6[13], v6[14], v6[15]];

    v3 = v7;
  }

  return v3;
}

- (id)_destinationAddressString
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastUDPv6EtEPort;
  v3 = [(TSDgPTPNetworkPort *)&v9 _destinationAddressString];
  v4 = [(TSDgPTPPort *)self service];
  v5 = [v4 iodPropertyForKey:@"DestinationIPAddress"];

  if (v5)
  {
    v6 = [v5 bytes];
    v7 = [NSString stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *v6, v6[1], v6[2], v6[3], v6[4], v6[5], v6[6], v6[7], v6[8], v6[9], v6[10], v6[11], v6[12], v6[13], v6[14], v6[15]];

    v3 = v7;
  }

  return v3;
}

- (id)_destinationIPv6Address
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"DestinationIPAddress"];

  return v3;
}

- (id)propertiesForXPC
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastUDPv6EtEPort;
  v3 = [(TSDgPTPNetworkPort *)&v9 propertiesForXPC];
  v4 = [(TSDgPTPPort *)self service];
  v5 = [v4 iodPropertyForKey:@"SourceIPAddress"];
  [v3 setObject:v5 forKeyedSubscript:@"SourceIPAddress"];

  v6 = [(TSDgPTPPort *)self service];
  v7 = [v6 iodPropertyForKey:@"DestinationIPAddress"];
  [v3 setObject:v7 forKeyedSubscript:@"DestinationIPAddress"];

  return v3;
}

+ (id)diagnosticInfoForService:(id)a3
{
  v4 = a3;
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___TSDgPTPUnicastUDPv6EtEPort;
  v5 = objc_msgSendSuper2(&v15, "diagnosticInfoForService:", v4);
  v6 = [NSNumber numberWithInt:7];
  [v5 setObject:v6 forKeyedSubscript:@"PortType"];

  v7 = [v4 iodPropertyForKey:@"SourceIPAddress"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 bytes];
    v10 = [NSString stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *v9, v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10], v9[11], v9[12], v9[13], v9[14], v9[15]];
    [v5 setObject:v10 forKeyedSubscript:@"SourceAddress"];
  }

  v11 = [v4 iodPropertyForKey:@"DestinationIPAddress"];

  if (v11)
  {
    v12 = [v11 bytes];
    v13 = [NSString stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *v12, v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15]];
    [v5 setObject:v13 forKeyedSubscript:@"DestinationAddress"];
  }

  return v5;
}

@end