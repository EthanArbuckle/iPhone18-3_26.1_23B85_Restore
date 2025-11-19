@interface AWDMETRICSKCellularPowerLogNrSaRrcStateChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCause:(id)a3;
- (int)StringAsDeployment:(id)a3;
- (int)StringAsFr:(id)a3;
- (int)StringAsPrevState:(id)a3;
- (int)StringAsState:(id)a3;
- (int)cause;
- (int)deployment;
- (int)fr;
- (int)prevState;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBand:(BOOL)a3;
- (void)setHasCause:(BOOL)a3;
- (void)setHasDeployment:(BOOL)a3;
- (void)setHasFr:(BOOL)a3;
- (void)setHasPrevState:(BOOL)a3;
- (void)setHasPrevStateDurMs:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogNrSaRrcStateChange

- (int)state
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_state;
  }

  else
  {
    return 0;
  }
}

- (void)setHasState:(BOOL)a3
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

- (int)StringAsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"RRC_STATE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_IDLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_INACTIVE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_ATMPT_CONNECTION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_CONNECTED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_ENDING"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_ATMPT_OUTBND_MOBILITY"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_ATMPT_INBND_MOBILITY"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_AIRPLANE_MODE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_MAX"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)prevState
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_prevState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPrevState:(BOOL)a3
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

- (int)StringAsPrevState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"RRC_STATE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_IDLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_INACTIVE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_ATMPT_CONNECTION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_CONNECTED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_ENDING"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_ATMPT_OUTBND_MOBILITY"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_ATMPT_INBND_MOBILITY"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_AIRPLANE_MODE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"RRC_STATE_MAX"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPrevStateDurMs:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (int)cause
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_cause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCause:(BOOL)a3
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

- (int)StringAsCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NRRC_CAUSE_EST_EMERGENCY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_HIGH_PRIO_ACC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_MT_ACC"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_MO_SIGNAL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_MO_DATA"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_MO_VOICE_CALL"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_MO_VIDEO_CALL"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_MO_SMS"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_MPS_PRIO_ACC"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_MCS_PRIO_ACC"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_RNA_UPDATE"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_DELAY_TOL_ACC"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REL_OTHER_RECFG_FAIL"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_DATA_INACTIVITY_SPEC"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_NAS_CONN_ABORT"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_SDM"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_NW_RELEASE"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REEST_RECFG_FAIL"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REEST_HO_FAIL"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REEST_OTHER_FAIL_INTEG_CHECK"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REEST_OTHER_FAIL_RADIO_LINK_FAILURE"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_OTHER_MSIM"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REEST_RES_FALLBACK_CONN_SETUP"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_RES_FALLBACK_CONN_REJECT"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_FAIL_NO_RESP_FROM_CELL"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_FAIL_REJ"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_FAIL_CELL_RESEL"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_FAIL_INVALID_MSG"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_FAIL_ABORTED"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_FAIL_CELL_BARRED"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_FAIL_CN_PAGING"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_FAIL_INTEG_FAILURE"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_FAIL_RRC_ERROR"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_FAIL_CONN_RESUME"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_FAIL_CONN_REMAIN_INACTIVE"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_FAIL_INVALID_PARAMS"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REL_LOAD_BAL_TAU_REQD"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REL_OTHER"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REL_SUCC_MOB_FROM_EUTRAN"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_FAIL_CELL_BARRED"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REL_SUCC_MOB_FROM_NR"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_EST_SUCC_MOB_TO_NR"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_NR_SCG_ADD"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REL_NULL_CIPHERING"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REL_AIRPLANE_MODE"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REEST_NAS_GUARD_TIMER_EXPIRY"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REEST_L3C_DATA_STALL"])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REL_NAS_GUARD_TIMER_EXPIRY"])
  {
    v4 = 52;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_REL_L3C_DATA_STALL"])
  {
    v4 = 53;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_NO_SERVICE"])
  {
    v4 = 254;
  }

  else if ([v3 isEqualToString:@"NRRC_CAUSE_NA"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)fr
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_fr;
  }

  else
  {
    return 1;
  }
}

- (void)setHasFr:(BOOL)a3
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

- (int)StringAsFr:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"POWERLOG_SUB6"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"POWERLOG_MMWAVE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"POWERLOG_SUB6_MMWAVE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"POWERLOG_INVALID"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasBand:(BOOL)a3
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

- (int)deployment
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_deployment;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDeployment:(BOOL)a3
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

- (int)StringAsDeployment:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DEPLOYMENT_SA"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DEPLOYMENT_NSA"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DEPLOYMENT_NRDC"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogNrSaRrcStateChange;
  v4 = [(AWDMETRICSKCellularPowerLogNrSaRrcStateChange *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogNrSaRrcStateChange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  state = self->_state;
  if (state <= 4)
  {
    if (state > 1)
    {
      if (state == 2)
      {
        v7 = @"RRC_STATE_INACTIVE";
      }

      else if (state == 3)
      {
        v7 = @"RRC_STATE_ATMPT_CONNECTION";
      }

      else
      {
        v7 = @"RRC_STATE_CONNECTED";
      }

      goto LABEL_34;
    }

    if (!state)
    {
      v7 = @"RRC_STATE_UNKNOWN";
      goto LABEL_34;
    }

    if (state == 1)
    {
      v7 = @"RRC_STATE_IDLE";
      goto LABEL_34;
    }

LABEL_33:
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_state];
    goto LABEL_34;
  }

  if (state > 6)
  {
    switch(state)
    {
      case 7:
        v7 = @"RRC_STATE_ATMPT_INBND_MOBILITY";
        goto LABEL_34;
      case 8:
        v7 = @"RRC_STATE_AIRPLANE_MODE";
        goto LABEL_34;
      case 255:
        v7 = @"RRC_STATE_MAX";
        goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (state == 5)
  {
    v7 = @"RRC_STATE_ENDING";
  }

  else
  {
    v7 = @"RRC_STATE_ATMPT_OUTBND_MOBILITY";
  }

LABEL_34:
  [v3 setObject:v7 forKey:@"state"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_58;
  }

LABEL_35:
  prevState = self->_prevState;
  if (prevState <= 4)
  {
    if (prevState > 1)
    {
      if (prevState == 2)
      {
        v9 = @"RRC_STATE_INACTIVE";
      }

      else if (prevState == 3)
      {
        v9 = @"RRC_STATE_ATMPT_CONNECTION";
      }

      else
      {
        v9 = @"RRC_STATE_CONNECTED";
      }

      goto LABEL_57;
    }

    if (!prevState)
    {
      v9 = @"RRC_STATE_UNKNOWN";
      goto LABEL_57;
    }

    if (prevState == 1)
    {
      v9 = @"RRC_STATE_IDLE";
      goto LABEL_57;
    }

LABEL_56:
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prevState];
    goto LABEL_57;
  }

  if (prevState > 6)
  {
    switch(prevState)
    {
      case 7:
        v9 = @"RRC_STATE_ATMPT_INBND_MOBILITY";
        goto LABEL_57;
      case 8:
        v9 = @"RRC_STATE_AIRPLANE_MODE";
        goto LABEL_57;
      case 255:
        v9 = @"RRC_STATE_MAX";
        goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (prevState == 5)
  {
    v9 = @"RRC_STATE_ENDING";
  }

  else
  {
    v9 = @"RRC_STATE_ATMPT_OUTBND_MOBILITY";
  }

LABEL_57:
  [v3 setObject:v9 forKey:@"prev_state"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_59;
  }

LABEL_58:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevStateDurMs];
  [v3 setObject:v10 forKey:@"prev_state_dur_ms"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

LABEL_59:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v11 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_115;
  }

LABEL_60:
  cause = self->_cause;
  v13 = @"NRRC_CAUSE_EST_EMERGENCY";
  switch(cause)
  {
    case 0:
      break;
    case 1:
      v13 = @"NRRC_CAUSE_EST_HIGH_PRIO_ACC";
      break;
    case 2:
      v13 = @"NRRC_CAUSE_EST_MT_ACC";
      break;
    case 3:
      v13 = @"NRRC_CAUSE_EST_MO_SIGNAL";
      break;
    case 4:
      v13 = @"NRRC_CAUSE_EST_MO_DATA";
      break;
    case 5:
      v13 = @"NRRC_CAUSE_EST_MO_VOICE_CALL";
      break;
    case 6:
      v13 = @"NRRC_CAUSE_EST_MO_VIDEO_CALL";
      break;
    case 7:
      v13 = @"NRRC_CAUSE_EST_MO_SMS";
      break;
    case 8:
      v13 = @"NRRC_CAUSE_EST_MPS_PRIO_ACC";
      break;
    case 9:
      v13 = @"NRRC_CAUSE_EST_MCS_PRIO_ACC";
      break;
    case 10:
      v13 = @"NRRC_CAUSE_EST_RNA_UPDATE";
      break;
    case 11:
      v13 = @"NRRC_CAUSE_EST_DELAY_TOL_ACC";
      break;
    case 12:
      v13 = @"NRRC_CAUSE_REL_OTHER_RECFG_FAIL";
      break;
    case 13:
      v13 = @"NRRC_CAUSE_DATA_INACTIVITY_SPEC";
      break;
    case 14:
      v13 = @"NRRC_CAUSE_NAS_CONN_ABORT";
      break;
    case 15:
      v13 = @"NRRC_CAUSE_SDM";
      break;
    case 16:
      v13 = @"NRRC_CAUSE_NW_RELEASE";
      break;
    case 17:
      v13 = @"NRRC_CAUSE_REEST_RECFG_FAIL";
      break;
    case 18:
      v13 = @"NRRC_CAUSE_REEST_HO_FAIL";
      break;
    case 19:
      v13 = @"NRRC_CAUSE_REEST_OTHER_FAIL_INTEG_CHECK";
      break;
    case 20:
      v13 = @"NRRC_CAUSE_REEST_OTHER_FAIL_RADIO_LINK_FAILURE";
      break;
    case 21:
      v13 = @"NRRC_CAUSE_OTHER_MSIM";
      break;
    case 22:
      v13 = @"NRRC_CAUSE_REEST_RES_FALLBACK_CONN_SETUP";
      break;
    case 23:
      v13 = @"NRRC_CAUSE_RES_FALLBACK_CONN_REJECT";
      break;
    case 24:
      v13 = @"NRRC_CAUSE_EST_FAIL_NO_RESP_FROM_CELL";
      break;
    case 25:
      v13 = @"NRRC_CAUSE_EST_FAIL_REJ";
      break;
    case 26:
      v13 = @"NRRC_CAUSE_EST_FAIL_CELL_RESEL";
      break;
    case 27:
      v13 = @"NRRC_CAUSE_EST_FAIL_INVALID_MSG";
      break;
    case 28:
      v13 = @"NRRC_CAUSE_EST_FAIL_ABORTED";
      break;
    case 29:
      v13 = @"NRRC_CAUSE_EST_FAIL_CELL_BARRED";
      break;
    case 30:
      v13 = @"NRRC_CAUSE_EST_FAIL_CN_PAGING";
      break;
    case 31:
      v13 = @"NRRC_CAUSE_EST_FAIL_INTEG_FAILURE";
      break;
    case 32:
      v13 = @"NRRC_CAUSE_EST_FAIL_RRC_ERROR";
      break;
    case 33:
      v13 = @"NRRC_CAUSE_EST_FAIL_CONN_RESUME";
      break;
    case 34:
      v13 = @"NRRC_CAUSE_EST_FAIL_CONN_REMAIN_INACTIVE";
      break;
    case 35:
      v13 = @"NRRC_CAUSE_EST_FAIL_INVALID_PARAMS";
      break;
    case 36:
      v13 = @"NRRC_CAUSE_REL_LOAD_BAL_TAU_REQD";
      break;
    case 37:
      v13 = @"NRRC_CAUSE_REL_OTHER";
      break;
    case 38:
      v13 = @"NRRC_CAUSE_REL_SUCC_MOB_FROM_EUTRAN";
      break;
    case 39:
      v13 = @"NRRC_CAUSE_FAIL_CELL_BARRED";
      break;
    case 40:
      v13 = @"NRRC_CAUSE_REL_SUCC_MOB_FROM_NR";
      break;
    case 41:
      v13 = @"NRRC_CAUSE_EST_SUCC_MOB_TO_NR";
      break;
    case 42:
      v13 = @"NRRC_CAUSE_NR_SCG_ADD";
      break;
    case 43:
    case 44:
    case 45:
    case 46:
    case 49:
      goto LABEL_65;
    case 47:
      v13 = @"NRRC_CAUSE_REL_NULL_CIPHERING";
      break;
    case 48:
      v13 = @"NRRC_CAUSE_REL_AIRPLANE_MODE";
      break;
    case 50:
      v13 = @"NRRC_CAUSE_REEST_NAS_GUARD_TIMER_EXPIRY";
      break;
    case 51:
      v13 = @"NRRC_CAUSE_REEST_L3C_DATA_STALL";
      break;
    case 52:
      v13 = @"NRRC_CAUSE_REL_NAS_GUARD_TIMER_EXPIRY";
      break;
    case 53:
      v13 = @"NRRC_CAUSE_REL_L3C_DATA_STALL";
      break;
    default:
      if (cause == 254)
      {
        v13 = @"NRRC_CAUSE_NO_SERVICE";
      }

      else if (cause == 255)
      {
        v13 = @"NRRC_CAUSE_NA";
      }

      else
      {
LABEL_65:
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_cause];
      }

      break;
  }

  [v3 setObject:v13 forKey:@"cause"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_126:
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_band];
    [v3 setObject:v16 forKey:@"band"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_131;
    }

LABEL_127:
    deployment = self->_deployment;
    if (deployment >= 3)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_deployment];
    }

    else
    {
      v18 = off_279A10328[deployment];
    }

    [v3 setObject:v18 forKey:@"deployment"];

    goto LABEL_131;
  }

LABEL_115:
  fr = self->_fr;
  if (fr > 2)
  {
    if (fr != 3)
    {
      if (fr == 255)
      {
        v15 = @"POWERLOG_INVALID";
        goto LABEL_125;
      }

      goto LABEL_122;
    }

    v15 = @"POWERLOG_SUB6_MMWAVE";
  }

  else
  {
    if (fr != 1)
    {
      if (fr == 2)
      {
        v15 = @"POWERLOG_MMWAVE";
        goto LABEL_125;
      }

LABEL_122:
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fr];
      goto LABEL_125;
    }

    v15 = @"POWERLOG_SUB6";
  }

LABEL_125:
  [v3 setObject:v15 forKey:@"fr"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_126;
  }

LABEL_9:
  if ((has & 8) != 0)
  {
    goto LABEL_127;
  }

LABEL_131:

  return v3;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  state = self->_state;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  prevState = self->_prevState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  prevStateDurMs = self->_prevStateDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  cause = self->_cause;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  fr = self->_fr;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  band = self->_band;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    deployment = self->_deployment;
    PBDataWriterWriteInt32Field();
  }

LABEL_11:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 24) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 10) = self->_state;
  *(v4 + 24) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v4 + 8) = self->_prevState;
  *(v4 + 24) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v4 + 9) = self->_prevStateDurMs;
  *(v4 + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 11) = self->_subsId;
  *(v4 + 24) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v4 + 5) = self->_cause;
  *(v4 + 24) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 7) = self->_fr;
  *(v4 + 24) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  *(v4 + 4) = self->_band;
  *(v4 + 24) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    *(v4 + 6) = self->_deployment;
    *(v4 + 24) |= 8u;
  }

LABEL_11:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(result + 10) = self->_state;
  *(result + 24) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 8) = self->_prevState;
  *(result + 24) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 9) = self->_prevStateDurMs;
  *(result + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 11) = self->_subsId;
  *(result + 24) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 5) = self->_cause;
  *(result + 24) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 7) = self->_fr;
  *(result + 24) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(result + 4) = self->_band;
  *(result + 24) |= 2u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_10:
  *(result + 6) = self->_deployment;
  *(result + 24) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_47;
    }
  }

  else if (v6)
  {
LABEL_47:
    v7 = 0;
    goto LABEL_48;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_state != *(v4 + 10))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_prevState != *(v4 + 8))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_prevStateDurMs != *(v4 + 9))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 24) & 0x100) == 0 || self->_subsId != *(v4 + 11))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 24) & 0x100) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_cause != *(v4 + 5))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_fr != *(v4 + 7))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_band != *(v4 + 4))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_deployment != *(v4 + 6))
    {
      goto LABEL_47;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 8) == 0;
  }

LABEL_48:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 0x80) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_state;
      if ((has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_prevState;
    if ((has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_prevStateDurMs;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_subsId;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_cause;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_fr;
    if ((has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_17:
  v9 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761 * self->_band;
  if ((has & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761 * self->_deployment;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_state = *(v4 + 10);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 24);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_prevState = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 24);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_prevStateDurMs = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 24);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_subsId = *(v4 + 11);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 24);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_cause = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_fr = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 24);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  self->_band = *(v4 + 4);
  *&self->_has |= 2u;
  if ((*(v4 + 24) & 8) != 0)
  {
LABEL_10:
    self->_deployment = *(v4 + 6);
    *&self->_has |= 8u;
  }

LABEL_11:
}

@end