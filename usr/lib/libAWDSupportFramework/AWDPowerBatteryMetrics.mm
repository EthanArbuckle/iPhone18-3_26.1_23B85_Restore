@interface AWDPowerBatteryMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCycleCountKey:(BOOL)key;
- (void)setHasDurationDispOn:(BOOL)on;
- (void)setHasDurationPartialDispOff:(BOOL)off;
- (void)setHasDurationPartialDispOn:(BOOL)on;
- (void)setHasEnergyChargedMicroWatt:(BOOL)watt;
- (void)setHasEnergyConsumedDisplayOffMicroWatt:(BOOL)watt;
- (void)setHasEnergyConsumedDisplayOnMicroWatt:(BOOL)watt;
- (void)setHasEnergyConsumedPartailDispOnMicrowatt:(BOOL)microwatt;
- (void)writeTo:(id)to;
@end

@implementation AWDPowerBatteryMetrics

- (void)setHasEnergyConsumedDisplayOnMicroWatt:(BOOL)watt
{
  if (watt)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasEnergyConsumedDisplayOffMicroWatt:(BOOL)watt
{
  if (watt)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasEnergyChargedMicroWatt:(BOOL)watt
{
  if (watt)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasCycleCountKey:(BOOL)key
{
  if (key)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasEnergyConsumedPartailDispOnMicrowatt:(BOOL)microwatt
{
  if (microwatt)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasDurationDispOn:(BOOL)on
{
  if (on)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasDurationPartialDispOn:(BOOL)on
{
  if (on)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasDurationPartialDispOff:(BOOL)off
{
  if (off)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPowerBatteryMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPowerBatteryMetrics description](&v3, sel_description), -[AWDPowerBatteryMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_energyConsumedDisplayOnMicroWatt), @"energyConsumedDisplayOnMicroWatt"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_energyConsumedDisplayOffMicroWatt), @"energyConsumedDisplayOffMicroWatt"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_energyChargedMicroWatt), @"energyChargedMicroWatt"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cycleCountKey), @"cycleCountKey"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_energyConsumedPartailDispOnMicrowatt), @"energyConsumedPartailDispOnMicrowatt"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durationPartialDispOn), @"durationPartialDispOn"}];
    if ((*&self->_has & 8) == 0)
    {
      return dictionary;
    }

    goto LABEL_10;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durationDispOn), @"durationDispOn"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((has & 8) != 0)
  {
LABEL_10:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durationPartialDispOff), @"durationPartialDispOff"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  energyConsumedDisplayOnMicroWatt = self->_energyConsumedDisplayOnMicroWatt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  energyConsumedDisplayOffMicroWatt = self->_energyConsumedDisplayOffMicroWatt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  energyChargedMicroWatt = self->_energyChargedMicroWatt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  cycleCountKey = self->_cycleCountKey;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  energyConsumedPartailDispOnMicrowatt = self->_energyConsumedPartailDispOnMicrowatt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    durationPartialDispOn = self->_durationPartialDispOn;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_17:
  durationDispOn = self->_durationDispOn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_19:
  durationPartialDispOff = self->_durationPartialDispOff;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 24) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(to + 10) = self->_energyConsumedDisplayOnMicroWatt;
  *(to + 24) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(to + 9) = self->_energyConsumedDisplayOffMicroWatt;
  *(to + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(to + 8) = self->_energyChargedMicroWatt;
  *(to + 24) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 4) = self->_cycleCountKey;
  *(to + 24) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 11) = self->_energyConsumedPartailDispOnMicrowatt;
  *(to + 24) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 5) = self->_durationDispOn;
  *(to + 24) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      return;
    }

LABEL_19:
    *(to + 6) = self->_durationPartialDispOff;
    *(to + 24) |= 8u;
    return;
  }

LABEL_18:
  *(to + 7) = self->_durationPartialDispOn;
  *(to + 24) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
    goto LABEL_19;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(result + 10) = self->_energyConsumedDisplayOnMicroWatt;
  *(result + 24) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 9) = self->_energyConsumedDisplayOffMicroWatt;
  *(result + 24) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 8) = self->_energyChargedMicroWatt;
  *(result + 24) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 4) = self->_cycleCountKey;
  *(result + 24) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 11) = self->_energyConsumedPartailDispOnMicrowatt;
  *(result + 24) |= 0x100u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 5) = self->_durationDispOn;
  *(result + 24) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(result + 7) = self->_durationPartialDispOn;
  *(result + 24) |= 0x10u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_10:
  *(result + 6) = self->_durationPartialDispOff;
  *(result + 24) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 24);
    if (has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_46;
      }
    }

    else if (v7)
    {
LABEL_46:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_energyConsumedDisplayOnMicroWatt != *(equal + 10))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_energyConsumedDisplayOffMicroWatt != *(equal + 9))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_energyChargedMicroWatt != *(equal + 8))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_cycleCountKey != *(equal + 4))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_46;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 24) & 0x100) == 0 || self->_energyConsumedPartailDispOnMicrowatt != *(equal + 11))
      {
        goto LABEL_46;
      }
    }

    else if ((*(equal + 24) & 0x100) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_durationDispOn != *(equal + 5))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_durationPartialDispOn != *(equal + 7))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_46;
    }

    LOBYTE(v5) = (v7 & 8) == 0;
    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_durationPartialDispOff != *(equal + 6))
      {
        goto LABEL_46;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 0x80) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_energyConsumedDisplayOnMicroWatt;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_energyConsumedDisplayOffMicroWatt;
    if ((has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_energyChargedMicroWatt;
    if ((has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((has & 2) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_cycleCountKey;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_energyConsumedPartailDispOnMicrowatt;
    if ((has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_durationDispOn;
    if ((has & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_17:
  v9 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761 * self->_durationPartialDispOn;
  if ((has & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761 * self->_durationPartialDispOff;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 24);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 24);
    if ((v3 & 0x80) == 0)
    {
LABEL_3:
      if ((v3 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v3 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_energyConsumedDisplayOnMicroWatt = *(from + 10);
  *&self->_has |= 0x80u;
  v3 = *(from + 24);
  if ((v3 & 0x40) == 0)
  {
LABEL_4:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_energyConsumedDisplayOffMicroWatt = *(from + 9);
  *&self->_has |= 0x40u;
  v3 = *(from + 24);
  if ((v3 & 0x20) == 0)
  {
LABEL_5:
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_energyChargedMicroWatt = *(from + 8);
  *&self->_has |= 0x20u;
  v3 = *(from + 24);
  if ((v3 & 2) == 0)
  {
LABEL_6:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_cycleCountKey = *(from + 4);
  *&self->_has |= 2u;
  v3 = *(from + 24);
  if ((v3 & 0x100) == 0)
  {
LABEL_7:
    if ((v3 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_energyConsumedPartailDispOnMicrowatt = *(from + 11);
  *&self->_has |= 0x100u;
  v3 = *(from + 24);
  if ((v3 & 4) == 0)
  {
LABEL_8:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_durationDispOn = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 24);
  if ((v3 & 0x10) == 0)
  {
LABEL_9:
    if ((v3 & 8) == 0)
    {
      return;
    }

LABEL_19:
    self->_durationPartialDispOff = *(from + 6);
    *&self->_has |= 8u;
    return;
  }

LABEL_18:
  self->_durationPartialDispOn = *(from + 7);
  *&self->_has |= 0x10u;
  if ((*(from + 24) & 8) != 0)
  {
    goto LABEL_19;
  }
}

@end