@interface AWDIDSMagnetCorruptionDetailed
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCorrectRawBytesSinceLastCorruption:(BOOL)corruption;
- (void)setHasDiscardedRawBytes:(BOOL)bytes;
- (void)setHasLinkType:(BOOL)type;
- (void)setHasRecoveryTimeInMs:(BOOL)ms;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSMagnetCorruptionDetailed

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDiscardedRawBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCorrectRawBytesSinceLastCorruption:(BOOL)corruption
{
  if (corruption)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRecoveryTimeInMs:(BOOL)ms
{
  if (ms)
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
  v3.super_class = AWDIDSMagnetCorruptionDetailed;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSMagnetCorruptionDetailed description](&v3, sel_description), -[AWDIDSMagnetCorruptionDetailed dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_linkType), @"linkType"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_discardedRawBytes), @"discardedRawBytes"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_correctFramesSinceLastCorruption), @"correctFramesSinceLastCorruption"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return dictionary;
    }

    goto LABEL_7;
  }

LABEL_12:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_correctRawBytesSinceLastCorruption), @"correctRawBytesSinceLastCorruption"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 0x10) != 0)
  {
LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_recoveryTimeInMs), @"recoveryTimeInMs"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  linkType = self->_linkType;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  discardedRawBytes = self->_discardedRawBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    correctFramesSinceLastCorruption = self->_correctFramesSinceLastCorruption;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  correctRawBytesSinceLastCorruption = self->_correctRawBytesSinceLastCorruption;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_13:
  recoveryTimeInMs = self->_recoveryTimeInMs;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(to + 6) = self->_timestamp;
    *(to + 56) |= 0x20u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_linkType;
  *(to + 56) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(to + 3) = self->_discardedRawBytes;
  *(to + 56) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(to + 2) = self->_correctRawBytesSinceLastCorruption;
  *(to + 56) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_13:
    *(to + 5) = self->_recoveryTimeInMs;
    *(to + 56) |= 0x10u;
    return;
  }

LABEL_12:
  *(to + 1) = self->_correctFramesSinceLastCorruption;
  *(to + 56) |= 1u;
  if ((*&self->_has & 0x10) != 0)
  {
    goto LABEL_13;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(result + 6) = self->_timestamp;
    *(result + 56) |= 0x20u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_linkType;
  *(result + 56) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 3) = self->_discardedRawBytes;
  *(result + 56) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 2) = self->_correctRawBytesSinceLastCorruption;
  *(result + 56) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 1) = self->_correctFramesSinceLastCorruption;
  *(result + 56) |= 1u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 5) = self->_recoveryTimeInMs;
  *(result + 56) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 56) & 0x20) == 0 || self->_timestamp != *(equal + 6))
      {
        goto LABEL_31;
      }
    }

    else if ((*(equal + 56) & 0x20) != 0)
    {
LABEL_31:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 56) & 8) == 0 || self->_linkType != *(equal + 4))
      {
        goto LABEL_31;
      }
    }

    else if ((*(equal + 56) & 8) != 0)
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 56) & 4) == 0 || self->_discardedRawBytes != *(equal + 3))
      {
        goto LABEL_31;
      }
    }

    else if ((*(equal + 56) & 4) != 0)
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 56) & 2) == 0 || self->_correctRawBytesSinceLastCorruption != *(equal + 2))
      {
        goto LABEL_31;
      }
    }

    else if ((*(equal + 56) & 2) != 0)
    {
      goto LABEL_31;
    }

    if (*&self->_has)
    {
      if ((*(equal + 56) & 1) == 0 || self->_correctFramesSinceLastCorruption != *(equal + 1))
      {
        goto LABEL_31;
      }
    }

    else if (*(equal + 56))
    {
      goto LABEL_31;
    }

    LOBYTE(v5) = (*(equal + 56) & 0x10) == 0;
    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 56) & 0x10) == 0 || self->_recoveryTimeInMs != *(equal + 5))
      {
        goto LABEL_31;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761u * self->_linkType;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
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
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_discardedRawBytes;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = 2654435761u * self->_correctRawBytesSinceLastCorruption;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761u * self->_correctFramesSinceLastCorruption;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761u * self->_recoveryTimeInMs;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 56);
  if ((v3 & 0x20) != 0)
  {
    self->_timestamp = *(from + 6);
    *&self->_has |= 0x20u;
    v3 = *(from + 56);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(from + 56) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_linkType = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 56);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  self->_discardedRawBytes = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 56);
  if ((v3 & 2) == 0)
  {
LABEL_5:
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_correctRawBytesSinceLastCorruption = *(from + 2);
  *&self->_has |= 2u;
  v3 = *(from + 56);
  if ((v3 & 1) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_13:
    self->_recoveryTimeInMs = *(from + 5);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_12:
  self->_correctFramesSinceLastCorruption = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 56) & 0x10) != 0)
  {
    goto LABEL_13;
  }
}

@end