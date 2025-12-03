@interface CSDMessagingRelayMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isVideo;
- (CSDMessagingRelayMessage)initWithDictionary:(id)dictionary;
- (IDSDestination)endpointIDSDestination;
- (NSArray)tuProviders;
- (NSSet)remoteParticipantTUHandles;
- (NSString)receivedMessageTypeString;
- (NSString)typeString;
- (NSUUID)localSenderIdentityAccountUUID;
- (NSUUID)localSenderIdentityUUID;
- (TUCallCapabilitiesState)callCapabilitiesState;
- (TUCallDisplayContext)displayContext;
- (TUCallModel)callModel;
- (TUCallProvider)tuProvider;
- (TUDialRequest)dialRequest;
- (TUHandle)tuHandle;
- (TUJoinConversationRequest)joinConversationRequest;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initAddRemoteMemberMessageWithMembers:(id)members otherInvitedHandles:(id)handles conversationWithUUID:(id)d;
- (id)initBuzzMemberMessage:(id)message conversationUUID:(id)d;
- (int)StringAsReceivedMessageType:(id)type;
- (int)StringAsRequestActionType:(id)type;
- (int)StringAsType:(id)type;
- (int)receivedMessageType;
- (int)requestActionType;
- (int)type;
- (unint64_t)hash;
- (unsigned)DTMFKey;
- (void)addCall:(id)call;
- (void)addConversationMembers:(id)members;
- (void)addConversations:(id)conversations;
- (void)addEndpointIDSDestinationURIs:(id)is;
- (void)addHandlesToInvite:(id)invite;
- (void)addOtherUniqueProxyIdentifiers:(id)identifiers;
- (void)addProminenceEntry:(id)entry;
- (void)addProtoCall:(id)call;
- (void)addProviders:(id)providers;
- (void)addRemoteParticipantHandles:(id)handles;
- (void)addRoutes:(id)routes;
- (void)copyTo:(id)to;
- (void)customizeForProtocolVersion:(int)version;
- (void)mergeFrom:(id)from;
- (void)setCallCapabilitiesState:(id)state;
- (void)setCallModel:(id)model;
- (void)setDTMFKey:(unsigned __int8)key;
- (void)setDisplayContext:(id)context;
- (void)setEndpointIDSDestination:(id)destination;
- (void)setHasAnnouncementHasFinished:(BOOL)finished;
- (void)setHasAutomaticCallActivationDisabled:(BOOL)disabled;
- (void)setHasHardPauseState:(BOOL)state;
- (void)setHasIsLocalUserInHomeCountry:(BOOL)country;
- (void)setHasIsReceptionistCapable:(BOOL)capable;
- (void)setHasIsScreening:(BOOL)screening;
- (void)setHasMessageSendTime:(BOOL)time;
- (void)setHasProtoCannotBeAnswered:(BOOL)answered;
- (void)setHasProtoCannotRelayAudioOrVideoOnPairedDevice:(BOOL)device;
- (void)setHasProtoDisconnectedReason:(BOOL)reason;
- (void)setHasProtoEmergency:(BOOL)emergency;
- (void)setHasProtoExpectedEndpointOnMessagingDevice:(BOOL)device;
- (void)setHasProtoFailureExpected:(BOOL)expected;
- (void)setHasProtoNeedsManualInCallSounds:(BOOL)sounds;
- (void)setHasProtoOriginatingUIType:(BOOL)type;
- (void)setHasProtoPriority:(BOOL)priority;
- (void)setHasProtoProtocolVersion:(BOOL)version;
- (void)setHasProtoRemoteUplinkMuted:(BOOL)muted;
- (void)setHasProtoSOS:(BOOL)s;
- (void)setHasProtoService:(BOOL)service;
- (void)setHasProtoShouldSuppressRingtone:(BOOL)ringtone;
- (void)setHasProtoSoundRegion:(BOOL)region;
- (void)setHasProtoSupportsDTMFUpdates:(BOOL)updates;
- (void)setHasProtoSupportsEmergencyFallback:(BOOL)fallback;
- (void)setHasProtoSupportsTTYWithVoice:(BOOL)voice;
- (void)setHasProtoTTYType:(BOOL)type;
- (void)setHasProtoUplinkMuted:(BOOL)muted;
- (void)setHasProtoVideo:(BOOL)video;
- (void)setHasProtoVoicemail:(BOOL)voicemail;
- (void)setHasProtoWantsHoldMusic:(BOOL)music;
- (void)setHasReceivedMessageType:(BOOL)type;
- (void)setHasReceptionistState:(BOOL)state;
- (void)setHasRelayHostCanScreen:(BOOL)screen;
- (void)setHasRequestActionType:(BOOL)type;
- (void)setHasSystemVolume:(BOOL)volume;
- (void)setHasType:(BOOL)type;
- (void)setLocalSenderIdentityAccountUUID:(id)d;
- (void)setLocalSenderIdentityUUID:(id)d;
- (void)setPriority:(int64_t)priority;
- (void)setRemoteParticipantTUHandles:(id)handles;
- (void)setSoundRegion:(int64_t)region;
- (void)setTuHandle:(id)handle;
- (void)setTuProvider:(id)provider;
- (void)setTuProviders:(id)providers;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingRelayMessage

- (TUCallProvider)tuProvider
{
  protoProvider = [(CSDMessagingRelayMessage *)self protoProvider];
  provider = [protoProvider provider];

  if (!provider)
  {
    v7 = 0;
    v5 = objc_alloc_init(TUCallProviderManager);
    provider = [v5 providerWithService:-[CSDMessagingRelayMessage service](self video:{"service"), &v7}];
  }

  return provider;
}

- (NSString)typeString
{
  type = [(CSDMessagingRelayMessage *)self type];
  if (type >= 0x43)
  {
    v3 = [NSString stringWithFormat:@"(unknown: %i)", type];
  }

  else
  {
    v3 = *(&off_10061A8D0 + type);
  }

  return v3;
}

- (int)type
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingRelayMessage;
  v3 = [(CSDMessagingRelayMessage *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingRelayMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    type = self->_type;
    if (type >= 0x43)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_10061B1B0[type];
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  uniqueProxyIdentifier = self->_uniqueProxyIdentifier;
  if (uniqueProxyIdentifier)
  {
    [v3 setObject:uniqueProxyIdentifier forKey:@"uniqueProxyIdentifier"];
  }

  destinationID = self->_destinationID;
  if (destinationID)
  {
    [v3 setObject:destinationID forKey:@"destinationID"];
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier)
  {
    [v3 setObject:sourceIdentifier forKey:@"sourceIdentifier"];
  }

  protoCallModelState = self->_protoCallModelState;
  if (protoCallModelState)
  {
    dictionaryRepresentation = [(CSDMessagingCallModelState *)protoCallModelState dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"protoCallModelState"];
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v69 = [NSNumber numberWithUnsignedInt:self->_protoService];
    [v3 setObject:v69 forKey:@"protoService"];

    has = self->_has;
    if ((*&has & 0x800000000) == 0)
    {
LABEL_16:
      if ((*&has & 0x100000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*&has & 0x800000000) == 0)
  {
    goto LABEL_16;
  }

  v70 = [NSNumber numberWithBool:self->_protoWantsHoldMusic];
  [v3 setObject:v70 forKey:@"protoWantsHoldMusic"];

  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_17:
    v12 = [NSNumber numberWithBool:self->_protoCannotBeAnswered];
    [v3 setObject:v12 forKey:@"protoCannotBeAnswered"];
  }

LABEL_18:
  protoDTMFKey = self->_protoDTMFKey;
  if (protoDTMFKey)
  {
    [v3 setObject:protoDTMFKey forKey:@"protoDTMFKey"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_protoDisconnectedReason];
    [v3 setObject:v14 forKey:@"protoDisconnectedReason"];
  }

  oBSOLETEConferenceIdentifier = self->_oBSOLETEConferenceIdentifier;
  if (oBSOLETEConferenceIdentifier)
  {
    [v3 setObject:oBSOLETEConferenceIdentifier forKey:@"OBSOLETE_conferenceIdentifier"];
  }

  if ((*(&self->_has + 4) & 4) != 0)
  {
    v16 = [NSNumber numberWithBool:self->_protoVoicemail];
    [v3 setObject:v16 forKey:@"protoVoicemail"];
  }

  callerNameFromNetwork = self->_callerNameFromNetwork;
  if (callerNameFromNetwork)
  {
    [v3 setObject:callerNameFromNetwork forKey:@"callerNameFromNetwork"];
  }

  if ([(NSMutableArray *)self->_protoCalls count])
  {
    v18 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_protoCalls, "count")}];
    v186 = 0u;
    v187 = 0u;
    v188 = 0u;
    v189 = 0u;
    v19 = self->_protoCalls;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v186 objects:v197 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v187;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v187 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation2 = [*(*(&v186 + 1) + 8 * i) dictionaryRepresentation];
          [v18 addObject:dictionaryRepresentation2];
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v186 objects:v197 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKey:@"protoCall"];
  }

  hardPauseDigits = self->_hardPauseDigits;
  if (hardPauseDigits)
  {
    [v3 setObject:hardPauseDigits forKey:@"hardPauseDigits"];
  }

  v26 = self->_has;
  if ((*&v26 & 4) != 0)
  {
    v71 = [NSNumber numberWithUnsignedInt:self->_hardPauseState];
    [v3 setObject:v71 forKey:@"hardPauseState"];

    v26 = self->_has;
    if ((*&v26 & 0x400) == 0)
    {
LABEL_41:
      if ((*&v26 & 0x40) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_126;
    }
  }

  else if ((*&v26 & 0x400) == 0)
  {
    goto LABEL_41;
  }

  receivedMessageType = self->_receivedMessageType;
  if (receivedMessageType >= 0x43)
  {
    v73 = [NSString stringWithFormat:@"(unknown: %i)", self->_receivedMessageType];
  }

  else
  {
    v73 = off_10061B1B0[receivedMessageType];
  }

  [v3 setObject:v73 forKey:@"receivedMessageType"];

  v26 = self->_has;
  if ((*&v26 & 0x40) == 0)
  {
LABEL_42:
    if ((*&v26 & 0x10000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_126:
  v85 = [NSNumber numberWithUnsignedInt:self->_protoProtocolVersion];
  [v3 setObject:v85 forKey:@"protoProtocolVersion"];

  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_43:
    v27 = [NSNumber numberWithBool:self->_protoShouldSuppressRingtone];
    [v3 setObject:v27 forKey:@"protoShouldSuppressRingtone"];
  }

LABEL_44:
  dummyPayload = self->_dummyPayload;
  if (dummyPayload)
  {
    [v3 setObject:dummyPayload forKey:@"dummyPayload"];
  }

  v29 = self->_has;
  if (*&v29)
  {
    v74 = [NSNumber numberWithDouble:self->_hostCallCreationTime];
    [v3 setObject:v74 forKey:@"hostCallCreationTime"];

    v29 = self->_has;
    if ((*&v29 & 2) == 0)
    {
LABEL_48:
      if ((*&v29 & 0x2000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_113;
    }
  }

  else if ((*&v29 & 2) == 0)
  {
    goto LABEL_48;
  }

  v75 = [NSNumber numberWithDouble:self->_messageSendTime];
  [v3 setObject:v75 forKey:@"messageSendTime"];

  v29 = self->_has;
  if ((*&v29 & 0x2000000) == 0)
  {
LABEL_49:
    if ((*&v29 & 0x200000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_114;
  }

LABEL_113:
  v76 = [NSNumber numberWithBool:self->_protoNeedsManualInCallSounds];
  [v3 setObject:v76 forKey:@"protoNeedsManualInCallSounds"];

  v29 = self->_has;
  if ((*&v29 & 0x200000) == 0)
  {
LABEL_50:
    if ((*&v29 & 0x800000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_114:
  v77 = [NSNumber numberWithBool:self->_protoCannotRelayAudioOrVideoOnPairedDevice];
  [v3 setObject:v77 forKey:@"protoCannotRelayAudioOrVideoOnPairedDevice"];

  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_51:
    v30 = [NSNumber numberWithBool:self->_protoExpectedEndpointOnMessagingDevice];
    [v3 setObject:v30 forKey:@"protoExpectedEndpointOnMessagingDevice"];
  }

LABEL_52:
  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier)
  {
    [v3 setObject:contactIdentifier forKey:@"contactIdentifier"];
  }

  protoCallCapabilitiesState = self->_protoCallCapabilitiesState;
  if (protoCallCapabilitiesState)
  {
    dictionaryRepresentation3 = [(CSDMessagingCallCapabilitiesState *)protoCallCapabilitiesState dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"protoCallCapabilitiesState"];
  }

  v34 = self->_has;
  if ((*&v34 & 0x100) != 0)
  {
    v35 = [NSNumber numberWithUnsignedInt:self->_protoSoundRegion];
    [v3 setObject:v35 forKey:@"protoSoundRegion"];

    v34 = self->_has;
  }

  if ((*&v34 & 0x400000) != 0)
  {
    v36 = [NSNumber numberWithBool:self->_protoEmergency];
    [v3 setObject:v36 forKey:@"protoEmergency"];
  }

  otherUniqueProxyIdentifiers = self->_otherUniqueProxyIdentifiers;
  if (otherUniqueProxyIdentifiers)
  {
    [v3 setObject:otherUniqueProxyIdentifiers forKey:@"otherUniqueProxyIdentifiers"];
  }

  protoCallModel = self->_protoCallModel;
  if (protoCallModel)
  {
    dictionaryRepresentation4 = [(CSDMessagingCallModel *)protoCallModel dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"protoCallModel"];
  }

  handle = self->_handle;
  if (handle)
  {
    dictionaryRepresentation5 = [(CSDMessagingHandle *)handle dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation5 forKey:@"handle"];
  }

  if ((*(&self->_has + 3) & 8) != 0)
  {
    v42 = [NSNumber numberWithBool:self->_protoSOS];
    [v3 setObject:v42 forKey:@"protoSOS"];
  }

  if ([(NSMutableArray *)self->_providers count])
  {
    v44 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_providers, "count")}];
    v182 = 0u;
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    v45 = self->_providers;
    v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v182 objects:v196 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v183;
      do
      {
        for (j = 0; j != v47; j = j + 1)
        {
          if (*v183 != v48)
          {
            objc_enumerationMutation(v45);
          }

          dictionaryRepresentation6 = [*(*(&v182 + 1) + 8 * j) dictionaryRepresentation];
          [v44 addObject:dictionaryRepresentation6];
        }

        v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v182 objects:v196 count:16];
      }

      while (v47);
    }

    [v3 setObject:v44 forKey:@"providers"];
  }

  protoDisplayContext = self->_protoDisplayContext;
  if (protoDisplayContext)
  {
    dictionaryRepresentation7 = [(CSDMessagingCallDisplayContext *)protoDisplayContext dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation7 forKey:@"protoDisplayContext"];
  }

  inviteData = self->_inviteData;
  if (inviteData)
  {
    dictionaryRepresentation8 = [(CSDMessagingAVConferenceInviteData *)inviteData dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation8 forKey:@"inviteData"];
  }

  protoProvider = self->_protoProvider;
  if (protoProvider)
  {
    dictionaryRepresentation9 = [(CSDMessagingCallProvider *)protoProvider dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation9 forKey:@"protoProvider"];
  }

  v57 = self->_has;
  if ((*&v57 & 0x200000000) != 0)
  {
    v78 = [NSNumber numberWithBool:self->_protoVideo];
    [v3 setObject:v78 forKey:@"protoVideo"];

    v57 = self->_has;
    if ((*&v57 & 0x100000000) == 0)
    {
LABEL_85:
      if ((*&v57 & 0x4000000) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_118;
    }
  }

  else if ((*&v57 & 0x100000000) == 0)
  {
    goto LABEL_85;
  }

  v79 = [NSNumber numberWithBool:self->_protoUplinkMuted];
  [v3 setObject:v79 forKey:@"protoUplinkMuted"];

  v57 = self->_has;
  if ((*&v57 & 0x4000000) == 0)
  {
LABEL_86:
    if ((*&v57 & 0x2000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_118:
  v80 = [NSNumber numberWithBool:self->_protoRemoteUplinkMuted];
  [v3 setObject:v80 forKey:@"protoRemoteUplinkMuted"];

  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_87:
    *&v43 = self->_systemVolume;
    v58 = [NSNumber numberWithFloat:v43];
    [v3 setObject:v58 forKey:@"systemVolume"];
  }

LABEL_88:
  localSenderIdentityUUIDString = self->_localSenderIdentityUUIDString;
  if (localSenderIdentityUUIDString)
  {
    [v3 setObject:localSenderIdentityUUIDString forKey:@"localSenderIdentityUUIDString"];
  }

  if ([(NSMutableArray *)self->_remoteParticipantHandles count])
  {
    v60 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_remoteParticipantHandles, "count")}];
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    v61 = self->_remoteParticipantHandles;
    v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v178 objects:v195 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v179;
      do
      {
        for (k = 0; k != v63; k = k + 1)
        {
          if (*v179 != v64)
          {
            objc_enumerationMutation(v61);
          }

          dictionaryRepresentation10 = [*(*(&v178 + 1) + 8 * k) dictionaryRepresentation];
          [v60 addObject:dictionaryRepresentation10];
        }

        v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v178 objects:v195 count:16];
      }

      while (v63);
    }

    [v3 setObject:v60 forKey:@"remoteParticipantHandles"];
  }

  localSenderIdentityAccountUUIDString = self->_localSenderIdentityAccountUUIDString;
  if (localSenderIdentityAccountUUIDString)
  {
    [v3 setObject:localSenderIdentityAccountUUIDString forKey:@"localSenderIdentityAccountUUIDString"];
  }

  v68 = self->_has;
  if ((*&v68 & 0x200) != 0)
  {
    v81 = [NSNumber numberWithUnsignedInt:self->_protoTTYType];
    [v3 setObject:v81 forKey:@"protoTTYType"];

    v68 = self->_has;
    if ((*&v68 & 0x80000000) == 0)
    {
LABEL_103:
      if ((*&v68 & 0x1000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_122;
    }
  }

  else if ((*&v68 & 0x80000000) == 0)
  {
    goto LABEL_103;
  }

  v82 = [NSNumber numberWithBool:self->_protoSupportsTTYWithVoice];
  [v3 setObject:v82 forKey:@"protoSupportsTTYWithVoice"];

  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_130;
  }

LABEL_122:
  requestActionType = self->_requestActionType;
  if (requestActionType >= 0x43)
  {
    v84 = [NSString stringWithFormat:@"(unknown: %i)", self->_requestActionType];
  }

  else
  {
    v84 = off_10061B1B0[requestActionType];
  }

  [v3 setObject:v84 forKey:@"requestActionType"];

LABEL_130:
  if ([(NSMutableArray *)self->_routes count])
  {
    v86 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_routes, "count")}];
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v87 = self->_routes;
    v88 = [(NSMutableArray *)v87 countByEnumeratingWithState:&v174 objects:v194 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v175;
      do
      {
        for (m = 0; m != v89; m = m + 1)
        {
          if (*v175 != v90)
          {
            objc_enumerationMutation(v87);
          }

          dictionaryRepresentation11 = [*(*(&v174 + 1) + 8 * m) dictionaryRepresentation];
          [v86 addObject:dictionaryRepresentation11];
        }

        v89 = [(NSMutableArray *)v87 countByEnumeratingWithState:&v174 objects:v194 count:16];
      }

      while (v89);
    }

    [v3 setObject:v86 forKey:@"routes"];
  }

  route = self->_route;
  if (route)
  {
    dictionaryRepresentation12 = [(CSDMessagingRoute *)route dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation12 forKey:@"route"];
  }

  endpointIDSDestinationURIs = self->_endpointIDSDestinationURIs;
  if (endpointIDSDestinationURIs)
  {
    [v3 setObject:endpointIDSDestinationURIs forKey:@"endpointIDSDestinationURIs"];
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode)
  {
    [v3 setObject:isoCountryCode forKey:@"isoCountryCode"];
  }

  v97 = self->_has;
  if ((*&v97 & 0x20) != 0)
  {
    v153 = [NSNumber numberWithUnsignedInt:self->_protoPriority];
    [v3 setObject:v153 forKey:@"protoPriority"];

    v97 = self->_has;
    if ((*&v97 & 0x10) == 0)
    {
LABEL_147:
      if ((*&v97 & 0x1000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_227;
    }
  }

  else if ((*&v97 & 0x10) == 0)
  {
    goto LABEL_147;
  }

  v154 = [NSNumber numberWithUnsignedInt:self->_protoOriginatingUIType];
  [v3 setObject:v154 forKey:@"protoOriginatingUIType"];

  v97 = self->_has;
  if ((*&v97 & 0x1000000) == 0)
  {
LABEL_148:
    if ((*&v97 & 0x40000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

LABEL_227:
  v155 = [NSNumber numberWithBool:self->_protoFailureExpected];
  [v3 setObject:v155 forKey:@"protoFailureExpected"];

  if ((*&self->_has & 0x40000000) != 0)
  {
LABEL_149:
    v98 = [NSNumber numberWithBool:self->_protoSupportsEmergencyFallback];
    [v3 setObject:v98 forKey:@"protoSupportsEmergencyFallback"];
  }

LABEL_150:
  groupUUIDString = self->_groupUUIDString;
  if (groupUUIDString)
  {
    [v3 setObject:groupUUIDString forKey:@"groupUUIDString"];
  }

  if ([(NSMutableArray *)self->_conversations count])
  {
    v100 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_conversations, "count")}];
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v101 = self->_conversations;
    v102 = [(NSMutableArray *)v101 countByEnumeratingWithState:&v170 objects:v193 count:16];
    if (v102)
    {
      v103 = v102;
      v104 = *v171;
      do
      {
        for (n = 0; n != v103; n = n + 1)
        {
          if (*v171 != v104)
          {
            objc_enumerationMutation(v101);
          }

          dictionaryRepresentation13 = [*(*(&v170 + 1) + 8 * n) dictionaryRepresentation];
          [v100 addObject:dictionaryRepresentation13];
        }

        v103 = [(NSMutableArray *)v101 countByEnumeratingWithState:&v170 objects:v193 count:16];
      }

      while (v103);
    }

    [v3 setObject:v100 forKey:@"conversations"];
  }

  joinConversationRequestURLString = self->_joinConversationRequestURLString;
  if (joinConversationRequestURLString)
  {
    [v3 setObject:joinConversationRequestURLString forKey:@"joinConversationRequestURLString"];
  }

  conversationUUIDString = self->_conversationUUIDString;
  if (conversationUUIDString)
  {
    [v3 setObject:conversationUUIDString forKey:@"conversationUUIDString"];
  }

  if ([(NSMutableArray *)self->_conversationMembers count])
  {
    v109 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_conversationMembers, "count")}];
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v110 = self->_conversationMembers;
    v111 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v166 objects:v192 count:16];
    if (v111)
    {
      v112 = v111;
      v113 = *v167;
      do
      {
        for (ii = 0; ii != v112; ii = ii + 1)
        {
          if (*v167 != v113)
          {
            objc_enumerationMutation(v110);
          }

          dictionaryRepresentation14 = [*(*(&v166 + 1) + 8 * ii) dictionaryRepresentation];
          [v109 addObject:dictionaryRepresentation14];
        }

        v112 = [(NSMutableArray *)v110 countByEnumeratingWithState:&v166 objects:v192 count:16];
      }

      while (v112);
    }

    [v3 setObject:v109 forKey:@"conversationMembers"];
  }

  if ([(NSMutableArray *)self->_handlesToInvites count])
  {
    v116 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_handlesToInvites, "count")}];
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v117 = self->_handlesToInvites;
    v118 = [(NSMutableArray *)v117 countByEnumeratingWithState:&v162 objects:v191 count:16];
    if (v118)
    {
      v119 = v118;
      v120 = *v163;
      do
      {
        for (jj = 0; jj != v119; jj = jj + 1)
        {
          if (*v163 != v120)
          {
            objc_enumerationMutation(v117);
          }

          dictionaryRepresentation15 = [*(*(&v162 + 1) + 8 * jj) dictionaryRepresentation];
          [v116 addObject:dictionaryRepresentation15];
        }

        v119 = [(NSMutableArray *)v117 countByEnumeratingWithState:&v162 objects:v191 count:16];
      }

      while (v119);
    }

    [v3 setObject:v116 forKey:@"handlesToInvite"];
  }

  if ([(NSMutableArray *)self->_prominenceEntrys count])
  {
    v123 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_prominenceEntrys, "count")}];
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v124 = self->_prominenceEntrys;
    v125 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v158 objects:v190 count:16];
    if (v125)
    {
      v126 = v125;
      v127 = *v159;
      do
      {
        for (kk = 0; kk != v126; kk = kk + 1)
        {
          if (*v159 != v127)
          {
            objc_enumerationMutation(v124);
          }

          dictionaryRepresentation16 = [*(*(&v158 + 1) + 8 * kk) dictionaryRepresentation];
          [v123 addObject:dictionaryRepresentation16];
        }

        v126 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v158 objects:v190 count:16];
      }

      while (v126);
    }

    [v3 setObject:v123 forKey:@"prominenceEntry"];
  }

  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    v130 = [NSNumber numberWithBool:self->_protoSupportsDTMFUpdates];
    [v3 setObject:v130 forKey:@"protoSupportsDTMFUpdates"];
  }

  dtmfUpdateDigits = self->_dtmfUpdateDigits;
  if (dtmfUpdateDigits)
  {
    [v3 setObject:dtmfUpdateDigits forKey:@"dtmfUpdateDigits"];
  }

  image = self->_image;
  if (image)
  {
    [v3 setObject:image forKey:@"image"];
  }

  senderIDSIdentifier = self->_senderIDSIdentifier;
  if (senderIDSIdentifier)
  {
    [v3 setObject:senderIDSIdentifier forKey:@"senderIDSIdentifier"];
  }

  v134 = self->_has;
  if ((*&v134 & 0x10000) != 0)
  {
    v156 = [NSNumber numberWithBool:self->_automaticCallActivationDisabled];
    [v3 setObject:v156 forKey:@"automaticCallActivationDisabled"];

    v134 = self->_has;
    if ((*&v134 & 0x1000000000) == 0)
    {
LABEL_202:
      if ((*&v134 & 0x80000) == 0)
      {
        goto LABEL_204;
      }

      goto LABEL_203;
    }
  }

  else if ((*&v134 & 0x1000000000) == 0)
  {
    goto LABEL_202;
  }

  v157 = [NSNumber numberWithBool:self->_relayHostCanScreen];
  [v3 setObject:v157 forKey:@"relayHostCanScreen"];

  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_203:
    v135 = [NSNumber numberWithBool:self->_isScreening];
    [v3 setObject:v135 forKey:@"isScreening"];
  }

LABEL_204:
  captionsResult = self->_captionsResult;
  if (captionsResult)
  {
    dictionaryRepresentation17 = [(CSDMessagingCaptionsResult *)captionsResult dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation17 forKey:@"captionsResult"];
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    v138 = [NSNumber numberWithInt:self->_receptionistState];
    [v3 setObject:v138 forKey:@"receptionistState"];
  }

  lastReceptionistMessage = self->_lastReceptionistMessage;
  if (lastReceptionistMessage)
  {
    [v3 setObject:lastReceptionistMessage forKey:@"lastReceptionistMessage"];
  }

  smartHoldingSession = self->_smartHoldingSession;
  if (smartHoldingSession)
  {
    dictionaryRepresentation18 = [(CSDMessagingSmartHoldingSession *)smartHoldingSession dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation18 forKey:@"smartHoldingSession"];
  }

  customReply = self->_customReply;
  if (customReply)
  {
    [v3 setObject:customReply forKey:@"customReply"];
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    v143 = [NSNumber numberWithBool:self->_announcementHasFinished];
    [v3 setObject:v143 forKey:@"announcementHasFinished"];
  }

  receptionistSession = self->_receptionistSession;
  if (receptionistSession)
  {
    dictionaryRepresentation19 = [(CSDMessagingReceptionistSession *)receptionistSession dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation19 forKey:@"receptionistSession"];
  }

  smartHoldingRequest = self->_smartHoldingRequest;
  if (smartHoldingRequest)
  {
    dictionaryRepresentation20 = [(CSDMessagingSmartHoldingRequest *)smartHoldingRequest dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation20 forKey:@"smartHoldingRequest"];
  }

  v148 = self->_has;
  if ((*&v148 & 0x40000) != 0)
  {
    v149 = [NSNumber numberWithBool:self->_isReceptionistCapable];
    [v3 setObject:v149 forKey:@"isReceptionistCapable"];

    v148 = self->_has;
  }

  if ((*&v148 & 0x20000) != 0)
  {
    v150 = [NSNumber numberWithBool:self->_isLocalUserInHomeCountry];
    [v3 setObject:v150 forKey:@"isLocalUserInHomeCountry"];
  }

  v151 = v3;

  return v3;
}

- (CSDMessagingRelayMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  v6 = -[CSDMessagingRelayMessage initWithType:](self, "initWithType:", [v5 intValue]);

  if (v6)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B0D10;
    v8[3] = &unk_10061A8B0;
    v9 = v6;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v8];
  }

  return v6;
}

- (id)initAddRemoteMemberMessageWithMembers:(id)members otherInvitedHandles:(id)handles conversationWithUUID:(id)d
{
  membersCopy = members;
  handlesCopy = handles;
  dCopy = d;
  v11 = [(CSDMessagingRelayMessage *)self initWithType:52];
  if (v11)
  {
    v12 = +[NSMutableArray array];
    [(CSDMessagingRelayMessage *)v11 setConversationMembers:v12];

    v13 = +[NSMutableArray array];
    [(CSDMessagingRelayMessage *)v11 setHandlesToInvites:v13];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = membersCopy;
    v14 = membersCopy;
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        v18 = 0;
        do
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v37 + 1) + 8 * v18);
          conversationMembers = [(CSDMessagingRelayMessage *)v11 conversationMembers];
          v21 = [CSDMessagingConversationMember memberWithTUConversationMember:v19];
          [conversationMembers addObject:v21];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v16);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = handlesCopy;
    v23 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v34;
      do
      {
        v26 = 0;
        do
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v33 + 1) + 8 * v26);
          handlesToInvites = [(CSDMessagingRelayMessage *)v11 handlesToInvites];
          v29 = [CSDMessagingHandle handleWithTUHandle:v27];
          [handlesToInvites addObject:v29];

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v24);
    }

    uUIDString = [dCopy UUIDString];
    [(CSDMessagingRelayMessage *)v11 setConversationUUIDString:uUIDString];

    membersCopy = v32;
  }

  return v11;
}

- (id)initBuzzMemberMessage:(id)message conversationUUID:(id)d
{
  messageCopy = message;
  dCopy = d;
  v8 = [(CSDMessagingRelayMessage *)self initWithType:51];
  if (v8)
  {
    v9 = [CSDMessagingConversationMember memberWithTUConversationMember:messageCopy];
    v10 = [NSMutableArray arrayWithObject:v9];
    [(CSDMessagingRelayMessage *)v8 setConversationMembers:v10];

    uUIDString = [dCopy UUIDString];
    [(CSDMessagingRelayMessage *)v8 setConversationUUIDString:uUIDString];
  }

  return v8;
}

- (NSString)receivedMessageTypeString
{
  receivedMessageType = [(CSDMessagingRelayMessage *)self receivedMessageType];
  if (receivedMessageType >= 0x43)
  {
    v3 = [NSString stringWithFormat:@"(unknown: %i)", receivedMessageType];
  }

  else
  {
    v3 = *(&off_10061A8D0 + receivedMessageType);
  }

  return v3;
}

- (TUDialRequest)dialRequest
{
  if ([(CSDMessagingRelayMessage *)self type]!= 2)
  {
    v5 = 0;
    goto LABEL_15;
  }

  v3 = [TUDialRequest alloc];
  tuProvider = [(CSDMessagingRelayMessage *)self tuProvider];
  v5 = [v3 initWithProvider:tuProvider];

  tuHandle = [(CSDMessagingRelayMessage *)self tuHandle];
  [v5 setHandle:tuHandle];

  [v5 setVideo:0];
  sourceIdentifier = [(CSDMessagingRelayMessage *)self sourceIdentifier];
  [v5 setAudioSourceIdentifier:sourceIdentifier];

  if ([(CSDMessagingRelayMessage *)self isVoicemail])
  {
    v8 = 2;
LABEL_7:
    [v5 setDialType:v8];
    goto LABEL_8;
  }

  if ([(CSDMessagingRelayMessage *)self isEmergency])
  {
    v8 = 1;
    goto LABEL_7;
  }

LABEL_8:
  [v5 setSOS:{-[CSDMessagingRelayMessage isSOS](self, "isSOS")}];
  uniqueProxyIdentifier = [(CSDMessagingRelayMessage *)self uniqueProxyIdentifier];
  [v5 setUniqueProxyIdentifier:uniqueProxyIdentifier];

  [v5 setEndpointOnCurrentDevice:0];
  localSenderIdentityUUID = [(CSDMessagingRelayMessage *)self localSenderIdentityUUID];
  [v5 setLocalSenderIdentityUUID:localSenderIdentityUUID];

  localSenderIdentityAccountUUID = [(CSDMessagingRelayMessage *)self localSenderIdentityAccountUUID];
  [v5 setLocalSenderIdentityAccountUUID:localSenderIdentityAccountUUID];

  localSenderIdentityUUID2 = [(CSDMessagingRelayMessage *)self localSenderIdentityUUID];
  if (localSenderIdentityUUID2)
  {
  }

  else
  {
    localSenderIdentityAccountUUID2 = [(CSDMessagingRelayMessage *)self localSenderIdentityAccountUUID];

    if (localSenderIdentityAccountUUID2)
    {
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        localSenderIdentityAccountUUID3 = [(CSDMessagingRelayMessage *)self localSenderIdentityAccountUUID];
        v24 = 138412290;
        v25 = localSenderIdentityAccountUUID3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Fetching localSenderIdenity for localSenderIdentityAccountUUID %@", &v24, 0xCu);
      }

      v16 = +[TUCallCenter sharedInstance];
      providerManager = [v16 providerManager];
      telephonyProvider = [providerManager telephonyProvider];
      localSenderIdentityAccountUUID4 = [(CSDMessagingRelayMessage *)self localSenderIdentityAccountUUID];
      v20 = [telephonyProvider senderIdentityForAccountUUID:localSenderIdentityAccountUUID4];
      uUID = [v20 UUID];
      [v5 setLocalSenderIdentityUUID:uUID];
    }
  }

  [(CSDMessagingRelayMessage *)self ttyType];
  [v5 setTtyType:TUDialRequestTTYTypeForTUCallTTYType()];
  [v5 setOriginatingUIType:{-[CSDMessagingRelayMessage originatingUIType](self, "originatingUIType")}];
  contactIdentifier = [(CSDMessagingRelayMessage *)self contactIdentifier];
  [v5 setContactIdentifier:contactIdentifier];

LABEL_15:

  return v5;
}

- (TUJoinConversationRequest)joinConversationRequest
{
  if ([(CSDMessagingRelayMessage *)self type]== 50)
  {
    joinConversationRequestURLString = [(CSDMessagingRelayMessage *)self joinConversationRequestURLString];
    v4 = [NSURL URLWithString:joinConversationRequestURLString];

    v5 = [[TUJoinConversationRequest alloc] initWithURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unsigned)DTMFKey
{
  protoDTMFKey = [(CSDMessagingRelayMessage *)self protoDTMFKey];
  v3 = *[protoDTMFKey bytes];

  return v3;
}

- (void)setDTMFKey:(unsigned __int8)key
{
  keyCopy = key;
  v4 = [NSData dataWithBytes:&keyCopy length:1];
  [(CSDMessagingRelayMessage *)self setProtoDTMFKey:v4];
}

- (void)customizeForProtocolVersion:(int)version
{
  hardPauseDigits = [(CSDMessagingRelayMessage *)self hardPauseDigits];

  if (version < 2 && hardPauseDigits)
  {
    hardPauseDigits2 = [(CSDMessagingRelayMessage *)self hardPauseDigits];
    v7 = TUHardPauseDigitsDisplayString();

    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      hardPauseDigits3 = [(CSDMessagingRelayMessage *)self hardPauseDigits];
      v12 = 138412802;
      v13 = hardPauseDigits3;
      v14 = 2112;
      v15 = v7;
      v16 = 1024;
      versionCopy2 = version;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Replacing hardPauseDigits '%@' with '%@' since protocolVersion is %d", &v12, 0x1Cu);
    }

    [(CSDMessagingRelayMessage *)self setHardPauseDigits:v7];
  }

  else if (version > 2)
  {
    return;
  }

  if (([(CSDMessagingRelayMessage *)self soundRegion]& 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      soundRegion = [(CSDMessagingRelayMessage *)self soundRegion];
      v12 = 134218496;
      v13 = soundRegion;
      v14 = 2048;
      v15 = 1;
      v16 = 1024;
      versionCopy2 = version;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Replacing soundRegion %ld with %ld since protocolVersion is %d", &v12, 0x1Cu);
    }

    [(CSDMessagingRelayMessage *)self setSoundRegion:1];
  }
}

- (void)setSoundRegion:(int64_t)region
{
  if (self->_protoSoundRegion != region)
  {
    self->_protoSoundRegion = region;
  }
}

- (void)setCallCapabilitiesState:(id)state
{
  stateCopy = state;
  v5 = [[CSDMessagingCallCapabilitiesState alloc] initWithCallCapabilitiesState:stateCopy];

  [(CSDMessagingRelayMessage *)self setProtoCallCapabilitiesState:v5];
}

- (TUCallCapabilitiesState)callCapabilitiesState
{
  protoCallCapabilitiesState = [(CSDMessagingRelayMessage *)self protoCallCapabilitiesState];
  state = [protoCallCapabilitiesState state];

  return state;
}

- (TUCallModel)callModel
{
  v3 = objc_alloc_init(TUCallModel);
  protoCallModel = [(CSDMessagingRelayMessage *)self protoCallModel];
  if (protoCallModel)
  {
    protoCallModel2 = [(CSDMessagingRelayMessage *)self protoCallModel];
    supportsHolding = [protoCallModel2 supportsHolding];
  }

  else
  {
    protoCallModel2 = [(CSDMessagingRelayMessage *)self protoCallModelState];
    supportsHolding = [protoCallModel2 holdAllowed];
  }

  [v3 setSupportsHolding:supportsHolding];

  protoCallModel3 = [(CSDMessagingRelayMessage *)self protoCallModel];
  if (protoCallModel3)
  {
    protoCallModel4 = [(CSDMessagingRelayMessage *)self protoCallModel];
    supportsGrouping = [protoCallModel4 supportsGrouping];
  }

  else
  {
    protoCallModel4 = [(CSDMessagingRelayMessage *)self protoCallModelState];
    supportsGrouping = [protoCallModel4 mergeable];
  }

  [v3 setSupportsGrouping:supportsGrouping];

  protoCallModel5 = [(CSDMessagingRelayMessage *)self protoCallModel];
  if (protoCallModel5)
  {
    protoCallModel6 = [(CSDMessagingRelayMessage *)self protoCallModel];
    supportsUngrouping = [protoCallModel6 supportsUngrouping];
  }

  else
  {
    protoCallModel6 = [(CSDMessagingRelayMessage *)self protoCallModelState];
    supportsUngrouping = [protoCallModel6 takingCallsPrivateAllowed];
  }

  [v3 setSupportsUngrouping:supportsUngrouping];

  protoCallModel7 = [(CSDMessagingRelayMessage *)self protoCallModel];
  if (protoCallModel7)
  {
    protoCallModel8 = [(CSDMessagingRelayMessage *)self protoCallModel];
    supportsUnambiguousMultiPartyState = [protoCallModel8 supportsUnambiguousMultiPartyState];
  }

  else
  {
    protoCallModel8 = [(CSDMessagingRelayMessage *)self protoCallModelState];
    supportsUnambiguousMultiPartyState = [protoCallModel8 ambiguityState] == 0;
  }

  [v3 setSupportsUnambiguousMultiPartyState:supportsUnambiguousMultiPartyState];

  protoCallModel9 = [(CSDMessagingRelayMessage *)self protoCallModel];
  if (protoCallModel9)
  {
    protoCallModel10 = [(CSDMessagingRelayMessage *)self protoCallModel];
    supportsAddCall = [protoCallModel10 supportsAddCall];
  }

  else
  {
    protoCallModel10 = [(CSDMessagingRelayMessage *)self protoCallModelState];
    supportsAddCall = [protoCallModel10 addCallAllowed];
  }

  [v3 setSupportsAddCall:supportsAddCall];

  protoCallModel11 = [(CSDMessagingRelayMessage *)self protoCallModel];
  if (protoCallModel11)
  {
    protoCallModel12 = [(CSDMessagingRelayMessage *)self protoCallModel];
    supportsSendingToVoicemail = [protoCallModel12 supportsSendingToVoicemail];
  }

  else
  {
    protoCallModel12 = [(CSDMessagingRelayMessage *)self protoCallModelState];
    supportsSendingToVoicemail = [protoCallModel12 sendToVoicemailAllowed];
  }

  [v3 setSupportsSendingToVoicemail:supportsSendingToVoicemail];

  protoCallModel13 = [(CSDMessagingRelayMessage *)self protoCallModel];
  if (protoCallModel13)
  {
    protoCallModel14 = [(CSDMessagingRelayMessage *)self protoCallModel];
    supportsDTMF = [protoCallModel14 supportsDTMF];
  }

  else
  {
    protoCallModel14 = [(CSDMessagingRelayMessage *)self protoCallModelState];
    supportsDTMF = [protoCallModel14 sendToVoicemailAllowed];
  }

  [v3 setSupportsDTMF:supportsDTMF];

  return v3;
}

- (void)setCallModel:(id)model
{
  modelCopy = model;
  protoCallModel = [(CSDMessagingRelayMessage *)self protoCallModel];

  if (!protoCallModel)
  {
    v5 = objc_alloc_init(CSDMessagingCallModel);
    [(CSDMessagingRelayMessage *)self setProtoCallModel:v5];
  }

  supportsHolding = [modelCopy supportsHolding];
  protoCallModel2 = [(CSDMessagingRelayMessage *)self protoCallModel];
  [protoCallModel2 setSupportsHolding:supportsHolding];

  supportsGrouping = [modelCopy supportsGrouping];
  protoCallModel3 = [(CSDMessagingRelayMessage *)self protoCallModel];
  [protoCallModel3 setSupportsGrouping:supportsGrouping];

  supportsUngrouping = [modelCopy supportsUngrouping];
  protoCallModel4 = [(CSDMessagingRelayMessage *)self protoCallModel];
  [protoCallModel4 setSupportsUngrouping:supportsUngrouping];

  supportsDTMF = [modelCopy supportsDTMF];
  protoCallModel5 = [(CSDMessagingRelayMessage *)self protoCallModel];
  [protoCallModel5 setSupportsDTMF:supportsDTMF];

  supportsUnambiguousMultiPartyState = [modelCopy supportsUnambiguousMultiPartyState];
  protoCallModel6 = [(CSDMessagingRelayMessage *)self protoCallModel];
  [protoCallModel6 setSupportsUnambiguousMultiPartyState:supportsUnambiguousMultiPartyState];

  supportsAddCall = [modelCopy supportsAddCall];
  protoCallModel7 = [(CSDMessagingRelayMessage *)self protoCallModel];
  [protoCallModel7 setSupportsAddCall:supportsAddCall];

  supportsSendingToVoicemail = [modelCopy supportsSendingToVoicemail];
  protoCallModel8 = [(CSDMessagingRelayMessage *)self protoCallModel];
  [protoCallModel8 setSupportsSendingToVoicemail:supportsSendingToVoicemail];

  protoCallModelState = [(CSDMessagingRelayMessage *)self protoCallModelState];

  if (!protoCallModelState)
  {
    v21 = objc_alloc_init(CSDMessagingCallModelState);
    [(CSDMessagingRelayMessage *)self setProtoCallModelState:v21];
  }

  supportsUnambiguousMultiPartyState2 = [modelCopy supportsUnambiguousMultiPartyState];
  protoCallModelState2 = [(CSDMessagingRelayMessage *)self protoCallModelState];
  [protoCallModelState2 setAmbiguityState:supportsUnambiguousMultiPartyState2 ^ 1];

  supportsHolding2 = [modelCopy supportsHolding];
  protoCallModelState3 = [(CSDMessagingRelayMessage *)self protoCallModelState];
  [protoCallModelState3 setSwappable:supportsHolding2];

  supportsGrouping2 = [modelCopy supportsGrouping];
  protoCallModelState4 = [(CSDMessagingRelayMessage *)self protoCallModelState];
  [protoCallModelState4 setMergeable:supportsGrouping2];

  supportsHolding3 = [modelCopy supportsHolding];
  protoCallModelState5 = [(CSDMessagingRelayMessage *)self protoCallModelState];
  [protoCallModelState5 setHoldAllowed:supportsHolding3];

  supportsAddCall2 = [modelCopy supportsAddCall];
  protoCallModelState6 = [(CSDMessagingRelayMessage *)self protoCallModelState];
  [protoCallModelState6 setAddCallAllowed:supportsAddCall2];

  supportsUngrouping2 = [modelCopy supportsUngrouping];
  protoCallModelState7 = [(CSDMessagingRelayMessage *)self protoCallModelState];
  [protoCallModelState7 setTakingCallsPrivateAllowed:supportsUngrouping2];

  protoCallModelState8 = [(CSDMessagingRelayMessage *)self protoCallModelState];
  [protoCallModelState8 setHardPauseAvailable:1];

  supportsUnambiguousMultiPartyState3 = [modelCopy supportsUnambiguousMultiPartyState];
  protoCallModelState9 = [(CSDMessagingRelayMessage *)self protoCallModelState];
  [protoCallModelState9 setEndAndAnswerAllowed:supportsUnambiguousMultiPartyState3];

  v37 = +[TUCallCenter sharedInstance];
  isHoldAndAnswerAllowed = [v37 isHoldAndAnswerAllowed];
  protoCallModelState10 = [(CSDMessagingRelayMessage *)self protoCallModelState];
  [protoCallModelState10 setHoldAndAnswerAllowed:isHoldAndAnswerAllowed];

  supportsSendingToVoicemail2 = [modelCopy supportsSendingToVoicemail];
  protoCallModelState11 = [(CSDMessagingRelayMessage *)self protoCallModelState];
  [protoCallModelState11 setSendToVoicemailAllowed:supportsSendingToVoicemail2];
}

- (void)addCall:(id)call
{
  callCopy = call;
  v5 = [[CSDMessagingCall alloc] initWithCall:callCopy];

  [(CSDMessagingRelayMessage *)self addProtoCall:v5];
}

- (void)setTuHandle:(id)handle
{
  handleCopy = handle;
  value = [handleCopy value];
  [(CSDMessagingRelayMessage *)self setDestinationID:value];

  v6 = [CSDMessagingHandle handleWithTUHandle:handleCopy];

  [(CSDMessagingRelayMessage *)self setHandle:v6];
}

- (TUHandle)tuHandle
{
  handle = [(CSDMessagingRelayMessage *)self handle];
  tuHandle = [handle tuHandle];

  if (!tuHandle)
  {
    destinationID = [(CSDMessagingRelayMessage *)self destinationID];
    if (destinationID)
    {
      tuHandle = [TUHandle normalizedHandleWithDestinationID:destinationID];
    }

    else
    {
      tuHandle = 0;
    }
  }

  return tuHandle;
}

- (NSArray)tuProviders
{
  providers = [(CSDMessagingRelayMessage *)self providers];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [providers count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  providers2 = [(CSDMessagingRelayMessage *)self providers];
  v6 = [providers2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(providers2);
        }

        provider = [*(*(&v13 + 1) + 8 * i) provider];
        [v4 addObject:provider];
      }

      v7 = [providers2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (void)setTuProviders:(id)providers
{
  providersCopy = providers;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [providersCopy count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = providersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [CSDMessagingCallProvider alloc];
        v13 = [(CSDMessagingCallProvider *)v12 initWithProvider:v11, v14];
        [v5 addObject:v13];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(CSDMessagingRelayMessage *)self setProviders:v5];
}

- (void)setTuProvider:(id)provider
{
  providerCopy = provider;
  if (providerCopy)
  {
    v4 = [[CSDMessagingCallProvider alloc] initWithProvider:providerCopy];
    [(CSDMessagingRelayMessage *)self setProtoProvider:v4];
    [(CSDMessagingRelayMessage *)self setService:[TUCallProviderManager serviceForProvider:providerCopy video:[(CSDMessagingRelayMessage *)self isVideo]]];
  }

  else
  {
    [(CSDMessagingRelayMessage *)self setProtoProvider:0];
  }
}

- (BOOL)isVideo
{
  v6 = 0;
  if ([(CSDMessagingRelayMessage *)self hasProtoVideo])
  {

    return [(CSDMessagingRelayMessage *)self protoVideo];
  }

  else
  {
    v3 = objc_alloc_init(TUCallProviderManager);
    v4 = [v3 providerWithService:-[CSDMessagingRelayMessage service](self video:{"service"), &v6}];

    return v6 & 1;
  }
}

- (TUCallDisplayContext)displayContext
{
  protoDisplayContext = [(CSDMessagingRelayMessage *)self protoDisplayContext];
  displayContext = [protoDisplayContext displayContext];

  return displayContext;
}

- (void)setDisplayContext:(id)context
{
  if (context)
  {
    contextCopy = context;
    v5 = [[CSDMessagingCallDisplayContext alloc] initWithCallDisplayContext:contextCopy];
  }

  else
  {
    v5 = 0;
  }

  [(CSDMessagingRelayMessage *)self setProtoDisplayContext:v5];
}

- (IDSDestination)endpointIDSDestination
{
  endpointIDSDestinationURIs = [(CSDMessagingRelayMessage *)self endpointIDSDestinationURIs];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [endpointIDSDestinationURIs count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  endpointIDSDestinationURIs2 = [(CSDMessagingRelayMessage *)self endpointIDSDestinationURIs];
  v6 = [endpointIDSDestinationURIs2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(endpointIDSDestinationURIs2);
        }

        v10 = [IDSDestination destinationWithURI:*(*(&v13 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [endpointIDSDestinationURIs2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = [IDSDestination destinationWithDestinations:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setEndpointIDSDestination:(id)destination
{
  destinationURIs = [destination destinationURIs];
  allObjects = [destinationURIs allObjects];
  v5 = [allObjects mutableCopy];
  [(CSDMessagingRelayMessage *)self setEndpointIDSDestinationURIs:v5];
}

- (NSUUID)localSenderIdentityUUID
{
  localSenderIdentityUUIDString = [(CSDMessagingRelayMessage *)self localSenderIdentityUUIDString];
  if (localSenderIdentityUUIDString)
  {
    v4 = [NSUUID alloc];
    localSenderIdentityUUIDString2 = [(CSDMessagingRelayMessage *)self localSenderIdentityUUIDString];
    v6 = [v4 initWithUUIDString:localSenderIdentityUUIDString2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setLocalSenderIdentityUUID:(id)d
{
  uUIDString = [d UUIDString];
  [(CSDMessagingRelayMessage *)self setLocalSenderIdentityUUIDString:uUIDString];
}

- (NSUUID)localSenderIdentityAccountUUID
{
  localSenderIdentityAccountUUIDString = [(CSDMessagingRelayMessage *)self localSenderIdentityAccountUUIDString];
  if (localSenderIdentityAccountUUIDString)
  {
    v4 = [NSUUID alloc];
    localSenderIdentityAccountUUIDString2 = [(CSDMessagingRelayMessage *)self localSenderIdentityAccountUUIDString];
    v6 = [v4 initWithUUIDString:localSenderIdentityAccountUUIDString2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setLocalSenderIdentityAccountUUID:(id)d
{
  uUIDString = [d UUIDString];
  [(CSDMessagingRelayMessage *)self setLocalSenderIdentityAccountUUIDString:uUIDString];
}

- (NSSet)remoteParticipantTUHandles
{
  remoteParticipantHandles = [(CSDMessagingRelayMessage *)self remoteParticipantHandles];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteParticipantHandles count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  remoteParticipantHandles2 = [(CSDMessagingRelayMessage *)self remoteParticipantHandles];
  v6 = [remoteParticipantHandles2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(remoteParticipantHandles2);
        }

        tuHandle = [*(*(&v13 + 1) + 8 * i) tuHandle];
        if (tuHandle)
        {
          [v4 addObject:tuHandle];
        }
      }

      v7 = [remoteParticipantHandles2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (void)setRemoteParticipantTUHandles:(id)handles
{
  handlesCopy = handles;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [handlesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(handlesCopy);
        }

        v9 = [CSDMessagingHandle handleWithTUHandle:*(*(&v10 + 1) + 8 * v8)];
        if (v9)
        {
          [(CSDMessagingRelayMessage *)self addRemoteParticipantHandles:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [handlesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setPriority:(int64_t)priority
{
  if (self->_protoPriority != priority)
  {
    [(CSDMessagingRelayMessage *)self setProtoPriority:?];
  }
}

- (void)setHasType:(BOOL)type
{
  v3 = 0x4000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NoAction"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"IncomingCall"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"DialCall"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CallDialed"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"AnswerCall"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"CallAnsweredElsewhere"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"CallDisconnected"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"PlayDTMFToneForKey"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"CallConnected"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"DisconnectCall"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"PullRelayingCalls"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"HoldCall"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"UnholdCall"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"GroupCall"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"UngroupCall"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"ResetWantsHoldMusic"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"SwapCalls"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"UpdateCallModel"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"DeviceUnavailable"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"EndActiveAndAnswer"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"EndHeldAndAnswer"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"DisconnectCurrentCall"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"DisconnectAllCalls"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"ResetState"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"HardPauseDigitsAvailability"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"SendHardPauseDigits"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"UpdateRemoteCallState"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"SuppressRingtone"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"RequestCallContext"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"CallStartedConnecting"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"PushHostedCalls"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"PullHostedCalls"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"PushRelayingCalls"])
  {
    v4 = 32;
  }

  else if ([typeCopy isEqualToString:@"UpdateCallContext"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"NeedsManualInCallSoundsChange"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"InvitationSent"])
  {
    v4 = 35;
  }

  else if ([typeCopy isEqualToString:@"HoldActiveAndAnswer"])
  {
    v4 = 36;
  }

  else if ([typeCopy isEqualToString:@"UpdateCallDisplayContext"])
  {
    v4 = 37;
  }

  else if ([typeCopy isEqualToString:@"SetUplinkMuted"])
  {
    v4 = 38;
  }

  else if ([typeCopy isEqualToString:@"UpdateRemoteUplinkMuted"])
  {
    v4 = 39;
  }

  else if ([typeCopy isEqualToString:@"UpdateSystemVolume"])
  {
    v4 = 40;
  }

  else if ([typeCopy isEqualToString:@"UpdateSupportsTTYWithVoice"])
  {
    v4 = 41;
  }

  else if ([typeCopy isEqualToString:@"SetTTYType"])
  {
    v4 = 42;
  }

  else if ([typeCopy isEqualToString:@"RequestAction"])
  {
    v4 = 43;
  }

  else if ([typeCopy isEqualToString:@"UpdateRoutes"])
  {
    v4 = 44;
  }

  else if ([typeCopy isEqualToString:@"PickRoute"])
  {
    v4 = 45;
  }

  else if ([typeCopy isEqualToString:@"DowngradeToAudio"])
  {
    v4 = 46;
  }

  else if ([typeCopy isEqualToString:@"UpdateFailureExpected"])
  {
    v4 = 47;
  }

  else if ([typeCopy isEqualToString:@"UpdateSupportsEmergencyFallback"])
  {
    v4 = 48;
  }

  else if ([typeCopy isEqualToString:@"Conversation"])
  {
    v4 = 49;
  }

  else if ([typeCopy isEqualToString:@"JoinConversation"])
  {
    v4 = 50;
  }

  else if ([typeCopy isEqualToString:@"BuzzMember"])
  {
    v4 = 51;
  }

  else if ([typeCopy isEqualToString:@"AddMemberAndOtherHandle"])
  {
    v4 = 52;
  }

  else if ([typeCopy isEqualToString:@"Prominence"])
  {
    v4 = 53;
  }

  else if ([typeCopy isEqualToString:@"UpdateConversations"])
  {
    v4 = 54;
  }

  else if ([typeCopy isEqualToString:@"UpdateSupportsDTMFUpdates"])
  {
    v4 = 55;
  }

  else if ([typeCopy isEqualToString:@"ReceivedDTMFUpdate"])
  {
    v4 = 56;
  }

  else if ([typeCopy isEqualToString:@"ScreeningChanged"])
  {
    v4 = 57;
  }

  else if ([typeCopy isEqualToString:@"CaptionResult"])
  {
    v4 = 58;
  }

  else if ([typeCopy isEqualToString:@"ReceptionistStateChanged"])
  {
    v4 = 59;
  }

  else if ([typeCopy isEqualToString:@"LastReceptionistMessageChanged"])
  {
    v4 = 60;
  }

  else if ([typeCopy isEqualToString:@"SmartHoldingSessionChanged"])
  {
    v4 = 61;
  }

  else if ([typeCopy isEqualToString:@"StartReceptionistReply"])
  {
    v4 = 62;
  }

  else if ([typeCopy isEqualToString:@"ReceptionistCustomReply"])
  {
    v4 = 63;
  }

  else if ([typeCopy isEqualToString:@"AnnouncementHasFinishedChanged"])
  {
    v4 = 64;
  }

  else if ([typeCopy isEqualToString:@"ReceptionistSessionChanged"])
  {
    v4 = 65;
  }

  else if ([typeCopy isEqualToString:@"PerformSmartHoldingRequest"])
  {
    v4 = 66;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasProtoService:(BOOL)service
{
  v3 = 128;
  if (!service)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasProtoWantsHoldMusic:(BOOL)music
{
  v3 = 0x800000000;
  if (!music)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasProtoCannotBeAnswered:(BOOL)answered
{
  v3 = 0x100000;
  if (!answered)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasProtoDisconnectedReason:(BOOL)reason
{
  v3 = 8;
  if (!reason)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasProtoVoicemail:(BOOL)voicemail
{
  v3 = 0x400000000;
  if (!voicemail)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)addProtoCall:(id)call
{
  callCopy = call;
  protoCalls = self->_protoCalls;
  v8 = callCopy;
  if (!protoCalls)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_protoCalls;
    self->_protoCalls = v6;

    callCopy = v8;
    protoCalls = self->_protoCalls;
  }

  [(NSMutableArray *)protoCalls addObject:callCopy];
}

- (void)setHasHardPauseState:(BOOL)state
{
  v3 = 4;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (int)receivedMessageType
{
  if ((*(&self->_has + 1) & 4) != 0)
  {
    return self->_receivedMessageType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasReceivedMessageType:(BOOL)type
{
  v3 = 1024;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (int)StringAsReceivedMessageType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NoAction"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"IncomingCall"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"DialCall"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CallDialed"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"AnswerCall"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"CallAnsweredElsewhere"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"CallDisconnected"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"PlayDTMFToneForKey"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"CallConnected"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"DisconnectCall"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"PullRelayingCalls"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"HoldCall"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"UnholdCall"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"GroupCall"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"UngroupCall"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"ResetWantsHoldMusic"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"SwapCalls"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"UpdateCallModel"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"DeviceUnavailable"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"EndActiveAndAnswer"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"EndHeldAndAnswer"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"DisconnectCurrentCall"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"DisconnectAllCalls"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"ResetState"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"HardPauseDigitsAvailability"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"SendHardPauseDigits"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"UpdateRemoteCallState"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"SuppressRingtone"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"RequestCallContext"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"CallStartedConnecting"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"PushHostedCalls"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"PullHostedCalls"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"PushRelayingCalls"])
  {
    v4 = 32;
  }

  else if ([typeCopy isEqualToString:@"UpdateCallContext"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"NeedsManualInCallSoundsChange"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"InvitationSent"])
  {
    v4 = 35;
  }

  else if ([typeCopy isEqualToString:@"HoldActiveAndAnswer"])
  {
    v4 = 36;
  }

  else if ([typeCopy isEqualToString:@"UpdateCallDisplayContext"])
  {
    v4 = 37;
  }

  else if ([typeCopy isEqualToString:@"SetUplinkMuted"])
  {
    v4 = 38;
  }

  else if ([typeCopy isEqualToString:@"UpdateRemoteUplinkMuted"])
  {
    v4 = 39;
  }

  else if ([typeCopy isEqualToString:@"UpdateSystemVolume"])
  {
    v4 = 40;
  }

  else if ([typeCopy isEqualToString:@"UpdateSupportsTTYWithVoice"])
  {
    v4 = 41;
  }

  else if ([typeCopy isEqualToString:@"SetTTYType"])
  {
    v4 = 42;
  }

  else if ([typeCopy isEqualToString:@"RequestAction"])
  {
    v4 = 43;
  }

  else if ([typeCopy isEqualToString:@"UpdateRoutes"])
  {
    v4 = 44;
  }

  else if ([typeCopy isEqualToString:@"PickRoute"])
  {
    v4 = 45;
  }

  else if ([typeCopy isEqualToString:@"DowngradeToAudio"])
  {
    v4 = 46;
  }

  else if ([typeCopy isEqualToString:@"UpdateFailureExpected"])
  {
    v4 = 47;
  }

  else if ([typeCopy isEqualToString:@"UpdateSupportsEmergencyFallback"])
  {
    v4 = 48;
  }

  else if ([typeCopy isEqualToString:@"Conversation"])
  {
    v4 = 49;
  }

  else if ([typeCopy isEqualToString:@"JoinConversation"])
  {
    v4 = 50;
  }

  else if ([typeCopy isEqualToString:@"BuzzMember"])
  {
    v4 = 51;
  }

  else if ([typeCopy isEqualToString:@"AddMemberAndOtherHandle"])
  {
    v4 = 52;
  }

  else if ([typeCopy isEqualToString:@"Prominence"])
  {
    v4 = 53;
  }

  else if ([typeCopy isEqualToString:@"UpdateConversations"])
  {
    v4 = 54;
  }

  else if ([typeCopy isEqualToString:@"UpdateSupportsDTMFUpdates"])
  {
    v4 = 55;
  }

  else if ([typeCopy isEqualToString:@"ReceivedDTMFUpdate"])
  {
    v4 = 56;
  }

  else if ([typeCopy isEqualToString:@"ScreeningChanged"])
  {
    v4 = 57;
  }

  else if ([typeCopy isEqualToString:@"CaptionResult"])
  {
    v4 = 58;
  }

  else if ([typeCopy isEqualToString:@"ReceptionistStateChanged"])
  {
    v4 = 59;
  }

  else if ([typeCopy isEqualToString:@"LastReceptionistMessageChanged"])
  {
    v4 = 60;
  }

  else if ([typeCopy isEqualToString:@"SmartHoldingSessionChanged"])
  {
    v4 = 61;
  }

  else if ([typeCopy isEqualToString:@"StartReceptionistReply"])
  {
    v4 = 62;
  }

  else if ([typeCopy isEqualToString:@"ReceptionistCustomReply"])
  {
    v4 = 63;
  }

  else if ([typeCopy isEqualToString:@"AnnouncementHasFinishedChanged"])
  {
    v4 = 64;
  }

  else if ([typeCopy isEqualToString:@"ReceptionistSessionChanged"])
  {
    v4 = 65;
  }

  else if ([typeCopy isEqualToString:@"PerformSmartHoldingRequest"])
  {
    v4 = 66;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasProtoProtocolVersion:(BOOL)version
{
  v3 = 64;
  if (!version)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasProtoShouldSuppressRingtone:(BOOL)ringtone
{
  v3 = 0x10000000;
  if (!ringtone)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasMessageSendTime:(BOOL)time
{
  v3 = 2;
  if (!time)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasProtoNeedsManualInCallSounds:(BOOL)sounds
{
  v3 = 0x2000000;
  if (!sounds)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasProtoCannotRelayAudioOrVideoOnPairedDevice:(BOOL)device
{
  v3 = 0x200000;
  if (!device)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasProtoExpectedEndpointOnMessagingDevice:(BOOL)device
{
  v3 = 0x800000;
  if (!device)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasProtoSoundRegion:(BOOL)region
{
  v3 = 256;
  if (!region)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasProtoEmergency:(BOOL)emergency
{
  v3 = 0x400000;
  if (!emergency)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)addOtherUniqueProxyIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  otherUniqueProxyIdentifiers = self->_otherUniqueProxyIdentifiers;
  v8 = identifiersCopy;
  if (!otherUniqueProxyIdentifiers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_otherUniqueProxyIdentifiers;
    self->_otherUniqueProxyIdentifiers = v6;

    identifiersCopy = v8;
    otherUniqueProxyIdentifiers = self->_otherUniqueProxyIdentifiers;
  }

  [(NSMutableArray *)otherUniqueProxyIdentifiers addObject:identifiersCopy];
}

- (void)setHasProtoSOS:(BOOL)s
{
  v3 = 0x8000000;
  if (!s)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)addProviders:(id)providers
{
  providersCopy = providers;
  providers = self->_providers;
  v8 = providersCopy;
  if (!providers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_providers;
    self->_providers = v6;

    providersCopy = v8;
    providers = self->_providers;
  }

  [(NSMutableArray *)providers addObject:providersCopy];
}

- (void)setHasProtoVideo:(BOOL)video
{
  v3 = 0x200000000;
  if (!video)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasProtoUplinkMuted:(BOOL)muted
{
  v3 = &_mh_execute_header;
  if (!muted)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasProtoRemoteUplinkMuted:(BOOL)muted
{
  v3 = 0x4000000;
  if (!muted)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasSystemVolume:(BOOL)volume
{
  v3 = 0x2000;
  if (!volume)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)addRemoteParticipantHandles:(id)handles
{
  handlesCopy = handles;
  remoteParticipantHandles = self->_remoteParticipantHandles;
  v8 = handlesCopy;
  if (!remoteParticipantHandles)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_remoteParticipantHandles;
    self->_remoteParticipantHandles = v6;

    handlesCopy = v8;
    remoteParticipantHandles = self->_remoteParticipantHandles;
  }

  [(NSMutableArray *)remoteParticipantHandles addObject:handlesCopy];
}

- (void)setHasProtoTTYType:(BOOL)type
{
  v3 = 512;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasProtoSupportsTTYWithVoice:(BOOL)voice
{
  v3 = 0x80000000;
  if (!voice)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (int)requestActionType
{
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    return self->_requestActionType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRequestActionType:(BOOL)type
{
  v3 = 4096;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (int)StringAsRequestActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NoAction"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"IncomingCall"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"DialCall"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CallDialed"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"AnswerCall"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"CallAnsweredElsewhere"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"CallDisconnected"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"PlayDTMFToneForKey"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"CallConnected"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"DisconnectCall"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"PullRelayingCalls"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"HoldCall"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"UnholdCall"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"GroupCall"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"UngroupCall"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"ResetWantsHoldMusic"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"SwapCalls"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"UpdateCallModel"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"DeviceUnavailable"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"EndActiveAndAnswer"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"EndHeldAndAnswer"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"DisconnectCurrentCall"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"DisconnectAllCalls"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"ResetState"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"HardPauseDigitsAvailability"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"SendHardPauseDigits"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"UpdateRemoteCallState"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"SuppressRingtone"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"RequestCallContext"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"CallStartedConnecting"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"PushHostedCalls"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"PullHostedCalls"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"PushRelayingCalls"])
  {
    v4 = 32;
  }

  else if ([typeCopy isEqualToString:@"UpdateCallContext"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"NeedsManualInCallSoundsChange"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"InvitationSent"])
  {
    v4 = 35;
  }

  else if ([typeCopy isEqualToString:@"HoldActiveAndAnswer"])
  {
    v4 = 36;
  }

  else if ([typeCopy isEqualToString:@"UpdateCallDisplayContext"])
  {
    v4 = 37;
  }

  else if ([typeCopy isEqualToString:@"SetUplinkMuted"])
  {
    v4 = 38;
  }

  else if ([typeCopy isEqualToString:@"UpdateRemoteUplinkMuted"])
  {
    v4 = 39;
  }

  else if ([typeCopy isEqualToString:@"UpdateSystemVolume"])
  {
    v4 = 40;
  }

  else if ([typeCopy isEqualToString:@"UpdateSupportsTTYWithVoice"])
  {
    v4 = 41;
  }

  else if ([typeCopy isEqualToString:@"SetTTYType"])
  {
    v4 = 42;
  }

  else if ([typeCopy isEqualToString:@"RequestAction"])
  {
    v4 = 43;
  }

  else if ([typeCopy isEqualToString:@"UpdateRoutes"])
  {
    v4 = 44;
  }

  else if ([typeCopy isEqualToString:@"PickRoute"])
  {
    v4 = 45;
  }

  else if ([typeCopy isEqualToString:@"DowngradeToAudio"])
  {
    v4 = 46;
  }

  else if ([typeCopy isEqualToString:@"UpdateFailureExpected"])
  {
    v4 = 47;
  }

  else if ([typeCopy isEqualToString:@"UpdateSupportsEmergencyFallback"])
  {
    v4 = 48;
  }

  else if ([typeCopy isEqualToString:@"Conversation"])
  {
    v4 = 49;
  }

  else if ([typeCopy isEqualToString:@"JoinConversation"])
  {
    v4 = 50;
  }

  else if ([typeCopy isEqualToString:@"BuzzMember"])
  {
    v4 = 51;
  }

  else if ([typeCopy isEqualToString:@"AddMemberAndOtherHandle"])
  {
    v4 = 52;
  }

  else if ([typeCopy isEqualToString:@"Prominence"])
  {
    v4 = 53;
  }

  else if ([typeCopy isEqualToString:@"UpdateConversations"])
  {
    v4 = 54;
  }

  else if ([typeCopy isEqualToString:@"UpdateSupportsDTMFUpdates"])
  {
    v4 = 55;
  }

  else if ([typeCopy isEqualToString:@"ReceivedDTMFUpdate"])
  {
    v4 = 56;
  }

  else if ([typeCopy isEqualToString:@"ScreeningChanged"])
  {
    v4 = 57;
  }

  else if ([typeCopy isEqualToString:@"CaptionResult"])
  {
    v4 = 58;
  }

  else if ([typeCopy isEqualToString:@"ReceptionistStateChanged"])
  {
    v4 = 59;
  }

  else if ([typeCopy isEqualToString:@"LastReceptionistMessageChanged"])
  {
    v4 = 60;
  }

  else if ([typeCopy isEqualToString:@"SmartHoldingSessionChanged"])
  {
    v4 = 61;
  }

  else if ([typeCopy isEqualToString:@"StartReceptionistReply"])
  {
    v4 = 62;
  }

  else if ([typeCopy isEqualToString:@"ReceptionistCustomReply"])
  {
    v4 = 63;
  }

  else if ([typeCopy isEqualToString:@"AnnouncementHasFinishedChanged"])
  {
    v4 = 64;
  }

  else if ([typeCopy isEqualToString:@"ReceptionistSessionChanged"])
  {
    v4 = 65;
  }

  else if ([typeCopy isEqualToString:@"PerformSmartHoldingRequest"])
  {
    v4 = 66;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addRoutes:(id)routes
{
  routesCopy = routes;
  routes = self->_routes;
  v8 = routesCopy;
  if (!routes)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_routes;
    self->_routes = v6;

    routesCopy = v8;
    routes = self->_routes;
  }

  [(NSMutableArray *)routes addObject:routesCopy];
}

- (void)addEndpointIDSDestinationURIs:(id)is
{
  isCopy = is;
  endpointIDSDestinationURIs = self->_endpointIDSDestinationURIs;
  v8 = isCopy;
  if (!endpointIDSDestinationURIs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_endpointIDSDestinationURIs;
    self->_endpointIDSDestinationURIs = v6;

    isCopy = v8;
    endpointIDSDestinationURIs = self->_endpointIDSDestinationURIs;
  }

  [(NSMutableArray *)endpointIDSDestinationURIs addObject:isCopy];
}

- (void)setHasProtoPriority:(BOOL)priority
{
  v3 = 32;
  if (!priority)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasProtoOriginatingUIType:(BOOL)type
{
  v3 = 16;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasProtoFailureExpected:(BOOL)expected
{
  v3 = 0x1000000;
  if (!expected)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasProtoSupportsEmergencyFallback:(BOOL)fallback
{
  v3 = 0x40000000;
  if (!fallback)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)addConversations:(id)conversations
{
  conversationsCopy = conversations;
  conversations = self->_conversations;
  v8 = conversationsCopy;
  if (!conversations)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_conversations;
    self->_conversations = v6;

    conversationsCopy = v8;
    conversations = self->_conversations;
  }

  [(NSMutableArray *)conversations addObject:conversationsCopy];
}

- (void)addConversationMembers:(id)members
{
  membersCopy = members;
  conversationMembers = self->_conversationMembers;
  v8 = membersCopy;
  if (!conversationMembers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_conversationMembers;
    self->_conversationMembers = v6;

    membersCopy = v8;
    conversationMembers = self->_conversationMembers;
  }

  [(NSMutableArray *)conversationMembers addObject:membersCopy];
}

- (void)addHandlesToInvite:(id)invite
{
  inviteCopy = invite;
  handlesToInvites = self->_handlesToInvites;
  v8 = inviteCopy;
  if (!handlesToInvites)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_handlesToInvites;
    self->_handlesToInvites = v6;

    inviteCopy = v8;
    handlesToInvites = self->_handlesToInvites;
  }

  [(NSMutableArray *)handlesToInvites addObject:inviteCopy];
}

- (void)addProminenceEntry:(id)entry
{
  entryCopy = entry;
  prominenceEntrys = self->_prominenceEntrys;
  v8 = entryCopy;
  if (!prominenceEntrys)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_prominenceEntrys;
    self->_prominenceEntrys = v6;

    entryCopy = v8;
    prominenceEntrys = self->_prominenceEntrys;
  }

  [(NSMutableArray *)prominenceEntrys addObject:entryCopy];
}

- (void)setHasProtoSupportsDTMFUpdates:(BOOL)updates
{
  v3 = 0x20000000;
  if (!updates)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasAutomaticCallActivationDisabled:(BOOL)disabled
{
  v3 = 0x10000;
  if (!disabled)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasRelayHostCanScreen:(BOOL)screen
{
  v3 = 0x1000000000;
  if (!screen)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasIsScreening:(BOOL)screening
{
  v3 = 0x80000;
  if (!screening)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasReceptionistState:(BOOL)state
{
  v3 = 2048;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasAnnouncementHasFinished:(BOOL)finished
{
  v3 = 0x8000;
  if (!finished)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasIsReceptionistCapable:(BOOL)capable
{
  v3 = 0x40000;
  if (!capable)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasIsLocalUserInHomeCountry:(BOOL)country
{
  v3 = 0x20000;
  if (!country)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_uniqueProxyIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_destinationID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_protoCallModelState)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    protoService = self->_protoService;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x800000000) == 0)
    {
LABEL_13:
      if ((*&has & 0x100000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&has & 0x800000000) == 0)
  {
    goto LABEL_13;
  }

  protoWantsHoldMusic = self->_protoWantsHoldMusic;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_14:
    protoCannotBeAnswered = self->_protoCannotBeAnswered;
    PBDataWriterWriteBOOLField();
  }

LABEL_15:
  if (self->_protoDTMFKey)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 8) != 0)
  {
    protoDisconnectedReason = self->_protoDisconnectedReason;
    PBDataWriterWriteUint32Field();
  }

  if (self->_oBSOLETEConferenceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 4) & 4) != 0)
  {
    protoVoicemail = self->_protoVoicemail;
    PBDataWriterWriteBOOLField();
  }

  if (self->_callerNameFromNetwork)
  {
    PBDataWriterWriteStringField();
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v10 = self->_protoCalls;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v147 objects:v160 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v148;
    do
    {
      v14 = 0;
      do
      {
        if (*v148 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v147 + 1) + 8 * v14);
        PBDataWriterWriteSubmessage();
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v147 objects:v160 count:16];
    }

    while (v12);
  }

  if (self->_hardPauseDigits)
  {
    PBDataWriterWriteStringField();
  }

  v16 = self->_has;
  if ((*&v16 & 4) != 0)
  {
    hardPauseState = self->_hardPauseState;
    PBDataWriterWriteUint32Field();
    v16 = self->_has;
    if ((*&v16 & 0x400) == 0)
    {
LABEL_36:
      if ((*&v16 & 0x40) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_196;
    }
  }

  else if ((*&v16 & 0x400) == 0)
  {
    goto LABEL_36;
  }

  receivedMessageType = self->_receivedMessageType;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((*&v16 & 0x40) == 0)
  {
LABEL_37:
    if ((*&v16 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_196:
  protoProtocolVersion = self->_protoProtocolVersion;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_38:
    protoShouldSuppressRingtone = self->_protoShouldSuppressRingtone;
    PBDataWriterWriteBOOLField();
  }

LABEL_39:
  if (self->_dummyPayload)
  {
    PBDataWriterWriteDataField();
  }

  v18 = self->_has;
  if (*&v18)
  {
    hostCallCreationTime = self->_hostCallCreationTime;
    PBDataWriterWriteDoubleField();
    v18 = self->_has;
    if ((*&v18 & 2) == 0)
    {
LABEL_43:
      if ((*&v18 & 0x2000000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_200;
    }
  }

  else if ((*&v18 & 2) == 0)
  {
    goto LABEL_43;
  }

  messageSendTime = self->_messageSendTime;
  PBDataWriterWriteDoubleField();
  v18 = self->_has;
  if ((*&v18 & 0x2000000) == 0)
  {
LABEL_44:
    if ((*&v18 & 0x200000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_201;
  }

LABEL_200:
  protoNeedsManualInCallSounds = self->_protoNeedsManualInCallSounds;
  PBDataWriterWriteBOOLField();
  v18 = self->_has;
  if ((*&v18 & 0x200000) == 0)
  {
LABEL_45:
    if ((*&v18 & 0x800000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_201:
  protoCannotRelayAudioOrVideoOnPairedDevice = self->_protoCannotRelayAudioOrVideoOnPairedDevice;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_46:
    protoExpectedEndpointOnMessagingDevice = self->_protoExpectedEndpointOnMessagingDevice;
    PBDataWriterWriteBOOLField();
  }

LABEL_47:
  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_protoCallCapabilitiesState)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = self->_has;
  if ((*&v20 & 0x100) != 0)
  {
    protoSoundRegion = self->_protoSoundRegion;
    PBDataWriterWriteUint32Field();
    v20 = self->_has;
  }

  if ((*&v20 & 0x400000) != 0)
  {
    protoEmergency = self->_protoEmergency;
    PBDataWriterWriteBOOLField();
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v23 = self->_otherUniqueProxyIdentifiers;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v143 objects:v159 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v144;
    do
    {
      v27 = 0;
      do
      {
        if (*v144 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v143 + 1) + 8 * v27);
        PBDataWriterWriteStringField();
        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v143 objects:v159 count:16];
    }

    while (v25);
  }

  if (self->_protoCallModel)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_handle)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 3) & 8) != 0)
  {
    protoSOS = self->_protoSOS;
    PBDataWriterWriteBOOLField();
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v30 = self->_providers;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v139 objects:v158 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v140;
    do
    {
      v34 = 0;
      do
      {
        if (*v140 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v139 + 1) + 8 * v34);
        PBDataWriterWriteSubmessage();
        v34 = v34 + 1;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v139 objects:v158 count:16];
    }

    while (v32);
  }

  if (self->_protoDisplayContext)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_inviteData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_protoProvider)
  {
    PBDataWriterWriteSubmessage();
  }

  v36 = self->_has;
  if ((*&v36 & 0x200000000) != 0)
  {
    protoVideo = self->_protoVideo;
    PBDataWriterWriteBOOLField();
    v36 = self->_has;
    if ((*&v36 & 0x100000000) == 0)
    {
LABEL_83:
      if ((*&v36 & 0x4000000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_205;
    }
  }

  else if ((*&v36 & 0x100000000) == 0)
  {
    goto LABEL_83;
  }

  protoUplinkMuted = self->_protoUplinkMuted;
  PBDataWriterWriteBOOLField();
  v36 = self->_has;
  if ((*&v36 & 0x4000000) == 0)
  {
LABEL_84:
    if ((*&v36 & 0x2000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_205:
  protoRemoteUplinkMuted = self->_protoRemoteUplinkMuted;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_85:
    systemVolume = self->_systemVolume;
    PBDataWriterWriteFloatField();
  }

LABEL_86:
  if (self->_localSenderIdentityUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v38 = self->_remoteParticipantHandles;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v135 objects:v157 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v136;
    do
    {
      v42 = 0;
      do
      {
        if (*v136 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v135 + 1) + 8 * v42);
        PBDataWriterWriteSubmessage();
        v42 = v42 + 1;
      }

      while (v40 != v42);
      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v135 objects:v157 count:16];
    }

    while (v40);
  }

  if (self->_localSenderIdentityAccountUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  v44 = self->_has;
  if ((*&v44 & 0x200) != 0)
  {
    protoTTYType = self->_protoTTYType;
    PBDataWriterWriteUint32Field();
    v44 = self->_has;
    if ((*&v44 & 0x80000000) == 0)
    {
LABEL_99:
      if ((*&v44 & 0x1000) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_100;
    }
  }

  else if ((*&v44 & 0x80000000) == 0)
  {
    goto LABEL_99;
  }

  protoSupportsTTYWithVoice = self->_protoSupportsTTYWithVoice;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_100:
    requestActionType = self->_requestActionType;
    PBDataWriterWriteInt32Field();
  }

LABEL_101:
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v46 = self->_routes;
  v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v131 objects:v156 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v132;
    do
    {
      v50 = 0;
      do
      {
        if (*v132 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v131 + 1) + 8 * v50);
        PBDataWriterWriteSubmessage();
        v50 = v50 + 1;
      }

      while (v48 != v50);
      v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v131 objects:v156 count:16];
    }

    while (v48);
  }

  if (self->_route)
  {
    PBDataWriterWriteSubmessage();
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v52 = self->_endpointIDSDestinationURIs;
  v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v127 objects:v155 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v128;
    do
    {
      v56 = 0;
      do
      {
        if (*v128 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v127 + 1) + 8 * v56);
        PBDataWriterWriteStringField();
        v56 = v56 + 1;
      }

      while (v54 != v56);
      v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v127 objects:v155 count:16];
    }

    while (v54);
  }

  if (self->_isoCountryCode)
  {
    PBDataWriterWriteStringField();
  }

  v58 = self->_has;
  if ((*&v58 & 0x20) != 0)
  {
    protoPriority = self->_protoPriority;
    PBDataWriterWriteUint32Field();
    v58 = self->_has;
    if ((*&v58 & 0x10) == 0)
    {
LABEL_121:
      if ((*&v58 & 0x1000000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_212;
    }
  }

  else if ((*&v58 & 0x10) == 0)
  {
    goto LABEL_121;
  }

  protoOriginatingUIType = self->_protoOriginatingUIType;
  PBDataWriterWriteUint32Field();
  v58 = self->_has;
  if ((*&v58 & 0x1000000) == 0)
  {
LABEL_122:
    if ((*&v58 & 0x40000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_123;
  }

LABEL_212:
  protoFailureExpected = self->_protoFailureExpected;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40000000) != 0)
  {
LABEL_123:
    protoSupportsEmergencyFallback = self->_protoSupportsEmergencyFallback;
    PBDataWriterWriteBOOLField();
  }

LABEL_124:
  if (self->_groupUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v60 = self->_conversations;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v123 objects:v154 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v124;
    do
    {
      v64 = 0;
      do
      {
        if (*v124 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v123 + 1) + 8 * v64);
        PBDataWriterWriteSubmessage();
        v64 = v64 + 1;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v123 objects:v154 count:16];
    }

    while (v62);
  }

  if (self->_joinConversationRequestURLString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v66 = self->_conversationMembers;
  v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v119 objects:v153 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v120;
    do
    {
      v70 = 0;
      do
      {
        if (*v120 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = *(*(&v119 + 1) + 8 * v70);
        PBDataWriterWriteSubmessage();
        v70 = v70 + 1;
      }

      while (v68 != v70);
      v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v119 objects:v153 count:16];
    }

    while (v68);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v72 = self->_handlesToInvites;
  v73 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v115 objects:v152 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v116;
    do
    {
      v76 = 0;
      do
      {
        if (*v116 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = *(*(&v115 + 1) + 8 * v76);
        PBDataWriterWriteSubmessage();
        v76 = v76 + 1;
      }

      while (v74 != v76);
      v74 = [(NSMutableArray *)v72 countByEnumeratingWithState:&v115 objects:v152 count:16];
    }

    while (v74);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v78 = self->_prominenceEntrys;
  v79 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v111 objects:v151 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v112;
    do
    {
      v82 = 0;
      do
      {
        if (*v112 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = *(*(&v111 + 1) + 8 * v82);
        PBDataWriterWriteSubmessage();
        v82 = v82 + 1;
      }

      while (v80 != v82);
      v80 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v111 objects:v151 count:16];
    }

    while (v80);
  }

  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    protoSupportsDTMFUpdates = self->_protoSupportsDTMFUpdates;
    PBDataWriterWriteBOOLField();
  }

  if (self->_dtmfUpdateDigits)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_image)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_senderIDSIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v85 = self->_has;
  if ((*&v85 & 0x10000) != 0)
  {
    automaticCallActivationDisabled = self->_automaticCallActivationDisabled;
    PBDataWriterWriteBOOLField();
    v85 = self->_has;
    if ((*&v85 & 0x1000000000) == 0)
    {
LABEL_168:
      if ((*&v85 & 0x80000) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_169;
    }
  }

  else if ((*&v85 & 0x1000000000) == 0)
  {
    goto LABEL_168;
  }

  relayHostCanScreen = self->_relayHostCanScreen;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_169:
    isScreening = self->_isScreening;
    PBDataWriterWriteBOOLField();
  }

LABEL_170:
  if (self->_captionsResult)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    receptionistState = self->_receptionistState;
    PBDataWriterWriteInt32Field();
  }

  if (self->_lastReceptionistMessage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smartHoldingSession)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_customReply)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    announcementHasFinished = self->_announcementHasFinished;
    PBDataWriterWriteBOOLField();
  }

  if (self->_receptionistSession)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_smartHoldingRequest)
  {
    PBDataWriterWriteSubmessage();
  }

  v89 = self->_has;
  if ((*&v89 & 0x40000) != 0)
  {
    isReceptionistCapable = self->_isReceptionistCapable;
    PBDataWriterWriteBOOLField();
    v89 = self->_has;
  }

  if ((*&v89 & 0x20000) != 0)
  {
    isLocalUserInHomeCountry = self->_isLocalUserInHomeCountry;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    toCopy[107] = self->_type;
    *(toCopy + 58) |= 0x4000uLL;
  }

  v57 = toCopy;
  if (self->_uniqueProxyIdentifier)
  {
    [toCopy setUniqueProxyIdentifier:?];
    toCopy = v57;
  }

  if (self->_destinationID)
  {
    [v57 setDestinationID:?];
    toCopy = v57;
  }

  if (self->_sourceIdentifier)
  {
    [v57 setSourceIdentifier:?];
    toCopy = v57;
  }

  if (self->_protoCallModelState)
  {
    [v57 setProtoCallModelState:?];
    toCopy = v57;
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    toCopy[78] = self->_protoService;
    *(toCopy + 58) |= 0x80uLL;
    has = self->_has;
    if ((*&has & 0x800000000) == 0)
    {
LABEL_13:
      if ((*&has & 0x100000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&has & 0x800000000) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 460) = self->_protoWantsHoldMusic;
  *(toCopy + 58) |= 0x800000000uLL;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_14:
    *(toCopy + 445) = self->_protoCannotBeAnswered;
    *(toCopy + 58) |= 0x100000uLL;
  }

LABEL_15:
  if (self->_protoDTMFKey)
  {
    [v57 setProtoDTMFKey:?];
    toCopy = v57;
  }

  if ((*&self->_has & 8) != 0)
  {
    toCopy[68] = self->_protoDisconnectedReason;
    *(toCopy + 58) |= 8uLL;
  }

  if (self->_oBSOLETEConferenceIdentifier)
  {
    [v57 setOBSOLETEConferenceIdentifier:?];
    toCopy = v57;
  }

  if ((*(&self->_has + 4) & 4) != 0)
  {
    *(toCopy + 459) = self->_protoVoicemail;
    *(toCopy + 58) |= 0x400000000uLL;
  }

  if (self->_callerNameFromNetwork)
  {
    [v57 setCallerNameFromNetwork:?];
  }

  if ([(CSDMessagingRelayMessage *)self protoCallsCount])
  {
    [v57 clearProtoCalls];
    protoCallsCount = [(CSDMessagingRelayMessage *)self protoCallsCount];
    if (protoCallsCount)
    {
      v7 = protoCallsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(CSDMessagingRelayMessage *)self protoCallAtIndex:i];
        [v57 addProtoCall:v9];
      }
    }
  }

  if (self->_hardPauseDigits)
  {
    [v57 setHardPauseDigits:?];
  }

  v10 = self->_has;
  v11 = v57;
  if ((*&v10 & 4) != 0)
  {
    v57[36] = self->_hardPauseState;
    *(v57 + 58) |= 4uLL;
    v10 = self->_has;
    if ((*&v10 & 0x400) == 0)
    {
LABEL_33:
      if ((*&v10 & 0x40) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_168;
    }
  }

  else if ((*&v10 & 0x400) == 0)
  {
    goto LABEL_33;
  }

  v57[84] = self->_receivedMessageType;
  *(v57 + 58) |= 0x400uLL;
  v10 = self->_has;
  if ((*&v10 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v10 & 0x10000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_168:
  v57[74] = self->_protoProtocolVersion;
  *(v57 + 58) |= 0x40uLL;
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_35:
    *(v57 + 453) = self->_protoShouldSuppressRingtone;
    *(v57 + 58) |= 0x10000000uLL;
  }

LABEL_36:
  if (self->_dummyPayload)
  {
    [v57 setDummyPayload:?];
    v11 = v57;
  }

  v12 = self->_has;
  if (*&v12)
  {
    v11[1] = *&self->_hostCallCreationTime;
    v11[58] |= 1uLL;
    v12 = self->_has;
    if ((*&v12 & 2) == 0)
    {
LABEL_40:
      if ((*&v12 & 0x2000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_172;
    }
  }

  else if ((*&v12 & 2) == 0)
  {
    goto LABEL_40;
  }

  v11[2] = *&self->_messageSendTime;
  v11[58] |= 2uLL;
  v12 = self->_has;
  if ((*&v12 & 0x2000000) == 0)
  {
LABEL_41:
    if ((*&v12 & 0x200000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_173;
  }

LABEL_172:
  *(v11 + 450) = self->_protoNeedsManualInCallSounds;
  v11[58] |= 0x2000000uLL;
  v12 = self->_has;
  if ((*&v12 & 0x200000) == 0)
  {
LABEL_42:
    if ((*&v12 & 0x800000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_173:
  *(v11 + 446) = self->_protoCannotRelayAudioOrVideoOnPairedDevice;
  v11[58] |= 0x200000uLL;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_43:
    *(v11 + 448) = self->_protoExpectedEndpointOnMessagingDevice;
    v11[58] |= 0x800000uLL;
  }

LABEL_44:
  if (self->_contactIdentifier)
  {
    [v57 setContactIdentifier:?];
    v11 = v57;
  }

  if (self->_protoCallCapabilitiesState)
  {
    [v57 setProtoCallCapabilitiesState:?];
    v11 = v57;
  }

  v13 = self->_has;
  if ((*&v13 & 0x100) != 0)
  {
    *(v11 + 79) = self->_protoSoundRegion;
    v11[58] |= 0x100uLL;
    v13 = self->_has;
  }

  if ((*&v13 & 0x400000) != 0)
  {
    *(v11 + 447) = self->_protoEmergency;
    v11[58] |= 0x400000uLL;
  }

  if ([(CSDMessagingRelayMessage *)self otherUniqueProxyIdentifiersCount])
  {
    [v57 clearOtherUniqueProxyIdentifiers];
    otherUniqueProxyIdentifiersCount = [(CSDMessagingRelayMessage *)self otherUniqueProxyIdentifiersCount];
    if (otherUniqueProxyIdentifiersCount)
    {
      v15 = otherUniqueProxyIdentifiersCount;
      for (j = 0; j != v15; ++j)
      {
        v17 = [(CSDMessagingRelayMessage *)self otherUniqueProxyIdentifiersAtIndex:j];
        [v57 addOtherUniqueProxyIdentifiers:v17];
      }
    }
  }

  if (self->_protoCallModel)
  {
    [v57 setProtoCallModel:?];
  }

  if (self->_handle)
  {
    [v57 setHandle:?];
  }

  if ((*(&self->_has + 3) & 8) != 0)
  {
    *(v57 + 452) = self->_protoSOS;
    *(v57 + 58) |= 0x8000000uLL;
  }

  if ([(CSDMessagingRelayMessage *)self providersCount])
  {
    [v57 clearProviders];
    providersCount = [(CSDMessagingRelayMessage *)self providersCount];
    if (providersCount)
    {
      v19 = providersCount;
      for (k = 0; k != v19; ++k)
      {
        v21 = [(CSDMessagingRelayMessage *)self providersAtIndex:k];
        [v57 addProviders:v21];
      }
    }
  }

  if (self->_protoDisplayContext)
  {
    [v57 setProtoDisplayContext:?];
  }

  v22 = v57;
  if (self->_inviteData)
  {
    [v57 setInviteData:?];
    v22 = v57;
  }

  if (self->_protoProvider)
  {
    [v57 setProtoProvider:?];
    v22 = v57;
  }

  v23 = self->_has;
  if ((*&v23 & 0x200000000) != 0)
  {
    v22[458] = self->_protoVideo;
    *(v22 + 58) |= 0x200000000uLL;
    v23 = self->_has;
    if ((*&v23 & 0x100000000) == 0)
    {
LABEL_74:
      if ((*&v23 & 0x4000000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_177;
    }
  }

  else if ((*&v23 & 0x100000000) == 0)
  {
    goto LABEL_74;
  }

  v22[457] = self->_protoUplinkMuted;
  *(v22 + 58) |= &_mh_execute_header;
  v23 = self->_has;
  if ((*&v23 & 0x4000000) == 0)
  {
LABEL_75:
    if ((*&v23 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

LABEL_177:
  v22[451] = self->_protoRemoteUplinkMuted;
  *(v22 + 58) |= 0x4000000uLL;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_76:
    *(v22 + 106) = LODWORD(self->_systemVolume);
    *(v22 + 58) |= 0x2000uLL;
  }

LABEL_77:
  if (self->_localSenderIdentityUUIDString)
  {
    [v57 setLocalSenderIdentityUUIDString:?];
  }

  if ([(CSDMessagingRelayMessage *)self remoteParticipantHandlesCount])
  {
    [v57 clearRemoteParticipantHandles];
    remoteParticipantHandlesCount = [(CSDMessagingRelayMessage *)self remoteParticipantHandlesCount];
    if (remoteParticipantHandlesCount)
    {
      v25 = remoteParticipantHandlesCount;
      for (m = 0; m != v25; ++m)
      {
        v27 = [(CSDMessagingRelayMessage *)self remoteParticipantHandlesAtIndex:m];
        [v57 addRemoteParticipantHandles:v27];
      }
    }
  }

  if (self->_localSenderIdentityAccountUUIDString)
  {
    [v57 setLocalSenderIdentityAccountUUIDString:?];
  }

  v28 = self->_has;
  if ((*&v28 & 0x200) == 0)
  {
    if ((*&v28 & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

LABEL_180:
    *(v57 + 456) = self->_protoSupportsTTYWithVoice;
    *(v57 + 58) |= 0x80000000uLL;
    if ((*&self->_has & 0x1000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  v57[80] = self->_protoTTYType;
  *(v57 + 58) |= 0x200uLL;
  v28 = self->_has;
  if ((*&v28 & 0x80000000) != 0)
  {
    goto LABEL_180;
  }

LABEL_87:
  if ((*&v28 & 0x1000) != 0)
  {
LABEL_88:
    v57[92] = self->_requestActionType;
    *(v57 + 58) |= 0x1000uLL;
  }

LABEL_89:
  if ([(CSDMessagingRelayMessage *)self routesCount])
  {
    [v57 clearRoutes];
    routesCount = [(CSDMessagingRelayMessage *)self routesCount];
    if (routesCount)
    {
      v30 = routesCount;
      for (n = 0; n != v30; ++n)
      {
        v32 = [(CSDMessagingRelayMessage *)self routesAtIndex:n];
        [v57 addRoutes:v32];
      }
    }
  }

  if (self->_route)
  {
    [v57 setRoute:?];
  }

  if ([(CSDMessagingRelayMessage *)self endpointIDSDestinationURIsCount])
  {
    [v57 clearEndpointIDSDestinationURIs];
    endpointIDSDestinationURIsCount = [(CSDMessagingRelayMessage *)self endpointIDSDestinationURIsCount];
    if (endpointIDSDestinationURIsCount)
    {
      v34 = endpointIDSDestinationURIsCount;
      for (ii = 0; ii != v34; ++ii)
      {
        v36 = [(CSDMessagingRelayMessage *)self endpointIDSDestinationURIsAtIndex:ii];
        [v57 addEndpointIDSDestinationURIs:v36];
      }
    }
  }

  if (self->_isoCountryCode)
  {
    [v57 setIsoCountryCode:?];
  }

  v37 = self->_has;
  if ((*&v37 & 0x20) != 0)
  {
    v57[73] = self->_protoPriority;
    *(v57 + 58) |= 0x20uLL;
    v37 = self->_has;
    if ((*&v37 & 0x10) == 0)
    {
LABEL_103:
      if ((*&v37 & 0x1000000) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_184;
    }
  }

  else if ((*&v37 & 0x10) == 0)
  {
    goto LABEL_103;
  }

  v57[72] = self->_protoOriginatingUIType;
  *(v57 + 58) |= 0x10uLL;
  v37 = self->_has;
  if ((*&v37 & 0x1000000) == 0)
  {
LABEL_104:
    if ((*&v37 & 0x40000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

LABEL_184:
  *(v57 + 449) = self->_protoFailureExpected;
  *(v57 + 58) |= 0x1000000uLL;
  if ((*&self->_has & 0x40000000) != 0)
  {
LABEL_105:
    *(v57 + 455) = self->_protoSupportsEmergencyFallback;
    *(v57 + 58) |= 0x40000000uLL;
  }

LABEL_106:
  if (self->_groupUUIDString)
  {
    [v57 setGroupUUIDString:?];
  }

  if ([(CSDMessagingRelayMessage *)self conversationsCount])
  {
    [v57 clearConversations];
    conversationsCount = [(CSDMessagingRelayMessage *)self conversationsCount];
    if (conversationsCount)
    {
      v39 = conversationsCount;
      for (jj = 0; jj != v39; ++jj)
      {
        v41 = [(CSDMessagingRelayMessage *)self conversationsAtIndex:jj];
        [v57 addConversations:v41];
      }
    }
  }

  if (self->_joinConversationRequestURLString)
  {
    [v57 setJoinConversationRequestURLString:?];
  }

  if (self->_conversationUUIDString)
  {
    [v57 setConversationUUIDString:?];
  }

  if ([(CSDMessagingRelayMessage *)self conversationMembersCount])
  {
    [v57 clearConversationMembers];
    conversationMembersCount = [(CSDMessagingRelayMessage *)self conversationMembersCount];
    if (conversationMembersCount)
    {
      v43 = conversationMembersCount;
      for (kk = 0; kk != v43; ++kk)
      {
        v45 = [(CSDMessagingRelayMessage *)self conversationMembersAtIndex:kk];
        [v57 addConversationMembers:v45];
      }
    }
  }

  if ([(CSDMessagingRelayMessage *)self handlesToInvitesCount])
  {
    [v57 clearHandlesToInvites];
    handlesToInvitesCount = [(CSDMessagingRelayMessage *)self handlesToInvitesCount];
    if (handlesToInvitesCount)
    {
      v47 = handlesToInvitesCount;
      for (mm = 0; mm != v47; ++mm)
      {
        v49 = [(CSDMessagingRelayMessage *)self handlesToInviteAtIndex:mm];
        [v57 addHandlesToInvite:v49];
      }
    }
  }

  if ([(CSDMessagingRelayMessage *)self prominenceEntrysCount])
  {
    [v57 clearProminenceEntrys];
    prominenceEntrysCount = [(CSDMessagingRelayMessage *)self prominenceEntrysCount];
    if (prominenceEntrysCount)
    {
      v51 = prominenceEntrysCount;
      for (nn = 0; nn != v51; ++nn)
      {
        v53 = [(CSDMessagingRelayMessage *)self prominenceEntryAtIndex:nn];
        [v57 addProminenceEntry:v53];
      }
    }
  }

  v54 = v57;
  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    *(v57 + 454) = self->_protoSupportsDTMFUpdates;
    *(v57 + 58) |= 0x20000000uLL;
  }

  if (self->_dtmfUpdateDigits)
  {
    [v57 setDtmfUpdateDigits:?];
    v54 = v57;
  }

  if (self->_image)
  {
    [v57 setImage:?];
    v54 = v57;
  }

  if (self->_senderIDSIdentifier)
  {
    [v57 setSenderIDSIdentifier:?];
    v54 = v57;
  }

  v55 = self->_has;
  if ((*&v55 & 0x10000) != 0)
  {
    v54[441] = self->_automaticCallActivationDisabled;
    *(v54 + 58) |= 0x10000uLL;
    v55 = self->_has;
    if ((*&v55 & 0x1000000000) == 0)
    {
LABEL_138:
      if ((*&v55 & 0x80000) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_139;
    }
  }

  else if ((*&v55 & 0x1000000000) == 0)
  {
    goto LABEL_138;
  }

  v54[461] = self->_relayHostCanScreen;
  *(v54 + 58) |= 0x1000000000uLL;
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_139:
    v54[444] = self->_isScreening;
    *(v54 + 58) |= 0x80000uLL;
  }

LABEL_140:
  if (self->_captionsResult)
  {
    [v57 setCaptionsResult:?];
    v54 = v57;
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    *(v54 + 88) = self->_receptionistState;
    *(v54 + 58) |= 0x800uLL;
  }

  if (self->_lastReceptionistMessage)
  {
    [v57 setLastReceptionistMessage:?];
    v54 = v57;
  }

  if (self->_smartHoldingSession)
  {
    [v57 setSmartHoldingSession:?];
    v54 = v57;
  }

  if (self->_customReply)
  {
    [v57 setCustomReply:?];
    v54 = v57;
  }

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    v54[440] = self->_announcementHasFinished;
    *(v54 + 58) |= 0x8000uLL;
  }

  if (self->_receptionistSession)
  {
    [v57 setReceptionistSession:?];
    v54 = v57;
  }

  if (self->_smartHoldingRequest)
  {
    [v57 setSmartHoldingRequest:?];
    v54 = v57;
  }

  v56 = self->_has;
  if ((*&v56 & 0x40000) != 0)
  {
    v54[443] = self->_isReceptionistCapable;
    *(v54 + 58) |= 0x40000uLL;
    v56 = self->_has;
  }

  if ((*&v56 & 0x20000) != 0)
  {
    v54[442] = self->_isLocalUserInHomeCountry;
    *(v54 + 58) |= 0x20000uLL;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v5[107] = self->_type;
    *(v5 + 58) |= 0x4000uLL;
  }

  v7 = [(NSString *)self->_uniqueProxyIdentifier copyWithZone:zone];
  v8 = v6[54];
  v6[54] = v7;

  v9 = [(NSString *)self->_destinationID copyWithZone:zone];
  v10 = v6[10];
  v6[10] = v9;

  v11 = [(NSString *)self->_sourceIdentifier copyWithZone:zone];
  v12 = v6[52];
  v6[52] = v11;

  v13 = [(CSDMessagingCallModelState *)self->_protoCallModelState copyWithZone:zone];
  v14 = v6[31];
  v6[31] = v13;

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    *(v6 + 78) = self->_protoService;
    v6[58] |= 0x80uLL;
    has = self->_has;
    if ((*&has & 0x800000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x100000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&has & 0x800000000) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 460) = self->_protoWantsHoldMusic;
  v6[58] |= 0x800000000uLL;
  if ((*&self->_has & 0x100000) != 0)
  {
LABEL_6:
    *(v6 + 445) = self->_protoCannotBeAnswered;
    v6[58] |= 0x100000uLL;
  }

LABEL_7:
  v16 = [(NSData *)self->_protoDTMFKey copyWithZone:zone];
  v17 = v6[33];
  v6[33] = v16;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 68) = self->_protoDisconnectedReason;
    v6[58] |= 8uLL;
  }

  v18 = [(NSString *)self->_oBSOLETEConferenceIdentifier copyWithZone:zone];
  v19 = v6[26];
  v6[26] = v18;

  if ((*(&self->_has + 4) & 4) != 0)
  {
    *(v6 + 459) = self->_protoVoicemail;
    v6[58] |= 0x400000000uLL;
  }

  v20 = [(NSString *)self->_callerNameFromNetwork copyWithZone:zone];
  v21 = v6[3];
  v6[3] = v20;

  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v22 = self->_protoCalls;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v178 objects:v191 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v179;
    do
    {
      v26 = 0;
      do
      {
        if (*v179 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v178 + 1) + 8 * v26) copyWithZone:zone];
        [v6 addProtoCall:v27];

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v178 objects:v191 count:16];
    }

    while (v24);
  }

  v28 = [(NSString *)self->_hardPauseDigits copyWithZone:zone];
  v29 = v6[17];
  v6[17] = v28;

  v30 = self->_has;
  if ((*&v30 & 4) != 0)
  {
    *(v6 + 36) = self->_hardPauseState;
    v6[58] |= 4uLL;
    v30 = self->_has;
    if ((*&v30 & 0x400) == 0)
    {
LABEL_20:
      if ((*&v30 & 0x40) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_132;
    }
  }

  else if ((*&v30 & 0x400) == 0)
  {
    goto LABEL_20;
  }

  *(v6 + 84) = self->_receivedMessageType;
  v6[58] |= 0x400uLL;
  v30 = self->_has;
  if ((*&v30 & 0x40) == 0)
  {
LABEL_21:
    if ((*&v30 & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_132:
  *(v6 + 74) = self->_protoProtocolVersion;
  v6[58] |= 0x40uLL;
  if ((*&self->_has & 0x10000000) != 0)
  {
LABEL_22:
    *(v6 + 453) = self->_protoShouldSuppressRingtone;
    v6[58] |= 0x10000000uLL;
  }

LABEL_23:
  v31 = [(NSData *)self->_dummyPayload copyWithZone:zone];
  v32 = v6[12];
  v6[12] = v31;

  v33 = self->_has;
  if (*&v33)
  {
    v6[1] = *&self->_hostCallCreationTime;
    v6[58] |= 1uLL;
    v33 = self->_has;
    if ((*&v33 & 2) == 0)
    {
LABEL_25:
      if ((*&v33 & 0x2000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_136;
    }
  }

  else if ((*&v33 & 2) == 0)
  {
    goto LABEL_25;
  }

  v6[2] = *&self->_messageSendTime;
  v6[58] |= 2uLL;
  v33 = self->_has;
  if ((*&v33 & 0x2000000) == 0)
  {
LABEL_26:
    if ((*&v33 & 0x200000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_137;
  }

LABEL_136:
  *(v6 + 450) = self->_protoNeedsManualInCallSounds;
  v6[58] |= 0x2000000uLL;
  v33 = self->_has;
  if ((*&v33 & 0x200000) == 0)
  {
LABEL_27:
    if ((*&v33 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_137:
  *(v6 + 446) = self->_protoCannotRelayAudioOrVideoOnPairedDevice;
  v6[58] |= 0x200000uLL;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_28:
    *(v6 + 448) = self->_protoExpectedEndpointOnMessagingDevice;
    v6[58] |= 0x800000uLL;
  }

LABEL_29:
  v34 = [(NSString *)self->_contactIdentifier copyWithZone:zone];
  v35 = v6[5];
  v6[5] = v34;

  v36 = [(CSDMessagingCallCapabilitiesState *)self->_protoCallCapabilitiesState copyWithZone:zone];
  v37 = v6[29];
  v6[29] = v36;

  v38 = self->_has;
  if ((*&v38 & 0x100) != 0)
  {
    *(v6 + 79) = self->_protoSoundRegion;
    v6[58] |= 0x100uLL;
    v38 = self->_has;
  }

  if ((*&v38 & 0x400000) != 0)
  {
    *(v6 + 447) = self->_protoEmergency;
    v6[58] |= 0x400000uLL;
  }

  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v39 = self->_otherUniqueProxyIdentifiers;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v174 objects:v190 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v175;
    do
    {
      v43 = 0;
      do
      {
        if (*v175 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v174 + 1) + 8 * v43) copyWithZone:zone];
        [v6 addOtherUniqueProxyIdentifiers:v44];

        v43 = v43 + 1;
      }

      while (v41 != v43);
      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v174 objects:v190 count:16];
    }

    while (v41);
  }

  v45 = [(CSDMessagingCallModel *)self->_protoCallModel copyWithZone:zone];
  v46 = v6[30];
  v6[30] = v45;

  v47 = [(CSDMessagingHandle *)self->_handle copyWithZone:zone];
  v48 = v6[15];
  v6[15] = v47;

  if ((*(&self->_has + 3) & 8) != 0)
  {
    *(v6 + 452) = self->_protoSOS;
    v6[58] |= 0x8000000uLL;
  }

  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v49 = self->_providers;
  v50 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v170 objects:v189 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v171;
    do
    {
      v53 = 0;
      do
      {
        if (*v171 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = [*(*(&v170 + 1) + 8 * v53) copyWithZone:zone];
        [v6 addProviders:v54];

        v53 = v53 + 1;
      }

      while (v51 != v53);
      v51 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v170 objects:v189 count:16];
    }

    while (v51);
  }

  v55 = [(CSDMessagingCallDisplayContext *)self->_protoDisplayContext copyWithZone:zone];
  v56 = v6[35];
  v6[35] = v55;

  v57 = [(CSDMessagingAVConferenceInviteData *)self->_inviteData copyWithZone:zone];
  v58 = v6[20];
  v6[20] = v57;

  v59 = [(CSDMessagingCallProvider *)self->_protoProvider copyWithZone:zone];
  v60 = v6[38];
  v6[38] = v59;

  v61 = self->_has;
  if ((*&v61 & 0x200000000) != 0)
  {
    *(v6 + 458) = self->_protoVideo;
    v6[58] |= 0x200000000uLL;
    v61 = self->_has;
    if ((*&v61 & 0x100000000) == 0)
    {
LABEL_51:
      if ((*&v61 & 0x4000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_141;
    }
  }

  else if ((*&v61 & 0x100000000) == 0)
  {
    goto LABEL_51;
  }

  *(v6 + 457) = self->_protoUplinkMuted;
  v6[58] |= &_mh_execute_header;
  v61 = self->_has;
  if ((*&v61 & 0x4000000) == 0)
  {
LABEL_52:
    if ((*&v61 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_141:
  *(v6 + 451) = self->_protoRemoteUplinkMuted;
  v6[58] |= 0x4000000uLL;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_53:
    *(v6 + 106) = LODWORD(self->_systemVolume);
    v6[58] |= 0x2000uLL;
  }

LABEL_54:
  v62 = [(NSString *)self->_localSenderIdentityUUIDString copyWithZone:zone];
  v63 = v6[25];
  v6[25] = v62;

  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v64 = self->_remoteParticipantHandles;
  v65 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v166 objects:v188 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v167;
    do
    {
      v68 = 0;
      do
      {
        if (*v167 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = [*(*(&v166 + 1) + 8 * v68) copyWithZone:zone];
        [v6 addRemoteParticipantHandles:v69];

        v68 = v68 + 1;
      }

      while (v66 != v68);
      v66 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v166 objects:v188 count:16];
    }

    while (v66);
  }

  v70 = [(NSString *)self->_localSenderIdentityAccountUUIDString copyWithZone:zone];
  v71 = v6[24];
  v6[24] = v70;

  v72 = self->_has;
  if ((*&v72 & 0x200) != 0)
  {
    *(v6 + 80) = self->_protoTTYType;
    v6[58] |= 0x200uLL;
    v72 = self->_has;
    if ((*&v72 & 0x80000000) == 0)
    {
LABEL_63:
      if ((*&v72 & 0x1000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }
  }

  else if ((*&v72 & 0x80000000) == 0)
  {
    goto LABEL_63;
  }

  *(v6 + 456) = self->_protoSupportsTTYWithVoice;
  v6[58] |= 0x80000000uLL;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_64:
    *(v6 + 92) = self->_requestActionType;
    v6[58] |= 0x1000uLL;
  }

LABEL_65:
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v73 = self->_routes;
  v74 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v162 objects:v187 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v163;
    do
    {
      v77 = 0;
      do
      {
        if (*v163 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v78 = [*(*(&v162 + 1) + 8 * v77) copyWithZone:zone];
        [v6 addRoutes:v78];

        v77 = v77 + 1;
      }

      while (v75 != v77);
      v75 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v162 objects:v187 count:16];
    }

    while (v75);
  }

  v79 = [(CSDMessagingRoute *)self->_route copyWithZone:zone];
  v80 = v6[47];
  v6[47] = v79;

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v81 = self->_endpointIDSDestinationURIs;
  v82 = [(NSMutableArray *)v81 countByEnumeratingWithState:&v158 objects:v186 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v159;
    do
    {
      v85 = 0;
      do
      {
        if (*v159 != v84)
        {
          objc_enumerationMutation(v81);
        }

        v86 = [*(*(&v158 + 1) + 8 * v85) copyWithZone:zone];
        [v6 addEndpointIDSDestinationURIs:v86];

        v85 = v85 + 1;
      }

      while (v83 != v85);
      v83 = [(NSMutableArray *)v81 countByEnumeratingWithState:&v158 objects:v186 count:16];
    }

    while (v83);
  }

  v87 = [(NSString *)self->_isoCountryCode copyWithZone:zone];
  v88 = v6[21];
  v6[21] = v87;

  v89 = self->_has;
  if ((*&v89 & 0x20) != 0)
  {
    *(v6 + 73) = self->_protoPriority;
    v6[58] |= 0x20uLL;
    v89 = self->_has;
    if ((*&v89 & 0x10) == 0)
    {
LABEL_81:
      if ((*&v89 & 0x1000000) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_148;
    }
  }

  else if ((*&v89 & 0x10) == 0)
  {
    goto LABEL_81;
  }

  *(v6 + 72) = self->_protoOriginatingUIType;
  v6[58] |= 0x10uLL;
  v89 = self->_has;
  if ((*&v89 & 0x1000000) == 0)
  {
LABEL_82:
    if ((*&v89 & 0x40000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_148:
  *(v6 + 449) = self->_protoFailureExpected;
  v6[58] |= 0x1000000uLL;
  if ((*&self->_has & 0x40000000) != 0)
  {
LABEL_83:
    *(v6 + 455) = self->_protoSupportsEmergencyFallback;
    v6[58] |= 0x40000000uLL;
  }

LABEL_84:
  v90 = [(NSString *)self->_groupUUIDString copyWithZone:zone];
  v91 = v6[14];
  v6[14] = v90;

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v92 = self->_conversations;
  v93 = [(NSMutableArray *)v92 countByEnumeratingWithState:&v154 objects:v185 count:16];
  if (v93)
  {
    v94 = v93;
    v95 = *v155;
    do
    {
      v96 = 0;
      do
      {
        if (*v155 != v95)
        {
          objc_enumerationMutation(v92);
        }

        v97 = [*(*(&v154 + 1) + 8 * v96) copyWithZone:zone];
        [v6 addConversations:v97];

        v96 = v96 + 1;
      }

      while (v94 != v96);
      v94 = [(NSMutableArray *)v92 countByEnumeratingWithState:&v154 objects:v185 count:16];
    }

    while (v94);
  }

  v98 = [(NSString *)self->_joinConversationRequestURLString copyWithZone:zone];
  v99 = v6[22];
  v6[22] = v98;

  v100 = [(NSString *)self->_conversationUUIDString copyWithZone:zone];
  v101 = v6[7];
  v6[7] = v100;

  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v102 = self->_conversationMembers;
  v103 = [(NSMutableArray *)v102 countByEnumeratingWithState:&v150 objects:v184 count:16];
  if (v103)
  {
    v104 = v103;
    v105 = *v151;
    do
    {
      v106 = 0;
      do
      {
        if (*v151 != v105)
        {
          objc_enumerationMutation(v102);
        }

        v107 = [*(*(&v150 + 1) + 8 * v106) copyWithZone:zone];
        [v6 addConversationMembers:v107];

        v106 = v106 + 1;
      }

      while (v104 != v106);
      v104 = [(NSMutableArray *)v102 countByEnumeratingWithState:&v150 objects:v184 count:16];
    }

    while (v104);
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v108 = self->_handlesToInvites;
  v109 = [(NSMutableArray *)v108 countByEnumeratingWithState:&v146 objects:v183 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v147;
    do
    {
      v112 = 0;
      do
      {
        if (*v147 != v111)
        {
          objc_enumerationMutation(v108);
        }

        v113 = [*(*(&v146 + 1) + 8 * v112) copyWithZone:zone];
        [v6 addHandlesToInvite:v113];

        v112 = v112 + 1;
      }

      while (v110 != v112);
      v110 = [(NSMutableArray *)v108 countByEnumeratingWithState:&v146 objects:v183 count:16];
    }

    while (v110);
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v114 = self->_prominenceEntrys;
  v115 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v142 objects:v182 count:16];
  if (v115)
  {
    v116 = v115;
    v117 = *v143;
    do
    {
      v118 = 0;
      do
      {
        if (*v143 != v117)
        {
          objc_enumerationMutation(v114);
        }

        v119 = [*(*(&v142 + 1) + 8 * v118) copyWithZone:{zone, v142}];
        [v6 addProminenceEntry:v119];

        v118 = v118 + 1;
      }

      while (v116 != v118);
      v116 = [(NSMutableArray *)v114 countByEnumeratingWithState:&v142 objects:v182 count:16];
    }

    while (v116);
  }

  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    *(v6 + 454) = self->_protoSupportsDTMFUpdates;
    v6[58] |= 0x20000000uLL;
  }

  v142 = [(NSString *)self->_dtmfUpdateDigits copyWithZone:zone, v142];
  v121 = v6[11];
  v6[11] = v142;

  v122 = [(NSData *)self->_image copyWithZone:zone];
  v123 = v6[19];
  v6[19] = v122;

  v124 = [(NSString *)self->_senderIDSIdentifier copyWithZone:zone];
  v125 = v6[49];
  v6[49] = v124;

  v126 = self->_has;
  if ((*&v126 & 0x10000) != 0)
  {
    *(v6 + 441) = self->_automaticCallActivationDisabled;
    v6[58] |= 0x10000uLL;
    v126 = self->_has;
    if ((*&v126 & 0x1000000000) == 0)
    {
LABEL_116:
      if ((*&v126 & 0x80000) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_117;
    }
  }

  else if ((*&v126 & 0x1000000000) == 0)
  {
    goto LABEL_116;
  }

  *(v6 + 461) = self->_relayHostCanScreen;
  v6[58] |= 0x1000000000uLL;
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_117:
    *(v6 + 444) = self->_isScreening;
    v6[58] |= 0x80000uLL;
  }

LABEL_118:
  v127 = [(CSDMessagingCaptionsResult *)self->_captionsResult copyWithZone:zone];
  v128 = v6[4];
  v6[4] = v127;

  if ((*(&self->_has + 1) & 8) != 0)
  {
    *(v6 + 88) = self->_receptionistState;
    v6[58] |= 0x800uLL;
  }

  v129 = [(NSString *)self->_lastReceptionistMessage copyWithZone:zone];
  v130 = v6[23];
  v6[23] = v129;

  v131 = [(CSDMessagingSmartHoldingSession *)self->_smartHoldingSession copyWithZone:zone];
  v132 = v6[51];
  v6[51] = v131;

  v133 = [(NSString *)self->_customReply copyWithZone:zone];
  v134 = v6[9];
  v6[9] = v133;

  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    *(v6 + 440) = self->_announcementHasFinished;
    v6[58] |= 0x8000uLL;
  }

  v135 = [(CSDMessagingReceptionistSession *)self->_receptionistSession copyWithZone:zone];
  v136 = v6[43];
  v6[43] = v135;

  v137 = [(CSDMessagingSmartHoldingRequest *)self->_smartHoldingRequest copyWithZone:zone];
  v138 = v6[50];
  v6[50] = v137;

  v139 = self->_has;
  if ((*&v139 & 0x40000) != 0)
  {
    *(v6 + 443) = self->_isReceptionistCapable;
    v6[58] |= 0x40000uLL;
    v139 = self->_has;
  }

  if ((*&v139 & 0x20000) != 0)
  {
    *(v6 + 442) = self->_isLocalUserInHomeCountry;
    v6[58] |= 0x20000uLL;
  }

  v140 = v6;

  return v140;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_59;
  }

  v5 = *(equalCopy + 58);
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    if ((v5 & 0x4000) == 0 || self->_type != *(equalCopy + 107))
    {
      goto LABEL_59;
    }
  }

  else if ((v5 & 0x4000) != 0)
  {
    goto LABEL_59;
  }

  uniqueProxyIdentifier = self->_uniqueProxyIdentifier;
  if (uniqueProxyIdentifier | *(equalCopy + 54) && ![(NSString *)uniqueProxyIdentifier isEqual:?])
  {
    goto LABEL_59;
  }

  destinationID = self->_destinationID;
  if (destinationID | *(equalCopy + 10))
  {
    if (![(NSString *)destinationID isEqual:?])
    {
      goto LABEL_59;
    }
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier | *(equalCopy + 52))
  {
    if (![(NSString *)sourceIdentifier isEqual:?])
    {
      goto LABEL_59;
    }
  }

  protoCallModelState = self->_protoCallModelState;
  if (protoCallModelState | *(equalCopy + 31))
  {
    if (![(CSDMessagingCallModelState *)protoCallModelState isEqual:?])
    {
      goto LABEL_59;
    }
  }

  has = self->_has;
  v11 = *(equalCopy + 58);
  if ((*&has & 0x80) != 0)
  {
    if ((v11 & 0x80) == 0 || self->_protoService != *(equalCopy + 78))
    {
      goto LABEL_59;
    }
  }

  else if ((v11 & 0x80) != 0)
  {
    goto LABEL_59;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v11 & 0x800000000) == 0)
    {
      goto LABEL_59;
    }

    v14 = *(equalCopy + 460);
    if (self->_protoWantsHoldMusic)
    {
      if ((*(equalCopy + 460) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 460))
    {
      goto LABEL_59;
    }
  }

  else if ((v11 & 0x800000000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_59;
    }

    v15 = *(equalCopy + 445);
    if (self->_protoCannotBeAnswered)
    {
      if ((*(equalCopy + 445) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 445))
    {
      goto LABEL_59;
    }
  }

  else if ((v11 & 0x100000) != 0)
  {
    goto LABEL_59;
  }

  protoDTMFKey = self->_protoDTMFKey;
  if (protoDTMFKey | *(equalCopy + 33))
  {
    if (![(NSData *)protoDTMFKey isEqual:?])
    {
      goto LABEL_59;
    }

    has = self->_has;
  }

  v13 = *(equalCopy + 58);
  if ((*&has & 8) != 0)
  {
    if ((v13 & 8) == 0 || self->_protoDisconnectedReason != *(equalCopy + 68))
    {
      goto LABEL_59;
    }
  }

  else if ((v13 & 8) != 0)
  {
    goto LABEL_59;
  }

  oBSOLETEConferenceIdentifier = self->_oBSOLETEConferenceIdentifier;
  if (oBSOLETEConferenceIdentifier | *(equalCopy + 26))
  {
    if (![(NSString *)oBSOLETEConferenceIdentifier isEqual:?])
    {
      goto LABEL_59;
    }

    has = self->_has;
  }

  v17 = *(equalCopy + 58);
  if ((*&has & 0x400000000) != 0)
  {
    if ((v17 & 0x400000000) == 0)
    {
      goto LABEL_59;
    }

    v25 = *(equalCopy + 459);
    if (self->_protoVoicemail)
    {
      if ((*(equalCopy + 459) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 459))
    {
      goto LABEL_59;
    }
  }

  else if ((v17 & 0x400000000) != 0)
  {
    goto LABEL_59;
  }

  callerNameFromNetwork = self->_callerNameFromNetwork;
  if (callerNameFromNetwork | *(equalCopy + 3) && ![(NSString *)callerNameFromNetwork isEqual:?])
  {
    goto LABEL_59;
  }

  protoCalls = self->_protoCalls;
  if (protoCalls | *(equalCopy + 32))
  {
    if (![(NSMutableArray *)protoCalls isEqual:?])
    {
      goto LABEL_59;
    }
  }

  hardPauseDigits = self->_hardPauseDigits;
  if (hardPauseDigits | *(equalCopy + 17))
  {
    if (![(NSString *)hardPauseDigits isEqual:?])
    {
      goto LABEL_59;
    }
  }

  v21 = self->_has;
  v22 = *(equalCopy + 58);
  if ((*&v21 & 4) != 0)
  {
    if ((v22 & 4) == 0 || self->_hardPauseState != *(equalCopy + 36))
    {
      goto LABEL_59;
    }
  }

  else if ((v22 & 4) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v21 & 0x400) != 0)
  {
    if ((v22 & 0x400) == 0 || self->_receivedMessageType != *(equalCopy + 84))
    {
      goto LABEL_59;
    }
  }

  else if ((v22 & 0x400) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v21 & 0x40) != 0)
  {
    if ((v22 & 0x40) == 0 || self->_protoProtocolVersion != *(equalCopy + 74))
    {
      goto LABEL_59;
    }
  }

  else if ((v22 & 0x40) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v21 & 0x10000000) != 0)
  {
    if ((v22 & 0x10000000) == 0)
    {
      goto LABEL_59;
    }

    v28 = *(equalCopy + 453);
    if (self->_protoShouldSuppressRingtone)
    {
      if ((*(equalCopy + 453) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 453))
    {
      goto LABEL_59;
    }
  }

  else if ((v22 & 0x10000000) != 0)
  {
    goto LABEL_59;
  }

  dummyPayload = self->_dummyPayload;
  if (dummyPayload | *(equalCopy + 12))
  {
    if (![(NSData *)dummyPayload isEqual:?])
    {
      goto LABEL_59;
    }

    v21 = self->_has;
  }

  v27 = *(equalCopy + 58);
  if (*&v21)
  {
    if ((v27 & 1) == 0 || self->_hostCallCreationTime != *(equalCopy + 1))
    {
      goto LABEL_59;
    }
  }

  else if (v27)
  {
    goto LABEL_59;
  }

  if ((*&v21 & 2) != 0)
  {
    if ((v27 & 2) == 0 || self->_messageSendTime != *(equalCopy + 2))
    {
      goto LABEL_59;
    }
  }

  else if ((v27 & 2) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v21 & 0x2000000) != 0)
  {
    if ((v27 & 0x2000000) == 0)
    {
      goto LABEL_59;
    }

    v29 = *(equalCopy + 450);
    if (self->_protoNeedsManualInCallSounds)
    {
      if ((*(equalCopy + 450) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 450))
    {
      goto LABEL_59;
    }
  }

  else if ((v27 & 0x2000000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v21 & 0x200000) != 0)
  {
    if ((v27 & 0x200000) == 0)
    {
      goto LABEL_59;
    }

    v34 = *(equalCopy + 446);
    if (self->_protoCannotRelayAudioOrVideoOnPairedDevice)
    {
      if ((*(equalCopy + 446) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 446))
    {
      goto LABEL_59;
    }
  }

  else if ((v27 & 0x200000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v21 & 0x800000) != 0)
  {
    if ((v27 & 0x800000) == 0)
    {
      goto LABEL_59;
    }

    v35 = *(equalCopy + 448);
    if (self->_protoExpectedEndpointOnMessagingDevice)
    {
      if ((*(equalCopy + 448) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 448))
    {
      goto LABEL_59;
    }
  }

  else if ((v27 & 0x800000) != 0)
  {
    goto LABEL_59;
  }

  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier | *(equalCopy + 5) && ![(NSString *)contactIdentifier isEqual:?])
  {
    goto LABEL_59;
  }

  protoCallCapabilitiesState = self->_protoCallCapabilitiesState;
  if (protoCallCapabilitiesState | *(equalCopy + 29))
  {
    if (![(CSDMessagingCallCapabilitiesState *)protoCallCapabilitiesState isEqual:?])
    {
      goto LABEL_59;
    }
  }

  v32 = self->_has;
  v33 = *(equalCopy + 58);
  if ((*&v32 & 0x100) != 0)
  {
    if ((v33 & 0x100) == 0 || self->_protoSoundRegion != *(equalCopy + 79))
    {
      goto LABEL_59;
    }
  }

  else if ((v33 & 0x100) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v32 & 0x400000) != 0)
  {
    if ((v33 & 0x400000) == 0)
    {
      goto LABEL_59;
    }

    v46 = *(equalCopy + 447);
    if (self->_protoEmergency)
    {
      if ((*(equalCopy + 447) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 447))
    {
      goto LABEL_59;
    }
  }

  else if ((v33 & 0x400000) != 0)
  {
    goto LABEL_59;
  }

  otherUniqueProxyIdentifiers = self->_otherUniqueProxyIdentifiers;
  if (otherUniqueProxyIdentifiers | *(equalCopy + 27) && ![(NSMutableArray *)otherUniqueProxyIdentifiers isEqual:?])
  {
    goto LABEL_59;
  }

  protoCallModel = self->_protoCallModel;
  if (protoCallModel | *(equalCopy + 30))
  {
    if (![(CSDMessagingCallModel *)protoCallModel isEqual:?])
    {
      goto LABEL_59;
    }
  }

  handle = self->_handle;
  if (handle | *(equalCopy + 15))
  {
    if (![(CSDMessagingHandle *)handle isEqual:?])
    {
      goto LABEL_59;
    }
  }

  v39 = *(equalCopy + 58);
  if ((*(&self->_has + 3) & 8) != 0)
  {
    if ((v39 & 0x8000000) == 0)
    {
      goto LABEL_59;
    }

    v47 = *(equalCopy + 452);
    if (self->_protoSOS)
    {
      if ((*(equalCopy + 452) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 452))
    {
      goto LABEL_59;
    }
  }

  else if ((v39 & 0x8000000) != 0)
  {
    goto LABEL_59;
  }

  providers = self->_providers;
  if (providers | *(equalCopy + 41) && ![(NSMutableArray *)providers isEqual:?])
  {
    goto LABEL_59;
  }

  protoDisplayContext = self->_protoDisplayContext;
  if (protoDisplayContext | *(equalCopy + 35))
  {
    if (![(CSDMessagingCallDisplayContext *)protoDisplayContext isEqual:?])
    {
      goto LABEL_59;
    }
  }

  inviteData = self->_inviteData;
  if (inviteData | *(equalCopy + 20))
  {
    if (![(CSDMessagingAVConferenceInviteData *)inviteData isEqual:?])
    {
      goto LABEL_59;
    }
  }

  protoProvider = self->_protoProvider;
  if (protoProvider | *(equalCopy + 38))
  {
    if (![(CSDMessagingCallProvider *)protoProvider isEqual:?])
    {
      goto LABEL_59;
    }
  }

  v44 = self->_has;
  v45 = *(equalCopy + 58);
  if ((*&v44 & 0x200000000) != 0)
  {
    if ((v45 & 0x200000000) == 0)
    {
      goto LABEL_59;
    }

    v48 = *(equalCopy + 458);
    if (self->_protoVideo)
    {
      if ((*(equalCopy + 458) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 458))
    {
      goto LABEL_59;
    }
  }

  else if ((v45 & 0x200000000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v44 & 0x100000000) != 0)
  {
    if ((v45 & 0x100000000) == 0)
    {
      goto LABEL_59;
    }

    v49 = *(equalCopy + 457);
    if (self->_protoUplinkMuted)
    {
      if ((*(equalCopy + 457) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 457))
    {
      goto LABEL_59;
    }
  }

  else if ((v45 & 0x100000000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v44 & 0x4000000) != 0)
  {
    if ((v45 & 0x4000000) == 0)
    {
      goto LABEL_59;
    }

    v50 = *(equalCopy + 451);
    if (self->_protoRemoteUplinkMuted)
    {
      if ((*(equalCopy + 451) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 451))
    {
      goto LABEL_59;
    }
  }

  else if ((v45 & 0x4000000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v44 & 0x2000) != 0)
  {
    if ((v45 & 0x2000) == 0 || self->_systemVolume != *(equalCopy + 106))
    {
      goto LABEL_59;
    }
  }

  else if ((v45 & 0x2000) != 0)
  {
    goto LABEL_59;
  }

  localSenderIdentityUUIDString = self->_localSenderIdentityUUIDString;
  if (localSenderIdentityUUIDString | *(equalCopy + 25) && ![(NSString *)localSenderIdentityUUIDString isEqual:?])
  {
    goto LABEL_59;
  }

  remoteParticipantHandles = self->_remoteParticipantHandles;
  if (remoteParticipantHandles | *(equalCopy + 45))
  {
    if (![(NSMutableArray *)remoteParticipantHandles isEqual:?])
    {
      goto LABEL_59;
    }
  }

  localSenderIdentityAccountUUIDString = self->_localSenderIdentityAccountUUIDString;
  if (localSenderIdentityAccountUUIDString | *(equalCopy + 24))
  {
    if (![(NSString *)localSenderIdentityAccountUUIDString isEqual:?])
    {
      goto LABEL_59;
    }
  }

  v54 = self->_has;
  v55 = *(equalCopy + 58);
  if ((*&v54 & 0x200) != 0)
  {
    if ((v55 & 0x200) == 0 || self->_protoTTYType != *(equalCopy + 80))
    {
      goto LABEL_59;
    }
  }

  else if ((v55 & 0x200) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v54 & 0x80000000) != 0)
  {
    if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    v56 = *(equalCopy + 456);
    if (self->_protoSupportsTTYWithVoice)
    {
      if ((*(equalCopy + 456) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 456))
    {
      goto LABEL_59;
    }
  }

  else if ((v55 & 0x80000000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v54 & 0x1000) != 0)
  {
    if ((v55 & 0x1000) == 0 || self->_requestActionType != *(equalCopy + 92))
    {
      goto LABEL_59;
    }
  }

  else if ((v55 & 0x1000) != 0)
  {
    goto LABEL_59;
  }

  routes = self->_routes;
  if (routes | *(equalCopy + 48) && ![(NSMutableArray *)routes isEqual:?])
  {
    goto LABEL_59;
  }

  route = self->_route;
  if (route | *(equalCopy + 47))
  {
    if (![(CSDMessagingRoute *)route isEqual:?])
    {
      goto LABEL_59;
    }
  }

  endpointIDSDestinationURIs = self->_endpointIDSDestinationURIs;
  if (endpointIDSDestinationURIs | *(equalCopy + 13))
  {
    if (![(NSMutableArray *)endpointIDSDestinationURIs isEqual:?])
    {
      goto LABEL_59;
    }
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode | *(equalCopy + 21))
  {
    if (![(NSString *)isoCountryCode isEqual:?])
    {
      goto LABEL_59;
    }
  }

  v61 = self->_has;
  v62 = *(equalCopy + 58);
  if ((*&v61 & 0x20) != 0)
  {
    if ((v62 & 0x20) == 0 || self->_protoPriority != *(equalCopy + 73))
    {
      goto LABEL_59;
    }
  }

  else if ((v62 & 0x20) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v61 & 0x10) != 0)
  {
    if ((v62 & 0x10) == 0 || self->_protoOriginatingUIType != *(equalCopy + 72))
    {
      goto LABEL_59;
    }
  }

  else if ((v62 & 0x10) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v61 & 0x1000000) != 0)
  {
    if ((v62 & 0x1000000) == 0)
    {
      goto LABEL_59;
    }

    v63 = *(equalCopy + 449);
    if (self->_protoFailureExpected)
    {
      if ((*(equalCopy + 449) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 449))
    {
      goto LABEL_59;
    }
  }

  else if ((v62 & 0x1000000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v61 & 0x40000000) != 0)
  {
    if ((v62 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

    v64 = *(equalCopy + 455);
    if (self->_protoSupportsEmergencyFallback)
    {
      if ((*(equalCopy + 455) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 455))
    {
      goto LABEL_59;
    }
  }

  else if ((v62 & 0x40000000) != 0)
  {
    goto LABEL_59;
  }

  groupUUIDString = self->_groupUUIDString;
  if (groupUUIDString | *(equalCopy + 14) && ![(NSString *)groupUUIDString isEqual:?])
  {
    goto LABEL_59;
  }

  conversations = self->_conversations;
  if (conversations | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)conversations isEqual:?])
    {
      goto LABEL_59;
    }
  }

  joinConversationRequestURLString = self->_joinConversationRequestURLString;
  if (joinConversationRequestURLString | *(equalCopy + 22))
  {
    if (![(NSString *)joinConversationRequestURLString isEqual:?])
    {
      goto LABEL_59;
    }
  }

  conversationUUIDString = self->_conversationUUIDString;
  if (conversationUUIDString | *(equalCopy + 7))
  {
    if (![(NSString *)conversationUUIDString isEqual:?])
    {
      goto LABEL_59;
    }
  }

  conversationMembers = self->_conversationMembers;
  if (conversationMembers | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)conversationMembers isEqual:?])
    {
      goto LABEL_59;
    }
  }

  handlesToInvites = self->_handlesToInvites;
  if (handlesToInvites | *(equalCopy + 16))
  {
    if (![(NSMutableArray *)handlesToInvites isEqual:?])
    {
      goto LABEL_59;
    }
  }

  prominenceEntrys = self->_prominenceEntrys;
  if (prominenceEntrys | *(equalCopy + 28))
  {
    if (![(NSMutableArray *)prominenceEntrys isEqual:?])
    {
      goto LABEL_59;
    }
  }

  v72 = *(equalCopy + 58);
  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    if ((v72 & 0x20000000) == 0)
    {
      goto LABEL_59;
    }

    v73 = *(equalCopy + 454);
    if (self->_protoSupportsDTMFUpdates)
    {
      if ((*(equalCopy + 454) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 454))
    {
      goto LABEL_59;
    }
  }

  else if ((v72 & 0x20000000) != 0)
  {
    goto LABEL_59;
  }

  dtmfUpdateDigits = self->_dtmfUpdateDigits;
  if (dtmfUpdateDigits | *(equalCopy + 11) && ![(NSString *)dtmfUpdateDigits isEqual:?])
  {
    goto LABEL_59;
  }

  image = self->_image;
  if (image | *(equalCopy + 19))
  {
    if (![(NSData *)image isEqual:?])
    {
      goto LABEL_59;
    }
  }

  senderIDSIdentifier = self->_senderIDSIdentifier;
  if (senderIDSIdentifier | *(equalCopy + 49))
  {
    if (![(NSString *)senderIDSIdentifier isEqual:?])
    {
      goto LABEL_59;
    }
  }

  v77 = self->_has;
  v78 = *(equalCopy + 58);
  if ((*&v77 & 0x10000) != 0)
  {
    if ((v78 & 0x10000) == 0)
    {
      goto LABEL_59;
    }

    v79 = *(equalCopy + 441);
    if (self->_automaticCallActivationDisabled)
    {
      if ((*(equalCopy + 441) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 441))
    {
      goto LABEL_59;
    }
  }

  else if ((v78 & 0x10000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v77 & 0x1000000000) != 0)
  {
    if ((v78 & 0x1000000000) == 0)
    {
      goto LABEL_59;
    }

    v80 = *(equalCopy + 461);
    if (self->_relayHostCanScreen)
    {
      if ((*(equalCopy + 461) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 461))
    {
      goto LABEL_59;
    }
  }

  else if ((v78 & 0x1000000000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v77 & 0x80000) != 0)
  {
    if ((v78 & 0x80000) == 0)
    {
      goto LABEL_59;
    }

    v81 = *(equalCopy + 444);
    if (self->_isScreening)
    {
      if ((*(equalCopy + 444) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 444))
    {
      goto LABEL_59;
    }
  }

  else if ((v78 & 0x80000) != 0)
  {
    goto LABEL_59;
  }

  captionsResult = self->_captionsResult;
  if (captionsResult | *(equalCopy + 4))
  {
    if (![(CSDMessagingCaptionsResult *)captionsResult isEqual:?])
    {
      goto LABEL_59;
    }

    v77 = self->_has;
  }

  v83 = *(equalCopy + 58);
  if ((*&v77 & 0x800) != 0)
  {
    if ((v83 & 0x800) == 0 || self->_receptionistState != *(equalCopy + 88))
    {
      goto LABEL_59;
    }
  }

  else if ((v83 & 0x800) != 0)
  {
    goto LABEL_59;
  }

  lastReceptionistMessage = self->_lastReceptionistMessage;
  if (lastReceptionistMessage | *(equalCopy + 23) && ![(NSString *)lastReceptionistMessage isEqual:?])
  {
    goto LABEL_59;
  }

  smartHoldingSession = self->_smartHoldingSession;
  if (smartHoldingSession | *(equalCopy + 51))
  {
    if (![(CSDMessagingSmartHoldingSession *)smartHoldingSession isEqual:?])
    {
      goto LABEL_59;
    }
  }

  customReply = self->_customReply;
  if (customReply | *(equalCopy + 9))
  {
    if (![(NSString *)customReply isEqual:?])
    {
      goto LABEL_59;
    }
  }

  v87 = *(equalCopy + 58);
  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    if ((v87 & 0x8000) == 0)
    {
      goto LABEL_59;
    }

    v88 = *(equalCopy + 440);
    if (self->_announcementHasFinished)
    {
      if ((*(equalCopy + 440) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 440))
    {
      goto LABEL_59;
    }
  }

  else if ((v87 & 0x8000) != 0)
  {
    goto LABEL_59;
  }

  receptionistSession = self->_receptionistSession;
  if (receptionistSession | *(equalCopy + 43) && ![(CSDMessagingReceptionistSession *)receptionistSession isEqual:?])
  {
    goto LABEL_59;
  }

  smartHoldingRequest = self->_smartHoldingRequest;
  if (smartHoldingRequest | *(equalCopy + 50))
  {
    if (![(CSDMessagingSmartHoldingRequest *)smartHoldingRequest isEqual:?])
    {
      goto LABEL_59;
    }
  }

  v91 = self->_has;
  v92 = *(equalCopy + 58);
  if ((*&v91 & 0x40000) != 0)
  {
    if ((v92 & 0x40000) == 0)
    {
      goto LABEL_59;
    }

    v93 = *(equalCopy + 443);
    if (self->_isReceptionistCapable)
    {
      if ((*(equalCopy + 443) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else if (*(equalCopy + 443))
    {
      goto LABEL_59;
    }
  }

  else if ((v92 & 0x40000) != 0)
  {
    goto LABEL_59;
  }

  if ((*&v91 & 0x20000) == 0)
  {
    v23 = (v92 & 0x20000) == 0;
    goto LABEL_60;
  }

  if ((v92 & 0x20000) != 0)
  {
    if (self->_isLocalUserInHomeCountry)
    {
      if ((*(equalCopy + 442) & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_342:
      v23 = 1;
      goto LABEL_60;
    }

    if (!*(equalCopy + 442))
    {
      goto LABEL_342;
    }
  }

LABEL_59:
  v23 = 0;
LABEL_60:

  return v23;
}

- (unint64_t)hash
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v108 = 2654435761 * self->_type;
  }

  else
  {
    v108 = 0;
  }

  v107 = [(NSString *)self->_uniqueProxyIdentifier hash];
  v106 = [(NSString *)self->_destinationID hash];
  v105 = [(NSString *)self->_sourceIdentifier hash];
  v104 = [(CSDMessagingCallModelState *)self->_protoCallModelState hash];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
    v103 = 0;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v102 = 0;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v103 = 2654435761 * self->_protoService;
  if ((*&has & 0x800000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v102 = 2654435761 * self->_protoWantsHoldMusic;
  if ((*&has & 0x100000) != 0)
  {
LABEL_7:
    v101 = 2654435761 * self->_protoCannotBeAnswered;
    goto LABEL_11;
  }

LABEL_10:
  v101 = 0;
LABEL_11:
  v100 = [(NSData *)self->_protoDTMFKey hash];
  if ((*&self->_has & 8) != 0)
  {
    v99 = 2654435761 * self->_protoDisconnectedReason;
  }

  else
  {
    v99 = 0;
  }

  v98 = [(NSString *)self->_oBSOLETEConferenceIdentifier hash];
  if ((*(&self->_has + 4) & 4) != 0)
  {
    v97 = 2654435761 * self->_protoVoicemail;
  }

  else
  {
    v97 = 0;
  }

  v96 = [(NSString *)self->_callerNameFromNetwork hash];
  v95 = [(NSMutableArray *)self->_protoCalls hash];
  v94 = [(NSString *)self->_hardPauseDigits hash];
  v4 = self->_has;
  if ((*&v4 & 4) != 0)
  {
    v93 = 2654435761 * self->_hardPauseState;
    if ((*&v4 & 0x400) != 0)
    {
LABEL_19:
      v92 = 2654435761 * self->_receivedMessageType;
      if ((*&v4 & 0x40) != 0)
      {
        goto LABEL_20;
      }

LABEL_24:
      v91 = 0;
      if ((*&v4 & 0x10000000) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v93 = 0;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_19;
    }
  }

  v92 = 0;
  if ((*&v4 & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v91 = 2654435761 * self->_protoProtocolVersion;
  if ((*&v4 & 0x10000000) != 0)
  {
LABEL_21:
    v90 = 2654435761 * self->_protoShouldSuppressRingtone;
    goto LABEL_26;
  }

LABEL_25:
  v90 = 0;
LABEL_26:
  v89 = [(NSData *)self->_dummyPayload hash];
  v7 = self->_has;
  if (*&v7)
  {
    hostCallCreationTime = self->_hostCallCreationTime;
    if (hostCallCreationTime < 0.0)
    {
      hostCallCreationTime = -hostCallCreationTime;
    }

    *v5.i64 = floor(hostCallCreationTime + 0.5);
    v10 = (hostCallCreationTime - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v11), v6, v5);
    v8 = 2654435761u * *v5.i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&v7 & 2) != 0)
  {
    messageSendTime = self->_messageSendTime;
    if (messageSendTime < 0.0)
    {
      messageSendTime = -messageSendTime;
    }

    *v5.i64 = floor(messageSendTime + 0.5);
    v14 = (messageSendTime - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v6, v5).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((*&v7 & 0x2000000) != 0)
  {
    v86 = 2654435761 * self->_protoNeedsManualInCallSounds;
    if ((*&v7 & 0x200000) != 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v86 = 0;
    if ((*&v7 & 0x200000) != 0)
    {
LABEL_44:
      v85 = 2654435761 * self->_protoCannotRelayAudioOrVideoOnPairedDevice;
      goto LABEL_47;
    }
  }

  v85 = 0;
LABEL_47:
  v88 = v8;
  v87 = v12;
  if ((*&v7 & 0x800000) != 0)
  {
    v84 = 2654435761 * self->_protoExpectedEndpointOnMessagingDevice;
  }

  else
  {
    v84 = 0;
  }

  v83 = [(NSString *)self->_contactIdentifier hash];
  v82 = [(CSDMessagingCallCapabilitiesState *)self->_protoCallCapabilitiesState hash];
  v16 = self->_has;
  if ((*&v16 & 0x100) != 0)
  {
    v81 = 2654435761 * self->_protoSoundRegion;
    if ((*&v16 & 0x400000) != 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v81 = 0;
    if ((*&v16 & 0x400000) != 0)
    {
LABEL_52:
      v80 = 2654435761 * self->_protoEmergency;
      goto LABEL_55;
    }
  }

  v80 = 0;
LABEL_55:
  v79 = [(NSMutableArray *)self->_otherUniqueProxyIdentifiers hash];
  v78 = [(CSDMessagingCallModel *)self->_protoCallModel hash];
  v77 = [(CSDMessagingHandle *)self->_handle hash];
  if ((*(&self->_has + 3) & 8) != 0)
  {
    v76 = 2654435761 * self->_protoSOS;
  }

  else
  {
    v76 = 0;
  }

  v75 = [(NSMutableArray *)self->_providers hash];
  v74 = [(CSDMessagingCallDisplayContext *)self->_protoDisplayContext hash];
  v73 = [(CSDMessagingAVConferenceInviteData *)self->_inviteData hash];
  v72 = [(CSDMessagingCallProvider *)self->_protoProvider hash];
  v19 = self->_has;
  if ((*&v19 & 0x200000000) != 0)
  {
    v71 = 2654435761 * self->_protoVideo;
    if ((*&v19 & 0x100000000) != 0)
    {
LABEL_60:
      v70 = 2654435761 * self->_protoUplinkMuted;
      if ((*&v19 & 0x4000000) != 0)
      {
        goto LABEL_61;
      }

LABEL_68:
      v69 = 0;
      if ((*&v19 & 0x2000) != 0)
      {
        goto LABEL_62;
      }

LABEL_69:
      v23 = 0;
      goto LABEL_70;
    }
  }

  else
  {
    v71 = 0;
    if ((*&v19 & 0x100000000) != 0)
    {
      goto LABEL_60;
    }
  }

  v70 = 0;
  if ((*&v19 & 0x4000000) == 0)
  {
    goto LABEL_68;
  }

LABEL_61:
  v69 = 2654435761 * self->_protoRemoteUplinkMuted;
  if ((*&v19 & 0x2000) == 0)
  {
    goto LABEL_69;
  }

LABEL_62:
  systemVolume = self->_systemVolume;
  if (systemVolume < 0.0)
  {
    systemVolume = -systemVolume;
  }

  *v17.i32 = floorf(systemVolume + 0.5);
  v21 = (systemVolume - *v17.i32) * 1.8447e19;
  *v18.i32 = *v17.i32 - (truncf(*v17.i32 * 5.421e-20) * 1.8447e19);
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  v23 = 2654435761u * *vbslq_s8(v22, v18, v17).i32;
  if (v21 >= 0.0)
  {
    if (v21 > 0.0)
    {
      v23 += v21;
    }
  }

  else
  {
    v23 -= fabsf(v21);
  }

LABEL_70:
  v68 = v23;
  v67 = [(NSString *)self->_localSenderIdentityUUIDString hash];
  v66 = [(NSMutableArray *)self->_remoteParticipantHandles hash];
  v65 = [(NSString *)self->_localSenderIdentityAccountUUIDString hash];
  v24 = self->_has;
  if ((*&v24 & 0x200) == 0)
  {
    v64 = 0;
    if ((*&v24 & 0x80000000) != 0)
    {
      goto LABEL_72;
    }

LABEL_75:
    v63 = 0;
    if ((*&v24 & 0x1000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_76;
  }

  v64 = 2654435761 * self->_protoTTYType;
  if ((*&v24 & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

LABEL_72:
  v63 = 2654435761 * self->_protoSupportsTTYWithVoice;
  if ((*&v24 & 0x1000) != 0)
  {
LABEL_73:
    v62 = 2654435761 * self->_requestActionType;
    goto LABEL_77;
  }

LABEL_76:
  v62 = 0;
LABEL_77:
  v61 = [(NSMutableArray *)self->_routes hash];
  v60 = [(CSDMessagingRoute *)self->_route hash];
  v59 = [(NSMutableArray *)self->_endpointIDSDestinationURIs hash];
  v58 = [(NSString *)self->_isoCountryCode hash];
  v25 = self->_has;
  if ((*&v25 & 0x20) != 0)
  {
    v57 = 2654435761 * self->_protoPriority;
    if ((*&v25 & 0x10) != 0)
    {
LABEL_79:
      v56 = 2654435761 * self->_protoOriginatingUIType;
      if ((*&v25 & 0x1000000) != 0)
      {
        goto LABEL_80;
      }

LABEL_84:
      v55 = 0;
      if ((*&v25 & 0x40000000) != 0)
      {
        goto LABEL_81;
      }

      goto LABEL_85;
    }
  }

  else
  {
    v57 = 0;
    if ((*&v25 & 0x10) != 0)
    {
      goto LABEL_79;
    }
  }

  v56 = 0;
  if ((*&v25 & 0x1000000) == 0)
  {
    goto LABEL_84;
  }

LABEL_80:
  v55 = 2654435761 * self->_protoFailureExpected;
  if ((*&v25 & 0x40000000) != 0)
  {
LABEL_81:
    v54 = 2654435761 * self->_protoSupportsEmergencyFallback;
    goto LABEL_86;
  }

LABEL_85:
  v54 = 0;
LABEL_86:
  v53 = [(NSString *)self->_groupUUIDString hash];
  v52 = [(NSMutableArray *)self->_conversations hash];
  v51 = [(NSString *)self->_joinConversationRequestURLString hash];
  v50 = [(NSString *)self->_conversationUUIDString hash];
  v49 = [(NSMutableArray *)self->_conversationMembers hash];
  v48 = [(NSMutableArray *)self->_handlesToInvites hash];
  v47 = [(NSMutableArray *)self->_prominenceEntrys hash];
  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    v46 = 2654435761 * self->_protoSupportsDTMFUpdates;
  }

  else
  {
    v46 = 0;
  }

  v45 = [(NSString *)self->_dtmfUpdateDigits hash];
  v44 = [(NSData *)self->_image hash];
  v43 = [(NSString *)self->_senderIDSIdentifier hash];
  v26 = self->_has;
  if ((*&v26 & 0x10000) == 0)
  {
    v42 = 0;
    if ((*&v26 & 0x1000000000) != 0)
    {
      goto LABEL_91;
    }

LABEL_94:
    v41 = 0;
    if ((*&v26 & 0x80000) != 0)
    {
      goto LABEL_92;
    }

    goto LABEL_95;
  }

  v42 = 2654435761 * self->_automaticCallActivationDisabled;
  if ((*&v26 & 0x1000000000) == 0)
  {
    goto LABEL_94;
  }

LABEL_91:
  v41 = 2654435761 * self->_relayHostCanScreen;
  if ((*&v26 & 0x80000) != 0)
  {
LABEL_92:
    v27 = [(CSDMessagingCaptionsResult *)self->_captionsResult hash];
    goto LABEL_96;
  }

LABEL_95:
  v27 = [(CSDMessagingCaptionsResult *)self->_captionsResult hash];
LABEL_96:
  v28 = v27;
  if ((*(&self->_has + 1) & 8) != 0)
  {
    v29 = 2654435761 * self->_receptionistState;
  }

  else
  {
    v29 = 0;
  }

  v30 = [(NSString *)self->_lastReceptionistMessage hash];
  v31 = [(CSDMessagingSmartHoldingSession *)self->_smartHoldingSession hash];
  v32 = [(NSString *)self->_customReply hash];
  if ((*(&self->_has + 1) & 0x80) != 0)
  {
    v33 = 2654435761 * self->_announcementHasFinished;
  }

  else
  {
    v33 = 0;
  }

  v34 = [(CSDMessagingReceptionistSession *)self->_receptionistSession hash];
  v35 = [(CSDMessagingSmartHoldingRequest *)self->_smartHoldingRequest hash];
  v36 = self->_has;
  if ((*&v36 & 0x40000) != 0)
  {
    v37 = 2654435761 * self->_isReceptionistCapable;
    if ((*&v36 & 0x20000) != 0)
    {
      goto LABEL_104;
    }

LABEL_106:
    v38 = 0;
    return v107 ^ v108 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34 ^ v35 ^ v37 ^ v38;
  }

  v37 = 0;
  if ((*&v36 & 0x20000) == 0)
  {
    goto LABEL_106;
  }

LABEL_104:
  v38 = 2654435761 * self->_isLocalUserInHomeCountry;
  return v107 ^ v108 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34 ^ v35 ^ v37 ^ v38;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((*(fromCopy + 465) & 0x40) != 0)
  {
    self->_type = fromCopy[107];
    *&self->_has |= 0x4000uLL;
  }

  if (*(fromCopy + 54))
  {
    [(CSDMessagingRelayMessage *)self setUniqueProxyIdentifier:?];
  }

  if (*(v5 + 10))
  {
    [(CSDMessagingRelayMessage *)self setDestinationID:?];
  }

  if (*(v5 + 52))
  {
    [(CSDMessagingRelayMessage *)self setSourceIdentifier:?];
  }

  protoCallModelState = self->_protoCallModelState;
  v7 = *(v5 + 31);
  if (protoCallModelState)
  {
    if (v7)
    {
      [(CSDMessagingCallModelState *)protoCallModelState mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(CSDMessagingRelayMessage *)self setProtoCallModelState:?];
  }

  v8 = *(v5 + 58);
  if ((v8 & 0x80) != 0)
  {
    self->_protoService = *(v5 + 78);
    *&self->_has |= 0x80uLL;
    v8 = *(v5 + 58);
    if ((v8 & 0x800000000) == 0)
    {
LABEL_16:
      if ((v8 & 0x100000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v8 & 0x800000000) == 0)
  {
    goto LABEL_16;
  }

  self->_protoWantsHoldMusic = *(v5 + 460);
  *&self->_has |= 0x800000000uLL;
  if ((*(v5 + 58) & 0x100000) != 0)
  {
LABEL_17:
    self->_protoCannotBeAnswered = *(v5 + 445);
    *&self->_has |= 0x100000uLL;
  }

LABEL_18:
  if (*(v5 + 33))
  {
    [(CSDMessagingRelayMessage *)self setProtoDTMFKey:?];
  }

  if ((*(v5 + 464) & 8) != 0)
  {
    self->_protoDisconnectedReason = *(v5 + 68);
    *&self->_has |= 8uLL;
  }

  if (*(v5 + 26))
  {
    [(CSDMessagingRelayMessage *)self setOBSOLETEConferenceIdentifier:?];
  }

  if ((*(v5 + 468) & 4) != 0)
  {
    self->_protoVoicemail = *(v5 + 459);
    *&self->_has |= 0x400000000uLL;
  }

  if (*(v5 + 3))
  {
    [(CSDMessagingRelayMessage *)self setCallerNameFromNetwork:?];
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v9 = *(v5 + 32);
  v10 = [v9 countByEnumeratingWithState:&v125 objects:v138 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v126;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v126 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(CSDMessagingRelayMessage *)self addProtoCall:*(*(&v125 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v125 objects:v138 count:16];
    }

    while (v11);
  }

  if (*(v5 + 17))
  {
    [(CSDMessagingRelayMessage *)self setHardPauseDigits:?];
  }

  v14 = *(v5 + 58);
  if ((v14 & 4) != 0)
  {
    self->_hardPauseState = *(v5 + 36);
    *&self->_has |= 4uLL;
    v14 = *(v5 + 58);
    if ((v14 & 0x400) == 0)
    {
LABEL_39:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_60;
    }
  }

  else if ((v14 & 0x400) == 0)
  {
    goto LABEL_39;
  }

  self->_receivedMessageType = *(v5 + 84);
  *&self->_has |= 0x400uLL;
  v14 = *(v5 + 58);
  if ((v14 & 0x40) == 0)
  {
LABEL_40:
    if ((v14 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_60:
  self->_protoProtocolVersion = *(v5 + 74);
  *&self->_has |= 0x40uLL;
  if ((*(v5 + 58) & 0x10000000) != 0)
  {
LABEL_41:
    self->_protoShouldSuppressRingtone = *(v5 + 453);
    *&self->_has |= 0x10000000uLL;
  }

LABEL_42:
  if (*(v5 + 12))
  {
    [(CSDMessagingRelayMessage *)self setDummyPayload:?];
  }

  v15 = *(v5 + 58);
  if (v15)
  {
    self->_hostCallCreationTime = *(v5 + 1);
    *&self->_has |= 1uLL;
    v15 = *(v5 + 58);
    if ((v15 & 2) == 0)
    {
LABEL_46:
      if ((v15 & 0x2000000) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_64;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_46;
  }

  self->_messageSendTime = *(v5 + 2);
  *&self->_has |= 2uLL;
  v15 = *(v5 + 58);
  if ((v15 & 0x2000000) == 0)
  {
LABEL_47:
    if ((v15 & 0x200000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_protoNeedsManualInCallSounds = *(v5 + 450);
  *&self->_has |= 0x2000000uLL;
  v15 = *(v5 + 58);
  if ((v15 & 0x200000) == 0)
  {
LABEL_48:
    if ((v15 & 0x800000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_65:
  self->_protoCannotRelayAudioOrVideoOnPairedDevice = *(v5 + 446);
  *&self->_has |= 0x200000uLL;
  if ((*(v5 + 58) & 0x800000) != 0)
  {
LABEL_49:
    self->_protoExpectedEndpointOnMessagingDevice = *(v5 + 448);
    *&self->_has |= 0x800000uLL;
  }

LABEL_50:
  if (*(v5 + 5))
  {
    [(CSDMessagingRelayMessage *)self setContactIdentifier:?];
  }

  protoCallCapabilitiesState = self->_protoCallCapabilitiesState;
  v17 = *(v5 + 29);
  if (protoCallCapabilitiesState)
  {
    if (v17)
    {
      [(CSDMessagingCallCapabilitiesState *)protoCallCapabilitiesState mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(CSDMessagingRelayMessage *)self setProtoCallCapabilitiesState:?];
  }

  v18 = *(v5 + 58);
  if ((v18 & 0x100) != 0)
  {
    self->_protoSoundRegion = *(v5 + 79);
    *&self->_has |= 0x100uLL;
    v18 = *(v5 + 58);
  }

  if ((v18 & 0x400000) != 0)
  {
    self->_protoEmergency = *(v5 + 447);
    *&self->_has |= 0x400000uLL;
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v19 = *(v5 + 27);
  v20 = [v19 countByEnumeratingWithState:&v121 objects:v137 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v122;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v122 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(CSDMessagingRelayMessage *)self addOtherUniqueProxyIdentifiers:*(*(&v121 + 1) + 8 * j)];
      }

      v21 = [v19 countByEnumeratingWithState:&v121 objects:v137 count:16];
    }

    while (v21);
  }

  protoCallModel = self->_protoCallModel;
  v25 = *(v5 + 30);
  if (protoCallModel)
  {
    if (v25)
    {
      [(CSDMessagingCallModel *)protoCallModel mergeFrom:?];
    }
  }

  else if (v25)
  {
    [(CSDMessagingRelayMessage *)self setProtoCallModel:?];
  }

  handle = self->_handle;
  v27 = *(v5 + 15);
  if (handle)
  {
    if (v27)
    {
      [(CSDMessagingHandle *)handle mergeFrom:?];
    }
  }

  else if (v27)
  {
    [(CSDMessagingRelayMessage *)self setHandle:?];
  }

  if ((*(v5 + 467) & 8) != 0)
  {
    self->_protoSOS = *(v5 + 452);
    *&self->_has |= 0x8000000uLL;
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v28 = *(v5 + 41);
  v29 = [v28 countByEnumeratingWithState:&v117 objects:v136 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v118;
    do
    {
      for (k = 0; k != v30; k = k + 1)
      {
        if (*v118 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [(CSDMessagingRelayMessage *)self addProviders:*(*(&v117 + 1) + 8 * k)];
      }

      v30 = [v28 countByEnumeratingWithState:&v117 objects:v136 count:16];
    }

    while (v30);
  }

  protoDisplayContext = self->_protoDisplayContext;
  v34 = *(v5 + 35);
  if (protoDisplayContext)
  {
    if (v34)
    {
      [(CSDMessagingCallDisplayContext *)protoDisplayContext mergeFrom:?];
    }
  }

  else if (v34)
  {
    [(CSDMessagingRelayMessage *)self setProtoDisplayContext:?];
  }

  inviteData = self->_inviteData;
  v36 = *(v5 + 20);
  if (inviteData)
  {
    if (v36)
    {
      [(CSDMessagingAVConferenceInviteData *)inviteData mergeFrom:?];
    }
  }

  else if (v36)
  {
    [(CSDMessagingRelayMessage *)self setInviteData:?];
  }

  protoProvider = self->_protoProvider;
  v38 = *(v5 + 38);
  if (protoProvider)
  {
    if (v38)
    {
      [(CSDMessagingCallProvider *)protoProvider mergeFrom:?];
    }
  }

  else if (v38)
  {
    [(CSDMessagingRelayMessage *)self setProtoProvider:?];
  }

  v39 = *(v5 + 58);
  if ((v39 & 0x200000000) != 0)
  {
    self->_protoVideo = *(v5 + 458);
    *&self->_has |= 0x200000000uLL;
    v39 = *(v5 + 58);
    if ((v39 & 0x100000000) == 0)
    {
LABEL_116:
      if ((v39 & 0x4000000) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_146;
    }
  }

  else if ((v39 & 0x100000000) == 0)
  {
    goto LABEL_116;
  }

  self->_protoUplinkMuted = *(v5 + 457);
  *&self->_has |= &_mh_execute_header;
  v39 = *(v5 + 58);
  if ((v39 & 0x4000000) == 0)
  {
LABEL_117:
    if ((v39 & 0x2000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

LABEL_146:
  self->_protoRemoteUplinkMuted = *(v5 + 451);
  *&self->_has |= 0x4000000uLL;
  if ((*(v5 + 58) & 0x2000) != 0)
  {
LABEL_118:
    self->_systemVolume = *(v5 + 106);
    *&self->_has |= 0x2000uLL;
  }

LABEL_119:
  if (*(v5 + 25))
  {
    [(CSDMessagingRelayMessage *)self setLocalSenderIdentityUUIDString:?];
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v40 = *(v5 + 45);
  v41 = [v40 countByEnumeratingWithState:&v113 objects:v135 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v114;
    do
    {
      for (m = 0; m != v42; m = m + 1)
      {
        if (*v114 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(CSDMessagingRelayMessage *)self addRemoteParticipantHandles:*(*(&v113 + 1) + 8 * m)];
      }

      v42 = [v40 countByEnumeratingWithState:&v113 objects:v135 count:16];
    }

    while (v42);
  }

  if (*(v5 + 24))
  {
    [(CSDMessagingRelayMessage *)self setLocalSenderIdentityAccountUUIDString:?];
  }

  v45 = *(v5 + 58);
  if ((v45 & 0x200) != 0)
  {
    self->_protoTTYType = *(v5 + 80);
    *&self->_has |= 0x200uLL;
    v45 = *(v5 + 58);
    if ((v45 & 0x80000000) == 0)
    {
LABEL_132:
      if ((v45 & 0x1000) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_133;
    }
  }

  else if ((v45 & 0x80000000) == 0)
  {
    goto LABEL_132;
  }

  self->_protoSupportsTTYWithVoice = *(v5 + 456);
  *&self->_has |= 0x80000000uLL;
  if ((*(v5 + 58) & 0x1000) != 0)
  {
LABEL_133:
    self->_requestActionType = *(v5 + 92);
    *&self->_has |= 0x1000uLL;
  }

LABEL_134:
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v46 = *(v5 + 48);
  v47 = [v46 countByEnumeratingWithState:&v109 objects:v134 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v110;
    do
    {
      for (n = 0; n != v48; n = n + 1)
      {
        if (*v110 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [(CSDMessagingRelayMessage *)self addRoutes:*(*(&v109 + 1) + 8 * n)];
      }

      v48 = [v46 countByEnumeratingWithState:&v109 objects:v134 count:16];
    }

    while (v48);
  }

  route = self->_route;
  v52 = *(v5 + 47);
  if (route)
  {
    if (v52)
    {
      [(CSDMessagingRoute *)route mergeFrom:?];
    }
  }

  else if (v52)
  {
    [(CSDMessagingRelayMessage *)self setRoute:?];
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v53 = *(v5 + 13);
  v54 = [v53 countByEnumeratingWithState:&v105 objects:v133 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v106;
    do
    {
      for (ii = 0; ii != v55; ii = ii + 1)
      {
        if (*v106 != v56)
        {
          objc_enumerationMutation(v53);
        }

        [(CSDMessagingRelayMessage *)self addEndpointIDSDestinationURIs:*(*(&v105 + 1) + 8 * ii)];
      }

      v55 = [v53 countByEnumeratingWithState:&v105 objects:v133 count:16];
    }

    while (v55);
  }

  if (*(v5 + 21))
  {
    [(CSDMessagingRelayMessage *)self setIsoCountryCode:?];
  }

  v58 = *(v5 + 58);
  if ((v58 & 0x20) != 0)
  {
    self->_protoPriority = *(v5 + 73);
    *&self->_has |= 0x20uLL;
    v58 = *(v5 + 58);
    if ((v58 & 0x10) == 0)
    {
LABEL_164:
      if ((v58 & 0x1000000) == 0)
      {
        goto LABEL_165;
      }

      goto LABEL_218;
    }
  }

  else if ((v58 & 0x10) == 0)
  {
    goto LABEL_164;
  }

  self->_protoOriginatingUIType = *(v5 + 72);
  *&self->_has |= 0x10uLL;
  v58 = *(v5 + 58);
  if ((v58 & 0x1000000) == 0)
  {
LABEL_165:
    if ((v58 & 0x40000000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_166;
  }

LABEL_218:
  self->_protoFailureExpected = *(v5 + 449);
  *&self->_has |= 0x1000000uLL;
  if ((*(v5 + 58) & 0x40000000) != 0)
  {
LABEL_166:
    self->_protoSupportsEmergencyFallback = *(v5 + 455);
    *&self->_has |= 0x40000000uLL;
  }

LABEL_167:
  if (*(v5 + 14))
  {
    [(CSDMessagingRelayMessage *)self setGroupUUIDString:?];
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v59 = *(v5 + 8);
  v60 = [v59 countByEnumeratingWithState:&v101 objects:v132 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v102;
    do
    {
      for (jj = 0; jj != v61; jj = jj + 1)
      {
        if (*v102 != v62)
        {
          objc_enumerationMutation(v59);
        }

        [(CSDMessagingRelayMessage *)self addConversations:*(*(&v101 + 1) + 8 * jj)];
      }

      v61 = [v59 countByEnumeratingWithState:&v101 objects:v132 count:16];
    }

    while (v61);
  }

  if (*(v5 + 22))
  {
    [(CSDMessagingRelayMessage *)self setJoinConversationRequestURLString:?];
  }

  if (*(v5 + 7))
  {
    [(CSDMessagingRelayMessage *)self setConversationUUIDString:?];
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v64 = *(v5 + 6);
  v65 = [v64 countByEnumeratingWithState:&v97 objects:v131 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v98;
    do
    {
      for (kk = 0; kk != v66; kk = kk + 1)
      {
        if (*v98 != v67)
        {
          objc_enumerationMutation(v64);
        }

        [(CSDMessagingRelayMessage *)self addConversationMembers:*(*(&v97 + 1) + 8 * kk)];
      }

      v66 = [v64 countByEnumeratingWithState:&v97 objects:v131 count:16];
    }

    while (v66);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v69 = *(v5 + 16);
  v70 = [v69 countByEnumeratingWithState:&v93 objects:v130 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v94;
    do
    {
      for (mm = 0; mm != v71; mm = mm + 1)
      {
        if (*v94 != v72)
        {
          objc_enumerationMutation(v69);
        }

        [(CSDMessagingRelayMessage *)self addHandlesToInvite:*(*(&v93 + 1) + 8 * mm)];
      }

      v71 = [v69 countByEnumeratingWithState:&v93 objects:v130 count:16];
    }

    while (v71);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v74 = *(v5 + 28);
  v75 = [v74 countByEnumeratingWithState:&v89 objects:v129 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v90;
    do
    {
      for (nn = 0; nn != v76; nn = nn + 1)
      {
        if (*v90 != v77)
        {
          objc_enumerationMutation(v74);
        }

        [(CSDMessagingRelayMessage *)self addProminenceEntry:*(*(&v89 + 1) + 8 * nn), v89];
      }

      v76 = [v74 countByEnumeratingWithState:&v89 objects:v129 count:16];
    }

    while (v76);
  }

  if ((*(v5 + 467) & 0x20) != 0)
  {
    self->_protoSupportsDTMFUpdates = *(v5 + 454);
    *&self->_has |= 0x20000000uLL;
  }

  if (*(v5 + 11))
  {
    [(CSDMessagingRelayMessage *)self setDtmfUpdateDigits:?];
  }

  if (*(v5 + 19))
  {
    [(CSDMessagingRelayMessage *)self setImage:?];
  }

  if (*(v5 + 49))
  {
    [(CSDMessagingRelayMessage *)self setSenderIDSIdentifier:?];
  }

  v79 = *(v5 + 58);
  if ((v79 & 0x10000) != 0)
  {
    self->_automaticCallActivationDisabled = *(v5 + 441);
    *&self->_has |= 0x10000uLL;
    v79 = *(v5 + 58);
    if ((v79 & 0x1000000000) == 0)
    {
LABEL_211:
      if ((v79 & 0x80000) == 0)
      {
        goto LABEL_213;
      }

      goto LABEL_212;
    }
  }

  else if ((v79 & 0x1000000000) == 0)
  {
    goto LABEL_211;
  }

  self->_relayHostCanScreen = *(v5 + 461);
  *&self->_has |= 0x1000000000uLL;
  if ((*(v5 + 58) & 0x80000) != 0)
  {
LABEL_212:
    self->_isScreening = *(v5 + 444);
    *&self->_has |= 0x80000uLL;
  }

LABEL_213:
  captionsResult = self->_captionsResult;
  v81 = *(v5 + 4);
  if (captionsResult)
  {
    if (v81)
    {
      [(CSDMessagingCaptionsResult *)captionsResult mergeFrom:?];
    }
  }

  else if (v81)
  {
    [(CSDMessagingRelayMessage *)self setCaptionsResult:?];
  }

  if ((*(v5 + 465) & 8) != 0)
  {
    self->_receptionistState = *(v5 + 88);
    *&self->_has |= 0x800uLL;
  }

  if (*(v5 + 23))
  {
    [(CSDMessagingRelayMessage *)self setLastReceptionistMessage:?];
  }

  smartHoldingSession = self->_smartHoldingSession;
  v83 = *(v5 + 51);
  if (smartHoldingSession)
  {
    if (v83)
    {
      [(CSDMessagingSmartHoldingSession *)smartHoldingSession mergeFrom:?];
    }
  }

  else if (v83)
  {
    [(CSDMessagingRelayMessage *)self setSmartHoldingSession:?];
  }

  if (*(v5 + 9))
  {
    [(CSDMessagingRelayMessage *)self setCustomReply:?];
  }

  if ((*(v5 + 465) & 0x80) != 0)
  {
    self->_announcementHasFinished = *(v5 + 440);
    *&self->_has |= 0x8000uLL;
  }

  receptionistSession = self->_receptionistSession;
  v85 = *(v5 + 43);
  if (receptionistSession)
  {
    if (v85)
    {
      [(CSDMessagingReceptionistSession *)receptionistSession mergeFrom:?];
    }
  }

  else if (v85)
  {
    [(CSDMessagingRelayMessage *)self setReceptionistSession:?];
  }

  smartHoldingRequest = self->_smartHoldingRequest;
  v87 = *(v5 + 50);
  if (smartHoldingRequest)
  {
    if (v87)
    {
      [(CSDMessagingSmartHoldingRequest *)smartHoldingRequest mergeFrom:?];
    }
  }

  else if (v87)
  {
    [(CSDMessagingRelayMessage *)self setSmartHoldingRequest:?];
  }

  v88 = *(v5 + 58);
  if ((v88 & 0x40000) != 0)
  {
    self->_isReceptionistCapable = *(v5 + 443);
    *&self->_has |= 0x40000uLL;
    v88 = *(v5 + 58);
  }

  if ((v88 & 0x20000) != 0)
  {
    self->_isLocalUserInHomeCountry = *(v5 + 442);
    *&self->_has |= 0x20000uLL;
  }
}

@end