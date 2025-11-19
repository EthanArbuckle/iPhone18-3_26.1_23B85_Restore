@interface AWDIDSLocalDeliverySocketClosed
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasBytesSent:(BOOL)a3;
- (void)setHasCloseError:(BOOL)a3;
- (void)setHasIsToDefaultPairedDevice:(BOOL)a3;
- (void)setHasPacketsReceived:(BOOL)a3;
- (void)setHasPacketsSent:(BOOL)a3;
- (void)setHasPriority:(BOOL)a3;
- (void)setHasSocketError:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSLocalDeliverySocketClosed

- (void)dealloc
{
  [(AWDIDSLocalDeliverySocketClosed *)self setService:0];
  [(AWDIDSLocalDeliverySocketClosed *)self setStreamName:0];
  [(AWDIDSLocalDeliverySocketClosed *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDIDSLocalDeliverySocketClosed;
  [(AWDIDSLocalDeliverySocketClosed *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasIsToDefaultPairedDevice:(BOOL)a3
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

- (void)setHasCloseError:(BOOL)a3
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

- (void)setHasSocketError:(BOOL)a3
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

- (void)setHasBytesSent:(BOOL)a3
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

- (void)setHasPacketsSent:(BOOL)a3
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

- (void)setHasPacketsReceived:(BOOL)a3
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

- (void)setHasPriority:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSLocalDeliverySocketClosed;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSLocalDeliverySocketClosed description](&v3, sel_description), -[AWDIDSLocalDeliverySocketClosed dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 0x100) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  service = self->_service;
  if (service)
  {
    [v3 setObject:service forKey:@"service"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_isToDefaultPairedDevice), @"isToDefaultPairedDevice"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_closeError), @"closeError"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_socketError), @"socketError"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesSent), @"bytesSent"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_packetsSent), @"packetsSent"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesReceived), @"bytesReceived"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_25:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_packetsReceived), @"packetsReceived"}];
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_priority), @"priority"}];
  }

LABEL_14:
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
  if ((*&self->_has & 0x100) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_service)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    isToDefaultPairedDevice = self->_isToDefaultPairedDevice;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  closeError = self->_closeError;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  socketError = self->_socketError;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  bytesSent = self->_bytesSent;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  packetsSent = self->_packetsSent;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  bytesReceived = self->_bytesReceived;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_26:
  packetsReceived = self->_packetsReceived;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    priority = self->_priority;
    PBDataWriterWriteUint64Field();
  }

LABEL_14:
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
  if ((*&self->_has & 0x100) != 0)
  {
    *(a3 + 9) = self->_timestamp;
    *(a3 + 52) |= 0x100u;
  }

  if (self->_service)
  {
    [a3 setService:?];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(a3 + 4) = self->_isToDefaultPairedDevice;
    *(a3 + 52) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 3) = self->_closeError;
  *(a3 + 52) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 8) = self->_socketError;
  *(a3 + 52) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a3 + 2) = self->_bytesSent;
  *(a3 + 52) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 6) = self->_packetsSent;
  *(a3 + 52) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 1) = self->_bytesReceived;
  *(a3 + 52) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_26:
  *(a3 + 5) = self->_packetsReceived;
  *(a3 + 52) |= 0x10u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_13:
    *(a3 + 7) = self->_priority;
    *(a3 + 52) |= 0x40u;
  }

LABEL_14:
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
  if ((*&self->_has & 0x100) != 0)
  {
    *(v5 + 72) = self->_timestamp;
    *(v5 + 104) |= 0x100u;
  }

  *(v6 + 88) = [(NSString *)self->_service copyWithZone:a3];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 32) = self->_isToDefaultPairedDevice;
    *(v6 + 104) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 24) = self->_closeError;
  *(v6 + 104) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v6 + 64) = self->_socketError;
  *(v6 + 104) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v6 + 16) = self->_bytesSent;
  *(v6 + 104) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v6 + 48) = self->_packetsSent;
  *(v6 + 104) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    *(v6 + 40) = self->_packetsReceived;
    *(v6 + 104) |= 0x10u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v6 + 8) = self->_bytesReceived;
  *(v6 + 104) |= 1u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((has & 0x40) != 0)
  {
LABEL_11:
    *(v6 + 56) = self->_priority;
    *(v6 + 104) |= 0x40u;
  }

LABEL_12:

  *(v6 + 96) = [(NSString *)self->_streamName copyWithZone:a3];
  *(v6 + 80) = [(NSString *)self->_guid copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 52);
    if ((has & 0x100) != 0)
    {
      if ((*(a3 + 52) & 0x100) == 0 || self->_timestamp != *(a3 + 9))
      {
        goto LABEL_54;
      }
    }

    else if ((*(a3 + 52) & 0x100) != 0)
    {
LABEL_54:
      LOBYTE(v5) = 0;
      return v5;
    }

    service = self->_service;
    if (service | *(a3 + 11))
    {
      v5 = [(NSString *)service isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 52);
    if ((has & 8) != 0)
    {
      if ((v9 & 8) == 0 || self->_isToDefaultPairedDevice != *(a3 + 4))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 8) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 4) != 0)
    {
      if ((v9 & 4) == 0 || self->_closeError != *(a3 + 3))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 4) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 0x80) != 0)
    {
      if ((v9 & 0x80) == 0 || self->_socketError != *(a3 + 8))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 2) != 0)
    {
      if ((v9 & 2) == 0 || self->_bytesSent != *(a3 + 2))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 2) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 0x20) != 0)
    {
      if ((v9 & 0x20) == 0 || self->_packetsSent != *(a3 + 6))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 0x20) != 0)
    {
      goto LABEL_54;
    }

    if (has)
    {
      if ((v9 & 1) == 0 || self->_bytesReceived != *(a3 + 1))
      {
        goto LABEL_54;
      }
    }

    else if (v9)
    {
      goto LABEL_54;
    }

    if ((has & 0x10) != 0)
    {
      if ((v9 & 0x10) == 0 || self->_packetsReceived != *(a3 + 5))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 0x10) != 0)
    {
      goto LABEL_54;
    }

    if ((has & 0x40) != 0)
    {
      if ((v9 & 0x40) == 0 || self->_priority != *(a3 + 7))
      {
        goto LABEL_54;
      }
    }

    else if ((v9 & 0x40) != 0)
    {
      goto LABEL_54;
    }

    streamName = self->_streamName;
    if (!(streamName | *(a3 + 12)) || (v5 = [(NSString *)streamName isEqual:?]) != 0)
    {
      guid = self->_guid;
      if (guid | *(a3 + 10))
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
  if ((*&self->_has & 0x100) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_service hash];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v6 = 2654435761u * self->_isToDefaultPairedDevice;
    if ((has & 4) != 0)
    {
LABEL_6:
      v7 = 2654435761u * self->_closeError;
      if ((has & 0x80) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_socketError;
    if ((has & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = 0;
  if ((has & 2) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_bytesSent;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_packetsSent;
    if (has)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
  if (has)
  {
LABEL_10:
    v11 = 2654435761u * self->_bytesReceived;
    if ((has & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    v12 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

LABEL_18:
  v11 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = 2654435761u * self->_packetsReceived;
  if ((has & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v13 = 2654435761u * self->_priority;
LABEL_21:
  v14 = v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ [(NSString *)self->_streamName hash];
  return v14 ^ [(NSString *)self->_guid hash];
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 52) & 0x100) != 0)
  {
    self->_timestamp = *(a3 + 9);
    *&self->_has |= 0x100u;
  }

  if (*(a3 + 11))
  {
    [(AWDIDSLocalDeliverySocketClosed *)self setService:?];
  }

  v5 = *(a3 + 52);
  if ((v5 & 8) != 0)
  {
    self->_isToDefaultPairedDevice = *(a3 + 4);
    *&self->_has |= 8u;
    v5 = *(a3 + 52);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_closeError = *(a3 + 3);
  *&self->_has |= 4u;
  v5 = *(a3 + 52);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_socketError = *(a3 + 8);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_bytesSent = *(a3 + 2);
  *&self->_has |= 2u;
  v5 = *(a3 + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_packetsSent = *(a3 + 6);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 52);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_bytesReceived = *(a3 + 1);
  *&self->_has |= 1u;
  v5 = *(a3 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_26:
  self->_packetsReceived = *(a3 + 5);
  *&self->_has |= 0x10u;
  if ((*(a3 + 52) & 0x40) != 0)
  {
LABEL_13:
    self->_priority = *(a3 + 7);
    *&self->_has |= 0x40u;
  }

LABEL_14:
  if (*(a3 + 12))
  {
    [(AWDIDSLocalDeliverySocketClosed *)self setStreamName:?];
  }

  if (*(a3 + 10))
  {

    [(AWDIDSLocalDeliverySocketClosed *)self setGuid:?];
  }
}

@end