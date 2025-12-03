@interface AWDPowerBBCallMetricInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)rxTxDurationsAtIndex:(unint64_t)index;
- (unsigned)sleepStateDurationsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasPowerMicroWatt:(BOOL)watt;
- (void)setHasThreshold:(BOOL)threshold;
- (void)writeTo:(id)to;
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

- (void)setHasThreshold:(BOOL)threshold
{
  if (threshold)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (unsigned)sleepStateDurationsAtIndex:(unint64_t)index
{
  p_sleepStateDurations = &self->_sleepStateDurations;
  count = self->_sleepStateDurations.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_sleepStateDurations->list[index];
}

- (unsigned)rxTxDurationsAtIndex:(unint64_t)index
{
  p_rxTxDurations = &self->_rxTxDurations;
  count = self->_rxTxDurations.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_rxTxDurations->list[index];
}

- (void)setHasPowerMicroWatt:(BOOL)watt
{
  if (watt)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_threshold), @"Threshold"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_callDuration), @"CallDuration"}];
  }

  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"SleepStateDurations"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"RxTxDurations"];
  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_powerMicroWatt), @"PowerMicroWatt"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 16) = self->_threshold;
    *(to + 68) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 14) = self->_callDuration;
    *(to + 68) |= 1u;
  }

  if ([(AWDPowerBBCallMetricInfo *)self sleepStateDurationsCount])
  {
    [to clearSleepStateDurations];
    sleepStateDurationsCount = [(AWDPowerBBCallMetricInfo *)self sleepStateDurationsCount];
    if (sleepStateDurationsCount)
    {
      v7 = sleepStateDurationsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addSleepStateDurations:{-[AWDPowerBBCallMetricInfo sleepStateDurationsAtIndex:](self, "sleepStateDurationsAtIndex:", i)}];
      }
    }
  }

  if ([(AWDPowerBBCallMetricInfo *)self rxTxDurationsCount])
  {
    [to clearRxTxDurations];
    rxTxDurationsCount = [(AWDPowerBBCallMetricInfo *)self rxTxDurationsCount];
    if (rxTxDurationsCount)
    {
      v10 = rxTxDurationsCount;
      for (j = 0; j != v10; ++j)
      {
        [to addRxTxDurations:{-[AWDPowerBBCallMetricInfo rxTxDurationsAtIndex:](self, "rxTxDurationsAtIndex:", j)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 15) = self->_powerMicroWatt;
    *(to + 68) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    v6 = *(equal + 68);
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 68) & 4) == 0 || self->_threshold != *(equal + 16))
      {
        goto LABEL_18;
      }
    }

    else if ((*(equal + 68) & 4) != 0)
    {
LABEL_18:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    if (*&self->_has)
    {
      if ((*(equal + 68) & 1) == 0 || self->_callDuration != *(equal + 14))
      {
        goto LABEL_18;
      }
    }

    else if (*(equal + 68))
    {
      goto LABEL_18;
    }

    IsEqual = PBRepeatedUInt32IsEqual();
    if (IsEqual)
    {
      IsEqual = PBRepeatedUInt32IsEqual();
      if (IsEqual)
      {
        LOBYTE(IsEqual) = (*(equal + 68) & 2) == 0;
        if ((*&self->_has & 2) != 0)
        {
          if ((*(equal + 68) & 2) == 0 || self->_powerMicroWatt != *(equal + 15))
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

- (void)mergeFrom:(id)from
{
  v5 = *(from + 68);
  if ((v5 & 4) != 0)
  {
    self->_threshold = *(from + 16);
    *&self->_has |= 4u;
    v5 = *(from + 68);
  }

  if (v5)
  {
    self->_callDuration = *(from + 14);
    *&self->_has |= 1u;
  }

  sleepStateDurationsCount = [from sleepStateDurationsCount];
  if (sleepStateDurationsCount)
  {
    v7 = sleepStateDurationsCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDPowerBBCallMetricInfo addSleepStateDurations:](self, "addSleepStateDurations:", [from sleepStateDurationsAtIndex:i]);
    }
  }

  rxTxDurationsCount = [from rxTxDurationsCount];
  if (rxTxDurationsCount)
  {
    v10 = rxTxDurationsCount;
    for (j = 0; j != v10; ++j)
    {
      -[AWDPowerBBCallMetricInfo addRxTxDurations:](self, "addRxTxDurations:", [from rxTxDurationsAtIndex:j]);
    }
  }

  if ((*(from + 68) & 2) != 0)
  {
    self->_powerMicroWatt = *(from + 15);
    *&self->_has |= 2u;
  }
}

@end