@interface AWDPushReceived
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsWakeStatus:(id)status;
- (int)wakeStatus;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasConnectionType:(BOOL)type;
- (void)setHasDualChannelState:(BOOL)state;
- (void)setHasIsFromStorage:(BOOL)storage;
- (void)setHasLinkQuality:(BOOL)quality;
- (void)setHasPayloadSize:(BOOL)size;
- (void)setHasReceiveOffset:(BOOL)offset;
- (void)setHasWakeStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation AWDPushReceived

- (void)dealloc
{
  [(AWDPushReceived *)self setGuid:0];
  [(AWDPushReceived *)self setTopic:0];
  v3.receiver = self;
  v3.super_class = AWDPushReceived;
  [(AWDPushReceived *)&v3 dealloc];
}

- (void)setHasConnectionType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasLinkQuality:(BOOL)quality
{
  if (quality)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasReceiveOffset:(BOOL)offset
{
  if (offset)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasPayloadSize:(BOOL)size
{
  if (size)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsFromStorage:(BOOL)storage
{
  if (storage)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDualChannelState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)wakeStatus
{
  if ((*&self->_has & 0x80000000) != 0)
  {
    return self->_wakeStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasWakeStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (int)StringAsWakeStatus:(id)status
{
  if ([status isEqualToString:@"Unknown"])
  {
    return 0;
  }

  if ([status isEqualToString:@"Wake"])
  {
    return 1;
  }

  if ([status isEqualToString:@"NoWake"])
  {
    return 2;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPushReceived;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPushReceived description](&v3, sel_description), -[AWDPushReceived dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  guid = self->_guid;
  if (guid)
  {
    [dictionary setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if (has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
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

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_receiveOffset), @"receiveOffset"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_payloadSize), @"payloadSize"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_isFromStorage), @"isFromStorage"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dualChannelState), @"dualChannelState"}];
  }

LABEL_11:
  topic = self->_topic;
  if (topic)
  {
    [v4 setObject:topic forKey:@"topic"];
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    wakeStatus = self->_wakeStatus;
    if (wakeStatus >= 3)
    {
      v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_wakeStatus];
    }

    else
    {
      v9 = off_29EE32C08[wakeStatus];
    }

    [v4 setObject:v9 forKey:@"wakeStatus"];
  }

  return v4;
}

- (void)writeTo:(id)to
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
      if ((has & 0x10) == 0)
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

  connectionType = self->_connectionType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  linkQuality = self->_linkQuality;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  receiveOffset = self->_receiveOffset;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  payloadSize = self->_payloadSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_20:
  isFromStorage = self->_isFromStorage;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    dualChannelState = self->_dualChannelState;
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
  if (self->_topic)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    wakeStatus = self->_wakeStatus;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (self->_guid)
  {
    [to setGuid:?];
  }

  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 60) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
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

  *(to + 4) = self->_connectionType;
  *(to + 60) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 9) = self->_linkQuality;
  *(to + 60) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 11) = self->_receiveOffset;
  *(to + 60) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 10) = self->_payloadSize;
  *(to + 60) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  *(to + 8) = self->_isFromStorage;
  *(to + 60) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    *(to + 5) = self->_dualChannelState;
    *(to + 60) |= 4u;
  }

LABEL_11:
  if (self->_topic)
  {
    [to setTopic:?];
  }

  if ((*&self->_has & 0x80000000) != 0)
  {
    *(to + 14) = self->_wakeStatus;
    *(to + 60) |= 0x80u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 24) = [(NSString *)self->_guid copyWithZone:zone];
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 60) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_connectionType;
  *(v5 + 60) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 36) = self->_linkQuality;
  *(v5 + 60) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 44) = self->_receiveOffset;
  *(v5 + 60) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 40) = self->_payloadSize;
  *(v5 + 60) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  *(v5 + 32) = self->_isFromStorage;
  *(v5 + 60) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(v5 + 20) = self->_dualChannelState;
    *(v5 + 60) |= 4u;
  }

LABEL_9:

  *(v5 + 48) = [(NSString *)self->_topic copyWithZone:zone];
  if ((*&self->_has & 0x80000000) != 0)
  {
    *(v5 + 56) = self->_wakeStatus;
    *(v5 + 60) |= 0x80u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    guid = self->_guid;
    if (!(guid | *(equal + 3)) || (v5 = [(NSString *)guid isEqual:?]) != 0)
    {
      has = self->_has;
      v8 = *(equal + 60);
      if (has)
      {
        if ((*(equal + 60) & 1) == 0 || self->_timestamp != *(equal + 1))
        {
          goto LABEL_47;
        }
      }

      else if (*(equal + 60))
      {
LABEL_47:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&self->_has & 2) != 0)
      {
        if ((*(equal + 60) & 2) == 0 || self->_connectionType != *(equal + 4))
        {
          goto LABEL_47;
        }
      }

      else if ((*(equal + 60) & 2) != 0)
      {
        goto LABEL_47;
      }

      if ((*&self->_has & 0x10) != 0)
      {
        if ((*(equal + 60) & 0x10) == 0 || self->_linkQuality != *(equal + 9))
        {
          goto LABEL_47;
        }
      }

      else if ((*(equal + 60) & 0x10) != 0)
      {
        goto LABEL_47;
      }

      if ((*&self->_has & 0x40) != 0)
      {
        if ((*(equal + 60) & 0x40) == 0 || self->_receiveOffset != *(equal + 11))
        {
          goto LABEL_47;
        }
      }

      else if ((*(equal + 60) & 0x40) != 0)
      {
        goto LABEL_47;
      }

      if ((*&self->_has & 0x20) != 0)
      {
        if ((*(equal + 60) & 0x20) == 0 || self->_payloadSize != *(equal + 10))
        {
          goto LABEL_47;
        }
      }

      else if ((*(equal + 60) & 0x20) != 0)
      {
        goto LABEL_47;
      }

      if ((*&self->_has & 8) != 0)
      {
        if ((*(equal + 60) & 8) == 0 || self->_isFromStorage != *(equal + 8))
        {
          goto LABEL_47;
        }
      }

      else if ((*(equal + 60) & 8) != 0)
      {
        goto LABEL_47;
      }

      if ((*&self->_has & 4) != 0)
      {
        if ((*(equal + 60) & 4) == 0 || self->_dualChannelState != *(equal + 5))
        {
          goto LABEL_47;
        }
      }

      else if ((*(equal + 60) & 4) != 0)
      {
        goto LABEL_47;
      }

      topic = self->_topic;
      if (topic | *(equal + 6))
      {
        v5 = [(NSString *)topic isEqual:?];
        if (!v5)
        {
          return v5;
        }

        has = self->_has;
      }

      v10 = *(equal + 60);
      if (has < 0)
      {
        if ((v10 & 0x80000000) == 0 || self->_wakeStatus != *(equal + 14))
        {
          goto LABEL_47;
        }

        LOBYTE(v5) = 1;
      }

      else
      {
        LOBYTE(v5) = v10 >= 0;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v13 = [(NSString *)self->_guid hash];
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_connectionType;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_linkQuality;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_receiveOffset;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v6 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_payloadSize;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v8 = 2654435761 * self->_isFromStorage;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_dualChannelState;
    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
LABEL_16:
  v10 = [(NSString *)self->_topic hash];
  if ((*&self->_has & 0x80000000) != 0)
  {
    v11 = 2654435761 * self->_wakeStatus;
  }

  else
  {
    v11 = 0;
  }

  return v3 ^ v13 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 3))
  {
    [(AWDPushReceived *)self setGuid:?];
  }

  v5 = *(from + 60);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 60);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((*(from + 60) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_connectionType = *(from + 4);
  *&self->_has |= 2u;
  v5 = *(from + 60);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_linkQuality = *(from + 9);
  *&self->_has |= 0x10u;
  v5 = *(from + 60);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_receiveOffset = *(from + 11);
  *&self->_has |= 0x40u;
  v5 = *(from + 60);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_payloadSize = *(from + 10);
  *&self->_has |= 0x20u;
  v5 = *(from + 60);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  self->_isFromStorage = *(from + 8);
  *&self->_has |= 8u;
  if ((*(from + 60) & 4) != 0)
  {
LABEL_10:
    self->_dualChannelState = *(from + 5);
    *&self->_has |= 4u;
  }

LABEL_11:
  if (*(from + 6))
  {
    [(AWDPushReceived *)self setTopic:?];
  }

  if (*(from + 60) < 0)
  {
    self->_wakeStatus = *(from + 14);
    *&self->_has |= 0x80u;
  }
}

@end