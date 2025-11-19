@interface AWDIDSStreamingReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasBytesSent:(BOOL)a3;
- (void)setHasPacketsReceived:(BOOL)a3;
- (void)setHasPacketsSent:(BOOL)a3;
- (void)setHasPriority:(BOOL)a3;
- (void)setHasSamplingInterval:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSStreamingReport

- (void)dealloc
{
  [(AWDIDSStreamingReport *)self setService:0];
  [(AWDIDSStreamingReport *)self setStreamName:0];
  [(AWDIDSStreamingReport *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDIDSStreamingReport;
  [(AWDIDSStreamingReport *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasSamplingInterval:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
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

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPacketsSent:(BOOL)a3
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

- (void)setHasPacketsReceived:(BOOL)a3
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

- (void)setHasPriority:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSStreamingReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSStreamingReport description](&v3, sel_description), -[AWDIDSStreamingReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 0x40) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  service = self->_service;
  if (service)
  {
    [v3 setObject:service forKey:@"service"];
  }

  streamName = self->_streamName;
  if (streamName)
  {
    [v3 setObject:streamName forKey:@"streamName"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_samplingInterval), @"samplingInterval"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesSent), @"bytesSent"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_packetsSent), @"packetsSent"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesReceived), @"bytesReceived"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_packetsReceived), @"packetsReceived"}];
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_priority), @"priority"}];
  }

LABEL_14:
  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

  if (self->_streamName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    samplingInterval = self->_samplingInterval;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  bytesSent = self->_bytesSent;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  packetsSent = self->_packetsSent;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  bytesReceived = self->_bytesReceived;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_22:
  packetsReceived = self->_packetsReceived;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    priority = self->_priority;
    PBDataWriterWriteUint64Field();
  }

LABEL_14:
  if (self->_guid)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 0x40) != 0)
  {
    *(a3 + 7) = self->_timestamp;
    *(a3 + 88) |= 0x40u;
  }

  if (self->_service)
  {
    [a3 setService:?];
  }

  if (self->_streamName)
  {
    [a3 setStreamName:?];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(a3 + 6) = self->_samplingInterval;
    *(a3 + 88) |= 0x20u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  *(a3 + 2) = self->_bytesSent;
  *(a3 + 88) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 4) = self->_packetsSent;
  *(a3 + 88) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 1) = self->_bytesReceived;
  *(a3 + 88) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_22:
  *(a3 + 3) = self->_packetsReceived;
  *(a3 + 88) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_13:
    *(a3 + 5) = self->_priority;
    *(a3 + 88) |= 0x10u;
  }

LABEL_14:
  if (self->_guid)
  {

    [a3 setGuid:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x40) != 0)
  {
    *(v5 + 56) = self->_timestamp;
    *(v5 + 88) |= 0x40u;
  }

  *(v6 + 72) = [(NSString *)self->_service copyWithZone:a3];
  *(v6 + 80) = [(NSString *)self->_streamName copyWithZone:a3];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v6 + 48) = self->_samplingInterval;
    *(v6 + 88) |= 0x20u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_bytesSent;
  *(v6 + 88) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v6 + 32) = self->_packetsSent;
  *(v6 + 88) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    *(v6 + 24) = self->_packetsReceived;
    *(v6 + 88) |= 4u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_14:
  *(v6 + 8) = self->_bytesReceived;
  *(v6 + 88) |= 1u;
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
    *(v6 + 88) |= 0x10u;
  }

LABEL_10:

  *(v6 + 64) = [(NSString *)self->_guid copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 88);
    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(a3 + 88) & 0x40) == 0 || self->_timestamp != *(a3 + 7))
      {
        goto LABEL_43;
      }
    }

    else if ((*(a3 + 88) & 0x40) != 0)
    {
LABEL_43:
      LOBYTE(v5) = 0;
      return v5;
    }

    service = self->_service;
    if (!(service | *(a3 + 9)) || (v5 = [(NSString *)service isEqual:?]) != 0)
    {
      streamName = self->_streamName;
      if (!(streamName | *(a3 + 10)) || (v5 = [(NSString *)streamName isEqual:?]) != 0)
      {
        v9 = *(a3 + 88);
        if ((*&self->_has & 0x20) != 0)
        {
          if ((*(a3 + 88) & 0x20) == 0 || self->_samplingInterval != *(a3 + 6))
          {
            goto LABEL_43;
          }
        }

        else if ((*(a3 + 88) & 0x20) != 0)
        {
          goto LABEL_43;
        }

        if ((*&self->_has & 2) != 0)
        {
          if ((*(a3 + 88) & 2) == 0 || self->_bytesSent != *(a3 + 2))
          {
            goto LABEL_43;
          }
        }

        else if ((*(a3 + 88) & 2) != 0)
        {
          goto LABEL_43;
        }

        if ((*&self->_has & 8) != 0)
        {
          if ((*(a3 + 88) & 8) == 0 || self->_packetsSent != *(a3 + 4))
          {
            goto LABEL_43;
          }
        }

        else if ((*(a3 + 88) & 8) != 0)
        {
          goto LABEL_43;
        }

        if (*&self->_has)
        {
          if ((*(a3 + 88) & 1) == 0 || self->_bytesReceived != *(a3 + 1))
          {
            goto LABEL_43;
          }
        }

        else if (*(a3 + 88))
        {
          goto LABEL_43;
        }

        if ((*&self->_has & 4) != 0)
        {
          if ((*(a3 + 88) & 4) == 0 || self->_packetsReceived != *(a3 + 3))
          {
            goto LABEL_43;
          }
        }

        else if ((*(a3 + 88) & 4) != 0)
        {
          goto LABEL_43;
        }

        if ((*&self->_has & 0x10) != 0)
        {
          if ((*(a3 + 88) & 0x10) == 0 || self->_priority != *(a3 + 5))
          {
            goto LABEL_43;
          }
        }

        else if ((*(a3 + 88) & 0x10) != 0)
        {
          goto LABEL_43;
        }

        guid = self->_guid;
        if (guid | *(a3 + 8))
        {

          LOBYTE(v5) = [(NSString *)guid isEqual:?];
        }

        else
        {
          LOBYTE(v5) = 1;
        }
      }
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
  v5 = [(NSString *)self->_streamName hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v6 = 2654435761u * self->_samplingInterval;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v7 = 2654435761u * self->_bytesSent;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_packetsSent;
    if (*&self->_has)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  v8 = 0;
  if (*&self->_has)
  {
LABEL_8:
    v9 = 2654435761u * self->_bytesReceived;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v10 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_guid hash];
  }

LABEL_14:
  v9 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v10 = 2654435761u * self->_packetsReceived;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v11 = 2654435761u * self->_priority;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_guid hash];
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 88) & 0x40) != 0)
  {
    self->_timestamp = *(a3 + 7);
    *&self->_has |= 0x40u;
  }

  if (*(a3 + 9))
  {
    [(AWDIDSStreamingReport *)self setService:?];
  }

  if (*(a3 + 10))
  {
    [(AWDIDSStreamingReport *)self setStreamName:?];
  }

  v5 = *(a3 + 88);
  if ((v5 & 0x20) != 0)
  {
    self->_samplingInterval = *(a3 + 6);
    *&self->_has |= 0x20u;
    v5 = *(a3 + 88);
    if ((v5 & 2) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*(a3 + 88) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_bytesSent = *(a3 + 2);
  *&self->_has |= 2u;
  v5 = *(a3 + 88);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_packetsSent = *(a3 + 4);
  *&self->_has |= 8u;
  v5 = *(a3 + 88);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_bytesReceived = *(a3 + 1);
  *&self->_has |= 1u;
  v5 = *(a3 + 88);
  if ((v5 & 4) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_22:
  self->_packetsReceived = *(a3 + 3);
  *&self->_has |= 4u;
  if ((*(a3 + 88) & 0x10) != 0)
  {
LABEL_13:
    self->_priority = *(a3 + 5);
    *&self->_has |= 0x10u;
  }

LABEL_14:
  if (*(a3 + 8))
  {

    [(AWDIDSStreamingReport *)self setGuid:?];
  }
}

@end