@interface WiFiAnalyticsAWDWiFiNWActivityAggregateMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasKCtlTxRTS:(BOOL)s;
- (void)setHasKMACRxControlFrameMatchingRA:(BOOL)a;
- (void)setHasKMACRxControlFrameOtherRA:(BOOL)a;
- (void)setHasKMACRxDataFrameMatchingRA:(BOOL)a;
- (void)setHasKMACRxDataFrameOtherRA:(BOOL)a;
- (void)setHasKMACRxUnicastCTStoMAC:(BOOL)c;
- (void)setHasKMACRxUnicastCTStoOther:(BOOL)other;
- (void)setHasKMACRxUnicastRTStoMAC:(BOOL)c;
- (void)setHasKMACRxUnicastRTStoOther:(BOOL)other;
- (void)setHasKRxBadFCS:(BOOL)s;
- (void)setHasKRxBadOther:(BOOL)other;
- (void)setHasKRxBadPLCP:(BOOL)p;
- (void)setHasKRxCRCGlitch:(BOOL)glitch;
- (void)setHasKRxDataErrors:(BOOL)errors;
- (void)setHasKRxFrames:(BOOL)frames;
- (void)setHasKRxGoodPLCP:(BOOL)p;
- (void)setHasKRxRetryBitSet:(BOOL)set;
- (void)setHasKTxFrames:(BOOL)frames;
- (void)setHasKTxRetransmission:(BOOL)retransmission;
- (void)setHasKdot11MultipleRetryCount:(BOOL)count;
- (void)setHasKdot11RTSFailureCount:(BOOL)count;
- (void)setHasKdot11RTSSuccessCount:(BOOL)count;
- (void)setHasKdot11RetryCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWiFiNWActivityAggregateMetrics

- (void)setHasKRxDataErrors:(BOOL)errors
{
  if (errors)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasKRxFrames:(BOOL)frames
{
  if (frames)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasKRxRetryBitSet:(BOOL)set
{
  if (set)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasKMACRxDataFrameMatchingRA:(BOOL)a
{
  if (a)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasKMACRxDataFrameOtherRA:(BOOL)a
{
  if (a)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasKMACRxControlFrameMatchingRA:(BOOL)a
{
  if (a)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasKMACRxControlFrameOtherRA:(BOOL)a
{
  if (a)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasKRxGoodPLCP:(BOOL)p
{
  if (p)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasKRxBadPLCP:(BOOL)p
{
  if (p)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasKRxBadFCS:(BOOL)s
{
  if (s)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasKTxFrames:(BOOL)frames
{
  if (frames)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasKTxRetransmission:(BOOL)retransmission
{
  if (retransmission)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasKdot11RetryCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasKdot11MultipleRetryCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasKdot11RTSSuccessCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasKdot11RTSFailureCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasKCtlTxRTS:(BOOL)s
{
  if (s)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasKRxCRCGlitch:(BOOL)glitch
{
  if (glitch)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasKMACRxUnicastCTStoMAC:(BOOL)c
{
  if (c)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasKMACRxUnicastCTStoOther:(BOOL)other
{
  if (other)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasKMACRxUnicastRTStoMAC:(BOOL)c
{
  if (c)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasKMACRxUnicastRTStoOther:(BOOL)other
{
  if (other)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasKRxBadOther:(BOOL)other
{
  if (other)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiNWActivityAggregateMetrics;
  v4 = [(WiFiAnalyticsAWDWiFiNWActivityAggregateMetrics *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiNWActivityAggregateMetrics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kRxDataErrors];
    [dictionary setObject:v7 forKey:@"kRxDataErrors"];

    has = self->_has;
    if ((*&has & 0x2000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((*&has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kRxFrames];
  [dictionary setObject:v8 forKey:@"kRxFrames"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kRxRetryBitSet];
  [dictionary setObject:v9 forKey:@"kRxRetryBitSet"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kMACRxDataFrameMatchingRA];
  [dictionary setObject:v10 forKey:@"kMACRxDataFrameMatchingRA"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kMACRxDataFrameOtherRA];
  [dictionary setObject:v11 forKey:@"kMACRxDataFrameOtherRA"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_kMACRxControlFrameMatchingRA];
  [dictionary setObject:v12 forKey:@"kMACRxControlFrameMatchingRA"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_kMACRxControlFrameOtherRA];
  [dictionary setObject:v13 forKey:@"kMACRxControlFrameOtherRA"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kRxGoodPLCP];
  [dictionary setObject:v14 forKey:@"kRxGoodPLCP"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kRxBadPLCP];
  [dictionary setObject:v15 forKey:@"kRxBadPLCP"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kRxBadFCS];
  [dictionary setObject:v16 forKey:@"kRxBadFCS"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kTxFrames];
  [dictionary setObject:v17 forKey:@"kTxFrames"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_13:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kTxRetransmission];
  [dictionary setObject:v18 forKey:@"kTxRetransmission"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kdot11RetryCount];
  [dictionary setObject:v19 forKey:@"kdot11RetryCount"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kdot11MultipleRetryCount];
  [dictionary setObject:v20 forKey:@"kdot11MultipleRetryCount"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kdot11RTSSuccessCount];
  [dictionary setObject:v21 forKey:@"kdot11RTSSuccessCount"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kdot11RTSFailureCount];
  [dictionary setObject:v22 forKey:@"kdot11RTSFailureCount"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_18:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kCtlTxRTS];
  [dictionary setObject:v23 forKey:@"kCtlTxRTS"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kRxCRCGlitch];
  [dictionary setObject:v24 forKey:@"kRxCRCGlitch"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kMACRxUnicastCTStoMAC];
  [dictionary setObject:v25 forKey:@"kMACRxUnicastCTStoMAC"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kMACRxUnicastCTStoOther];
  [dictionary setObject:v26 forKey:@"kMACRxUnicastCTStoOther"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kMACRxUnicastRTStoMAC];
  [dictionary setObject:v27 forKey:@"kMACRxUnicastRTStoMAC"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_23:
    if ((*&has & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kMACRxUnicastRTStoOther];
  [dictionary setObject:v28 forKey:@"kMACRxUnicastRTStoOther"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_24:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kCtlTxCTS];
  [dictionary setObject:v29 forKey:@"kCtlTxCTS"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_25:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_kRxBadOther];
    [dictionary setObject:v5 forKey:@"kRxBadOther"];
  }

LABEL_26:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    kRxDataErrors = self->_kRxDataErrors;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x2000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((*&has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  kRxFrames = self->_kRxFrames;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  kRxRetryBitSet = self->_kRxRetryBitSet;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  kMACRxDataFrameMatchingRA = self->_kMACRxDataFrameMatchingRA;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  kMACRxDataFrameOtherRA = self->_kMACRxDataFrameOtherRA;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  kMACRxControlFrameMatchingRA = self->_kMACRxControlFrameMatchingRA;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  kMACRxControlFrameOtherRA = self->_kMACRxControlFrameOtherRA;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  kRxGoodPLCP = self->_kRxGoodPLCP;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  kRxBadPLCP = self->_kRxBadPLCP;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  kRxBadFCS = self->_kRxBadFCS;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  kTxFrames = self->_kTxFrames;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_13:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  kTxRetransmission = self->_kTxRetransmission;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  kdot11RetryCount = self->_kdot11RetryCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  kdot11MultipleRetryCount = self->_kdot11MultipleRetryCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  kdot11RTSSuccessCount = self->_kdot11RTSSuccessCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  kdot11RTSFailureCount = self->_kdot11RTSFailureCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_18:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  kCtlTxRTS = self->_kCtlTxRTS;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  kRxCRCGlitch = self->_kRxCRCGlitch;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  kMACRxUnicastCTStoMAC = self->_kMACRxUnicastCTStoMAC;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  kMACRxUnicastCTStoOther = self->_kMACRxUnicastCTStoOther;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  kMACRxUnicastRTStoMAC = self->_kMACRxUnicastRTStoMAC;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_23:
    if ((*&has & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  kMACRxUnicastRTStoOther = self->_kMACRxUnicastRTStoOther;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_24:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  kCtlTxCTS = self->_kCtlTxCTS;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_25:
    kRxBadOther = self->_kRxBadOther;
    PBDataWriterWriteUint64Field();
  }

LABEL_26:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    toCopy[13] = self->_kRxDataErrors;
    *(toCopy + 48) |= 0x1000u;
    has = self->_has;
    if ((*&has & 0x2000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((*&has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  toCopy[14] = self->_kRxFrames;
  *(toCopy + 48) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  toCopy[16] = self->_kRxRetryBitSet;
  *(toCopy + 48) |= 0x8000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  toCopy[3] = self->_kMACRxDataFrameMatchingRA;
  *(toCopy + 48) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  toCopy[4] = self->_kMACRxDataFrameOtherRA;
  *(toCopy + 48) |= 8u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 46) = self->_kMACRxControlFrameMatchingRA;
  *(toCopy + 48) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 47) = self->_kMACRxControlFrameOtherRA;
  *(toCopy + 48) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  toCopy[15] = self->_kRxGoodPLCP;
  *(toCopy + 48) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  toCopy[11] = self->_kRxBadPLCP;
  *(toCopy + 48) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  toCopy[9] = self->_kRxBadFCS;
  *(toCopy + 48) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  toCopy[17] = self->_kTxFrames;
  *(toCopy + 48) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_13:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  toCopy[18] = self->_kTxRetransmission;
  *(toCopy + 48) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  toCopy[22] = self->_kdot11RetryCount;
  *(toCopy + 48) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  toCopy[19] = self->_kdot11MultipleRetryCount;
  *(toCopy + 48) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  toCopy[21] = self->_kdot11RTSSuccessCount;
  *(toCopy + 48) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  toCopy[20] = self->_kdot11RTSFailureCount;
  *(toCopy + 48) |= 0x80000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_18:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  toCopy[2] = self->_kCtlTxRTS;
  *(toCopy + 48) |= 2u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  toCopy[12] = self->_kRxCRCGlitch;
  *(toCopy + 48) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  toCopy[5] = self->_kMACRxUnicastCTStoMAC;
  *(toCopy + 48) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  toCopy[6] = self->_kMACRxUnicastCTStoOther;
  *(toCopy + 48) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  toCopy[7] = self->_kMACRxUnicastRTStoMAC;
  *(toCopy + 48) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_23:
    if ((*&has & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  toCopy[8] = self->_kMACRxUnicastRTStoOther;
  *(toCopy + 48) |= 0x80u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_24:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  toCopy[1] = self->_kCtlTxCTS;
  *(toCopy + 48) |= 1u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_25:
    toCopy[10] = self->_kRxBadOther;
    *(toCopy + 48) |= 0x200u;
  }

LABEL_26:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    *(result + 13) = self->_kRxDataErrors;
    *(result + 48) |= 0x1000u;
    has = self->_has;
    if ((*&has & 0x2000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 14) = self->_kRxFrames;
  *(result + 48) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 16) = self->_kRxRetryBitSet;
  *(result + 48) |= 0x8000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 3) = self->_kMACRxDataFrameMatchingRA;
  *(result + 48) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 4) = self->_kMACRxDataFrameOtherRA;
  *(result + 48) |= 8u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 46) = self->_kMACRxControlFrameMatchingRA;
  *(result + 48) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_8:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 47) = self->_kMACRxControlFrameOtherRA;
  *(result + 48) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 15) = self->_kRxGoodPLCP;
  *(result + 48) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 11) = self->_kRxBadPLCP;
  *(result + 48) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 9) = self->_kRxBadFCS;
  *(result + 48) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 17) = self->_kTxFrames;
  *(result + 48) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_13:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 18) = self->_kTxRetransmission;
  *(result + 48) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 22) = self->_kdot11RetryCount;
  *(result + 48) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 19) = self->_kdot11MultipleRetryCount;
  *(result + 48) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 21) = self->_kdot11RTSSuccessCount;
  *(result + 48) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 20) = self->_kdot11RTSFailureCount;
  *(result + 48) |= 0x80000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_18:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 2) = self->_kCtlTxRTS;
  *(result + 48) |= 2u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 12) = self->_kRxCRCGlitch;
  *(result + 48) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 5) = self->_kMACRxUnicastCTStoMAC;
  *(result + 48) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 6) = self->_kMACRxUnicastCTStoOther;
  *(result + 48) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(result + 7) = self->_kMACRxUnicastRTStoMAC;
  *(result + 48) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_23:
    if ((*&has & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 8) = self->_kMACRxUnicastRTStoOther;
  *(result + 48) |= 0x80u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_24:
    if ((*&has & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_49:
  *(result + 1) = self->_kCtlTxCTS;
  *(result + 48) |= 1u;
  if ((*&self->_has & 0x200) == 0)
  {
    return result;
  }

LABEL_25:
  *(result + 10) = self->_kRxBadOther;
  *(result + 48) |= 0x200u;
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
  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_kRxDataErrors != *(equalCopy + 13))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
LABEL_122:
    v7 = 0;
    goto LABEL_123;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_kRxFrames != *(equalCopy + 14))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_kRxRetryBitSet != *(equalCopy + 16))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_kMACRxDataFrameMatchingRA != *(equalCopy + 3))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_kMACRxDataFrameOtherRA != *(equalCopy + 4))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_kMACRxControlFrameMatchingRA != *(equalCopy + 46))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_kMACRxControlFrameOtherRA != *(equalCopy + 47))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_kRxGoodPLCP != *(equalCopy + 15))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_kRxBadPLCP != *(equalCopy + 11))
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
    if ((v6 & 0x100) == 0 || self->_kRxBadFCS != *(equalCopy + 9))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_kTxFrames != *(equalCopy + 17))
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
    if ((v6 & 0x20000) == 0 || self->_kTxRetransmission != *(equalCopy + 18))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_kdot11RetryCount != *(equalCopy + 22))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_kdot11MultipleRetryCount != *(equalCopy + 19))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_kdot11RTSSuccessCount != *(equalCopy + 21))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_kdot11RTSFailureCount != *(equalCopy + 20))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_kCtlTxRTS != *(equalCopy + 2))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_kRxCRCGlitch != *(equalCopy + 12))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_kMACRxUnicastCTStoMAC != *(equalCopy + 5))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_kMACRxUnicastCTStoOther != *(equalCopy + 6))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_kMACRxUnicastRTStoMAC != *(equalCopy + 7))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_kMACRxUnicastRTStoOther != *(equalCopy + 8))
    {
      goto LABEL_122;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_122;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_kCtlTxCTS != *(equalCopy + 1))
    {
      goto LABEL_122;
    }
  }

  else if (v6)
  {
    goto LABEL_122;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_kRxBadOther != *(equalCopy + 10))
    {
      goto LABEL_122;
    }

    v7 = 1;
  }

  else
  {
    v7 = (*(equalCopy + 48) & 0x200) == 0;
  }

LABEL_123:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    v3 = 2654435761u * self->_kRxDataErrors;
    if ((*&has & 0x2000) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_kRxFrames;
      if ((*&has & 0x8000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_kRxRetryBitSet;
    if ((*&has & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_kMACRxDataFrameMatchingRA;
    if ((*&has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_kMACRxDataFrameOtherRA;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_kMACRxControlFrameMatchingRA;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_kMACRxControlFrameOtherRA;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_kRxGoodPLCP;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_kRxBadPLCP;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_kRxBadFCS;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_12:
    v13 = 2654435761u * self->_kTxFrames;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_13:
    v14 = 2654435761u * self->_kTxRetransmission;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_14:
    v15 = 2654435761u * self->_kdot11RetryCount;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x40000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761u * self->_kdot11MultipleRetryCount;
  if ((*&has & 0x100000) != 0)
  {
LABEL_16:
    v17 = 2654435761u * self->_kdot11RTSSuccessCount;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x80000) != 0)
  {
    v18 = 2654435761u * self->_kdot11RTSFailureCount;
    if ((*&has & 2) != 0)
    {
LABEL_34:
      v19 = 2654435761u * self->_kCtlTxRTS;
      if ((*&has & 0x800) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_35:
    v20 = 2654435761u * self->_kRxCRCGlitch;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

LABEL_44:
  v20 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_36:
    v21 = 2654435761u * self->_kMACRxUnicastCTStoMAC;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_46;
  }

LABEL_45:
  v21 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_37:
    v22 = 2654435761u * self->_kMACRxUnicastCTStoOther;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

LABEL_46:
  v22 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_38:
    v23 = 2654435761u * self->_kMACRxUnicastRTStoMAC;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_48;
  }

LABEL_47:
  v23 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_39:
    v24 = 2654435761u * self->_kMACRxUnicastRTStoOther;
    if (*&has)
    {
      goto LABEL_40;
    }

LABEL_49:
    v25 = 0;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_41;
    }

LABEL_50:
    v26 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26;
  }

LABEL_48:
  v24 = 0;
  if ((*&has & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_40:
  v25 = 2654435761u * self->_kCtlTxCTS;
  if ((*&has & 0x200) == 0)
  {
    goto LABEL_50;
  }

LABEL_41:
  v26 = 2654435761u * self->_kRxBadOther;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x1000) != 0)
  {
    self->_kRxDataErrors = *(fromCopy + 13);
    *&self->_has |= 0x1000u;
    v5 = *(fromCopy + 48);
    if ((v5 & 0x2000) == 0)
    {
LABEL_3:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  self->_kRxFrames = *(fromCopy + 14);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x8000) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_kRxRetryBitSet = *(fromCopy + 16);
  *&self->_has |= 0x8000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_kMACRxDataFrameMatchingRA = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 48);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_kMACRxDataFrameOtherRA = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x400000) == 0)
  {
LABEL_7:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_kMACRxControlFrameMatchingRA = *(fromCopy + 46);
  *&self->_has |= 0x400000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x800000) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_kMACRxControlFrameOtherRA = *(fromCopy + 47);
  *&self->_has |= 0x800000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_kRxGoodPLCP = *(fromCopy + 15);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_kRxBadPLCP = *(fromCopy + 11);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_kRxBadFCS = *(fromCopy + 9);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x10000) == 0)
  {
LABEL_12:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_kTxFrames = *(fromCopy + 17);
  *&self->_has |= 0x10000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x20000) == 0)
  {
LABEL_13:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_kTxRetransmission = *(fromCopy + 18);
  *&self->_has |= 0x20000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x200000) == 0)
  {
LABEL_14:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_kdot11RetryCount = *(fromCopy + 22);
  *&self->_has |= 0x200000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x40000) == 0)
  {
LABEL_15:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_kdot11MultipleRetryCount = *(fromCopy + 19);
  *&self->_has |= 0x40000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x100000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_kdot11RTSSuccessCount = *(fromCopy + 21);
  *&self->_has |= 0x100000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x80000) == 0)
  {
LABEL_17:
    if ((v5 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_kdot11RTSFailureCount = *(fromCopy + 20);
  *&self->_has |= 0x80000u;
  v5 = *(fromCopy + 48);
  if ((v5 & 2) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_kCtlTxRTS = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_kRxCRCGlitch = *(fromCopy + 12);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_20:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_kMACRxUnicastCTStoMAC = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_21:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_kMACRxUnicastCTStoOther = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x40) == 0)
  {
LABEL_22:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_kMACRxUnicastRTStoMAC = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x80) == 0)
  {
LABEL_23:
    if ((v5 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_kMACRxUnicastRTStoOther = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 48);
  if ((v5 & 1) == 0)
  {
LABEL_24:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  self->_kCtlTxCTS = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 48) & 0x200) != 0)
  {
LABEL_25:
    self->_kRxBadOther = *(fromCopy + 10);
    *&self->_has |= 0x200u;
  }

LABEL_26:
}

@end