@interface AWDPushSent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectionType:(BOOL)a3;
- (void)setHasDualChannelState:(BOOL)a3;
- (void)setHasError:(BOOL)a3;
- (void)setHasFlushes:(BOOL)a3;
- (void)setHasLinkQuality:(BOOL)a3;
- (void)setHasPayloadSize:(BOOL)a3;
- (void)setHasSendDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDPushSent

- (void)dealloc
{
  [(AWDPushSent *)self setGuid:0];
  [(AWDPushSent *)self setTopic:0];
  v3.receiver = self;
  v3.super_class = AWDPushSent;
  [(AWDPushSent *)&v3 dealloc];
}

- (void)setHasConnectionType:(BOOL)a3
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

- (void)setHasLinkQuality:(BOOL)a3
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

- (void)setHasFlushes:(BOOL)a3
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

- (void)setHasSendDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasPayloadSize:(BOOL)a3
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

- (void)setHasError:(BOOL)a3
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

- (void)setHasDualChannelState:(BOOL)a3
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
  v3.super_class = AWDPushSent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPushSent description](&v3, sel_description), -[AWDPushSent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  guid = self->_guid;
  if (guid)
  {
    [v3 setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if (has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_flushes), @"flushes"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sendDuration), @"sendDuration"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_payloadSize), @"payloadSize"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_error), @"error"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dualChannelState), @"dualChannelState"}];
  }

LABEL_12:
  topic = self->_topic;
  if (topic)
  {
    [v4 setObject:topic forKey:@"topic"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  connectionType = self->_connectionType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  linkQuality = self->_linkQuality;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  flushes = self->_flushes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  sendDuration = self->_sendDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  payloadSize = self->_payloadSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_22:
  error = self->_error;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    dualChannelState = self->_dualChannelState;
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
  if (self->_topic)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  if (self->_guid)
  {
    [a3 setGuid:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 64) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(a3 + 4) = self->_connectionType;
  *(a3 + 64) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 10) = self->_linkQuality;
  *(a3 + 64) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 7) = self->_flushes;
  *(a3 + 64) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 12) = self->_sendDuration;
  *(a3 + 64) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 11) = self->_payloadSize;
  *(a3 + 64) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_22:
  *(a3 + 6) = self->_error;
  *(a3 + 64) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    *(a3 + 5) = self->_dualChannelState;
    *(a3 + 64) |= 4u;
  }

LABEL_12:
  if (self->_topic)
  {

    [a3 setTopic:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 32) = [(NSString *)self->_guid copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 64) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_connectionType;
  *(v5 + 64) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 40) = self->_linkQuality;
  *(v5 + 64) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 28) = self->_flushes;
  *(v5 + 64) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 48) = self->_sendDuration;
  *(v5 + 64) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    *(v5 + 24) = self->_error;
    *(v5 + 64) |= 8u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_16:
  *(v5 + 44) = self->_payloadSize;
  *(v5 + 64) |= 0x40u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((has & 4) != 0)
  {
LABEL_9:
    *(v5 + 20) = self->_dualChannelState;
    *(v5 + 64) |= 4u;
  }

LABEL_10:

  *(v5 + 56) = [(NSString *)self->_topic copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    guid = self->_guid;
    if (!(guid | *(a3 + 4)) || (v5 = [(NSString *)guid isEqual:?]) != 0)
    {
      v7 = *(a3 + 64);
      if (*&self->_has)
      {
        if ((*(a3 + 64) & 1) == 0 || self->_timestamp != *(a3 + 1))
        {
          goto LABEL_46;
        }
      }

      else if (*(a3 + 64))
      {
        goto LABEL_46;
      }

      if ((*&self->_has & 2) != 0)
      {
        if ((*(a3 + 64) & 2) == 0 || self->_connectionType != *(a3 + 4))
        {
          goto LABEL_46;
        }
      }

      else if ((*(a3 + 64) & 2) != 0)
      {
        goto LABEL_46;
      }

      if ((*&self->_has & 0x20) != 0)
      {
        if ((*(a3 + 64) & 0x20) == 0 || self->_linkQuality != *(a3 + 10))
        {
          goto LABEL_46;
        }
      }

      else if ((*(a3 + 64) & 0x20) != 0)
      {
        goto LABEL_46;
      }

      if ((*&self->_has & 0x10) != 0)
      {
        if ((*(a3 + 64) & 0x10) == 0 || self->_flushes != *(a3 + 7))
        {
          goto LABEL_46;
        }
      }

      else if ((*(a3 + 64) & 0x10) != 0)
      {
        goto LABEL_46;
      }

      if ((*&self->_has & 0x80) != 0)
      {
        if ((*(a3 + 64) & 0x80) == 0 || self->_sendDuration != *(a3 + 12))
        {
          goto LABEL_46;
        }
      }

      else if ((*(a3 + 64) & 0x80) != 0)
      {
LABEL_46:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&self->_has & 0x40) != 0)
      {
        if ((*(a3 + 64) & 0x40) == 0 || self->_payloadSize != *(a3 + 11))
        {
          goto LABEL_46;
        }
      }

      else if ((*(a3 + 64) & 0x40) != 0)
      {
        goto LABEL_46;
      }

      if ((*&self->_has & 8) != 0)
      {
        if ((*(a3 + 64) & 8) == 0 || self->_error != *(a3 + 6))
        {
          goto LABEL_46;
        }
      }

      else if ((*(a3 + 64) & 8) != 0)
      {
        goto LABEL_46;
      }

      if ((*&self->_has & 4) != 0)
      {
        if ((*(a3 + 64) & 4) == 0 || self->_dualChannelState != *(a3 + 5))
        {
          goto LABEL_46;
        }
      }

      else if ((*(a3 + 64) & 4) != 0)
      {
        goto LABEL_46;
      }

      topic = self->_topic;
      if (topic | *(a3 + 7))
      {

        LOBYTE(v5) = [(NSString *)topic isEqual:?];
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
  v3 = [(NSString *)self->_guid hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_connectionType;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_linkQuality;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_flushes;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = 0;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_sendDuration;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_7:
    v9 = 2654435761 * self->_payloadSize;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v10 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_topic hash];
  }

LABEL_15:
  v9 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v10 = 2654435761 * self->_error;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v11 = 2654435761 * self->_dualChannelState;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_topic hash];
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 4))
  {
    [(AWDPushSent *)self setGuid:?];
  }

  v5 = *(a3 + 64);
  if (v5)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v5 = *(a3 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a3 + 64) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_connectionType = *(a3 + 4);
  *&self->_has |= 2u;
  v5 = *(a3 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_linkQuality = *(a3 + 10);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_flushes = *(a3 + 7);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_sendDuration = *(a3 + 12);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_payloadSize = *(a3 + 11);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_22:
  self->_error = *(a3 + 6);
  *&self->_has |= 8u;
  if ((*(a3 + 64) & 4) != 0)
  {
LABEL_11:
    self->_dualChannelState = *(a3 + 5);
    *&self->_has |= 4u;
  }

LABEL_12:
  if (*(a3 + 7))
  {

    [(AWDPushSent *)self setTopic:?];
  }
}

@end