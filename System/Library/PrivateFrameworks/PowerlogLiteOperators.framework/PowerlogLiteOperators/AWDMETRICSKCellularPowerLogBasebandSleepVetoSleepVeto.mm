@interface AWDMETRICSKCellularPowerLogBasebandSleepVetoSleepVeto
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)state;
- (int)StringAsSubsystem:(id)subsystem;
- (int)state;
- (int)subsystem;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasState:(BOOL)state;
- (void)setHasSubsystem:(BOOL)subsystem;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogBasebandSleepVetoSleepVeto

- (int)subsystem
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_subsystem;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSubsystem:(BOOL)subsystem
{
  if (subsystem)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsSubsystem:(id)subsystem
{
  subsystemCopy = subsystem;
  if ([subsystemCopy isEqualToString:@"CPS"])
  {
    v4 = 0;
  }

  else if ([subsystemCopy isEqualToString:@"L1C"])
  {
    v4 = 1;
  }

  else if ([subsystemCopy isEqualToString:@"CDP_DL"])
  {
    v4 = 2;
  }

  else if ([subsystemCopy isEqualToString:@"CDP_UL"])
  {
    v4 = 3;
  }

  else if ([subsystemCopy isEqualToString:@"CDP_HOST"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)state
{
  if ((*&self->_has & 2) != 0)
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
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"CPU_CLK_GATE"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"CPU_WRAP_PWR_GATE"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"SOCSLP_SLP_VCXO_OFF"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"SOCSLP_SLP_SOC_ON"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"SOCSLP_SLP_S2R"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"NO_BLOCKER"])
  {
    v4 = 5;
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
  v8.super_class = AWDMETRICSKCellularPowerLogBasebandSleepVetoSleepVeto;
  v4 = [(AWDMETRICSKCellularPowerLogBasebandSleepVetoSleepVeto *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogBasebandSleepVetoSleepVeto *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  blockerName = self->_blockerName;
  if (blockerName)
  {
    [dictionary setObject:blockerName forKey:@"blocker_name"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    subsystem = self->_subsystem;
    if (subsystem >= 5)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_subsystem];
    }

    else
    {
      v10 = off_278259890[subsystem];
    }

    [v4 setObject:v10 forKey:@"subsystem"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  state = self->_state;
  if (state >= 6)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_state];
  }

  else
  {
    v12 = off_2782598B8[state];
  }

  [v4 setObject:v12 forKey:@"state"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
  [v4 setObject:v7 forKey:@"duration_ms"];

LABEL_7:

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_blockerName)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    subsystem = self->_subsystem;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  state = self->_state;
  PBDataWriterWriteInt32Field();
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_6:
    durationMs = self->_durationMs;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_blockerName)
  {
    v6 = toCopy;
    [toCopy setBlockerName:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 6) = self->_subsystem;
    *(toCopy + 28) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 5) = self->_state;
  *(toCopy + 28) |= 2u;
  if (*&self->_has)
  {
LABEL_6:
    *(toCopy + 4) = self->_durationMs;
    *(toCopy + 28) |= 1u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_blockerName copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 20) = self->_state;
    *(v5 + 28) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 24) = self->_subsystem;
  *(v5 + 28) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 16) = self->_durationMs;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  blockerName = self->_blockerName;
  if (blockerName | *(equalCopy + 1))
  {
    if (![(NSString *)blockerName isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_subsystem != *(equalCopy + 6))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_state != *(equalCopy + 5))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_18;
  }

  v6 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_durationMs != *(equalCopy + 4))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_blockerName hash];
  if ((*&self->_has & 4) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_subsystem;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_state;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_durationMs;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(AWDMETRICSKCellularPowerLogBasebandSleepVetoSleepVeto *)self setBlockerName:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 28);
  if ((v5 & 4) != 0)
  {
    self->_subsystem = *(fromCopy + 6);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 28);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 28) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_state = *(fromCopy + 5);
  *&self->_has |= 2u;
  if (*(fromCopy + 28))
  {
LABEL_6:
    self->_durationMs = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

LABEL_7:
}

@end