@interface CSDConversationParticipant
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToParticipant:(id)a3;
- (BOOL)isPseudonym;
- (CSDConversationParticipant)initWithIDSDictionaryRepresentation:(id)a3;
- (CSDConversationParticipant)initWithIdentifier:(unint64_t)a3 handle:(id)a4 avcData:(id)a5 senderCorrelationIdentifier:(id)a6;
- (NSDictionary)idsDictionaryRepresentation;
- (TUConversationParticipant)tuConversationParticipant;
- (id)description;
- (unint64_t)hash;
@end

@implementation CSDConversationParticipant

- (CSDConversationParticipant)initWithIdentifier:(unint64_t)a3 handle:(id)a4 avcData:(id)a5 senderCorrelationIdentifier:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v26.receiver = self;
  v26.super_class = CSDConversationParticipant;
  v13 = [(CSDConversationParticipant *)&v26 init];
  v14 = v13;
  if (v13)
  {
    v13->_identifier = a3;
    objc_storeStrong(&v13->_avcData, a5);
    v15 = [v10 normalizedValue];
    v16 = [v15 length];

    if (v16)
    {
      v17 = [v10 copy];
      handle = v14->_handle;
      v14->_handle = v17;
    }

    else
    {
      handle = TUNormalizedHandleForTUHandle();
      v19 = [handle copy];
      v20 = v14->_handle;
      v14->_handle = v19;
    }

    v21 = objc_alloc_init(TUConversationParticipantCapabilities);
    capabilities = v14->_capabilities;
    v14->_capabilities = v21;

    v23 = [v12 copy];
    senderCorrelationIdentifier = v14->_senderCorrelationIdentifier;
    v14->_senderCorrelationIdentifier = v23;
  }

  return v14;
}

- (CSDConversationParticipant)initWithIDSDictionaryRepresentation:(id)a3
{
  v4 = IDSSessionParticipantIDKey;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 unsignedLongLongValue];

  v8 = [v5 objectForKeyedSubscript:IDSSessionParticipantDataKey];

  v9 = [[CSDMessagingConversationParticipant alloc] initWithData:v8];
  v10 = v9;
  if (v7)
  {
    v11 = [(CSDMessagingConversationParticipant *)v9 handle];
    if (v11 && (v12 = v11, [(CSDMessagingConversationParticipant *)v10 avcData], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      v14 = [(CSDMessagingConversationParticipant *)v10 csdConversationParticipant];
      v15 = [(CSDConversationParticipant *)v14 handle];
      v16 = [(CSDMessagingConversationParticipant *)v10 avcData];
      v7 = [(CSDConversationParticipant *)self initWithIdentifier:v7 handle:v15 avcData:v16 senderCorrelationIdentifier:0];

      self = v14;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" identifier=%llu", -[CSDConversationParticipant identifier](self, "identifier")];
  v4 = [(CSDConversationParticipant *)self handle];
  [v3 appendFormat:@" handle=%@", v4];

  v5 = [(CSDConversationParticipant *)self avcData];
  v6 = @"YES";
  if (!v5)
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@" hasAVCData=%@", v6];

  [v3 appendFormat:@" isMuted=%d", -[CSDConversationParticipant isMuted](self, "isMuted")];
  [v3 appendFormat:@" isAudioEnabled=%d", -[CSDConversationParticipant isAudioEnabled](self, "isAudioEnabled")];
  [v3 appendFormat:@" isVideoEnabled=%d", -[CSDConversationParticipant isVideoEnabled](self, "isVideoEnabled")];
  [v3 appendFormat:@" isScreenEnabled=%d", -[CSDConversationParticipant isScreenEnabled](self, "isScreenEnabled")];
  [v3 appendFormat:@" streamToken=%ld", -[CSDConversationParticipant streamToken](self, "streamToken")];
  [v3 appendFormat:@" screenToken=%ld", -[CSDConversationParticipant screenToken](self, "screenToken")];
  [v3 appendFormat:@" captionsToken=%ld", -[CSDConversationParticipant captionsToken](self, "captionsToken")];
  v7 = [(CSDConversationParticipant *)self avcIdentifier];
  [v3 appendFormat:@" avcIdentifier=%@", v7];

  v8 = [(CSDConversationParticipant *)self capabilities];
  [v3 appendFormat:@" capabilities=%@", v8];

  [v3 appendFormat:@" isAudioPaused=%d", -[CSDConversationParticipant isAudioPaused](self, "isAudioPaused")];
  [v3 appendFormat:@" isLightweight=%d", -[CSDConversationParticipant isLightweight](self, "isLightweight")];
  [v3 appendFormat:@" isLocalAccountHandle=%d", -[CSDConversationParticipant isLocalAccountHandle](self, "isLocalAccountHandle")];
  v9 = [(CSDConversationParticipant *)self association];

  if (v9)
  {
    v10 = [(CSDConversationParticipant *)self association];
    [v3 appendFormat:@" association=%@", v10];
  }

  [v3 appendFormat:@" isGuestModeEnabled=%d", -[CSDConversationParticipant isGuestModeEnabled](self, "isGuestModeEnabled")];
  v11 = [(CSDConversationParticipant *)self senderCorrelationIdentifier];

  if (v11)
  {
    v12 = [(CSDConversationParticipant *)self senderCorrelationIdentifier];
    [v3 appendFormat:@" senderCorrelationIdentifier=%@", v12];
  }

  [v3 appendFormat:@" audioPriority=%lu", -[CSDConversationParticipant audioPriority](self, "audioPriority")];
  [v3 appendFormat:@" avMode=%ld", -[CSDConversationParticipant audioVideoMode](self, "audioVideoMode")];
  [v3 appendFormat:@" presentationMode=%ld", -[CSDConversationParticipant presentationMode](self, "presentationMode")];
  if ([(CSDConversationParticipant *)self isCameraMixedWithScreen])
  {
    [v3 appendFormat:@" isCameraMixedWithScreen=%d", -[CSDConversationParticipant isCameraMixedWithScreen](self, "isCameraMixedWithScreen")];
  }

  v13 = [(CSDConversationParticipant *)self cluster];

  if (v13)
  {
    v14 = [(CSDConversationParticipant *)self cluster];
    [v3 appendFormat:@" cluster=%@", v14];
  }

  if ([(CSDConversationParticipant *)self isNearbySharePlay])
  {
    [v3 appendFormat:@" isNearbySharePlay=%d", -[CSDConversationParticipant isNearbySharePlay](self, "isNearbySharePlay")];
  }

  [v3 appendString:@">"];
  v15 = [v3 copy];

  return v15;
}

- (TUConversationParticipant)tuConversationParticipant
{
  v3 = [TUConversationParticipant alloc];
  v4 = [(CSDConversationParticipant *)self identifier];
  v5 = [(CSDConversationParticipant *)self handle];
  v6 = [(CSDConversationParticipant *)self senderCorrelationIdentifier];
  v7 = [v3 initWithIdentifier:v4 handle:v5 senderCorrelationIdentifier:v6];

  [v7 setMuted:{-[CSDConversationParticipant isMuted](self, "isMuted")}];
  [v7 setAudioEnabled:{-[CSDConversationParticipant isAudioEnabled](self, "isAudioEnabled")}];
  [v7 setVideoEnabled:{-[CSDConversationParticipant isVideoEnabled](self, "isVideoEnabled")}];
  [v7 setScreenEnabled:{-[CSDConversationParticipant isScreenEnabled](self, "isScreenEnabled")}];
  [v7 setAudioPaused:{-[CSDConversationParticipant isAudioPaused](self, "isAudioPaused")}];
  [v7 setStreamToken:{-[CSDConversationParticipant streamToken](self, "streamToken")}];
  [v7 setScreenToken:{-[CSDConversationParticipant screenToken](self, "screenToken")}];
  [v7 setCaptionsToken:{-[CSDConversationParticipant captionsToken](self, "captionsToken")}];
  [v7 setAudioPriority:{-[CSDConversationParticipant audioPriority](self, "audioPriority")}];
  [v7 setVideoPriority:{-[CSDConversationParticipant videoPriority](self, "videoPriority")}];
  v8 = [(CSDConversationParticipant *)self avcIdentifier];
  [v7 setAvcIdentifier:v8];

  v9 = [(CSDConversationParticipant *)self activeIDSDestination];
  [v7 setActiveIDSDestination:v9];

  v10 = [(CSDConversationParticipant *)self capabilities];
  [v7 setCapabilities:v10];

  [v7 setLightweight:{-[CSDConversationParticipant isLightweight](self, "isLightweight")}];
  [v7 setLocalAccountHandle:{-[CSDConversationParticipant isLocalAccountHandle](self, "isLocalAccountHandle")}];
  v11 = [(CSDConversationParticipant *)self association];
  [v7 setAssociation:v11];

  [v7 setGuestModeEnabled:{-[CSDConversationParticipant isGuestModeEnabled](self, "isGuestModeEnabled")}];
  [v7 setAudioVideoMode:{-[CSDConversationParticipant audioVideoMode](self, "audioVideoMode")}];
  [v7 setPresentationMode:{-[CSDConversationParticipant presentationMode](self, "presentationMode")}];
  [v7 setSpatialPersonaEnabled:{-[CSDConversationParticipant isSpatialPersonaEnabled](self, "isSpatialPersonaEnabled")}];
  [v7 setCameraMixedWithScreen:{-[CSDConversationParticipant isCameraMixedWithScreen](self, "isCameraMixedWithScreen")}];
  v12 = [(CSDConversationParticipant *)self cluster];
  [v7 setCluster:v12];

  [v7 setIsNearbySharePlay:{-[CSDConversationParticipant isNearbySharePlay](self, "isNearbySharePlay")}];

  return v7;
}

- (NSDictionary)idsDictionaryRepresentation
{
  v3 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:self];
  v10[0] = IDSSessionParticipantIDKey;
  v4 = [NSNumber numberWithUnsignedLongLong:[(CSDConversationParticipant *)self identifier]];
  v11[0] = v4;
  v10[1] = IDSSessionParticipantDataKey;
  v5 = [v3 data];
  v11[1] = v5;
  v10[2] = IDSGroupSessionMessagesLocalMemberIDKey;
  v6 = [(CSDConversationParticipant *)self handle];
  v7 = TUCopyIDSCanonicalAddressForHandle();
  v11[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

- (BOOL)isPseudonym
{
  v2 = [(CSDConversationParticipant *)self handle];
  v3 = [v2 value];
  v4 = [v3 destinationIdIsPseudonym];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CSDConversationParticipant *)self isEqualToParticipant:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToParticipant:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationParticipant *)self identifier];
  if (v5 == [v4 identifier])
  {
    v6 = [(CSDConversationParticipant *)self handle];
    v7 = [v4 handle];
    if ([v6 isEqualToHandle:v7])
    {
      v8 = [(CSDConversationParticipant *)self avcData];
      v9 = [v4 avcData];
      if ([v8 isEqualToData:v9] && (v10 = -[CSDConversationParticipant isMuted](self, "isMuted"), v10 == objc_msgSend(v4, "isMuted")) && (v11 = -[CSDConversationParticipant isAudioEnabled](self, "isAudioEnabled"), v11 == objc_msgSend(v4, "isAudioEnabled")) && (v12 = -[CSDConversationParticipant isVideoEnabled](self, "isVideoEnabled"), v12 == objc_msgSend(v4, "isVideoEnabled")) && (v13 = -[CSDConversationParticipant isScreenEnabled](self, "isScreenEnabled"), v13 == objc_msgSend(v4, "isScreenEnabled")) && (v14 = -[CSDConversationParticipant streamToken](self, "streamToken"), v14 == objc_msgSend(v4, "streamToken")) && (v15 = -[CSDConversationParticipant screenToken](self, "screenToken"), v15 == objc_msgSend(v4, "screenToken")) && (v16 = -[CSDConversationParticipant captionsToken](self, "captionsToken"), v16 == objc_msgSend(v4, "captionsToken")))
      {
        v17 = [(CSDConversationParticipant *)self avcIdentifier];
        v18 = [v4 avcIdentifier];
        if (v17 == v18)
        {
          v21 = [(CSDConversationParticipant *)self activeIDSDestination];
          v22 = [v4 activeIDSDestination];
          if (TUStringsAreEqualOrNil())
          {
            v42 = v22;
            v23 = [(CSDConversationParticipant *)self capabilities];
            v24 = [v4 capabilities];
            v43 = v23;
            v25 = v23;
            v26 = v24;
            if ([v25 isEqualToCapabilities:v24])
            {
              v41 = v21;
              v27 = [(CSDConversationParticipant *)self isAudioPaused];
              if (v27 == [v4 isAudioPaused] && (v28 = -[CSDConversationParticipant isLocalAccountHandle](self, "isLocalAccountHandle"), v28 == objc_msgSend(v4, "isLocalAccountHandle")) && (v29 = -[CSDConversationParticipant isLightweight](self, "isLightweight"), v29 == objc_msgSend(v4, "isLightweight")))
              {
                v30 = [(CSDConversationParticipant *)self association];
                v39 = [v4 association];
                v40 = v30;
                if (TUObjectsAreEqualOrNil() && (v31 = -[CSDConversationParticipant presentationMode](self, "presentationMode"), v31 == [v4 presentationMode]) && (v32 = -[CSDConversationParticipant isGuestModeEnabled](self, "isGuestModeEnabled"), v32 == objc_msgSend(v4, "isGuestModeEnabled")) && (v33 = -[CSDConversationParticipant isSpatialPersonaEnabled](self, "isSpatialPersonaEnabled"), v33 == objc_msgSend(v4, "isSpatialPersonaEnabled")) && (v34 = -[CSDConversationParticipant spatialPersonaGenerationCounter](self, "spatialPersonaGenerationCounter"), v34 == objc_msgSend(v4, "spatialPersonaGenerationCounter")) && (v35 = -[CSDConversationParticipant isCameraMixedWithScreen](self, "isCameraMixedWithScreen"), v35 == objc_msgSend(v4, "isCameraMixedWithScreen")))
                {
                  v36 = [(CSDConversationParticipant *)self cluster];
                  v38 = [v4 cluster];
                  if (TUObjectsAreEqualOrNil())
                  {
                    v37 = [(CSDConversationParticipant *)self isNearbySharePlay:v38];
                    v19 = v37 ^ [v4 isNearbySharePlay] ^ 1;
                  }

                  else
                  {
                    LOBYTE(v19) = 0;
                  }
                }

                else
                {
                  LOBYTE(v19) = 0;
                }
              }

              else
              {
                LOBYTE(v19) = 0;
              }

              v21 = v41;
            }

            else
            {
              LOBYTE(v19) = 0;
            }

            v22 = v42;
          }

          else
          {
            LOBYTE(v19) = 0;
          }
        }

        else
        {
          LOBYTE(v19) = 0;
        }
      }

      else
      {
        LOBYTE(v19) = 0;
      }
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (unint64_t)hash
{
  v42 = [NSNumber numberWithUnsignedLongLong:[(CSDConversationParticipant *)self identifier]];
  v3 = [v42 hash];
  v41 = [(CSDConversationParticipant *)self handle];
  v4 = [v41 hash];
  v40 = [(CSDConversationParticipant *)self avcData];
  v5 = v4 ^ [v40 hash];
  v6 = 1231;
  if ([(CSDConversationParticipant *)self isMuted])
  {
    v7 = 1231;
  }

  else
  {
    v7 = 1237;
  }

  v8 = v5 ^ v7;
  if ([(CSDConversationParticipant *)self isAudioEnabled])
  {
    v9 = 1231;
  }

  else
  {
    v9 = 1237;
  }

  v10 = v8 ^ v9;
  if ([(CSDConversationParticipant *)self isVideoEnabled])
  {
    v11 = 1231;
  }

  else
  {
    v11 = 1237;
  }

  v12 = v10 ^ v11;
  if ([(CSDConversationParticipant *)self isScreenEnabled])
  {
    v13 = 1231;
  }

  else
  {
    v13 = 1237;
  }

  v14 = v12 ^ v13 ^ v3;
  v15 = [(CSDConversationParticipant *)self streamToken];
  v16 = v15 ^ [(CSDConversationParticipant *)self screenToken];
  v17 = v16 ^ [(CSDConversationParticipant *)self captionsToken];
  v18 = [(CSDConversationParticipant *)self avcIdentifier];
  v19 = v17 ^ [v18 hash];
  v20 = [(CSDConversationParticipant *)self activeIDSDestination];
  v21 = v19 ^ [v20 hash];
  v22 = [(CSDConversationParticipant *)self capabilities];
  v23 = v21 ^ [v22 hash];
  if ([(CSDConversationParticipant *)self isAudioPaused])
  {
    v24 = 1231;
  }

  else
  {
    v24 = 1237;
  }

  v25 = v23 ^ v24;
  if ([(CSDConversationParticipant *)self isLightweight])
  {
    v26 = 1231;
  }

  else
  {
    v26 = 1237;
  }

  v27 = v14 ^ v25 ^ v26;
  if ([(CSDConversationParticipant *)self isLocalAccountHandle])
  {
    v28 = 1231;
  }

  else
  {
    v28 = 1237;
  }

  v29 = [(CSDConversationParticipant *)self association];
  v30 = v28 ^ [v29 hash];
  if ([(CSDConversationParticipant *)self isGuestModeEnabled])
  {
    v31 = 1231;
  }

  else
  {
    v31 = 1237;
  }

  v32 = v30 ^ v31;
  if ([(CSDConversationParticipant *)self isSpatialPersonaEnabled])
  {
    v33 = 1231;
  }

  else
  {
    v33 = 1237;
  }

  v34 = v32 ^ v33;
  if ([(CSDConversationParticipant *)self isCameraMixedWithScreen])
  {
    v35 = 1231;
  }

  else
  {
    v35 = 1237;
  }

  v36 = v34 ^ v35 ^ [(CSDConversationParticipant *)self presentationMode];
  v37 = [(CSDConversationParticipant *)self cluster];
  v38 = v27 ^ v36 ^ [v37 hash];
  if (![(CSDConversationParticipant *)self isNearbySharePlay])
  {
    v6 = 1237;
  }

  return v38 ^ v6;
}

@end