@interface TUConversationParticipant
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToParticipant:(id)a3;
- (TUConversationParticipant)initWithCoder:(id)a3;
- (TUConversationParticipant)initWithConversationParticipant:(id)a3;
- (TUConversationParticipant)initWithIdentifier:(unint64_t)a3 handle:(id)a4 senderCorrelationIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationParticipant

- (TUConversationParticipant)initWithIdentifier:(unint64_t)a3 handle:(id)a4 senderCorrelationIdentifier:(id)a5
{
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = TUConversationParticipant;
  v11 = [(TUConversationParticipant *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_identifier = a3;
    objc_storeStrong(&v11->_handle, a4);
    v13 = objc_alloc_init(TUConversationParticipantCapabilities);
    capabilities = v12->_capabilities;
    v12->_capabilities = v13;

    v15 = [v10 copy];
    senderCorrelationIdentifier = v12->_senderCorrelationIdentifier;
    v12->_senderCorrelationIdentifier = v15;
  }

  return v12;
}

- (TUConversationParticipant)initWithConversationParticipant:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUConversationParticipant;
  v5 = [(TUConversationParticipant *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_activeIDSDestination, *(v4 + 13));
    v6->_audioEnabled = *(v4 + 9);
    v6->_audioPriority = *(v4 + 10);
    objc_storeStrong(&v6->_avcIdentifier, *(v4 + 12));
    objc_storeStrong(&v6->_capabilities, *(v4 + 6));
    objc_storeStrong(&v6->_handle, *(v4 + 4));
    v6->_identifier = *(v4 + 3);
    v6->_muted = *(v4 + 8);
    v6->_screenEnabled = *(v4 + 11);
    v6->_screenToken = *(v4 + 8);
    v6->_streamToken = *(v4 + 7);
    v6->_captionsToken = *(v4 + 9);
    v6->_videoEnabled = *(v4 + 10);
    v6->_videoPriority = *(v4 + 11);
    v6->_audioPaused = *(v4 + 12);
    v6->_localAccountHandle = *(v4 + 14);
    v6->_audioVideoMode = *(v4 + 5);
    v6->_presentationMode = *(v4 + 15);
    objc_storeStrong(&v6->_association, *(v4 + 14));
    v6->_lightweight = *(v4 + 13);
    v6->_guestModeEnabled = *(v4 + 15);
    v6->_spatialPersonaEnabled = *(v4 + 16);
    v6->_cameraMixedWithScreen = *(v4 + 17);
    objc_storeStrong(&v6->_senderCorrelationIdentifier, *(v4 + 16));
    objc_storeStrong(&v6->_cluster, *(v4 + 17));
    v6->_isNearbySharePlay = *(v4 + 18);
  }

  return v6;
}

- (TUConversationParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_identifier);
  v6 = [v4 decodeIntegerForKey:v5];

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_handle);
  v9 = [v4 decodeObjectOfClass:v7 forKey:v8];

  v10 = [(TUConversationParticipant *)self initWithIdentifier:v6 handle:v9];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_activeIDSDestination);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    activeIDSDestination = v10->_activeIDSDestination;
    v10->_activeIDSDestination = v13;

    v15 = NSStringFromSelector(sel_isAudioEnabled);
    v10->_audioEnabled = [v4 decodeBoolForKey:v15];

    v16 = NSStringFromSelector(sel_audioPriority);
    v10->_audioPriority = [v4 decodeIntegerForKey:v16];

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_avcIdentifier);
    v19 = [v4 decodeObjectOfClass:v17 forKey:v18];
    avcIdentifier = v10->_avcIdentifier;
    v10->_avcIdentifier = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_capabilities);
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    capabilities = v10->_capabilities;
    v10->_capabilities = v23;

    v25 = NSStringFromSelector(sel_isMuted);
    v10->_muted = [v4 decodeBoolForKey:v25];

    v26 = NSStringFromSelector(sel_isScreenEnabled);
    v10->_screenEnabled = [v4 decodeBoolForKey:v26];

    v27 = NSStringFromSelector(sel_screenToken);
    v10->_screenToken = [v4 decodeIntegerForKey:v27];

    v28 = NSStringFromSelector(sel_streamToken);
    v10->_streamToken = [v4 decodeIntegerForKey:v28];

    v29 = NSStringFromSelector(sel_captionsToken);
    v10->_captionsToken = [v4 decodeIntegerForKey:v29];

    v30 = NSStringFromSelector(sel_isVideoEnabled);
    v10->_videoEnabled = [v4 decodeBoolForKey:v30];

    v31 = NSStringFromSelector(sel_videoPriority);
    v10->_videoPriority = [v4 decodeIntegerForKey:v31];

    v32 = NSStringFromSelector(sel_isAudioPaused);
    v10->_audioPaused = [v4 decodeBoolForKey:v32];

    v33 = NSStringFromSelector(sel_isLocalAccountHandle);
    v10->_localAccountHandle = [v4 decodeBoolForKey:v33];

    v34 = NSStringFromSelector(sel_audioVideoMode);
    v10->_audioVideoMode = [v4 decodeIntegerForKey:v34];

    v35 = NSStringFromSelector(sel_presentationMode);
    v10->_presentationMode = [v4 decodeIntegerForKey:v35];

    v36 = objc_opt_class();
    v37 = NSStringFromSelector(sel_association);
    v38 = [v4 decodeObjectOfClass:v36 forKey:v37];
    association = v10->_association;
    v10->_association = v38;

    v40 = NSStringFromSelector(sel_isLightweight);
    v10->_lightweight = [v4 decodeBoolForKey:v40];

    v41 = NSStringFromSelector(sel_isGuestModeEnabled);
    v10->_guestModeEnabled = [v4 decodeBoolForKey:v41];

    v42 = NSStringFromSelector(sel_isSpatialPersonaEnabled);
    v10->_spatialPersonaEnabled = [v4 decodeBoolForKey:v42];

    v43 = NSStringFromSelector(sel_isCameraMixedWithScreen);
    v10->_cameraMixedWithScreen = [v4 decodeBoolForKey:v43];

    v44 = objc_opt_class();
    v45 = NSStringFromSelector(sel_senderCorrelationIdentifier);
    v46 = [v4 decodeObjectOfClass:v44 forKey:v45];
    senderCorrelationIdentifier = v10->_senderCorrelationIdentifier;
    v10->_senderCorrelationIdentifier = v46;

    v48 = objc_opt_class();
    v49 = NSStringFromSelector(sel_cluster);
    v50 = [v4 decodeObjectOfClass:v48 forKey:v49];
    cluster = v10->_cluster;
    v10->_cluster = v50;

    v52 = NSStringFromSelector(sel_isNearbySharePlay);
    v10->_isNearbySharePlay = [v4 decodeBoolForKey:v52];
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationParticipant *)self activeIDSDestination];
  v6 = NSStringFromSelector(sel_activeIDSDestination);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationParticipant *)self isAudioEnabled];
  v8 = NSStringFromSelector(sel_isAudioEnabled);
  [v4 encodeBool:v7 forKey:v8];

  v9 = [(TUConversationParticipant *)self audioPriority];
  v10 = NSStringFromSelector(sel_audioPriority);
  [v4 encodeInteger:v9 forKey:v10];

  v11 = [(TUConversationParticipant *)self avcIdentifier];
  v12 = NSStringFromSelector(sel_avcIdentifier);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(TUConversationParticipant *)self capabilities];
  v14 = NSStringFromSelector(sel_capabilities);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(TUConversationParticipant *)self handle];
  v16 = NSStringFromSelector(sel_handle);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(TUConversationParticipant *)self identifier];
  v18 = NSStringFromSelector(sel_identifier);
  [v4 encodeInteger:v17 forKey:v18];

  v19 = [(TUConversationParticipant *)self isMuted];
  v20 = NSStringFromSelector(sel_isMuted);
  [v4 encodeBool:v19 forKey:v20];

  v21 = [(TUConversationParticipant *)self isScreenEnabled];
  v22 = NSStringFromSelector(sel_isScreenEnabled);
  [v4 encodeBool:v21 forKey:v22];

  v23 = [(TUConversationParticipant *)self screenToken];
  v24 = NSStringFromSelector(sel_screenToken);
  [v4 encodeInteger:v23 forKey:v24];

  v25 = [(TUConversationParticipant *)self streamToken];
  v26 = NSStringFromSelector(sel_streamToken);
  [v4 encodeInteger:v25 forKey:v26];

  v27 = [(TUConversationParticipant *)self captionsToken];
  v28 = NSStringFromSelector(sel_captionsToken);
  [v4 encodeInteger:v27 forKey:v28];

  v29 = [(TUConversationParticipant *)self isVideoEnabled];
  v30 = NSStringFromSelector(sel_isVideoEnabled);
  [v4 encodeBool:v29 forKey:v30];

  v31 = [(TUConversationParticipant *)self videoPriority];
  v32 = NSStringFromSelector(sel_videoPriority);
  [v4 encodeInteger:v31 forKey:v32];

  v33 = [(TUConversationParticipant *)self isAudioPaused];
  v34 = NSStringFromSelector(sel_isAudioPaused);
  [v4 encodeBool:v33 forKey:v34];

  v35 = [(TUConversationParticipant *)self isLocalAccountHandle];
  v36 = NSStringFromSelector(sel_isLocalAccountHandle);
  [v4 encodeBool:v35 forKey:v36];

  v37 = [(TUConversationParticipant *)self audioVideoMode];
  v38 = NSStringFromSelector(sel_audioVideoMode);
  [v4 encodeInteger:v37 forKey:v38];

  v39 = [(TUConversationParticipant *)self presentationMode];
  v40 = NSStringFromSelector(sel_presentationMode);
  [v4 encodeInteger:v39 forKey:v40];

  v41 = [(TUConversationParticipant *)self association];
  v42 = NSStringFromSelector(sel_association);
  [v4 encodeObject:v41 forKey:v42];

  v43 = [(TUConversationParticipant *)self isLightweight];
  v44 = NSStringFromSelector(sel_isLightweight);
  [v4 encodeBool:v43 forKey:v44];

  v45 = [(TUConversationParticipant *)self isGuestModeEnabled];
  v46 = NSStringFromSelector(sel_isGuestModeEnabled);
  [v4 encodeBool:v45 forKey:v46];

  v47 = [(TUConversationParticipant *)self isSpatialPersonaEnabled];
  v48 = NSStringFromSelector(sel_isSpatialPersonaEnabled);
  [v4 encodeBool:v47 forKey:v48];

  v49 = [(TUConversationParticipant *)self isCameraMixedWithScreen];
  v50 = NSStringFromSelector(sel_isCameraMixedWithScreen);
  [v4 encodeBool:v49 forKey:v50];

  v51 = [(TUConversationParticipant *)self senderCorrelationIdentifier];
  v52 = NSStringFromSelector(sel_senderCorrelationIdentifier);
  [v4 encodeObject:v51 forKey:v52];

  v53 = [(TUConversationParticipant *)self cluster];
  v54 = NSStringFromSelector(sel_cluster);
  [v4 encodeObject:v53 forKey:v54];

  v55 = [(TUConversationParticipant *)self isNearbySharePlay];
  v56 = NSStringFromSelector(sel_isNearbySharePlay);
  [v4 encodeBool:v55 forKey:v56];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUConversationParticipant allocWithZone:a3];

  return [(TUConversationParticipant *)v4 initWithConversationParticipant:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TUMutableConversationParticipant allocWithZone:a3];

  return [(TUConversationParticipant *)v4 initWithConversationParticipant:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" identifier=%lu", -[TUConversationParticipant identifier](self, "identifier")];
  v4 = [(TUConversationParticipant *)self handle];
  [v3 appendFormat:@" handle=%@", v4];

  [v3 appendFormat:@" muted=%d", -[TUConversationParticipant isMuted](self, "isMuted")];
  [v3 appendFormat:@" audioEnabled=%d", -[TUConversationParticipant isAudioEnabled](self, "isAudioEnabled")];
  [v3 appendFormat:@" videoEnabled=%d", -[TUConversationParticipant isVideoEnabled](self, "isVideoEnabled")];
  [v3 appendFormat:@" screenEnabled=%d", -[TUConversationParticipant isScreenEnabled](self, "isScreenEnabled")];
  [v3 appendFormat:@" streamToken=%ld", -[TUConversationParticipant streamToken](self, "streamToken")];
  [v3 appendFormat:@" screenToken=%ld", -[TUConversationParticipant screenToken](self, "screenToken")];
  [v3 appendFormat:@" captionsToken=%ld", -[TUConversationParticipant captionsToken](self, "captionsToken")];
  v5 = [(TUConversationParticipant *)self capabilities];
  [v3 appendFormat:@" capabilities=%@", v5];

  [v3 appendFormat:@" audioPaused=%d", -[TUConversationParticipant isAudioPaused](self, "isAudioPaused")];
  [v3 appendFormat:@" isLightweight=%d", -[TUConversationParticipant isLightweight](self, "isLightweight")];
  [v3 appendFormat:@" isLocalAccountHandle=%d", -[TUConversationParticipant isLocalAccountHandle](self, "isLocalAccountHandle")];
  v6 = [(TUConversationParticipant *)self association];

  if (v6)
  {
    v7 = [(TUConversationParticipant *)self association];
    [v3 appendFormat:@" association=%@", v7];
  }

  [v3 appendFormat:@" isGuestModeEnabled=%d", -[TUConversationParticipant isGuestModeEnabled](self, "isGuestModeEnabled")];
  [v3 appendFormat:@" avMode=%ld", -[TUConversationParticipant audioVideoMode](self, "audioVideoMode")];
  [v3 appendFormat:@" presentationMode=%ld", -[TUConversationParticipant presentationMode](self, "presentationMode")];
  v8 = [(TUConversationParticipant *)self senderCorrelationIdentifier];

  if (v8)
  {
    v9 = [(TUConversationParticipant *)self senderCorrelationIdentifier];
    [v3 appendFormat:@" senderCorrelationIdentifier=%@", v9];
  }

  [v3 appendFormat:@" audioPriority=%ld", -[TUConversationParticipant audioPriority](self, "audioPriority")];
  if ([(TUConversationParticipant *)self isCameraMixedWithScreen])
  {
    [v3 appendFormat:@" isCameraMixedWithScreen=%d", -[TUConversationParticipant isCameraMixedWithScreen](self, "isCameraMixedWithScreen")];
  }

  v10 = [(TUConversationParticipant *)self cluster];

  if (v10)
  {
    v11 = [(TUConversationParticipant *)self cluster];
    [v3 appendFormat:@" cluster=%@", v11];
  }

  [v3 appendFormat:@" isNearbySharePlay=%d", -[TUConversationParticipant isNearbySharePlay](self, "isNearbySharePlay")];
  [v3 appendString:@">"];
  v12 = [v3 copy];

  return v12;
}

- (unint64_t)hash
{
  v3 = [(TUConversationParticipant *)self activeIDSDestination];
  v4 = [v3 hash];
  if ([(TUConversationParticipant *)self isAudioEnabled])
  {
    v5 = 1231;
  }

  else
  {
    v5 = 1237;
  }

  v6 = [(TUConversationParticipant *)self avcIdentifier];
  v7 = v5 ^ v4 ^ [v6 hash];
  v8 = [(TUConversationParticipant *)self capabilities];
  v9 = [v8 hash];
  v10 = [(TUConversationParticipant *)self handle];
  v11 = v9 ^ [v10 hash];
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
  v16 = [(TUConversationParticipant *)self streamToken];
  v17 = v16 ^ [(TUConversationParticipant *)self captionsToken];
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

  v25 = [(TUConversationParticipant *)self association];
  v26 = v24 ^ [v25 hash];
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
  v35 = [(TUConversationParticipant *)self cluster];
  v36 = v34 ^ [v35 hash];

  return v29 ^ v36;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationParticipant *)self isEqualToParticipant:v4];
  }

  return v5;
}

- (BOOL)isEqualToParticipant:(id)a3
{
  v7 = a3;
  v8 = [(TUConversationParticipant *)self activeIDSDestination];
  v9 = [v7 activeIDSDestination];
  if (v8 != v9)
  {
    v3 = [(TUConversationParticipant *)self activeIDSDestination];
    v4 = [v7 activeIDSDestination];
    if (![v3 isEqualToString:v4])
    {
      LOBYTE(v10) = 0;
LABEL_32:

      goto LABEL_33;
    }
  }

  v11 = [(TUConversationParticipant *)self isAudioEnabled];
  if (v11 != [v7 isAudioEnabled])
  {
    LOBYTE(v10) = 0;
    goto LABEL_31;
  }

  v12 = [(TUConversationParticipant *)self avcIdentifier];
  v13 = [v7 avcIdentifier];
  if (v12 == v13)
  {
    v46 = v12;
  }

  else
  {
    v5 = [(TUConversationParticipant *)self avcIdentifier];
    v14 = [v7 avcIdentifier];
    if (![v5 isEqualToString:v14])
    {
      LOBYTE(v10) = 0;
LABEL_29:

      goto LABEL_30;
    }

    v45 = v14;
    v46 = v12;
  }

  v15 = [(TUConversationParticipant *)self capabilities];
  v16 = [v7 capabilities];
  if (![v15 isEqualToCapabilities:v16])
  {

    LOBYTE(v10) = 0;
    goto LABEL_28;
  }

  v43 = v15;
  v44 = v13;
  v42 = v16;
  v17 = [(TUConversationParticipant *)self handle];
  [v7 handle];
  v19 = v18 = v17;
  if (![v17 isEqualToHandle:?])
  {
    LOBYTE(v10) = 0;
LABEL_26:
    v13 = v44;
    goto LABEL_27;
  }

  v41 = v5;
  v20 = [(TUConversationParticipant *)self identifier];
  v13 = v44;
  if (v20 == [v7 identifier])
  {
    v21 = [(TUConversationParticipant *)self isMuted];
    if (v21 == [v7 isMuted])
    {
      v22 = [(TUConversationParticipant *)self isScreenEnabled];
      if (v22 == [v7 isScreenEnabled])
      {
        v23 = [(TUConversationParticipant *)self screenToken];
        if (v23 == [v7 screenToken])
        {
          v24 = [(TUConversationParticipant *)self streamToken];
          if (v24 == [v7 streamToken])
          {
            v25 = [(TUConversationParticipant *)self captionsToken];
            if (v25 == [v7 captionsToken])
            {
              v26 = [(TUConversationParticipant *)self isVideoEnabled];
              if (v26 == [v7 isVideoEnabled])
              {
                v27 = [(TUConversationParticipant *)self isAudioPaused];
                if (v27 == [v7 isAudioPaused])
                {
                  v28 = [(TUConversationParticipant *)self isLocalAccountHandle];
                  if (v28 == [v7 isLocalAccountHandle])
                  {
                    v29 = [(TUConversationParticipant *)self isLightweight];
                    if (v29 == [v7 isLightweight])
                    {
                      v31 = [(TUConversationParticipant *)self association];
                      v40 = [v7 association];
                      if (TUObjectsAreEqualOrNil(v31, v40) && (v32 = -[TUConversationParticipant isGuestModeEnabled](self, "isGuestModeEnabled"), v32 == [v7 isGuestModeEnabled]) && (v33 = -[TUConversationParticipant audioVideoMode](self, "audioVideoMode"), v33 == objc_msgSend(v7, "audioVideoMode")) && (v34 = -[TUConversationParticipant presentationMode](self, "presentationMode"), v34 == objc_msgSend(v7, "presentationMode")) && (v35 = -[TUConversationParticipant isSpatialPersonaEnabled](self, "isSpatialPersonaEnabled"), v35 == objc_msgSend(v7, "isSpatialPersonaEnabled")) && (v36 = -[TUConversationParticipant isCameraMixedWithScreen](self, "isCameraMixedWithScreen"), v36 == objc_msgSend(v7, "isCameraMixedWithScreen")))
                      {
                        v37 = [(TUConversationParticipant *)self cluster];
                        v39 = [v7 cluster];
                        if (TUObjectsAreEqualOrNil(v37, v39))
                        {
                          v38 = [(TUConversationParticipant *)self isNearbySharePlay:v39];
                          v10 = v38 ^ [v7 isNearbySharePlay] ^ 1;
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

                      v5 = v41;
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
  v5 = v41;
LABEL_27:

LABEL_28:
  v14 = v45;
  v12 = v46;
  if (v46 != v13)
  {
    goto LABEL_29;
  }

LABEL_30:

LABEL_31:
  if (v8 != v9)
  {
    goto LABEL_32;
  }

LABEL_33:

  return v10;
}

@end