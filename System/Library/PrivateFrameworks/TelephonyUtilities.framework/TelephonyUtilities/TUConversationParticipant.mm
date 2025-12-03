@interface TUConversationParticipant
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToParticipant:(id)participant;
- (TUConversationParticipant)initWithCoder:(id)coder;
- (TUConversationParticipant)initWithConversationParticipant:(id)participant;
- (TUConversationParticipant)initWithIdentifier:(unint64_t)identifier handle:(id)handle senderCorrelationIdentifier:(id)correlationIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationParticipant

- (TUConversationParticipant)initWithIdentifier:(unint64_t)identifier handle:(id)handle senderCorrelationIdentifier:(id)correlationIdentifier
{
  handleCopy = handle;
  correlationIdentifierCopy = correlationIdentifier;
  v18.receiver = self;
  v18.super_class = TUConversationParticipant;
  v11 = [(TUConversationParticipant *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_identifier = identifier;
    objc_storeStrong(&v11->_handle, handle);
    v13 = objc_alloc_init(TUConversationParticipantCapabilities);
    capabilities = v12->_capabilities;
    v12->_capabilities = v13;

    v15 = [correlationIdentifierCopy copy];
    senderCorrelationIdentifier = v12->_senderCorrelationIdentifier;
    v12->_senderCorrelationIdentifier = v15;
  }

  return v12;
}

- (TUConversationParticipant)initWithConversationParticipant:(id)participant
{
  participantCopy = participant;
  v8.receiver = self;
  v8.super_class = TUConversationParticipant;
  v5 = [(TUConversationParticipant *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_activeIDSDestination, *(participantCopy + 13));
    v6->_audioEnabled = *(participantCopy + 9);
    v6->_audioPriority = *(participantCopy + 10);
    objc_storeStrong(&v6->_avcIdentifier, *(participantCopy + 12));
    objc_storeStrong(&v6->_capabilities, *(participantCopy + 6));
    objc_storeStrong(&v6->_handle, *(participantCopy + 4));
    v6->_identifier = *(participantCopy + 3);
    v6->_muted = *(participantCopy + 8);
    v6->_screenEnabled = *(participantCopy + 11);
    v6->_screenToken = *(participantCopy + 8);
    v6->_streamToken = *(participantCopy + 7);
    v6->_captionsToken = *(participantCopy + 9);
    v6->_videoEnabled = *(participantCopy + 10);
    v6->_videoPriority = *(participantCopy + 11);
    v6->_audioPaused = *(participantCopy + 12);
    v6->_localAccountHandle = *(participantCopy + 14);
    v6->_audioVideoMode = *(participantCopy + 5);
    v6->_presentationMode = *(participantCopy + 15);
    objc_storeStrong(&v6->_association, *(participantCopy + 14));
    v6->_lightweight = *(participantCopy + 13);
    v6->_guestModeEnabled = *(participantCopy + 15);
    v6->_spatialPersonaEnabled = *(participantCopy + 16);
    v6->_cameraMixedWithScreen = *(participantCopy + 17);
    objc_storeStrong(&v6->_senderCorrelationIdentifier, *(participantCopy + 16));
    objc_storeStrong(&v6->_cluster, *(participantCopy + 17));
    v6->_isNearbySharePlay = *(participantCopy + 18);
  }

  return v6;
}

- (TUConversationParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_identifier);
  v6 = [coderCopy decodeIntegerForKey:v5];

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_handle);
  v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];

  v10 = [(TUConversationParticipant *)self initWithIdentifier:v6 handle:v9];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_activeIDSDestination);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    activeIDSDestination = v10->_activeIDSDestination;
    v10->_activeIDSDestination = v13;

    v15 = NSStringFromSelector(sel_isAudioEnabled);
    v10->_audioEnabled = [coderCopy decodeBoolForKey:v15];

    v16 = NSStringFromSelector(sel_audioPriority);
    v10->_audioPriority = [coderCopy decodeIntegerForKey:v16];

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_avcIdentifier);
    v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];
    avcIdentifier = v10->_avcIdentifier;
    v10->_avcIdentifier = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_capabilities);
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
    capabilities = v10->_capabilities;
    v10->_capabilities = v23;

    v25 = NSStringFromSelector(sel_isMuted);
    v10->_muted = [coderCopy decodeBoolForKey:v25];

    v26 = NSStringFromSelector(sel_isScreenEnabled);
    v10->_screenEnabled = [coderCopy decodeBoolForKey:v26];

    v27 = NSStringFromSelector(sel_screenToken);
    v10->_screenToken = [coderCopy decodeIntegerForKey:v27];

    v28 = NSStringFromSelector(sel_streamToken);
    v10->_streamToken = [coderCopy decodeIntegerForKey:v28];

    v29 = NSStringFromSelector(sel_captionsToken);
    v10->_captionsToken = [coderCopy decodeIntegerForKey:v29];

    v30 = NSStringFromSelector(sel_isVideoEnabled);
    v10->_videoEnabled = [coderCopy decodeBoolForKey:v30];

    v31 = NSStringFromSelector(sel_videoPriority);
    v10->_videoPriority = [coderCopy decodeIntegerForKey:v31];

    v32 = NSStringFromSelector(sel_isAudioPaused);
    v10->_audioPaused = [coderCopy decodeBoolForKey:v32];

    v33 = NSStringFromSelector(sel_isLocalAccountHandle);
    v10->_localAccountHandle = [coderCopy decodeBoolForKey:v33];

    v34 = NSStringFromSelector(sel_audioVideoMode);
    v10->_audioVideoMode = [coderCopy decodeIntegerForKey:v34];

    v35 = NSStringFromSelector(sel_presentationMode);
    v10->_presentationMode = [coderCopy decodeIntegerForKey:v35];

    v36 = objc_opt_class();
    v37 = NSStringFromSelector(sel_association);
    v38 = [coderCopy decodeObjectOfClass:v36 forKey:v37];
    association = v10->_association;
    v10->_association = v38;

    v40 = NSStringFromSelector(sel_isLightweight);
    v10->_lightweight = [coderCopy decodeBoolForKey:v40];

    v41 = NSStringFromSelector(sel_isGuestModeEnabled);
    v10->_guestModeEnabled = [coderCopy decodeBoolForKey:v41];

    v42 = NSStringFromSelector(sel_isSpatialPersonaEnabled);
    v10->_spatialPersonaEnabled = [coderCopy decodeBoolForKey:v42];

    v43 = NSStringFromSelector(sel_isCameraMixedWithScreen);
    v10->_cameraMixedWithScreen = [coderCopy decodeBoolForKey:v43];

    v44 = objc_opt_class();
    v45 = NSStringFromSelector(sel_senderCorrelationIdentifier);
    v46 = [coderCopy decodeObjectOfClass:v44 forKey:v45];
    senderCorrelationIdentifier = v10->_senderCorrelationIdentifier;
    v10->_senderCorrelationIdentifier = v46;

    v48 = objc_opt_class();
    v49 = NSStringFromSelector(sel_cluster);
    v50 = [coderCopy decodeObjectOfClass:v48 forKey:v49];
    cluster = v10->_cluster;
    v10->_cluster = v50;

    v52 = NSStringFromSelector(sel_isNearbySharePlay);
    v10->_isNearbySharePlay = [coderCopy decodeBoolForKey:v52];
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activeIDSDestination = [(TUConversationParticipant *)self activeIDSDestination];
  v6 = NSStringFromSelector(sel_activeIDSDestination);
  [coderCopy encodeObject:activeIDSDestination forKey:v6];

  isAudioEnabled = [(TUConversationParticipant *)self isAudioEnabled];
  v8 = NSStringFromSelector(sel_isAudioEnabled);
  [coderCopy encodeBool:isAudioEnabled forKey:v8];

  audioPriority = [(TUConversationParticipant *)self audioPriority];
  v10 = NSStringFromSelector(sel_audioPriority);
  [coderCopy encodeInteger:audioPriority forKey:v10];

  avcIdentifier = [(TUConversationParticipant *)self avcIdentifier];
  v12 = NSStringFromSelector(sel_avcIdentifier);
  [coderCopy encodeObject:avcIdentifier forKey:v12];

  capabilities = [(TUConversationParticipant *)self capabilities];
  v14 = NSStringFromSelector(sel_capabilities);
  [coderCopy encodeObject:capabilities forKey:v14];

  handle = [(TUConversationParticipant *)self handle];
  v16 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v16];

  identifier = [(TUConversationParticipant *)self identifier];
  v18 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeInteger:identifier forKey:v18];

  isMuted = [(TUConversationParticipant *)self isMuted];
  v20 = NSStringFromSelector(sel_isMuted);
  [coderCopy encodeBool:isMuted forKey:v20];

  isScreenEnabled = [(TUConversationParticipant *)self isScreenEnabled];
  v22 = NSStringFromSelector(sel_isScreenEnabled);
  [coderCopy encodeBool:isScreenEnabled forKey:v22];

  screenToken = [(TUConversationParticipant *)self screenToken];
  v24 = NSStringFromSelector(sel_screenToken);
  [coderCopy encodeInteger:screenToken forKey:v24];

  streamToken = [(TUConversationParticipant *)self streamToken];
  v26 = NSStringFromSelector(sel_streamToken);
  [coderCopy encodeInteger:streamToken forKey:v26];

  captionsToken = [(TUConversationParticipant *)self captionsToken];
  v28 = NSStringFromSelector(sel_captionsToken);
  [coderCopy encodeInteger:captionsToken forKey:v28];

  isVideoEnabled = [(TUConversationParticipant *)self isVideoEnabled];
  v30 = NSStringFromSelector(sel_isVideoEnabled);
  [coderCopy encodeBool:isVideoEnabled forKey:v30];

  videoPriority = [(TUConversationParticipant *)self videoPriority];
  v32 = NSStringFromSelector(sel_videoPriority);
  [coderCopy encodeInteger:videoPriority forKey:v32];

  isAudioPaused = [(TUConversationParticipant *)self isAudioPaused];
  v34 = NSStringFromSelector(sel_isAudioPaused);
  [coderCopy encodeBool:isAudioPaused forKey:v34];

  isLocalAccountHandle = [(TUConversationParticipant *)self isLocalAccountHandle];
  v36 = NSStringFromSelector(sel_isLocalAccountHandle);
  [coderCopy encodeBool:isLocalAccountHandle forKey:v36];

  audioVideoMode = [(TUConversationParticipant *)self audioVideoMode];
  v38 = NSStringFromSelector(sel_audioVideoMode);
  [coderCopy encodeInteger:audioVideoMode forKey:v38];

  presentationMode = [(TUConversationParticipant *)self presentationMode];
  v40 = NSStringFromSelector(sel_presentationMode);
  [coderCopy encodeInteger:presentationMode forKey:v40];

  association = [(TUConversationParticipant *)self association];
  v42 = NSStringFromSelector(sel_association);
  [coderCopy encodeObject:association forKey:v42];

  isLightweight = [(TUConversationParticipant *)self isLightweight];
  v44 = NSStringFromSelector(sel_isLightweight);
  [coderCopy encodeBool:isLightweight forKey:v44];

  isGuestModeEnabled = [(TUConversationParticipant *)self isGuestModeEnabled];
  v46 = NSStringFromSelector(sel_isGuestModeEnabled);
  [coderCopy encodeBool:isGuestModeEnabled forKey:v46];

  isSpatialPersonaEnabled = [(TUConversationParticipant *)self isSpatialPersonaEnabled];
  v48 = NSStringFromSelector(sel_isSpatialPersonaEnabled);
  [coderCopy encodeBool:isSpatialPersonaEnabled forKey:v48];

  isCameraMixedWithScreen = [(TUConversationParticipant *)self isCameraMixedWithScreen];
  v50 = NSStringFromSelector(sel_isCameraMixedWithScreen);
  [coderCopy encodeBool:isCameraMixedWithScreen forKey:v50];

  senderCorrelationIdentifier = [(TUConversationParticipant *)self senderCorrelationIdentifier];
  v52 = NSStringFromSelector(sel_senderCorrelationIdentifier);
  [coderCopy encodeObject:senderCorrelationIdentifier forKey:v52];

  cluster = [(TUConversationParticipant *)self cluster];
  v54 = NSStringFromSelector(sel_cluster);
  [coderCopy encodeObject:cluster forKey:v54];

  isNearbySharePlay = [(TUConversationParticipant *)self isNearbySharePlay];
  v56 = NSStringFromSelector(sel_isNearbySharePlay);
  [coderCopy encodeBool:isNearbySharePlay forKey:v56];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUConversationParticipant allocWithZone:zone];

  return [(TUConversationParticipant *)v4 initWithConversationParticipant:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TUMutableConversationParticipant allocWithZone:zone];

  return [(TUConversationParticipant *)v4 initWithConversationParticipant:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" identifier=%lu", -[TUConversationParticipant identifier](self, "identifier")];
  handle = [(TUConversationParticipant *)self handle];
  [v3 appendFormat:@" handle=%@", handle];

  [v3 appendFormat:@" muted=%d", -[TUConversationParticipant isMuted](self, "isMuted")];
  [v3 appendFormat:@" audioEnabled=%d", -[TUConversationParticipant isAudioEnabled](self, "isAudioEnabled")];
  [v3 appendFormat:@" videoEnabled=%d", -[TUConversationParticipant isVideoEnabled](self, "isVideoEnabled")];
  [v3 appendFormat:@" screenEnabled=%d", -[TUConversationParticipant isScreenEnabled](self, "isScreenEnabled")];
  [v3 appendFormat:@" streamToken=%ld", -[TUConversationParticipant streamToken](self, "streamToken")];
  [v3 appendFormat:@" screenToken=%ld", -[TUConversationParticipant screenToken](self, "screenToken")];
  [v3 appendFormat:@" captionsToken=%ld", -[TUConversationParticipant captionsToken](self, "captionsToken")];
  capabilities = [(TUConversationParticipant *)self capabilities];
  [v3 appendFormat:@" capabilities=%@", capabilities];

  [v3 appendFormat:@" audioPaused=%d", -[TUConversationParticipant isAudioPaused](self, "isAudioPaused")];
  [v3 appendFormat:@" isLightweight=%d", -[TUConversationParticipant isLightweight](self, "isLightweight")];
  [v3 appendFormat:@" isLocalAccountHandle=%d", -[TUConversationParticipant isLocalAccountHandle](self, "isLocalAccountHandle")];
  association = [(TUConversationParticipant *)self association];

  if (association)
  {
    association2 = [(TUConversationParticipant *)self association];
    [v3 appendFormat:@" association=%@", association2];
  }

  [v3 appendFormat:@" isGuestModeEnabled=%d", -[TUConversationParticipant isGuestModeEnabled](self, "isGuestModeEnabled")];
  [v3 appendFormat:@" avMode=%ld", -[TUConversationParticipant audioVideoMode](self, "audioVideoMode")];
  [v3 appendFormat:@" presentationMode=%ld", -[TUConversationParticipant presentationMode](self, "presentationMode")];
  senderCorrelationIdentifier = [(TUConversationParticipant *)self senderCorrelationIdentifier];

  if (senderCorrelationIdentifier)
  {
    senderCorrelationIdentifier2 = [(TUConversationParticipant *)self senderCorrelationIdentifier];
    [v3 appendFormat:@" senderCorrelationIdentifier=%@", senderCorrelationIdentifier2];
  }

  [v3 appendFormat:@" audioPriority=%ld", -[TUConversationParticipant audioPriority](self, "audioPriority")];
  if ([(TUConversationParticipant *)self isCameraMixedWithScreen])
  {
    [v3 appendFormat:@" isCameraMixedWithScreen=%d", -[TUConversationParticipant isCameraMixedWithScreen](self, "isCameraMixedWithScreen")];
  }

  cluster = [(TUConversationParticipant *)self cluster];

  if (cluster)
  {
    cluster2 = [(TUConversationParticipant *)self cluster];
    [v3 appendFormat:@" cluster=%@", cluster2];
  }

  [v3 appendFormat:@" isNearbySharePlay=%d", -[TUConversationParticipant isNearbySharePlay](self, "isNearbySharePlay")];
  [v3 appendString:@">"];
  v12 = [v3 copy];

  return v12;
}

- (unint64_t)hash
{
  activeIDSDestination = [(TUConversationParticipant *)self activeIDSDestination];
  v4 = [activeIDSDestination hash];
  if ([(TUConversationParticipant *)self isAudioEnabled])
  {
    v5 = 1231;
  }

  else
  {
    v5 = 1237;
  }

  avcIdentifier = [(TUConversationParticipant *)self avcIdentifier];
  v7 = v5 ^ v4 ^ [avcIdentifier hash];
  capabilities = [(TUConversationParticipant *)self capabilities];
  v9 = [capabilities hash];
  handle = [(TUConversationParticipant *)self handle];
  v11 = v9 ^ [handle hash];
  v12 = v7 ^ v11 ^ [(TUConversationParticipant *)self identifier];
  if ([(TUConversationParticipant *)self isMuted])
  {
    v13 = 1231;
  }

  else
  {
    v13 = 1237;
  }

  if ([(TUConversationParticipant *)self isScreenEnabled])
  {
    v14 = 1231;
  }

  else
  {
    v14 = 1237;
  }

  v15 = v12 ^ v13 ^ v14 ^ [(TUConversationParticipant *)self screenToken];
  streamToken = [(TUConversationParticipant *)self streamToken];
  v17 = streamToken ^ [(TUConversationParticipant *)self captionsToken];
  if ([(TUConversationParticipant *)self isVideoEnabled])
  {
    v18 = 1231;
  }

  else
  {
    v18 = 1237;
  }

  v19 = v17 ^ v18;
  if ([(TUConversationParticipant *)self isAudioPaused])
  {
    v20 = 1231;
  }

  else
  {
    v20 = 1237;
  }

  v21 = v19 ^ v20;
  if ([(TUConversationParticipant *)self isLocalAccountHandle])
  {
    v22 = 1231;
  }

  else
  {
    v22 = 1237;
  }

  v23 = v15 ^ v21 ^ v22;
  if ([(TUConversationParticipant *)self isLightweight])
  {
    v24 = 1231;
  }

  else
  {
    v24 = 1237;
  }

  association = [(TUConversationParticipant *)self association];
  v26 = v24 ^ [association hash];
  if ([(TUConversationParticipant *)self isGuestModeEnabled])
  {
    v27 = 1231;
  }

  else
  {
    v27 = 1237;
  }

  v28 = v26 ^ v27 ^ [(TUConversationParticipant *)self audioVideoMode];
  v29 = v23 ^ v28 ^ [(TUConversationParticipant *)self presentationMode];
  if ([(TUConversationParticipant *)self isSpatialPersonaEnabled])
  {
    v30 = 1231;
  }

  else
  {
    v30 = 1237;
  }

  if ([(TUConversationParticipant *)self isCameraMixedWithScreen])
  {
    v31 = 1231;
  }

  else
  {
    v31 = 1237;
  }

  v32 = v30 ^ v31;
  if ([(TUConversationParticipant *)self isNearbySharePlay])
  {
    v33 = 1231;
  }

  else
  {
    v33 = 1237;
  }

  v34 = v32 ^ v33;
  cluster = [(TUConversationParticipant *)self cluster];
  v36 = v34 ^ [cluster hash];

  return v29 ^ v36;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationParticipant *)self isEqualToParticipant:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToParticipant:(id)participant
{
  participantCopy = participant;
  activeIDSDestination = [(TUConversationParticipant *)self activeIDSDestination];
  activeIDSDestination2 = [participantCopy activeIDSDestination];
  if (activeIDSDestination != activeIDSDestination2)
  {
    activeIDSDestination3 = [(TUConversationParticipant *)self activeIDSDestination];
    activeIDSDestination4 = [participantCopy activeIDSDestination];
    if (![activeIDSDestination3 isEqualToString:activeIDSDestination4])
    {
      LOBYTE(v10) = 0;
LABEL_32:

      goto LABEL_33;
    }
  }

  isAudioEnabled = [(TUConversationParticipant *)self isAudioEnabled];
  if (isAudioEnabled != [participantCopy isAudioEnabled])
  {
    LOBYTE(v10) = 0;
    goto LABEL_31;
  }

  avcIdentifier = [(TUConversationParticipant *)self avcIdentifier];
  avcIdentifier2 = [participantCopy avcIdentifier];
  if (avcIdentifier == avcIdentifier2)
  {
    v46 = avcIdentifier;
  }

  else
  {
    avcIdentifier3 = [(TUConversationParticipant *)self avcIdentifier];
    avcIdentifier4 = [participantCopy avcIdentifier];
    if (![avcIdentifier3 isEqualToString:avcIdentifier4])
    {
      LOBYTE(v10) = 0;
LABEL_29:

      goto LABEL_30;
    }

    v45 = avcIdentifier4;
    v46 = avcIdentifier;
  }

  capabilities = [(TUConversationParticipant *)self capabilities];
  capabilities2 = [participantCopy capabilities];
  if (![capabilities isEqualToCapabilities:capabilities2])
  {

    LOBYTE(v10) = 0;
    goto LABEL_28;
  }

  v43 = capabilities;
  v44 = avcIdentifier2;
  v42 = capabilities2;
  handle = [(TUConversationParticipant *)self handle];
  [participantCopy handle];
  v19 = v18 = handle;
  if (![handle isEqualToHandle:?])
  {
    LOBYTE(v10) = 0;
LABEL_26:
    avcIdentifier2 = v44;
    goto LABEL_27;
  }

  v41 = avcIdentifier3;
  identifier = [(TUConversationParticipant *)self identifier];
  avcIdentifier2 = v44;
  if (identifier == [participantCopy identifier])
  {
    isMuted = [(TUConversationParticipant *)self isMuted];
    if (isMuted == [participantCopy isMuted])
    {
      isScreenEnabled = [(TUConversationParticipant *)self isScreenEnabled];
      if (isScreenEnabled == [participantCopy isScreenEnabled])
      {
        screenToken = [(TUConversationParticipant *)self screenToken];
        if (screenToken == [participantCopy screenToken])
        {
          streamToken = [(TUConversationParticipant *)self streamToken];
          if (streamToken == [participantCopy streamToken])
          {
            captionsToken = [(TUConversationParticipant *)self captionsToken];
            if (captionsToken == [participantCopy captionsToken])
            {
              isVideoEnabled = [(TUConversationParticipant *)self isVideoEnabled];
              if (isVideoEnabled == [participantCopy isVideoEnabled])
              {
                isAudioPaused = [(TUConversationParticipant *)self isAudioPaused];
                if (isAudioPaused == [participantCopy isAudioPaused])
                {
                  isLocalAccountHandle = [(TUConversationParticipant *)self isLocalAccountHandle];
                  if (isLocalAccountHandle == [participantCopy isLocalAccountHandle])
                  {
                    isLightweight = [(TUConversationParticipant *)self isLightweight];
                    if (isLightweight == [participantCopy isLightweight])
                    {
                      association = [(TUConversationParticipant *)self association];
                      association2 = [participantCopy association];
                      if (TUObjectsAreEqualOrNil(association, association2) && (v32 = -[TUConversationParticipant isGuestModeEnabled](self, "isGuestModeEnabled"), v32 == [participantCopy isGuestModeEnabled]) && (v33 = -[TUConversationParticipant audioVideoMode](self, "audioVideoMode"), v33 == objc_msgSend(participantCopy, "audioVideoMode")) && (v34 = -[TUConversationParticipant presentationMode](self, "presentationMode"), v34 == objc_msgSend(participantCopy, "presentationMode")) && (v35 = -[TUConversationParticipant isSpatialPersonaEnabled](self, "isSpatialPersonaEnabled"), v35 == objc_msgSend(participantCopy, "isSpatialPersonaEnabled")) && (v36 = -[TUConversationParticipant isCameraMixedWithScreen](self, "isCameraMixedWithScreen"), v36 == objc_msgSend(participantCopy, "isCameraMixedWithScreen")))
                      {
                        cluster = [(TUConversationParticipant *)self cluster];
                        cluster2 = [participantCopy cluster];
                        if (TUObjectsAreEqualOrNil(cluster, cluster2))
                        {
                          v38 = [(TUConversationParticipant *)self isNearbySharePlay:cluster2];
                          v10 = v38 ^ [participantCopy isNearbySharePlay] ^ 1;
                        }

                        else
                        {
                          LOBYTE(v10) = 0;
                        }
                      }

                      else
                      {
                        LOBYTE(v10) = 0;
                      }

                      avcIdentifier3 = v41;
                      goto LABEL_26;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  LOBYTE(v10) = 0;
  avcIdentifier3 = v41;
LABEL_27:

LABEL_28:
  avcIdentifier4 = v45;
  avcIdentifier = v46;
  if (v46 != avcIdentifier2)
  {
    goto LABEL_29;
  }

LABEL_30:

LABEL_31:
  if (activeIDSDestination != activeIDSDestination2)
  {
    goto LABEL_32;
  }

LABEL_33:

  return v10;
}

@end