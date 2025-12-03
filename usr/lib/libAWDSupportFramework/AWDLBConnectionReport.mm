@interface AWDLBConnectionReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)resumptionFailureErrorsAtIndex:(unint64_t)index;
- (int64_t)connectionReadyTimesAtIndex:(unint64_t)index;
- (int64_t)resumptionFailureTimesAtIndex:(unint64_t)index;
- (int64_t)resumptionSuccessTimesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasBytesSent:(BOOL)sent;
- (void)setHasClientConnectionCount:(BOOL)count;
- (void)setHasConnectionAttemptCount:(BOOL)count;
- (void)setHasConnectionCellularFallbackCount:(BOOL)count;
- (void)setHasConnectionDuration:(BOOL)duration;
- (void)setHasConnectionFailureCount:(BOOL)count;
- (void)setHasConnectionSuccessMptcpCount:(BOOL)count;
- (void)setHasConnectionSuccessTcpCount:(BOOL)count;
- (void)setHasResumptionFailureCount:(BOOL)count;
- (void)setHasResumptionSuccessCount:(BOOL)count;
- (void)setHasSuspensionCount:(BOOL)count;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasUpgradeSuccessAndNotNeededCount:(BOOL)count;
- (void)setHasUpgradeSuccessAndPrimaryCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDLBConnectionReport

- (void)dealloc
{
  PBRepeatedInt64Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt64Clear();
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = AWDLBConnectionReport;
  [(AWDLBConnectionReport *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasConnectionAttemptCount:(BOOL)count
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

- (void)setHasConnectionSuccessMptcpCount:(BOOL)count
{
  if (count)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasConnectionSuccessTcpCount:(BOOL)count
{
  if (count)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasConnectionFailureCount:(BOOL)count
{
  if (count)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasConnectionCellularFallbackCount:(BOOL)count
{
  if (count)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (int64_t)connectionReadyTimesAtIndex:(unint64_t)index
{
  p_connectionReadyTimes = &self->_connectionReadyTimes;
  count = self->_connectionReadyTimes.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_connectionReadyTimes->list[index];
}

- (void)setHasSuspensionCount:(BOOL)count
{
  if (count)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasResumptionSuccessCount:(BOOL)count
{
  if (count)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasResumptionFailureCount:(BOOL)count
{
  if (count)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)resumptionFailureErrorsAtIndex:(unint64_t)index
{
  p_resumptionFailureErrors = &self->_resumptionFailureErrors;
  count = self->_resumptionFailureErrors.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_resumptionFailureErrors->list[index];
}

- (int64_t)resumptionSuccessTimesAtIndex:(unint64_t)index
{
  p_resumptionSuccessTimes = &self->_resumptionSuccessTimes;
  count = self->_resumptionSuccessTimes.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_resumptionSuccessTimes->list[index];
}

- (int64_t)resumptionFailureTimesAtIndex:(unint64_t)index
{
  p_resumptionFailureTimes = &self->_resumptionFailureTimes;
  count = self->_resumptionFailureTimes.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_resumptionFailureTimes->list[index];
}

- (void)setHasUpgradeSuccessAndPrimaryCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasUpgradeSuccessAndNotNeededCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasConnectionDuration:(BOOL)duration
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

- (void)setHasBytesSent:(BOOL)sent
{
  if (sent)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasClientConnectionCount:(BOOL)count
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLBConnectionReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLBConnectionReport description](&v3, sel_description), -[AWDLBConnectionReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_connectionAttemptCount), @"connection_attempt_count"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_connectionSuccessMptcpCount), @"connection_success_mptcp_count"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_connectionSuccessTcpCount), @"connection_success_tcp_count"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_connectionFailureCount), @"connection_failure_count"}];
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_connectionCellularFallbackCount), @"connection_cellular_fallback_count"}];
  }

LABEL_8:
  [dictionary setObject:PBRepeatedInt64NSArray() forKey:@"connection_ready_times"];
  v5 = self->_has;
  if ((v5 & 0x1000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_suspensionCount), @"suspension_count"}];
    v5 = self->_has;
    if ((v5 & 0x800) == 0)
    {
LABEL_10:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_10;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_resumptionSuccessCount), @"resumption_success_count"}];
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_resumptionFailureCount), @"resumption_failure_count"}];
  }

LABEL_12:
  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"resumption_failure_errors"];
  [dictionary setObject:PBRepeatedInt64NSArray() forKey:@"resumption_success_times"];
  [dictionary setObject:PBRepeatedInt64NSArray() forKey:@"resumption_failure_times"];
  v6 = self->_has;
  if ((v6 & 0x4000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_upgradeSuccessAndPrimaryCount), @"upgrade_success_and_primary_count"}];
    v6 = self->_has;
    if ((v6 & 0x2000) == 0)
    {
LABEL_14:
      if ((v6 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_14;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_upgradeSuccessAndNotNeededCount), @"upgrade_success_and_not_needed_count"}];
  v6 = self->_has;
  if ((v6 & 8) == 0)
  {
LABEL_15:
    if ((v6 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_connectionDuration), @"connection_duration"}];
  v6 = self->_has;
  if ((v6 & 2) == 0)
  {
LABEL_16:
    if ((v6 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_33:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_bytesReceived), @"bytes_received"}];
    if ((*&self->_has & 4) == 0)
    {
      return dictionary;
    }

    goto LABEL_18;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_bytesSent), @"bytes_sent"}];
  v6 = self->_has;
  if (v6)
  {
    goto LABEL_33;
  }

LABEL_17:
  if ((v6 & 4) != 0)
  {
LABEL_18:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_clientConnectionCount), @"client_connection_count"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  connectionAttemptCount = self->_connectionAttemptCount;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  connectionSuccessMptcpCount = self->_connectionSuccessMptcpCount;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  connectionSuccessTcpCount = self->_connectionSuccessTcpCount;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_44:
  connectionFailureCount = self->_connectionFailureCount;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_7:
    connectionCellularFallbackCount = self->_connectionCellularFallbackCount;
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
  if (self->_connectionReadyTimes.count)
  {
    PBDataWriterPlaceMark();
    if (self->_connectionReadyTimes.count)
    {
      v6 = 0;
      do
      {
        v7 = self->_connectionReadyTimes.list[v6];
        PBDataWriterWriteInt64Field();
        ++v6;
      }

      while (v6 < self->_connectionReadyTimes.count);
    }

    PBDataWriterRecallMark();
  }

  v8 = self->_has;
  if ((v8 & 0x1000) != 0)
  {
    suspensionCount = self->_suspensionCount;
    PBDataWriterWriteInt32Field();
    v8 = self->_has;
    if ((v8 & 0x800) == 0)
    {
LABEL_15:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_15;
  }

  resumptionSuccessCount = self->_resumptionSuccessCount;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_16:
    resumptionFailureCount = self->_resumptionFailureCount;
    PBDataWriterWriteInt32Field();
  }

LABEL_17:
  if (self->_resumptionFailureErrors.count)
  {
    PBDataWriterPlaceMark();
    if (self->_resumptionFailureErrors.count)
    {
      v10 = 0;
      do
      {
        v11 = self->_resumptionFailureErrors.list[v10];
        PBDataWriterWriteInt32Field();
        ++v10;
      }

      while (v10 < self->_resumptionFailureErrors.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_resumptionSuccessTimes.count)
  {
    PBDataWriterPlaceMark();
    if (self->_resumptionSuccessTimes.count)
    {
      v12 = 0;
      do
      {
        v13 = self->_resumptionSuccessTimes.list[v12];
        PBDataWriterWriteInt64Field();
        ++v12;
      }

      while (v12 < self->_resumptionSuccessTimes.count);
    }

    PBDataWriterRecallMark();
  }

  if (self->_resumptionFailureTimes.count)
  {
    PBDataWriterPlaceMark();
    if (self->_resumptionFailureTimes.count)
    {
      v14 = 0;
      do
      {
        v15 = self->_resumptionFailureTimes.list[v14];
        PBDataWriterWriteInt64Field();
        ++v14;
      }

      while (v14 < self->_resumptionFailureTimes.count);
    }

    PBDataWriterRecallMark();
  }

  v16 = self->_has;
  if ((v16 & 0x4000) != 0)
  {
    upgradeSuccessAndPrimaryCount = self->_upgradeSuccessAndPrimaryCount;
    PBDataWriterWriteInt32Field();
    v16 = self->_has;
    if ((v16 & 0x2000) == 0)
    {
LABEL_34:
      if ((v16 & 8) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_51;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_34;
  }

  upgradeSuccessAndNotNeededCount = self->_upgradeSuccessAndNotNeededCount;
  PBDataWriterWriteInt32Field();
  v16 = self->_has;
  if ((v16 & 8) == 0)
  {
LABEL_35:
    if ((v16 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_52;
  }

LABEL_51:
  connectionDuration = self->_connectionDuration;
  PBDataWriterWriteInt64Field();
  v16 = self->_has;
  if ((v16 & 2) == 0)
  {
LABEL_36:
    if ((v16 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_53;
  }

LABEL_52:
  bytesSent = self->_bytesSent;
  PBDataWriterWriteInt64Field();
  v16 = self->_has;
  if ((v16 & 1) == 0)
  {
LABEL_37:
    if ((v16 & 4) == 0)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_53:
  bytesReceived = self->_bytesReceived;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_38:
  clientConnectionCount = self->_clientConnectionCount;
  PBDataWriterWriteInt64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(to + 17) = self->_timestamp;
    *(to + 92) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(to + 36) = self->_connectionAttemptCount;
  *(to + 92) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(to + 39) = self->_connectionSuccessMptcpCount;
  *(to + 92) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

LABEL_40:
    *(to + 38) = self->_connectionFailureCount;
    *(to + 92) |= 0x80u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_39:
  *(to + 40) = self->_connectionSuccessTcpCount;
  *(to + 92) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    goto LABEL_40;
  }

LABEL_6:
  if ((has & 0x40) != 0)
  {
LABEL_7:
    *(to + 37) = self->_connectionCellularFallbackCount;
    *(to + 92) |= 0x40u;
  }

LABEL_8:
  if ([(AWDLBConnectionReport *)self connectionReadyTimesCount])
  {
    [to clearConnectionReadyTimes];
    connectionReadyTimesCount = [(AWDLBConnectionReport *)self connectionReadyTimesCount];
    if (connectionReadyTimesCount)
    {
      v7 = connectionReadyTimesCount;
      for (i = 0; i != v7; ++i)
      {
        [to addConnectionReadyTimes:{-[AWDLBConnectionReport connectionReadyTimesAtIndex:](self, "connectionReadyTimesAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((v9 & 0x1000) == 0)
  {
    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_14;
    }

LABEL_43:
    *(to + 42) = self->_resumptionSuccessCount;
    *(to + 92) |= 0x800u;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *(to + 43) = self->_suspensionCount;
  *(to + 92) |= 0x1000u;
  v9 = self->_has;
  if ((v9 & 0x800) != 0)
  {
    goto LABEL_43;
  }

LABEL_14:
  if ((v9 & 0x400) != 0)
  {
LABEL_15:
    *(to + 41) = self->_resumptionFailureCount;
    *(to + 92) |= 0x400u;
  }

LABEL_16:
  if ([(AWDLBConnectionReport *)self resumptionFailureErrorsCount])
  {
    [to clearResumptionFailureErrors];
    resumptionFailureErrorsCount = [(AWDLBConnectionReport *)self resumptionFailureErrorsCount];
    if (resumptionFailureErrorsCount)
    {
      v11 = resumptionFailureErrorsCount;
      for (j = 0; j != v11; ++j)
      {
        [to addResumptionFailureErrors:{-[AWDLBConnectionReport resumptionFailureErrorsAtIndex:](self, "resumptionFailureErrorsAtIndex:", j)}];
      }
    }
  }

  if ([(AWDLBConnectionReport *)self resumptionSuccessTimesCount])
  {
    [to clearResumptionSuccessTimes];
    resumptionSuccessTimesCount = [(AWDLBConnectionReport *)self resumptionSuccessTimesCount];
    if (resumptionSuccessTimesCount)
    {
      v14 = resumptionSuccessTimesCount;
      for (k = 0; k != v14; ++k)
      {
        [to addResumptionSuccessTimes:{-[AWDLBConnectionReport resumptionSuccessTimesAtIndex:](self, "resumptionSuccessTimesAtIndex:", k)}];
      }
    }
  }

  if ([(AWDLBConnectionReport *)self resumptionFailureTimesCount])
  {
    [to clearResumptionFailureTimes];
    resumptionFailureTimesCount = [(AWDLBConnectionReport *)self resumptionFailureTimesCount];
    if (resumptionFailureTimesCount)
    {
      v17 = resumptionFailureTimesCount;
      for (m = 0; m != v17; ++m)
      {
        [to addResumptionFailureTimes:{-[AWDLBConnectionReport resumptionFailureTimesAtIndex:](self, "resumptionFailureTimesAtIndex:", m)}];
      }
    }
  }

  v19 = self->_has;
  if ((v19 & 0x4000) != 0)
  {
    *(to + 45) = self->_upgradeSuccessAndPrimaryCount;
    *(to + 92) |= 0x4000u;
    v19 = self->_has;
    if ((v19 & 0x2000) == 0)
    {
LABEL_30:
      if ((v19 & 8) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_47;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_30;
  }

  *(to + 44) = self->_upgradeSuccessAndNotNeededCount;
  *(to + 92) |= 0x2000u;
  v19 = self->_has;
  if ((v19 & 8) == 0)
  {
LABEL_31:
    if ((v19 & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(to + 16) = self->_connectionDuration;
  *(to + 92) |= 8u;
  v19 = self->_has;
  if ((v19 & 2) == 0)
  {
LABEL_32:
    if ((v19 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(to + 14) = self->_bytesSent;
  *(to + 92) |= 2u;
  v19 = self->_has;
  if ((v19 & 1) == 0)
  {
LABEL_33:
    if ((v19 & 4) == 0)
    {
      return;
    }

    goto LABEL_34;
  }

LABEL_49:
  *(to + 13) = self->_bytesReceived;
  *(to + 92) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_34:
  *(to + 15) = self->_clientConnectionCount;
  *(to + 92) |= 4u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 136) = self->_timestamp;
    *(v4 + 184) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 144) = self->_connectionAttemptCount;
  *(v4 + 184) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 156) = self->_connectionSuccessMptcpCount;
  *(v4 + 184) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 160) = self->_connectionSuccessTcpCount;
  *(v4 + 184) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_24:
  *(v4 + 152) = self->_connectionFailureCount;
  *(v4 + 184) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_7:
    *(v4 + 148) = self->_connectionCellularFallbackCount;
    *(v4 + 184) |= 0x40u;
  }

LABEL_8:
  PBRepeatedInt64Copy();
  v7 = self->_has;
  if ((v7 & 0x1000) != 0)
  {
    *(v5 + 172) = self->_suspensionCount;
    *(v5 + 184) |= 0x1000u;
    v7 = self->_has;
    if ((v7 & 0x800) == 0)
    {
LABEL_10:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 168) = self->_resumptionSuccessCount;
  *(v5 + 184) |= 0x800u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_11:
    *(v5 + 164) = self->_resumptionFailureCount;
    *(v5 + 184) |= 0x400u;
  }

LABEL_12:
  PBRepeatedInt32Copy();
  PBRepeatedInt64Copy();
  PBRepeatedInt64Copy();
  v8 = self->_has;
  if ((v8 & 0x4000) != 0)
  {
    *(v5 + 180) = self->_upgradeSuccessAndPrimaryCount;
    *(v5 + 184) |= 0x4000u;
    v8 = self->_has;
    if ((v8 & 0x2000) == 0)
    {
LABEL_14:
      if ((v8 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_14;
  }

  *(v5 + 176) = self->_upgradeSuccessAndNotNeededCount;
  *(v5 + 184) |= 0x2000u;
  v8 = self->_has;
  if ((v8 & 8) == 0)
  {
LABEL_15:
    if ((v8 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 128) = self->_connectionDuration;
  *(v5 + 184) |= 8u;
  v8 = self->_has;
  if ((v8 & 2) == 0)
  {
LABEL_16:
    if ((v8 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_33:
    *(v5 + 104) = self->_bytesReceived;
    *(v5 + 184) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_18;
  }

LABEL_32:
  *(v5 + 112) = self->_bytesSent;
  *(v5 + 184) |= 2u;
  v8 = self->_has;
  if (v8)
  {
    goto LABEL_33;
  }

LABEL_17:
  if ((v8 & 4) != 0)
  {
LABEL_18:
    *(v5 + 120) = self->_clientConnectionCount;
    *(v5 + 184) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    has = self->_has;
    v7 = *(equal + 92);
    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_timestamp != *(equal + 17))
      {
        goto LABEL_80;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
LABEL_80:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_connectionAttemptCount != *(equal + 36))
      {
        goto LABEL_80;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_80;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 92) & 0x100) == 0 || self->_connectionSuccessMptcpCount != *(equal + 39))
      {
        goto LABEL_80;
      }
    }

    else if ((*(equal + 92) & 0x100) != 0)
    {
      goto LABEL_80;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 92) & 0x200) == 0 || self->_connectionSuccessTcpCount != *(equal + 40))
      {
        goto LABEL_80;
      }
    }

    else if ((*(equal + 92) & 0x200) != 0)
    {
      goto LABEL_80;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_connectionFailureCount != *(equal + 38))
      {
        goto LABEL_80;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_80;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_connectionCellularFallbackCount != *(equal + 37))
      {
        goto LABEL_80;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_80;
    }

    IsEqual = PBRepeatedInt64IsEqual();
    if (IsEqual)
    {
      v8 = *(equal + 92);
      if ((*&self->_has & 0x1000) != 0)
      {
        if ((*(equal + 92) & 0x1000) == 0 || self->_suspensionCount != *(equal + 43))
        {
          goto LABEL_80;
        }
      }

      else if ((*(equal + 92) & 0x1000) != 0)
      {
        goto LABEL_80;
      }

      if ((*&self->_has & 0x800) != 0)
      {
        if ((*(equal + 92) & 0x800) == 0 || self->_resumptionSuccessCount != *(equal + 42))
        {
          goto LABEL_80;
        }
      }

      else if ((*(equal + 92) & 0x800) != 0)
      {
        goto LABEL_80;
      }

      if ((*&self->_has & 0x400) != 0)
      {
        if ((*(equal + 92) & 0x400) == 0 || self->_resumptionFailureCount != *(equal + 41))
        {
          goto LABEL_80;
        }
      }

      else if ((*(equal + 92) & 0x400) != 0)
      {
        goto LABEL_80;
      }

      IsEqual = PBRepeatedInt32IsEqual();
      if (IsEqual)
      {
        IsEqual = PBRepeatedInt64IsEqual();
        if (IsEqual)
        {
          IsEqual = PBRepeatedInt64IsEqual();
          if (IsEqual)
          {
            v9 = self->_has;
            v10 = *(equal + 92);
            if ((v9 & 0x4000) != 0)
            {
              if ((*(equal + 92) & 0x4000) == 0 || self->_upgradeSuccessAndPrimaryCount != *(equal + 45))
              {
                goto LABEL_80;
              }
            }

            else if ((*(equal + 92) & 0x4000) != 0)
            {
              goto LABEL_80;
            }

            if ((*&self->_has & 0x2000) != 0)
            {
              if ((*(equal + 92) & 0x2000) == 0 || self->_upgradeSuccessAndNotNeededCount != *(equal + 44))
              {
                goto LABEL_80;
              }
            }

            else if ((*(equal + 92) & 0x2000) != 0)
            {
              goto LABEL_80;
            }

            if ((v9 & 8) != 0)
            {
              if ((v10 & 8) == 0 || self->_connectionDuration != *(equal + 16))
              {
                goto LABEL_80;
              }
            }

            else if ((v10 & 8) != 0)
            {
              goto LABEL_80;
            }

            if ((v9 & 2) != 0)
            {
              if ((v10 & 2) == 0 || self->_bytesSent != *(equal + 14))
              {
                goto LABEL_80;
              }
            }

            else if ((v10 & 2) != 0)
            {
              goto LABEL_80;
            }

            if (v9)
            {
              if ((v10 & 1) == 0 || self->_bytesReceived != *(equal + 13))
              {
                goto LABEL_80;
              }
            }

            else if (v10)
            {
              goto LABEL_80;
            }

            LOBYTE(IsEqual) = (v10 & 4) == 0;
            if ((v9 & 4) != 0)
            {
              if ((v10 & 4) == 0 || self->_clientConnectionCount != *(equal + 15))
              {
                goto LABEL_80;
              }

              LOBYTE(IsEqual) = 1;
            }
          }
        }
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v24 = 2654435761u * self->_timestamp;
    if ((has & 0x20) != 0)
    {
LABEL_3:
      v23 = 2654435761 * self->_connectionAttemptCount;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v24 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v22 = 2654435761 * self->_connectionSuccessMptcpCount;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v22 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_5:
    v21 = 2654435761 * self->_connectionSuccessTcpCount;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v20 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v21 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v20 = 2654435761 * self->_connectionFailureCount;
  if ((has & 0x40) != 0)
  {
LABEL_7:
    v4 = 2654435761 * self->_connectionCellularFallbackCount;
    goto LABEL_14;
  }

LABEL_13:
  v4 = 0;
LABEL_14:
  v5 = PBRepeatedInt64Hash();
  if ((*&self->_has & 0x1000) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v7 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v6 = 2654435761 * self->_suspensionCount;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v7 = 2654435761 * self->_resumptionSuccessCount;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_17:
    v8 = 2654435761 * self->_resumptionFailureCount;
    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
LABEL_21:
  v9 = PBRepeatedInt32Hash();
  v10 = PBRepeatedInt64Hash();
  v11 = PBRepeatedInt64Hash();
  v12 = self->_has;
  if ((v12 & 0x4000) != 0)
  {
    v13 = 2654435761 * self->_upgradeSuccessAndPrimaryCount;
    if ((*&self->_has & 0x2000) != 0)
    {
LABEL_23:
      v14 = 2654435761 * self->_upgradeSuccessAndNotNeededCount;
      if ((v12 & 8) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v13 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_23;
    }
  }

  v14 = 0;
  if ((v12 & 8) != 0)
  {
LABEL_24:
    v15 = 2654435761 * self->_connectionDuration;
    if ((v12 & 2) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = 0;
  if ((v12 & 2) != 0)
  {
LABEL_25:
    v16 = 2654435761 * self->_bytesSent;
    if (v12)
    {
      goto LABEL_26;
    }

LABEL_32:
    v17 = 0;
    if ((v12 & 4) != 0)
    {
      goto LABEL_27;
    }

LABEL_33:
    v18 = 0;
    return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v4 ^ v6 ^ v7 ^ v8 ^ v5 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
  }

LABEL_31:
  v16 = 0;
  if ((v12 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  v17 = 2654435761 * self->_bytesReceived;
  if ((v12 & 4) == 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v18 = 2654435761 * self->_clientConnectionCount;
  return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v4 ^ v6 ^ v7 ^ v8 ^ v5 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 92);
  if ((v5 & 0x10) != 0)
  {
    self->_timestamp = *(from + 17);
    *&self->_has |= 0x10u;
    v5 = *(from + 92);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_connectionAttemptCount = *(from + 36);
  *&self->_has |= 0x20u;
  v5 = *(from + 92);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_connectionSuccessMptcpCount = *(from + 39);
  *&self->_has |= 0x100u;
  v5 = *(from + 92);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_connectionSuccessTcpCount = *(from + 40);
  *&self->_has |= 0x200u;
  v5 = *(from + 92);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_36:
  self->_connectionFailureCount = *(from + 38);
  *&self->_has |= 0x80u;
  if ((*(from + 92) & 0x40) != 0)
  {
LABEL_7:
    self->_connectionCellularFallbackCount = *(from + 37);
    *&self->_has |= 0x40u;
  }

LABEL_8:
  connectionReadyTimesCount = [from connectionReadyTimesCount];
  if (connectionReadyTimesCount)
  {
    v7 = connectionReadyTimesCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDLBConnectionReport addConnectionReadyTimes:](self, "addConnectionReadyTimes:", [from connectionReadyTimesAtIndex:i]);
    }
  }

  v9 = *(from + 92);
  if ((v9 & 0x1000) != 0)
  {
    self->_suspensionCount = *(from + 43);
    *&self->_has |= 0x1000u;
    v9 = *(from + 92);
    if ((v9 & 0x800) == 0)
    {
LABEL_13:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(from + 92) & 0x800) == 0)
  {
    goto LABEL_13;
  }

  self->_resumptionSuccessCount = *(from + 42);
  *&self->_has |= 0x800u;
  if ((*(from + 92) & 0x400) != 0)
  {
LABEL_14:
    self->_resumptionFailureCount = *(from + 41);
    *&self->_has |= 0x400u;
  }

LABEL_15:
  resumptionFailureErrorsCount = [from resumptionFailureErrorsCount];
  if (resumptionFailureErrorsCount)
  {
    v11 = resumptionFailureErrorsCount;
    for (j = 0; j != v11; ++j)
    {
      -[AWDLBConnectionReport addResumptionFailureErrors:](self, "addResumptionFailureErrors:", [from resumptionFailureErrorsAtIndex:j]);
    }
  }

  resumptionSuccessTimesCount = [from resumptionSuccessTimesCount];
  if (resumptionSuccessTimesCount)
  {
    v14 = resumptionSuccessTimesCount;
    for (k = 0; k != v14; ++k)
    {
      -[AWDLBConnectionReport addResumptionSuccessTimes:](self, "addResumptionSuccessTimes:", [from resumptionSuccessTimesAtIndex:k]);
    }
  }

  resumptionFailureTimesCount = [from resumptionFailureTimesCount];
  if (resumptionFailureTimesCount)
  {
    v17 = resumptionFailureTimesCount;
    for (m = 0; m != v17; ++m)
    {
      -[AWDLBConnectionReport addResumptionFailureTimes:](self, "addResumptionFailureTimes:", [from resumptionFailureTimesAtIndex:m]);
    }
  }

  v19 = *(from + 92);
  if ((v19 & 0x4000) != 0)
  {
    self->_upgradeSuccessAndPrimaryCount = *(from + 45);
    *&self->_has |= 0x4000u;
    v19 = *(from + 92);
    if ((v19 & 0x2000) == 0)
    {
LABEL_26:
      if ((v19 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_43;
    }
  }

  else if ((*(from + 92) & 0x2000) == 0)
  {
    goto LABEL_26;
  }

  self->_upgradeSuccessAndNotNeededCount = *(from + 44);
  *&self->_has |= 0x2000u;
  v19 = *(from + 92);
  if ((v19 & 8) == 0)
  {
LABEL_27:
    if ((v19 & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_connectionDuration = *(from + 16);
  *&self->_has |= 8u;
  v19 = *(from + 92);
  if ((v19 & 2) == 0)
  {
LABEL_28:
    if ((v19 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_bytesSent = *(from + 14);
  *&self->_has |= 2u;
  v19 = *(from + 92);
  if ((v19 & 1) == 0)
  {
LABEL_29:
    if ((v19 & 4) == 0)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_45:
  self->_bytesReceived = *(from + 13);
  *&self->_has |= 1u;
  if ((*(from + 92) & 4) == 0)
  {
    return;
  }

LABEL_30:
  self->_clientConnectionCount = *(from + 15);
  *&self->_has |= 4u;
}

@end