@interface AWDLQMDataTransfer
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLQM:(id)a3;
- (int)lQM;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasRxBytes:(BOOL)a3;
- (void)setHasStateDuration:(BOOL)a3;
- (void)setHasTxBytes:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsLQM:(id)a3
{
  if ([a3 isEqualToString:@"LQM_TYPE_UNKNOWN"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"LQM_TYPE_GOOD"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"LQM_TYPE_BAD"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"LQM_TYPE_POOR"])
  {
    return 3;
  }

  return 0;
}

- (void)setHasTxBytes:(BOOL)a3
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

- (void)setHasRxBytes:(BOOL)a3
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

- (void)setHasStateDuration:(BOOL)a3
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
  v3.super_class = AWDLQMDataTransfer;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLQMDataTransfer description](&v3, sel_description), -[AWDLQMDataTransfer dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  bundleName = self->_bundleName;
  if (bundleName)
  {
    [v3 setObject:bundleName forKey:@"bundleName"];
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

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (self->_bundleName)
  {
    [a3 setBundleName:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 4) = self->_lQM;
    *(a3 + 32) |= 1u;
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

  *(a3 + 7) = self->_txBytes;
  *(a3 + 32) |= 8u;
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
  *(a3 + 5) = self->_rxBytes;
  *(a3 + 32) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_7:
  *(a3 + 6) = self->_stateDuration;
  *(a3 + 32) |= 4u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 8) = [(NSString *)self->_bundleName copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    bundleName = self->_bundleName;
    if (!(bundleName | *(a3 + 1)) || (v5 = [(NSString *)bundleName isEqual:?]) != 0)
    {
      if (*&self->_has)
      {
        if ((*(a3 + 32) & 1) == 0 || self->_lQM != *(a3 + 4))
        {
          goto LABEL_23;
        }
      }

      else if (*(a3 + 32))
      {
LABEL_23:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&self->_has & 8) != 0)
      {
        if ((*(a3 + 32) & 8) == 0 || self->_txBytes != *(a3 + 7))
        {
          goto LABEL_23;
        }
      }

      else if ((*(a3 + 32) & 8) != 0)
      {
        goto LABEL_23;
      }

      if ((*&self->_has & 2) != 0)
      {
        if ((*(a3 + 32) & 2) == 0 || self->_rxBytes != *(a3 + 5))
        {
          goto LABEL_23;
        }
      }

      else if ((*(a3 + 32) & 2) != 0)
      {
        goto LABEL_23;
      }

      LOBYTE(v5) = (*(a3 + 32) & 4) == 0;
      if ((*&self->_has & 4) != 0)
      {
        if ((*(a3 + 32) & 4) == 0 || self->_stateDuration != *(a3 + 6))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(AWDLQMDataTransfer *)self setBundleName:?];
  }

  v5 = *(a3 + 32);
  if (v5)
  {
    self->_lQM = *(a3 + 4);
    *&self->_has |= 1u;
    v5 = *(a3 + 32);
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

  else if ((*(a3 + 32) & 8) == 0)
  {
    goto LABEL_5;
  }

  self->_txBytes = *(a3 + 7);
  *&self->_has |= 8u;
  v5 = *(a3 + 32);
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
  self->_rxBytes = *(a3 + 5);
  *&self->_has |= 2u;
  if ((*(a3 + 32) & 4) == 0)
  {
    return;
  }

LABEL_7:
  self->_stateDuration = *(a3 + 6);
  *&self->_has |= 4u;
}

@end