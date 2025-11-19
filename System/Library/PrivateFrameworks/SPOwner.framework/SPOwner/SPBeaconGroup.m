@interface SPBeaconGroup
- (BOOL)isEqual:(id)a3;
- (SPBeaconGroup)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconGroup

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPBeaconGroup *)self identifier];
      v7 = [(SPBeaconGroup *)v5 identifier];

      v8 = [v6 isEqual:v7];
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
  v2 = [(SPBeaconGroup *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setVersion:{-[SPBeaconGroup version](self, "version")}];
  v5 = [(SPBeaconGroup *)self identifier];
  v6 = [v5 copy];
  [v4 setIdentifier:v6];

  v7 = [(SPBeaconGroup *)self name];
  v8 = [v7 copy];
  [v4 setName:v8];

  v9 = [(SPBeaconGroup *)self beaconIdentifiers];
  v10 = [v9 copy];
  [v4 setBeaconIdentifiers:v10];

  v11 = [(SPBeaconGroup *)self macAddress];
  v12 = [v11 copy];
  [v4 setMacAddress:v12];

  [v4 setIsPairingComplete:{-[SPBeaconGroup isPairingComplete](self, "isPairingComplete")}];
  [v4 setIsClassicConnected:{-[SPBeaconGroup isClassicConnected](self, "isClassicConnected")}];
  [v4 setIsConnected:{-[SPBeaconGroup isConnected](self, "isConnected")}];
  [v4 setIsFindMyNetworkEnabled:{-[SPBeaconGroup isFindMyNetworkEnabled](self, "isFindMyNetworkEnabled")}];
  [v4 setStatus:{-[SPBeaconGroup status](self, "status")}];
  [v4 setClassification:{-[SPBeaconGroup classification](self, "classification")}];
  v13 = [(SPBeaconGroup *)self beaconMap];
  v14 = [v13 copy];
  [v4 setBeaconMap:v14];

  v15 = [(SPBeaconGroup *)self taskInformation];
  v16 = [v15 copy];
  [v4 setTaskInformation:v16];

  v17 = [(SPBeaconGroup *)self lostModeInfo];
  v18 = [v17 copy];
  [v4 setLostModeInfo:v18];

  v19 = [(SPBeaconGroup *)self multipartStatus];
  v20 = [v19 copy];
  [v4 setMultipartStatus:v20];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInteger:version forKey:@"version"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_beaconIdentifiers forKey:@"beaconIdentifiers"];
  [v5 encodeObject:self->_macAddress forKey:@"macAddress"];
  [v5 encodeBool:self->_isPairingComplete forKey:@"isPairingComplete"];
  [v5 encodeBool:self->_isClassicConnected forKey:@"isClassicConnected"];
  [v5 encodeBool:self->_isConnected forKey:@"isConnected"];
  [v5 encodeBool:self->_isFindMyNetworkEnabled forKey:@"isFindMyNetworkEnabled"];
  [v5 encodeInteger:self->_status forKey:@"status"];
  [v5 encodeInteger:self->_classification forKey:@"classification"];
  [v5 encodeObject:self->_beaconMap forKey:@"beaconMap"];
  [v5 encodeObject:self->_taskInformation forKey:@"taskInformation"];
  [v5 encodeObject:self->_lostModeInfo forKey:@"lostModeInfo"];
  [v5 encodeObject:self->_multipartStatus forKey:@"multipartStatus"];
}

- (SPBeaconGroup)initWithCoder:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_version = [v4 decodeIntegerForKey:@"version"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v7;

  v9 = MEMORY[0x277CBEB98];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v11 = [v9 setWithArray:v10];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"beaconIdentifiers"];
  beaconIdentifiers = self->_beaconIdentifiers;
  self->_beaconIdentifiers = v12;

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"macAddress"];
  macAddress = self->_macAddress;
  self->_macAddress = v14;

  self->_isPairingComplete = [v4 decodeBoolForKey:@"isPairingComplete"];
  self->_isClassicConnected = [v4 decodeBoolForKey:@"isClassicConnected"];
  self->_isConnected = [v4 decodeBoolForKey:@"isConnected"];
  self->_isFindMyNetworkEnabled = [v4 decodeBoolForKey:@"isFindMyNetworkEnabled"];
  self->_status = [v4 decodeIntegerForKey:@"status"];
  self->_classification = [v4 decodeIntegerForKey:@"classification"];
  v16 = MEMORY[0x277CBEB98];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v37[2] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
  v18 = [v16 setWithArray:v17];
  v19 = [v4 decodeObjectOfClasses:v18 forKey:@"beaconMap"];
  beaconMap = self->_beaconMap;
  self->_beaconMap = v19;

  v21 = MEMORY[0x277CBEB98];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v36[2] = objc_opt_class();
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
  v23 = [v21 setWithArray:v22];
  v24 = [v4 decodeObjectOfClasses:v23 forKey:@"taskInformation"];
  taskInformation = self->_taskInformation;
  self->_taskInformation = v24;

  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lostModeInfo"];
  lostModeInfo = self->_lostModeInfo;
  self->_lostModeInfo = v26;

  v28 = MEMORY[0x277CBEB98];
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v30 = [v28 setWithArray:v29];
  v31 = [v4 decodeObjectOfClasses:v30 forKey:@"multipartStatus"];

  multipartStatus = self->_multipartStatus;
  self->_multipartStatus = v31;

  v33 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPBeaconGroup *)self identifier];
  v6 = [(SPBeaconGroup *)self name];
  v7 = [v3 stringWithFormat:@"<%@: %p %@ %@>", v4, self, v5, v6];

  return v7;
}

@end