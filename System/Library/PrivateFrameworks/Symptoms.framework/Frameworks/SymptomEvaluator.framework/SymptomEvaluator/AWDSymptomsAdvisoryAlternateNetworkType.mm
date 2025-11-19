@interface AWDSymptomsAdvisoryAlternateNetworkType
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAdvice:(id)a3;
- (int)StringAsAdvisor:(id)a3;
- (int)StringAsBailOutOf:(id)a3;
- (int)StringAsCellEgressTriggers:(id)a3;
- (int)StringAsCellIngressTriggers:(id)a3;
- (int)StringAsEgressMobilityCode:(id)a3;
- (int)StringAsEgressTrigger:(id)a3;
- (int)StringAsEgressTriggerOn:(id)a3;
- (int)StringAsIngressMobilityCode:(id)a3;
- (int)StringAsIngressTrigger:(id)a3;
- (int)StringAsIngressTriggerOn:(id)a3;
- (int)StringAsPolicy:(id)a3;
- (int)StringAsWifiEgressTriggers:(id)a3;
- (int)StringAsWifiIngressTriggers:(id)a3;
- (int)advice;
- (int)advisor;
- (int)bailOutOf;
- (int)cellEgressTriggersAtIndex:(unint64_t)a3;
- (int)cellIngressTriggersAtIndex:(unint64_t)a3;
- (int)egressMobilityCode;
- (int)egressTrigger;
- (int)egressTriggerOn;
- (int)ingressMobilityCode;
- (int)ingressTrigger;
- (int)ingressTriggerOn;
- (int)policy;
- (int)wifiEgressTriggersAtIndex:(unint64_t)a3;
- (int)wifiIngressTriggersAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addEgressTriggerSignature:(id)a3;
- (void)addIngressTriggerSignature:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasActivationIdentifier:(BOOL)a3;
- (void)setHasAdvice:(BOOL)a3;
- (void)setHasAdvisor:(BOOL)a3;
- (void)setHasBailOutOf:(BOOL)a3;
- (void)setHasCellularDataUsage:(BOOL)a3;
- (void)setHasComingFromState:(BOOL)a3;
- (void)setHasEgressMobilityCode:(BOOL)a3;
- (void)setHasEgressTrigger:(BOOL)a3;
- (void)setHasEgressTriggerMultiplier:(BOOL)a3;
- (void)setHasEgressTriggerOn:(BOOL)a3;
- (void)setHasEgressTriggerPercentagex100:(BOOL)a3;
- (void)setHasIngressMobilityCode:(BOOL)a3;
- (void)setHasIngressTrigger:(BOOL)a3;
- (void)setHasIngressTriggerMultiplier:(BOOL)a3;
- (void)setHasIngressTriggerOn:(BOOL)a3;
- (void)setHasIngressTriggerPercentagex100:(BOOL)a3;
- (void)setHasKernelProbingActivated:(BOOL)a3;
- (void)setHasPolicy:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTransitionsSuppressedByMobility:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsAdvisoryAlternateNetworkType

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDSymptomsAdvisoryAlternateNetworkType;
  [(AWDSymptomsAdvisoryAlternateNetworkType *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (int)advice
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_advice;
  }

  else
  {
    return 1;
  }
}

- (void)setHasAdvice:(BOOL)a3
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

- (int)StringAsAdvice:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NoAdvice"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"WeakAdvice"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"StrongAdvice"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ActiveState"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PositiveState"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"BrokenState"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)bailOutOf
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_bailOutOf;
  }

  else
  {
    return 1;
  }
}

- (void)setHasBailOutOf:(BOOL)a3
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

- (int)StringAsBailOutOf:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WIFI"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CELLULAR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WIRED_ETHERNET"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasKernelProbingActivated:(BOOL)a3
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

- (int)ingressTrigger
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    return self->_ingressTrigger;
  }

  else
  {
    return 1;
  }
}

- (void)setHasIngressTrigger:(BOOL)a3
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

- (int)StringAsIngressTrigger:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Foreground"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Active"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Primary"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KnownGood"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RxSignalThreshold"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Arp"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DNS"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Mobility"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"NoUpLink"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"TcpProbesOverall"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"TcpProbesConnection"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"TcpProbesRead"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"TcpProbesWrite"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"TxThreshold"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"DarkScreen"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"WiFiCall"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"NoBackhaul"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"KnownBadAP"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"InternetDNS"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"Apsd"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"DefRoute"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"TcpProgressScore"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"RnfActive"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"NoProximity"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"Congestion"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"NetworkMoving"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"BadNetworkReputation"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"EdgeBssWalkout"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"RssiGradient"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"TcpExtraStats"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"RxSignalFullBars"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"CellOutrankActive"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"NoCostAdvantage"])
  {
    v4 = 33;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)ingressTriggerOn
{
  if (*(&self->_has + 2))
  {
    return self->_ingressTriggerOn;
  }

  else
  {
    return 1;
  }
}

- (void)setHasIngressTriggerOn:(BOOL)a3
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

- (int)StringAsIngressTriggerOn:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WIFI"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CELLULAR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WIRED_ETHERNET"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIngressTriggerMultiplier:(BOOL)a3
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

- (void)setHasIngressTriggerPercentagex100:(BOOL)a3
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

- (int)egressTrigger
{
  if ((*(&self->_has + 1) & 2) != 0)
  {
    return self->_egressTrigger;
  }

  else
  {
    return 1;
  }
}

- (void)setHasEgressTrigger:(BOOL)a3
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

- (int)StringAsEgressTrigger:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Foreground"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Active"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Primary"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KnownGood"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RxSignalThreshold"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Arp"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DNS"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Mobility"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"NoUpLink"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"TcpProbesOverall"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"TcpProbesConnection"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"TcpProbesRead"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"TcpProbesWrite"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"TxThreshold"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"DarkScreen"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"WiFiCall"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"NoBackhaul"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"KnownBadAP"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"InternetDNS"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"Apsd"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"DefRoute"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"TcpProgressScore"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"RnfActive"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"NoProximity"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"Congestion"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"NetworkMoving"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"BadNetworkReputation"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"EdgeBssWalkout"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"RssiGradient"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"TcpExtraStats"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"RxSignalFullBars"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"CellOutrankActive"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"NoCostAdvantage"])
  {
    v4 = 33;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)egressTriggerOn
{
  if ((*(&self->_has + 1) & 8) != 0)
  {
    return self->_egressTriggerOn;
  }

  else
  {
    return 1;
  }
}

- (void)setHasEgressTriggerOn:(BOOL)a3
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

- (int)StringAsEgressTriggerOn:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WIFI"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CELLULAR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WIRED_ETHERNET"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasEgressTriggerMultiplier:(BOOL)a3
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

- (void)setHasEgressTriggerPercentagex100:(BOOL)a3
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

- (void)addIngressTriggerSignature:(id)a3
{
  v4 = a3;
  ingressTriggerSignatures = self->_ingressTriggerSignatures;
  v8 = v4;
  if (!ingressTriggerSignatures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ingressTriggerSignatures;
    self->_ingressTriggerSignatures = v6;

    v4 = v8;
    ingressTriggerSignatures = self->_ingressTriggerSignatures;
  }

  [(NSMutableArray *)ingressTriggerSignatures addObject:v4];
}

- (void)addEgressTriggerSignature:(id)a3
{
  v4 = a3;
  egressTriggerSignatures = self->_egressTriggerSignatures;
  v8 = v4;
  if (!egressTriggerSignatures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_egressTriggerSignatures;
    self->_egressTriggerSignatures = v6;

    v4 = v8;
    egressTriggerSignatures = self->_egressTriggerSignatures;
  }

  [(NSMutableArray *)egressTriggerSignatures addObject:v4];
}

- (void)setHasComingFromState:(BOOL)a3
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

- (int)ingressMobilityCode
{
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    return self->_ingressMobilityCode;
  }

  else
  {
    return 1;
  }
}

- (void)setHasIngressMobilityCode:(BOOL)a3
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

- (int)StringAsIngressMobilityCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Stationary"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UnqualifiedMoving"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Walking"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Running"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Vehicular"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)egressMobilityCode
{
  if (*(&self->_has + 1))
  {
    return self->_egressMobilityCode;
  }

  else
  {
    return 1;
  }
}

- (void)setHasEgressMobilityCode:(BOOL)a3
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

- (int)StringAsEgressMobilityCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Stationary"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UnqualifiedMoving"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Walking"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Running"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Vehicular"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasTransitionsSuppressedByMobility:(BOOL)a3
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

- (void)setHasCellularDataUsage:(BOOL)a3
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

- (int)policy
{
  if ((*(&self->_has + 2) & 4) != 0)
  {
    return self->_policy;
  }

  else
  {
    return 1;
  }
}

- (void)setHasPolicy:(BOOL)a3
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

- (int)StringAsPolicy:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Off"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Default"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Unlimited"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)advisor
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_advisor;
  }

  else
  {
    return 1;
  }
}

- (void)setHasAdvisor:(BOOL)a3
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

- (int)StringAsAdvisor:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"CellFallbackAdvisor"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"NoBackhaulAdvisor"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasActivationIdentifier:(BOOL)a3
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

- (int)wifiIngressTriggersAtIndex:(unint64_t)a3
{
  p_wifiIngressTriggers = &self->_wifiIngressTriggers;
  count = self->_wifiIngressTriggers.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_wifiIngressTriggers->list[a3];
}

- (int)StringAsWifiIngressTriggers:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Foreground"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Active"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Primary"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KnownGood"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RxSignalThreshold"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Arp"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DNS"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Mobility"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"NoUpLink"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"TcpProbesOverall"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"TcpProbesConnection"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"TcpProbesRead"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"TcpProbesWrite"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"TxThreshold"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"DarkScreen"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"WiFiCall"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"NoBackhaul"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"KnownBadAP"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"InternetDNS"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"Apsd"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"DefRoute"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"TcpProgressScore"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"RnfActive"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"NoProximity"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"Congestion"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"NetworkMoving"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"BadNetworkReputation"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"EdgeBssWalkout"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"RssiGradient"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"TcpExtraStats"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"RxSignalFullBars"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"CellOutrankActive"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"NoCostAdvantage"])
  {
    v4 = 33;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)cellIngressTriggersAtIndex:(unint64_t)a3
{
  p_cellIngressTriggers = &self->_cellIngressTriggers;
  count = self->_cellIngressTriggers.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_cellIngressTriggers->list[a3];
}

- (int)StringAsCellIngressTriggers:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Foreground"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Active"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Primary"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KnownGood"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RxSignalThreshold"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Arp"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DNS"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Mobility"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"NoUpLink"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"TcpProbesOverall"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"TcpProbesConnection"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"TcpProbesRead"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"TcpProbesWrite"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"TxThreshold"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"DarkScreen"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"WiFiCall"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"NoBackhaul"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"KnownBadAP"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"InternetDNS"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"Apsd"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"DefRoute"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"TcpProgressScore"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"RnfActive"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"NoProximity"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"Congestion"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"NetworkMoving"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"BadNetworkReputation"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"EdgeBssWalkout"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"RssiGradient"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"TcpExtraStats"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"RxSignalFullBars"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"CellOutrankActive"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"NoCostAdvantage"])
  {
    v4 = 33;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)wifiEgressTriggersAtIndex:(unint64_t)a3
{
  p_wifiEgressTriggers = &self->_wifiEgressTriggers;
  count = self->_wifiEgressTriggers.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_wifiEgressTriggers->list[a3];
}

- (int)StringAsWifiEgressTriggers:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Foreground"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Active"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Primary"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KnownGood"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RxSignalThreshold"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Arp"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DNS"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Mobility"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"NoUpLink"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"TcpProbesOverall"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"TcpProbesConnection"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"TcpProbesRead"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"TcpProbesWrite"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"TxThreshold"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"DarkScreen"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"WiFiCall"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"NoBackhaul"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"KnownBadAP"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"InternetDNS"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"Apsd"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"DefRoute"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"TcpProgressScore"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"RnfActive"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"NoProximity"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"Congestion"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"NetworkMoving"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"BadNetworkReputation"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"EdgeBssWalkout"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"RssiGradient"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"TcpExtraStats"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"RxSignalFullBars"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"CellOutrankActive"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"NoCostAdvantage"])
  {
    v4 = 33;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)cellEgressTriggersAtIndex:(unint64_t)a3
{
  p_cellEgressTriggers = &self->_cellEgressTriggers;
  count = self->_cellEgressTriggers.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_cellEgressTriggers->list[a3];
}

- (int)StringAsCellEgressTriggers:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Foreground"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Active"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Primary"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"KnownGood"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RxSignalThreshold"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"Arp"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DNS"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Mobility"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"NoUpLink"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"TcpProbesOverall"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"TcpProbesConnection"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"TcpProbesRead"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"TcpProbesWrite"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"TxThreshold"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"DarkScreen"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"WiFiCall"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"NoBackhaul"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"KnownBadAP"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"InternetDNS"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"Apsd"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"DefRoute"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"TcpProgressScore"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"RnfActive"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"NoProximity"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"Congestion"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"NetworkMoving"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"BadNetworkReputation"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"EdgeBssWalkout"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"RssiGradient"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"TcpExtraStats"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"RxSignalFullBars"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"CellOutrankActive"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"NoCostAdvantage"])
  {
    v4 = 33;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsAdvisoryAlternateNetworkType;
  v4 = [(AWDSymptomsAdvisoryAlternateNetworkType *)&v8 description];
  v5 = [(AWDSymptomsAdvisoryAlternateNetworkType *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v32 forKey:@"timestamp"];

    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_69;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  v33 = self->_advice - 1;
  if (v33 >= 6)
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_advice];
  }

  else
  {
    v34 = off_27898B858[v33];
  }

  [v3 setObject:v34 forKey:@"advice"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_77;
  }

LABEL_69:
  v38 = self->_bailOutOf - 1;
  if (v38 >= 3)
  {
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_bailOutOf];
  }

  else
  {
    v39 = off_27898B888[v38];
  }

  [v3 setObject:v39 forKey:@"bailOutOf"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_78;
  }

LABEL_77:
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_adviceHeldForSecs];
  [v3 setObject:v42 forKey:@"adviceHeldForSecs"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_79;
  }

LABEL_78:
  v43 = [MEMORY[0x277CCABB0] numberWithBool:self->_kernelProbingActivated];
  [v3 setObject:v43 forKey:@"kernelProbingActivated"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_89;
  }

LABEL_79:
  v44 = self->_ingressTrigger - 1;
  if (v44 >= 0x21)
  {
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ingressTrigger];
  }

  else
  {
    v45 = off_27898B8E8[v44];
  }

  [v3 setObject:v45 forKey:@"ingressTrigger"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_98;
  }

LABEL_89:
  v50 = self->_ingressTriggerOn - 1;
  if (v50 >= 3)
  {
    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ingressTriggerOn];
  }

  else
  {
    v51 = off_27898B888[v50];
  }

  [v3 setObject:v51 forKey:@"ingressTriggerOn"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_99;
  }

LABEL_98:
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ingressTriggerMultiplier];
  [v3 setObject:v54 forKey:@"ingressTriggerMultiplier"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_100;
  }

LABEL_99:
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ingressTriggerPercentagex100];
  [v3 setObject:v55 forKey:@"ingressTriggerPercentagex100"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_104;
  }

LABEL_100:
  v56 = self->_egressTrigger - 1;
  if (v56 >= 0x21)
  {
    v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_egressTrigger];
  }

  else
  {
    v57 = off_27898B8E8[v56];
  }

  [v3 setObject:v57 forKey:@"egressTrigger"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_108;
  }

LABEL_104:
  v58 = self->_egressTriggerOn - 1;
  if (v58 >= 3)
  {
    v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_egressTriggerOn];
  }

  else
  {
    v59 = off_27898B888[v58];
  }

  [v3 setObject:v59 forKey:@"egressTriggerOn"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_108:
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_egressTriggerMultiplier];
  [v3 setObject:v60 forKey:@"egressTriggerMultiplier"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_egressTriggerPercentagex100];
    [v3 setObject:v5 forKey:@"egressTriggerPercentagex100"];
  }

LABEL_15:
  ingressTriggerSignatures = self->_ingressTriggerSignatures;
  if (ingressTriggerSignatures)
  {
    [v3 setObject:ingressTriggerSignatures forKey:@"ingressTriggerSignature"];
  }

  egressTriggerSignatures = self->_egressTriggerSignatures;
  if (egressTriggerSignatures)
  {
    [v3 setObject:egressTriggerSignatures forKey:@"egressTriggerSignature"];
  }

  v8 = self->_has;
  if ((*&v8 & 0x80) != 0)
  {
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_comingFromState];
    [v3 setObject:v35 forKey:@"comingFromState"];

    v8 = self->_has;
    if ((*&v8 & 0x2000) == 0)
    {
LABEL_21:
      if ((*&v8 & 0x100) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_73;
    }
  }

  else if ((*&v8 & 0x2000) == 0)
  {
    goto LABEL_21;
  }

  v36 = self->_ingressMobilityCode - 1;
  if (v36 >= 6)
  {
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ingressMobilityCode];
  }

  else
  {
    v37 = off_27898B8A0[v36];
  }

  [v3 setObject:v37 forKey:@"ingressMobilityCode"];

  v8 = self->_has;
  if ((*&v8 & 0x100) == 0)
  {
LABEL_22:
    if ((*&v8 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_83;
  }

LABEL_73:
  v40 = self->_egressMobilityCode - 1;
  if (v40 >= 6)
  {
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_egressMobilityCode];
  }

  else
  {
    v41 = off_27898B8A0[v40];
  }

  [v3 setObject:v41 forKey:@"egressMobilityCode"];

  v8 = self->_has;
  if ((*&v8 & 0x80000) == 0)
  {
LABEL_23:
    if ((*&v8 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_84;
  }

LABEL_83:
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_transitionsSuppressedByMobility];
  [v3 setObject:v46 forKey:@"transitionsSuppressedByMobility"];

  v8 = self->_has;
  if ((*&v8 & 0x40) == 0)
  {
LABEL_24:
    if ((*&v8 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_85;
  }

LABEL_84:
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_cellularDataUsage];
  [v3 setObject:v47 forKey:@"cellularDataUsage"];

  v8 = self->_has;
  if ((*&v8 & 0x40000) == 0)
  {
LABEL_25:
    if ((*&v8 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_93;
  }

LABEL_85:
  v48 = self->_policy - 1;
  if (v48 >= 3)
  {
    v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_policy];
  }

  else
  {
    v49 = off_27898B8D0[v48];
  }

  [v3 setObject:v49 forKey:@"policy"];

  v8 = self->_has;
  if ((*&v8 & 0x10) == 0)
  {
LABEL_26:
    if ((*&v8 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_93:
  advisor = self->_advisor;
  if (advisor == 1)
  {
    v53 = @"CellFallbackAdvisor";
  }

  else if (advisor == 2)
  {
    v53 = @"NoBackhaulAdvisor";
  }

  else
  {
    v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_advisor];
  }

  [v3 setObject:v53 forKey:@"advisor"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_27:
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_activationIdentifier];
    [v3 setObject:v9 forKey:@"activationIdentifier"];
  }

LABEL_28:
  p_wifiIngressTriggers = &self->_wifiIngressTriggers;
  if (self->_wifiIngressTriggers.count)
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_wifiIngressTriggers.count)
    {
      v12 = 0;
      do
      {
        v13 = p_wifiIngressTriggers->list[v12] - 1;
        if (v13 >= 0x21)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_wifiIngressTriggers->list[v12]];
        }

        else
        {
          v14 = off_27898B8E8[v13];
        }

        [v11 addObject:v14];

        ++v12;
      }

      while (v12 < self->_wifiIngressTriggers.count);
    }

    [v3 setObject:v11 forKey:@"wifiIngressTriggers"];
  }

  p_cellIngressTriggers = &self->_cellIngressTriggers;
  if (self->_cellIngressTriggers.count)
  {
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_cellIngressTriggers.count)
    {
      v17 = 0;
      do
      {
        v18 = p_cellIngressTriggers->list[v17] - 1;
        if (v18 >= 0x21)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_cellIngressTriggers->list[v17]];
        }

        else
        {
          v19 = off_27898B8E8[v18];
        }

        [v16 addObject:v19];

        ++v17;
      }

      while (v17 < self->_cellIngressTriggers.count);
    }

    [v3 setObject:v16 forKey:@"cellIngressTriggers"];
  }

  p_wifiEgressTriggers = &self->_wifiEgressTriggers;
  if (self->_wifiEgressTriggers.count)
  {
    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_wifiEgressTriggers.count)
    {
      v22 = 0;
      do
      {
        v23 = p_wifiEgressTriggers->list[v22] - 1;
        if (v23 >= 0x21)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_wifiEgressTriggers->list[v22]];
        }

        else
        {
          v24 = off_27898B8E8[v23];
        }

        [v21 addObject:v24];

        ++v22;
      }

      while (v22 < self->_wifiEgressTriggers.count);
    }

    [v3 setObject:v21 forKey:@"wifiEgressTriggers"];
  }

  p_cellEgressTriggers = &self->_cellEgressTriggers;
  if (self->_cellEgressTriggers.count)
  {
    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (p_cellEgressTriggers->count)
    {
      v27 = 0;
      do
      {
        v28 = p_cellEgressTriggers->list[v27] - 1;
        if (v28 >= 0x21)
        {
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_cellEgressTriggers->list[v27]];
        }

        else
        {
          v29 = off_27898B8E8[v28];
        }

        [v26 addObject:v29];

        ++v27;
      }

      while (v27 < p_cellEgressTriggers->count);
    }

    [v3 setObject:v26 forKey:@"cellEgressTriggers"];
  }

  v30 = v3;

  return v3;
}

- (void)writeTo:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  advice = self->_advice;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  bailOutOf = self->_bailOutOf;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  adviceHeldForSecs = self->_adviceHeldForSecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  kernelProbingActivated = self->_kernelProbingActivated;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  ingressTrigger = self->_ingressTrigger;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  ingressTriggerOn = self->_ingressTriggerOn;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  ingressTriggerMultiplier = self->_ingressTriggerMultiplier;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  ingressTriggerPercentagex100 = self->_ingressTriggerPercentagex100;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  egressTrigger = self->_egressTrigger;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  egressTriggerOn = self->_egressTriggerOn;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_62:
  egressTriggerMultiplier = self->_egressTriggerMultiplier;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    egressTriggerPercentagex100 = self->_egressTriggerPercentagex100;
    PBDataWriterWriteUint32Field();
  }

LABEL_15:
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = self->_ingressTriggerSignatures;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v55;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v54 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v9);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = self->_egressTriggerSignatures;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v51;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v50 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v15);
  }

  v19 = self->_has;
  if ((*&v19 & 0x80) != 0)
  {
    comingFromState = self->_comingFromState;
    PBDataWriterWriteUint32Field();
    v19 = self->_has;
    if ((*&v19 & 0x2000) == 0)
    {
LABEL_31:
      if ((*&v19 & 0x100) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_66;
    }
  }

  else if ((*&v19 & 0x2000) == 0)
  {
    goto LABEL_31;
  }

  ingressMobilityCode = self->_ingressMobilityCode;
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((*&v19 & 0x100) == 0)
  {
LABEL_32:
    if ((*&v19 & 0x80000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_66:
  egressMobilityCode = self->_egressMobilityCode;
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((*&v19 & 0x80000) == 0)
  {
LABEL_33:
    if ((*&v19 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_68;
  }

LABEL_67:
  transitionsSuppressedByMobility = self->_transitionsSuppressedByMobility;
  PBDataWriterWriteUint32Field();
  v19 = self->_has;
  if ((*&v19 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v19 & 0x40000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_69;
  }

LABEL_68:
  cellularDataUsage = self->_cellularDataUsage;
  PBDataWriterWriteUint32Field();
  v19 = self->_has;
  if ((*&v19 & 0x40000) == 0)
  {
LABEL_35:
    if ((*&v19 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_70;
  }

LABEL_69:
  policy = self->_policy;
  PBDataWriterWriteInt32Field();
  v19 = self->_has;
  if ((*&v19 & 0x10) == 0)
  {
LABEL_36:
    if ((*&v19 & 4) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_70:
  advisor = self->_advisor;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_37:
    activationIdentifier = self->_activationIdentifier;
    PBDataWriterWriteUint32Field();
  }

LABEL_38:
  if (self->_wifiIngressTriggers.count)
  {
    v21 = 0;
    do
    {
      v22 = self->_wifiIngressTriggers.list[v21];
      PBDataWriterWriteInt32Field();
      ++v21;
    }

    while (v21 < self->_wifiIngressTriggers.count);
  }

  if (self->_cellIngressTriggers.count)
  {
    v23 = 0;
    do
    {
      v24 = self->_cellIngressTriggers.list[v23];
      PBDataWriterWriteInt32Field();
      ++v23;
    }

    while (v23 < self->_cellIngressTriggers.count);
  }

  if (self->_wifiEgressTriggers.count)
  {
    v25 = 0;
    do
    {
      v26 = self->_wifiEgressTriggers.list[v25];
      PBDataWriterWriteInt32Field();
      ++v25;
    }

    while (v25 < self->_wifiEgressTriggers.count);
  }

  p_cellEgressTriggers = &self->_cellEgressTriggers;
  if (p_cellEgressTriggers->count)
  {
    v28 = 0;
    do
    {
      v29 = p_cellEgressTriggers->list[v28];
      PBDataWriterWriteInt32Field();
      ++v28;
    }

    while (v28 < p_cellEgressTriggers->count);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v4[14] = self->_timestamp;
    *(v4 + 55) |= 2u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 31) = self->_advice;
  *(v4 + 55) |= 8u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v4 + 33) = self->_bailOutOf;
  *(v4 + 55) |= 0x20u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  v4[13] = self->_adviceHeldForSecs;
  *(v4 + 55) |= 1u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v4 + 216) = self->_kernelProbingActivated;
  *(v4 + 55) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v4 + 45) = self->_ingressTrigger;
  *(v4 + 55) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v4 + 47) = self->_ingressTriggerOn;
  *(v4 + 55) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v4 + 46) = self->_ingressTriggerMultiplier;
  *(v4 + 55) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v4 + 48) = self->_ingressTriggerPercentagex100;
  *(v4 + 55) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 37) = self->_egressTrigger;
  *(v4 + 55) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

LABEL_62:
    *(v4 + 38) = self->_egressTriggerMultiplier;
    *(v4 + 55) |= 0x400u;
    if ((*&self->_has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_61:
  *(v4 + 39) = self->_egressTriggerOn;
  *(v4 + 55) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    goto LABEL_62;
  }

LABEL_13:
  if ((*&has & 0x1000) != 0)
  {
LABEL_14:
    *(v4 + 40) = self->_egressTriggerPercentagex100;
    *(v4 + 55) |= 0x1000u;
  }

LABEL_15:
  v27 = v4;
  if ([(AWDSymptomsAdvisoryAlternateNetworkType *)self ingressTriggerSignaturesCount])
  {
    [v27 clearIngressTriggerSignatures];
    v6 = [(AWDSymptomsAdvisoryAlternateNetworkType *)self ingressTriggerSignaturesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(AWDSymptomsAdvisoryAlternateNetworkType *)self ingressTriggerSignatureAtIndex:i];
        [v27 addIngressTriggerSignature:v9];
      }
    }
  }

  if ([(AWDSymptomsAdvisoryAlternateNetworkType *)self egressTriggerSignaturesCount])
  {
    [v27 clearEgressTriggerSignatures];
    v10 = [(AWDSymptomsAdvisoryAlternateNetworkType *)self egressTriggerSignaturesCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(AWDSymptomsAdvisoryAlternateNetworkType *)self egressTriggerSignatureAtIndex:j];
        [v27 addEgressTriggerSignature:v13];
      }
    }
  }

  v14 = self->_has;
  if ((*&v14 & 0x80) != 0)
  {
    v27[35] = self->_comingFromState;
    v27[55] |= 0x80u;
    v14 = self->_has;
    if ((*&v14 & 0x2000) == 0)
    {
LABEL_25:
      if ((*&v14 & 0x100) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_66;
    }
  }

  else if ((*&v14 & 0x2000) == 0)
  {
    goto LABEL_25;
  }

  v27[44] = self->_ingressMobilityCode;
  v27[55] |= 0x2000u;
  v14 = self->_has;
  if ((*&v14 & 0x100) == 0)
  {
LABEL_26:
    if ((*&v14 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  v27[36] = self->_egressMobilityCode;
  v27[55] |= 0x100u;
  v14 = self->_has;
  if ((*&v14 & 0x80000) == 0)
  {
LABEL_27:
    if ((*&v14 & 0x40) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  v27[53] = self->_transitionsSuppressedByMobility;
  v27[55] |= 0x80000u;
  v14 = self->_has;
  if ((*&v14 & 0x40) == 0)
  {
LABEL_28:
    if ((*&v14 & 0x40000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  v27[34] = self->_cellularDataUsage;
  v27[55] |= 0x40u;
  v14 = self->_has;
  if ((*&v14 & 0x40000) == 0)
  {
LABEL_29:
    if ((*&v14 & 0x10) == 0)
    {
      goto LABEL_30;
    }

LABEL_70:
    v27[32] = self->_advisor;
    v27[55] |= 0x10u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_69:
  v27[52] = self->_policy;
  v27[55] |= 0x40000u;
  v14 = self->_has;
  if ((*&v14 & 0x10) != 0)
  {
    goto LABEL_70;
  }

LABEL_30:
  if ((*&v14 & 4) != 0)
  {
LABEL_31:
    v27[30] = self->_activationIdentifier;
    v27[55] |= 4u;
  }

LABEL_32:
  if ([(AWDSymptomsAdvisoryAlternateNetworkType *)self wifiIngressTriggersCount])
  {
    [v27 clearWifiIngressTriggers];
    v15 = [(AWDSymptomsAdvisoryAlternateNetworkType *)self wifiIngressTriggersCount];
    if (v15)
    {
      v16 = v15;
      for (k = 0; k != v16; ++k)
      {
        [v27 addWifiIngressTriggers:{-[AWDSymptomsAdvisoryAlternateNetworkType wifiIngressTriggersAtIndex:](self, "wifiIngressTriggersAtIndex:", k)}];
      }
    }
  }

  if ([(AWDSymptomsAdvisoryAlternateNetworkType *)self cellIngressTriggersCount])
  {
    [v27 clearCellIngressTriggers];
    v18 = [(AWDSymptomsAdvisoryAlternateNetworkType *)self cellIngressTriggersCount];
    if (v18)
    {
      v19 = v18;
      for (m = 0; m != v19; ++m)
      {
        [v27 addCellIngressTriggers:{-[AWDSymptomsAdvisoryAlternateNetworkType cellIngressTriggersAtIndex:](self, "cellIngressTriggersAtIndex:", m)}];
      }
    }
  }

  if ([(AWDSymptomsAdvisoryAlternateNetworkType *)self wifiEgressTriggersCount])
  {
    [v27 clearWifiEgressTriggers];
    v21 = [(AWDSymptomsAdvisoryAlternateNetworkType *)self wifiEgressTriggersCount];
    if (v21)
    {
      v22 = v21;
      for (n = 0; n != v22; ++n)
      {
        [v27 addWifiEgressTriggers:{-[AWDSymptomsAdvisoryAlternateNetworkType wifiEgressTriggersAtIndex:](self, "wifiEgressTriggersAtIndex:", n)}];
      }
    }
  }

  if ([(AWDSymptomsAdvisoryAlternateNetworkType *)self cellEgressTriggersCount])
  {
    [v27 clearCellEgressTriggers];
    v24 = [(AWDSymptomsAdvisoryAlternateNetworkType *)self cellEgressTriggersCount];
    if (v24)
    {
      v25 = v24;
      for (ii = 0; ii != v25; ++ii)
      {
        [v27 addCellEgressTriggers:{-[AWDSymptomsAdvisoryAlternateNetworkType cellEgressTriggersAtIndex:](self, "cellEgressTriggersAtIndex:", ii)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    *(v5 + 112) = self->_timestamp;
    *(v5 + 220) |= 2u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 124) = self->_advice;
  *(v5 + 220) |= 8u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_4:
    if ((*&has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 132) = self->_bailOutOf;
  *(v5 + 220) |= 0x20u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 104) = self->_adviceHeldForSecs;
  *(v5 + 220) |= 1u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_6:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 216) = self->_kernelProbingActivated;
  *(v5 + 220) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 180) = self->_ingressTrigger;
  *(v5 + 220) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 188) = self->_ingressTriggerOn;
  *(v5 + 220) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 184) = self->_ingressTriggerMultiplier;
  *(v5 + 220) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 192) = self->_ingressTriggerPercentagex100;
  *(v5 + 220) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 148) = self->_egressTrigger;
  *(v5 + 220) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 156) = self->_egressTriggerOn;
  *(v5 + 220) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_50:
  *(v5 + 152) = self->_egressTriggerMultiplier;
  *(v5 + 220) |= 0x400u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    *(v5 + 160) = self->_egressTriggerPercentagex100;
    *(v5 + 220) |= 0x1000u;
  }

LABEL_15:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_ingressTriggerSignatures;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v27 + 1) + 8 * v12) copyWithZone:a3];
        [v6 addIngressTriggerSignature:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_egressTriggerSignatures;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v23 + 1) + 8 * v18) copyWithZone:{a3, v23}];
        [v6 addEgressTriggerSignature:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  v20 = self->_has;
  if ((*&v20 & 0x80) != 0)
  {
    v6[35] = self->_comingFromState;
    v6[55] |= 0x80u;
    v20 = self->_has;
    if ((*&v20 & 0x2000) == 0)
    {
LABEL_31:
      if ((*&v20 & 0x100) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_54;
    }
  }

  else if ((*&v20 & 0x2000) == 0)
  {
    goto LABEL_31;
  }

  v6[44] = self->_ingressMobilityCode;
  v6[55] |= 0x2000u;
  v20 = self->_has;
  if ((*&v20 & 0x100) == 0)
  {
LABEL_32:
    if ((*&v20 & 0x80000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_55;
  }

LABEL_54:
  v6[36] = self->_egressMobilityCode;
  v6[55] |= 0x100u;
  v20 = self->_has;
  if ((*&v20 & 0x80000) == 0)
  {
LABEL_33:
    if ((*&v20 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_56;
  }

LABEL_55:
  v6[53] = self->_transitionsSuppressedByMobility;
  v6[55] |= 0x80000u;
  v20 = self->_has;
  if ((*&v20 & 0x40) == 0)
  {
LABEL_34:
    if ((*&v20 & 0x40000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_57;
  }

LABEL_56:
  v6[34] = self->_cellularDataUsage;
  v6[55] |= 0x40u;
  v20 = self->_has;
  if ((*&v20 & 0x40000) == 0)
  {
LABEL_35:
    if ((*&v20 & 0x10) == 0)
    {
      goto LABEL_36;
    }

LABEL_58:
    v6[32] = self->_advisor;
    v6[55] |= 0x10u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_57:
  v6[52] = self->_policy;
  v6[55] |= 0x40000u;
  v20 = self->_has;
  if ((*&v20 & 0x10) != 0)
  {
    goto LABEL_58;
  }

LABEL_36:
  if ((*&v20 & 4) != 0)
  {
LABEL_37:
    v6[30] = self->_activationIdentifier;
    v6[55] |= 4u;
  }

LABEL_38:
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_118;
  }

  has = self->_has;
  v6 = *(v4 + 55);
  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_timestamp != *(v4 + 14))
    {
      goto LABEL_118;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_118;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_advice != *(v4 + 31))
    {
      goto LABEL_118;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_118;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_bailOutOf != *(v4 + 33))
    {
      goto LABEL_118;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_118;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_adviceHeldForSecs != *(v4 + 13))
    {
      goto LABEL_118;
    }
  }

  else if (v6)
  {
    goto LABEL_118;
  }

  if ((*&has & 0x100000) == 0)
  {
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

LABEL_118:
    IsEqual = 0;
    goto LABEL_119;
  }

  if ((v6 & 0x100000) == 0)
  {
    goto LABEL_118;
  }

  v7 = *(v4 + 216);
  if (self->_kernelProbingActivated)
  {
    if ((*(v4 + 216) & 1) == 0)
    {
      goto LABEL_118;
    }
  }

  else if (*(v4 + 216))
  {
    goto LABEL_118;
  }

LABEL_24:
  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_ingressTrigger != *(v4 + 45))
    {
      goto LABEL_118;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_118;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_ingressTriggerOn != *(v4 + 47))
    {
      goto LABEL_118;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_118;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_ingressTriggerMultiplier != *(v4 + 46))
    {
      goto LABEL_118;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_118;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_ingressTriggerPercentagex100 != *(v4 + 48))
    {
      goto LABEL_118;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_118;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_egressTrigger != *(v4 + 37))
    {
      goto LABEL_118;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_118;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_egressTriggerOn != *(v4 + 39))
    {
      goto LABEL_118;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_118;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_egressTriggerMultiplier != *(v4 + 38))
    {
      goto LABEL_118;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_118;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_egressTriggerPercentagex100 != *(v4 + 40))
    {
      goto LABEL_118;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_118;
  }

  ingressTriggerSignatures = self->_ingressTriggerSignatures;
  if (ingressTriggerSignatures | *(v4 + 25) && ![(NSMutableArray *)ingressTriggerSignatures isEqual:?])
  {
    goto LABEL_118;
  }

  egressTriggerSignatures = self->_egressTriggerSignatures;
  if (egressTriggerSignatures | *(v4 + 21))
  {
    if (![(NSMutableArray *)egressTriggerSignatures isEqual:?])
    {
      goto LABEL_118;
    }
  }

  v10 = self->_has;
  v11 = *(v4 + 55);
  if ((*&v10 & 0x80) != 0)
  {
    if ((v11 & 0x80) == 0 || self->_comingFromState != *(v4 + 35))
    {
      goto LABEL_118;
    }
  }

  else if ((v11 & 0x80) != 0)
  {
    goto LABEL_118;
  }

  if ((*&v10 & 0x2000) != 0)
  {
    if ((v11 & 0x2000) == 0 || self->_ingressMobilityCode != *(v4 + 44))
    {
      goto LABEL_118;
    }
  }

  else if ((v11 & 0x2000) != 0)
  {
    goto LABEL_118;
  }

  if ((*&v10 & 0x100) != 0)
  {
    if ((v11 & 0x100) == 0 || self->_egressMobilityCode != *(v4 + 36))
    {
      goto LABEL_118;
    }
  }

  else if ((v11 & 0x100) != 0)
  {
    goto LABEL_118;
  }

  if ((*&v10 & 0x80000) != 0)
  {
    if ((v11 & 0x80000) == 0 || self->_transitionsSuppressedByMobility != *(v4 + 53))
    {
      goto LABEL_118;
    }
  }

  else if ((v11 & 0x80000) != 0)
  {
    goto LABEL_118;
  }

  if ((*&v10 & 0x40) != 0)
  {
    if ((v11 & 0x40) == 0 || self->_cellularDataUsage != *(v4 + 34))
    {
      goto LABEL_118;
    }
  }

  else if ((v11 & 0x40) != 0)
  {
    goto LABEL_118;
  }

  if ((*&v10 & 0x40000) != 0)
  {
    if ((v11 & 0x40000) == 0 || self->_policy != *(v4 + 52))
    {
      goto LABEL_118;
    }
  }

  else if ((v11 & 0x40000) != 0)
  {
    goto LABEL_118;
  }

  if ((*&v10 & 0x10) != 0)
  {
    if ((v11 & 0x10) == 0 || self->_advisor != *(v4 + 32))
    {
      goto LABEL_118;
    }
  }

  else if ((v11 & 0x10) != 0)
  {
    goto LABEL_118;
  }

  if ((*&v10 & 4) != 0)
  {
    if ((v11 & 4) == 0 || self->_activationIdentifier != *(v4 + 30))
    {
      goto LABEL_118;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_118;
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_118;
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_119:

  return IsEqual;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 2) != 0)
  {
    v32 = 2654435761u * self->_timestamp;
    if ((*&has & 8) != 0)
    {
LABEL_3:
      v31 = 2654435761 * self->_advice;
      if ((*&has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v32 = 0;
    if ((*&has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v31 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_4:
    v30 = 2654435761 * self->_bailOutOf;
    if (*&has)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v30 = 0;
  if (*&has)
  {
LABEL_5:
    v29 = 2654435761u * self->_adviceHeldForSecs;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v29 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_6:
    v28 = 2654435761 * self->_kernelProbingActivated;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v28 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_7:
    v27 = 2654435761 * self->_ingressTrigger;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v27 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_8:
    v26 = 2654435761 * self->_ingressTriggerOn;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v26 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_9:
    v4 = 2654435761 * self->_ingressTriggerMultiplier;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_10:
    v5 = 2654435761 * self->_ingressTriggerPercentagex100;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v5 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_11:
    v6 = 2654435761 * self->_egressTrigger;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v6 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_12:
    v7 = 2654435761 * self->_egressTriggerOn;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v8 = 0;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_25:
  v7 = 0;
  if ((*&has & 0x400) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v8 = 2654435761 * self->_egressTriggerMultiplier;
  if ((*&has & 0x1000) != 0)
  {
LABEL_14:
    v9 = 2654435761 * self->_egressTriggerPercentagex100;
    goto LABEL_28;
  }

LABEL_27:
  v9 = 0;
LABEL_28:
  v10 = [(NSMutableArray *)self->_ingressTriggerSignatures hash];
  v11 = [(NSMutableArray *)self->_egressTriggerSignatures hash];
  v12 = self->_has;
  if ((*&v12 & 0x80) != 0)
  {
    v13 = 2654435761 * self->_comingFromState;
    if ((*&v12 & 0x2000) != 0)
    {
LABEL_30:
      v14 = 2654435761 * self->_ingressMobilityCode;
      if ((*&v12 & 0x100) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 0x2000) != 0)
    {
      goto LABEL_30;
    }
  }

  v14 = 0;
  if ((*&v12 & 0x100) != 0)
  {
LABEL_31:
    v15 = 2654435761 * self->_egressMobilityCode;
    if ((*&v12 & 0x80000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

LABEL_39:
  v15 = 0;
  if ((*&v12 & 0x80000) != 0)
  {
LABEL_32:
    v16 = 2654435761 * self->_transitionsSuppressedByMobility;
    if ((*&v12 & 0x40) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

LABEL_40:
  v16 = 0;
  if ((*&v12 & 0x40) != 0)
  {
LABEL_33:
    v17 = 2654435761 * self->_cellularDataUsage;
    if ((*&v12 & 0x40000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

LABEL_41:
  v17 = 0;
  if ((*&v12 & 0x40000) != 0)
  {
LABEL_34:
    v18 = 2654435761 * self->_policy;
    if ((*&v12 & 0x10) != 0)
    {
      goto LABEL_35;
    }

LABEL_43:
    v19 = 0;
    if ((*&v12 & 4) != 0)
    {
      goto LABEL_36;
    }

LABEL_44:
    v20 = 0;
    goto LABEL_45;
  }

LABEL_42:
  v18 = 0;
  if ((*&v12 & 0x10) == 0)
  {
    goto LABEL_43;
  }

LABEL_35:
  v19 = 2654435761 * self->_advisor;
  if ((*&v12 & 4) == 0)
  {
    goto LABEL_44;
  }

LABEL_36:
  v20 = 2654435761 * self->_activationIdentifier;
LABEL_45:
  v21 = v31 ^ v32 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13;
  v22 = v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ PBRepeatedInt32Hash();
  v23 = v22 ^ PBRepeatedInt32Hash();
  v24 = v23 ^ PBRepeatedInt32Hash();
  return v21 ^ v24 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 55);
  if ((v6 & 2) != 0)
  {
    self->_timestamp = *(v4 + 14);
    *&self->_has |= 2u;
    v6 = *(v4 + 55);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_advice = *(v4 + 31);
  *&self->_has |= 8u;
  v6 = *(v4 + 55);
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_bailOutOf = *(v4 + 33);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 55);
  if ((v6 & 1) == 0)
  {
LABEL_5:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_adviceHeldForSecs = *(v4 + 13);
  *&self->_has |= 1u;
  v6 = *(v4 + 55);
  if ((v6 & 0x100000) == 0)
  {
LABEL_6:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_kernelProbingActivated = *(v4 + 216);
  *&self->_has |= 0x100000u;
  v6 = *(v4 + 55);
  if ((v6 & 0x4000) == 0)
  {
LABEL_7:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_ingressTrigger = *(v4 + 45);
  *&self->_has |= 0x4000u;
  v6 = *(v4 + 55);
  if ((v6 & 0x10000) == 0)
  {
LABEL_8:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_ingressTriggerOn = *(v4 + 47);
  *&self->_has |= 0x10000u;
  v6 = *(v4 + 55);
  if ((v6 & 0x8000) == 0)
  {
LABEL_9:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_ingressTriggerMultiplier = *(v4 + 46);
  *&self->_has |= 0x8000u;
  v6 = *(v4 + 55);
  if ((v6 & 0x20000) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_ingressTriggerPercentagex100 = *(v4 + 48);
  *&self->_has |= 0x20000u;
  v6 = *(v4 + 55);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_egressTrigger = *(v4 + 37);
  *&self->_has |= 0x200u;
  v6 = *(v4 + 55);
  if ((v6 & 0x800) == 0)
  {
LABEL_12:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_egressTriggerOn = *(v4 + 39);
  *&self->_has |= 0x800u;
  v6 = *(v4 + 55);
  if ((v6 & 0x400) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_62:
  self->_egressTriggerMultiplier = *(v4 + 38);
  *&self->_has |= 0x400u;
  if ((*(v4 + 55) & 0x1000) != 0)
  {
LABEL_14:
    self->_egressTriggerPercentagex100 = *(v4 + 40);
    *&self->_has |= 0x1000u;
  }

LABEL_15:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = *(v4 + 25);
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDSymptomsAdvisoryAlternateNetworkType *)self addIngressTriggerSignature:*(*(&v35 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v9);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = *(v5 + 21);
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AWDSymptomsAdvisoryAlternateNetworkType *)self addEgressTriggerSignature:*(*(&v31 + 1) + 8 * j), v31];
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v14);
  }

  v17 = *(v5 + 55);
  if ((v17 & 0x80) != 0)
  {
    self->_comingFromState = *(v5 + 35);
    *&self->_has |= 0x80u;
    v17 = *(v5 + 55);
    if ((v17 & 0x2000) == 0)
    {
LABEL_31:
      if ((v17 & 0x100) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_66;
    }
  }

  else if ((v17 & 0x2000) == 0)
  {
    goto LABEL_31;
  }

  self->_ingressMobilityCode = *(v5 + 44);
  *&self->_has |= 0x2000u;
  v17 = *(v5 + 55);
  if ((v17 & 0x100) == 0)
  {
LABEL_32:
    if ((v17 & 0x80000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_egressMobilityCode = *(v5 + 36);
  *&self->_has |= 0x100u;
  v17 = *(v5 + 55);
  if ((v17 & 0x80000) == 0)
  {
LABEL_33:
    if ((v17 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_transitionsSuppressedByMobility = *(v5 + 53);
  *&self->_has |= 0x80000u;
  v17 = *(v5 + 55);
  if ((v17 & 0x40) == 0)
  {
LABEL_34:
    if ((v17 & 0x40000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_cellularDataUsage = *(v5 + 34);
  *&self->_has |= 0x40u;
  v17 = *(v5 + 55);
  if ((v17 & 0x40000) == 0)
  {
LABEL_35:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_policy = *(v5 + 52);
  *&self->_has |= 0x40000u;
  v17 = *(v5 + 55);
  if ((v17 & 0x10) == 0)
  {
LABEL_36:
    if ((v17 & 4) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_70:
  self->_advisor = *(v5 + 32);
  *&self->_has |= 0x10u;
  if ((*(v5 + 55) & 4) != 0)
  {
LABEL_37:
    self->_activationIdentifier = *(v5 + 30);
    *&self->_has |= 4u;
  }

LABEL_38:
  v18 = [v5 wifiIngressTriggersCount];
  if (v18)
  {
    v19 = v18;
    for (k = 0; k != v19; ++k)
    {
      -[AWDSymptomsAdvisoryAlternateNetworkType addWifiIngressTriggers:](self, "addWifiIngressTriggers:", [v5 wifiIngressTriggersAtIndex:k]);
    }
  }

  v21 = [v5 cellIngressTriggersCount];
  if (v21)
  {
    v22 = v21;
    for (m = 0; m != v22; ++m)
    {
      -[AWDSymptomsAdvisoryAlternateNetworkType addCellIngressTriggers:](self, "addCellIngressTriggers:", [v5 cellIngressTriggersAtIndex:m]);
    }
  }

  v24 = [v5 wifiEgressTriggersCount];
  if (v24)
  {
    v25 = v24;
    for (n = 0; n != v25; ++n)
    {
      -[AWDSymptomsAdvisoryAlternateNetworkType addWifiEgressTriggers:](self, "addWifiEgressTriggers:", [v5 wifiEgressTriggersAtIndex:n]);
    }
  }

  v27 = [v5 cellEgressTriggersCount];
  if (v27)
  {
    v28 = v27;
    for (ii = 0; ii != v28; ++ii)
    {
      -[AWDSymptomsAdvisoryAlternateNetworkType addCellEgressTriggers:](self, "addCellEgressTriggers:", [v5 cellEgressTriggersAtIndex:ii]);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end