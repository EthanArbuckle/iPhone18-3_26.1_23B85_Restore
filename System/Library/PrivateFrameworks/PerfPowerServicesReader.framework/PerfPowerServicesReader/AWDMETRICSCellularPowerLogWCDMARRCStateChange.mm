@interface AWDMETRICSCellularPowerLogWCDMARRCStateChange
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
- (void)setHasPrevState:(BOOL)a3;
- (void)setHasPrevStateDurMs:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSCellularPowerLogWCDMARRCStateChange

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
  if ([v3 isEqualToString:@"DISCONNECTED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CONNECTING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CELL_FACH"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CELL_DCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CELL_PCH"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"URA_PCH"])
  {
    v4 = 5;
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
  if ([v3 isEqualToString:@"DISCONNECTED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CONNECTING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CELL_FACH"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CELL_DCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CELL_PCH"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"URA_PCH"])
  {
    v4 = 5;
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
  if ([v3 isEqualToString:@"ORIG_CONV_CALL"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ORIG_STREAM_CALL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ORIG_INTERACT_CALL"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ORIG_BACKGND_CALL"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ORIG_SUBSCRIBED_TRF_CALL"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TERM_CONV_CALL"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TERM_STREAM_CALL"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"TERM_INTERACT_CALL"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"TERM_BACKGND_CALL"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"EMERGENCY_CALL"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"INTER_RAT_CELL_RESELECT"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"INTER_RAT_CELL_CHANGE_ORDER"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"REGISTRATION"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"DETACH"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"HI_PRI_SIGNALLING"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"LOW_PRI_SIGNALLING"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"CALL_RE_ESTABLISH"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"TERM_HI_SIGNALLING"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"TERM_LOW_SIGNALLING"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"TERM_UNKNOWN"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 254;
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
  v8.super_class = AWDMETRICSCellularPowerLogWCDMARRCStateChange;
  v4 = [(AWDMETRICSCellularPowerLogWCDMARRCStateChange *)&v8 description];
  v5 = [(AWDMETRICSCellularPowerLogWCDMARRCStateChange *)self dictionaryRepresentation];
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
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  state = self->_state;
  if (state >= 6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_state];
  }

  else
  {
    v7 = off_279A111C8[state];
  }

  [v3 setObject:v7 forKey:@"state"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_13:
  prevState = self->_prevState;
  if (prevState >= 6)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prevState];
  }

  else
  {
    v9 = off_279A111C8[prevState];
  }

  [v3 setObject:v9 forKey:@"prev_state"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevStateDurMs];
  [v3 setObject:v10 forKey:@"prev_state_dur_ms"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v11 forKey:@"subs_id"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_43;
  }

LABEL_19:
  cause = self->_cause;
  v13 = @"ORIG_CONV_CALL";
  switch(cause)
  {
    case 0:
      break;
    case 1:
      v13 = @"ORIG_STREAM_CALL";
      break;
    case 2:
      v13 = @"ORIG_INTERACT_CALL";
      break;
    case 3:
      v13 = @"ORIG_BACKGND_CALL";
      break;
    case 4:
      v13 = @"ORIG_SUBSCRIBED_TRF_CALL";
      break;
    case 5:
      v13 = @"TERM_CONV_CALL";
      break;
    case 6:
      v13 = @"TERM_STREAM_CALL";
      break;
    case 7:
      v13 = @"TERM_INTERACT_CALL";
      break;
    case 8:
      v13 = @"TERM_BACKGND_CALL";
      break;
    case 9:
      v13 = @"EMERGENCY_CALL";
      break;
    case 10:
      v13 = @"INTER_RAT_CELL_RESELECT";
      break;
    case 11:
      v13 = @"INTER_RAT_CELL_CHANGE_ORDER";
      break;
    case 12:
      v13 = @"REGISTRATION";
      break;
    case 13:
      v13 = @"DETACH";
      break;
    case 14:
      v13 = @"HI_PRI_SIGNALLING";
      break;
    case 15:
      v13 = @"LOW_PRI_SIGNALLING";
      break;
    case 16:
      v13 = @"CALL_RE_ESTABLISH";
      break;
    case 17:
      v13 = @"TERM_HI_SIGNALLING";
      break;
    case 18:
      v13 = @"TERM_LOW_SIGNALLING";
      break;
    case 19:
      v13 = @"TERM_UNKNOWN";
      break;
    default:
      if (cause == 254)
      {
        v13 = @"NONE";
      }

      else
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", cause];
      }

      break;
  }

  [v3 setObject:v13 forKey:@"cause"];

LABEL_43:

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  state = self->_state;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  prevState = self->_prevState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  prevStateDurMs = self->_prevStateDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    cause = self->_cause;
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
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
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 7) = self->_state;
  *(v4 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v4 + 5) = self->_prevState;
  *(v4 + 36) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v4 + 6) = self->_prevStateDurMs;
  *(v4 + 36) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(v4 + 8) = self->_subsId;
  *(v4 + 36) |= 0x20u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    *(v4 + 4) = self->_cause;
    *(v4 + 36) |= 2u;
  }

LABEL_8:
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
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_state;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 5) = self->_prevState;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 6) = self->_prevStateDurMs;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 8) = self->_subsId;
  *(result + 36) |= 0x20u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 4) = self->_cause;
  *(result + 36) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0 || self->_state != *(v4 + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_prevState != *(v4 + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0 || self->_prevStateDurMs != *(v4 + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 36) & 8) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 36) & 0x20) == 0 || self->_subsId != *(v4 + 8))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 36) & 0x20) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(v4 + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_cause != *(v4 + 4))
    {
      goto LABEL_31;
    }

    v5 = 1;
  }

LABEL_32:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_state;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_prevState;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_prevStateDurMs;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_subsId;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_cause;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
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
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 36) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_state = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_prevState = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 36);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_prevStateDurMs = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_subsId = *(v4 + 8);
  *&self->_has |= 0x20u;
  if ((*(v4 + 36) & 2) != 0)
  {
LABEL_7:
    self->_cause = *(v4 + 4);
    *&self->_has |= 2u;
  }

LABEL_8:
}

@end