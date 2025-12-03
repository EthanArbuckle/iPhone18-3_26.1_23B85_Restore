@interface AWDIDSLocalDeliveryMessageDelivered
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasIsToDefaultPairedDevice:(BOOL)device;
- (void)setHasLinkType:(BOOL)type;
- (void)setHasMessageSize:(BOOL)size;
- (void)setHasPriority:(BOOL)priority;
- (void)setHasRTT:(BOOL)t;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSLocalDeliveryMessageDelivered

- (void)dealloc
{
  [(AWDIDSLocalDeliveryMessageDelivered *)self setService:0];
  v3.receiver = self;
  v3.super_class = AWDIDSLocalDeliveryMessageDelivered;
  [(AWDIDSLocalDeliveryMessageDelivered *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsToDefaultPairedDevice:(BOOL)device
{
  if (device)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasMessageSize:(BOOL)size
{
  if (size)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasRTT:(BOOL)t
{
  if (t)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasLinkType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPriority:(BOOL)priority
{
  if (priority)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSLocalDeliveryMessageDelivered;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSLocalDeliveryMessageDelivered description](&v3, sel_description), -[AWDIDSLocalDeliveryMessageDelivered dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 0x40) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  service = self->_service;
  if (service)
  {
    [dictionary setObject:service forKey:@"service"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_isToDefaultPairedDevice), @"isToDefaultPairedDevice"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_messageSize), @"messageSize"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_deliveryError), @"deliveryError"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_linkType), @"linkType"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return dictionary;
    }

    goto LABEL_11;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rTT), @"RTT"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((has & 0x10) != 0)
  {
LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_priority), @"priority"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if ((*&self->_has & 0x40) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_service)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    isToDefaultPairedDevice = self->_isToDefaultPairedDevice;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
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

  messageSize = self->_messageSize;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  deliveryError = self->_deliveryError;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    linkType = self->_linkType;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  rTT = self->_rTT;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_17:
  priority = self->_priority;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 0x40) != 0)
  {
    *(to + 7) = self->_timestamp;
    *(to + 72) |= 0x40u;
  }

  if (self->_service)
  {
    [to setService:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_isToDefaultPairedDevice;
    *(to + 72) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  *(to + 4) = self->_messageSize;
  *(to + 72) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 1) = self->_deliveryError;
  *(to + 72) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 6) = self->_rTT;
  *(to + 72) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_17:
  *(to + 3) = self->_linkType;
  *(to + 72) |= 4u;
  if ((*&self->_has & 0x10) == 0)
  {
    return;
  }

LABEL_11:
  *(to + 5) = self->_priority;
  *(to + 72) |= 0x10u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x40) != 0)
  {
    *(v5 + 56) = self->_timestamp;
    *(v5 + 72) |= 0x40u;
  }

  *(v6 + 64) = [(NSString *)self->_service copyWithZone:zone];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_isToDefaultPairedDevice;
    *(v6 + 72) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 32) = self->_messageSize;
  *(v6 + 72) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v6 + 8) = self->_deliveryError;
  *(v6 + 72) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    *(v6 + 24) = self->_linkType;
    *(v6 + 72) |= 4u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v6;
    }

    goto LABEL_9;
  }

LABEL_14:
  *(v6 + 48) = self->_rTT;
  *(v6 + 72) |= 0x20u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((has & 0x10) != 0)
  {
LABEL_9:
    *(v6 + 40) = self->_priority;
    *(v6 + 72) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 72);
    if ((has & 0x40) != 0)
    {
      if ((*(equal + 72) & 0x40) == 0 || self->_timestamp != *(equal + 7))
      {
        goto LABEL_39;
      }
    }

    else if ((*(equal + 72) & 0x40) != 0)
    {
LABEL_39:
      LOBYTE(v5) = 0;
      return v5;
    }

    service = self->_service;
    if (service | *(equal + 8))
    {
      v5 = [(NSString *)service isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 72) & 2) == 0 || self->_isToDefaultPairedDevice != *(equal + 2))
      {
        goto LABEL_39;
      }
    }

    else if ((*(equal + 72) & 2) != 0)
    {
      goto LABEL_39;
    }

    if ((has & 8) != 0)
    {
      if ((*(equal + 72) & 8) == 0 || self->_messageSize != *(equal + 4))
      {
        goto LABEL_39;
      }
    }

    else if ((*(equal + 72) & 8) != 0)
    {
      goto LABEL_39;
    }

    if (has)
    {
      if ((*(equal + 72) & 1) == 0 || self->_deliveryError != *(equal + 1))
      {
        goto LABEL_39;
      }
    }

    else if (*(equal + 72))
    {
      goto LABEL_39;
    }

    if ((has & 0x20) != 0)
    {
      if ((*(equal + 72) & 0x20) == 0 || self->_rTT != *(equal + 6))
      {
        goto LABEL_39;
      }
    }

    else if ((*(equal + 72) & 0x20) != 0)
    {
      goto LABEL_39;
    }

    if ((has & 4) != 0)
    {
      if ((*(equal + 72) & 4) == 0 || self->_linkType != *(equal + 3))
      {
        goto LABEL_39;
      }
    }

    else if ((*(equal + 72) & 4) != 0)
    {
      goto LABEL_39;
    }

    LOBYTE(v5) = (*(equal + 72) & 0x10) == 0;
    if ((has & 0x10) != 0)
    {
      if ((*(equal + 72) & 0x10) == 0 || self->_priority != *(equal + 5))
      {
        goto LABEL_39;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x40) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_service hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761u * self->_isToDefaultPairedDevice;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v6 = 2654435761u * self->_messageSize;
      if (*&self->_has)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
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
  if (*&self->_has)
  {
LABEL_7:
    v7 = 2654435761u * self->_deliveryError;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_8:
    v8 = 2654435761u * self->_rTT;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v9 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_14:
  v8 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v9 = 2654435761u * self->_linkType;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v10 = 2654435761u * self->_priority;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 72) & 0x40) != 0)
  {
    self->_timestamp = *(from + 7);
    *&self->_has |= 0x40u;
  }

  if (*(from + 8))
  {
    [(AWDIDSLocalDeliveryMessageDelivered *)self setService:?];
  }

  v5 = *(from + 72);
  if ((v5 & 2) != 0)
  {
    self->_isToDefaultPairedDevice = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 72);
    if ((v5 & 8) == 0)
    {
LABEL_7:
      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(from + 72) & 8) == 0)
  {
    goto LABEL_7;
  }

  self->_messageSize = *(from + 4);
  *&self->_has |= 8u;
  v5 = *(from + 72);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_deliveryError = *(from + 1);
  *&self->_has |= 1u;
  v5 = *(from + 72);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_rTT = *(from + 6);
  *&self->_has |= 0x20u;
  v5 = *(from + 72);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_17:
  self->_linkType = *(from + 3);
  *&self->_has |= 4u;
  if ((*(from + 72) & 0x10) == 0)
  {
    return;
  }

LABEL_11:
  self->_priority = *(from + 5);
  *&self->_has |= 0x10u;
}

@end