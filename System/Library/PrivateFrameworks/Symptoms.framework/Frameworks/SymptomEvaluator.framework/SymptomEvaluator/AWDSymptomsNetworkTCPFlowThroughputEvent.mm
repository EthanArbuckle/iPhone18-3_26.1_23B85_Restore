@interface AWDSymptomsNetworkTCPFlowThroughputEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSnapshotType:(id)type;
- (int)StringAsThroughputType:(id)type;
- (int)snapshotType;
- (int)throughputType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConnSuccess:(BOOL)success;
- (void)setHasDelayedACKFactor:(BOOL)factor;
- (void)setHasDlThroughputBytesPerSec:(BOOL)sec;
- (void)setHasEstimatorConfidence:(BOOL)confidence;
- (void)setHasEstimatorDelayMsecs:(BOOL)msecs;
- (void)setHasFlowDurationMsecs:(BOOL)msecs;
- (void)setHasInvalidResponses:(BOOL)responses;
- (void)setHasLQM:(BOOL)m;
- (void)setHasMaxCongestionWindow:(BOOL)window;
- (void)setHasPacketErrorRate:(BOOL)rate;
- (void)setHasRetransmissionTimeoutMsecs:(BOOL)msecs;
- (void)setHasRttAverageMsecs:(BOOL)msecs;
- (void)setHasRttMinimumMsecs:(BOOL)msecs;
- (void)setHasRttVariation:(BOOL)variation;
- (void)setHasRxBytes:(BOOL)bytes;
- (void)setHasRxDuplicateBytes:(BOOL)bytes;
- (void)setHasRxOutOfOrderBytes:(BOOL)bytes;
- (void)setHasSnapshotType:(BOOL)type;
- (void)setHasThroughputType:(BOOL)type;
- (void)setHasTimeToNetworkEventsMsecs:(BOOL)msecs;
- (void)setHasTxBytes:(BOOL)bytes;
- (void)setHasTxRetransmittedBytes:(BOOL)bytes;
- (void)setHasUlThroughputBytesPerSec:(BOOL)sec;
- (void)writeTo:(id)to;
@end

@implementation AWDSymptomsNetworkTCPFlowThroughputEvent

- (void)setHasTimeToNetworkEventsMsecs:(BOOL)msecs
{
  if (msecs)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (int)throughputType
{
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    return self->_throughputType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasThroughputType:(BOOL)type
{
  if (type)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (int)StringAsThroughputType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Observed"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"BasebandEstimated"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"NetworkEstimated"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"TCPSteadyStateModeled"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)snapshotType
{
  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    return self->_snapshotType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasSnapshotType:(BOOL)type
{
  if (type)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (int)StringAsSnapshotType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"SessionStart"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SessionMid"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"SessionEnd"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasTxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasRxBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasFlowDurationMsecs:(BOOL)msecs
{
  if (msecs)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasUlThroughputBytesPerSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasDlThroughputBytesPerSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasEstimatorDelayMsecs:(BOOL)msecs
{
  if (msecs)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasEstimatorConfidence:(BOOL)confidence
{
  if (confidence)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasInvalidResponses:(BOOL)responses
{
  if (responses)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasRxDuplicateBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasRxOutOfOrderBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasTxRetransmittedBytes:(BOOL)bytes
{
  if (bytes)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasConnSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasRttMinimumMsecs:(BOOL)msecs
{
  if (msecs)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasRttAverageMsecs:(BOOL)msecs
{
  if (msecs)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasRttVariation:(BOOL)variation
{
  if (variation)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasMaxCongestionWindow:(BOOL)window
{
  if (window)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasDelayedACKFactor:(BOOL)factor
{
  if (factor)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasRetransmissionTimeoutMsecs:(BOOL)msecs
{
  if (msecs)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasPacketErrorRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasLQM:(BOOL)m
{
  if (m)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsNetworkTCPFlowThroughputEvent;
  v4 = [(AWDSymptomsNetworkTCPFlowThroughputEvent *)&v8 description];
  dictionaryRepresentation = [(AWDSymptomsNetworkTCPFlowThroughputEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timeToNetworkEventsMsecs];
    [dictionary setObject:v7 forKey:@"timeToNetworkEvents_msecs"];

    has = self->_has;
    if ((*&has & 0x800000) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  v8 = self->_throughputType - 1;
  if (v8 >= 4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_throughputType];
  }

  else
  {
    v9 = off_27898CF18[v8];
  }

  [dictionary setObject:v9 forKey:@"throughputType"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_34:
  v10 = self->_snapshotType - 1;
  if (v10 >= 3)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_snapshotType];
  }

  else
  {
    v11 = off_27898CF38[v10];
  }

  [dictionary setObject:v11 forKey:@"snapshotType"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_txBytes];
  [dictionary setObject:v12 forKey:@"txBytes"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_rxBytes];
  [dictionary setObject:v13 forKey:@"rxBytes"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_flowDurationMsecs];
  [dictionary setObject:v14 forKey:@"flowDuration_msecs"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_8:
    if ((*&has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_ulThroughputBytesPerSec];
  [dictionary setObject:v15 forKey:@"ulThroughputBytesPerSec"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_dlThroughputBytesPerSec];
  [dictionary setObject:v16 forKey:@"dlThroughputBytesPerSec"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_estimatorDelayMsecs];
  [dictionary setObject:v17 forKey:@"estimatorDelay_msecs"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_estimatorConfidence];
  [dictionary setObject:v18 forKey:@"estimatorConfidence"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_invalidResponses];
  [dictionary setObject:v19 forKey:@"invalidResponses"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_rxDuplicateBytes];
  [dictionary setObject:v20 forKey:@"rxDuplicateBytes"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_rxOutOfOrderBytes];
  [dictionary setObject:v21 forKey:@"rxOutOfOrderBytes"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_15:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_txRetransmittedBytes];
  [dictionary setObject:v22 forKey:@"txRetransmittedBytes"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_connAttempts];
  [dictionary setObject:v23 forKey:@"connAttempts"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_connSuccess];
  [dictionary setObject:v24 forKey:@"connSuccess"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_rttMinimumMsecs];
  [dictionary setObject:v25 forKey:@"rttMinimum_msecs"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_rttAverageMsecs];
  [dictionary setObject:v26 forKey:@"rttAverage_msecs"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_rttVariation];
  [dictionary setObject:v27 forKey:@"rttVariation"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_maxCongestionWindow];
  [dictionary setObject:v28 forKey:@"maxCongestionWindow"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_delayedACKFactor];
  [dictionary setObject:v29 forKey:@"delayedACKFactor"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_retransmissionTimeoutMsecs];
  [dictionary setObject:v30 forKey:@"retransmissionTimeout_msecs"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_24:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_57:
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_packetErrorRate];
  [dictionary setObject:v31 forKey:@"packetErrorRate"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_25:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lQM];
    [dictionary setObject:v5 forKey:@"LQM"];
  }

LABEL_26:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    timeToNetworkEventsMsecs = self->_timeToNetworkEventsMsecs;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x800000) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((*&has & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  throughputType = self->_throughputType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  snapshotType = self->_snapshotType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  txBytes = self->_txBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  rxBytes = self->_rxBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  flowDurationMsecs = self->_flowDurationMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_8:
    if ((*&has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  ulThroughputBytesPerSec = self->_ulThroughputBytesPerSec;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  dlThroughputBytesPerSec = self->_dlThroughputBytesPerSec;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  estimatorDelayMsecs = self->_estimatorDelayMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  estimatorConfidence = self->_estimatorConfidence;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  invalidResponses = self->_invalidResponses;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  rxDuplicateBytes = self->_rxDuplicateBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  rxOutOfOrderBytes = self->_rxOutOfOrderBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_15:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  txRetransmittedBytes = self->_txRetransmittedBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  connAttempts = self->_connAttempts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  connSuccess = self->_connSuccess;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  rttMinimumMsecs = self->_rttMinimumMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  rttAverageMsecs = self->_rttAverageMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  rttVariation = self->_rttVariation;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  maxCongestionWindow = self->_maxCongestionWindow;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  delayedACKFactor = self->_delayedACKFactor;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  retransmissionTimeoutMsecs = self->_retransmissionTimeoutMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_24:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  packetErrorRate = self->_packetErrorRate;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_25:
    lQM = self->_lQM;
    PBDataWriterWriteInt64Field();
  }

LABEL_26:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    toCopy[19] = self->_timeToNetworkEventsMsecs;
    *(toCopy + 48) |= 0x40000u;
    has = self->_has;
    if ((*&has & 0x800000) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((*&has & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 47) = self->_throughputType;
  *(toCopy + 48) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(toCopy + 46) = self->_snapshotType;
  *(toCopy + 48) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  toCopy[20] = self->_txBytes;
  *(toCopy + 48) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  toCopy[16] = self->_rxBytes;
  *(toCopy + 48) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  toCopy[7] = self->_flowDurationMsecs;
  *(toCopy + 48) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_8:
    if ((*&has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  toCopy[22] = self->_ulThroughputBytesPerSec;
  *(toCopy + 48) |= 0x200000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  toCopy[4] = self->_dlThroughputBytesPerSec;
  *(toCopy + 48) |= 8u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  toCopy[6] = self->_estimatorDelayMsecs;
  *(toCopy + 48) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  toCopy[5] = self->_estimatorConfidence;
  *(toCopy + 48) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  toCopy[8] = self->_invalidResponses;
  *(toCopy + 48) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  toCopy[17] = self->_rxDuplicateBytes;
  *(toCopy + 48) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  toCopy[18] = self->_rxOutOfOrderBytes;
  *(toCopy + 48) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_15:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  toCopy[21] = self->_txRetransmittedBytes;
  *(toCopy + 48) |= 0x100000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  toCopy[1] = self->_connAttempts;
  *(toCopy + 48) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  toCopy[2] = self->_connSuccess;
  *(toCopy + 48) |= 2u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  toCopy[14] = self->_rttMinimumMsecs;
  *(toCopy + 48) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  toCopy[13] = self->_rttAverageMsecs;
  *(toCopy + 48) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  toCopy[15] = self->_rttVariation;
  *(toCopy + 48) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  toCopy[10] = self->_maxCongestionWindow;
  *(toCopy + 48) |= 0x200u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  toCopy[3] = self->_delayedACKFactor;
  *(toCopy + 48) |= 4u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  toCopy[12] = self->_retransmissionTimeoutMsecs;
  *(toCopy + 48) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_24:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  toCopy[11] = self->_packetErrorRate;
  *(toCopy + 48) |= 0x400u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_25:
    toCopy[9] = self->_lQM;
    *(toCopy + 48) |= 0x100u;
  }

LABEL_26:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    *(result + 19) = self->_timeToNetworkEventsMsecs;
    *(result + 48) |= 0x40000u;
    has = self->_has;
    if ((*&has & 0x800000) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&has & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 47) = self->_throughputType;
  *(result + 48) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 46) = self->_snapshotType;
  *(result + 48) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_5:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 20) = self->_txBytes;
  *(result + 48) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 16) = self->_rxBytes;
  *(result + 48) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 7) = self->_flowDurationMsecs;
  *(result + 48) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_8:
    if ((*&has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 22) = self->_ulThroughputBytesPerSec;
  *(result + 48) |= 0x200000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 4) = self->_dlThroughputBytesPerSec;
  *(result + 48) |= 8u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 6) = self->_estimatorDelayMsecs;
  *(result + 48) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 5) = self->_estimatorConfidence;
  *(result + 48) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 8) = self->_invalidResponses;
  *(result + 48) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 17) = self->_rxDuplicateBytes;
  *(result + 48) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 18) = self->_rxOutOfOrderBytes;
  *(result + 48) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_15:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 21) = self->_txRetransmittedBytes;
  *(result + 48) |= 0x100000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 1) = self->_connAttempts;
  *(result + 48) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 2) = self->_connSuccess;
  *(result + 48) |= 2u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_18:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 14) = self->_rttMinimumMsecs;
  *(result + 48) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 13) = self->_rttAverageMsecs;
  *(result + 48) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 15) = self->_rttVariation;
  *(result + 48) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 10) = self->_maxCongestionWindow;
  *(result + 48) |= 0x200u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_22:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(result + 3) = self->_delayedACKFactor;
  *(result + 48) |= 4u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_23:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 12) = self->_retransmissionTimeoutMsecs;
  *(result + 48) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_24:
    if ((*&has & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_49:
  *(result + 11) = self->_packetErrorRate;
  *(result + 48) |= 0x400u;
  if ((*&self->_has & 0x100) == 0)
  {
    return result;
  }

LABEL_25:
  *(result + 9) = self->_lQM;
  *(result + 48) |= 0x100u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_122;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_timeToNetworkEventsMsecs != *(equalCopy + 19))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
LABEL_122:
    v7 = 0;
    goto LABEL_123;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_throughputType != *(equalCopy + 47))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_snapshotType != *(equalCopy + 46))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_txBytes != *(equalCopy + 20))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_rxBytes != *(equalCopy + 16))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_flowDurationMsecs != *(equalCopy + 7))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_ulThroughputBytesPerSec != *(equalCopy + 22))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_dlThroughputBytesPerSec != *(equalCopy + 4))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_estimatorDelayMsecs != *(equalCopy + 6))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_estimatorConfidence != *(equalCopy + 5))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_invalidResponses != *(equalCopy + 8))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_rxDuplicateBytes != *(equalCopy + 17))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_rxOutOfOrderBytes != *(equalCopy + 18))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_txRetransmittedBytes != *(equalCopy + 21))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_122;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_connAttempts != *(equalCopy + 1))
    {
      goto LABEL_122;
    }
  }

  else if (v6)
  {
    goto LABEL_122;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_connSuccess != *(equalCopy + 2))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_rttMinimumMsecs != *(equalCopy + 14))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_rttAverageMsecs != *(equalCopy + 13))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_rttVariation != *(equalCopy + 15))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_maxCongestionWindow != *(equalCopy + 10))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_delayedACKFactor != *(equalCopy + 3))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_retransmissionTimeoutMsecs != *(equalCopy + 12))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_packetErrorRate != *(equalCopy + 11))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_lQM != *(equalCopy + 9))
    {
      goto LABEL_122;
    }

    v7 = 1;
  }

  else
  {
    v7 = (*(equalCopy + 48) & 0x100) == 0;
  }

LABEL_123:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    v3 = 2654435761u * self->_timeToNetworkEventsMsecs;
    if ((*&has & 0x800000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_throughputType;
      if ((*&has & 0x400000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_snapshotType;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_txBytes;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_rxBytes;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_flowDurationMsecs;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_ulThroughputBytesPerSec;
    if ((*&has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_dlThroughputBytesPerSec;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_estimatorDelayMsecs;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_estimatorConfidence;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_12:
    v13 = 2654435761u * self->_invalidResponses;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_13:
    v14 = 2654435761u * self->_rxDuplicateBytes;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_14:
    v15 = 2654435761u * self->_rxOutOfOrderBytes;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if (*&has)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x100000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761u * self->_txRetransmittedBytes;
  if (*&has)
  {
LABEL_16:
    v17 = 2654435761u * self->_connAttempts;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 2) != 0)
  {
    v18 = 2654435761u * self->_connSuccess;
    if ((*&has & 0x2000) != 0)
    {
LABEL_34:
      v19 = 2654435761u * self->_rttMinimumMsecs;
      if ((*&has & 0x1000) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_35:
    v20 = 2654435761u * self->_rttAverageMsecs;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_36:
    v21 = 2654435761u * self->_rttVariation;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_46;
  }

LABEL_45:
  v21 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_37:
    v22 = 2654435761u * self->_maxCongestionWindow;
    if ((*&has & 4) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

LABEL_46:
  v22 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_38:
    v23 = 2654435761u * self->_delayedACKFactor;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_48;
  }

LABEL_47:
  v23 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_39:
    v24 = 2654435761u * self->_retransmissionTimeoutMsecs;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_40;
    }

LABEL_49:
    v25 = 0;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_41;
    }

LABEL_50:
    v26 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26;
  }

LABEL_48:
  v24 = 0;
  if ((*&has & 0x400) == 0)
  {
    goto LABEL_49;
  }

LABEL_40:
  v25 = 2654435761u * self->_packetErrorRate;
  if ((*&has & 0x100) == 0)
  {
    goto LABEL_50;
  }

LABEL_41:
  v26 = 2654435761 * self->_lQM;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x40000) != 0)
  {
    self->_timeToNetworkEventsMsecs = *(fromCopy + 19);
    *&self->_has |= 0x40000u;
    v5 = *(fromCopy + 48);
    if ((v5 & 0x800000) == 0)
    {
LABEL_3:
      if ((v5 & 0x400000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x800000) == 0)
  {
    goto LABEL_3;
  }

  self->_throughputType = *(fromCopy + 47);
  *&self->_has |= 0x800000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x400000) == 0)
  {
LABEL_4:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_snapshotType = *(fromCopy + 46);
  *&self->_has |= 0x400000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x80000) == 0)
  {
LABEL_5:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_txBytes = *(fromCopy + 20);
  *&self->_has |= 0x80000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x8000) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_rxBytes = *(fromCopy + 16);
  *&self->_has |= 0x8000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_flowDurationMsecs = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x200000) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_ulThroughputBytesPerSec = *(fromCopy + 22);
  *&self->_has |= 0x200000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_dlThroughputBytesPerSec = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_estimatorDelayMsecs = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_estimatorConfidence = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_invalidResponses = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x10000) == 0)
  {
LABEL_13:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_rxDuplicateBytes = *(fromCopy + 17);
  *&self->_has |= 0x10000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x20000) == 0)
  {
LABEL_14:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_rxOutOfOrderBytes = *(fromCopy + 18);
  *&self->_has |= 0x20000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x100000) == 0)
  {
LABEL_15:
    if ((v5 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_txRetransmittedBytes = *(fromCopy + 21);
  *&self->_has |= 0x100000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 1) == 0)
  {
LABEL_16:
    if ((v5 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_connAttempts = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 48);
  if ((v5 & 2) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_connSuccess = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x2000) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_rttMinimumMsecs = *(fromCopy + 14);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_rttAverageMsecs = *(fromCopy + 13);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x4000) == 0)
  {
LABEL_20:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_rttVariation = *(fromCopy + 15);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x200) == 0)
  {
LABEL_21:
    if ((v5 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_maxCongestionWindow = *(fromCopy + 10);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 48);
  if ((v5 & 4) == 0)
  {
LABEL_22:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_delayedACKFactor = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x800) == 0)
  {
LABEL_23:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_retransmissionTimeoutMsecs = *(fromCopy + 12);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x400) == 0)
  {
LABEL_24:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  self->_packetErrorRate = *(fromCopy + 11);
  *&self->_has |= 0x400u;
  if ((*(fromCopy + 48) & 0x100) != 0)
  {
LABEL_25:
    self->_lQM = *(fromCopy + 9);
    *&self->_has |= 0x100u;
  }

LABEL_26:
}

@end