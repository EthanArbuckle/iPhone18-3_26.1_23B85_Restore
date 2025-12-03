@interface AWDWifiCallingCallEndReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)frameErasureRateHistogramAtIndex:(unint64_t)index;
- (unsigned)jitterBufferResidencyTimeHistogramAtIndex:(unint64_t)index;
- (unsigned)jitterBufferUnderflowRateHistogramAtIndex:(unint64_t)index;
- (unsigned)rtpPacketLossRateHistogramAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDlVocoderBitRate:(BOOL)rate;
- (void)setHasFrameErasureRateMean:(BOOL)mean;
- (void)setHasJitterBufferResidencyTime95Percentile:(BOOL)percentile;
- (void)setHasJitterBufferResidencyTimeMean:(BOOL)mean;
- (void)setHasJitterBufferResidencyTimeMedian:(BOOL)median;
- (void)setHasJitterBufferUnderflowRateMean:(BOOL)mean;
- (void)setHasRatType:(BOOL)type;
- (void)setHasRtpPacketLossRateMean:(BOOL)mean;
- (void)setHasUlVocoderBitRate:(BOOL)rate;
- (void)setHasVocoderSampleRate:(BOOL)rate;
- (void)setHasVocoderType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDWifiCallingCallEndReport

- (void)dealloc
{
  [(AWDWifiCallingCallEndReport *)self setCallID:0];
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDWifiCallingCallEndReport;
  [(AWDWifiCallingCallEndReport *)&v3 dealloc];
}

- (unsigned)rtpPacketLossRateHistogramAtIndex:(unint64_t)index
{
  p_rtpPacketLossRateHistograms = &self->_rtpPacketLossRateHistograms;
  count = self->_rtpPacketLossRateHistograms.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_rtpPacketLossRateHistograms->list[index];
}

- (unsigned)jitterBufferUnderflowRateHistogramAtIndex:(unint64_t)index
{
  p_jitterBufferUnderflowRateHistograms = &self->_jitterBufferUnderflowRateHistograms;
  count = self->_jitterBufferUnderflowRateHistograms.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_jitterBufferUnderflowRateHistograms->list[index];
}

- (unsigned)frameErasureRateHistogramAtIndex:(unint64_t)index
{
  p_frameErasureRateHistograms = &self->_frameErasureRateHistograms;
  count = self->_frameErasureRateHistograms.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_frameErasureRateHistograms->list[index];
}

- (unsigned)jitterBufferResidencyTimeHistogramAtIndex:(unint64_t)index
{
  p_jitterBufferResidencyTimeHistograms = &self->_jitterBufferResidencyTimeHistograms;
  count = self->_jitterBufferResidencyTimeHistograms.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_jitterBufferResidencyTimeHistograms->list[index];
}

- (void)setHasRtpPacketLossRateMean:(BOOL)mean
{
  if (mean)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasJitterBufferUnderflowRateMean:(BOOL)mean
{
  if (mean)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasFrameErasureRateMean:(BOOL)mean
{
  if (mean)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasJitterBufferResidencyTimeMean:(BOOL)mean
{
  if (mean)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasJitterBufferResidencyTimeMedian:(BOOL)median
{
  if (median)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasJitterBufferResidencyTime95Percentile:(BOOL)percentile
{
  if (percentile)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRatType:(BOOL)type
{
  if (type)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasVocoderType:(BOOL)type
{
  if (type)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasVocoderSampleRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasUlVocoderBitRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasDlVocoderBitRate:(BOOL)rate
{
  if (rate)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWifiCallingCallEndReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWifiCallingCallEndReport description](&v3, sel_description), -[AWDWifiCallingCallEndReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  callID = self->_callID;
  if (callID)
  {
    [dictionary setObject:callID forKey:@"callID"];
  }

  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"rtpPacketLossRateHistogram"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"jitterBufferUnderflowRateHistogram"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"frameErasureRateHistogram"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"jitterBufferResidencyTimeHistogram"];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rtpPacketLossRateMean), @"rtpPacketLossRateMean"}];
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_jitterBufferUnderflowRateMean), @"jitterBufferUnderflowRateMean"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_frameErasureRateMean), @"frameErasureRateMean"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_jitterBufferResidencyTimeMean), @"jitterBufferResidencyTimeMean"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_jitterBufferResidencyTimeMedian), @"jitterBufferResidencyTimeMedian"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_jitterBufferResidencyTime95Percentile), @"jitterBufferResidencyTime95Percentile"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ratType), @"ratType"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_vocoderType), @"vocoderType"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_14:
    if ((has & 0x200) == 0)
    {
      goto LABEL_15;
    }

LABEL_27:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ulVocoderBitRate), @"ulVocoderBitRate"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_16;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_vocoderSampleRate), @"vocoderSampleRate"}];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_27;
  }

LABEL_15:
  if ((has & 2) != 0)
  {
LABEL_16:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dlVocoderBitRate), @"dlVocoderBitRate"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_callID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_rtpPacketLossRateHistograms.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_rtpPacketLossRateHistograms.list[v5];
      PBDataWriterWriteUint32Field();
      ++v5;
    }

    while (v5 < self->_rtpPacketLossRateHistograms.count);
  }

  if (self->_jitterBufferUnderflowRateHistograms.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_jitterBufferUnderflowRateHistograms.list[v7];
      PBDataWriterWriteUint32Field();
      ++v7;
    }

    while (v7 < self->_jitterBufferUnderflowRateHistograms.count);
  }

  if (self->_frameErasureRateHistograms.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_frameErasureRateHistograms.list[v9];
      PBDataWriterWriteUint32Field();
      ++v9;
    }

    while (v9 < self->_frameErasureRateHistograms.count);
  }

  if (self->_jitterBufferResidencyTimeHistograms.count)
  {
    v11 = 0;
    do
    {
      v12 = self->_jitterBufferResidencyTimeHistograms.list[v11];
      PBDataWriterWriteUint32Field();
      ++v11;
    }

    while (v11 < self->_jitterBufferResidencyTimeHistograms.count);
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    rtpPacketLossRateMean = self->_rtpPacketLossRateMean;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_19:
      if ((has & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_31;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_19;
  }

  jitterBufferUnderflowRateMean = self->_jitterBufferUnderflowRateMean;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_20:
    if ((has & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

LABEL_31:
  frameErasureRateMean = self->_frameErasureRateMean;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_21:
    if ((has & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_33;
  }

LABEL_32:
  jitterBufferResidencyTimeMean = self->_jitterBufferResidencyTimeMean;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_22:
    if ((has & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

LABEL_33:
  jitterBufferResidencyTimeMedian = self->_jitterBufferResidencyTimeMedian;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_23:
    if ((has & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

LABEL_34:
  jitterBufferResidencyTime95Percentile = self->_jitterBufferResidencyTime95Percentile;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_24:
    if ((has & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_35:
  ratType = self->_ratType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_25:
    if ((has & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_37;
  }

LABEL_36:
  vocoderType = self->_vocoderType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_26:
    if ((has & 0x200) == 0)
    {
      goto LABEL_27;
    }

LABEL_38:
    ulVocoderBitRate = self->_ulVocoderBitRate;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_39;
  }

LABEL_37:
  vocoderSampleRate = self->_vocoderSampleRate;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_38;
  }

LABEL_27:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_39:
  dlVocoderBitRate = self->_dlVocoderBitRate;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 13) = self->_timestamp;
    *(to + 82) |= 1u;
  }

  if (self->_callID)
  {
    [to setCallID:?];
  }

  if ([(AWDWifiCallingCallEndReport *)self rtpPacketLossRateHistogramsCount])
  {
    [to clearRtpPacketLossRateHistograms];
    rtpPacketLossRateHistogramsCount = [(AWDWifiCallingCallEndReport *)self rtpPacketLossRateHistogramsCount];
    if (rtpPacketLossRateHistogramsCount)
    {
      v6 = rtpPacketLossRateHistogramsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addRtpPacketLossRateHistogram:{-[AWDWifiCallingCallEndReport rtpPacketLossRateHistogramAtIndex:](self, "rtpPacketLossRateHistogramAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWifiCallingCallEndReport *)self jitterBufferUnderflowRateHistogramsCount])
  {
    [to clearJitterBufferUnderflowRateHistograms];
    jitterBufferUnderflowRateHistogramsCount = [(AWDWifiCallingCallEndReport *)self jitterBufferUnderflowRateHistogramsCount];
    if (jitterBufferUnderflowRateHistogramsCount)
    {
      v9 = jitterBufferUnderflowRateHistogramsCount;
      for (j = 0; j != v9; ++j)
      {
        [to addJitterBufferUnderflowRateHistogram:{-[AWDWifiCallingCallEndReport jitterBufferUnderflowRateHistogramAtIndex:](self, "jitterBufferUnderflowRateHistogramAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWifiCallingCallEndReport *)self frameErasureRateHistogramsCount])
  {
    [to clearFrameErasureRateHistograms];
    frameErasureRateHistogramsCount = [(AWDWifiCallingCallEndReport *)self frameErasureRateHistogramsCount];
    if (frameErasureRateHistogramsCount)
    {
      v12 = frameErasureRateHistogramsCount;
      for (k = 0; k != v12; ++k)
      {
        [to addFrameErasureRateHistogram:{-[AWDWifiCallingCallEndReport frameErasureRateHistogramAtIndex:](self, "frameErasureRateHistogramAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWifiCallingCallEndReport *)self jitterBufferResidencyTimeHistogramsCount])
  {
    [to clearJitterBufferResidencyTimeHistograms];
    jitterBufferResidencyTimeHistogramsCount = [(AWDWifiCallingCallEndReport *)self jitterBufferResidencyTimeHistogramsCount];
    if (jitterBufferResidencyTimeHistogramsCount)
    {
      v15 = jitterBufferResidencyTimeHistogramsCount;
      for (m = 0; m != v15; ++m)
      {
        [to addJitterBufferResidencyTimeHistogram:{-[AWDWifiCallingCallEndReport jitterBufferResidencyTimeHistogramAtIndex:](self, "jitterBufferResidencyTimeHistogramAtIndex:", m)}];
      }
    }
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(to + 37) = self->_rtpPacketLossRateMean;
    *(to + 82) |= 0x100u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_23:
      if ((has & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_36;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_23;
  }

  *(to + 35) = self->_jitterBufferUnderflowRateMean;
  *(to + 82) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_24:
    if ((has & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(to + 31) = self->_frameErasureRateMean;
  *(to + 82) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_25:
    if ((has & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(to + 33) = self->_jitterBufferResidencyTimeMean;
  *(to + 82) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_26:
    if ((has & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(to + 34) = self->_jitterBufferResidencyTimeMedian;
  *(to + 82) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_27:
    if ((has & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(to + 32) = self->_jitterBufferResidencyTime95Percentile;
  *(to + 82) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_28:
    if ((has & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(to + 36) = self->_ratType;
  *(to + 82) |= 0x80u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_29:
    if ((has & 0x400) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(to + 40) = self->_vocoderType;
  *(to + 82) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_30:
    if ((has & 0x200) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(to + 39) = self->_vocoderSampleRate;
  *(to + 82) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_31:
    if ((has & 2) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

LABEL_43:
  *(to + 38) = self->_ulVocoderBitRate;
  *(to + 82) |= 0x200u;
  if ((*&self->_has & 2) == 0)
  {
    return;
  }

LABEL_32:
  *(to + 30) = self->_dlVocoderBitRate;
  *(to + 82) |= 2u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 104) = self->_timestamp;
    *(v5 + 164) |= 1u;
  }

  *(v6 + 112) = [(NSString *)self->_callID copyWithZone:zone];
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(v6 + 148) = self->_rtpPacketLossRateMean;
    *(v6 + 164) |= 0x100u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 140) = self->_jitterBufferUnderflowRateMean;
  *(v6 + 164) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v6 + 124) = self->_frameErasureRateMean;
  *(v6 + 164) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v6 + 132) = self->_jitterBufferResidencyTimeMean;
  *(v6 + 164) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v6 + 136) = self->_jitterBufferResidencyTimeMedian;
  *(v6 + 164) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v6 + 128) = self->_jitterBufferResidencyTime95Percentile;
  *(v6 + 164) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v6 + 144) = self->_ratType;
  *(v6 + 164) |= 0x80u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v6 + 160) = self->_vocoderType;
  *(v6 + 164) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    *(v6 + 152) = self->_ulVocoderBitRate;
    *(v6 + 164) |= 0x200u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_14;
  }

LABEL_24:
  *(v6 + 156) = self->_vocoderSampleRate;
  *(v6 + 164) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  if ((has & 2) != 0)
  {
LABEL_14:
    *(v6 + 120) = self->_dlVocoderBitRate;
    *(v6 + 164) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    v6 = *(equal + 82);
    if (*&self->_has)
    {
      if ((v6 & 1) == 0 || self->_timestamp != *(equal + 13))
      {
        goto LABEL_67;
      }
    }

    else if (v6)
    {
LABEL_67:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    callID = self->_callID;
    if (!(callID | *(equal + 14)) || (IsEqual = [(NSString *)callID isEqual:?]) != 0)
    {
      IsEqual = PBRepeatedUInt32IsEqual();
      if (IsEqual)
      {
        IsEqual = PBRepeatedUInt32IsEqual();
        if (IsEqual)
        {
          IsEqual = PBRepeatedUInt32IsEqual();
          if (IsEqual)
          {
            IsEqual = PBRepeatedUInt32IsEqual();
            if (IsEqual)
            {
              has = self->_has;
              v9 = *(equal + 82);
              if ((has & 0x100) != 0)
              {
                if ((*(equal + 82) & 0x100) == 0 || self->_rtpPacketLossRateMean != *(equal + 37))
                {
                  goto LABEL_67;
                }
              }

              else if ((*(equal + 82) & 0x100) != 0)
              {
                goto LABEL_67;
              }

              if ((has & 0x40) != 0)
              {
                if ((v9 & 0x40) == 0 || self->_jitterBufferUnderflowRateMean != *(equal + 35))
                {
                  goto LABEL_67;
                }
              }

              else if ((v9 & 0x40) != 0)
              {
                goto LABEL_67;
              }

              if ((has & 4) != 0)
              {
                if ((v9 & 4) == 0 || self->_frameErasureRateMean != *(equal + 31))
                {
                  goto LABEL_67;
                }
              }

              else if ((v9 & 4) != 0)
              {
                goto LABEL_67;
              }

              if ((has & 0x10) != 0)
              {
                if ((v9 & 0x10) == 0 || self->_jitterBufferResidencyTimeMean != *(equal + 33))
                {
                  goto LABEL_67;
                }
              }

              else if ((v9 & 0x10) != 0)
              {
                goto LABEL_67;
              }

              if ((has & 0x20) != 0)
              {
                if ((v9 & 0x20) == 0 || self->_jitterBufferResidencyTimeMedian != *(equal + 34))
                {
                  goto LABEL_67;
                }
              }

              else if ((v9 & 0x20) != 0)
              {
                goto LABEL_67;
              }

              if ((has & 8) != 0)
              {
                if ((v9 & 8) == 0 || self->_jitterBufferResidencyTime95Percentile != *(equal + 32))
                {
                  goto LABEL_67;
                }
              }

              else if ((v9 & 8) != 0)
              {
                goto LABEL_67;
              }

              if ((has & 0x80) != 0)
              {
                if ((v9 & 0x80) == 0 || self->_ratType != *(equal + 36))
                {
                  goto LABEL_67;
                }
              }

              else if ((v9 & 0x80) != 0)
              {
                goto LABEL_67;
              }

              if ((*&self->_has & 0x800) != 0)
              {
                if ((*(equal + 82) & 0x800) == 0 || self->_vocoderType != *(equal + 40))
                {
                  goto LABEL_67;
                }
              }

              else if ((*(equal + 82) & 0x800) != 0)
              {
                goto LABEL_67;
              }

              if ((*&self->_has & 0x400) != 0)
              {
                if ((*(equal + 82) & 0x400) == 0 || self->_vocoderSampleRate != *(equal + 39))
                {
                  goto LABEL_67;
                }
              }

              else if ((*(equal + 82) & 0x400) != 0)
              {
                goto LABEL_67;
              }

              if ((*&self->_has & 0x200) != 0)
              {
                if ((*(equal + 82) & 0x200) == 0 || self->_ulVocoderBitRate != *(equal + 38))
                {
                  goto LABEL_67;
                }
              }

              else if ((*(equal + 82) & 0x200) != 0)
              {
                goto LABEL_67;
              }

              LOBYTE(IsEqual) = (v9 & 2) == 0;
              if ((has & 2) != 0)
              {
                if ((v9 & 2) == 0 || self->_dlVocoderBitRate != *(equal + 30))
                {
                  goto LABEL_67;
                }

                LOBYTE(IsEqual) = 1;
              }
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
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_callID hash];
  v5 = PBRepeatedUInt32Hash();
  v6 = PBRepeatedUInt32Hash();
  v7 = PBRepeatedUInt32Hash();
  v8 = PBRepeatedUInt32Hash();
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v10 = 2654435761 * self->_rtpPacketLossRateMean;
    if ((has & 0x40) != 0)
    {
LABEL_6:
      v11 = 2654435761 * self->_jitterBufferUnderflowRateMean;
      if ((has & 4) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_6;
    }
  }

  v11 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v12 = 2654435761 * self->_frameErasureRateMean;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v13 = 2654435761 * self->_jitterBufferResidencyTimeMean;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v14 = 2654435761 * self->_jitterBufferResidencyTimeMedian;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = 0;
  if ((has & 8) != 0)
  {
LABEL_10:
    v15 = 2654435761 * self->_jitterBufferResidencyTime95Percentile;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v15 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_11:
    v16 = 2654435761 * self->_ratType;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_12:
    v17 = 2654435761 * self->_vocoderType;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v17 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_13:
    v18 = 2654435761 * self->_vocoderSampleRate;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_14;
    }

LABEL_25:
    v19 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    v20 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
  }

LABEL_24:
  v18 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  v19 = 2654435761 * self->_ulVocoderBitRate;
  if ((has & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  v20 = 2654435761 * self->_dlVocoderBitRate;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 82))
  {
    self->_timestamp = *(from + 13);
    *&self->_has |= 1u;
  }

  if (*(from + 14))
  {
    [(AWDWifiCallingCallEndReport *)self setCallID:?];
  }

  rtpPacketLossRateHistogramsCount = [from rtpPacketLossRateHistogramsCount];
  if (rtpPacketLossRateHistogramsCount)
  {
    v6 = rtpPacketLossRateHistogramsCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWifiCallingCallEndReport addRtpPacketLossRateHistogram:](self, "addRtpPacketLossRateHistogram:", [from rtpPacketLossRateHistogramAtIndex:i]);
    }
  }

  jitterBufferUnderflowRateHistogramsCount = [from jitterBufferUnderflowRateHistogramsCount];
  if (jitterBufferUnderflowRateHistogramsCount)
  {
    v9 = jitterBufferUnderflowRateHistogramsCount;
    for (j = 0; j != v9; ++j)
    {
      -[AWDWifiCallingCallEndReport addJitterBufferUnderflowRateHistogram:](self, "addJitterBufferUnderflowRateHistogram:", [from jitterBufferUnderflowRateHistogramAtIndex:j]);
    }
  }

  frameErasureRateHistogramsCount = [from frameErasureRateHistogramsCount];
  if (frameErasureRateHistogramsCount)
  {
    v12 = frameErasureRateHistogramsCount;
    for (k = 0; k != v12; ++k)
    {
      -[AWDWifiCallingCallEndReport addFrameErasureRateHistogram:](self, "addFrameErasureRateHistogram:", [from frameErasureRateHistogramAtIndex:k]);
    }
  }

  jitterBufferResidencyTimeHistogramsCount = [from jitterBufferResidencyTimeHistogramsCount];
  if (jitterBufferResidencyTimeHistogramsCount)
  {
    v15 = jitterBufferResidencyTimeHistogramsCount;
    for (m = 0; m != v15; ++m)
    {
      -[AWDWifiCallingCallEndReport addJitterBufferResidencyTimeHistogram:](self, "addJitterBufferResidencyTimeHistogram:", [from jitterBufferResidencyTimeHistogramAtIndex:m]);
    }
  }

  v17 = *(from + 82);
  if ((v17 & 0x100) != 0)
  {
    self->_rtpPacketLossRateMean = *(from + 37);
    *&self->_has |= 0x100u;
    v17 = *(from + 82);
    if ((v17 & 0x40) == 0)
    {
LABEL_19:
      if ((v17 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }
  }

  else if ((v17 & 0x40) == 0)
  {
    goto LABEL_19;
  }

  self->_jitterBufferUnderflowRateMean = *(from + 35);
  *&self->_has |= 0x40u;
  v17 = *(from + 82);
  if ((v17 & 4) == 0)
  {
LABEL_20:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_frameErasureRateMean = *(from + 31);
  *&self->_has |= 4u;
  v17 = *(from + 82);
  if ((v17 & 0x10) == 0)
  {
LABEL_21:
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_jitterBufferResidencyTimeMean = *(from + 33);
  *&self->_has |= 0x10u;
  v17 = *(from + 82);
  if ((v17 & 0x20) == 0)
  {
LABEL_22:
    if ((v17 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_jitterBufferResidencyTimeMedian = *(from + 34);
  *&self->_has |= 0x20u;
  v17 = *(from + 82);
  if ((v17 & 8) == 0)
  {
LABEL_23:
    if ((v17 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_jitterBufferResidencyTime95Percentile = *(from + 32);
  *&self->_has |= 8u;
  v17 = *(from + 82);
  if ((v17 & 0x80) == 0)
  {
LABEL_24:
    if ((v17 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_ratType = *(from + 36);
  *&self->_has |= 0x80u;
  v17 = *(from + 82);
  if ((v17 & 0x800) == 0)
  {
LABEL_25:
    if ((v17 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_vocoderType = *(from + 40);
  *&self->_has |= 0x800u;
  v17 = *(from + 82);
  if ((v17 & 0x400) == 0)
  {
LABEL_26:
    if ((v17 & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_vocoderSampleRate = *(from + 39);
  *&self->_has |= 0x400u;
  v17 = *(from + 82);
  if ((v17 & 0x200) == 0)
  {
LABEL_27:
    if ((v17 & 2) == 0)
    {
      return;
    }

    goto LABEL_28;
  }

LABEL_39:
  self->_ulVocoderBitRate = *(from + 38);
  *&self->_has |= 0x200u;
  if ((*(from + 82) & 2) == 0)
  {
    return;
  }

LABEL_28:
  self->_dlVocoderBitRate = *(from + 30);
  *&self->_has |= 2u;
}

@end