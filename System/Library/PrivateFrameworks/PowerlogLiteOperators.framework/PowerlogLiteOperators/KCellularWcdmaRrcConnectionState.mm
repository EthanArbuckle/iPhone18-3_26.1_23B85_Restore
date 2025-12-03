@interface KCellularWcdmaRrcConnectionState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEstablishmentCause:(id)cause;
- (int)StringAsReleaseCause:(id)cause;
- (int)StringAsState:(id)state;
- (int)establishmentCause;
- (int)releaseCause;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEstablishmentCause:(BOOL)cause;
- (void)setHasReleaseCause:(BOOL)cause;
- (void)setHasState:(BOOL)state;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation KCellularWcdmaRrcConnectionState

- (int)state
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_state;
  }

  else
  {
    return 0;
  }
}

- (void)setHasState:(BOOL)state
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

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"KWCDMA_RRC_CONN_STATE_INVALID"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"KWCDMA_RRC_CONN_STATE_INACTIVE"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"KWCDMA_RRC_CONN_STATE_IDLE"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"KWCDMA_RRC_CONN_STATE_ESTABLISH"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"KWCDMA_RRC_CONN_STATE_URA_PCH"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"KWCDMA_RRC_CONN_STATE_CELL_PCH"])
  {
    v4 = 5;
  }

  else if ([stateCopy isEqualToString:@"KWCDMA_RRC_CONN_STATE_CELL_FACH"])
  {
    v4 = 6;
  }

  else if ([stateCopy isEqualToString:@"KWCDMA_RRC_CONN_STATE_CELL_DCH"])
  {
    v4 = 7;
  }

  else if ([stateCopy isEqualToString:@"KWCDMA_RRC_CONN_STATE_RELEASE"])
  {
    v4 = 8;
  }

  else if ([stateCopy isEqualToString:@"KWCDMA_RRC_CONN_STATE_RADIO_LINK_FAILURE"])
  {
    v4 = 9;
  }

  else if ([stateCopy isEqualToString:@"KWCDMA_RRC_CONN_STATE_SCRI_SENT"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)establishmentCause
{
  if ((*&self->_has & 2) != 0)
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsEstablishmentCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"KRRC_EST_ORIG_CONV_CALL"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_ORIG_STREAM_CALL"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_ORIG_INTERACT_CALL"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_ORIG_BACKGND_CALL"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_ORIG_SUBSCRIBED_TRF_CALL"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_TERM_CONV_CALL"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_TERM_STREAM_CALL"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_TERM_INTERACT_CALL"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_TERM_BACKGND_CALL"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_EMERGENCY_CALL"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_INTER_RAT_CELL_RESELECT"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_INTER_RAT_CELL_CHANGE_ORDER"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_REGISTRATION"])
  {
    v4 = 12;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_DETACH"])
  {
    v4 = 13;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_HI_PRI_SIGNALLING"])
  {
    v4 = 14;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_LOW_PRI_SIGNALLING"])
  {
    v4 = 15;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_CALL_RE_ESTABLISH"])
  {
    v4 = 16;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_TERM_HI_SIGNALLING"])
  {
    v4 = 17;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_TERM_LOW_SIGNALLING"])
  {
    v4 = 18;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_TERM_UNKNOWN"])
  {
    v4 = 19;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_MBMS_RECEPTION"])
  {
    v4 = 20;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_MBMS_PTP_RB_REQUEST"])
  {
    v4 = 21;
  }

  else if ([causeCopy isEqualToString:@"KRRC_EST_DELAY_TOLERANT_ACCESS"])
  {
    v4 = 22;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)releaseCause
{
  if ((*&self->_has & 4) != 0)
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsReleaseCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"KRRC_REL_OTHER_CAUSE"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_NO_CAUSE"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_NO_CELL"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_INACTIVE"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_NORMAL_EVENT"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_CELL_BARRED"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_CELL_CHANGED"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_ACCESS_NOT_ALLOWED"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_RRC_CONN_ESTABLISHMENT_FAILURE"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_RELEASE_OOSA"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_SIGN_CONN_REL"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_CONN_REJECT_REDIRECTION"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_NAS_TRIGGERED_ABORT"])
  {
    v4 = 12;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_CONN_REL_LOWER_LAYER_FAILURE_DL"])
  {
    v4 = 13;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_CONN_REL_LOWER_LAYER_FAILURE_UL"])
  {
    v4 = 14;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_HO_FROM_UTRAN_REVERT_BACK_SYNC_FAIL"])
  {
    v4 = 15;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_CONN_REJECT_CONGESTION"])
  {
    v4 = 16;
  }

  else if ([causeCopy isEqualToString:@"KRRC_REL_CONN_REJECT_UNSPECIFIED"])
  {
    v4 = 17;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularWcdmaRrcConnectionState;
  v4 = [(KCellularWcdmaRrcConnectionState *)&v8 description];
  dictionaryRepresentation = [(KCellularWcdmaRrcConnectionState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  state = self->_state;
  if (state >= 0xB)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_state];
  }

  else
  {
    v9 = off_27825ADE8[state];
  }

  [dictionary setObject:v9 forKey:@"state"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_15:
  establishmentCause = self->_establishmentCause;
  if (establishmentCause >= 0x17)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_establishmentCause];
  }

  else
  {
    v11 = off_27825AE40[establishmentCause];
  }

  [dictionary setObject:v11 forKey:@"establishment_cause"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  releaseCause = self->_releaseCause;
  if (releaseCause >= 0x12)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_releaseCause];
  }

  else
  {
    v13 = off_27825AEF8[releaseCause];
  }

  [dictionary setObject:v13 forKey:@"release_cause"];

  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [dictionary setObject:v5 forKey:@"subs_id"];

LABEL_7:

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
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  state = self->_state;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  establishmentCause = self->_establishmentCause;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  releaseCause = self->_releaseCause;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 32) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 6) = self->_state;
  *(toCopy + 32) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(toCopy + 4) = self->_establishmentCause;
  *(toCopy + 32) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  *(toCopy + 5) = self->_releaseCause;
  *(toCopy + 32) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(toCopy + 7) = self->_subsId;
    *(toCopy + 32) |= 0x10u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_state;
  *(result + 32) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 4) = self->_establishmentCause;
  *(result + 32) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 5) = self->_releaseCause;
  *(result + 32) |= 4u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 7) = self->_subsId;
  *(result + 32) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 32) & 8) == 0 || self->_state != *(equalCopy + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 32) & 8) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_establishmentCause != *(equalCopy + 4))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_releaseCause != *(equalCopy + 5))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_26;
  }

  v5 = (*(equalCopy + 32) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 32) & 0x10) == 0 || self->_subsId != *(equalCopy + 7))
    {
      goto LABEL_26;
    }

    v5 = 1;
  }

LABEL_27:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_state;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_establishmentCause;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_releaseCause;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_subsId;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_state = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 32);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_establishmentCause = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 32);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_releaseCause = *(fromCopy + 5);
  *&self->_has |= 4u;
  if ((*(fromCopy + 32) & 0x10) != 0)
  {
LABEL_6:
    self->_subsId = *(fromCopy + 7);
    *&self->_has |= 0x10u;
  }

LABEL_7:
}

@end