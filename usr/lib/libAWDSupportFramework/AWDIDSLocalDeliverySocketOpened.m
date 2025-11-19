@interface AWDIDSLocalDeliverySocketOpened
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasOpenError:(BOOL)a3;
- (void)setHasPriority:(BOOL)a3;
- (void)setHasSocketError:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSLocalDeliverySocketOpened

- (void)dealloc
{
  [(AWDIDSLocalDeliverySocketOpened *)self setService:0];
  [(AWDIDSLocalDeliverySocketOpened *)self setStreamName:0];
  [(AWDIDSLocalDeliverySocketOpened *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDIDSLocalDeliverySocketOpened;
  [(AWDIDSLocalDeliverySocketOpened *)&v3 dealloc];
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

- (void)setHasOpenError:(BOOL)a3
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

- (void)setHasSocketError:(BOOL)a3
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

- (void)setHasPriority:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSLocalDeliverySocketOpened;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSLocalDeliverySocketOpened description](&v3, sel_description), -[AWDIDSLocalDeliverySocketOpened dictionaryRepresentation](self, "dictionaryRepresentation")];
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
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_openError), @"openError"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_socketError), @"socketError"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_priority), @"priority"}];
  }

LABEL_10:
  streamName = self->_streamName;
  if (streamName)
  {
    [v3 setObject:streamName forKey:@"streamName"];
  }

  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
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
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  openError = self->_openError;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_18:
  socketError = self->_socketError;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    priority = self->_priority;
    PBDataWriterWriteUint64Field();
  }

LABEL_10:
  if (self->_streamName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_guid)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 0x10) != 0)
  {
    *(a3 + 5) = self->_timestamp;
    *(a3 + 72) |= 0x10u;
  }

  if (self->_service)
  {
    [a3 setService:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_isToDefaultPairedDevice;
    *(a3 + 72) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 2) = self->_openError;
  *(a3 + 72) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_18:
  *(a3 + 4) = self->_socketError;
  *(a3 + 72) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    *(a3 + 3) = self->_priority;
    *(a3 + 72) |= 4u;
  }

LABEL_10:
  if (self->_streamName)
  {
    [a3 setStreamName:?];
  }

  if (self->_guid)
  {

    [a3 setGuid:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 40) = self->_timestamp;
    *(v5 + 72) |= 0x10u;
  }

  *(v6 + 56) = [(NSString *)self->_service copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v6 + 8) = self->_isToDefaultPairedDevice;
    *(v6 + 72) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 32) = self->_socketError;
      *(v6 + 72) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_openError;
  *(v6 + 72) |= 2u;
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
    *(v6 + 72) |= 4u;
  }

LABEL_8:

  *(v6 + 64) = [(NSString *)self->_streamName copyWithZone:a3];
  *(v6 + 48) = [(NSString *)self->_guid copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 72);
    if ((has & 0x10) != 0)
    {
      if ((*(a3 + 72) & 0x10) == 0 || self->_timestamp != *(a3 + 5))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 72) & 0x10) != 0)
    {
LABEL_34:
      LOBYTE(v5) = 0;
      return v5;
    }

    service = self->_service;
    if (service | *(a3 + 7))
    {
      v5 = [(NSString *)service isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 72);
    if (has)
    {
      if ((*(a3 + 72) & 1) == 0 || self->_isToDefaultPairedDevice != *(a3 + 1))
      {
        goto LABEL_34;
      }
    }

    else if (*(a3 + 72))
    {
      goto LABEL_34;
    }

    if ((has & 2) != 0)
    {
      if ((*(a3 + 72) & 2) == 0 || self->_openError != *(a3 + 2))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 72) & 2) != 0)
    {
      goto LABEL_34;
    }

    if ((has & 8) != 0)
    {
      if ((*(a3 + 72) & 8) == 0 || self->_socketError != *(a3 + 4))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 72) & 8) != 0)
    {
      goto LABEL_34;
    }

    if ((has & 4) != 0)
    {
      if ((*(a3 + 72) & 4) == 0 || self->_priority != *(a3 + 3))
      {
        goto LABEL_34;
      }
    }

    else if ((*(a3 + 72) & 4) != 0)
    {
      goto LABEL_34;
    }

    streamName = self->_streamName;
    if (!(streamName | *(a3 + 8)) || (v5 = [(NSString *)streamName isEqual:?]) != 0)
    {
      guid = self->_guid;
      if (guid | *(a3 + 6))
      {

        LOBYTE(v5) = [(NSString *)guid isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
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
      v6 = 2654435761u * self->_openError;
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
      goto LABEL_13;
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
  v7 = 2654435761u * self->_socketError;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761u * self->_priority;
LABEL_13:
  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_streamName hash];
  return v9 ^ [(NSString *)self->_guid hash];
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 72) & 0x10) != 0)
  {
    self->_timestamp = *(a3 + 5);
    *&self->_has |= 0x10u;
  }

  if (*(a3 + 7))
  {
    [(AWDIDSLocalDeliverySocketOpened *)self setService:?];
  }

  v5 = *(a3 + 72);
  if (v5)
  {
    self->_isToDefaultPairedDevice = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 72);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a3 + 72) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_openError = *(a3 + 2);
  *&self->_has |= 2u;
  v5 = *(a3 + 72);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_18:
  self->_socketError = *(a3 + 4);
  *&self->_has |= 8u;
  if ((*(a3 + 72) & 4) != 0)
  {
LABEL_9:
    self->_priority = *(a3 + 3);
    *&self->_has |= 4u;
  }

LABEL_10:
  if (*(a3 + 8))
  {
    [(AWDIDSLocalDeliverySocketOpened *)self setStreamName:?];
  }

  if (*(a3 + 6))
  {

    [(AWDIDSLocalDeliverySocketOpened *)self setGuid:?];
  }
}

@end