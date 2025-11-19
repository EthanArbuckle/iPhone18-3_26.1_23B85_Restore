@interface _TSF_TSDgPTPUnicastUDPv4EtEPort
+ (id)diagnosticInfoForService:(id)a3;
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
  v3 = [(_TSF_TSDgPTPNetworkPort *)&v9 _sourceAddressString];
  v4 = [(_TSF_TSDgPTPPort *)self service];
  v5 = [v4 iodPropertyForKey:@"SourceIPAddress"];

  if (v5)
  {
    v6 = [v5 unsignedIntValue];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u.%u.%u.%u", HIBYTE(v6), BYTE2(v6), BYTE1(v6), v6];

    v3 = v7;
  }

  return v3;
}

- (id)_destinationAddressString
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastUDPv4EtEPort;
  v3 = [(_TSF_TSDgPTPNetworkPort *)&v9 _destinationAddressString];
  v4 = [(_TSF_TSDgPTPPort *)self service];
  v5 = [v4 iodPropertyForKey:@"DestinationIPAddress"];

  if (v5)
  {
    v6 = [v5 unsignedIntValue];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u.%u.%u.%u", HIBYTE(v6), BYTE2(v6), BYTE1(v6), v6];

    v3 = v7;
  }

  return v3;
}

- (id)_destinationIPv4Address
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"DestinationIPAddress"];

  return v3;
}

- (id)propertiesForXPC
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastUDPv4EtEPort;
  v3 = [(_TSF_TSDgPTPNetworkPort *)&v9 propertiesForXPC];
  v4 = [(_TSF_TSDgPTPPort *)self service];
  v5 = [v4 iodPropertyForKey:@"SourceIPAddress"];
  [v3 setObject:v5 forKeyedSubscript:@"SourceIPAddress"];

  v6 = [(_TSF_TSDgPTPPort *)self service];
  v7 = [v6 iodPropertyForKey:@"DestinationIPAddress"];
  [v3 setObject:v7 forKeyedSubscript:@"DestinationIPAddress"];

  return v3;
}

+ (id)diagnosticInfoForService:(id)a3
{
  v4 = a3;
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS____TSF_TSDgPTPUnicastUDPv4EtEPort;
  v5 = objc_msgSendSuper2(&v15, sel_diagnosticInfoForService_, v4);
  v6 = [MEMORY[0x277CCABB0] numberWithInt:6];
  [v5 setObject:v6 forKeyedSubscript:@"PortType"];

  v7 = [v4 iodPropertyForKey:@"SourceIPAddress"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 unsignedIntValue];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u.%u.%u.%u", HIBYTE(v9), BYTE2(v9), BYTE1(v9), v9];
    [v5 setObject:v10 forKeyedSubscript:@"SourceAddress"];
  }

  v11 = [v4 iodPropertyForKey:@"DestinationIPAddress"];

  if (v11)
  {
    v12 = [v11 unsignedIntValue];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u.%u.%u.%u", HIBYTE(v12), BYTE2(v12), BYTE1(v12), v12];
    [v5 setObject:v13 forKeyedSubscript:@"DestinationAddress"];
  }

  return v5;
}

@end