@interface UtraFddStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasActiveDuration:(BOOL)a3;
- (void)setHasClkHighDuration:(BOOL)a3;
- (void)setHasClkLowDuration:(BOOL)a3;
- (void)setHasClkMedDuration:(BOOL)a3;
- (void)setHasDeepSleepCycleCount:(BOOL)a3;
- (void)setHasDeepSleepDuration:(BOOL)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasLightSleepCycleCount:(BOOL)a3;
- (void)setHasLightSleepDuration:(BOOL)a3;
- (void)setHasVoltHighDuration:(BOOL)a3;
- (void)setHasVoltLowDuration:(BOOL)a3;
- (void)setHasVoltMedDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation UtraFddStats

- (void)setHasDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasActiveDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasLightSleepDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasDeepSleepDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasLightSleepCycleCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasDeepSleepCycleCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasVoltLowDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasVoltMedDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasVoltHighDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasClkLowDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasClkMedDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasClkHighDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = UtraFddStats;
  v4 = [(UtraFddStats *)&v8 description];
  v5 = [(UtraFddStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
    [v3 setObject:v7 forKey:@"duration"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_activeDuration];
  [v3 setObject:v8 forKey:@"active_duration"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lightSleepDuration];
  [v3 setObject:v9 forKey:@"light_sleep_duration"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_deepSleepDuration];
  [v3 setObject:v10 forKey:@"deep_sleep_duration"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lightSleepCycleCount];
  [v3 setObject:v11 forKey:@"light_sleep_cycle_count"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_deepSleepCycleCount];
  [v3 setObject:v12 forKey:@"deep_sleep_cycle_count"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_voltLowDuration];
  [v3 setObject:v13 forKey:@"volt_low_duration"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_voltMedDuration];
  [v3 setObject:v14 forKey:@"volt_med_duration"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_voltHighDuration];
  [v3 setObject:v15 forKey:@"volt_high_duration"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_clkLowDuration];
  [v3 setObject:v16 forKey:@"clk_low_duration"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_clkMedDuration];
  [v3 setObject:v17 forKey:@"clk_med_duration"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_clkHighDuration];
  [v3 setObject:v18 forKey:@"clk_high_duration"];

  if (*&self->_has)
  {
LABEL_14:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_startTime];
    [v3 setObject:v5 forKey:@"start_time"];
  }

LABEL_15:

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = a3;
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  activeDuration = self->_activeDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  lightSleepDuration = self->_lightSleepDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  deepSleepDuration = self->_deepSleepDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  lightSleepCycleCount = self->_lightSleepCycleCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  deepSleepCycleCount = self->_deepSleepCycleCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  voltLowDuration = self->_voltLowDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  voltMedDuration = self->_voltMedDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  voltHighDuration = self->_voltHighDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  clkLowDuration = self->_clkLowDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  clkMedDuration = self->_clkMedDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  clkHighDuration = self->_clkHighDuration;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_14:
    startTime = self->_startTime;
    PBDataWriterWriteUint64Field();
  }

LABEL_15:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    v4[10] = self->_duration;
    *(v4 + 32) |= 0x80u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[4] = self->_activeDuration;
  *(v4 + 32) |= 2u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4[12] = self->_lightSleepDuration;
  *(v4 + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v4[9] = self->_deepSleepDuration;
  *(v4 + 32) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4[11] = self->_lightSleepCycleCount;
  *(v4 + 32) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4[8] = self->_deepSleepCycleCount;
  *(v4 + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v4[14] = self->_voltLowDuration;
  *(v4 + 32) |= 0x800u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4[15] = self->_voltMedDuration;
  *(v4 + 32) |= 0x1000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4[13] = self->_voltHighDuration;
  *(v4 + 32) |= 0x400u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4[6] = self->_clkLowDuration;
  *(v4 + 32) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4[7] = self->_clkMedDuration;
  *(v4 + 32) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v4[5] = self->_clkHighDuration;
  *(v4 + 32) |= 4u;
  if (*&self->_has)
  {
LABEL_14:
    *(v4 + 1) = self->_startTime;
    *(v4 + 32) |= 1u;
  }

LABEL_15:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(result + 10) = self->_duration;
    *(result + 32) |= 0x80u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_activeDuration;
  *(result + 32) |= 2u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 12) = self->_lightSleepDuration;
  *(result + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 9) = self->_deepSleepDuration;
  *(result + 32) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 11) = self->_lightSleepCycleCount;
  *(result + 32) |= 0x100u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 8) = self->_deepSleepCycleCount;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_8:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 14) = self->_voltLowDuration;
  *(result + 32) |= 0x800u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 15) = self->_voltMedDuration;
  *(result + 32) |= 0x1000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 13) = self->_voltHighDuration;
  *(result + 32) |= 0x400u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 6) = self->_clkLowDuration;
  *(result + 32) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 7) = self->_clkMedDuration;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

LABEL_27:
  *(result + 5) = self->_clkHighDuration;
  *(result + 32) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_14:
  *(result + 1) = self->_startTime;
  *(result + 32) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_67;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_duration != *(v4 + 10))
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
LABEL_67:
    v7 = 0;
    goto LABEL_68;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_activeDuration != *(v4 + 4))
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 32) & 0x200) == 0 || self->_lightSleepDuration != *(v4 + 12))
    {
      goto LABEL_67;
    }
  }

  else if ((*(v4 + 32) & 0x200) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_deepSleepDuration != *(v4 + 9))
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 32) & 0x100) == 0 || self->_lightSleepCycleCount != *(v4 + 11))
    {
      goto LABEL_67;
    }
  }

  else if ((*(v4 + 32) & 0x100) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_deepSleepCycleCount != *(v4 + 8))
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 32) & 0x800) == 0 || self->_voltLowDuration != *(v4 + 14))
    {
      goto LABEL_67;
    }
  }

  else if ((*(v4 + 32) & 0x800) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 32) & 0x1000) == 0 || self->_voltMedDuration != *(v4 + 15))
    {
      goto LABEL_67;
    }
  }

  else if ((*(v4 + 32) & 0x1000) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 32) & 0x400) == 0 || self->_voltHighDuration != *(v4 + 13))
    {
      goto LABEL_67;
    }
  }

  else if ((*(v4 + 32) & 0x400) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_clkLowDuration != *(v4 + 6))
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_clkMedDuration != *(v4 + 7))
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_clkHighDuration != *(v4 + 5))
    {
      goto LABEL_67;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_67;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_startTime != *(v4 + 1))
    {
      goto LABEL_67;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 1) == 0;
  }

LABEL_68:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    v3 = 2654435761 * self->_duration;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_activeDuration;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_lightSleepDuration;
    if ((has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_deepSleepDuration;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_lightSleepCycleCount;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_deepSleepCycleCount;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_voltLowDuration;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_voltMedDuration;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_voltHighDuration;
    if ((has & 8) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
  if ((has & 8) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_clkLowDuration;
    if ((has & 0x10) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_clkMedDuration;
    if ((has & 4) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v14 = 0;
    if (has)
    {
      goto LABEL_14;
    }

LABEL_27:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_25:
  v13 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v14 = 2654435761 * self->_clkHighDuration;
  if ((has & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:
  v15 = 2654435761u * self->_startTime;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 0x80) != 0)
  {
    self->_duration = *(v4 + 10);
    *&self->_has |= 0x80u;
    v5 = *(v4 + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_activeDuration = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_lightSleepDuration = *(v4 + 12);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_deepSleepDuration = *(v4 + 9);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_lightSleepCycleCount = *(v4 + 11);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_deepSleepCycleCount = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 32);
  if ((v5 & 0x800) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_voltLowDuration = *(v4 + 14);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 32);
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_voltMedDuration = *(v4 + 15);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_voltHighDuration = *(v4 + 13);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 32);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_clkLowDuration = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_clkMedDuration = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  self->_clkHighDuration = *(v4 + 5);
  *&self->_has |= 4u;
  if (*(v4 + 32))
  {
LABEL_14:
    self->_startTime = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_15:
}

@end