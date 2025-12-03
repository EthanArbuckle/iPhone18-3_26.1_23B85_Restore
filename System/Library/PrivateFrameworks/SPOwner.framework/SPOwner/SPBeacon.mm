@interface SPBeacon
- (BOOL)isEqual:(id)equal;
- (SPBeacon)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeacon

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
      identifier = [(SPBeacon *)self identifier];
      identifier2 = [(SPBeacon *)v5 identifier];

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
  identifier = [(SPBeacon *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  identifier = [(SPBeacon *)self identifier];
  [v4 setIdentifier:identifier];

  groupIdentifier = [(SPBeacon *)self groupIdentifier];
  [v4 setGroupIdentifier:groupIdentifier];

  [v4 setPartIdentifier:{-[SPBeacon partIdentifier](self, "partIdentifier")}];
  stableIdentifier = [(SPBeacon *)self stableIdentifier];
  v8 = [stableIdentifier copy];
  [v4 setStableIdentifier:v8];

  owner = [(SPBeacon *)self owner];
  v10 = [owner copy];
  [v4 setOwner:v10];

  [v4 setAccepted:{-[SPBeacon accepted](self, "accepted")}];
  name = [(SPBeacon *)self name];
  v12 = [name copy];
  [v4 setName:v12];

  model = [(SPBeacon *)self model];
  v14 = [model copy];
  [v4 setModel:v14];

  pairingDate = [(SPBeacon *)self pairingDate];
  v16 = [pairingDate copy];
  [v4 setPairingDate:v16];

  role = [(SPBeacon *)self role];
  v18 = [role copy];
  [v4 setRole:v18];

  lostModeInfo = [(SPBeacon *)self lostModeInfo];
  v20 = [lostModeInfo copy];
  [v4 setLostModeInfo:v20];

  shares = [(SPBeacon *)self shares];
  v22 = [shares copy];
  [v4 setShares:v22];

  taskInformation = [(SPBeacon *)self taskInformation];
  v24 = [taskInformation copy];
  [v4 setTaskInformation:v24];

  correlationIdentifier = [(SPBeacon *)self correlationIdentifier];
  v26 = [correlationIdentifier copy];
  [v4 setCorrelationIdentifier:v26];

  type = [(SPBeacon *)self type];
  v28 = [type copy];
  [v4 setType:v28];

  [v4 setIsZeus:{-[SPBeacon isZeus](self, "isZeus")}];
  systemVersion = [(SPBeacon *)self systemVersion];
  v30 = [systemVersion copy];
  [v4 setSystemVersion:v30];

  productUUID = [(SPBeacon *)self productUUID];
  v32 = [productUUID copy];
  [v4 setProductUUID:v32];

  [v4 setVendorId:{-[SPBeacon vendorId](self, "vendorId")}];
  [v4 setProductId:{-[SPBeacon productId](self, "productId")}];
  [v4 setConnected:{-[SPBeacon connected](self, "connected")}];
  connectedStateExpiryDate = [(SPBeacon *)self connectedStateExpiryDate];
  v34 = [connectedStateExpiryDate copy];
  [v4 setConnectedStateExpiryDate:v34];

  [v4 setConnectionAllowed:{-[SPBeacon connectionAllowed](self, "connectionAllowed")}];
  [v4 setConnectableDeviceCount:{-[SPBeacon connectableDeviceCount](self, "connectableDeviceCount")}];
  separationState = [(SPBeacon *)self separationState];
  v36 = [separationState copy];
  [v4 setSeparationState:v36];

  safeLocations = [(SPBeacon *)self safeLocations];
  v38 = [safeLocations copy];
  [v4 setSafeLocations:v38];

  [v4 setCanBeLeashedByHost:{-[SPBeacon canBeLeashedByHost](self, "canBeLeashedByHost")}];
  [v4 setBeaconSeparationState:{-[SPBeacon beaconSeparationState](self, "beaconSeparationState")}];
  [v4 setBatteryLevel:{-[SPBeacon batteryLevel](self, "batteryLevel")}];
  serialNumber = [(SPBeacon *)self serialNumber];
  [v4 setSerialNumber:serialNumber];

  locationProviders = [(SPBeacon *)self locationProviders];
  v41 = [locationProviders copy];
  [v4 setLocationProviders:v41];

  [v4 setKeySyncLastObservedIndex:{-[SPBeacon keySyncLastObservedIndex](self, "keySyncLastObservedIndex")}];
  keySyncLastIndexObservationDate = [(SPBeacon *)self keySyncLastIndexObservationDate];
  v43 = [keySyncLastIndexObservationDate copy];
  [v4 setKeySyncLastIndexObservationDate:v43];

  [v4 setKeySyncWildIndexFallback:{-[SPBeacon keySyncWildIndexFallback](self, "keySyncWildIndexFallback")}];
  [v4 setKeyAlignmentLastObservedIndex:{-[SPBeacon keyAlignmentLastObservedIndex](self, "keyAlignmentLastObservedIndex")}];
  keyAlignmentLastIndexObservationDate = [(SPBeacon *)self keyAlignmentLastIndexObservationDate];
  v45 = [keyAlignmentLastIndexObservationDate copy];
  [v4 setKeyAlignmentLastIndexObservationDate:v45];

  accessoryProductInfo = [(SPBeacon *)self accessoryProductInfo];
  v47 = [accessoryProductInfo copy];
  [v4 setAccessoryProductInfo:v47];

  [v4 setInternalShareType:{-[SPBeacon internalShareType](self, "internalShareType")}];
  ownerBeaconIdentifier = [(SPBeacon *)self ownerBeaconIdentifier];
  v49 = [ownerBeaconIdentifier copy];
  [v4 setOwnerBeaconIdentifier:v49];

  [v4 setIsAppleAudioAccessory:{-[SPBeacon isAppleAudioAccessory](self, "isAppleAudioAccessory")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
  [coderCopy encodeInteger:self->_partIdentifier forKey:@"partIdentifier"];
  [coderCopy encodeObject:self->_stableIdentifier forKey:@"stableIdentifier"];
  [coderCopy encodeObject:self->_owner forKey:@"owner"];
  [coderCopy encodeBool:self->_accepted forKey:@"accepted"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_model forKey:@"model"];
  [coderCopy encodeObject:self->_pairingDate forKey:@"pairingDate"];
  [coderCopy encodeObject:self->_lostModeInfo forKey:@"lostModeInfo"];
  [coderCopy encodeObject:self->_shares forKey:@"shares"];
  taskInformation = [(SPBeacon *)self taskInformation];
  [coderCopy encodeObject:taskInformation forKey:@"taskInformation"];

  correlationIdentifier = [(SPBeacon *)self correlationIdentifier];
  [coderCopy encodeObject:correlationIdentifier forKey:@"correlationIdentifier"];

  role = [(SPBeacon *)self role];
  [coderCopy encodeObject:role forKey:@"role"];

  [coderCopy encodeObject:self->_type forKey:@"type"];
  [coderCopy encodeBool:self->_isZeus forKey:@"isZeus"];
  [coderCopy encodeObject:self->_systemVersion forKey:@"systemVersion"];
  [coderCopy encodeObject:self->_productUUID forKey:@"productUUID"];
  [coderCopy encodeInteger:self->_vendorId forKey:@"vendorId"];
  [coderCopy encodeInteger:self->_productId forKey:@"productId"];
  [coderCopy encodeBool:-[SPBeacon connected](self forKey:{"connected"), @"connected"}];
  connectedStateExpiryDate = [(SPBeacon *)self connectedStateExpiryDate];
  [coderCopy encodeObject:connectedStateExpiryDate forKey:@"connectedStateExpiryDate"];

  [coderCopy encodeBool:-[SPBeacon connectionAllowed](self forKey:{"connectionAllowed"), @"connectionAllowed"}];
  [coderCopy encodeInteger:-[SPBeacon connectableDeviceCount](self forKey:{"connectableDeviceCount"), @"connectableDeviceCount"}];
  separationState = [(SPBeacon *)self separationState];
  [coderCopy encodeObject:separationState forKey:@"separationState"];

  safeLocations = [(SPBeacon *)self safeLocations];
  [coderCopy encodeObject:safeLocations forKey:@"safeLocations"];

  [coderCopy encodeBool:-[SPBeacon canBeLeashedByHost](self forKey:{"canBeLeashedByHost"), @"canBeLeashedByHost"}];
  [coderCopy encodeInteger:-[SPBeacon beaconSeparationState](self forKey:{"beaconSeparationState"), @"beaconSeparationState"}];
  [coderCopy encodeInteger:-[SPBeacon batteryLevel](self forKey:{"batteryLevel"), @"batteryLevel"}];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeObject:self->_locationProviders forKey:@"locationProviders"];
  [coderCopy encodeInt64:self->_keySyncLastObservedIndex forKey:@"keySyncLastObservedIndex"];
  [coderCopy encodeObject:self->_keySyncLastIndexObservationDate forKey:@"keySyncLastIndexObservationDate"];
  [coderCopy encodeInt64:self->_keySyncWildIndexFallback forKey:@"keySyncWildIndexFallback"];
  [coderCopy encodeInt64:self->_keyAlignmentLastObservedIndex forKey:@"keyAlignmentLastObservedIndex"];
  [coderCopy encodeObject:self->_keyAlignmentLastIndexObservationDate forKey:@"keyAlignmentLastIndexObservationDate"];
  [coderCopy encodeObject:self->_accessoryProductInfo forKey:@"accessoryProductInfo"];
  [coderCopy encodeInteger:self->_internalShareType forKey:@"internalShareType"];
  [coderCopy encodeObject:self->_ownerBeaconIdentifier forKey:@"ownerBeaconIdentifier"];
  [coderCopy encodeBool:-[SPBeacon isAppleAudioAccessory](self forKey:{"isAppleAudioAccessory"), @"isAppleAudioAccessory"}];
}

- (SPBeacon)initWithCoder:(id)coder
{
  v70[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
  groupIdentifier = self->_groupIdentifier;
  self->_groupIdentifier = v7;

  self->_partIdentifier = [coderCopy decodeIntegerForKey:@"partIdentifier"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stableIdentifier"];
  stableIdentifier = self->_stableIdentifier;
  self->_stableIdentifier = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"owner"];
  owner = self->_owner;
  self->_owner = v11;

  self->_accepted = [coderCopy decodeBoolForKey:@"accepted"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
  model = self->_model;
  self->_model = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"role"];
  role = self->_role;
  self->_role = v17;

  v19 = MEMORY[0x277CBEB98];
  v70[0] = objc_opt_class();
  v70[1] = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  v21 = [v19 setWithArray:v20];
  v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"shares"];
  shares = self->_shares;
  self->_shares = v22;

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lostModeInfo"];
  lostModeInfo = self->_lostModeInfo;
  self->_lostModeInfo = v24;

  v26 = MEMORY[0x277CBEB98];
  v69[0] = objc_opt_class();
  v69[1] = objc_opt_class();
  v69[2] = objc_opt_class();
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
  v28 = [v26 setWithArray:v27];
  v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"taskInformation"];
  taskInformation = self->_taskInformation;
  self->_taskInformation = v29;

  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"correlationIdentifier"];
  correlationIdentifier = self->_correlationIdentifier;
  self->_correlationIdentifier = v31;

  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingDate"];
  pairingDate = self->_pairingDate;
  self->_pairingDate = v33;

  v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  type = self->_type;
  self->_type = v35;

  self->_isZeus = [coderCopy decodeBoolForKey:@"isZeus"];
  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemVersion"];
  systemVersion = self->_systemVersion;
  self->_systemVersion = v37;

  v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productUUID"];
  productUUID = self->_productUUID;
  self->_productUUID = v39;

  self->_vendorId = [coderCopy decodeIntegerForKey:@"vendorId"];
  self->_productId = [coderCopy decodeIntegerForKey:@"productId"];
  self->_connected = [coderCopy decodeBoolForKey:@"connected"];
  v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectedStateExpiryDate"];
  connectedStateExpiryDate = self->_connectedStateExpiryDate;
  self->_connectedStateExpiryDate = v41;

  self->_connectionAllowed = [coderCopy decodeBoolForKey:@"connectionAllowed"];
  self->_connectableDeviceCount = [coderCopy decodeIntegerForKey:@"connectableDeviceCount"];
  v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"separationState"];
  separationState = self->_separationState;
  self->_separationState = v43;

  self->_canBeLeashedByHost = [coderCopy decodeBoolForKey:@"canBeLeashedByHost"];
  v45 = MEMORY[0x277CBEB98];
  v68[0] = objc_opt_class();
  v68[1] = objc_opt_class();
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  v47 = [v45 setWithArray:v46];
  v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"safeLocations"];
  safeLocations = self->_safeLocations;
  self->_safeLocations = v48;

  self->_beaconSeparationState = [coderCopy decodeIntegerForKey:@"beaconSeparationState"];
  self->_batteryLevel = [coderCopy decodeIntegerForKey:@"batteryLevel"];
  v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v50;

  v52 = MEMORY[0x277CBEB98];
  v67[0] = objc_opt_class();
  v67[1] = objc_opt_class();
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  v54 = [v52 setWithArray:{v53, v67[0]}];
  v55 = [coderCopy decodeObjectOfClasses:v54 forKey:@"locationProviders"];
  locationProviders = self->_locationProviders;
  self->_locationProviders = v55;

  self->_keySyncLastObservedIndex = [coderCopy decodeInt64ForKey:@"keySyncLastObservedIndex"];
  v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keySyncLastIndexObservationDate"];
  keySyncLastIndexObservationDate = self->_keySyncLastIndexObservationDate;
  self->_keySyncLastIndexObservationDate = v57;

  self->_keySyncWildIndexFallback = [coderCopy decodeInt64ForKey:@"keySyncWildIndexFallback"];
  self->_keyAlignmentLastObservedIndex = [coderCopy decodeInt64ForKey:@"keyAlignmentLastObservedIndex"];
  v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyAlignmentLastIndexObservationDate"];
  keyAlignmentLastIndexObservationDate = self->_keyAlignmentLastIndexObservationDate;
  self->_keyAlignmentLastIndexObservationDate = v59;

  v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryProductInfo"];
  accessoryProductInfo = self->_accessoryProductInfo;
  self->_accessoryProductInfo = v61;

  self->_internalShareType = [coderCopy decodeIntegerForKey:@"internalShareType"];
  v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerBeaconIdentifier"];
  ownerBeaconIdentifier = self->_ownerBeaconIdentifier;
  self->_ownerBeaconIdentifier = v63;

  LOBYTE(v54) = [coderCopy decodeBoolForKey:@"isAppleAudioAccessory"];
  self->_isAppleAudioAccessory = v54;
  v65 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)debugDescription
{
  groupIdentifier = [(SPBeacon *)self groupIdentifier];

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  if (groupIdentifier)
  {
    groupIdentifier2 = [(SPBeacon *)self groupIdentifier];
    identifier = [(SPBeacon *)self identifier];
    v8 = [v4 stringWithFormat:@"<%@: %p (%@) %@>", v5, self, groupIdentifier2, identifier];
  }

  else
  {
    groupIdentifier2 = [(SPBeacon *)self identifier];
    v8 = [v4 stringWithFormat:@"<%@: %p %@>", v5, self, groupIdentifier2];
  }

  return v8;
}

@end