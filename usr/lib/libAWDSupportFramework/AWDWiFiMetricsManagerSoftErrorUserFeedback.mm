@interface AWDWiFiMetricsManagerSoftErrorUserFeedback
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)softErrorInstanceCountersAtIndex:(unint64_t)index;
- (int)softErrorUserConfirmationCountersAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsManagerSoftErrorUserFeedback

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerSoftErrorUserFeedback;
  [(AWDWiFiMetricsManagerSoftErrorUserFeedback *)&v3 dealloc];
}

- (int)softErrorInstanceCountersAtIndex:(unint64_t)index
{
  p_softErrorInstanceCounters = &self->_softErrorInstanceCounters;
  count = self->_softErrorInstanceCounters.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_softErrorInstanceCounters->list[index];
}

- (int)softErrorUserConfirmationCountersAtIndex:(unint64_t)index
{
  p_softErrorUserConfirmationCounters = &self->_softErrorUserConfirmationCounters;
  count = self->_softErrorUserConfirmationCounters.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_softErrorUserConfirmationCounters->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerSoftErrorUserFeedback;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerSoftErrorUserFeedback description](&v3, sel_description), -[AWDWiFiMetricsManagerSoftErrorUserFeedback dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"softErrorInstanceCounters"];
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"softErrorUserConfirmationCounters"];
  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_softErrorInstanceCounters.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_softErrorInstanceCounters.list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_softErrorInstanceCounters.count);
  }

  p_softErrorUserConfirmationCounters = &self->_softErrorUserConfirmationCounters;
  if (p_softErrorUserConfirmationCounters->count)
  {
    v8 = 0;
    do
    {
      v9 = p_softErrorUserConfirmationCounters->list[v8];
      PBDataWriterWriteInt32Field();
      ++v8;
    }

    while (v8 < p_softErrorUserConfirmationCounters->count);
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 7) = self->_timestamp;
    *(to + 64) |= 1u;
  }

  if ([(AWDWiFiMetricsManagerSoftErrorUserFeedback *)self softErrorInstanceCountersCount])
  {
    [to clearSoftErrorInstanceCounters];
    softErrorInstanceCountersCount = [(AWDWiFiMetricsManagerSoftErrorUserFeedback *)self softErrorInstanceCountersCount];
    if (softErrorInstanceCountersCount)
    {
      v6 = softErrorInstanceCountersCount;
      for (i = 0; i != v6; ++i)
      {
        [to addSoftErrorInstanceCounters:{-[AWDWiFiMetricsManagerSoftErrorUserFeedback softErrorInstanceCountersAtIndex:](self, "softErrorInstanceCountersAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiMetricsManagerSoftErrorUserFeedback *)self softErrorUserConfirmationCountersCount])
  {
    [to clearSoftErrorUserConfirmationCounters];
    softErrorUserConfirmationCountersCount = [(AWDWiFiMetricsManagerSoftErrorUserFeedback *)self softErrorUserConfirmationCountersCount];
    if (softErrorUserConfirmationCountersCount)
    {
      v9 = softErrorUserConfirmationCountersCount;
      for (j = 0; j != v9; ++j)
      {
        [to addSoftErrorUserConfirmationCounters:{-[AWDWiFiMetricsManagerSoftErrorUserFeedback softErrorUserConfirmationCountersAtIndex:](self, "softErrorUserConfirmationCountersAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 56) = self->_timestamp;
    *(v4 + 64) |= 1u;
  }

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(equal + 64);
  if (*&self->_has)
  {
    if ((*(equal + 64) & 1) == 0 || self->_timestamp != *(equal + 7))
    {
      return 0;
    }
  }

  else if (*(equal + 64))
  {
    return 0;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    return 0;
  }

  return PBRepeatedInt32IsEqual();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
  }

  else
  {
    v2 = 0;
  }

  v3 = PBRepeatedInt32Hash() ^ v2;
  return v3 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)from
{
  if (*(from + 64))
  {
    self->_timestamp = *(from + 7);
    *&self->_has |= 1u;
  }

  softErrorInstanceCountersCount = [from softErrorInstanceCountersCount];
  if (softErrorInstanceCountersCount)
  {
    v6 = softErrorInstanceCountersCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiMetricsManagerSoftErrorUserFeedback addSoftErrorInstanceCounters:](self, "addSoftErrorInstanceCounters:", [from softErrorInstanceCountersAtIndex:i]);
    }
  }

  softErrorUserConfirmationCountersCount = [from softErrorUserConfirmationCountersCount];
  if (softErrorUserConfirmationCountersCount)
  {
    v9 = softErrorUserConfirmationCountersCount;
    for (j = 0; j != v9; ++j)
    {
      -[AWDWiFiMetricsManagerSoftErrorUserFeedback addSoftErrorUserConfirmationCounters:](self, "addSoftErrorUserConfirmationCounters:", [from softErrorUserConfirmationCountersAtIndex:j]);
    }
  }
}

@end