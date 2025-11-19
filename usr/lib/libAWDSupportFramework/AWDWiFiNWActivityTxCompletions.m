@interface AWDWiFiNWActivityTxCompletions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasExpired:(BOOL)a3;
- (void)setHasInternalerror:(BOOL)a3;
- (void)setHasIoerror:(BOOL)a3;
- (void)setHasMbfree:(BOOL)a3;
- (void)setHasNoack:(BOOL)a3;
- (void)setHasNobuf:(BOOL)a3;
- (void)setHasNoremotepeer:(BOOL)a3;
- (void)setHasNoresources:(BOOL)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)setHasTxfailure:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiNWActivityTxCompletions

- (void)setHasSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasExpired:(BOOL)a3
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

- (void)setHasNobuf:(BOOL)a3
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

- (void)setHasNoack:(BOOL)a3
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

- (void)setHasTxfailure:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasNoresources:(BOOL)a3
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

- (void)setHasIoerror:(BOOL)a3
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

- (void)setHasMbfree:(BOOL)a3
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

- (void)setHasNoremotepeer:(BOOL)a3
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

- (void)setHasInternalerror:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityTxCompletions;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityTxCompletions description](&v3, sel_description), -[AWDWiFiNWActivityTxCompletions dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_success), @"success"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_expired), @"expired"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nobuf), @"nobuf"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_noack), @"noack"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txfailure), @"txfailure"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_noresources), @"noresources"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ioerror), @"ioerror"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_mbfree), @"mbfree"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_23:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_noremotepeer), @"noremotepeer"}];
    if ((*&self->_has & 4) == 0)
    {
      return v3;
    }

    goto LABEL_12;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_chipmodeerror), @"chipmodeerror"}];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((has & 4) != 0)
  {
LABEL_12:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_internalerror), @"internalerror"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    success = self->_success;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  expired = self->_expired;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  nobuf = self->_nobuf;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  noack = self->_noack;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  txfailure = self->_txfailure;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  noresources = self->_noresources;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  ioerror = self->_ioerror;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  mbfree = self->_mbfree;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    noremotepeer = self->_noremotepeer;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_21:
  chipmodeerror = self->_chipmodeerror;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_23:
  internalerror = self->_internalerror;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(a3 + 11) = self->_success;
    *(a3 + 26) |= 0x200u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 3) = self->_expired;
  *(a3 + 26) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 8) = self->_nobuf;
  *(a3 + 26) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a3 + 7) = self->_noack;
  *(a3 + 26) |= 0x20u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 12) = self->_txfailure;
  *(a3 + 26) |= 0x400u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 10) = self->_noresources;
  *(a3 + 26) |= 0x100u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 5) = self->_ioerror;
  *(a3 + 26) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 6) = self->_mbfree;
  *(a3 + 26) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 2) = self->_chipmodeerror;
  *(a3 + 26) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      return;
    }

LABEL_23:
    *(a3 + 4) = self->_internalerror;
    *(a3 + 26) |= 4u;
    return;
  }

LABEL_22:
  *(a3 + 9) = self->_noremotepeer;
  *(a3 + 26) |= 0x80u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_23;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(result + 11) = self->_success;
    *(result + 26) |= 0x200u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_expired;
  *(result + 26) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 8) = self->_nobuf;
  *(result + 26) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 7) = self->_noack;
  *(result + 26) |= 0x20u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 12) = self->_txfailure;
  *(result + 26) |= 0x400u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 10) = self->_noresources;
  *(result + 26) |= 0x100u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 5) = self->_ioerror;
  *(result + 26) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 6) = self->_mbfree;
  *(result + 26) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 2) = self->_chipmodeerror;
  *(result + 26) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_23:
  *(result + 9) = self->_noremotepeer;
  *(result + 26) |= 0x80u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_12:
  *(result + 4) = self->_internalerror;
  *(result + 26) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 26);
    if ((has & 0x200) != 0)
    {
      if ((*(a3 + 26) & 0x200) == 0 || self->_success != *(a3 + 11))
      {
        goto LABEL_56;
      }
    }

    else if ((*(a3 + 26) & 0x200) != 0)
    {
LABEL_56:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_expired != *(a3 + 3))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_nobuf != *(a3 + 8))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_noack != *(a3 + 7))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_56;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(a3 + 26) & 0x400) == 0 || self->_txfailure != *(a3 + 12))
      {
        goto LABEL_56;
      }
    }

    else if ((*(a3 + 26) & 0x400) != 0)
    {
      goto LABEL_56;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 26) & 0x100) == 0 || self->_noresources != *(a3 + 10))
      {
        goto LABEL_56;
      }
    }

    else if ((*(a3 + 26) & 0x100) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_ioerror != *(a3 + 5))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_mbfree != *(a3 + 6))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_56;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_chipmodeerror != *(a3 + 2))
      {
        goto LABEL_56;
      }
    }

    else if (v7)
    {
      goto LABEL_56;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_noremotepeer != *(a3 + 9))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_56;
    }

    LOBYTE(v5) = (v7 & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_internalerror != *(a3 + 4))
      {
        goto LABEL_56;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v3 = 2654435761 * self->_success;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_expired;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_nobuf;
    if ((has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_noack;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_txfailure;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_noresources;
    if ((has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_ioerror;
    if ((has & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_mbfree;
    if (has)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = 0;
  if (has)
  {
LABEL_10:
    v11 = 2654435761 * self->_chipmodeerror;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v12 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_21:
  v11 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = 2654435761 * self->_noremotepeer;
  if ((has & 4) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v13 = 2654435761 * self->_internalerror;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 26);
  if ((v3 & 0x200) != 0)
  {
    self->_success = *(a3 + 11);
    *&self->_has |= 0x200u;
    v3 = *(a3 + 26);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_expired = *(a3 + 3);
  *&self->_has |= 2u;
  v3 = *(a3 + 26);
  if ((v3 & 0x40) == 0)
  {
LABEL_4:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_nobuf = *(a3 + 8);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 26);
  if ((v3 & 0x20) == 0)
  {
LABEL_5:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_noack = *(a3 + 7);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 26);
  if ((v3 & 0x400) == 0)
  {
LABEL_6:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_txfailure = *(a3 + 12);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 26);
  if ((v3 & 0x100) == 0)
  {
LABEL_7:
    if ((v3 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_noresources = *(a3 + 10);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 26);
  if ((v3 & 8) == 0)
  {
LABEL_8:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_ioerror = *(a3 + 5);
  *&self->_has |= 8u;
  v3 = *(a3 + 26);
  if ((v3 & 0x10) == 0)
  {
LABEL_9:
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_mbfree = *(a3 + 6);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 26);
  if ((v3 & 1) == 0)
  {
LABEL_10:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_chipmodeerror = *(a3 + 2);
  *&self->_has |= 1u;
  v3 = *(a3 + 26);
  if ((v3 & 0x80) == 0)
  {
LABEL_11:
    if ((v3 & 4) == 0)
    {
      return;
    }

LABEL_23:
    self->_internalerror = *(a3 + 4);
    *&self->_has |= 4u;
    return;
  }

LABEL_22:
  self->_noremotepeer = *(a3 + 9);
  *&self->_has |= 0x80u;
  if ((*(a3 + 26) & 4) != 0)
  {
    goto LABEL_23;
  }
}

@end