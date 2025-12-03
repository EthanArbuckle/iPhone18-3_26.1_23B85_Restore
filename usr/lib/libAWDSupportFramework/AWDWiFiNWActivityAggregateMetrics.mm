@interface AWDWiFiNWActivityAggregateMetrics
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

@implementation AWDWiFiNWActivityAggregateMetrics

- (void)setHasKRxDataErrors:(BOOL)errors
{
  if (errors)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasKRxFrames:(BOOL)frames
{
  if (frames)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasKRxRetryBitSet:(BOOL)set
{
  if (set)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
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
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasKMACRxControlFrameOtherRA:(BOOL)a
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

- (void)setHasKRxGoodPLCP:(BOOL)p
{
  if (p)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasKRxBadPLCP:(BOOL)p
{
  if (p)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
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
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasKTxRetransmission:(BOOL)retransmission
{
  if (retransmission)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasKdot11RetryCount:(BOOL)count
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

- (void)setHasKdot11MultipleRetryCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasKdot11RTSSuccessCount:(BOOL)count
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

- (void)setHasKdot11RTSFailureCount:(BOOL)count
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
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiNWActivityAggregateMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiNWActivityAggregateMetrics description](&v3, sel_description), -[AWDWiFiNWActivityAggregateMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kRxDataErrors), @"kRxDataErrors"}];
    has = self->_has;
    if ((*&has & 0x1000) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kRxFrames), @"kRxFrames"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kRxRetryBitSet), @"kRxRetryBitSet"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kMACRxDataFrameMatchingRA), @"kMACRxDataFrameMatchingRA"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kMACRxDataFrameOtherRA), @"kMACRxDataFrameOtherRA"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_kMACRxControlFrameMatchingRA), @"kMACRxControlFrameMatchingRA"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_kMACRxControlFrameOtherRA), @"kMACRxControlFrameOtherRA"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kRxGoodPLCP), @"kRxGoodPLCP"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kRxBadPLCP), @"kRxBadPLCP"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kRxBadFCS), @"kRxBadFCS"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kTxFrames), @"kTxFrames"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kTxRetransmission), @"kTxRetransmission"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kdot11RetryCount), @"kdot11RetryCount"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kdot11MultipleRetryCount), @"kdot11MultipleRetryCount"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kdot11RTSSuccessCount), @"kdot11RTSSuccessCount"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_17:
    if ((*&has & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kdot11RTSFailureCount), @"kdot11RTSFailureCount"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kCtlTxRTS), @"kCtlTxRTS"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kRxCRCGlitch), @"kRxCRCGlitch"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kMACRxUnicastCTStoMAC), @"kMACRxUnicastCTStoMAC"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kMACRxUnicastCTStoOther), @"kMACRxUnicastCTStoOther"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_23;
    }

LABEL_47:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kMACRxUnicastRTStoOther), @"kMACRxUnicastRTStoOther"}];
    if ((*&self->_has & 1) == 0)
    {
      return dictionary;
    }

    goto LABEL_24;
  }

LABEL_46:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kMACRxUnicastRTStoMAC), @"kMACRxUnicastRTStoMAC"}];
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    goto LABEL_47;
  }

LABEL_23:
  if (*&has)
  {
LABEL_24:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_kCtlTxCTS), @"kCtlTxCTS"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    kRxDataErrors = self->_kRxDataErrors;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x1000) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  kRxFrames = self->_kRxFrames;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
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

    goto LABEL_29;
  }

LABEL_28:
  kMACRxDataFrameMatchingRA = self->_kMACRxDataFrameMatchingRA;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  kMACRxDataFrameOtherRA = self->_kMACRxDataFrameOtherRA;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  kMACRxControlFrameMatchingRA = self->_kMACRxControlFrameMatchingRA;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  kMACRxControlFrameOtherRA = self->_kMACRxControlFrameOtherRA;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  kRxGoodPLCP = self->_kRxGoodPLCP;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  kRxBadPLCP = self->_kRxBadPLCP;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  kRxBadFCS = self->_kRxBadFCS;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  kTxFrames = self->_kTxFrames;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  kTxRetransmission = self->_kTxRetransmission;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  kdot11RetryCount = self->_kdot11RetryCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  kdot11MultipleRetryCount = self->_kdot11MultipleRetryCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  kdot11RTSSuccessCount = self->_kdot11RTSSuccessCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_17:
    if ((*&has & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  kdot11RTSFailureCount = self->_kdot11RTSFailureCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  kCtlTxRTS = self->_kCtlTxRTS;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
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

    goto LABEL_44;
  }

LABEL_43:
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

    goto LABEL_45;
  }

LABEL_44:
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

LABEL_46:
    kMACRxUnicastRTStoOther = self->_kMACRxUnicastRTStoOther;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_45:
  kMACRxUnicastRTStoMAC = self->_kMACRxUnicastRTStoMAC;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    goto LABEL_46;
  }

LABEL_23:
  if ((*&has & 1) == 0)
  {
    return;
  }

LABEL_47:
  kCtlTxCTS = self->_kCtlTxCTS;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    *(to + 12) = self->_kRxDataErrors;
    *(to + 46) |= 0x800u;
    has = self->_has;
    if ((*&has & 0x1000) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  *(to + 13) = self->_kRxFrames;
  *(to + 46) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 15) = self->_kRxRetryBitSet;
  *(to + 46) |= 0x4000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 3) = self->_kMACRxDataFrameMatchingRA;
  *(to + 46) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 4) = self->_kMACRxDataFrameOtherRA;
  *(to + 46) |= 8u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(to + 44) = self->_kMACRxControlFrameMatchingRA;
  *(to + 46) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(to + 45) = self->_kMACRxControlFrameOtherRA;
  *(to + 46) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(to + 14) = self->_kRxGoodPLCP;
  *(to + 46) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(to + 10) = self->_kRxBadPLCP;
  *(to + 46) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(to + 9) = self->_kRxBadFCS;
  *(to + 46) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(to + 16) = self->_kTxFrames;
  *(to + 46) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(to + 17) = self->_kTxRetransmission;
  *(to + 46) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(to + 21) = self->_kdot11RetryCount;
  *(to + 46) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(to + 18) = self->_kdot11MultipleRetryCount;
  *(to + 46) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(to + 20) = self->_kdot11RTSSuccessCount;
  *(to + 46) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_17:
    if ((*&has & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(to + 19) = self->_kdot11RTSFailureCount;
  *(to + 46) |= 0x40000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(to + 2) = self->_kCtlTxRTS;
  *(to + 46) |= 2u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(to + 11) = self->_kRxCRCGlitch;
  *(to + 46) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(to + 5) = self->_kMACRxUnicastCTStoMAC;
  *(to + 46) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(to + 6) = self->_kMACRxUnicastCTStoOther;
  *(to + 46) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(to + 7) = self->_kMACRxUnicastRTStoMAC;
  *(to + 46) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_23:
    if ((*&has & 1) == 0)
    {
      return;
    }

LABEL_47:
    *(to + 1) = self->_kCtlTxCTS;
    *(to + 46) |= 1u;
    return;
  }

LABEL_46:
  *(to + 8) = self->_kMACRxUnicastRTStoOther;
  *(to + 46) |= 0x80u;
  if (*&self->_has)
  {
    goto LABEL_47;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    *(result + 12) = self->_kRxDataErrors;
    *(result + 46) |= 0x800u;
    has = self->_has;
    if ((*&has & 0x1000) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((*&has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 13) = self->_kRxFrames;
  *(result + 46) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 15) = self->_kRxRetryBitSet;
  *(result + 46) |= 0x4000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 3) = self->_kMACRxDataFrameMatchingRA;
  *(result + 46) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 4) = self->_kMACRxDataFrameOtherRA;
  *(result + 46) |= 8u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 44) = self->_kMACRxControlFrameMatchingRA;
  *(result + 46) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 45) = self->_kMACRxControlFrameOtherRA;
  *(result + 46) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 14) = self->_kRxGoodPLCP;
  *(result + 46) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 10) = self->_kRxBadPLCP;
  *(result + 46) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 9) = self->_kRxBadFCS;
  *(result + 46) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 16) = self->_kTxFrames;
  *(result + 46) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 17) = self->_kTxRetransmission;
  *(result + 46) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 21) = self->_kdot11RetryCount;
  *(result + 46) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 18) = self->_kdot11MultipleRetryCount;
  *(result + 46) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 20) = self->_kdot11RTSSuccessCount;
  *(result + 46) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_17:
    if ((*&has & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 19) = self->_kdot11RTSFailureCount;
  *(result + 46) |= 0x40000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 2) = self->_kCtlTxRTS;
  *(result + 46) |= 2u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 11) = self->_kRxCRCGlitch;
  *(result + 46) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 5) = self->_kMACRxUnicastCTStoMAC;
  *(result + 46) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 6) = self->_kMACRxUnicastCTStoOther;
  *(result + 46) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 7) = self->_kMACRxUnicastRTStoMAC;
  *(result + 46) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_23:
    if ((*&has & 1) == 0)
    {
      return result;
    }

    goto LABEL_24;
  }

LABEL_47:
  *(result + 8) = self->_kMACRxUnicastRTStoOther;
  *(result + 46) |= 0x80u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_24:
  *(result + 1) = self->_kCtlTxCTS;
  *(result + 46) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 46);
    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_kRxDataErrors != *(equal + 12))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
LABEL_116:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_kRxFrames != *(equal + 13))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_kRxRetryBitSet != *(equal + 15))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_kMACRxDataFrameMatchingRA != *(equal + 3))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_kMACRxDataFrameOtherRA != *(equal + 4))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v7 & 0x200000) == 0 || self->_kMACRxControlFrameMatchingRA != *(equal + 44))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x200000) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v7 & 0x400000) == 0 || self->_kMACRxControlFrameOtherRA != *(equal + 45))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x400000) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_kRxGoodPLCP != *(equal + 14))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_kRxBadPLCP != *(equal + 10))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_kRxBadFCS != *(equal + 9))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_kTxFrames != *(equal + 16))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_kTxRetransmission != *(equal + 17))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v7 & 0x100000) == 0 || self->_kdot11RetryCount != *(equal + 21))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x100000) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_kdot11MultipleRetryCount != *(equal + 18))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_kdot11RTSSuccessCount != *(equal + 20))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_kdot11RTSFailureCount != *(equal + 19))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_kCtlTxRTS != *(equal + 2))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_kRxCRCGlitch != *(equal + 11))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_kMACRxUnicastCTStoMAC != *(equal + 5))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_kMACRxUnicastCTStoOther != *(equal + 6))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_kMACRxUnicastRTStoMAC != *(equal + 7))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_116;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_kMACRxUnicastRTStoOther != *(equal + 8))
      {
        goto LABEL_116;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_116;
    }

    LOBYTE(v5) = (*(equal + 46) & 1) == 0;
    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_kCtlTxCTS != *(equal + 1))
      {
        goto LABEL_116;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v3 = 2654435761u * self->_kRxDataErrors;
    if ((*&has & 0x1000) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_kRxFrames;
      if ((*&has & 0x4000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&has & 0x4000) != 0)
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
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_kMACRxControlFrameMatchingRA;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_kMACRxControlFrameOtherRA;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_kRxGoodPLCP;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x200) != 0)
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
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_12:
    v13 = 2654435761u * self->_kTxFrames;
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
    v14 = 2654435761u * self->_kTxRetransmission;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_14:
    v15 = 2654435761u * self->_kdot11RetryCount;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x20000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761u * self->_kdot11MultipleRetryCount;
  if ((*&has & 0x80000) != 0)
  {
LABEL_16:
    v17 = 2654435761u * self->_kdot11RTSSuccessCount;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 0x40000) != 0)
  {
    v18 = 2654435761u * self->_kdot11RTSFailureCount;
    if ((*&has & 2) != 0)
    {
LABEL_34:
      v19 = 2654435761u * self->_kCtlTxRTS;
      if ((*&has & 0x400) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
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
  if ((*&has & 0x400) != 0)
  {
LABEL_35:
    v20 = 2654435761u * self->_kRxCRCGlitch;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

LABEL_43:
  v20 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_36:
    v21 = 2654435761u * self->_kMACRxUnicastCTStoMAC;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

LABEL_44:
  v21 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_37:
    v22 = 2654435761u * self->_kMACRxUnicastCTStoOther;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

LABEL_45:
  v22 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_38:
    v23 = 2654435761u * self->_kMACRxUnicastRTStoMAC;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_39;
    }

LABEL_47:
    v24 = 0;
    if (*&has)
    {
      goto LABEL_40;
    }

LABEL_48:
    v25 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25;
  }

LABEL_46:
  v23 = 0;
  if ((*&has & 0x80) == 0)
  {
    goto LABEL_47;
  }

LABEL_39:
  v24 = 2654435761u * self->_kMACRxUnicastRTStoOther;
  if ((*&has & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_40:
  v25 = 2654435761u * self->_kCtlTxCTS;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 46);
  if ((v3 & 0x800) != 0)
  {
    self->_kRxDataErrors = *(from + 12);
    *&self->_has |= 0x800u;
    v3 = *(from + 46);
    if ((v3 & 0x1000) == 0)
    {
LABEL_3:
      if ((v3 & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  self->_kRxFrames = *(from + 13);
  *&self->_has |= 0x1000u;
  v3 = *(from + 46);
  if ((v3 & 0x4000) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_kRxRetryBitSet = *(from + 15);
  *&self->_has |= 0x4000u;
  v3 = *(from + 46);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_kMACRxDataFrameMatchingRA = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 46);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_kMACRxDataFrameOtherRA = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 46);
  if ((v3 & 0x200000) == 0)
  {
LABEL_7:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_kMACRxControlFrameMatchingRA = *(from + 44);
  *&self->_has |= 0x200000u;
  v3 = *(from + 46);
  if ((v3 & 0x400000) == 0)
  {
LABEL_8:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_kMACRxControlFrameOtherRA = *(from + 45);
  *&self->_has |= 0x400000u;
  v3 = *(from + 46);
  if ((v3 & 0x2000) == 0)
  {
LABEL_9:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_kRxGoodPLCP = *(from + 14);
  *&self->_has |= 0x2000u;
  v3 = *(from + 46);
  if ((v3 & 0x200) == 0)
  {
LABEL_10:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_kRxBadPLCP = *(from + 10);
  *&self->_has |= 0x200u;
  v3 = *(from + 46);
  if ((v3 & 0x100) == 0)
  {
LABEL_11:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_kRxBadFCS = *(from + 9);
  *&self->_has |= 0x100u;
  v3 = *(from + 46);
  if ((v3 & 0x8000) == 0)
  {
LABEL_12:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_kTxFrames = *(from + 16);
  *&self->_has |= 0x8000u;
  v3 = *(from + 46);
  if ((v3 & 0x10000) == 0)
  {
LABEL_13:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_kTxRetransmission = *(from + 17);
  *&self->_has |= 0x10000u;
  v3 = *(from + 46);
  if ((v3 & 0x100000) == 0)
  {
LABEL_14:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_kdot11RetryCount = *(from + 21);
  *&self->_has |= 0x100000u;
  v3 = *(from + 46);
  if ((v3 & 0x20000) == 0)
  {
LABEL_15:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_kdot11MultipleRetryCount = *(from + 18);
  *&self->_has |= 0x20000u;
  v3 = *(from + 46);
  if ((v3 & 0x80000) == 0)
  {
LABEL_16:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_kdot11RTSSuccessCount = *(from + 20);
  *&self->_has |= 0x80000u;
  v3 = *(from + 46);
  if ((v3 & 0x40000) == 0)
  {
LABEL_17:
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_kdot11RTSFailureCount = *(from + 19);
  *&self->_has |= 0x40000u;
  v3 = *(from + 46);
  if ((v3 & 2) == 0)
  {
LABEL_18:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_kCtlTxRTS = *(from + 2);
  *&self->_has |= 2u;
  v3 = *(from + 46);
  if ((v3 & 0x400) == 0)
  {
LABEL_19:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_kRxCRCGlitch = *(from + 11);
  *&self->_has |= 0x400u;
  v3 = *(from + 46);
  if ((v3 & 0x10) == 0)
  {
LABEL_20:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_kMACRxUnicastCTStoMAC = *(from + 5);
  *&self->_has |= 0x10u;
  v3 = *(from + 46);
  if ((v3 & 0x20) == 0)
  {
LABEL_21:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_kMACRxUnicastCTStoOther = *(from + 6);
  *&self->_has |= 0x20u;
  v3 = *(from + 46);
  if ((v3 & 0x40) == 0)
  {
LABEL_22:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_kMACRxUnicastRTStoMAC = *(from + 7);
  *&self->_has |= 0x40u;
  v3 = *(from + 46);
  if ((v3 & 0x80) == 0)
  {
LABEL_23:
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_47:
    self->_kCtlTxCTS = *(from + 1);
    *&self->_has |= 1u;
    return;
  }

LABEL_46:
  self->_kMACRxUnicastRTStoOther = *(from + 8);
  *&self->_has |= 0x80u;
  if (*(from + 46))
  {
    goto LABEL_47;
  }
}

@end