@interface AWDDNSDomainStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNetworkType:(id)type;
- (int)StringAsRecordType:(id)type;
- (int)networkType;
- (int)recordType;
- (unint64_t)hash;
- (unsigned)answeredQuerySendCountAtIndex:(unint64_t)index;
- (unsigned)dnsOverTCPStateAtIndex:(unint64_t)index;
- (unsigned)expiredAnswerStateAtIndex:(unint64_t)index;
- (unsigned)negAnsweredQuerySendCountAtIndex:(unint64_t)index;
- (unsigned)negResponseLatencyMsAtIndex:(unint64_t)index;
- (unsigned)responseLatencyMsAtIndex:(unint64_t)index;
- (unsigned)unansweredQueryDurationMsAtIndex:(unint64_t)index;
- (unsigned)unansweredQuerySendCountAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasRecordType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDDNSDomainStats

- (void)dealloc
{
  [(AWDDNSDomainStats *)self setDomain:0];
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDDNSDomainStats;
  [(AWDDNSDomainStats *)&v3 dealloc];
}

- (int)networkType
{
  if (*&self->_has)
  {
    return self->_networkType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsNetworkType:(id)type
{
  if ([type isEqualToString:@"NonCellular"])
  {
    return 0;
  }

  else
  {
    return [type isEqualToString:@"Cellular"];
  }
}

- (unsigned)answeredQuerySendCountAtIndex:(unint64_t)index
{
  p_answeredQuerySendCounts = &self->_answeredQuerySendCounts;
  count = self->_answeredQuerySendCounts.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_answeredQuerySendCounts->list[index];
}

- (unsigned)unansweredQuerySendCountAtIndex:(unint64_t)index
{
  p_unansweredQuerySendCounts = &self->_unansweredQuerySendCounts;
  count = self->_unansweredQuerySendCounts.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_unansweredQuerySendCounts->list[index];
}

- (unsigned)responseLatencyMsAtIndex:(unint64_t)index
{
  p_responseLatencyMs = &self->_responseLatencyMs;
  count = self->_responseLatencyMs.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_responseLatencyMs->list[index];
}

- (int)recordType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_recordType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRecordType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsRecordType:(id)type
{
  if ([type isEqualToString:@"Unspecified"])
  {
    return 0;
  }

  if ([type isEqualToString:@"Any"])
  {
    return 1;
  }

  if ([type isEqualToString:@"A"])
  {
    return 2;
  }

  if ([type isEqualToString:@"AAAA"])
  {
    return 3;
  }

  return 0;
}

- (unsigned)negAnsweredQuerySendCountAtIndex:(unint64_t)index
{
  p_negAnsweredQuerySendCounts = &self->_negAnsweredQuerySendCounts;
  count = self->_negAnsweredQuerySendCounts.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_negAnsweredQuerySendCounts->list[index];
}

- (unsigned)negResponseLatencyMsAtIndex:(unint64_t)index
{
  p_negResponseLatencyMs = &self->_negResponseLatencyMs;
  count = self->_negResponseLatencyMs.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_negResponseLatencyMs->list[index];
}

- (unsigned)unansweredQueryDurationMsAtIndex:(unint64_t)index
{
  p_unansweredQueryDurationMs = &self->_unansweredQueryDurationMs;
  count = self->_unansweredQueryDurationMs.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_unansweredQueryDurationMs->list[index];
}

- (unsigned)expiredAnswerStateAtIndex:(unint64_t)index
{
  p_expiredAnswerStates = &self->_expiredAnswerStates;
  count = self->_expiredAnswerStates.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_expiredAnswerStates->list[index];
}

- (unsigned)dnsOverTCPStateAtIndex:(unint64_t)index
{
  p_dnsOverTCPStates = &self->_dnsOverTCPStates;
  count = self->_dnsOverTCPStates.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_dnsOverTCPStates->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDDNSDomainStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDDNSDomainStats description](&v3, sel_description), -[AWDDNSDomainStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    networkType = self->_networkType;
    if (networkType)
    {
      if (networkType == 1)
      {
        v5 = @"Cellular";
      }

      else
      {
        v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_networkType];
      }
    }

    else
    {
      v5 = @"NonCellular";
    }

    [dictionary setObject:v5 forKey:@"networkType"];
  }

  domain = self->_domain;
  if (domain)
  {
    [dictionary setObject:domain forKey:@"domain"];
  }

  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"answeredQuerySendCount"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"unansweredQuerySendCount"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"responseLatencyMs"];
  if ((*&self->_has & 2) != 0)
  {
    recordType = self->_recordType;
    if (recordType >= 4)
    {
      v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_recordType];
    }

    else
    {
      v8 = off_29EE32A08[recordType];
    }

    [dictionary setObject:v8 forKey:@"recordType"];
  }

  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"negAnsweredQuerySendCount"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"negResponseLatencyMs"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"unansweredQueryDurationMs"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"expiredAnswerState"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"dnsOverTCPState"];
  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    networkType = self->_networkType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_answeredQuerySendCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_answeredQuerySendCounts.count)
    {
      v5 = 0;
      do
      {
        v6 = self->_answeredQuerySendCounts.list[v5];
        PBDataWriterWriteUint32Field();
        ++v5;
      }

      while (v5 < self->_answeredQuerySendCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_unansweredQuerySendCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_unansweredQuerySendCounts.count)
    {
      v7 = 0;
      do
      {
        v8 = self->_unansweredQuerySendCounts.list[v7];
        PBDataWriterWriteUint32Field();
        ++v7;
      }

      while (v7 < self->_unansweredQuerySendCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_responseLatencyMs.count)
  {
    PBDataWriterPlaceMark();
    if (self->_responseLatencyMs.count)
    {
      v9 = 0;
      do
      {
        v10 = self->_responseLatencyMs.list[v9];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v9 < self->_responseLatencyMs.count);
    }

    PBDataWriterRecallMark();
  }

  if ((*&self->_has & 2) != 0)
  {
    recordType = self->_recordType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_negAnsweredQuerySendCounts.count)
  {
    PBDataWriterPlaceMark();
    if (self->_negAnsweredQuerySendCounts.count)
    {
      v12 = 0;
      do
      {
        v13 = self->_negAnsweredQuerySendCounts.list[v12];
        PBDataWriterWriteUint32Field();
        ++v12;
      }

      while (v12 < self->_negAnsweredQuerySendCounts.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_negResponseLatencyMs.count)
  {
    PBDataWriterPlaceMark();
    if (self->_negResponseLatencyMs.count)
    {
      v14 = 0;
      do
      {
        v15 = self->_negResponseLatencyMs.list[v14];
        PBDataWriterWriteUint32Field();
        ++v14;
      }

      while (v14 < self->_negResponseLatencyMs.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_unansweredQueryDurationMs.count)
  {
    PBDataWriterPlaceMark();
    if (self->_unansweredQueryDurationMs.count)
    {
      v16 = 0;
      do
      {
        v17 = self->_unansweredQueryDurationMs.list[v16];
        PBDataWriterWriteUint32Field();
        ++v16;
      }

      while (v16 < self->_unansweredQueryDurationMs.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_expiredAnswerStates.count)
  {
    PBDataWriterPlaceMark();
    if (self->_expiredAnswerStates.count)
    {
      v18 = 0;
      do
      {
        v19 = self->_expiredAnswerStates.list[v18];
        PBDataWriterWriteUint32Field();
        ++v18;
      }

      while (v18 < self->_expiredAnswerStates.count);
    }

    PBDataWriterRecallMark();
  }

  p_dnsOverTCPStates = &self->_dnsOverTCPStates;
  if (p_dnsOverTCPStates->count)
  {
    PBDataWriterPlaceMark();
    if (p_dnsOverTCPStates->count)
    {
      v21 = 0;
      do
      {
        v22 = p_dnsOverTCPStates->list[v21];
        PBDataWriterWriteUint32Field();
        ++v21;
      }

      while (v21 < p_dnsOverTCPStates->count);
    }

    PBDataWriterRecallMark();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 52) = self->_networkType;
    *(to + 216) |= 1u;
  }

  if (self->_domain)
  {
    [to setDomain:?];
  }

  if ([(AWDDNSDomainStats *)self answeredQuerySendCountsCount])
  {
    [to clearAnsweredQuerySendCounts];
    answeredQuerySendCountsCount = [(AWDDNSDomainStats *)self answeredQuerySendCountsCount];
    if (answeredQuerySendCountsCount)
    {
      v6 = answeredQuerySendCountsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addAnsweredQuerySendCount:{-[AWDDNSDomainStats answeredQuerySendCountAtIndex:](self, "answeredQuerySendCountAtIndex:", i)}];
      }
    }
  }

  if ([(AWDDNSDomainStats *)self unansweredQuerySendCountsCount])
  {
    [to clearUnansweredQuerySendCounts];
    unansweredQuerySendCountsCount = [(AWDDNSDomainStats *)self unansweredQuerySendCountsCount];
    if (unansweredQuerySendCountsCount)
    {
      v9 = unansweredQuerySendCountsCount;
      for (j = 0; j != v9; ++j)
      {
        [to addUnansweredQuerySendCount:{-[AWDDNSDomainStats unansweredQuerySendCountAtIndex:](self, "unansweredQuerySendCountAtIndex:", j)}];
      }
    }
  }

  if ([(AWDDNSDomainStats *)self responseLatencyMsCount])
  {
    [to clearResponseLatencyMs];
    responseLatencyMsCount = [(AWDDNSDomainStats *)self responseLatencyMsCount];
    if (responseLatencyMsCount)
    {
      v12 = responseLatencyMsCount;
      for (k = 0; k != v12; ++k)
      {
        [to addResponseLatencyMs:{-[AWDDNSDomainStats responseLatencyMsAtIndex:](self, "responseLatencyMsAtIndex:", k)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 53) = self->_recordType;
    *(to + 216) |= 2u;
  }

  if ([(AWDDNSDomainStats *)self negAnsweredQuerySendCountsCount])
  {
    [to clearNegAnsweredQuerySendCounts];
    negAnsweredQuerySendCountsCount = [(AWDDNSDomainStats *)self negAnsweredQuerySendCountsCount];
    if (negAnsweredQuerySendCountsCount)
    {
      v15 = negAnsweredQuerySendCountsCount;
      for (m = 0; m != v15; ++m)
      {
        [to addNegAnsweredQuerySendCount:{-[AWDDNSDomainStats negAnsweredQuerySendCountAtIndex:](self, "negAnsweredQuerySendCountAtIndex:", m)}];
      }
    }
  }

  if ([(AWDDNSDomainStats *)self negResponseLatencyMsCount])
  {
    [to clearNegResponseLatencyMs];
    negResponseLatencyMsCount = [(AWDDNSDomainStats *)self negResponseLatencyMsCount];
    if (negResponseLatencyMsCount)
    {
      v18 = negResponseLatencyMsCount;
      for (n = 0; n != v18; ++n)
      {
        [to addNegResponseLatencyMs:{-[AWDDNSDomainStats negResponseLatencyMsAtIndex:](self, "negResponseLatencyMsAtIndex:", n)}];
      }
    }
  }

  if ([(AWDDNSDomainStats *)self unansweredQueryDurationMsCount])
  {
    [to clearUnansweredQueryDurationMs];
    unansweredQueryDurationMsCount = [(AWDDNSDomainStats *)self unansweredQueryDurationMsCount];
    if (unansweredQueryDurationMsCount)
    {
      v21 = unansweredQueryDurationMsCount;
      for (ii = 0; ii != v21; ++ii)
      {
        [to addUnansweredQueryDurationMs:{-[AWDDNSDomainStats unansweredQueryDurationMsAtIndex:](self, "unansweredQueryDurationMsAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDDNSDomainStats *)self expiredAnswerStatesCount])
  {
    [to clearExpiredAnswerStates];
    expiredAnswerStatesCount = [(AWDDNSDomainStats *)self expiredAnswerStatesCount];
    if (expiredAnswerStatesCount)
    {
      v24 = expiredAnswerStatesCount;
      for (jj = 0; jj != v24; ++jj)
      {
        [to addExpiredAnswerState:{-[AWDDNSDomainStats expiredAnswerStateAtIndex:](self, "expiredAnswerStateAtIndex:", jj)}];
      }
    }
  }

  if ([(AWDDNSDomainStats *)self dnsOverTCPStatesCount])
  {
    [to clearDnsOverTCPStates];
    dnsOverTCPStatesCount = [(AWDDNSDomainStats *)self dnsOverTCPStatesCount];
    if (dnsOverTCPStatesCount)
    {
      v27 = dnsOverTCPStatesCount;
      for (kk = 0; kk != v27; ++kk)
      {
        [to addDnsOverTCPState:{-[AWDDNSDomainStats dnsOverTCPStateAtIndex:](self, "dnsOverTCPStateAtIndex:", kk)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 208) = self->_networkType;
    *(v5 + 216) |= 1u;
  }

  *(v6 + 200) = [(NSString *)self->_domain copyWithZone:zone];
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 212) = self->_recordType;
    *(v6 + 216) |= 2u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(equal + 216);
  if (*&self->_has)
  {
    if ((*(equal + 216) & 1) == 0 || self->_networkType != *(equal + 52))
    {
      return 0;
    }
  }

  else if (*(equal + 216))
  {
    return 0;
  }

  domain = self->_domain;
  if (domain | *(equal + 25) && ![(NSString *)domain isEqual:?]|| !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    return 0;
  }

  v7 = *(equal + 216);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 216) & 2) == 0 || self->_recordType != *(equal + 53))
    {
      return 0;
    }
  }

  else if ((*(equal + 216) & 2) != 0)
  {
    return 0;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    return 0;
  }

  return PBRepeatedUInt32IsEqual();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_networkType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_domain hash];
  v5 = PBRepeatedUInt32Hash();
  v6 = PBRepeatedUInt32Hash();
  v7 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_recordType;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 ^ v6 ^ v7 ^ v8 ^ PBRepeatedUInt32Hash();
  v10 = v4 ^ v3 ^ v9 ^ PBRepeatedUInt32Hash();
  v11 = PBRepeatedUInt32Hash();
  v12 = v11 ^ PBRepeatedUInt32Hash();
  return v10 ^ v12 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  if (*(from + 216))
  {
    self->_networkType = *(from + 52);
    *&self->_has |= 1u;
  }

  if (*(from + 25))
  {
    [(AWDDNSDomainStats *)self setDomain:?];
  }

  answeredQuerySendCountsCount = [from answeredQuerySendCountsCount];
  if (answeredQuerySendCountsCount)
  {
    v6 = answeredQuerySendCountsCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDDNSDomainStats addAnsweredQuerySendCount:](self, "addAnsweredQuerySendCount:", [from answeredQuerySendCountAtIndex:i]);
    }
  }

  unansweredQuerySendCountsCount = [from unansweredQuerySendCountsCount];
  if (unansweredQuerySendCountsCount)
  {
    v9 = unansweredQuerySendCountsCount;
    for (j = 0; j != v9; ++j)
    {
      -[AWDDNSDomainStats addUnansweredQuerySendCount:](self, "addUnansweredQuerySendCount:", [from unansweredQuerySendCountAtIndex:j]);
    }
  }

  responseLatencyMsCount = [from responseLatencyMsCount];
  if (responseLatencyMsCount)
  {
    v12 = responseLatencyMsCount;
    for (k = 0; k != v12; ++k)
    {
      -[AWDDNSDomainStats addResponseLatencyMs:](self, "addResponseLatencyMs:", [from responseLatencyMsAtIndex:k]);
    }
  }

  if ((*(from + 216) & 2) != 0)
  {
    self->_recordType = *(from + 53);
    *&self->_has |= 2u;
  }

  negAnsweredQuerySendCountsCount = [from negAnsweredQuerySendCountsCount];
  if (negAnsweredQuerySendCountsCount)
  {
    v15 = negAnsweredQuerySendCountsCount;
    for (m = 0; m != v15; ++m)
    {
      -[AWDDNSDomainStats addNegAnsweredQuerySendCount:](self, "addNegAnsweredQuerySendCount:", [from negAnsweredQuerySendCountAtIndex:m]);
    }
  }

  negResponseLatencyMsCount = [from negResponseLatencyMsCount];
  if (negResponseLatencyMsCount)
  {
    v18 = negResponseLatencyMsCount;
    for (n = 0; n != v18; ++n)
    {
      -[AWDDNSDomainStats addNegResponseLatencyMs:](self, "addNegResponseLatencyMs:", [from negResponseLatencyMsAtIndex:n]);
    }
  }

  unansweredQueryDurationMsCount = [from unansweredQueryDurationMsCount];
  if (unansweredQueryDurationMsCount)
  {
    v21 = unansweredQueryDurationMsCount;
    for (ii = 0; ii != v21; ++ii)
    {
      -[AWDDNSDomainStats addUnansweredQueryDurationMs:](self, "addUnansweredQueryDurationMs:", [from unansweredQueryDurationMsAtIndex:ii]);
    }
  }

  expiredAnswerStatesCount = [from expiredAnswerStatesCount];
  if (expiredAnswerStatesCount)
  {
    v24 = expiredAnswerStatesCount;
    for (jj = 0; jj != v24; ++jj)
    {
      -[AWDDNSDomainStats addExpiredAnswerState:](self, "addExpiredAnswerState:", [from expiredAnswerStateAtIndex:jj]);
    }
  }

  dnsOverTCPStatesCount = [from dnsOverTCPStatesCount];
  if (dnsOverTCPStatesCount)
  {
    v27 = dnsOverTCPStatesCount;
    for (kk = 0; kk != v27; ++kk)
    {
      -[AWDDNSDomainStats addDnsOverTCPState:](self, "addDnsOverTCPState:", [from dnsOverTCPStateAtIndex:kk]);
    }
  }
}

@end