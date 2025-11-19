@interface CSDMessagingCall
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCall:(id)a3;
- (BOOL)isVideo;
- (CSDMessagingCall)initWithCall:(id)a3;
- (NSDate)dateConnected;
- (NSSet)remoteParticipantTUHandles;
- (NSUUID)localSenderIdentityAccountUUID;
- (NSUUID)localSenderIdentityUUID;
- (TUCallModel)callModel;
- (TUCallProvider)tuProvider;
- (TUHandle)tuHandle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRemoteParticipantHandles:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setCallModel:(id)a3;
- (void)setDateConnected:(id)a3;
- (void)setHasProtoConferenced:(BOOL)a3;
- (void)setHasProtoDisconnectedReason:(BOOL)a3;
- (void)setHasProtoEmergency:(BOOL)a3;
- (void)setHasProtoFailureExpected:(BOOL)a3;
- (void)setHasProtoHasSentInvitation:(BOOL)a3;
- (void)setHasProtoNeedsManualInCallSounds:(BOOL)a3;
- (void)setHasProtoOriginatingUIType:(BOOL)a3;
- (void)setHasProtoOutgoing:(BOOL)a3;
- (void)setHasProtoReceptionistCapable:(BOOL)a3;
- (void)setHasProtoSOS:(BOOL)a3;
- (void)setHasProtoService:(BOOL)a3;
- (void)setHasProtoShouldSuppressRingtone:(BOOL)a3;
- (void)setHasProtoSoundRegion:(BOOL)a3;
- (void)setHasProtoStatus:(BOOL)a3;
- (void)setHasProtoSupportsDTMFUpdates:(BOOL)a3;
- (void)setHasProtoSupportsEmergencyFallback:(BOOL)a3;
- (void)setHasProtoSupportsTTYWithVoice:(BOOL)a3;
- (void)setHasProtoTTYType:(BOOL)a3;
- (void)setHasProtoUplinkMuted:(BOOL)a3;
- (void)setHasProtoVideo:(BOOL)a3;
- (void)setHasProtoVoicemail:(BOOL)a3;
- (void)setHasProtoWantsHoldMusic:(BOOL)a3;
- (void)setLocalSenderIdentityAccountUUID:(id)a3;
- (void)setLocalSenderIdentityUUID:(id)a3;
- (void)setRemoteParticipantTUHandles:(id)a3;
- (void)setSoundRegion:(int64_t)a3;
- (void)setTuHandle:(id)a3;
- (void)setTuProvider:(id)a3;
- (void)updateRelayCall:(id)a3;
- (void)writeTo:(id)a3;
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
  v3 = [(CSDMessagingCall *)self protoProvider];
  v4 = [v3 provider];

  if (!v4)
  {
    v7 = 0;
    v5 = objc_alloc_init(TUCallProviderManager);
    v4 = [v5 providerWithService:-[CSDMessagingCall service](self video:{"service"), &v7}];
  }

  return v4;
}

- (void)setHasProtoStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasProtoConferenced:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasProtoService:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasProtoWantsHoldMusic:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasProtoDisconnectedReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasProtoVoicemail:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasProtoOutgoing:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasProtoShouldSuppressRingtone:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasProtoNeedsManualInCallSounds:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasProtoSoundRegion:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasProtoEmergency:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasProtoHasSentInvitation:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasProtoSOS:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasProtoVideo:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasProtoUplinkMuted:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)addRemoteParticipantHandles:(id)a3
{
  v4 = a3;
  remoteParticipantHandles = self->_remoteParticipantHandles;
  v8 = v4;
  if (!remoteParticipantHandles)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_remoteParticipantHandles;
    self->_remoteParticipantHandles = v6;

    v4 = v8;
    remoteParticipantHandles = self->_remoteParticipantHandles;
  }

  [(NSMutableArray *)remoteParticipantHandles addObject:v4];
}

- (void)setHasProtoTTYType:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasProtoSupportsTTYWithVoice:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasProtoOriginatingUIType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasProtoFailureExpected:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasProtoSupportsEmergencyFallback:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasProtoSupportsDTMFUpdates:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasProtoReceptionistCapable:(BOOL)a3
{
  if (a3)
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
  v4 = [(CSDMessagingCall *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v17 = [(CSDMessagingHandle *)handle dictionaryRepresentation];
    [v4 setObject:v17 forKey:@"handle"];
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v18 = [NSNumber numberWithBool:self->_protoSOS];
    [v4 setObject:v18 forKey:@"protoSOS"];
  }

  protoProvider = self->_protoProvider;
  if (protoProvider)
  {
    v20 = [(CSDMessagingCallProvider *)protoProvider dictionaryRepresentation];
    [v4 setObject:v20 forKey:@"protoProvider"];
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
    v25 = [(CSDMessagingCallModel *)protoCallModel dictionaryRepresentation];
    [v4 setObject:v25 forKey:@"protoCallModel"];
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

          v33 = [*(*(&v58 + 1) + 8 * i) dictionaryRepresentation];
          [v27 addObject:v33];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (self->_uniqueProxyIdentifier)
  {
    [v4 setUniqueProxyIdentifier:?];
    v4 = v16;
  }

  has = self->_has;
  if ((*&has & 0x20) != 0)
  {
    *(v4 + 28) = self->_protoStatus;
    *(v4 + 40) |= 0x20u;
    has = self->_has;
  }

  if ((*&has & 0x80) != 0)
  {
    *(v4 + 144) = self->_protoConferenced;
    *(v4 + 40) |= 0x80u;
  }

  if (self->_destinationID)
  {
    [v16 setDestinationID:?];
    v4 = v16;
  }

  if (self->_sourceIdentifier)
  {
    [v16 setSourceIdentifier:?];
    v4 = v16;
  }

  v6 = self->_has;
  if ((*&v6 & 8) != 0)
  {
    *(v4 + 26) = self->_protoService;
    *(v4 + 40) |= 8u;
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

  *(v4 + 159) = self->_protoWantsHoldMusic;
  *(v4 + 40) |= 0x400000u;
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
  *(v4 + 22) = self->_protoDisconnectedReason;
  *(v4 + 40) |= 2u;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_15:
    *(v4 + 158) = self->_protoVoicemail;
    *(v4 + 40) |= 0x200000u;
  }

LABEL_16:
  if (self->_callerNameFromNetwork)
  {
    [v16 setCallerNameFromNetwork:?];
    v4 = v16;
  }

  v7 = self->_has;
  if (*&v7)
  {
    *(v4 + 1) = *&self->_protoTimeConnected;
    *(v4 + 40) |= 1u;
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

  *(v4 + 149) = self->_protoOutgoing;
  *(v4 + 40) |= 0x1000u;
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
  *(v4 + 152) = self->_protoShouldSuppressRingtone;
  *(v4 + 40) |= 0x8000u;
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
  *(v4 + 148) = self->_protoNeedsManualInCallSounds;
  *(v4 + 40) |= 0x800u;
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
  *(v4 + 27) = self->_protoSoundRegion;
  *(v4 + 40) |= 0x10u;
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
  *(v4 + 145) = self->_protoEmergency;
  *(v4 + 40) |= 0x100u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_25:
    *(v4 + 147) = self->_protoHasSentInvitation;
    *(v4 + 40) |= 0x400u;
  }

LABEL_26:
  if (self->_handle)
  {
    [v16 setHandle:?];
    v4 = v16;
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v4 + 151) = self->_protoSOS;
    *(v4 + 40) |= 0x4000u;
  }

  if (self->_protoProvider)
  {
    [v16 setProtoProvider:?];
    v4 = v16;
  }

  v8 = self->_has;
  if ((*&v8 & 0x100000) != 0)
  {
    *(v4 + 157) = self->_protoVideo;
    *(v4 + 40) |= 0x100000u;
    v8 = self->_has;
  }

  if ((*&v8 & 0x80000) != 0)
  {
    *(v4 + 156) = self->_protoUplinkMuted;
    *(v4 + 40) |= 0x80000u;
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
    v9 = [(CSDMessagingCall *)self remoteParticipantHandlesCount];
    if (v9)
    {
      v10 = v9;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueProxyIdentifier copyWithZone:a3];
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

  v9 = [(NSString *)self->_destinationID copyWithZone:a3];
  v10 = v5[4];
  v5[4] = v9;

  v11 = [(NSString *)self->_sourceIdentifier copyWithZone:a3];
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
  v14 = [(NSString *)self->_callerNameFromNetwork copyWithZone:a3];
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
  v17 = [(CSDMessagingHandle *)self->_handle copyWithZone:a3];
  v18 = v5[6];
  v5[6] = v17;

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v5 + 151) = self->_protoSOS;
    *(v5 + 40) |= 0x4000u;
  }

  v19 = [(CSDMessagingCallProvider *)self->_protoProvider copyWithZone:a3];
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

  v22 = [(CSDMessagingCallModel *)self->_protoCallModel copyWithZone:a3];
  v23 = v5[10];
  v5[10] = v22;

  v24 = [(NSString *)self->_localSenderIdentityUUIDString copyWithZone:a3];
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

        v31 = [*(*(&v43 + 1) + 8 * v30) copyWithZone:{a3, v43}];
        [v5 addRemoteParticipantHandles:v31];

        v30 = v30 + 1;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v28);
  }

  v32 = [(NSString *)self->_localSenderIdentityAccountUUIDString copyWithZone:a3];
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

  v35 = [(NSString *)self->_isoCountryCode copyWithZone:a3, v43];
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
  v38 = [(NSString *)self->_groupUUIDString copyWithZone:a3];
  v39 = v5[5];
  v5[5] = v38;

  if (*(&self->_has + 2))
  {
    *(v5 + 153) = self->_protoSupportsDTMFUpdates;
    *(v5 + 40) |= 0x10000u;
  }

  v40 = [(NSString *)self->_conversationGroupUUIDString copyWithZone:a3];
  v41 = v5[3];
  v5[3] = v40;

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v5 + 150) = self->_protoReceptionistCapable;
    *(v5 + 40) |= 0x2000u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  uniqueProxyIdentifier = self->_uniqueProxyIdentifier;
  if (uniqueProxyIdentifier | *(v4 + 17))
  {
    if (![(NSString *)uniqueProxyIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  has = self->_has;
  v7 = *(v4 + 40);
  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_protoStatus != *(v4 + 28))
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

    v14 = *(v4 + 144);
    if (self->_protoConferenced)
    {
      if ((*(v4 + 144) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 144))
    {
      goto LABEL_19;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_19;
  }

  destinationID = self->_destinationID;
  if (destinationID | *(v4 + 4) && ![(NSString *)destinationID isEqual:?])
  {
    goto LABEL_19;
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier | *(v4 + 16))
  {
    if (![(NSString *)sourceIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = self->_has;
  v11 = *(v4 + 40);
  if ((*&v10 & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_protoService != *(v4 + 26))
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

    v15 = *(v4 + 159);
    if (self->_protoWantsHoldMusic)
    {
      if ((*(v4 + 159) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 159))
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
    if ((v11 & 2) == 0 || self->_protoDisconnectedReason != *(v4 + 22))
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

    v18 = *(v4 + 158);
    if (self->_protoVoicemail)
    {
      if ((*(v4 + 158) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 158))
    {
      goto LABEL_19;
    }
  }

  else if ((v11 & 0x200000) != 0)
  {
    goto LABEL_19;
  }

  callerNameFromNetwork = self->_callerNameFromNetwork;
  if (callerNameFromNetwork | *(v4 + 2))
  {
    if (![(NSString *)callerNameFromNetwork isEqual:?])
    {
      goto LABEL_19;
    }

    v10 = self->_has;
  }

  v17 = *(v4 + 40);
  if (*&v10)
  {
    if ((v17 & 1) == 0 || self->_protoTimeConnected != *(v4 + 1))
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

    v19 = *(v4 + 149);
    if (self->_protoOutgoing)
    {
      if ((*(v4 + 149) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 149))
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

    v20 = *(v4 + 152);
    if (self->_protoShouldSuppressRingtone)
    {
      if ((*(v4 + 152) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 152))
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

    v21 = *(v4 + 148);
    if (self->_protoNeedsManualInCallSounds)
    {
      if ((*(v4 + 148) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 148))
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
    if ((v17 & 0x10) == 0 || self->_protoSoundRegion != *(v4 + 27))
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

    v32 = *(v4 + 145);
    if (self->_protoEmergency)
    {
      if ((*(v4 + 145) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 145))
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

    v33 = *(v4 + 147);
    if (self->_protoHasSentInvitation)
    {
      if ((*(v4 + 147) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 147))
    {
      goto LABEL_19;
    }
  }

  else if ((v17 & 0x400) != 0)
  {
    goto LABEL_19;
  }

  handle = self->_handle;
  if (handle | *(v4 + 6))
  {
    if (![(CSDMessagingHandle *)handle isEqual:?])
    {
      goto LABEL_19;
    }

    v10 = self->_has;
  }

  v23 = *(v4 + 40);
  if ((*&v10 & 0x4000) != 0)
  {
    if ((v23 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    v34 = *(v4 + 151);
    if (self->_protoSOS)
    {
      if ((*(v4 + 151) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 151))
    {
      goto LABEL_19;
    }
  }

  else if ((v23 & 0x4000) != 0)
  {
    goto LABEL_19;
  }

  protoProvider = self->_protoProvider;
  if (protoProvider | *(v4 + 12))
  {
    if (![(CSDMessagingCallProvider *)protoProvider isEqual:?])
    {
      goto LABEL_19;
    }

    v10 = self->_has;
  }

  v25 = *(v4 + 40);
  if ((*&v10 & 0x100000) != 0)
  {
    if ((v25 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    v35 = *(v4 + 157);
    if (self->_protoVideo)
    {
      if ((*(v4 + 157) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 157))
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

    v36 = *(v4 + 156);
    if (self->_protoUplinkMuted)
    {
      if ((*(v4 + 156) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 156))
    {
      goto LABEL_19;
    }
  }

  else if ((v25 & 0x80000) != 0)
  {
    goto LABEL_19;
  }

  protoCallModel = self->_protoCallModel;
  if (protoCallModel | *(v4 + 10) && ![(CSDMessagingCallModel *)protoCallModel isEqual:?])
  {
    goto LABEL_19;
  }

  localSenderIdentityUUIDString = self->_localSenderIdentityUUIDString;
  if (localSenderIdentityUUIDString | *(v4 + 9))
  {
    if (![(NSString *)localSenderIdentityUUIDString isEqual:?])
    {
      goto LABEL_19;
    }
  }

  remoteParticipantHandles = self->_remoteParticipantHandles;
  if (remoteParticipantHandles | *(v4 + 15))
  {
    if (![(NSMutableArray *)remoteParticipantHandles isEqual:?])
    {
      goto LABEL_19;
    }
  }

  localSenderIdentityAccountUUIDString = self->_localSenderIdentityAccountUUIDString;
  if (localSenderIdentityAccountUUIDString | *(v4 + 8))
  {
    if (![(NSString *)localSenderIdentityAccountUUIDString isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v30 = self->_has;
  v31 = *(v4 + 40);
  if ((*&v30 & 0x40) != 0)
  {
    if ((v31 & 0x40) == 0 || self->_protoTTYType != *(v4 + 29))
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

    v37 = *(v4 + 155);
    if (self->_protoSupportsTTYWithVoice)
    {
      if ((*(v4 + 155) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 155))
    {
      goto LABEL_19;
    }
  }

  else if ((v31 & 0x40000) != 0)
  {
    goto LABEL_19;
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode | *(v4 + 7))
  {
    if (![(NSString *)isoCountryCode isEqual:?])
    {
      goto LABEL_19;
    }

    v30 = self->_has;
  }

  v39 = *(v4 + 40);
  if ((*&v30 & 4) != 0)
  {
    if ((v39 & 4) == 0 || self->_protoOriginatingUIType != *(v4 + 23))
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

    v42 = *(v4 + 146);
    if (self->_protoFailureExpected)
    {
      if ((*(v4 + 146) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 146))
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

    v43 = *(v4 + 154);
    if (self->_protoSupportsEmergencyFallback)
    {
      if ((*(v4 + 154) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 154))
    {
      goto LABEL_19;
    }
  }

  else if ((v39 & 0x20000) != 0)
  {
    goto LABEL_19;
  }

  groupUUIDString = self->_groupUUIDString;
  if (groupUUIDString | *(v4 + 5))
  {
    if (![(NSString *)groupUUIDString isEqual:?])
    {
      goto LABEL_19;
    }

    v30 = self->_has;
  }

  v41 = *(v4 + 40);
  if ((*&v30 & 0x10000) != 0)
  {
    if ((v41 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    v44 = *(v4 + 153);
    if (self->_protoSupportsDTMFUpdates)
    {
      if ((*(v4 + 153) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 153))
    {
      goto LABEL_19;
    }
  }

  else if ((v41 & 0x10000) != 0)
  {
    goto LABEL_19;
  }

  conversationGroupUUIDString = self->_conversationGroupUUIDString;
  if (conversationGroupUUIDString | *(v4 + 3))
  {
    if (![(NSString *)conversationGroupUUIDString isEqual:?])
    {
      goto LABEL_19;
    }

    v30 = self->_has;
  }

  if ((*&v30 & 0x2000) == 0)
  {
    v12 = (*(v4 + 40) & 0x2000) == 0;
    goto LABEL_20;
  }

  if ((*(v4 + 40) & 0x2000) != 0)
  {
    if (self->_protoReceptionistCapable)
    {
      if (*(v4 + 150))
      {
        goto LABEL_198;
      }
    }

    else if (!*(v4 + 150))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 17))
  {
    [(CSDMessagingCall *)self setUniqueProxyIdentifier:?];
  }

  v5 = *(v4 + 40);
  if ((v5 & 0x20) != 0)
  {
    self->_protoStatus = *(v4 + 28);
    *&self->_has |= 0x20u;
    v5 = *(v4 + 40);
  }

  if ((v5 & 0x80) != 0)
  {
    self->_protoConferenced = *(v4 + 144);
    *&self->_has |= 0x80u;
  }

  if (*(v4 + 4))
  {
    [(CSDMessagingCall *)self setDestinationID:?];
  }

  if (*(v4 + 16))
  {
    [(CSDMessagingCall *)self setSourceIdentifier:?];
  }

  v6 = *(v4 + 40);
  if ((v6 & 8) != 0)
  {
    self->_protoService = *(v4 + 26);
    *&self->_has |= 8u;
    v6 = *(v4 + 40);
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

  self->_protoWantsHoldMusic = *(v4 + 159);
  *&self->_has |= 0x400000u;
  v6 = *(v4 + 40);
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
  self->_protoDisconnectedReason = *(v4 + 22);
  *&self->_has |= 2u;
  if ((*(v4 + 40) & 0x200000) != 0)
  {
LABEL_15:
    self->_protoVoicemail = *(v4 + 158);
    *&self->_has |= 0x200000u;
  }

LABEL_16:
  if (*(v4 + 2))
  {
    [(CSDMessagingCall *)self setCallerNameFromNetwork:?];
  }

  v7 = *(v4 + 40);
  if (v7)
  {
    self->_protoTimeConnected = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 40);
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

  self->_protoOutgoing = *(v4 + 149);
  *&self->_has |= 0x1000u;
  v7 = *(v4 + 40);
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
  self->_protoShouldSuppressRingtone = *(v4 + 152);
  *&self->_has |= 0x8000u;
  v7 = *(v4 + 40);
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
  self->_protoNeedsManualInCallSounds = *(v4 + 148);
  *&self->_has |= 0x800u;
  v7 = *(v4 + 40);
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
  self->_protoSoundRegion = *(v4 + 27);
  *&self->_has |= 0x10u;
  v7 = *(v4 + 40);
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
  self->_protoEmergency = *(v4 + 145);
  *&self->_has |= 0x100u;
  if ((*(v4 + 40) & 0x400) != 0)
  {
LABEL_25:
    self->_protoHasSentInvitation = *(v4 + 147);
    *&self->_has |= 0x400u;
  }

LABEL_26:
  handle = self->_handle;
  v9 = *(v4 + 6);
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

  if ((*(v4 + 161) & 0x40) != 0)
  {
    self->_protoSOS = *(v4 + 151);
    *&self->_has |= 0x4000u;
  }

  protoProvider = self->_protoProvider;
  v11 = *(v4 + 12);
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

  v12 = *(v4 + 40);
  if ((v12 & 0x100000) != 0)
  {
    self->_protoVideo = *(v4 + 157);
    *&self->_has |= 0x100000u;
    v12 = *(v4 + 40);
  }

  if ((v12 & 0x80000) != 0)
  {
    self->_protoUplinkMuted = *(v4 + 156);
    *&self->_has |= 0x80000u;
  }

  protoCallModel = self->_protoCallModel;
  v14 = *(v4 + 10);
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

  if (*(v4 + 9))
  {
    [(CSDMessagingCall *)self setLocalSenderIdentityUUIDString:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = *(v4 + 15);
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

  if (*(v4 + 8))
  {
    [(CSDMessagingCall *)self setLocalSenderIdentityAccountUUIDString:?];
  }

  v20 = *(v4 + 40);
  if ((v20 & 0x40) != 0)
  {
    self->_protoTTYType = *(v4 + 29);
    *&self->_has |= 0x40u;
    v20 = *(v4 + 40);
  }

  if ((v20 & 0x40000) != 0)
  {
    self->_protoSupportsTTYWithVoice = *(v4 + 155);
    *&self->_has |= 0x40000u;
  }

  if (*(v4 + 7))
  {
    [(CSDMessagingCall *)self setIsoCountryCode:?];
  }

  v21 = *(v4 + 40);
  if ((v21 & 4) != 0)
  {
    self->_protoOriginatingUIType = *(v4 + 23);
    *&self->_has |= 4u;
    v21 = *(v4 + 40);
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

  self->_protoFailureExpected = *(v4 + 146);
  *&self->_has |= 0x200u;
  if ((*(v4 + 40) & 0x20000) != 0)
  {
LABEL_78:
    self->_protoSupportsEmergencyFallback = *(v4 + 154);
    *&self->_has |= 0x20000u;
  }

LABEL_79:
  if (*(v4 + 5))
  {
    [(CSDMessagingCall *)self setGroupUUIDString:?];
  }

  if (*(v4 + 162))
  {
    self->_protoSupportsDTMFUpdates = *(v4 + 153);
    *&self->_has |= 0x10000u;
  }

  if (*(v4 + 3))
  {
    [(CSDMessagingCall *)self setConversationGroupUUIDString:?];
  }

  if ((*(v4 + 161) & 0x20) != 0)
  {
    self->_protoReceptionistCapable = *(v4 + 150);
    *&self->_has |= 0x2000u;
  }
}

- (CSDMessagingCall)initWithCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDMessagingCall *)self init];
  if (v5)
  {
    v6 = [v4 uniqueProxyIdentifier];
    [(CSDMessagingCall *)v5 setUniqueProxyIdentifier:v6];

    -[CSDMessagingCall setStatus:](v5, "setStatus:", [v4 status]);
    -[CSDMessagingCall setConferenced:](v5, "setConferenced:", [v4 isConferenced]);
    v7 = [v4 handle];
    [(CSDMessagingCall *)v5 setTuHandle:v7];

    v8 = [v4 sourceIdentifier];
    [(CSDMessagingCall *)v5 setSourceIdentifier:v8];

    v9 = [v4 provider];
    [(CSDMessagingCall *)v5 setTuProvider:v9];

    -[CSDMessagingCall setVideo:](v5, "setVideo:", [v4 isVideo]);
    -[CSDMessagingCall setDisconnectedReason:](v5, "setDisconnectedReason:", [v4 disconnectedReason]);
    -[CSDMessagingCall setWantsHoldMusic:](v5, "setWantsHoldMusic:", [v4 wantsHoldMusic]);
    -[CSDMessagingCall setVoicemail:](v5, "setVoicemail:", [v4 isVoicemail]);
    v10 = [v4 callerNameFromNetwork];
    [(CSDMessagingCall *)v5 setCallerNameFromNetwork:v10];

    v11 = [v4 dateConnected];
    [(CSDMessagingCall *)v5 setDateConnected:v11];

    -[CSDMessagingCall setOutgoing:](v5, "setOutgoing:", [v4 isOutgoing]);
    -[CSDMessagingCall setShouldSuppressRingtone:](v5, "setShouldSuppressRingtone:", [v4 shouldSuppressRingtone]);
    -[CSDMessagingCall setNeedsManualInCallSounds:](v5, "setNeedsManualInCallSounds:", [v4 needsManualInCallSounds]);
    -[CSDMessagingCall setSoundRegion:](v5, "setSoundRegion:", [v4 soundRegion]);
    -[CSDMessagingCall setEmergency:](v5, "setEmergency:", [v4 isEmergency]);
    -[CSDMessagingCall setFailureExpected:](v5, "setFailureExpected:", [v4 isFailureExpected]);
    -[CSDMessagingCall setSupportsEmergencyFallback:](v5, "setSupportsEmergencyFallback:", [v4 supportsEmergencyFallback]);
    -[CSDMessagingCall setSOS:](v5, "setSOS:", [v4 isSOS]);
    -[CSDMessagingCall setSupportsDTMFUpdates:](v5, "setSupportsDTMFUpdates:", [v4 supportsDTMFUpdates]);
    -[CSDMessagingCall setHasSentInvitation:](v5, "setHasSentInvitation:", [v4 hasSentInvitation]);
    if ([v4 wantsHoldMusic])
    {
      v12 = 0;
    }

    else
    {
      v12 = [v4 isUplinkMuted];
    }

    [(CSDMessagingCall *)v5 setUplinkMuted:v12];
    v13 = [v4 model];
    [(CSDMessagingCall *)v5 setCallModel:v13];

    v14 = [v4 localSenderIdentityUUID];
    [(CSDMessagingCall *)v5 setLocalSenderIdentityUUID:v14];

    v15 = [v4 localSenderIdentityAccountUUID];
    [(CSDMessagingCall *)v5 setLocalSenderIdentityAccountUUID:v15];

    v16 = [v4 remoteParticipantHandles];
    [(CSDMessagingCall *)v5 setRemoteParticipantTUHandles:v16];

    -[CSDMessagingCall setTtyType:](v5, "setTtyType:", [v4 ttyType]);
    -[CSDMessagingCall setSupportsTTYWithVoice:](v5, "setSupportsTTYWithVoice:", [v4 supportsTTYWithVoice]);
    -[CSDMessagingCall setOriginatingUIType:](v5, "setOriginatingUIType:", [v4 originatingUIType]);
    v17 = [v4 callGroupUUID];
    v18 = [v17 UUIDString];
    [(CSDMessagingCall *)v5 setGroupUUIDString:v18];

    v19 = [v4 conversationGroupUUID];
    v20 = [v19 UUIDString];
    [(CSDMessagingCall *)v5 setConversationGroupUUIDString:v20];

    -[CSDMessagingCall setReceptionistCapable:](v5, "setReceptionistCapable:", [v4 isReceptionistCapable]);
  }

  return v5;
}

- (void)setSoundRegion:(int64_t)a3
{
  if (self->_protoSoundRegion != a3)
  {
    self->_protoSoundRegion = a3;
  }
}

- (void)updateRelayCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDMessagingCall *)self tuProvider];

  if (v5)
  {
    v6 = [(CSDMessagingCall *)self tuProvider];
    [v4 setProvider:v6];
  }

  [v4 setCallStatus:{-[CSDMessagingCall status](self, "status")}];
  v7 = [(CSDMessagingCall *)self handle];
  v8 = [v7 tuHandle];
  [v4 setHandle:v8];

  v9 = [(CSDMessagingCall *)self isoCountryCode];
  [v4 setIsoCountryCode:v9];

  v10 = [(CSDMessagingCall *)self sourceIdentifier];
  [v4 setSourceIdentifier:v10];

  [v4 setDisconnectedReason:{-[CSDMessagingCall disconnectedReason](self, "disconnectedReason")}];
  [v4 setWantsHoldMusic:{-[CSDMessagingCall wantsHoldMusic](self, "wantsHoldMusic")}];
  [v4 setVoicemail:{-[CSDMessagingCall isVoicemail](self, "isVoicemail")}];
  v11 = [(CSDMessagingCall *)self callerNameFromNetwork];
  [v4 setCallerNameFromNetwork:v11];

  v12 = [(CSDMessagingCall *)self dateConnected];
  [v4 setDateConnected:v12];

  [v4 setOutgoing:{-[CSDMessagingCall isOutgoing](self, "isOutgoing")}];
  [v4 setVideo:{-[CSDMessagingCall isVideo](self, "isVideo")}];
  [v4 setShouldSuppressRingtone:{-[CSDMessagingCall shouldSuppressRingtone](self, "shouldSuppressRingtone")}];
  [v4 setNeedsManualInCallSounds:{-[CSDMessagingCall needsManualInCallSounds](self, "needsManualInCallSounds")}];
  [v4 setSoundRegion:{-[CSDMessagingCall soundRegion](self, "soundRegion")}];
  [v4 setEmergency:{-[CSDMessagingCall isEmergency](self, "isEmergency")}];
  [v4 setFailureExpected:{-[CSDMessagingCall isFailureExpected](self, "isFailureExpected")}];
  [v4 setSupportsEmergencyFallback:{-[CSDMessagingCall supportsEmergencyFallback](self, "supportsEmergencyFallback")}];
  [v4 setSOS:{-[CSDMessagingCall isSOS](self, "isSOS")}];
  [v4 setSupportsDTMFUpdates:{-[CSDMessagingCall supportsDTMFUpdates](self, "supportsDTMFUpdates")}];
  [v4 setUplinkMuted:{-[CSDMessagingCall isUplinkMuted](self, "isUplinkMuted")}];
  v13 = [(CSDMessagingCall *)self localSenderIdentityUUID];
  [v4 setLocalSenderIdentityUUID:v13];

  v14 = [(CSDMessagingCall *)self localSenderIdentityAccountUUID];
  [v4 setLocalSenderIdentityAccountUUID:v14];

  v15 = [(CSDMessagingCall *)self remoteParticipantTUHandles];
  [v4 setRemoteParticipantHandles:v15];

  [v4 setTtyType:{-[CSDMessagingCall ttyType](self, "ttyType")}];
  [v4 setSupportsTTYWithVoice:{-[CSDMessagingCall supportsTTYWithVoice](self, "supportsTTYWithVoice")}];
  [v4 setOriginatingUIType:{-[CSDMessagingCall originatingUIType](self, "originatingUIType")}];
  [v4 setReceptionistCapable:{-[CSDMessagingCall isReceptionistCapable](self, "isReceptionistCapable")}];
  v16 = [(CSDMessagingCall *)self callModel];

  if (v16)
  {
    v17 = [(CSDMessagingCall *)self callModel];
    [v4 setModel:v17];
  }

  if ([(CSDMessagingCall *)self hasSentInvitation])
  {
    [v4 setLocallyHasSentInvitation];
  }

  if ([(CSDMessagingCall *)self hasConversationGroupUUIDString])
  {
    v18 = [NSUUID alloc];
    v19 = [(CSDMessagingCall *)self conversationGroupUUIDString];
    v20 = [v18 initWithUUIDString:v19];

    if (v20)
    {
      [v4 setConversationGroupUUID:v20];
      [v4 setConversation:1];
    }

    else
    {
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(CSDMessagingCall *)self conversationGroupUUIDString];
        v26 = 138412290;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to updateRelayCall with invalid conversationGroupUUID: %@", &v26, 0xCu);
      }
    }
  }

  if (-[CSDMessagingCall hasGroupUUIDString](self, "hasGroupUUIDString") && (v22 = [NSUUID alloc], -[CSDMessagingCall groupUUIDString](self, "groupUUIDString"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v22 initWithUUIDString:v23], v23, v24))
  {
    [v4 setCallGroupUUID:v24];
    [v4 setConversation:1];
  }

  else if ([(CSDMessagingCall *)self isConferenced])
  {
    v25 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
    [v4 setCallGroupUUID:v25];
  }

  else
  {
    [v4 setCallGroupUUID:0];
  }
}

- (BOOL)isEqualToCall:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDMessagingCall *)self uniqueProxyIdentifier];
  if (TUStringsAreEqualOrNil() && (v7 = [v4 status], v7 == -[CSDMessagingCall status](self, "status")) && (v8 = objc_msgSend(v4, "isConferenced"), v8 == -[CSDMessagingCall isConferenced](self, "isConferenced")))
  {
    v11 = [(CSDMessagingCall *)self tuHandle];
    v12 = [v4 handle];
    if (TUObjectsAreEqualOrNil())
    {
      v13 = [v4 sourceIdentifier];
      v14 = [(CSDMessagingCall *)self sourceIdentifier];
      if (TUStringsAreEqualOrNil())
      {
        v15 = [(CSDMessagingCall *)self tuProvider];
        v16 = [v4 provider];
        if (TUObjectsAreEqualOrNil())
        {
          v45 = v15;
          v17 = [v4 isVideo];
          if (v17 == -[CSDMessagingCall isVideo](self, "isVideo") && (v18 = [v4 disconnectedReason], v18 == -[CSDMessagingCall disconnectedReason](self, "disconnectedReason")) && (v19 = objc_msgSend(v4, "wantsHoldMusic"), v19 == -[CSDMessagingCall wantsHoldMusic](self, "wantsHoldMusic")) && (v20 = objc_msgSend(v4, "isVoicemail"), v20 == -[CSDMessagingCall isVoicemail](self, "isVoicemail")))
          {
            v21 = [v4 callerNameFromNetwork];
            v43 = [(CSDMessagingCall *)self callerNameFromNetwork];
            v44 = v21;
            v15 = v45;
            if (TUStringsAreEqualOrNil())
            {
              v42 = [v4 dateConnected];
              v22 = [(CSDMessagingCall *)self dateConnected];
              if (v42 == v22)
              {
                v41 = v22;
                v23 = [v4 isOutgoing];
                if (v23 != [(CSDMessagingCall *)self isOutgoing])
                {
                  goto LABEL_35;
                }

                v24 = [v4 shouldSuppressRingtone];
                if (v24 != [(CSDMessagingCall *)self shouldSuppressRingtone])
                {
                  goto LABEL_35;
                }

                v25 = [v4 needsManualInCallSounds];
                if (v25 != [(CSDMessagingCall *)self needsManualInCallSounds])
                {
                  goto LABEL_35;
                }

                v26 = [v4 soundRegion];
                if (v26 != [(CSDMessagingCall *)self soundRegion])
                {
                  goto LABEL_35;
                }

                v27 = [v4 isEmergency];
                if (v27 == -[CSDMessagingCall isEmergency](self, "isEmergency") && (v28 = [v4 isFailureExpected], v28 == -[CSDMessagingCall isFailureExpected](self, "isFailureExpected")) && (v29 = objc_msgSend(v4, "supportsEmergencyFallback"), v29 == -[CSDMessagingCall supportsEmergencyFallback](self, "supportsEmergencyFallback")) && (v30 = objc_msgSend(v4, "isSOS"), v30 == -[CSDMessagingCall isSOS](self, "isSOS")) && (v31 = objc_msgSend(v4, "supportsDTMFUpdates"), v31 == -[CSDMessagingCall supportsDTMFUpdates](self, "supportsDTMFUpdates")) && (v32 = objc_msgSend(v4, "hasSentInvitation"), v32 == -[CSDMessagingCall hasSentInvitation](self, "hasSentInvitation")) && (v33 = objc_msgSend(v4, "isUplinkMuted"), v33 == -[CSDMessagingCall isUplinkMuted](self, "isUplinkMuted")))
                {
                  v34 = [v4 remoteParticipantHandles];
                  v39 = [(CSDMessagingCall *)self remoteParticipantTUHandles];
                  v40 = v34;
                  if ([v34 isEqualToSet:?] && (v35 = objc_msgSend(v4, "ttyType"), v35 == -[CSDMessagingCall ttyType](self, "ttyType")) && (v36 = objc_msgSend(v4, "supportsTTYWithVoice"), v36 == -[CSDMessagingCall supportsTTYWithVoice](self, "supportsTTYWithVoice")) && (v37 = objc_msgSend(v4, "originatingUIType"), v37 == -[CSDMessagingCall originatingUIType](self, "originatingUIType")))
                  {
                    v38 = [v4 isReceptionistCapable];
                    v9 = v38 ^ [(CSDMessagingCall *)self isReceptionistCapable]^ 1;
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

                v15 = v45;
                v22 = v41;
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
            v15 = v45;
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
  v3 = [(CSDMessagingCall *)self protoCallModel];

  if (v3)
  {
    v3 = objc_alloc_init(TUCallModel);
    v4 = [(CSDMessagingCall *)self protoCallModel];
    [v3 setSupportsHolding:{objc_msgSend(v4, "supportsHolding")}];

    v5 = [(CSDMessagingCall *)self protoCallModel];
    [v3 setSupportsGrouping:{objc_msgSend(v5, "supportsGrouping")}];

    v6 = [(CSDMessagingCall *)self protoCallModel];
    [v3 setSupportsUngrouping:{objc_msgSend(v6, "supportsUngrouping")}];

    v7 = [(CSDMessagingCall *)self protoCallModel];
    [v3 setSupportsUnambiguousMultiPartyState:{objc_msgSend(v7, "supportsUnambiguousMultiPartyState")}];

    v8 = [(CSDMessagingCall *)self protoCallModel];
    [v3 setSupportsAddCall:{objc_msgSend(v8, "supportsAddCall")}];

    v9 = [(CSDMessagingCall *)self protoCallModel];
    [v3 setSupportsSendingToVoicemail:{objc_msgSend(v9, "supportsSendingToVoicemail")}];

    v10 = [(CSDMessagingCall *)self protoCallModel];
    [v3 setSupportsDTMF:{objc_msgSend(v10, "supportsDTMF")}];
  }

  return v3;
}

- (void)setCallModel:(id)a3
{
  v19 = a3;
  if (v19)
  {
    v4 = objc_alloc_init(CSDMessagingCallModel);
    [(CSDMessagingCall *)self setProtoCallModel:v4];

    v5 = [v19 supportsHolding];
    v6 = [(CSDMessagingCall *)self protoCallModel];
    [v6 setSupportsHolding:v5];

    v7 = [v19 supportsGrouping];
    v8 = [(CSDMessagingCall *)self protoCallModel];
    [v8 setSupportsGrouping:v7];

    v9 = [v19 supportsUngrouping];
    v10 = [(CSDMessagingCall *)self protoCallModel];
    [v10 setSupportsUngrouping:v9];

    v11 = [v19 supportsUnambiguousMultiPartyState];
    v12 = [(CSDMessagingCall *)self protoCallModel];
    [v12 setSupportsUnambiguousMultiPartyState:v11];

    v13 = [v19 supportsAddCall];
    v14 = [(CSDMessagingCall *)self protoCallModel];
    [v14 setSupportsAddCall:v13];

    v15 = [v19 supportsSendingToVoicemail];
    v16 = [(CSDMessagingCall *)self protoCallModel];
    [v16 setSupportsSendingToVoicemail:v15];

    v17 = [v19 supportsDTMF];
    v18 = [(CSDMessagingCall *)self protoCallModel];
    [v18 setSupportsDTMF:v17];
  }

  else
  {
    [(CSDMessagingCall *)self setProtoCallModel:0];
  }
}

- (void)setTuHandle:(id)a3
{
  v4 = a3;
  v5 = [v4 value];
  [(CSDMessagingCall *)self setDestinationID:v5];

  v6 = [CSDMessagingHandle handleWithTUHandle:v4];

  [(CSDMessagingCall *)self setHandle:v6];
}

- (TUHandle)tuHandle
{
  v3 = [(CSDMessagingCall *)self handle];
  v4 = [v3 tuHandle];

  if (!v4)
  {
    v4 = [(CSDMessagingCall *)self destinationID];

    if (v4)
    {
      v5 = [(CSDMessagingCall *)self destinationID];
      v4 = [TUHandle handleWithDestinationID:v5];
    }
  }

  return v4;
}

- (void)setTuProvider:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = [[CSDMessagingCallProvider alloc] initWithProvider:v5];
    [(CSDMessagingCall *)self setProtoProvider:v4];
    [(CSDMessagingCall *)self setService:[TUCallProviderManager serviceForProvider:v5 video:[(CSDMessagingCall *)self isVideo]]];
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

- (void)setDateConnected:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];

  [(CSDMessagingCall *)self setProtoTimeConnected:?];
}

- (NSUUID)localSenderIdentityUUID
{
  v3 = [(CSDMessagingCall *)self localSenderIdentityUUIDString];
  if (v3)
  {
    v4 = [NSUUID alloc];
    v5 = [(CSDMessagingCall *)self localSenderIdentityUUIDString];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setLocalSenderIdentityUUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(CSDMessagingCall *)self setLocalSenderIdentityUUIDString:v4];
}

- (NSUUID)localSenderIdentityAccountUUID
{
  v3 = [(CSDMessagingCall *)self localSenderIdentityAccountUUIDString];
  if (v3)
  {
    v4 = [NSUUID alloc];
    v5 = [(CSDMessagingCall *)self localSenderIdentityAccountUUIDString];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setLocalSenderIdentityAccountUUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(CSDMessagingCall *)self setLocalSenderIdentityAccountUUIDString:v4];
}

- (NSSet)remoteParticipantTUHandles
{
  v3 = [(CSDMessagingCall *)self remoteParticipantHandles];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CSDMessagingCall *)self remoteParticipantHandles];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) tuHandle];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (void)setRemoteParticipantTUHandles:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [CSDMessagingHandle handleWithTUHandle:*(*(&v10 + 1) + 8 * v8)];
        if (v9)
        {
          [(CSDMessagingCall *)self addRemoteParticipantHandles:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

@end