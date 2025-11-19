@interface AWDWiFiMetricsManagerInfraInterface
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAvgCCA:(BOOL)a3;
- (void)setHasDataTransferRateMpbs:(BOOL)a3;
- (void)setHasEffectiveDataTransferRateMpbs:(BOOL)a3;
- (void)setHasEffectiveLinkRateMpbs:(BOOL)a3;
- (void)setHasLinkLatencyMs:(BOOL)a3;
- (void)setHasLinkOpenPct:(BOOL)a3;
- (void)setHasLinkRateMbps:(BOOL)a3;
- (void)setHasLqm:(BOOL)a3;
- (void)setHasRxPackets:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTxBytes:(BOOL)a3;
- (void)setHasTxBytesBe:(BOOL)a3;
- (void)setHasTxBytesBk:(BOOL)a3;
- (void)setHasTxBytesVi:(BOOL)a3;
- (void)setHasTxBytesVo:(BOOL)a3;
- (void)setHasTxPackets:(BOOL)a3;
- (void)setHasTxPacketsBe:(BOOL)a3;
- (void)setHasTxPacketsBk:(BOOL)a3;
- (void)setHasTxPacketsVi:(BOOL)a3;
- (void)setHasTxPacketsVo:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerInfraInterface

- (void)dealloc
{
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkLatency0ms:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkLatency64ms:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkLatency128ms:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkLatency256ms:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkLatency512ms:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkLatency1024ms:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen0pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen125pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen25pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen375pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen50pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen625pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen75pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen875pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen100pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA0pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA125pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA25pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA375pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA50pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA625pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA75pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA875pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA100pct:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLqmOff:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLqmUnknown:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLqmBad:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLqmPoor:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setLqmGood:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setActivityUp:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setActivityDown:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setActivityInvoluntarilyDown:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setActivityScanning:0];
  [(AWDWiFiMetricsManagerInfraInterface *)self setActivityRoaming:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerInfraInterface;
  [(AWDWiFiMetricsManagerInfraInterface *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasRxPackets:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasTxPackets:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasTxPacketsBe:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasTxPacketsBk:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasTxPacketsVi:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasTxPacketsVo:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasTxBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasTxBytesBe:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasTxBytesBk:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasTxBytesVi:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasTxBytesVo:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasLinkRateMbps:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasEffectiveLinkRateMpbs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasDataTransferRateMpbs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasEffectiveDataTransferRateMpbs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasLinkLatencyMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasLinkOpenPct:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasAvgCCA:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasLqm:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerInfraInterface;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerInfraInterface description](&v3, sel_description), -[AWDWiFiMetricsManagerInfraInterface dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_97;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxPackets), @"rxPackets"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_98;
  }

LABEL_97:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txPackets), @"txPackets"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_99;
  }

LABEL_98:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txPacketsBe), @"txPacketsBe"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_100;
  }

LABEL_99:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txPacketsBk), @"txPacketsBk"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_101;
  }

LABEL_100:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txPacketsVi), @"txPacketsVi"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_102;
  }

LABEL_101:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txPacketsVo), @"txPacketsVo"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_103;
  }

LABEL_102:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxBytes), @"rxBytes"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_104;
  }

LABEL_103:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txBytes), @"txBytes"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_105;
  }

LABEL_104:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txBytesBe), @"txBytesBe"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_106;
  }

LABEL_105:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txBytesBk), @"txBytesBk"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_107;
  }

LABEL_106:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txBytesVi), @"txBytesVi"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_108;
  }

LABEL_107:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txBytesVo), @"txBytesVo"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_109;
  }

LABEL_108:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_linkRateMbps), @"linkRate_Mbps"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_110;
  }

LABEL_109:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_effectiveLinkRateMpbs), @"effectiveLinkRate_Mpbs"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_17:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_111;
  }

LABEL_110:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dataTransferRateMpbs), @"dataTransferRate_Mpbs"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_111:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_effectiveDataTransferRateMpbs), @"effectiveDataTransferRate_Mpbs"}];
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_19:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_linkLatencyMs), @"linkLatency_ms"}];
  }

LABEL_20:
  linkLatency0ms = self->_linkLatency0ms;
  if (linkLatency0ms)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkLatency0ms forKey:{"dictionaryRepresentation"), @"linkLatency_0ms"}];
  }

  linkLatency64ms = self->_linkLatency64ms;
  if (linkLatency64ms)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkLatency64ms forKey:{"dictionaryRepresentation"), @"linkLatency_64ms"}];
  }

  linkLatency128ms = self->_linkLatency128ms;
  if (linkLatency128ms)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkLatency128ms forKey:{"dictionaryRepresentation"), @"linkLatency_128ms"}];
  }

  linkLatency256ms = self->_linkLatency256ms;
  if (linkLatency256ms)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkLatency256ms forKey:{"dictionaryRepresentation"), @"linkLatency_256ms"}];
  }

  linkLatency512ms = self->_linkLatency512ms;
  if (linkLatency512ms)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkLatency512ms forKey:{"dictionaryRepresentation"), @"linkLatency_512ms"}];
  }

  linkLatency1024ms = self->_linkLatency1024ms;
  if (linkLatency1024ms)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkLatency1024ms forKey:{"dictionaryRepresentation"), @"linkLatency_1024ms"}];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_linkOpenPct), @"linkOpen_pct"}];
  }

  linkOpen0pct = self->_linkOpen0pct;
  if (linkOpen0pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkOpen0pct forKey:{"dictionaryRepresentation"), @"linkOpen_0pct"}];
  }

  linkOpen125pct = self->_linkOpen125pct;
  if (linkOpen125pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkOpen125pct forKey:{"dictionaryRepresentation"), @"linkOpen_125pct"}];
  }

  linkOpen25pct = self->_linkOpen25pct;
  if (linkOpen25pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkOpen25pct forKey:{"dictionaryRepresentation"), @"linkOpen_25pct"}];
  }

  linkOpen375pct = self->_linkOpen375pct;
  if (linkOpen375pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkOpen375pct forKey:{"dictionaryRepresentation"), @"linkOpen_375pct"}];
  }

  linkOpen50pct = self->_linkOpen50pct;
  if (linkOpen50pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkOpen50pct forKey:{"dictionaryRepresentation"), @"linkOpen_50pct"}];
  }

  linkOpen625pct = self->_linkOpen625pct;
  if (linkOpen625pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkOpen625pct forKey:{"dictionaryRepresentation"), @"linkOpen_625pct"}];
  }

  linkOpen75pct = self->_linkOpen75pct;
  if (linkOpen75pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkOpen75pct forKey:{"dictionaryRepresentation"), @"linkOpen_75pct"}];
  }

  linkOpen875pct = self->_linkOpen875pct;
  if (linkOpen875pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkOpen875pct forKey:{"dictionaryRepresentation"), @"linkOpen_875pct"}];
  }

  linkOpen100pct = self->_linkOpen100pct;
  if (linkOpen100pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](linkOpen100pct forKey:{"dictionaryRepresentation"), @"linkOpen_100pct"}];
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_avgCCA), @"avgCCA"}];
  }

  avgCCA0pct = self->_avgCCA0pct;
  if (avgCCA0pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](avgCCA0pct forKey:{"dictionaryRepresentation"), @"avgCCA_0pct"}];
  }

  avgCCA125pct = self->_avgCCA125pct;
  if (avgCCA125pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](avgCCA125pct forKey:{"dictionaryRepresentation"), @"avgCCA_125pct"}];
  }

  avgCCA25pct = self->_avgCCA25pct;
  if (avgCCA25pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](avgCCA25pct forKey:{"dictionaryRepresentation"), @"avgCCA_25pct"}];
  }

  avgCCA375pct = self->_avgCCA375pct;
  if (avgCCA375pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](avgCCA375pct forKey:{"dictionaryRepresentation"), @"avgCCA_375pct"}];
  }

  avgCCA50pct = self->_avgCCA50pct;
  if (avgCCA50pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](avgCCA50pct forKey:{"dictionaryRepresentation"), @"avgCCA_50pct"}];
  }

  avgCCA625pct = self->_avgCCA625pct;
  if (avgCCA625pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](avgCCA625pct forKey:{"dictionaryRepresentation"), @"avgCCA_625pct"}];
  }

  avgCCA75pct = self->_avgCCA75pct;
  if (avgCCA75pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](avgCCA75pct forKey:{"dictionaryRepresentation"), @"avgCCA_75pct"}];
  }

  avgCCA875pct = self->_avgCCA875pct;
  if (avgCCA875pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](avgCCA875pct forKey:{"dictionaryRepresentation"), @"avgCCA_875pct"}];
  }

  avgCCA100pct = self->_avgCCA100pct;
  if (avgCCA100pct)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](avgCCA100pct forKey:{"dictionaryRepresentation"), @"avgCCA_100pct"}];
  }

  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lqm), @"lqm"}];
  }

  lqmOff = self->_lqmOff;
  if (lqmOff)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](lqmOff forKey:{"dictionaryRepresentation"), @"lqm_Off"}];
  }

  lqmUnknown = self->_lqmUnknown;
  if (lqmUnknown)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](lqmUnknown forKey:{"dictionaryRepresentation"), @"lqm_Unknown"}];
  }

  lqmBad = self->_lqmBad;
  if (lqmBad)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](lqmBad forKey:{"dictionaryRepresentation"), @"lqm_Bad"}];
  }

  lqmPoor = self->_lqmPoor;
  if (lqmPoor)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](lqmPoor forKey:{"dictionaryRepresentation"), @"lqm_Poor"}];
  }

  lqmGood = self->_lqmGood;
  if (lqmGood)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](lqmGood forKey:{"dictionaryRepresentation"), @"lqm_Good"}];
  }

  activityUp = self->_activityUp;
  if (activityUp)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](activityUp forKey:{"dictionaryRepresentation"), @"activity_Up"}];
  }

  activityDown = self->_activityDown;
  if (activityDown)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](activityDown forKey:{"dictionaryRepresentation"), @"activity_Down"}];
  }

  activityInvoluntarilyDown = self->_activityInvoluntarilyDown;
  if (activityInvoluntarilyDown)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](activityInvoluntarilyDown forKey:{"dictionaryRepresentation"), @"activity_InvoluntarilyDown"}];
  }

  activityScanning = self->_activityScanning;
  if (activityScanning)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](activityScanning forKey:{"dictionaryRepresentation"), @"activity_Scanning"}];
  }

  activityRoaming = self->_activityRoaming;
  if (activityRoaming)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](activityRoaming forKey:{"dictionaryRepresentation"), @"activity_Roaming"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_98;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  rxPackets = self->_rxPackets;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_99;
  }

LABEL_98:
  txPackets = self->_txPackets;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_100;
  }

LABEL_99:
  txPacketsBe = self->_txPacketsBe;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_101;
  }

LABEL_100:
  txPacketsBk = self->_txPacketsBk;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_102;
  }

LABEL_101:
  txPacketsVi = self->_txPacketsVi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_103;
  }

LABEL_102:
  txPacketsVo = self->_txPacketsVo;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_104;
  }

LABEL_103:
  rxBytes = self->_rxBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_105;
  }

LABEL_104:
  txBytes = self->_txBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_106;
  }

LABEL_105:
  txBytesBe = self->_txBytesBe;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_107;
  }

LABEL_106:
  txBytesBk = self->_txBytesBk;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_108;
  }

LABEL_107:
  txBytesVi = self->_txBytesVi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_109;
  }

LABEL_108:
  txBytesVo = self->_txBytesVo;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_110;
  }

LABEL_109:
  linkRateMbps = self->_linkRateMbps;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_111;
  }

LABEL_110:
  effectiveLinkRateMpbs = self->_effectiveLinkRateMpbs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_17:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_112;
  }

LABEL_111:
  dataTransferRateMpbs = self->_dataTransferRateMpbs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_112:
  effectiveDataTransferRateMpbs = self->_effectiveDataTransferRateMpbs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_19:
    linkLatencyMs = self->_linkLatencyMs;
    PBDataWriterWriteUint32Field();
  }

LABEL_20:
  if (self->_linkLatency0ms)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkLatency64ms)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkLatency128ms)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkLatency256ms)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkLatency512ms)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkLatency1024ms)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    linkOpenPct = self->_linkOpenPct;
    PBDataWriterWriteUint32Field();
  }

  if (self->_linkOpen0pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkOpen125pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkOpen25pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkOpen375pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkOpen50pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkOpen625pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkOpen75pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkOpen875pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_linkOpen100pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    avgCCA = self->_avgCCA;
    PBDataWriterWriteUint32Field();
  }

  if (self->_avgCCA0pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_avgCCA125pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_avgCCA25pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_avgCCA375pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_avgCCA50pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_avgCCA625pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_avgCCA75pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_avgCCA875pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_avgCCA100pct)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    lqm = self->_lqm;
    PBDataWriterWriteUint32Field();
  }

  if (self->_lqmOff)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_lqmUnknown)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_lqmBad)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_lqmPoor)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_lqmGood)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activityUp)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activityDown)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activityInvoluntarilyDown)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activityScanning)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activityRoaming)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    *(a3 + 3) = self->_timestamp;
    *(a3 + 108) |= 4u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_98;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 2) = self->_rxPackets;
  *(a3 + 108) |= 2u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(a3 + 9) = self->_txPackets;
  *(a3 + 108) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(a3 + 10) = self->_txPacketsBe;
  *(a3 + 108) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(a3 + 11) = self->_txPacketsBk;
  *(a3 + 108) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(a3 + 12) = self->_txPacketsVi;
  *(a3 + 108) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(a3 + 13) = self->_txPacketsVo;
  *(a3 + 108) |= 0x1000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(a3 + 1) = self->_rxBytes;
  *(a3 + 108) |= 1u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(a3 + 4) = self->_txBytes;
  *(a3 + 108) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(a3 + 5) = self->_txBytesBe;
  *(a3 + 108) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(a3 + 6) = self->_txBytesBk;
  *(a3 + 108) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(a3 + 7) = self->_txBytesVi;
  *(a3 + 108) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_109;
  }

LABEL_108:
  *(a3 + 8) = self->_txBytesVo;
  *(a3 + 108) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_110;
  }

LABEL_109:
  *(a3 + 95) = self->_linkRateMbps;
  *(a3 + 108) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_111;
  }

LABEL_110:
  *(a3 + 60) = self->_effectiveLinkRateMpbs;
  *(a3 + 108) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_17:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_112;
  }

LABEL_111:
  *(a3 + 58) = self->_dataTransferRateMpbs;
  *(a3 + 108) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_112:
  *(a3 + 59) = self->_effectiveDataTransferRateMpbs;
  *(a3 + 108) |= 0x8000u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_19:
    *(a3 + 74) = self->_linkLatencyMs;
    *(a3 + 108) |= 0x20000u;
  }

LABEL_20:
  if (self->_linkLatency0ms)
  {
    [a3 setLinkLatency0ms:?];
  }

  if (self->_linkLatency64ms)
  {
    [a3 setLinkLatency64ms:?];
  }

  if (self->_linkLatency128ms)
  {
    [a3 setLinkLatency128ms:?];
  }

  if (self->_linkLatency256ms)
  {
    [a3 setLinkLatency256ms:?];
  }

  if (self->_linkLatency512ms)
  {
    [a3 setLinkLatency512ms:?];
  }

  if (self->_linkLatency1024ms)
  {
    [a3 setLinkLatency1024ms:?];
  }

  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(a3 + 94) = self->_linkOpenPct;
    *(a3 + 108) |= 0x40000u;
  }

  if (self->_linkOpen0pct)
  {
    [a3 setLinkOpen0pct:?];
  }

  if (self->_linkOpen125pct)
  {
    [a3 setLinkOpen125pct:?];
  }

  if (self->_linkOpen25pct)
  {
    [a3 setLinkOpen25pct:?];
  }

  if (self->_linkOpen375pct)
  {
    [a3 setLinkOpen375pct:?];
  }

  if (self->_linkOpen50pct)
  {
    [a3 setLinkOpen50pct:?];
  }

  if (self->_linkOpen625pct)
  {
    [a3 setLinkOpen625pct:?];
  }

  if (self->_linkOpen75pct)
  {
    [a3 setLinkOpen75pct:?];
  }

  if (self->_linkOpen875pct)
  {
    [a3 setLinkOpen875pct:?];
  }

  if (self->_linkOpen100pct)
  {
    [a3 setLinkOpen100pct:?];
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(a3 + 38) = self->_avgCCA;
    *(a3 + 108) |= 0x2000u;
  }

  if (self->_avgCCA0pct)
  {
    [a3 setAvgCCA0pct:?];
  }

  if (self->_avgCCA125pct)
  {
    [a3 setAvgCCA125pct:?];
  }

  if (self->_avgCCA25pct)
  {
    [a3 setAvgCCA25pct:?];
  }

  if (self->_avgCCA375pct)
  {
    [a3 setAvgCCA375pct:?];
  }

  if (self->_avgCCA50pct)
  {
    [a3 setAvgCCA50pct:?];
  }

  if (self->_avgCCA625pct)
  {
    [a3 setAvgCCA625pct:?];
  }

  if (self->_avgCCA75pct)
  {
    [a3 setAvgCCA75pct:?];
  }

  if (self->_avgCCA875pct)
  {
    [a3 setAvgCCA875pct:?];
  }

  if (self->_avgCCA100pct)
  {
    [a3 setAvgCCA100pct:?];
  }

  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    *(a3 + 96) = self->_lqm;
    *(a3 + 108) |= 0x100000u;
  }

  if (self->_lqmOff)
  {
    [a3 setLqmOff:?];
  }

  if (self->_lqmUnknown)
  {
    [a3 setLqmUnknown:?];
  }

  if (self->_lqmBad)
  {
    [a3 setLqmBad:?];
  }

  if (self->_lqmPoor)
  {
    [a3 setLqmPoor:?];
  }

  if (self->_lqmGood)
  {
    [a3 setLqmGood:?];
  }

  if (self->_activityUp)
  {
    [a3 setActivityUp:?];
  }

  if (self->_activityDown)
  {
    [a3 setActivityDown:?];
  }

  if (self->_activityInvoluntarilyDown)
  {
    [a3 setActivityInvoluntarilyDown:?];
  }

  if (self->_activityScanning)
  {
    [a3 setActivityScanning:?];
  }

  if (self->_activityRoaming)
  {

    [a3 setActivityRoaming:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 432) |= 4u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_rxPackets;
  *(v5 + 432) |= 2u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 72) = self->_txPackets;
  *(v5 + 432) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 80) = self->_txPacketsBe;
  *(v5 + 432) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 88) = self->_txPacketsBk;
  *(v5 + 432) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 96) = self->_txPacketsVi;
  *(v5 + 432) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 104) = self->_txPacketsVo;
  *(v5 + 432) |= 0x1000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v5 + 8) = self->_rxBytes;
  *(v5 + 432) |= 1u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 32) = self->_txBytes;
  *(v5 + 432) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 40) = self->_txBytesBe;
  *(v5 + 432) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 48) = self->_txBytesBk;
  *(v5 + 432) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 56) = self->_txBytesVi;
  *(v5 + 432) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 64) = self->_txBytesVo;
  *(v5 + 432) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 380) = self->_linkRateMbps;
  *(v5 + 432) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_16:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 240) = self->_effectiveLinkRateMpbs;
  *(v5 + 432) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_17:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 232) = self->_dataTransferRateMpbs;
  *(v5 + 432) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_43:
  *(v5 + 236) = self->_effectiveDataTransferRateMpbs;
  *(v5 + 432) |= 0x8000u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_19:
    *(v5 + 296) = self->_linkLatencyMs;
    *(v5 + 432) |= 0x20000u;
  }

LABEL_20:

  *(v6 + 248) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkLatency0ms copyWithZone:a3];
  *(v6 + 288) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkLatency64ms copyWithZone:a3];

  *(v6 + 264) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkLatency128ms copyWithZone:a3];
  *(v6 + 272) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkLatency256ms copyWithZone:a3];

  *(v6 + 280) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkLatency512ms copyWithZone:a3];
  *(v6 + 256) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkLatency1024ms copyWithZone:a3];
  if ((*(&self->_has + 2) & 4) != 0)
  {
    *(v6 + 376) = self->_linkOpenPct;
    *(v6 + 432) |= 0x40000u;
  }

  *(v6 + 304) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen0pct copyWithZone:a3];
  *(v6 + 320) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen125pct copyWithZone:a3];

  *(v6 + 328) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen25pct copyWithZone:a3];
  *(v6 + 336) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen375pct copyWithZone:a3];

  *(v6 + 344) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen50pct copyWithZone:a3];
  *(v6 + 352) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen625pct copyWithZone:a3];

  *(v6 + 360) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen75pct copyWithZone:a3];
  *(v6 + 368) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen875pct copyWithZone:a3];

  *(v6 + 312) = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen100pct copyWithZone:a3];
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v6 + 152) = self->_avgCCA;
    *(v6 + 432) |= 0x2000u;
  }

  *(v6 + 160) = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA0pct copyWithZone:a3];
  *(v6 + 176) = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA125pct copyWithZone:a3];

  *(v6 + 184) = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA25pct copyWithZone:a3];
  *(v6 + 192) = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA375pct copyWithZone:a3];

  *(v6 + 200) = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA50pct copyWithZone:a3];
  *(v6 + 208) = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA625pct copyWithZone:a3];

  *(v6 + 216) = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA75pct copyWithZone:a3];
  *(v6 + 224) = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA875pct copyWithZone:a3];

  *(v6 + 168) = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA100pct copyWithZone:a3];
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    *(v6 + 384) = self->_lqm;
    *(v6 + 432) |= 0x100000u;
  }

  *(v6 + 408) = [(AWDWiFiMetricsManagerStateMachine *)self->_lqmOff copyWithZone:a3];
  *(v6 + 424) = [(AWDWiFiMetricsManagerStateMachine *)self->_lqmUnknown copyWithZone:a3];

  *(v6 + 392) = [(AWDWiFiMetricsManagerStateMachine *)self->_lqmBad copyWithZone:a3];
  *(v6 + 416) = [(AWDWiFiMetricsManagerStateMachine *)self->_lqmPoor copyWithZone:a3];

  *(v6 + 400) = [(AWDWiFiMetricsManagerStateMachine *)self->_lqmGood copyWithZone:a3];
  *(v6 + 144) = [(AWDWiFiMetricsManagerStateMachine *)self->_activityUp copyWithZone:a3];

  *(v6 + 112) = [(AWDWiFiMetricsManagerStateMachine *)self->_activityDown copyWithZone:a3];
  *(v6 + 120) = [(AWDWiFiMetricsManagerStateMachine *)self->_activityInvoluntarilyDown copyWithZone:a3];

  *(v6 + 136) = [(AWDWiFiMetricsManagerStateMachine *)self->_activityScanning copyWithZone:a3];
  *(v6 + 128) = [(AWDWiFiMetricsManagerStateMachine *)self->_activityRoaming copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 108);
    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_timestamp != *(a3 + 3))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 4) != 0)
    {
LABEL_175:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_rxPackets != *(a3 + 2))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_txPackets != *(a3 + 9))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_txPacketsBe != *(a3 + 10))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_txPacketsBk != *(a3 + 11))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_txPacketsVi != *(a3 + 12))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_txPacketsVo != *(a3 + 13))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_175;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_rxBytes != *(a3 + 1))
      {
        goto LABEL_175;
      }
    }

    else if (v7)
    {
      goto LABEL_175;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_txBytes != *(a3 + 4))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_txBytesBe != *(a3 + 5))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_txBytesBk != *(a3 + 6))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_txBytesVi != *(a3 + 7))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_txBytesVo != *(a3 + 8))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_linkRateMbps != *(a3 + 95))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_effectiveLinkRateMpbs != *(a3 + 60))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_dataTransferRateMpbs != *(a3 + 58))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_effectiveDataTransferRateMpbs != *(a3 + 59))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_175;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_linkLatencyMs != *(a3 + 74))
      {
        goto LABEL_175;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_175;
    }

    linkLatency0ms = self->_linkLatency0ms;
    if (!(linkLatency0ms | *(a3 + 31)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkLatency0ms isEqual:?]) != 0)
    {
      linkLatency64ms = self->_linkLatency64ms;
      if (!(linkLatency64ms | *(a3 + 36)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkLatency64ms isEqual:?]) != 0)
      {
        linkLatency128ms = self->_linkLatency128ms;
        if (!(linkLatency128ms | *(a3 + 33)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkLatency128ms isEqual:?]) != 0)
        {
          linkLatency256ms = self->_linkLatency256ms;
          if (!(linkLatency256ms | *(a3 + 34)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkLatency256ms isEqual:?]) != 0)
          {
            linkLatency512ms = self->_linkLatency512ms;
            if (!(linkLatency512ms | *(a3 + 35)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkLatency512ms isEqual:?]) != 0)
            {
              linkLatency1024ms = self->_linkLatency1024ms;
              if (!(linkLatency1024ms | *(a3 + 32)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkLatency1024ms isEqual:?]) != 0)
              {
                v14 = *(a3 + 108);
                if ((*(&self->_has + 2) & 4) != 0)
                {
                  if ((v14 & 0x40000) == 0 || self->_linkOpenPct != *(a3 + 94))
                  {
                    goto LABEL_175;
                  }
                }

                else if ((v14 & 0x40000) != 0)
                {
                  goto LABEL_175;
                }

                linkOpen0pct = self->_linkOpen0pct;
                if (!(linkOpen0pct | *(a3 + 38)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkOpen0pct isEqual:?]) != 0)
                {
                  linkOpen125pct = self->_linkOpen125pct;
                  if (!(linkOpen125pct | *(a3 + 40)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkOpen125pct isEqual:?]) != 0)
                  {
                    linkOpen25pct = self->_linkOpen25pct;
                    if (!(linkOpen25pct | *(a3 + 41)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkOpen25pct isEqual:?]) != 0)
                    {
                      linkOpen375pct = self->_linkOpen375pct;
                      if (!(linkOpen375pct | *(a3 + 42)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkOpen375pct isEqual:?]) != 0)
                      {
                        linkOpen50pct = self->_linkOpen50pct;
                        if (!(linkOpen50pct | *(a3 + 43)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkOpen50pct isEqual:?]) != 0)
                        {
                          linkOpen625pct = self->_linkOpen625pct;
                          if (!(linkOpen625pct | *(a3 + 44)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkOpen625pct isEqual:?]) != 0)
                          {
                            linkOpen75pct = self->_linkOpen75pct;
                            if (!(linkOpen75pct | *(a3 + 45)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkOpen75pct isEqual:?]) != 0)
                            {
                              linkOpen875pct = self->_linkOpen875pct;
                              if (!(linkOpen875pct | *(a3 + 46)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkOpen875pct isEqual:?]) != 0)
                              {
                                linkOpen100pct = self->_linkOpen100pct;
                                if (!(linkOpen100pct | *(a3 + 39)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)linkOpen100pct isEqual:?]) != 0)
                                {
                                  v24 = *(a3 + 108);
                                  if ((*(&self->_has + 1) & 0x20) != 0)
                                  {
                                    if ((v24 & 0x2000) == 0 || self->_avgCCA != *(a3 + 38))
                                    {
                                      goto LABEL_175;
                                    }
                                  }

                                  else if ((v24 & 0x2000) != 0)
                                  {
                                    goto LABEL_175;
                                  }

                                  avgCCA0pct = self->_avgCCA0pct;
                                  if (!(avgCCA0pct | *(a3 + 20)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)avgCCA0pct isEqual:?]) != 0)
                                  {
                                    avgCCA125pct = self->_avgCCA125pct;
                                    if (!(avgCCA125pct | *(a3 + 22)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)avgCCA125pct isEqual:?]) != 0)
                                    {
                                      avgCCA25pct = self->_avgCCA25pct;
                                      if (!(avgCCA25pct | *(a3 + 23)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)avgCCA25pct isEqual:?]) != 0)
                                      {
                                        avgCCA375pct = self->_avgCCA375pct;
                                        if (!(avgCCA375pct | *(a3 + 24)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)avgCCA375pct isEqual:?]) != 0)
                                        {
                                          avgCCA50pct = self->_avgCCA50pct;
                                          if (!(avgCCA50pct | *(a3 + 25)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)avgCCA50pct isEqual:?]) != 0)
                                          {
                                            avgCCA625pct = self->_avgCCA625pct;
                                            if (!(avgCCA625pct | *(a3 + 26)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)avgCCA625pct isEqual:?]) != 0)
                                            {
                                              avgCCA75pct = self->_avgCCA75pct;
                                              if (!(avgCCA75pct | *(a3 + 27)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)avgCCA75pct isEqual:?]) != 0)
                                              {
                                                avgCCA875pct = self->_avgCCA875pct;
                                                if (!(avgCCA875pct | *(a3 + 28)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)avgCCA875pct isEqual:?]) != 0)
                                                {
                                                  avgCCA100pct = self->_avgCCA100pct;
                                                  if (!(avgCCA100pct | *(a3 + 21)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)avgCCA100pct isEqual:?]) != 0)
                                                  {
                                                    v34 = *(a3 + 108);
                                                    if ((*(&self->_has + 2) & 0x10) != 0)
                                                    {
                                                      if ((v34 & 0x100000) == 0 || self->_lqm != *(a3 + 96))
                                                      {
                                                        goto LABEL_175;
                                                      }
                                                    }

                                                    else if ((v34 & 0x100000) != 0)
                                                    {
                                                      goto LABEL_175;
                                                    }

                                                    lqmOff = self->_lqmOff;
                                                    if (!(lqmOff | *(a3 + 51)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)lqmOff isEqual:?]) != 0)
                                                    {
                                                      lqmUnknown = self->_lqmUnknown;
                                                      if (!(lqmUnknown | *(a3 + 53)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)lqmUnknown isEqual:?]) != 0)
                                                      {
                                                        lqmBad = self->_lqmBad;
                                                        if (!(lqmBad | *(a3 + 49)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)lqmBad isEqual:?]) != 0)
                                                        {
                                                          lqmPoor = self->_lqmPoor;
                                                          if (!(lqmPoor | *(a3 + 52)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)lqmPoor isEqual:?]) != 0)
                                                          {
                                                            lqmGood = self->_lqmGood;
                                                            if (!(lqmGood | *(a3 + 50)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)lqmGood isEqual:?]) != 0)
                                                            {
                                                              activityUp = self->_activityUp;
                                                              if (!(activityUp | *(a3 + 18)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)activityUp isEqual:?]) != 0)
                                                              {
                                                                activityDown = self->_activityDown;
                                                                if (!(activityDown | *(a3 + 14)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)activityDown isEqual:?]) != 0)
                                                                {
                                                                  activityInvoluntarilyDown = self->_activityInvoluntarilyDown;
                                                                  if (!(activityInvoluntarilyDown | *(a3 + 15)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)activityInvoluntarilyDown isEqual:?]) != 0)
                                                                  {
                                                                    activityScanning = self->_activityScanning;
                                                                    if (!(activityScanning | *(a3 + 17)) || (v5 = [(AWDWiFiMetricsManagerStateMachine *)activityScanning isEqual:?]) != 0)
                                                                    {
                                                                      activityRoaming = self->_activityRoaming;
                                                                      if (activityRoaming | *(a3 + 16))
                                                                      {

                                                                        LOBYTE(v5) = [(AWDWiFiMetricsManagerStateMachine *)activityRoaming isEqual:?];
                                                                      }

                                                                      else
                                                                      {
                                                                        LOBYTE(v5) = 1;
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    v59 = 2654435761u * self->_timestamp;
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v58 = 2654435761u * self->_rxPackets;
      if ((*&has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v59 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v58 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_4:
    v57 = 2654435761u * self->_txPackets;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  v57 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_5:
    v56 = 2654435761u * self->_txPacketsBe;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v56 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_6:
    v55 = 2654435761u * self->_txPacketsBk;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v55 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_7:
    v54 = 2654435761u * self->_txPacketsVi;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v54 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_8:
    v53 = 2654435761u * self->_txPacketsVo;
    if (*&has)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v53 = 0;
  if (*&has)
  {
LABEL_9:
    v52 = 2654435761u * self->_rxBytes;
    if ((*&has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v52 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_10:
    v51 = 2654435761u * self->_txBytes;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v51 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_11:
    v50 = 2654435761u * self->_txBytesBe;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v50 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_12:
    v49 = 2654435761u * self->_txBytesBk;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v49 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_13:
    v48 = 2654435761u * self->_txBytesVi;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v48 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_14:
    v47 = 2654435761u * self->_txBytesVo;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v47 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_15:
    v46 = 2654435761 * self->_linkRateMbps;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v46 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_16:
    v45 = 2654435761 * self->_effectiveLinkRateMpbs;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v45 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_17:
    v44 = 2654435761 * self->_dataTransferRateMpbs;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    v43 = 0;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_35:
  v44 = 0;
  if ((*&has & 0x8000) == 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  v43 = 2654435761 * self->_effectiveDataTransferRateMpbs;
  if ((*&has & 0x20000) != 0)
  {
LABEL_19:
    v42 = 2654435761 * self->_linkLatencyMs;
    goto LABEL_38;
  }

LABEL_37:
  v42 = 0;
LABEL_38:
  v41 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkLatency0ms hash];
  v40 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkLatency64ms hash];
  v39 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkLatency128ms hash];
  v38 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkLatency256ms hash];
  v37 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkLatency512ms hash];
  v36 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkLatency1024ms hash];
  if ((*(&self->_has + 2) & 4) != 0)
  {
    v35 = 2654435761 * self->_linkOpenPct;
  }

  else
  {
    v35 = 0;
  }

  v34 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen0pct hash];
  v33 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen125pct hash];
  v32 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen25pct hash];
  v31 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen375pct hash];
  v30 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen50pct hash];
  v29 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen625pct hash];
  v28 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen75pct hash];
  v27 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen875pct hash];
  v25 = [(AWDWiFiMetricsManagerStateMachine *)self->_linkOpen100pct hash];
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v4 = 2654435761 * self->_avgCCA;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA0pct hash];
  v6 = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA125pct hash];
  v7 = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA25pct hash];
  v8 = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA375pct hash];
  v9 = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA50pct hash];
  v10 = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA625pct hash];
  v11 = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA75pct hash];
  v12 = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA875pct hash];
  v13 = [(AWDWiFiMetricsManagerStateMachine *)self->_avgCCA100pct hash];
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    v14 = 2654435761 * self->_lqm;
  }

  else
  {
    v14 = 0;
  }

  v15 = v58 ^ v59 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ [(AWDWiFiMetricsManagerStateMachine *)self->_lqmOff hash];
  v16 = [(AWDWiFiMetricsManagerStateMachine *)self->_lqmUnknown hash];
  v17 = v16 ^ [(AWDWiFiMetricsManagerStateMachine *)self->_lqmBad hash];
  v18 = v17 ^ [(AWDWiFiMetricsManagerStateMachine *)self->_lqmPoor hash];
  v19 = v18 ^ [(AWDWiFiMetricsManagerStateMachine *)self->_lqmGood hash];
  v20 = v19 ^ [(AWDWiFiMetricsManagerStateMachine *)self->_activityUp hash];
  v21 = v20 ^ [(AWDWiFiMetricsManagerStateMachine *)self->_activityDown hash];
  v22 = v21 ^ [(AWDWiFiMetricsManagerStateMachine *)self->_activityInvoluntarilyDown hash];
  v23 = v15 ^ v22 ^ [(AWDWiFiMetricsManagerStateMachine *)self->_activityScanning hash];
  return v23 ^ [(AWDWiFiMetricsManagerStateMachine *)self->_activityRoaming hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 108);
  if ((v5 & 4) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 4u;
    v5 = *(a3 + 108);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_rxPackets = *(a3 + 2);
  *&self->_has |= 2u;
  v5 = *(a3 + 108);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_txPackets = *(a3 + 9);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 108);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_txPacketsBe = *(a3 + 10);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 108);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_txPacketsBk = *(a3 + 11);
  *&self->_has |= 0x400u;
  v5 = *(a3 + 108);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_txPacketsVi = *(a3 + 12);
  *&self->_has |= 0x800u;
  v5 = *(a3 + 108);
  if ((v5 & 0x1000) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_txPacketsVo = *(a3 + 13);
  *&self->_has |= 0x1000u;
  v5 = *(a3 + 108);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_rxBytes = *(a3 + 1);
  *&self->_has |= 1u;
  v5 = *(a3 + 108);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_txBytes = *(a3 + 4);
  *&self->_has |= 8u;
  v5 = *(a3 + 108);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_txBytesBe = *(a3 + 5);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 108);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_txBytesBk = *(a3 + 6);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 108);
  if ((v5 & 0x40) == 0)
  {
LABEL_13:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_txBytesVi = *(a3 + 7);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 108);
  if ((v5 & 0x80) == 0)
  {
LABEL_14:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_txBytesVo = *(a3 + 8);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 108);
  if ((v5 & 0x80000) == 0)
  {
LABEL_15:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_linkRateMbps = *(a3 + 95);
  *&self->_has |= 0x80000u;
  v5 = *(a3 + 108);
  if ((v5 & 0x10000) == 0)
  {
LABEL_16:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_effectiveLinkRateMpbs = *(a3 + 60);
  *&self->_has |= 0x10000u;
  v5 = *(a3 + 108);
  if ((v5 & 0x4000) == 0)
  {
LABEL_17:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_dataTransferRateMpbs = *(a3 + 58);
  *&self->_has |= 0x4000u;
  v5 = *(a3 + 108);
  if ((v5 & 0x8000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  self->_effectiveDataTransferRateMpbs = *(a3 + 59);
  *&self->_has |= 0x8000u;
  if ((*(a3 + 108) & 0x20000) != 0)
  {
LABEL_19:
    self->_linkLatencyMs = *(a3 + 74);
    *&self->_has |= 0x20000u;
  }

LABEL_20:
  linkLatency0ms = self->_linkLatency0ms;
  v7 = *(a3 + 31);
  if (linkLatency0ms)
  {
    if (v7)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkLatency0ms mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkLatency0ms:?];
  }

  linkLatency64ms = self->_linkLatency64ms;
  v9 = *(a3 + 36);
  if (linkLatency64ms)
  {
    if (v9)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkLatency64ms mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkLatency64ms:?];
  }

  linkLatency128ms = self->_linkLatency128ms;
  v11 = *(a3 + 33);
  if (linkLatency128ms)
  {
    if (v11)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkLatency128ms mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkLatency128ms:?];
  }

  linkLatency256ms = self->_linkLatency256ms;
  v13 = *(a3 + 34);
  if (linkLatency256ms)
  {
    if (v13)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkLatency256ms mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkLatency256ms:?];
  }

  linkLatency512ms = self->_linkLatency512ms;
  v15 = *(a3 + 35);
  if (linkLatency512ms)
  {
    if (v15)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkLatency512ms mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkLatency512ms:?];
  }

  linkLatency1024ms = self->_linkLatency1024ms;
  v17 = *(a3 + 32);
  if (linkLatency1024ms)
  {
    if (v17)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkLatency1024ms mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkLatency1024ms:?];
  }

  if ((*(a3 + 434) & 4) != 0)
  {
    self->_linkOpenPct = *(a3 + 94);
    *&self->_has |= 0x40000u;
  }

  linkOpen0pct = self->_linkOpen0pct;
  v19 = *(a3 + 38);
  if (linkOpen0pct)
  {
    if (v19)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkOpen0pct mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen0pct:?];
  }

  linkOpen125pct = self->_linkOpen125pct;
  v21 = *(a3 + 40);
  if (linkOpen125pct)
  {
    if (v21)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkOpen125pct mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen125pct:?];
  }

  linkOpen25pct = self->_linkOpen25pct;
  v23 = *(a3 + 41);
  if (linkOpen25pct)
  {
    if (v23)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkOpen25pct mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen25pct:?];
  }

  linkOpen375pct = self->_linkOpen375pct;
  v25 = *(a3 + 42);
  if (linkOpen375pct)
  {
    if (v25)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkOpen375pct mergeFrom:?];
    }
  }

  else if (v25)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen375pct:?];
  }

  linkOpen50pct = self->_linkOpen50pct;
  v27 = *(a3 + 43);
  if (linkOpen50pct)
  {
    if (v27)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkOpen50pct mergeFrom:?];
    }
  }

  else if (v27)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen50pct:?];
  }

  linkOpen625pct = self->_linkOpen625pct;
  v29 = *(a3 + 44);
  if (linkOpen625pct)
  {
    if (v29)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkOpen625pct mergeFrom:?];
    }
  }

  else if (v29)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen625pct:?];
  }

  linkOpen75pct = self->_linkOpen75pct;
  v31 = *(a3 + 45);
  if (linkOpen75pct)
  {
    if (v31)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkOpen75pct mergeFrom:?];
    }
  }

  else if (v31)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen75pct:?];
  }

  linkOpen875pct = self->_linkOpen875pct;
  v33 = *(a3 + 46);
  if (linkOpen875pct)
  {
    if (v33)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkOpen875pct mergeFrom:?];
    }
  }

  else if (v33)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen875pct:?];
  }

  linkOpen100pct = self->_linkOpen100pct;
  v35 = *(a3 + 39);
  if (linkOpen100pct)
  {
    if (v35)
    {
      [(AWDWiFiMetricsManagerStateMachine *)linkOpen100pct mergeFrom:?];
    }
  }

  else if (v35)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLinkOpen100pct:?];
  }

  if ((*(a3 + 433) & 0x20) != 0)
  {
    self->_avgCCA = *(a3 + 38);
    *&self->_has |= 0x2000u;
  }

  avgCCA0pct = self->_avgCCA0pct;
  v37 = *(a3 + 20);
  if (avgCCA0pct)
  {
    if (v37)
    {
      [(AWDWiFiMetricsManagerStateMachine *)avgCCA0pct mergeFrom:?];
    }
  }

  else if (v37)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA0pct:?];
  }

  avgCCA125pct = self->_avgCCA125pct;
  v39 = *(a3 + 22);
  if (avgCCA125pct)
  {
    if (v39)
    {
      [(AWDWiFiMetricsManagerStateMachine *)avgCCA125pct mergeFrom:?];
    }
  }

  else if (v39)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA125pct:?];
  }

  avgCCA25pct = self->_avgCCA25pct;
  v41 = *(a3 + 23);
  if (avgCCA25pct)
  {
    if (v41)
    {
      [(AWDWiFiMetricsManagerStateMachine *)avgCCA25pct mergeFrom:?];
    }
  }

  else if (v41)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA25pct:?];
  }

  avgCCA375pct = self->_avgCCA375pct;
  v43 = *(a3 + 24);
  if (avgCCA375pct)
  {
    if (v43)
    {
      [(AWDWiFiMetricsManagerStateMachine *)avgCCA375pct mergeFrom:?];
    }
  }

  else if (v43)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA375pct:?];
  }

  avgCCA50pct = self->_avgCCA50pct;
  v45 = *(a3 + 25);
  if (avgCCA50pct)
  {
    if (v45)
    {
      [(AWDWiFiMetricsManagerStateMachine *)avgCCA50pct mergeFrom:?];
    }
  }

  else if (v45)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA50pct:?];
  }

  avgCCA625pct = self->_avgCCA625pct;
  v47 = *(a3 + 26);
  if (avgCCA625pct)
  {
    if (v47)
    {
      [(AWDWiFiMetricsManagerStateMachine *)avgCCA625pct mergeFrom:?];
    }
  }

  else if (v47)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA625pct:?];
  }

  avgCCA75pct = self->_avgCCA75pct;
  v49 = *(a3 + 27);
  if (avgCCA75pct)
  {
    if (v49)
    {
      [(AWDWiFiMetricsManagerStateMachine *)avgCCA75pct mergeFrom:?];
    }
  }

  else if (v49)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA75pct:?];
  }

  avgCCA875pct = self->_avgCCA875pct;
  v51 = *(a3 + 28);
  if (avgCCA875pct)
  {
    if (v51)
    {
      [(AWDWiFiMetricsManagerStateMachine *)avgCCA875pct mergeFrom:?];
    }
  }

  else if (v51)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA875pct:?];
  }

  avgCCA100pct = self->_avgCCA100pct;
  v53 = *(a3 + 21);
  if (avgCCA100pct)
  {
    if (v53)
    {
      [(AWDWiFiMetricsManagerStateMachine *)avgCCA100pct mergeFrom:?];
    }
  }

  else if (v53)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setAvgCCA100pct:?];
  }

  if ((*(a3 + 434) & 0x10) != 0)
  {
    self->_lqm = *(a3 + 96);
    *&self->_has |= 0x100000u;
  }

  lqmOff = self->_lqmOff;
  v55 = *(a3 + 51);
  if (lqmOff)
  {
    if (v55)
    {
      [(AWDWiFiMetricsManagerStateMachine *)lqmOff mergeFrom:?];
    }
  }

  else if (v55)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLqmOff:?];
  }

  lqmUnknown = self->_lqmUnknown;
  v57 = *(a3 + 53);
  if (lqmUnknown)
  {
    if (v57)
    {
      [(AWDWiFiMetricsManagerStateMachine *)lqmUnknown mergeFrom:?];
    }
  }

  else if (v57)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLqmUnknown:?];
  }

  lqmBad = self->_lqmBad;
  v59 = *(a3 + 49);
  if (lqmBad)
  {
    if (v59)
    {
      [(AWDWiFiMetricsManagerStateMachine *)lqmBad mergeFrom:?];
    }
  }

  else if (v59)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLqmBad:?];
  }

  lqmPoor = self->_lqmPoor;
  v61 = *(a3 + 52);
  if (lqmPoor)
  {
    if (v61)
    {
      [(AWDWiFiMetricsManagerStateMachine *)lqmPoor mergeFrom:?];
    }
  }

  else if (v61)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLqmPoor:?];
  }

  lqmGood = self->_lqmGood;
  v63 = *(a3 + 50);
  if (lqmGood)
  {
    if (v63)
    {
      [(AWDWiFiMetricsManagerStateMachine *)lqmGood mergeFrom:?];
    }
  }

  else if (v63)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setLqmGood:?];
  }

  activityUp = self->_activityUp;
  v65 = *(a3 + 18);
  if (activityUp)
  {
    if (v65)
    {
      [(AWDWiFiMetricsManagerStateMachine *)activityUp mergeFrom:?];
    }
  }

  else if (v65)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setActivityUp:?];
  }

  activityDown = self->_activityDown;
  v67 = *(a3 + 14);
  if (activityDown)
  {
    if (v67)
    {
      [(AWDWiFiMetricsManagerStateMachine *)activityDown mergeFrom:?];
    }
  }

  else if (v67)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setActivityDown:?];
  }

  activityInvoluntarilyDown = self->_activityInvoluntarilyDown;
  v69 = *(a3 + 15);
  if (activityInvoluntarilyDown)
  {
    if (v69)
    {
      [(AWDWiFiMetricsManagerStateMachine *)activityInvoluntarilyDown mergeFrom:?];
    }
  }

  else if (v69)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setActivityInvoluntarilyDown:?];
  }

  activityScanning = self->_activityScanning;
  v71 = *(a3 + 17);
  if (activityScanning)
  {
    if (v71)
    {
      [(AWDWiFiMetricsManagerStateMachine *)activityScanning mergeFrom:?];
    }
  }

  else if (v71)
  {
    [(AWDWiFiMetricsManagerInfraInterface *)self setActivityScanning:?];
  }

  activityRoaming = self->_activityRoaming;
  v73 = *(a3 + 16);
  if (activityRoaming)
  {
    if (v73)
    {

      [(AWDWiFiMetricsManagerStateMachine *)activityRoaming mergeFrom:?];
    }
  }

  else if (v73)
  {

    [(AWDWiFiMetricsManagerInfraInterface *)self setActivityRoaming:?];
  }
}

@end