@interface AWDWASymptomsDnsStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConfigType:(id)a3;
- (int)StringAsSuppressedReason:(id)a3;
- (int)StringAsSymptomsDnsRecommendation:(id)a3;
- (int)configType;
- (int)suppressedReason;
- (int)symptomsDnsRecommendation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConfigType:(BOOL)a3;
- (void)setHasDpsNotificationReceivedDuringStudy:(BOOL)a3;
- (void)setHasImpactedServersAtStudyEnd:(BOOL)a3;
- (void)setHasImpactedServersAtStudyStart:(BOOL)a3;
- (void)setHasIsCaptiveServerIPResolved:(BOOL)a3;
- (void)setHasIsPingEnqueueFailing:(BOOL)a3;
- (void)setHasLanHealthAfterDecision:(BOOL)a3;
- (void)setHasLanHealthBeforeDecision:(BOOL)a3;
- (void)setHasNetscoreAtStudyEnd:(BOOL)a3;
- (void)setHasNetscoreAtStudyStart:(BOOL)a3;
- (void)setHasNetscoreHealthAfterDecision:(BOOL)a3;
- (void)setHasNetscoreHealthBeforeDecision:(BOOL)a3;
- (void)setHasNumIpv4DnsServers:(BOOL)a3;
- (void)setHasNumIpv6DnsServers:(BOOL)a3;
- (void)setHasNumLocalDnsServers:(BOOL)a3;
- (void)setHasNumRemoteDnsServers:(BOOL)a3;
- (void)setHasSlowWiFiNotificationReceivedDuringStudy:(BOOL)a3;
- (void)setHasStallscoreAtStudyEnd:(BOOL)a3;
- (void)setHasStallscoreAtStudyStart:(BOOL)a3;
- (void)setHasStallscoreHealthAfterDecision:(BOOL)a3;
- (void)setHasStallscoreHealthBeforeDecision:(BOOL)a3;
- (void)setHasSuppressedReason:(BOOL)a3;
- (void)setHasSymptomsDnsRecommendation:(BOOL)a3;
- (void)setHasSymptomsDnsscreenStateOn:(BOOL)a3;
- (void)setHasTotalDnsServers:(BOOL)a3;
- (void)setHasWanHealthAfterDecision:(BOOL)a3;
- (void)setHasWanHealthBeforeDecision:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWASymptomsDnsStats

- (void)setHasTotalDnsServers:(BOOL)a3
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

- (void)setHasNumIpv4DnsServers:(BOOL)a3
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

- (void)setHasNumIpv6DnsServers:(BOOL)a3
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

- (void)setHasNumLocalDnsServers:(BOOL)a3
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

- (void)setHasNumRemoteDnsServers:(BOOL)a3
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

- (void)setHasConfigType:(BOOL)a3
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

- (int)StringAsConfigType:(id)a3
{
  if ([a3 isEqualToString:@"kDnsServerConfigTypeNone"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"kDnsServerConfigTypeAutomatic"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"kDnsServerConfigTypeManual"])
  {
    return 2;
  }

  return 0;
}

- (void)setHasNetscoreAtStudyStart:(BOOL)a3
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

- (void)setHasStallscoreAtStudyStart:(BOOL)a3
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

- (void)setHasImpactedServersAtStudyStart:(BOOL)a3
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

- (void)setHasNetscoreHealthBeforeDecision:(BOOL)a3
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

- (void)setHasStallscoreHealthBeforeDecision:(BOOL)a3
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

- (void)setHasLanHealthBeforeDecision:(BOOL)a3
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

- (void)setHasWanHealthBeforeDecision:(BOOL)a3
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

- (void)setHasIsCaptiveServerIPResolved:(BOOL)a3
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

- (void)setHasSymptomsDnsscreenStateOn:(BOOL)a3
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

- (void)setHasSymptomsDnsRecommendation:(BOOL)a3
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

- (int)StringAsSymptomsDnsRecommendation:(id)a3
{
  if ([a3 isEqualToString:@"kSymptomsDnsRecoveryTypeNone"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"kSymptomsDnsRecoveryTypeReset"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"kSymptomsDnsRecoveryTypeReassoc"])
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

- (void)setHasSuppressedReason:(BOOL)a3
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

- (int)StringAsSuppressedReason:(id)a3
{
  if ([a3 isEqualToString:@"kSymptomsDnsNotSuppressed"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"kSymptomsDnsBudgetThresholdReached"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"kSymptomsDnsSymptomsConditionsRecovered"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"kSymptomsDnsPeerDiagnosticsStudy"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"kSymptomsDnsAWDLActivitySuspected"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"kSymptomsDnsCriticalAppInUse"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"kSymptomsDnsWiFiDisassociatedDuringStudy"])
  {
    return 6;
  }

  if ([a3 isEqualToString:@"kSymptomsDnsAverageCcaAboveThreshold"])
  {
    return 7;
  }

  if ([a3 isEqualToString:@"kSymptomsDnsWiFiInterfaceNotPrimary"])
  {
    return 8;
  }

  if ([a3 isEqualToString:@"kSymptomsDnsWiFiNetworkIsCaptive"])
  {
    return 9;
  }

  if ([a3 isEqualToString:@"kSymptomsDnsServerConfigurationInvalid"])
  {
    return 10;
  }

  return 0;
}

- (void)setHasNetscoreAtStudyEnd:(BOOL)a3
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

- (void)setHasStallscoreAtStudyEnd:(BOOL)a3
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

- (void)setHasImpactedServersAtStudyEnd:(BOOL)a3
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

- (void)setHasNetscoreHealthAfterDecision:(BOOL)a3
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

- (void)setHasStallscoreHealthAfterDecision:(BOOL)a3
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

- (void)setHasLanHealthAfterDecision:(BOOL)a3
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

- (void)setHasWanHealthAfterDecision:(BOOL)a3
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

- (void)setHasDpsNotificationReceivedDuringStudy:(BOOL)a3
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

- (void)setHasSlowWiFiNotificationReceivedDuringStudy:(BOOL)a3
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

- (void)setHasIsPingEnqueueFailing:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWASymptomsDnsStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWASymptomsDnsStats description](&v3, sel_description), -[AWDWASymptomsDnsStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_totalDnsServers), @"totalDnsServers"}];
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numIpv4DnsServers), @"numIpv4DnsServers"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numIpv6DnsServers), @"numIpv6DnsServers"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numLocalDnsServers), @"numLocalDnsServers"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numRemoteDnsServers), @"numRemoteDnsServers"}];
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

  [v3 setObject:v7 forKey:@"configType"];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_netscoreAtStudyStart), @"netscoreAtStudyStart"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stallscoreAtStudyStart), @"stallscoreAtStudyStart"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_impactedServersAtStudyStart), @"impactedServersAtStudyStart"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_netscoreHealthBeforeDecision), @"netscoreHealthBeforeDecision"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stallscoreHealthBeforeDecision), @"stallscoreHealthBeforeDecision"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lanHealthBeforeDecision), @"lanHealthBeforeDecision"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wanHealthBeforeDecision), @"wanHealthBeforeDecision"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isCaptiveServerIPResolved), @"isCaptiveServerIPResolved"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_symptomsDnsscreenStateOn), @"symptomsDnsscreenStateOn"}];
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

  [v3 setObject:v9 forKey:@"symptomsDnsRecommendation"];
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

  [v3 setObject:v11 forKey:@"suppressedReason"];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_netscoreAtStudyEnd), @"netscoreAtStudyEnd"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stallscoreAtStudyEnd), @"stallscoreAtStudyEnd"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_impactedServersAtStudyEnd), @"impactedServersAtStudyEnd"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_netscoreHealthAfterDecision), @"netscoreHealthAfterDecision"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stallscoreHealthAfterDecision), @"stallscoreHealthAfterDecision"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lanHealthAfterDecision), @"lanHealthAfterDecision"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wanHealthAfterDecision), @"wanHealthAfterDecision"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_symptomsDnsTimeSincePreviousTriggerMinutes), @"symptomsDnsTimeSincePreviousTriggerMinutes"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_27:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_66:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_slowWiFiNotificationReceivedDuringStudy), @"slowWiFiNotificationReceivedDuringStudy"}];
    if ((*&self->_has & 0x2000000) == 0)
    {
      return v3;
    }

    goto LABEL_29;
  }

LABEL_65:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_dpsNotificationReceivedDuringStudy), @"dpsNotificationReceivedDuringStudy"}];
  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    goto LABEL_66;
  }

LABEL_28:
  if ((*&has & 0x2000000) != 0)
  {
LABEL_29:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isPingEnqueueFailing), @"isPingEnqueueFailing"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    *(a3 + 23) = self->_totalDnsServers;
    *(a3 + 28) |= 0x100000u;
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

  *(a3 + 13) = self->_numIpv4DnsServers;
  *(a3 + 28) |= 0x400u;
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
  *(a3 + 14) = self->_numIpv6DnsServers;
  *(a3 + 28) |= 0x800u;
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
  *(a3 + 15) = self->_numLocalDnsServers;
  *(a3 + 28) |= 0x1000u;
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
  *(a3 + 16) = self->_numRemoteDnsServers;
  *(a3 + 28) |= 0x2000u;
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
  *(a3 + 4) = self->_configType;
  *(a3 + 28) |= 2u;
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
  *(a3 + 10) = self->_netscoreAtStudyStart;
  *(a3 + 28) |= 0x80u;
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
  *(a3 + 18) = self->_stallscoreAtStudyStart;
  *(a3 + 28) |= 0x8000u;
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
  *(a3 + 6) = self->_impactedServersAtStudyStart;
  *(a3 + 28) |= 8u;
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
  *(a3 + 12) = self->_netscoreHealthBeforeDecision;
  *(a3 + 28) |= 0x200u;
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
  *(a3 + 20) = self->_stallscoreHealthBeforeDecision;
  *(a3 + 28) |= 0x20000u;
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
  *(a3 + 8) = self->_lanHealthBeforeDecision;
  *(a3 + 28) |= 0x20u;
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
  *(a3 + 25) = self->_wanHealthBeforeDecision;
  *(a3 + 28) |= 0x400000u;
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
  *(a3 + 105) = self->_isCaptiveServerIPResolved;
  *(a3 + 28) |= 0x1000000u;
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
  *(a3 + 108) = self->_symptomsDnsscreenStateOn;
  *(a3 + 28) |= 0x8000000u;
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
  *(a3 + 22) = self->_symptomsDnsRecommendation;
  *(a3 + 28) |= 0x80000u;
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
  *(a3 + 21) = self->_suppressedReason;
  *(a3 + 28) |= 0x40000u;
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
  *(a3 + 9) = self->_netscoreAtStudyEnd;
  *(a3 + 28) |= 0x40u;
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
  *(a3 + 17) = self->_stallscoreAtStudyEnd;
  *(a3 + 28) |= 0x4000u;
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
  *(a3 + 5) = self->_impactedServersAtStudyEnd;
  *(a3 + 28) |= 4u;
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
  *(a3 + 11) = self->_netscoreHealthAfterDecision;
  *(a3 + 28) |= 0x100u;
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
  *(a3 + 19) = self->_stallscoreHealthAfterDecision;
  *(a3 + 28) |= 0x10000u;
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
  *(a3 + 7) = self->_lanHealthAfterDecision;
  *(a3 + 28) |= 0x10u;
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
  *(a3 + 24) = self->_wanHealthAfterDecision;
  *(a3 + 28) |= 0x200000u;
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
  *(a3 + 1) = self->_symptomsDnsTimeSincePreviousTriggerMinutes;
  *(a3 + 28) |= 1u;
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
  *(a3 + 104) = self->_dpsNotificationReceivedDuringStudy;
  *(a3 + 28) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x2000000) == 0)
    {
      return;
    }

LABEL_57:
    *(a3 + 106) = self->_isPingEnqueueFailing;
    *(a3 + 28) |= 0x2000000u;
    return;
  }

LABEL_56:
  *(a3 + 107) = self->_slowWiFiNotificationReceivedDuringStudy;
  *(a3 + 28) |= 0x4000000u;
  if ((*&self->_has & 0x2000000) != 0)
  {
    goto LABEL_57;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 28);
  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_totalDnsServers != *(a3 + 23))
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
    if ((v7 & 0x400) == 0 || self->_numIpv4DnsServers != *(a3 + 13))
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
    if ((v7 & 0x800) == 0 || self->_numIpv6DnsServers != *(a3 + 14))
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
    if ((v7 & 0x1000) == 0 || self->_numLocalDnsServers != *(a3 + 15))
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
    if ((v7 & 0x2000) == 0 || self->_numRemoteDnsServers != *(a3 + 16))
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
    if ((v7 & 2) == 0 || self->_configType != *(a3 + 4))
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
    if ((v7 & 0x80) == 0 || self->_netscoreAtStudyStart != *(a3 + 10))
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
    if ((v7 & 0x8000) == 0 || self->_stallscoreAtStudyStart != *(a3 + 18))
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
    if ((v7 & 8) == 0 || self->_impactedServersAtStudyStart != *(a3 + 6))
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
    if ((v7 & 0x200) == 0 || self->_netscoreHealthBeforeDecision != *(a3 + 12))
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
    if ((v7 & 0x20000) == 0 || self->_stallscoreHealthBeforeDecision != *(a3 + 20))
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
    if ((v7 & 0x20) == 0 || self->_lanHealthBeforeDecision != *(a3 + 8))
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
    if ((v7 & 0x400000) == 0 || self->_wanHealthBeforeDecision != *(a3 + 25))
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

    v8 = *(a3 + 105);
    if (self->_isCaptiveServerIPResolved)
    {
      if ((*(a3 + 105) & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    else if (*(a3 + 105))
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

    v9 = *(a3 + 108);
    if (self->_symptomsDnsscreenStateOn)
    {
      if ((*(a3 + 108) & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    else if (*(a3 + 108))
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
    if ((v7 & 0x80000) == 0 || self->_symptomsDnsRecommendation != *(a3 + 22))
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
    if ((v7 & 0x40000) == 0 || self->_suppressedReason != *(a3 + 21))
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
    if ((v7 & 0x40) == 0 || self->_netscoreAtStudyEnd != *(a3 + 9))
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
    if ((v7 & 0x4000) == 0 || self->_stallscoreAtStudyEnd != *(a3 + 17))
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
    if ((v7 & 4) == 0 || self->_impactedServersAtStudyEnd != *(a3 + 5))
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
    if ((v7 & 0x100) == 0 || self->_netscoreHealthAfterDecision != *(a3 + 11))
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
    if ((v7 & 0x10000) == 0 || self->_stallscoreHealthAfterDecision != *(a3 + 19))
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
    if ((v7 & 0x10) == 0 || self->_lanHealthAfterDecision != *(a3 + 7))
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
    if ((v7 & 0x200000) == 0 || self->_wanHealthAfterDecision != *(a3 + 24))
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
    if ((v7 & 1) == 0 || self->_symptomsDnsTimeSincePreviousTriggerMinutes != *(a3 + 1))
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

    v10 = *(a3 + 104);
    if (self->_dpsNotificationReceivedDuringStudy)
    {
      if ((*(a3 + 104) & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    else if (*(a3 + 104))
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
      v11 = *(a3 + 107);
      if (self->_slowWiFiNotificationReceivedDuringStudy)
      {
        if ((*(a3 + 107) & 1) == 0)
        {
          goto LABEL_151;
        }

        goto LABEL_149;
      }

      if ((*(a3 + 107) & 1) == 0)
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
      if ((*(a3 + 106) & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    else if (*(a3 + 106))
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

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 28);
  if ((v3 & 0x100000) != 0)
  {
    self->_totalDnsServers = *(a3 + 23);
    *&self->_has |= 0x100000u;
    v3 = *(a3 + 28);
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

  self->_numIpv4DnsServers = *(a3 + 13);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 28);
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
  self->_numIpv6DnsServers = *(a3 + 14);
  *&self->_has |= 0x800u;
  v3 = *(a3 + 28);
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
  self->_numLocalDnsServers = *(a3 + 15);
  *&self->_has |= 0x1000u;
  v3 = *(a3 + 28);
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
  self->_numRemoteDnsServers = *(a3 + 16);
  *&self->_has |= 0x2000u;
  v3 = *(a3 + 28);
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
  self->_configType = *(a3 + 4);
  *&self->_has |= 2u;
  v3 = *(a3 + 28);
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
  self->_netscoreAtStudyStart = *(a3 + 10);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 28);
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
  self->_stallscoreAtStudyStart = *(a3 + 18);
  *&self->_has |= 0x8000u;
  v3 = *(a3 + 28);
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
  self->_impactedServersAtStudyStart = *(a3 + 6);
  *&self->_has |= 8u;
  v3 = *(a3 + 28);
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
  self->_netscoreHealthBeforeDecision = *(a3 + 12);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 28);
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
  self->_stallscoreHealthBeforeDecision = *(a3 + 20);
  *&self->_has |= 0x20000u;
  v3 = *(a3 + 28);
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
  self->_lanHealthBeforeDecision = *(a3 + 8);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 28);
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
  self->_wanHealthBeforeDecision = *(a3 + 25);
  *&self->_has |= 0x400000u;
  v3 = *(a3 + 28);
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
  self->_isCaptiveServerIPResolved = *(a3 + 105);
  *&self->_has |= 0x1000000u;
  v3 = *(a3 + 28);
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
  self->_symptomsDnsscreenStateOn = *(a3 + 108);
  *&self->_has |= 0x8000000u;
  v3 = *(a3 + 28);
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
  self->_symptomsDnsRecommendation = *(a3 + 22);
  *&self->_has |= 0x80000u;
  v3 = *(a3 + 28);
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
  self->_suppressedReason = *(a3 + 21);
  *&self->_has |= 0x40000u;
  v3 = *(a3 + 28);
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
  self->_netscoreAtStudyEnd = *(a3 + 9);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 28);
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
  self->_stallscoreAtStudyEnd = *(a3 + 17);
  *&self->_has |= 0x4000u;
  v3 = *(a3 + 28);
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
  self->_impactedServersAtStudyEnd = *(a3 + 5);
  *&self->_has |= 4u;
  v3 = *(a3 + 28);
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
  self->_netscoreHealthAfterDecision = *(a3 + 11);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 28);
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
  self->_stallscoreHealthAfterDecision = *(a3 + 19);
  *&self->_has |= 0x10000u;
  v3 = *(a3 + 28);
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
  self->_lanHealthAfterDecision = *(a3 + 7);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 28);
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
  self->_wanHealthAfterDecision = *(a3 + 24);
  *&self->_has |= 0x200000u;
  v3 = *(a3 + 28);
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
  self->_symptomsDnsTimeSincePreviousTriggerMinutes = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 28);
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
  self->_dpsNotificationReceivedDuringStudy = *(a3 + 104);
  *&self->_has |= 0x800000u;
  v3 = *(a3 + 28);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v3 & 0x2000000) == 0)
    {
      return;
    }

LABEL_57:
    self->_isPingEnqueueFailing = *(a3 + 106);
    *&self->_has |= 0x2000000u;
    return;
  }

LABEL_56:
  self->_slowWiFiNotificationReceivedDuringStudy = *(a3 + 107);
  *&self->_has |= 0x4000000u;
  if ((*(a3 + 28) & 0x2000000) != 0)
  {
    goto LABEL_57;
  }
}

@end