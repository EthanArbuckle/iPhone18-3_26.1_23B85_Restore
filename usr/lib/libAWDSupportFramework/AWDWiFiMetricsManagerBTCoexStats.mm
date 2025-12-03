@interface AWDWiFiMetricsManagerBTCoexStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)rxMPDUCountPerMCSAtIndex:(unint64_t)index;
- (unint64_t)txMPDUCountPerMCSAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAntennaRequests:(BOOL)requests;
- (void)setHasBeaconLostCnt:(BOOL)cnt;
- (void)setHasEnvelopeLowToHighAccumulatedMsec:(BOOL)msec;
- (void)setHasGuardTimeMicroseconds:(BOOL)microseconds;
- (void)setHasHighUcodeLatency:(BOOL)latency;
- (void)setHasPsRequestTxCnt:(BOOL)cnt;
- (void)setHasPsnullExceeded:(BOOL)exceeded;
- (void)setHasRequestsA2DP:(BOOL)p;
- (void)setHasRequestsACL:(BOOL)l;
- (void)setHasRequestsBLE:(BOOL)e;
- (void)setHasRequestsBLEScan:(BOOL)scan;
- (void)setHasRequestsInquiry:(BOOL)inquiry;
- (void)setHasRequestsInquiryScan:(BOOL)scan;
- (void)setHasRequestsMSS:(BOOL)s;
- (void)setHasRequestsOther:(BOOL)other;
- (void)setHasRequestsPARK:(BOOL)k;
- (void)setHasRequestsPage:(BOOL)page;
- (void)setHasRequestsPageScan:(BOOL)scan;
- (void)setHasRequestsSCO:(BOOL)o;
- (void)setHasRequestsSniff:(BOOL)sniff;
- (void)setHasRequestseSCO:(BOOL)o;
- (void)setHasResumeTimeAccumulatedMsec:(BOOL)msec;
- (void)setHasScoReservedSlotDenyCount:(BOOL)count;
- (void)setHasScoRetransmission1DenyCount:(BOOL)count;
- (void)setHasScoRetransmission2DenyCount:(BOOL)count;
- (void)setHasTimeTillResumeAccumulatedMsec:(BOOL)msec;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasTxCTS2Self:(BOOL)self;
- (void)setHasWlanPreempted:(BOOL)preempted;
- (void)writeTo:(id)to;
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

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasAntennaRequests:(BOOL)requests
{
  if (requests)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasWlanPreempted:(BOOL)preempted
{
  if (preempted)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasPsnullExceeded:(BOOL)exceeded
{
  if (exceeded)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasHighUcodeLatency:(BOOL)latency
{
  if (latency)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasRequestsACL:(BOOL)l
{
  if (l)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasRequestsSCO:(BOOL)o
{
  if (o)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasRequestseSCO:(BOOL)o
{
  if (o)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasRequestsA2DP:(BOOL)p
{
  if (p)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasRequestsSniff:(BOOL)sniff
{
  if (sniff)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasRequestsPageScan:(BOOL)scan
{
  if (scan)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasRequestsInquiryScan:(BOOL)scan
{
  if (scan)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasRequestsPage:(BOOL)page
{
  if (page)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasRequestsInquiry:(BOOL)inquiry
{
  if (inquiry)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasRequestsBLE:(BOOL)e
{
  if (e)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasRequestsOther:(BOOL)other
{
  if (other)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasRequestsBLEScan:(BOOL)scan
{
  if (scan)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasRequestsMSS:(BOOL)s
{
  if (s)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasRequestsPARK:(BOOL)k
{
  if (k)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasBeaconLostCnt:(BOOL)cnt
{
  if (cnt)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (unint64_t)rxMPDUCountPerMCSAtIndex:(unint64_t)index
{
  p_rxMPDUCountPerMCSs = &self->_rxMPDUCountPerMCSs;
  count = self->_rxMPDUCountPerMCSs.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_rxMPDUCountPerMCSs->list[index];
}

- (unint64_t)txMPDUCountPerMCSAtIndex:(unint64_t)index
{
  p_txMPDUCountPerMCSs = &self->_txMPDUCountPerMCSs;
  count = self->_txMPDUCountPerMCSs.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_txMPDUCountPerMCSs->list[index];
}

- (void)setHasTimeTillResumeAccumulatedMsec:(BOOL)msec
{
  if (msec)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasResumeTimeAccumulatedMsec:(BOOL)msec
{
  if (msec)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasEnvelopeLowToHighAccumulatedMsec:(BOOL)msec
{
  if (msec)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasScoReservedSlotDenyCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasScoRetransmission1DenyCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasScoRetransmission2DenyCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasGuardTimeMicroseconds:(BOOL)microseconds
{
  if (microseconds)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasPsRequestTxCnt:(BOOL)cnt
{
  if (cnt)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasTxCTS2Self:(BOOL)self
{
  if (self)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_antennaRequests), @"antennaRequests"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_antennaGrants), @"antennaGrants"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wlanPreempted), @"wlanPreempted"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_psnullExceeded), @"psnullExceeded"}];
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_highUcodeLatency), @"highUcodeLatency"}];
  }

LABEL_8:
  antennaOwnership2BT = self->_antennaOwnership2BT;
  if (antennaOwnership2BT)
  {
    [dictionary setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](antennaOwnership2BT forKey:{"dictionaryRepresentation"), @"antennaOwnership2_BT"}];
  }

  antennaOwnership2WLAN = self->_antennaOwnership2WLAN;
  if (antennaOwnership2WLAN)
  {
    [dictionary setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](antennaOwnership2WLAN forKey:{"dictionaryRepresentation"), @"antennaOwnership2_WLAN"}];
  }

  enbledStateOn = self->_enbledStateOn;
  if (enbledStateOn)
  {
    [dictionary setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](enbledStateOn forKey:{"dictionaryRepresentation"), @"enbledState_On"}];
  }

  enbledStateOff = self->_enbledStateOff;
  if (enbledStateOff)
  {
    [dictionary setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](enbledStateOff forKey:{"dictionaryRepresentation"), @"enbledState_Off"}];
  }

  hybridStateOn = self->_hybridStateOn;
  if (hybridStateOn)
  {
    [dictionary setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](hybridStateOn forKey:{"dictionaryRepresentation"), @"hybridState_On"}];
  }

  hybridStateOff = self->_hybridStateOff;
  if (hybridStateOff)
  {
    [dictionary setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](hybridStateOff forKey:{"dictionaryRepresentation"), @"hybridState_Off"}];
  }

  tdmStateOn = self->_tdmStateOn;
  if (tdmStateOn)
  {
    [dictionary setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](tdmStateOn forKey:{"dictionaryRepresentation"), @"tdmState_On"}];
  }

  tdmStateOff = self->_tdmStateOff;
  if (tdmStateOff)
  {
    [dictionary setObject:-[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](tdmStateOff forKey:{"dictionaryRepresentation"), @"tdmState_Off"}];
  }

  v13 = self->_has;
  if ((*&v13 & 0x200) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsACL), @"requestsACL"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsSCO), @"requestsSCO"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestseSCO), @"requestseSCO"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsA2DP), @"requestsA2DP"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsSniff), @"requestsSniff"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsPageScan), @"requestsPageScan"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsInquiryScan), @"requestsInquiryScan"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsPage), @"requestsPage"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsInquiry), @"requestsInquiry"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsBLE), @"requestsBLE"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsOther), @"requestsOther"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsBLEScan), @"requestsBLEScan"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsMSS), @"requestsMSS"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestsPARK), @"requestsPARK"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_39:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_beaconLostCnt), @"beaconLostCnt"}];
  }

LABEL_40:
  [dictionary setObject:PBRepeatedUInt64NSArray() forKey:@"rxMPDUCountPerMCS"];
  [dictionary setObject:PBRepeatedUInt64NSArray() forKey:@"txMPDUCountPerMCS"];
  v14 = self->_has;
  if ((*&v14 & 0x4000000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeTillResumeAccumulatedMsec), @"timeTillResumeAccumulatedMsec"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resumeTimeAccumulatedMsec), @"resumeTimeAccumulatedMsec"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_envelopeLowToHighAccumulatedMsec), @"envelopeLowToHighAccumulatedMsec"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_scoReservedSlotDenyCount), @"scoReservedSlotDenyCount"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_scoRetransmission1DenyCount), @"scoRetransmission1DenyCount"}];
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
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_scoRetransmission2DenyCount), @"scoRetransmission2DenyCount"}];
  v14 = self->_has;
  if ((*&v14 & 0x10) == 0)
  {
LABEL_47:
    if ((*&v14 & 0x40) == 0)
    {
      goto LABEL_48;
    }

LABEL_79:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_psRequestTxCnt), @"psRequestTxCnt"}];
    if ((*&self->_has & 0x10000000) == 0)
    {
      return dictionary;
    }

    goto LABEL_49;
  }

LABEL_78:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_guardTimeMicroseconds), @"guardTimeMicroseconds"}];
  v14 = self->_has;
  if ((*&v14 & 0x40) != 0)
  {
    goto LABEL_79;
  }

LABEL_48:
  if ((*&v14 & 0x10000000) != 0)
  {
LABEL_49:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_txCTS2Self), @"txCTS2Self"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x8000000) != 0)
  {
    *(to + 34) = self->_timestamp;
    *(to + 90) |= 0x8000000u;
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

  *(to + 8) = self->_antennaRequests;
  *(to + 90) |= 2u;
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
  *(to + 7) = self->_antennaGrants;
  *(to + 90) |= 1u;
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
  *(to + 36) = self->_wlanPreempted;
  *(to + 90) |= 0x20000000u;
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
  *(to + 14) = self->_psnullExceeded;
  *(to + 90) |= 0x80u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    *(to + 12) = self->_highUcodeLatency;
    *(to + 90) |= 0x20u;
  }

LABEL_8:
  if (self->_antennaOwnership2BT)
  {
    [to setAntennaOwnership2BT:?];
  }

  if (self->_antennaOwnership2WLAN)
  {
    [to setAntennaOwnership2WLAN:?];
  }

  if (self->_enbledStateOn)
  {
    [to setEnbledStateOn:?];
  }

  if (self->_enbledStateOff)
  {
    [to setEnbledStateOff:?];
  }

  if (self->_hybridStateOn)
  {
    [to setHybridStateOn:?];
  }

  if (self->_hybridStateOff)
  {
    [to setHybridStateOff:?];
  }

  if (self->_tdmStateOn)
  {
    [to setTdmStateOn:?];
  }

  if (self->_tdmStateOff)
  {
    [to setTdmStateOff:?];
  }

  v6 = self->_has;
  if ((*&v6 & 0x200) != 0)
  {
    *(to + 16) = self->_requestsACL;
    *(to + 90) |= 0x200u;
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

  *(to + 26) = self->_requestsSCO;
  *(to + 90) |= 0x80000u;
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
  *(to + 28) = self->_requestseSCO;
  *(to + 90) |= 0x200000u;
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
  *(to + 15) = self->_requestsA2DP;
  *(to + 90) |= 0x100u;
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
  *(to + 27) = self->_requestsSniff;
  *(to + 90) |= 0x100000u;
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
  *(to + 25) = self->_requestsPageScan;
  *(to + 90) |= 0x40000u;
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
  *(to + 20) = self->_requestsInquiryScan;
  *(to + 90) |= 0x2000u;
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
  *(to + 24) = self->_requestsPage;
  *(to + 90) |= 0x20000u;
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
  *(to + 19) = self->_requestsInquiry;
  *(to + 90) |= 0x1000u;
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
  *(to + 17) = self->_requestsBLE;
  *(to + 90) |= 0x400u;
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
  *(to + 22) = self->_requestsOther;
  *(to + 90) |= 0x8000u;
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
  *(to + 18) = self->_requestsBLEScan;
  *(to + 90) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_37:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_38;
    }

LABEL_78:
    *(to + 23) = self->_requestsPARK;
    *(to + 90) |= 0x10000u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_77:
  *(to + 21) = self->_requestsMSS;
  *(to + 90) |= 0x4000u;
  v6 = self->_has;
  if ((*&v6 & 0x10000) != 0)
  {
    goto LABEL_78;
  }

LABEL_38:
  if ((*&v6 & 4) != 0)
  {
LABEL_39:
    *(to + 9) = self->_beaconLostCnt;
    *(to + 90) |= 4u;
  }

LABEL_40:
  if ([(AWDWiFiMetricsManagerBTCoexStats *)self rxMPDUCountPerMCSsCount])
  {
    [to clearRxMPDUCountPerMCSs];
    rxMPDUCountPerMCSsCount = [(AWDWiFiMetricsManagerBTCoexStats *)self rxMPDUCountPerMCSsCount];
    if (rxMPDUCountPerMCSsCount)
    {
      v8 = rxMPDUCountPerMCSsCount;
      for (i = 0; i != v8; ++i)
      {
        [to addRxMPDUCountPerMCS:{-[AWDWiFiMetricsManagerBTCoexStats rxMPDUCountPerMCSAtIndex:](self, "rxMPDUCountPerMCSAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiMetricsManagerBTCoexStats *)self txMPDUCountPerMCSsCount])
  {
    [to clearTxMPDUCountPerMCSs];
    txMPDUCountPerMCSsCount = [(AWDWiFiMetricsManagerBTCoexStats *)self txMPDUCountPerMCSsCount];
    if (txMPDUCountPerMCSsCount)
    {
      v11 = txMPDUCountPerMCSsCount;
      for (j = 0; j != v11; ++j)
      {
        [to addTxMPDUCountPerMCS:{-[AWDWiFiMetricsManagerBTCoexStats txMPDUCountPerMCSAtIndex:](self, "txMPDUCountPerMCSAtIndex:", j)}];
      }
    }
  }

  v13 = self->_has;
  if ((*&v13 & 0x4000000) != 0)
  {
    *(to + 33) = self->_timeTillResumeAccumulatedMsec;
    *(to + 90) |= 0x4000000u;
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

  *(to + 29) = self->_resumeTimeAccumulatedMsec;
  *(to + 90) |= 0x400000u;
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
  *(to + 10) = self->_envelopeLowToHighAccumulatedMsec;
  *(to + 90) |= 8u;
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
  *(to + 30) = self->_scoReservedSlotDenyCount;
  *(to + 90) |= 0x800000u;
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
  *(to + 31) = self->_scoRetransmission1DenyCount;
  *(to + 90) |= 0x1000000u;
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
  *(to + 32) = self->_scoRetransmission2DenyCount;
  *(to + 90) |= 0x2000000u;
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
  *(to + 11) = self->_guardTimeMicroseconds;
  *(to + 90) |= 0x10u;
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
  *(to + 13) = self->_psRequestTxCnt;
  *(to + 90) |= 0x40u;
  if ((*&self->_has & 0x10000000) == 0)
  {
    return;
  }

LABEL_57:
  *(to + 35) = self->_txCTS2Self;
  *(to + 90) |= 0x10000000u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  *(v6 + 296) = [(AWDWiFiMetricsManagerStateMachine *)self->_antennaOwnership2BT copyWithZone:zone];
  *(v6 + 304) = [(AWDWiFiMetricsManagerStateMachine *)self->_antennaOwnership2WLAN copyWithZone:zone];

  *(v6 + 320) = [(AWDWiFiMetricsManagerStateMachine *)self->_enbledStateOn copyWithZone:zone];
  *(v6 + 312) = [(AWDWiFiMetricsManagerStateMachine *)self->_enbledStateOff copyWithZone:zone];

  *(v6 + 336) = [(AWDWiFiMetricsManagerStateMachine *)self->_hybridStateOn copyWithZone:zone];
  *(v6 + 328) = [(AWDWiFiMetricsManagerStateMachine *)self->_hybridStateOff copyWithZone:zone];

  *(v6 + 352) = [(AWDWiFiMetricsManagerStateMachine *)self->_tdmStateOn copyWithZone:zone];
  *(v6 + 344) = [(AWDWiFiMetricsManagerStateMachine *)self->_tdmStateOff copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    has = self->_has;
    v7 = *(equal + 90);
    if ((*&has & 0x8000000) != 0)
    {
      if ((v7 & 0x8000000) == 0 || self->_timestamp != *(equal + 34))
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
      if ((v7 & 2) == 0 || self->_antennaRequests != *(equal + 8))
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
      if ((v7 & 1) == 0 || self->_antennaGrants != *(equal + 7))
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
      if ((v7 & 0x20000000) == 0 || self->_wlanPreempted != *(equal + 36))
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
      if ((v7 & 0x80) == 0 || self->_psnullExceeded != *(equal + 14))
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
      if ((v7 & 0x20) == 0 || self->_highUcodeLatency != *(equal + 12))
      {
        goto LABEL_169;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_169;
    }

    antennaOwnership2BT = self->_antennaOwnership2BT;
    if (!(antennaOwnership2BT | *(equal + 37)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)antennaOwnership2BT isEqual:?]) != 0)
    {
      antennaOwnership2WLAN = self->_antennaOwnership2WLAN;
      if (!(antennaOwnership2WLAN | *(equal + 38)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)antennaOwnership2WLAN isEqual:?]) != 0)
      {
        enbledStateOn = self->_enbledStateOn;
        if (!(enbledStateOn | *(equal + 40)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)enbledStateOn isEqual:?]) != 0)
        {
          enbledStateOff = self->_enbledStateOff;
          if (!(enbledStateOff | *(equal + 39)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)enbledStateOff isEqual:?]) != 0)
          {
            hybridStateOn = self->_hybridStateOn;
            if (!(hybridStateOn | *(equal + 42)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)hybridStateOn isEqual:?]) != 0)
            {
              hybridStateOff = self->_hybridStateOff;
              if (!(hybridStateOff | *(equal + 41)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)hybridStateOff isEqual:?]) != 0)
              {
                tdmStateOn = self->_tdmStateOn;
                if (!(tdmStateOn | *(equal + 44)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)tdmStateOn isEqual:?]) != 0)
                {
                  tdmStateOff = self->_tdmStateOff;
                  if (!(tdmStateOff | *(equal + 43)) || (IsEqual = [(AWDWiFiMetricsManagerStateMachine *)tdmStateOff isEqual:?]) != 0)
                  {
                    v16 = self->_has;
                    v17 = *(equal + 90);
                    if ((*&v16 & 0x200) != 0)
                    {
                      if ((v17 & 0x200) == 0 || self->_requestsACL != *(equal + 16))
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
                      if ((v17 & 0x80000) == 0 || self->_requestsSCO != *(equal + 26))
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
                      if ((v17 & 0x200000) == 0 || self->_requestseSCO != *(equal + 28))
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
                      if ((v17 & 0x100) == 0 || self->_requestsA2DP != *(equal + 15))
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
                      if ((v17 & 0x100000) == 0 || self->_requestsSniff != *(equal + 27))
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
                      if ((v17 & 0x40000) == 0 || self->_requestsPageScan != *(equal + 25))
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
                      if ((v17 & 0x2000) == 0 || self->_requestsInquiryScan != *(equal + 20))
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
                      if ((v17 & 0x20000) == 0 || self->_requestsPage != *(equal + 24))
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
                      if ((v17 & 0x1000) == 0 || self->_requestsInquiry != *(equal + 19))
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
                      if ((v17 & 0x400) == 0 || self->_requestsBLE != *(equal + 17))
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
                      if ((v17 & 0x8000) == 0 || self->_requestsOther != *(equal + 22))
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
                      if ((v17 & 0x800) == 0 || self->_requestsBLEScan != *(equal + 18))
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
                      if ((v17 & 0x4000) == 0 || self->_requestsMSS != *(equal + 21))
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
                      if ((v17 & 0x10000) == 0 || self->_requestsPARK != *(equal + 23))
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
                      if ((v17 & 4) == 0 || self->_beaconLostCnt != *(equal + 9))
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
                        v19 = *(equal + 90);
                        if ((*&v18 & 0x4000000) != 0)
                        {
                          if ((v19 & 0x4000000) == 0 || self->_timeTillResumeAccumulatedMsec != *(equal + 33))
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
                          if ((v19 & 0x400000) == 0 || self->_resumeTimeAccumulatedMsec != *(equal + 29))
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
                          if ((v19 & 8) == 0 || self->_envelopeLowToHighAccumulatedMsec != *(equal + 10))
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
                          if ((v19 & 0x800000) == 0 || self->_scoReservedSlotDenyCount != *(equal + 30))
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
                          if ((v19 & 0x1000000) == 0 || self->_scoRetransmission1DenyCount != *(equal + 31))
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
                          if ((v19 & 0x2000000) == 0 || self->_scoRetransmission2DenyCount != *(equal + 32))
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
                          if ((v19 & 0x10) == 0 || self->_guardTimeMicroseconds != *(equal + 11))
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
                          if ((v19 & 0x40) == 0 || self->_psRequestTxCnt != *(equal + 13))
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
                          if ((v19 & 0x10000000) == 0 || self->_txCTS2Self != *(equal + 35))
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

- (void)mergeFrom:(id)from
{
  v5 = *(from + 90);
  if ((v5 & 0x8000000) != 0)
  {
    self->_timestamp = *(from + 34);
    *&self->_has |= 0x8000000u;
    v5 = *(from + 90);
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

  self->_antennaRequests = *(from + 8);
  *&self->_has |= 2u;
  v5 = *(from + 90);
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
  self->_antennaGrants = *(from + 7);
  *&self->_has |= 1u;
  v5 = *(from + 90);
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
  self->_wlanPreempted = *(from + 36);
  *&self->_has |= 0x20000000u;
  v5 = *(from + 90);
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
  self->_psnullExceeded = *(from + 14);
  *&self->_has |= 0x80u;
  if ((*(from + 90) & 0x20) != 0)
  {
LABEL_7:
    self->_highUcodeLatency = *(from + 12);
    *&self->_has |= 0x20u;
  }

LABEL_8:
  antennaOwnership2BT = self->_antennaOwnership2BT;
  v7 = *(from + 37);
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
  v9 = *(from + 38);
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
  v11 = *(from + 40);
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
  v13 = *(from + 39);
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
  v15 = *(from + 42);
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
  v17 = *(from + 41);
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
  v19 = *(from + 44);
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
  v21 = *(from + 43);
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

  v22 = *(from + 90);
  if ((v22 & 0x200) != 0)
  {
    self->_requestsACL = *(from + 16);
    *&self->_has |= 0x200u;
    v22 = *(from + 90);
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

  self->_requestsSCO = *(from + 26);
  *&self->_has |= 0x80000u;
  v22 = *(from + 90);
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
  self->_requestseSCO = *(from + 28);
  *&self->_has |= 0x200000u;
  v22 = *(from + 90);
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
  self->_requestsA2DP = *(from + 15);
  *&self->_has |= 0x100u;
  v22 = *(from + 90);
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
  self->_requestsSniff = *(from + 27);
  *&self->_has |= 0x100000u;
  v22 = *(from + 90);
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
  self->_requestsPageScan = *(from + 25);
  *&self->_has |= 0x40000u;
  v22 = *(from + 90);
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
  self->_requestsInquiryScan = *(from + 20);
  *&self->_has |= 0x2000u;
  v22 = *(from + 90);
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
  self->_requestsPage = *(from + 24);
  *&self->_has |= 0x20000u;
  v22 = *(from + 90);
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
  self->_requestsInquiry = *(from + 19);
  *&self->_has |= 0x1000u;
  v22 = *(from + 90);
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
  self->_requestsBLE = *(from + 17);
  *&self->_has |= 0x400u;
  v22 = *(from + 90);
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
  self->_requestsOther = *(from + 22);
  *&self->_has |= 0x8000u;
  v22 = *(from + 90);
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
  self->_requestsBLEScan = *(from + 18);
  *&self->_has |= 0x800u;
  v22 = *(from + 90);
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
  self->_requestsMSS = *(from + 21);
  *&self->_has |= 0x4000u;
  v22 = *(from + 90);
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
  self->_requestsPARK = *(from + 23);
  *&self->_has |= 0x10000u;
  if ((*(from + 90) & 4) != 0)
  {
LABEL_69:
    self->_beaconLostCnt = *(from + 9);
    *&self->_has |= 4u;
  }

LABEL_70:
  rxMPDUCountPerMCSsCount = [from rxMPDUCountPerMCSsCount];
  if (rxMPDUCountPerMCSsCount)
  {
    v24 = rxMPDUCountPerMCSsCount;
    for (i = 0; i != v24; ++i)
    {
      -[AWDWiFiMetricsManagerBTCoexStats addRxMPDUCountPerMCS:](self, "addRxMPDUCountPerMCS:", [from rxMPDUCountPerMCSAtIndex:i]);
    }
  }

  txMPDUCountPerMCSsCount = [from txMPDUCountPerMCSsCount];
  if (txMPDUCountPerMCSsCount)
  {
    v27 = txMPDUCountPerMCSsCount;
    for (j = 0; j != v27; ++j)
    {
      -[AWDWiFiMetricsManagerBTCoexStats addTxMPDUCountPerMCS:](self, "addTxMPDUCountPerMCS:", [from txMPDUCountPerMCSAtIndex:j]);
    }
  }

  v29 = *(from + 90);
  if ((v29 & 0x4000000) != 0)
  {
    self->_timeTillResumeAccumulatedMsec = *(from + 33);
    *&self->_has |= 0x4000000u;
    v29 = *(from + 90);
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

  self->_resumeTimeAccumulatedMsec = *(from + 29);
  *&self->_has |= 0x400000u;
  v29 = *(from + 90);
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
  self->_envelopeLowToHighAccumulatedMsec = *(from + 10);
  *&self->_has |= 8u;
  v29 = *(from + 90);
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
  self->_scoReservedSlotDenyCount = *(from + 30);
  *&self->_has |= 0x800000u;
  v29 = *(from + 90);
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
  self->_scoRetransmission1DenyCount = *(from + 31);
  *&self->_has |= 0x1000000u;
  v29 = *(from + 90);
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
  self->_scoRetransmission2DenyCount = *(from + 32);
  *&self->_has |= 0x2000000u;
  v29 = *(from + 90);
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
  self->_guardTimeMicroseconds = *(from + 11);
  *&self->_has |= 0x10u;
  v29 = *(from + 90);
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
  self->_psRequestTxCnt = *(from + 13);
  *&self->_has |= 0x40u;
  if ((*(from + 90) & 0x10000000) == 0)
  {
    return;
  }

LABEL_85:
  self->_txCTS2Self = *(from + 35);
  *&self->_has |= 0x10000000u;
}

@end