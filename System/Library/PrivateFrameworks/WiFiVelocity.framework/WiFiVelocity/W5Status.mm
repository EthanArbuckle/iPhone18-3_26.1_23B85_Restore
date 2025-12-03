@interface W5Status
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStatus:(id)status;
- (W5Status)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation W5Status

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5Status;
  [(W5Status *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"WiFi=>\n%@", self->_wifi];
  [v3 appendFormat:@"\nAWDL=>\n%@", self->_awdl];
  [v3 appendFormat:@"\nBluetooth=>\n%@", self->_bluetooth];
  [v3 appendFormat:@"\nNetwork=>\n%@", self->_network];
  [v3 appendFormat:@"\nPower=>\n%@", self->_power];
  [v3 appendFormat:@"\nDiagnostics Modes=>\n%@", self->_diagnosticsModes];
  [v3 appendFormat:@"\nLastHr Faults=>\n%@", self->_lastHrFaults];
  [v3 appendFormat:@"\nLastHr LinkTests=>\n%@", self->_lastHrLinkTests];
  [v3 appendFormat:@"\nLastHr Recoveries=>\n%@", self->_lastHrRecoveries];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v5.receiver = self;
  v5.super_class = W5Status;
  if (-[W5Status conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([protocol isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [protocol isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToStatus:(id)status
{
  wifi = self->_wifi;
  if (!wifi)
  {
    if (![status wifi])
    {
      goto LABEL_5;
    }

    wifi = self->_wifi;
  }

  v6 = -[W5WiFiStatus isEqual:](wifi, "isEqual:", [status wifi]);
  if (!v6)
  {
    return v6;
  }

LABEL_5:
  awdl = self->_awdl;
  if (!awdl)
  {
    if (![status awdl])
    {
      goto LABEL_9;
    }

    awdl = self->_awdl;
  }

  v6 = -[W5AWDLStatus isEqual:](awdl, "isEqual:", [status awdl]);
  if (!v6)
  {
    return v6;
  }

LABEL_9:
  bluetooth = self->_bluetooth;
  if (!bluetooth)
  {
    if (![status bluetooth])
    {
      goto LABEL_13;
    }

    bluetooth = self->_bluetooth;
  }

  v6 = -[W5BluetoothStatus isEqual:](bluetooth, "isEqual:", [status bluetooth]);
  if (!v6)
  {
    return v6;
  }

LABEL_13:
  network = self->_network;
  if (!network)
  {
    if (![status network])
    {
      goto LABEL_17;
    }

    network = self->_network;
  }

  v6 = -[W5NetworkStatus isEqual:](network, "isEqual:", [status network]);
  if (!v6)
  {
    return v6;
  }

LABEL_17:
  power = self->_power;
  if (!power)
  {
    if (![status power])
    {
      goto LABEL_21;
    }

    power = self->_power;
  }

  v6 = -[W5PowerStatus isEqual:](power, "isEqual:", [status power]);
  if (!v6)
  {
    return v6;
  }

LABEL_21:
  diagnosticsModes = self->_diagnosticsModes;
  if (!diagnosticsModes)
  {
    if (![status diagnosticsModes])
    {
      goto LABEL_25;
    }

    diagnosticsModes = self->_diagnosticsModes;
  }

  v6 = -[NSArray isEqual:](diagnosticsModes, "isEqual:", [status diagnosticsModes]);
  if (!v6)
  {
    return v6;
  }

LABEL_25:
  lastHrFaults = self->_lastHrFaults;
  if (!lastHrFaults)
  {
    if (![status lastHrFaults])
    {
      goto LABEL_29;
    }

    lastHrFaults = self->_lastHrFaults;
  }

  v6 = -[W5SummaryFaults isEqual:](lastHrFaults, "isEqual:", [status lastHrFaults]);
  if (!v6)
  {
    return v6;
  }

LABEL_29:
  lastHrLinkTests = self->_lastHrLinkTests;
  if (lastHrLinkTests)
  {
    goto LABEL_32;
  }

  if ([status lastHrLinkTests])
  {
    lastHrLinkTests = self->_lastHrLinkTests;
LABEL_32:
    v6 = -[W5SummaryLinkTests isEqual:](lastHrLinkTests, "isEqual:", [status lastHrLinkTests]);
    if (!v6)
    {
      return v6;
    }
  }

  lastHrRecoveries = self->_lastHrRecoveries;
  if (!lastHrRecoveries)
  {
    if (![status lastHrRecoveries])
    {
      LOBYTE(v6) = 1;
      return v6;
    }

    lastHrRecoveries = self->_lastHrRecoveries;
  }

  lastHrRecoveries = [status lastHrRecoveries];

  LOBYTE(v6) = [(W5SummaryRecoveries *)lastHrRecoveries isEqual:lastHrRecoveries];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5Status *)self isEqualToStatus:equal];
}

- (unint64_t)hash
{
  v3 = [(W5WiFiStatus *)self->_wifi hash];
  v4 = [(W5AWDLStatus *)self->_awdl hash]^ v3;
  v5 = [(W5BluetoothStatus *)self->_bluetooth hash];
  v6 = v4 ^ v5 ^ [(W5NetworkStatus *)self->_network hash];
  v7 = [(W5PowerStatus *)self->_power hash];
  v8 = v7 ^ [(NSArray *)self->_diagnosticsModes hash];
  v9 = v6 ^ v8 ^ [(W5SummaryFaults *)self->_lastHrFaults hash];
  v10 = [(W5SummaryLinkTests *)self->_lastHrLinkTests hash];
  return v9 ^ v10 ^ [(W5SummaryRecoveries *)self->_lastHrRecoveries hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5Status allocWithZone:?]];
  [(W5Status *)v4 setWifi:self->_wifi];
  [(W5Status *)v4 setAwdl:self->_awdl];
  [(W5Status *)v4 setBluetooth:self->_bluetooth];
  [(W5Status *)v4 setNetwork:self->_network];
  [(W5Status *)v4 setPower:self->_power];
  [(W5Status *)v4 setDiagnosticsModes:self->_diagnosticsModes];
  [(W5Status *)v4 setLastHrFaults:self->_lastHrFaults];
  [(W5Status *)v4 setLastHrLinkTests:self->_lastHrLinkTests];
  [(W5Status *)v4 setLastHrRecoveries:self->_lastHrRecoveries];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_wifi forKey:@"_wifi"];
  [coder encodeObject:self->_awdl forKey:@"_awdl"];
  [coder encodeObject:self->_bluetooth forKey:@"_bluetooth"];
  [coder encodeObject:self->_network forKey:@"_network"];
  [coder encodeObject:self->_power forKey:@"_power"];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCAAB0] forKey:{"archivedDataWithRootObject:requiringSecureCoding:error:", self->_diagnosticsModes, 1, 0), @"_diagnosticsModes"}];
  [coder encodeObject:self->_lastHrFaults forKey:@"_lastHrFaults"];
  [coder encodeObject:self->_lastHrLinkTests forKey:@"_lastHrLinkTests"];
  lastHrRecoveries = self->_lastHrRecoveries;

  [coder encodeObject:lastHrRecoveries forKey:@"_lastHrRecoveries"];
}

- (W5Status)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = W5Status;
  v4 = [(W5Status *)&v10 init];
  if (v4)
  {
    v4->_wifi = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_wifi", "copy"}];
    v4->_awdl = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_awdl", "copy"}];
    v4->_bluetooth = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_bluetooth", "copy"}];
    v4->_network = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_network", "copy"}];
    v4->_power = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_power", "copy"}];
    v5 = MEMORY[0x277CCAAC8];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v4->_diagnosticsModes = [objc_msgSend(v5 unarchivedObjectOfClasses:v8 fromData:objc_msgSend(coder error:{"decodeObjectOfClass:forKey:", objc_opt_class(), @"_diagnosticsModes", 0), "copy"}];
    v4->_lastHrFaults = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_lastHrFaults", "copy"}];
    v4->_lastHrLinkTests = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_lastHrLinkTests", "copy"}];
    v4->_lastHrRecoveries = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_lastHrRecoveries", "copy"}];
  }

  return v4;
}

@end