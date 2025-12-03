@interface AWDPushFilterSent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasConnectionType:(BOOL)type;
- (void)setHasLinkQuality:(BOOL)quality;
- (void)setHasSentReason:(BOOL)reason;
- (void)writeTo:(id)to;
@end

@implementation AWDPushFilterSent

- (void)dealloc
{
  [(AWDPushFilterSent *)self setGuid:0];
  v3.receiver = self;
  v3.super_class = AWDPushFilterSent;
  [(AWDPushFilterSent *)&v3 dealloc];
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSentReason:(BOOL)reason
{
  if (reason)
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
  v3.super_class = AWDPushFilterSent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPushFilterSent description](&v3, sel_description), -[AWDPushFilterSent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  guid = self->_guid;
  if (guid)
  {
    [dictionary setObject:guid forKey:@"guid"];
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_linkQuality), @"linkQuality"}];
    if ((*&self->_has & 8) == 0)
    {
      return dictionary;
    }

    goto LABEL_8;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_connectionType), @"connectionType"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((has & 8) != 0)
  {
LABEL_8:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sentReason), @"sentReason"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_guid)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    linkQuality = self->_linkQuality;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  connectionType = self->_connectionType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_11:
  sentReason = self->_sentReason;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 40) |= 1u;
  }

  if (self->_guid)
  {
    [to setGuid:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 4) = self->_connectionType;
    *(to + 40) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(to + 8) = self->_linkQuality;
  *(to + 40) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_8:
  *(to + 9) = self->_sentReason;
  *(to + 40) |= 8u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_guid copyWithZone:zone];
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 32) = self->_linkQuality;
    *(v6 + 40) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 16) = self->_connectionType;
  *(v6 + 40) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v6 + 36) = self->_sentReason;
    *(v6 + 40) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 40);
    if (has)
    {
      if ((*(equal + 40) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_24;
      }
    }

    else if (*(equal + 40))
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    guid = self->_guid;
    if (guid | *(equal + 3))
    {
      v5 = [(NSString *)guid isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(equal + 40) & 2) == 0 || self->_connectionType != *(equal + 4))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 40) & 2) != 0)
    {
      goto LABEL_24;
    }

    if ((has & 4) != 0)
    {
      if ((*(equal + 40) & 4) == 0 || self->_linkQuality != *(equal + 8))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 40) & 4) != 0)
    {
      goto LABEL_24;
    }

    LOBYTE(v5) = (*(equal + 40) & 8) == 0;
    if ((has & 8) != 0)
    {
      if ((*(equal + 40) & 8) == 0 || self->_sentReason != *(equal + 9))
      {
        goto LABEL_24;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_guid hash];
  if ((*&self->_has & 2) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_connectionType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_linkQuality;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761 * self->_sentReason;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 40))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDPushFilterSent *)self setGuid:?];
  }

  v5 = *(from + 40);
  if ((v5 & 2) != 0)
  {
    self->_connectionType = *(from + 4);
    *&self->_has |= 2u;
    v5 = *(from + 40);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else if ((*(from + 40) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_linkQuality = *(from + 8);
  *&self->_has |= 4u;
  if ((*(from + 40) & 8) == 0)
  {
    return;
  }

LABEL_8:
  self->_sentReason = *(from + 9);
  *&self->_has |= 8u;
}

@end