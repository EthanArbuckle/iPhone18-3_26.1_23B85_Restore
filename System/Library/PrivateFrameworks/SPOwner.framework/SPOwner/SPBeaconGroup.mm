@interface SPBeaconGroup
- (BOOL)isEqual:(id)equal;
- (SPBeaconGroup)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconGroup

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SPBeaconGroup *)self identifier];
      identifier2 = [(SPBeaconGroup *)v5 identifier];

      v8 = [identifier isEqual:identifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(SPBeaconGroup *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setVersion:{-[SPBeaconGroup version](self, "version")}];
  identifier = [(SPBeaconGroup *)self identifier];
  v6 = [identifier copy];
  [v4 setIdentifier:v6];

  name = [(SPBeaconGroup *)self name];
  v8 = [name copy];
  [v4 setName:v8];

  beaconIdentifiers = [(SPBeaconGroup *)self beaconIdentifiers];
  v10 = [beaconIdentifiers copy];
  [v4 setBeaconIdentifiers:v10];

  macAddress = [(SPBeaconGroup *)self macAddress];
  v12 = [macAddress copy];
  [v4 setMacAddress:v12];

  [v4 setIsPairingComplete:{-[SPBeaconGroup isPairingComplete](self, "isPairingComplete")}];
  [v4 setIsClassicConnected:{-[SPBeaconGroup isClassicConnected](self, "isClassicConnected")}];
  [v4 setIsConnected:{-[SPBeaconGroup isConnected](self, "isConnected")}];
  [v4 setIsFindMyNetworkEnabled:{-[SPBeaconGroup isFindMyNetworkEnabled](self, "isFindMyNetworkEnabled")}];
  [v4 setStatus:{-[SPBeaconGroup status](self, "status")}];
  [v4 setClassification:{-[SPBeaconGroup classification](self, "classification")}];
  beaconMap = [(SPBeaconGroup *)self beaconMap];
  v14 = [beaconMap copy];
  [v4 setBeaconMap:v14];

  taskInformation = [(SPBeaconGroup *)self taskInformation];
  v16 = [taskInformation copy];
  [v4 setTaskInformation:v16];

  lostModeInfo = [(SPBeaconGroup *)self lostModeInfo];
  v18 = [lostModeInfo copy];
  [v4 setLostModeInfo:v18];

  multipartStatus = [(SPBeaconGroup *)self multipartStatus];
  v20 = [multipartStatus copy];
  [v4 setMultipartStatus:v20];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInteger:version forKey:@"version"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_beaconIdentifiers forKey:@"beaconIdentifiers"];
  [coderCopy encodeObject:self->_macAddress forKey:@"macAddress"];
  [coderCopy encodeBool:self->_isPairingComplete forKey:@"isPairingComplete"];
  [coderCopy encodeBool:self->_isClassicConnected forKey:@"isClassicConnected"];
  [coderCopy encodeBool:self->_isConnected forKey:@"isConnected"];
  [coderCopy encodeBool:self->_isFindMyNetworkEnabled forKey:@"isFindMyNetworkEnabled"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeInteger:self->_classification forKey:@"classification"];
  [coderCopy encodeObject:self->_beaconMap forKey:@"beaconMap"];
  [coderCopy encodeObject:self->_taskInformation forKey:@"taskInformation"];
  [coderCopy encodeObject:self->_lostModeInfo forKey:@"lostModeInfo"];
  [coderCopy encodeObject:self->_multipartStatus forKey:@"multipartStatus"];
}

- (SPBeaconGroup)initWithCoder:(id)coder
{
  v38[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  self->_version = [coderCopy decodeIntegerForKey:@"version"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v7;

  v9 = MEMORY[0x277CBEB98];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"beaconIdentifiers"];
  beaconIdentifiers = self->_beaconIdentifiers;
  self->_beaconIdentifiers = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"macAddress"];
  macAddress = self->_macAddress;
  self->_macAddress = v14;

  self->_isPairingComplete = [coderCopy decodeBoolForKey:@"isPairingComplete"];
  self->_isClassicConnected = [coderCopy decodeBoolForKey:@"isClassicConnected"];
  self->_isConnected = [coderCopy decodeBoolForKey:@"isConnected"];
  self->_isFindMyNetworkEnabled = [coderCopy decodeBoolForKey:@"isFindMyNetworkEnabled"];
  self->_status = [coderCopy decodeIntegerForKey:@"status"];
  self->_classification = [coderCopy decodeIntegerForKey:@"classification"];
  v16 = MEMORY[0x277CBEB98];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v37[2] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
  v18 = [v16 setWithArray:v17];
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"beaconMap"];
  beaconMap = self->_beaconMap;
  self->_beaconMap = v19;

  v21 = MEMORY[0x277CBEB98];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v36[2] = objc_opt_class();
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
  v23 = [v21 setWithArray:v22];
  v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"taskInformation"];
  taskInformation = self->_taskInformation;
  self->_taskInformation = v24;

  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lostModeInfo"];
  lostModeInfo = self->_lostModeInfo;
  self->_lostModeInfo = v26;

  v28 = MEMORY[0x277CBEB98];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v30 = [v28 setWithArray:v29];
  v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"multipartStatus"];

  multipartStatus = self->_multipartStatus;
  self->_multipartStatus = v31;

  v33 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(SPBeaconGroup *)self identifier];
  name = [(SPBeaconGroup *)self name];
  v7 = [v3 stringWithFormat:@"<%@: %p %@ %@>", v4, self, identifier, name];

  return v7;
}

@end