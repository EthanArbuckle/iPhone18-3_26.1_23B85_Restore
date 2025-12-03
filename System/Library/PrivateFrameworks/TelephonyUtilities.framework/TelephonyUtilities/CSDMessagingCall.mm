@interface CSDMessagingCall
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCall:(id)call;
- (BOOL)isVideo;
- (CSDMessagingCall)initWithCall:(id)call;
- (NSDate)dateConnected;
- (NSSet)remoteParticipantTUHandles;
- (NSUUID)localSenderIdentityAccountUUID;
- (NSUUID)localSenderIdentityUUID;
- (TUCallModel)callModel;
- (TUCallProvider)tuProvider;
- (TUHandle)tuHandle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRemoteParticipantHandles:(id)handles;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setCallModel:(id)model;
- (void)setDateConnected:(id)connected;
- (void)setHasProtoConferenced:(BOOL)conferenced;
- (void)setHasProtoDisconnectedReason:(BOOL)reason;
- (void)setHasProtoEmergency:(BOOL)emergency;
- (void)setHasProtoFailureExpected:(BOOL)expected;
- (void)setHasProtoHasSentInvitation:(BOOL)invitation;
- (void)setHasProtoNeedsManualInCallSounds:(BOOL)sounds;
- (void)setHasProtoOriginatingUIType:(BOOL)type;
- (void)setHasProtoOutgoing:(BOOL)outgoing;
- (void)setHasProtoReceptionistCapable:(BOOL)capable;
- (void)setHasProtoSOS:(BOOL)s;
- (void)setHasProtoService:(BOOL)service;
- (void)setHasProtoShouldSuppressRingtone:(BOOL)ringtone;
- (void)setHasProtoSoundRegion:(BOOL)region;
- (void)setHasProtoStatus:(BOOL)status;
- (void)setHasProtoSupportsDTMFUpdates:(BOOL)updates;
- (void)setHasProtoSupportsEmergencyFallback:(BOOL)fallback;
- (void)setHasProtoSupportsTTYWithVoice:(BOOL)voice;
- (void)setHasProtoTTYType:(BOOL)type;
- (void)setHasProtoUplinkMuted:(BOOL)muted;
- (void)setHasProtoVideo:(BOOL)video;
- (void)setHasProtoVoicemail:(BOOL)voicemail;
- (void)setHasProtoWantsHoldMusic:(BOOL)music;
- (void)setLocalSenderIdentityAccountUUID:(id)d;
- (void)setLocalSenderIdentityUUID:(id)d;
- (void)setRemoteParticipantTUHandles:(id)handles;
- (void)setSoundRegion:(int64_t)region;
- (void)setTuHandle:(id)handle;
- (void)setTuProvider:(id)provider;
- (void)updateRelayCall:(id)call;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingCall

- (BOOL)isVideo
{
  v6 = 0;
  if ([(CSDMessagingCall *)self hasProtoVideo])
  {

    return [(CSDMessagingCall *)self protoVideo];
  }

  else
  {
    v3 = objc_alloc_init(TUCallProviderManager);
    v4 = [v3 providerWithService:-[CSDMessagingCall service](self video:{"service"), &v6}];

    return v6 & 1;
  }
}

- (TUCallProvider)tuProvider
{
  protoProvider = [(CSDMessagingCall *)self protoProvider];
  provider = [protoProvider provider];

  if (!provider)
  {
    v7 = 0;
    v5 = objc_alloc_init(TUCallProviderManager);
    provider = [v5 providerWithService:-[CSDMessagingCall service](self video:{"service"), &v7}];
  }

  return provider;
}

- (void)setHasProtoStatus:(BOOL)status
{
  if (status)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasProtoConferenced:(BOOL)conferenced
{
  if (conferenced)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasProtoService:(BOOL)service
{
  if (service)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasProtoWantsHoldMusic:(BOOL)music
{
  if (music)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasProtoDisconnectedReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasProtoVoicemail:(BOOL)voicemail
{
  if (voicemail)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasProtoOutgoing:(BOOL)outgoing
{
  if (outgoing)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasProtoShouldSuppressRingtone:(BOOL)ringtone
{
  if (ringtone)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasProtoNeedsManualInCallSounds:(BOOL)sounds
{
  if (sounds)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasProtoSoundRegion:(BOOL)region
{
  if (region)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasProtoEmergency:(BOOL)emergency
{
  if (emergency)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasProtoHasSentInvitation:(BOOL)invitation
{
  if (invitation)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasProtoSOS:(BOOL)s
{
  if (s)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasProtoVideo:(BOOL)video
{
  if (video)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasProtoUplinkMuted:(BOOL)muted
{
  if (muted)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
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
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasProtoSupportsTTYWithVoice:(BOOL)voice
{
  if (voice)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasProtoOriginatingUIType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasProtoFailureExpected:(BOOL)expected
{
  if (expected)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasProtoSupportsEmergencyFallback:(BOOL)fallback
{
  if (fallback)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasProtoSupportsDTMFUpdates:(BOOL)updates
{
  if (updates)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasProtoReceptionistCapable:(BOOL)capable
{
  if (capable)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingCall;
  v3 = [(CSDMessagingCall *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingCall *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uniqueProxyIdentifier = self->_uniqueProxyIdentifier;
  if (uniqueProxyIdentifier)
  {
    [v3 setObject:uniqueProxyIdentifier forKey:@"uniqueProxyIdentifier"];
  }

  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_protoStatus];
    [v4 setObject:v7 forKey:@"protoStatus"];

    has = self->_has;
  }

  if ((*&has & 0x80) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_protoConferenced];
    [v4 setObject:v8 forKey:@"protoConferenced"];
  }

  destinationID = self->_destinationID;
  if (destinationID)
  {
    [v4 setObject:destinationID forKey:@"destinationID"];
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier)
  {
    [v4 setObject:sourceIdentifier forKey:@"sourceIdentifier"];
  }

  v11 = self->_has;
  if ((*&v11 & 8) != 0)
  {
    v47 = [NSNumber numberWithUnsignedInt:self->_protoService];
    [v4 setObject:v47 forKey:@"protoService"];

    v11 = self->_has;
    if ((*&v11 & 0x400000) == 0)
    {
LABEL_13:
      if ((*&v11 & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_72;
    }
  }

  else if ((*&v11 & 0x400000) == 0)
  {
    goto LABEL_13;
  }

  v48 = [NSNumber numberWithBool:self->_protoWantsHoldMusic];
  [v4 setObject:v48 forKey:@"protoWantsHoldMusic"];

  v11 = self->_has;
  if ((*&v11 & 2) == 0)
  {
LABEL_14:
    if ((*&v11 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_72:
  v49 = [NSNumber numberWithUnsignedInt:self->_protoDisconnectedReason];
  [v4 setObject:v49 forKey:@"protoDisconnectedReason"];

  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_15:
    v12 = [NSNumber numberWithBool:self->_protoVoicemail];
    [v4 setObject:v12 forKey:@"protoVoicemail"];
  }

LABEL_16:
  callerNameFromNetwork = self->_callerNameFromNetwork;
  if (callerNameFromNetwork)
  {
    [v4 setObject:callerNameFromNetwork forKey:@"callerNameFromNetwork"];
  }

  v14 = self->_has;
  if (*&v14)
  {
    v50 = [NSNumber numberWithDouble:self->_protoTimeConnected];
    [v4 setObject:v50 forKey:@"protoTimeConnected"];

    v14 = self->_has;
    if ((*&v14 & 0x1000) == 0)
    {
LABEL_20:
      if ((*&v14 & 0x8000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_76;
    }
  }

  else if ((*&v14 & 0x1000) == 0)
  {
    goto LABEL_20;
  }

  v51 = [NSNumber numberWithBool:self->_protoOutgoing];
  [v4 setObject:v51 forKey:@"protoOutgoing"];

  v14 = self->_has;
  if ((*&v14 & 0x8000) == 0)
  {
LABEL_21:
    if ((*&v14 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_77;
  }

LABEL_76:
  v52 = [NSNumber numberWithBool:self->_protoShouldSuppressRingtone];
  [v4 setObject:v52 forKey:@"protoShouldSuppressRingtone"];

  v14 = self->_has;
  if ((*&v14 & 0x800) == 0)
  {
LABEL_22:
    if ((*&v14 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_78;
  }

LABEL_77:
  v53 = [NSNumber numberWithBool:self->_protoNeedsManualInCallSounds];
  [v4 setObject:v53 forKey:@"protoNeedsManualInCallSounds"];

  v14 = self->_has;
  if ((*&v14 & 0x10) == 0)
  {
LABEL_23:
    if ((*&v14 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_79;
  }

LABEL_78:
  v54 = [NSNumber numberWithUnsignedInt:self->_protoSoundRegion];
  [v4 setObject:v54 forKey:@"protoSoundRegion"];

  v14 = self->_has;
  if ((*&v14 & 0x100) == 0)
  {
LABEL_24:
    if ((*&v14 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_79:
  v55 = [NSNumber numberWithBool:self->_protoEmergency];
  [v4 setObject:v55 forKey:@"protoEmergency"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_25:
    v15 = [NSNumber numberWithBool:self->_protoHasSentInvitation];
    [v4 setObject:v15 forKey:@"protoHasSentInvitation"];
  }

LABEL_26:
  handle = self->_handle;
  if (handle)
  {
    dictionaryRepresentation = [(CSDMessagingHandle *)handle dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"handle"];
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v18 = [NSNumber numberWithBool:self->_protoSOS];
    [v4 setObject:v18 forKey:@"protoSOS"];
  }

  protoProvider = self->_protoProvider;
  if (protoProvider)
  {
    dictionaryRepresentation2 = [(CSDMessagingCallProvider *)protoProvider dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"protoProvider"];
  }

  v21 = self->_has;
  if ((*&v21 & 0x100000) != 0)
  {
    v22 = [NSNumber numberWithBool:self->_protoVideo];
    [v4 setObject:v22 forKey:@"protoVideo"];

    v21 = self->_has;
  }

  if ((*&v21 & 0x80000) != 0)
  {
    v23 = [NSNumber numberWithBool:self->_protoUplinkMuted];
    [v4 setObject:v23 forKey:@"protoUplinkMuted"];
  }

  protoCallModel = self->_protoCallModel;
  if (protoCallModel)
  {
    dictionaryRepresentation3 = [(CSDMessagingCallModel *)protoCallModel dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"protoCallModel"];
  }

  localSenderIdentityUUIDString = self->_localSenderIdentityUUIDString;
  if (localSenderIdentityUUIDString)
  {
    [v4 setObject:localSenderIdentityUUIDString forKey:@"localSenderIdentityUUIDString"];
  }

  if ([(NSMutableArray *)self->_remoteParticipantHandles count])
  {
    v27 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_remoteParticipantHandles, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v28 = self->_remoteParticipantHandles;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v59;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v59 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation4 = [*(*(&v58 + 1) + 8 * i) dictionaryRepresentation];
          [v27 addObject:dictionaryRepresentation4];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v30);
    }

    [v4 setObject:v27 forKey:@"remoteParticipantHandles"];
  }

  localSenderIdentityAccountUUIDString = self->_localSenderIdentityAccountUUIDString;
  if (localSenderIdentityAccountUUIDString)
  {
    [v4 setObject:localSenderIdentityAccountUUIDString forKey:@"localSenderIdentityAccountUUIDString"];
  }

  v35 = self->_has;
  if ((*&v35 & 0x40) != 0)
  {
    v36 = [NSNumber numberWithUnsignedInt:self->_protoTTYType];
    [v4 setObject:v36 forKey:@"protoTTYType"];

    v35 = self->_has;
  }

  if ((*&v35 & 0x40000) != 0)
  {
    v37 = [NSNumber numberWithBool:self->_protoSupportsTTYWithVoice];
    [v4 setObject:v37 forKey:@"protoSupportsTTYWithVoice"];
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode)
  {
    [v4 setObject:isoCountryCode forKey:@"isoCountryCode"];
  }

  v39 = self->_has;
  if ((*&v39 & 4) != 0)
  {
    v56 = [NSNumber numberWithUnsignedInt:self->_protoOriginatingUIType];
    [v4 setObject:v56 forKey:@"protoOriginatingUIType"];

    v39 = self->_has;
    if ((*&v39 & 0x200) == 0)
    {
LABEL_59:
      if ((*&v39 & 0x20000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }
  }

  else if ((*&v39 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  v57 = [NSNumber numberWithBool:self->_protoFailureExpected, v58];
  [v4 setObject:v57 forKey:@"protoFailureExpected"];

  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_60:
    v40 = [NSNumber numberWithBool:self->_protoSupportsEmergencyFallback, v58];
    [v4 setObject:v40 forKey:@"protoSupportsEmergencyFallback"];
  }

LABEL_61:
  groupUUIDString = self->_groupUUIDString;
  if (groupUUIDString)
  {
    [v4 setObject:groupUUIDString forKey:@"groupUUIDString"];
  }

  if (*(&self->_has + 2))
  {
    v42 = [NSNumber numberWithBool:self->_protoSupportsDTMFUpdates];
    [v4 setObject:v42 forKey:@"protoSupportsDTMFUpdates"];
  }

  conversationGroupUUIDString = self->_conversationGroupUUIDString;
  if (conversationGroupUUIDString)
  {
    [v4 setObject:conversationGroupUUIDString forKey:@"conversationGroupUUIDString"];
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v44 = [NSNumber numberWithBool:self->_protoReceptionistCapable];
    [v4 setObject:v44 forKey:@"protoReceptionistCapable"];
  }

  v45 = v4;

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_uniqueProxyIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    protoStatus = self->_protoStatus;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((*&has & 0x80) != 0)
  {
    protoConferenced = self->_protoConferenced;
    PBDataWriterWriteBOOLField();
  }

  if (self->_destinationID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((*&v8 & 8) != 0)
  {
    protoService = self->_protoService;
    PBDataWriterWriteUint32Field();
    v8 = self->_has;
    if ((*&v8 & 0x400000) == 0)
    {
LABEL_13:
      if ((*&v8 & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_70;
    }
  }

  else if ((*&v8 & 0x400000) == 0)
  {
    goto LABEL_13;
  }

  protoWantsHoldMusic = self->_protoWantsHoldMusic;
  PBDataWriterWriteBOOLField();
  v8 = self->_has;
  if ((*&v8 & 2) == 0)
  {
LABEL_14:
    if ((*&v8 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_70:
  protoDisconnectedReason = self->_protoDisconnectedReason;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_15:
    protoVoicemail = self->_protoVoicemail;
    PBDataWriterWriteBOOLField();
  }

LABEL_16:
  if (self->_callerNameFromNetwork)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if (*&v10)
  {
    protoTimeConnected = self->_protoTimeConnected;
    PBDataWriterWriteDoubleField();
    v10 = self->_has;
    if ((*&v10 & 0x1000) == 0)
    {
LABEL_20:
      if ((*&v10 & 0x8000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_74;
    }
  }

  else if ((*&v10 & 0x1000) == 0)
  {
    goto LABEL_20;
  }

  protoOutgoing = self->_protoOutgoing;
  PBDataWriterWriteBOOLField();
  v10 = self->_has;
  if ((*&v10 & 0x8000) == 0)
  {
LABEL_21:
    if ((*&v10 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_75;
  }

LABEL_74:
  protoShouldSuppressRingtone = self->_protoShouldSuppressRingtone;
  PBDataWriterWriteBOOLField();
  v10 = self->_has;
  if ((*&v10 & 0x800) == 0)
  {
LABEL_22:
    if ((*&v10 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_76;
  }

LABEL_75:
  protoNeedsManualInCallSounds = self->_protoNeedsManualInCallSounds;
  PBDataWriterWriteBOOLField();
  v10 = self->_has;
  if ((*&v10 & 0x10) == 0)
  {
LABEL_23:
    if ((*&v10 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_77;
  }

LABEL_76:
  protoSoundRegion = self->_protoSoundRegion;
  PBDataWriterWriteUint32Field();
  v10 = self->_has;
  if ((*&v10 & 0x100) == 0)
  {
LABEL_24:
    if ((*&v10 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_77:
  protoEmergency = self->_protoEmergency;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_25:
    protoHasSentInvitation = self->_protoHasSentInvitation;
    PBDataWriterWriteBOOLField();
  }

LABEL_26:
  if (self->_handle)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    protoSOS = self->_protoSOS;
    PBDataWriterWriteBOOLField();
  }

  if (self->_protoProvider)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = self->_has;
  if ((*&v13 & 0x100000) != 0)
  {
    protoVideo = self->_protoVideo;
    PBDataWriterWriteBOOLField();
    v13 = self->_has;
  }

  if ((*&v13 & 0x80000) != 0)
  {
    protoUplinkMuted = self->_protoUplinkMuted;
    PBDataWriterWriteBOOLField();
  }

  if (self->_protoCallModel)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_localSenderIdentityUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = self->_remoteParticipantHandles;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      v20 = 0;
      do
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v40 + 1) + 8 * v20);
        PBDataWriterWriteSubmessage();
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v18);
  }

  if (self->_localSenderIdentityAccountUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  v22 = self->_has;
  if ((*&v22 & 0x40) != 0)
  {
    protoTTYType = self->_protoTTYType;
    PBDataWriterWriteUint32Field();
    v22 = self->_has;
  }

  if ((*&v22 & 0x40000) != 0)
  {
    protoSupportsTTYWithVoice = self->_protoSupportsTTYWithVoice;
    PBDataWriterWriteBOOLField();
  }

  if (self->_isoCountryCode)
  {
    PBDataWriterWriteStringField();
  }

  v25 = self->_has;
  if ((*&v25 & 4) != 0)
  {
    protoOriginatingUIType = self->_protoOriginatingUIType;
    PBDataWriterWriteUint32Field();
    v25 = self->_has;
    if ((*&v25 & 0x200) == 0)
    {
LABEL_57:
      if ((*&v25 & 0x20000) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }
  }

  else if ((*&v25 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  protoFailureExpected = self->_protoFailureExpected;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_58:
    protoSupportsEmergencyFallback = self->_protoSupportsEmergencyFallback;
    PBDataWriterWriteBOOLField();
  }

LABEL_59:
  if (self->_groupUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_has + 2))
  {
    protoSupportsDTMFUpdates = self->_protoSupportsDTMFUpdates;
    PBDataWriterWriteBOOLField();
  }

  if (self->_conversationGroupUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    protoReceptionistCapable = self->_protoReceptionistCapable;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v16 = toCopy;
  if (self->_uniqueProxyIdentifier)
  {
    [toCopy setUniqueProxyIdentifier:?];
    toCopy = v16;
  }

  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    *(toCopy + 28) = self->_protoStatus;
    *(toCopy + 40) |= 0x20u;
    has = self->_has;
  }

  if ((*&has & 0x80) != 0)
  {
    *(toCopy + 144) = self->_protoConferenced;
    *(toCopy + 40) |= 0x80u;
  }

  if (self->_destinationID)
  {
    [v16 setDestinationID:?];
    toCopy = v16;
  }

  if (self->_sourceIdentifier)
  {
    [v16 setSourceIdentifier:?];
    toCopy = v16;
  }

  v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
    *(toCopy + 26) = self->_protoService;
    *(toCopy + 40) |= 8u;
    v6 = self->_has;
    if ((*&v6 & 0x400000) == 0)
    {
LABEL_13:
      if ((*&v6 & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_69;
    }
  }

  else if ((*&v6 & 0x400000) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 159) = self->_protoWantsHoldMusic;
  *(toCopy + 40) |= 0x400000u;
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_14:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_69:
  *(toCopy + 22) = self->_protoDisconnectedReason;
  *(toCopy + 40) |= 2u;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_15:
    *(toCopy + 158) = self->_protoVoicemail;
    *(toCopy + 40) |= 0x200000u;
  }

LABEL_16:
  if (self->_callerNameFromNetwork)
  {
    [v16 setCallerNameFromNetwork:?];
    toCopy = v16;
  }

  v7 = self->_has;
  if (*&v7)
  {
    *(toCopy + 1) = *&self->_protoTimeConnected;
    *(toCopy + 40) |= 1u;
    v7 = self->_has;
    if ((*&v7 & 0x1000) == 0)
    {
LABEL_20:
      if ((*&v7 & 0x8000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_73;
    }
  }

  else if ((*&v7 & 0x1000) == 0)
  {
    goto LABEL_20;
  }

  *(toCopy + 149) = self->_protoOutgoing;
  *(toCopy + 40) |= 0x1000u;
  v7 = self->_has;
  if ((*&v7 & 0x8000) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(toCopy + 152) = self->_protoShouldSuppressRingtone;
  *(toCopy + 40) |= 0x8000u;
  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_22:
    if ((*&v7 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(toCopy + 148) = self->_protoNeedsManualInCallSounds;
  *(toCopy + 40) |= 0x800u;
  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(toCopy + 27) = self->_protoSoundRegion;
  *(toCopy + 40) |= 0x10u;
  v7 = self->_has;
  if ((*&v7 & 0x100) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_76:
  *(toCopy + 145) = self->_protoEmergency;
  *(toCopy + 40) |= 0x100u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_25:
    *(toCopy + 147) = self->_protoHasSentInvitation;
    *(toCopy + 40) |= 0x400u;
  }

LABEL_26:
  if (self->_handle)
  {
    [v16 setHandle:?];
    toCopy = v16;
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(toCopy + 151) = self->_protoSOS;
    *(toCopy + 40) |= 0x4000u;
  }

  if (self->_protoProvider)
  {
    [v16 setProtoProvider:?];
    toCopy = v16;
  }

  v8 = self->_has;
  if ((*&v8 & 0x100000) != 0)
  {
    *(toCopy + 157) = self->_protoVideo;
    *(toCopy + 40) |= 0x100000u;
    v8 = self->_has;
  }

  if ((*&v8 & 0x80000) != 0)
  {
    *(toCopy + 156) = self->_protoUplinkMuted;
    *(toCopy + 40) |= 0x80000u;
  }

  if (self->_protoCallModel)
  {
    [v16 setProtoCallModel:?];
  }

  if (self->_localSenderIdentityUUIDString)
  {
    [v16 setLocalSenderIdentityUUIDString:?];
  }

  if ([(CSDMessagingCall *)self remoteParticipantHandlesCount])
  {
    [v16 clearRemoteParticipantHandles];
    remoteParticipantHandlesCount = [(CSDMessagingCall *)self remoteParticipantHandlesCount];
    if (remoteParticipantHandlesCount)
    {
      v10 = remoteParticipantHandlesCount;
      for (i = 0; i != v10; ++i)
      {
        v12 = [(CSDMessagingCall *)self remoteParticipantHandlesAtIndex:i];
        [v16 addRemoteParticipantHandles:v12];
      }
    }
  }

  if (self->_localSenderIdentityAccountUUIDString)
  {
    [v16 setLocalSenderIdentityAccountUUIDString:?];
  }

  v13 = self->_has;
  v14 = v16;
  if ((*&v13 & 0x40) != 0)
  {
    *(v16 + 29) = self->_protoTTYType;
    *(v16 + 40) |= 0x40u;
    v13 = self->_has;
  }

  if ((*&v13 & 0x40000) != 0)
  {
    *(v16 + 155) = self->_protoSupportsTTYWithVoice;
    *(v16 + 40) |= 0x40000u;
  }

  if (self->_isoCountryCode)
  {
    [v16 setIsoCountryCode:?];
    v14 = v16;
  }

  v15 = self->_has;
  if ((*&v15 & 4) != 0)
  {
    v14[23] = self->_protoOriginatingUIType;
    v14[40] |= 4u;
    v15 = self->_has;
    if ((*&v15 & 0x200) == 0)
    {
LABEL_54:
      if ((*&v15 & 0x20000) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

  else if ((*&v15 & 0x200) == 0)
  {
    goto LABEL_54;
  }

  *(v14 + 146) = self->_protoFailureExpected;
  v14[40] |= 0x200u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_55:
    *(v14 + 154) = self->_protoSupportsEmergencyFallback;
    v14[40] |= 0x20000u;
  }

LABEL_56:
  if (self->_groupUUIDString)
  {
    [v16 setGroupUUIDString:?];
    v14 = v16;
  }

  if (*(&self->_has + 2))
  {
    *(v14 + 153) = self->_protoSupportsDTMFUpdates;
    v14[40] |= 0x10000u;
  }

  if (self->_conversationGroupUUIDString)
  {
    [v16 setConversationGroupUUIDString:?];
    v14 = v16;
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v14 + 150) = self->_protoReceptionistCapable;
    v14[40] |= 0x2000u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uniqueProxyIdentifier copyWithZone:zone];
  v7 = v5[17];
  v5[17] = v6;

  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    *(v5 + 28) = self->_protoStatus;
    *(v5 + 40) |= 0x20u;
    has = self->_has;
  }

  if ((*&has & 0x80) != 0)
  {
    *(v5 + 144) = self->_protoConferenced;
    *(v5 + 40) |= 0x80u;
  }

  v9 = [(NSString *)self->_destinationID copyWithZone:zone];
  v10 = v5[4];
  v5[4] = v9;

  v11 = [(NSString *)self->_sourceIdentifier copyWithZone:zone];
  v12 = v5[16];
  v5[16] = v11;

  v13 = self->_has;
  if ((*&v13 & 8) != 0)
  {
    *(v5 + 26) = self->_protoService;
    *(v5 + 40) |= 8u;
    v13 = self->_has;
    if ((*&v13 & 0x400000) == 0)
    {
LABEL_7:
      if ((*&v13 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_46;
    }
  }

  else if ((*&v13 & 0x400000) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 159) = self->_protoWantsHoldMusic;
  *(v5 + 40) |= 0x400000u;
  v13 = self->_has;
  if ((*&v13 & 2) == 0)
  {
LABEL_8:
    if ((*&v13 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_46:
  *(v5 + 22) = self->_protoDisconnectedReason;
  *(v5 + 40) |= 2u;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_9:
    *(v5 + 158) = self->_protoVoicemail;
    *(v5 + 40) |= 0x200000u;
  }

LABEL_10:
  v14 = [(NSString *)self->_callerNameFromNetwork copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  v16 = self->_has;
  if (*&v16)
  {
    v5[1] = *&self->_protoTimeConnected;
    *(v5 + 40) |= 1u;
    v16 = self->_has;
    if ((*&v16 & 0x1000) == 0)
    {
LABEL_12:
      if ((*&v16 & 0x8000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_50;
    }
  }

  else if ((*&v16 & 0x1000) == 0)
  {
    goto LABEL_12;
  }

  *(v5 + 149) = self->_protoOutgoing;
  *(v5 + 40) |= 0x1000u;
  v16 = self->_has;
  if ((*&v16 & 0x8000) == 0)
  {
LABEL_13:
    if ((*&v16 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 152) = self->_protoShouldSuppressRingtone;
  *(v5 + 40) |= 0x8000u;
  v16 = self->_has;
  if ((*&v16 & 0x800) == 0)
  {
LABEL_14:
    if ((*&v16 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 148) = self->_protoNeedsManualInCallSounds;
  *(v5 + 40) |= 0x800u;
  v16 = self->_has;
  if ((*&v16 & 0x10) == 0)
  {
LABEL_15:
    if ((*&v16 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 27) = self->_protoSoundRegion;
  *(v5 + 40) |= 0x10u;
  v16 = self->_has;
  if ((*&v16 & 0x100) == 0)
  {
LABEL_16:
    if ((*&v16 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_53:
  *(v5 + 145) = self->_protoEmergency;
  *(v5 + 40) |= 0x100u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_17:
    *(v5 + 147) = self->_protoHasSentInvitation;
    *(v5 + 40) |= 0x400u;
  }

LABEL_18:
  v17 = [(CSDMessagingHandle *)self->_handle copyWithZone:zone];
  v18 = v5[6];
  v5[6] = v17;

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v5 + 151) = self->_protoSOS;
    *(v5 + 40) |= 0x4000u;
  }

  v19 = [(CSDMessagingCallProvider *)self->_protoProvider copyWithZone:zone];
  v20 = v5[12];
  v5[12] = v19;

  v21 = self->_has;
  if ((*&v21 & 0x100000) != 0)
  {
    *(v5 + 157) = self->_protoVideo;
    *(v5 + 40) |= 0x100000u;
    v21 = self->_has;
  }

  if ((*&v21 & 0x80000) != 0)
  {
    *(v5 + 156) = self->_protoUplinkMuted;
    *(v5 + 40) |= 0x80000u;
  }

  v22 = [(CSDMessagingCallModel *)self->_protoCallModel copyWithZone:zone];
  v23 = v5[10];
  v5[10] = v22;

  v24 = [(NSString *)self->_localSenderIdentityUUIDString copyWithZone:zone];
  v25 = v5[9];
  v5[9] = v24;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = self->_remoteParticipantHandles;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v44;
    do
    {
      v30 = 0;
      do
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v43 + 1) + 8 * v30) copyWithZone:{zone, v43}];
        [v5 addRemoteParticipantHandles:v31];

        v30 = v30 + 1;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v28);
  }

  v32 = [(NSString *)self->_localSenderIdentityAccountUUIDString copyWithZone:zone];
  v33 = v5[8];
  v5[8] = v32;

  v34 = self->_has;
  if ((*&v34 & 0x40) != 0)
  {
    *(v5 + 29) = self->_protoTTYType;
    *(v5 + 40) |= 0x40u;
    v34 = self->_has;
  }

  if ((*&v34 & 0x40000) != 0)
  {
    *(v5 + 155) = self->_protoSupportsTTYWithVoice;
    *(v5 + 40) |= 0x40000u;
  }

  v35 = [(NSString *)self->_isoCountryCode copyWithZone:zone, v43];
  v36 = v5[7];
  v5[7] = v35;

  v37 = self->_has;
  if ((*&v37 & 4) != 0)
  {
    *(v5 + 23) = self->_protoOriginatingUIType;
    *(v5 + 40) |= 4u;
    v37 = self->_has;
    if ((*&v37 & 0x200) == 0)
    {
LABEL_37:
      if ((*&v37 & 0x20000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else if ((*&v37 & 0x200) == 0)
  {
    goto LABEL_37;
  }

  *(v5 + 146) = self->_protoFailureExpected;
  *(v5 + 40) |= 0x200u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_38:
    *(v5 + 154) = self->_protoSupportsEmergencyFallback;
    *(v5 + 40) |= 0x20000u;
  }

LABEL_39:
  v38 = [(NSString *)self->_groupUUIDString copyWithZone:zone];
  v39 = v5[5];
  v5[5] = v38;

  if (*(&self->_has + 2))
  {
    *(v5 + 153) = self->_protoSupportsDTMFUpdates;
    *(v5 + 40) |= 0x10000u;
  }

  v40 = [(NSString *)self->_conversationGroupUUIDString copyWithZone:zone];
  v41 = v5[3];
  v5[3] = v40;

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v5 + 150) = self->_protoReceptionistCapable;
    *(v5 + 40) |= 0x2000u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  uniqueProxyIdentifier = self->_uniqueProxyIdentifier;
  if (uniqueProxyIdentifier | *(equalCopy + 17))
  {
    if (![(NSString *)uniqueProxyIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 40);
  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_protoStatus != *(equalCopy + 28))
    {
      goto LABEL_19;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_19;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    v14 = *(equalCopy + 144);
    if (self->_protoConferenced)
    {
      if ((*(equalCopy + 144) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 144))
    {
      goto LABEL_19;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_19;
  }

  destinationID = self->_destinationID;
  if (destinationID | *(equalCopy + 4) && ![(NSString *)destinationID isEqual:?])
  {
    goto LABEL_19;
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier | *(equalCopy + 16))
  {
    if (![(NSString *)sourceIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = self->_has;
  v11 = *(equalCopy + 40);
  if ((*&v10 & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_protoService != *(equalCopy + 26))
    {
      goto LABEL_19;
    }
  }

  else if ((v11 & 8) != 0)
  {
    goto LABEL_19;
  }

  if ((*&v10 & 0x400000) != 0)
  {
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    v15 = *(equalCopy + 159);
    if (self->_protoWantsHoldMusic)
    {
      if ((*(equalCopy + 159) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 159))
    {
      goto LABEL_19;
    }
  }

  else if ((v11 & 0x400000) != 0)
  {
    goto LABEL_19;
  }

  if ((*&v10 & 2) != 0)
  {
    if ((v11 & 2) == 0 || self->_protoDisconnectedReason != *(equalCopy + 22))
    {
      goto LABEL_19;
    }
  }

  else if ((v11 & 2) != 0)
  {
    goto LABEL_19;
  }

  if ((*&v10 & 0x200000) != 0)
  {
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    v18 = *(equalCopy + 158);
    if (self->_protoVoicemail)
    {
      if ((*(equalCopy + 158) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 158))
    {
      goto LABEL_19;
    }
  }

  else if ((v11 & 0x200000) != 0)
  {
    goto LABEL_19;
  }

  callerNameFromNetwork = self->_callerNameFromNetwork;
  if (callerNameFromNetwork | *(equalCopy + 2))
  {
    if (![(NSString *)callerNameFromNetwork isEqual:?])
    {
      goto LABEL_19;
    }

    v10 = self->_has;
  }

  v17 = *(equalCopy + 40);
  if (*&v10)
  {
    if ((v17 & 1) == 0 || self->_protoTimeConnected != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (v17)
  {
    goto LABEL_19;
  }

  if ((*&v10 & 0x1000) != 0)
  {
    if ((v17 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    v19 = *(equalCopy + 149);
    if (self->_protoOutgoing)
    {
      if ((*(equalCopy + 149) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 149))
    {
      goto LABEL_19;
    }
  }

  else if ((v17 & 0x1000) != 0)
  {
    goto LABEL_19;
  }

  if ((*&v10 & 0x8000) != 0)
  {
    if ((v17 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    v20 = *(equalCopy + 152);
    if (self->_protoShouldSuppressRingtone)
    {
      if ((*(equalCopy + 152) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 152))
    {
      goto LABEL_19;
    }
  }

  else if ((v17 & 0x8000) != 0)
  {
    goto LABEL_19;
  }

  if ((*&v10 & 0x800) != 0)
  {
    if ((v17 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    v21 = *(equalCopy + 148);
    if (self->_protoNeedsManualInCallSounds)
    {
      if ((*(equalCopy + 148) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 148))
    {
      goto LABEL_19;
    }
  }

  else if ((v17 & 0x800) != 0)
  {
    goto LABEL_19;
  }

  if ((*&v10 & 0x10) != 0)
  {
    if ((v17 & 0x10) == 0 || self->_protoSoundRegion != *(equalCopy + 27))
    {
      goto LABEL_19;
    }
  }

  else if ((v17 & 0x10) != 0)
  {
    goto LABEL_19;
  }

  if ((*&v10 & 0x100) != 0)
  {
    if ((v17 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    v32 = *(equalCopy + 145);
    if (self->_protoEmergency)
    {
      if ((*(equalCopy + 145) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 145))
    {
      goto LABEL_19;
    }
  }

  else if ((v17 & 0x100) != 0)
  {
    goto LABEL_19;
  }

  if ((*&v10 & 0x400) != 0)
  {
    if ((v17 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    v33 = *(equalCopy + 147);
    if (self->_protoHasSentInvitation)
    {
      if ((*(equalCopy + 147) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 147))
    {
      goto LABEL_19;
    }
  }

  else if ((v17 & 0x400) != 0)
  {
    goto LABEL_19;
  }

  handle = self->_handle;
  if (handle | *(equalCopy + 6))
  {
    if (![(CSDMessagingHandle *)handle isEqual:?])
    {
      goto LABEL_19;
    }

    v10 = self->_has;
  }

  v23 = *(equalCopy + 40);
  if ((*&v10 & 0x4000) != 0)
  {
    if ((v23 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    v34 = *(equalCopy + 151);
    if (self->_protoSOS)
    {
      if ((*(equalCopy + 151) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 151))
    {
      goto LABEL_19;
    }
  }

  else if ((v23 & 0x4000) != 0)
  {
    goto LABEL_19;
  }

  protoProvider = self->_protoProvider;
  if (protoProvider | *(equalCopy + 12))
  {
    if (![(CSDMessagingCallProvider *)protoProvider isEqual:?])
    {
      goto LABEL_19;
    }

    v10 = self->_has;
  }

  v25 = *(equalCopy + 40);
  if ((*&v10 & 0x100000) != 0)
  {
    if ((v25 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    v35 = *(equalCopy + 157);
    if (self->_protoVideo)
    {
      if ((*(equalCopy + 157) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 157))
    {
      goto LABEL_19;
    }
  }

  else if ((v25 & 0x100000) != 0)
  {
    goto LABEL_19;
  }

  if ((*&v10 & 0x80000) != 0)
  {
    if ((v25 & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    v36 = *(equalCopy + 156);
    if (self->_protoUplinkMuted)
    {
      if ((*(equalCopy + 156) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 156))
    {
      goto LABEL_19;
    }
  }

  else if ((v25 & 0x80000) != 0)
  {
    goto LABEL_19;
  }

  protoCallModel = self->_protoCallModel;
  if (protoCallModel | *(equalCopy + 10) && ![(CSDMessagingCallModel *)protoCallModel isEqual:?])
  {
    goto LABEL_19;
  }

  localSenderIdentityUUIDString = self->_localSenderIdentityUUIDString;
  if (localSenderIdentityUUIDString | *(equalCopy + 9))
  {
    if (![(NSString *)localSenderIdentityUUIDString isEqual:?])
    {
      goto LABEL_19;
    }
  }

  remoteParticipantHandles = self->_remoteParticipantHandles;
  if (remoteParticipantHandles | *(equalCopy + 15))
  {
    if (![(NSMutableArray *)remoteParticipantHandles isEqual:?])
    {
      goto LABEL_19;
    }
  }

  localSenderIdentityAccountUUIDString = self->_localSenderIdentityAccountUUIDString;
  if (localSenderIdentityAccountUUIDString | *(equalCopy + 8))
  {
    if (![(NSString *)localSenderIdentityAccountUUIDString isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v30 = self->_has;
  v31 = *(equalCopy + 40);
  if ((*&v30 & 0x40) != 0)
  {
    if ((v31 & 0x40) == 0 || self->_protoTTYType != *(equalCopy + 29))
    {
      goto LABEL_19;
    }
  }

  else if ((v31 & 0x40) != 0)
  {
    goto LABEL_19;
  }

  if ((*&v30 & 0x40000) != 0)
  {
    if ((v31 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    v37 = *(equalCopy + 155);
    if (self->_protoSupportsTTYWithVoice)
    {
      if ((*(equalCopy + 155) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 155))
    {
      goto LABEL_19;
    }
  }

  else if ((v31 & 0x40000) != 0)
  {
    goto LABEL_19;
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode | *(equalCopy + 7))
  {
    if (![(NSString *)isoCountryCode isEqual:?])
    {
      goto LABEL_19;
    }

    v30 = self->_has;
  }

  v39 = *(equalCopy + 40);
  if ((*&v30 & 4) != 0)
  {
    if ((v39 & 4) == 0 || self->_protoOriginatingUIType != *(equalCopy + 23))
    {
      goto LABEL_19;
    }
  }

  else if ((v39 & 4) != 0)
  {
    goto LABEL_19;
  }

  if ((*&v30 & 0x200) != 0)
  {
    if ((v39 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    v42 = *(equalCopy + 146);
    if (self->_protoFailureExpected)
    {
      if ((*(equalCopy + 146) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 146))
    {
      goto LABEL_19;
    }
  }

  else if ((v39 & 0x200) != 0)
  {
    goto LABEL_19;
  }

  if ((*&v30 & 0x20000) != 0)
  {
    if ((v39 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    v43 = *(equalCopy + 154);
    if (self->_protoSupportsEmergencyFallback)
    {
      if ((*(equalCopy + 154) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 154))
    {
      goto LABEL_19;
    }
  }

  else if ((v39 & 0x20000) != 0)
  {
    goto LABEL_19;
  }

  groupUUIDString = self->_groupUUIDString;
  if (groupUUIDString | *(equalCopy + 5))
  {
    if (![(NSString *)groupUUIDString isEqual:?])
    {
      goto LABEL_19;
    }

    v30 = self->_has;
  }

  v41 = *(equalCopy + 40);
  if ((*&v30 & 0x10000) != 0)
  {
    if ((v41 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    v44 = *(equalCopy + 153);
    if (self->_protoSupportsDTMFUpdates)
    {
      if ((*(equalCopy + 153) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 153))
    {
      goto LABEL_19;
    }
  }

  else if ((v41 & 0x10000) != 0)
  {
    goto LABEL_19;
  }

  conversationGroupUUIDString = self->_conversationGroupUUIDString;
  if (conversationGroupUUIDString | *(equalCopy + 3))
  {
    if (![(NSString *)conversationGroupUUIDString isEqual:?])
    {
      goto LABEL_19;
    }

    v30 = self->_has;
  }

  if ((*&v30 & 0x2000) == 0)
  {
    v12 = (*(equalCopy + 40) & 0x2000) == 0;
    goto LABEL_20;
  }

  if ((*(equalCopy + 40) & 0x2000) != 0)
  {
    if (self->_protoReceptionistCapable)
    {
      if (*(equalCopy + 150))
      {
        goto LABEL_198;
      }
    }

    else if (!*(equalCopy + 150))
    {
LABEL_198:
      v12 = 1;
      goto LABEL_20;
    }
  }

LABEL_19:
  v12 = 0;
LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  v52 = [(NSString *)self->_uniqueProxyIdentifier hash];
  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    v51 = 2654435761 * self->_protoStatus;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v51 = 0;
    if ((*&has & 0x80) != 0)
    {
LABEL_3:
      v50 = 2654435761 * self->_protoConferenced;
      goto LABEL_6;
    }
  }

  v50 = 0;
LABEL_6:
  v49 = [(NSString *)self->_destinationID hash];
  v48 = [(NSString *)self->_sourceIdentifier hash];
  v4 = self->_has;
  if ((*&v4 & 8) != 0)
  {
    v47 = 2654435761 * self->_protoService;
    if ((*&v4 & 0x400000) != 0)
    {
LABEL_8:
      v46 = 2654435761 * self->_protoWantsHoldMusic;
      if ((*&v4 & 2) != 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      v45 = 0;
      if ((*&v4 & 0x200000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v47 = 0;
    if ((*&v4 & 0x400000) != 0)
    {
      goto LABEL_8;
    }
  }

  v46 = 0;
  if ((*&v4 & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v45 = 2654435761 * self->_protoDisconnectedReason;
  if ((*&v4 & 0x200000) != 0)
  {
LABEL_10:
    v44 = 2654435761 * self->_protoVoicemail;
    goto LABEL_15;
  }

LABEL_14:
  v44 = 0;
LABEL_15:
  v43 = [(NSString *)self->_callerNameFromNetwork hash];
  v7 = self->_has;
  if (*&v7)
  {
    protoTimeConnected = self->_protoTimeConnected;
    if (protoTimeConnected < 0.0)
    {
      protoTimeConnected = -protoTimeConnected;
    }

    *v5.i64 = floor(protoTimeConnected + 0.5);
    v10 = (protoTimeConnected - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
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

  if ((*&v7 & 0x1000) != 0)
  {
    v41 = 2654435761 * self->_protoOutgoing;
    if ((*&v7 & 0x8000) != 0)
    {
LABEL_25:
      v40 = 2654435761 * self->_protoShouldSuppressRingtone;
      if ((*&v7 & 0x800) != 0)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v41 = 0;
    if ((*&v7 & 0x8000) != 0)
    {
      goto LABEL_25;
    }
  }

  v40 = 0;
  if ((*&v7 & 0x800) != 0)
  {
LABEL_26:
    v39 = 2654435761 * self->_protoNeedsManualInCallSounds;
    if ((*&v7 & 0x10) != 0)
    {
      goto LABEL_27;
    }

LABEL_32:
    v38 = 0;
    if ((*&v7 & 0x100) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

LABEL_31:
  v39 = 0;
  if ((*&v7 & 0x10) == 0)
  {
    goto LABEL_32;
  }

LABEL_27:
  v38 = 2654435761 * self->_protoSoundRegion;
  if ((*&v7 & 0x100) != 0)
  {
LABEL_28:
    v37 = 2654435761 * self->_protoEmergency;
    goto LABEL_34;
  }

LABEL_33:
  v37 = 0;
LABEL_34:
  v42 = v8;
  if ((*&v7 & 0x400) != 0)
  {
    v36 = 2654435761 * self->_protoHasSentInvitation;
  }

  else
  {
    v36 = 0;
  }

  v35 = [(CSDMessagingHandle *)self->_handle hash];
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v34 = 2654435761 * self->_protoSOS;
  }

  else
  {
    v34 = 0;
  }

  v33 = [(CSDMessagingCallProvider *)self->_protoProvider hash];
  v12 = self->_has;
  if ((*&v12 & 0x100000) != 0)
  {
    v32 = 2654435761 * self->_protoVideo;
    if ((*&v12 & 0x80000) != 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v32 = 0;
    if ((*&v12 & 0x80000) != 0)
    {
LABEL_42:
      v31 = 2654435761 * self->_protoUplinkMuted;
      goto LABEL_45;
    }
  }

  v31 = 0;
LABEL_45:
  v30 = [(CSDMessagingCallModel *)self->_protoCallModel hash];
  v29 = [(NSString *)self->_localSenderIdentityUUIDString hash];
  v28 = [(NSMutableArray *)self->_remoteParticipantHandles hash];
  v27 = [(NSString *)self->_localSenderIdentityAccountUUIDString hash];
  v13 = self->_has;
  if ((*&v13 & 0x40) != 0)
  {
    v25 = 2654435761 * self->_protoTTYType;
    if ((*&v13 & 0x40000) != 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v25 = 0;
    if ((*&v13 & 0x40000) != 0)
    {
LABEL_47:
      v14 = 2654435761 * self->_protoSupportsTTYWithVoice;
      goto LABEL_50;
    }
  }

  v14 = 0;
LABEL_50:
  v15 = [(NSString *)self->_isoCountryCode hash];
  v16 = self->_has;
  if ((*&v16 & 4) == 0)
  {
    v17 = 0;
    if ((*&v16 & 0x200) != 0)
    {
      goto LABEL_52;
    }

LABEL_55:
    v18 = 0;
    if ((*&v16 & 0x20000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_56;
  }

  v17 = 2654435761 * self->_protoOriginatingUIType;
  if ((*&v16 & 0x200) == 0)
  {
    goto LABEL_55;
  }

LABEL_52:
  v18 = 2654435761 * self->_protoFailureExpected;
  if ((*&v16 & 0x20000) != 0)
  {
LABEL_53:
    v19 = 2654435761 * self->_protoSupportsEmergencyFallback;
    goto LABEL_57;
  }

LABEL_56:
  v19 = 0;
LABEL_57:
  v20 = [(NSString *)self->_groupUUIDString hash];
  if (*(&self->_has + 2))
  {
    v21 = 2654435761 * self->_protoSupportsDTMFUpdates;
  }

  else
  {
    v21 = 0;
  }

  v22 = [(NSString *)self->_conversationGroupUUIDString hash];
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v23 = 2654435761 * self->_protoReceptionistCapable;
  }

  else
  {
    v23 = 0;
  }

  return v51 ^ v52 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v14 ^ v15 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 17))
  {
    [(CSDMessagingCall *)self setUniqueProxyIdentifier:?];
  }

  v5 = *(fromCopy + 40);
  if ((v5 & 0x20) != 0)
  {
    self->_protoStatus = *(fromCopy + 28);
    *&self->_has |= 0x20u;
    v5 = *(fromCopy + 40);
  }

  if ((v5 & 0x80) != 0)
  {
    self->_protoConferenced = *(fromCopy + 144);
    *&self->_has |= 0x80u;
  }

  if (*(fromCopy + 4))
  {
    [(CSDMessagingCall *)self setDestinationID:?];
  }

  if (*(fromCopy + 16))
  {
    [(CSDMessagingCall *)self setSourceIdentifier:?];
  }

  v6 = *(fromCopy + 40);
  if ((v6 & 8) != 0)
  {
    self->_protoService = *(fromCopy + 26);
    *&self->_has |= 8u;
    v6 = *(fromCopy + 40);
    if ((v6 & 0x400000) == 0)
    {
LABEL_13:
      if ((v6 & 2) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_31;
    }
  }

  else if ((v6 & 0x400000) == 0)
  {
    goto LABEL_13;
  }

  self->_protoWantsHoldMusic = *(fromCopy + 159);
  *&self->_has |= 0x400000u;
  v6 = *(fromCopy + 40);
  if ((v6 & 2) == 0)
  {
LABEL_14:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  self->_protoDisconnectedReason = *(fromCopy + 22);
  *&self->_has |= 2u;
  if ((*(fromCopy + 40) & 0x200000) != 0)
  {
LABEL_15:
    self->_protoVoicemail = *(fromCopy + 158);
    *&self->_has |= 0x200000u;
  }

LABEL_16:
  if (*(fromCopy + 2))
  {
    [(CSDMessagingCall *)self setCallerNameFromNetwork:?];
  }

  v7 = *(fromCopy + 40);
  if (v7)
  {
    self->_protoTimeConnected = *(fromCopy + 1);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 40);
    if ((v7 & 0x1000) == 0)
    {
LABEL_20:
      if ((v7 & 0x8000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

  else if ((v7 & 0x1000) == 0)
  {
    goto LABEL_20;
  }

  self->_protoOutgoing = *(fromCopy + 149);
  *&self->_has |= 0x1000u;
  v7 = *(fromCopy + 40);
  if ((v7 & 0x8000) == 0)
  {
LABEL_21:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_protoShouldSuppressRingtone = *(fromCopy + 152);
  *&self->_has |= 0x8000u;
  v7 = *(fromCopy + 40);
  if ((v7 & 0x800) == 0)
  {
LABEL_22:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_protoNeedsManualInCallSounds = *(fromCopy + 148);
  *&self->_has |= 0x800u;
  v7 = *(fromCopy + 40);
  if ((v7 & 0x10) == 0)
  {
LABEL_23:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_protoSoundRegion = *(fromCopy + 27);
  *&self->_has |= 0x10u;
  v7 = *(fromCopy + 40);
  if ((v7 & 0x100) == 0)
  {
LABEL_24:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_38:
  self->_protoEmergency = *(fromCopy + 145);
  *&self->_has |= 0x100u;
  if ((*(fromCopy + 40) & 0x400) != 0)
  {
LABEL_25:
    self->_protoHasSentInvitation = *(fromCopy + 147);
    *&self->_has |= 0x400u;
  }

LABEL_26:
  handle = self->_handle;
  v9 = *(fromCopy + 6);
  if (handle)
  {
    if (v9)
    {
      [(CSDMessagingHandle *)handle mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(CSDMessagingCall *)self setHandle:?];
  }

  if ((*(fromCopy + 161) & 0x40) != 0)
  {
    self->_protoSOS = *(fromCopy + 151);
    *&self->_has |= 0x4000u;
  }

  protoProvider = self->_protoProvider;
  v11 = *(fromCopy + 12);
  if (protoProvider)
  {
    if (v11)
    {
      [(CSDMessagingCallProvider *)protoProvider mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(CSDMessagingCall *)self setProtoProvider:?];
  }

  v12 = *(fromCopy + 40);
  if ((v12 & 0x100000) != 0)
  {
    self->_protoVideo = *(fromCopy + 157);
    *&self->_has |= 0x100000u;
    v12 = *(fromCopy + 40);
  }

  if ((v12 & 0x80000) != 0)
  {
    self->_protoUplinkMuted = *(fromCopy + 156);
    *&self->_has |= 0x80000u;
  }

  protoCallModel = self->_protoCallModel;
  v14 = *(fromCopy + 10);
  if (protoCallModel)
  {
    if (v14)
    {
      [(CSDMessagingCallModel *)protoCallModel mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(CSDMessagingCall *)self setProtoCallModel:?];
  }

  if (*(fromCopy + 9))
  {
    [(CSDMessagingCall *)self setLocalSenderIdentityUUIDString:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = *(fromCopy + 15);
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(CSDMessagingCall *)self addRemoteParticipantHandles:*(*(&v22 + 1) + 8 * i), v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

  if (*(fromCopy + 8))
  {
    [(CSDMessagingCall *)self setLocalSenderIdentityAccountUUIDString:?];
  }

  v20 = *(fromCopy + 40);
  if ((v20 & 0x40) != 0)
  {
    self->_protoTTYType = *(fromCopy + 29);
    *&self->_has |= 0x40u;
    v20 = *(fromCopy + 40);
  }

  if ((v20 & 0x40000) != 0)
  {
    self->_protoSupportsTTYWithVoice = *(fromCopy + 155);
    *&self->_has |= 0x40000u;
  }

  if (*(fromCopy + 7))
  {
    [(CSDMessagingCall *)self setIsoCountryCode:?];
  }

  v21 = *(fromCopy + 40);
  if ((v21 & 4) != 0)
  {
    self->_protoOriginatingUIType = *(fromCopy + 23);
    *&self->_has |= 4u;
    v21 = *(fromCopy + 40);
    if ((v21 & 0x200) == 0)
    {
LABEL_77:
      if ((v21 & 0x20000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }
  }

  else if ((v21 & 0x200) == 0)
  {
    goto LABEL_77;
  }

  self->_protoFailureExpected = *(fromCopy + 146);
  *&self->_has |= 0x200u;
  if ((*(fromCopy + 40) & 0x20000) != 0)
  {
LABEL_78:
    self->_protoSupportsEmergencyFallback = *(fromCopy + 154);
    *&self->_has |= 0x20000u;
  }

LABEL_79:
  if (*(fromCopy + 5))
  {
    [(CSDMessagingCall *)self setGroupUUIDString:?];
  }

  if (*(fromCopy + 162))
  {
    self->_protoSupportsDTMFUpdates = *(fromCopy + 153);
    *&self->_has |= 0x10000u;
  }

  if (*(fromCopy + 3))
  {
    [(CSDMessagingCall *)self setConversationGroupUUIDString:?];
  }

  if ((*(fromCopy + 161) & 0x20) != 0)
  {
    self->_protoReceptionistCapable = *(fromCopy + 150);
    *&self->_has |= 0x2000u;
  }
}

- (CSDMessagingCall)initWithCall:(id)call
{
  callCopy = call;
  v5 = [(CSDMessagingCall *)self init];
  if (v5)
  {
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    [(CSDMessagingCall *)v5 setUniqueProxyIdentifier:uniqueProxyIdentifier];

    -[CSDMessagingCall setStatus:](v5, "setStatus:", [callCopy status]);
    -[CSDMessagingCall setConferenced:](v5, "setConferenced:", [callCopy isConferenced]);
    handle = [callCopy handle];
    [(CSDMessagingCall *)v5 setTuHandle:handle];

    sourceIdentifier = [callCopy sourceIdentifier];
    [(CSDMessagingCall *)v5 setSourceIdentifier:sourceIdentifier];

    provider = [callCopy provider];
    [(CSDMessagingCall *)v5 setTuProvider:provider];

    -[CSDMessagingCall setVideo:](v5, "setVideo:", [callCopy isVideo]);
    -[CSDMessagingCall setDisconnectedReason:](v5, "setDisconnectedReason:", [callCopy disconnectedReason]);
    -[CSDMessagingCall setWantsHoldMusic:](v5, "setWantsHoldMusic:", [callCopy wantsHoldMusic]);
    -[CSDMessagingCall setVoicemail:](v5, "setVoicemail:", [callCopy isVoicemail]);
    callerNameFromNetwork = [callCopy callerNameFromNetwork];
    [(CSDMessagingCall *)v5 setCallerNameFromNetwork:callerNameFromNetwork];

    dateConnected = [callCopy dateConnected];
    [(CSDMessagingCall *)v5 setDateConnected:dateConnected];

    -[CSDMessagingCall setOutgoing:](v5, "setOutgoing:", [callCopy isOutgoing]);
    -[CSDMessagingCall setShouldSuppressRingtone:](v5, "setShouldSuppressRingtone:", [callCopy shouldSuppressRingtone]);
    -[CSDMessagingCall setNeedsManualInCallSounds:](v5, "setNeedsManualInCallSounds:", [callCopy needsManualInCallSounds]);
    -[CSDMessagingCall setSoundRegion:](v5, "setSoundRegion:", [callCopy soundRegion]);
    -[CSDMessagingCall setEmergency:](v5, "setEmergency:", [callCopy isEmergency]);
    -[CSDMessagingCall setFailureExpected:](v5, "setFailureExpected:", [callCopy isFailureExpected]);
    -[CSDMessagingCall setSupportsEmergencyFallback:](v5, "setSupportsEmergencyFallback:", [callCopy supportsEmergencyFallback]);
    -[CSDMessagingCall setSOS:](v5, "setSOS:", [callCopy isSOS]);
    -[CSDMessagingCall setSupportsDTMFUpdates:](v5, "setSupportsDTMFUpdates:", [callCopy supportsDTMFUpdates]);
    -[CSDMessagingCall setHasSentInvitation:](v5, "setHasSentInvitation:", [callCopy hasSentInvitation]);
    if ([callCopy wantsHoldMusic])
    {
      isUplinkMuted = 0;
    }

    else
    {
      isUplinkMuted = [callCopy isUplinkMuted];
    }

    [(CSDMessagingCall *)v5 setUplinkMuted:isUplinkMuted];
    model = [callCopy model];
    [(CSDMessagingCall *)v5 setCallModel:model];

    localSenderIdentityUUID = [callCopy localSenderIdentityUUID];
    [(CSDMessagingCall *)v5 setLocalSenderIdentityUUID:localSenderIdentityUUID];

    localSenderIdentityAccountUUID = [callCopy localSenderIdentityAccountUUID];
    [(CSDMessagingCall *)v5 setLocalSenderIdentityAccountUUID:localSenderIdentityAccountUUID];

    remoteParticipantHandles = [callCopy remoteParticipantHandles];
    [(CSDMessagingCall *)v5 setRemoteParticipantTUHandles:remoteParticipantHandles];

    -[CSDMessagingCall setTtyType:](v5, "setTtyType:", [callCopy ttyType]);
    -[CSDMessagingCall setSupportsTTYWithVoice:](v5, "setSupportsTTYWithVoice:", [callCopy supportsTTYWithVoice]);
    -[CSDMessagingCall setOriginatingUIType:](v5, "setOriginatingUIType:", [callCopy originatingUIType]);
    callGroupUUID = [callCopy callGroupUUID];
    uUIDString = [callGroupUUID UUIDString];
    [(CSDMessagingCall *)v5 setGroupUUIDString:uUIDString];

    conversationGroupUUID = [callCopy conversationGroupUUID];
    uUIDString2 = [conversationGroupUUID UUIDString];
    [(CSDMessagingCall *)v5 setConversationGroupUUIDString:uUIDString2];

    -[CSDMessagingCall setReceptionistCapable:](v5, "setReceptionistCapable:", [callCopy isReceptionistCapable]);
  }

  return v5;
}

- (void)setSoundRegion:(int64_t)region
{
  if (self->_protoSoundRegion != region)
  {
    self->_protoSoundRegion = region;
  }
}

- (void)updateRelayCall:(id)call
{
  callCopy = call;
  tuProvider = [(CSDMessagingCall *)self tuProvider];

  if (tuProvider)
  {
    tuProvider2 = [(CSDMessagingCall *)self tuProvider];
    [callCopy setProvider:tuProvider2];
  }

  [callCopy setCallStatus:{-[CSDMessagingCall status](self, "status")}];
  handle = [(CSDMessagingCall *)self handle];
  tuHandle = [handle tuHandle];
  [callCopy setHandle:tuHandle];

  isoCountryCode = [(CSDMessagingCall *)self isoCountryCode];
  [callCopy setIsoCountryCode:isoCountryCode];

  sourceIdentifier = [(CSDMessagingCall *)self sourceIdentifier];
  [callCopy setSourceIdentifier:sourceIdentifier];

  [callCopy setDisconnectedReason:{-[CSDMessagingCall disconnectedReason](self, "disconnectedReason")}];
  [callCopy setWantsHoldMusic:{-[CSDMessagingCall wantsHoldMusic](self, "wantsHoldMusic")}];
  [callCopy setVoicemail:{-[CSDMessagingCall isVoicemail](self, "isVoicemail")}];
  callerNameFromNetwork = [(CSDMessagingCall *)self callerNameFromNetwork];
  [callCopy setCallerNameFromNetwork:callerNameFromNetwork];

  dateConnected = [(CSDMessagingCall *)self dateConnected];
  [callCopy setDateConnected:dateConnected];

  [callCopy setOutgoing:{-[CSDMessagingCall isOutgoing](self, "isOutgoing")}];
  [callCopy setVideo:{-[CSDMessagingCall isVideo](self, "isVideo")}];
  [callCopy setShouldSuppressRingtone:{-[CSDMessagingCall shouldSuppressRingtone](self, "shouldSuppressRingtone")}];
  [callCopy setNeedsManualInCallSounds:{-[CSDMessagingCall needsManualInCallSounds](self, "needsManualInCallSounds")}];
  [callCopy setSoundRegion:{-[CSDMessagingCall soundRegion](self, "soundRegion")}];
  [callCopy setEmergency:{-[CSDMessagingCall isEmergency](self, "isEmergency")}];
  [callCopy setFailureExpected:{-[CSDMessagingCall isFailureExpected](self, "isFailureExpected")}];
  [callCopy setSupportsEmergencyFallback:{-[CSDMessagingCall supportsEmergencyFallback](self, "supportsEmergencyFallback")}];
  [callCopy setSOS:{-[CSDMessagingCall isSOS](self, "isSOS")}];
  [callCopy setSupportsDTMFUpdates:{-[CSDMessagingCall supportsDTMFUpdates](self, "supportsDTMFUpdates")}];
  [callCopy setUplinkMuted:{-[CSDMessagingCall isUplinkMuted](self, "isUplinkMuted")}];
  localSenderIdentityUUID = [(CSDMessagingCall *)self localSenderIdentityUUID];
  [callCopy setLocalSenderIdentityUUID:localSenderIdentityUUID];

  localSenderIdentityAccountUUID = [(CSDMessagingCall *)self localSenderIdentityAccountUUID];
  [callCopy setLocalSenderIdentityAccountUUID:localSenderIdentityAccountUUID];

  remoteParticipantTUHandles = [(CSDMessagingCall *)self remoteParticipantTUHandles];
  [callCopy setRemoteParticipantHandles:remoteParticipantTUHandles];

  [callCopy setTtyType:{-[CSDMessagingCall ttyType](self, "ttyType")}];
  [callCopy setSupportsTTYWithVoice:{-[CSDMessagingCall supportsTTYWithVoice](self, "supportsTTYWithVoice")}];
  [callCopy setOriginatingUIType:{-[CSDMessagingCall originatingUIType](self, "originatingUIType")}];
  [callCopy setReceptionistCapable:{-[CSDMessagingCall isReceptionistCapable](self, "isReceptionistCapable")}];
  callModel = [(CSDMessagingCall *)self callModel];

  if (callModel)
  {
    callModel2 = [(CSDMessagingCall *)self callModel];
    [callCopy setModel:callModel2];
  }

  if ([(CSDMessagingCall *)self hasSentInvitation])
  {
    [callCopy setLocallyHasSentInvitation];
  }

  if ([(CSDMessagingCall *)self hasConversationGroupUUIDString])
  {
    v18 = [NSUUID alloc];
    conversationGroupUUIDString = [(CSDMessagingCall *)self conversationGroupUUIDString];
    v20 = [v18 initWithUUIDString:conversationGroupUUIDString];

    if (v20)
    {
      [callCopy setConversationGroupUUID:v20];
      [callCopy setConversation:1];
    }

    else
    {
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        conversationGroupUUIDString2 = [(CSDMessagingCall *)self conversationGroupUUIDString];
        v26 = 138412290;
        v27 = conversationGroupUUIDString2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to updateRelayCall with invalid conversationGroupUUID: %@", &v26, 0xCu);
      }
    }
  }

  if (-[CSDMessagingCall hasGroupUUIDString](self, "hasGroupUUIDString") && (v22 = [NSUUID alloc], -[CSDMessagingCall groupUUIDString](self, "groupUUIDString"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v22 initWithUUIDString:v23], v23, v24))
  {
    [callCopy setCallGroupUUID:v24];
    [callCopy setConversation:1];
  }

  else if ([(CSDMessagingCall *)self isConferenced])
  {
    v25 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
    [callCopy setCallGroupUUID:v25];
  }

  else
  {
    [callCopy setCallGroupUUID:0];
  }
}

- (BOOL)isEqualToCall:(id)call
{
  callCopy = call;
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  uniqueProxyIdentifier2 = [(CSDMessagingCall *)self uniqueProxyIdentifier];
  if (TUStringsAreEqualOrNil() && (v7 = [callCopy status], v7 == -[CSDMessagingCall status](self, "status")) && (v8 = objc_msgSend(callCopy, "isConferenced"), v8 == -[CSDMessagingCall isConferenced](self, "isConferenced")))
  {
    tuHandle = [(CSDMessagingCall *)self tuHandle];
    handle = [callCopy handle];
    if (TUObjectsAreEqualOrNil())
    {
      sourceIdentifier = [callCopy sourceIdentifier];
      sourceIdentifier2 = [(CSDMessagingCall *)self sourceIdentifier];
      if (TUStringsAreEqualOrNil())
      {
        tuProvider = [(CSDMessagingCall *)self tuProvider];
        provider = [callCopy provider];
        if (TUObjectsAreEqualOrNil())
        {
          v45 = tuProvider;
          isVideo = [callCopy isVideo];
          if (isVideo == -[CSDMessagingCall isVideo](self, "isVideo") && (v18 = [callCopy disconnectedReason], v18 == -[CSDMessagingCall disconnectedReason](self, "disconnectedReason")) && (v19 = objc_msgSend(callCopy, "wantsHoldMusic"), v19 == -[CSDMessagingCall wantsHoldMusic](self, "wantsHoldMusic")) && (v20 = objc_msgSend(callCopy, "isVoicemail"), v20 == -[CSDMessagingCall isVoicemail](self, "isVoicemail")))
          {
            callerNameFromNetwork = [callCopy callerNameFromNetwork];
            callerNameFromNetwork2 = [(CSDMessagingCall *)self callerNameFromNetwork];
            v44 = callerNameFromNetwork;
            tuProvider = v45;
            if (TUStringsAreEqualOrNil())
            {
              dateConnected = [callCopy dateConnected];
              dateConnected2 = [(CSDMessagingCall *)self dateConnected];
              if (dateConnected == dateConnected2)
              {
                v41 = dateConnected2;
                isOutgoing = [callCopy isOutgoing];
                if (isOutgoing != [(CSDMessagingCall *)self isOutgoing])
                {
                  goto LABEL_35;
                }

                shouldSuppressRingtone = [callCopy shouldSuppressRingtone];
                if (shouldSuppressRingtone != [(CSDMessagingCall *)self shouldSuppressRingtone])
                {
                  goto LABEL_35;
                }

                needsManualInCallSounds = [callCopy needsManualInCallSounds];
                if (needsManualInCallSounds != [(CSDMessagingCall *)self needsManualInCallSounds])
                {
                  goto LABEL_35;
                }

                soundRegion = [callCopy soundRegion];
                if (soundRegion != [(CSDMessagingCall *)self soundRegion])
                {
                  goto LABEL_35;
                }

                isEmergency = [callCopy isEmergency];
                if (isEmergency == -[CSDMessagingCall isEmergency](self, "isEmergency") && (v28 = [callCopy isFailureExpected], v28 == -[CSDMessagingCall isFailureExpected](self, "isFailureExpected")) && (v29 = objc_msgSend(callCopy, "supportsEmergencyFallback"), v29 == -[CSDMessagingCall supportsEmergencyFallback](self, "supportsEmergencyFallback")) && (v30 = objc_msgSend(callCopy, "isSOS"), v30 == -[CSDMessagingCall isSOS](self, "isSOS")) && (v31 = objc_msgSend(callCopy, "supportsDTMFUpdates"), v31 == -[CSDMessagingCall supportsDTMFUpdates](self, "supportsDTMFUpdates")) && (v32 = objc_msgSend(callCopy, "hasSentInvitation"), v32 == -[CSDMessagingCall hasSentInvitation](self, "hasSentInvitation")) && (v33 = objc_msgSend(callCopy, "isUplinkMuted"), v33 == -[CSDMessagingCall isUplinkMuted](self, "isUplinkMuted")))
                {
                  remoteParticipantHandles = [callCopy remoteParticipantHandles];
                  remoteParticipantTUHandles = [(CSDMessagingCall *)self remoteParticipantTUHandles];
                  v40 = remoteParticipantHandles;
                  if ([remoteParticipantHandles isEqualToSet:?] && (v35 = objc_msgSend(callCopy, "ttyType"), v35 == -[CSDMessagingCall ttyType](self, "ttyType")) && (v36 = objc_msgSend(callCopy, "supportsTTYWithVoice"), v36 == -[CSDMessagingCall supportsTTYWithVoice](self, "supportsTTYWithVoice")) && (v37 = objc_msgSend(callCopy, "originatingUIType"), v37 == -[CSDMessagingCall originatingUIType](self, "originatingUIType")))
                  {
                    isReceptionistCapable = [callCopy isReceptionistCapable];
                    v9 = isReceptionistCapable ^ [(CSDMessagingCall *)self isReceptionistCapable]^ 1;
                  }

                  else
                  {
                    LOBYTE(v9) = 0;
                  }
                }

                else
                {
LABEL_35:
                  LOBYTE(v9) = 0;
                }

                tuProvider = v45;
                dateConnected2 = v41;
              }

              else
              {
                LOBYTE(v9) = 0;
              }
            }

            else
            {
              LOBYTE(v9) = 0;
            }
          }

          else
          {
            LOBYTE(v9) = 0;
            tuProvider = v45;
          }
        }

        else
        {
          LOBYTE(v9) = 0;
        }
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (TUCallModel)callModel
{
  protoCallModel = [(CSDMessagingCall *)self protoCallModel];

  if (protoCallModel)
  {
    protoCallModel = objc_alloc_init(TUCallModel);
    protoCallModel2 = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel setSupportsHolding:{objc_msgSend(protoCallModel2, "supportsHolding")}];

    protoCallModel3 = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel setSupportsGrouping:{objc_msgSend(protoCallModel3, "supportsGrouping")}];

    protoCallModel4 = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel setSupportsUngrouping:{objc_msgSend(protoCallModel4, "supportsUngrouping")}];

    protoCallModel5 = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel setSupportsUnambiguousMultiPartyState:{objc_msgSend(protoCallModel5, "supportsUnambiguousMultiPartyState")}];

    protoCallModel6 = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel setSupportsAddCall:{objc_msgSend(protoCallModel6, "supportsAddCall")}];

    protoCallModel7 = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel setSupportsSendingToVoicemail:{objc_msgSend(protoCallModel7, "supportsSendingToVoicemail")}];

    protoCallModel8 = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel setSupportsDTMF:{objc_msgSend(protoCallModel8, "supportsDTMF")}];
  }

  return protoCallModel;
}

- (void)setCallModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v4 = objc_alloc_init(CSDMessagingCallModel);
    [(CSDMessagingCall *)self setProtoCallModel:v4];

    supportsHolding = [modelCopy supportsHolding];
    protoCallModel = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel setSupportsHolding:supportsHolding];

    supportsGrouping = [modelCopy supportsGrouping];
    protoCallModel2 = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel2 setSupportsGrouping:supportsGrouping];

    supportsUngrouping = [modelCopy supportsUngrouping];
    protoCallModel3 = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel3 setSupportsUngrouping:supportsUngrouping];

    supportsUnambiguousMultiPartyState = [modelCopy supportsUnambiguousMultiPartyState];
    protoCallModel4 = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel4 setSupportsUnambiguousMultiPartyState:supportsUnambiguousMultiPartyState];

    supportsAddCall = [modelCopy supportsAddCall];
    protoCallModel5 = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel5 setSupportsAddCall:supportsAddCall];

    supportsSendingToVoicemail = [modelCopy supportsSendingToVoicemail];
    protoCallModel6 = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel6 setSupportsSendingToVoicemail:supportsSendingToVoicemail];

    supportsDTMF = [modelCopy supportsDTMF];
    protoCallModel7 = [(CSDMessagingCall *)self protoCallModel];
    [protoCallModel7 setSupportsDTMF:supportsDTMF];
  }

  else
  {
    [(CSDMessagingCall *)self setProtoCallModel:0];
  }
}

- (void)setTuHandle:(id)handle
{
  handleCopy = handle;
  value = [handleCopy value];
  [(CSDMessagingCall *)self setDestinationID:value];

  v6 = [CSDMessagingHandle handleWithTUHandle:handleCopy];

  [(CSDMessagingCall *)self setHandle:v6];
}

- (TUHandle)tuHandle
{
  handle = [(CSDMessagingCall *)self handle];
  tuHandle = [handle tuHandle];

  if (!tuHandle)
  {
    tuHandle = [(CSDMessagingCall *)self destinationID];

    if (tuHandle)
    {
      destinationID = [(CSDMessagingCall *)self destinationID];
      tuHandle = [TUHandle handleWithDestinationID:destinationID];
    }
  }

  return tuHandle;
}

- (void)setTuProvider:(id)provider
{
  providerCopy = provider;
  if (providerCopy)
  {
    v4 = [[CSDMessagingCallProvider alloc] initWithProvider:providerCopy];
    [(CSDMessagingCall *)self setProtoProvider:v4];
    [(CSDMessagingCall *)self setService:[TUCallProviderManager serviceForProvider:providerCopy video:[(CSDMessagingCall *)self isVideo]]];
  }

  else
  {
    [(CSDMessagingCall *)self setProtoProvider:0];
  }
}

- (NSDate)dateConnected
{
  [(CSDMessagingCall *)self protoTimeConnected];
  if (v3 <= 0.0)
  {
    v4 = 0;
  }

  else
  {
    [(CSDMessagingCall *)self protoTimeConnected];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  return v4;
}

- (void)setDateConnected:(id)connected
{
  [connected timeIntervalSinceReferenceDate];

  [(CSDMessagingCall *)self setProtoTimeConnected:?];
}

- (NSUUID)localSenderIdentityUUID
{
  localSenderIdentityUUIDString = [(CSDMessagingCall *)self localSenderIdentityUUIDString];
  if (localSenderIdentityUUIDString)
  {
    v4 = [NSUUID alloc];
    localSenderIdentityUUIDString2 = [(CSDMessagingCall *)self localSenderIdentityUUIDString];
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
  [(CSDMessagingCall *)self setLocalSenderIdentityUUIDString:uUIDString];
}

- (NSUUID)localSenderIdentityAccountUUID
{
  localSenderIdentityAccountUUIDString = [(CSDMessagingCall *)self localSenderIdentityAccountUUIDString];
  if (localSenderIdentityAccountUUIDString)
  {
    v4 = [NSUUID alloc];
    localSenderIdentityAccountUUIDString2 = [(CSDMessagingCall *)self localSenderIdentityAccountUUIDString];
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
  [(CSDMessagingCall *)self setLocalSenderIdentityAccountUUIDString:uUIDString];
}

- (NSSet)remoteParticipantTUHandles
{
  remoteParticipantHandles = [(CSDMessagingCall *)self remoteParticipantHandles];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteParticipantHandles count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  remoteParticipantHandles2 = [(CSDMessagingCall *)self remoteParticipantHandles];
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
          [(CSDMessagingCall *)self addRemoteParticipantHandles:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [handlesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

@end