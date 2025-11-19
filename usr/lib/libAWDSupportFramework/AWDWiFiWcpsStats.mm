@interface AWDWiFiWcpsStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAvgRssi:(BOOL)a3;
- (void)setHasAvgRxRetry:(BOOL)a3;
- (void)setHasAvgSnr:(BOOL)a3;
- (void)setHasAvgTxAirLatency:(BOOL)a3;
- (void)setHasAvgTxPacketLoss:(BOOL)a3;
- (void)setHasAvgTxRetrans:(BOOL)a3;
- (void)setHasCntAwdlActive:(BOOL)a3;
- (void)setHasCntDisBtConnLatHi:(BOOL)a3;
- (void)setHasCntDisBtEv3:(BOOL)a3;
- (void)setHasCntRedBtConnLatLow:(BOOL)a3;
- (void)setHasCntRedBtDisconnLatHi:(BOOL)a3;
- (void)setHasCntVoBadPeriods:(BOOL)a3;
- (void)setHasCntVoGoodPeriods:(BOOL)a3;
- (void)setHasDurationBucket:(BOOL)a3;
- (void)setHasEndCca:(BOOL)a3;
- (void)setHasEndLinkState:(BOOL)a3;
- (void)setHasEndRssi:(BOOL)a3;
- (void)setHasEndRxRetry:(BOOL)a3;
- (void)setHasEndSnr:(BOOL)a3;
- (void)setHasEndTxAirLatency:(BOOL)a3;
- (void)setHasEndTxPacketLoss:(BOOL)a3;
- (void)setHasEndTxRetrans:(BOOL)a3;
- (void)setHasMaxCca:(BOOL)a3;
- (void)setHasMaxRssi:(BOOL)a3;
- (void)setHasMaxRxRetry:(BOOL)a3;
- (void)setHasMaxTxAirLatency:(BOOL)a3;
- (void)setHasMaxTxPacketLoss:(BOOL)a3;
- (void)setHasMaxTxRetrans:(BOOL)a3;
- (void)setHasMaxnSnr:(BOOL)a3;
- (void)setHasMinCca:(BOOL)a3;
- (void)setHasMinRssi:(BOOL)a3;
- (void)setHasMinRxRetry:(BOOL)a3;
- (void)setHasMinSnr:(BOOL)a3;
- (void)setHasMinTxAirLatency:(BOOL)a3;
- (void)setHasMinTxPacketLoss:(BOOL)a3;
- (void)setHasMinTxRetrans:(BOOL)a3;
- (void)setHasPercentageActive:(BOOL)a3;
- (void)setHasPercentagePowerSave:(BOOL)a3;
- (void)setHasPercentageWcpsDisabled:(BOOL)a3;
- (void)setHasPercentageWcpsEnabled:(BOOL)a3;
- (void)setHasPercentageWcpsReduced:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiWcpsStats

- (void)setHasTimestamp:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasDurationBucket:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasPercentageActive:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasPercentagePowerSave:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasPercentageWcpsEnabled:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasPercentageWcpsReduced:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasPercentageWcpsDisabled:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasCntVoGoodPeriods:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasCntVoBadPeriods:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasAvgRssi:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasAvgSnr:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasAvgTxAirLatency:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasAvgTxPacketLoss:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasAvgTxRetrans:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasAvgRxRetry:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasEndRssi:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasEndSnr:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasEndCca:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasEndTxAirLatency:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasEndTxPacketLoss:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasEndTxRetrans:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasEndRxRetry:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasMinRssi:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasMinSnr:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasMinCca:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasMinTxAirLatency:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasMinTxPacketLoss:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasMinTxRetrans:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasMinRxRetry:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasMaxRssi:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasMaxnSnr:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasMaxCca:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasMaxTxAirLatency:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasMaxTxPacketLoss:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasMaxTxRetrans:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasMaxRxRetry:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasCntRedBtConnLatLow:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasCntRedBtDisconnLatHi:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasCntDisBtConnLatHi:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasCntDisBtEv3:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasCntAwdlActive:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasEndLinkState:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiWcpsStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiWcpsStats description](&v3, sel_description), -[AWDWiFiWcpsStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x40000000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_durationBucket), @"durationBucket"}];
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_percentageActive), @"percentageActive"}];
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_percentagePowerSave), @"percentagePowerSave"}];
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_percentageWcpsEnabled), @"percentageWcpsEnabled"}];
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_percentageWcpsReduced), @"percentageWcpsReduced"}];
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_percentageWcpsDisabled), @"percentageWcpsDisabled"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_cntVoGoodPeriods), @"cntVoGoodPeriods"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_cntVoBadPeriods), @"cntVoBadPeriods"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_avgRssi), @"avgRssi"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_12:
    if ((*&has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_avgSnr), @"avgSnr"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_avgCca), @"avgCca"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_avgTxAirLatency), @"avgTxAirLatency"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_avgTxPacketLoss), @"avgTxPacketLoss"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_avgTxRetrans), @"avgTxRetrans"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_17:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_avgRxRetry), @"avgRxRetry"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_endRssi), @"endRssi"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_endSnr), @"endSnr"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_20:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_endCca), @"endCca"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_21:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_endTxAirLatency), @"endTxAirLatency"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_endTxPacketLoss), @"endTxPacketLoss"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_23:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_endTxRetrans), @"endTxRetrans"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_24:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_endRxRetry), @"endRxRetry"}];
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_minRssi), @"minRssi"}];
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_minSnr), @"minSnr"}];
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_minCca), @"minCca"}];
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_minTxAirLatency), @"minTxAirLatency"}];
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_minTxPacketLoss), @"minTxPacketLoss"}];
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_minTxRetrans), @"minTxRetrans"}];
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_minRxRetry), @"minRxRetry"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_maxRssi), @"maxRssi"}];
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_78;
  }

LABEL_77:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_maxnSnr), @"maxnSnr"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_34:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }

LABEL_78:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_maxCca), @"maxCca"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_80;
  }

LABEL_79:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_maxTxAirLatency), @"maxTxAirLatency"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_81;
  }

LABEL_80:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_maxTxPacketLoss), @"maxTxPacketLoss"}];
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_82;
  }

LABEL_81:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_maxTxRetrans), @"maxTxRetrans"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_83;
  }

LABEL_82:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_maxRxRetry), @"maxRxRetry"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_39:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_84;
  }

LABEL_83:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_cntRedBtConnLatLow), @"cntRedBtConnLatLow"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_40:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_85;
  }

LABEL_84:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_cntRedBtDisconnLatHi), @"cntRedBtDisconnLatHi"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_41:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_86;
  }

LABEL_85:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_cntDisBtConnLatHi), @"cntDisBtConnLatHi"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_42:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_43;
    }

LABEL_87:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_cntAwdlActive), @"cntAwdlActive"}];
    if ((*&self->_has & 0x10000) == 0)
    {
      return v3;
    }

    goto LABEL_44;
  }

LABEL_86:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_cntDisBtEv3), @"cntDisBtEv3"}];
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    goto LABEL_87;
  }

LABEL_43:
  if ((*&has & 0x10000) != 0)
  {
LABEL_44:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_endLinkState), @"endLinkState"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x40000000000) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  durationBucket = self->_durationBucket;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  percentageActive = self->_percentageActive;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  percentagePowerSave = self->_percentagePowerSave;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  percentageWcpsEnabled = self->_percentageWcpsEnabled;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  percentageWcpsReduced = self->_percentageWcpsReduced;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  percentageWcpsDisabled = self->_percentageWcpsDisabled;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  cntVoGoodPeriods = self->_cntVoGoodPeriods;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  cntVoBadPeriods = self->_cntVoBadPeriods;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  avgRssi = self->_avgRssi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_12:
    if ((*&has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  avgSnr = self->_avgSnr;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  avgCca = self->_avgCca;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  avgTxAirLatency = self->_avgTxAirLatency;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  avgTxPacketLoss = self->_avgTxPacketLoss;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  avgTxRetrans = self->_avgTxRetrans;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_17:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  avgRxRetry = self->_avgRxRetry;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  endRssi = self->_endRssi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  endSnr = self->_endSnr;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_20:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  endCca = self->_endCca;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_21:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  endTxAirLatency = self->_endTxAirLatency;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  endTxPacketLoss = self->_endTxPacketLoss;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_23:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  endTxRetrans = self->_endTxRetrans;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_24:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  endRxRetry = self->_endRxRetry;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  minRssi = self->_minRssi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  minSnr = self->_minSnr;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  minCca = self->_minCca;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  minTxAirLatency = self->_minTxAirLatency;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  minTxPacketLoss = self->_minTxPacketLoss;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  minTxRetrans = self->_minTxRetrans;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  minRxRetry = self->_minRxRetry;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  maxRssi = self->_maxRssi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  maxnSnr = self->_maxnSnr;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_34:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  maxCca = self->_maxCca;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  maxTxAirLatency = self->_maxTxAirLatency;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  maxTxPacketLoss = self->_maxTxPacketLoss;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  maxTxRetrans = self->_maxTxRetrans;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  maxRxRetry = self->_maxRxRetry;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_39:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  cntRedBtConnLatLow = self->_cntRedBtConnLatLow;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_40:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  cntRedBtDisconnLatHi = self->_cntRedBtDisconnLatHi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_41:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  cntDisBtConnLatHi = self->_cntDisBtConnLatHi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_42:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_43;
    }

LABEL_86:
    cntAwdlActive = self->_cntAwdlActive;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x10000) == 0)
    {
      return;
    }

    goto LABEL_87;
  }

LABEL_85:
  cntDisBtEv3 = self->_cntDisBtEv3;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    goto LABEL_86;
  }

LABEL_43:
  if ((*&has & 0x10000) == 0)
  {
    return;
  }

LABEL_87:
  endLinkState = self->_endLinkState;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x40000000000) != 0)
  {
    *(a3 + 43) = self->_timestamp;
    *(a3 + 44) |= 0x40000000000uLL;
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 15) = self->_durationBucket;
  *(a3 + 44) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 38) = self->_percentageActive;
  *(a3 + 44) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 39) = self->_percentagePowerSave;
  *(a3 + 44) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 41) = self->_percentageWcpsEnabled;
  *(a3 + 44) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a3 + 42) = self->_percentageWcpsReduced;
  *(a3 + 44) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 40) = self->_percentageWcpsDisabled;
  *(a3 + 44) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a3 + 14) = self->_cntVoGoodPeriods;
  *(a3 + 44) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a3 + 13) = self->_cntVoBadPeriods;
  *(a3 + 44) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a3 + 2) = self->_avgRssi;
  *(a3 + 44) |= 2uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_12:
    if ((*&has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 4) = self->_avgSnr;
  *(a3 + 44) |= 8uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a3 + 1) = self->_avgCca;
  *(a3 + 44) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 5) = self->_avgTxAirLatency;
  *(a3 + 44) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a3 + 6) = self->_avgTxPacketLoss;
  *(a3 + 44) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a3 + 7) = self->_avgTxRetrans;
  *(a3 + 44) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_17:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a3 + 3) = self->_avgRxRetry;
  *(a3 + 44) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a3 + 18) = self->_endRssi;
  *(a3 + 44) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a3 + 20) = self->_endSnr;
  *(a3 + 44) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_20:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a3 + 16) = self->_endCca;
  *(a3 + 44) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_21:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a3 + 21) = self->_endTxAirLatency;
  *(a3 + 44) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(a3 + 22) = self->_endTxPacketLoss;
  *(a3 + 44) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_23:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(a3 + 23) = self->_endTxRetrans;
  *(a3 + 44) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_24:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(a3 + 19) = self->_endRxRetry;
  *(a3 + 44) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(a3 + 32) = self->_minRssi;
  *(a3 + 44) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(a3 + 34) = self->_minSnr;
  *(a3 + 44) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(a3 + 31) = self->_minCca;
  *(a3 + 44) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(a3 + 35) = self->_minTxAirLatency;
  *(a3 + 44) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(a3 + 36) = self->_minTxPacketLoss;
  *(a3 + 44) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(a3 + 37) = self->_minTxRetrans;
  *(a3 + 44) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(a3 + 33) = self->_minRxRetry;
  *(a3 + 44) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(a3 + 25) = self->_maxRssi;
  *(a3 + 44) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(a3 + 30) = self->_maxnSnr;
  *(a3 + 44) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_34:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(a3 + 24) = self->_maxCca;
  *(a3 + 44) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(a3 + 27) = self->_maxTxAirLatency;
  *(a3 + 44) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(a3 + 28) = self->_maxTxPacketLoss;
  *(a3 + 44) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(a3 + 29) = self->_maxTxRetrans;
  *(a3 + 44) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(a3 + 26) = self->_maxRxRetry;
  *(a3 + 44) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_39:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(a3 + 11) = self->_cntRedBtConnLatLow;
  *(a3 + 44) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_40:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(a3 + 12) = self->_cntRedBtDisconnLatHi;
  *(a3 + 44) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_41:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(a3 + 9) = self->_cntDisBtConnLatHi;
  *(a3 + 44) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_42:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(a3 + 10) = self->_cntDisBtEv3;
  *(a3 + 44) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_43:
    if ((*&has & 0x10000) == 0)
    {
      return;
    }

LABEL_87:
    *(a3 + 17) = self->_endLinkState;
    *(a3 + 44) |= 0x10000uLL;
    return;
  }

LABEL_86:
  *(a3 + 8) = self->_cntAwdlActive;
  *(a3 + 44) |= 0x80uLL;
  if ((*&self->_has & 0x10000) != 0)
  {
    goto LABEL_87;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((*&has & 0x40000000000) != 0)
  {
    *(result + 43) = self->_timestamp;
    *(result + 44) |= 0x40000000000uLL;
    has = self->_has;
    if ((*&has & 0x4000) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else if ((*&has & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 15) = self->_durationBucket;
  *(result + 44) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 38) = self->_percentageActive;
  *(result + 44) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(result + 39) = self->_percentagePowerSave;
  *(result + 44) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(result + 41) = self->_percentageWcpsEnabled;
  *(result + 44) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(result + 42) = self->_percentageWcpsReduced;
  *(result + 44) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(result + 40) = self->_percentageWcpsDisabled;
  *(result + 44) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(result + 14) = self->_cntVoGoodPeriods;
  *(result + 44) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_10:
    if ((*&has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 13) = self->_cntVoBadPeriods;
  *(result + 44) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_11:
    if ((*&has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(result + 2) = self->_avgRssi;
  *(result + 44) |= 2uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_12:
    if ((*&has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(result + 4) = self->_avgSnr;
  *(result + 44) |= 8uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(result + 1) = self->_avgCca;
  *(result + 44) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(result + 5) = self->_avgTxAirLatency;
  *(result + 44) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(result + 6) = self->_avgTxPacketLoss;
  *(result + 44) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(result + 7) = self->_avgTxRetrans;
  *(result + 44) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_17:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(result + 3) = self->_avgRxRetry;
  *(result + 44) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(result + 18) = self->_endRssi;
  *(result + 44) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_19:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(result + 20) = self->_endSnr;
  *(result + 44) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_20:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(result + 16) = self->_endCca;
  *(result + 44) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_21:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(result + 21) = self->_endTxAirLatency;
  *(result + 44) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(result + 22) = self->_endTxPacketLoss;
  *(result + 44) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_23:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(result + 23) = self->_endTxRetrans;
  *(result + 44) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_24:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(result + 19) = self->_endRxRetry;
  *(result + 44) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(result + 32) = self->_minRssi;
  *(result + 44) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(result + 34) = self->_minSnr;
  *(result + 44) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(result + 31) = self->_minCca;
  *(result + 44) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(result + 35) = self->_minTxAirLatency;
  *(result + 44) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(result + 36) = self->_minTxPacketLoss;
  *(result + 44) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(result + 37) = self->_minTxRetrans;
  *(result + 44) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(result + 33) = self->_minRxRetry;
  *(result + 44) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(result + 25) = self->_maxRssi;
  *(result + 44) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(result + 30) = self->_maxnSnr;
  *(result + 44) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_34:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(result + 24) = self->_maxCca;
  *(result + 44) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(result + 27) = self->_maxTxAirLatency;
  *(result + 44) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(result + 28) = self->_maxTxPacketLoss;
  *(result + 44) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(result + 29) = self->_maxTxRetrans;
  *(result + 44) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(result + 26) = self->_maxRxRetry;
  *(result + 44) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_39:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(result + 11) = self->_cntRedBtConnLatLow;
  *(result + 44) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_40:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(result + 12) = self->_cntRedBtDisconnLatHi;
  *(result + 44) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_41:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(result + 9) = self->_cntDisBtConnLatHi;
  *(result + 44) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_42:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(result + 10) = self->_cntDisBtEv3;
  *(result + 44) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_43:
    if ((*&has & 0x10000) == 0)
    {
      return result;
    }

    goto LABEL_44;
  }

LABEL_87:
  *(result + 8) = self->_cntAwdlActive;
  *(result + 44) |= 0x80uLL;
  if ((*&self->_has & 0x10000) == 0)
  {
    return result;
  }

LABEL_44:
  *(result + 17) = self->_endLinkState;
  *(result + 44) |= 0x10000uLL;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 44);
    if ((*&has & 0x40000000000) != 0)
    {
      if ((v7 & 0x40000000000) == 0 || self->_timestamp != *(a3 + 43))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x40000000000) != 0)
    {
LABEL_216:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_durationBucket != *(a3 + 15))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x2000000000) != 0)
    {
      if ((v7 & 0x2000000000) == 0 || self->_percentageActive != *(a3 + 38))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x2000000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x4000000000) != 0)
    {
      if ((v7 & 0x4000000000) == 0 || self->_percentagePowerSave != *(a3 + 39))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x4000000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x10000000000) != 0)
    {
      if ((v7 & 0x10000000000) == 0 || self->_percentageWcpsEnabled != *(a3 + 41))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x10000000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x20000000000) != 0)
    {
      if ((v7 & 0x20000000000) == 0 || self->_percentageWcpsReduced != *(a3 + 42))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x20000000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x8000000000) != 0)
    {
      if ((v7 & 0x8000000000) == 0 || self->_percentageWcpsDisabled != *(a3 + 40))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x8000000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_cntVoGoodPeriods != *(a3 + 14))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_cntVoBadPeriods != *(a3 + 13))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_avgRssi != *(a3 + 2))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_avgSnr != *(a3 + 4))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_216;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_avgCca != *(a3 + 1))
      {
        goto LABEL_216;
      }
    }

    else if (v7)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_avgTxAirLatency != *(a3 + 5))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_avgTxPacketLoss != *(a3 + 6))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_avgTxRetrans != *(a3 + 7))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_avgRxRetry != *(a3 + 3))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_endRssi != *(a3 + 18))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_endSnr != *(a3 + 20))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_endCca != *(a3 + 16))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v7 & 0x100000) == 0 || self->_endTxAirLatency != *(a3 + 21))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x100000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v7 & 0x200000) == 0 || self->_endTxPacketLoss != *(a3 + 22))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x200000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v7 & 0x400000) == 0 || self->_endTxRetrans != *(a3 + 23))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x400000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_endRxRetry != *(a3 + 19))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x80000000) != 0)
    {
      if ((v7 & 0x80000000) == 0 || self->_minRssi != *(a3 + 32))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x200000000) != 0)
    {
      if ((v7 & 0x200000000) == 0 || self->_minSnr != *(a3 + 34))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x200000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x40000000) != 0)
    {
      if ((v7 & 0x40000000) == 0 || self->_minCca != *(a3 + 31))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x40000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x400000000) != 0)
    {
      if ((v7 & 0x400000000) == 0 || self->_minTxAirLatency != *(a3 + 35))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x400000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x800000000) != 0)
    {
      if ((v7 & 0x800000000) == 0 || self->_minTxPacketLoss != *(a3 + 36))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x800000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x1000000000) != 0)
    {
      if ((v7 & 0x1000000000) == 0 || self->_minTxRetrans != *(a3 + 37))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x1000000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x100000000) != 0)
    {
      if ((v7 & 0x100000000) == 0 || self->_minRxRetry != *(a3 + 33))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x100000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x1000000) != 0)
    {
      if ((v7 & 0x1000000) == 0 || self->_maxRssi != *(a3 + 25))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x1000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x20000000) != 0)
    {
      if ((v7 & 0x20000000) == 0 || self->_maxnSnr != *(a3 + 30))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x20000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x800000) != 0)
    {
      if ((v7 & 0x800000) == 0 || self->_maxCca != *(a3 + 24))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x800000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x4000000) != 0)
    {
      if ((v7 & 0x4000000) == 0 || self->_maxTxAirLatency != *(a3 + 27))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x4000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x8000000) != 0)
    {
      if ((v7 & 0x8000000) == 0 || self->_maxTxPacketLoss != *(a3 + 28))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x10000000) != 0)
    {
      if ((v7 & 0x10000000) == 0 || self->_maxTxRetrans != *(a3 + 29))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x10000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x2000000) != 0)
    {
      if ((v7 & 0x2000000) == 0 || self->_maxRxRetry != *(a3 + 26))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x2000000) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_cntRedBtConnLatLow != *(a3 + 11))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_cntRedBtDisconnLatHi != *(a3 + 12))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_cntDisBtConnLatHi != *(a3 + 9))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_cntDisBtEv3 != *(a3 + 10))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_216;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_cntAwdlActive != *(a3 + 8))
      {
        goto LABEL_216;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_216;
    }

    LOBYTE(v5) = (v7 & 0x10000) == 0;
    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_endLinkState != *(a3 + 17))
      {
        goto LABEL_216;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x40000000000) != 0)
  {
    v46 = 2654435761u * self->_timestamp;
    if ((*&has & 0x4000) != 0)
    {
LABEL_3:
      v45 = 2654435761u * self->_durationBucket;
      if ((*&has & 0x2000000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v46 = 0;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_3;
    }
  }

  v45 = 0;
  if ((*&has & 0x2000000000) != 0)
  {
LABEL_4:
    v44 = 2654435761u * self->_percentageActive;
    if ((*&has & 0x4000000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  v44 = 0;
  if ((*&has & 0x4000000000) != 0)
  {
LABEL_5:
    v43 = 2654435761u * self->_percentagePowerSave;
    if ((*&has & 0x10000000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  v43 = 0;
  if ((*&has & 0x10000000000) != 0)
  {
LABEL_6:
    v42 = 2654435761u * self->_percentageWcpsEnabled;
    if ((*&has & 0x20000000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  v42 = 0;
  if ((*&has & 0x20000000000) != 0)
  {
LABEL_7:
    v41 = 2654435761u * self->_percentageWcpsReduced;
    if ((*&has & 0x8000000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  v41 = 0;
  if ((*&has & 0x8000000000) != 0)
  {
LABEL_8:
    v40 = 2654435761u * self->_percentageWcpsDisabled;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  v40 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_9:
    v39 = 2654435761u * self->_cntVoGoodPeriods;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  v39 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_10:
    v38 = 2654435761u * self->_cntVoBadPeriods;
    if ((*&has & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  v38 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_11:
    v37 = 2654435761u * self->_avgRssi;
    if ((*&has & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  v37 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_12:
    v36 = 2654435761u * self->_avgSnr;
    if (*&has)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  v36 = 0;
  if (*&has)
  {
LABEL_13:
    v35 = 2654435761u * self->_avgCca;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  v35 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_14:
    v34 = 2654435761u * self->_avgTxAirLatency;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  v34 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_15:
    v33 = 2654435761u * self->_avgTxPacketLoss;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  v33 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_16:
    v32 = 2654435761u * self->_avgTxRetrans;
    if ((*&has & 4) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  v32 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_17:
    v31 = 2654435761u * self->_avgRxRetry;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  v31 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_18:
    v30 = 2654435761u * self->_endRssi;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  v30 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_19:
    v3 = 2654435761u * self->_endSnr;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  v3 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_20:
    v4 = 2654435761u * self->_endCca;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  v4 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_21:
    v5 = 2654435761u * self->_endTxAirLatency;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  v5 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_22:
    v6 = 2654435761u * self->_endTxPacketLoss;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  v6 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_23:
    v7 = 2654435761u * self->_endTxRetrans;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  v7 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_24:
    v8 = 2654435761u * self->_endRxRetry;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  v8 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_25:
    v9 = 2654435761u * self->_minRssi;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  v9 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_26:
    v10 = 2654435761u * self->_minSnr;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  v10 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_27:
    v11 = 2654435761u * self->_minCca;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  v11 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_28:
    v12 = 2654435761u * self->_minTxAirLatency;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  v12 = 0;
  if ((*&has & 0x800000000) != 0)
  {
LABEL_29:
    v13 = 2654435761u * self->_minTxPacketLoss;
    if ((*&has & 0x1000000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  v13 = 0;
  if ((*&has & 0x1000000000) != 0)
  {
LABEL_30:
    v14 = 2654435761u * self->_minTxRetrans;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  v14 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_31:
    v15 = 2654435761u * self->_minRxRetry;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  v15 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_32:
    v16 = 2654435761u * self->_maxRssi;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  v16 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_33:
    v17 = 2654435761u * self->_maxnSnr;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  v17 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_34:
    v18 = 2654435761u * self->_maxCca;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  v18 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_35:
    v19 = 2654435761u * self->_maxTxAirLatency;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  v19 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_36:
    v20 = 2654435761u * self->_maxTxPacketLoss;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  v20 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_37:
    v21 = 2654435761u * self->_maxTxRetrans;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  v21 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_38:
    v22 = 2654435761u * self->_maxRxRetry;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  v22 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_39:
    v23 = 2654435761u * self->_cntRedBtConnLatLow;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  v23 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_40:
    v24 = 2654435761u * self->_cntRedBtDisconnLatHi;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  v24 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_41:
    v25 = 2654435761u * self->_cntDisBtConnLatHi;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  v25 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_42:
    v26 = 2654435761u * self->_cntDisBtEv3;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_43;
    }

LABEL_86:
    v27 = 0;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_44;
    }

LABEL_87:
    v28 = 0;
    return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_85:
  v26 = 0;
  if ((*&has & 0x80) == 0)
  {
    goto LABEL_86;
  }

LABEL_43:
  v27 = 2654435761u * self->_cntAwdlActive;
  if ((*&has & 0x10000) == 0)
  {
    goto LABEL_87;
  }

LABEL_44:
  v28 = 2654435761u * self->_endLinkState;
  return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 44);
  if ((v3 & 0x40000000000) != 0)
  {
    self->_timestamp = *(a3 + 43);
    *&self->_has |= 0x40000000000uLL;
    v3 = *(a3 + 44);
    if ((v3 & 0x4000) == 0)
    {
LABEL_3:
      if ((v3 & 0x2000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_47;
    }
  }

  else if ((v3 & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  self->_durationBucket = *(a3 + 15);
  *&self->_has |= 0x4000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x2000000000) == 0)
  {
LABEL_4:
    if ((v3 & 0x4000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_percentageActive = *(a3 + 38);
  *&self->_has |= 0x2000000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x4000000000) == 0)
  {
LABEL_5:
    if ((v3 & 0x10000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_percentagePowerSave = *(a3 + 39);
  *&self->_has |= 0x4000000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x10000000000) == 0)
  {
LABEL_6:
    if ((v3 & 0x20000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_percentageWcpsEnabled = *(a3 + 41);
  *&self->_has |= 0x10000000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x20000000000) == 0)
  {
LABEL_7:
    if ((v3 & 0x8000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_percentageWcpsReduced = *(a3 + 42);
  *&self->_has |= 0x20000000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x8000000000) == 0)
  {
LABEL_8:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_percentageWcpsDisabled = *(a3 + 40);
  *&self->_has |= 0x8000000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x2000) == 0)
  {
LABEL_9:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_cntVoGoodPeriods = *(a3 + 14);
  *&self->_has |= 0x2000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x1000) == 0)
  {
LABEL_10:
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_cntVoBadPeriods = *(a3 + 13);
  *&self->_has |= 0x1000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 2) == 0)
  {
LABEL_11:
    if ((v3 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_avgRssi = *(a3 + 2);
  *&self->_has |= 2uLL;
  v3 = *(a3 + 44);
  if ((v3 & 8) == 0)
  {
LABEL_12:
    if ((v3 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_avgSnr = *(a3 + 4);
  *&self->_has |= 8uLL;
  v3 = *(a3 + 44);
  if ((v3 & 1) == 0)
  {
LABEL_13:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_avgCca = *(a3 + 1);
  *&self->_has |= 1uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_avgTxAirLatency = *(a3 + 5);
  *&self->_has |= 0x10uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x20) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_avgTxPacketLoss = *(a3 + 6);
  *&self->_has |= 0x20uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_avgTxRetrans = *(a3 + 7);
  *&self->_has |= 0x40uLL;
  v3 = *(a3 + 44);
  if ((v3 & 4) == 0)
  {
LABEL_17:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_avgRxRetry = *(a3 + 3);
  *&self->_has |= 4uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x20000) == 0)
  {
LABEL_18:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_endRssi = *(a3 + 18);
  *&self->_has |= 0x20000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x80000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_endSnr = *(a3 + 20);
  *&self->_has |= 0x80000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x8000) == 0)
  {
LABEL_20:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_endCca = *(a3 + 16);
  *&self->_has |= 0x8000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x100000) == 0)
  {
LABEL_21:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_endTxAirLatency = *(a3 + 21);
  *&self->_has |= 0x100000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x200000) == 0)
  {
LABEL_22:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_endTxPacketLoss = *(a3 + 22);
  *&self->_has |= 0x200000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x400000) == 0)
  {
LABEL_23:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_endTxRetrans = *(a3 + 23);
  *&self->_has |= 0x400000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x40000) == 0)
  {
LABEL_24:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_endRxRetry = *(a3 + 19);
  *&self->_has |= 0x40000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v3 & 0x200000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_minRssi = *(a3 + 32);
  *&self->_has |= 0x80000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x200000000) == 0)
  {
LABEL_26:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_minSnr = *(a3 + 34);
  *&self->_has |= 0x200000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_27:
    if ((v3 & 0x400000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_minCca = *(a3 + 31);
  *&self->_has |= 0x40000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x400000000) == 0)
  {
LABEL_28:
    if ((v3 & 0x800000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_minTxAirLatency = *(a3 + 35);
  *&self->_has |= 0x400000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x800000000) == 0)
  {
LABEL_29:
    if ((v3 & 0x1000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_minTxPacketLoss = *(a3 + 36);
  *&self->_has |= 0x800000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x1000000000) == 0)
  {
LABEL_30:
    if ((v3 & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_minTxRetrans = *(a3 + 37);
  *&self->_has |= 0x1000000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x100000000) == 0)
  {
LABEL_31:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_minRxRetry = *(a3 + 33);
  *&self->_has |= 0x100000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x1000000) == 0)
  {
LABEL_32:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_maxRssi = *(a3 + 25);
  *&self->_has |= 0x1000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_33:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_maxnSnr = *(a3 + 30);
  *&self->_has |= 0x20000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x800000) == 0)
  {
LABEL_34:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_maxCca = *(a3 + 24);
  *&self->_has |= 0x800000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_maxTxAirLatency = *(a3 + 27);
  *&self->_has |= 0x4000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_maxTxPacketLoss = *(a3 + 28);
  *&self->_has |= 0x8000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_maxTxRetrans = *(a3 + 29);
  *&self->_has |= 0x10000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x2000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_maxRxRetry = *(a3 + 26);
  *&self->_has |= 0x2000000uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x400) == 0)
  {
LABEL_39:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_cntRedBtConnLatLow = *(a3 + 11);
  *&self->_has |= 0x400uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x800) == 0)
  {
LABEL_40:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_cntRedBtDisconnLatHi = *(a3 + 12);
  *&self->_has |= 0x800uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x100) == 0)
  {
LABEL_41:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_cntDisBtConnLatHi = *(a3 + 9);
  *&self->_has |= 0x100uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x200) == 0)
  {
LABEL_42:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_cntDisBtEv3 = *(a3 + 10);
  *&self->_has |= 0x200uLL;
  v3 = *(a3 + 44);
  if ((v3 & 0x80) == 0)
  {
LABEL_43:
    if ((v3 & 0x10000) == 0)
    {
      return;
    }

LABEL_87:
    self->_endLinkState = *(a3 + 17);
    *&self->_has |= 0x10000uLL;
    return;
  }

LABEL_86:
  self->_cntAwdlActive = *(a3 + 8);
  *&self->_has |= 0x80uLL;
  if ((*(a3 + 44) & 0x10000) != 0)
  {
    goto LABEL_87;
  }
}

@end