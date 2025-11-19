@interface W5AWDLStatus
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAWDLStatus:(id)a3;
- (W5AWDLStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation W5AWDLStatus

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5AWDLStatus;
  [(W5AWDLStatus *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"MAC Address: %@ (hw=%@)\n", self->_macAddress, self->_hardwareMACAddress];
  [v3 appendFormat:@"Interface Name: %@\n", self->_interfaceName];
  if (self->_power)
  {
    v4 = "On";
  }

  else
  {
    v4 = "Off";
  }

  [v3 appendFormat:@"Power: %s\n", v4];
  awdlSyncEnabled = self->_awdlSyncEnabled;
  if (awdlSyncEnabled)
  {
    if (*([(NSData *)awdlSyncEnabled bytes]+ 8))
    {
      v6 = "ENABLED";
    }

    else
    {
      v6 = "DISABLED";
    }
  }

  else
  {
    v6 = "n/a";
  }

  [v3 appendFormat:@"AWDL is %s\n", v6];
  [v3 appendFormat:@"IPv6 Address: %@\n", -[NSArray firstObject](self->_ipv6Addresses, "firstObject")];
  if ([(NSArray *)self->_ipv6Addresses count]>= 2)
  {
    v7 = 1;
    do
    {
      [v3 appendFormat:@"              %@\n", -[NSArray objectAtIndexedSubscript:](self->_ipv6Addresses, "objectAtIndexedSubscript:", v7++)];
    }

    while (v7 < [(NSArray *)self->_ipv6Addresses count]);
  }

  awdlStrategy = self->_awdlStrategy;
  if (awdlStrategy)
  {
    v9 = W5DescriptionForAWDLScheduleState(*([(NSData *)awdlStrategy bytes]+ 8));
  }

  else
  {
    v9 = @"n/a";
  }

  [v3 appendFormat:@"Schedule State: %@\n", v9];
  awdlSyncChannelSequence = self->_awdlSyncChannelSequence;
  if (awdlSyncChannelSequence)
  {
    v11 = W5DebugDescriptionForAWDLSyncChannelSequence([(NSData *)awdlSyncChannelSequence bytes]);
  }

  else
  {
    v11 = @"n/a";
  }

  [v3 appendFormat:@"Channel Sequence: %@\n", v11];
  awdlOpMode = self->_awdlOpMode;
  if (awdlOpMode)
  {
    if (*([(NSData *)awdlOpMode bytes]+ 4) <= 2u)
    {
      v13 = off_279ECE920[*([(NSData *)self->_awdlOpMode bytes]+ 4)];
    }

    else
    {
      v13 = "UNKNOWN";
    }
  }

  else
  {
    v13 = "n/a";
  }

  [v3 appendFormat:@"Op Mode: %s\n", v13];
  if (self->_isAWDLRealTimeMode)
  {
    v14 = "Yes";
  }

  else
  {
    v14 = "No";
  }

  [v3 appendFormat:@"Real Time Mode: %s\n", v14];
  awdlSyncState = self->_awdlSyncState;
  if (awdlSyncState)
  {
    v16 = W5DescriptionForAWDLSyncState([(NSData *)awdlSyncState bytes]);
  }

  else
  {
    v16 = @"n/a";
  }

  [v3 appendFormat:@"Sync State: %@\n", v16];
  awdlSyncParameters = self->_awdlSyncParameters;
  if (awdlSyncParameters)
  {
    v18 = W5DescriptionForAWDLSyncParameters([(NSData *)awdlSyncParameters bytes]);
  }

  else
  {
    v18 = @"n/a";
  }

  [v3 appendFormat:@"Sync Params:\n%@", v18];
  awdlMasterChannel = self->_awdlMasterChannel;
  if (awdlMasterChannel)
  {
    v20 = *([(NSData *)awdlMasterChannel bytes]+ 4);
  }

  else
  {
    v20 = 0;
  }

  [v3 appendFormat:@"Master Channel: %u\n", v20];
  awdlSecondaryMasterChannel = self->_awdlSecondaryMasterChannel;
  if (awdlSecondaryMasterChannel)
  {
    v22 = *([(NSData *)awdlSecondaryMasterChannel bytes]+ 4);
  }

  else
  {
    v22 = 0;
  }

  [v3 appendFormat:@"Secondary Master Channel: %u\n", v22];
  awdlElectionParameters = self->_awdlElectionParameters;
  if (awdlElectionParameters)
  {
    v24 = W5DescriptionForAWDLElectionParameters([(NSData *)awdlElectionParameters bytes]);
  }

  else
  {
    v24 = @"n/a";
  }

  [v3 appendFormat:@"Election Params:\n%@", v24];
  [v3 appendFormat:@"AirDrop Discoverable Mode: %@\n", W5DescriptionForAirDropDiscoverableMode(self->_airDropDiscoverableMode)];
  awdlPeerDatabase = self->_awdlPeerDatabase;
  if (awdlPeerDatabase)
  {
    [v3 appendFormat:@"Peer DB Count: %ld peers\n", *(-[NSData bytes](awdlPeerDatabase, "bytes") + 4)];
  }

  awdlSidecarDiagnostics = self->_awdlSidecarDiagnostics;
  if (awdlSidecarDiagnostics)
  {
    [v3 appendFormat:@"Sidecar Tx Latency: %ld ms\n", *(-[NSData bytes](awdlSidecarDiagnostics, "bytes") + 4)];
  }

  v27 = [v3 copy];

  return v27;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v5.receiver = self;
  v5.super_class = W5AWDLStatus;
  if (-[W5AWDLStatus conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([a3 isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToAWDLStatus:(id)a3
{
  macAddress = self->_macAddress;
  if (!macAddress)
  {
    if (![a3 macAddress])
    {
      goto LABEL_5;
    }

    macAddress = self->_macAddress;
  }

  if (!-[NSString isEqual:](macAddress, "isEqual:", [a3 macAddress]))
  {
    return 0;
  }

LABEL_5:
  hardwareMACAddress = self->_hardwareMACAddress;
  if (!hardwareMACAddress)
  {
    if (![a3 hardwareMACAddress])
    {
      goto LABEL_9;
    }

    hardwareMACAddress = self->_hardwareMACAddress;
  }

  if (!-[NSString isEqual:](hardwareMACAddress, "isEqual:", [a3 hardwareMACAddress]))
  {
    return 0;
  }

LABEL_9:
  interfaceName = self->_interfaceName;
  if (!interfaceName)
  {
    if (![a3 interfaceName])
    {
      goto LABEL_13;
    }

    interfaceName = self->_interfaceName;
  }

  if (!-[NSString isEqual:](interfaceName, "isEqual:", [a3 interfaceName]))
  {
    return 0;
  }

LABEL_13:
  power = self->_power;
  if (power != [a3 power])
  {
    return 0;
  }

  ipv6Addresses = self->_ipv6Addresses;
  if (ipv6Addresses)
  {
    goto LABEL_17;
  }

  if ([a3 ipv6Addresses])
  {
    ipv6Addresses = self->_ipv6Addresses;
LABEL_17:
    if (-[NSArray isEqual:](ipv6Addresses, "isEqual:", [a3 ipv6Addresses]))
    {
      goto LABEL_18;
    }

    return 0;
  }

LABEL_18:
  isAWDLRealTimeMode = self->_isAWDLRealTimeMode;
  if (isAWDLRealTimeMode != [a3 isAWDLRealTimeMode])
  {
    return 0;
  }

  airDropDiscoverableMode = self->_airDropDiscoverableMode;
  if (airDropDiscoverableMode != [a3 airDropDiscoverableMode] || !-[NSData isEqualToData:](self->_awdlSyncEnabled, "isEqualToData:", objc_msgSend(a3, "awdlSyncEnabled")) || !-[NSData isEqualToData:](self->_awdlOpMode, "isEqualToData:", objc_msgSend(a3, "awdlOpMode")) || !-[NSData isEqualToData:](self->_awdlSyncState, "isEqualToData:", objc_msgSend(a3, "awdlSyncState")) || !-[NSData isEqualToData:](self->_awdlStrategy, "isEqualToData:", objc_msgSend(a3, "awdlStrategy")) || !-[NSData isEqualToData:](self->_awdlMasterChannel, "isEqualToData:", objc_msgSend(a3, "awdlMasterChannel")) || !-[NSData isEqualToData:](self->_awdlSecondaryMasterChannel, "isEqualToData:", objc_msgSend(a3, "awdlSecondaryMasterChannel")) || !-[NSData isEqualToData:](self->_awdlSyncParameters, "isEqualToData:", objc_msgSend(a3, "awdlSyncParameters")) || !-[NSData isEqualToData:](self->_awdlElectionParameters, "isEqualToData:", objc_msgSend(a3, "awdlElectionParameters")) || !-[NSData isEqualToData:](self->_awdlSyncChannelSequence, "isEqualToData:", objc_msgSend(a3, "awdlSyncChannelSequence")) || !-[NSData isEqualToData:](self->_awdlPeerDatabase, "isEqualToData:", objc_msgSend(a3, "awdlPeerDatabase")))
  {
    return 0;
  }

  awdlSidecarDiagnostics = self->_awdlSidecarDiagnostics;
  v13 = [a3 awdlSidecarDiagnostics];

  return [(NSData *)awdlSidecarDiagnostics isEqualToData:v13];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5AWDLStatus *)self isEqualToAWDLStatus:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5AWDLStatus allocWithZone:?]];
  [(W5AWDLStatus *)v4 setMacAddress:self->_macAddress];
  [(W5AWDLStatus *)v4 setHardwareMACAddress:self->_hardwareMACAddress];
  [(W5AWDLStatus *)v4 setInterfaceName:self->_interfaceName];
  [(W5AWDLStatus *)v4 setIpv6Addresses:self->_ipv6Addresses];
  [(W5AWDLStatus *)v4 setPower:self->_power];
  [(W5AWDLStatus *)v4 setAwdlSecondaryMasterChannel:self->_awdlSecondaryMasterChannel];
  [(W5AWDLStatus *)v4 setAwdlOpMode:self->_awdlOpMode];
  [(W5AWDLStatus *)v4 setAwdlMasterChannel:self->_awdlMasterChannel];
  [(W5AWDLStatus *)v4 setAwdlElectionParameters:self->_awdlElectionParameters];
  [(W5AWDLStatus *)v4 setAwdlSyncState:self->_awdlSyncState];
  [(W5AWDLStatus *)v4 setAwdlSyncParameters:self->_awdlSyncParameters];
  [(W5AWDLStatus *)v4 setAwdlSyncEnabled:self->_awdlSyncEnabled];
  [(W5AWDLStatus *)v4 setAwdlSyncChannelSequence:self->_awdlSyncChannelSequence];
  [(W5AWDLStatus *)v4 setAwdlStrategy:self->_awdlStrategy];
  [(W5AWDLStatus *)v4 setIsAWDLRealTimeMode:self->_isAWDLRealTimeMode];
  [(W5AWDLStatus *)v4 setAirDropDiscoverableMode:self->_airDropDiscoverableMode];
  [(W5AWDLStatus *)v4 setAwdlPeerDatabase:self->_awdlPeerDatabase];
  [(W5AWDLStatus *)v4 setAwdlSidecarDiagnostics:self->_awdlSidecarDiagnostics];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_macAddress forKey:@"_macAddress"];
  [a3 encodeObject:self->_hardwareMACAddress forKey:@"_hardwareMACAddress"];
  [a3 encodeObject:self->_interfaceName forKey:@"_interfaceName"];
  [a3 encodeObject:self->_ipv6Addresses forKey:@"_ipv6Addresses"];
  [a3 encodeBool:self->_power forKey:@"_power"];
  [a3 encodeBool:self->_isAWDLRealTimeMode forKey:@"_isAWDLRealTimeMode"];
  [a3 encodeObject:self->_awdlSyncState forKey:@"_awdlSyncState"];
  [a3 encodeObject:self->_awdlSyncEnabled forKey:@"_awdlSyncEnabled"];
  [a3 encodeObject:self->_awdlSyncChannelSequence forKey:@"_awdlSyncChannelSequence"];
  [a3 encodeObject:self->_awdlStrategy forKey:@"_awdlStrategy"];
  [a3 encodeObject:self->_awdlElectionParameters forKey:@"_awdlElectionParameters"];
  [a3 encodeObject:self->_awdlMasterChannel forKey:@"_awdlMasterChannel"];
  [a3 encodeObject:self->_awdlSecondaryMasterChannel forKey:@"_awdlSecondaryMasterChannel"];
  [a3 encodeObject:self->_awdlOpMode forKey:@"_awdlOpMode"];
  [a3 encodeObject:self->_awdlSyncParameters forKey:@"_awdlSyncParameters"];
  [a3 encodeObject:self->_awdlPeerDatabase forKey:@"_awdlPeerDatabase"];
  [a3 encodeInteger:self->_airDropDiscoverableMode forKey:@"_airDropDiscoverableMode"];
  awdlSidecarDiagnostics = self->_awdlSidecarDiagnostics;

  [a3 encodeObject:awdlSidecarDiagnostics forKey:@"_awdlSidecarDiagnostics"];
}

- (W5AWDLStatus)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = W5AWDLStatus;
  v4 = [(W5AWDLStatus *)&v8 init];
  if (v4)
  {
    v4->_macAddress = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_macAddress", "copy"}];
    v4->_hardwareMACAddress = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_hardwareMACAddress", "copy"}];
    v4->_interfaceName = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_interfaceName", "copy"}];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_ipv6Addresses = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"_ipv6Addresses", "copy"}];
    v4->_power = [a3 decodeBoolForKey:@"_power"];
    v4->_isAWDLRealTimeMode = [a3 decodeBoolForKey:@"_isAWDLRealTimeMode"];
    v4->_awdlSyncState = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_awdlSyncState", "copy"}];
    v4->_awdlSyncEnabled = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_awdlSyncEnabled", "copy"}];
    v4->_awdlSyncChannelSequence = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_awdlSyncChannelSequence", "copy"}];
    v4->_awdlStrategy = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_awdlStrategy", "copy"}];
    v4->_awdlElectionParameters = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_awdlElectionParameters", "copy"}];
    v4->_awdlMasterChannel = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_awdlMasterChannel", "copy"}];
    v4->_awdlSecondaryMasterChannel = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_awdlSecondaryMasterChannel", "copy"}];
    v4->_awdlOpMode = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_awdlOpMode", "copy"}];
    v4->_awdlSyncParameters = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_awdlSyncParameters", "copy"}];
    v4->_awdlPeerDatabase = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_awdlPeerDatabase", "copy"}];
    v4->_airDropDiscoverableMode = [a3 decodeIntegerForKey:@"_airDropDiscoverableMode"];
    v4->_awdlSidecarDiagnostics = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_awdlSidecarDiagnostics", "copy"}];
  }

  return v4;
}

@end