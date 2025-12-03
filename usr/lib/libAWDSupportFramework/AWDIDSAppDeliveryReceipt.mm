@interface AWDIDSAppDeliveryReceipt
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasMessageSize:(BOOL)size;
- (void)setHasPriority:(BOOL)priority;
- (void)setHasRTT:(BOOL)t;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSAppDeliveryReceipt

- (void)dealloc
{
  [(AWDIDSAppDeliveryReceipt *)self setService:0];
  v3.receiver = self;
  v3.super_class = AWDIDSAppDeliveryReceipt;
  [(AWDIDSAppDeliveryReceipt *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasMessageSize:(BOOL)size
{
  if (size)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRTT:(BOOL)t
{
  if (t)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPriority:(BOOL)priority
{
  if (priority)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSAppDeliveryReceipt;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSAppDeliveryReceipt description](&v3, sel_description), -[AWDIDSAppDeliveryReceipt dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  service = self->_service;
  if (service)
  {
    [dictionary setObject:service forKey:@"service"];
  }

  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_isToDefaultPairedDevice), @"isToDefaultPairedDevice"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rTT), @"RTT"}];
      if ((*&self->_has & 4) == 0)
      {
        return dictionary;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_messageSize), @"messageSize"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((has & 4) != 0)
  {
LABEL_9:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_priority), @"priority"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if ((*&self->_has & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_service)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    isToDefaultPairedDevice = self->_isToDefaultPairedDevice;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      rTT = self->_rTT;
      PBDataWriterWriteUint64Field();
      if ((*&self->_has & 4) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  messageSize = self->_messageSize;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_13:
  priority = self->_priority;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 0x10) != 0)
  {
    *(to + 5) = self->_timestamp;
    *(to + 56) |= 0x10u;
  }

  if (self->_service)
  {
    [to setService:?];
  }

  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_isToDefaultPairedDevice;
    *(to + 56) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(to + 2) = self->_messageSize;
  *(to + 56) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_13:
  *(to + 4) = self->_rTT;
  *(to + 56) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_9:
  *(to + 3) = self->_priority;
  *(to + 56) |= 4u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 40) = self->_timestamp;
    *(v5 + 56) |= 0x10u;
  }

  *(v6 + 48) = [(NSString *)self->_service copyWithZone:zone];
  has = self->_has;
  if (has)
  {
    *(v6 + 8) = self->_isToDefaultPairedDevice;
    *(v6 + 56) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 32) = self->_rTT;
      *(v6 + 56) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        return v6;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_messageSize;
  *(v6 + 56) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 4) != 0)
  {
LABEL_7:
    *(v6 + 24) = self->_priority;
    *(v6 + 56) |= 4u;
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
    if ((has & 0x10) != 0)
    {
      if ((*(equal + 56) & 0x10) == 0 || self->_timestamp != *(equal + 5))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 56) & 0x10) != 0)
    {
LABEL_29:
      LOBYTE(v5) = 0;
      return v5;
    }

    service = self->_service;
    if (service | *(equal + 6))
    {
      v5 = [(NSString *)service isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if (has)
    {
      if ((*(equal + 56) & 1) == 0 || self->_isToDefaultPairedDevice != *(equal + 1))
      {
        goto LABEL_29;
      }
    }

    else if (*(equal + 56))
    {
      goto LABEL_29;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 56) & 2) == 0 || self->_messageSize != *(equal + 2))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 56) & 2) != 0)
    {
      goto LABEL_29;
    }

    if ((has & 8) != 0)
    {
      if ((*(equal + 56) & 8) == 0 || self->_rTT != *(equal + 4))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 56) & 8) != 0)
    {
      goto LABEL_29;
    }

    LOBYTE(v5) = (*(equal + 56) & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((*(equal + 56) & 4) == 0 || self->_priority != *(equal + 3))
      {
        goto LABEL_29;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_service hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_isToDefaultPairedDevice;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v6 = 2654435761u * self->_messageSize;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761u * self->_rTT;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761u * self->_priority;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 56) & 0x10) != 0)
  {
    self->_timestamp = *(from + 5);
    *&self->_has |= 0x10u;
  }

  if (*(from + 6))
  {
    [(AWDIDSAppDeliveryReceipt *)self setService:?];
  }

  v5 = *(from + 56);
  if (v5)
  {
    self->_isToDefaultPairedDevice = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 56);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*(from + 56) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_messageSize = *(from + 2);
  *&self->_has |= 2u;
  v5 = *(from + 56);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_13:
  self->_rTT = *(from + 4);
  *&self->_has |= 8u;
  if ((*(from + 56) & 4) == 0)
  {
    return;
  }

LABEL_9:
  self->_priority = *(from + 3);
  *&self->_has |= 4u;
}

@end