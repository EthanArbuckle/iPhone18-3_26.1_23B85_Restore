@interface SPUnknownBeacon
- (BOOL)isEqual:(id)a3;
- (SPUnknownBeacon)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPUnknownBeacon

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
      v6 = [(SPUnknownBeacon *)self identifier];
      v7 = [(SPUnknownBeacon *)v5 identifier];

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
  v2 = [(SPUnknownBeacon *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPUnknownBeacon *)self name];
  [v4 setName:v5];

  v6 = [(SPUnknownBeacon *)self identifier];
  [v4 setIdentifier:v6];

  v7 = [(SPUnknownBeacon *)self beaconIdentifier];
  [v4 setBeaconIdentifier:v7];

  v8 = [(SPUnknownBeacon *)self beaconLocations];
  v9 = [v8 copy];
  [v4 setBeaconLocations:v9];

  v10 = [(SPUnknownBeacon *)self advertisement];
  v11 = [v10 copy];
  [v4 setAdvertisement:v11];

  v12 = [(SPUnknownBeacon *)self handle];
  v13 = [v12 copy];
  [v4 setHandle:v13];

  [v4 setIsIgnored:{-[SPUnknownBeacon isIgnored](self, "isIgnored")}];
  [v4 setIsAppleAudioAccessory:{-[SPUnknownBeacon isAppleAudioAccessory](self, "isAppleAudioAccessory")}];
  v14 = [(SPUnknownBeacon *)self triggerDate];
  [v4 setTriggerDate:v14];

  v15 = [(SPUnknownBeacon *)self ignoresUntilDate];
  [v4 setIgnoresUntilDate:v15];

  v16 = [(SPUnknownBeacon *)self type];
  [v4 setType:v16];

  [v4 setObservationType:{-[SPUnknownBeacon observationType](self, "observationType")}];
  [v4 setAlertState:{-[SPUnknownBeacon alertState](self, "alertState")}];
  [v4 setCapabilities:{-[SPUnknownBeacon capabilities](self, "capabilities")}];
  [v4 setConnected:{-[SPUnknownBeacon connected](self, "connected")}];
  v17 = [(SPUnknownBeacon *)self metadata];
  v18 = [v17 copy];
  [v4 setMetadata:v18];

  v19 = [(SPUnknownBeacon *)self productInformation];
  v20 = [v19 copy];
  [v4 setProductInformation:v20];

  v21 = [(SPUnknownBeacon *)self taskInformation];
  v22 = [v21 copy];
  [v4 setTaskInformation:v22];

  [v4 setIsFindMyNetwork:{-[SPUnknownBeacon isFindMyNetwork](self, "isFindMyNetwork")}];
  [v4 setIsPosh:{-[SPUnknownBeacon isPosh](self, "isPosh")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v7 = a3;
  [v7 encodeObject:name forKey:@"name"];
  [v7 encodeObject:self->_identifier forKey:@"identifier"];
  [v7 encodeObject:self->_beaconIdentifier forKey:@"beaconIdentifier"];
  [v7 encodeObject:self->_beaconLocations forKey:@"beaconLocations"];
  [v7 encodeObject:self->_advertisement forKey:@"advertisement"];
  v5 = [(SPUnknownBeacon *)self handle];
  [v7 encodeObject:v5 forKey:@"handle"];

  [v7 encodeBool:self->_isIgnored forKey:@"isIgnored"];
  [v7 encodeBool:self->_isAppleAudioAccessory forKey:@"isAppleAudioAccessory"];
  [v7 encodeObject:self->_triggerDate forKey:@"triggerDate"];
  [v7 encodeObject:self->_ignoresUntilDate forKey:@"ignoresUntilDate"];
  [v7 encodeObject:self->_type forKey:@"type"];
  [v7 encodeInteger:self->_observationType forKey:@"observationType"];
  [v7 encodeInteger:self->_alertState forKey:@"alertState"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_capabilities];
  [v7 encodeObject:v6 forKey:@"capabilities"];

  [v7 encodeBool:self->_connected forKey:@"connected"];
  [v7 encodeObject:self->_metadata forKey:@"metadata"];
  [v7 encodeObject:self->_productInformation forKey:@"productInformation"];
  [v7 encodeObject:self->_taskInformation forKey:@"taskInformation"];
  [v7 encodeBool:self->_isFindMyNetwork forKey:@"isFindMyNetwork"];
  [v7 encodeBool:self->_isPosh forKey:@"isPosh"];
}

- (SPUnknownBeacon)initWithCoder:(id)a3
{
  v42[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"advertisement"];
  advertisement = self->_advertisement;
  self->_advertisement = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v11;

  v13 = MEMORY[0x277CBEB98];
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"beaconLocations"];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  beaconLocations = self->_beaconLocations;
  self->_beaconLocations = v17;

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
  handle = self->_handle;
  self->_handle = v19;

  self->_isIgnored = [v4 decodeBoolForKey:@"isIgnored"];
  self->_isAppleAudioAccessory = [v4 decodeBoolForKey:@"isAppleAudioAccessory"];
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"triggerDate"];
  triggerDate = self->_triggerDate;
  self->_triggerDate = v21;

  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ignoresUntilDate"];
  ignoresUntilDate = self->_ignoresUntilDate;
  self->_ignoresUntilDate = v23;

  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  type = self->_type;
  self->_type = v25;

  self->_observationType = [v4 decodeIntegerForKey:@"observationType"];
  self->_alertState = [v4 decodeIntegerForKey:@"alertState"];
  v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
  self->_capabilities = [v27 unsignedIntegerValue];

  self->_connected = [v4 decodeBoolForKey:@"connected"];
  v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  metadata = self->_metadata;
  self->_metadata = v28;

  v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productInformation"];
  productInformation = self->_productInformation;
  self->_productInformation = v30;

  v32 = MEMORY[0x277CBEB98];
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:3];
  v34 = [v32 setWithArray:{v33, v39, v40}];
  v35 = [v4 decodeObjectOfClasses:v34 forKey:@"taskInformation"];
  taskInformation = self->_taskInformation;
  self->_taskInformation = v35;

  self->_isFindMyNetwork = [v4 decodeBoolForKey:@"isFindMyNetwork"];
  self->_isPosh = [v4 decodeBoolForKey:@"isPosh"];

  v37 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPUnknownBeacon *)self identifier];
  v6 = [(SPUnknownBeacon *)self advertisement];
  v7 = [v3 stringWithFormat:@"<%@: %p %@ %lu isFindMyNetwork: %i isPosh: %i>", v4, self, v5, objc_msgSend(v6, "hash"), -[SPUnknownBeacon isFindMyNetwork](self, "isFindMyNetwork"), -[SPUnknownBeacon isPosh](self, "isPosh")];

  return v7;
}

@end