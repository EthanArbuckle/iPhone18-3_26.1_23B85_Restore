@interface AWDIDSMagnetCorruptionDetailed
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCorrectRawBytesSinceLastCorruption:(BOOL)a3;
- (void)setHasDiscardedRawBytes:(BOOL)a3;
- (void)setHasLinkType:(BOOL)a3;
- (void)setHasRecoveryTimeInMs:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSMagnetCorruptionDetailed

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasLinkType:(BOOL)a3
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

- (void)setHasDiscardedRawBytes:(BOOL)a3
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

- (void)setHasCorrectRawBytesSinceLastCorruption:(BOOL)a3
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

- (void)setHasRecoveryTimeInMs:(BOOL)a3
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
  v3.super_class = AWDIDSMagnetCorruptionDetailed;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSMagnetCorruptionDetailed description](&v3, sel_description), -[AWDIDSMagnetCorruptionDetailed dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_linkType), @"linkType"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_discardedRawBytes), @"discardedRawBytes"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_correctFramesSinceLastCorruption), @"correctFramesSinceLastCorruption"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return v3;
    }

    goto LABEL_7;
  }

LABEL_12:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_correctRawBytesSinceLastCorruption), @"correctRawBytesSinceLastCorruption"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 0x10) != 0)
  {
LABEL_7:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_recoveryTimeInMs), @"recoveryTimeInMs"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(a3 + 6) = self->_timestamp;
    *(a3 + 56) |= 0x20u;
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

  *(a3 + 4) = self->_linkType;
  *(a3 + 56) |= 8u;
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
  *(a3 + 3) = self->_discardedRawBytes;
  *(a3 + 56) |= 4u;
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
  *(a3 + 2) = self->_correctRawBytesSinceLastCorruption;
  *(a3 + 56) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_13:
    *(a3 + 5) = self->_recoveryTimeInMs;
    *(a3 + 56) |= 0x10u;
    return;
  }

LABEL_12:
  *(a3 + 1) = self->_correctFramesSinceLastCorruption;
  *(a3 + 56) |= 1u;
  if ((*&self->_has & 0x10) != 0)
  {
    goto LABEL_13;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 56) & 0x20) == 0 || self->_timestamp != *(a3 + 6))
      {
        goto LABEL_31;
      }
    }

    else if ((*(a3 + 56) & 0x20) != 0)
    {
LABEL_31:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 56) & 8) == 0 || self->_linkType != *(a3 + 4))
      {
        goto LABEL_31;
      }
    }

    else if ((*(a3 + 56) & 8) != 0)
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 56) & 4) == 0 || self->_discardedRawBytes != *(a3 + 3))
      {
        goto LABEL_31;
      }
    }

    else if ((*(a3 + 56) & 4) != 0)
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 56) & 2) == 0 || self->_correctRawBytesSinceLastCorruption != *(a3 + 2))
      {
        goto LABEL_31;
      }
    }

    else if ((*(a3 + 56) & 2) != 0)
    {
      goto LABEL_31;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 56) & 1) == 0 || self->_correctFramesSinceLastCorruption != *(a3 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (*(a3 + 56))
    {
      goto LABEL_31;
    }

    LOBYTE(v5) = (*(a3 + 56) & 0x10) == 0;
    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 56) & 0x10) == 0 || self->_recoveryTimeInMs != *(a3 + 5))
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

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 56);
  if ((v3 & 0x20) != 0)
  {
    self->_timestamp = *(a3 + 6);
    *&self->_has |= 0x20u;
    v3 = *(a3 + 56);
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

  else if ((*(a3 + 56) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_linkType = *(a3 + 4);
  *&self->_has |= 8u;
  v3 = *(a3 + 56);
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
  self->_discardedRawBytes = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 56);
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
  self->_correctRawBytesSinceLastCorruption = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 56);
  if ((v3 & 1) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_13:
    self->_recoveryTimeInMs = *(a3 + 5);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_12:
  self->_correctFramesSinceLastCorruption = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 56) & 0x10) != 0)
  {
    goto LABEL_13;
  }
}

@end