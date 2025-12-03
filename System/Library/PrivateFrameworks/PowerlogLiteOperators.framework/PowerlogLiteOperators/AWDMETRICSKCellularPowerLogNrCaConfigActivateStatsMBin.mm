@interface AWDMETRICSKCellularPowerLogNrCaConfigActivateStatsMBin
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCcActivated:(id)activated;
- (int)StringAsCcConfigured:(id)configured;
- (int)StringAsDirection:(id)direction;
- (int)StringAsFreqRange:(id)range;
- (int)ccActivated;
- (int)ccConfigured;
- (int)direction;
- (int)freqRange;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCcConfigured:(BOOL)configured;
- (void)setHasDirection:(BOOL)direction;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasFreqRange:(BOOL)range;
- (void)setHasIsEndc:(BOOL)endc;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogNrCaConfigActivateStatsMBin

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

  else if ([configuredCopy isEqualToString:@"SCC_8"])
  {
    v4 = 9;
  }

  else if ([configuredCopy isEqualToString:@"SCC_9"])
  {
    v4 = 10;
  }

  else if ([configuredCopy isEqualToString:@"SCC_10"])
  {
    v4 = 11;
  }

  else if ([configuredCopy isEqualToString:@"SCC_11"])
  {
    v4 = 12;
  }

  else if ([configuredCopy isEqualToString:@"SCC_12"])
  {
    v4 = 13;
  }

  else if ([configuredCopy isEqualToString:@"SCC_13"])
  {
    v4 = 14;
  }

  else if ([configuredCopy isEqualToString:@"SCC_14"])
  {
    v4 = 15;
  }

  else if ([configuredCopy isEqualToString:@"SCC_15"])
  {
    v4 = 16;
  }

  else if ([configuredCopy isEqualToString:@"SCC_16"])
  {
    v4 = 17;
  }

  else if ([configuredCopy isEqualToString:@"SCC_17"])
  {
    v4 = 18;
  }

  else if ([configuredCopy isEqualToString:@"SCC_18"])
  {
    v4 = 19;
  }

  else if ([configuredCopy isEqualToString:@"SCC_19"])
  {
    v4 = 20;
  }

  else if ([configuredCopy isEqualToString:@"SCC_20"])
  {
    v4 = 21;
  }

  else if ([configuredCopy isEqualToString:@"SCC_21"])
  {
    v4 = 22;
  }

  else if ([configuredCopy isEqualToString:@"SCC_22"])
  {
    v4 = 23;
  }

  else if ([configuredCopy isEqualToString:@"SCC_23"])
  {
    v4 = 24;
  }

  else if ([configuredCopy isEqualToString:@"SCC_24"])
  {
    v4 = 25;
  }

  else if ([configuredCopy isEqualToString:@"SCC_25"])
  {
    v4 = 26;
  }

  else if ([configuredCopy isEqualToString:@"SCC_26"])
  {
    v4 = 27;
  }

  else if ([configuredCopy isEqualToString:@"SCC_27"])
  {
    v4 = 28;
  }

  else if ([configuredCopy isEqualToString:@"SCC_28"])
  {
    v4 = 29;
  }

  else if ([configuredCopy isEqualToString:@"SCC_29"])
  {
    v4 = 30;
  }

  else if ([configuredCopy isEqualToString:@"SCC_30"])
  {
    v4 = 31;
  }

  else if ([configuredCopy isEqualToString:@"SCC_31"])
  {
    v4 = 32;
  }

  else if ([configuredCopy isEqualToString:@"NOT_NR"])
  {
    v4 = 33;
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

  else if ([activatedCopy isEqualToString:@"SCC_8"])
  {
    v4 = 9;
  }

  else if ([activatedCopy isEqualToString:@"SCC_9"])
  {
    v4 = 10;
  }

  else if ([activatedCopy isEqualToString:@"SCC_10"])
  {
    v4 = 11;
  }

  else if ([activatedCopy isEqualToString:@"SCC_11"])
  {
    v4 = 12;
  }

  else if ([activatedCopy isEqualToString:@"SCC_12"])
  {
    v4 = 13;
  }

  else if ([activatedCopy isEqualToString:@"SCC_13"])
  {
    v4 = 14;
  }

  else if ([activatedCopy isEqualToString:@"SCC_14"])
  {
    v4 = 15;
  }

  else if ([activatedCopy isEqualToString:@"SCC_15"])
  {
    v4 = 16;
  }

  else if ([activatedCopy isEqualToString:@"SCC_16"])
  {
    v4 = 17;
  }

  else if ([activatedCopy isEqualToString:@"SCC_17"])
  {
    v4 = 18;
  }

  else if ([activatedCopy isEqualToString:@"SCC_18"])
  {
    v4 = 19;
  }

  else if ([activatedCopy isEqualToString:@"SCC_19"])
  {
    v4 = 20;
  }

  else if ([activatedCopy isEqualToString:@"SCC_20"])
  {
    v4 = 21;
  }

  else if ([activatedCopy isEqualToString:@"SCC_21"])
  {
    v4 = 22;
  }

  else if ([activatedCopy isEqualToString:@"SCC_22"])
  {
    v4 = 23;
  }

  else if ([activatedCopy isEqualToString:@"SCC_23"])
  {
    v4 = 24;
  }

  else if ([activatedCopy isEqualToString:@"SCC_24"])
  {
    v4 = 25;
  }

  else if ([activatedCopy isEqualToString:@"SCC_25"])
  {
    v4 = 26;
  }

  else if ([activatedCopy isEqualToString:@"SCC_26"])
  {
    v4 = 27;
  }

  else if ([activatedCopy isEqualToString:@"SCC_27"])
  {
    v4 = 28;
  }

  else if ([activatedCopy isEqualToString:@"SCC_28"])
  {
    v4 = 29;
  }

  else if ([activatedCopy isEqualToString:@"SCC_29"])
  {
    v4 = 30;
  }

  else if ([activatedCopy isEqualToString:@"SCC_30"])
  {
    v4 = 31;
  }

  else if ([activatedCopy isEqualToString:@"SCC_31"])
  {
    v4 = 32;
  }

  else if ([activatedCopy isEqualToString:@"NOT_NR"])
  {
    v4 = 33;
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

- (void)setHasIsEndc:(BOOL)endc
{
  if (endc)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)freqRange
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_freqRange;
  }

  else
  {
    return 1;
  }
}

- (void)setHasFreqRange:(BOOL)range
{
  if (range)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsFreqRange:(id)range
{
  rangeCopy = range;
  if ([rangeCopy isEqualToString:@"FR1"])
  {
    v4 = 1;
  }

  else if ([rangeCopy isEqualToString:@"FR2"])
  {
    v4 = 2;
  }

  else if ([rangeCopy isEqualToString:@"FR1_FR2"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogNrCaConfigActivateStatsMBin;
  v4 = [(AWDMETRICSKCellularPowerLogNrCaConfigActivateStatsMBin *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogNrCaConfigActivateStatsMBin *)self dictionaryRepresentation];
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
    if (ccConfigured >= 0x22)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ccConfigured];
    }

    else
    {
      v6 = off_278262490[ccConfigured];
    }

    [dictionary setObject:v6 forKey:@"cc_configured"];

    has = self->_has;
  }

  if (has)
  {
    ccActivated = self->_ccActivated;
    if (ccActivated >= 0x22)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ccActivated];
    }

    else
    {
      v8 = off_278262490[ccActivated];
    }

    [dictionary setObject:v8 forKey:@"cc_activated"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
    [dictionary setObject:v9 forKey:@"duration"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_13:
      if ((has & 0x20) == 0)
      {
        goto LABEL_14;
      }

LABEL_21:
      v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEndc];
      [dictionary setObject:v12 forKey:@"is_endc"];

      if ((*&self->_has & 0x10) == 0)
      {
        goto LABEL_26;
      }

LABEL_22:
      v13 = self->_freqRange - 1;
      if (v13 >= 3)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_freqRange];
      }

      else
      {
        v14 = off_2782625B8[v13];
      }

      [dictionary setObject:v14 forKey:@"freq_range"];

      goto LABEL_26;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_13;
  }

  direction = self->_direction;
  if (direction >= 3)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_direction];
  }

  else
  {
    v11 = off_2782625A0[direction];
  }

  [dictionary setObject:v11 forKey:@"direction"];

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if ((has & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_26:

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

      goto LABEL_13;
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
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  direction = self->_direction;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  isEndc = self->_isEndc;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    freqRange = self->_freqRange;
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[3] = self->_ccConfigured;
    *(toCopy + 32) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[2] = self->_ccActivated;
  *(toCopy + 32) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  toCopy[5] = self->_duration;
  *(toCopy + 32) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  toCopy[4] = self->_direction;
  *(toCopy + 32) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(toCopy + 28) = self->_isEndc;
  *(toCopy + 32) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    toCopy[6] = self->_freqRange;
    *(toCopy + 32) |= 0x10u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_ccConfigured;
    *(result + 32) |= 2u;
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

  *(result + 2) = self->_ccActivated;
  *(result + 32) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 5) = self->_duration;
  *(result + 32) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 4) = self->_direction;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 28) = self->_isEndc;
  *(result + 32) |= 0x20u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 6) = self->_freqRange;
  *(result + 32) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_ccConfigured != *(equalCopy + 3))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_ccActivated != *(equalCopy + 2))
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 32) & 8) == 0 || self->_duration != *(equalCopy + 5))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 32) & 8) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_direction != *(equalCopy + 4))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_29;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(equalCopy + 32) & 0x20) == 0)
    {
      goto LABEL_24;
    }

LABEL_29:
    v5 = 0;
    goto LABEL_30;
  }

  if ((*(equalCopy + 32) & 0x20) == 0)
  {
    goto LABEL_29;
  }

  v7 = *(equalCopy + 28);
  if (self->_isEndc)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_29;
  }

LABEL_24:
  v5 = (*(equalCopy + 32) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 32) & 0x10) == 0 || self->_freqRange != *(equalCopy + 6))
    {
      goto LABEL_29;
    }

    v5 = 1;
  }

LABEL_30:

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

      goto LABEL_10;
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
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_duration;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_direction;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 0x10) != 0)
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
  v6 = 2654435761 * self->_isEndc;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_freqRange;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if ((v5 & 2) != 0)
  {
    self->_ccConfigured = *(fromCopy + 3);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(fromCopy + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_ccActivated = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_duration = *(fromCopy + 5);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 32);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_direction = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_isEndc = *(fromCopy + 28);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 32) & 0x10) != 0)
  {
LABEL_7:
    self->_freqRange = *(fromCopy + 6);
    *&self->_has |= 0x10u;
  }

LABEL_8:
}

@end