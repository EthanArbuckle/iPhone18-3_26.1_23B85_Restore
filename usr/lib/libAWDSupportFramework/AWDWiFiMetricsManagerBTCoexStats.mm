@interface AWDWiFiMetricsManagerBTCoexStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)rxMPDUCountPerMCSAtIndex:(unint64_t)a3;
- (unint64_t)txMPDUCountPerMCSAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAntennaRequests:(BOOL)a3;
- (void)setHasBeaconLostCnt:(BOOL)a3;
- (void)setHasEnvelopeLowToHighAccumulatedMsec:(BOOL)a3;
- (void)setHasGuardTimeMicroseconds:(BOOL)a3;
- (void)setHasHighUcodeLatency:(BOOL)a3;
- (void)setHasPsRequestTxCnt:(BOOL)a3;
- (void)setHasPsnullExceeded:(BOOL)a3;
- (void)setHasRequestsA2DP:(BOOL)a3;
- (void)setHasRequestsACL:(BOOL)a3;
- (void)setHasRequestsBLE:(BOOL)a3;
- (void)setHasRequestsBLEScan:(BOOL)a3;
- (void)setHasRequestsInquiry:(BOOL)a3;
- (void)setHasRequestsInquiryScan:(BOOL)a3;
- (void)setHasRequestsMSS:(BOOL)a3;
- (void)setHasRequestsOther:(BOOL)a3;
- (void)setHasRequestsPARK:(BOOL)a3;
- (void)setHasRequestsPage:(BOOL)a3;
- (void)setHasRequestsPageScan:(BOOL)a3;
- (void)setHasRequestsSCO:(BOOL)a3;
- (void)setHasRequestsSniff:(BOOL)a3;
- (void)setHasRequestseSCO:(BOOL)a3;
- (void)setHasResumeTimeAccumulatedMsec:(BOOL)a3;
- (void)setHasScoReservedSlotDenyCount:(BOOL)a3;
- (void)setHasScoRetransmission1DenyCount:(BOOL)a3;
- (void)setHasScoRetransmission2DenyCount:(BOOL)a3;
- (void)setHasTimeTillResumeAccumulatedMsec:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTxCTS2Self:(BOOL)a3;
- (void)setHasWlanPreempted:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerBTCoexStats

- (void)dealloc
{
  [(AWDWiFiMetricsManagerBTCoexStats *)self setAntennaOwnership2BT:0];
  [(AWDWiFiMetricsManagerBTCoexStats *)self setAntennaOwnership2WLAN:0];
  [(AWDWiFiMetricsManagerBTCoexStats *)self setEnbledStateOn:0];
  [(AWDWiFiMetricsManagerBTCoexStats *)self setEnbledStateOff:0];
  [(AWDWiFiMetricsManagerBTCoexStats *)self setHybridStateOn:0];
  [(AWDWiFiMetricsManagerBTCoexStats *)self setHybridStateOff:0];
  [(AWDWiFiMetricsManagerBTCoexStats *)self setTdmStateOn:0];
  [(AWDWiFiMetricsManagerBTCoexStats *)self setTdmStateOff:0];
  PBRepeatedUInt64Clear();
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerBTCoexStats;
  [(AWDWiFiMetricsManagerBTCoexStats *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasAntennaRequests:(BOOL)a3
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

- (void)setHasWlanPreempted:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasPsnullExceeded:(BOOL)a3
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

- (void)setHasHighUcodeLatency:(BOOL)a3
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

- (void)setHasRequestsACL:(BOOL)a3
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

- (void)setHasRequestsSCO:(BOOL)a3
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

- (void)setHasRequestseSCO:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasRequestsA2DP:(BOOL)a3
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

- (void)setHasRequestsSniff:(BOOL)a3
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

- (void)setHasRequestsPageScan:(BOOL)a3
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

- (void)setHasRequestsInquiryScan:(BOOL)a3
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

- (void)setHasRequestsPage:(BOOL)a3
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

- (void)setHasRequestsInquiry:(BOOL)a3
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

- (void)setHasRequestsBLE:(BOOL)a3
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

- (void)setHasRequestsOther:(BOOL)a3
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

- (void)setHasRequestsBLEScan:(BOOL)a3
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

- (void)setHasRequestsMSS:(BOOL)a3
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

- (void)setHasRequestsPARK:(BOOL)a3
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

- (void)setHasBeaconLostCnt:(BOOL)a3
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

- (unint64_t)rxMPDUCountPerMCSAtIndex:(unint64_t)a3
{
  p_rxMPDUCountPerMCSs = &self->_rxMPDUCountPerMCSs;
  count = self->_rxMPDUCountPerMCSs.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_rxMPDUCountPerMCSs->list[a3];
}

- (unint64_t)txMPDUCountPerMCSAtIndex:(unint64_t)a3
{
  p_txMPDUCountPerMCSs = &self->_txMPDUCountPerMCSs;
  count = self->_txMPDUCountPerMCSs.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_txMPDUCountPerMCSs->list[a3];
}

- (void)setHasTimeTillResumeAccumulatedMsec:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasResumeTimeAccumulatedMsec:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasEnvelopeLowToHighAccumulatedMsec:(BOOL)a3
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

- (void)setHasScoReservedSlotDenyCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasScoRetransmission1DenyCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasScoRetransmission2DenyCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasGuardTimeMicroseconds:(BOOL)a3
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

- (void)setHasPsRequestTxCnt:(BOOL)a3
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

- (void)setHasTxCTS2Self:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerBTCoexStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerBTCoexStats description](&v3, sel_description), -[AWDWiFiMetricsManagerBTCoexStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_antennaRequests), @"antennaRequests"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_4:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_antennaGrants), @"antennaGrants"}];
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wlanPreempted), @"wlanPreempted"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_psnullExceeded), @"psnullExceeded"}];
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highUcodeLatency), @"highUcodeLatency"}];
  }

LABEL_8:
  antennaOwnership2BT = self->_antennaOwnership2BT;
  if (antennaOwnership2BT)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](antennaOwnership2BT forKey:{"dictionaryRepresentation"), @"antennaOwnership2_BT"}];
  }

  antennaOwnership2WLAN = self->_antennaOwnership2WLAN;
  if (antennaOwnership2WLAN)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](antennaOwnership2WLAN forKey:{"dictionaryRepresentation"), @"antennaOwnership2_WLAN"}];
  }

  enbledStateOn = self->_enbledStateOn;
  if (enbledStateOn)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](enbledStateOn forKey:{"dictionaryRepresentation"), @"enbledState_On"}];
  }

  enbledStateOff = self->_enbledStateOff;
  if (enbledStateOff)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](enbledStateOff forKey:{"dictionaryRepresentation"), @"enbledState_Off"}];
  }

  hybridStateOn = self->_hybridStateOn;
  if (hybridStateOn)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](hybridStateOn forKey:{"dictionaryRepresentation"), @"hybridState_On"}];
  }

  hybridStateOff = self->_hybridStateOff;
  if (hybridStateOff)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](hybridStateOff forKey:{"dictionaryRepresentation"), @"hybridState_Off"}];
  }

  tdmStateOn = self->_tdmStateOn;
  if (tdmStateOn)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](tdmStateOn forKey:{"dictionaryRepresentation"), @"tdmState_On"}];
  }

  tdmStateOff = self->_tdmStateOff;
  if (tdmStateOff)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](tdmStateOff forKey:{"dictionaryRepresentation"), @"tdmState_Off"}];
  }

  v13 = self->_has;
  if ((*&v13 & 0x200) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsACL), @"requestsACL"}];
    v13 = self->_has;
    if ((*&v13 & 0x80000) == 0)
    {
LABEL_26:
      if ((*&v13 & 0x200000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_59;
    }
  }

  else if ((*&v13 & 0x80000) == 0)
  {
    goto LABEL_26;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsSCO), @"requestsSCO"}];
  v13 = self->_has;
  if ((*&v13 & 0x200000) == 0)
  {
LABEL_27:
    if ((*&v13 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestseSCO), @"requestseSCO"}];
  v13 = self->_has;
  if ((*&v13 & 0x100) == 0)
  {
LABEL_28:
    if ((*&v13 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsA2DP), @"requestsA2DP"}];
  v13 = self->_has;
  if ((*&v13 & 0x100000) == 0)
  {
LABEL_29:
    if ((*&v13 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsSniff), @"requestsSniff"}];
  v13 = self->_has;
  if ((*&v13 & 0x40000) == 0)
  {
LABEL_30:
    if ((*&v13 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsPageScan), @"requestsPageScan"}];
  v13 = self->_has;
  if ((*&v13 & 0x2000) == 0)
  {
LABEL_31:
    if ((*&v13 & 0x20000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsInquiryScan), @"requestsInquiryScan"}];
  v13 = self->_has;
  if ((*&v13 & 0x20000) == 0)
  {
LABEL_32:
    if ((*&v13 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsPage), @"requestsPage"}];
  v13 = self->_has;
  if ((*&v13 & 0x1000) == 0)
  {
LABEL_33:
    if ((*&v13 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsInquiry), @"requestsInquiry"}];
  v13 = self->_has;
  if ((*&v13 & 0x400) == 0)
  {
LABEL_34:
    if ((*&v13 & 0x8000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsBLE), @"requestsBLE"}];
  v13 = self->_has;
  if ((*&v13 & 0x8000) == 0)
  {
LABEL_35:
    if ((*&v13 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

LABEL_67:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsOther), @"requestsOther"}];
  v13 = self->_has;
  if ((*&v13 & 0x800) == 0)
  {
LABEL_36:
    if ((*&v13 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

LABEL_68:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsBLEScan), @"requestsBLEScan"}];
  v13 = self->_has;
  if ((*&v13 & 0x4000) == 0)
  {
LABEL_37:
    if ((*&v13 & 0x10000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_70;
  }

LABEL_69:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsMSS), @"requestsMSS"}];
  v13 = self->_has;
  if ((*&v13 & 0x10000) == 0)
  {
LABEL_38:
    if ((*&v13 & 4) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_70:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsPARK), @"requestsPARK"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_39:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_beaconLostCnt), @"beaconLostCnt"}];
  }

LABEL_40:
  [v3 setObject:PBRepeatedUInt64NSArray() forKey:@"rxMPDUCountPerMCS"];
  [v3 setObject:PBRepeatedUInt64NSArray() forKey:@"txMPDUCountPerMCS"];
  v14 = self->_has;
  if ((*&v14 & 0x4000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeTillResumeAccumulatedMsec), @"timeTillResumeAccumulatedMsec"}];
    v14 = self->_has;
    if ((*&v14 & 0x400000) == 0)
    {
LABEL_42:
      if ((*&v14 & 8) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_74;
    }
  }

  else if ((*&v14 & 0x400000) == 0)
  {
    goto LABEL_42;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resumeTimeAccumulatedMsec), @"resumeTimeAccumulatedMsec"}];
  v14 = self->_has;
  if ((*&v14 & 8) == 0)
  {
LABEL_43:
    if ((*&v14 & 0x800000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_75;
  }

LABEL_74:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_envelopeLowToHighAccumulatedMsec), @"envelopeLowToHighAccumulatedMsec"}];
  v14 = self->_has;
  if ((*&v14 & 0x800000) == 0)
  {
LABEL_44:
    if ((*&v14 & 0x1000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_76;
  }

LABEL_75:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_scoReservedSlotDenyCount), @"scoReservedSlotDenyCount"}];
  v14 = self->_has;
  if ((*&v14 & 0x1000000) == 0)
  {
LABEL_45:
    if ((*&v14 & 0x2000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_77;
  }

LABEL_76:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_scoRetransmission1DenyCount), @"scoRetransmission1DenyCount"}];
  v14 = self->_has;
  if ((*&v14 & 0x2000000) == 0)
  {
LABEL_46:
    if ((*&v14 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_78;
  }

LABEL_77:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_scoRetransmission2DenyCount), @"scoRetransmission2DenyCount"}];
  v14 = self->_has;
  if ((*&v14 & 0x10) == 0)
  {
LABEL_47:
    if ((*&v14 & 0x40) == 0)
    {
      goto LABEL_48;
    }

LABEL_79:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_psRequestTxCnt), @"psRequestTxCnt"}];
    if ((*&self->_has & 0x10000000) == 0)
    {
      return v3;
    }

    goto LABEL_49;
  }

LABEL_78:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_guardTimeMicroseconds), @"guardTimeMicroseconds"}];
  v14 = self->_has;
  if ((*&v14 & 0x40) != 0)
  {
    goto LABEL_79;
  }

LABEL_48:
  if ((*&v14 & 0x10000000) != 0)
  {
LABEL_49:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txCTS2Self), @"txCTS2Self"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_58;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  antennaRequests = self->_antennaRequests;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_4:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_59;
  }

LABEL_58:
  antennaGrants = self->_antennaGrants;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_60;
  }

LABEL_59:
  wlanPreempted = self->_wlanPreempted;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_60:
  psnullExceeded = self->_psnullExceeded;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    highUcodeLatency = self->_highUcodeLatency;
    PBDataWriterWriteUint64Field();
  }

LABEL_8:
  if (self->_antennaOwnership2BT)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_antennaOwnership2WLAN)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_enbledStateOn)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_enbledStateOff)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_hybridStateOn)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_hybridStateOff)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_tdmStateOn)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_tdmStateOff)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = self->_has;
  if ((*&v6 & 0x200) != 0)
  {
    requestsACL = self->_requestsACL;
    PBDataWriterWriteUint64Field();
    v6 = self->_has;
    if ((*&v6 & 0x80000) == 0)
    {
LABEL_26:
      if ((*&v6 & 0x200000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_64;
    }
  }

  else if ((*&v6 & 0x80000) == 0)
  {
    goto LABEL_26;
  }

  requestsSCO = self->_requestsSCO;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_64:
  requestseSCO = self->_requestseSCO;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

LABEL_65:
  requestsA2DP = self->_requestsA2DP;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_67;
  }

LABEL_66:
  requestsSniff = self->_requestsSniff;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_68;
  }

LABEL_67:
  requestsPageScan = self->_requestsPageScan;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_69;
  }

LABEL_68:
  requestsInquiryScan = self->_requestsInquiryScan;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

LABEL_69:
  requestsPage = self->_requestsPage;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_71;
  }

LABEL_70:
  requestsInquiry = self->_requestsInquiry;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_72;
  }

LABEL_71:
  requestsBLE = self->_requestsBLE;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_73;
  }

LABEL_72:
  requestsOther = self->_requestsOther;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_36:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_74;
  }

LABEL_73:
  requestsBLEScan = self->_requestsBLEScan;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_37:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_75;
  }

LABEL_74:
  requestsMSS = self->_requestsMSS;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_38:
    if ((*&v6 & 4) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_75:
  requestsPARK = self->_requestsPARK;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_39:
    beaconLostCnt = self->_beaconLostCnt;
    PBDataWriterWriteUint64Field();
  }

LABEL_40:
  if (self->_rxMPDUCountPerMCSs.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_rxMPDUCountPerMCSs.list[v8];
      PBDataWriterWriteUint64Field();
      ++v8;
    }

    while (v8 < self->_rxMPDUCountPerMCSs.count);
  }

  if (self->_txMPDUCountPerMCSs.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_txMPDUCountPerMCSs.list[v10];
      PBDataWriterWriteUint64Field();
      ++v10;
    }

    while (v10 < self->_txMPDUCountPerMCSs.count);
  }

  v12 = self->_has;
  if ((*&v12 & 0x4000000) != 0)
  {
    timeTillResumeAccumulatedMsec = self->_timeTillResumeAccumulatedMsec;
    PBDataWriterWriteUint64Field();
    v12 = self->_has;
    if ((*&v12 & 0x400000) == 0)
    {
LABEL_48:
      if ((*&v12 & 8) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_79;
    }
  }

  else if ((*&v12 & 0x400000) == 0)
  {
    goto LABEL_48;
  }

  resumeTimeAccumulatedMsec = self->_resumeTimeAccumulatedMsec;
  PBDataWriterWriteUint64Field();
  v12 = self->_has;
  if ((*&v12 & 8) == 0)
  {
LABEL_49:
    if ((*&v12 & 0x800000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_80;
  }

LABEL_79:
  envelopeLowToHighAccumulatedMsec = self->_envelopeLowToHighAccumulatedMsec;
  PBDataWriterWriteUint64Field();
  v12 = self->_has;
  if ((*&v12 & 0x800000) == 0)
  {
LABEL_50:
    if ((*&v12 & 0x1000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_81;
  }

LABEL_80:
  scoReservedSlotDenyCount = self->_scoReservedSlotDenyCount;
  PBDataWriterWriteUint64Field();
  v12 = self->_has;
  if ((*&v12 & 0x1000000) == 0)
  {
LABEL_51:
    if ((*&v12 & 0x2000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_82;
  }

LABEL_81:
  scoRetransmission1DenyCount = self->_scoRetransmission1DenyCount;
  PBDataWriterWriteUint64Field();
  v12 = self->_has;
  if ((*&v12 & 0x2000000) == 0)
  {
LABEL_52:
    if ((*&v12 & 0x10) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_83;
  }

LABEL_82:
  scoRetransmission2DenyCount = self->_scoRetransmission2DenyCount;
  PBDataWriterWriteUint64Field();
  v12 = self->_has;
  if ((*&v12 & 0x10) == 0)
  {
LABEL_53:
    if ((*&v12 & 0x40) == 0)
    {
      goto LABEL_54;
    }

LABEL_84:
    psRequestTxCnt = self->_psRequestTxCnt;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x10000000) == 0)
    {
      return;
    }

    goto LABEL_85;
  }

LABEL_83:
  guardTimeMicroseconds = self->_guardTimeMicroseconds;
  PBDataWriterWriteUint64Field();
  v12 = self->_has;
  if ((*&v12 & 0x40) != 0)
  {
    goto LABEL_84;
  }

LABEL_54:
  if ((*&v12 & 0x10000000) == 0)
  {
    return;
  }

LABEL_85:
  txCTS2Self = self->_txCTS2Self;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    *(a3 + 34) = self->_timestamp;
    *(a3 + 90) |= 0x8000000u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_61;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 8) = self->_antennaRequests;
  *(a3 + 90) |= 2u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_4:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a3 + 7) = self->_antennaGrants;
  *(a3 + 90) |= 1u;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a3 + 36) = self->_wlanPreempted;
  *(a3 + 90) |= 0x20000000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_63:
  *(a3 + 14) = self->_psnullExceeded;
  *(a3 + 90) |= 0x80u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    *(a3 + 12) = self->_highUcodeLatency;
    *(a3 + 90) |= 0x20u;
  }

LABEL_8:
  if (self->_antennaOwnership2BT)
  {
    [a3 setAntennaOwnership2BT:?];
  }

  if (self->_antennaOwnership2WLAN)
  {
    [a3 setAntennaOwnership2WLAN:?];
  }

  if (self->_enbledStateOn)
  {
    [a3 setEnbledStateOn:?];
  }

  if (self->_enbledStateOff)
  {
    [a3 setEnbledStateOff:?];
  }

  if (self->_hybridStateOn)
  {
    [a3 setHybridStateOn:?];
  }

  if (self->_hybridStateOff)
  {
    [a3 setHybridStateOff:?];
  }

  if (self->_tdmStateOn)
  {
    [a3 setTdmStateOn:?];
  }

  if (self->_tdmStateOff)
  {
    [a3 setTdmStateOff:?];
  }

  v6 = self->_has;
  if ((*&v6 & 0x200) != 0)
  {
    *(a3 + 16) = self->_requestsACL;
    *(a3 + 90) |= 0x200u;
    v6 = self->_has;
    if ((*&v6 & 0x80000) == 0)
    {
LABEL_26:
      if ((*&v6 & 0x200000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v6 & 0x80000) == 0)
  {
    goto LABEL_26;
  }

  *(a3 + 26) = self->_requestsSCO;
  *(a3 + 90) |= 0x80000u;
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(a3 + 28) = self->_requestseSCO;
  *(a3 + 90) |= 0x200000u;
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(a3 + 15) = self->_requestsA2DP;
  *(a3 + 90) |= 0x100u;
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(a3 + 27) = self->_requestsSniff;
  *(a3 + 90) |= 0x100000u;
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(a3 + 25) = self->_requestsPageScan;
  *(a3 + 90) |= 0x40000u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(a3 + 20) = self->_requestsInquiryScan;
  *(a3 + 90) |= 0x2000u;
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_32:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(a3 + 24) = self->_requestsPage;
  *(a3 + 90) |= 0x20000u;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_33:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(a3 + 19) = self->_requestsInquiry;
  *(a3 + 90) |= 0x1000u;
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_34:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(a3 + 17) = self->_requestsBLE;
  *(a3 + 90) |= 0x400u;
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_35:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(a3 + 22) = self->_requestsOther;
  *(a3 + 90) |= 0x8000u;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_36:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(a3 + 18) = self->_requestsBLEScan;
  *(a3 + 90) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_37:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_38;
    }

LABEL_78:
    *(a3 + 23) = self->_requestsPARK;
    *(a3 + 90) |= 0x10000u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_77:
  *(a3 + 21) = self->_requestsMSS;
  *(a3 + 90) |= 0x4000u;
  v6 = self->_has;
  if ((*&v6 & 0x10000) != 0)
  {
    goto LABEL_78;
  }

LABEL_38:
  if ((*&v6 & 4) != 0)
  {
LABEL_39:
    *(a3 + 9) = self->_beaconLostCnt;
    *(a3 + 90) |= 4u;
  }

LABEL_40:
  if ([(AWDWiFiMetricsManagerBTCoexStats *)self rxMPDUCountPerMCSsCount])
  {
    [a3 clearRxMPDUCountPerMCSs];
    v7 = [(AWDWiFiMetricsManagerBTCoexStats *)self rxMPDUCountPerMCSsCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        [a3 addRxMPDUCountPerMCS:{-[AWDWiFiMetricsManagerBTCoexStats rxMPDUCountPerMCSAtIndex:](self, "rxMPDUCountPerMCSAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiMetricsManagerBTCoexStats *)self txMPDUCountPerMCSsCount])
  {
    [a3 clearTxMPDUCountPerMCSs];
    v10 = [(AWDWiFiMetricsManagerBTCoexStats *)self txMPDUCountPerMCSsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        [a3 addTxMPDUCountPerMCS:{-[AWDWiFiMetricsManagerBTCoexStats txMPDUCountPerMCSAtIndex:](self, "txMPDUCountPerMCSAtIndex:", j)}];
      }
    }
  }

  v13 = self->_has;
  if ((*&v13 & 0x4000000) != 0)
  {
    *(a3 + 33) = self->_timeTillResumeAccumulatedMsec;
    *(a3 + 90) |= 0x4000000u;
    v13 = self->_has;
    if ((*&v13 & 0x400000) == 0)
    {
LABEL_50:
      if ((*&v13 & 8) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_82;
    }
  }

  else if ((*&v13 & 0x400000) == 0)
  {
    goto LABEL_50;
  }

  *(a3 + 29) = self->_resumeTimeAccumulatedMsec;
  *(a3 + 90) |= 0x400000u;
  v13 = self->_has;
  if ((*&v13 & 8) == 0)
  {
LABEL_51:
    if ((*&v13 & 0x800000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(a3 + 10) = self->_envelopeLowToHighAccumulatedMsec;
  *(a3 + 90) |= 8u;
  v13 = self->_has;
  if ((*&v13 & 0x800000) == 0)
  {
LABEL_52:
    if ((*&v13 & 0x1000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(a3 + 30) = self->_scoReservedSlotDenyCount;
  *(a3 + 90) |= 0x800000u;
  v13 = self->_has;
  if ((*&v13 & 0x1000000) == 0)
  {
LABEL_53:
    if ((*&v13 & 0x2000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(a3 + 31) = self->_scoRetransmission1DenyCount;
  *(a3 + 90) |= 0x1000000u;
  v13 = self->_has;
  if ((*&v13 & 0x2000000) == 0)
  {
LABEL_54:
    if ((*&v13 & 0x10) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(a3 + 32) = self->_scoRetransmission2DenyCount;
  *(a3 + 90) |= 0x2000000u;
  v13 = self->_has;
  if ((*&v13 & 0x10) == 0)
  {
LABEL_55:
    if ((*&v13 & 0x40) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(a3 + 11) = self->_guardTimeMicroseconds;
  *(a3 + 90) |= 0x10u;
  v13 = self->_has;
  if ((*&v13 & 0x40) == 0)
  {
LABEL_56:
    if ((*&v13 & 0x10000000) == 0)
    {
      return;
    }

    goto LABEL_57;
  }

LABEL_87:
  *(a3 + 13) = self->_psRequestTxCnt;
  *(a3 + 90) |= 0x40u;
  if ((*&self->_has & 0x10000000) == 0)
  {
    return;
  }

LABEL_57:
  *(a3 + 35) = self->_txCTS2Self;
  *(a3 + 90) |= 0x10000000u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    *(v5 + 272) = self->_timestamp;
    *(v5 + 360) |= 0x8000000u;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 64) = self->_antennaRequests;
  *(v5 + 360) |= 2u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_4:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 56) = self->_antennaGrants;
  *(v5 + 360) |= 1u;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 288) = self->_wlanPreempted;
  *(v5 + 360) |= 0x20000000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_39:
  *(v5 + 112) = self->_psnullExceeded;
  *(v5 + 360) |= 0x80u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    *(v5 + 96) = self->_highUcodeLatency;
    *(v5 + 360) |= 0x20u;
  }

LABEL_8:

  *(v6 + 296) = [(AWDWiFiMetricsManagerStateMachine *)self->_antennaOwnership2BT copyWithZone:a3];
  *(v6 + 304) = [(AWDWiFiMetricsManagerStateMachine *)self->_antennaOwnership2WLAN copyWithZone:a3];

  *(v6 + 320) = [(AWDWiFiMetricsManagerStateMachine *)self->_enbledStateOn copyWithZone:a3];
  *(v6 + 312) = [(AWDWiFiMetricsManagerStateMachine *)self->_enbledStateOff copyWithZone:a3];

  *(v6 + 336) = [(AWDWiFiMetricsManagerStateMachine *)self->_hybridStateOn copyWithZone:a3];
  *(v6 + 328) = [(AWDWiFiMetricsManagerStateMachine *)self->_hybridStateOff copyWithZone:a3];

  *(v6 + 352) = [(AWDWiFiMetricsManagerStateMachine *)self->_tdmStateOn copyWithZone:a3];
  *(v6 + 344) = [(AWDWiFiMetricsManagerStateMachine *)self->_tdmStateOff copyWithZone:a3];
  v8 = self->_has;
  if ((*&v8 & 0x200) != 0)
  {
    *(v6 + 128) = self->_requestsACL;
    *(v6 + 360) |= 0x200u;
    v8 = self->_has;
    if ((*&v8 & 0x80000) == 0)
    {
LABEL_10:
      if ((*&v8 & 0x200000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_43;
    }
  }

  else if ((*&v8 & 0x80000) == 0)
  {
    goto LABEL_10;
  }

  *(v6 + 208) = self->_requestsSCO;
  *(v6 + 360) |= 0x80000u;
  v8 = self->_has;
  if ((*&v8 & 0x200000) == 0)
  {
LABEL_11:
    if ((*&v8 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v6 + 224) = self->_requestseSCO;
  *(v6 + 360) |= 0x200000u;
  v8 = self->_has;
  if ((*&v8 & 0x100) == 0)
  {
LABEL_12:
    if ((*&v8 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v6 + 120) = self->_requestsA2DP;
  *(v6 + 360) |= 0x100u;
  v8 = self->_has;
  if ((*&v8 & 0x100000) == 0)
  {
LABEL_13:
    if ((*&v8 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v6 + 216) = self->_requestsSniff;
  *(v6 + 360) |= 0x100000u;
  v8 = self->_has;
  if ((*&v8 & 0x40000) == 0)
  {
LABEL_14:
    if ((*&v8 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v6 + 200) = self->_requestsPageScan;
  *(v6 + 360) |= 0x40000u;
  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_15:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v6 + 160) = self->_requestsInquiryScan;
  *(v6 + 360) |= 0x2000u;
  v8 = self->_has;
  if ((*&v8 & 0x20000) == 0)
  {
LABEL_16:
    if ((*&v8 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v6 + 192) = self->_requestsPage;
  *(v6 + 360) |= 0x20000u;
  v8 = self->_has;
  if ((*&v8 & 0x1000) == 0)
  {
LABEL_17:
    if ((*&v8 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v6 + 152) = self->_requestsInquiry;
  *(v6 + 360) |= 0x1000u;
  v8 = self->_has;
  if ((*&v8 & 0x400) == 0)
  {
LABEL_18:
    if ((*&v8 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v6 + 136) = self->_requestsBLE;
  *(v6 + 360) |= 0x400u;
  v8 = self->_has;
  if ((*&v8 & 0x8000) == 0)
  {
LABEL_19:
    if ((*&v8 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v6 + 176) = self->_requestsOther;
  *(v6 + 360) |= 0x8000u;
  v8 = self->_has;
  if ((*&v8 & 0x800) == 0)
  {
LABEL_20:
    if ((*&v8 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 144) = self->_requestsBLEScan;
  *(v6 + 360) |= 0x800u;
  v8 = self->_has;
  if ((*&v8 & 0x4000) == 0)
  {
LABEL_21:
    if ((*&v8 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 168) = self->_requestsMSS;
  *(v6 + 360) |= 0x4000u;
  v8 = self->_has;
  if ((*&v8 & 0x10000) == 0)
  {
LABEL_22:
    if ((*&v8 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_54:
  *(v6 + 184) = self->_requestsPARK;
  *(v6 + 360) |= 0x10000u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_23:
    *(v6 + 72) = self->_beaconLostCnt;
    *(v6 + 360) |= 4u;
  }

LABEL_24:
  PBRepeatedUInt64Copy();
  PBRepeatedUInt64Copy();
  v9 = self->_has;
  if ((*&v9 & 0x4000000) != 0)
  {
    *(v6 + 264) = self->_timeTillResumeAccumulatedMsec;
    *(v6 + 360) |= 0x4000000u;
    v9 = self->_has;
    if ((*&v9 & 0x400000) == 0)
    {
LABEL_26:
      if ((*&v9 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_58;
    }
  }

  else if ((*&v9 & 0x400000) == 0)
  {
    goto LABEL_26;
  }

  *(v6 + 232) = self->_resumeTimeAccumulatedMsec;
  *(v6 + 360) |= 0x400000u;
  v9 = self->_has;
  if ((*&v9 & 8) == 0)
  {
LABEL_27:
    if ((*&v9 & 0x800000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v6 + 80) = self->_envelopeLowToHighAccumulatedMsec;
  *(v6 + 360) |= 8u;
  v9 = self->_has;
  if ((*&v9 & 0x800000) == 0)
  {
LABEL_28:
    if ((*&v9 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v6 + 240) = self->_scoReservedSlotDenyCount;
  *(v6 + 360) |= 0x800000u;
  v9 = self->_has;
  if ((*&v9 & 0x1000000) == 0)
  {
LABEL_29:
    if ((*&v9 & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v6 + 248) = self->_scoRetransmission1DenyCount;
  *(v6 + 360) |= 0x1000000u;
  v9 = self->_has;
  if ((*&v9 & 0x2000000) == 0)
  {
LABEL_30:
    if ((*&v9 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v6 + 256) = self->_scoRetransmission2DenyCount;
  *(v6 + 360) |= 0x2000000u;
  v9 = self->_has;
  if ((*&v9 & 0x10) == 0)
  {
LABEL_31:
    if ((*&v9 & 0x40) == 0)
    {
      goto LABEL_32;
    }

LABEL_63:
    *(v6 + 104) = self->_psRequestTxCnt;
    *(v6 + 360) |= 0x40u;
    if ((*&self->_has & 0x10000000) == 0)
    {
      return v6;
    }

    goto LABEL_33;
  }

LABEL_62:
  *(v6 + 88) = self->_guardTimeMicroseconds;
  *(v6 + 360) |= 0x10u;
  v9 = self->_has;
  if ((*&v9 & 0x40) != 0)
  {
    goto LABEL_63;
  }

LABEL_32:
  if ((*&v9 & 0x10000000) != 0)
  {
LABEL_33:
    *(v6 + 280) = self->_txCTS2Self;
    *(v6 + 360) |= 0x10000000u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    has = self->_has;
    v7 = *(a3 + 90);
    if ((*&has & 0x8000000) != 0)
    {
      if ((v7 & 0x8000000) == 0 || self->_timestamp != *(a3 + 34))
      {
        goto LABEL_169;
      }
    }

    else if ((v7 & 0x8000000) != 0)
    {
LABEL_169:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_antennaRequests != *(a3 + 8))
      {
        goto LABEL_169;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_169;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_antennaGrants != *(a3 + 7))
      {
        goto LABEL_169;
      }
    }

    else if (v7)
    {
      goto LABEL_169;
    }

    if ((*&has & 0x20000000) != 0)
    {
      if ((v7 & 0x20000000) == 0 || self->_wlanPreempted != *(a3 + 36))
      {
        goto LABEL_169;
      }
    }

    else if ((v7 & 0x20000000) != 0)
    {
      goto LABEL_169;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_psnullExceeded != *(a3 + 14))
      {
        goto LABEL_169;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_169;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_highUcodeLatency != *(a3 + 12))
      {
        goto LABEL_169;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_169;
    }

    antennaOwnership2BT = self->_antennaOwnership2BT;
    if (!(antennaOwnership2BT | *(a3 + 37)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)antennaOwnership2BT isEqual:?]) != 0)
    {
      antennaOwnership2WLAN = self->_antennaOwnership2WLAN;
      if (!(antennaOwnership2WLAN | *(a3 + 38)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)antennaOwnership2WLAN isEqual:?]) != 0)
      {
        enbledStateOn = self->_enbledStateOn;
        if (!(enbledStateOn | *(a3 + 40)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)enbledStateOn isEqual:?]) != 0)
        {
          enbledStateOff = self->_enbledStateOff;
          if (!(enbledStateOff | *(a3 + 39)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)enbledStateOff isEqual:?]) != 0)
          {
            hybridStateOn = self->_hybridStateOn;
            if (!(hybridStateOn | *(a3 + 42)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)hybridStateOn isEqual:?]) != 0)
            {
              hybridStateOff = self->_hybridStateOff;
              if (!(hybridStateOff | *(a3 + 41)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)hybridStateOff isEqual:?]) != 0)
              {
                tdmStateOn = self->_tdmStateOn;
                if (!(tdmStateOn | *(a3 + 44)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)tdmStateOn isEqual:?]) != 0)
                {
                  tdmStateOff = self->_tdmStateOff;
                  if (!(tdmStateOff | *(a3 + 43)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)tdmStateOff isEqual:?]) != 0)
                  {
                    v16 = self->_has;
                    v17 = *(a3 + 90);
                    if ((*&v16 & 0x200) != 0)
                    {
                      if ((v17 & 0x200) == 0 || self->_requestsACL != *(a3 + 16))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x200) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 0x80000) != 0)
                    {
                      if ((v17 & 0x80000) == 0 || self->_requestsSCO != *(a3 + 26))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x80000) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 0x200000) != 0)
                    {
                      if ((v17 & 0x200000) == 0 || self->_requestseSCO != *(a3 + 28))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x200000) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 0x100) != 0)
                    {
                      if ((v17 & 0x100) == 0 || self->_requestsA2DP != *(a3 + 15))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x100) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 0x100000) != 0)
                    {
                      if ((v17 & 0x100000) == 0 || self->_requestsSniff != *(a3 + 27))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x100000) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 0x40000) != 0)
                    {
                      if ((v17 & 0x40000) == 0 || self->_requestsPageScan != *(a3 + 25))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x40000) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 0x2000) != 0)
                    {
                      if ((v17 & 0x2000) == 0 || self->_requestsInquiryScan != *(a3 + 20))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x2000) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 0x20000) != 0)
                    {
                      if ((v17 & 0x20000) == 0 || self->_requestsPage != *(a3 + 24))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x20000) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 0x1000) != 0)
                    {
                      if ((v17 & 0x1000) == 0 || self->_requestsInquiry != *(a3 + 19))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x1000) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 0x400) != 0)
                    {
                      if ((v17 & 0x400) == 0 || self->_requestsBLE != *(a3 + 17))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x400) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 0x8000) != 0)
                    {
                      if ((v17 & 0x8000) == 0 || self->_requestsOther != *(a3 + 22))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x8000) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 0x800) != 0)
                    {
                      if ((v17 & 0x800) == 0 || self->_requestsBLEScan != *(a3 + 18))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x800) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 0x4000) != 0)
                    {
                      if ((v17 & 0x4000) == 0 || self->_requestsMSS != *(a3 + 21))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x4000) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 0x10000) != 0)
                    {
                      if ((v17 & 0x10000) == 0 || self->_requestsPARK != *(a3 + 23))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 0x10000) != 0)
                    {
                      goto LABEL_169;
                    }

                    if ((*&v16 & 4) != 0)
                    {
                      if ((v17 & 4) == 0 || self->_beaconLostCnt != *(a3 + 9))
                      {
                        goto LABEL_169;
                      }
                    }

                    else if ((v17 & 4) != 0)
                    {
                      goto LABEL_169;
                    }

                    IsEqual = PBRepeatedUInt64IsEqual();
                    if (IsEqual)
                    {
                      IsEqual = PBRepeatedUInt64IsEqual();
                      if (IsEqual)
                      {
                        v18 = self->_has;
                        v19 = *(a3 + 90);
                        if ((*&v18 & 0x4000000) != 0)
                        {
                          if ((v19 & 0x4000000) == 0 || self->_timeTillResumeAccumulatedMsec != *(a3 + 33))
                          {
                            goto LABEL_169;
                          }
                        }

                        else if ((v19 & 0x4000000) != 0)
                        {
                          goto LABEL_169;
                        }

                        if ((*&v18 & 0x400000) != 0)
                        {
                          if ((v19 & 0x400000) == 0 || self->_resumeTimeAccumulatedMsec != *(a3 + 29))
                          {
                            goto LABEL_169;
                          }
                        }

                        else if ((v19 & 0x400000) != 0)
                        {
                          goto LABEL_169;
                        }

                        if ((*&v18 & 8) != 0)
                        {
                          if ((v19 & 8) == 0 || self->_envelopeLowToHighAccumulatedMsec != *(a3 + 10))
                          {
                            goto LABEL_169;
                          }
                        }

                        else if ((v19 & 8) != 0)
                        {
                          goto LABEL_169;
                        }

                        if ((*&v18 & 0x800000) != 0)
                        {
                          if ((v19 & 0x800000) == 0 || self->_scoReservedSlotDenyCount != *(a3 + 30))
                          {
                            goto LABEL_169;
                          }
                        }

                        else if ((v19 & 0x800000) != 0)
                        {
                          goto LABEL_169;
                        }

                        if ((*&v18 & 0x1000000) != 0)
                        {
                          if ((v19 & 0x1000000) == 0 || self->_scoRetransmission1DenyCount != *(a3 + 31))
                          {
                            goto LABEL_169;
                          }
                        }

                        else if ((v19 & 0x1000000) != 0)
                        {
                          goto LABEL_169;
                        }

                        if ((*&v18 & 0x2000000) != 0)
                        {
                          if ((v19 & 0x2000000) == 0 || self->_scoRetransmission2DenyCount != *(a3 + 32))
                          {
                            goto LABEL_169;
                          }
                        }

                        else if ((v19 & 0x2000000) != 0)
                        {
                          goto LABEL_169;
                        }

                        if ((*&v18 & 0x10) != 0)
                        {
                          if ((v19 & 0x10) == 0 || self->_guardTimeMicroseconds != *(a3 + 11))
                          {
                            goto LABEL_169;
                          }
                        }

                        else if ((v19 & 0x10) != 0)
                        {
                          goto LABEL_169;
                        }

                        if ((*&v18 & 0x40) != 0)
                        {
                          if ((v19 & 0x40) == 0 || self->_psRequestTxCnt != *(a3 + 13))
                          {
                            goto LABEL_169;
                          }
                        }

                        else if ((v19 & 0x40) != 0)
                        {
                          goto LABEL_169;
                        }

                        LOBYTE(IsEqual) = (v19 & 0x10000000) == 0;
                        if ((*&v18 & 0x10000000) != 0)
                        {
                          if ((v19 & 0x10000000) == 0 || self->_txCTS2Self != *(a3 + 35))
                          {
                            goto LABEL_169;
                          }

                          LOBYTE(IsEqual) = 1;
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

  return IsEqual;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    v46 = 2654435761u * self->_timestamp;
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v45 = 2654435761u * self->_antennaRequests;
      if (*&has)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v46 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v45 = 0;
  if (*&has)
  {
LABEL_4:
    v44 = 2654435761u * self->_antennaGrants;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v44 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_5:
    v43 = 2654435761u * self->_wlanPreempted;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v42 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v43 = 0;
  if ((*&has & 0x80) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v42 = 2654435761u * self->_psnullExceeded;
  if ((*&has & 0x20) != 0)
  {
LABEL_7:
    v41 = 2654435761u * self->_highUcodeLatency;
    goto LABEL_14;
  }

LABEL_13:
  v41 = 0;
LABEL_14:
  v40 = [(AWDWiFiMetricsManagerStateMachine *)self->_antennaOwnership2BT hash];
  v39 = [(AWDWiFiMetricsManagerStateMachine *)self->_antennaOwnership2WLAN hash];
  v38 = [(AWDWiFiMetricsManagerStateMachine *)self->_enbledStateOn hash];
  v37 = [(AWDWiFiMetricsManagerStateMachine *)self->_enbledStateOff hash];
  v36 = [(AWDWiFiMetricsManagerStateMachine *)self->_hybridStateOn hash];
  v35 = [(AWDWiFiMetricsManagerStateMachine *)self->_hybridStateOff hash];
  v34 = [(AWDWiFiMetricsManagerStateMachine *)self->_tdmStateOn hash];
  v33 = [(AWDWiFiMetricsManagerStateMachine *)self->_tdmStateOff hash];
  v4 = self->_has;
  if ((*&v4 & 0x200) != 0)
  {
    v32 = 2654435761u * self->_requestsACL;
    if ((*&v4 & 0x80000) != 0)
    {
LABEL_16:
      v31 = 2654435761u * self->_requestsSCO;
      if ((*&v4 & 0x200000) != 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v32 = 0;
    if ((*&v4 & 0x80000) != 0)
    {
      goto LABEL_16;
    }
  }

  v31 = 0;
  if ((*&v4 & 0x200000) != 0)
  {
LABEL_17:
    v30 = 2654435761u * self->_requestseSCO;
    if ((*&v4 & 0x100) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v30 = 0;
  if ((*&v4 & 0x100) != 0)
  {
LABEL_18:
    v29 = 2654435761u * self->_requestsA2DP;
    if ((*&v4 & 0x100000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v29 = 0;
  if ((*&v4 & 0x100000) != 0)
  {
LABEL_19:
    v28 = 2654435761u * self->_requestsSniff;
    if ((*&v4 & 0x40000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v28 = 0;
  if ((*&v4 & 0x40000) != 0)
  {
LABEL_20:
    v27 = 2654435761u * self->_requestsPageScan;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

LABEL_35:
  v27 = 0;
  if ((*&v4 & 0x2000) != 0)
  {
LABEL_21:
    v26 = 2654435761u * self->_requestsInquiryScan;
    if ((*&v4 & 0x20000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_37;
  }

LABEL_36:
  v26 = 0;
  if ((*&v4 & 0x20000) != 0)
  {
LABEL_22:
    v25 = 2654435761u * self->_requestsPage;
    if ((*&v4 & 0x1000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_38;
  }

LABEL_37:
  v25 = 0;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_23:
    v24 = 2654435761u * self->_requestsInquiry;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

LABEL_38:
  v24 = 0;
  if ((*&v4 & 0x400) != 0)
  {
LABEL_24:
    v5 = 2654435761u * self->_requestsBLE;
    if ((*&v4 & 0x8000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

LABEL_39:
  v5 = 0;
  if ((*&v4 & 0x8000) != 0)
  {
LABEL_25:
    v6 = 2654435761u * self->_requestsOther;
    if ((*&v4 & 0x800) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_41;
  }

LABEL_40:
  v6 = 0;
  if ((*&v4 & 0x800) != 0)
  {
LABEL_26:
    v7 = 2654435761u * self->_requestsBLEScan;
    if ((*&v4 & 0x4000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_42;
  }

LABEL_41:
  v7 = 0;
  if ((*&v4 & 0x4000) != 0)
  {
LABEL_27:
    v8 = 2654435761u * self->_requestsMSS;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_28;
    }

LABEL_43:
    v9 = 0;
    if ((*&v4 & 4) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_44;
  }

LABEL_42:
  v8 = 0;
  if ((*&v4 & 0x10000) == 0)
  {
    goto LABEL_43;
  }

LABEL_28:
  v9 = 2654435761u * self->_requestsPARK;
  if ((*&v4 & 4) != 0)
  {
LABEL_29:
    v10 = 2654435761u * self->_beaconLostCnt;
    goto LABEL_45;
  }

LABEL_44:
  v10 = 0;
LABEL_45:
  v11 = PBRepeatedUInt64Hash();
  v12 = PBRepeatedUInt64Hash();
  v13 = self->_has;
  if ((*&v13 & 0x4000000) != 0)
  {
    v14 = 2654435761u * self->_timeTillResumeAccumulatedMsec;
    if ((*&v13 & 0x400000) != 0)
    {
LABEL_47:
      v15 = 2654435761u * self->_resumeTimeAccumulatedMsec;
      if ((*&v13 & 8) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_57;
    }
  }

  else
  {
    v14 = 0;
    if ((*&v13 & 0x400000) != 0)
    {
      goto LABEL_47;
    }
  }

  v15 = 0;
  if ((*&v13 & 8) != 0)
  {
LABEL_48:
    v16 = 2654435761u * self->_envelopeLowToHighAccumulatedMsec;
    if ((*&v13 & 0x800000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_58;
  }

LABEL_57:
  v16 = 0;
  if ((*&v13 & 0x800000) != 0)
  {
LABEL_49:
    v17 = 2654435761u * self->_scoReservedSlotDenyCount;
    if ((*&v13 & 0x1000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_59;
  }

LABEL_58:
  v17 = 0;
  if ((*&v13 & 0x1000000) != 0)
  {
LABEL_50:
    v18 = 2654435761u * self->_scoRetransmission1DenyCount;
    if ((*&v13 & 0x2000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_60;
  }

LABEL_59:
  v18 = 0;
  if ((*&v13 & 0x2000000) != 0)
  {
LABEL_51:
    v19 = 2654435761u * self->_scoRetransmission2DenyCount;
    if ((*&v13 & 0x10) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_61;
  }

LABEL_60:
  v19 = 0;
  if ((*&v13 & 0x10) != 0)
  {
LABEL_52:
    v20 = 2654435761u * self->_guardTimeMicroseconds;
    if ((*&v13 & 0x40) != 0)
    {
      goto LABEL_53;
    }

LABEL_62:
    v21 = 0;
    if ((*&v13 & 0x10000000) != 0)
    {
      goto LABEL_54;
    }

LABEL_63:
    v22 = 0;
    return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22;
  }

LABEL_61:
  v20 = 0;
  if ((*&v13 & 0x40) == 0)
  {
    goto LABEL_62;
  }

LABEL_53:
  v21 = 2654435761u * self->_psRequestTxCnt;
  if ((*&v13 & 0x10000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_54:
  v22 = 2654435761u * self->_txCTS2Self;
  return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 90);
  if ((v5 & 0x8000000) != 0)
  {
    self->_timestamp = *(a3 + 34);
    *&self->_has |= 0x8000000u;
    v5 = *(a3 + 90);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_antennaRequests = *(a3 + 8);
  *&self->_has |= 2u;
  v5 = *(a3 + 90);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_antennaGrants = *(a3 + 7);
  *&self->_has |= 1u;
  v5 = *(a3 + 90);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_wlanPreempted = *(a3 + 36);
  *&self->_has |= 0x20000000u;
  v5 = *(a3 + 90);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_psnullExceeded = *(a3 + 14);
  *&self->_has |= 0x80u;
  if ((*(a3 + 90) & 0x20) != 0)
  {
LABEL_7:
    self->_highUcodeLatency = *(a3 + 12);
    *&self->_has |= 0x20u;
  }

LABEL_8:
  antennaOwnership2BT = self->_antennaOwnership2BT;
  v7 = *(a3 + 37);
  if (antennaOwnership2BT)
  {
    if (v7)
    {
      [(AWDWiFiMetricsManagerStateMachine *)antennaOwnership2BT mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDWiFiMetricsManagerBTCoexStats *)self setAntennaOwnership2BT:?];
  }

  antennaOwnership2WLAN = self->_antennaOwnership2WLAN;
  v9 = *(a3 + 38);
  if (antennaOwnership2WLAN)
  {
    if (v9)
    {
      [(AWDWiFiMetricsManagerStateMachine *)antennaOwnership2WLAN mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDWiFiMetricsManagerBTCoexStats *)self setAntennaOwnership2WLAN:?];
  }

  enbledStateOn = self->_enbledStateOn;
  v11 = *(a3 + 40);
  if (enbledStateOn)
  {
    if (v11)
    {
      [(AWDWiFiMetricsManagerStateMachine *)enbledStateOn mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(AWDWiFiMetricsManagerBTCoexStats *)self setEnbledStateOn:?];
  }

  enbledStateOff = self->_enbledStateOff;
  v13 = *(a3 + 39);
  if (enbledStateOff)
  {
    if (v13)
    {
      [(AWDWiFiMetricsManagerStateMachine *)enbledStateOff mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(AWDWiFiMetricsManagerBTCoexStats *)self setEnbledStateOff:?];
  }

  hybridStateOn = self->_hybridStateOn;
  v15 = *(a3 + 42);
  if (hybridStateOn)
  {
    if (v15)
    {
      [(AWDWiFiMetricsManagerStateMachine *)hybridStateOn mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(AWDWiFiMetricsManagerBTCoexStats *)self setHybridStateOn:?];
  }

  hybridStateOff = self->_hybridStateOff;
  v17 = *(a3 + 41);
  if (hybridStateOff)
  {
    if (v17)
    {
      [(AWDWiFiMetricsManagerStateMachine *)hybridStateOff mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(AWDWiFiMetricsManagerBTCoexStats *)self setHybridStateOff:?];
  }

  tdmStateOn = self->_tdmStateOn;
  v19 = *(a3 + 44);
  if (tdmStateOn)
  {
    if (v19)
    {
      [(AWDWiFiMetricsManagerStateMachine *)tdmStateOn mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(AWDWiFiMetricsManagerBTCoexStats *)self setTdmStateOn:?];
  }

  tdmStateOff = self->_tdmStateOff;
  v21 = *(a3 + 43);
  if (tdmStateOff)
  {
    if (v21)
    {
      [(AWDWiFiMetricsManagerStateMachine *)tdmStateOff mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(AWDWiFiMetricsManagerBTCoexStats *)self setTdmStateOff:?];
  }

  v22 = *(a3 + 90);
  if ((v22 & 0x200) != 0)
  {
    self->_requestsACL = *(a3 + 16);
    *&self->_has |= 0x200u;
    v22 = *(a3 + 90);
    if ((v22 & 0x80000) == 0)
    {
LABEL_56:
      if ((v22 & 0x200000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_89;
    }
  }

  else if ((v22 & 0x80000) == 0)
  {
    goto LABEL_56;
  }

  self->_requestsSCO = *(a3 + 26);
  *&self->_has |= 0x80000u;
  v22 = *(a3 + 90);
  if ((v22 & 0x200000) == 0)
  {
LABEL_57:
    if ((v22 & 0x100) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_requestseSCO = *(a3 + 28);
  *&self->_has |= 0x200000u;
  v22 = *(a3 + 90);
  if ((v22 & 0x100) == 0)
  {
LABEL_58:
    if ((v22 & 0x100000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_requestsA2DP = *(a3 + 15);
  *&self->_has |= 0x100u;
  v22 = *(a3 + 90);
  if ((v22 & 0x100000) == 0)
  {
LABEL_59:
    if ((v22 & 0x40000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_requestsSniff = *(a3 + 27);
  *&self->_has |= 0x100000u;
  v22 = *(a3 + 90);
  if ((v22 & 0x40000) == 0)
  {
LABEL_60:
    if ((v22 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_requestsPageScan = *(a3 + 25);
  *&self->_has |= 0x40000u;
  v22 = *(a3 + 90);
  if ((v22 & 0x2000) == 0)
  {
LABEL_61:
    if ((v22 & 0x20000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_requestsInquiryScan = *(a3 + 20);
  *&self->_has |= 0x2000u;
  v22 = *(a3 + 90);
  if ((v22 & 0x20000) == 0)
  {
LABEL_62:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_requestsPage = *(a3 + 24);
  *&self->_has |= 0x20000u;
  v22 = *(a3 + 90);
  if ((v22 & 0x1000) == 0)
  {
LABEL_63:
    if ((v22 & 0x400) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_requestsInquiry = *(a3 + 19);
  *&self->_has |= 0x1000u;
  v22 = *(a3 + 90);
  if ((v22 & 0x400) == 0)
  {
LABEL_64:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_requestsBLE = *(a3 + 17);
  *&self->_has |= 0x400u;
  v22 = *(a3 + 90);
  if ((v22 & 0x8000) == 0)
  {
LABEL_65:
    if ((v22 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_requestsOther = *(a3 + 22);
  *&self->_has |= 0x8000u;
  v22 = *(a3 + 90);
  if ((v22 & 0x800) == 0)
  {
LABEL_66:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_99;
  }

LABEL_98:
  self->_requestsBLEScan = *(a3 + 18);
  *&self->_has |= 0x800u;
  v22 = *(a3 + 90);
  if ((v22 & 0x4000) == 0)
  {
LABEL_67:
    if ((v22 & 0x10000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_requestsMSS = *(a3 + 21);
  *&self->_has |= 0x4000u;
  v22 = *(a3 + 90);
  if ((v22 & 0x10000) == 0)
  {
LABEL_68:
    if ((v22 & 4) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_100:
  self->_requestsPARK = *(a3 + 23);
  *&self->_has |= 0x10000u;
  if ((*(a3 + 90) & 4) != 0)
  {
LABEL_69:
    self->_beaconLostCnt = *(a3 + 9);
    *&self->_has |= 4u;
  }

LABEL_70:
  v23 = [a3 rxMPDUCountPerMCSsCount];
  if (v23)
  {
    v24 = v23;
    for (i = 0; i != v24; ++i)
    {
      -[AWDWiFiMetricsManagerBTCoexStats addRxMPDUCountPerMCS:](self, "addRxMPDUCountPerMCS:", [a3 rxMPDUCountPerMCSAtIndex:i]);
    }
  }

  v26 = [a3 txMPDUCountPerMCSsCount];
  if (v26)
  {
    v27 = v26;
    for (j = 0; j != v27; ++j)
    {
      -[AWDWiFiMetricsManagerBTCoexStats addTxMPDUCountPerMCS:](self, "addTxMPDUCountPerMCS:", [a3 txMPDUCountPerMCSAtIndex:j]);
    }
  }

  v29 = *(a3 + 90);
  if ((v29 & 0x4000000) != 0)
  {
    self->_timeTillResumeAccumulatedMsec = *(a3 + 33);
    *&self->_has |= 0x4000000u;
    v29 = *(a3 + 90);
    if ((v29 & 0x400000) == 0)
    {
LABEL_78:
      if ((v29 & 8) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_104;
    }
  }

  else if ((v29 & 0x400000) == 0)
  {
    goto LABEL_78;
  }

  self->_resumeTimeAccumulatedMsec = *(a3 + 29);
  *&self->_has |= 0x400000u;
  v29 = *(a3 + 90);
  if ((v29 & 8) == 0)
  {
LABEL_79:
    if ((v29 & 0x800000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_envelopeLowToHighAccumulatedMsec = *(a3 + 10);
  *&self->_has |= 8u;
  v29 = *(a3 + 90);
  if ((v29 & 0x800000) == 0)
  {
LABEL_80:
    if ((v29 & 0x1000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_scoReservedSlotDenyCount = *(a3 + 30);
  *&self->_has |= 0x800000u;
  v29 = *(a3 + 90);
  if ((v29 & 0x1000000) == 0)
  {
LABEL_81:
    if ((v29 & 0x2000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_107;
  }

LABEL_106:
  self->_scoRetransmission1DenyCount = *(a3 + 31);
  *&self->_has |= 0x1000000u;
  v29 = *(a3 + 90);
  if ((v29 & 0x2000000) == 0)
  {
LABEL_82:
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_108;
  }

LABEL_107:
  self->_scoRetransmission2DenyCount = *(a3 + 32);
  *&self->_has |= 0x2000000u;
  v29 = *(a3 + 90);
  if ((v29 & 0x10) == 0)
  {
LABEL_83:
    if ((v29 & 0x40) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_109;
  }

LABEL_108:
  self->_guardTimeMicroseconds = *(a3 + 11);
  *&self->_has |= 0x10u;
  v29 = *(a3 + 90);
  if ((v29 & 0x40) == 0)
  {
LABEL_84:
    if ((v29 & 0x10000000) == 0)
    {
      return;
    }

    goto LABEL_85;
  }

LABEL_109:
  self->_psRequestTxCnt = *(a3 + 13);
  *&self->_has |= 0x40u;
  if ((*(a3 + 90) & 0x10000000) == 0)
  {
    return;
  }

LABEL_85:
  self->_txCTS2Self = *(a3 + 35);
  *&self->_has |= 0x10000000u;
}

@end