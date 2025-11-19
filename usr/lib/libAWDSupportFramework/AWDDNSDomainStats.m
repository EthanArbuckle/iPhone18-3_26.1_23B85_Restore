@interface AWDDNSDomainStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNetworkType:(id)a3;
- (int)StringAsRecordType:(id)a3;
- (int)networkType;
- (int)recordType;
- (unint64_t)hash;
- (unsigned)answeredQuerySendCountAtIndex:(unint64_t)a3;
- (unsigned)dnsOverTCPStateAtIndex:(unint64_t)a3;
- (unsigned)expiredAnswerStateAtIndex:(unint64_t)a3;
- (unsigned)negAnsweredQuerySendCountAtIndex:(unint64_t)a3;
- (unsigned)negResponseLatencyMsAtIndex:(unint64_t)a3;
- (unsigned)responseLatencyMsAtIndex:(unint64_t)a3;
- (unsigned)unansweredQueryDurationMsAtIndex:(unint64_t)a3;
- (unsigned)unansweredQuerySendCountAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasRecordType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsNetworkType:(id)a3
{
  if ([a3 isEqualToString:@"NonCellular"])
  {
    return 0;
  }

  else
  {
    return [a3 isEqualToString:@"Cellular"];
  }
}

- (unsigned)answeredQuerySendCountAtIndex:(unint64_t)a3
{
  p_answeredQuerySendCounts = &self->_answeredQuerySendCounts;
  count = self->_answeredQuerySendCounts.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_answeredQuerySendCounts->list[a3];
}

- (unsigned)unansweredQuerySendCountAtIndex:(unint64_t)a3
{
  p_unansweredQuerySendCounts = &self->_unansweredQuerySendCounts;
  count = self->_unansweredQuerySendCounts.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_unansweredQuerySendCounts->list[a3];
}

- (unsigned)responseLatencyMsAtIndex:(unint64_t)a3
{
  p_responseLatencyMs = &self->_responseLatencyMs;
  count = self->_responseLatencyMs.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_responseLatencyMs->list[a3];
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

- (void)setHasRecordType:(BOOL)a3
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

- (int)StringAsRecordType:(id)a3
{
  if ([a3 isEqualToString:@"Unspecified"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"Any"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"A"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"AAAA"])
  {
    return 3;
  }

  return 0;
}

- (unsigned)negAnsweredQuerySendCountAtIndex:(unint64_t)a3
{
  p_negAnsweredQuerySendCounts = &self->_negAnsweredQuerySendCounts;
  count = self->_negAnsweredQuerySendCounts.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_negAnsweredQuerySendCounts->list[a3];
}

- (unsigned)negResponseLatencyMsAtIndex:(unint64_t)a3
{
  p_negResponseLatencyMs = &self->_negResponseLatencyMs;
  count = self->_negResponseLatencyMs.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_negResponseLatencyMs->list[a3];
}

- (unsigned)unansweredQueryDurationMsAtIndex:(unint64_t)a3
{
  p_unansweredQueryDurationMs = &self->_unansweredQueryDurationMs;
  count = self->_unansweredQueryDurationMs.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_unansweredQueryDurationMs->list[a3];
}

- (unsigned)expiredAnswerStateAtIndex:(unint64_t)a3
{
  p_expiredAnswerStates = &self->_expiredAnswerStates;
  count = self->_expiredAnswerStates.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_expiredAnswerStates->list[a3];
}

- (unsigned)dnsOverTCPStateAtIndex:(unint64_t)a3
{
  p_dnsOverTCPStates = &self->_dnsOverTCPStates;
  count = self->_dnsOverTCPStates.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_dnsOverTCPStates->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDDNSDomainStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDDNSDomainStats description](&v3, sel_description), -[AWDDNSDomainStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
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

    [v3 setObject:v5 forKey:@"networkType"];
  }

  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"answeredQuerySendCount"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"unansweredQuerySendCount"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"responseLatencyMs"];
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

    [v3 setObject:v8 forKey:@"recordType"];
  }

  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"negAnsweredQuerySendCount"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"negResponseLatencyMs"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"unansweredQueryDurationMs"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"expiredAnswerState"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"dnsOverTCPState"];
  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 52) = self->_networkType;
    *(a3 + 216) |= 1u;
  }

  if (self->_domain)
  {
    [a3 setDomain:?];
  }

  if ([(AWDDNSDomainStats *)self answeredQuerySendCountsCount])
  {
    [a3 clearAnsweredQuerySendCounts];
    v5 = [(AWDDNSDomainStats *)self answeredQuerySendCountsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addAnsweredQuerySendCount:{-[AWDDNSDomainStats answeredQuerySendCountAtIndex:](self, "answeredQuerySendCountAtIndex:", i)}];
      }
    }
  }

  if ([(AWDDNSDomainStats *)self unansweredQuerySendCountsCount])
  {
    [a3 clearUnansweredQuerySendCounts];
    v8 = [(AWDDNSDomainStats *)self unansweredQuerySendCountsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addUnansweredQuerySendCount:{-[AWDDNSDomainStats unansweredQuerySendCountAtIndex:](self, "unansweredQuerySendCountAtIndex:", j)}];
      }
    }
  }

  if ([(AWDDNSDomainStats *)self responseLatencyMsCount])
  {
    [a3 clearResponseLatencyMs];
    v11 = [(AWDDNSDomainStats *)self responseLatencyMsCount];
    if (v11)
    {
      v12 = v11;
      for (k = 0; k != v12; ++k)
      {
        [a3 addResponseLatencyMs:{-[AWDDNSDomainStats responseLatencyMsAtIndex:](self, "responseLatencyMsAtIndex:", k)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 53) = self->_recordType;
    *(a3 + 216) |= 2u;
  }

  if ([(AWDDNSDomainStats *)self negAnsweredQuerySendCountsCount])
  {
    [a3 clearNegAnsweredQuerySendCounts];
    v14 = [(AWDDNSDomainStats *)self negAnsweredQuerySendCountsCount];
    if (v14)
    {
      v15 = v14;
      for (m = 0; m != v15; ++m)
      {
        [a3 addNegAnsweredQuerySendCount:{-[AWDDNSDomainStats negAnsweredQuerySendCountAtIndex:](self, "negAnsweredQuerySendCountAtIndex:", m)}];
      }
    }
  }

  if ([(AWDDNSDomainStats *)self negResponseLatencyMsCount])
  {
    [a3 clearNegResponseLatencyMs];
    v17 = [(AWDDNSDomainStats *)self negResponseLatencyMsCount];
    if (v17)
    {
      v18 = v17;
      for (n = 0; n != v18; ++n)
      {
        [a3 addNegResponseLatencyMs:{-[AWDDNSDomainStats negResponseLatencyMsAtIndex:](self, "negResponseLatencyMsAtIndex:", n)}];
      }
    }
  }

  if ([(AWDDNSDomainStats *)self unansweredQueryDurationMsCount])
  {
    [a3 clearUnansweredQueryDurationMs];
    v20 = [(AWDDNSDomainStats *)self unansweredQueryDurationMsCount];
    if (v20)
    {
      v21 = v20;
      for (ii = 0; ii != v21; ++ii)
      {
        [a3 addUnansweredQueryDurationMs:{-[AWDDNSDomainStats unansweredQueryDurationMsAtIndex:](self, "unansweredQueryDurationMsAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDDNSDomainStats *)self expiredAnswerStatesCount])
  {
    [a3 clearExpiredAnswerStates];
    v23 = [(AWDDNSDomainStats *)self expiredAnswerStatesCount];
    if (v23)
    {
      v24 = v23;
      for (jj = 0; jj != v24; ++jj)
      {
        [a3 addExpiredAnswerState:{-[AWDDNSDomainStats expiredAnswerStateAtIndex:](self, "expiredAnswerStateAtIndex:", jj)}];
      }
    }
  }

  if ([(AWDDNSDomainStats *)self dnsOverTCPStatesCount])
  {
    [a3 clearDnsOverTCPStates];
    v26 = [(AWDDNSDomainStats *)self dnsOverTCPStatesCount];
    if (v26)
    {
      v27 = v26;
      for (kk = 0; kk != v27; ++kk)
      {
        [a3 addDnsOverTCPState:{-[AWDDNSDomainStats dnsOverTCPStateAtIndex:](self, "dnsOverTCPStateAtIndex:", kk)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 208) = self->_networkType;
    *(v5 + 216) |= 1u;
  }

  *(v6 + 200) = [(NSString *)self->_domain copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  if (![a3 isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(a3 + 216);
  if (*&self->_has)
  {
    if ((*(a3 + 216) & 1) == 0 || self->_networkType != *(a3 + 52))
    {
      return 0;
    }
  }

  else if (*(a3 + 216))
  {
    return 0;
  }

  domain = self->_domain;
  if (domain | *(a3 + 25) && ![(NSString *)domain isEqual:?]|| !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    return 0;
  }

  v7 = *(a3 + 216);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 216) & 2) == 0 || self->_recordType != *(a3 + 53))
    {
      return 0;
    }
  }

  else if ((*(a3 + 216) & 2) != 0)
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 216))
  {
    self->_networkType = *(a3 + 52);
    *&self->_has |= 1u;
  }

  if (*(a3 + 25))
  {
    [(AWDDNSDomainStats *)self setDomain:?];
  }

  v5 = [a3 answeredQuerySendCountsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDDNSDomainStats addAnsweredQuerySendCount:](self, "addAnsweredQuerySendCount:", [a3 answeredQuerySendCountAtIndex:i]);
    }
  }

  v8 = [a3 unansweredQuerySendCountsCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[AWDDNSDomainStats addUnansweredQuerySendCount:](self, "addUnansweredQuerySendCount:", [a3 unansweredQuerySendCountAtIndex:j]);
    }
  }

  v11 = [a3 responseLatencyMsCount];
  if (v11)
  {
    v12 = v11;
    for (k = 0; k != v12; ++k)
    {
      -[AWDDNSDomainStats addResponseLatencyMs:](self, "addResponseLatencyMs:", [a3 responseLatencyMsAtIndex:k]);
    }
  }

  if ((*(a3 + 216) & 2) != 0)
  {
    self->_recordType = *(a3 + 53);
    *&self->_has |= 2u;
  }

  v14 = [a3 negAnsweredQuerySendCountsCount];
  if (v14)
  {
    v15 = v14;
    for (m = 0; m != v15; ++m)
    {
      -[AWDDNSDomainStats addNegAnsweredQuerySendCount:](self, "addNegAnsweredQuerySendCount:", [a3 negAnsweredQuerySendCountAtIndex:m]);
    }
  }

  v17 = [a3 negResponseLatencyMsCount];
  if (v17)
  {
    v18 = v17;
    for (n = 0; n != v18; ++n)
    {
      -[AWDDNSDomainStats addNegResponseLatencyMs:](self, "addNegResponseLatencyMs:", [a3 negResponseLatencyMsAtIndex:n]);
    }
  }

  v20 = [a3 unansweredQueryDurationMsCount];
  if (v20)
  {
    v21 = v20;
    for (ii = 0; ii != v21; ++ii)
    {
      -[AWDDNSDomainStats addUnansweredQueryDurationMs:](self, "addUnansweredQueryDurationMs:", [a3 unansweredQueryDurationMsAtIndex:ii]);
    }
  }

  v23 = [a3 expiredAnswerStatesCount];
  if (v23)
  {
    v24 = v23;
    for (jj = 0; jj != v24; ++jj)
    {
      -[AWDDNSDomainStats addExpiredAnswerState:](self, "addExpiredAnswerState:", [a3 expiredAnswerStateAtIndex:jj]);
    }
  }

  v26 = [a3 dnsOverTCPStatesCount];
  if (v26)
  {
    v27 = v26;
    for (kk = 0; kk != v27; ++kk)
    {
      -[AWDDNSDomainStats addDnsOverTCPState:](self, "addDnsOverTCPState:", [a3 dnsOverTCPStateAtIndex:kk]);
    }
  }
}

@end