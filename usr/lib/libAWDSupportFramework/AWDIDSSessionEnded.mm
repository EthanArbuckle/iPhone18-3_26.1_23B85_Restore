@interface AWDIDSSessionEnded
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCallDuration:(BOOL)duration;
- (void)setHasConferenceMiscError:(BOOL)error;
- (void)setHasConnectDuration:(BOOL)duration;
- (void)setHasConnectionType:(BOOL)type;
- (void)setHasCurrentNatType:(BOOL)type;
- (void)setHasDataRate:(BOOL)rate;
- (void)setHasEndedReason:(BOOL)reason;
- (void)setHasGameKitError:(BOOL)error;
- (void)setHasGenericError:(BOOL)error;
- (void)setHasGksError:(BOOL)error;
- (void)setHasGksReturnCode:(BOOL)code;
- (void)setHasIsInitiator:(BOOL)initiator;
- (void)setHasIsNetworkActive:(BOOL)active;
- (void)setHasIsNetworkEnabled:(BOOL)enabled;
- (void)setHasIsNetworkReachable:(BOOL)reachable;
- (void)setHasLinkQuality:(BOOL)quality;
- (void)setHasLocalNetworkConnection:(BOOL)connection;
- (void)setHasNetworkCheckResult:(BOOL)result;
- (void)setHasRelayConnectDuration:(BOOL)duration;
- (void)setHasRemoteNatType:(BOOL)type;
- (void)setHasRemoteNetworkConnection:(BOOL)connection;
- (void)setHasUsesRelay:(BOOL)relay;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSSessionEnded

- (void)dealloc
{
  [(AWDIDSSessionEnded *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDIDSSessionEnded;
  [(AWDIDSSessionEnded *)&v3 dealloc];
}

- (void)setHasEndedReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasGenericError:(BOOL)error
{
  if (error)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasGameKitError:(BOOL)error
{
  if (error)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasConferenceMiscError:(BOOL)error
{
  if (error)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasCallDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasIsNetworkEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasIsNetworkActive:(BOOL)active
{
  if (active)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasIsNetworkReachable:(BOOL)reachable
{
  if (reachable)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasNetworkCheckResult:(BOOL)result
{
  if (result)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasDataRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasGksError:(BOOL)error
{
  if (error)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasConnectDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasRemoteNetworkConnection:(BOOL)connection
{
  if (connection)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasLocalNetworkConnection:(BOOL)connection
{
  if (connection)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasConnectionType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasUsesRelay:(BOOL)relay
{
  if (relay)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasCurrentNatType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasRemoteNatType:(BOOL)type
{
  if (type)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasRelayConnectDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasIsInitiator:(BOOL)initiator
{
  if (initiator)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasLinkQuality:(BOOL)quality
{
  if (quality)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasGksReturnCode:(BOOL)code
{
  if (code)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSSessionEnded;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSSessionEnded description](&v3, sel_description), -[AWDIDSSessionEnded dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  guid = self->_guid;
  if (guid)
  {
    [dictionary setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_endedReason), @"endedReason"}];
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_7:
      if ((*&has & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_genericError), @"genericError"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_gameKitError), @"gameKitError"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_conferenceMiscError), @"conferenceMiscError"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_callDuration), @"callDuration"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isNetworkEnabled), @"isNetworkEnabled"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isNetworkActive), @"isNetworkActive"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isNetworkReachable), @"isNetworkReachable"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_networkCheckResult), @"networkCheckResult"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dataRate), @"dataRate"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_gksError), @"gksError"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectDuration), @"connectDuration"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_remoteNetworkConnection), @"remoteNetworkConnection"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_localNetworkConnection), @"localNetworkConnection"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_usesRelay), @"usesRelay"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_22:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_currentNatType), @"currentNatType"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_23:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_remoteNatType), @"remoteNatType"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_relayConnectDuration), @"relayConnectDuration"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_26;
    }

LABEL_49:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
    if ((*&self->_has & 0x800) == 0)
    {
      return dictionary;
    }

    goto LABEL_27;
  }

LABEL_48:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isInitiator), @"isInitiator"}];
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    goto LABEL_49;
  }

LABEL_26:
  if ((*&has & 0x800) != 0)
  {
LABEL_27:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_gksReturnCode), @"gksReturnCode"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    endedReason = self->_endedReason;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_7:
      if ((*&has & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_7;
  }

  genericError = self->_genericError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  gameKitError = self->_gameKitError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  conferenceMiscError = self->_conferenceMiscError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  callDuration = self->_callDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  isNetworkEnabled = self->_isNetworkEnabled;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  isNetworkActive = self->_isNetworkActive;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  isNetworkReachable = self->_isNetworkReachable;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  networkCheckResult = self->_networkCheckResult;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  dataRate = self->_dataRate;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  gksError = self->_gksError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  connectDuration = self->_connectDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  remoteNetworkConnection = self->_remoteNetworkConnection;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  localNetworkConnection = self->_localNetworkConnection;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  connectionType = self->_connectionType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  usesRelay = self->_usesRelay;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_22:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  currentNatType = self->_currentNatType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_23:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  remoteNatType = self->_remoteNatType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  relayConnectDuration = self->_relayConnectDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_26;
    }

LABEL_48:
    linkQuality = self->_linkQuality;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x800) == 0)
    {
      return;
    }

    goto LABEL_49;
  }

LABEL_47:
  isInitiator = self->_isInitiator;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    goto LABEL_48;
  }

LABEL_26:
  if ((*&has & 0x800) == 0)
  {
    return;
  }

LABEL_49:
  gksReturnCode = self->_gksReturnCode;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 29) |= 1u;
  }

  if (self->_guid)
  {
    [to setGuid:?];
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    *(to + 10) = self->_endedReason;
    *(to + 29) |= 0x80u;
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_7:
      if ((*&has & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_7;
  }

  *(to + 12) = self->_genericError;
  *(to + 29) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_8:
    if ((*&has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(to + 11) = self->_gameKitError;
  *(to + 29) |= 0x100u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_9:
    if ((*&has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(to + 5) = self->_conferenceMiscError;
  *(to + 29) |= 4u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(to + 4) = self->_callDuration;
  *(to + 29) |= 2u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(to + 20) = self->_isNetworkEnabled;
  *(to + 29) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(to + 19) = self->_isNetworkActive;
  *(to + 29) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_13:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(to + 21) = self->_isNetworkReachable;
  *(to + 29) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(to + 24) = self->_networkCheckResult;
  *(to + 29) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(to + 9) = self->_dataRate;
  *(to + 29) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(to + 13) = self->_gksError;
  *(to + 29) |= 0x400u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(to + 6) = self->_connectDuration;
  *(to + 29) |= 8u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(to + 27) = self->_remoteNetworkConnection;
  *(to + 29) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(to + 23) = self->_localNetworkConnection;
  *(to + 29) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(to + 7) = self->_connectionType;
  *(to + 29) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(to + 28) = self->_usesRelay;
  *(to + 29) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_22:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(to + 8) = self->_currentNatType;
  *(to + 29) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_23:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(to + 26) = self->_remoteNatType;
  *(to + 29) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(to + 25) = self->_relayConnectDuration;
  *(to + 29) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(to + 18) = self->_isInitiator;
  *(to + 29) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_26:
    if ((*&has & 0x800) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_49:
  *(to + 22) = self->_linkQuality;
  *(to + 29) |= 0x10000u;
  if ((*&self->_has & 0x800) == 0)
  {
    return;
  }

LABEL_27:
  *(to + 14) = self->_gksReturnCode;
  *(to + 29) |= 0x800u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 116) |= 1u;
  }

  *(v6 + 64) = [(NSString *)self->_guid copyWithZone:zone];
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    *(v6 + 40) = self->_endedReason;
    *(v6 + 116) |= 0x80u;
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_5:
      if ((*&has & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 48) = self->_genericError;
  *(v6 + 116) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v6 + 44) = self->_gameKitError;
  *(v6 + 116) |= 0x100u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v6 + 20) = self->_conferenceMiscError;
  *(v6 + 116) |= 4u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v6 + 16) = self->_callDuration;
  *(v6 + 116) |= 2u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v6 + 80) = self->_isNetworkEnabled;
  *(v6 + 116) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v6 + 76) = self->_isNetworkActive;
  *(v6 + 116) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v6 + 84) = self->_isNetworkReachable;
  *(v6 + 116) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v6 + 96) = self->_networkCheckResult;
  *(v6 + 116) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v6 + 36) = self->_dataRate;
  *(v6 + 116) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v6 + 52) = self->_gksError;
  *(v6 + 116) |= 0x400u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v6 + 24) = self->_connectDuration;
  *(v6 + 116) |= 8u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v6 + 108) = self->_remoteNetworkConnection;
  *(v6 + 116) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_17:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v6 + 92) = self->_localNetworkConnection;
  *(v6 + 116) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_18:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v6 + 28) = self->_connectionType;
  *(v6 + 116) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_19:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v6 + 112) = self->_usesRelay;
  *(v6 + 116) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_20:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v6 + 32) = self->_currentNatType;
  *(v6 + 116) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_21:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v6 + 104) = self->_remoteNatType;
  *(v6 + 116) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_22:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v6 + 100) = self->_relayConnectDuration;
  *(v6 + 116) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_23:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_24;
    }

LABEL_47:
    *(v6 + 88) = self->_linkQuality;
    *(v6 + 116) |= 0x10000u;
    if ((*&self->_has & 0x800) == 0)
    {
      return v6;
    }

    goto LABEL_25;
  }

LABEL_46:
  *(v6 + 72) = self->_isInitiator;
  *(v6 + 116) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    goto LABEL_47;
  }

LABEL_24:
  if ((*&has & 0x800) != 0)
  {
LABEL_25:
    *(v6 + 56) = self->_gksReturnCode;
    *(v6 + 116) |= 0x800u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 29);
    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_119;
      }
    }

    else if (v7)
    {
LABEL_119:
      LOBYTE(v5) = 0;
      return v5;
    }

    guid = self->_guid;
    if (guid | *(equal + 8))
    {
      v5 = [(NSString *)guid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(equal + 29);
    if ((*&has & 0x80) != 0)
    {
      if ((v9 & 0x80) == 0 || self->_endedReason != *(equal + 10))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v9 & 0x200) == 0 || self->_genericError != *(equal + 12))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x200) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v9 & 0x100) == 0 || self->_gameKitError != *(equal + 11))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x100) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 4) != 0)
    {
      if ((v9 & 4) == 0 || self->_conferenceMiscError != *(equal + 5))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 4) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 2) != 0)
    {
      if ((v9 & 2) == 0 || self->_callDuration != *(equal + 4))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 2) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v9 & 0x4000) == 0 || self->_isNetworkEnabled != *(equal + 20))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x4000) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v9 & 0x2000) == 0 || self->_isNetworkActive != *(equal + 19))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x2000) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v9 & 0x8000) == 0 || self->_isNetworkReachable != *(equal + 21))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x8000) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v9 & 0x40000) == 0 || self->_networkCheckResult != *(equal + 24))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x40000) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v9 & 0x40) == 0 || self->_dataRate != *(equal + 9))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x40) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v9 & 0x400) == 0 || self->_gksError != *(equal + 13))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x400) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 8) != 0)
    {
      if ((v9 & 8) == 0 || self->_connectDuration != *(equal + 6))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 8) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v9 & 0x200000) == 0 || self->_remoteNetworkConnection != *(equal + 27))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x200000) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v9 & 0x20000) == 0 || self->_localNetworkConnection != *(equal + 23))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x20000) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v9 & 0x10) == 0 || self->_connectionType != *(equal + 7))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x10) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v9 & 0x400000) == 0 || self->_usesRelay != *(equal + 28))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x400000) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v9 & 0x20) == 0 || self->_currentNatType != *(equal + 8))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x20) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v9 & 0x100000) == 0 || self->_remoteNatType != *(equal + 26))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x100000) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v9 & 0x80000) == 0 || self->_relayConnectDuration != *(equal + 25))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x80000) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v9 & 0x1000) == 0 || self->_isInitiator != *(equal + 18))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x1000) != 0)
    {
      goto LABEL_119;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v9 & 0x10000) == 0 || self->_linkQuality != *(equal + 22))
      {
        goto LABEL_119;
      }
    }

    else if ((v9 & 0x10000) != 0)
    {
      goto LABEL_119;
    }

    LOBYTE(v5) = (*(equal + 29) & 0x800) == 0;
    if ((*&has & 0x800) != 0)
    {
      if ((v9 & 0x800) == 0 || self->_gksReturnCode != *(equal + 14))
      {
        goto LABEL_119;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_guid hash];
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v6 = 2654435761 * self->_endedReason;
    if ((*&has & 0x200) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_genericError;
      if ((*&has & 0x100) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v6 = 0;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_gameKitError;
    if ((*&has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  v8 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_conferenceMiscError;
    if ((*&has & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  v9 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_callDuration;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v10 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_isNetworkEnabled;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v11 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_isNetworkActive;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v12 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_isNetworkReachable;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v13 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_networkCheckResult;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v14 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_dataRate;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v15 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_gksError;
    if ((*&has & 8) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v16 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_connectDuration;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v17 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_17:
    v18 = 2654435761 * self->_remoteNetworkConnection;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_18:
    v19 = 2654435761 * self->_localNetworkConnection;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_19:
    v20 = 2654435761 * self->_connectionType;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_20:
    v21 = 2654435761 * self->_usesRelay;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v21 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_21:
    v22 = 2654435761 * self->_currentNatType;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  v22 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_22:
    v23 = 2654435761 * self->_remoteNatType;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  v23 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_23:
    v24 = 2654435761 * self->_relayConnectDuration;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  v24 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_24:
    v25 = 2654435761 * self->_isInitiator;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_25;
    }

LABEL_47:
    v26 = 0;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_26;
    }

LABEL_48:
    v27 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27;
  }

LABEL_46:
  v25 = 0;
  if ((*&has & 0x10000) == 0)
  {
    goto LABEL_47;
  }

LABEL_25:
  v26 = 2654435761 * self->_linkQuality;
  if ((*&has & 0x800) == 0)
  {
    goto LABEL_48;
  }

LABEL_26:
  v27 = 2654435761 * self->_gksReturnCode;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 116))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 8))
  {
    [(AWDIDSSessionEnded *)self setGuid:?];
  }

  v5 = *(from + 29);
  if ((v5 & 0x80) != 0)
  {
    self->_endedReason = *(from + 10);
    *&self->_has |= 0x80u;
    v5 = *(from + 29);
    if ((v5 & 0x200) == 0)
    {
LABEL_7:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_7;
  }

  self->_genericError = *(from + 12);
  *&self->_has |= 0x200u;
  v5 = *(from + 29);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_gameKitError = *(from + 11);
  *&self->_has |= 0x100u;
  v5 = *(from + 29);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_conferenceMiscError = *(from + 5);
  *&self->_has |= 4u;
  v5 = *(from + 29);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_callDuration = *(from + 4);
  *&self->_has |= 2u;
  v5 = *(from + 29);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_isNetworkEnabled = *(from + 20);
  *&self->_has |= 0x4000u;
  v5 = *(from + 29);
  if ((v5 & 0x2000) == 0)
  {
LABEL_12:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_isNetworkActive = *(from + 19);
  *&self->_has |= 0x2000u;
  v5 = *(from + 29);
  if ((v5 & 0x8000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_isNetworkReachable = *(from + 21);
  *&self->_has |= 0x8000u;
  v5 = *(from + 29);
  if ((v5 & 0x40000) == 0)
  {
LABEL_14:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_networkCheckResult = *(from + 24);
  *&self->_has |= 0x40000u;
  v5 = *(from + 29);
  if ((v5 & 0x40) == 0)
  {
LABEL_15:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_dataRate = *(from + 9);
  *&self->_has |= 0x40u;
  v5 = *(from + 29);
  if ((v5 & 0x400) == 0)
  {
LABEL_16:
    if ((v5 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_gksError = *(from + 13);
  *&self->_has |= 0x400u;
  v5 = *(from + 29);
  if ((v5 & 8) == 0)
  {
LABEL_17:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_connectDuration = *(from + 6);
  *&self->_has |= 8u;
  v5 = *(from + 29);
  if ((v5 & 0x200000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_remoteNetworkConnection = *(from + 27);
  *&self->_has |= 0x200000u;
  v5 = *(from + 29);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_localNetworkConnection = *(from + 23);
  *&self->_has |= 0x20000u;
  v5 = *(from + 29);
  if ((v5 & 0x10) == 0)
  {
LABEL_20:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_connectionType = *(from + 7);
  *&self->_has |= 0x10u;
  v5 = *(from + 29);
  if ((v5 & 0x400000) == 0)
  {
LABEL_21:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_usesRelay = *(from + 28);
  *&self->_has |= 0x400000u;
  v5 = *(from + 29);
  if ((v5 & 0x20) == 0)
  {
LABEL_22:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_currentNatType = *(from + 8);
  *&self->_has |= 0x20u;
  v5 = *(from + 29);
  if ((v5 & 0x100000) == 0)
  {
LABEL_23:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_remoteNatType = *(from + 26);
  *&self->_has |= 0x100000u;
  v5 = *(from + 29);
  if ((v5 & 0x80000) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_relayConnectDuration = *(from + 25);
  *&self->_has |= 0x80000u;
  v5 = *(from + 29);
  if ((v5 & 0x1000) == 0)
  {
LABEL_25:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_isInitiator = *(from + 18);
  *&self->_has |= 0x1000u;
  v5 = *(from + 29);
  if ((v5 & 0x10000) == 0)
  {
LABEL_26:
    if ((v5 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_49:
  self->_linkQuality = *(from + 22);
  *&self->_has |= 0x10000u;
  if ((*(from + 29) & 0x800) == 0)
  {
    return;
  }

LABEL_27:
  self->_gksReturnCode = *(from + 14);
  *&self->_has |= 0x800u;
}

@end