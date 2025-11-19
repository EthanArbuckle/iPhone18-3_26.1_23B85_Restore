@interface AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsComponent:(id)a3;
- (int)component;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAvgActivePowerMw:(BOOL)a3;
- (void)setHasAvgPowerMw:(BOOL)a3;
- (void)setHasComponent:(BOOL)a3;
- (void)setHasCumulatedEnergyMj:(BOOL)a3;
- (void)setHasPeakPowerMw:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats

- (int)component
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_component;
  }

  else
  {
    return 0;
  }
}

- (void)setHasComponent:(BOOL)a3
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

- (int)StringAsComponent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BBPMIC"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ET1"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ET2"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MMWHEAD1"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MMWHEAD2"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MMWHEAD3"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MMWHEAD4"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"OVERALL"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasAvgPowerMw:(BOOL)a3
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

- (void)setHasAvgActivePowerMw:(BOOL)a3
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

- (void)setHasPeakPowerMw:(BOOL)a3
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

- (void)setHasCumulatedEnergyMj:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats;
  v4 = [(AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogPowerEstimatorComponentPowerStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    component = self->_component;
    if (component >= 8)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_component];
    }

    else
    {
      v6 = off_279A0FDE0[component];
    }

    [v3 setObject:v6 forKey:@"component"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_avgPowerMw];
    [v3 setObject:v9 forKey:@"avg_power_mw"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_8:
      if ((has & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_avgActivePowerMw];
  [v3 setObject:v10 forKey:@"avg_active_power_mw"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_peakPowerMw];
  [v3 setObject:v11 forKey:@"peak_power_mw"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_18:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_cumulatedEnergyMj];
  [v3 setObject:v12 forKey:@"cumulated_energy_mj"];

  if (*&self->_has)
  {
LABEL_11:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_activeDurationMs];
    [v3 setObject:v7 forKey:@"active_duration_ms"];
  }

LABEL_12:

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    component = self->_component;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  avgPowerMw = self->_avgPowerMw;
  PBDataWriterWriteUint32Field();
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
  avgActivePowerMw = self->_avgActivePowerMw;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  peakPowerMw = self->_peakPowerMw;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  cumulatedEnergyMj = self->_cumulatedEnergyMj;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_7:
    activeDurationMs = self->_activeDurationMs;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[5] = self->_component;
    *(v4 + 32) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[4] = self->_avgPowerMw;
  *(v4 + 32) |= 4u;
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
  v4[3] = self->_avgActivePowerMw;
  *(v4 + 32) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[7] = self->_peakPowerMw;
  *(v4 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v4[6] = self->_cumulatedEnergyMj;
  *(v4 + 32) |= 0x10u;
  if (*&self->_has)
  {
LABEL_7:
    v4[2] = self->_activeDurationMs;
    *(v4 + 32) |= 1u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 5) = self->_component;
    *(result + 32) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_avgPowerMw;
  *(result + 32) |= 4u;
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
  *(result + 3) = self->_avgActivePowerMw;
  *(result + 32) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 7) = self->_peakPowerMw;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 6) = self->_cumulatedEnergyMj;
  *(result + 32) |= 0x10u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 2) = self->_activeDurationMs;
  *(result + 32) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) == 0 || self->_component != *(v4 + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 8) != 0)
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_avgPowerMw != *(v4 + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_avgActivePowerMw != *(v4 + 3))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 32) & 0x20) == 0 || self->_peakPowerMw != *(v4 + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 0x20) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 32) & 0x10) == 0 || self->_cumulatedEnergyMj != *(v4 + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 32) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_activeDurationMs != *(v4 + 2))
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
    v2 = 2654435761 * self->_component;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_avgPowerMw;
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
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_avgActivePowerMw;
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
    v5 = 2654435761 * self->_peakPowerMw;
    if ((*&self->_has & 0x10) != 0)
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
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_cumulatedEnergyMj;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_activeDurationMs;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 8) != 0)
  {
    self->_component = *(v4 + 5);
    *&self->_has |= 8u;
    v5 = *(v4 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_avgPowerMw = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 32);
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
  self->_avgActivePowerMw = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_peakPowerMw = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_cumulatedEnergyMj = *(v4 + 6);
  *&self->_has |= 0x10u;
  if (*(v4 + 32))
  {
LABEL_7:
    self->_activeDurationMs = *(v4 + 2);
    *&self->_has |= 1u;
  }

LABEL_8:
}

@end