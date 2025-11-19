@interface AWDIDSLocalDeliveryMessageSent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasLinkType:(BOOL)a3;
- (void)setHasMessageSize:(BOOL)a3;
- (void)setHasPriority:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSLocalDeliveryMessageSent

- (void)dealloc
{
  [(AWDIDSLocalDeliveryMessageSent *)self setService:0];
  v3.receiver = self;
  v3.super_class = AWDIDSLocalDeliveryMessageSent;
  [(AWDIDSLocalDeliveryMessageSent *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasMessageSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLinkType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPriority:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSLocalDeliveryMessageSent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSLocalDeliveryMessageSent description](&v3, sel_description), -[AWDIDSLocalDeliveryMessageSent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  service = self->_service;
  if (service)
  {
    [v3 setObject:service forKey:@"service"];
  }

  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_isToDefaultPairedDevice), @"isToDefaultPairedDevice"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_linkType), @"linkType"}];
      if ((*&self->_has & 8) == 0)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_messageSize), @"messageSize"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((has & 8) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_priority), @"priority"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      linkType = self->_linkType;
      PBDataWriterWriteUint64Field();
      if ((*&self->_has & 8) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  messageSize = self->_messageSize;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_13:
  priority = self->_priority;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 0x10) != 0)
  {
    *(a3 + 5) = self->_timestamp;
    *(a3 + 56) |= 0x10u;
  }

  if (self->_service)
  {
    [a3 setService:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_isToDefaultPairedDevice;
    *(a3 + 56) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 3) = self->_messageSize;
  *(a3 + 56) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_13:
  *(a3 + 2) = self->_linkType;
  *(a3 + 56) |= 2u;
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_9:
  *(a3 + 4) = self->_priority;
  *(a3 + 56) |= 8u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 40) = self->_timestamp;
    *(v5 + 56) |= 0x10u;
  }

  *(v6 + 48) = [(NSString *)self->_service copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v6 + 8) = self->_isToDefaultPairedDevice;
    *(v6 + 56) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 16) = self->_linkType;
      *(v6 + 56) |= 2u;
      if ((*&self->_has & 8) == 0)
      {
        return v6;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 24) = self->_messageSize;
  *(v6 + 56) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
LABEL_7:
    *(v6 + 32) = self->_priority;
    *(v6 + 56) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 56);
    if ((has & 0x10) != 0)
    {
      if ((*(a3 + 56) & 0x10) == 0 || self->_timestamp != *(a3 + 5))
      {
        goto LABEL_29;
      }
    }

    else if ((*(a3 + 56) & 0x10) != 0)
    {
LABEL_29:
      LOBYTE(v5) = 0;
      return v5;
    }

    service = self->_service;
    if (service | *(a3 + 6))
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
      if ((*(a3 + 56) & 1) == 0 || self->_isToDefaultPairedDevice != *(a3 + 1))
      {
        goto LABEL_29;
      }
    }

    else if (*(a3 + 56))
    {
      goto LABEL_29;
    }

    if ((has & 4) != 0)
    {
      if ((*(a3 + 56) & 4) == 0 || self->_messageSize != *(a3 + 3))
      {
        goto LABEL_29;
      }
    }

    else if ((*(a3 + 56) & 4) != 0)
    {
      goto LABEL_29;
    }

    if ((has & 2) != 0)
    {
      if ((*(a3 + 56) & 2) == 0 || self->_linkType != *(a3 + 2))
      {
        goto LABEL_29;
      }
    }

    else if ((*(a3 + 56) & 2) != 0)
    {
      goto LABEL_29;
    }

    LOBYTE(v5) = (*(a3 + 56) & 8) == 0;
    if ((has & 8) != 0)
    {
      if ((*(a3 + 56) & 8) == 0 || self->_priority != *(a3 + 4))
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
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v6 = 2654435761u * self->_messageSize;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if ((*&self->_has & 8) != 0)
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
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761u * self->_linkType;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761u * self->_priority;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 56) & 0x10) != 0)
  {
    self->_timestamp = *(a3 + 5);
    *&self->_has |= 0x10u;
  }

  if (*(a3 + 6))
  {
    [(AWDIDSLocalDeliveryMessageSent *)self setService:?];
  }

  v5 = *(a3 + 56);
  if (v5)
  {
    self->_isToDefaultPairedDevice = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 56);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a3 + 56) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_messageSize = *(a3 + 3);
  *&self->_has |= 4u;
  v5 = *(a3 + 56);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_13:
  self->_linkType = *(a3 + 2);
  *&self->_has |= 2u;
  if ((*(a3 + 56) & 8) == 0)
  {
    return;
  }

LABEL_9:
  self->_priority = *(a3 + 4);
  *&self->_has |= 8u;
}

@end