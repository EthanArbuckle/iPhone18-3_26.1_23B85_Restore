@interface AWDIDSQuickRelay
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasEventSubType:(BOOL)a3;
- (void)setHasEventType:(BOOL)a3;
- (void)setHasInterfaceType:(BOOL)a3;
- (void)setHasIsInitiator:(BOOL)a3;
- (void)setHasProtocolVersion:(BOOL)a3;
- (void)setHasProviderType:(BOOL)a3;
- (void)setHasResultCode:(BOOL)a3;
- (void)setHasRetryCount:(BOOL)a3;
- (void)setHasSkeEnabled:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTransportType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSQuickRelay

- (void)dealloc
{
  [(AWDIDSQuickRelay *)self setServiceName:0];
  [(AWDIDSQuickRelay *)self setSubServiceName:0];
  v3.receiver = self;
  v3.super_class = AWDIDSQuickRelay;
  [(AWDIDSQuickRelay *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasEventType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasEventSubType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasResultCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTransportType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasInterfaceType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasSkeEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasIsInitiator:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasProtocolVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasRetryCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasProviderType:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSQuickRelay;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSQuickRelay description](&v3, sel_description), -[AWDIDSQuickRelay dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_eventType), @"eventType"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_eventSubType), @"eventSubType"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_resultCode), @"resultCode"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_transportType), @"transportType"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_interfaceType), @"interfaceType"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_skeEnabled), @"skeEnabled"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isInitiator), @"isInitiator"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_29:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_protocolVersion), @"protocolVersion"}];
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_12:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_retryCount), @"retryCount"}];
  }

LABEL_13:
  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v3 setObject:serviceName forKey:@"serviceName"];
  }

  subServiceName = self->_subServiceName;
  if (subServiceName)
  {
    [v3 setObject:subServiceName forKey:@"subServiceName"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_providerType), @"providerType"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  eventType = self->_eventType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  eventSubType = self->_eventSubType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  duration = self->_duration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  resultCode = self->_resultCode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  transportType = self->_transportType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  interfaceType = self->_interfaceType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  skeEnabled = self->_skeEnabled;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  isInitiator = self->_isInitiator;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_28:
  protocolVersion = self->_protocolVersion;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_12:
    retryCount = self->_retryCount;
    PBDataWriterWriteUint32Field();
  }

LABEL_13:
  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subServiceName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x80) != 0)
  {
    providerType = self->_providerType;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 42) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 7) = self->_eventType;
  *(a3 + 42) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 6) = self->_eventSubType;
  *(a3 + 42) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a3 + 1) = self->_duration;
  *(a3 + 42) |= 1u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 12) = self->_resultCode;
  *(a3 + 42) |= 0x100u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 20) = self->_transportType;
  *(a3 + 42) |= 0x800u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a3 + 8) = self->_interfaceType;
  *(a3 + 42) |= 0x10u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a3 + 16) = self->_skeEnabled;
  *(a3 + 42) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(a3 + 9) = self->_isInitiator;
  *(a3 + 42) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_29:
  *(a3 + 10) = self->_protocolVersion;
  *(a3 + 42) |= 0x40u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_12:
    *(a3 + 13) = self->_retryCount;
    *(a3 + 42) |= 0x200u;
  }

LABEL_13:
  if (self->_serviceName)
  {
    [a3 setServiceName:?];
  }

  if (self->_subServiceName)
  {
    [a3 setSubServiceName:?];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(a3 + 11) = self->_providerType;
    *(a3 + 42) |= 0x80u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 84) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 28) = self->_eventType;
  *(v5 + 84) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 24) = self->_eventSubType;
  *(v5 + 84) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 8) = self->_duration;
  *(v5 + 84) |= 1u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 48) = self->_resultCode;
  *(v5 + 84) |= 0x100u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 80) = self->_transportType;
  *(v5 + 84) |= 0x800u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 32) = self->_interfaceType;
  *(v5 + 84) |= 0x10u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 64) = self->_skeEnabled;
  *(v5 + 84) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 36) = self->_isInitiator;
  *(v5 + 84) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  *(v5 + 40) = self->_protocolVersion;
  *(v5 + 84) |= 0x40u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_12:
    *(v5 + 52) = self->_retryCount;
    *(v5 + 84) |= 0x200u;
  }

LABEL_13:

  *(v6 + 56) = [(NSString *)self->_serviceName copyWithZone:a3];
  *(v6 + 72) = [(NSString *)self->_subServiceName copyWithZone:a3];
  if ((*&self->_has & 0x80) != 0)
  {
    *(v6 + 44) = self->_providerType;
    *(v6 + 84) |= 0x80u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 42);
    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_65;
      }
    }

    else if ((v7 & 2) != 0)
    {
LABEL_65:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_eventType != *(a3 + 7))
      {
        goto LABEL_65;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_65;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_eventSubType != *(a3 + 6))
      {
        goto LABEL_65;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_65;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_duration != *(a3 + 1))
      {
        goto LABEL_65;
      }
    }

    else if (v7)
    {
      goto LABEL_65;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 42) & 0x100) == 0 || self->_resultCode != *(a3 + 12))
      {
        goto LABEL_65;
      }
    }

    else if ((*(a3 + 42) & 0x100) != 0)
    {
      goto LABEL_65;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(a3 + 42) & 0x800) == 0 || self->_transportType != *(a3 + 20))
      {
        goto LABEL_65;
      }
    }

    else if ((*(a3 + 42) & 0x800) != 0)
    {
      goto LABEL_65;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_interfaceType != *(a3 + 8))
      {
        goto LABEL_65;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_65;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(a3 + 42) & 0x400) == 0 || self->_skeEnabled != *(a3 + 16))
      {
        goto LABEL_65;
      }
    }

    else if ((*(a3 + 42) & 0x400) != 0)
    {
      goto LABEL_65;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_isInitiator != *(a3 + 9))
      {
        goto LABEL_65;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_65;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_protocolVersion != *(a3 + 10))
      {
        goto LABEL_65;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_65;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(a3 + 42) & 0x200) == 0 || self->_retryCount != *(a3 + 13))
      {
        goto LABEL_65;
      }
    }

    else if ((*(a3 + 42) & 0x200) != 0)
    {
      goto LABEL_65;
    }

    serviceName = self->_serviceName;
    if (!(serviceName | *(a3 + 7)) || (v5 = [(NSString *)serviceName isEqual:?]) != 0)
    {
      subServiceName = self->_subServiceName;
      if (!(subServiceName | *(a3 + 9)) || (v5 = [(NSString *)subServiceName isEqual:?]) != 0)
      {
        v10 = *(a3 + 42);
        LOBYTE(v5) = (v10 & 0x80) == 0;
        if ((*&self->_has & 0x80) != 0)
        {
          if ((v10 & 0x80) == 0 || self->_providerType != *(a3 + 11))
          {
            goto LABEL_65;
          }

          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    v18 = 2654435761u * self->_timestamp;
    if ((has & 8) != 0)
    {
LABEL_3:
      v17 = 2654435761 * self->_eventType;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v18 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v16 = 2654435761 * self->_eventSubType;
    if (has)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v16 = 0;
  if (has)
  {
LABEL_5:
    v15 = 2654435761u * self->_duration;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v15 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_6:
    v14 = 2654435761 * self->_resultCode;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v14 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_7:
    v4 = 2654435761 * self->_transportType;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v5 = 2654435761 * self->_interfaceType;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_9:
    v6 = 2654435761 * self->_skeEnabled;
    if ((has & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_10:
    v7 = 2654435761 * self->_isInitiator;
    if ((has & 0x40) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v8 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_21:
  v7 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v8 = 2654435761 * self->_protocolVersion;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_12:
    v9 = 2654435761 * self->_retryCount;
    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
LABEL_24:
  v10 = [(NSString *)self->_serviceName hash];
  v11 = [(NSString *)self->_subServiceName hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v12 = 2654435761 * self->_providerType;
  }

  else
  {
    v12 = 0;
  }

  return v17 ^ v18 ^ v16 ^ v15 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 42);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v5 = *(a3 + 42);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_eventType = *(a3 + 7);
  *&self->_has |= 8u;
  v5 = *(a3 + 42);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_eventSubType = *(a3 + 6);
  *&self->_has |= 4u;
  v5 = *(a3 + 42);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_duration = *(a3 + 1);
  *&self->_has |= 1u;
  v5 = *(a3 + 42);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_resultCode = *(a3 + 12);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 42);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_transportType = *(a3 + 20);
  *&self->_has |= 0x800u;
  v5 = *(a3 + 42);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_interfaceType = *(a3 + 8);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 42);
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_skeEnabled = *(a3 + 16);
  *&self->_has |= 0x400u;
  v5 = *(a3 + 42);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_isInitiator = *(a3 + 9);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 42);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_29:
  self->_protocolVersion = *(a3 + 10);
  *&self->_has |= 0x40u;
  if ((*(a3 + 42) & 0x200) != 0)
  {
LABEL_12:
    self->_retryCount = *(a3 + 13);
    *&self->_has |= 0x200u;
  }

LABEL_13:
  if (*(a3 + 7))
  {
    [(AWDIDSQuickRelay *)self setServiceName:?];
  }

  if (*(a3 + 9))
  {
    [(AWDIDSQuickRelay *)self setSubServiceName:?];
  }

  if ((*(a3 + 42) & 0x80) != 0)
  {
    self->_providerType = *(a3 + 11);
    *&self->_has |= 0x80u;
  }
}

@end