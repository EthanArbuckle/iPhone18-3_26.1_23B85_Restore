@interface TSDgPTPUnicastLinkLayerEtEPort
+ (id)diagnosticInfoForService:(id)a3;
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
  v3 = [(TSDgPTPNetworkPort *)&v9 _sourceAddressString];
  v4 = [(TSDgPTPPort *)self service];
  v5 = [v4 iodPropertyForKey:@"SourceMACAddress"];

  if (v5)
  {
    v6 = [v5 bytes];
    v7 = [NSString stringWithFormat:@"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", *v6, v6[1], v6[2], v6[3], v6[4], v6[5]];

    v3 = v7;
  }

  return v3;
}

- (id)_destinationAddressString
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastLinkLayerEtEPort;
  v3 = [(TSDgPTPNetworkPort *)&v9 _destinationAddressString];
  v4 = [(TSDgPTPPort *)self service];
  v5 = [v4 iodPropertyForKey:@"DestinationMACAddress"];

  if (v5)
  {
    v6 = [v5 bytes];
    v7 = [NSString stringWithFormat:@"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", *v6, v6[1], v6[2], v6[3], v6[4], v6[5]];

    v3 = v7;
  }

  return v3;
}

- (id)_destinationMACAddress
{
  v2 = [(TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"DestinationMACAddress"];

  return v3;
}

- (id)propertiesForXPC
{
  v9.receiver = self;
  v9.super_class = TSDgPTPUnicastLinkLayerEtEPort;
  v3 = [(TSDgPTPNetworkPort *)&v9 propertiesForXPC];
  v4 = [(TSDgPTPPort *)self service];
  v5 = [v4 iodPropertyForKey:@"SourceMACAddress"];
  [v3 setObject:v5 forKeyedSubscript:@"SourceMACAddress"];

  v6 = [(TSDgPTPPort *)self service];
  v7 = [v6 iodPropertyForKey:@"DestinationMACAddress"];
  [v3 setObject:v7 forKeyedSubscript:@"DestinationMACAddress"];

  return v3;
}

+ (id)diagnosticInfoForService:(id)a3
{
  v4 = a3;
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___TSDgPTPUnicastLinkLayerEtEPort;
  v5 = objc_msgSendSuper2(&v15, "diagnosticInfoForService:", v4);
  v6 = [NSNumber numberWithInt:5];
  [v5 setObject:v6 forKeyedSubscript:@"PortType"];

  v7 = [v4 iodPropertyForKey:@"SourceMACAddress"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 bytes];
    v10 = [NSString stringWithFormat:@"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", *v9, v9[1], v9[2], v9[3], v9[4], v9[5]];
    [v5 setObject:v10 forKeyedSubscript:@"SourceAddress"];
  }

  v11 = [v4 iodPropertyForKey:@"DestinationMACAddress"];

  if (v11)
  {
    v12 = [v11 bytes];
    v13 = [NSString stringWithFormat:@"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx", *v12, v12[1], v12[2], v12[3], v12[4], v12[5]];
    [v5 setObject:v13 forKeyedSubscript:@"DestinationAddress"];
  }

  return v5;
}

@end