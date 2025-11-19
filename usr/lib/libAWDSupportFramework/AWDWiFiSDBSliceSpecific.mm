@interface AWDWiFiSDBSliceSpecific
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAckTxPowerBackoffCount:(BOOL)a3;
- (void)setHasTxDeferDuration:(BOOL)a3;
- (void)setHasTxDeferredCount:(BOOL)a3;
- (void)setHasTxMuteCount:(BOOL)a3;
- (void)setHasTxPathEnableReqCount:(BOOL)a3;
- (void)setHasTxPathMuteCount:(BOOL)a3;
- (void)setHasTxPriDuration:(BOOL)a3;
- (void)setHasTxPriorityCount:(BOOL)a3;
- (void)setHasTxaDuration:(BOOL)a3;
- (void)setHasTxaONCount:(BOOL)a3;
- (void)setHasTxaPORCount:(BOOL)a3;
- (void)setHasTxaTimeoutCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiSDBSliceSpecific

- (void)setHasTxaONCount:(BOOL)a3
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

- (void)setHasTxaTimeoutCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasTxaPORCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasTxPathEnableReqCount:(BOOL)a3
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

- (void)setHasTxPathMuteCount:(BOOL)a3
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

- (void)setHasTxPriorityCount:(BOOL)a3
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

- (void)setHasTxDeferredCount:(BOOL)a3
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

- (void)setHasTxMuteCount:(BOOL)a3
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

- (void)setHasAckTxPowerBackoffCount:(BOOL)a3
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

- (void)setHasTxaDuration:(BOOL)a3
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

- (void)setHasTxPriDuration:(BOOL)a3
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

- (void)setHasTxDeferDuration:(BOOL)a3
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
  v3.super_class = AWDWiFiSDBSliceSpecific;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiSDBSliceSpecific description](&v3, sel_description), -[AWDWiFiSDBSliceSpecific dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txaONCount), @"txaONCount"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txaTimeoutCount), @"txaTimeoutCount"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txaPORCount), @"txaPORCount"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txPathEnableReqCount), @"txPathEnableReqCount"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txPathMuteCount), @"txPathMuteCount"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txPriorityCount), @"txPriorityCount"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txDeferredCount), @"txDeferredCount"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txMuteCount), @"txMuteCount"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ackTxPowerBackoffCount), @"ackTxPowerBackoffCount"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txPriDuration), @"txPriDuration"}];
    if ((*&self->_has & 2) == 0)
    {
      return v3;
    }

    goto LABEL_14;
  }

LABEL_26:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txaDuration), @"txaDuration"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  if ((has & 2) != 0)
  {
LABEL_14:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txDeferDuration), @"txDeferDuration"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  txaONCount = self->_txaONCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  txaTimeoutCount = self->_txaTimeoutCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  txaPORCount = self->_txaPORCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  txPathEnableReqCount = self->_txPathEnableReqCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  txPathMuteCount = self->_txPathMuteCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  txPriorityCount = self->_txPriorityCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  txDeferredCount = self->_txDeferredCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  txMuteCount = self->_txMuteCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  ackTxPowerBackoffCount = self->_ackTxPowerBackoffCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    txPriDuration = self->_txPriDuration;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_25:
  txaDuration = self->_txaDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_27:
  txDeferDuration = self->_txDeferDuration;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 38) |= 1u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 16) = self->_txaONCount;
  *(a3 + 38) |= 0x400u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 18) = self->_txaTimeoutCount;
  *(a3 + 38) |= 0x1000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 17) = self->_txaPORCount;
  *(a3 + 38) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 13) = self->_txPathEnableReqCount;
  *(a3 + 38) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 14) = self->_txPathMuteCount;
  *(a3 + 38) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 15) = self->_txPriorityCount;
  *(a3 + 38) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 11) = self->_txDeferredCount;
  *(a3 + 38) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a3 + 12) = self->_txMuteCount;
  *(a3 + 38) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 10) = self->_ackTxPowerBackoffCount;
  *(a3 + 38) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 4) = self->_txaDuration;
  *(a3 + 38) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_27:
    *(a3 + 2) = self->_txDeferDuration;
    *(a3 + 38) |= 2u;
    return;
  }

LABEL_26:
  *(a3 + 3) = self->_txPriDuration;
  *(a3 + 38) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_27;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 38) |= 1u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(result + 16) = self->_txaONCount;
  *(result + 38) |= 0x400u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 18) = self->_txaTimeoutCount;
  *(result + 38) |= 0x1000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 17) = self->_txaPORCount;
  *(result + 38) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 13) = self->_txPathEnableReqCount;
  *(result + 38) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 14) = self->_txPathMuteCount;
  *(result + 38) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 15) = self->_txPriorityCount;
  *(result + 38) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 11) = self->_txDeferredCount;
  *(result + 38) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 12) = self->_txMuteCount;
  *(result + 38) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 10) = self->_ackTxPowerBackoffCount;
  *(result + 38) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 4) = self->_txaDuration;
  *(result + 38) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_27:
  *(result + 3) = self->_txPriDuration;
  *(result + 38) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_14:
  *(result + 2) = self->_txDeferDuration;
  *(result + 38) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 38);
    if (has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_66;
      }
    }

    else if (v7)
    {
LABEL_66:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(a3 + 38) & 0x400) == 0 || self->_txaONCount != *(a3 + 16))
      {
        goto LABEL_66;
      }
    }

    else if ((*(a3 + 38) & 0x400) != 0)
    {
      goto LABEL_66;
    }

    if ((*&self->_has & 0x1000) != 0)
    {
      if ((*(a3 + 38) & 0x1000) == 0 || self->_txaTimeoutCount != *(a3 + 18))
      {
        goto LABEL_66;
      }
    }

    else if ((*(a3 + 38) & 0x1000) != 0)
    {
      goto LABEL_66;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(a3 + 38) & 0x800) == 0 || self->_txaPORCount != *(a3 + 17))
      {
        goto LABEL_66;
      }
    }

    else if ((*(a3 + 38) & 0x800) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_txPathEnableReqCount != *(a3 + 13))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_66;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 38) & 0x100) == 0 || self->_txPathMuteCount != *(a3 + 14))
      {
        goto LABEL_66;
      }
    }

    else if ((*(a3 + 38) & 0x100) != 0)
    {
      goto LABEL_66;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(a3 + 38) & 0x200) == 0 || self->_txPriorityCount != *(a3 + 15))
      {
        goto LABEL_66;
      }
    }

    else if ((*(a3 + 38) & 0x200) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_txDeferredCount != *(a3 + 11))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_txMuteCount != *(a3 + 12))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_ackTxPowerBackoffCount != *(a3 + 10))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_txaDuration != *(a3 + 4))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_66;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_txPriDuration != *(a3 + 3))
      {
        goto LABEL_66;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_66;
    }

    LOBYTE(v5) = (v7 & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_txDeferDuration != *(a3 + 2))
      {
        goto LABEL_66;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_txaONCount;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_txaTimeoutCount;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_txaPORCount;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_txPathEnableReqCount;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_txPathMuteCount;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_txPriorityCount;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_txDeferredCount;
    if ((has & 0x40) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_txMuteCount;
    if ((has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_ackTxPowerBackoffCount;
    if ((has & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = 0;
  if ((has & 8) != 0)
  {
LABEL_12:
    v13 = 2654435761u * self->_txaDuration;
    if ((has & 4) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v14 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_27:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_25:
  v13 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v14 = 2654435761u * self->_txPriDuration;
  if ((has & 2) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:
  v15 = 2654435761u * self->_txDeferDuration;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 38);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 38);
    if ((v3 & 0x400) == 0)
    {
LABEL_3:
      if ((v3 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a3 + 38) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  self->_txaONCount = *(a3 + 16);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 38);
  if ((v3 & 0x1000) == 0)
  {
LABEL_4:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_txaTimeoutCount = *(a3 + 18);
  *&self->_has |= 0x1000u;
  v3 = *(a3 + 38);
  if ((v3 & 0x800) == 0)
  {
LABEL_5:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_txaPORCount = *(a3 + 17);
  *&self->_has |= 0x800u;
  v3 = *(a3 + 38);
  if ((v3 & 0x80) == 0)
  {
LABEL_6:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_txPathEnableReqCount = *(a3 + 13);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 38);
  if ((v3 & 0x100) == 0)
  {
LABEL_7:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_txPathMuteCount = *(a3 + 14);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 38);
  if ((v3 & 0x200) == 0)
  {
LABEL_8:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_txPriorityCount = *(a3 + 15);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 38);
  if ((v3 & 0x20) == 0)
  {
LABEL_9:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_txDeferredCount = *(a3 + 11);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 38);
  if ((v3 & 0x40) == 0)
  {
LABEL_10:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_txMuteCount = *(a3 + 12);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 38);
  if ((v3 & 0x10) == 0)
  {
LABEL_11:
    if ((v3 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_ackTxPowerBackoffCount = *(a3 + 10);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 38);
  if ((v3 & 8) == 0)
  {
LABEL_12:
    if ((v3 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_txaDuration = *(a3 + 4);
  *&self->_has |= 8u;
  v3 = *(a3 + 38);
  if ((v3 & 4) == 0)
  {
LABEL_13:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_27:
    self->_txDeferDuration = *(a3 + 2);
    *&self->_has |= 2u;
    return;
  }

LABEL_26:
  self->_txPriDuration = *(a3 + 3);
  *&self->_has |= 4u;
  if ((*(a3 + 38) & 2) != 0)
  {
    goto LABEL_27;
  }
}

@end