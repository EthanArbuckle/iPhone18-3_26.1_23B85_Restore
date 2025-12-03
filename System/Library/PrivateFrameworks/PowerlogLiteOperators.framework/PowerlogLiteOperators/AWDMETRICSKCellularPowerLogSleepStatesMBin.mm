@interface AWDMETRICSKCellularPowerLogSleepStatesMBin
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDeployment:(id)deployment;
- (int)StringAsRat:(id)rat;
- (int)StringAsRrcState:(id)state;
- (int)StringAsSocSleepState:(id)state;
- (int)deployment;
- (int)rat;
- (int)rrcState;
- (int)socSleepState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDeployment:(BOOL)deployment;
- (void)setHasDurationMs:(BOOL)ms;
- (void)setHasRat:(BOOL)rat;
- (void)setHasRrcState:(BOOL)state;
- (void)setHasSocSleepState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogSleepStatesMBin

- (int)rat
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_rat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRat:(BOOL)rat
{
  if (rat)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsRat:(id)rat
{
  ratCopy = rat;
  if ([ratCopy isEqualToString:@"RAT_INVALID"])
  {
    v4 = 0;
  }

  else if ([ratCopy isEqualToString:@"RAT_GSM"])
  {
    v4 = 1;
  }

  else if ([ratCopy isEqualToString:@"RAT_UMTS"])
  {
    v4 = 2;
  }

  else if ([ratCopy isEqualToString:@"RAT_LTE"])
  {
    v4 = 3;
  }

  else if ([ratCopy isEqualToString:@"RAT_NR5G"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)rrcState
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_rrcState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRrcState:(BOOL)state
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

- (int)StringAsRrcState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"IDLE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [stateCopy isEqualToString:@"CONNECTED"];
  }

  return v4;
}

- (int)deployment
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_deployment;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDeployment:(BOOL)deployment
{
  if (deployment)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsDeployment:(id)deployment
{
  deploymentCopy = deployment;
  if ([deploymentCopy isEqualToString:@"DEPLOYMENT_SA"])
  {
    v4 = 0;
  }

  else if ([deploymentCopy isEqualToString:@"DEPLOYMENT_NSA"])
  {
    v4 = 1;
  }

  else if ([deploymentCopy isEqualToString:@"DEPLOYMENT_NRDC"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)socSleepState
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_socSleepState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSocSleepState:(BOOL)state
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

- (int)StringAsSocSleepState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"SOCSLP_AWAKE"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"SOCSLP_SLP_VCXO"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"SOCSLP_SLP_SOC"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"SOCSLP_SLP_S2R"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDurationMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogSleepStatesMBin;
  v4 = [(AWDMETRICSKCellularPowerLogSleepStatesMBin *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogSleepStatesMBin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    rat = self->_rat;
    if (rat >= 5)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rat];
    }

    else
    {
      v6 = off_278261610[rat];
    }

    [dictionary setObject:v6 forKey:@"rat"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  rrcState = self->_rrcState;
  if (rrcState)
  {
    if (rrcState == 1)
    {
      v8 = @"CONNECTED";
    }

    else
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rrcState];
    }
  }

  else
  {
    v8 = @"IDLE";
  }

  [dictionary setObject:v8 forKey:@"rrc_state"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_16:
  deployment = self->_deployment;
  if (deployment >= 3)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_deployment];
  }

  else
  {
    v10 = off_278261638[deployment];
  }

  [dictionary setObject:v10 forKey:@"deployment"];

  has = self->_has;
  if ((has & 0x20) != 0)
  {
LABEL_20:
    socSleepState = self->_socSleepState;
    if (socSleepState >= 4)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_socSleepState];
    }

    else
    {
      v12 = off_278261650[socSleepState];
    }

    [dictionary setObject:v12 forKey:@"soc_sleep_state"];

    has = self->_has;
  }

LABEL_24:
  if ((has & 4) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
    [dictionary setObject:v13 forKey:@"duration_ms"];

    has = self->_has;
  }

  if (has)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_count];
    [dictionary setObject:v14 forKey:@"count"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    rat = self->_rat;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  rrcState = self->_rrcState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  deployment = self->_deployment;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  socSleepState = self->_socSleepState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  durationMs = self->_durationMs;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_7:
    count = self->_count;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[5] = self->_rat;
    *(toCopy + 32) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  toCopy[6] = self->_rrcState;
  *(toCopy + 32) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  toCopy[3] = self->_deployment;
  *(toCopy + 32) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  toCopy[7] = self->_socSleepState;
  *(toCopy + 32) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  toCopy[4] = self->_durationMs;
  *(toCopy + 32) |= 4u;
  if (*&self->_has)
  {
LABEL_7:
    toCopy[2] = self->_count;
    *(toCopy + 32) |= 1u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 5) = self->_rat;
    *(result + 32) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  *(result + 6) = self->_rrcState;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 3) = self->_deployment;
  *(result + 32) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 7) = self->_socSleepState;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 4) = self->_durationMs;
  *(result + 32) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 2) = self->_count;
  *(result + 32) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 32) & 8) == 0 || self->_rat != *(equalCopy + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 32) & 8) != 0)
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 32) & 0x10) == 0 || self->_rrcState != *(equalCopy + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 32) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_deployment != *(equalCopy + 3))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 32) & 0x20) == 0 || self->_socSleepState != *(equalCopy + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 32) & 0x20) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_durationMs != *(equalCopy + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_count != *(equalCopy + 2))
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
  if ((*&self->_has & 8) != 0)
  {
    v2 = 2654435761 * self->_rat;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_rrcState;
      if ((*&self->_has & 2) != 0)
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
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_deployment;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_socSleepState;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_durationMs;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_count;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if ((v5 & 8) != 0)
  {
    self->_rat = *(fromCopy + 5);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 32);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(fromCopy + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_rrcState = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 32);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_deployment = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_socSleepState = *(fromCopy + 7);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 32);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_durationMs = *(fromCopy + 4);
  *&self->_has |= 4u;
  if (*(fromCopy + 32))
  {
LABEL_7:
    self->_count = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

LABEL_8:
}

@end