@interface WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAc:(id)a3;
- (int)ac;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDpsNotifications:(BOOL)a3;
- (void)setHasDurSinceLastEnqueue:(BOOL)a3;
- (void)setHasDurSinceLastEnqueueAtLastCheck:(BOOL)a3;
- (void)setHasDurSinceLastFailedComp:(BOOL)a3;
- (void)setHasDurSinceLastSuccessfulComp:(BOOL)a3;
- (void)setHasExpiredComp:(BOOL)a3;
- (void)setHasFailedComp:(BOOL)a3;
- (void)setHasFailedCompletionsAtLastCheck:(BOOL)a3;
- (void)setHasNoAckComp:(BOOL)a3;
- (void)setHasOtherErrComp:(BOOL)a3;
- (void)setHasQeuedPackets:(BOOL)a3;
- (void)setHasSinceLastEnqueueHowManyFailed:(BOOL)a3;
- (void)setHasSinceLastEnqueueHowManySuccess:(BOOL)a3;
- (void)setHasSinceLastSuccessHowManyFailed:(BOOL)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)setHasSuccessfulCompletionsAtLastCheck:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions

- (int)ac
{
  if (*&self->_has)
  {
    return self->_ac;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAc:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Rx"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Tx"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TxBK"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TxBE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TxVO"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TxVI"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RxSU"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"TxSU"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RxOFDMA"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"TxOFDMA"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"RxMUMIMO"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"TxMUMIMO"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasDurSinceLastSuccessfulComp:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasFailedComp:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasDurSinceLastFailedComp:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasExpiredComp:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasNoAckComp:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasOtherErrComp:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasDurSinceLastEnqueue:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasQeuedPackets:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasSinceLastEnqueueHowManyFailed:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasSinceLastEnqueueHowManySuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasSinceLastSuccessHowManyFailed:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasDurSinceLastEnqueueAtLastCheck:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasSuccessfulCompletionsAtLastCheck:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasFailedCompletionsAtLastCheck:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasDpsNotifications:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiNWActivityPerACTxCompletions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (*&has)
  {
    ac = self->_ac;
    if (ac >= 0xC)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_ac];
    }

    else
    {
      v6 = off_1E830E740[ac];
    }

    [v3 setObject:v6 forKey:@"ac"];

    has = self->_has;
  }

  if ((*&has & 0x8000) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_success];
    [v3 setObject:v9 forKey:@"success"];

    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_8:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_durSinceLastSuccessfulComp];
  [v3 setObject:v10 forKey:@"durSinceLastSuccessfulComp"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_9:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_failedComp];
  [v3 setObject:v11 forKey:@"failedComp"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_durSinceLastFailedComp];
  [v3 setObject:v12 forKey:@"durSinceLastFailedComp"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_expiredComp];
  [v3 setObject:v13 forKey:@"expiredComp"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_noAckComp];
  [v3 setObject:v14 forKey:@"noAckComp"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_otherErrComp];
  [v3 setObject:v15 forKey:@"otherErrComp"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_14:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_durSinceLastEnqueue];
  [v3 setObject:v16 forKey:@"durSinceLastEnqueue"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_qeuedPackets];
  [v3 setObject:v17 forKey:@"qeuedPackets"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sinceLastEnqueueHowManyFailed];
  [v3 setObject:v18 forKey:@"sinceLastEnqueueHowManyFailed"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sinceLastEnqueueHowManySuccess];
  [v3 setObject:v19 forKey:@"sinceLastEnqueueHowManySuccess"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_18:
    if ((*&has & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sinceLastSuccessHowManyFailed];
  [v3 setObject:v20 forKey:@"sinceLastSuccessHowManyFailed"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_19:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_durSinceLastEnqueueAtLastCheck];
  [v3 setObject:v21 forKey:@"durSinceLastEnqueueAtLastCheck"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_20:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_successfulCompletionsAtLastCheck];
  [v3 setObject:v22 forKey:@"successfulCompletionsAtLastCheck"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_21:
    if ((*&has & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_40:
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_failedCompletionsAtLastCheck];
  [v3 setObject:v23 forKey:@"failedCompletionsAtLastCheck"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_22:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dpsNotifications];
    [v3 setObject:v7 forKey:@"dpsNotifications"];
  }

LABEL_23:

  return v3;
}

- (void)writeTo:(id)a3
{
  v22 = a3;
  has = self->_has;
  if (*&has)
  {
    ac = self->_ac;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  success = self->_success;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  durSinceLastSuccessfulComp = self->_durSinceLastSuccessfulComp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  failedComp = self->_failedComp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  durSinceLastFailedComp = self->_durSinceLastFailedComp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  expiredComp = self->_expiredComp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  noAckComp = self->_noAckComp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  otherErrComp = self->_otherErrComp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  durSinceLastEnqueue = self->_durSinceLastEnqueue;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  qeuedPackets = self->_qeuedPackets;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  sinceLastEnqueueHowManyFailed = self->_sinceLastEnqueueHowManyFailed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  sinceLastEnqueueHowManySuccess = self->_sinceLastEnqueueHowManySuccess;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  sinceLastSuccessHowManyFailed = self->_sinceLastSuccessHowManyFailed;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  durSinceLastEnqueueAtLastCheck = self->_durSinceLastEnqueueAtLastCheck;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  successfulCompletionsAtLastCheck = self->_successfulCompletionsAtLastCheck;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_17:
    if ((*&has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  failedCompletionsAtLastCheck = self->_failedCompletionsAtLastCheck;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_18:
    dpsNotifications = self->_dpsNotifications;
    PBDataWriterWriteUint32Field();
  }

LABEL_19:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (*&has)
  {
    v4[2] = self->_ac;
    v4[19] |= 1u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  v4[17] = self->_success;
  v4[19] |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4[7] = self->_durSinceLastSuccessfulComp;
  v4[19] |= 0x20u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4[9] = self->_failedComp;
  v4[19] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4[6] = self->_durSinceLastFailedComp;
  v4[19] |= 0x10u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4[8] = self->_expiredComp;
  v4[19] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4[11] = self->_noAckComp;
  v4[19] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4[12] = self->_otherErrComp;
  v4[19] |= 0x400u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4[4] = self->_durSinceLastEnqueue;
  v4[19] |= 4u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v4[13] = self->_qeuedPackets;
  v4[19] |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v4[14] = self->_sinceLastEnqueueHowManyFailed;
  v4[19] |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v4[15] = self->_sinceLastEnqueueHowManySuccess;
  v4[19] |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v4[16] = self->_sinceLastSuccessHowManyFailed;
  v4[19] |= 0x4000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v4[5] = self->_durSinceLastEnqueueAtLastCheck;
  v4[19] |= 8u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v4[18] = self->_successfulCompletionsAtLastCheck;
  v4[19] |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_17:
    if ((*&has & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  v4[10] = self->_failedCompletionsAtLastCheck;
  v4[19] |= 0x100u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_18:
    v4[3] = self->_dpsNotifications;
    v4[19] |= 2u;
  }

LABEL_19:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (*&has)
  {
    *(result + 2) = self->_ac;
    *(result + 19) |= 1u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 17) = self->_success;
  *(result + 19) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 7) = self->_durSinceLastSuccessfulComp;
  *(result + 19) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 9) = self->_failedComp;
  *(result + 19) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 6) = self->_durSinceLastFailedComp;
  *(result + 19) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 8) = self->_expiredComp;
  *(result + 19) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_8:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 11) = self->_noAckComp;
  *(result + 19) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_9:
    if ((*&has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 12) = self->_otherErrComp;
  *(result + 19) |= 0x400u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 4) = self->_durSinceLastEnqueue;
  *(result + 19) |= 4u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 13) = self->_qeuedPackets;
  *(result + 19) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 14) = self->_sinceLastEnqueueHowManyFailed;
  *(result + 19) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 15) = self->_sinceLastEnqueueHowManySuccess;
  *(result + 19) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_14:
    if ((*&has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 16) = self->_sinceLastSuccessHowManyFailed;
  *(result + 19) |= 0x4000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 5) = self->_durSinceLastEnqueueAtLastCheck;
  *(result + 19) |= 8u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 18) = self->_successfulCompletionsAtLastCheck;
  *(result + 19) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_17:
    if ((*&has & 2) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_35:
  *(result + 10) = self->_failedCompletionsAtLastCheck;
  *(result + 19) |= 0x100u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_18:
  *(result + 3) = self->_dpsNotifications;
  *(result + 19) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_87;
  }

  has = self->_has;
  v6 = v4[19];
  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_ac != v4[2])
    {
      goto LABEL_87;
    }
  }

  else if (v6)
  {
LABEL_87:
    v7 = 0;
    goto LABEL_88;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_success != v4[17])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_durSinceLastSuccessfulComp != v4[7])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_failedComp != v4[9])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_durSinceLastFailedComp != v4[6])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_expiredComp != v4[8])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_noAckComp != v4[11])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_otherErrComp != v4[12])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_durSinceLastEnqueue != v4[4])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_qeuedPackets != v4[13])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_sinceLastEnqueueHowManyFailed != v4[14])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_sinceLastEnqueueHowManySuccess != v4[15])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_sinceLastSuccessHowManyFailed != v4[16])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_durSinceLastEnqueueAtLastCheck != v4[5])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_successfulCompletionsAtLastCheck != v4[18])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_failedCompletionsAtLastCheck != v4[10])
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_dpsNotifications != v4[3])
    {
      goto LABEL_87;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v4[19] & 2) == 0;
  }

LABEL_88:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v3 = 2654435761 * self->_ac;
    if ((*&has & 0x8000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_success;
      if ((*&has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_durSinceLastSuccessfulComp;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_failedComp;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_durSinceLastFailedComp;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_expiredComp;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_noAckComp;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_otherErrComp;
    if ((*&has & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_durSinceLastEnqueue;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_qeuedPackets;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_sinceLastEnqueueHowManyFailed;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_sinceLastEnqueueHowManySuccess;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_sinceLastSuccessHowManyFailed;
    if ((*&has & 8) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_durSinceLastEnqueueAtLastCheck;
  if ((*&has & 0x10000) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_successfulCompletionsAtLastCheck;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x100) != 0)
  {
    v18 = 2654435761 * self->_failedCompletionsAtLastCheck;
    if ((*&has & 2) != 0)
    {
      goto LABEL_34;
    }

LABEL_36:
    v19 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

  v18 = 0;
  if ((*&has & 2) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  v19 = 2654435761 * self->_dpsNotifications;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[19];
  if (v5)
  {
    self->_ac = v4[2];
    *&self->_has |= 1u;
    v5 = v4[19];
    if ((v5 & 0x8000) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  self->_success = v4[17];
  *&self->_has |= 0x8000u;
  v5 = v4[19];
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_durSinceLastSuccessfulComp = v4[7];
  *&self->_has |= 0x20u;
  v5 = v4[19];
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_failedComp = v4[9];
  *&self->_has |= 0x80u;
  v5 = v4[19];
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_durSinceLastFailedComp = v4[6];
  *&self->_has |= 0x10u;
  v5 = v4[19];
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_expiredComp = v4[8];
  *&self->_has |= 0x40u;
  v5 = v4[19];
  if ((v5 & 0x200) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_noAckComp = v4[11];
  *&self->_has |= 0x200u;
  v5 = v4[19];
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_otherErrComp = v4[12];
  *&self->_has |= 0x400u;
  v5 = v4[19];
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_durSinceLastEnqueue = v4[4];
  *&self->_has |= 4u;
  v5 = v4[19];
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_qeuedPackets = v4[13];
  *&self->_has |= 0x800u;
  v5 = v4[19];
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_sinceLastEnqueueHowManyFailed = v4[14];
  *&self->_has |= 0x1000u;
  v5 = v4[19];
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_sinceLastEnqueueHowManySuccess = v4[15];
  *&self->_has |= 0x2000u;
  v5 = v4[19];
  if ((v5 & 0x4000) == 0)
  {
LABEL_14:
    if ((v5 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_sinceLastSuccessHowManyFailed = v4[16];
  *&self->_has |= 0x4000u;
  v5 = v4[19];
  if ((v5 & 8) == 0)
  {
LABEL_15:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_durSinceLastEnqueueAtLastCheck = v4[5];
  *&self->_has |= 8u;
  v5 = v4[19];
  if ((v5 & 0x10000) == 0)
  {
LABEL_16:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_successfulCompletionsAtLastCheck = v4[18];
  *&self->_has |= 0x10000u;
  v5 = v4[19];
  if ((v5 & 0x100) == 0)
  {
LABEL_17:
    if ((v5 & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  self->_failedCompletionsAtLastCheck = v4[10];
  *&self->_has |= 0x100u;
  if ((v4[19] & 2) != 0)
  {
LABEL_18:
    self->_dpsNotifications = v4[3];
    *&self->_has |= 2u;
  }

LABEL_19:
}

@end