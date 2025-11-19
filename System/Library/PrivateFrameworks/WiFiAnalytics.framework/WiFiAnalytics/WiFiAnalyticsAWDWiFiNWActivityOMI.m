@interface WiFiAnalyticsAWDWiFiNWActivityOMI
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasChBWReq:(BOOL)a3;
- (void)setHasCompletionDelay:(BOOL)a3;
- (void)setHasDLResoundAck:(BOOL)a3;
- (void)setHasDLResoundReq:(BOOL)a3;
- (void)setHasERSUAck:(BOOL)a3;
- (void)setHasERSUReq:(BOOL)a3;
- (void)setHasRetries:(BOOL)a3;
- (void)setHasRxNSSAck:(BOOL)a3;
- (void)setHasRxNSSReq:(BOOL)a3;
- (void)setHasScheduled:(BOOL)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)setHasTxNSTSAck:(BOOL)a3;
- (void)setHasTxNSTSReq:(BOOL)a3;
- (void)setHasULMUAck:(BOOL)a3;
- (void)setHasULMUReq:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityOMI

- (void)setHasScheduled:(BOOL)a3
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

- (void)setHasSuccess:(BOOL)a3
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

- (void)setHasRetries:(BOOL)a3
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

- (void)setHasCompletionDelay:(BOOL)a3
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

- (void)setHasULMUReq:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasULMUAck:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasTxNSTSReq:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasTxNSTSAck:(BOOL)a3
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

- (void)setHasRxNSSReq:(BOOL)a3
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

- (void)setHasRxNSSAck:(BOOL)a3
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

- (void)setHasChBWReq:(BOOL)a3
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

- (void)setHasERSUReq:(BOOL)a3
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

- (void)setHasERSUAck:(BOOL)a3
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

- (void)setHasDLResoundReq:(BOOL)a3
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

- (void)setHasDLResoundAck:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityOMI;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityOMI *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiNWActivityOMI *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_scheduled];
    [v3 setObject:v7 forKey:@"scheduled"];

    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_success];
  [v3 setObject:v8 forKey:@"success"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_retries];
  [v3 setObject:v9 forKey:@"retries"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_completionDelay];
  [v3 setObject:v10 forKey:@"completionDelay"];

  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_6:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_uLMUReq];
  [v3 setObject:v11 forKey:@"ULMUReq"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_7:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_uLMUAck];
  [v3 setObject:v12 forKey:@"ULMUAck"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txNSTSReq];
  [v3 setObject:v13 forKey:@"TxNSTSReq"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_txNSTSAck];
  [v3 setObject:v14 forKey:@"TxNSTSAck"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_rxNSSReq];
  [v3 setObject:v15 forKey:@"RxNSSReq"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_rxNSSAck];
  [v3 setObject:v16 forKey:@"RxNSSAck"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_chBWReq];
  [v3 setObject:v17 forKey:@"ChBWReq"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_chBWAck];
  [v3 setObject:v18 forKey:@"ChBWAck"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_eRSUReq];
  [v3 setObject:v19 forKey:@"ERSUReq"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_eRSUAck];
  [v3 setObject:v20 forKey:@"ERSUAck"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dLResoundReq];
  [v3 setObject:v21 forKey:@"DLResoundReq"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_17:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dLResoundAck];
    [v3 setObject:v5 forKey:@"DLResoundAck"];
  }

LABEL_18:

  return v3;
}

- (void)writeTo:(id)a3
{
  v21 = a3;
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    scheduled = self->_scheduled;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  success = self->_success;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  retries = self->_retries;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  completionDelay = self->_completionDelay;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_6:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  uLMUReq = self->_uLMUReq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_7:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  uLMUAck = self->_uLMUAck;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  txNSTSReq = self->_txNSTSReq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  txNSTSAck = self->_txNSTSAck;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  rxNSSReq = self->_rxNSSReq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  rxNSSAck = self->_rxNSSAck;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  chBWReq = self->_chBWReq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  chBWAck = self->_chBWAck;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  eRSUReq = self->_eRSUReq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  eRSUAck = self->_eRSUAck;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  dLResoundReq = self->_dLResoundReq;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_17:
    dLResoundAck = self->_dLResoundAck;
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v4[12] = self->_scheduled;
    *(v4 + 36) |= 0x400u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  v4[13] = self->_success;
  *(v4 + 36) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4[9] = self->_retries;
  *(v4 + 36) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4[4] = self->_completionDelay;
  *(v4 + 36) |= 4u;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_6:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4[17] = self->_uLMUReq;
  *(v4 + 36) |= 0x8000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_7:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4[16] = self->_uLMUAck;
  *(v4 + 36) |= 0x4000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4[15] = self->_txNSTSReq;
  *(v4 + 36) |= 0x2000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4[14] = self->_txNSTSAck;
  *(v4 + 36) |= 0x1000u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4[11] = self->_rxNSSReq;
  *(v4 + 36) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4[10] = self->_rxNSSAck;
  *(v4 + 36) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v4[3] = self->_chBWReq;
  *(v4 + 36) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v4[2] = self->_chBWAck;
  *(v4 + 36) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v4[8] = self->_eRSUReq;
  *(v4 + 36) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v4[7] = self->_eRSUAck;
  *(v4 + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  v4[6] = self->_dLResoundReq;
  *(v4 + 36) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_17:
    v4[5] = self->_dLResoundAck;
    *(v4 + 36) |= 8u;
  }

LABEL_18:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(result + 12) = self->_scheduled;
    *(result + 36) |= 0x400u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(result + 13) = self->_success;
  *(result + 36) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 9) = self->_retries;
  *(result + 36) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 4) = self->_completionDelay;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_6:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 17) = self->_uLMUReq;
  *(result + 36) |= 0x8000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_7:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 16) = self->_uLMUAck;
  *(result + 36) |= 0x4000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 15) = self->_txNSTSReq;
  *(result + 36) |= 0x2000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 14) = self->_txNSTSAck;
  *(result + 36) |= 0x1000u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 11) = self->_rxNSSReq;
  *(result + 36) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 10) = self->_rxNSSAck;
  *(result + 36) |= 0x100u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 3) = self->_chBWReq;
  *(result + 36) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 2) = self->_chBWAck;
  *(result + 36) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 8) = self->_eRSUReq;
  *(result + 36) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 7) = self->_eRSUAck;
  *(result + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_33:
  *(result + 6) = self->_dLResoundReq;
  *(result + 36) |= 0x10u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_17:
  *(result + 5) = self->_dLResoundAck;
  *(result + 36) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_82;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if ((has & 0x400) != 0)
  {
    if ((*(v4 + 36) & 0x400) == 0 || self->_scheduled != *(v4 + 12))
    {
      goto LABEL_82;
    }
  }

  else if ((*(v4 + 36) & 0x400) != 0)
  {
    goto LABEL_82;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 36) & 0x800) == 0 || self->_success != *(v4 + 13))
    {
      goto LABEL_82;
    }
  }

  else if ((*(v4 + 36) & 0x800) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_retries != *(v4 + 9))
    {
      goto LABEL_82;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_completionDelay != *(v4 + 4))
    {
      goto LABEL_82;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_82;
  }

  if ((*&self->_has & 0x8000) != 0)
  {
    if ((*(v4 + 36) & 0x8000) == 0 || self->_uLMUReq != *(v4 + 17))
    {
      goto LABEL_82;
    }
  }

  else if ((*(v4 + 36) & 0x8000) != 0)
  {
LABEL_82:
    v7 = 0;
    goto LABEL_83;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(v4 + 36) & 0x4000) == 0 || self->_uLMUAck != *(v4 + 16))
    {
      goto LABEL_82;
    }
  }

  else if ((*(v4 + 36) & 0x4000) != 0)
  {
    goto LABEL_82;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 36) & 0x2000) == 0 || self->_txNSTSReq != *(v4 + 15))
    {
      goto LABEL_82;
    }
  }

  else if ((*(v4 + 36) & 0x2000) != 0)
  {
    goto LABEL_82;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 36) & 0x1000) == 0 || self->_txNSTSAck != *(v4 + 14))
    {
      goto LABEL_82;
    }
  }

  else if ((*(v4 + 36) & 0x1000) != 0)
  {
    goto LABEL_82;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 36) & 0x200) == 0 || self->_rxNSSReq != *(v4 + 11))
    {
      goto LABEL_82;
    }
  }

  else if ((*(v4 + 36) & 0x200) != 0)
  {
    goto LABEL_82;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 36) & 0x100) == 0 || self->_rxNSSAck != *(v4 + 10))
    {
      goto LABEL_82;
    }
  }

  else if ((*(v4 + 36) & 0x100) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_chBWReq != *(v4 + 3))
    {
      goto LABEL_82;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_82;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_chBWAck != *(v4 + 2))
    {
      goto LABEL_82;
    }
  }

  else if (v6)
  {
    goto LABEL_82;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_eRSUReq != *(v4 + 8))
    {
      goto LABEL_82;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_eRSUAck != *(v4 + 7))
    {
      goto LABEL_82;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_dLResoundReq != *(v4 + 6))
    {
      goto LABEL_82;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_82;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_dLResoundAck != *(v4 + 5))
    {
      goto LABEL_82;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 8) == 0;
  }

LABEL_83:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v3 = 2654435761 * self->_scheduled;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_success;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
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
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_retries;
    if ((has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = 0;
  if ((has & 4) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_completionDelay;
    if ((*&self->_has & 0x8000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = 0;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_uLMUReq;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_uLMUAck;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_txNSTSReq;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_txNSTSAck;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_rxNSSReq;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_rxNSSAck;
    if ((has & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = 0;
  if ((has & 2) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_chBWReq;
    if (has)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = 0;
  if (has)
  {
LABEL_13:
    v14 = 2654435761 * self->_chBWAck;
    if ((has & 0x40) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_eRSUReq;
    if ((has & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_eRSUAck;
    if ((has & 0x10) != 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v17 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_17;
    }

LABEL_33:
    v18 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
  }

LABEL_31:
  v16 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v17 = 2654435761 * self->_dLResoundReq;
  if ((has & 8) == 0)
  {
    goto LABEL_33;
  }

LABEL_17:
  v18 = 2654435761 * self->_dLResoundAck;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 0x400) != 0)
  {
    self->_scheduled = *(v4 + 12);
    *&self->_has |= 0x400u;
    v5 = *(v4 + 36);
    if ((v5 & 0x800) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*(v4 + 36) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  self->_success = *(v4 + 13);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 36);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_retries = *(v4 + 9);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_completionDelay = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 36);
  if ((v5 & 0x8000) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_uLMUReq = *(v4 + 17);
  *&self->_has |= 0x8000u;
  v5 = *(v4 + 36);
  if ((v5 & 0x4000) == 0)
  {
LABEL_7:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_uLMUAck = *(v4 + 16);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 36);
  if ((v5 & 0x2000) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_txNSTSReq = *(v4 + 15);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 36);
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_txNSTSAck = *(v4 + 14);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 36);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_rxNSSReq = *(v4 + 11);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 36);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_rxNSSAck = *(v4 + 10);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 36);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_chBWReq = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 36);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_chBWAck = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_eRSUReq = *(v4 + 8);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_15:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_eRSUAck = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_16:
    if ((v5 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  self->_dLResoundReq = *(v4 + 6);
  *&self->_has |= 0x10u;
  if ((*(v4 + 36) & 8) != 0)
  {
LABEL_17:
    self->_dLResoundAck = *(v4 + 5);
    *&self->_has |= 8u;
  }

LABEL_18:
}

@end