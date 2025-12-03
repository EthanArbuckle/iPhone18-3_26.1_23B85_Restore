@interface EutraStats
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
- (void)setHasLightSleepCycleCount:(BOOL)count;
- (void)setHasLightSleepDuration:(BOOL)duration;
- (void)setHasVoltHighDuration:(BOOL)duration;
- (void)setHasVoltLowDuration:(BOOL)duration;
- (void)setHasVoltMedDuration:(BOOL)duration;
- (void)writeTo:(id)to;
@end

@implementation EutraStats

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

  *&self->_has = *&self->_has & 0xFFEF | v3;
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

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasLightSleepDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
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

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasLightSleepCycleCount:(BOOL)count
{
  if (count)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
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

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasVoltLowDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasVoltMedDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasVoltHighDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = EutraStats;
  v4 = [(EutraStats *)&v8 description];
  dictionaryRepresentation = [(EutraStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
    [dictionary setObject:v7 forKey:@"duration"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_activeDuration];
  [dictionary setObject:v8 forKey:@"active_duration"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lightSleepDuration];
  [dictionary setObject:v9 forKey:@"light_sleep_duration"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_deepSleepDuration];
  [dictionary setObject:v10 forKey:@"deep_sleep_duration"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lightSleepCycleCount];
  [dictionary setObject:v11 forKey:@"light_sleep_cycle_count"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_deepSleepCycleCount];
  [dictionary setObject:v12 forKey:@"deep_sleep_cycle_count"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_voltLowDuration];
  [dictionary setObject:v13 forKey:@"volt_low_duration"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_voltMedDuration];
  [dictionary setObject:v14 forKey:@"volt_med_duration"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_voltHighDuration];
  [dictionary setObject:v15 forKey:@"volt_high_duration"];

  if (*&self->_has)
  {
LABEL_11:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_startTime];
    [dictionary setObject:v5 forKey:@"start_time"];
  }

LABEL_12:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  activeDuration = self->_activeDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  lightSleepDuration = self->_lightSleepDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  deepSleepDuration = self->_deepSleepDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  lightSleepCycleCount = self->_lightSleepCycleCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  deepSleepCycleCount = self->_deepSleepCycleCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  voltLowDuration = self->_voltLowDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  voltMedDuration = self->_voltMedDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  voltHighDuration = self->_voltHighDuration;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_11:
    startTime = self->_startTime;
    PBDataWriterWriteUint64Field();
  }

LABEL_12:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    toCopy[7] = self->_duration;
    *(toCopy + 26) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[4] = self->_activeDuration;
  *(toCopy + 26) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  toCopy[9] = self->_lightSleepDuration;
  *(toCopy + 26) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[6] = self->_deepSleepDuration;
  *(toCopy + 26) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  toCopy[8] = self->_lightSleepCycleCount;
  *(toCopy + 26) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[5] = self->_deepSleepCycleCount;
  *(toCopy + 26) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  toCopy[11] = self->_voltLowDuration;
  *(toCopy + 26) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  toCopy[12] = self->_voltMedDuration;
  *(toCopy + 26) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  toCopy[10] = self->_voltHighDuration;
  *(toCopy + 26) |= 0x80u;
  if (*&self->_has)
  {
LABEL_11:
    *(toCopy + 1) = self->_startTime;
    *(toCopy + 26) |= 1u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 7) = self->_duration;
    *(result + 26) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_activeDuration;
  *(result + 26) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 9) = self->_lightSleepDuration;
  *(result + 26) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 6) = self->_deepSleepDuration;
  *(result + 26) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 8) = self->_lightSleepCycleCount;
  *(result + 26) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 5) = self->_deepSleepCycleCount;
  *(result + 26) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 11) = self->_voltLowDuration;
  *(result + 26) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 12) = self->_voltMedDuration;
  *(result + 26) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(result + 10) = self->_voltHighDuration;
  *(result + 26) |= 0x80u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_11:
  *(result + 1) = self->_startTime;
  *(result + 26) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  has = self->_has;
  v6 = *(equalCopy + 26);
  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_duration != *(equalCopy + 7))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
LABEL_52:
    v7 = 0;
    goto LABEL_53;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_activeDuration != *(equalCopy + 4))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_lightSleepDuration != *(equalCopy + 9))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_deepSleepDuration != *(equalCopy + 6))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_lightSleepCycleCount != *(equalCopy + 8))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_deepSleepCycleCount != *(equalCopy + 5))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 26) & 0x100) == 0 || self->_voltLowDuration != *(equalCopy + 11))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 26) & 0x100) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 26) & 0x200) == 0 || self->_voltMedDuration != *(equalCopy + 12))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 26) & 0x200) != 0)
  {
    goto LABEL_52;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_voltHighDuration != *(equalCopy + 10))
    {
      goto LABEL_52;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_52;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_startTime != *(equalCopy + 1))
    {
      goto LABEL_52;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 1) == 0;
  }

LABEL_53:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_duration;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_activeDuration;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
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
  if ((has & 0x40) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_lightSleepDuration;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_deepSleepDuration;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_lightSleepCycleCount;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_deepSleepCycleCount;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_voltLowDuration;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_voltMedDuration;
    if ((has & 0x80) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0;
    if (has)
    {
      goto LABEL_11;
    }

LABEL_21:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_19:
  v10 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v11 = 2654435761 * self->_voltHighDuration;
  if ((has & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v12 = 2654435761u * self->_startTime;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x10) != 0)
  {
    self->_duration = *(fromCopy + 7);
    *&self->_has |= 0x10u;
    v5 = *(fromCopy + 26);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_activeDuration = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_lightSleepDuration = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 26);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_deepSleepDuration = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_lightSleepCycleCount = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 26);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_deepSleepCycleCount = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_voltLowDuration = *(fromCopy + 11);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_voltMedDuration = *(fromCopy + 12);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 26);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  self->_voltHighDuration = *(fromCopy + 10);
  *&self->_has |= 0x80u;
  if (*(fromCopy + 26))
  {
LABEL_11:
    self->_startTime = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_12:
}

@end