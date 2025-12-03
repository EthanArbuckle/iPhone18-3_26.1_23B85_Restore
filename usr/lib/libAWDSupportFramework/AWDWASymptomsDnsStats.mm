@interface AWDWASymptomsDnsStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConfigType:(id)type;
- (int)StringAsSuppressedReason:(id)reason;
- (int)StringAsSymptomsDnsRecommendation:(id)recommendation;
- (int)configType;
- (int)suppressedReason;
- (int)symptomsDnsRecommendation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConfigType:(BOOL)type;
- (void)setHasDpsNotificationReceivedDuringStudy:(BOOL)study;
- (void)setHasImpactedServersAtStudyEnd:(BOOL)end;
- (void)setHasImpactedServersAtStudyStart:(BOOL)start;
- (void)setHasIsCaptiveServerIPResolved:(BOOL)resolved;
- (void)setHasIsPingEnqueueFailing:(BOOL)failing;
- (void)setHasLanHealthAfterDecision:(BOOL)decision;
- (void)setHasLanHealthBeforeDecision:(BOOL)decision;
- (void)setHasNetscoreAtStudyEnd:(BOOL)end;
- (void)setHasNetscoreAtStudyStart:(BOOL)start;
- (void)setHasNetscoreHealthAfterDecision:(BOOL)decision;
- (void)setHasNetscoreHealthBeforeDecision:(BOOL)decision;
- (void)setHasNumIpv4DnsServers:(BOOL)servers;
- (void)setHasNumIpv6DnsServers:(BOOL)servers;
- (void)setHasNumLocalDnsServers:(BOOL)servers;
- (void)setHasNumRemoteDnsServers:(BOOL)servers;
- (void)setHasSlowWiFiNotificationReceivedDuringStudy:(BOOL)study;
- (void)setHasStallscoreAtStudyEnd:(BOOL)end;
- (void)setHasStallscoreAtStudyStart:(BOOL)start;
- (void)setHasStallscoreHealthAfterDecision:(BOOL)decision;
- (void)setHasStallscoreHealthBeforeDecision:(BOOL)decision;
- (void)setHasSuppressedReason:(BOOL)reason;
- (void)setHasSymptomsDnsRecommendation:(BOOL)recommendation;
- (void)setHasSymptomsDnsscreenStateOn:(BOOL)on;
- (void)setHasTotalDnsServers:(BOOL)servers;
- (void)setHasWanHealthAfterDecision:(BOOL)decision;
- (void)setHasWanHealthBeforeDecision:(BOOL)decision;
- (void)writeTo:(id)to;
@end

@implementation AWDWASymptomsDnsStats

- (void)setHasTotalDnsServers:(BOOL)servers
{
  if (servers)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasNumIpv4DnsServers:(BOOL)servers
{
  if (servers)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasNumIpv6DnsServers:(BOOL)servers
{
  if (servers)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasNumLocalDnsServers:(BOOL)servers
{
  if (servers)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasNumRemoteDnsServers:(BOOL)servers
{
  if (servers)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (int)configType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_configType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConfigType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (int)StringAsConfigType:(id)type
{
  if ([type isEqualToString:@"kDnsServerConfigTypeNone"])
  {
    return 0;
  }

  if ([type isEqualToString:@"kDnsServerConfigTypeAutomatic"])
  {
    return 1;
  }

  if ([type isEqualToString:@"kDnsServerConfigTypeManual"])
  {
    return 2;
  }

  return 0;
}

- (void)setHasNetscoreAtStudyStart:(BOOL)start
{
  if (start)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasStallscoreAtStudyStart:(BOOL)start
{
  if (start)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasImpactedServersAtStudyStart:(BOOL)start
{
  if (start)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasNetscoreHealthBeforeDecision:(BOOL)decision
{
  if (decision)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasStallscoreHealthBeforeDecision:(BOOL)decision
{
  if (decision)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasLanHealthBeforeDecision:(BOOL)decision
{
  if (decision)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasWanHealthBeforeDecision:(BOOL)decision
{
  if (decision)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasIsCaptiveServerIPResolved:(BOOL)resolved
{
  if (resolved)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasSymptomsDnsscreenStateOn:(BOOL)on
{
  if (on)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (int)symptomsDnsRecommendation
{
  if ((*(&self->_has + 2) & 8) != 0)
  {
    return self->_symptomsDnsRecommendation;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSymptomsDnsRecommendation:(BOOL)recommendation
{
  if (recommendation)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (int)StringAsSymptomsDnsRecommendation:(id)recommendation
{
  if ([recommendation isEqualToString:@"kSymptomsDnsRecoveryTypeNone"])
  {
    return 0;
  }

  if ([recommendation isEqualToString:@"kSymptomsDnsRecoveryTypeReset"])
  {
    return 1;
  }

  if ([recommendation isEqualToString:@"kSymptomsDnsRecoveryTypeReassoc"])
  {
    return 2;
  }

  return 0;
}

- (int)suppressedReason
{
  if ((*(&self->_has + 2) & 4) != 0)
  {
    return self->_suppressedReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSuppressedReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (int)StringAsSuppressedReason:(id)reason
{
  if ([reason isEqualToString:@"kSymptomsDnsNotSuppressed"])
  {
    return 0;
  }

  if ([reason isEqualToString:@"kSymptomsDnsBudgetThresholdReached"])
  {
    return 1;
  }

  if ([reason isEqualToString:@"kSymptomsDnsSymptomsConditionsRecovered"])
  {
    return 2;
  }

  if ([reason isEqualToString:@"kSymptomsDnsPeerDiagnosticsStudy"])
  {
    return 3;
  }

  if ([reason isEqualToString:@"kSymptomsDnsAWDLActivitySuspected"])
  {
    return 4;
  }

  if ([reason isEqualToString:@"kSymptomsDnsCriticalAppInUse"])
  {
    return 5;
  }

  if ([reason isEqualToString:@"kSymptomsDnsWiFiDisassociatedDuringStudy"])
  {
    return 6;
  }

  if ([reason isEqualToString:@"kSymptomsDnsAverageCcaAboveThreshold"])
  {
    return 7;
  }

  if ([reason isEqualToString:@"kSymptomsDnsWiFiInterfaceNotPrimary"])
  {
    return 8;
  }

  if ([reason isEqualToString:@"kSymptomsDnsWiFiNetworkIsCaptive"])
  {
    return 9;
  }

  if ([reason isEqualToString:@"kSymptomsDnsServerConfigurationInvalid"])
  {
    return 10;
  }

  return 0;
}

- (void)setHasNetscoreAtStudyEnd:(BOOL)end
{
  if (end)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasStallscoreAtStudyEnd:(BOOL)end
{
  if (end)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasImpactedServersAtStudyEnd:(BOOL)end
{
  if (end)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasNetscoreHealthAfterDecision:(BOOL)decision
{
  if (decision)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasStallscoreHealthAfterDecision:(BOOL)decision
{
  if (decision)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasLanHealthAfterDecision:(BOOL)decision
{
  if (decision)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasWanHealthAfterDecision:(BOOL)decision
{
  if (decision)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasDpsNotificationReceivedDuringStudy:(BOOL)study
{
  if (study)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasSlowWiFiNotificationReceivedDuringStudy:(BOOL)study
{
  if (study)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasIsPingEnqueueFailing:(BOOL)failing
{
  if (failing)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWASymptomsDnsStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWASymptomsDnsStats description](&v3, sel_description), -[AWDWASymptomsDnsStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_totalDnsServers), @"totalDnsServers"}];
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numIpv4DnsServers), @"numIpv4DnsServers"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numIpv6DnsServers), @"numIpv6DnsServers"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numLocalDnsServers), @"numLocalDnsServers"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numRemoteDnsServers), @"numRemoteDnsServers"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_7:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_36:
  configType = self->_configType;
  if (configType >= 3)
  {
    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_configType];
  }

  else
  {
    v7 = off_29EE331B0[configType];
  }

  [dictionary setObject:v7 forKey:@"configType"];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_netscoreAtStudyStart), @"netscoreAtStudyStart"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stallscoreAtStudyStart), @"stallscoreAtStudyStart"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_impactedServersAtStudyStart), @"impactedServersAtStudyStart"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_netscoreHealthBeforeDecision), @"netscoreHealthBeforeDecision"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stallscoreHealthBeforeDecision), @"stallscoreHealthBeforeDecision"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lanHealthBeforeDecision), @"lanHealthBeforeDecision"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wanHealthBeforeDecision), @"wanHealthBeforeDecision"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isCaptiveServerIPResolved), @"isCaptiveServerIPResolved"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_symptomsDnsscreenStateOn), @"symptomsDnsscreenStateOn"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_49:
  symptomsDnsRecommendation = self->_symptomsDnsRecommendation;
  if (symptomsDnsRecommendation >= 3)
  {
    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_symptomsDnsRecommendation];
  }

  else
  {
    v9 = off_29EE331C8[symptomsDnsRecommendation];
  }

  [dictionary setObject:v9 forKey:@"symptomsDnsRecommendation"];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_53:
  suppressedReason = self->_suppressedReason;
  if (suppressedReason >= 0xB)
  {
    v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_suppressedReason];
  }

  else
  {
    v11 = off_29EE331E0[suppressedReason];
  }

  [dictionary setObject:v11 forKey:@"suppressedReason"];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_netscoreAtStudyEnd), @"netscoreAtStudyEnd"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stallscoreAtStudyEnd), @"stallscoreAtStudyEnd"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_21:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_impactedServersAtStudyEnd), @"impactedServersAtStudyEnd"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_netscoreHealthAfterDecision), @"netscoreHealthAfterDecision"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stallscoreHealthAfterDecision), @"stallscoreHealthAfterDecision"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_24:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lanHealthAfterDecision), @"lanHealthAfterDecision"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_25:
    if ((*&has & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wanHealthAfterDecision), @"wanHealthAfterDecision"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_26:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_symptomsDnsTimeSincePreviousTriggerMinutes), @"symptomsDnsTimeSincePreviousTriggerMinutes"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_27:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_66:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_slowWiFiNotificationReceivedDuringStudy), @"slowWiFiNotificationReceivedDuringStudy"}];
    if ((*&self->_has & 0x2000000) == 0)
    {
      return dictionary;
    }

    goto LABEL_29;
  }

LABEL_65:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_dpsNotificationReceivedDuringStudy), @"dpsNotificationReceivedDuringStudy"}];
  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    goto LABEL_66;
  }

LABEL_28:
  if ((*&has & 0x2000000) != 0)
  {
LABEL_29:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isPingEnqueueFailing), @"isPingEnqueueFailing"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    totalDnsServers = self->_totalDnsServers;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  numIpv4DnsServers = self->_numIpv4DnsServers;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  numIpv6DnsServers = self->_numIpv6DnsServers;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  numLocalDnsServers = self->_numLocalDnsServers;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  numRemoteDnsServers = self->_numRemoteDnsServers;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_7:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  configType = self->_configType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  netscoreAtStudyStart = self->_netscoreAtStudyStart;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  stallscoreAtStudyStart = self->_stallscoreAtStudyStart;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  impactedServersAtStudyStart = self->_impactedServersAtStudyStart;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  netscoreHealthBeforeDecision = self->_netscoreHealthBeforeDecision;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  stallscoreHealthBeforeDecision = self->_stallscoreHealthBeforeDecision;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  lanHealthBeforeDecision = self->_lanHealthBeforeDecision;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  wanHealthBeforeDecision = self->_wanHealthBeforeDecision;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  isCaptiveServerIPResolved = self->_isCaptiveServerIPResolved;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  symptomsDnsscreenStateOn = self->_symptomsDnsscreenStateOn;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  symptomsDnsRecommendation = self->_symptomsDnsRecommendation;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  suppressedReason = self->_suppressedReason;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  netscoreAtStudyEnd = self->_netscoreAtStudyEnd;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  stallscoreAtStudyEnd = self->_stallscoreAtStudyEnd;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_21:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  impactedServersAtStudyEnd = self->_impactedServersAtStudyEnd;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  netscoreHealthAfterDecision = self->_netscoreHealthAfterDecision;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  stallscoreHealthAfterDecision = self->_stallscoreHealthAfterDecision;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_24:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  lanHealthAfterDecision = self->_lanHealthAfterDecision;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_25:
    if ((*&has & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  wanHealthAfterDecision = self->_wanHealthAfterDecision;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_26:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  symptomsDnsTimeSincePreviousTriggerMinutes = self->_symptomsDnsTimeSincePreviousTriggerMinutes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_27:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_56:
    slowWiFiNotificationReceivedDuringStudy = self->_slowWiFiNotificationReceivedDuringStudy;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 0x2000000) == 0)
    {
      return;
    }

    goto LABEL_57;
  }

LABEL_55:
  dpsNotificationReceivedDuringStudy = self->_dpsNotificationReceivedDuringStudy;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    goto LABEL_56;
  }

LABEL_28:
  if ((*&has & 0x2000000) == 0)
  {
    return;
  }

LABEL_57:
  isPingEnqueueFailing = self->_isPingEnqueueFailing;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    *(to + 23) = self->_totalDnsServers;
    *(to + 28) |= 0x100000u;
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(to + 13) = self->_numIpv4DnsServers;
  *(to + 28) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(to + 14) = self->_numIpv6DnsServers;
  *(to + 28) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(to + 15) = self->_numLocalDnsServers;
  *(to + 28) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(to + 16) = self->_numRemoteDnsServers;
  *(to + 28) |= 0x2000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_7:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(to + 4) = self->_configType;
  *(to + 28) |= 2u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(to + 10) = self->_netscoreAtStudyStart;
  *(to + 28) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(to + 18) = self->_stallscoreAtStudyStart;
  *(to + 28) |= 0x8000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(to + 6) = self->_impactedServersAtStudyStart;
  *(to + 28) |= 8u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(to + 12) = self->_netscoreHealthBeforeDecision;
  *(to + 28) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(to + 20) = self->_stallscoreHealthBeforeDecision;
  *(to + 28) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(to + 8) = self->_lanHealthBeforeDecision;
  *(to + 28) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(to + 25) = self->_wanHealthBeforeDecision;
  *(to + 28) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(to + 105) = self->_isCaptiveServerIPResolved;
  *(to + 28) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(to + 108) = self->_symptomsDnsscreenStateOn;
  *(to + 28) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(to + 22) = self->_symptomsDnsRecommendation;
  *(to + 28) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(to + 21) = self->_suppressedReason;
  *(to + 28) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(to + 9) = self->_netscoreAtStudyEnd;
  *(to + 28) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(to + 17) = self->_stallscoreAtStudyEnd;
  *(to + 28) |= 0x4000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_21:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(to + 5) = self->_impactedServersAtStudyEnd;
  *(to + 28) |= 4u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(to + 11) = self->_netscoreHealthAfterDecision;
  *(to + 28) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(to + 19) = self->_stallscoreHealthAfterDecision;
  *(to + 28) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_24:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(to + 7) = self->_lanHealthAfterDecision;
  *(to + 28) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_25:
    if ((*&has & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(to + 24) = self->_wanHealthAfterDecision;
  *(to + 28) |= 0x200000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_26:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(to + 1) = self->_symptomsDnsTimeSincePreviousTriggerMinutes;
  *(to + 28) |= 1u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_27:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(to + 104) = self->_dpsNotificationReceivedDuringStudy;
  *(to + 28) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x2000000) == 0)
    {
      return;
    }

LABEL_57:
    *(to + 106) = self->_isPingEnqueueFailing;
    *(to + 28) |= 0x2000000u;
    return;
  }

LABEL_56:
  *(to + 107) = self->_slowWiFiNotificationReceivedDuringStudy;
  *(to + 28) |= 0x4000000u;
  if ((*&self->_has & 0x2000000) != 0)
  {
    goto LABEL_57;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    *(result + 23) = self->_totalDnsServers;
    *(result + 28) |= 0x100000u;
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(result + 13) = self->_numIpv4DnsServers;
  *(result + 28) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 14) = self->_numIpv6DnsServers;
  *(result + 28) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 15) = self->_numLocalDnsServers;
  *(result + 28) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 16) = self->_numRemoteDnsServers;
  *(result + 28) |= 0x2000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_7:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 4) = self->_configType;
  *(result + 28) |= 2u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 10) = self->_netscoreAtStudyStart;
  *(result + 28) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 18) = self->_stallscoreAtStudyStart;
  *(result + 28) |= 0x8000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 6) = self->_impactedServersAtStudyStart;
  *(result + 28) |= 8u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 12) = self->_netscoreHealthBeforeDecision;
  *(result + 28) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 20) = self->_stallscoreHealthBeforeDecision;
  *(result + 28) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 8) = self->_lanHealthBeforeDecision;
  *(result + 28) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 25) = self->_wanHealthBeforeDecision;
  *(result + 28) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 105) = self->_isCaptiveServerIPResolved;
  *(result + 28) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 108) = self->_symptomsDnsscreenStateOn;
  *(result + 28) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 22) = self->_symptomsDnsRecommendation;
  *(result + 28) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(result + 21) = self->_suppressedReason;
  *(result + 28) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 9) = self->_netscoreAtStudyEnd;
  *(result + 28) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(result + 17) = self->_stallscoreAtStudyEnd;
  *(result + 28) |= 0x4000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_21:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(result + 5) = self->_impactedServersAtStudyEnd;
  *(result + 28) |= 4u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(result + 11) = self->_netscoreHealthAfterDecision;
  *(result + 28) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(result + 19) = self->_stallscoreHealthAfterDecision;
  *(result + 28) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_24:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(result + 7) = self->_lanHealthAfterDecision;
  *(result + 28) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_25:
    if ((*&has & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 24) = self->_wanHealthAfterDecision;
  *(result + 28) |= 0x200000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_26:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(result + 1) = self->_symptomsDnsTimeSincePreviousTriggerMinutes;
  *(result + 28) |= 1u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_27:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(result + 104) = self->_dpsNotificationReceivedDuringStudy;
  *(result + 28) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x2000000) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_57:
  *(result + 107) = self->_slowWiFiNotificationReceivedDuringStudy;
  *(result + 28) |= 0x4000000u;
  if ((*&self->_has & 0x2000000) == 0)
  {
    return result;
  }

LABEL_29:
  *(result + 106) = self->_isPingEnqueueFailing;
  *(result + 28) |= 0x2000000u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 28);
  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_totalDnsServers != *(equal + 23))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_numIpv4DnsServers != *(equal + 13))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_numIpv6DnsServers != *(equal + 14))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_numLocalDnsServers != *(equal + 15))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_numRemoteDnsServers != *(equal + 16))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_configType != *(equal + 4))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_netscoreAtStudyStart != *(equal + 10))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_stallscoreAtStudyStart != *(equal + 18))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_impactedServersAtStudyStart != *(equal + 6))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_netscoreHealthBeforeDecision != *(equal + 12))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_stallscoreHealthBeforeDecision != *(equal + 20))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_lanHealthBeforeDecision != *(equal + 8))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_wanHealthBeforeDecision != *(equal + 25))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_151;
    }

    v8 = *(equal + 105);
    if (self->_isCaptiveServerIPResolved)
    {
      if ((*(equal + 105) & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    else if (*(equal + 105))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x1000000) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_151;
    }

    v9 = *(equal + 108);
    if (self->_symptomsDnsscreenStateOn)
    {
      if ((*(equal + 108) & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    else if (*(equal + 108))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x8000000) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0 || self->_symptomsDnsRecommendation != *(equal + 22))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_suppressedReason != *(equal + 21))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_netscoreAtStudyEnd != *(equal + 9))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_stallscoreAtStudyEnd != *(equal + 17))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_impactedServersAtStudyEnd != *(equal + 5))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_netscoreHealthAfterDecision != *(equal + 11))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_stallscoreHealthAfterDecision != *(equal + 19))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_lanHealthAfterDecision != *(equal + 7))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_wanHealthAfterDecision != *(equal + 24))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_151;
  }

  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_symptomsDnsTimeSincePreviousTriggerMinutes != *(equal + 1))
    {
      goto LABEL_151;
    }
  }

  else if (v7)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_151;
    }

    v10 = *(equal + 104);
    if (self->_dpsNotificationReceivedDuringStudy)
    {
      if ((*(equal + 104) & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    else if (*(equal + 104))
    {
      goto LABEL_151;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_151;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v7 & 0x4000000) != 0)
    {
      v11 = *(equal + 107);
      if (self->_slowWiFiNotificationReceivedDuringStudy)
      {
        if ((*(equal + 107) & 1) == 0)
        {
          goto LABEL_151;
        }

        goto LABEL_149;
      }

      if ((*(equal + 107) & 1) == 0)
      {
        goto LABEL_149;
      }
    }

LABEL_151:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((v7 & 0x4000000) != 0)
  {
    goto LABEL_151;
  }

LABEL_149:
  LOBYTE(v5) = (v7 & 0x2000000) == 0;
  if ((*&has & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_151;
    }

    if (self->_isPingEnqueueFailing)
    {
      if ((*(equal + 106) & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    else if (*(equal + 106))
    {
      goto LABEL_151;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    v31 = 2654435761 * self->_totalDnsServers;
    if ((*&has & 0x400) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_numIpv4DnsServers;
      if ((*&has & 0x800) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v31 = 0;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_numIpv6DnsServers;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  v4 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_numLocalDnsServers;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  v5 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_numRemoteDnsServers;
    if ((*&has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_configType;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  v7 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_8:
    v8 = 2654435761 * self->_netscoreAtStudyStart;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  v8 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_9:
    v9 = 2654435761 * self->_stallscoreAtStudyStart;
    if ((*&has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  v9 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_10:
    v10 = 2654435761 * self->_impactedServersAtStudyStart;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  v10 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_11:
    v11 = 2654435761 * self->_netscoreHealthBeforeDecision;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  v11 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_12:
    v12 = 2654435761 * self->_stallscoreHealthBeforeDecision;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v12 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_13:
    v13 = 2654435761 * self->_lanHealthBeforeDecision;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  v13 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_14:
    v14 = 2654435761 * self->_wanHealthBeforeDecision;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  v14 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_15:
    v15 = 2654435761 * self->_isCaptiveServerIPResolved;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  v15 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_16:
    v16 = 2654435761 * self->_symptomsDnsscreenStateOn;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  v16 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_17:
    v17 = 2654435761 * self->_symptomsDnsRecommendation;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  v17 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_18:
    v18 = 2654435761 * self->_suppressedReason;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  v18 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_19:
    v19 = 2654435761 * self->_netscoreAtStudyEnd;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  v19 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_20:
    v20 = 2654435761 * self->_stallscoreAtStudyEnd;
    if ((*&has & 4) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  v20 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_21:
    v21 = 2654435761 * self->_impactedServersAtStudyEnd;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  v21 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_22:
    v22 = 2654435761 * self->_netscoreHealthAfterDecision;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  v22 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_23:
    v23 = 2654435761 * self->_stallscoreHealthAfterDecision;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  v23 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_24:
    v24 = 2654435761 * self->_lanHealthAfterDecision;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  v24 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_25:
    v25 = 2654435761 * self->_wanHealthAfterDecision;
    if (*&has)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  v25 = 0;
  if (*&has)
  {
LABEL_26:
    v26 = 2654435761u * self->_symptomsDnsTimeSincePreviousTriggerMinutes;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  v26 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_27:
    v27 = 2654435761 * self->_dpsNotificationReceivedDuringStudy;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_28;
    }

LABEL_56:
    v28 = 0;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_29;
    }

LABEL_57:
    v29 = 0;
    return v3 ^ v31 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
  }

LABEL_55:
  v27 = 0;
  if ((*&has & 0x4000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_28:
  v28 = 2654435761 * self->_slowWiFiNotificationReceivedDuringStudy;
  if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_29:
  v29 = 2654435761 * self->_isPingEnqueueFailing;
  return v3 ^ v31 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 28);
  if ((v3 & 0x100000) != 0)
  {
    self->_totalDnsServers = *(from + 23);
    *&self->_has |= 0x100000u;
    v3 = *(from + 28);
    if ((v3 & 0x400) == 0)
    {
LABEL_3:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 0x400) == 0)
  {
    goto LABEL_3;
  }

  self->_numIpv4DnsServers = *(from + 13);
  *&self->_has |= 0x400u;
  v3 = *(from + 28);
  if ((v3 & 0x800) == 0)
  {
LABEL_4:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_numIpv6DnsServers = *(from + 14);
  *&self->_has |= 0x800u;
  v3 = *(from + 28);
  if ((v3 & 0x1000) == 0)
  {
LABEL_5:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_numLocalDnsServers = *(from + 15);
  *&self->_has |= 0x1000u;
  v3 = *(from + 28);
  if ((v3 & 0x2000) == 0)
  {
LABEL_6:
    if ((v3 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_numRemoteDnsServers = *(from + 16);
  *&self->_has |= 0x2000u;
  v3 = *(from + 28);
  if ((v3 & 2) == 0)
  {
LABEL_7:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_configType = *(from + 4);
  *&self->_has |= 2u;
  v3 = *(from + 28);
  if ((v3 & 0x80) == 0)
  {
LABEL_8:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_netscoreAtStudyStart = *(from + 10);
  *&self->_has |= 0x80u;
  v3 = *(from + 28);
  if ((v3 & 0x8000) == 0)
  {
LABEL_9:
    if ((v3 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_stallscoreAtStudyStart = *(from + 18);
  *&self->_has |= 0x8000u;
  v3 = *(from + 28);
  if ((v3 & 8) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_impactedServersAtStudyStart = *(from + 6);
  *&self->_has |= 8u;
  v3 = *(from + 28);
  if ((v3 & 0x200) == 0)
  {
LABEL_11:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_netscoreHealthBeforeDecision = *(from + 12);
  *&self->_has |= 0x200u;
  v3 = *(from + 28);
  if ((v3 & 0x20000) == 0)
  {
LABEL_12:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_stallscoreHealthBeforeDecision = *(from + 20);
  *&self->_has |= 0x20000u;
  v3 = *(from + 28);
  if ((v3 & 0x20) == 0)
  {
LABEL_13:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_lanHealthBeforeDecision = *(from + 8);
  *&self->_has |= 0x20u;
  v3 = *(from + 28);
  if ((v3 & 0x400000) == 0)
  {
LABEL_14:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_wanHealthBeforeDecision = *(from + 25);
  *&self->_has |= 0x400000u;
  v3 = *(from + 28);
  if ((v3 & 0x1000000) == 0)
  {
LABEL_15:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_isCaptiveServerIPResolved = *(from + 105);
  *&self->_has |= 0x1000000u;
  v3 = *(from + 28);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_16:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_symptomsDnsscreenStateOn = *(from + 108);
  *&self->_has |= 0x8000000u;
  v3 = *(from + 28);
  if ((v3 & 0x80000) == 0)
  {
LABEL_17:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_symptomsDnsRecommendation = *(from + 22);
  *&self->_has |= 0x80000u;
  v3 = *(from + 28);
  if ((v3 & 0x40000) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_suppressedReason = *(from + 21);
  *&self->_has |= 0x40000u;
  v3 = *(from + 28);
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_netscoreAtStudyEnd = *(from + 9);
  *&self->_has |= 0x40u;
  v3 = *(from + 28);
  if ((v3 & 0x4000) == 0)
  {
LABEL_20:
    if ((v3 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_stallscoreAtStudyEnd = *(from + 17);
  *&self->_has |= 0x4000u;
  v3 = *(from + 28);
  if ((v3 & 4) == 0)
  {
LABEL_21:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_impactedServersAtStudyEnd = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 28);
  if ((v3 & 0x100) == 0)
  {
LABEL_22:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_netscoreHealthAfterDecision = *(from + 11);
  *&self->_has |= 0x100u;
  v3 = *(from + 28);
  if ((v3 & 0x10000) == 0)
  {
LABEL_23:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_stallscoreHealthAfterDecision = *(from + 19);
  *&self->_has |= 0x10000u;
  v3 = *(from + 28);
  if ((v3 & 0x10) == 0)
  {
LABEL_24:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_lanHealthAfterDecision = *(from + 7);
  *&self->_has |= 0x10u;
  v3 = *(from + 28);
  if ((v3 & 0x200000) == 0)
  {
LABEL_25:
    if ((v3 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_wanHealthAfterDecision = *(from + 24);
  *&self->_has |= 0x200000u;
  v3 = *(from + 28);
  if ((v3 & 1) == 0)
  {
LABEL_26:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_symptomsDnsTimeSincePreviousTriggerMinutes = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 28);
  if ((v3 & 0x800000) == 0)
  {
LABEL_27:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_dpsNotificationReceivedDuringStudy = *(from + 104);
  *&self->_has |= 0x800000u;
  v3 = *(from + 28);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v3 & 0x2000000) == 0)
    {
      return;
    }

LABEL_57:
    self->_isPingEnqueueFailing = *(from + 106);
    *&self->_has |= 0x2000000u;
    return;
  }

LABEL_56:
  self->_slowWiFiNotificationReceivedDuringStudy = *(from + 107);
  *&self->_has |= 0x4000000u;
  if ((*(from + 28) & 0x2000000) != 0)
  {
    goto LABEL_57;
  }
}

@end