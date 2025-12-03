@interface AWDWiFiMetricsManagerRangingReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRttSamples:(id)samples;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAwdlLatency:(BOOL)latency;
- (void)setHasNumMeasurements:(BOOL)measurements;
- (void)setHasPeerMasterChannel:(BOOL)channel;
- (void)setHasPeerPreferredChannel:(BOOL)channel;
- (void)setHasPeerPreferredChannelFlags:(BOOL)flags;
- (void)setHasProtocolVersion:(BOOL)version;
- (void)setHasRangingBandwidth:(BOOL)bandwidth;
- (void)setHasRangingChannel:(BOOL)channel;
- (void)setHasRangingChannelQuality:(BOOL)quality;
- (void)setHasRangingLatency:(BOOL)latency;
- (void)setHasResultFlags:(BOOL)flags;
- (void)setHasResultStatus:(BOOL)status;
- (void)setHasSelfMasterChannel:(BOOL)channel;
- (void)setHasSelfPreferredChannel:(BOOL)channel;
- (void)setHasSelfPreferredChannelFlags:(BOOL)flags;
- (void)setHasValidCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsManagerRangingReport

- (void)dealloc
{
  [(AWDWiFiMetricsManagerRangingReport *)self setRttSamples:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerRangingReport;
  [(AWDWiFiMetricsManagerRangingReport *)&v3 dealloc];
}

- (void)setHasSelfPreferredChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasSelfPreferredChannelFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasSelfMasterChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasPeerPreferredChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasPeerPreferredChannelFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasPeerMasterChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasProtocolVersion:(BOOL)version
{
  if (version)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasRangingChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasRangingBandwidth:(BOOL)bandwidth
{
  if (bandwidth)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasResultFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasResultStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasValidCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasNumMeasurements:(BOOL)measurements
{
  if (measurements)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasAwdlLatency:(BOOL)latency
{
  if (latency)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasRangingLatency:(BOOL)latency
{
  if (latency)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)addRttSamples:(id)samples
{
  rttSamples = self->_rttSamples;
  if (!rttSamples)
  {
    rttSamples = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_rttSamples = rttSamples;
  }

  [(NSMutableArray *)rttSamples addObject:samples];
}

- (void)setHasRangingChannelQuality:(BOOL)quality
{
  if (quality)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerRangingReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerRangingReport description](&v3, sel_description), -[AWDWiFiMetricsManagerRangingReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (*&has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_selfPreferredChannel), @"selfPreferredChannel"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_selfPreferredChannelFlags), @"selfPreferredChannelFlags"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_selfMasterChannel), @"selfMasterChannel"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerPreferredChannel), @"peerPreferredChannel"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerPreferredChannelFlags), @"peerPreferredChannelFlags"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_peerMasterChannel), @"peerMasterChannel"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_protocolVersion), @"protocolVersion"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rangingChannel), @"rangingChannel"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rangingBandwidth), @"rangingBandwidth"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_resultFlags), @"resultFlags"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_resultStatus), @"resultStatus"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_14:
    if ((*&has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_validCount), @"validCount"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numMeasurements), @"numMeasurements"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_16:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_44:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_awdlLatency), @"awdlLatency"}];
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_17:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rangingLatency), @"rangingLatency"}];
  }

LABEL_18:
  if ([(NSMutableArray *)self->_rttSamples count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_rttSamples, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    rttSamples = self->_rttSamples;
    v7 = [(NSMutableArray *)rttSamples countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(rttSamples);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)rttSamples countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"rttSamples"];
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rangingChannelQuality), @"rangingChannelQuality"}];
  }

  v11 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v34 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (*&has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  selfPreferredChannel = self->_selfPreferredChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  selfPreferredChannelFlags = self->_selfPreferredChannelFlags;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  selfMasterChannel = self->_selfMasterChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  peerPreferredChannel = self->_peerPreferredChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  peerPreferredChannelFlags = self->_peerPreferredChannelFlags;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  peerMasterChannel = self->_peerMasterChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  protocolVersion = self->_protocolVersion;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  rangingChannel = self->_rangingChannel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  rangingBandwidth = self->_rangingBandwidth;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  resultFlags = self->_resultFlags;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  resultStatus = self->_resultStatus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_14:
    if ((*&has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  validCount = self->_validCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  numMeasurements = self->_numMeasurements;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_16:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_42:
  awdlLatency = self->_awdlLatency;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_17:
    rangingLatency = self->_rangingLatency;
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  rttSamples = self->_rttSamples;
  v7 = [(NSMutableArray *)rttSamples countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(rttSamples);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)rttSamples countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    rangingChannelQuality = self->_rangingChannelQuality;
    PBDataWriterWriteUint32Field();
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (*&has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 22) |= 1u;
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  *(to + 19) = self->_selfPreferredChannel;
  *(to + 22) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 20) = self->_selfPreferredChannelFlags;
  *(to + 22) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 18) = self->_selfMasterChannel;
  *(to + 22) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 7) = self->_peerPreferredChannel;
  *(to + 22) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(to + 8) = self->_peerPreferredChannelFlags;
  *(to + 22) |= 0x20u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(to + 6) = self->_peerMasterChannel;
  *(to + 22) |= 8u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(to + 9) = self->_protocolVersion;
  *(to + 22) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(to + 11) = self->_rangingChannel;
  *(to + 22) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(to + 10) = self->_rangingBandwidth;
  *(to + 22) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(to + 14) = self->_resultFlags;
  *(to + 22) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(to + 15) = self->_resultStatus;
  *(to + 22) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_14:
    if ((*&has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(to + 21) = self->_validCount;
  *(to + 22) |= 0x10000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_39:
    *(to + 4) = self->_awdlLatency;
    *(to + 22) |= 2u;
    if ((*&self->_has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_38:
  *(to + 5) = self->_numMeasurements;
  *(to + 22) |= 4u;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    goto LABEL_39;
  }

LABEL_16:
  if ((*&has & 0x400) != 0)
  {
LABEL_17:
    *(to + 13) = self->_rangingLatency;
    *(to + 22) |= 0x400u;
  }

LABEL_18:
  if ([(AWDWiFiMetricsManagerRangingReport *)self rttSamplesCount])
  {
    [to clearRttSamples];
    rttSamplesCount = [(AWDWiFiMetricsManagerRangingReport *)self rttSamplesCount];
    if (rttSamplesCount)
    {
      v7 = rttSamplesCount;
      for (i = 0; i != v7; ++i)
      {
        [to addRttSamples:{-[AWDWiFiMetricsManagerRangingReport rttSamplesAtIndex:](self, "rttSamplesAtIndex:", i)}];
      }
    }
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    *(to + 12) = self->_rangingChannelQuality;
    *(to + 22) |= 0x200u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (*&has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 88) |= 1u;
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 76) = self->_selfPreferredChannel;
  *(v5 + 88) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 80) = self->_selfPreferredChannelFlags;
  *(v5 + 88) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 72) = self->_selfMasterChannel;
  *(v5 + 88) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 28) = self->_peerPreferredChannel;
  *(v5 + 88) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 32) = self->_peerPreferredChannelFlags;
  *(v5 + 88) |= 0x20u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v5 + 24) = self->_peerMasterChannel;
  *(v5 + 88) |= 8u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 36) = self->_protocolVersion;
  *(v5 + 88) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 44) = self->_rangingChannel;
  *(v5 + 88) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 40) = self->_rangingBandwidth;
  *(v5 + 88) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 56) = self->_resultFlags;
  *(v5 + 88) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 60) = self->_resultStatus;
  *(v5 + 88) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_14:
    if ((*&has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 84) = self->_validCount;
  *(v5 + 88) |= 0x10000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 20) = self->_numMeasurements;
  *(v5 + 88) |= 4u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_16:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_42:
  *(v5 + 16) = self->_awdlLatency;
  *(v5 + 88) |= 2u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_17:
    *(v5 + 52) = self->_rangingLatency;
    *(v5 + 88) |= 0x400u;
  }

LABEL_18:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  rttSamples = self->_rttSamples;
  v9 = [(NSMutableArray *)rttSamples countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(rttSamples);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:zone];
        [v6 addRttSamples:v13];
      }

      v10 = [(NSMutableArray *)rttSamples countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    v6[12] = self->_rangingChannelQuality;
    v6[22] |= 0x200u;
  }

  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 22);
    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_89;
      }
    }

    else if (v7)
    {
LABEL_89:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_selfPreferredChannel != *(equal + 19))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_selfPreferredChannelFlags != *(equal + 20))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_selfMasterChannel != *(equal + 18))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_peerPreferredChannel != *(equal + 7))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_peerPreferredChannelFlags != *(equal + 8))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_peerMasterChannel != *(equal + 6))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_protocolVersion != *(equal + 9))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_rangingChannel != *(equal + 11))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_rangingBandwidth != *(equal + 10))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_resultFlags != *(equal + 14))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_resultStatus != *(equal + 15))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_validCount != *(equal + 21))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_numMeasurements != *(equal + 5))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_awdlLatency != *(equal + 4))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_89;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_rangingLatency != *(equal + 13))
      {
        goto LABEL_89;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_89;
    }

    rttSamples = self->_rttSamples;
    if (rttSamples | *(equal + 8))
    {
      v5 = [(NSMutableArray *)rttSamples isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(equal + 22);
    LOBYTE(v5) = (v9 & 0x200) == 0;
    if ((*&has & 0x200) != 0)
    {
      if ((v9 & 0x200) == 0 || self->_rangingChannelQuality != *(equal + 12))
      {
        goto LABEL_89;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v22 = 2654435761u * self->_timestamp;
    if ((*&has & 0x4000) != 0)
    {
LABEL_3:
      v21 = 2654435761 * self->_selfPreferredChannel;
      if ((*&has & 0x8000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v22 = 0;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_4:
    v20 = 2654435761 * self->_selfPreferredChannelFlags;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v20 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_5:
    v19 = 2654435761 * self->_selfMasterChannel;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v19 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_6:
    v18 = 2654435761 * self->_peerPreferredChannel;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v18 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_7:
    v17 = 2654435761 * self->_peerPreferredChannelFlags;
    if ((*&has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v17 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_8:
    v16 = 2654435761 * self->_peerMasterChannel;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_9:
    v15 = 2654435761 * self->_protocolVersion;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_10:
    v4 = 2654435761 * self->_rangingChannel;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_11:
    v5 = 2654435761 * self->_rangingBandwidth;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v5 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_12:
    v6 = 2654435761 * self->_resultFlags;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v6 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_13:
    v7 = 2654435761 * self->_resultStatus;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v7 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_14:
    v8 = 2654435761 * self->_validCount;
    if ((*&has & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v8 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_15:
    v9 = 2654435761 * self->_numMeasurements;
    if ((*&has & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v10 = 0;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_31:
  v9 = 0;
  if ((*&has & 2) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v10 = 2654435761 * self->_awdlLatency;
  if ((*&has & 0x400) != 0)
  {
LABEL_17:
    v11 = 2654435761 * self->_rangingLatency;
    goto LABEL_34;
  }

LABEL_33:
  v11 = 0;
LABEL_34:
  v12 = [(NSMutableArray *)self->_rttSamples hash];
  if ((*(&self->_has + 1) & 2) != 0)
  {
    v13 = 2654435761 * self->_rangingChannelQuality;
  }

  else
  {
    v13 = 0;
  }

  return v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *(from + 22);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 22);
    if ((v5 & 0x4000) == 0)
    {
LABEL_3:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  self->_selfPreferredChannel = *(from + 19);
  *&self->_has |= 0x4000u;
  v5 = *(from + 22);
  if ((v5 & 0x8000) == 0)
  {
LABEL_4:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_selfPreferredChannelFlags = *(from + 20);
  *&self->_has |= 0x8000u;
  v5 = *(from + 22);
  if ((v5 & 0x2000) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_selfMasterChannel = *(from + 18);
  *&self->_has |= 0x2000u;
  v5 = *(from + 22);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_peerPreferredChannel = *(from + 7);
  *&self->_has |= 0x10u;
  v5 = *(from + 22);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_peerPreferredChannelFlags = *(from + 8);
  *&self->_has |= 0x20u;
  v5 = *(from + 22);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_peerMasterChannel = *(from + 6);
  *&self->_has |= 8u;
  v5 = *(from + 22);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_protocolVersion = *(from + 9);
  *&self->_has |= 0x40u;
  v5 = *(from + 22);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_rangingChannel = *(from + 11);
  *&self->_has |= 0x100u;
  v5 = *(from + 22);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_rangingBandwidth = *(from + 10);
  *&self->_has |= 0x80u;
  v5 = *(from + 22);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_resultFlags = *(from + 14);
  *&self->_has |= 0x800u;
  v5 = *(from + 22);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_resultStatus = *(from + 15);
  *&self->_has |= 0x1000u;
  v5 = *(from + 22);
  if ((v5 & 0x10000) == 0)
  {
LABEL_14:
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_validCount = *(from + 21);
  *&self->_has |= 0x10000u;
  v5 = *(from + 22);
  if ((v5 & 4) == 0)
  {
LABEL_15:
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_numMeasurements = *(from + 5);
  *&self->_has |= 4u;
  v5 = *(from + 22);
  if ((v5 & 2) == 0)
  {
LABEL_16:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_42:
  self->_awdlLatency = *(from + 4);
  *&self->_has |= 2u;
  if ((*(from + 22) & 0x400) != 0)
  {
LABEL_17:
    self->_rangingLatency = *(from + 13);
    *&self->_has |= 0x400u;
  }

LABEL_18:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(from + 8);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDWiFiMetricsManagerRangingReport *)self addRttSamples:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if ((*(from + 89) & 2) != 0)
  {
    self->_rangingChannelQuality = *(from + 12);
    *&self->_has |= 0x200u;
  }

  v11 = *MEMORY[0x29EDCA608];
}

@end