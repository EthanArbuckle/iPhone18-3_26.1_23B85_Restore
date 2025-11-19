@interface AWDIDSSessionCompleted
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasClientType:(BOOL)a3;
- (void)setHasDestinationType:(BOOL)a3;
- (void)setHasDurationOfSession:(BOOL)a3;
- (void)setHasDurationToConnect:(BOOL)a3;
- (void)setHasEndedReason:(BOOL)a3;
- (void)setHasIsCellularInterfaceDisallowed:(BOOL)a3;
- (void)setHasIsInitiator:(BOOL)a3;
- (void)setHasIsLegacySessionType:(BOOL)a3;
- (void)setHasIsNetworkActive:(BOOL)a3;
- (void)setHasIsNetworkEnabled:(BOOL)a3;
- (void)setHasIsNetworkReachable:(BOOL)a3;
- (void)setHasIsQREnabled:(BOOL)a3;
- (void)setHasIsUsingQRDirectly:(BOOL)a3;
- (void)setHasIsWifiInterfaceDisallowed:(BOOL)a3;
- (void)setHasIsWithDefaultPairedDevice:(BOOL)a3;
- (void)setHasLinkProtocol:(BOOL)a3;
- (void)setHasLinkType:(BOOL)a3;
- (void)setHasSessionProtocolVersionNumber:(BOOL)a3;
- (void)setHasTransportType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSSessionCompleted

- (void)dealloc
{
  [(AWDIDSSessionCompleted *)self setGuid:0];
  [(AWDIDSSessionCompleted *)self setServiceName:0];
  v3.receiver = self;
  v3.super_class = AWDIDSSessionCompleted;
  [(AWDIDSSessionCompleted *)&v3 dealloc];
}

- (void)setHasSessionProtocolVersionNumber:(BOOL)a3
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

- (void)setHasClientType:(BOOL)a3
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

- (void)setHasIsQREnabled:(BOOL)a3
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

- (void)setHasIsUsingQRDirectly:(BOOL)a3
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

- (void)setHasIsInitiator:(BOOL)a3
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

- (void)setHasIsLegacySessionType:(BOOL)a3
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

- (void)setHasIsWithDefaultPairedDevice:(BOOL)a3
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

- (void)setHasTransportType:(BOOL)a3
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

- (void)setHasLinkProtocol:(BOOL)a3
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

- (void)setHasEndedReason:(BOOL)a3
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

- (void)setHasDurationOfSession:(BOOL)a3
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

- (void)setHasDurationToConnect:(BOOL)a3
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

- (void)setHasIsNetworkEnabled:(BOOL)a3
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

- (void)setHasIsNetworkActive:(BOOL)a3
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

- (void)setHasIsNetworkReachable:(BOOL)a3
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

- (void)setHasIsWifiInterfaceDisallowed:(BOOL)a3
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

- (void)setHasIsCellularInterfaceDisallowed:(BOOL)a3
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

- (void)setHasLinkType:(BOOL)a3
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

- (void)setHasDestinationType:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSSessionCompleted;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSSessionCompleted description](&v3, sel_description), -[AWDIDSSessionCompleted dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sessionProtocolVersionNumber), @"sessionProtocolVersionNumber"}];
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v3 setObject:serviceName forKey:@"serviceName"];
  }

  has = self->_has;
  if ((*&has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_clientType), @"clientType"}];
    has = self->_has;
    if ((*&has & 0x1000) == 0)
    {
LABEL_11:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }
  }

  else if ((*&has & 0x1000) == 0)
  {
    goto LABEL_11;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isQREnabled), @"isQREnabled"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isUsingQRDirectly), @"isUsingQRDirectly"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isInitiator), @"isInitiator"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isLegacySessionType), @"isLegacySessionType"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isWithDefaultPairedDevice), @"isWithDefaultPairedDevice"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_transportType), @"transportType"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_17:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_linkProtocol), @"linkProtocol"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_18:
    if ((*&has & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_endedReason), @"endedReason"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durationOfSession), @"durationOfSession"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durationToConnect), @"durationToConnect"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isNetworkEnabled), @"isNetworkEnabled"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isNetworkActive), @"isNetworkActive"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isNetworkReachable), @"isNetworkReachable"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_24:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isWifiInterfaceDisallowed), @"isWifiInterfaceDisallowed"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_25:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_26;
    }

LABEL_45:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_linkType), @"linkType"}];
    if ((*&self->_has & 4) == 0)
    {
      return v3;
    }

    goto LABEL_27;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isCellularInterfaceDisallowed), @"isCellularInterfaceDisallowed"}];
  has = self->_has;
  if ((*&has & 0x20000) != 0)
  {
    goto LABEL_45;
  }

LABEL_26:
  if ((*&has & 4) != 0)
  {
LABEL_27:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_destinationType), @"destinationType"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

  if ((*(&self->_has + 2) & 4) != 0)
  {
    sessionProtocolVersionNumber = self->_sessionProtocolVersionNumber;
    PBDataWriterWriteUint32Field();
  }

  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 2) != 0)
  {
    clientType = self->_clientType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 0x1000) == 0)
    {
LABEL_11:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_30;
    }
  }

  else if ((*&has & 0x1000) == 0)
  {
    goto LABEL_11;
  }

  isQREnabled = self->_isQREnabled;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  isUsingQRDirectly = self->_isUsingQRDirectly;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  isInitiator = self->_isInitiator;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  isLegacySessionType = self->_isLegacySessionType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  isWithDefaultPairedDevice = self->_isWithDefaultPairedDevice;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  transportType = self->_transportType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_17:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  linkProtocol = self->_linkProtocol;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_18:
    if ((*&has & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  endedReason = self->_endedReason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  durationOfSession = self->_durationOfSession;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  durationToConnect = self->_durationToConnect;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  isNetworkEnabled = self->_isNetworkEnabled;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  isNetworkActive = self->_isNetworkActive;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

LABEL_41:
  isNetworkReachable = self->_isNetworkReachable;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_24:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

LABEL_42:
  isWifiInterfaceDisallowed = self->_isWifiInterfaceDisallowed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_25:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_26;
    }

LABEL_44:
    linkType = self->_linkType;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_45;
  }

LABEL_43:
  isCellularInterfaceDisallowed = self->_isCellularInterfaceDisallowed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) != 0)
  {
    goto LABEL_44;
  }

LABEL_26:
  if ((*&has & 4) == 0)
  {
    return;
  }

LABEL_45:
  destinationType = self->_destinationType;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 28) |= 1u;
  }

  if (self->_guid)
  {
    [a3 setGuid:?];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(a3 + 26) = self->_sessionProtocolVersionNumber;
    *(a3 + 28) |= 0x40000u;
  }

  if (self->_serviceName)
  {
    [a3 setServiceName:?];
  }

  has = self->_has;
  if ((*&has & 2) != 0)
  {
    *(a3 + 4) = self->_clientType;
    *(a3 + 28) |= 2u;
    has = self->_has;
    if ((*&has & 0x1000) == 0)
    {
LABEL_11:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }
  }

  else if ((*&has & 0x1000) == 0)
  {
    goto LABEL_11;
  }

  *(a3 + 18) = self->_isQREnabled;
  *(a3 + 28) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(a3 + 19) = self->_isUsingQRDirectly;
  *(a3 + 28) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(a3 + 13) = self->_isInitiator;
  *(a3 + 28) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(a3 + 14) = self->_isLegacySessionType;
  *(a3 + 28) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a3 + 21) = self->_isWithDefaultPairedDevice;
  *(a3 + 28) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 27) = self->_transportType;
  *(a3 + 28) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_17:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 22) = self->_linkProtocol;
  *(a3 + 28) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_18:
    if ((*&has & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 8) = self->_endedReason;
  *(a3 + 28) |= 0x20u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 6) = self->_durationOfSession;
  *(a3 + 28) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 7) = self->_durationToConnect;
  *(a3 + 28) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 16) = self->_isNetworkEnabled;
  *(a3 + 28) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 15) = self->_isNetworkActive;
  *(a3 + 28) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a3 + 17) = self->_isNetworkReachable;
  *(a3 + 28) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_24:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 20) = self->_isWifiInterfaceDisallowed;
  *(a3 + 28) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_25:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a3 + 12) = self->_isCellularInterfaceDisallowed;
  *(a3 + 28) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_26:
    if ((*&has & 4) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_45:
  *(a3 + 23) = self->_linkType;
  *(a3 + 28) |= 0x20000u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_27:
  *(a3 + 5) = self->_destinationType;
  *(a3 + 28) |= 4u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 112) |= 1u;
  }

  *(v6 + 40) = [(NSString *)self->_guid copyWithZone:a3];
  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(v6 + 104) = self->_sessionProtocolVersionNumber;
    *(v6 + 112) |= 0x40000u;
  }

  *(v6 + 96) = [(NSString *)self->_serviceName copyWithZone:a3];
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    *(v6 + 16) = self->_clientType;
    *(v6 + 112) |= 2u;
    has = self->_has;
    if ((*&has & 0x1000) == 0)
    {
LABEL_7:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 0x1000) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 72) = self->_isQREnabled;
  *(v6 + 112) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v6 + 76) = self->_isUsingQRDirectly;
  *(v6 + 112) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v6 + 52) = self->_isInitiator;
  *(v6 + 112) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v6 + 56) = self->_isLegacySessionType;
  *(v6 + 112) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v6 + 84) = self->_isWithDefaultPairedDevice;
  *(v6 + 112) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v6 + 108) = self->_transportType;
  *(v6 + 112) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v6 + 88) = self->_linkProtocol;
  *(v6 + 112) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v6 + 32) = self->_endedReason;
  *(v6 + 112) |= 0x20u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v6 + 24) = self->_durationOfSession;
  *(v6 + 112) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_16:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v6 + 28) = self->_durationToConnect;
  *(v6 + 112) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_17:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v6 + 64) = self->_isNetworkEnabled;
  *(v6 + 112) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_18:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v6 + 60) = self->_isNetworkActive;
  *(v6 + 112) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v6 + 68) = self->_isNetworkReachable;
  *(v6 + 112) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v6 + 80) = self->_isWifiInterfaceDisallowed;
  *(v6 + 112) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_22;
    }

LABEL_41:
    *(v6 + 92) = self->_linkType;
    *(v6 + 112) |= 0x20000u;
    if ((*&self->_has & 4) == 0)
    {
      return v6;
    }

    goto LABEL_23;
  }

LABEL_40:
  *(v6 + 48) = self->_isCellularInterfaceDisallowed;
  *(v6 + 112) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x20000) != 0)
  {
    goto LABEL_41;
  }

LABEL_22:
  if ((*&has & 4) != 0)
  {
LABEL_23:
    *(v6 + 20) = self->_destinationType;
    *(v6 + 112) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 28);
    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_107;
      }
    }

    else if (v7)
    {
LABEL_107:
      LOBYTE(v5) = 0;
      return v5;
    }

    guid = self->_guid;
    if (guid | *(a3 + 5))
    {
      v5 = [(NSString *)guid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 28);
    if ((*&has & 0x40000) != 0)
    {
      if ((v9 & 0x40000) == 0 || self->_sessionProtocolVersionNumber != *(a3 + 26))
      {
        goto LABEL_107;
      }
    }

    else if ((v9 & 0x40000) != 0)
    {
      goto LABEL_107;
    }

    serviceName = self->_serviceName;
    if (serviceName | *(a3 + 12))
    {
      v5 = [(NSString *)serviceName isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v11 = *(a3 + 28);
    if ((*&has & 2) != 0)
    {
      if ((v11 & 2) == 0 || self->_clientType != *(a3 + 4))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 2) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v11 & 0x1000) == 0 || self->_isQREnabled != *(a3 + 18))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x1000) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v11 & 0x2000) == 0 || self->_isUsingQRDirectly != *(a3 + 19))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x2000) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v11 & 0x80) == 0 || self->_isInitiator != *(a3 + 13))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x80) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v11 & 0x100) == 0 || self->_isLegacySessionType != *(a3 + 14))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x100) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v11 & 0x8000) == 0 || self->_isWithDefaultPairedDevice != *(a3 + 21))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x8000) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v11 & 0x80000) == 0 || self->_transportType != *(a3 + 27))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x80000) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v11 & 0x10000) == 0 || self->_linkProtocol != *(a3 + 22))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x10000) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v11 & 0x20) == 0 || self->_endedReason != *(a3 + 8))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x20) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 8) != 0)
    {
      if ((v11 & 8) == 0 || self->_durationOfSession != *(a3 + 6))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 8) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v11 & 0x10) == 0 || self->_durationToConnect != *(a3 + 7))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x10) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v11 & 0x400) == 0 || self->_isNetworkEnabled != *(a3 + 16))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x400) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v11 & 0x200) == 0 || self->_isNetworkActive != *(a3 + 15))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x200) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v11 & 0x800) == 0 || self->_isNetworkReachable != *(a3 + 17))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x800) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v11 & 0x4000) == 0 || self->_isWifiInterfaceDisallowed != *(a3 + 20))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x4000) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v11 & 0x40) == 0 || self->_isCellularInterfaceDisallowed != *(a3 + 12))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x40) != 0)
    {
      goto LABEL_107;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v11 & 0x20000) == 0 || self->_linkType != *(a3 + 23))
      {
        goto LABEL_107;
      }
    }

    else if ((v11 & 0x20000) != 0)
    {
      goto LABEL_107;
    }

    LOBYTE(v5) = (*(a3 + 28) & 4) == 0;
    if ((*&has & 4) != 0)
    {
      if ((v11 & 4) == 0 || self->_destinationType != *(a3 + 5))
      {
        goto LABEL_107;
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
  if ((*(&self->_has + 2) & 4) != 0)
  {
    v5 = 2654435761 * self->_sessionProtocolVersionNumber;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_serviceName hash];
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v8 = 2654435761 * self->_clientType;
    if ((*&has & 0x1000) != 0)
    {
LABEL_9:
      v9 = 2654435761 * self->_isQREnabled;
      if ((*&has & 0x2000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v8 = 0;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_9;
    }
  }

  v9 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_10:
    v10 = 2654435761 * self->_isUsingQRDirectly;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v10 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_11:
    v11 = 2654435761 * self->_isInitiator;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_12:
    v12 = 2654435761 * self->_isLegacySessionType;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v12 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_13:
    v13 = 2654435761 * self->_isWithDefaultPairedDevice;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v13 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_14:
    v14 = 2654435761 * self->_transportType;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v14 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_15:
    v15 = 2654435761 * self->_linkProtocol;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v15 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_16:
    v16 = 2654435761 * self->_endedReason;
    if ((*&has & 8) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_17:
    v17 = 2654435761 * self->_durationOfSession;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_18:
    v18 = 2654435761 * self->_durationToConnect;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_19:
    v19 = 2654435761 * self->_isNetworkEnabled;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_20:
    v20 = 2654435761 * self->_isNetworkActive;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_21:
    v21 = 2654435761 * self->_isNetworkReachable;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

LABEL_39:
  v21 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_22:
    v22 = 2654435761 * self->_isWifiInterfaceDisallowed;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_41;
  }

LABEL_40:
  v22 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_23:
    v23 = 2654435761 * self->_isCellularInterfaceDisallowed;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_24;
    }

LABEL_42:
    v24 = 0;
    if ((*&has & 4) != 0)
    {
      goto LABEL_25;
    }

LABEL_43:
    v25 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25;
  }

LABEL_41:
  v23 = 0;
  if ((*&has & 0x20000) == 0)
  {
    goto LABEL_42;
  }

LABEL_24:
  v24 = 2654435761 * self->_linkType;
  if ((*&has & 4) == 0)
  {
    goto LABEL_43;
  }

LABEL_25:
  v25 = 2654435761 * self->_destinationType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 112))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 5))
  {
    [(AWDIDSSessionCompleted *)self setGuid:?];
  }

  if ((*(a3 + 114) & 4) != 0)
  {
    self->_sessionProtocolVersionNumber = *(a3 + 26);
    *&self->_has |= 0x40000u;
  }

  if (*(a3 + 12))
  {
    [(AWDIDSSessionCompleted *)self setServiceName:?];
  }

  v5 = *(a3 + 28);
  if ((v5 & 2) != 0)
  {
    self->_clientType = *(a3 + 4);
    *&self->_has |= 2u;
    v5 = *(a3 + 28);
    if ((v5 & 0x1000) == 0)
    {
LABEL_11:
      if ((v5 & 0x2000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_11;
  }

  self->_isQREnabled = *(a3 + 18);
  *&self->_has |= 0x1000u;
  v5 = *(a3 + 28);
  if ((v5 & 0x2000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_isUsingQRDirectly = *(a3 + 19);
  *&self->_has |= 0x2000u;
  v5 = *(a3 + 28);
  if ((v5 & 0x80) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_isInitiator = *(a3 + 13);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 28);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_isLegacySessionType = *(a3 + 14);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 28);
  if ((v5 & 0x8000) == 0)
  {
LABEL_15:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_isWithDefaultPairedDevice = *(a3 + 21);
  *&self->_has |= 0x8000u;
  v5 = *(a3 + 28);
  if ((v5 & 0x80000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_transportType = *(a3 + 27);
  *&self->_has |= 0x80000u;
  v5 = *(a3 + 28);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_linkProtocol = *(a3 + 22);
  *&self->_has |= 0x10000u;
  v5 = *(a3 + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_18:
    if ((v5 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_endedReason = *(a3 + 8);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_19:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_durationOfSession = *(a3 + 6);
  *&self->_has |= 8u;
  v5 = *(a3 + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_20:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_durationToConnect = *(a3 + 7);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 28);
  if ((v5 & 0x400) == 0)
  {
LABEL_21:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_isNetworkEnabled = *(a3 + 16);
  *&self->_has |= 0x400u;
  v5 = *(a3 + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_22:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_isNetworkActive = *(a3 + 15);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_23:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_isNetworkReachable = *(a3 + 17);
  *&self->_has |= 0x800u;
  v5 = *(a3 + 28);
  if ((v5 & 0x4000) == 0)
  {
LABEL_24:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_isWifiInterfaceDisallowed = *(a3 + 20);
  *&self->_has |= 0x4000u;
  v5 = *(a3 + 28);
  if ((v5 & 0x40) == 0)
  {
LABEL_25:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_isCellularInterfaceDisallowed = *(a3 + 12);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 28);
  if ((v5 & 0x20000) == 0)
  {
LABEL_26:
    if ((v5 & 4) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_45:
  self->_linkType = *(a3 + 23);
  *&self->_has |= 0x20000u;
  if ((*(a3 + 28) & 4) == 0)
  {
    return;
  }

LABEL_27:
  self->_destinationType = *(a3 + 5);
  *&self->_has |= 4u;
}

@end