@interface AWDOMICntrs
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHeOmitxDlmursdrecAck:(BOOL)a3;
- (void)setHasHeOmitxDur:(BOOL)a3;
- (void)setHasHeOmitxRetries:(BOOL)a3;
- (void)setHasHeOmitxSched:(BOOL)a3;
- (void)setHasHeOmitxSuccess:(BOOL)a3;
- (void)setHasHeOmitxTxnsts:(BOOL)a3;
- (void)setHasHeOmitxTxnstsAck:(BOOL)a3;
- (void)setHasHeOmitxUlmucfg:(BOOL)a3;
- (void)setHasHeOmitxUlmucfgAck:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDOMICntrs

- (void)setHasHeOmitxSched:(BOOL)a3
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

- (void)setHasHeOmitxSuccess:(BOOL)a3
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

- (void)setHasHeOmitxRetries:(BOOL)a3
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

- (void)setHasHeOmitxDur:(BOOL)a3
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

- (void)setHasHeOmitxUlmucfg:(BOOL)a3
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

- (void)setHasHeOmitxUlmucfgAck:(BOOL)a3
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

- (void)setHasHeOmitxTxnsts:(BOOL)a3
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

- (void)setHasHeOmitxTxnstsAck:(BOOL)a3
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

- (void)setHasHeOmitxDlmursdrecAck:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDOMICntrs;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDOMICntrs description](&v3, sel_description), -[AWDOMICntrs dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heOmitxSched), @"he_omitx_sched"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heOmitxSuccess), @"he_omitx_success"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heOmitxRetries), @"he_omitx_retries"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heOmitxDur), @"he_omitx_dur"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heOmitxUlmucfg), @"he_omitx_ulmucfg"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heOmitxUlmucfgAck), @"he_omitx_ulmucfg_ack"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heOmitxTxnsts), @"he_omitx_txnsts"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heOmitxDlmursdrec), @"he_omitx_dlmursdrec"}];
    if ((*&self->_has & 2) == 0)
    {
      return v3;
    }

    goto LABEL_11;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heOmitxTxnstsAck), @"he_omitx_txnsts_ack"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((has & 2) != 0)
  {
LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_heOmitxDlmursdrecAck), @"he_omitx_dlmursdrec_ack"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    heOmitxSched = self->_heOmitxSched;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  heOmitxSuccess = self->_heOmitxSuccess;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  heOmitxRetries = self->_heOmitxRetries;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  heOmitxDur = self->_heOmitxDur;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  heOmitxUlmucfg = self->_heOmitxUlmucfg;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  heOmitxUlmucfgAck = self->_heOmitxUlmucfgAck;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  heOmitxTxnsts = self->_heOmitxTxnsts;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    heOmitxDlmursdrec = self->_heOmitxDlmursdrec;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_19:
  heOmitxTxnstsAck = self->_heOmitxTxnstsAck;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_21:
  heOmitxDlmursdrecAck = self->_heOmitxDlmursdrecAck;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(a3 + 6) = self->_heOmitxSched;
    *(a3 + 24) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 7) = self->_heOmitxSuccess;
  *(a3 + 24) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a3 + 5) = self->_heOmitxRetries;
  *(a3 + 24) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 4) = self->_heOmitxDur;
  *(a3 + 24) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a3 + 10) = self->_heOmitxUlmucfg;
  *(a3 + 24) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 11) = self->_heOmitxUlmucfgAck;
  *(a3 + 24) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 8) = self->_heOmitxTxnsts;
  *(a3 + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 9) = self->_heOmitxTxnstsAck;
  *(a3 + 24) |= 0x80u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_21:
    *(a3 + 3) = self->_heOmitxDlmursdrecAck;
    *(a3 + 24) |= 2u;
    return;
  }

LABEL_20:
  *(a3 + 2) = self->_heOmitxDlmursdrec;
  *(a3 + 24) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_21;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 6) = self->_heOmitxSched;
    *(result + 24) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_heOmitxSuccess;
  *(result + 24) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 5) = self->_heOmitxRetries;
  *(result + 24) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 4) = self->_heOmitxDur;
  *(result + 24) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 10) = self->_heOmitxUlmucfg;
  *(result + 24) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 11) = self->_heOmitxUlmucfgAck;
  *(result + 24) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 8) = self->_heOmitxTxnsts;
  *(result + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 9) = self->_heOmitxTxnstsAck;
  *(result + 24) |= 0x80u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(result + 2) = self->_heOmitxDlmursdrec;
  *(result + 24) |= 1u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_11:
  *(result + 3) = self->_heOmitxDlmursdrecAck;
  *(result + 24) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 24);
    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_heOmitxSched != *(a3 + 6))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
LABEL_51:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_heOmitxSuccess != *(a3 + 7))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_heOmitxRetries != *(a3 + 5))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_heOmitxDur != *(a3 + 4))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_51;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 24) & 0x100) == 0 || self->_heOmitxUlmucfg != *(a3 + 10))
      {
        goto LABEL_51;
      }
    }

    else if ((*(a3 + 24) & 0x100) != 0)
    {
      goto LABEL_51;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(a3 + 24) & 0x200) == 0 || self->_heOmitxUlmucfgAck != *(a3 + 11))
      {
        goto LABEL_51;
      }
    }

    else if ((*(a3 + 24) & 0x200) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_heOmitxTxnsts != *(a3 + 8))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_heOmitxTxnstsAck != *(a3 + 9))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_51;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_heOmitxDlmursdrec != *(a3 + 2))
      {
        goto LABEL_51;
      }
    }

    else if (v7)
    {
      goto LABEL_51;
    }

    LOBYTE(v5) = (v7 & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_heOmitxDlmursdrecAck != *(a3 + 3))
      {
        goto LABEL_51;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_heOmitxSched;
    if ((has & 0x20) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_heOmitxSuccess;
      if ((has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_heOmitxRetries;
    if ((has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((has & 4) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_heOmitxDur;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_heOmitxUlmucfg;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_heOmitxUlmucfgAck;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_heOmitxTxnsts;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_heOmitxTxnstsAck;
    if (has)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_19:
  v10 = 0;
  if ((has & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v11 = 2654435761 * self->_heOmitxDlmursdrec;
  if ((has & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v12 = 2654435761 * self->_heOmitxDlmursdrecAck;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 24);
  if ((v3 & 0x10) != 0)
  {
    self->_heOmitxSched = *(a3 + 6);
    *&self->_has |= 0x10u;
    v3 = *(a3 + 24);
    if ((v3 & 0x20) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v3 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_heOmitxSuccess = *(a3 + 7);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 24);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_heOmitxRetries = *(a3 + 5);
  *&self->_has |= 8u;
  v3 = *(a3 + 24);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_heOmitxDur = *(a3 + 4);
  *&self->_has |= 4u;
  v3 = *(a3 + 24);
  if ((v3 & 0x100) == 0)
  {
LABEL_6:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_heOmitxUlmucfg = *(a3 + 10);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 24);
  if ((v3 & 0x200) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_heOmitxUlmucfgAck = *(a3 + 11);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 24);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_heOmitxTxnsts = *(a3 + 8);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 24);
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_heOmitxTxnstsAck = *(a3 + 9);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 24);
  if ((v3 & 1) == 0)
  {
LABEL_10:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_21:
    self->_heOmitxDlmursdrecAck = *(a3 + 3);
    *&self->_has |= 2u;
    return;
  }

LABEL_20:
  self->_heOmitxDlmursdrec = *(a3 + 2);
  *&self->_has |= 1u;
  if ((*(a3 + 24) & 2) != 0)
  {
    goto LABEL_21;
  }
}

@end