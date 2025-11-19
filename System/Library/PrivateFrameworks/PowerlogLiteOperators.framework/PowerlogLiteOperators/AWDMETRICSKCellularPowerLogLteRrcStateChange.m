@interface AWDMETRICSKCellularPowerLogLteRrcStateChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCause:(id)a3;
- (int)StringAsPrevState:(id)a3;
- (int)StringAsState:(id)a3;
- (int)cause;
- (int)prevState;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCause:(BOOL)a3;
- (void)setHasIsDataPreferred:(BOOL)a3;
- (void)setHasPrevState:(BOOL)a3;
- (void)setHasPrevStateDurMs:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogLteRrcStateChange

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)state
{
  if ((*&self->_has & 0x10) != 0)
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"INACTIVE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"IDLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CONNECTING"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CONNECTED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CLOSING"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ATMPT_OUTBND"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ATMPT_INBND"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AIRPLANE_MODE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"NONE"])
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
  if ((*&self->_has & 4) != 0)
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsPrevState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"INACTIVE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"IDLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CONNECTING"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CONNECTED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CLOSING"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ATMPT_OUTBND"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ATMPT_INBND"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"AIRPLANE_MODE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"NONE"])
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)cause
{
  if ((*&self->_has & 2) != 0)
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsCause:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"EMERGENCY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"HIGH_PRIORITY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MT_ACCESS"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MO_SIGNALING"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MO_DATA"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"DELAY_TOLERANT_ACCESS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"REEST_RECFG_FAIL"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"REEST_HO_FAIL"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"REEST_OTHER_FAIL"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"REL_OTHER_RECFG_FAIL"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"REL_CONN_FAIL_IRAT_RESEL"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"REL_CONN_FAIL_T311_EXP"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"REL_CONN_FAIL_CELL_NOT_SUIT"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"REL_CONN_FAIL_REEST_REJ"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"REL_LOAD_BAL_TAU_REQD"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"REL_OTHER"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"REL_CSFB_HIGH_PRIO"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"REL_T310_EXP"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"REL_RND_ACC"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"REL_MAX_RLC_RETRANS"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"REL_SUCC_MOB_FROM_EUTRAN"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"EST_SUCC_MOB_TO_EUTRAN"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"EST_FAIL_NO_RESP_FROM_CELL"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"EST_FAIL_REJ"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"EST_FAIL_CELL_RESEL"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"EST_FAIL_ABORTED"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"EST_FAIL_CELL_BARRED"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"REEST_OTHER_FAIL_T310_EXP"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"REEST_OTHER_FAIL_RND_ACC"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"REEST_OTHER_FAIL_MAX_RLC_RETX"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"REEST_OTHER_FAIL_INTEG_CHECK"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"REL_SUSPEND"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"REEST_OTHER_FAIL_T312_EXP"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"REL_FAST_DORMANCY"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"REEST_ARB_CONN_TXRX_SUSPEND"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"REL_ARB_CONFLICT"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"REL_ARB_DATA_INACTIVITY"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"REL_ARB_PS_PREF_CHANGE"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"REL_NR_NULL_CIPHERING"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"REL_AIRPLANE_MODE"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"REEST_OTHER_FAIL_CONGESTED_DATA_STALL"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"REEST_NAS_GUARD_TIMER_EXPIRY"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"REEST_L3C_DATA_STALL"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"REL_NAS_GUARD_TIMER_EXPIRY"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"REL_L3C_DATA_STALL"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"REL_SDM"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"REEST_MR_STALL"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"REEST_MIB_SFN_MISMATCH"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"REL_MIB_SFN_MISMATCH"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"REEST_INVALID_RACH_CELL_CONFIG"])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:@"NO_SERVICE"])
  {
    v4 = 254;
  }

  else if ([v3 isEqualToString:@"NA"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsDataPreferred:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogLteRrcStateChange;
  v4 = [(AWDMETRICSKCellularPowerLogLteRrcStateChange *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogLteRrcStateChange *)self dictionaryRepresentation];
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
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v8 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_14:
  state = self->_state;
  if (state <= 3)
  {
    if (state <= 1)
    {
      if (!state)
      {
        v10 = @"INACTIVE";
        goto LABEL_34;
      }

      if (state == 1)
      {
        v10 = @"IDLE";
        goto LABEL_34;
      }

LABEL_33:
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_state];
      goto LABEL_34;
    }

    if (state == 2)
    {
      v10 = @"CONNECTING";
    }

    else
    {
      v10 = @"CONNECTED";
    }
  }

  else
  {
    if (state > 5)
    {
      switch(state)
      {
        case 6:
          v10 = @"ATMPT_INBND";
          goto LABEL_34;
        case 7:
          v10 = @"AIRPLANE_MODE";
          goto LABEL_34;
        case 255:
          v10 = @"NONE";
          goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (state == 4)
    {
      v10 = @"CLOSING";
    }

    else
    {
      v10 = @"ATMPT_OUTBND";
    }
  }

LABEL_34:
  [v3 setObject:v10 forKey:@"state"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_35:
  prevState = self->_prevState;
  if (prevState <= 3)
  {
    if (prevState <= 1)
    {
      if (!prevState)
      {
        v12 = @"INACTIVE";
        goto LABEL_55;
      }

      if (prevState == 1)
      {
        v12 = @"IDLE";
        goto LABEL_55;
      }

LABEL_54:
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prevState];
      goto LABEL_55;
    }

    if (prevState == 2)
    {
      v12 = @"CONNECTING";
    }

    else
    {
      v12 = @"CONNECTED";
    }
  }

  else
  {
    if (prevState > 5)
    {
      switch(prevState)
      {
        case 6:
          v12 = @"ATMPT_INBND";
          goto LABEL_55;
        case 7:
          v12 = @"AIRPLANE_MODE";
          goto LABEL_55;
        case 255:
          v12 = @"NONE";
          goto LABEL_55;
      }

      goto LABEL_54;
    }

    if (prevState == 4)
    {
      v12 = @"CLOSING";
    }

    else
    {
      v12 = @"ATMPT_OUTBND";
    }
  }

LABEL_55:
  [v3 setObject:v12 forKey:@"prev_state"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevStateDurMs];
  [v3 setObject:v13 forKey:@"prev_state_dur_ms"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_57:
  cause = self->_cause;
  v15 = @"EMERGENCY";
  switch(cause)
  {
    case 0:
      break;
    case 1:
      v15 = @"HIGH_PRIORITY";
      break;
    case 2:
      v15 = @"MT_ACCESS";
      break;
    case 3:
      v15 = @"MO_SIGNALING";
      break;
    case 4:
      v15 = @"MO_DATA";
      break;
    case 5:
      v15 = @"DELAY_TOLERANT_ACCESS";
      break;
    case 6:
      v15 = @"REEST_RECFG_FAIL";
      break;
    case 7:
      v15 = @"REEST_HO_FAIL";
      break;
    case 8:
      v15 = @"REEST_OTHER_FAIL";
      break;
    case 9:
      v15 = @"REL_OTHER_RECFG_FAIL";
      break;
    case 10:
      v15 = @"REL_CONN_FAIL_IRAT_RESEL";
      break;
    case 11:
      v15 = @"REL_CONN_FAIL_T311_EXP";
      break;
    case 12:
      v15 = @"REL_CONN_FAIL_CELL_NOT_SUIT";
      break;
    case 13:
      v15 = @"REL_CONN_FAIL_REEST_REJ";
      break;
    case 14:
      v15 = @"REL_LOAD_BAL_TAU_REQD";
      break;
    case 15:
      v15 = @"REL_OTHER";
      break;
    case 16:
      v15 = @"REL_CSFB_HIGH_PRIO";
      break;
    case 17:
      v15 = @"REL_T310_EXP";
      break;
    case 18:
      v15 = @"REL_RND_ACC";
      break;
    case 19:
      v15 = @"REL_MAX_RLC_RETRANS";
      break;
    case 20:
      v15 = @"REL_SUCC_MOB_FROM_EUTRAN";
      break;
    case 21:
      v15 = @"EST_SUCC_MOB_TO_EUTRAN";
      break;
    case 22:
      v15 = @"EST_FAIL_NO_RESP_FROM_CELL";
      break;
    case 23:
      v15 = @"EST_FAIL_REJ";
      break;
    case 24:
      v15 = @"EST_FAIL_CELL_RESEL";
      break;
    case 25:
      v15 = @"EST_FAIL_ABORTED";
      break;
    case 26:
      v15 = @"EST_FAIL_CELL_BARRED";
      break;
    case 27:
      v15 = @"REEST_OTHER_FAIL_T310_EXP";
      break;
    case 28:
      v15 = @"REEST_OTHER_FAIL_RND_ACC";
      break;
    case 29:
      v15 = @"REEST_OTHER_FAIL_MAX_RLC_RETX";
      break;
    case 30:
      v15 = @"REEST_OTHER_FAIL_INTEG_CHECK";
      break;
    case 31:
      v15 = @"REL_SUSPEND";
      break;
    case 32:
      v15 = @"REEST_OTHER_FAIL_T312_EXP";
      break;
    case 33:
      v15 = @"REL_FAST_DORMANCY";
      break;
    case 34:
      v15 = @"REEST_ARB_CONN_TXRX_SUSPEND";
      break;
    case 35:
      v15 = @"REL_ARB_CONFLICT";
      break;
    case 36:
      v15 = @"REL_ARB_DATA_INACTIVITY";
      break;
    case 37:
      v15 = @"REL_ARB_PS_PREF_CHANGE";
      break;
    case 38:
      v15 = @"REL_NR_NULL_CIPHERING";
      break;
    case 39:
      v15 = @"REL_AIRPLANE_MODE";
      break;
    case 40:
      v15 = @"REEST_OTHER_FAIL_CONGESTED_DATA_STALL";
      break;
    case 41:
      v15 = @"REEST_NAS_GUARD_TIMER_EXPIRY";
      break;
    case 42:
      v15 = @"REEST_L3C_DATA_STALL";
      break;
    case 43:
      v15 = @"REL_NAS_GUARD_TIMER_EXPIRY";
      break;
    case 44:
      v15 = @"REL_L3C_DATA_STALL";
      break;
    case 45:
      v15 = @"REL_SDM";
      break;
    case 46:
      v15 = @"REEST_MR_STALL";
      break;
    case 47:
      v15 = @"REEST_MIB_SFN_MISMATCH";
      break;
    case 48:
      v15 = @"REL_MIB_SFN_MISMATCH";
      break;
    case 49:
      v15 = @"REEST_INVALID_RACH_CELL_CONFIG";
      break;
    default:
      if (cause == 254)
      {
        v15 = @"NO_SERVICE";
      }

      else if (cause == 255)
      {
        v15 = @"NA";
      }

      else
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_cause];
      }

      break;
  }

  [v3 setObject:v15 forKey:@"cause"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
    [v3 setObject:v5 forKey:@"is_data_preferred"];
  }

LABEL_9:

  return v3;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  state = self->_state;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  prevState = self->_prevState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  prevStateDurMs = self->_prevStateDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  cause = self->_cause;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 40) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 8) = self->_subsId;
  *(v4 + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 7) = self->_state;
  *(v4 + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v4 + 5) = self->_prevState;
  *(v4 + 40) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v4 + 6) = self->_prevStateDurMs;
  *(v4 + 40) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  *(v4 + 4) = self->_cause;
  *(v4 + 40) |= 2u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    *(v4 + 36) = self->_isDataPreferred;
    *(v4 + 40) |= 0x40u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 40) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_subsId;
  *(result + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 7) = self->_state;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 5) = self->_prevState;
  *(result + 40) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 6) = self->_prevStateDurMs;
  *(result + 40) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 4) = self->_cause;
  *(result + 40) |= 2u;
  if ((*&self->_has & 0x40) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 36) = self->_isDataPreferred;
  *(result + 40) |= 0x40u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 40) & 0x20) == 0 || self->_subsId != *(v4 + 8))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 40) & 0x20) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 40) & 0x10) == 0 || self->_state != *(v4 + 7))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 40) & 0x10) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_prevState != *(v4 + 5))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_prevStateDurMs != *(v4 + 6))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 40) & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_cause != *(v4 + 4))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_34;
  }

  v5 = (*(v4 + 40) & 0x40) == 0;
  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 40) & 0x40) == 0)
    {
LABEL_34:
      v5 = 0;
      goto LABEL_35;
    }

    if (self->_isDataPreferred)
    {
      if ((*(v4 + 36) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(v4 + 36))
    {
      goto LABEL_34;
    }

    v5 = 1;
  }

LABEL_35:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_subsId;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_state;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_prevState;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_prevStateDurMs;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_cause;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_isDataPreferred;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 40);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 40) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_subsId = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_state = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_prevState = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_prevStateDurMs = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 40);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_cause = *(v4 + 4);
  *&self->_has |= 2u;
  if ((*(v4 + 40) & 0x40) != 0)
  {
LABEL_8:
    self->_isDataPreferred = *(v4 + 36);
    *&self->_has |= 0x40u;
  }

LABEL_9:
}

@end