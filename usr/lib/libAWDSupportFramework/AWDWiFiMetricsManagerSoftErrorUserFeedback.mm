@interface AWDWiFiMetricsManagerSoftErrorUserFeedback
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)softErrorInstanceCountersAtIndex:(unint64_t)a3;
- (int)softErrorUserConfirmationCountersAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)softErrorInstanceCountersAtIndex:(unint64_t)a3
{
  p_softErrorInstanceCounters = &self->_softErrorInstanceCounters;
  count = self->_softErrorInstanceCounters.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_softErrorInstanceCounters->list[a3];
}

- (int)softErrorUserConfirmationCountersAtIndex:(unint64_t)a3
{
  p_softErrorUserConfirmationCounters = &self->_softErrorUserConfirmationCounters;
  count = self->_softErrorUserConfirmationCounters.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_softErrorUserConfirmationCounters->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerSoftErrorUserFeedback;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerSoftErrorUserFeedback description](&v3, sel_description), -[AWDWiFiMetricsManagerSoftErrorUserFeedback dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"softErrorInstanceCounters"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"softErrorUserConfirmationCounters"];
  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 7) = self->_timestamp;
    *(a3 + 64) |= 1u;
  }

  if ([(AWDWiFiMetricsManagerSoftErrorUserFeedback *)self softErrorInstanceCountersCount])
  {
    [a3 clearSoftErrorInstanceCounters];
    v5 = [(AWDWiFiMetricsManagerSoftErrorUserFeedback *)self softErrorInstanceCountersCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addSoftErrorInstanceCounters:{-[AWDWiFiMetricsManagerSoftErrorUserFeedback softErrorInstanceCountersAtIndex:](self, "softErrorInstanceCountersAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiMetricsManagerSoftErrorUserFeedback *)self softErrorUserConfirmationCountersCount])
  {
    [a3 clearSoftErrorUserConfirmationCounters];
    v8 = [(AWDWiFiMetricsManagerSoftErrorUserFeedback *)self softErrorUserConfirmationCountersCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addSoftErrorUserConfirmationCounters:{-[AWDWiFiMetricsManagerSoftErrorUserFeedback softErrorUserConfirmationCountersAtIndex:](self, "softErrorUserConfirmationCountersAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  if (![a3 isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(a3 + 64);
  if (*&self->_has)
  {
    if ((*(a3 + 64) & 1) == 0 || self->_timestamp != *(a3 + 7))
    {
      return 0;
    }
  }

  else if (*(a3 + 64))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 64))
  {
    self->_timestamp = *(a3 + 7);
    *&self->_has |= 1u;
  }

  v5 = [a3 softErrorInstanceCountersCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiMetricsManagerSoftErrorUserFeedback addSoftErrorInstanceCounters:](self, "addSoftErrorInstanceCounters:", [a3 softErrorInstanceCountersAtIndex:i]);
    }
  }

  v8 = [a3 softErrorUserConfirmationCountersCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[AWDWiFiMetricsManagerSoftErrorUserFeedback addSoftErrorUserConfirmationCounters:](self, "addSoftErrorUserConfirmationCounters:", [a3 softErrorUserConfirmationCountersAtIndex:j]);
    }
  }
}

@end