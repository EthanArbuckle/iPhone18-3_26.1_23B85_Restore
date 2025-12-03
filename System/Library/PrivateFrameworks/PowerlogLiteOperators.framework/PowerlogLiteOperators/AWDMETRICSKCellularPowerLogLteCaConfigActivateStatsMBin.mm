@interface AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCcActivated:(id)activated;
- (int)StringAsCcConfigured:(id)configured;
- (int)StringAsDirection:(id)direction;
- (int)ccActivated;
- (int)ccConfigured;
- (int)direction;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCcConfigured:(BOOL)configured;
- (void)setHasDirection:(BOOL)direction;
- (void)setHasDuration:(BOOL)duration;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin

- (int)ccConfigured
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_ccConfigured;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCcConfigured:(BOOL)configured
{
  if (configured)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsCcConfigured:(id)configured
{
  configuredCopy = configured;
  if ([configuredCopy isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else if ([configuredCopy isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([configuredCopy isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([configuredCopy isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([configuredCopy isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([configuredCopy isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([configuredCopy isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([configuredCopy isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([configuredCopy isEqualToString:@"SCC_7"])
  {
    v4 = 8;
  }

  else if ([configuredCopy isEqualToString:@"NOT_LTE"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)ccActivated
{
  if (*&self->_has)
  {
    return self->_ccActivated;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCcActivated:(id)activated
{
  activatedCopy = activated;
  if ([activatedCopy isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else if ([activatedCopy isEqualToString:@"PCC"])
  {
    v4 = 1;
  }

  else if ([activatedCopy isEqualToString:@"SCC_1"])
  {
    v4 = 2;
  }

  else if ([activatedCopy isEqualToString:@"SCC_2"])
  {
    v4 = 3;
  }

  else if ([activatedCopy isEqualToString:@"SCC_3"])
  {
    v4 = 4;
  }

  else if ([activatedCopy isEqualToString:@"SCC_4"])
  {
    v4 = 5;
  }

  else if ([activatedCopy isEqualToString:@"SCC_5"])
  {
    v4 = 6;
  }

  else if ([activatedCopy isEqualToString:@"SCC_6"])
  {
    v4 = 7;
  }

  else if ([activatedCopy isEqualToString:@"SCC_7"])
  {
    v4 = 8;
  }

  else if ([activatedCopy isEqualToString:@"NOT_LTE"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)direction
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_direction;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDirection:(BOOL)direction
{
  if (direction)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsDirection:(id)direction
{
  directionCopy = direction;
  if ([directionCopy isEqualToString:@"Downlink"])
  {
    v4 = 0;
  }

  else if ([directionCopy isEqualToString:@"Uplink"])
  {
    v4 = 1;
  }

  else if ([directionCopy isEqualToString:@"NA"])
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
  v8.super_class = AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin;
  v4 = [(AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogLteCaConfigActivateStatsMBin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    ccConfigured = self->_ccConfigured;
    if (ccConfigured >= 0xA)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ccConfigured];
    }

    else
    {
      v6 = off_2782611B0[ccConfigured];
    }

    [dictionary setObject:v6 forKey:@"cc_configured"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
      [dictionary setObject:v9 forKey:@"duration"];

      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_19;
      }

LABEL_15:
      direction = self->_direction;
      if (direction >= 3)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_direction];
      }

      else
      {
        v11 = off_278261200[direction];
      }

      [dictionary setObject:v11 forKey:@"direction"];

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  ccActivated = self->_ccActivated;
  if (ccActivated >= 0xA)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ccActivated];
  }

  else
  {
    v8 = off_2782611B0[ccActivated];
  }

  [dictionary setObject:v8 forKey:@"cc_activated"];

  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_19:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    ccConfigured = self->_ccConfigured;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  ccActivated = self->_ccActivated;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    direction = self->_direction;
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[3] = self->_ccConfigured;
    *(toCopy + 24) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[2] = self->_ccActivated;
  *(toCopy + 24) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  toCopy[5] = self->_duration;
  *(toCopy + 24) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    toCopy[4] = self->_direction;
    *(toCopy + 24) |= 4u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_ccConfigured;
    *(result + 24) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_ccActivated;
  *(result + 24) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 5) = self->_duration;
  *(result + 24) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 4) = self->_direction;
  *(result + 24) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_ccConfigured != *(equalCopy + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_ccActivated != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 24) & 8) == 0 || self->_duration != *(equalCopy + 5))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 8) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(equalCopy + 24) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0 || self->_direction != *(equalCopy + 4))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_ccConfigured;
    if (*&self->_has)
    {
LABEL_3:
      v3 = 2654435761 * self->_ccActivated;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_duration;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_direction;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 2) != 0)
  {
    self->_ccConfigured = *(fromCopy + 3);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 24);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_ccActivated = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 24);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_duration = *(fromCopy + 5);
  *&self->_has |= 8u;
  if ((*(fromCopy + 24) & 4) != 0)
  {
LABEL_5:
    self->_direction = *(fromCopy + 4);
    *&self->_has |= 4u;
  }

LABEL_6:
}

@end