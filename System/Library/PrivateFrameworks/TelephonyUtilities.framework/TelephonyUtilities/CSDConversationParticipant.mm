@interface CSDConversationParticipant
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToParticipant:(id)participant;
- (BOOL)isPseudonym;
- (CSDConversationParticipant)initWithIDSDictionaryRepresentation:(id)representation;
- (CSDConversationParticipant)initWithIdentifier:(unint64_t)identifier handle:(id)handle avcData:(id)data senderCorrelationIdentifier:(id)correlationIdentifier;
- (NSDictionary)idsDictionaryRepresentation;
- (TUConversationParticipant)tuConversationParticipant;
- (id)description;
- (unint64_t)hash;
@end

@implementation CSDConversationParticipant

- (CSDConversationParticipant)initWithIdentifier:(unint64_t)identifier handle:(id)handle avcData:(id)data senderCorrelationIdentifier:(id)correlationIdentifier
{
  handleCopy = handle;
  dataCopy = data;
  correlationIdentifierCopy = correlationIdentifier;
  v26.receiver = self;
  v26.super_class = CSDConversationParticipant;
  v13 = [(CSDConversationParticipant *)&v26 init];
  v14 = v13;
  if (v13)
  {
    v13->_identifier = identifier;
    objc_storeStrong(&v13->_avcData, data);
    normalizedValue = [handleCopy normalizedValue];
    v16 = [normalizedValue length];

    if (v16)
    {
      v17 = [handleCopy copy];
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

    v23 = [correlationIdentifierCopy copy];
    senderCorrelationIdentifier = v14->_senderCorrelationIdentifier;
    v14->_senderCorrelationIdentifier = v23;
  }

  return v14;
}

- (CSDConversationParticipant)initWithIDSDictionaryRepresentation:(id)representation
{
  v4 = IDSSessionParticipantIDKey;
  representationCopy = representation;
  v6 = [representationCopy objectForKeyedSubscript:v4];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  v8 = [representationCopy objectForKeyedSubscript:IDSSessionParticipantDataKey];

  v9 = [[CSDMessagingConversationParticipant alloc] initWithData:v8];
  v10 = v9;
  if (unsignedLongLongValue)
  {
    handle = [(CSDMessagingConversationParticipant *)v9 handle];
    if (handle && (v12 = handle, [(CSDMessagingConversationParticipant *)v10 avcData], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
    {
      csdConversationParticipant = [(CSDMessagingConversationParticipant *)v10 csdConversationParticipant];
      handle2 = [(CSDConversationParticipant *)csdConversationParticipant handle];
      avcData = [(CSDMessagingConversationParticipant *)v10 avcData];
      unsignedLongLongValue = [(CSDConversationParticipant *)self initWithIdentifier:unsignedLongLongValue handle:handle2 avcData:avcData senderCorrelationIdentifier:0];

      self = csdConversationParticipant;
    }

    else
    {
      unsignedLongLongValue = 0;
    }
  }

  return unsignedLongLongValue;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" identifier=%llu", -[CSDConversationParticipant identifier](self, "identifier")];
  handle = [(CSDConversationParticipant *)self handle];
  [v3 appendFormat:@" handle=%@", handle];

  avcData = [(CSDConversationParticipant *)self avcData];
  v6 = @"YES";
  if (!avcData)
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
  avcIdentifier = [(CSDConversationParticipant *)self avcIdentifier];
  [v3 appendFormat:@" avcIdentifier=%@", avcIdentifier];

  capabilities = [(CSDConversationParticipant *)self capabilities];
  [v3 appendFormat:@" capabilities=%@", capabilities];

  [v3 appendFormat:@" isAudioPaused=%d", -[CSDConversationParticipant isAudioPaused](self, "isAudioPaused")];
  [v3 appendFormat:@" isLightweight=%d", -[CSDConversationParticipant isLightweight](self, "isLightweight")];
  [v3 appendFormat:@" isLocalAccountHandle=%d", -[CSDConversationParticipant isLocalAccountHandle](self, "isLocalAccountHandle")];
  association = [(CSDConversationParticipant *)self association];

  if (association)
  {
    association2 = [(CSDConversationParticipant *)self association];
    [v3 appendFormat:@" association=%@", association2];
  }

  [v3 appendFormat:@" isGuestModeEnabled=%d", -[CSDConversationParticipant isGuestModeEnabled](self, "isGuestModeEnabled")];
  senderCorrelationIdentifier = [(CSDConversationParticipant *)self senderCorrelationIdentifier];

  if (senderCorrelationIdentifier)
  {
    senderCorrelationIdentifier2 = [(CSDConversationParticipant *)self senderCorrelationIdentifier];
    [v3 appendFormat:@" senderCorrelationIdentifier=%@", senderCorrelationIdentifier2];
  }

  [v3 appendFormat:@" audioPriority=%lu", -[CSDConversationParticipant audioPriority](self, "audioPriority")];
  [v3 appendFormat:@" avMode=%ld", -[CSDConversationParticipant audioVideoMode](self, "audioVideoMode")];
  [v3 appendFormat:@" presentationMode=%ld", -[CSDConversationParticipant presentationMode](self, "presentationMode")];
  if ([(CSDConversationParticipant *)self isCameraMixedWithScreen])
  {
    [v3 appendFormat:@" isCameraMixedWithScreen=%d", -[CSDConversationParticipant isCameraMixedWithScreen](self, "isCameraMixedWithScreen")];
  }

  cluster = [(CSDConversationParticipant *)self cluster];

  if (cluster)
  {
    cluster2 = [(CSDConversationParticipant *)self cluster];
    [v3 appendFormat:@" cluster=%@", cluster2];
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
  identifier = [(CSDConversationParticipant *)self identifier];
  handle = [(CSDConversationParticipant *)self handle];
  senderCorrelationIdentifier = [(CSDConversationParticipant *)self senderCorrelationIdentifier];
  v7 = [v3 initWithIdentifier:identifier handle:handle senderCorrelationIdentifier:senderCorrelationIdentifier];

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
  avcIdentifier = [(CSDConversationParticipant *)self avcIdentifier];
  [v7 setAvcIdentifier:avcIdentifier];

  activeIDSDestination = [(CSDConversationParticipant *)self activeIDSDestination];
  [v7 setActiveIDSDestination:activeIDSDestination];

  capabilities = [(CSDConversationParticipant *)self capabilities];
  [v7 setCapabilities:capabilities];

  [v7 setLightweight:{-[CSDConversationParticipant isLightweight](self, "isLightweight")}];
  [v7 setLocalAccountHandle:{-[CSDConversationParticipant isLocalAccountHandle](self, "isLocalAccountHandle")}];
  association = [(CSDConversationParticipant *)self association];
  [v7 setAssociation:association];

  [v7 setGuestModeEnabled:{-[CSDConversationParticipant isGuestModeEnabled](self, "isGuestModeEnabled")}];
  [v7 setAudioVideoMode:{-[CSDConversationParticipant audioVideoMode](self, "audioVideoMode")}];
  [v7 setPresentationMode:{-[CSDConversationParticipant presentationMode](self, "presentationMode")}];
  [v7 setSpatialPersonaEnabled:{-[CSDConversationParticipant isSpatialPersonaEnabled](self, "isSpatialPersonaEnabled")}];
  [v7 setCameraMixedWithScreen:{-[CSDConversationParticipant isCameraMixedWithScreen](self, "isCameraMixedWithScreen")}];
  cluster = [(CSDConversationParticipant *)self cluster];
  [v7 setCluster:cluster];

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
  data = [v3 data];
  v11[1] = data;
  v10[2] = IDSGroupSessionMessagesLocalMemberIDKey;
  handle = [(CSDConversationParticipant *)self handle];
  v7 = TUCopyIDSCanonicalAddressForHandle();
  v11[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

- (BOOL)isPseudonym
{
  handle = [(CSDConversationParticipant *)self handle];
  value = [handle value];
  destinationIdIsPseudonym = [value destinationIdIsPseudonym];

  return destinationIdIsPseudonym;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CSDConversationParticipant *)self isEqualToParticipant:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToParticipant:(id)participant
{
  participantCopy = participant;
  identifier = [(CSDConversationParticipant *)self identifier];
  if (identifier == [participantCopy identifier])
  {
    handle = [(CSDConversationParticipant *)self handle];
    handle2 = [participantCopy handle];
    if ([handle isEqualToHandle:handle2])
    {
      avcData = [(CSDConversationParticipant *)self avcData];
      avcData2 = [participantCopy avcData];
      if ([avcData isEqualToData:avcData2] && (v10 = -[CSDConversationParticipant isMuted](self, "isMuted"), v10 == objc_msgSend(participantCopy, "isMuted")) && (v11 = -[CSDConversationParticipant isAudioEnabled](self, "isAudioEnabled"), v11 == objc_msgSend(participantCopy, "isAudioEnabled")) && (v12 = -[CSDConversationParticipant isVideoEnabled](self, "isVideoEnabled"), v12 == objc_msgSend(participantCopy, "isVideoEnabled")) && (v13 = -[CSDConversationParticipant isScreenEnabled](self, "isScreenEnabled"), v13 == objc_msgSend(participantCopy, "isScreenEnabled")) && (v14 = -[CSDConversationParticipant streamToken](self, "streamToken"), v14 == objc_msgSend(participantCopy, "streamToken")) && (v15 = -[CSDConversationParticipant screenToken](self, "screenToken"), v15 == objc_msgSend(participantCopy, "screenToken")) && (v16 = -[CSDConversationParticipant captionsToken](self, "captionsToken"), v16 == objc_msgSend(participantCopy, "captionsToken")))
      {
        avcIdentifier = [(CSDConversationParticipant *)self avcIdentifier];
        avcIdentifier2 = [participantCopy avcIdentifier];
        if (avcIdentifier == avcIdentifier2)
        {
          activeIDSDestination = [(CSDConversationParticipant *)self activeIDSDestination];
          activeIDSDestination2 = [participantCopy activeIDSDestination];
          if (TUStringsAreEqualOrNil())
          {
            v42 = activeIDSDestination2;
            capabilities = [(CSDConversationParticipant *)self capabilities];
            capabilities2 = [participantCopy capabilities];
            v43 = capabilities;
            v25 = capabilities;
            v26 = capabilities2;
            if ([v25 isEqualToCapabilities:capabilities2])
            {
              v41 = activeIDSDestination;
              isAudioPaused = [(CSDConversationParticipant *)self isAudioPaused];
              if (isAudioPaused == [participantCopy isAudioPaused] && (v28 = -[CSDConversationParticipant isLocalAccountHandle](self, "isLocalAccountHandle"), v28 == objc_msgSend(participantCopy, "isLocalAccountHandle")) && (v29 = -[CSDConversationParticipant isLightweight](self, "isLightweight"), v29 == objc_msgSend(participantCopy, "isLightweight")))
              {
                association = [(CSDConversationParticipant *)self association];
                association2 = [participantCopy association];
                v40 = association;
                if (TUObjectsAreEqualOrNil() && (v31 = -[CSDConversationParticipant presentationMode](self, "presentationMode"), v31 == [participantCopy presentationMode]) && (v32 = -[CSDConversationParticipant isGuestModeEnabled](self, "isGuestModeEnabled"), v32 == objc_msgSend(participantCopy, "isGuestModeEnabled")) && (v33 = -[CSDConversationParticipant isSpatialPersonaEnabled](self, "isSpatialPersonaEnabled"), v33 == objc_msgSend(participantCopy, "isSpatialPersonaEnabled")) && (v34 = -[CSDConversationParticipant spatialPersonaGenerationCounter](self, "spatialPersonaGenerationCounter"), v34 == objc_msgSend(participantCopy, "spatialPersonaGenerationCounter")) && (v35 = -[CSDConversationParticipant isCameraMixedWithScreen](self, "isCameraMixedWithScreen"), v35 == objc_msgSend(participantCopy, "isCameraMixedWithScreen")))
                {
                  cluster = [(CSDConversationParticipant *)self cluster];
                  cluster2 = [participantCopy cluster];
                  if (TUObjectsAreEqualOrNil())
                  {
                    v37 = [(CSDConversationParticipant *)self isNearbySharePlay:cluster2];
                    v19 = v37 ^ [participantCopy isNearbySharePlay] ^ 1;
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

              activeIDSDestination = v41;
            }

            else
            {
              LOBYTE(v19) = 0;
            }

            activeIDSDestination2 = v42;
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
  handle = [(CSDConversationParticipant *)self handle];
  v4 = [handle hash];
  avcData = [(CSDConversationParticipant *)self avcData];
  v5 = v4 ^ [avcData hash];
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
  streamToken = [(CSDConversationParticipant *)self streamToken];
  v16 = streamToken ^ [(CSDConversationParticipant *)self screenToken];
  v17 = v16 ^ [(CSDConversationParticipant *)self captionsToken];
  avcIdentifier = [(CSDConversationParticipant *)self avcIdentifier];
  v19 = v17 ^ [avcIdentifier hash];
  activeIDSDestination = [(CSDConversationParticipant *)self activeIDSDestination];
  v21 = v19 ^ [activeIDSDestination hash];
  capabilities = [(CSDConversationParticipant *)self capabilities];
  v23 = v21 ^ [capabilities hash];
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

  association = [(CSDConversationParticipant *)self association];
  v30 = v28 ^ [association hash];
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
  cluster = [(CSDConversationParticipant *)self cluster];
  v38 = v27 ^ v36 ^ [cluster hash];
  if (![(CSDConversationParticipant *)self isNearbySharePlay])
  {
    v6 = 1237;
  }

  return v38 ^ v6;
}

@end