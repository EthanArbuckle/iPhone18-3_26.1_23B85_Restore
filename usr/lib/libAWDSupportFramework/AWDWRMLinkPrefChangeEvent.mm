@interface AWDWRMLinkPrefChangeEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCcStatusUpdate:(id)update;
- (int)StringAsMotionState:(id)state;
- (int)ccStatusUpdate;
- (int)motionState;
- (unint64_t)hash;
- (unsigned)changeReasonAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasBcnPer:(BOOL)per;
- (void)setHasBssLoad:(BOOL)load;
- (void)setHasCallStatus:(BOOL)status;
- (void)setHasCaptiveNetworks:(BOOL)networks;
- (void)setHasCcStatusUpdate:(BOOL)update;
- (void)setHasCca:(BOOL)cca;
- (void)setHasCellRSRP:(BOOL)p;
- (void)setHasCellSINR:(BOOL)r;
- (void)setHasChangeDirection:(BOOL)direction;
- (void)setHasDataAppStatus:(BOOL)status;
- (void)setHasDataLQM:(BOOL)m;
- (void)setHasDataLinkPref:(BOOL)pref;
- (void)setHasDecisionVIBE:(BOOL)e;
- (void)setHasDecisionVO:(BOOL)o;
- (void)setHasExpectedThroughputVIBE:(BOOL)e;
- (void)setHasExpectedThroughputVO:(BOOL)o;
- (void)setHasLqmScoreWifi:(BOOL)wifi;
- (void)setHasMotionState:(BOOL)state;
- (void)setHasPacketLifetimeVIBE:(BOOL)e;
- (void)setHasPkgLifeTimeVO:(BOOL)o;
- (void)setHasPktLossRateVO:(BOOL)o;
- (void)setHasQbssLoad:(BOOL)load;
- (void)setHasServiceType:(BOOL)type;
- (void)setHasServiceTypeOfLastGrant:(BOOL)grant;
- (void)setHasSignalBar:(BOOL)bar;
- (void)setHasStationCount:(BOOL)count;
- (void)setHasTimeToLastDecision:(BOOL)decision;
- (void)setHasTimeToLastReverseDecision:(BOOL)decision;
- (void)setHasTimeToLastReverseGrant:(BOOL)grant;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasVoiceLQM:(BOOL)m;
- (void)setHasVoiceLinkPref:(BOOL)pref;
- (void)setHasWifiEstimatedBandwitdh:(BOOL)bandwitdh;
- (void)setHasWifiRssi:(BOOL)rssi;
- (void)setHasWifiRxPhyRate:(BOOL)rate;
- (void)setHasWifiRxRetry:(BOOL)retry;
- (void)setHasWifiSNR:(BOOL)r;
- (void)setHasWifiTxPER:(BOOL)r;
- (void)setHasWifiTxPhyRate:(BOOL)rate;
- (void)writeTo:(id)to;
@end

@implementation AWDWRMLinkPrefChangeEvent

- (void)dealloc
{
  [(AWDWRMLinkPrefChangeEvent *)self setAppType:0];
  PBRepeatedUInt32Clear();
  [(AWDWRMLinkPrefChangeEvent *)self setRatType:0];
  v3.receiver = self;
  v3.super_class = AWDWRMLinkPrefChangeEvent;
  [(AWDWRMLinkPrefChangeEvent *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  v3 = 2;
  if (!timestamp)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasChangeDirection:(BOOL)direction
{
  v3 = 2048;
  if (!direction)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasServiceType:(BOOL)type
{
  v3 = 0x2000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasVoiceLinkPref:(BOOL)pref
{
  v3 = 0x200000000;
  if (!pref)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasDataLinkPref:(BOOL)pref
{
  v3 = 0x4000;
  if (!pref)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasCallStatus:(BOOL)status
{
  v3 = 64;
  if (!status)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasDataAppStatus:(BOOL)status
{
  v3 = 4096;
  if (!status)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (int)motionState
{
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    return self->_motionState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMotionState:(BOOL)state
{
  v3 = 0x100000;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (int)StringAsMotionState:(id)state
{
  if ([state isEqualToString:@"STATIONARY"])
  {
    return 0;
  }

  if ([state isEqualToString:@"WALKING"])
  {
    return 1;
  }

  if ([state isEqualToString:@"RUNNING"])
  {
    return 2;
  }

  if ([state isEqualToString:@"VEHICULAR"])
  {
    return 3;
  }

  return 0;
}

- (unsigned)changeReasonAtIndex:(unint64_t)index
{
  p_changeReasons = &self->_changeReasons;
  count = self->_changeReasons.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_changeReasons->list[index];
}

- (void)setHasWifiRssi:(BOOL)rssi
{
  v3 = 4;
  if (!rssi)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasWifiTxPER:(BOOL)r
{
  v3 = 0x2000000000;
  if (!r)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasWifiSNR:(BOOL)r
{
  v3 = 8;
  if (!r)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasCaptiveNetworks:(BOOL)networks
{
  v3 = 0x8000000000;
  if (!networks)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasWifiRxRetry:(BOOL)retry
{
  v3 = 0x1000000000;
  if (!retry)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasWifiEstimatedBandwitdh:(BOOL)bandwitdh
{
  v3 = 0x400000000;
  if (!bandwitdh)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasWifiTxPhyRate:(BOOL)rate
{
  v3 = 0x4000000000;
  if (!rate)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasWifiRxPhyRate:(BOOL)rate
{
  v3 = 0x800000000;
  if (!rate)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasQbssLoad:(BOOL)load
{
  v3 = 0x1000000;
  if (!load)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasCca:(BOOL)cca
{
  v3 = 256;
  if (!cca)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasStationCount:(BOOL)count
{
  v3 = 0x10000000;
  if (!count)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasBcnPer:(BOOL)per
{
  v3 = 16;
  if (!per)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasLqmScoreWifi:(BOOL)wifi
{
  v3 = 0x80000;
  if (!wifi)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasExpectedThroughputVO:(BOOL)o
{
  v3 = 0x40000;
  if (!o)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasPkgLifeTimeVO:(BOOL)o
{
  v3 = 0x400000;
  if (!o)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasPktLossRateVO:(BOOL)o
{
  v3 = 0x800000;
  if (!o)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasDecisionVO:(BOOL)o
{
  v3 = 0x10000;
  if (!o)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasExpectedThroughputVIBE:(BOOL)e
{
  v3 = 0x20000;
  if (!e)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasPacketLifetimeVIBE:(BOOL)e
{
  v3 = 0x200000;
  if (!e)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasDecisionVIBE:(BOOL)e
{
  v3 = 0x8000;
  if (!e)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasDataLQM:(BOOL)m
{
  v3 = 0x2000;
  if (!m)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasBssLoad:(BOOL)load
{
  v3 = 32;
  if (!load)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasVoiceLQM:(BOOL)m
{
  v3 = 0x100000000;
  if (!m)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasSignalBar:(BOOL)bar
{
  v3 = 0x8000000;
  if (!bar)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasCellRSRP:(BOOL)p
{
  v3 = 512;
  if (!p)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasCellSINR:(BOOL)r
{
  v3 = 1024;
  if (!r)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (int)ccStatusUpdate
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_ccStatusUpdate;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCcStatusUpdate:(BOOL)update
{
  v3 = 128;
  if (!update)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (int)StringAsCcStatusUpdate:(id)update
{
  if ([update isEqualToString:@"POSITIVE"])
  {
    return 0;
  }

  if ([update isEqualToString:@"NEGATIVE"])
  {
    return 1;
  }

  if ([update isEqualToString:@"UNKOWN"])
  {
    return 2;
  }

  return 0;
}

- (void)setHasTimeToLastDecision:(BOOL)decision
{
  v3 = 0x20000000;
  if (!decision)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasTimeToLastReverseDecision:(BOOL)decision
{
  v3 = 0x40000000;
  if (!decision)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasTimeToLastReverseGrant:(BOOL)grant
{
  v3 = 0x80000000;
  if (!grant)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasServiceTypeOfLastGrant:(BOOL)grant
{
  v3 = 0x4000000;
  if (!grant)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWRMLinkPrefChangeEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWRMLinkPrefChangeEvent description](&v3, sel_description), -[AWDWRMLinkPrefChangeEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_changeDirection), @"changeDirection"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_serviceType), @"serviceType"}];
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_voiceLinkPref), @"voiceLinkPref"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dataLinkPref), @"dataLinkPref"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_callStatus), @"callStatus"}];
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_8:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_dataAppStatus), @"dataAppStatus"}];
  }

LABEL_9:
  appType = self->_appType;
  if (appType)
  {
    [dictionary setObject:appType forKey:@"appType"];
  }

  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    motionState = self->_motionState;
    if (motionState >= 4)
    {
      v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_motionState];
    }

    else
    {
      v7 = off_29EE33340[motionState];
    }

    [dictionary setObject:v7 forKey:@"motionState"];
  }

  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"changeReason"];
  v8 = self->_has;
  if ((*&v8 & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_wifiRssi), @"wifiRssi"}];
    v8 = self->_has;
    if ((*&v8 & 0x2000000000) == 0)
    {
LABEL_25:
      if ((*&v8 & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_62;
    }
  }

  else if ((*&v8 & 0x2000000000) == 0)
  {
    goto LABEL_25;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiTxPER), @"wifiTxPER"}];
  v8 = self->_has;
  if ((*&v8 & 8) == 0)
  {
LABEL_26:
    if ((*&v8 & 0x8000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_wifiSNR), @"wifiSNR"}];
  v8 = self->_has;
  if ((*&v8 & 0x8000000000) == 0)
  {
LABEL_27:
    if ((*&v8 & 0x1000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_captiveNetworks), @"captiveNetworks"}];
  v8 = self->_has;
  if ((*&v8 & 0x1000000000) == 0)
  {
LABEL_28:
    if ((*&v8 & 0x400000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiRxRetry), @"wifiRxRetry"}];
  v8 = self->_has;
  if ((*&v8 & 0x400000000) == 0)
  {
LABEL_29:
    if ((*&v8 & 0x4000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiEstimatedBandwitdh), @"wifiEstimatedBandwitdh"}];
  v8 = self->_has;
  if ((*&v8 & 0x4000000000) == 0)
  {
LABEL_30:
    if ((*&v8 & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiTxPhyRate), @"wifiTxPhyRate"}];
  v8 = self->_has;
  if ((*&v8 & 0x800000000) == 0)
  {
LABEL_31:
    if ((*&v8 & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wifiRxPhyRate), @"wifiRxPhyRate"}];
  v8 = self->_has;
  if ((*&v8 & 0x1000000) == 0)
  {
LABEL_32:
    if ((*&v8 & 0x100) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_qbssLoad), @"qbssLoad"}];
  v8 = self->_has;
  if ((*&v8 & 0x100) == 0)
  {
LABEL_33:
    if ((*&v8 & 0x10000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_69:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cca), @"cca"}];
  v8 = self->_has;
  if ((*&v8 & 0x10000000) == 0)
  {
LABEL_34:
    if ((*&v8 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_71;
  }

LABEL_70:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stationCount), @"stationCount"}];
  v8 = self->_has;
  if ((*&v8 & 0x10) == 0)
  {
LABEL_35:
    if ((*&v8 & 0x80000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_72;
  }

LABEL_71:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bcnPer), @"bcnPer"}];
  v8 = self->_has;
  if ((*&v8 & 0x80000) == 0)
  {
LABEL_36:
    if ((*&v8 & 0x40000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_73;
  }

LABEL_72:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_lqmScoreWifi), @"lqmScoreWifi"}];
  v8 = self->_has;
  if ((*&v8 & 0x40000) == 0)
  {
LABEL_37:
    if ((*&v8 & 0x400000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_74;
  }

LABEL_73:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_expectedThroughputVO), @"expectedThroughputVO"}];
  v8 = self->_has;
  if ((*&v8 & 0x400000) == 0)
  {
LABEL_38:
    if ((*&v8 & 0x800000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_75;
  }

LABEL_74:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pkgLifeTimeVO), @"pkgLifeTimeVO"}];
  v8 = self->_has;
  if ((*&v8 & 0x800000) == 0)
  {
LABEL_39:
    if ((*&v8 & 0x10000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_76;
  }

LABEL_75:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_pktLossRateVO), @"pktLossRateVO"}];
  v8 = self->_has;
  if ((*&v8 & 0x10000) == 0)
  {
LABEL_40:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_77;
  }

LABEL_76:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_decisionVO), @"decisionVO"}];
  v8 = self->_has;
  if ((*&v8 & 0x20000) == 0)
  {
LABEL_41:
    if ((*&v8 & 0x200000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_78;
  }

LABEL_77:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_expectedThroughputVIBE), @"expectedThroughputVI_BE"}];
  v8 = self->_has;
  if ((*&v8 & 0x200000) == 0)
  {
LABEL_42:
    if ((*&v8 & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_79;
  }

LABEL_78:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_packetLifetimeVIBE), @"packetLifetimeVI_BE"}];
  v8 = self->_has;
  if ((*&v8 & 0x8000) == 0)
  {
LABEL_43:
    if ((*&v8 & 0x2000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_80;
  }

LABEL_79:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_decisionVIBE), @"decisionVI_BE"}];
  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_44:
    if ((*&v8 & 0x20) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_81;
  }

LABEL_80:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_dataLQM), @"dataLQM"}];
  v8 = self->_has;
  if ((*&v8 & 0x20) == 0)
  {
LABEL_45:
    if ((*&v8 & 0x100000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_82;
  }

LABEL_81:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bssLoad), @"bssLoad"}];
  v8 = self->_has;
  if ((*&v8 & 0x100000000) == 0)
  {
LABEL_46:
    if ((*&v8 & 0x8000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_82:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_voiceLQM), @"voiceLQM"}];
  if ((*&self->_has & 0x8000000) != 0)
  {
LABEL_47:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_signalBar), @"signalBar"}];
  }

LABEL_48:
  ratType = self->_ratType;
  if (ratType)
  {
    [dictionary setObject:ratType forKey:@"ratType"];
  }

  v10 = self->_has;
  if ((*&v10 & 0x200) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellRSRP), @"cellRSRP"}];
    v10 = self->_has;
    if ((*&v10 & 0x400) == 0)
    {
LABEL_52:
      if ((*&v10 & 0x80) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_86;
    }
  }

  else if ((*&v10 & 0x400) == 0)
  {
    goto LABEL_52;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cellSINR), @"cellSINR"}];
  v10 = self->_has;
  if ((*&v10 & 0x80) == 0)
  {
LABEL_53:
    if ((*&v10 & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_90;
  }

LABEL_86:
  ccStatusUpdate = self->_ccStatusUpdate;
  if (ccStatusUpdate >= 3)
  {
    v13 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_ccStatusUpdate];
  }

  else
  {
    v13 = off_29EE33360[ccStatusUpdate];
  }

  [dictionary setObject:v13 forKey:@"ccStatusUpdate"];
  v10 = self->_has;
  if ((*&v10 & 1) == 0)
  {
LABEL_54:
    if ((*&v10 & 0x20000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_91;
  }

LABEL_90:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_ccStatusUpdateDelay), @"ccStatusUpdateDelay"}];
  v10 = self->_has;
  if ((*&v10 & 0x20000000) == 0)
  {
LABEL_55:
    if ((*&v10 & 0x40000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_92;
  }

LABEL_91:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_timeToLastDecision), @"timeToLastDecision"}];
  v10 = self->_has;
  if ((*&v10 & 0x40000000) == 0)
  {
LABEL_56:
    if ((*&v10 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

LABEL_93:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_timeToLastReverseGrant), @"timeToLastReverseGrant"}];
    if ((*&self->_has & 0x4000000) == 0)
    {
      return dictionary;
    }

    goto LABEL_58;
  }

LABEL_92:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_timeToLastReverseDecision), @"timeToLastReverseDecision"}];
  v10 = self->_has;
  if ((*&v10 & 0x80000000) != 0)
  {
    goto LABEL_93;
  }

LABEL_57:
  if ((*&v10 & 0x4000000) != 0)
  {
LABEL_58:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_serviceTypeOfLastGrant), @"serviceTypeOfLastGrant"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_54;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  changeDirection = self->_changeDirection;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_54:
  serviceType = self->_serviceType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_55:
  voiceLinkPref = self->_voiceLinkPref;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  dataLinkPref = self->_dataLinkPref;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_57:
  callStatus = self->_callStatus;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_8:
    dataAppStatus = self->_dataAppStatus;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
  if (self->_appType)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    motionState = self->_motionState;
    PBDataWriterWriteInt32Field();
  }

  if (self->_changeReasons.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_changeReasons.list[v7];
      PBDataWriterWriteUint32Field();
      ++v7;
    }

    while (v7 < self->_changeReasons.count);
  }

  v9 = self->_has;
  if ((*&v9 & 4) != 0)
  {
    wifiRssi = self->_wifiRssi;
    PBDataWriterWriteSint64Field();
    v9 = self->_has;
    if ((*&v9 & 0x2000000000) == 0)
    {
LABEL_18:
      if ((*&v9 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_61;
    }
  }

  else if ((*&v9 & 0x2000000000) == 0)
  {
    goto LABEL_18;
  }

  wifiTxPER = self->_wifiTxPER;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 8) == 0)
  {
LABEL_19:
    if ((*&v9 & 0x8000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_62;
  }

LABEL_61:
  wifiSNR = self->_wifiSNR;
  PBDataWriterWriteSint64Field();
  v9 = self->_has;
  if ((*&v9 & 0x8000000000) == 0)
  {
LABEL_20:
    if ((*&v9 & 0x1000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_63;
  }

LABEL_62:
  captiveNetworks = self->_captiveNetworks;
  PBDataWriterWriteBOOLField();
  v9 = self->_has;
  if ((*&v9 & 0x1000000000) == 0)
  {
LABEL_21:
    if ((*&v9 & 0x400000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_64;
  }

LABEL_63:
  wifiRxRetry = self->_wifiRxRetry;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x400000000) == 0)
  {
LABEL_22:
    if ((*&v9 & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_65;
  }

LABEL_64:
  wifiEstimatedBandwitdh = self->_wifiEstimatedBandwitdh;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x4000000000) == 0)
  {
LABEL_23:
    if ((*&v9 & 0x800000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_66;
  }

LABEL_65:
  wifiTxPhyRate = self->_wifiTxPhyRate;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x800000000) == 0)
  {
LABEL_24:
    if ((*&v9 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_67;
  }

LABEL_66:
  wifiRxPhyRate = self->_wifiRxPhyRate;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x1000000) == 0)
  {
LABEL_25:
    if ((*&v9 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_68;
  }

LABEL_67:
  qbssLoad = self->_qbssLoad;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x100) == 0)
  {
LABEL_26:
    if ((*&v9 & 0x10000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_69;
  }

LABEL_68:
  cca = self->_cca;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x10000000) == 0)
  {
LABEL_27:
    if ((*&v9 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_70;
  }

LABEL_69:
  stationCount = self->_stationCount;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x10) == 0)
  {
LABEL_28:
    if ((*&v9 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_71;
  }

LABEL_70:
  bcnPer = self->_bcnPer;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x80000) == 0)
  {
LABEL_29:
    if ((*&v9 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_72;
  }

LABEL_71:
  lqmScoreWifi = self->_lqmScoreWifi;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x40000) == 0)
  {
LABEL_30:
    if ((*&v9 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_73;
  }

LABEL_72:
  expectedThroughputVO = self->_expectedThroughputVO;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x400000) == 0)
  {
LABEL_31:
    if ((*&v9 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_74;
  }

LABEL_73:
  pkgLifeTimeVO = self->_pkgLifeTimeVO;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x800000) == 0)
  {
LABEL_32:
    if ((*&v9 & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_75;
  }

LABEL_74:
  pktLossRateVO = self->_pktLossRateVO;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x10000) == 0)
  {
LABEL_33:
    if ((*&v9 & 0x20000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_76;
  }

LABEL_75:
  decisionVO = self->_decisionVO;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x20000) == 0)
  {
LABEL_34:
    if ((*&v9 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_77;
  }

LABEL_76:
  expectedThroughputVIBE = self->_expectedThroughputVIBE;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x200000) == 0)
  {
LABEL_35:
    if ((*&v9 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_78;
  }

LABEL_77:
  packetLifetimeVIBE = self->_packetLifetimeVIBE;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x8000) == 0)
  {
LABEL_36:
    if ((*&v9 & 0x2000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_79;
  }

LABEL_78:
  decisionVIBE = self->_decisionVIBE;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x2000) == 0)
  {
LABEL_37:
    if ((*&v9 & 0x20) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_80;
  }

LABEL_79:
  dataLQM = self->_dataLQM;
  PBDataWriterWriteInt32Field();
  v9 = self->_has;
  if ((*&v9 & 0x20) == 0)
  {
LABEL_38:
    if ((*&v9 & 0x100000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_81;
  }

LABEL_80:
  bssLoad = self->_bssLoad;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x100000000) == 0)
  {
LABEL_39:
    if ((*&v9 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_81:
  voiceLQM = self->_voiceLQM;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x8000000) != 0)
  {
LABEL_40:
    signalBar = self->_signalBar;
    PBDataWriterWriteUint32Field();
  }

LABEL_41:
  if (self->_ratType)
  {
    PBDataWriterWriteStringField();
  }

  v11 = self->_has;
  if ((*&v11 & 0x200) != 0)
  {
    cellRSRP = self->_cellRSRP;
    PBDataWriterWriteSint32Field();
    v11 = self->_has;
    if ((*&v11 & 0x400) == 0)
    {
LABEL_45:
      if ((*&v11 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_85;
    }
  }

  else if ((*&v11 & 0x400) == 0)
  {
    goto LABEL_45;
  }

  cellSINR = self->_cellSINR;
  PBDataWriterWriteSint32Field();
  v11 = self->_has;
  if ((*&v11 & 0x80) == 0)
  {
LABEL_46:
    if ((*&v11 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_86;
  }

LABEL_85:
  ccStatusUpdate = self->_ccStatusUpdate;
  PBDataWriterWriteInt32Field();
  v11 = self->_has;
  if ((*&v11 & 1) == 0)
  {
LABEL_47:
    if ((*&v11 & 0x20000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_87;
  }

LABEL_86:
  ccStatusUpdateDelay = self->_ccStatusUpdateDelay;
  PBDataWriterWriteUint64Field();
  v11 = self->_has;
  if ((*&v11 & 0x20000000) == 0)
  {
LABEL_48:
    if ((*&v11 & 0x40000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_88;
  }

LABEL_87:
  timeToLastDecision = self->_timeToLastDecision;
  PBDataWriterWriteUint32Field();
  v11 = self->_has;
  if ((*&v11 & 0x40000000) == 0)
  {
LABEL_49:
    if ((*&v11 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_89:
    timeToLastReverseGrant = self->_timeToLastReverseGrant;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x4000000) == 0)
    {
      return;
    }

    goto LABEL_90;
  }

LABEL_88:
  timeToLastReverseDecision = self->_timeToLastReverseDecision;
  PBDataWriterWriteUint32Field();
  v11 = self->_has;
  if ((*&v11 & 0x80000000) != 0)
  {
    goto LABEL_89;
  }

LABEL_50:
  if ((*&v11 & 0x4000000) == 0)
  {
    return;
  }

LABEL_90:
  serviceTypeOfLastGrant = self->_serviceTypeOfLastGrant;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    *(to + 5) = self->_timestamp;
    *(to + 228) |= 2uLL;
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(to + 25) = self->_changeDirection;
  *(to + 228) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(to + 42) = self->_serviceType;
  *(to + 228) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(to + 50) = self->_voiceLinkPref;
  *(to + 228) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(to + 28) = self->_dataLinkPref;
  *(to + 228) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_59:
  *(to + 20) = self->_callStatus;
  *(to + 228) |= 0x40uLL;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_8:
    *(to + 26) = self->_dataAppStatus;
    *(to + 228) |= 0x1000uLL;
  }

LABEL_9:
  if (self->_appType)
  {
    [to setAppType:?];
  }

  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    *(to + 34) = self->_motionState;
    *(to + 228) |= 0x100000uLL;
  }

  if ([(AWDWRMLinkPrefChangeEvent *)self changeReasonsCount])
  {
    [to clearChangeReasons];
    changeReasonsCount = [(AWDWRMLinkPrefChangeEvent *)self changeReasonsCount];
    if (changeReasonsCount)
    {
      v7 = changeReasonsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addChangeReason:{-[AWDWRMLinkPrefChangeEvent changeReasonAtIndex:](self, "changeReasonAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((*&v9 & 4) != 0)
  {
    *(to + 6) = self->_wifiRssi;
    *(to + 228) |= 4uLL;
    v9 = self->_has;
    if ((*&v9 & 0x2000000000) == 0)
    {
LABEL_19:
      if ((*&v9 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_63;
    }
  }

  else if ((*&v9 & 0x2000000000) == 0)
  {
    goto LABEL_19;
  }

  *(to + 54) = self->_wifiTxPER;
  *(to + 228) |= 0x2000000000uLL;
  v9 = self->_has;
  if ((*&v9 & 8) == 0)
  {
LABEL_20:
    if ((*&v9 & 0x8000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(to + 7) = self->_wifiSNR;
  *(to + 228) |= 8uLL;
  v9 = self->_has;
  if ((*&v9 & 0x8000000000) == 0)
  {
LABEL_21:
    if ((*&v9 & 0x1000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(to + 224) = self->_captiveNetworks;
  *(to + 228) |= 0x8000000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x1000000000) == 0)
  {
LABEL_22:
    if ((*&v9 & 0x400000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(to + 53) = self->_wifiRxRetry;
  *(to + 228) |= 0x1000000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x400000000) == 0)
  {
LABEL_23:
    if ((*&v9 & 0x4000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(to + 51) = self->_wifiEstimatedBandwitdh;
  *(to + 228) |= 0x400000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x4000000000) == 0)
  {
LABEL_24:
    if ((*&v9 & 0x800000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(to + 55) = self->_wifiTxPhyRate;
  *(to + 228) |= 0x4000000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x800000000) == 0)
  {
LABEL_25:
    if ((*&v9 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(to + 52) = self->_wifiRxPhyRate;
  *(to + 228) |= 0x800000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x1000000) == 0)
  {
LABEL_26:
    if ((*&v9 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(to + 38) = self->_qbssLoad;
  *(to + 228) |= 0x1000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x100) == 0)
  {
LABEL_27:
    if ((*&v9 & 0x10000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(to + 22) = self->_cca;
  *(to + 228) |= 0x100uLL;
  v9 = self->_has;
  if ((*&v9 & 0x10000000) == 0)
  {
LABEL_28:
    if ((*&v9 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(to + 45) = self->_stationCount;
  *(to + 228) |= 0x10000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x10) == 0)
  {
LABEL_29:
    if ((*&v9 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(to + 18) = self->_bcnPer;
  *(to + 228) |= 0x10uLL;
  v9 = self->_has;
  if ((*&v9 & 0x80000) == 0)
  {
LABEL_30:
    if ((*&v9 & 0x40000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(to + 33) = self->_lqmScoreWifi;
  *(to + 228) |= 0x80000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x40000) == 0)
  {
LABEL_31:
    if ((*&v9 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(to + 32) = self->_expectedThroughputVO;
  *(to + 228) |= 0x40000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x400000) == 0)
  {
LABEL_32:
    if ((*&v9 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(to + 36) = self->_pkgLifeTimeVO;
  *(to + 228) |= 0x400000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x800000) == 0)
  {
LABEL_33:
    if ((*&v9 & 0x10000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(to + 37) = self->_pktLossRateVO;
  *(to + 228) |= 0x800000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x10000) == 0)
  {
LABEL_34:
    if ((*&v9 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(to + 30) = self->_decisionVO;
  *(to + 228) |= 0x10000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x20000) == 0)
  {
LABEL_35:
    if ((*&v9 & 0x200000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(to + 31) = self->_expectedThroughputVIBE;
  *(to + 228) |= 0x20000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x200000) == 0)
  {
LABEL_36:
    if ((*&v9 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(to + 35) = self->_packetLifetimeVIBE;
  *(to + 228) |= 0x200000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x8000) == 0)
  {
LABEL_37:
    if ((*&v9 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(to + 29) = self->_decisionVIBE;
  *(to + 228) |= 0x8000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x2000) == 0)
  {
LABEL_38:
    if ((*&v9 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(to + 27) = self->_dataLQM;
  *(to + 228) |= 0x2000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x20) == 0)
  {
LABEL_39:
    if ((*&v9 & 0x100000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(to + 19) = self->_bssLoad;
  *(to + 228) |= 0x20uLL;
  v9 = self->_has;
  if ((*&v9 & 0x100000000) == 0)
  {
LABEL_40:
    if ((*&v9 & 0x8000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_83:
  *(to + 49) = self->_voiceLQM;
  *(to + 228) |= 0x100000000uLL;
  if ((*&self->_has & 0x8000000) != 0)
  {
LABEL_41:
    *(to + 44) = self->_signalBar;
    *(to + 228) |= 0x8000000uLL;
  }

LABEL_42:
  if (self->_ratType)
  {
    [to setRatType:?];
  }

  v10 = self->_has;
  if ((*&v10 & 0x200) != 0)
  {
    *(to + 23) = self->_cellRSRP;
    *(to + 228) |= 0x200uLL;
    v10 = self->_has;
    if ((*&v10 & 0x400) == 0)
    {
LABEL_46:
      if ((*&v10 & 0x80) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_87;
    }
  }

  else if ((*&v10 & 0x400) == 0)
  {
    goto LABEL_46;
  }

  *(to + 24) = self->_cellSINR;
  *(to + 228) |= 0x400uLL;
  v10 = self->_has;
  if ((*&v10 & 0x80) == 0)
  {
LABEL_47:
    if ((*&v10 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(to + 21) = self->_ccStatusUpdate;
  *(to + 228) |= 0x80uLL;
  v10 = self->_has;
  if ((*&v10 & 1) == 0)
  {
LABEL_48:
    if ((*&v10 & 0x20000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(to + 4) = self->_ccStatusUpdateDelay;
  *(to + 228) |= 1uLL;
  v10 = self->_has;
  if ((*&v10 & 0x20000000) == 0)
  {
LABEL_49:
    if ((*&v10 & 0x40000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(to + 46) = self->_timeToLastDecision;
  *(to + 228) |= 0x20000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x40000000) == 0)
  {
LABEL_50:
    if ((*&v10 & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(to + 47) = self->_timeToLastReverseDecision;
  *(to + 228) |= 0x40000000uLL;
  v10 = self->_has;
  if ((*&v10 & 0x80000000) == 0)
  {
LABEL_51:
    if ((*&v10 & 0x4000000) == 0)
    {
      return;
    }

    goto LABEL_52;
  }

LABEL_91:
  *(to + 48) = self->_timeToLastReverseGrant;
  *(to + 228) |= 0x80000000uLL;
  if ((*&self->_has & 0x4000000) == 0)
  {
    return;
  }

LABEL_52:
  *(to + 43) = self->_serviceTypeOfLastGrant;
  *(to + 228) |= 0x4000000uLL;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    *(v5 + 40) = self->_timestamp;
    *(v5 + 228) |= 2uLL;
    has = self->_has;
    if ((*&has & 0x800) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else if ((*&has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 100) = self->_changeDirection;
  *(v5 + 228) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 168) = self->_serviceType;
  *(v5 + 228) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 200) = self->_voiceLinkPref;
  *(v5 + 228) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 112) = self->_dataLinkPref;
  *(v5 + 228) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_51:
  *(v5 + 80) = self->_callStatus;
  *(v5 + 228) |= 0x40uLL;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_8:
    *(v5 + 104) = self->_dataAppStatus;
    *(v5 + 228) |= 0x1000uLL;
  }

LABEL_9:

  *(v6 + 64) = [(NSString *)self->_appType copyWithZone:zone];
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    *(v6 + 136) = self->_motionState;
    *(v6 + 228) |= 0x100000uLL;
  }

  PBRepeatedUInt32Copy();
  v8 = self->_has;
  if ((*&v8 & 4) != 0)
  {
    *(v6 + 48) = self->_wifiRssi;
    *(v6 + 228) |= 4uLL;
    v8 = self->_has;
    if ((*&v8 & 0x2000000000) == 0)
    {
LABEL_13:
      if ((*&v8 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_55;
    }
  }

  else if ((*&v8 & 0x2000000000) == 0)
  {
    goto LABEL_13;
  }

  *(v6 + 216) = self->_wifiTxPER;
  *(v6 + 228) |= 0x2000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 8) == 0)
  {
LABEL_14:
    if ((*&v8 & 0x8000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v6 + 56) = self->_wifiSNR;
  *(v6 + 228) |= 8uLL;
  v8 = self->_has;
  if ((*&v8 & 0x8000000000) == 0)
  {
LABEL_15:
    if ((*&v8 & 0x1000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v6 + 224) = self->_captiveNetworks;
  *(v6 + 228) |= 0x8000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x1000000000) == 0)
  {
LABEL_16:
    if ((*&v8 & 0x400000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v6 + 212) = self->_wifiRxRetry;
  *(v6 + 228) |= 0x1000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x400000000) == 0)
  {
LABEL_17:
    if ((*&v8 & 0x4000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v6 + 204) = self->_wifiEstimatedBandwitdh;
  *(v6 + 228) |= 0x400000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x4000000000) == 0)
  {
LABEL_18:
    if ((*&v8 & 0x800000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v6 + 220) = self->_wifiTxPhyRate;
  *(v6 + 228) |= 0x4000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x800000000) == 0)
  {
LABEL_19:
    if ((*&v8 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v6 + 208) = self->_wifiRxPhyRate;
  *(v6 + 228) |= 0x800000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x1000000) == 0)
  {
LABEL_20:
    if ((*&v8 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v6 + 152) = self->_qbssLoad;
  *(v6 + 228) |= 0x1000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x100) == 0)
  {
LABEL_21:
    if ((*&v8 & 0x10000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v6 + 88) = self->_cca;
  *(v6 + 228) |= 0x100uLL;
  v8 = self->_has;
  if ((*&v8 & 0x10000000) == 0)
  {
LABEL_22:
    if ((*&v8 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v6 + 180) = self->_stationCount;
  *(v6 + 228) |= 0x10000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x10) == 0)
  {
LABEL_23:
    if ((*&v8 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v6 + 72) = self->_bcnPer;
  *(v6 + 228) |= 0x10uLL;
  v8 = self->_has;
  if ((*&v8 & 0x80000) == 0)
  {
LABEL_24:
    if ((*&v8 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v6 + 132) = self->_lqmScoreWifi;
  *(v6 + 228) |= 0x80000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x40000) == 0)
  {
LABEL_25:
    if ((*&v8 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v6 + 128) = self->_expectedThroughputVO;
  *(v6 + 228) |= 0x40000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x400000) == 0)
  {
LABEL_26:
    if ((*&v8 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v6 + 144) = self->_pkgLifeTimeVO;
  *(v6 + 228) |= 0x400000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x800000) == 0)
  {
LABEL_27:
    if ((*&v8 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v6 + 148) = self->_pktLossRateVO;
  *(v6 + 228) |= 0x800000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x10000) == 0)
  {
LABEL_28:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v6 + 120) = self->_decisionVO;
  *(v6 + 228) |= 0x10000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x20000) == 0)
  {
LABEL_29:
    if ((*&v8 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v6 + 124) = self->_expectedThroughputVIBE;
  *(v6 + 228) |= 0x20000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x200000) == 0)
  {
LABEL_30:
    if ((*&v8 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v6 + 140) = self->_packetLifetimeVIBE;
  *(v6 + 228) |= 0x200000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x8000) == 0)
  {
LABEL_31:
    if ((*&v8 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v6 + 116) = self->_decisionVIBE;
  *(v6 + 228) |= 0x8000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_32:
    if ((*&v8 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v6 + 108) = self->_dataLQM;
  *(v6 + 228) |= 0x2000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x20) == 0)
  {
LABEL_33:
    if ((*&v8 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v6 + 76) = self->_bssLoad;
  *(v6 + 228) |= 0x20uLL;
  v8 = self->_has;
  if ((*&v8 & 0x100000000) == 0)
  {
LABEL_34:
    if ((*&v8 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_75:
  *(v6 + 196) = self->_voiceLQM;
  *(v6 + 228) |= 0x100000000uLL;
  if ((*&self->_has & 0x8000000) != 0)
  {
LABEL_35:
    *(v6 + 176) = self->_signalBar;
    *(v6 + 228) |= 0x8000000uLL;
  }

LABEL_36:

  *(v6 + 160) = [(NSString *)self->_ratType copyWithZone:zone];
  v9 = self->_has;
  if ((*&v9 & 0x200) != 0)
  {
    *(v6 + 92) = self->_cellRSRP;
    *(v6 + 228) |= 0x200uLL;
    v9 = self->_has;
    if ((*&v9 & 0x400) == 0)
    {
LABEL_38:
      if ((*&v9 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_79;
    }
  }

  else if ((*&v9 & 0x400) == 0)
  {
    goto LABEL_38;
  }

  *(v6 + 96) = self->_cellSINR;
  *(v6 + 228) |= 0x400uLL;
  v9 = self->_has;
  if ((*&v9 & 0x80) == 0)
  {
LABEL_39:
    if ((*&v9 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v6 + 84) = self->_ccStatusUpdate;
  *(v6 + 228) |= 0x80uLL;
  v9 = self->_has;
  if ((*&v9 & 1) == 0)
  {
LABEL_40:
    if ((*&v9 & 0x20000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v6 + 32) = self->_ccStatusUpdateDelay;
  *(v6 + 228) |= 1uLL;
  v9 = self->_has;
  if ((*&v9 & 0x20000000) == 0)
  {
LABEL_41:
    if ((*&v9 & 0x40000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v6 + 184) = self->_timeToLastDecision;
  *(v6 + 228) |= 0x20000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x40000000) == 0)
  {
LABEL_42:
    if ((*&v9 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_83:
    *(v6 + 192) = self->_timeToLastReverseGrant;
    *(v6 + 228) |= 0x80000000uLL;
    if ((*&self->_has & 0x4000000) == 0)
    {
      return v6;
    }

    goto LABEL_44;
  }

LABEL_82:
  *(v6 + 188) = self->_timeToLastReverseDecision;
  *(v6 + 228) |= 0x40000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x80000000) != 0)
  {
    goto LABEL_83;
  }

LABEL_43:
  if ((*&v9 & 0x4000000) != 0)
  {
LABEL_44:
    *(v6 + 172) = self->_serviceTypeOfLastGrant;
    *(v6 + 228) |= 0x4000000uLL;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    has = self->_has;
    v7 = *(equal + 228);
    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_timestamp != *(equal + 5))
      {
        goto LABEL_211;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_211;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_changeDirection != *(equal + 25))
      {
        goto LABEL_211;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_211;
    }

    if ((*&has & 0x2000000) != 0)
    {
      if ((v7 & 0x2000000) == 0 || self->_serviceType != *(equal + 42))
      {
        goto LABEL_211;
      }
    }

    else if ((v7 & 0x2000000) != 0)
    {
      goto LABEL_211;
    }

    if ((*&has & 0x200000000) != 0)
    {
      if ((v7 & 0x200000000) == 0 || self->_voiceLinkPref != *(equal + 50))
      {
        goto LABEL_211;
      }
    }

    else if ((v7 & 0x200000000) != 0)
    {
      goto LABEL_211;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_dataLinkPref != *(equal + 28))
      {
        goto LABEL_211;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_211;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_callStatus != *(equal + 20))
      {
        goto LABEL_211;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_211;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_dataAppStatus != *(equal + 26))
      {
        goto LABEL_211;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_211;
    }

    appType = self->_appType;
    if (appType | *(equal + 8))
    {
      IsEqual = [(NSString *)appType isEqual:?];
      if (!IsEqual)
      {
        return IsEqual;
      }

      has = self->_has;
    }

    v9 = *(equal + 228);
    if ((*&has & 0x100000) != 0)
    {
      if ((v9 & 0x100000) == 0 || self->_motionState != *(equal + 34))
      {
        goto LABEL_211;
      }
    }

    else if ((v9 & 0x100000) != 0)
    {
      goto LABEL_211;
    }

    IsEqual = PBRepeatedUInt32IsEqual();
    if (IsEqual)
    {
      v10 = self->_has;
      v11 = *(equal + 228);
      if ((*&v10 & 4) != 0)
      {
        if ((v11 & 4) == 0 || self->_wifiRssi != *(equal + 6))
        {
          goto LABEL_211;
        }
      }

      else if ((v11 & 4) != 0)
      {
        goto LABEL_211;
      }

      if ((*&v10 & 0x2000000000) != 0)
      {
        if ((v11 & 0x2000000000) == 0 || self->_wifiTxPER != *(equal + 54))
        {
          goto LABEL_211;
        }
      }

      else if ((v11 & 0x2000000000) != 0)
      {
        goto LABEL_211;
      }

      if ((*&v10 & 8) != 0)
      {
        if ((v11 & 8) == 0 || self->_wifiSNR != *(equal + 7))
        {
          goto LABEL_211;
        }
      }

      else if ((v11 & 8) != 0)
      {
        goto LABEL_211;
      }

      if ((*&v10 & 0x8000000000) != 0)
      {
        if ((v11 & 0x8000000000) != 0)
        {
          v12 = *(equal + 224);
          if (self->_captiveNetworks)
          {
            if ((*(equal + 224) & 1) == 0)
            {
              goto LABEL_211;
            }
          }

          else if (*(equal + 224))
          {
            goto LABEL_211;
          }

          goto LABEL_63;
        }
      }

      else if ((v11 & 0x8000000000) == 0)
      {
LABEL_63:
        if ((*&v10 & 0x1000000000) != 0)
        {
          if ((v11 & 0x1000000000) == 0 || self->_wifiRxRetry != *(equal + 53))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x1000000000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x400000000) != 0)
        {
          if ((v11 & 0x400000000) == 0 || self->_wifiEstimatedBandwitdh != *(equal + 51))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x400000000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x4000000000) != 0)
        {
          if ((v11 & 0x4000000000) == 0 || self->_wifiTxPhyRate != *(equal + 55))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x4000000000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x800000000) != 0)
        {
          if ((v11 & 0x800000000) == 0 || self->_wifiRxPhyRate != *(equal + 52))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x800000000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x1000000) != 0)
        {
          if ((v11 & 0x1000000) == 0 || self->_qbssLoad != *(equal + 38))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x1000000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x100) != 0)
        {
          if ((v11 & 0x100) == 0 || self->_cca != *(equal + 22))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x100) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x10000000) != 0)
        {
          if ((v11 & 0x10000000) == 0 || self->_stationCount != *(equal + 45))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x10000000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x10) != 0)
        {
          if ((v11 & 0x10) == 0 || self->_bcnPer != *(equal + 18))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x10) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x80000) != 0)
        {
          if ((v11 & 0x80000) == 0 || self->_lqmScoreWifi != *(equal + 33))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x80000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x40000) != 0)
        {
          if ((v11 & 0x40000) == 0 || self->_expectedThroughputVO != *(equal + 32))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x40000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x400000) != 0)
        {
          if ((v11 & 0x400000) == 0 || self->_pkgLifeTimeVO != *(equal + 36))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x400000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x800000) != 0)
        {
          if ((v11 & 0x800000) == 0 || self->_pktLossRateVO != *(equal + 37))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x800000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x10000) != 0)
        {
          if ((v11 & 0x10000) == 0 || self->_decisionVO != *(equal + 30))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x10000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x20000) != 0)
        {
          if ((v11 & 0x20000) == 0 || self->_expectedThroughputVIBE != *(equal + 31))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x20000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x200000) != 0)
        {
          if ((v11 & 0x200000) == 0 || self->_packetLifetimeVIBE != *(equal + 35))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x200000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x8000) != 0)
        {
          if ((v11 & 0x8000) == 0 || self->_decisionVIBE != *(equal + 29))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x8000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x2000) != 0)
        {
          if ((v11 & 0x2000) == 0 || self->_dataLQM != *(equal + 27))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x2000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x20) != 0)
        {
          if ((v11 & 0x20) == 0 || self->_bssLoad != *(equal + 19))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x20) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x100000000) != 0)
        {
          if ((v11 & 0x100000000) == 0 || self->_voiceLQM != *(equal + 49))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x100000000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x8000000) != 0)
        {
          if ((v11 & 0x8000000) == 0 || self->_signalBar != *(equal + 44))
          {
            goto LABEL_211;
          }
        }

        else if ((v11 & 0x8000000) != 0)
        {
          goto LABEL_211;
        }

        ratType = self->_ratType;
        if (ratType | *(equal + 20))
        {
          IsEqual = [(NSString *)ratType isEqual:?];
          if (!IsEqual)
          {
            return IsEqual;
          }

          v10 = self->_has;
        }

        v14 = *(equal + 228);
        if ((*&v10 & 0x200) != 0)
        {
          if ((v14 & 0x200) == 0 || self->_cellRSRP != *(equal + 23))
          {
            goto LABEL_211;
          }
        }

        else if ((v14 & 0x200) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x400) != 0)
        {
          if ((v14 & 0x400) == 0 || self->_cellSINR != *(equal + 24))
          {
            goto LABEL_211;
          }
        }

        else if ((v14 & 0x400) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x80) != 0)
        {
          if ((v14 & 0x80) == 0 || self->_ccStatusUpdate != *(equal + 21))
          {
            goto LABEL_211;
          }
        }

        else if ((v14 & 0x80) != 0)
        {
          goto LABEL_211;
        }

        if (*&v10)
        {
          if ((v14 & 1) == 0 || self->_ccStatusUpdateDelay != *(equal + 4))
          {
            goto LABEL_211;
          }
        }

        else if (v14)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x20000000) != 0)
        {
          if ((v14 & 0x20000000) == 0 || self->_timeToLastDecision != *(equal + 46))
          {
            goto LABEL_211;
          }
        }

        else if ((v14 & 0x20000000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x40000000) != 0)
        {
          if ((v14 & 0x40000000) == 0 || self->_timeToLastReverseDecision != *(equal + 47))
          {
            goto LABEL_211;
          }
        }

        else if ((v14 & 0x40000000) != 0)
        {
          goto LABEL_211;
        }

        if ((*&v10 & 0x80000000) != 0)
        {
          if ((v14 & 0x80000000) == 0 || self->_timeToLastReverseGrant != *(equal + 48))
          {
            goto LABEL_211;
          }
        }

        else if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_211;
        }

        LOBYTE(IsEqual) = (*(equal + 228) & 0x4000000) == 0;
        if ((*&v10 & 0x4000000) != 0)
        {
          if ((v14 & 0x4000000) == 0 || self->_serviceTypeOfLastGrant != *(equal + 43))
          {
            goto LABEL_211;
          }

          LOBYTE(IsEqual) = 1;
        }

        return IsEqual;
      }

LABEL_211:
      LOBYTE(IsEqual) = 0;
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v50 = 2654435761u * self->_timestamp;
    if ((*&has & 0x800) != 0)
    {
LABEL_3:
      v49 = 2654435761 * self->_changeDirection;
      if ((*&has & 0x2000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v50 = 0;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_3;
    }
  }

  v49 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_4:
    v48 = 2654435761 * self->_serviceType;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v48 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_5:
    v47 = 2654435761 * self->_voiceLinkPref;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v47 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_6:
    v46 = 2654435761 * self->_dataLinkPref;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v45 = 0;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v46 = 0;
  if ((*&has & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v45 = 2654435761 * self->_callStatus;
  if ((*&has & 0x1000) != 0)
  {
LABEL_8:
    v44 = 2654435761 * self->_dataAppStatus;
    goto LABEL_16;
  }

LABEL_15:
  v44 = 0;
LABEL_16:
  v43 = [(NSString *)self->_appType hash];
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    v42 = 2654435761 * self->_motionState;
  }

  else
  {
    v42 = 0;
  }

  v41 = PBRepeatedUInt32Hash();
  v4 = self->_has;
  if ((*&v4 & 4) != 0)
  {
    v40 = 2654435761 * self->_wifiRssi;
    if ((*&v4 & 0x2000000000) != 0)
    {
LABEL_21:
      v39 = 2654435761 * self->_wifiTxPER;
      if ((*&v4 & 8) != 0)
      {
        goto LABEL_22;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v40 = 0;
    if ((*&v4 & 0x2000000000) != 0)
    {
      goto LABEL_21;
    }
  }

  v39 = 0;
  if ((*&v4 & 8) != 0)
  {
LABEL_22:
    v38 = 2654435761 * self->_wifiSNR;
    if ((*&v4 & 0x8000000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v38 = 0;
  if ((*&v4 & 0x8000000000) != 0)
  {
LABEL_23:
    v37 = 2654435761 * self->_captiveNetworks;
    if ((*&v4 & 0x1000000000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_48;
  }

LABEL_47:
  v37 = 0;
  if ((*&v4 & 0x1000000000) != 0)
  {
LABEL_24:
    v36 = 2654435761 * self->_wifiRxRetry;
    if ((*&v4 & 0x400000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_48:
  v36 = 0;
  if ((*&v4 & 0x400000000) != 0)
  {
LABEL_25:
    v35 = 2654435761 * self->_wifiEstimatedBandwitdh;
    if ((*&v4 & 0x4000000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_50;
  }

LABEL_49:
  v35 = 0;
  if ((*&v4 & 0x4000000000) != 0)
  {
LABEL_26:
    v34 = 2654435761 * self->_wifiTxPhyRate;
    if ((*&v4 & 0x800000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_50:
  v34 = 0;
  if ((*&v4 & 0x800000000) != 0)
  {
LABEL_27:
    v33 = 2654435761 * self->_wifiRxPhyRate;
    if ((*&v4 & 0x1000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_52;
  }

LABEL_51:
  v33 = 0;
  if ((*&v4 & 0x1000000) != 0)
  {
LABEL_28:
    v32 = 2654435761 * self->_qbssLoad;
    if ((*&v4 & 0x100) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_53;
  }

LABEL_52:
  v32 = 0;
  if ((*&v4 & 0x100) != 0)
  {
LABEL_29:
    v31 = 2654435761 * self->_cca;
    if ((*&v4 & 0x10000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_54;
  }

LABEL_53:
  v31 = 0;
  if ((*&v4 & 0x10000000) != 0)
  {
LABEL_30:
    v30 = 2654435761 * self->_stationCount;
    if ((*&v4 & 0x10) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_55;
  }

LABEL_54:
  v30 = 0;
  if ((*&v4 & 0x10) != 0)
  {
LABEL_31:
    v29 = 2654435761 * self->_bcnPer;
    if ((*&v4 & 0x80000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_56;
  }

LABEL_55:
  v29 = 0;
  if ((*&v4 & 0x80000) != 0)
  {
LABEL_32:
    v28 = 2654435761 * self->_lqmScoreWifi;
    if ((*&v4 & 0x40000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_57;
  }

LABEL_56:
  v28 = 0;
  if ((*&v4 & 0x40000) != 0)
  {
LABEL_33:
    v27 = 2654435761 * self->_expectedThroughputVO;
    if ((*&v4 & 0x400000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_58;
  }

LABEL_57:
  v27 = 0;
  if ((*&v4 & 0x400000) != 0)
  {
LABEL_34:
    v26 = 2654435761 * self->_pkgLifeTimeVO;
    if ((*&v4 & 0x800000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_59;
  }

LABEL_58:
  v26 = 0;
  if ((*&v4 & 0x800000) != 0)
  {
LABEL_35:
    v25 = 2654435761 * self->_pktLossRateVO;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_60;
  }

LABEL_59:
  v25 = 0;
  if ((*&v4 & 0x10000) != 0)
  {
LABEL_36:
    v23 = 2654435761 * self->_decisionVO;
    if ((*&v4 & 0x20000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_61;
  }

LABEL_60:
  v23 = 0;
  if ((*&v4 & 0x20000) != 0)
  {
LABEL_37:
    v5 = 2654435761 * self->_expectedThroughputVIBE;
    if ((*&v4 & 0x200000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_62;
  }

LABEL_61:
  v5 = 0;
  if ((*&v4 & 0x200000) != 0)
  {
LABEL_38:
    v6 = 2654435761 * self->_packetLifetimeVIBE;
    if ((*&v4 & 0x8000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_63;
  }

LABEL_62:
  v6 = 0;
  if ((*&v4 & 0x8000) != 0)
  {
LABEL_39:
    v7 = 2654435761 * self->_decisionVIBE;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_64;
  }

LABEL_63:
  v7 = 0;
  if ((*&v4 & 0x2000) != 0)
  {
LABEL_40:
    v8 = 2654435761 * self->_dataLQM;
    if ((*&v4 & 0x20) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_65;
  }

LABEL_64:
  v8 = 0;
  if ((*&v4 & 0x20) != 0)
  {
LABEL_41:
    v9 = 2654435761 * self->_bssLoad;
    if ((*&v4 & 0x100000000) != 0)
    {
      goto LABEL_42;
    }

LABEL_66:
    v10 = 0;
    if ((*&v4 & 0x8000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_67;
  }

LABEL_65:
  v9 = 0;
  if ((*&v4 & 0x100000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_42:
  v10 = 2654435761 * self->_voiceLQM;
  if ((*&v4 & 0x8000000) != 0)
  {
LABEL_43:
    v11 = 2654435761 * self->_signalBar;
    goto LABEL_68;
  }

LABEL_67:
  v11 = 0;
LABEL_68:
  v12 = [(NSString *)self->_ratType hash];
  v13 = self->_has;
  if ((*&v13 & 0x200) != 0)
  {
    v14 = 2654435761 * self->_cellRSRP;
    if ((*&v13 & 0x400) != 0)
    {
LABEL_70:
      v15 = 2654435761 * self->_cellSINR;
      if ((*&v13 & 0x80) != 0)
      {
        goto LABEL_71;
      }

      goto LABEL_79;
    }
  }

  else
  {
    v14 = 0;
    if ((*&v13 & 0x400) != 0)
    {
      goto LABEL_70;
    }
  }

  v15 = 0;
  if ((*&v13 & 0x80) != 0)
  {
LABEL_71:
    v16 = 2654435761 * self->_ccStatusUpdate;
    if (*&v13)
    {
      goto LABEL_72;
    }

    goto LABEL_80;
  }

LABEL_79:
  v16 = 0;
  if (*&v13)
  {
LABEL_72:
    v17 = 2654435761u * self->_ccStatusUpdateDelay;
    if ((*&v13 & 0x20000000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_81;
  }

LABEL_80:
  v17 = 0;
  if ((*&v13 & 0x20000000) != 0)
  {
LABEL_73:
    v18 = 2654435761 * self->_timeToLastDecision;
    if ((*&v13 & 0x40000000) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_82;
  }

LABEL_81:
  v18 = 0;
  if ((*&v13 & 0x40000000) != 0)
  {
LABEL_74:
    v19 = 2654435761 * self->_timeToLastReverseDecision;
    if ((*&v13 & 0x80000000) != 0)
    {
      goto LABEL_75;
    }

LABEL_83:
    v20 = 0;
    if ((*&v13 & 0x4000000) != 0)
    {
      goto LABEL_76;
    }

LABEL_84:
    v21 = 0;
    return v49 ^ v50 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v43 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
  }

LABEL_82:
  v19 = 0;
  if ((*&v13 & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

LABEL_75:
  v20 = 2654435761 * self->_timeToLastReverseGrant;
  if ((*&v13 & 0x4000000) == 0)
  {
    goto LABEL_84;
  }

LABEL_76:
  v21 = 2654435761 * self->_serviceTypeOfLastGrant;
  return v49 ^ v50 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v43 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 228);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(from + 5);
    *&self->_has |= 2uLL;
    v5 = *(from + 228);
    if ((v5 & 0x800) == 0)
    {
LABEL_3:
      if ((v5 & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_55;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_3;
  }

  self->_changeDirection = *(from + 25);
  *&self->_has |= 0x800uLL;
  v5 = *(from + 228);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_serviceType = *(from + 42);
  *&self->_has |= 0x2000000uLL;
  v5 = *(from + 228);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_5:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_voiceLinkPref = *(from + 50);
  *&self->_has |= 0x200000000uLL;
  v5 = *(from + 228);
  if ((v5 & 0x4000) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_dataLinkPref = *(from + 28);
  *&self->_has |= 0x4000uLL;
  v5 = *(from + 228);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_58:
  self->_callStatus = *(from + 20);
  *&self->_has |= 0x40uLL;
  if ((*(from + 228) & 0x1000) != 0)
  {
LABEL_8:
    self->_dataAppStatus = *(from + 26);
    *&self->_has |= 0x1000uLL;
  }

LABEL_9:
  if (*(from + 8))
  {
    [(AWDWRMLinkPrefChangeEvent *)self setAppType:?];
  }

  if ((*(from + 230) & 0x10) != 0)
  {
    self->_motionState = *(from + 34);
    *&self->_has |= 0x100000uLL;
  }

  changeReasonsCount = [from changeReasonsCount];
  if (changeReasonsCount)
  {
    v7 = changeReasonsCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDWRMLinkPrefChangeEvent addChangeReason:](self, "addChangeReason:", [from changeReasonAtIndex:i]);
    }
  }

  v9 = *(from + 228);
  if ((v9 & 4) != 0)
  {
    self->_wifiRssi = *(from + 6);
    *&self->_has |= 4uLL;
    v9 = *(from + 228);
    if ((v9 & 0x2000000000) == 0)
    {
LABEL_18:
      if ((v9 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_62;
    }
  }

  else if ((v9 & 0x2000000000) == 0)
  {
    goto LABEL_18;
  }

  self->_wifiTxPER = *(from + 54);
  *&self->_has |= 0x2000000000uLL;
  v9 = *(from + 228);
  if ((v9 & 8) == 0)
  {
LABEL_19:
    if ((v9 & 0x8000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_wifiSNR = *(from + 7);
  *&self->_has |= 8uLL;
  v9 = *(from + 228);
  if ((v9 & 0x8000000000) == 0)
  {
LABEL_20:
    if ((v9 & 0x1000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_captiveNetworks = *(from + 224);
  *&self->_has |= 0x8000000000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x1000000000) == 0)
  {
LABEL_21:
    if ((v9 & 0x400000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_wifiRxRetry = *(from + 53);
  *&self->_has |= 0x1000000000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x400000000) == 0)
  {
LABEL_22:
    if ((v9 & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_wifiEstimatedBandwitdh = *(from + 51);
  *&self->_has |= 0x400000000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x4000000000) == 0)
  {
LABEL_23:
    if ((v9 & 0x800000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_wifiTxPhyRate = *(from + 55);
  *&self->_has |= 0x4000000000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x800000000) == 0)
  {
LABEL_24:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_wifiRxPhyRate = *(from + 52);
  *&self->_has |= 0x800000000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_qbssLoad = *(from + 38);
  *&self->_has |= 0x1000000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x100) == 0)
  {
LABEL_26:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_cca = *(from + 22);
  *&self->_has |= 0x100uLL;
  v9 = *(from + 228);
  if ((v9 & 0x10000000) == 0)
  {
LABEL_27:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_stationCount = *(from + 45);
  *&self->_has |= 0x10000000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x10) == 0)
  {
LABEL_28:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_bcnPer = *(from + 18);
  *&self->_has |= 0x10uLL;
  v9 = *(from + 228);
  if ((v9 & 0x80000) == 0)
  {
LABEL_29:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_lqmScoreWifi = *(from + 33);
  *&self->_has |= 0x80000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x40000) == 0)
  {
LABEL_30:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_expectedThroughputVO = *(from + 32);
  *&self->_has |= 0x40000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x400000) == 0)
  {
LABEL_31:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_pkgLifeTimeVO = *(from + 36);
  *&self->_has |= 0x400000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x800000) == 0)
  {
LABEL_32:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_pktLossRateVO = *(from + 37);
  *&self->_has |= 0x800000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x10000) == 0)
  {
LABEL_33:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_decisionVO = *(from + 30);
  *&self->_has |= 0x10000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x20000) == 0)
  {
LABEL_34:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_expectedThroughputVIBE = *(from + 31);
  *&self->_has |= 0x20000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x200000) == 0)
  {
LABEL_35:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_packetLifetimeVIBE = *(from + 35);
  *&self->_has |= 0x200000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x8000) == 0)
  {
LABEL_36:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_decisionVIBE = *(from + 29);
  *&self->_has |= 0x8000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x2000) == 0)
  {
LABEL_37:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_dataLQM = *(from + 27);
  *&self->_has |= 0x2000uLL;
  v9 = *(from + 228);
  if ((v9 & 0x20) == 0)
  {
LABEL_38:
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_bssLoad = *(from + 19);
  *&self->_has |= 0x20uLL;
  v9 = *(from + 228);
  if ((v9 & 0x100000000) == 0)
  {
LABEL_39:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_82:
  self->_voiceLQM = *(from + 49);
  *&self->_has |= 0x100000000uLL;
  if ((*(from + 228) & 0x8000000) != 0)
  {
LABEL_40:
    self->_signalBar = *(from + 44);
    *&self->_has |= 0x8000000uLL;
  }

LABEL_41:
  if (*(from + 20))
  {
    [(AWDWRMLinkPrefChangeEvent *)self setRatType:?];
  }

  v10 = *(from + 228);
  if ((v10 & 0x200) != 0)
  {
    self->_cellRSRP = *(from + 23);
    *&self->_has |= 0x200uLL;
    v10 = *(from + 228);
    if ((v10 & 0x400) == 0)
    {
LABEL_45:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_86;
    }
  }

  else if ((v10 & 0x400) == 0)
  {
    goto LABEL_45;
  }

  self->_cellSINR = *(from + 24);
  *&self->_has |= 0x400uLL;
  v10 = *(from + 228);
  if ((v10 & 0x80) == 0)
  {
LABEL_46:
    if ((v10 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_ccStatusUpdate = *(from + 21);
  *&self->_has |= 0x80uLL;
  v10 = *(from + 228);
  if ((v10 & 1) == 0)
  {
LABEL_47:
    if ((v10 & 0x20000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_ccStatusUpdateDelay = *(from + 4);
  *&self->_has |= 1uLL;
  v10 = *(from + 228);
  if ((v10 & 0x20000000) == 0)
  {
LABEL_48:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_timeToLastDecision = *(from + 46);
  *&self->_has |= 0x20000000uLL;
  v10 = *(from + 228);
  if ((v10 & 0x40000000) == 0)
  {
LABEL_49:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_timeToLastReverseDecision = *(from + 47);
  *&self->_has |= 0x40000000uLL;
  v10 = *(from + 228);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_50:
    if ((v10 & 0x4000000) == 0)
    {
      return;
    }

    goto LABEL_51;
  }

LABEL_90:
  self->_timeToLastReverseGrant = *(from + 48);
  *&self->_has |= 0x80000000uLL;
  if ((*(from + 228) & 0x4000000) == 0)
  {
    return;
  }

LABEL_51:
  self->_serviceTypeOfLastGrant = *(from + 43);
  *&self->_has |= 0x4000000uLL;
}

@end