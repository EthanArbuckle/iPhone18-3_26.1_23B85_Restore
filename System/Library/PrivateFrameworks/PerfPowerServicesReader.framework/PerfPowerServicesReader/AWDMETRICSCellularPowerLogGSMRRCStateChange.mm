@interface AWDMETRICSCellularPowerLogGSMRRCStateChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCause:(id)cause;
- (int)StringAsPrevState:(id)state;
- (int)StringAsState:(id)state;
- (int)cause;
- (int)prevState;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCause:(BOOL)cause;
- (void)setHasPrevState:(BOOL)state;
- (void)setHasPrevStateDurMs:(BOOL)ms;
- (void)setHasState:(BOOL)state;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSCellularPowerLogGSMRRCStateChange

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

- (void)setHasState:(BOOL)state
{
  if (state)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"INACTIVE"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"SUSPENDED"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"SCAN"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"IDLE"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"CONNECTING"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"PCH"])
  {
    v4 = 5;
  }

  else if ([stateCopy isEqualToString:@"FACH"])
  {
    v4 = 6;
  }

  else if ([stateCopy isEqualToString:@"DCH"])
  {
    v4 = 7;
  }

  else if ([stateCopy isEqualToString:@"CONNECTED"])
  {
    v4 = 8;
  }

  else if ([stateCopy isEqualToString:@"CLOSING"])
  {
    v4 = 9;
  }

  else if ([stateCopy isEqualToString:@"PWR_SAVE_STATE"])
  {
    v4 = 10;
  }

  else if ([stateCopy isEqualToString:@"CELL_SEL_RESEL"])
  {
    v4 = 11;
  }

  else if ([stateCopy isEqualToString:@"IRAT"])
  {
    v4 = 12;
  }

  else if ([stateCopy isEqualToString:@"BCH"])
  {
    v4 = 13;
  }

  else if ([stateCopy isEqualToString:@"PCH_BPLMN"])
  {
    v4 = 14;
  }

  else if ([stateCopy isEqualToString:@"CS_CONNECTED"])
  {
    v4 = 15;
  }

  else if ([stateCopy isEqualToString:@"PS_CONNECTED"])
  {
    v4 = 16;
  }

  else if ([stateCopy isEqualToString:@"ENDC_ON"])
  {
    v4 = 17;
  }

  else if ([stateCopy isEqualToString:@"ENDC_OFF"])
  {
    v4 = 18;
  }

  else if ([stateCopy isEqualToString:@"CS_END"])
  {
    v4 = 19;
  }

  else if ([stateCopy isEqualToString:@"PS_END"])
  {
    v4 = 20;
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

- (void)setHasPrevState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsPrevState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"INACTIVE"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"SUSPENDED"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"SCAN"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"IDLE"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"CONNECTING"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"PCH"])
  {
    v4 = 5;
  }

  else if ([stateCopy isEqualToString:@"FACH"])
  {
    v4 = 6;
  }

  else if ([stateCopy isEqualToString:@"DCH"])
  {
    v4 = 7;
  }

  else if ([stateCopy isEqualToString:@"CONNECTED"])
  {
    v4 = 8;
  }

  else if ([stateCopy isEqualToString:@"CLOSING"])
  {
    v4 = 9;
  }

  else if ([stateCopy isEqualToString:@"PWR_SAVE_STATE"])
  {
    v4 = 10;
  }

  else if ([stateCopy isEqualToString:@"CELL_SEL_RESEL"])
  {
    v4 = 11;
  }

  else if ([stateCopy isEqualToString:@"IRAT"])
  {
    v4 = 12;
  }

  else if ([stateCopy isEqualToString:@"BCH"])
  {
    v4 = 13;
  }

  else if ([stateCopy isEqualToString:@"PCH_BPLMN"])
  {
    v4 = 14;
  }

  else if ([stateCopy isEqualToString:@"CS_CONNECTED"])
  {
    v4 = 15;
  }

  else if ([stateCopy isEqualToString:@"PS_CONNECTED"])
  {
    v4 = 16;
  }

  else if ([stateCopy isEqualToString:@"ENDC_ON"])
  {
    v4 = 17;
  }

  else if ([stateCopy isEqualToString:@"ENDC_OFF"])
  {
    v4 = 18;
  }

  else if ([stateCopy isEqualToString:@"CS_END"])
  {
    v4 = 19;
  }

  else if ([stateCopy isEqualToString:@"PS_END"])
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPrevStateDurMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
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

- (void)setHasCause:(BOOL)cause
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

- (int)StringAsCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"MO_FULL_SPEECH"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"MO_HALF_SPEECH"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"MO_DATA_9600"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"MO_DATA_4800"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"MO_DATA_2400"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"SHORT_MESSAGE"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"SUPPLEMENTARY_SERVICE"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"LOCATION_UPDATE"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"IMSI_DETACH"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"CALL_REEST"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"EMERGENCY_CALL"])
  {
    v4 = 10;
  }

  else if ([causeCopy isEqualToString:@"ANSWER_TO_PAGING"])
  {
    v4 = 11;
  }

  else if ([causeCopy isEqualToString:@"NONE"])
  {
    v4 = 254;
  }

  else if ([causeCopy isEqualToString:@"NO_CNM_SERVICE"])
  {
    v4 = 255;
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
  v8.super_class = AWDMETRICSCellularPowerLogGSMRRCStateChange;
  v4 = [(AWDMETRICSCellularPowerLogGSMRRCStateChange *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSCellularPowerLogGSMRRCStateChange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

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
  if (state >= 0x15)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_state];
  }

  else
  {
    v7 = off_279A10D50[state];
  }

  [dictionary setObject:v7 forKey:@"state"];

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
  if (prevState >= 0x15)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prevState];
  }

  else
  {
    v9 = off_279A10D50[prevState];
  }

  [dictionary setObject:v9 forKey:@"prev_state"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [dictionary setObject:v11 forKey:@"subs_id"];

    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_51;
    }

LABEL_19:
    cause = self->_cause;
    if (cause > 6)
    {
      if (cause <= 9)
      {
        if (cause == 7)
        {
          v13 = @"LOCATION_UPDATE";
        }

        else if (cause == 8)
        {
          v13 = @"IMSI_DETACH";
        }

        else
        {
          v13 = @"CALL_REEST";
        }

        goto LABEL_50;
      }

      if (cause > 253)
      {
        if (cause == 254)
        {
          v13 = @"NONE";
          goto LABEL_50;
        }

        if (cause == 255)
        {
          v13 = @"NO_CNM_SERVICE";
          goto LABEL_50;
        }
      }

      else
      {
        if (cause == 10)
        {
          v13 = @"EMERGENCY_CALL";
          goto LABEL_50;
        }

        if (cause == 11)
        {
          v13 = @"ANSWER_TO_PAGING";
LABEL_50:
          [dictionary setObject:v13 forKey:@"cause"];

          goto LABEL_51;
        }
      }
    }

    else
    {
      if (cause > 2)
      {
        if (cause > 4)
        {
          if (cause == 5)
          {
            v13 = @"SHORT_MESSAGE";
          }

          else
          {
            v13 = @"SUPPLEMENTARY_SERVICE";
          }
        }

        else if (cause == 3)
        {
          v13 = @"MO_DATA_4800";
        }

        else
        {
          v13 = @"MO_DATA_2400";
        }

        goto LABEL_50;
      }

      switch(cause)
      {
        case 0:
          v13 = @"MO_FULL_SPEECH";
          goto LABEL_50;
        case 1:
          v13 = @"MO_HALF_SPEECH";
          goto LABEL_50;
        case 2:
          v13 = @"MO_DATA_9600";
          goto LABEL_50;
      }
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_cause];
    goto LABEL_50;
  }

LABEL_17:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevStateDurMs];
  [dictionary setObject:v10 forKey:@"prev_state_dur_ms"];

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((has & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_51:

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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 36) |= 1u;
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

  *(toCopy + 7) = self->_state;
  *(toCopy + 36) |= 0x10u;
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
  *(toCopy + 5) = self->_prevState;
  *(toCopy + 36) |= 4u;
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
  *(toCopy + 6) = self->_prevStateDurMs;
  *(toCopy + 36) |= 8u;
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
  *(toCopy + 8) = self->_subsId;
  *(toCopy + 36) |= 0x20u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    *(toCopy + 4) = self->_cause;
    *(toCopy + 36) |= 2u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 36) & 0x10) == 0 || self->_state != *(equalCopy + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_prevState != *(equalCopy + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) == 0 || self->_prevStateDurMs != *(equalCopy + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 8) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 36) & 0x20) == 0 || self->_subsId != *(equalCopy + 8))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 0x20) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(equalCopy + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_cause != *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
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

  else if ((*(fromCopy + 36) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_state = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 36);
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
  self->_prevState = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 36);
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
  self->_prevStateDurMs = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 36);
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
  self->_subsId = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 36) & 2) != 0)
  {
LABEL_7:
    self->_cause = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

LABEL_8:
}

@end