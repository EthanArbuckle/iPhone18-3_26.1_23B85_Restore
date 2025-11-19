@interface WiFiAnalyticsAWDWiFiRxDataStallStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHealthcheckFaultsRtscts:(BOOL)a3;
- (void)setHasRxMuPpdu:(BOOL)a3;
- (void)setHasRxMuRts:(BOOL)a3;
- (void)setHasRxTotalPpdu:(BOOL)a3;
- (void)setHasSrMuRtsNoUcast:(BOOL)a3;
- (void)setHasSrRtsCtsNoUcast:(BOOL)a3;
- (void)setHasSrStallInProgress:(BOOL)a3;
- (void)setHasSrTimNoUcast:(BOOL)a3;
- (void)setHasSrTxBlanking:(BOOL)a3;
- (void)setHasStallAge:(BOOL)a3;
- (void)setHasStallElapsedDur:(BOOL)a3;
- (void)setHasTxCtsNoUcast:(BOOL)a3;
- (void)setHasTxCtsRxUcast:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WiFiAnalyticsAWDWiFiRxDataStallStats

- (void)setHasHealthcheckFaultsRtscts:(BOOL)a3
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

- (void)setHasTxCtsNoUcast:(BOOL)a3
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

- (void)setHasTxCtsRxUcast:(BOOL)a3
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

- (void)setHasRxMuRts:(BOOL)a3
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

- (void)setHasRxTotalPpdu:(BOOL)a3
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

- (void)setHasRxMuPpdu:(BOOL)a3
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

- (void)setHasStallAge:(BOOL)a3
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

- (void)setHasStallElapsedDur:(BOOL)a3
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

- (void)setHasSrStallInProgress:(BOOL)a3
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

- (void)setHasSrTimNoUcast:(BOOL)a3
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

- (void)setHasSrRtsCtsNoUcast:(BOOL)a3
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

- (void)setHasSrMuRtsNoUcast:(BOOL)a3
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

- (void)setHasSrTxBlanking:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiRxDataStallStats;
  v4 = [(WiFiAnalyticsAWDWiFiRxDataStallStats *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWiFiRxDataStallStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_healthcheckFaults];
    [v3 setObject:v7 forKey:@"healthcheck_faults"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_healthcheckFaultsRtscts];
  [v3 setObject:v8 forKey:@"healthcheck_faults_rtscts"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txCtsNoUcast];
  [v3 setObject:v9 forKey:@"tx_cts_no_ucast"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txCtsRxUcast];
  [v3 setObject:v10 forKey:@"tx_cts_rx_ucast"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxMuRts];
  [v3 setObject:v11 forKey:@"rx_mu_rts"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxTotalPpdu];
  [v3 setObject:v12 forKey:@"rx_total_ppdu"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rxMuPpdu];
  [v3 setObject:v13 forKey:@"rx_mu_ppdu"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_stallAge];
  [v3 setObject:v14 forKey:@"stall_age"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_stallElapsedDur];
  [v3 setObject:v15 forKey:@"stall_elapsed_dur"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_srStallInProgress];
  [v3 setObject:v16 forKey:@"sr_stall_in_progress"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_srTimNoUcast];
  [v3 setObject:v17 forKey:@"sr_tim_no_ucast"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_srRtsCtsNoUcast];
  [v3 setObject:v18 forKey:@"sr_rts_cts_no_ucast"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_srMuRtsNoUcast];
  [v3 setObject:v19 forKey:@"sr_mu_rts_no_ucast"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_15:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_srTxBlanking];
    [v3 setObject:v5 forKey:@"sr_tx_blanking"];
  }

LABEL_16:

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = a3;
  has = self->_has;
  if (has)
  {
    healthcheckFaults = self->_healthcheckFaults;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  healthcheckFaultsRtscts = self->_healthcheckFaultsRtscts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  txCtsNoUcast = self->_txCtsNoUcast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  txCtsRxUcast = self->_txCtsRxUcast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  rxMuRts = self->_rxMuRts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  rxTotalPpdu = self->_rxTotalPpdu;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  rxMuPpdu = self->_rxMuPpdu;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  stallAge = self->_stallAge;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  stallElapsedDur = self->_stallElapsedDur;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  srStallInProgress = self->_srStallInProgress;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  srTimNoUcast = self->_srTimNoUcast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  srRtsCtsNoUcast = self->_srRtsCtsNoUcast;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  srMuRtsNoUcast = self->_srMuRtsNoUcast;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_15:
    srTxBlanking = self->_srTxBlanking;
    PBDataWriterWriteUint64Field();
  }

LABEL_16:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_healthcheckFaults;
    *(v4 + 60) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = self->_healthcheckFaultsRtscts;
  *(v4 + 60) |= 2u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v4[13] = self->_txCtsNoUcast;
  *(v4 + 60) |= 0x1000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4[14] = self->_txCtsRxUcast;
  *(v4 + 60) |= 0x2000u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4[4] = self->_rxMuRts;
  *(v4 + 60) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4[5] = self->_rxTotalPpdu;
  *(v4 + 60) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4[3] = self->_rxMuPpdu;
  *(v4 + 60) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4[11] = self->_stallAge;
  *(v4 + 60) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4[12] = self->_stallElapsedDur;
  *(v4 + 60) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4[8] = self->_srStallInProgress;
  *(v4 + 60) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4[9] = self->_srTimNoUcast;
  *(v4 + 60) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4[7] = self->_srRtsCtsNoUcast;
  *(v4 + 60) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  v4[6] = self->_srMuRtsNoUcast;
  *(v4 + 60) |= 0x20u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_15:
    v4[10] = self->_srTxBlanking;
    *(v4 + 60) |= 0x200u;
  }

LABEL_16:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_healthcheckFaults;
    *(result + 60) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_healthcheckFaultsRtscts;
  *(result + 60) |= 2u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 13) = self->_txCtsNoUcast;
  *(result + 60) |= 0x1000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 14) = self->_txCtsRxUcast;
  *(result + 60) |= 0x2000u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 4) = self->_rxMuRts;
  *(result + 60) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 5) = self->_rxTotalPpdu;
  *(result + 60) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 3) = self->_rxMuPpdu;
  *(result + 60) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 11) = self->_stallAge;
  *(result + 60) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 12) = self->_stallElapsedDur;
  *(result + 60) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 8) = self->_srStallInProgress;
  *(result + 60) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 9) = self->_srTimNoUcast;
  *(result + 60) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 7) = self->_srRtsCtsNoUcast;
  *(result + 60) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_29:
  *(result + 6) = self->_srMuRtsNoUcast;
  *(result + 60) |= 0x20u;
  if ((*&self->_has & 0x200) == 0)
  {
    return result;
  }

LABEL_15:
  *(result + 10) = self->_srTxBlanking;
  *(result + 60) |= 0x200u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_72;
  }

  has = self->_has;
  v6 = *(v4 + 60);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_healthcheckFaults != *(v4 + 1))
    {
      goto LABEL_72;
    }
  }

  else if (v6)
  {
LABEL_72:
    v7 = 0;
    goto LABEL_73;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_healthcheckFaultsRtscts != *(v4 + 2))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 60) & 0x1000) == 0 || self->_txCtsNoUcast != *(v4 + 13))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 60) & 0x1000) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 60) & 0x2000) == 0 || self->_txCtsRxUcast != *(v4 + 14))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 60) & 0x2000) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_rxMuRts != *(v4 + 4))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_rxTotalPpdu != *(v4 + 5))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_rxMuPpdu != *(v4 + 3))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 60) & 0x400) == 0 || self->_stallAge != *(v4 + 11))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 60) & 0x400) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 60) & 0x800) == 0 || self->_stallElapsedDur != *(v4 + 12))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 60) & 0x800) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_srStallInProgress != *(v4 + 8))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 60) & 0x100) == 0 || self->_srTimNoUcast != *(v4 + 9))
    {
      goto LABEL_72;
    }
  }

  else if ((*(v4 + 60) & 0x100) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_srRtsCtsNoUcast != *(v4 + 7))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_72;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_srMuRtsNoUcast != *(v4 + 6))
    {
      goto LABEL_72;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_72;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 60) & 0x200) == 0 || self->_srTxBlanking != *(v4 + 10))
    {
      goto LABEL_72;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x200) == 0;
  }

LABEL_73:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_healthcheckFaults;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_healthcheckFaultsRtscts;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
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
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_txCtsNoUcast;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_txCtsRxUcast;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_rxMuRts;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_rxTotalPpdu;
    if ((has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_rxMuPpdu;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_stallAge;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_stallElapsedDur;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_srStallInProgress;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_12:
    v13 = 2654435761u * self->_srTimNoUcast;
    if ((has & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_13:
    v14 = 2654435761u * self->_srRtsCtsNoUcast;
    if ((has & 0x20) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v15 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v16 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_27:
  v14 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v15 = 2654435761u * self->_srMuRtsNoUcast;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v16 = 2654435761u * self->_srTxBlanking;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 60);
  if (v5)
  {
    self->_healthcheckFaults = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 60);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_healthcheckFaultsRtscts = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 60);
  if ((v5 & 0x1000) == 0)
  {
LABEL_4:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_txCtsNoUcast = *(v4 + 13);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 60);
  if ((v5 & 0x2000) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_txCtsRxUcast = *(v4 + 14);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 60);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_rxMuRts = *(v4 + 4);
  *&self->_has |= 8u;
  v5 = *(v4 + 60);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_rxTotalPpdu = *(v4 + 5);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_rxMuPpdu = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 60);
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_stallAge = *(v4 + 11);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 60);
  if ((v5 & 0x800) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_stallElapsedDur = *(v4 + 12);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 60);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_srStallInProgress = *(v4 + 8);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 60);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_srTimNoUcast = *(v4 + 9);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 60);
  if ((v5 & 0x40) == 0)
  {
LABEL_13:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_srRtsCtsNoUcast = *(v4 + 7);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 60);
  if ((v5 & 0x20) == 0)
  {
LABEL_14:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  self->_srMuRtsNoUcast = *(v4 + 6);
  *&self->_has |= 0x20u;
  if ((*(v4 + 60) & 0x200) != 0)
  {
LABEL_15:
    self->_srTxBlanking = *(v4 + 10);
    *&self->_has |= 0x200u;
  }

LABEL_16:
}

@end