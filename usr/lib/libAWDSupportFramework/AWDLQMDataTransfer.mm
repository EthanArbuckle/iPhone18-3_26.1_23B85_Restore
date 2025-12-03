@interface AWDLQMDataTransfer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLQM:(id)m;
- (int)lQM;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasRxBytes:(BOOL)bytes;
- (void)setHasStateDuration:(BOOL)duration;
- (void)setHasTxBytes:(BOOL)bytes;
- (void)writeTo:(id)to;
@end

@implementation AWDLQMDataTransfer

- (void)dealloc
{
  [(AWDLQMDataTransfer *)self setBundleName:0];
  v3.receiver = self;
  v3.super_class = AWDLQMDataTransfer;
  [(AWDLQMDataTransfer *)&v3 dealloc];
}

- (int)lQM
{
  if (*&self->_has)
  {
    return self->_lQM;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsLQM:(id)m
{
  if ([m isEqualToString:@"LQM_TYPE_UNKNOWN"])
  {
    return 0;
  }

  if ([m isEqualToString:@"LQM_TYPE_GOOD"])
  {
    return 1;
  }

  if ([m isEqualToString:@"LQM_TYPE_BAD"])
  {
    return 2;
  }

  if ([m isEqualToString:@"LQM_TYPE_POOR"])
  {
    return 3;
  }

  return 0;
}

- (void)setHasTxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasRxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasStateDuration:(BOOL)duration
{
  if (duration)
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
  v3.super_class = AWDLQMDataTransfer;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLQMDataTransfer description](&v3, sel_description), -[AWDLQMDataTransfer dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  bundleName = self->_bundleName;
  if (bundleName)
  {
    [dictionary setObject:bundleName forKey:@"bundleName"];
  }

  has = self->_has;
  if (has)
  {
    lQM = self->_lQM;
    if (lQM >= 4)
    {
      v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_lQM];
    }

    else
    {
      v8 = off_29EE32BA8[lQM];
    }

    [v4 setObject:v8 forKey:@"LQM"];
    has = self->_has;
  }

  if ((has & 8) == 0)
  {
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rxBytes), @"RxBytes"}];
    if ((*&self->_has & 4) == 0)
    {
      return v4;
    }

    goto LABEL_11;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txBytes), @"TxBytes"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((has & 4) != 0)
  {
LABEL_11:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stateDuration), @"stateDuration"}];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_bundleName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    lQM = self->_lQM;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      rxBytes = self->_rxBytes;
      PBDataWriterWriteUint32Field();
      if ((*&self->_has & 4) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  txBytes = self->_txBytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_11:
  stateDuration = self->_stateDuration;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if (self->_bundleName)
  {
    [to setBundleName:?];
  }

  has = self->_has;
  if (has)
  {
    *(to + 4) = self->_lQM;
    *(to + 32) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(to + 7) = self->_txBytes;
  *(to + 32) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_11:
  *(to + 5) = self->_rxBytes;
  *(to + 32) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_7:
  *(to + 6) = self->_stateDuration;
  *(to + 32) |= 4u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 8) = [(NSString *)self->_bundleName copyWithZone:zone];
  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_lQM;
    *(v5 + 32) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 20) = self->_rxBytes;
      *(v5 + 32) |= 2u;
      if ((*&self->_has & 4) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 28) = self->_txBytes;
  *(v5 + 32) |= 8u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    *(v5 + 24) = self->_stateDuration;
    *(v5 + 32) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    bundleName = self->_bundleName;
    if (!(bundleName | *(equal + 1)) || (v5 = [(NSString *)bundleName isEqual:?]) != 0)
    {
      if (*&self->_has)
      {
        if ((*(equal + 32) & 1) == 0 || self->_lQM != *(equal + 4))
        {
          goto LABEL_23;
        }
      }

      else if (*(equal + 32))
      {
LABEL_23:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&self->_has & 8) != 0)
      {
        if ((*(equal + 32) & 8) == 0 || self->_txBytes != *(equal + 7))
        {
          goto LABEL_23;
        }
      }

      else if ((*(equal + 32) & 8) != 0)
      {
        goto LABEL_23;
      }

      if ((*&self->_has & 2) != 0)
      {
        if ((*(equal + 32) & 2) == 0 || self->_rxBytes != *(equal + 5))
        {
          goto LABEL_23;
        }
      }

      else if ((*(equal + 32) & 2) != 0)
      {
        goto LABEL_23;
      }

      LOBYTE(v5) = (*(equal + 32) & 4) == 0;
      if ((*&self->_has & 4) != 0)
      {
        if ((*(equal + 32) & 4) == 0 || self->_stateDuration != *(equal + 6))
        {
          goto LABEL_23;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_lQM;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_txBytes;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_rxBytes;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_stateDuration;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(AWDLQMDataTransfer *)self setBundleName:?];
  }

  v5 = *(from + 32);
  if (v5)
  {
    self->_lQM = *(from + 4);
    *&self->_has |= 1u;
    v5 = *(from + 32);
    if ((v5 & 8) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*(from + 32) & 8) == 0)
  {
    goto LABEL_5;
  }

  self->_txBytes = *(from + 7);
  *&self->_has |= 8u;
  v5 = *(from + 32);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_11:
  self->_rxBytes = *(from + 5);
  *&self->_has |= 2u;
  if ((*(from + 32) & 4) == 0)
  {
    return;
  }

LABEL_7:
  self->_stateDuration = *(from + 6);
  *&self->_has |= 4u;
}

@end