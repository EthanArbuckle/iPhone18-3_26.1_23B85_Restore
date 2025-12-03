@interface UtraTddStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasActiveDuration:(BOOL)duration;
- (void)setHasDeepSleepCycleCount:(BOOL)count;
- (void)setHasDeepSleepDuration:(BOOL)duration;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasNormalSleepDuration:(BOOL)duration;
- (void)setHasThClkOpt0Duration:(BOOL)duration;
- (void)setHasThClkOpt1Duration:(BOOL)duration;
- (void)setHasVoltHighDuration:(BOOL)duration;
- (void)setHasVoltLowDuration:(BOOL)duration;
- (void)setHasVoltMedDuration:(BOOL)duration;
- (void)setHasZspClkOpt0Duration:(BOOL)duration;
- (void)setHasZspClkOpt1Duration:(BOOL)duration;
- (void)setHasZspClkOpt2Duration:(BOOL)duration;
- (void)setHasZspClkOpt3Duration:(BOOL)duration;
- (void)setHasZspClkOpt4Duration:(BOOL)duration;
- (void)setHasZspClkOpt5Duration:(BOOL)duration;
- (void)writeTo:(id)to;
@end

@implementation UtraTddStats

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasActiveDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasNormalSleepDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasDeepSleepDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasDeepSleepCycleCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasVoltLowDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasVoltMedDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasVoltHighDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasZspClkOpt0Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasZspClkOpt1Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasZspClkOpt2Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasZspClkOpt3Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasZspClkOpt4Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasZspClkOpt5Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasThClkOpt0Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasThClkOpt1Duration:(BOOL)duration
{
  if (duration)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = UtraTddStats;
  v4 = [(UtraTddStats *)&v8 description];
  dictionaryRepresentation = [(UtraTddStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
    [dictionary setObject:v7 forKey:@"duration"];

    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_activeDuration];
  [dictionary setObject:v8 forKey:@"active_duration"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_normalSleepDuration];
  [dictionary setObject:v9 forKey:@"normal_sleep_duration"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_deepSleepDuration];
  [dictionary setObject:v10 forKey:@"deep_sleep_duration"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_deepSleepCycleCount];
  [dictionary setObject:v11 forKey:@"deep_sleep_cycle_count"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_voltLowDuration];
  [dictionary setObject:v12 forKey:@"volt_low_duration"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_voltMedDuration];
  [dictionary setObject:v13 forKey:@"volt_med_duration"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_voltHighDuration];
  [dictionary setObject:v14 forKey:@"volt_high_duration"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_zspClkOpt0Duration];
  [dictionary setObject:v15 forKey:@"zsp_clk_opt0_duration"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_zspClkOpt1Duration];
  [dictionary setObject:v16 forKey:@"zsp_clk_opt1_duration"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_zspClkOpt2Duration];
  [dictionary setObject:v17 forKey:@"zsp_clk_opt2_duration"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_zspClkOpt3Duration];
  [dictionary setObject:v18 forKey:@"zsp_clk_opt3_duration"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_zspClkOpt4Duration];
  [dictionary setObject:v19 forKey:@"zsp_clk_opt4_duration"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_zspClkOpt5Duration];
  [dictionary setObject:v20 forKey:@"zsp_clk_opt5_duration"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_thClkOpt0Duration];
  [dictionary setObject:v21 forKey:@"th_clk_opt0_duration"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_17:
    if ((*&has & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_thClkOpt1Duration];
  [dictionary setObject:v22 forKey:@"th_clk_opt1_duration"];

  if (*&self->_has)
  {
LABEL_18:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_startTime];
    [dictionary setObject:v5 forKey:@"start_time"];
  }

LABEL_19:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  activeDuration = self->_activeDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  normalSleepDuration = self->_normalSleepDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  deepSleepDuration = self->_deepSleepDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  deepSleepCycleCount = self->_deepSleepCycleCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  voltLowDuration = self->_voltLowDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  voltMedDuration = self->_voltMedDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  voltHighDuration = self->_voltHighDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  zspClkOpt0Duration = self->_zspClkOpt0Duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  zspClkOpt1Duration = self->_zspClkOpt1Duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  zspClkOpt2Duration = self->_zspClkOpt2Duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  zspClkOpt3Duration = self->_zspClkOpt3Duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  zspClkOpt4Duration = self->_zspClkOpt4Duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  zspClkOpt5Duration = self->_zspClkOpt5Duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  thClkOpt0Duration = self->_thClkOpt0Duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_17:
    if ((*&has & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  thClkOpt1Duration = self->_thClkOpt1Duration;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_18:
    startTime = self->_startTime;
    PBDataWriterWriteUint64Field();
  }

LABEL_19:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    toCopy[7] = self->_duration;
    toCopy[20] |= 0x10u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[4] = self->_activeDuration;
  toCopy[20] |= 2u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  toCopy[8] = self->_normalSleepDuration;
  toCopy[20] |= 0x20u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  toCopy[6] = self->_deepSleepDuration;
  toCopy[20] |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  toCopy[5] = self->_deepSleepCycleCount;
  toCopy[20] |= 4u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  toCopy[12] = self->_voltLowDuration;
  toCopy[20] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  toCopy[13] = self->_voltMedDuration;
  toCopy[20] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  toCopy[11] = self->_voltHighDuration;
  toCopy[20] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  toCopy[14] = self->_zspClkOpt0Duration;
  toCopy[20] |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  toCopy[15] = self->_zspClkOpt1Duration;
  toCopy[20] |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  toCopy[16] = self->_zspClkOpt2Duration;
  toCopy[20] |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  toCopy[17] = self->_zspClkOpt3Duration;
  toCopy[20] |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  toCopy[18] = self->_zspClkOpt4Duration;
  toCopy[20] |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  toCopy[19] = self->_zspClkOpt5Duration;
  toCopy[20] |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  toCopy[9] = self->_thClkOpt0Duration;
  toCopy[20] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_17:
    if ((*&has & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  toCopy[10] = self->_thClkOpt1Duration;
  toCopy[20] |= 0x80u;
  if (*&self->_has)
  {
LABEL_18:
    *(toCopy + 1) = self->_startTime;
    toCopy[20] |= 1u;
  }

LABEL_19:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    *(result + 7) = self->_duration;
    *(result + 20) |= 0x10u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_activeDuration;
  *(result + 20) |= 2u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 8) = self->_normalSleepDuration;
  *(result + 20) |= 0x20u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 6) = self->_deepSleepDuration;
  *(result + 20) |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 5) = self->_deepSleepCycleCount;
  *(result + 20) |= 4u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 12) = self->_voltLowDuration;
  *(result + 20) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 13) = self->_voltMedDuration;
  *(result + 20) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 11) = self->_voltHighDuration;
  *(result + 20) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 14) = self->_zspClkOpt0Duration;
  *(result + 20) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 15) = self->_zspClkOpt1Duration;
  *(result + 20) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 16) = self->_zspClkOpt2Duration;
  *(result + 20) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 17) = self->_zspClkOpt3Duration;
  *(result + 20) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 18) = self->_zspClkOpt4Duration;
  *(result + 20) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 19) = self->_zspClkOpt5Duration;
  *(result + 20) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 9) = self->_thClkOpt0Duration;
  *(result + 20) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_17:
    if ((*&has & 1) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_35:
  *(result + 10) = self->_thClkOpt1Duration;
  *(result + 20) |= 0x80u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_18:
  *(result + 1) = self->_startTime;
  *(result + 20) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_87;
  }

  has = self->_has;
  v6 = *(equalCopy + 20);
  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_duration != *(equalCopy + 7))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
LABEL_87:
    v7 = 0;
    goto LABEL_88;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_activeDuration != *(equalCopy + 4))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_normalSleepDuration != *(equalCopy + 8))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_deepSleepDuration != *(equalCopy + 6))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_deepSleepCycleCount != *(equalCopy + 5))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_voltLowDuration != *(equalCopy + 12))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_voltMedDuration != *(equalCopy + 13))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_voltHighDuration != *(equalCopy + 11))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_zspClkOpt0Duration != *(equalCopy + 14))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_zspClkOpt1Duration != *(equalCopy + 15))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_zspClkOpt2Duration != *(equalCopy + 16))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_zspClkOpt3Duration != *(equalCopy + 17))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_zspClkOpt4Duration != *(equalCopy + 18))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_zspClkOpt5Duration != *(equalCopy + 19))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_thClkOpt0Duration != *(equalCopy + 9))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_87;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_thClkOpt1Duration != *(equalCopy + 10))
    {
      goto LABEL_87;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_87;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_startTime != *(equalCopy + 1))
    {
      goto LABEL_87;
    }

    v7 = 1;
  }

  else
  {
    v7 = (*(equalCopy + 20) & 1) == 0;
  }

LABEL_88:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_duration;
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_activeDuration;
      if ((*&has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_normalSleepDuration;
    if ((*&has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_deepSleepDuration;
    if ((*&has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_deepSleepCycleCount;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_voltLowDuration;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_voltMedDuration;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_voltHighDuration;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_zspClkOpt0Duration;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_zspClkOpt1Duration;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_zspClkOpt2Duration;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_zspClkOpt3Duration;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_zspClkOpt4Duration;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x10000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761 * self->_zspClkOpt5Duration;
  if ((*&has & 0x40) != 0)
  {
LABEL_16:
    v17 = 2654435761 * self->_thClkOpt0Duration;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x80) != 0)
  {
    v18 = 2654435761 * self->_thClkOpt1Duration;
    if (*&has)
    {
      goto LABEL_34;
    }

LABEL_36:
    v19 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

  v18 = 0;
  if ((*&has & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  v19 = 2654435761u * self->_startTime;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if ((v5 & 0x10) != 0)
  {
    self->_duration = *(fromCopy + 7);
    *&self->_has |= 0x10u;
    v5 = *(fromCopy + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_activeDuration = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 20);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_normalSleepDuration = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 20);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_deepSleepDuration = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 20);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_deepSleepCycleCount = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 20);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_voltLowDuration = *(fromCopy + 12);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 20);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_voltMedDuration = *(fromCopy + 13);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 20);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_voltHighDuration = *(fromCopy + 11);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 20);
  if ((v5 & 0x800) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_zspClkOpt0Duration = *(fromCopy + 14);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 20);
  if ((v5 & 0x1000) == 0)
  {
LABEL_11:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_zspClkOpt1Duration = *(fromCopy + 15);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 20);
  if ((v5 & 0x2000) == 0)
  {
LABEL_12:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_zspClkOpt2Duration = *(fromCopy + 16);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 20);
  if ((v5 & 0x4000) == 0)
  {
LABEL_13:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_zspClkOpt3Duration = *(fromCopy + 17);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 20);
  if ((v5 & 0x8000) == 0)
  {
LABEL_14:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_zspClkOpt4Duration = *(fromCopy + 18);
  *&self->_has |= 0x8000u;
  v5 = *(fromCopy + 20);
  if ((v5 & 0x10000) == 0)
  {
LABEL_15:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_zspClkOpt5Duration = *(fromCopy + 19);
  *&self->_has |= 0x10000u;
  v5 = *(fromCopy + 20);
  if ((v5 & 0x40) == 0)
  {
LABEL_16:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_thClkOpt0Duration = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 20);
  if ((v5 & 0x80) == 0)
  {
LABEL_17:
    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  self->_thClkOpt1Duration = *(fromCopy + 10);
  *&self->_has |= 0x80u;
  if (*(fromCopy + 20))
  {
LABEL_18:
    self->_startTime = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_19:
}

@end