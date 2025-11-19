@interface TURoute
- (BOOL)isAuxiliary;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRoute:(id)a3;
- (BOOL)isEqualToRouteIgnoringIsRecommended:(id)a3;
- (BOOL)isInEarDetected;
- (BOOL)isTipiParticipant;
- (BOOL)isTriangleParticipant;
- (TURoute)initWithCoder:(id)a3;
- (TURoute)initWithRoute:(id)a3;
- (TURoute)initWithUniqueIdentifier:(id)a3 name:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TURoute

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TURoute *)self uniqueIdentifier];
  [v3 appendFormat:@" uniqueIdentifier=%@", v4];

  v5 = [(TURoute *)self name];
  [v3 appendFormat:@" name=%@", v5];

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

  v6 = [(TURoute *)self identifiersOfOtherConnectedDevices];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(TURoute *)self identifiersOfOtherConnectedDevices];
    v9 = [v8 componentsJoinedByString:{@", "}];
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

  v10 = [(TURoute *)self customDescription];
  [v3 appendString:v10];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isTipiParticipant
{
  v3 = [(TURoute *)self isBluetoothManaged];
  if (v3)
  {

    LOBYTE(v3) = [(TURoute *)self isPreferred];
  }

  return v3;
}

- (BOOL)isTriangleParticipant
{
  if ([(TURoute *)self isTipiParticipant]|| ![(TURoute *)self isPreferred])
  {
    return 0;
  }

  v3 = [(TURoute *)self identifiersOfOtherConnectedDevices];
  v4 = [v3 count] != 0;

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
  v3 = [(TURoute *)self isInEarDetectionEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(TURoute *)self isPreferredAndActive];
  }

  return v3;
}

- (TURoute)initWithUniqueIdentifier:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = TURoute;
  v8 = [(TURoute *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v9;

    v11 = [v7 copy];
    name = v8->_name;
    v8->_name = v11;

    identifiersOfOtherConnectedDevices = v8->_identifiersOfOtherConnectedDevices;
    v8->_identifiersOfOtherConnectedDevices = MEMORY[0x1E695E0F0];

    modelIdentifier = v8->_modelIdentifier;
    v8->_modelIdentifier = 0;
  }

  return v8;
}

- (TURoute)initWithRoute:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TURoute;
  v5 = [(TURoute *)&v15 init];
  if (v5)
  {
    -[TURoute setA2DPRoute:](v5, "setA2DPRoute:", [v4 isA2DPRoute]);
    -[TURoute setAirTunes:](v5, "setAirTunes:", [v4 isAirTunes]);
    -[TURoute setBluetooth:](v5, "setBluetooth:", [v4 isBluetooth]);
    -[TURoute setBluetoothEndpointType:](v5, "setBluetoothEndpointType:", [v4 bluetoothEndpointType]);
    -[TURoute setBluetoothLE:](v5, "setBluetoothLE:", [v4 isBluetoothLE]);
    -[TURoute setBluetoothManaged:](v5, "setBluetoothManaged:", [v4 isBluetoothManaged]);
    -[TURoute setCarAudio:](v5, "setCarAudio:", [v4 isCarAudio]);
    -[TURoute setCurrentlyPicked:](v5, "setCurrentlyPicked:", [v4 isCurrentlyPicked]);
    -[TURoute setDefaultRoute:](v5, "setDefaultRoute:", [v4 isDefaultRoute]);
    -[TURoute setDeviceType:](v5, "setDeviceType:", [v4 deviceType]);
    -[TURoute setGuest:](v5, "setGuest:", [v4 isGuest]);
    v6 = [v4 identifiersOfOtherConnectedDevices];
    v7 = [v6 copy];
    [(TURoute *)v5 setIdentifiersOfOtherConnectedDevices:v7];

    -[TURoute setInTipiWithCompanion:](v5, "setInTipiWithCompanion:", [v4 isInTipiWithCompanion]);
    -[TURoute setSmartRoutedTo:](v5, "setSmartRoutedTo:", [v4 isSmartRoutedTo]);
    -[TURoute setInEarDetectionEnabled:](v5, "setInEarDetectionEnabled:", [v4 isInEarDetectionEnabled]);
    -[TURoute setInEarDetectionSupported:](v5, "setInEarDetectionSupported:", [v4 isInEarDetectionSupported]);
    v8 = [v4 name];
    v9 = [v8 copy];
    [(TURoute *)v5 setName:v9];

    -[TURoute setPreferred:](v5, "setPreferred:", [v4 isPreferred]);
    -[TURoute setPreferredAndActive:](v5, "setPreferredAndActive:", [v4 isPreferredAndActive]);
    -[TURoute setReceiver:](v5, "setReceiver:", [v4 isReceiver]);
    -[TURoute setSpeaker:](v5, "setSpeaker:", [v4 isSpeaker]);
    -[TURoute setSupportsRelay:](v5, "setSupportsRelay:", [v4 supportsRelay]);
    v10 = [v4 uniqueIdentifier];
    v11 = [v10 copy];
    [(TURoute *)v5 setUniqueIdentifier:v11];

    -[TURoute setWiredHeadphones:](v5, "setWiredHeadphones:", [v4 isWiredHeadphones]);
    -[TURoute setWiredHeadset:](v5, "setWiredHeadset:", [v4 isWiredHeadset]);
    -[TURoute setWirelessHeadset:](v5, "setWirelessHeadset:", [v4 isWirelessHeadset]);
    -[TURoute setPartnerRouteRoutable:](v5, "setPartnerRouteRoutable:", [v4 isPartnerRouteRoutable]);
    -[TURoute setSiblingRoutePresent:](v5, "setSiblingRoutePresent:", [v4 isSiblingRoutePresent]);
    -[TURoute setSupportsSharePlay:](v5, "setSupportsSharePlay:", [v4 supportsSharePlay]);
    -[TURoute setRecommended:](v5, "setRecommended:", [v4 isRecommended]);
    v12 = [v4 modelIdentifier];
    v13 = [v12 copy];
    [(TURoute *)v5 setModelIdentifier:v13];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TURoute allocWithZone:a3];

  return [(TURoute *)v4 initWithRoute:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TUMutableRoute allocWithZone:a3];

  return [(TURoute *)v4 initWithRoute:self];
}

- (TURoute)initWithCoder:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = TURoute;
  v5 = [(TURoute *)&v53 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isA2DPRoute);
    v5->_A2DPRoute = [v4 decodeBoolForKey:v6];

    v7 = NSStringFromSelector(sel_isAirTunes);
    v5->_airTunes = [v4 decodeBoolForKey:v7];

    v8 = NSStringFromSelector(sel_isBluetooth);
    v5->_bluetooth = [v4 decodeBoolForKey:v8];

    v9 = NSStringFromSelector(sel_bluetoothEndpointType);
    v5->_bluetoothEndpointType = [v4 decodeIntegerForKey:v9];

    v10 = NSStringFromSelector(sel_isBluetoothLE);
    v5->_bluetoothLE = [v4 decodeBoolForKey:v10];

    v11 = NSStringFromSelector(sel_isBluetoothManaged);
    v5->_bluetoothManaged = [v4 decodeBoolForKey:v11];

    v12 = NSStringFromSelector(sel_isCarAudio);
    v5->_carAudio = [v4 decodeBoolForKey:v12];

    v13 = NSStringFromSelector(sel_isCurrentlyPicked);
    v5->_currentlyPicked = [v4 decodeBoolForKey:v13];

    v14 = NSStringFromSelector(sel_isDefaultRoute);
    v5->_defaultRoute = [v4 decodeBoolForKey:v14];

    v15 = NSStringFromSelector(sel_deviceType);
    v5->_deviceType = [v4 decodeIntegerForKey:v15];

    v16 = NSStringFromSelector(sel_isGuest);
    v5->_guest = [v4 decodeBoolForKey:v16];

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = NSStringFromSelector(sel_identifiersOfOtherConnectedDevices);
    v21 = [v4 decodeObjectOfClasses:v19 forKey:v20];
    identifiersOfOtherConnectedDevices = v5->_identifiersOfOtherConnectedDevices;
    v5->_identifiersOfOtherConnectedDevices = v21;

    v23 = NSStringFromSelector(sel_isInTipiWithCompanion);
    v5->_inTipiWithCompanion = [v4 decodeBoolForKey:v23];

    v24 = NSStringFromSelector(sel_isSmartRoutedTo);
    v5->_smartRoutedTo = [v4 decodeBoolForKey:v24];

    v25 = NSStringFromSelector(sel_isInEarDetectionEnabled);
    v5->_inEarDetectionEnabled = [v4 decodeBoolForKey:v25];

    v26 = NSStringFromSelector(sel_isInEarDetectionSupported);
    v5->_inEarDetectionSupported = [v4 decodeBoolForKey:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_name);
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    name = v5->_name;
    v5->_name = v29;

    v31 = NSStringFromSelector(sel_isPreferred);
    v5->_preferred = [v4 decodeBoolForKey:v31];

    v32 = NSStringFromSelector(sel_isPreferredAndActive);
    v5->_preferredAndActive = [v4 decodeBoolForKey:v32];

    v33 = NSStringFromSelector(sel_isReceiver);
    v5->_receiver = [v4 decodeBoolForKey:v33];

    v34 = NSStringFromSelector(sel_isSpeaker);
    v5->_speaker = [v4 decodeBoolForKey:v34];

    v35 = NSStringFromSelector(sel_supportsHighQualityVoiceWithMedia);
    v5->_supportsHighQualityVoiceWithMedia = [v4 decodeBoolForKey:v35];

    v36 = NSStringFromSelector(sel_supportsRelay);
    v5->_supportsRelay = [v4 decodeBoolForKey:v36];

    v37 = objc_opt_class();
    v38 = NSStringFromSelector(sel_uniqueIdentifier);
    v39 = [v4 decodeObjectOfClass:v37 forKey:v38];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v39;

    v41 = NSStringFromSelector(sel_isWiredHeadphones);
    v5->_wiredHeadphones = [v4 decodeBoolForKey:v41];

    v42 = NSStringFromSelector(sel_isWiredHeadset);
    v5->_wiredHeadset = [v4 decodeBoolForKey:v42];

    v43 = NSStringFromSelector(sel_isWirelessHeadset);
    v5->_wirelessHeadset = [v4 decodeBoolForKey:v43];

    v44 = NSStringFromSelector(sel_isPartnerRouteRoutable);
    v5->_partnerRouteRoutable = [v4 decodeBoolForKey:v44];

    v45 = NSStringFromSelector(sel_isSiblingRoutePresent);
    v5->_siblingRoutePresent = [v4 decodeBoolForKey:v45];

    v46 = NSStringFromSelector(sel_supportsSharePlay);
    v5->_supportsSharePlay = [v4 decodeBoolForKey:v46];

    v47 = NSStringFromSelector(sel_isRecommended);
    v5->_recommended = [v4 decodeBoolForKey:v47];

    v48 = objc_opt_class();
    v49 = NSStringFromSelector(sel_modelIdentifier);
    v50 = [v4 decodeObjectOfClass:v48 forKey:v49];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v50;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TURoute *)self isA2DPRoute];
  v6 = NSStringFromSelector(sel_isA2DPRoute);
  [v4 encodeBool:v5 forKey:v6];

  v7 = [(TURoute *)self isAirTunes];
  v8 = NSStringFromSelector(sel_isAirTunes);
  [v4 encodeBool:v7 forKey:v8];

  v9 = [(TURoute *)self isCarAudio];
  v10 = NSStringFromSelector(sel_isCarAudio);
  [v4 encodeBool:v9 forKey:v10];

  v11 = [(TURoute *)self isCurrentlyPicked];
  v12 = NSStringFromSelector(sel_isCurrentlyPicked);
  [v4 encodeBool:v11 forKey:v12];

  v13 = [(TURoute *)self isBluetooth];
  v14 = NSStringFromSelector(sel_isBluetooth);
  [v4 encodeBool:v13 forKey:v14];

  v15 = [(TURoute *)self bluetoothEndpointType];
  v16 = NSStringFromSelector(sel_bluetoothEndpointType);
  [v4 encodeInteger:v15 forKey:v16];

  v17 = [(TURoute *)self isBluetoothLE];
  v18 = NSStringFromSelector(sel_isBluetoothLE);
  [v4 encodeBool:v17 forKey:v18];

  v19 = [(TURoute *)self isBluetoothManaged];
  v20 = NSStringFromSelector(sel_isBluetoothManaged);
  [v4 encodeBool:v19 forKey:v20];

  v21 = [(TURoute *)self isDefaultRoute];
  v22 = NSStringFromSelector(sel_isDefaultRoute);
  [v4 encodeBool:v21 forKey:v22];

  v23 = [(TURoute *)self deviceType];
  v24 = NSStringFromSelector(sel_deviceType);
  [v4 encodeInteger:v23 forKey:v24];

  v25 = [(TURoute *)self isGuest];
  v26 = NSStringFromSelector(sel_isGuest);
  [v4 encodeBool:v25 forKey:v26];

  v27 = [(TURoute *)self identifiersOfOtherConnectedDevices];
  v28 = NSStringFromSelector(sel_identifiersOfOtherConnectedDevices);
  [v4 encodeObject:v27 forKey:v28];

  v29 = [(TURoute *)self isInTipiWithCompanion];
  v30 = NSStringFromSelector(sel_isInTipiWithCompanion);
  [v4 encodeBool:v29 forKey:v30];

  v31 = [(TURoute *)self isSmartRoutedTo];
  v32 = NSStringFromSelector(sel_isSmartRoutedTo);
  [v4 encodeBool:v31 forKey:v32];

  v33 = [(TURoute *)self isInEarDetectionEnabled];
  v34 = NSStringFromSelector(sel_isInEarDetectionEnabled);
  [v4 encodeBool:v33 forKey:v34];

  v35 = [(TURoute *)self isInEarDetectionSupported];
  v36 = NSStringFromSelector(sel_isInEarDetectionSupported);
  [v4 encodeBool:v35 forKey:v36];

  v37 = [(TURoute *)self isPreferred];
  v38 = NSStringFromSelector(sel_isPreferred);
  [v4 encodeBool:v37 forKey:v38];

  v39 = [(TURoute *)self isPreferredAndActive];
  v40 = NSStringFromSelector(sel_isPreferredAndActive);
  [v4 encodeBool:v39 forKey:v40];

  v41 = [(TURoute *)self name];
  v42 = NSStringFromSelector(sel_name);
  [v4 encodeObject:v41 forKey:v42];

  v43 = [(TURoute *)self isReceiver];
  v44 = NSStringFromSelector(sel_isReceiver);
  [v4 encodeBool:v43 forKey:v44];

  v45 = [(TURoute *)self isSpeaker];
  v46 = NSStringFromSelector(sel_isSpeaker);
  [v4 encodeBool:v45 forKey:v46];

  v47 = [(TURoute *)self supportsHighQualityVoiceWithMedia];
  v48 = NSStringFromSelector(sel_supportsHighQualityVoiceWithMedia);
  [v4 encodeBool:v47 forKey:v48];

  v49 = [(TURoute *)self supportsRelay];
  v50 = NSStringFromSelector(sel_supportsRelay);
  [v4 encodeBool:v49 forKey:v50];

  v51 = [(TURoute *)self uniqueIdentifier];
  v52 = NSStringFromSelector(sel_uniqueIdentifier);
  [v4 encodeObject:v51 forKey:v52];

  v53 = [(TURoute *)self isWiredHeadphones];
  v54 = NSStringFromSelector(sel_isWiredHeadphones);
  [v4 encodeBool:v53 forKey:v54];

  v55 = [(TURoute *)self isWiredHeadset];
  v56 = NSStringFromSelector(sel_isWiredHeadset);
  [v4 encodeBool:v55 forKey:v56];

  v57 = [(TURoute *)self isWirelessHeadset];
  v58 = NSStringFromSelector(sel_isWirelessHeadset);
  [v4 encodeBool:v57 forKey:v58];

  v59 = [(TURoute *)self isPartnerRouteRoutable];
  v60 = NSStringFromSelector(sel_isPartnerRouteRoutable);
  [v4 encodeBool:v59 forKey:v60];

  v61 = [(TURoute *)self isSiblingRoutePresent];
  v62 = NSStringFromSelector(sel_isSiblingRoutePresent);
  [v4 encodeBool:v61 forKey:v62];

  v63 = [(TURoute *)self supportsSharePlay];
  v64 = NSStringFromSelector(sel_supportsSharePlay);
  [v4 encodeBool:v63 forKey:v64];

  v65 = [(TURoute *)self isRecommended];
  v66 = NSStringFromSelector(sel_isRecommended);
  [v4 encodeBool:v65 forKey:v66];

  v68 = [(TURoute *)self modelIdentifier];
  v67 = NSStringFromSelector(sel_modelIdentifier);
  [v4 encodeObject:v68 forKey:v67];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TURoute *)self isEqualToRoute:v4];
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
  v18 = [(TURoute *)self identifiersOfOtherConnectedDevices];
  v19 = [v18 hash];
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
  v28 = [(TURoute *)self name];
  v29 = [v28 hash];
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
  v40 = [(TURoute *)self uniqueIdentifier];
  v41 = [v40 hash];
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

- (BOOL)isEqualToRoute:(id)a3
{
  v4 = a3;
  if ([(TURoute *)self isEqualToRouteIgnoringIsRecommended:v4])
  {
    v5 = [(TURoute *)self isRecommended];
    v6 = v5 ^ [v4 isRecommended] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isEqualToRouteIgnoringIsRecommended:(id)a3
{
  v4 = a3;
  v5 = [(TURoute *)self isA2DPRoute];
  if (v5 != [v4 isA2DPRoute])
  {
    goto LABEL_12;
  }

  v6 = [(TURoute *)self isAirTunes];
  if (v6 != [v4 isAirTunes])
  {
    goto LABEL_12;
  }

  v7 = [(TURoute *)self isCarAudio];
  if (v7 != [v4 isCarAudio])
  {
    goto LABEL_12;
  }

  v8 = [(TURoute *)self isCurrentlyPicked];
  if (v8 != [v4 isCurrentlyPicked])
  {
    goto LABEL_12;
  }

  v9 = [(TURoute *)self isBluetooth];
  if (v9 == [v4 isBluetooth] && (v10 = -[TURoute bluetoothEndpointType](self, "bluetoothEndpointType"), v10 == objc_msgSend(v4, "bluetoothEndpointType")) && (v11 = -[TURoute isBluetoothLE](self, "isBluetoothLE"), v11 == objc_msgSend(v4, "isBluetoothLE")) && (v12 = -[TURoute isBluetoothManaged](self, "isBluetoothManaged"), v12 == objc_msgSend(v4, "isBluetoothManaged")) && (v13 = -[TURoute isDefaultRoute](self, "isDefaultRoute"), v13 == objc_msgSend(v4, "isDefaultRoute")) && (v14 = -[TURoute deviceType](self, "deviceType"), v14 == objc_msgSend(v4, "deviceType")) && (v15 = -[TURoute isGuest](self, "isGuest"), v15 == objc_msgSend(v4, "isGuest")))
  {
    v18 = [(TURoute *)self identifiersOfOtherConnectedDevices];
    v19 = [v4 identifiersOfOtherConnectedDevices];
    if ([v18 isEqualToArray:v19] && (v20 = -[TURoute isInTipiWithCompanion](self, "isInTipiWithCompanion"), v20 == objc_msgSend(v4, "isInTipiWithCompanion")) && (v21 = -[TURoute isSmartRoutedTo](self, "isSmartRoutedTo"), v21 == objc_msgSend(v4, "isSmartRoutedTo")) && (v22 = -[TURoute isInEarDetectionEnabled](self, "isInEarDetectionEnabled"), v22 == objc_msgSend(v4, "isInEarDetectionEnabled")) && (v23 = -[TURoute isInEarDetectionSupported](self, "isInEarDetectionSupported"), v23 == objc_msgSend(v4, "isInEarDetectionSupported")))
    {
      v24 = [(TURoute *)self name];
      v25 = [v4 name];
      if ([v24 isEqualToString:v25] && (v26 = -[TURoute isPreferred](self, "isPreferred"), v26 == objc_msgSend(v4, "isPreferred")) && (v27 = -[TURoute isPreferredAndActive](self, "isPreferredAndActive"), v27 == objc_msgSend(v4, "isPreferredAndActive")) && (v28 = -[TURoute isReceiver](self, "isReceiver"), v28 == objc_msgSend(v4, "isReceiver")) && (v29 = -[TURoute isSpeaker](self, "isSpeaker"), v29 == objc_msgSend(v4, "isSpeaker")) && (v30 = -[TURoute supportsRelay](self, "supportsRelay"), v30 == objc_msgSend(v4, "supportsRelay")))
      {
        v31 = [(TURoute *)self uniqueIdentifier];
        v32 = [v4 uniqueIdentifier];
        if ([v31 isEqualToString:v32] && (v33 = -[TURoute isWiredHeadphones](self, "isWiredHeadphones"), v33 == objc_msgSend(v4, "isWiredHeadphones")) && (v34 = -[TURoute isWiredHeadset](self, "isWiredHeadset"), v34 == objc_msgSend(v4, "isWiredHeadset")) && (v35 = -[TURoute isWirelessHeadset](self, "isWirelessHeadset"), v35 == objc_msgSend(v4, "isWirelessHeadset")) && (v36 = -[TURoute isPartnerRouteRoutable](self, "isPartnerRouteRoutable"), v36 == objc_msgSend(v4, "isPartnerRouteRoutable")) && (v37 = -[TURoute isSiblingRoutePresent](self, "isSiblingRoutePresent"), v37 == objc_msgSend(v4, "isSiblingRoutePresent")))
        {
          v38 = [(TURoute *)self supportsSharePlay];
          v16 = v38 ^ [v4 supportsSharePlay] ^ 1;
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