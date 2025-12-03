@interface AWDIDSWebTunnelRequestCompleted
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDeliveryType:(BOOL)type;
- (void)setHasReversePushAttempted:(BOOL)attempted;
- (void)setHasTimeTaken:(BOOL)taken;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasTunnelError:(BOOL)error;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSWebTunnelRequestCompleted

- (void)dealloc
{
  [(AWDIDSWebTunnelRequestCompleted *)self setServiceIdentifier:0];
  v3.receiver = self;
  v3.super_class = AWDIDSWebTunnelRequestCompleted;
  [(AWDIDSWebTunnelRequestCompleted *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTimeTaken:(BOOL)taken
{
  if (taken)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDeliveryType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTunnelError:(BOOL)error
{
  if (error)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasReversePushAttempted:(BOOL)attempted
{
  if (attempted)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSWebTunnelRequestCompleted;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSWebTunnelRequestCompleted description](&v3, sel_description), -[AWDIDSWebTunnelRequestCompleted dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    [dictionary setObject:serviceIdentifier forKey:@"serviceIdentifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeTaken), @"timeTaken"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_deliveryType), @"deliveryType"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestSize), @"requestSize"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return dictionary;
    }

    goto LABEL_10;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_tunnelError), @"tunnelError"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((has & 0x20) != 0)
  {
LABEL_10:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_reversePushAttempted), @"reversePushAttempted"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_serviceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    timeTaken = self->_timeTaken;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  deliveryType = self->_deliveryType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    requestSize = self->_requestSize;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_13:
  tunnelError = self->_tunnelError;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((has & 0x20) == 0)
  {
    return;
  }

LABEL_15:
  reversePushAttempted = self->_reversePushAttempted;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 4) != 0)
  {
    *(to + 3) = self->_timestamp;
    *(to + 56) |= 4u;
  }

  if (self->_serviceIdentifier)
  {
    [to setServiceIdentifier:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_timeTaken;
    *(to + 56) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  *(to + 8) = self->_deliveryType;
  *(to + 56) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(to + 12) = self->_tunnelError;
  *(to + 56) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_15:
  *(to + 1) = self->_requestSize;
  *(to + 56) |= 1u;
  if ((*&self->_has & 0x20) == 0)
  {
    return;
  }

LABEL_10:
  *(to + 52) = self->_reversePushAttempted;
  *(to + 56) |= 0x20u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 56) |= 4u;
  }

  *(v6 + 40) = [(NSString *)self->_serviceIdentifier copyWithZone:zone];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_timeTaken;
    *(v6 + 56) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 32) = self->_deliveryType;
  *(v6 + 56) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    *(v6 + 8) = self->_requestSize;
    *(v6 + 56) |= 1u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

LABEL_12:
  *(v6 + 48) = self->_tunnelError;
  *(v6 + 56) |= 0x10u;
  has = self->_has;
  if (has)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((has & 0x20) != 0)
  {
LABEL_8:
    *(v6 + 52) = self->_reversePushAttempted;
    *(v6 + 56) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 56);
    if ((has & 4) != 0)
    {
      if ((*(equal + 56) & 4) == 0 || self->_timestamp != *(equal + 3))
      {
        goto LABEL_32;
      }
    }

    else if ((*(equal + 56) & 4) != 0)
    {
      goto LABEL_32;
    }

    serviceIdentifier = self->_serviceIdentifier;
    if (serviceIdentifier | *(equal + 5))
    {
      v5 = [(NSString *)serviceIdentifier isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 56) & 2) == 0 || self->_timeTaken != *(equal + 2))
      {
        goto LABEL_32;
      }
    }

    else if ((*(equal + 56) & 2) != 0)
    {
      goto LABEL_32;
    }

    if ((has & 8) != 0)
    {
      if ((*(equal + 56) & 8) == 0 || self->_deliveryType != *(equal + 8))
      {
        goto LABEL_32;
      }
    }

    else if ((*(equal + 56) & 8) != 0)
    {
      goto LABEL_32;
    }

    if ((has & 0x10) != 0)
    {
      if ((*(equal + 56) & 0x10) == 0 || self->_tunnelError != *(equal + 12))
      {
        goto LABEL_32;
      }
    }

    else if ((*(equal + 56) & 0x10) != 0)
    {
      goto LABEL_32;
    }

    if (has)
    {
      if ((*(equal + 56) & 1) == 0 || self->_requestSize != *(equal + 1))
      {
        goto LABEL_32;
      }
    }

    else if (*(equal + 56))
    {
      goto LABEL_32;
    }

    LOBYTE(v5) = (*(equal + 56) & 0x20) == 0;
    if ((has & 0x20) != 0)
    {
      if ((*(equal + 56) & 0x20) == 0)
      {
LABEL_32:
        LOBYTE(v5) = 0;
        return v5;
      }

      if (self->_reversePushAttempted)
      {
        if ((*(equal + 52) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (*(equal + 52))
      {
        goto LABEL_32;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_serviceIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761u * self->_timeTaken;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_deliveryType;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_tunnelError;
    if (*&self->_has)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = 2654435761u * self->_requestSize;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = 2654435761 * self->_reversePushAttempted;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 56) & 4) != 0)
  {
    self->_timestamp = *(from + 3);
    *&self->_has |= 4u;
  }

  if (*(from + 5))
  {
    [(AWDIDSWebTunnelRequestCompleted *)self setServiceIdentifier:?];
  }

  v5 = *(from + 56);
  if ((v5 & 2) != 0)
  {
    self->_timeTaken = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 56);
    if ((v5 & 8) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*(from + 56) & 8) == 0)
  {
    goto LABEL_7;
  }

  self->_deliveryType = *(from + 8);
  *&self->_has |= 8u;
  v5 = *(from + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_tunnelError = *(from + 12);
  *&self->_has |= 0x10u;
  v5 = *(from + 56);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_15:
  self->_requestSize = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 56) & 0x20) == 0)
  {
    return;
  }

LABEL_10:
  self->_reversePushAttempted = *(from + 52);
  *&self->_has |= 0x20u;
}

@end