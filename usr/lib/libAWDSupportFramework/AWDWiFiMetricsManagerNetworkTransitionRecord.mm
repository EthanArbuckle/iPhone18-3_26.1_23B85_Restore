@interface AWDWiFiMetricsManagerNetworkTransitionRecord
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)channelScanCountAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasEndedTimestamp:(BOOL)timestamp;
- (void)setHasErrors:(BOOL)errors;
- (void)setHasGotIPTimestamp:(BOOL)timestamp;
- (void)setHasState:(BOOL)state;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasTrigger:(BOOL)trigger;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsManagerNetworkTransitionRecord

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerNetworkTransitionRecord;
  [(AWDWiFiMetricsManagerNetworkTransitionRecord *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEndedTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasGotIPTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasState:(BOOL)state
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

- (void)setHasErrors:(BOOL)errors
{
  if (errors)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTrigger:(BOOL)trigger
{
  if (trigger)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (unsigned)channelScanCountAtIndex:(unint64_t)index
{
  p_channelScanCounts = &self->_channelScanCounts;
  count = self->_channelScanCounts.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_channelScanCounts->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerNetworkTransitionRecord;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerNetworkTransitionRecord description](&v3, sel_description), -[AWDWiFiMetricsManagerNetworkTransitionRecord dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_beganTimestamp), @"beganTimestamp"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_endedTimestamp), @"endedTimestamp"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_gotIPTimestamp), @"gotIPTimestamp"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_errors), @"errors"}];
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_state), @"state"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 0x40) != 0)
  {
LABEL_8:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_trigger), @"trigger"}];
  }

LABEL_9:
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"channelScanCount"];
  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  beganTimestamp = self->_beganTimestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  endedTimestamp = self->_endedTimestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  gotIPTimestamp = self->_gotIPTimestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  state = self->_state;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_18:
  errors = self->_errors;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    trigger = self->_trigger;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
  p_channelScanCounts = &self->_channelScanCounts;
  if (p_channelScanCounts->count)
  {
    v7 = 0;
    do
    {
      v8 = p_channelScanCounts->list[v7];
      PBDataWriterWriteUint32Field();
      ++v7;
    }

    while (v7 < p_channelScanCounts->count);
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(to + 7) = self->_timestamp;
    *(to + 76) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_beganTimestamp;
  *(to + 76) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 5) = self->_endedTimestamp;
  *(to + 76) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 6) = self->_gotIPTimestamp;
  *(to + 76) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_19:
    *(to + 16) = self->_errors;
    *(to + 76) |= 0x10u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_18:
  *(to + 17) = self->_state;
  *(to + 76) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_7:
  if ((has & 0x40) != 0)
  {
LABEL_8:
    *(to + 18) = self->_trigger;
    *(to + 76) |= 0x40u;
  }

LABEL_9:
  if ([(AWDWiFiMetricsManagerNetworkTransitionRecord *)self channelScanCountsCount])
  {
    [to clearChannelScanCounts];
    channelScanCountsCount = [(AWDWiFiMetricsManagerNetworkTransitionRecord *)self channelScanCountsCount];
    if (channelScanCountsCount)
    {
      v7 = channelScanCountsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addChannelScanCount:{-[AWDWiFiMetricsManagerNetworkTransitionRecord channelScanCountAtIndex:](self, "channelScanCountAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 56) = self->_timestamp;
    *(v4 + 76) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 32) = self->_beganTimestamp;
  *(v4 + 76) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v4 + 40) = self->_endedTimestamp;
  *(v4 + 76) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v4 + 48) = self->_gotIPTimestamp;
  *(v4 + 76) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    *(v4 + 64) = self->_errors;
    *(v4 + 76) |= 0x10u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_14:
  *(v4 + 68) = self->_state;
  *(v4 + 76) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 0x40) != 0)
  {
LABEL_8:
    *(v4 + 72) = self->_trigger;
    *(v4 + 76) |= 0x40u;
  }

LABEL_9:
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(equal + 76);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equal + 76) & 8) == 0 || self->_timestamp != *(equal + 7))
    {
      return 0;
    }
  }

  else if ((*(equal + 76) & 8) != 0)
  {
    return 0;
  }

  if (*&self->_has)
  {
    if ((*(equal + 76) & 1) == 0 || self->_beganTimestamp != *(equal + 4))
    {
      return 0;
    }
  }

  else if (*(equal + 76))
  {
    return 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 76) & 2) == 0 || self->_endedTimestamp != *(equal + 5))
    {
      return 0;
    }
  }

  else if ((*(equal + 76) & 2) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equal + 76) & 4) == 0 || self->_gotIPTimestamp != *(equal + 6))
    {
      return 0;
    }
  }

  else if ((*(equal + 76) & 4) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equal + 76) & 0x20) == 0 || self->_state != *(equal + 17))
    {
      return 0;
    }
  }

  else if ((*(equal + 76) & 0x20) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equal + 76) & 0x10) == 0 || self->_errors != *(equal + 16))
    {
      return 0;
    }
  }

  else if ((*(equal + 76) & 0x10) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equal + 76) & 0x40) == 0 || self->_trigger != *(equal + 18))
    {
      return 0;
    }
  }

  else if ((*(equal + 76) & 0x40) != 0)
  {
    return 0;
  }

  return PBRepeatedUInt32IsEqual();
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
    if (*&self->_has)
    {
LABEL_3:
      v3 = 2654435761u * self->_beganTimestamp;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
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
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4 = 2654435761u * self->_endedTimestamp;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = 2654435761u * self->_gotIPTimestamp;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_state;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ PBRepeatedUInt32Hash();
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_errors;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_trigger;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 76);
  if ((v5 & 8) != 0)
  {
    self->_timestamp = *(from + 7);
    *&self->_has |= 8u;
    v5 = *(from + 76);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(from + 76) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_beganTimestamp = *(from + 4);
  *&self->_has |= 1u;
  v5 = *(from + 76);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_endedTimestamp = *(from + 5);
  *&self->_has |= 2u;
  v5 = *(from + 76);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_gotIPTimestamp = *(from + 6);
  *&self->_has |= 4u;
  v5 = *(from + 76);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_state = *(from + 17);
  *&self->_has |= 0x20u;
  v5 = *(from + 76);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_18:
  self->_errors = *(from + 16);
  *&self->_has |= 0x10u;
  if ((*(from + 76) & 0x40) != 0)
  {
LABEL_8:
    self->_trigger = *(from + 18);
    *&self->_has |= 0x40u;
  }

LABEL_9:
  channelScanCountsCount = [from channelScanCountsCount];
  if (channelScanCountsCount)
  {
    v7 = channelScanCountsCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDWiFiMetricsManagerNetworkTransitionRecord addChannelScanCount:](self, "addChannelScanCount:", [from channelScanCountAtIndex:i]);
    }
  }
}

@end