@interface AWDWiFiDPSPerACTxCompletionSnapshot
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDropped:(BOOL)a3;
- (void)setHasExpired:(BOOL)a3;
- (void)setHasFirmwareFreePacket:(BOOL)a3;
- (void)setHasForceLifetimeExp:(BOOL)a3;
- (void)setHasMaxRetries:(BOOL)a3;
- (void)setHasNoAck:(BOOL)a3;
- (void)setHasNoBuf:(BOOL)a3;
- (void)setHasNoResources:(BOOL)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)setHasTxFailure:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiDPSPerACTxCompletionSnapshot

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

- (void)setHasDropped:(BOOL)a3
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

- (void)setHasNoBuf:(BOOL)a3
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

- (void)setHasNoResources:(BOOL)a3
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

- (void)setHasNoAck:(BOOL)a3
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

- (void)setHasExpired:(BOOL)a3
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

- (void)setHasTxFailure:(BOOL)a3
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

- (void)setHasFirmwareFreePacket:(BOOL)a3
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

- (void)setHasMaxRetries:(BOOL)a3
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

- (void)setHasForceLifetimeExp:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiDPSPerACTxCompletionSnapshot;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiDPSPerACTxCompletionSnapshot description](&v3, sel_description), -[AWDWiFiDPSPerACTxCompletionSnapshot dictionaryRepresentation](self, "dictionaryRepresentation")];
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
      if ((has & 0x80) == 0)
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dropped), @"dropped"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_noBuf), @"noBuf"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_noResources), @"noResources"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_noAck), @"noAck"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_chipModeError), @"chipModeError"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_expired), @"expired"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txFailure), @"txFailure"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_23:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_maxRetries), @"maxRetries"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return v3;
    }

    goto LABEL_12;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_firmwareFreePacket), @"firmwareFreePacket"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((has & 0x10) != 0)
  {
LABEL_12:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_forceLifetimeExp), @"forceLifetimeExp"}];
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
      if ((has & 0x80) == 0)
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

  dropped = self->_dropped;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  noBuf = self->_noBuf;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  noResources = self->_noResources;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  noAck = self->_noAck;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  chipModeError = self->_chipModeError;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  expired = self->_expired;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  txFailure = self->_txFailure;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    maxRetries = self->_maxRetries;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_21:
  firmwareFreePacket = self->_firmwareFreePacket;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_23:
  forceLifetimeExp = self->_forceLifetimeExp;

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
      if ((has & 0x80) == 0)
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

  *(a3 + 3) = self->_dropped;
  *(a3 + 26) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 9) = self->_noBuf;
  *(a3 + 26) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a3 + 10) = self->_noResources;
  *(a3 + 26) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 8) = self->_noAck;
  *(a3 + 26) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 2) = self->_chipModeError;
  *(a3 + 26) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 4) = self->_expired;
  *(a3 + 26) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 12) = self->_txFailure;
  *(a3 + 26) |= 0x400u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 5) = self->_firmwareFreePacket;
  *(a3 + 26) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_23:
    *(a3 + 6) = self->_forceLifetimeExp;
    *(a3 + 26) |= 0x10u;
    return;
  }

LABEL_22:
  *(a3 + 7) = self->_maxRetries;
  *(a3 + 26) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
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
      if ((has & 0x80) == 0)
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

  *(result + 3) = self->_dropped;
  *(result + 26) |= 2u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 9) = self->_noBuf;
  *(result + 26) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 10) = self->_noResources;
  *(result + 26) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 8) = self->_noAck;
  *(result + 26) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 2) = self->_chipModeError;
  *(result + 26) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 4) = self->_expired;
  *(result + 26) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 12) = self->_txFailure;
  *(result + 26) |= 0x400u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 5) = self->_firmwareFreePacket;
  *(result + 26) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_23:
  *(result + 7) = self->_maxRetries;
  *(result + 26) |= 0x20u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_12:
  *(result + 6) = self->_forceLifetimeExp;
  *(result + 26) |= 0x10u;
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
      if ((v7 & 2) == 0 || self->_dropped != *(a3 + 3))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_noBuf != *(a3 + 9))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_56;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 26) & 0x100) == 0 || self->_noResources != *(a3 + 10))
      {
        goto LABEL_56;
      }
    }

    else if ((*(a3 + 26) & 0x100) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_noAck != *(a3 + 8))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_56;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_chipModeError != *(a3 + 2))
      {
        goto LABEL_56;
      }
    }

    else if (v7)
    {
      goto LABEL_56;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_expired != *(a3 + 4))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_56;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(a3 + 26) & 0x400) == 0 || self->_txFailure != *(a3 + 12))
      {
        goto LABEL_56;
      }
    }

    else if ((*(a3 + 26) & 0x400) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_firmwareFreePacket != *(a3 + 5))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_maxRetries != *(a3 + 7))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_56;
    }

    LOBYTE(v5) = (v7 & 0x10) == 0;
    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_forceLifetimeExp != *(a3 + 6))
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
      v4 = 2654435761 * self->_dropped;
      if ((has & 0x80) != 0)
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
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_noBuf;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_noResources;
    if ((has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_noAck;
    if (has)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  if (has)
  {
LABEL_7:
    v8 = 2654435761 * self->_chipModeError;
    if ((has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_expired;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_txFailure;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = 0;
  if ((has & 8) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_firmwareFreePacket;
    if ((has & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v12 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_21:
  v11 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = 2654435761 * self->_maxRetries;
  if ((has & 0x10) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v13 = 2654435761 * self->_forceLifetimeExp;
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
      if ((v3 & 0x80) == 0)
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

  self->_dropped = *(a3 + 3);
  *&self->_has |= 2u;
  v3 = *(a3 + 26);
  if ((v3 & 0x80) == 0)
  {
LABEL_4:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_noBuf = *(a3 + 9);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 26);
  if ((v3 & 0x100) == 0)
  {
LABEL_5:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_noResources = *(a3 + 10);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 26);
  if ((v3 & 0x40) == 0)
  {
LABEL_6:
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_noAck = *(a3 + 8);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 26);
  if ((v3 & 1) == 0)
  {
LABEL_7:
    if ((v3 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_chipModeError = *(a3 + 2);
  *&self->_has |= 1u;
  v3 = *(a3 + 26);
  if ((v3 & 4) == 0)
  {
LABEL_8:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_expired = *(a3 + 4);
  *&self->_has |= 4u;
  v3 = *(a3 + 26);
  if ((v3 & 0x400) == 0)
  {
LABEL_9:
    if ((v3 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_txFailure = *(a3 + 12);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 26);
  if ((v3 & 8) == 0)
  {
LABEL_10:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_firmwareFreePacket = *(a3 + 5);
  *&self->_has |= 8u;
  v3 = *(a3 + 26);
  if ((v3 & 0x20) == 0)
  {
LABEL_11:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_23:
    self->_forceLifetimeExp = *(a3 + 6);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_22:
  self->_maxRetries = *(a3 + 7);
  *&self->_has |= 0x20u;
  if ((*(a3 + 26) & 0x10) != 0)
  {
    goto LABEL_23;
  }
}

@end