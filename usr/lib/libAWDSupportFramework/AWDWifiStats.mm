@interface AWDWifiStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAverageCCA:(BOOL)a;
- (void)setHasAvgJitterRx:(BOOL)rx;
- (void)setHasAvgLatencyTx:(BOOL)tx;
- (void)setHasAvgRetx:(BOOL)retx;
- (void)setHasAvgRssi:(BOOL)rssi;
- (void)setHasAvgTimeBackoff:(BOOL)backoff;
- (void)setHasDataTransferRateMpbs:(BOOL)mpbs;
- (void)setHasEffectiveDataTransferRateMpbs:(BOOL)mpbs;
- (void)setHasEffectiveLinkRateMpbs:(BOOL)mpbs;
- (void)setHasLinkRateMbps:(BOOL)mbps;
- (void)setHasPhyType:(BOOL)type;
- (void)setHasPowerSaveDur:(BOOL)dur;
- (void)setHasTxbytes:(BOOL)txbytes;
- (void)writeTo:(id)to;
@end

@implementation AWDWifiStats

- (void)setHasPhyType:(BOOL)type
{
  if (type)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasTxbytes:(BOOL)txbytes
{
  if (txbytes)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasAvgLatencyTx:(BOOL)tx
{
  if (tx)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasAvgJitterRx:(BOOL)rx
{
  if (rx)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasAvgRssi:(BOOL)rssi
{
  if (rssi)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasAvgRetx:(BOOL)retx
{
  if (retx)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasAvgTimeBackoff:(BOOL)backoff
{
  if (backoff)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasPowerSaveDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasLinkRateMbps:(BOOL)mbps
{
  if (mbps)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasEffectiveLinkRateMpbs:(BOOL)mpbs
{
  if (mpbs)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasDataTransferRateMpbs:(BOOL)mpbs
{
  if (mpbs)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasEffectiveDataTransferRateMpbs:(BOOL)mpbs
{
  if (mpbs)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasAverageCCA:(BOOL)a
{
  if (a)
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
  v3.super_class = AWDWifiStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWifiStats description](&v3, sel_description), -[AWDWifiStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_phyType), @"phyType"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txbytes), @"txbytes"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxbytes), @"rxbytes"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_avgLatencyTx), @"avg_latency_tx"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_avgJitterRx), @"avg_jitter_rx"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_avgRssi), @"avg_rssi"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_avgRetx), @"avg_retx"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_avgTimeBackoff), @"avg_time_backoff"}];
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_powerSaveDur), @"power_save_dur"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_linkRateMbps), @"linkRate_Mbps"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_effectiveLinkRateMpbs), @"effectiveLinkRate_Mpbs"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

LABEL_29:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_effectiveDataTransferRateMpbs), @"effectiveDataTransferRate_Mpbs"}];
    if ((*&self->_has & 4) == 0)
    {
      return dictionary;
    }

    goto LABEL_15;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dataTransferRateMpbs), @"dataTransferRate_Mpbs"}];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_29;
  }

LABEL_14:
  if ((has & 4) != 0)
  {
LABEL_15:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_averageCCA), @"averageCCA"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    phyType = self->_phyType;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  txbytes = self->_txbytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  rxbytes = self->_rxbytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  avgLatencyTx = self->_avgLatencyTx;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  avgJitterRx = self->_avgJitterRx;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  avgRssi = self->_avgRssi;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  avgRetx = self->_avgRetx;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  avgTimeBackoff = self->_avgTimeBackoff;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  powerSaveDur = self->_powerSaveDur;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  linkRateMbps = self->_linkRateMbps;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  effectiveLinkRateMpbs = self->_effectiveLinkRateMpbs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    effectiveDataTransferRateMpbs = self->_effectiveDataTransferRateMpbs;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

LABEL_27:
  dataTransferRateMpbs = self->_dataTransferRateMpbs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_29:
  averageCCA = self->_averageCCA;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    *(to + 16) = self->_phyType;
    *(to + 36) |= 0x1000u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 2) = self->_txbytes;
  *(to + 36) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 1) = self->_rxbytes;
  *(to + 36) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 8) = self->_avgLatencyTx;
  *(to + 36) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 7) = self->_avgJitterRx;
  *(to + 36) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 10) = self->_avgRssi;
  *(to + 36) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 9) = self->_avgRetx;
  *(to + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 11) = self->_avgTimeBackoff;
  *(to + 36) |= 0x80u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 17) = self->_powerSaveDur;
  *(to + 36) |= 0x2000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 15) = self->_linkRateMbps;
  *(to + 36) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 14) = self->_effectiveLinkRateMpbs;
  *(to + 36) |= 0x400u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 12) = self->_dataTransferRateMpbs;
  *(to + 36) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      return;
    }

LABEL_29:
    *(to + 6) = self->_averageCCA;
    *(to + 36) |= 4u;
    return;
  }

LABEL_28:
  *(to + 13) = self->_effectiveDataTransferRateMpbs;
  *(to + 36) |= 0x200u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_29;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    *(result + 16) = self->_phyType;
    *(result + 36) |= 0x1000u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_txbytes;
  *(result + 36) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 1) = self->_rxbytes;
  *(result + 36) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 8) = self->_avgLatencyTx;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 7) = self->_avgJitterRx;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 10) = self->_avgRssi;
  *(result + 36) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 9) = self->_avgRetx;
  *(result + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 11) = self->_avgTimeBackoff;
  *(result + 36) |= 0x80u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 17) = self->_powerSaveDur;
  *(result + 36) |= 0x2000u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 15) = self->_linkRateMbps;
  *(result + 36) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 14) = self->_effectiveLinkRateMpbs;
  *(result + 36) |= 0x400u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 12) = self->_dataTransferRateMpbs;
  *(result + 36) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_29:
  *(result + 13) = self->_effectiveDataTransferRateMpbs;
  *(result + 36) |= 0x200u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_15:
  *(result + 6) = self->_averageCCA;
  *(result + 36) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 36);
    if ((has & 0x1000) != 0)
    {
      if ((*(equal + 36) & 0x1000) == 0 || self->_phyType != *(equal + 16))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 36) & 0x1000) != 0)
    {
LABEL_71:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_txbytes != *(equal + 2))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_71;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_rxbytes != *(equal + 1))
      {
        goto LABEL_71;
      }
    }

    else if (v7)
    {
      goto LABEL_71;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_avgLatencyTx != *(equal + 8))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_avgJitterRx != *(equal + 7))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_avgRssi != *(equal + 10))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_avgRetx != *(equal + 9))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_71;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_avgTimeBackoff != *(equal + 11))
      {
        goto LABEL_71;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x2000) != 0)
    {
      if ((*(equal + 36) & 0x2000) == 0 || self->_powerSaveDur != *(equal + 17))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 36) & 0x2000) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(equal + 36) & 0x800) == 0 || self->_linkRateMbps != *(equal + 15))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 36) & 0x800) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 36) & 0x400) == 0 || self->_effectiveLinkRateMpbs != *(equal + 14))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 36) & 0x400) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 36) & 0x100) == 0 || self->_dataTransferRateMpbs != *(equal + 12))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 36) & 0x100) != 0)
    {
      goto LABEL_71;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 36) & 0x200) == 0 || self->_effectiveDataTransferRateMpbs != *(equal + 13))
      {
        goto LABEL_71;
      }
    }

    else if ((*(equal + 36) & 0x200) != 0)
    {
      goto LABEL_71;
    }

    LOBYTE(v5) = (v7 & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_averageCCA != *(equal + 6))
      {
        goto LABEL_71;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    v3 = 2654435761 * self->_phyType;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761u * self->_txbytes;
      if (has)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if (has)
  {
LABEL_4:
    v5 = 2654435761u * self->_rxbytes;
    if ((has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_avgLatencyTx;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_avgJitterRx;
    if ((has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_avgRssi;
    if ((has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_avgRetx;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_avgTimeBackoff;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_powerSaveDur;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_linkRateMbps;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_effectiveLinkRateMpbs;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_dataTransferRateMpbs;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v15 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v16 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_27:
  v14 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v15 = 2654435761 * self->_effectiveDataTransferRateMpbs;
  if ((has & 4) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v16 = 2654435761 * self->_averageCCA;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 36);
  if ((v3 & 0x1000) != 0)
  {
    self->_phyType = *(from + 16);
    *&self->_has |= 0x1000u;
    v3 = *(from + 36);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_txbytes = *(from + 2);
  *&self->_has |= 2u;
  v3 = *(from + 36);
  if ((v3 & 1) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_rxbytes = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 36);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_avgLatencyTx = *(from + 8);
  *&self->_has |= 0x10u;
  v3 = *(from + 36);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_avgJitterRx = *(from + 7);
  *&self->_has |= 8u;
  v3 = *(from + 36);
  if ((v3 & 0x40) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_avgRssi = *(from + 10);
  *&self->_has |= 0x40u;
  v3 = *(from + 36);
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_avgRetx = *(from + 9);
  *&self->_has |= 0x20u;
  v3 = *(from + 36);
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_avgTimeBackoff = *(from + 11);
  *&self->_has |= 0x80u;
  v3 = *(from + 36);
  if ((v3 & 0x2000) == 0)
  {
LABEL_10:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_powerSaveDur = *(from + 17);
  *&self->_has |= 0x2000u;
  v3 = *(from + 36);
  if ((v3 & 0x800) == 0)
  {
LABEL_11:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_linkRateMbps = *(from + 15);
  *&self->_has |= 0x800u;
  v3 = *(from + 36);
  if ((v3 & 0x400) == 0)
  {
LABEL_12:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_effectiveLinkRateMpbs = *(from + 14);
  *&self->_has |= 0x400u;
  v3 = *(from + 36);
  if ((v3 & 0x100) == 0)
  {
LABEL_13:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_dataTransferRateMpbs = *(from + 12);
  *&self->_has |= 0x100u;
  v3 = *(from + 36);
  if ((v3 & 0x200) == 0)
  {
LABEL_14:
    if ((v3 & 4) == 0)
    {
      return;
    }

LABEL_29:
    self->_averageCCA = *(from + 6);
    *&self->_has |= 4u;
    return;
  }

LABEL_28:
  self->_effectiveDataTransferRateMpbs = *(from + 13);
  *&self->_has |= 0x200u;
  if ((*(from + 36) & 4) != 0)
  {
    goto LABEL_29;
  }
}

@end