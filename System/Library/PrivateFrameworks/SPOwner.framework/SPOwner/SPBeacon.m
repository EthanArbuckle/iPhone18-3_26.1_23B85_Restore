@interface SPBeacon
- (BOOL)isEqual:(id)a3;
- (SPBeacon)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeacon

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
      v6 = [(SPBeacon *)self identifier];
      v7 = [(SPBeacon *)v5 identifier];

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
  v2 = [(SPBeacon *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPBeacon *)self identifier];
  [v4 setIdentifier:v5];

  v6 = [(SPBeacon *)self groupIdentifier];
  [v4 setGroupIdentifier:v6];

  [v4 setPartIdentifier:{-[SPBeacon partIdentifier](self, "partIdentifier")}];
  v7 = [(SPBeacon *)self stableIdentifier];
  v8 = [v7 copy];
  [v4 setStableIdentifier:v8];

  v9 = [(SPBeacon *)self owner];
  v10 = [v9 copy];
  [v4 setOwner:v10];

  [v4 setAccepted:{-[SPBeacon accepted](self, "accepted")}];
  v11 = [(SPBeacon *)self name];
  v12 = [v11 copy];
  [v4 setName:v12];

  v13 = [(SPBeacon *)self model];
  v14 = [v13 copy];
  [v4 setModel:v14];

  v15 = [(SPBeacon *)self pairingDate];
  v16 = [v15 copy];
  [v4 setPairingDate:v16];

  v17 = [(SPBeacon *)self role];
  v18 = [v17 copy];
  [v4 setRole:v18];

  v19 = [(SPBeacon *)self lostModeInfo];
  v20 = [v19 copy];
  [v4 setLostModeInfo:v20];

  v21 = [(SPBeacon *)self shares];
  v22 = [v21 copy];
  [v4 setShares:v22];

  v23 = [(SPBeacon *)self taskInformation];
  v24 = [v23 copy];
  [v4 setTaskInformation:v24];

  v25 = [(SPBeacon *)self correlationIdentifier];
  v26 = [v25 copy];
  [v4 setCorrelationIdentifier:v26];

  v27 = [(SPBeacon *)self type];
  v28 = [v27 copy];
  [v4 setType:v28];

  [v4 setIsZeus:{-[SPBeacon isZeus](self, "isZeus")}];
  v29 = [(SPBeacon *)self systemVersion];
  v30 = [v29 copy];
  [v4 setSystemVersion:v30];

  v31 = [(SPBeacon *)self productUUID];
  v32 = [v31 copy];
  [v4 setProductUUID:v32];

  [v4 setVendorId:{-[SPBeacon vendorId](self, "vendorId")}];
  [v4 setProductId:{-[SPBeacon productId](self, "productId")}];
  [v4 setConnected:{-[SPBeacon connected](self, "connected")}];
  v33 = [(SPBeacon *)self connectedStateExpiryDate];
  v34 = [v33 copy];
  [v4 setConnectedStateExpiryDate:v34];

  [v4 setConnectionAllowed:{-[SPBeacon connectionAllowed](self, "connectionAllowed")}];
  [v4 setConnectableDeviceCount:{-[SPBeacon connectableDeviceCount](self, "connectableDeviceCount")}];
  v35 = [(SPBeacon *)self separationState];
  v36 = [v35 copy];
  [v4 setSeparationState:v36];

  v37 = [(SPBeacon *)self safeLocations];
  v38 = [v37 copy];
  [v4 setSafeLocations:v38];

  [v4 setCanBeLeashedByHost:{-[SPBeacon canBeLeashedByHost](self, "canBeLeashedByHost")}];
  [v4 setBeaconSeparationState:{-[SPBeacon beaconSeparationState](self, "beaconSeparationState")}];
  [v4 setBatteryLevel:{-[SPBeacon batteryLevel](self, "batteryLevel")}];
  v39 = [(SPBeacon *)self serialNumber];
  [v4 setSerialNumber:v39];

  v40 = [(SPBeacon *)self locationProviders];
  v41 = [v40 copy];
  [v4 setLocationProviders:v41];

  [v4 setKeySyncLastObservedIndex:{-[SPBeacon keySyncLastObservedIndex](self, "keySyncLastObservedIndex")}];
  v42 = [(SPBeacon *)self keySyncLastIndexObservationDate];
  v43 = [v42 copy];
  [v4 setKeySyncLastIndexObservationDate:v43];

  [v4 setKeySyncWildIndexFallback:{-[SPBeacon keySyncWildIndexFallback](self, "keySyncWildIndexFallback")}];
  [v4 setKeyAlignmentLastObservedIndex:{-[SPBeacon keyAlignmentLastObservedIndex](self, "keyAlignmentLastObservedIndex")}];
  v44 = [(SPBeacon *)self keyAlignmentLastIndexObservationDate];
  v45 = [v44 copy];
  [v4 setKeyAlignmentLastIndexObservationDate:v45];

  v46 = [(SPBeacon *)self accessoryProductInfo];
  v47 = [v46 copy];
  [v4 setAccessoryProductInfo:v47];

  [v4 setInternalShareType:{-[SPBeacon internalShareType](self, "internalShareType")}];
  v48 = [(SPBeacon *)self ownerBeaconIdentifier];
  v49 = [v48 copy];
  [v4 setOwnerBeaconIdentifier:v49];

  [v4 setIsAppleAudioAccessory:{-[SPBeacon isAppleAudioAccessory](self, "isAppleAudioAccessory")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v11 = a3;
  [v11 encodeObject:identifier forKey:@"identifier"];
  [v11 encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
  [v11 encodeInteger:self->_partIdentifier forKey:@"partIdentifier"];
  [v11 encodeObject:self->_stableIdentifier forKey:@"stableIdentifier"];
  [v11 encodeObject:self->_owner forKey:@"owner"];
  [v11 encodeBool:self->_accepted forKey:@"accepted"];
  [v11 encodeObject:self->_name forKey:@"name"];
  [v11 encodeObject:self->_model forKey:@"model"];
  [v11 encodeObject:self->_pairingDate forKey:@"pairingDate"];
  [v11 encodeObject:self->_lostModeInfo forKey:@"lostModeInfo"];
  [v11 encodeObject:self->_shares forKey:@"shares"];
  v5 = [(SPBeacon *)self taskInformation];
  [v11 encodeObject:v5 forKey:@"taskInformation"];

  v6 = [(SPBeacon *)self correlationIdentifier];
  [v11 encodeObject:v6 forKey:@"correlationIdentifier"];

  v7 = [(SPBeacon *)self role];
  [v11 encodeObject:v7 forKey:@"role"];

  [v11 encodeObject:self->_type forKey:@"type"];
  [v11 encodeBool:self->_isZeus forKey:@"isZeus"];
  [v11 encodeObject:self->_systemVersion forKey:@"systemVersion"];
  [v11 encodeObject:self->_productUUID forKey:@"productUUID"];
  [v11 encodeInteger:self->_vendorId forKey:@"vendorId"];
  [v11 encodeInteger:self->_productId forKey:@"productId"];
  [v11 encodeBool:-[SPBeacon connected](self forKey:{"connected"), @"connected"}];
  v8 = [(SPBeacon *)self connectedStateExpiryDate];
  [v11 encodeObject:v8 forKey:@"connectedStateExpiryDate"];

  [v11 encodeBool:-[SPBeacon connectionAllowed](self forKey:{"connectionAllowed"), @"connectionAllowed"}];
  [v11 encodeInteger:-[SPBeacon connectableDeviceCount](self forKey:{"connectableDeviceCount"), @"connectableDeviceCount"}];
  v9 = [(SPBeacon *)self separationState];
  [v11 encodeObject:v9 forKey:@"separationState"];

  v10 = [(SPBeacon *)self safeLocations];
  [v11 encodeObject:v10 forKey:@"safeLocations"];

  [v11 encodeBool:-[SPBeacon canBeLeashedByHost](self forKey:{"canBeLeashedByHost"), @"canBeLeashedByHost"}];
  [v11 encodeInteger:-[SPBeacon beaconSeparationState](self forKey:{"beaconSeparationState"), @"beaconSeparationState"}];
  [v11 encodeInteger:-[SPBeacon batteryLevel](self forKey:{"batteryLevel"), @"batteryLevel"}];
  [v11 encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [v11 encodeObject:self->_locationProviders forKey:@"locationProviders"];
  [v11 encodeInt64:self->_keySyncLastObservedIndex forKey:@"keySyncLastObservedIndex"];
  [v11 encodeObject:self->_keySyncLastIndexObservationDate forKey:@"keySyncLastIndexObservationDate"];
  [v11 encodeInt64:self->_keySyncWildIndexFallback forKey:@"keySyncWildIndexFallback"];
  [v11 encodeInt64:self->_keyAlignmentLastObservedIndex forKey:@"keyAlignmentLastObservedIndex"];
  [v11 encodeObject:self->_keyAlignmentLastIndexObservationDate forKey:@"keyAlignmentLastIndexObservationDate"];
  [v11 encodeObject:self->_accessoryProductInfo forKey:@"accessoryProductInfo"];
  [v11 encodeInteger:self->_internalShareType forKey:@"internalShareType"];
  [v11 encodeObject:self->_ownerBeaconIdentifier forKey:@"ownerBeaconIdentifier"];
  [v11 encodeBool:-[SPBeacon isAppleAudioAccessory](self forKey:{"isAppleAudioAccessory"), @"isAppleAudioAccessory"}];
}

- (SPBeacon)initWithCoder:(id)a3
{
  v70[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
  groupIdentifier = self->_groupIdentifier;
  self->_groupIdentifier = v7;

  self->_partIdentifier = [v4 decodeIntegerForKey:@"partIdentifier"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stableIdentifier"];
  stableIdentifier = self->_stableIdentifier;
  self->_stableIdentifier = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"owner"];
  owner = self->_owner;
  self->_owner = v11;

  self->_accepted = [v4 decodeBoolForKey:@"accepted"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
  model = self->_model;
  self->_model = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"role"];
  role = self->_role;
  self->_role = v17;

  v19 = MEMORY[0x277CBEB98];
  v70[0] = objc_opt_class();
  v70[1] = objc_opt_class();
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  v21 = [v19 setWithArray:v20];
  v22 = [v4 decodeObjectOfClasses:v21 forKey:@"shares"];
  shares = self->_shares;
  self->_shares = v22;

  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lostModeInfo"];
  lostModeInfo = self->_lostModeInfo;
  self->_lostModeInfo = v24;

  v26 = MEMORY[0x277CBEB98];
  v69[0] = objc_opt_class();
  v69[1] = objc_opt_class();
  v69[2] = objc_opt_class();
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
  v28 = [v26 setWithArray:v27];
  v29 = [v4 decodeObjectOfClasses:v28 forKey:@"taskInformation"];
  taskInformation = self->_taskInformation;
  self->_taskInformation = v29;

  v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"correlationIdentifier"];
  correlationIdentifier = self->_correlationIdentifier;
  self->_correlationIdentifier = v31;

  v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingDate"];
  pairingDate = self->_pairingDate;
  self->_pairingDate = v33;

  v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  type = self->_type;
  self->_type = v35;

  self->_isZeus = [v4 decodeBoolForKey:@"isZeus"];
  v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemVersion"];
  systemVersion = self->_systemVersion;
  self->_systemVersion = v37;

  v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productUUID"];
  productUUID = self->_productUUID;
  self->_productUUID = v39;

  self->_vendorId = [v4 decodeIntegerForKey:@"vendorId"];
  self->_productId = [v4 decodeIntegerForKey:@"productId"];
  self->_connected = [v4 decodeBoolForKey:@"connected"];
  v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectedStateExpiryDate"];
  connectedStateExpiryDate = self->_connectedStateExpiryDate;
  self->_connectedStateExpiryDate = v41;

  self->_connectionAllowed = [v4 decodeBoolForKey:@"connectionAllowed"];
  self->_connectableDeviceCount = [v4 decodeIntegerForKey:@"connectableDeviceCount"];
  v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"separationState"];
  separationState = self->_separationState;
  self->_separationState = v43;

  self->_canBeLeashedByHost = [v4 decodeBoolForKey:@"canBeLeashedByHost"];
  v45 = MEMORY[0x277CBEB98];
  v68[0] = objc_opt_class();
  v68[1] = objc_opt_class();
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  v47 = [v45 setWithArray:v46];
  v48 = [v4 decodeObjectOfClasses:v47 forKey:@"safeLocations"];
  safeLocations = self->_safeLocations;
  self->_safeLocations = v48;

  self->_beaconSeparationState = [v4 decodeIntegerForKey:@"beaconSeparationState"];
  self->_batteryLevel = [v4 decodeIntegerForKey:@"batteryLevel"];
  v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v50;

  v52 = MEMORY[0x277CBEB98];
  v67[0] = objc_opt_class();
  v67[1] = objc_opt_class();
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  v54 = [v52 setWithArray:{v53, v67[0]}];
  v55 = [v4 decodeObjectOfClasses:v54 forKey:@"locationProviders"];
  locationProviders = self->_locationProviders;
  self->_locationProviders = v55;

  self->_keySyncLastObservedIndex = [v4 decodeInt64ForKey:@"keySyncLastObservedIndex"];
  v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keySyncLastIndexObservationDate"];
  keySyncLastIndexObservationDate = self->_keySyncLastIndexObservationDate;
  self->_keySyncLastIndexObservationDate = v57;

  self->_keySyncWildIndexFallback = [v4 decodeInt64ForKey:@"keySyncWildIndexFallback"];
  self->_keyAlignmentLastObservedIndex = [v4 decodeInt64ForKey:@"keyAlignmentLastObservedIndex"];
  v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyAlignmentLastIndexObservationDate"];
  keyAlignmentLastIndexObservationDate = self->_keyAlignmentLastIndexObservationDate;
  self->_keyAlignmentLastIndexObservationDate = v59;

  v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryProductInfo"];
  accessoryProductInfo = self->_accessoryProductInfo;
  self->_accessoryProductInfo = v61;

  self->_internalShareType = [v4 decodeIntegerForKey:@"internalShareType"];
  v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerBeaconIdentifier"];
  ownerBeaconIdentifier = self->_ownerBeaconIdentifier;
  self->_ownerBeaconIdentifier = v63;

  LOBYTE(v54) = [v4 decodeBoolForKey:@"isAppleAudioAccessory"];
  self->_isAppleAudioAccessory = v54;
  v65 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)debugDescription
{
  v3 = [(SPBeacon *)self groupIdentifier];

  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  if (v3)
  {
    v6 = [(SPBeacon *)self groupIdentifier];
    v7 = [(SPBeacon *)self identifier];
    v8 = [v4 stringWithFormat:@"<%@: %p (%@) %@>", v5, self, v6, v7];
  }

  else
  {
    v6 = [(SPBeacon *)self identifier];
    v8 = [v4 stringWithFormat:@"<%@: %p %@>", v5, self, v6];
  }

  return v8;
}

@end