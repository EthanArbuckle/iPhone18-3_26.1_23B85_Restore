@interface SPUnknownBeacon
- (BOOL)isEqual:(id)equal;
- (SPUnknownBeacon)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPUnknownBeacon

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
      identifier = [(SPUnknownBeacon *)self identifier];
      identifier2 = [(SPUnknownBeacon *)v5 identifier];

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
  identifier = [(SPUnknownBeacon *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  name = [(SPUnknownBeacon *)self name];
  [v4 setName:name];

  identifier = [(SPUnknownBeacon *)self identifier];
  [v4 setIdentifier:identifier];

  beaconIdentifier = [(SPUnknownBeacon *)self beaconIdentifier];
  [v4 setBeaconIdentifier:beaconIdentifier];

  beaconLocations = [(SPUnknownBeacon *)self beaconLocations];
  v9 = [beaconLocations copy];
  [v4 setBeaconLocations:v9];

  advertisement = [(SPUnknownBeacon *)self advertisement];
  v11 = [advertisement copy];
  [v4 setAdvertisement:v11];

  handle = [(SPUnknownBeacon *)self handle];
  v13 = [handle copy];
  [v4 setHandle:v13];

  [v4 setIsIgnored:{-[SPUnknownBeacon isIgnored](self, "isIgnored")}];
  [v4 setIsAppleAudioAccessory:{-[SPUnknownBeacon isAppleAudioAccessory](self, "isAppleAudioAccessory")}];
  triggerDate = [(SPUnknownBeacon *)self triggerDate];
  [v4 setTriggerDate:triggerDate];

  ignoresUntilDate = [(SPUnknownBeacon *)self ignoresUntilDate];
  [v4 setIgnoresUntilDate:ignoresUntilDate];

  type = [(SPUnknownBeacon *)self type];
  [v4 setType:type];

  [v4 setObservationType:{-[SPUnknownBeacon observationType](self, "observationType")}];
  [v4 setAlertState:{-[SPUnknownBeacon alertState](self, "alertState")}];
  [v4 setCapabilities:{-[SPUnknownBeacon capabilities](self, "capabilities")}];
  [v4 setConnected:{-[SPUnknownBeacon connected](self, "connected")}];
  metadata = [(SPUnknownBeacon *)self metadata];
  v18 = [metadata copy];
  [v4 setMetadata:v18];

  productInformation = [(SPUnknownBeacon *)self productInformation];
  v20 = [productInformation copy];
  [v4 setProductInformation:v20];

  taskInformation = [(SPUnknownBeacon *)self taskInformation];
  v22 = [taskInformation copy];
  [v4 setTaskInformation:v22];

  [v4 setIsFindMyNetwork:{-[SPUnknownBeacon isFindMyNetwork](self, "isFindMyNetwork")}];
  [v4 setIsPosh:{-[SPUnknownBeacon isPosh](self, "isPosh")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_beaconIdentifier forKey:@"beaconIdentifier"];
  [coderCopy encodeObject:self->_beaconLocations forKey:@"beaconLocations"];
  [coderCopy encodeObject:self->_advertisement forKey:@"advertisement"];
  handle = [(SPUnknownBeacon *)self handle];
  [coderCopy encodeObject:handle forKey:@"handle"];

  [coderCopy encodeBool:self->_isIgnored forKey:@"isIgnored"];
  [coderCopy encodeBool:self->_isAppleAudioAccessory forKey:@"isAppleAudioAccessory"];
  [coderCopy encodeObject:self->_triggerDate forKey:@"triggerDate"];
  [coderCopy encodeObject:self->_ignoresUntilDate forKey:@"ignoresUntilDate"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_observationType forKey:@"observationType"];
  [coderCopy encodeInteger:self->_alertState forKey:@"alertState"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_capabilities];
  [coderCopy encodeObject:v6 forKey:@"capabilities"];

  [coderCopy encodeBool:self->_connected forKey:@"connected"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
  [coderCopy encodeObject:self->_productInformation forKey:@"productInformation"];
  [coderCopy encodeObject:self->_taskInformation forKey:@"taskInformation"];
  [coderCopy encodeBool:self->_isFindMyNetwork forKey:@"isFindMyNetwork"];
  [coderCopy encodeBool:self->_isPosh forKey:@"isPosh"];
}

- (SPUnknownBeacon)initWithCoder:(id)coder
{
  v42[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"advertisement"];
  advertisement = self->_advertisement;
  self->_advertisement = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v11;

  v13 = MEMORY[0x277CBEB98];
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"beaconLocations"];

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

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
  handle = self->_handle;
  self->_handle = v19;

  self->_isIgnored = [coderCopy decodeBoolForKey:@"isIgnored"];
  self->_isAppleAudioAccessory = [coderCopy decodeBoolForKey:@"isAppleAudioAccessory"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerDate"];
  triggerDate = self->_triggerDate;
  self->_triggerDate = v21;

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ignoresUntilDate"];
  ignoresUntilDate = self->_ignoresUntilDate;
  self->_ignoresUntilDate = v23;

  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  type = self->_type;
  self->_type = v25;

  self->_observationType = [coderCopy decodeIntegerForKey:@"observationType"];
  self->_alertState = [coderCopy decodeIntegerForKey:@"alertState"];
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
  self->_capabilities = [v27 unsignedIntegerValue];

  self->_connected = [coderCopy decodeBoolForKey:@"connected"];
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  metadata = self->_metadata;
  self->_metadata = v28;

  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productInformation"];
  productInformation = self->_productInformation;
  self->_productInformation = v30;

  v32 = MEMORY[0x277CBEB98];
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:3];
  v34 = [v32 setWithArray:{v33, v39, v40}];
  v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"taskInformation"];
  taskInformation = self->_taskInformation;
  self->_taskInformation = v35;

  self->_isFindMyNetwork = [coderCopy decodeBoolForKey:@"isFindMyNetwork"];
  self->_isPosh = [coderCopy decodeBoolForKey:@"isPosh"];

  v37 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(SPUnknownBeacon *)self identifier];
  advertisement = [(SPUnknownBeacon *)self advertisement];
  v7 = [v3 stringWithFormat:@"<%@: %p %@ %lu isFindMyNetwork: %i isPosh: %i>", v4, self, identifier, objc_msgSend(advertisement, "hash"), -[SPUnknownBeacon isFindMyNetwork](self, "isFindMyNetwork"), -[SPUnknownBeacon isPosh](self, "isPosh")];

  return v7;
}

@end