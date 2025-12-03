@interface AWDMETRICSKCellularPowerLogWcdmaRrcStateChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConnState:(id)state;
- (int)StringAsEstablishmentCause:(id)cause;
- (int)StringAsPrevConnState:(id)state;
- (int)StringAsReleaseCause:(id)cause;
- (int)connState;
- (int)establishmentCause;
- (int)prevConnState;
- (int)releaseCause;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConnState:(BOOL)state;
- (void)setHasEstablishmentCause:(BOOL)cause;
- (void)setHasIsDataPreferred:(BOOL)preferred;
- (void)setHasPrevConnState:(BOOL)state;
- (void)setHasPrevDurMs:(BOOL)ms;
- (void)setHasReleaseCause:(BOOL)cause;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogWcdmaRrcStateChange

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)connState
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_connState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConnState:(BOOL)state
{
  if (state)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsConnState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"INVALID"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"INACTIVE"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"DISCONNECTED"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"CONNECTING"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"URA_PCH"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"CELL_PCH"])
  {
    v4 = 5;
  }

  else if ([stateCopy isEqualToString:@"CELL_FACH"])
  {
    v4 = 6;
  }

  else if ([stateCopy isEqualToString:@"CELL_DCH"])
  {
    v4 = 7;
  }

  else if ([stateCopy isEqualToString:@"RELEASE"])
  {
    v4 = 8;
  }

  else if ([stateCopy isEqualToString:@"RADIO_LINK_FAILURE"])
  {
    v4 = 9;
  }

  else if ([stateCopy isEqualToString:@"SCRI_SENT"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)prevConnState
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_prevConnState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPrevConnState:(BOOL)state
{
  if (state)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsPrevConnState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"INVALID"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"INACTIVE"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"DISCONNECTED"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"CONNECTING"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"URA_PCH"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"CELL_PCH"])
  {
    v4 = 5;
  }

  else if ([stateCopy isEqualToString:@"CELL_FACH"])
  {
    v4 = 6;
  }

  else if ([stateCopy isEqualToString:@"CELL_DCH"])
  {
    v4 = 7;
  }

  else if ([stateCopy isEqualToString:@"RELEASE"])
  {
    v4 = 8;
  }

  else if ([stateCopy isEqualToString:@"RADIO_LINK_FAILURE"])
  {
    v4 = 9;
  }

  else if ([stateCopy isEqualToString:@"SCRI_SENT"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPrevDurMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)establishmentCause
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_establishmentCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEstablishmentCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsEstablishmentCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"ORIG_CONV_CALL"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"ORIG_STREAM_CALL"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"ORIG_INTERACT_CALL"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"ORIG_BACKGND_CALL"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"ORIG_SUBSCRIBED_TRF_CALL"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"TERM_CONV_CALL"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"TERM_STREAM_CALL"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"TERM_INTERACT_CALL"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"TERM_BACKGND_CALL"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"EMERGENCY_CALL"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"INTER_RAT_CELL_RESELECT"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"INTER_RAT_CELL_CHANGE_ORDER"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"REGISTRATION"])
  {
    v4 = 12;
  }

  else if ([causeCopy isEqualToString:@"DETACH"])
  {
    v4 = 13;
  }

  else if ([causeCopy isEqualToString:@"HI_PRI_SIGNALLING"])
  {
    v4 = 14;
  }

  else if ([causeCopy isEqualToString:@"LOW_PRI_SIGNALLING"])
  {
    v4 = 15;
  }

  else if ([causeCopy isEqualToString:@"CALL_RE_ESTABLISH"])
  {
    v4 = 16;
  }

  else if ([causeCopy isEqualToString:@"TERM_HI_SIGNALLING"])
  {
    v4 = 17;
  }

  else if ([causeCopy isEqualToString:@"TERM_LOW_SIGNALLING"])
  {
    v4 = 18;
  }

  else if ([causeCopy isEqualToString:@"TERM_UNKNOWN"])
  {
    v4 = 19;
  }

  else if ([causeCopy isEqualToString:@"MBMS_RECEPTION"])
  {
    v4 = 20;
  }

  else if ([causeCopy isEqualToString:@"MBMS_PTP_RB_REQUEST"])
  {
    v4 = 21;
  }

  else if ([causeCopy isEqualToString:@"DELAY_TOLERANT_ACCESS"])
  {
    v4 = 22;
  }

  else if ([causeCopy isEqualToString:@"EST_CAUSE_NA"])
  {
    v4 = 23;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)releaseCause
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_releaseCause;
  }

  else
  {
    return 0;
  }
}

- (void)setHasReleaseCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsReleaseCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"OTHER_CAUSE"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"NO_CAUSE"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"NO_CELL"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"RELEASE_INACTIVE"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"NORMAL_EVENT"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"CELL_BARRED"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"CELL_CHANGED"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"ACCESS_NOT_ALLOWED"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"RRC_CONN_ESTABLISHMENT_FAILURE"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"RELEASE_OOSA"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"SIGN_CONN_REL"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"CONN_REJECT_REDIRECTION"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"NAS_TRIGGERED_ABORT"])
  {
    v4 = 12;
  }

  else if ([causeCopy isEqualToString:@"CONN_REL_LOWER_LAYER_FAILURE_DL"])
  {
    v4 = 13;
  }

  else if ([causeCopy isEqualToString:@"CONN_REL_LOWER_LAYER_FAILURE_UL"])
  {
    v4 = 14;
  }

  else if ([causeCopy isEqualToString:@"HO_FROM_UTRAN_REVERT_BACK_SYNC_FAIL"])
  {
    v4 = 15;
  }

  else if ([causeCopy isEqualToString:@"CONN_REJECT_CONGESTION"])
  {
    v4 = 16;
  }

  else if ([causeCopy isEqualToString:@"CONN_REJECT_UNSPECIFIED"])
  {
    v4 = 17;
  }

  else if ([causeCopy isEqualToString:@"SIM_RADIO_CONFLICT"])
  {
    v4 = 18;
  }

  else if ([causeCopy isEqualToString:@"CONN_RELEASE"])
  {
    v4 = 19;
  }

  else if ([causeCopy isEqualToString:@"UNSPECIFIED"])
  {
    v4 = 20;
  }

  else if ([causeCopy isEqualToString:@"PRE_EMPTIVE_RELEASE"])
  {
    v4 = 21;
  }

  else if ([causeCopy isEqualToString:@"CONGESTION"])
  {
    v4 = 22;
  }

  else if ([causeCopy isEqualToString:@"RE_ESTABLISHMENT_REJECT"])
  {
    v4 = 23;
  }

  else if ([causeCopy isEqualToString:@"DIRECTED_SIGCONN_RE_ESTABLISHMENT"])
  {
    v4 = 24;
  }

  else if ([causeCopy isEqualToString:@"USER_INACTIVITY"])
  {
    v4 = 25;
  }

  else if ([causeCopy isEqualToString:@"RL_FAILURE"])
  {
    v4 = 26;
  }

  else if ([causeCopy isEqualToString:@"RLC_LINK_ERROR"])
  {
    v4 = 27;
  }

  else if ([causeCopy isEqualToString:@"REL_CAUSE_NA"])
  {
    v4 = 28;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsDataPreferred:(BOOL)preferred
{
  if (preferred)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogWcdmaRrcStateChange;
  v4 = [(AWDMETRICSKCellularPowerLogWcdmaRrcStateChange *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogWcdmaRrcStateChange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v6 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [dictionary setObject:v7 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_14:
  connState = self->_connState;
  if (connState >= 0xB)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_connState];
  }

  else
  {
    v9 = off_279A10610[connState];
  }

  [dictionary setObject:v9 forKey:@"conn_state"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_18:
  prevConnState = self->_prevConnState;
  if (prevConnState >= 0xB)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prevConnState];
  }

  else
  {
    v11 = off_279A10610[prevConnState];
  }

  [dictionary setObject:v11 forKey:@"prev_conn_state"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevDurMs];
  [dictionary setObject:v12 forKey:@"prev_dur_ms"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_23:
  establishmentCause = self->_establishmentCause;
  if (establishmentCause >= 0x18)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_establishmentCause];
  }

  else
  {
    v14 = off_279A10668[establishmentCause];
  }

  [dictionary setObject:v14 forKey:@"establishment_cause"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_27:
  releaseCause = self->_releaseCause;
  if (releaseCause >= 0x1D)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_releaseCause];
  }

  else
  {
    v16 = off_279A10728[releaseCause];
  }

  [dictionary setObject:v16 forKey:@"release_cause"];

  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_31:
  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
  [dictionary setObject:v17 forKey:@"is_data_preferred"];

LABEL_9:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  connState = self->_connState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  prevConnState = self->_prevConnState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  prevDurMs = self->_prevDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    releaseCause = self->_releaseCause;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  establishmentCause = self->_establishmentCause;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  isDataPreferred = self->_isDataPreferred;
  PBDataWriterWriteBOOLField();
LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 44) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 9) = self->_subsId;
  *(toCopy + 44) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(toCopy + 4) = self->_connState;
  *(toCopy + 44) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(toCopy + 6) = self->_prevConnState;
  *(toCopy + 44) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(toCopy + 7) = self->_prevDurMs;
  *(toCopy + 44) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    *(toCopy + 8) = self->_releaseCause;
    *(toCopy + 44) |= 0x20u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  *(toCopy + 5) = self->_establishmentCause;
  *(toCopy + 44) |= 4u;
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  *(toCopy + 40) = self->_isDataPreferred;
  *(toCopy + 44) |= 0x80u;
LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 44) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 9) = self->_subsId;
  *(result + 44) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 4) = self->_connState;
  *(result + 44) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 6) = self->_prevConnState;
  *(result + 44) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 7) = self->_prevDurMs;
  *(result + 44) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 5) = self->_establishmentCause;
  *(result + 44) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      return result;
    }

LABEL_17:
    *(result + 40) = self->_isDataPreferred;
    *(result + 44) |= 0x80u;
    return result;
  }

LABEL_16:
  *(result + 8) = self->_releaseCause;
  *(result + 44) |= 0x20u;
  if ((*&self->_has & 0x80) != 0)
  {
    goto LABEL_17;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  if (*&self->_has)
  {
    if ((equalCopy[44] & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_39;
    }
  }

  else if (equalCopy[44])
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((equalCopy[44] & 0x40) == 0 || self->_subsId != *(equalCopy + 9))
    {
      goto LABEL_39;
    }
  }

  else if ((equalCopy[44] & 0x40) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[44] & 2) == 0 || self->_connState != *(equalCopy + 4))
    {
      goto LABEL_39;
    }
  }

  else if ((equalCopy[44] & 2) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((equalCopy[44] & 8) == 0 || self->_prevConnState != *(equalCopy + 6))
    {
      goto LABEL_39;
    }
  }

  else if ((equalCopy[44] & 8) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((equalCopy[44] & 0x10) == 0 || self->_prevDurMs != *(equalCopy + 7))
    {
      goto LABEL_39;
    }
  }

  else if ((equalCopy[44] & 0x10) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[44] & 4) == 0 || self->_establishmentCause != *(equalCopy + 5))
    {
      goto LABEL_39;
    }
  }

  else if ((equalCopy[44] & 4) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((equalCopy[44] & 0x20) == 0 || self->_releaseCause != *(equalCopy + 8))
    {
      goto LABEL_39;
    }
  }

  else if ((equalCopy[44] & 0x20) != 0)
  {
    goto LABEL_39;
  }

  v5 = equalCopy[44] >= 0;
  if ((*&self->_has & 0x80) != 0)
  {
    if ((equalCopy[44] & 0x80) == 0)
    {
LABEL_39:
      v5 = 0;
      goto LABEL_40;
    }

    if (self->_isDataPreferred)
    {
      if ((equalCopy[40] & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (equalCopy[40])
    {
      goto LABEL_39;
    }

    v5 = 1;
  }

LABEL_40:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_subsId;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_connState;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_prevConnState;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_prevDurMs;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_establishmentCause;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761 * self->_releaseCause;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_isDataPreferred;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 44);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(fromCopy + 44) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_subsId = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 44);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_connState = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 44);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_prevConnState = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_prevDurMs = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 44);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    self->_releaseCause = *(fromCopy + 8);
    *&self->_has |= 0x20u;
    if ((*(fromCopy + 44) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  self->_establishmentCause = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  self->_isDataPreferred = *(fromCopy + 40);
  *&self->_has |= 0x80u;
LABEL_9:
}

@end