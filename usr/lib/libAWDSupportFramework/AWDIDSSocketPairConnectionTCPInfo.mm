@interface AWDIDSSocketPairConnectionTCPInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCurrentRTT:(BOOL)t;
- (void)setHasLinkType:(BOOL)type;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSSocketPairConnectionTCPInfo

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

- (void)setHasLinkType:(BOOL)type
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

- (void)setHasCurrentRTT:(BOOL)t
{
  if (t)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDIDSSocketPairConnectionTCPInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSSocketPairConnectionTCPInfo description](&v3, sel_description), -[AWDIDSSocketPairConnectionTCPInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_currentRTT), @"currentRTT"}];
      if ((*&self->_has & 1) == 0)
      {
        return dictionary;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_linkType), @"linkType"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bandwidth), @"bandwidth"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      currentRTT = self->_currentRTT;
      PBDataWriterWriteUint64Field();
      if ((*&self->_has & 1) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  linkType = self->_linkType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_9:
  bandwidth = self->_bandwidth;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 3) = self->_timestamp;
    *(to + 36) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(to + 8) = self->_linkType;
  *(to + 36) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      return;
    }

LABEL_9:
    *(to + 1) = self->_bandwidth;
    *(to + 36) |= 1u;
    return;
  }

LABEL_8:
  *(to + 2) = self->_currentRTT;
  *(to + 36) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_9;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 3) = self->_timestamp;
    *(result + 36) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_linkType;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 2) = self->_currentRTT;
  *(result + 36) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 1) = self->_bandwidth;
  *(result + 36) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 36) & 4) == 0 || self->_timestamp != *(equal + 3))
      {
        goto LABEL_21;
      }
    }

    else if ((*(equal + 36) & 4) != 0)
    {
LABEL_21:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 36) & 8) == 0 || self->_linkType != *(equal + 8))
      {
        goto LABEL_21;
      }
    }

    else if ((*(equal + 36) & 8) != 0)
    {
      goto LABEL_21;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 36) & 2) == 0 || self->_currentRTT != *(equal + 2))
      {
        goto LABEL_21;
      }
    }

    else if ((*(equal + 36) & 2) != 0)
    {
      goto LABEL_21;
    }

    LOBYTE(v5) = (*(equal + 36) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_bandwidth != *(equal + 1))
      {
        goto LABEL_21;
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
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_linkType;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761u * self->_currentRTT;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761u * self->_bandwidth;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 36);
  if ((v3 & 4) != 0)
  {
    self->_timestamp = *(from + 3);
    *&self->_has |= 4u;
    v3 = *(from + 36);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(from + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_linkType = *(from + 8);
  *&self->_has |= 8u;
  v3 = *(from + 36);
  if ((v3 & 2) == 0)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_9:
    self->_bandwidth = *(from + 1);
    *&self->_has |= 1u;
    return;
  }

LABEL_8:
  self->_currentRTT = *(from + 2);
  *&self->_has |= 2u;
  if (*(from + 36))
  {
    goto LABEL_9;
  }
}

@end