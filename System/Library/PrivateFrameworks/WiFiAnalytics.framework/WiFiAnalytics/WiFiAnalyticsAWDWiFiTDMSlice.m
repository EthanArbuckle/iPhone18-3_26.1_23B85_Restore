@interface WiFiAnalyticsAWDWiFiTDMSlice
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAckTxPowerBackoffCount:(BOOL)a3;
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

@implementation WiFiAnalyticsAWDWiFiTDMSlice

- (void)setHasTxaONCount:(BOOL)a3
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

- (void)setHasTxaTimeoutCount:(BOOL)a3
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

- (void)setHasTxaPORCount:(BOOL)a3
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

- (void)setHasTxPathEnableReqCount:(BOOL)a3
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

- (void)setHasTxPathMuteCount:(BOOL)a3
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

- (void)setHasTxPriorityCount:(BOOL)a3
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

- (void)setHasTxDeferredCount:(BOOL)a3
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

- (void)setHasTxMuteCount:(BOOL)a3
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

- (void)setHasAckTxPowerBackoffCount:(BOOL)a3
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

- (void)setHasTxaDuration:(BOOL)a3
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

- (void)setHasTxPriDuration:(BOOL)a3
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiTDMSlice;
  v4 = [(WiFiAnalyticsAWDWiFiTDMSlice *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiTDMSlice *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txaONCount];
    [v3 setObject:v7 forKey:@"txaONCount"];

    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txaTimeoutCount];
  [v3 setObject:v8 forKey:@"txaTimeoutCount"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txaPORCount];
  [v3 setObject:v9 forKey:@"txaPORCount"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txPathEnableReqCount];
  [v3 setObject:v10 forKey:@"txPathEnableReqCount"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txPathMuteCount];
  [v3 setObject:v11 forKey:@"txPathMuteCount"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txPriorityCount];
  [v3 setObject:v12 forKey:@"txPriorityCount"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txDeferredCount];
  [v3 setObject:v13 forKey:@"txDeferredCount"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txMuteCount];
  [v3 setObject:v14 forKey:@"txMuteCount"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ackTxPowerBackoffCount];
  [v3 setObject:v15 forKey:@"ackTxPowerBackoffCount"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txaDuration];
  [v3 setObject:v16 forKey:@"txaDuration"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txPriDuration];
  [v3 setObject:v17 forKey:@"txPriDuration"];

  if (*&self->_has)
  {
LABEL_13:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txDeferDuration];
    [v3 setObject:v5 forKey:@"txDeferDuration"];
  }

LABEL_14:

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = a3;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    txaONCount = self->_txaONCount;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  txaTimeoutCount = self->_txaTimeoutCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  txaPORCount = self->_txaPORCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  txPathEnableReqCount = self->_txPathEnableReqCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  txPathMuteCount = self->_txPathMuteCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  txPriorityCount = self->_txPriorityCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  txDeferredCount = self->_txDeferredCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  txMuteCount = self->_txMuteCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  ackTxPowerBackoffCount = self->_ackTxPowerBackoffCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  txaDuration = self->_txaDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  txPriDuration = self->_txPriDuration;
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
LABEL_13:
    txDeferDuration = self->_txDeferDuration;
    PBDataWriterWriteUint64Field();
  }

LABEL_14:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v4[14] = self->_txaONCount;
    *(v4 + 34) |= 0x200u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  v4[16] = self->_txaTimeoutCount;
  *(v4 + 34) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4[15] = self->_txaPORCount;
  *(v4 + 34) |= 0x400u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4[11] = self->_txPathEnableReqCount;
  *(v4 + 34) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v4[12] = self->_txPathMuteCount;
  *(v4 + 34) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4[13] = self->_txPriorityCount;
  *(v4 + 34) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4[9] = self->_txDeferredCount;
  *(v4 + 34) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4[10] = self->_txMuteCount;
  *(v4 + 34) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4[8] = self->_ackTxPowerBackoffCount;
  *(v4 + 34) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 3) = self->_txaDuration;
  *(v4 + 34) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  *(v4 + 2) = self->_txPriDuration;
  *(v4 + 34) |= 2u;
  if (*&self->_has)
  {
LABEL_13:
    *(v4 + 1) = self->_txDeferDuration;
    *(v4 + 34) |= 1u;
  }

LABEL_14:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(result + 14) = self->_txaONCount;
    *(result + 34) |= 0x200u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(result + 16) = self->_txaTimeoutCount;
  *(result + 34) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 15) = self->_txaPORCount;
  *(result + 34) |= 0x400u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 11) = self->_txPathEnableReqCount;
  *(result + 34) |= 0x40u;
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
  *(result + 12) = self->_txPathMuteCount;
  *(result + 34) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 13) = self->_txPriorityCount;
  *(result + 34) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 9) = self->_txDeferredCount;
  *(result + 34) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 10) = self->_txMuteCount;
  *(result + 34) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 8) = self->_ackTxPowerBackoffCount;
  *(result + 34) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 3) = self->_txaDuration;
  *(result + 34) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_25:
  *(result + 2) = self->_txPriDuration;
  *(result + 34) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_13:
  *(result + 1) = self->_txDeferDuration;
  *(result + 34) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  has = self->_has;
  v6 = *(v4 + 34);
  if ((has & 0x200) != 0)
  {
    if ((*(v4 + 34) & 0x200) == 0 || self->_txaONCount != *(v4 + 14))
    {
      goto LABEL_62;
    }
  }

  else if ((*(v4 + 34) & 0x200) != 0)
  {
LABEL_62:
    v7 = 0;
    goto LABEL_63;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 34) & 0x800) == 0 || self->_txaTimeoutCount != *(v4 + 16))
    {
      goto LABEL_62;
    }
  }

  else if ((*(v4 + 34) & 0x800) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 34) & 0x400) == 0 || self->_txaPORCount != *(v4 + 15))
    {
      goto LABEL_62;
    }
  }

  else if ((*(v4 + 34) & 0x400) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_txPathEnableReqCount != *(v4 + 11))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_txPathMuteCount != *(v4 + 12))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 34) & 0x100) == 0 || self->_txPriorityCount != *(v4 + 13))
    {
      goto LABEL_62;
    }
  }

  else if ((*(v4 + 34) & 0x100) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_txDeferredCount != *(v4 + 9))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_txMuteCount != *(v4 + 10))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_ackTxPowerBackoffCount != *(v4 + 8))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_txaDuration != *(v4 + 3))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_62;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_txPriDuration != *(v4 + 2))
    {
      goto LABEL_62;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_62;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_txDeferDuration != *(v4 + 1))
    {
      goto LABEL_62;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 1) == 0;
  }

LABEL_63:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v3 = 2654435761 * self->_txaONCount;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_txaTimeoutCount;
      if ((*&self->_has & 0x400) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_txaPORCount;
    if ((has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_txPathEnableReqCount;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_txPathMuteCount;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_txPriorityCount;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_txDeferredCount;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_txMuteCount;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
  if ((has & 8) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_ackTxPowerBackoffCount;
    if ((has & 4) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
  if ((has & 4) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_txaDuration;
    if ((has & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v13 = 0;
    if (has)
    {
      goto LABEL_13;
    }

LABEL_25:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_23:
  v12 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v13 = 2654435761u * self->_txPriDuration;
  if ((has & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v14 = 2654435761u * self->_txDeferDuration;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 34);
  if ((v5 & 0x200) != 0)
  {
    self->_txaONCount = *(v4 + 14);
    *&self->_has |= 0x200u;
    v5 = *(v4 + 34);
    if ((v5 & 0x800) == 0)
    {
LABEL_3:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*(v4 + 34) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  self->_txaTimeoutCount = *(v4 + 16);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 34);
  if ((v5 & 0x400) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_txaPORCount = *(v4 + 15);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 34);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_txPathEnableReqCount = *(v4 + 11);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_txPathMuteCount = *(v4 + 12);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 34);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_txPriorityCount = *(v4 + 13);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 34);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_txDeferredCount = *(v4 + 9);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 34);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_txMuteCount = *(v4 + 10);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 34);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_ackTxPowerBackoffCount = *(v4 + 8);
  *&self->_has |= 8u;
  v5 = *(v4 + 34);
  if ((v5 & 4) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_txaDuration = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 34);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  self->_txPriDuration = *(v4 + 2);
  *&self->_has |= 2u;
  if (*(v4 + 34))
  {
LABEL_13:
    self->_txDeferDuration = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_14:
}

@end