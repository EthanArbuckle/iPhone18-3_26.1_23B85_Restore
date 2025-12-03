@interface AWDMETRICSCellularPowerLogNRSARRCStateChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCause:(id)cause;
- (int)StringAsFr:(id)fr;
- (int)StringAsPrevState:(id)state;
- (int)StringAsState:(id)state;
- (int)cause;
- (int)fr;
- (int)prevState;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCause:(BOOL)cause;
- (void)setHasFr:(BOOL)fr;
- (void)setHasPrevState:(BOOL)state;
- (void)setHasPrevStateDurMs:(BOOL)ms;
- (void)setHasState:(BOOL)state;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSCellularPowerLogNRSARRCStateChange

- (int)state
{
  if ((*&self->_has & 0x20) != 0)
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
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"IDLE_NOT_CAMPED"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"CONNECTED"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"INACTIVE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)prevState
{
  if ((*&self->_has & 8) != 0)
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsPrevState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"IDLE_NOT_CAMPED"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"CONNECTED"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"INACTIVE"])
  {
    v4 = 3;
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

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
  if ([causeCopy isEqualToString:@"EMERGENCY"])
  {
    v4 = 0;
  }

  else if ([causeCopy isEqualToString:@"HIGH_PRIORITY_ACCESS"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"MT_ACCESS"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"MO_SIGNALLING"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"MO_DATA"])
  {
    v4 = 4;
  }

  else if ([causeCopy isEqualToString:@"MO_VOICE_CALL"])
  {
    v4 = 5;
  }

  else if ([causeCopy isEqualToString:@"MO_VIDEO_CALL"])
  {
    v4 = 6;
  }

  else if ([causeCopy isEqualToString:@"MO_SMS"])
  {
    v4 = 7;
  }

  else if ([causeCopy isEqualToString:@"MPA_PRIORITY_ACCESS"])
  {
    v4 = 8;
  }

  else if ([causeCopy isEqualToString:@"MCS_PRIORITY_ACCESS"])
  {
    v4 = 9;
  }

  else if ([causeCopy isEqualToString:@"NONE"])
  {
    v4 = 254;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)fr
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_fr;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFr:(BOOL)fr
{
  if (fr)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsFr:(id)fr
{
  frCopy = fr;
  if ([frCopy isEqualToString:@"SUB6"])
  {
    v4 = 0;
  }

  else if ([frCopy isEqualToString:@"MMWAVE"])
  {
    v4 = 1;
  }

  else if ([frCopy isEqualToString:@"INVALID"])
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
  v8.super_class = AWDMETRICSCellularPowerLogNRSARRCStateChange;
  v4 = [(AWDMETRICSCellularPowerLogNRSARRCStateChange *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSCellularPowerLogNRSARRCStateChange *)self dictionaryRepresentation];
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
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  state = self->_state;
  if (state >= 4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_state];
  }

  else
  {
    v7 = off_2782599D8[state];
  }

  [dictionary setObject:v7 forKey:@"state"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_14:
  prevState = self->_prevState;
  if (prevState >= 4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_prevState];
  }

  else
  {
    v9 = off_2782599D8[prevState];
  }

  [dictionary setObject:v9 forKey:@"prev_state"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_prevStateDurMs];
  [dictionary setObject:v10 forKey:@"prev_state_dur_ms"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    cause = self->_cause;
    if (cause <= 4)
    {
      if (cause > 1)
      {
        if (cause == 2)
        {
          v13 = @"MT_ACCESS";
        }

        else if (cause == 3)
        {
          v13 = @"MO_SIGNALLING";
        }

        else
        {
          v13 = @"MO_DATA";
        }

LABEL_44:
        [dictionary setObject:v13 forKey:@"cause"];

        if ((*&self->_has & 4) == 0)
        {
          goto LABEL_49;
        }

LABEL_45:
        fr = self->_fr;
        if (fr >= 3)
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fr];
        }

        else
        {
          v15 = off_2782599F8[fr];
        }

        [dictionary setObject:v15 forKey:@"fr"];

        goto LABEL_49;
      }

      if (!cause)
      {
        v13 = @"EMERGENCY";
        goto LABEL_44;
      }

      if (cause == 1)
      {
        v13 = @"HIGH_PRIORITY_ACCESS";
        goto LABEL_44;
      }
    }

    else
    {
      if (cause <= 7)
      {
        if (cause == 5)
        {
          v13 = @"MO_VOICE_CALL";
        }

        else if (cause == 6)
        {
          v13 = @"MO_VIDEO_CALL";
        }

        else
        {
          v13 = @"MO_SMS";
        }

        goto LABEL_44;
      }

      switch(cause)
      {
        case 8:
          v13 = @"MPA_PRIORITY_ACCESS";
          goto LABEL_44;
        case 9:
          v13 = @"MCS_PRIORITY_ACCESS";
          goto LABEL_44;
        case 254:
          v13 = @"NONE";
          goto LABEL_44;
      }
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_cause];
    goto LABEL_44;
  }

LABEL_19:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [dictionary setObject:v11 forKey:@"subs_id"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((has & 4) != 0)
  {
    goto LABEL_45;
  }

LABEL_49:

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
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  state = self->_state;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  prevState = self->_prevState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  prevStateDurMs = self->_prevStateDurMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  cause = self->_cause;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    fr = self->_fr;
    PBDataWriterWriteInt32Field();
  }

LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 40) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  *(toCopy + 8) = self->_state;
  *(toCopy + 40) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(toCopy + 6) = self->_prevState;
  *(toCopy + 40) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(toCopy + 7) = self->_prevStateDurMs;
  *(toCopy + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(toCopy + 9) = self->_subsId;
  *(toCopy + 40) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  *(toCopy + 4) = self->_cause;
  *(toCopy + 40) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(toCopy + 5) = self->_fr;
    *(toCopy + 40) |= 4u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 40) |= 1u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  *(result + 8) = self->_state;
  *(result + 40) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 6) = self->_prevState;
  *(result + 40) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 7) = self->_prevStateDurMs;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 9) = self->_subsId;
  *(result + 40) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 4) = self->_cause;
  *(result + 40) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 5) = self->_fr;
  *(result + 40) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 40) & 0x20) == 0 || self->_state != *(equalCopy + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 0x20) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_prevState != *(equalCopy + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 40) & 0x10) == 0 || self->_prevStateDurMs != *(equalCopy + 7))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 40) & 0x40) == 0 || self->_subsId != *(equalCopy + 9))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 0x40) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_cause != *(equalCopy + 4))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_36;
  }

  v5 = (*(equalCopy + 40) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_fr != *(equalCopy + 5))
    {
      goto LABEL_36;
    }

    v5 = 1;
  }

LABEL_37:

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
      v3 = 2654435761 * self->_state;
      if ((*&self->_has & 8) != 0)
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
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_prevState;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_prevStateDurMs;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_subsId;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
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
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_fr;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 40);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(fromCopy + 40) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_state = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_prevState = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_prevStateDurMs = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_subsId = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 40);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_cause = *(fromCopy + 4);
  *&self->_has |= 2u;
  if ((*(fromCopy + 40) & 4) != 0)
  {
LABEL_8:
    self->_fr = *(fromCopy + 5);
    *&self->_has |= 4u;
  }

LABEL_9:
}

@end