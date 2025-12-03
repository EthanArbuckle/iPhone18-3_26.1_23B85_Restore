@interface TVRCDeviceState
+ (id)arrayOfStatesFromDevices:(id)devices;
+ (id)deviceStateFromDevice:(id)device;
+ (id)setOfStatesFromDevices:(id)devices;
- (TVRCDeviceState)initWithCoder:(id)coder;
- (TVRCDeviceState)initWithDevice:(id)device;
- (id)description;
- (id)detailedDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCDeviceState

+ (id)deviceStateFromDevice:(id)device
{
  deviceCopy = device;
  v4 = [[TVRCDeviceState alloc] initWithDevice:deviceCopy];

  return v4;
}

+ (id)setOfStatesFromDevices:(id)devices
{
  v19 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = devicesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [TVRCDeviceState deviceStateFromDevice:*(*(&v14 + 1) + 8 * i), v14];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)arrayOfStatesFromDevices:(id)devices
{
  v19 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = devicesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [TVRCDeviceState deviceStateFromDevice:*(*(&v14 + 1) + 8 * i), v14];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (TVRCDeviceState)initWithDevice:(id)device
{
  deviceCopy = device;
  v34.receiver = self;
  v34.super_class = TVRCDeviceState;
  v5 = [(TVRCDeviceState *)&v34 init];
  if (v5)
  {
    name = [deviceCopy name];
    v7 = [name copy];
    name = v5->_name;
    v5->_name = v7;

    identifier = [deviceCopy identifier];
    v10 = [identifier copy];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    idsIdentifier = [deviceCopy idsIdentifier];
    v13 = [idsIdentifier copy];
    idsIdentifier = v5->_idsIdentifier;
    v5->_idsIdentifier = v13;

    alternateIdentifiers = [deviceCopy alternateIdentifiers];
    v16 = [alternateIdentifiers copy];
    alternateIdentifiers = v5->_alternateIdentifiers;
    v5->_alternateIdentifiers = v16;

    model = [deviceCopy model];
    v19 = [model copy];
    model = v5->_model;
    v5->_model = v19;

    supportedButtons = [deviceCopy supportedButtons];
    v22 = [supportedButtons copy];
    supportedButtons = v5->_supportedButtons;
    v5->_supportedButtons = v22;

    v5->_connectionState = [deviceCopy connectionState];
    v24 = [TVRCKeyboardState keyboardStateFromDevice:deviceCopy];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v24;

    v5->_pairingCapability = [deviceCopy pairingCapability];
    v5->_supportsDirectCaptionQueries = [deviceCopy supportsDirectCaptionQueries];
    v5->_supportsFindMyRemote = [deviceCopy supportsFindMyRemote];
    v5->_supportsTouchEvents = [deviceCopy supportsTouchEvents];
    v5->_paired = [deviceCopy paired];
    disconnectError = v5->_disconnectError;
    v5->_disconnectReason = 5;
    v5->_disconnectError = 0;

    v5->_connectionType = [deviceCopy connectionType];
    pairedRemoteInfo = [deviceCopy pairedRemoteInfo];
    v28 = [pairedRemoteInfo copy];
    pairedRemoteInfo = v5->_pairedRemoteInfo;
    v5->_pairedRemoteInfo = v28;

    nowPlayingInfo = [deviceCopy nowPlayingInfo];
    v31 = [nowPlayingInfo copy];
    nowPlayingInfo = v5->_nowPlayingInfo;
    v5->_nowPlayingInfo = v31;

    v5->_classification = [deviceCopy classification];
    v5->_siriRemoteFindingState = [deviceCopy siriRemoteFindingState];
    v5->_attentionState = [deviceCopy attentionState];
    v5->_linkType = [deviceCopy linkType];
  }

  return v5;
}

- (TVRCDeviceState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = TVRCDeviceState;
  v5 = [(TVRCDeviceState *)&v37 init];
  if (v5)
  {
    v5->_connectionState = [coderCopy decodeIntegerForKey:@"connectionState"];
    v5->_connectionType = [coderCopy decodeIntegerForKey:@"connectionType"];
    v5->_pairingCapability = [coderCopy decodeIntegerForKey:@"pairingCapability"];
    v5->_paired = [coderCopy decodeBoolForKey:@"paired"];
    v5->_supportsTouchEvents = [coderCopy decodeBoolForKey:@"supportsTouchEvents"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsIdentifier"];
    idsIdentifier = v5->_idsIdentifier;
    v5->_idsIdentifier = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"alternateIdentifiers"];
    alternateIdentifiers = v5->_alternateIdentifiers;
    v5->_alternateIdentifiers = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    model = v5->_model;
    v5->_model = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"supportedButtons"];
    supportedButtons = v5->_supportedButtons;
    v5->_supportedButtons = v22;

    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v24 setWithObjects:{v25, v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v28;

    v5->_disconnectReason = [coderCopy decodeIntegerForKey:@"disconnectReason"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disconnectError"];
    disconnectError = v5->_disconnectError;
    v5->_disconnectError = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairedRemoteInfo"];
    pairedRemoteInfo = v5->_pairedRemoteInfo;
    v5->_pairedRemoteInfo = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nowPlayingInfo"];
    nowPlayingInfo = v5->_nowPlayingInfo;
    v5->_nowPlayingInfo = v34;

    v5->_classification = [coderCopy decodeIntegerForKey:@"classification"];
    v5->_siriRemoteFindingState = [coderCopy decodeIntegerForKey:@"siriRemoteFindingState"];
    v5->_supportsFindMyRemote = [coderCopy decodeBoolForKey:@"supportsFindMyRemote"];
    v5->_attentionState = [coderCopy decodeIntegerForKey:@"attentionState"];
    v5->_supportsDirectCaptionQueries = [coderCopy decodeBoolForKey:@"supportsDirectCaptionQueries"];
    v5->_linkType = [coderCopy decodeIntegerForKey:@"linkType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  connectionState = self->_connectionState;
  coderCopy = coder;
  [coderCopy encodeInteger:connectionState forKey:@"connectionState"];
  [coderCopy encodeInteger:self->_connectionType forKey:@"connectionType"];
  [coderCopy encodeInteger:self->_pairingCapability forKey:@"pairingCapability"];
  [coderCopy encodeBool:self->_paired forKey:@"paired"];
  [coderCopy encodeBool:self->_supportsTouchEvents forKey:@"supportsTouchEvents"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_idsIdentifier forKey:@"idsIdentifier"];
  [coderCopy encodeObject:self->_alternateIdentifiers forKey:@"alternateIdentifiers"];
  [coderCopy encodeObject:self->_model forKey:@"model"];
  [coderCopy encodeObject:self->_supportedButtons forKey:@"supportedButtons"];
  [coderCopy encodeObject:self->_keyboardState forKey:@"keyboardState"];
  [coderCopy encodeInteger:self->_disconnectReason forKey:@"disconnectReason"];
  [coderCopy encodeObject:self->_disconnectError forKey:@"disconnectError"];
  [coderCopy encodeObject:self->_pairedRemoteInfo forKey:@"pairedRemoteInfo"];
  [coderCopy encodeObject:self->_nowPlayingInfo forKey:@"nowPlayingInfo"];
  [coderCopy encodeInteger:self->_classification forKey:@"classification"];
  [coderCopy encodeInteger:self->_siriRemoteFindingState forKey:@"siriRemoteFindingState"];
  [coderCopy encodeBool:self->_supportsFindMyRemote forKey:@"supportsFindMyRemote"];
  [coderCopy encodeInteger:self->_attentionState forKey:@"attentionState"];
  [coderCopy encodeBool:self->_supportsDirectCaptionQueries forKey:@"supportsDirectCaptionQueries"];
  [coderCopy encodeInteger:self->_linkType forKey:@"linkType"];
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_name withName:@"name"];
  [v3 appendString:self->_identifier withName:@"identifier"];
  [v3 appendString:self->_idsIdentifier withName:@"idsIdentifier"];
  [v3 appendDictionarySection:self->_alternateIdentifiers withName:@"alternateIdentifiers" skipIfEmpty:0];
  v4 = [v3 appendInteger:self->_pairingCapability withName:@"pairingCapability"];
  v5 = [v3 appendBool:self->_paired withName:@"paired"];
  v6 = [v3 appendBool:self->_supportsTouchEvents withName:@"supportsTouchEvents"];
  v7 = [v3 appendInteger:self->_connectionState withName:@"connectionState"];
  v8 = TVRCDeviceConnectionTypeDescription(self->_connectionType);
  [v3 appendString:v8 withName:@"connectionType"];

  v9 = [v3 appendObject:self->_keyboardState withName:@"keyboardState"];
  v10 = [v3 appendInteger:self->_disconnectReason withName:@"disconnectReason"];
  v11 = [v3 appendObject:self->_disconnectError withName:@"disconnectError" skipIfNil:1];
  v12 = [v3 appendObject:self->_pairedRemoteInfo withName:@"pairedRemoteInfo" skipIfNil:1];
  v13 = TVRCDeviceClassificationDescription(self->_classification);
  [v3 appendString:v13 withName:@"classification"];

  v14 = [v3 appendInteger:self->_siriRemoteFindingState withName:@"siriRemoteFindingState"];
  v15 = [v3 appendBool:self->_supportsFindMyRemote withName:@"supportsFindMyRemote"];
  v16 = self->_attentionState - 1;
  if (v16 >= 3)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", self->_attentionState];
  }

  else
  {
    v17 = off_279D82C38[v16];
  }

  [v3 appendString:v17 withName:@"attentionState"];

  v18 = [v3 appendBool:self->_supportsDirectCaptionQueries withName:@"supportsDirectCaptionQueries"];
  v19 = TVRCDeviceLinkTypeDescription(self->_linkType);
  [v3 appendString:v19 withName:@"linkType"];

  build = [v3 build];

  return build;
}

- (id)detailedDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_name withName:@"name"];
  [v3 appendString:self->_identifier withName:@"identifier"];
  [v3 appendString:self->_idsIdentifier withName:@"idsIdentifier"];
  [v3 appendDictionarySection:self->_alternateIdentifiers withName:@"alternateIdentifiers" skipIfEmpty:0];
  v4 = [v3 appendInteger:self->_pairingCapability withName:@"pairingCapability"];
  v5 = [v3 appendBool:self->_paired withName:@"paired"];
  v6 = [v3 appendBool:self->_supportsTouchEvents withName:@"supportsTouchEvents"];
  v7 = [v3 appendBool:self->_supportsFindMyRemote withName:@"supportsFindMyRemote"];
  v8 = [v3 appendInteger:self->_connectionState withName:@"connectionState"];
  v9 = TVRCDeviceLinkTypeDescription(self->_linkType);
  [v3 appendString:v9 withName:@"linkType"];

  v10 = TVRCDeviceConnectionTypeDescription(self->_connectionType);
  [v3 appendString:v10 withName:@"connectionType"];

  v11 = [v3 appendObject:self->_keyboardState withName:@"keyboardState"];
  v12 = [v3 appendInteger:self->_disconnectReason withName:@"disconnectReason"];
  v13 = [v3 appendObject:self->_disconnectError withName:@"disconnectError" skipIfNil:1];
  v14 = [v3 appendObject:self->_pairedRemoteInfo withName:@"pairedRemoteInfo" skipIfNil:1];
  v15 = TVRCDeviceClassificationDescription(self->_classification);
  [v3 appendString:v15 withName:@"classification"];

  v16 = [v3 appendInteger:self->_siriRemoteFindingState withName:@"siriRemoteFindingState"];
  v17 = self->_attentionState - 1;
  if (v17 >= 3)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", self->_attentionState];
  }

  else
  {
    v18 = off_279D82C38[v17];
  }

  [v3 appendString:v18 withName:@"attentionState"];

  v19 = [v3 appendObject:self->_supportedButtons withName:@"supportedButtons"];
  v20 = [v3 appendBool:self->_supportsDirectCaptionQueries withName:@"supportsDirectCaptionQueries"];
  build = [v3 build];

  return build;
}

@end