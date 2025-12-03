@interface TURoute
- (BOOL)isAuxiliary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRoute:(id)route;
- (BOOL)isEqualToRouteIgnoringIsRecommended:(id)recommended;
- (BOOL)isInEarDetected;
- (BOOL)isTipiParticipant;
- (BOOL)isTriangleParticipant;
- (TURoute)initWithCoder:(id)coder;
- (TURoute)initWithRoute:(id)route;
- (TURoute)initWithUniqueIdentifier:(id)identifier name:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TURoute

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uniqueIdentifier = [(TURoute *)self uniqueIdentifier];
  [v3 appendFormat:@" uniqueIdentifier=%@", uniqueIdentifier];

  name = [(TURoute *)self name];
  [v3 appendFormat:@" name=%@", name];

  if ([(TURoute *)self deviceType])
  {
    [v3 appendFormat:@" deviceType=%ld", -[TURoute deviceType](self, "deviceType")];
  }

  if ([(TURoute *)self isA2DPRoute])
  {
    [v3 appendFormat:@" isA2DPRoute=%d", -[TURoute isA2DPRoute](self, "isA2DPRoute")];
  }

  if ([(TURoute *)self isCurrentlyPicked])
  {
    [v3 appendFormat:@" isCurrentlyPicked=%d", -[TURoute isCurrentlyPicked](self, "isCurrentlyPicked")];
  }

  if ([(TURoute *)self isDefaultRoute])
  {
    [v3 appendFormat:@" isDefaultRoute=%d", -[TURoute isDefaultRoute](self, "isDefaultRoute")];
  }

  if ([(TURoute *)self isReceiver])
  {
    [v3 appendFormat:@" isReceiver=%d", -[TURoute isReceiver](self, "isReceiver")];
  }

  if ([(TURoute *)self isSpeaker])
  {
    [v3 appendFormat:@" isSpeaker=%d", -[TURoute isSpeaker](self, "isSpeaker")];
  }

  if ([(TURoute *)self isWiredHeadphones])
  {
    [v3 appendFormat:@" isWiredHeadphones=%d", -[TURoute isWiredHeadphones](self, "isWiredHeadphones")];
  }

  if ([(TURoute *)self isWiredHeadset])
  {
    [v3 appendFormat:@" isWiredHeadset=%d", -[TURoute isWiredHeadset](self, "isWiredHeadset")];
  }

  if ([(TURoute *)self isWirelessHeadset])
  {
    [v3 appendFormat:@" isWirelessHeadset=%d", -[TURoute isWirelessHeadset](self, "isWirelessHeadset")];
  }

  if ([(TURoute *)self isAirTunes])
  {
    [v3 appendFormat:@" isAirTunes=%d", -[TURoute isAirTunes](self, "isAirTunes")];
  }

  if ([(TURoute *)self isCarAudio])
  {
    [v3 appendFormat:@" isCarAudio=%d", -[TURoute isCarAudio](self, "isCarAudio")];
  }

  if ([(TURoute *)self isGuest])
  {
    [v3 appendFormat:@" isGuest=%d", -[TURoute isGuest](self, "isGuest")];
  }

  if ([(TURoute *)self isBluetooth])
  {
    [v3 appendFormat:@" isBluetooth=%d", -[TURoute isBluetooth](self, "isBluetooth")];
  }

  if ([(TURoute *)self isBluetoothLE])
  {
    [v3 appendFormat:@" isBluetoothLE=%d", -[TURoute isBluetoothLE](self, "isBluetoothLE")];
  }

  if ([(TURoute *)self isBluetoothManaged])
  {
    [v3 appendFormat:@" isBluetoothManaged=%d", -[TURoute isBluetoothManaged](self, "isBluetoothManaged")];
  }

  if ([(TURoute *)self bluetoothEndpointType])
  {
    [v3 appendFormat:@" bluetoothEndpointType=%ld", -[TURoute bluetoothEndpointType](self, "bluetoothEndpointType")];
  }

  if ([(TURoute *)self isInEarDetectionEnabled])
  {
    [v3 appendFormat:@" isInEarDetectionEnabled=%d", -[TURoute isInEarDetectionEnabled](self, "isInEarDetectionEnabled")];
  }

  if ([(TURoute *)self isInEarDetectionSupported])
  {
    [v3 appendFormat:@" isInEarDetectionSupported=%d", -[TURoute isInEarDetectionSupported](self, "isInEarDetectionSupported")];
  }

  if ([(TURoute *)self isPreferred])
  {
    [v3 appendFormat:@" isPreferred=%d", -[TURoute isPreferred](self, "isPreferred")];
  }

  if ([(TURoute *)self isPreferredAndActive])
  {
    [v3 appendFormat:@" isPreferredAndActive=%d", -[TURoute isPreferredAndActive](self, "isPreferredAndActive")];
  }

  identifiersOfOtherConnectedDevices = [(TURoute *)self identifiersOfOtherConnectedDevices];
  v7 = [identifiersOfOtherConnectedDevices count];

  if (v7)
  {
    identifiersOfOtherConnectedDevices2 = [(TURoute *)self identifiersOfOtherConnectedDevices];
    v9 = [identifiersOfOtherConnectedDevices2 componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" identifiersOfOtherConnectedDevices=%@", v9];
  }

  if ([(TURoute *)self isInTipiWithCompanion])
  {
    [v3 appendFormat:@" isInTipiWithCompanion=%d", -[TURoute isInTipiWithCompanion](self, "isInTipiWithCompanion")];
  }

  if ([(TURoute *)self isSmartRoutedTo])
  {
    [v3 appendFormat:@" isSmartRoutedTo=%d", -[TURoute isSmartRoutedTo](self, "isSmartRoutedTo")];
  }

  if ([(TURoute *)self supportsRelay])
  {
    [v3 appendFormat:@" supportsRelay=%d", -[TURoute supportsRelay](self, "supportsRelay")];
  }

  if ([(TURoute *)self isPartnerRouteRoutable])
  {
    [v3 appendFormat:@" isPartnerRouteRoutable=%d", -[TURoute isPartnerRouteRoutable](self, "isPartnerRouteRoutable")];
  }

  if ([(TURoute *)self isSiblingRoutePresent])
  {
    [v3 appendFormat:@" isSiblingRoutePresent=%d", -[TURoute isSiblingRoutePresent](self, "isSiblingRoutePresent")];
  }

  if ([(TURoute *)self supportsSharePlay])
  {
    [v3 appendFormat:@" supportsSharePlay=%d", -[TURoute supportsSharePlay](self, "supportsSharePlay")];
  }

  if ([(TURoute *)self isTipiParticipant])
  {
    [v3 appendFormat:@" isTipiParticipant=%d", -[TURoute isTipiParticipant](self, "isTipiParticipant")];
  }

  if ([(TURoute *)self isTriangleParticipant])
  {
    [v3 appendFormat:@" isTriangleParticipant=%d", -[TURoute isTriangleParticipant](self, "isTriangleParticipant")];
  }

  if ([(TURoute *)self isCarKitRoute])
  {
    [v3 appendFormat:@" isCarKitRoute=%d", -[TURoute isCarKitRoute](self, "isCarKitRoute")];
  }

  if ([(TURoute *)self isRecommended])
  {
    [v3 appendFormat:@" isRecommended=%d", -[TURoute isRecommended](self, "isRecommended")];
  }

  customDescription = [(TURoute *)self customDescription];
  [v3 appendString:customDescription];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isTipiParticipant
{
  isBluetoothManaged = [(TURoute *)self isBluetoothManaged];
  if (isBluetoothManaged)
  {

    LOBYTE(isBluetoothManaged) = [(TURoute *)self isPreferred];
  }

  return isBluetoothManaged;
}

- (BOOL)isTriangleParticipant
{
  if ([(TURoute *)self isTipiParticipant]|| ![(TURoute *)self isPreferred])
  {
    return 0;
  }

  identifiersOfOtherConnectedDevices = [(TURoute *)self identifiersOfOtherConnectedDevices];
  v4 = [identifiersOfOtherConnectedDevices count] != 0;

  return v4;
}

- (BOOL)isAuxiliary
{
  if ([(TURoute *)self isSpeaker]|| [(TURoute *)self isReceiver])
  {
    return 0;
  }

  else
  {
    return ![(TURoute *)self isDefaultRoute];
  }
}

uint64_t __68__TURoute_Predicate__predicateForInEarRouteInTipiWithCompanionWatch__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isInTipiWithCompanion];
  v4 = [v2 isInEarDetected];

  return v4 & v3;
}

- (BOOL)isInEarDetected
{
  isInEarDetectionEnabled = [(TURoute *)self isInEarDetectionEnabled];
  if (isInEarDetectionEnabled)
  {

    LOBYTE(isInEarDetectionEnabled) = [(TURoute *)self isPreferredAndActive];
  }

  return isInEarDetectionEnabled;
}

- (TURoute)initWithUniqueIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = TURoute;
  v8 = [(TURoute *)&v16 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v9;

    v11 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v11;

    identifiersOfOtherConnectedDevices = v8->_identifiersOfOtherConnectedDevices;
    v8->_identifiersOfOtherConnectedDevices = MEMORY[0x1E695E0F0];

    modelIdentifier = v8->_modelIdentifier;
    v8->_modelIdentifier = 0;
  }

  return v8;
}

- (TURoute)initWithRoute:(id)route
{
  routeCopy = route;
  v15.receiver = self;
  v15.super_class = TURoute;
  v5 = [(TURoute *)&v15 init];
  if (v5)
  {
    -[TURoute setA2DPRoute:](v5, "setA2DPRoute:", [routeCopy isA2DPRoute]);
    -[TURoute setAirTunes:](v5, "setAirTunes:", [routeCopy isAirTunes]);
    -[TURoute setBluetooth:](v5, "setBluetooth:", [routeCopy isBluetooth]);
    -[TURoute setBluetoothEndpointType:](v5, "setBluetoothEndpointType:", [routeCopy bluetoothEndpointType]);
    -[TURoute setBluetoothLE:](v5, "setBluetoothLE:", [routeCopy isBluetoothLE]);
    -[TURoute setBluetoothManaged:](v5, "setBluetoothManaged:", [routeCopy isBluetoothManaged]);
    -[TURoute setCarAudio:](v5, "setCarAudio:", [routeCopy isCarAudio]);
    -[TURoute setCurrentlyPicked:](v5, "setCurrentlyPicked:", [routeCopy isCurrentlyPicked]);
    -[TURoute setDefaultRoute:](v5, "setDefaultRoute:", [routeCopy isDefaultRoute]);
    -[TURoute setDeviceType:](v5, "setDeviceType:", [routeCopy deviceType]);
    -[TURoute setGuest:](v5, "setGuest:", [routeCopy isGuest]);
    identifiersOfOtherConnectedDevices = [routeCopy identifiersOfOtherConnectedDevices];
    v7 = [identifiersOfOtherConnectedDevices copy];
    [(TURoute *)v5 setIdentifiersOfOtherConnectedDevices:v7];

    -[TURoute setInTipiWithCompanion:](v5, "setInTipiWithCompanion:", [routeCopy isInTipiWithCompanion]);
    -[TURoute setSmartRoutedTo:](v5, "setSmartRoutedTo:", [routeCopy isSmartRoutedTo]);
    -[TURoute setInEarDetectionEnabled:](v5, "setInEarDetectionEnabled:", [routeCopy isInEarDetectionEnabled]);
    -[TURoute setInEarDetectionSupported:](v5, "setInEarDetectionSupported:", [routeCopy isInEarDetectionSupported]);
    name = [routeCopy name];
    v9 = [name copy];
    [(TURoute *)v5 setName:v9];

    -[TURoute setPreferred:](v5, "setPreferred:", [routeCopy isPreferred]);
    -[TURoute setPreferredAndActive:](v5, "setPreferredAndActive:", [routeCopy isPreferredAndActive]);
    -[TURoute setReceiver:](v5, "setReceiver:", [routeCopy isReceiver]);
    -[TURoute setSpeaker:](v5, "setSpeaker:", [routeCopy isSpeaker]);
    -[TURoute setSupportsRelay:](v5, "setSupportsRelay:", [routeCopy supportsRelay]);
    uniqueIdentifier = [routeCopy uniqueIdentifier];
    v11 = [uniqueIdentifier copy];
    [(TURoute *)v5 setUniqueIdentifier:v11];

    -[TURoute setWiredHeadphones:](v5, "setWiredHeadphones:", [routeCopy isWiredHeadphones]);
    -[TURoute setWiredHeadset:](v5, "setWiredHeadset:", [routeCopy isWiredHeadset]);
    -[TURoute setWirelessHeadset:](v5, "setWirelessHeadset:", [routeCopy isWirelessHeadset]);
    -[TURoute setPartnerRouteRoutable:](v5, "setPartnerRouteRoutable:", [routeCopy isPartnerRouteRoutable]);
    -[TURoute setSiblingRoutePresent:](v5, "setSiblingRoutePresent:", [routeCopy isSiblingRoutePresent]);
    -[TURoute setSupportsSharePlay:](v5, "setSupportsSharePlay:", [routeCopy supportsSharePlay]);
    -[TURoute setRecommended:](v5, "setRecommended:", [routeCopy isRecommended]);
    modelIdentifier = [routeCopy modelIdentifier];
    v13 = [modelIdentifier copy];
    [(TURoute *)v5 setModelIdentifier:v13];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TURoute allocWithZone:zone];

  return [(TURoute *)v4 initWithRoute:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TUMutableRoute allocWithZone:zone];

  return [(TURoute *)v4 initWithRoute:self];
}

- (TURoute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = TURoute;
  v5 = [(TURoute *)&v53 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isA2DPRoute);
    v5->_A2DPRoute = [coderCopy decodeBoolForKey:v6];

    v7 = NSStringFromSelector(sel_isAirTunes);
    v5->_airTunes = [coderCopy decodeBoolForKey:v7];

    v8 = NSStringFromSelector(sel_isBluetooth);
    v5->_bluetooth = [coderCopy decodeBoolForKey:v8];

    v9 = NSStringFromSelector(sel_bluetoothEndpointType);
    v5->_bluetoothEndpointType = [coderCopy decodeIntegerForKey:v9];

    v10 = NSStringFromSelector(sel_isBluetoothLE);
    v5->_bluetoothLE = [coderCopy decodeBoolForKey:v10];

    v11 = NSStringFromSelector(sel_isBluetoothManaged);
    v5->_bluetoothManaged = [coderCopy decodeBoolForKey:v11];

    v12 = NSStringFromSelector(sel_isCarAudio);
    v5->_carAudio = [coderCopy decodeBoolForKey:v12];

    v13 = NSStringFromSelector(sel_isCurrentlyPicked);
    v5->_currentlyPicked = [coderCopy decodeBoolForKey:v13];

    v14 = NSStringFromSelector(sel_isDefaultRoute);
    v5->_defaultRoute = [coderCopy decodeBoolForKey:v14];

    v15 = NSStringFromSelector(sel_deviceType);
    v5->_deviceType = [coderCopy decodeIntegerForKey:v15];

    v16 = NSStringFromSelector(sel_isGuest);
    v5->_guest = [coderCopy decodeBoolForKey:v16];

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = NSStringFromSelector(sel_identifiersOfOtherConnectedDevices);
    v21 = [coderCopy decodeObjectOfClasses:v19 forKey:v20];
    identifiersOfOtherConnectedDevices = v5->_identifiersOfOtherConnectedDevices;
    v5->_identifiersOfOtherConnectedDevices = v21;

    v23 = NSStringFromSelector(sel_isInTipiWithCompanion);
    v5->_inTipiWithCompanion = [coderCopy decodeBoolForKey:v23];

    v24 = NSStringFromSelector(sel_isSmartRoutedTo);
    v5->_smartRoutedTo = [coderCopy decodeBoolForKey:v24];

    v25 = NSStringFromSelector(sel_isInEarDetectionEnabled);
    v5->_inEarDetectionEnabled = [coderCopy decodeBoolForKey:v25];

    v26 = NSStringFromSelector(sel_isInEarDetectionSupported);
    v5->_inEarDetectionSupported = [coderCopy decodeBoolForKey:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_name);
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    name = v5->_name;
    v5->_name = v29;

    v31 = NSStringFromSelector(sel_isPreferred);
    v5->_preferred = [coderCopy decodeBoolForKey:v31];

    v32 = NSStringFromSelector(sel_isPreferredAndActive);
    v5->_preferredAndActive = [coderCopy decodeBoolForKey:v32];

    v33 = NSStringFromSelector(sel_isReceiver);
    v5->_receiver = [coderCopy decodeBoolForKey:v33];

    v34 = NSStringFromSelector(sel_isSpeaker);
    v5->_speaker = [coderCopy decodeBoolForKey:v34];

    v35 = NSStringFromSelector(sel_supportsHighQualityVoiceWithMedia);
    v5->_supportsHighQualityVoiceWithMedia = [coderCopy decodeBoolForKey:v35];

    v36 = NSStringFromSelector(sel_supportsRelay);
    v5->_supportsRelay = [coderCopy decodeBoolForKey:v36];

    v37 = objc_opt_class();
    v38 = NSStringFromSelector(sel_uniqueIdentifier);
    v39 = [coderCopy decodeObjectOfClass:v37 forKey:v38];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v39;

    v41 = NSStringFromSelector(sel_isWiredHeadphones);
    v5->_wiredHeadphones = [coderCopy decodeBoolForKey:v41];

    v42 = NSStringFromSelector(sel_isWiredHeadset);
    v5->_wiredHeadset = [coderCopy decodeBoolForKey:v42];

    v43 = NSStringFromSelector(sel_isWirelessHeadset);
    v5->_wirelessHeadset = [coderCopy decodeBoolForKey:v43];

    v44 = NSStringFromSelector(sel_isPartnerRouteRoutable);
    v5->_partnerRouteRoutable = [coderCopy decodeBoolForKey:v44];

    v45 = NSStringFromSelector(sel_isSiblingRoutePresent);
    v5->_siblingRoutePresent = [coderCopy decodeBoolForKey:v45];

    v46 = NSStringFromSelector(sel_supportsSharePlay);
    v5->_supportsSharePlay = [coderCopy decodeBoolForKey:v46];

    v47 = NSStringFromSelector(sel_isRecommended);
    v5->_recommended = [coderCopy decodeBoolForKey:v47];

    v48 = objc_opt_class();
    v49 = NSStringFromSelector(sel_modelIdentifier);
    v50 = [coderCopy decodeObjectOfClass:v48 forKey:v49];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v50;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  isA2DPRoute = [(TURoute *)self isA2DPRoute];
  v6 = NSStringFromSelector(sel_isA2DPRoute);
  [coderCopy encodeBool:isA2DPRoute forKey:v6];

  isAirTunes = [(TURoute *)self isAirTunes];
  v8 = NSStringFromSelector(sel_isAirTunes);
  [coderCopy encodeBool:isAirTunes forKey:v8];

  isCarAudio = [(TURoute *)self isCarAudio];
  v10 = NSStringFromSelector(sel_isCarAudio);
  [coderCopy encodeBool:isCarAudio forKey:v10];

  isCurrentlyPicked = [(TURoute *)self isCurrentlyPicked];
  v12 = NSStringFromSelector(sel_isCurrentlyPicked);
  [coderCopy encodeBool:isCurrentlyPicked forKey:v12];

  isBluetooth = [(TURoute *)self isBluetooth];
  v14 = NSStringFromSelector(sel_isBluetooth);
  [coderCopy encodeBool:isBluetooth forKey:v14];

  bluetoothEndpointType = [(TURoute *)self bluetoothEndpointType];
  v16 = NSStringFromSelector(sel_bluetoothEndpointType);
  [coderCopy encodeInteger:bluetoothEndpointType forKey:v16];

  isBluetoothLE = [(TURoute *)self isBluetoothLE];
  v18 = NSStringFromSelector(sel_isBluetoothLE);
  [coderCopy encodeBool:isBluetoothLE forKey:v18];

  isBluetoothManaged = [(TURoute *)self isBluetoothManaged];
  v20 = NSStringFromSelector(sel_isBluetoothManaged);
  [coderCopy encodeBool:isBluetoothManaged forKey:v20];

  isDefaultRoute = [(TURoute *)self isDefaultRoute];
  v22 = NSStringFromSelector(sel_isDefaultRoute);
  [coderCopy encodeBool:isDefaultRoute forKey:v22];

  deviceType = [(TURoute *)self deviceType];
  v24 = NSStringFromSelector(sel_deviceType);
  [coderCopy encodeInteger:deviceType forKey:v24];

  isGuest = [(TURoute *)self isGuest];
  v26 = NSStringFromSelector(sel_isGuest);
  [coderCopy encodeBool:isGuest forKey:v26];

  identifiersOfOtherConnectedDevices = [(TURoute *)self identifiersOfOtherConnectedDevices];
  v28 = NSStringFromSelector(sel_identifiersOfOtherConnectedDevices);
  [coderCopy encodeObject:identifiersOfOtherConnectedDevices forKey:v28];

  isInTipiWithCompanion = [(TURoute *)self isInTipiWithCompanion];
  v30 = NSStringFromSelector(sel_isInTipiWithCompanion);
  [coderCopy encodeBool:isInTipiWithCompanion forKey:v30];

  isSmartRoutedTo = [(TURoute *)self isSmartRoutedTo];
  v32 = NSStringFromSelector(sel_isSmartRoutedTo);
  [coderCopy encodeBool:isSmartRoutedTo forKey:v32];

  isInEarDetectionEnabled = [(TURoute *)self isInEarDetectionEnabled];
  v34 = NSStringFromSelector(sel_isInEarDetectionEnabled);
  [coderCopy encodeBool:isInEarDetectionEnabled forKey:v34];

  isInEarDetectionSupported = [(TURoute *)self isInEarDetectionSupported];
  v36 = NSStringFromSelector(sel_isInEarDetectionSupported);
  [coderCopy encodeBool:isInEarDetectionSupported forKey:v36];

  isPreferred = [(TURoute *)self isPreferred];
  v38 = NSStringFromSelector(sel_isPreferred);
  [coderCopy encodeBool:isPreferred forKey:v38];

  isPreferredAndActive = [(TURoute *)self isPreferredAndActive];
  v40 = NSStringFromSelector(sel_isPreferredAndActive);
  [coderCopy encodeBool:isPreferredAndActive forKey:v40];

  name = [(TURoute *)self name];
  v42 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:name forKey:v42];

  isReceiver = [(TURoute *)self isReceiver];
  v44 = NSStringFromSelector(sel_isReceiver);
  [coderCopy encodeBool:isReceiver forKey:v44];

  isSpeaker = [(TURoute *)self isSpeaker];
  v46 = NSStringFromSelector(sel_isSpeaker);
  [coderCopy encodeBool:isSpeaker forKey:v46];

  supportsHighQualityVoiceWithMedia = [(TURoute *)self supportsHighQualityVoiceWithMedia];
  v48 = NSStringFromSelector(sel_supportsHighQualityVoiceWithMedia);
  [coderCopy encodeBool:supportsHighQualityVoiceWithMedia forKey:v48];

  supportsRelay = [(TURoute *)self supportsRelay];
  v50 = NSStringFromSelector(sel_supportsRelay);
  [coderCopy encodeBool:supportsRelay forKey:v50];

  uniqueIdentifier = [(TURoute *)self uniqueIdentifier];
  v52 = NSStringFromSelector(sel_uniqueIdentifier);
  [coderCopy encodeObject:uniqueIdentifier forKey:v52];

  isWiredHeadphones = [(TURoute *)self isWiredHeadphones];
  v54 = NSStringFromSelector(sel_isWiredHeadphones);
  [coderCopy encodeBool:isWiredHeadphones forKey:v54];

  isWiredHeadset = [(TURoute *)self isWiredHeadset];
  v56 = NSStringFromSelector(sel_isWiredHeadset);
  [coderCopy encodeBool:isWiredHeadset forKey:v56];

  isWirelessHeadset = [(TURoute *)self isWirelessHeadset];
  v58 = NSStringFromSelector(sel_isWirelessHeadset);
  [coderCopy encodeBool:isWirelessHeadset forKey:v58];

  isPartnerRouteRoutable = [(TURoute *)self isPartnerRouteRoutable];
  v60 = NSStringFromSelector(sel_isPartnerRouteRoutable);
  [coderCopy encodeBool:isPartnerRouteRoutable forKey:v60];

  isSiblingRoutePresent = [(TURoute *)self isSiblingRoutePresent];
  v62 = NSStringFromSelector(sel_isSiblingRoutePresent);
  [coderCopy encodeBool:isSiblingRoutePresent forKey:v62];

  supportsSharePlay = [(TURoute *)self supportsSharePlay];
  v64 = NSStringFromSelector(sel_supportsSharePlay);
  [coderCopy encodeBool:supportsSharePlay forKey:v64];

  isRecommended = [(TURoute *)self isRecommended];
  v66 = NSStringFromSelector(sel_isRecommended);
  [coderCopy encodeBool:isRecommended forKey:v66];

  modelIdentifier = [(TURoute *)self modelIdentifier];
  v67 = NSStringFromSelector(sel_modelIdentifier);
  [coderCopy encodeObject:modelIdentifier forKey:v67];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TURoute *)self isEqualToRoute:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  if ([(TURoute *)self isA2DPRoute])
  {
    v3 = 1231;
  }

  else
  {
    v3 = 1237;
  }

  if ([(TURoute *)self isAirTunes])
  {
    v4 = 1231;
  }

  else
  {
    v4 = 1237;
  }

  v5 = v4 ^ v3;
  if ([(TURoute *)self isCarAudio])
  {
    v6 = 1231;
  }

  else
  {
    v6 = 1237;
  }

  if ([(TURoute *)self isCurrentlyPicked])
  {
    v7 = 1231;
  }

  else
  {
    v7 = 1237;
  }

  v8 = v5 ^ v6 ^ v7;
  if ([(TURoute *)self isBluetooth])
  {
    v9 = 1231;
  }

  else
  {
    v9 = 1237;
  }

  v10 = v9 ^ [(TURoute *)self bluetoothEndpointType];
  if ([(TURoute *)self isBluetoothLE])
  {
    v11 = 1231;
  }

  else
  {
    v11 = 1237;
  }

  v12 = v8 ^ v10 ^ v11;
  if ([(TURoute *)self isBluetoothManaged])
  {
    v13 = 1231;
  }

  else
  {
    v13 = 1237;
  }

  if ([(TURoute *)self isDefaultRoute])
  {
    v14 = 1231;
  }

  else
  {
    v14 = 1237;
  }

  v15 = v13 ^ v14 ^ [(TURoute *)self deviceType];
  if ([(TURoute *)self isGuest])
  {
    v16 = 1231;
  }

  else
  {
    v16 = 1237;
  }

  v17 = v12 ^ v15 ^ v16;
  identifiersOfOtherConnectedDevices = [(TURoute *)self identifiersOfOtherConnectedDevices];
  v19 = [identifiersOfOtherConnectedDevices hash];
  if ([(TURoute *)self isInTipiWithCompanion])
  {
    v20 = 1231;
  }

  else
  {
    v20 = 1237;
  }

  v21 = v19 ^ v20;
  if ([(TURoute *)self isSmartRoutedTo])
  {
    v22 = 1231;
  }

  else
  {
    v22 = 1237;
  }

  v23 = v21 ^ v22;
  if ([(TURoute *)self isInEarDetectionEnabled])
  {
    v24 = 1231;
  }

  else
  {
    v24 = 1237;
  }

  v25 = v23 ^ v24;
  if ([(TURoute *)self isInEarDetectionSupported])
  {
    v26 = 1231;
  }

  else
  {
    v26 = 1237;
  }

  v27 = v17 ^ v25 ^ v26;
  name = [(TURoute *)self name];
  v29 = [name hash];
  if ([(TURoute *)self isPreferred])
  {
    v30 = 1231;
  }

  else
  {
    v30 = 1237;
  }

  v31 = v29 ^ v30;
  if ([(TURoute *)self isPreferredAndActive])
  {
    v32 = 1231;
  }

  else
  {
    v32 = 1237;
  }

  v33 = v31 ^ v32;
  if ([(TURoute *)self isReceiver])
  {
    v34 = 1231;
  }

  else
  {
    v34 = 1237;
  }

  v35 = v33 ^ v34;
  if ([(TURoute *)self isSpeaker])
  {
    v36 = 1231;
  }

  else
  {
    v36 = 1237;
  }

  v37 = v35 ^ v36;
  if ([(TURoute *)self supportsRelay])
  {
    v38 = 1231;
  }

  else
  {
    v38 = 1237;
  }

  v39 = v27 ^ v37 ^ v38;
  uniqueIdentifier = [(TURoute *)self uniqueIdentifier];
  v41 = [uniqueIdentifier hash];
  if ([(TURoute *)self isWiredHeadphones])
  {
    v42 = 1231;
  }

  else
  {
    v42 = 1237;
  }

  v43 = v41 ^ v42;
  if ([(TURoute *)self isWiredHeadset])
  {
    v44 = 1231;
  }

  else
  {
    v44 = 1237;
  }

  v45 = v43 ^ v44;
  if ([(TURoute *)self isWirelessHeadset])
  {
    v46 = 1231;
  }

  else
  {
    v46 = 1237;
  }

  v47 = v45 ^ v46;
  if ([(TURoute *)self isPartnerRouteRoutable])
  {
    v48 = 1231;
  }

  else
  {
    v48 = 1237;
  }

  v49 = v47 ^ v48;
  if ([(TURoute *)self isSiblingRoutePresent])
  {
    v50 = 1231;
  }

  else
  {
    v50 = 1237;
  }

  v51 = v49 ^ v50;
  if ([(TURoute *)self supportsSharePlay])
  {
    v52 = 1231;
  }

  else
  {
    v52 = 1237;
  }

  v53 = v39 ^ v51 ^ v52;
  if ([(TURoute *)self isRecommended])
  {
    v54 = 1231;
  }

  else
  {
    v54 = 1237;
  }

  return v53 ^ v54;
}

- (BOOL)isEqualToRoute:(id)route
{
  routeCopy = route;
  if ([(TURoute *)self isEqualToRouteIgnoringIsRecommended:routeCopy])
  {
    isRecommended = [(TURoute *)self isRecommended];
    v6 = isRecommended ^ [routeCopy isRecommended] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isEqualToRouteIgnoringIsRecommended:(id)recommended
{
  recommendedCopy = recommended;
  isA2DPRoute = [(TURoute *)self isA2DPRoute];
  if (isA2DPRoute != [recommendedCopy isA2DPRoute])
  {
    goto LABEL_12;
  }

  isAirTunes = [(TURoute *)self isAirTunes];
  if (isAirTunes != [recommendedCopy isAirTunes])
  {
    goto LABEL_12;
  }

  isCarAudio = [(TURoute *)self isCarAudio];
  if (isCarAudio != [recommendedCopy isCarAudio])
  {
    goto LABEL_12;
  }

  isCurrentlyPicked = [(TURoute *)self isCurrentlyPicked];
  if (isCurrentlyPicked != [recommendedCopy isCurrentlyPicked])
  {
    goto LABEL_12;
  }

  isBluetooth = [(TURoute *)self isBluetooth];
  if (isBluetooth == [recommendedCopy isBluetooth] && (v10 = -[TURoute bluetoothEndpointType](self, "bluetoothEndpointType"), v10 == objc_msgSend(recommendedCopy, "bluetoothEndpointType")) && (v11 = -[TURoute isBluetoothLE](self, "isBluetoothLE"), v11 == objc_msgSend(recommendedCopy, "isBluetoothLE")) && (v12 = -[TURoute isBluetoothManaged](self, "isBluetoothManaged"), v12 == objc_msgSend(recommendedCopy, "isBluetoothManaged")) && (v13 = -[TURoute isDefaultRoute](self, "isDefaultRoute"), v13 == objc_msgSend(recommendedCopy, "isDefaultRoute")) && (v14 = -[TURoute deviceType](self, "deviceType"), v14 == objc_msgSend(recommendedCopy, "deviceType")) && (v15 = -[TURoute isGuest](self, "isGuest"), v15 == objc_msgSend(recommendedCopy, "isGuest")))
  {
    identifiersOfOtherConnectedDevices = [(TURoute *)self identifiersOfOtherConnectedDevices];
    identifiersOfOtherConnectedDevices2 = [recommendedCopy identifiersOfOtherConnectedDevices];
    if ([identifiersOfOtherConnectedDevices isEqualToArray:identifiersOfOtherConnectedDevices2] && (v20 = -[TURoute isInTipiWithCompanion](self, "isInTipiWithCompanion"), v20 == objc_msgSend(recommendedCopy, "isInTipiWithCompanion")) && (v21 = -[TURoute isSmartRoutedTo](self, "isSmartRoutedTo"), v21 == objc_msgSend(recommendedCopy, "isSmartRoutedTo")) && (v22 = -[TURoute isInEarDetectionEnabled](self, "isInEarDetectionEnabled"), v22 == objc_msgSend(recommendedCopy, "isInEarDetectionEnabled")) && (v23 = -[TURoute isInEarDetectionSupported](self, "isInEarDetectionSupported"), v23 == objc_msgSend(recommendedCopy, "isInEarDetectionSupported")))
    {
      name = [(TURoute *)self name];
      name2 = [recommendedCopy name];
      if ([name isEqualToString:name2] && (v26 = -[TURoute isPreferred](self, "isPreferred"), v26 == objc_msgSend(recommendedCopy, "isPreferred")) && (v27 = -[TURoute isPreferredAndActive](self, "isPreferredAndActive"), v27 == objc_msgSend(recommendedCopy, "isPreferredAndActive")) && (v28 = -[TURoute isReceiver](self, "isReceiver"), v28 == objc_msgSend(recommendedCopy, "isReceiver")) && (v29 = -[TURoute isSpeaker](self, "isSpeaker"), v29 == objc_msgSend(recommendedCopy, "isSpeaker")) && (v30 = -[TURoute supportsRelay](self, "supportsRelay"), v30 == objc_msgSend(recommendedCopy, "supportsRelay")))
      {
        uniqueIdentifier = [(TURoute *)self uniqueIdentifier];
        uniqueIdentifier2 = [recommendedCopy uniqueIdentifier];
        if ([uniqueIdentifier isEqualToString:uniqueIdentifier2] && (v33 = -[TURoute isWiredHeadphones](self, "isWiredHeadphones"), v33 == objc_msgSend(recommendedCopy, "isWiredHeadphones")) && (v34 = -[TURoute isWiredHeadset](self, "isWiredHeadset"), v34 == objc_msgSend(recommendedCopy, "isWiredHeadset")) && (v35 = -[TURoute isWirelessHeadset](self, "isWirelessHeadset"), v35 == objc_msgSend(recommendedCopy, "isWirelessHeadset")) && (v36 = -[TURoute isPartnerRouteRoutable](self, "isPartnerRouteRoutable"), v36 == objc_msgSend(recommendedCopy, "isPartnerRouteRoutable")) && (v37 = -[TURoute isSiblingRoutePresent](self, "isSiblingRoutePresent"), v37 == objc_msgSend(recommendedCopy, "isSiblingRoutePresent")))
        {
          supportsSharePlay = [(TURoute *)self supportsSharePlay];
          v16 = supportsSharePlay ^ [recommendedCopy supportsSharePlay] ^ 1;
        }

        else
        {
          LOBYTE(v16) = 0;
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
LABEL_12:
    LOBYTE(v16) = 0;
  }

  return v16;
}

uint64_t __84__TURoute_Predicate__predicateForInEarRouteInTipiWithAndSmartRoutedToCompanionWatch__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isInTipiWithCompanion])
  {
    v3 = [v2 isSmartRoutedTo] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 isInEarDetected];

  return v4 & v3;
}

uint64_t __48__TURoute_Predicate__predicateForPreferredRoute__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isInEarDetectionSupported])
  {
    v3 = [v2 isInEarDetected];
  }

  else
  {
    v3 = [v2 isPreferred];
  }

  v4 = v3;

  return v4;
}

@end