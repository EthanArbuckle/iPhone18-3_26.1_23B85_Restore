@interface _TSF_TSDgPTPUnicastUDPv6PtPPort
+ (id)diagnosticInfoForService:(id)a3;
+ (id)iokitMatchingDictionaryForInterfaceName:(id)a3 andIPv6Address:(char *)a4;
- (id)_destinationAddressString;
- (id)_destinationIPv6Address;
- (id)_sourceAddressString;
- (id)propertiesForXPC;
@end

@implementation _TSF_TSDgPTPUnicastUDPv6PtPPort

+ (id)iokitMatchingDictionaryForInterfaceName:(id)a3 andIPv6Address:(char *)a4
{
  v21[3] = *MEMORY[0x277D85DE8];
  v21[0] = @"IOTimeSyncUnicastUDPv6PtPPort";
  v20[0] = @"IOProviderClass";
  v20[1] = @"IOParentMatch";
  v17 = a3;
  v18[0] = @"IOProviderClass";
  v18[1] = @"IOPropertyMatch";
  v19[0] = @"IOTimeSyncInterfaceAdapter";
  v16 = @"InterfaceName";
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[1] = v8;
  v20[2] = @"IOPropertyMatch";
  v14 = @"DestinationIPAddress";
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:a4 length:16];
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
  v3 = [(_TSF_TSDgPTPNetworkPort *)&v9 _sourceAddressString];
  v4 = [(_TSF_TSDgPTPPort *)self service];
  v5 = [v4 iodPropertyForKey:@"SourceIPAddress"];

  if (v5)
  {
    v6 = [v5 bytes];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *v6, v6[1], v6[2], v6[3], v6[4], v6[5], v6[6], v6[7], v6[8], v6[9], v6[10], v6[11], v6[12], v6[13], v6[14], v6[15]];

    v3 = v7;
  }

  return v3;
}

- (id)_destinationAddressString
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastUDPv6PtPPort;
  v3 = [(_TSF_TSDgPTPNetworkPort *)&v9 _destinationAddressString];
  v4 = [(_TSF_TSDgPTPPort *)self service];
  v5 = [v4 iodPropertyForKey:@"DestinationIPAddress"];

  if (v5)
  {
    v6 = [v5 bytes];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *v6, v6[1], v6[2], v6[3], v6[4], v6[5], v6[6], v6[7], v6[8], v6[9], v6[10], v6[11], v6[12], v6[13], v6[14], v6[15]];

    v3 = v7;
  }

  return v3;
}

- (id)_destinationIPv6Address
{
  v2 = [(_TSF_TSDgPTPPort *)self service];
  v3 = [v2 iodPropertyForKey:@"DestinationIPAddress"];

  return v3;
}

- (id)propertiesForXPC
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastUDPv6PtPPort;
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
  v15.super_class = &OBJC_METACLASS____TSF_TSDgPTPUnicastUDPv6PtPPort;
  v5 = objc_msgSendSuper2(&v15, sel_diagnosticInfoForService_, v4);
  v6 = [MEMORY[0x277CCABB0] numberWithInt:4];
  [v5 setObject:v6 forKeyedSubscript:@"PortType"];

  v7 = [v4 iodPropertyForKey:@"SourceIPAddress"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 bytes];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *v9, v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10], v9[11], v9[12], v9[13], v9[14], v9[15]];
    [v5 setObject:v10 forKeyedSubscript:@"SourceAddress"];
  }

  v11 = [v4 iodPropertyForKey:@"DestinationIPAddress"];

  if (v11)
  {
    v12 = [v11 bytes];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x", *v12, v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15]];
    [v5 setObject:v13 forKeyedSubscript:@"DestinationAddress"];
  }

  return v5;
}

@end