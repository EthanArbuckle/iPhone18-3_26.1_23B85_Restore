@interface KCellularLqmStateChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsHiPowerEvent:(id)a3;
- (int)StringAsHiPowerExitReason:(id)a3;
- (int)hiPowerEvent;
- (int)hiPowerExitReason;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHiPowerEvent:(BOOL)a3;
- (void)setHasHiPowerExitReason:(BOOL)a3;
- (void)setHasIsScreenOn:(BOOL)a3;
- (void)setHasLqmState:(BOOL)a3;
- (void)setHasLteRsrp:(BOOL)a3;
- (void)setHasLteRsrq:(BOOL)a3;
- (void)setHasLteRssi:(BOOL)a3;
- (void)setHasLteRssnr:(BOOL)a3;
- (void)setHasPrevIsScreenOn:(BOOL)a3;
- (void)setHasPrevLqmState:(BOOL)a3;
- (void)setHasPrevStateDurationSec:(BOOL)a3;
- (void)setHasPrevSysMode:(BOOL)a3;
- (void)setHasSysMode:(BOOL)a3;
- (void)setHasWcdmaEcio:(BOOL)a3;
- (void)setHasWcdmaRscp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularLqmStateChange

- (void)setHasPrevStateDurationSec:(BOOL)a3
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

- (void)setHasLqmState:(BOOL)a3
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

- (void)setHasSysMode:(BOOL)a3
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

- (void)setHasIsScreenOn:(BOOL)a3
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

- (void)setHasPrevLqmState:(BOOL)a3
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

- (void)setHasPrevSysMode:(BOOL)a3
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

- (void)setHasPrevIsScreenOn:(BOOL)a3
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

- (int)hiPowerEvent
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_hiPowerEvent;
  }

  else
  {
    return 0;
  }
}

- (void)setHasHiPowerEvent:(BOOL)a3
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

- (int)StringAsHiPowerEvent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LQM_EVENT_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_POOR_SIGNAL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_LTE_UL_TRICKLING_GRANT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_EUTRA_RRC_CONN_FAIL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_UTRA_RRC_CONN_FAIL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_ERLC_MAX_RETX"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_URLC_MAX_RETX"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_HIGH_POW_COST"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_PHY_ABORT"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_RF_CONDITION"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_GUARD_TIMER_EXPIRY"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_RF_SIGNAL_IMPROVEMENT"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_MAX"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)hiPowerExitReason
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_hiPowerExitReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasHiPowerExitReason:(BOOL)a3
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

- (int)StringAsHiPowerExitReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LQM_EVENT_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_POOR_SIGNAL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_LTE_UL_TRICKLING_GRANT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_EUTRA_RRC_CONN_FAIL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_UTRA_RRC_CONN_FAIL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_ERLC_MAX_RETX"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_URLC_MAX_RETX"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_HIGH_POW_COST"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_PHY_ABORT"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_RF_CONDITION"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_GUARD_TIMER_EXPIRY"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_RF_SIGNAL_IMPROVEMENT"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"LQM_EVENT_MAX"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasWcdmaEcio:(BOOL)a3
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

- (void)setHasWcdmaRscp:(BOOL)a3
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

- (void)setHasLteRssi:(BOOL)a3
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

- (void)setHasLteRsrp:(BOOL)a3
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

- (void)setHasLteRsrq:(BOOL)a3
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

- (void)setHasLteRssnr:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularLqmStateChange;
  v4 = [(KCellularLqmStateChange *)&v8 description];
  v5 = [(KCellularLqmStateChange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevStateDurationSec];
  [v3 setObject:v8 forKey:@"prev_state_duration_sec"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lqmState];
  [v3 setObject:v9 forKey:@"lqm_state"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_sysMode];
  [v3 setObject:v10 forKey:@"sys_mode"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_isScreenOn];
  [v3 setObject:v11 forKey:@"is_screen_on"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevLqmState];
  [v3 setObject:v12 forKey:@"prev_lqm_state"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevSysMode];
  [v3 setObject:v13 forKey:@"prev_sys_mode"];

  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_prevIsScreenOn];
  [v3 setObject:v14 forKey:@"prev_is_screen_on"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_29:
  hiPowerEvent = self->_hiPowerEvent;
  if (hiPowerEvent >= 0xD)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_hiPowerEvent];
  }

  else
  {
    v16 = off_27825E678[hiPowerEvent];
  }

  [v3 setObject:v16 forKey:@"hi_power_event"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_33:
  hiPowerExitReason = self->_hiPowerExitReason;
  if (hiPowerExitReason >= 0xD)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_hiPowerExitReason];
  }

  else
  {
    v18 = off_27825E678[hiPowerExitReason];
  }

  [v3 setObject:v18 forKey:@"hi_power_exit_reason"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = [MEMORY[0x277CCABB0] numberWithInt:self->_wcdmaEcio];
  [v3 setObject:v19 forKey:@"wcdma_ecio"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  v20 = [MEMORY[0x277CCABB0] numberWithInt:self->_wcdmaRscp];
  [v3 setObject:v20 forKey:@"wcdma_rscp"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  v21 = [MEMORY[0x277CCABB0] numberWithInt:self->_lteRssi];
  [v3 setObject:v21 forKey:@"lte_rssi"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  v22 = [MEMORY[0x277CCABB0] numberWithInt:self->_lteRsrp];
  [v3 setObject:v22 forKey:@"lte_rsrp"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_16:
    if ((has & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_41:
  v23 = [MEMORY[0x277CCABB0] numberWithInt:self->_lteRsrq];
  [v3 setObject:v23 forKey:@"lte_rsrq"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_17:
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_lteRssnr];
    [v3 setObject:v5 forKey:@"lte_rssnr"];
  }

LABEL_18:

  return v3;
}

- (void)writeTo:(id)a3
{
  v21 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  prevStateDurationSec = self->_prevStateDurationSec;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  lqmState = self->_lqmState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  sysMode = self->_sysMode;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  isScreenOn = self->_isScreenOn;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  prevLqmState = self->_prevLqmState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  prevSysMode = self->_prevSysMode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  prevIsScreenOn = self->_prevIsScreenOn;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  hiPowerEvent = self->_hiPowerEvent;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  hiPowerExitReason = self->_hiPowerExitReason;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  wcdmaEcio = self->_wcdmaEcio;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  wcdmaRscp = self->_wcdmaRscp;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  lteRssi = self->_lteRssi;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  lteRsrp = self->_lteRsrp;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_16:
    if ((has & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  lteRsrq = self->_lteRsrq;
  PBDataWriterWriteSint32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_17:
    lteRssnr = self->_lteRssnr;
    PBDataWriterWriteSint32Field();
  }

LABEL_18:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 36) |= 1u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 12) = self->_prevStateDurationSec;
  *(v4 + 36) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 6) = self->_lqmState;
  *(v4 + 36) |= 8u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 14) = self->_sysMode;
  *(v4 + 36) |= 0x800u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 68) = self->_isScreenOn;
  *(v4 + 36) |= 0x4000u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 11) = self->_prevLqmState;
  *(v4 + 36) |= 0x100u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 13) = self->_prevSysMode;
  *(v4 + 36) |= 0x400u;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 69) = self->_prevIsScreenOn;
  *(v4 + 36) |= 0x8000u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 4) = self->_hiPowerEvent;
  *(v4 + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 5) = self->_hiPowerExitReason;
  *(v4 + 36) |= 4u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v4 + 15) = self->_wcdmaEcio;
  *(v4 + 36) |= 0x1000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 16) = self->_wcdmaRscp;
  *(v4 + 36) |= 0x2000u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v4 + 9) = self->_lteRssi;
  *(v4 + 36) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v4 + 7) = self->_lteRsrp;
  *(v4 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_16:
    if ((has & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  *(v4 + 8) = self->_lteRsrq;
  *(v4 + 36) |= 0x20u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_17:
    *(v4 + 10) = self->_lteRssnr;
    *(v4 + 36) |= 0x80u;
  }

LABEL_18:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 36) |= 1u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(result + 12) = self->_prevStateDurationSec;
  *(result + 36) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 6) = self->_lqmState;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_5:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 14) = self->_sysMode;
  *(result + 36) |= 0x800u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 68) = self->_isScreenOn;
  *(result + 36) |= 0x4000u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 11) = self->_prevLqmState;
  *(result + 36) |= 0x100u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 13) = self->_prevSysMode;
  *(result + 36) |= 0x400u;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 69) = self->_prevIsScreenOn;
  *(result + 36) |= 0x8000u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 4) = self->_hiPowerEvent;
  *(result + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 5) = self->_hiPowerExitReason;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_12:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 15) = self->_wcdmaEcio;
  *(result + 36) |= 0x1000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 16) = self->_wcdmaRscp;
  *(result + 36) |= 0x2000u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 9) = self->_lteRssi;
  *(result + 36) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_15:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 7) = self->_lteRsrp;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_16:
    if ((has & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_33:
  *(result + 8) = self->_lteRsrq;
  *(result + 36) |= 0x20u;
  if ((*&self->_has & 0x80) == 0)
  {
    return result;
  }

LABEL_17:
  *(result + 10) = self->_lteRssnr;
  *(result + 36) |= 0x80u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_88;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_88;
    }
  }

  else if (v6)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 36) & 0x200) == 0 || self->_prevStateDurationSec != *(v4 + 12))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 36) & 0x200) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_lqmState != *(v4 + 6))
    {
      goto LABEL_88;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 36) & 0x800) == 0 || self->_sysMode != *(v4 + 14))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 36) & 0x800) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(v4 + 36) & 0x4000) == 0)
    {
      goto LABEL_88;
    }

    v7 = *(v4 + 68);
    if (self->_isScreenOn)
    {
      if ((*(v4 + 68) & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else if (*(v4 + 68))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 36) & 0x4000) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 36) & 0x100) == 0 || self->_prevLqmState != *(v4 + 11))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 36) & 0x100) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 36) & 0x400) == 0 || self->_prevSysMode != *(v4 + 13))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 36) & 0x400) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x8000) == 0)
  {
    if ((*(v4 + 36) & 0x8000) == 0)
    {
      goto LABEL_42;
    }

LABEL_88:
    v9 = 0;
    goto LABEL_89;
  }

  if ((*(v4 + 36) & 0x8000) == 0)
  {
    goto LABEL_88;
  }

  v8 = *(v4 + 69);
  if (self->_prevIsScreenOn)
  {
    if ((*(v4 + 69) & 1) == 0)
    {
      goto LABEL_88;
    }
  }

  else if (*(v4 + 69))
  {
    goto LABEL_88;
  }

LABEL_42:
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_hiPowerEvent != *(v4 + 4))
    {
      goto LABEL_88;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_hiPowerExitReason != *(v4 + 5))
    {
      goto LABEL_88;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 36) & 0x1000) == 0 || self->_wcdmaEcio != *(v4 + 15))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 36) & 0x1000) != 0)
  {
    goto LABEL_88;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 36) & 0x2000) == 0 || self->_wcdmaRscp != *(v4 + 16))
    {
      goto LABEL_88;
    }
  }

  else if ((*(v4 + 36) & 0x2000) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_lteRssi != *(v4 + 9))
    {
      goto LABEL_88;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_lteRsrp != *(v4 + 7))
    {
      goto LABEL_88;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_lteRsrq != *(v4 + 8))
    {
      goto LABEL_88;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_88;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_lteRssnr != *(v4 + 10))
    {
      goto LABEL_88;
    }

    v9 = 1;
  }

  else
  {
    v9 = (v6 & 0x80) == 0;
  }

LABEL_89:

  return v9;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_prevStateDurationSec;
      if ((has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_lqmState;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_sysMode;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_isScreenOn;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_prevLqmState;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_prevSysMode;
    if ((*&self->_has & 0x8000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = 0;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_prevIsScreenOn;
    if ((has & 2) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = 0;
  if ((has & 2) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_hiPowerEvent;
    if ((has & 4) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = 0;
  if ((has & 4) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_hiPowerExitReason;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_wcdmaEcio;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_wcdmaRscp;
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
    v15 = 2654435761 * self->_lteRssi;
    if ((has & 0x10) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_lteRsrp;
    if ((has & 0x20) != 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v17 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_17;
    }

LABEL_33:
    v18 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
  }

LABEL_31:
  v16 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v17 = 2654435761 * self->_lteRsrq;
  if ((has & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_17:
  v18 = 2654435761 * self->_lteRssnr;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*(v4 + 36) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  self->_prevStateDurationSec = *(v4 + 12);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 36);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_lqmState = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 36);
  if ((v5 & 0x800) == 0)
  {
LABEL_5:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_sysMode = *(v4 + 14);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 36);
  if ((v5 & 0x4000) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_isScreenOn = *(v4 + 68);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 36);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_prevLqmState = *(v4 + 11);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 36);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_prevSysMode = *(v4 + 13);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 36);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_prevIsScreenOn = *(v4 + 69);
  *&self->_has |= 0x8000u;
  v5 = *(v4 + 36);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_hiPowerEvent = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_hiPowerExitReason = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 36);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_wcdmaEcio = *(v4 + 15);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 36);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_wcdmaRscp = *(v4 + 16);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_lteRssi = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_lteRsrp = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_16:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  self->_lteRsrq = *(v4 + 8);
  *&self->_has |= 0x20u;
  if ((*(v4 + 36) & 0x80) != 0)
  {
LABEL_17:
    self->_lteRssnr = *(v4 + 10);
    *&self->_has |= 0x80u;
  }

LABEL_18:
}

@end