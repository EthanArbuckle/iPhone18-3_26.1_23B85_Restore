@interface AWDPowerBBCallMetricInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)rxTxDurationsAtIndex:(unint64_t)a3;
- (unsigned)sleepStateDurationsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasPowerMicroWatt:(BOOL)a3;
- (void)setHasThreshold:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDPowerBBCallMetricInfo

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDPowerBBCallMetricInfo;
  [(AWDPowerBBCallMetricInfo *)&v3 dealloc];
}

- (void)setHasThreshold:(BOOL)a3
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

- (unsigned)sleepStateDurationsAtIndex:(unint64_t)a3
{
  p_sleepStateDurations = &self->_sleepStateDurations;
  count = self->_sleepStateDurations.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_sleepStateDurations->list[a3];
}

- (unsigned)rxTxDurationsAtIndex:(unint64_t)a3
{
  p_rxTxDurations = &self->_rxTxDurations;
  count = self->_rxTxDurations.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_rxTxDurations->list[a3];
}

- (void)setHasPowerMicroWatt:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPowerBBCallMetricInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPowerBBCallMetricInfo description](&v3, sel_description), -[AWDPowerBBCallMetricInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_threshold), @"Threshold"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_callDuration), @"CallDuration"}];
  }

  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"SleepStateDurations"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"RxTxDurations"];
  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_powerMicroWatt), @"PowerMicroWatt"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    threshold = self->_threshold;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    callDuration = self->_callDuration;
    PBDataWriterWriteUint32Field();
  }

  if (self->_sleepStateDurations.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_sleepStateDurations.list[v7];
      PBDataWriterWriteUint32Field();
      ++v7;
    }

    while (v7 < self->_sleepStateDurations.count);
  }

  if (self->_rxTxDurations.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_rxTxDurations.list[v9];
      PBDataWriterWriteUint32Field();
      ++v9;
    }

    while (v9 < self->_rxTxDurations.count);
  }

  if ((*&self->_has & 2) != 0)
  {
    powerMicroWatt = self->_powerMicroWatt;

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 16) = self->_threshold;
    *(a3 + 68) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(a3 + 14) = self->_callDuration;
    *(a3 + 68) |= 1u;
  }

  if ([(AWDPowerBBCallMetricInfo *)self sleepStateDurationsCount])
  {
    [a3 clearSleepStateDurations];
    v6 = [(AWDPowerBBCallMetricInfo *)self sleepStateDurationsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addSleepStateDurations:{-[AWDPowerBBCallMetricInfo sleepStateDurationsAtIndex:](self, "sleepStateDurationsAtIndex:", i)}];
      }
    }
  }

  if ([(AWDPowerBBCallMetricInfo *)self rxTxDurationsCount])
  {
    [a3 clearRxTxDurations];
    v9 = [(AWDPowerBBCallMetricInfo *)self rxTxDurationsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [a3 addRxTxDurations:{-[AWDPowerBBCallMetricInfo rxTxDurationsAtIndex:](self, "rxTxDurationsAtIndex:", j)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 15) = self->_powerMicroWatt;
    *(a3 + 68) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 64) = self->_threshold;
    *(v4 + 68) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 56) = self->_callDuration;
    *(v4 + 68) |= 1u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 60) = self->_powerMicroWatt;
    *(v5 + 68) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    v6 = *(a3 + 68);
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 68) & 4) == 0 || self->_threshold != *(a3 + 16))
      {
        goto LABEL_18;
      }
    }

    else if ((*(a3 + 68) & 4) != 0)
    {
LABEL_18:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 68) & 1) == 0 || self->_callDuration != *(a3 + 14))
      {
        goto LABEL_18;
      }
    }

    else if (*(a3 + 68))
    {
      goto LABEL_18;
    }

    IsEqual = PBRepeatedUInt32IsEqual();
    if (IsEqual)
    {
      IsEqual = PBRepeatedUInt32IsEqual();
      if (IsEqual)
      {
        LOBYTE(IsEqual) = (*(a3 + 68) & 2) == 0;
        if ((*&self->_has & 2) != 0)
        {
          if ((*(a3 + 68) & 2) == 0 || self->_powerMicroWatt != *(a3 + 15))
          {
            goto LABEL_18;
          }

          LOBYTE(IsEqual) = 1;
        }
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_threshold;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761 * self->_callDuration;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = PBRepeatedUInt32Hash();
  v6 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_powerMicroWatt;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 68);
  if ((v5 & 4) != 0)
  {
    self->_threshold = *(a3 + 16);
    *&self->_has |= 4u;
    v5 = *(a3 + 68);
  }

  if (v5)
  {
    self->_callDuration = *(a3 + 14);
    *&self->_has |= 1u;
  }

  v6 = [a3 sleepStateDurationsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[AWDPowerBBCallMetricInfo addSleepStateDurations:](self, "addSleepStateDurations:", [a3 sleepStateDurationsAtIndex:i]);
    }
  }

  v9 = [a3 rxTxDurationsCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[AWDPowerBBCallMetricInfo addRxTxDurations:](self, "addRxTxDurations:", [a3 rxTxDurationsAtIndex:j]);
    }
  }

  if ((*(a3 + 68) & 2) != 0)
  {
    self->_powerMicroWatt = *(a3 + 15);
    *&self->_has |= 2u;
  }
}

@end