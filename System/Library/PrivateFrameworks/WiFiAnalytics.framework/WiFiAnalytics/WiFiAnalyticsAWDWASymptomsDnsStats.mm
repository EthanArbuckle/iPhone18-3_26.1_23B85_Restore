@interface WiFiAnalyticsAWDWASymptomsDnsStats
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

@implementation WiFiAnalyticsAWDWASymptomsDnsStats

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
  typeCopy = type;
  if ([typeCopy isEqualToString:@"kDnsServerConfigTypeNone"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"kDnsServerConfigTypeAutomatic"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"kDnsServerConfigTypeManual"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  recommendationCopy = recommendation;
  if ([recommendationCopy isEqualToString:@"kSymptomsDnsRecoveryTypeNone"])
  {
    v4 = 0;
  }

  else if ([recommendationCopy isEqualToString:@"kSymptomsDnsRecoveryTypeReset"])
  {
    v4 = 1;
  }

  else if ([recommendationCopy isEqualToString:@"kSymptomsDnsRecoveryTypeReassoc"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"kSymptomsDnsNotSuppressed"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"kSymptomsDnsBudgetThresholdReached"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"kSymptomsDnsSymptomsConditionsRecovered"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"kSymptomsDnsPeerDiagnosticsStudy"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"kSymptomsDnsAWDLActivitySuspected"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"kSymptomsDnsCriticalAppInUse"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"kSymptomsDnsWiFiDisassociatedDuringStudy"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"kSymptomsDnsAverageCcaAboveThreshold"])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:@"kSymptomsDnsWiFiInterfaceNotPrimary"])
  {
    v4 = 8;
  }

  else if ([reasonCopy isEqualToString:@"kSymptomsDnsWiFiNetworkIsCaptive"])
  {
    v4 = 9;
  }

  else if ([reasonCopy isEqualToString:@"kSymptomsDnsServerConfigurationInvalid"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWASymptomsDnsStats;
  v4 = [(WiFiAnalyticsAWDWASymptomsDnsStats *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWASymptomsDnsStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_totalDnsServers];
    [dictionary setObject:v8 forKey:@"totalDnsServers"];

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

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numIpv4DnsServers];
  [dictionary setObject:v9 forKey:@"numIpv4DnsServers"];

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
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numIpv6DnsServers];
  [dictionary setObject:v10 forKey:@"numIpv6DnsServers"];

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
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numLocalDnsServers];
  [dictionary setObject:v11 forKey:@"numLocalDnsServers"];

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
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numRemoteDnsServers];
  [dictionary setObject:v12 forKey:@"numRemoteDnsServers"];

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
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_configType];
  }

  else
  {
    v14 = off_1E830E4E8[configType];
  }

  [dictionary setObject:v14 forKey:@"configType"];

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
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_netscoreAtStudyStart];
  [dictionary setObject:v15 forKey:@"netscoreAtStudyStart"];

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
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_stallscoreAtStudyStart];
  [dictionary setObject:v16 forKey:@"stallscoreAtStudyStart"];

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
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_impactedServersAtStudyStart];
  [dictionary setObject:v17 forKey:@"impactedServersAtStudyStart"];

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
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_netscoreHealthBeforeDecision];
  [dictionary setObject:v18 forKey:@"netscoreHealthBeforeDecision"];

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
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_stallscoreHealthBeforeDecision];
  [dictionary setObject:v19 forKey:@"stallscoreHealthBeforeDecision"];

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
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_lanHealthBeforeDecision];
  [dictionary setObject:v20 forKey:@"lanHealthBeforeDecision"];

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
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_wanHealthBeforeDecision];
  [dictionary setObject:v21 forKey:@"wanHealthBeforeDecision"];

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
  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCaptiveServerIPResolved];
  [dictionary setObject:v22 forKey:@"isCaptiveServerIPResolved"];

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
  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_symptomsDnsscreenStateOn];
  [dictionary setObject:v23 forKey:@"symptomsDnsscreenStateOn"];

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
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_symptomsDnsRecommendation];
  }

  else
  {
    v25 = off_1E830E500[symptomsDnsRecommendation];
  }

  [dictionary setObject:v25 forKey:@"symptomsDnsRecommendation"];

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
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_suppressedReason];
  }

  else
  {
    v27 = off_1E830E518[suppressedReason];
  }

  [dictionary setObject:v27 forKey:@"suppressedReason"];

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
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_netscoreAtStudyEnd];
  [dictionary setObject:v28 forKey:@"netscoreAtStudyEnd"];

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
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_stallscoreAtStudyEnd];
  [dictionary setObject:v29 forKey:@"stallscoreAtStudyEnd"];

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
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_impactedServersAtStudyEnd];
  [dictionary setObject:v30 forKey:@"impactedServersAtStudyEnd"];

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
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_netscoreHealthAfterDecision];
  [dictionary setObject:v31 forKey:@"netscoreHealthAfterDecision"];

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
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_stallscoreHealthAfterDecision];
  [dictionary setObject:v32 forKey:@"stallscoreHealthAfterDecision"];

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
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_lanHealthAfterDecision];
  [dictionary setObject:v33 forKey:@"lanHealthAfterDecision"];

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
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_wanHealthAfterDecision];
  [dictionary setObject:v34 forKey:@"wanHealthAfterDecision"];

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
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_symptomsDnsTimeSincePreviousTriggerMinutes];
  [dictionary setObject:v35 forKey:@"symptomsDnsTimeSincePreviousTriggerMinutes"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_27:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_66:
    v37 = [MEMORY[0x1E696AD98] numberWithBool:self->_slowWiFiNotificationReceivedDuringStudy];
    [dictionary setObject:v37 forKey:@"slowWiFiNotificationReceivedDuringStudy"];

    if ((*&self->_has & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_65:
  v36 = [MEMORY[0x1E696AD98] numberWithBool:self->_dpsNotificationReceivedDuringStudy];
  [dictionary setObject:v36 forKey:@"dpsNotificationReceivedDuringStudy"];

  has = self->_has;
  if ((*&has & 0x4000000) != 0)
  {
    goto LABEL_66;
  }

LABEL_28:
  if ((*&has & 0x2000000) != 0)
  {
LABEL_29:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPingEnqueueFailing];
    [dictionary setObject:v5 forKey:@"isPingEnqueueFailing"];
  }

LABEL_30:
  v6 = dictionary;

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

      goto LABEL_35;
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

    goto LABEL_36;
  }

LABEL_35:
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

    goto LABEL_37;
  }

LABEL_36:
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

    goto LABEL_38;
  }

LABEL_37:
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

    goto LABEL_39;
  }

LABEL_38:
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

    goto LABEL_40;
  }

LABEL_39:
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

    goto LABEL_41;
  }

LABEL_40:
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

    goto LABEL_42;
  }

LABEL_41:
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

    goto LABEL_43;
  }

LABEL_42:
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

    goto LABEL_44;
  }

LABEL_43:
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

    goto LABEL_45;
  }

LABEL_44:
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

    goto LABEL_46;
  }

LABEL_45:
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

    goto LABEL_47;
  }

LABEL_46:
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

    goto LABEL_48;
  }

LABEL_47:
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

    goto LABEL_49;
  }

LABEL_48:
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

    goto LABEL_50;
  }

LABEL_49:
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

    goto LABEL_51;
  }

LABEL_50:
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

    goto LABEL_52;
  }

LABEL_51:
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

    goto LABEL_53;
  }

LABEL_52:
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

    goto LABEL_54;
  }

LABEL_53:
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

    goto LABEL_55;
  }

LABEL_54:
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

    goto LABEL_56;
  }

LABEL_55:
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

    goto LABEL_57;
  }

LABEL_56:
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

    goto LABEL_58;
  }

LABEL_57:
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

    goto LABEL_59;
  }

LABEL_58:
  dpsNotificationReceivedDuringStudy = self->_dpsNotificationReceivedDuringStudy;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_59:
  slowWiFiNotificationReceivedDuringStudy = self->_slowWiFiNotificationReceivedDuringStudy;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_29:
    isPingEnqueueFailing = self->_isPingEnqueueFailing;
    PBDataWriterWriteBOOLField();
  }

LABEL_30:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x100000) != 0)
  {
    toCopy[23] = self->_totalDnsServers;
    toCopy[28] |= 0x100000u;
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_3:
      if ((*&has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  toCopy[13] = self->_numIpv4DnsServers;
  toCopy[28] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  toCopy[14] = self->_numIpv6DnsServers;
  toCopy[28] |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  toCopy[15] = self->_numLocalDnsServers;
  toCopy[28] |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  toCopy[16] = self->_numRemoteDnsServers;
  toCopy[28] |= 0x2000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_7:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  toCopy[4] = self->_configType;
  toCopy[28] |= 2u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  toCopy[10] = self->_netscoreAtStudyStart;
  toCopy[28] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  toCopy[18] = self->_stallscoreAtStudyStart;
  toCopy[28] |= 0x8000u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  toCopy[6] = self->_impactedServersAtStudyStart;
  toCopy[28] |= 8u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  toCopy[12] = self->_netscoreHealthBeforeDecision;
  toCopy[28] |= 0x200u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_12:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  toCopy[20] = self->_stallscoreHealthBeforeDecision;
  toCopy[28] |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  toCopy[8] = self->_lanHealthBeforeDecision;
  toCopy[28] |= 0x20u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  toCopy[25] = self->_wanHealthBeforeDecision;
  toCopy[28] |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 105) = self->_isCaptiveServerIPResolved;
  toCopy[28] |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 108) = self->_symptomsDnsscreenStateOn;
  toCopy[28] |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  toCopy[22] = self->_symptomsDnsRecommendation;
  toCopy[28] |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  toCopy[21] = self->_suppressedReason;
  toCopy[28] |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  toCopy[9] = self->_netscoreAtStudyEnd;
  toCopy[28] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  toCopy[17] = self->_stallscoreAtStudyEnd;
  toCopy[28] |= 0x4000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_21:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  toCopy[5] = self->_impactedServersAtStudyEnd;
  toCopy[28] |= 4u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  toCopy[11] = self->_netscoreHealthAfterDecision;
  toCopy[28] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  toCopy[19] = self->_stallscoreHealthAfterDecision;
  toCopy[28] |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_24:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  toCopy[7] = self->_lanHealthAfterDecision;
  toCopy[28] |= 0x10u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_25:
    if ((*&has & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  toCopy[24] = self->_wanHealthAfterDecision;
  toCopy[28] |= 0x200000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_26:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(toCopy + 1) = self->_symptomsDnsTimeSincePreviousTriggerMinutes;
  toCopy[28] |= 1u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_27:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(toCopy + 104) = self->_dpsNotificationReceivedDuringStudy;
  toCopy[28] |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_28:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_59:
  *(toCopy + 107) = self->_slowWiFiNotificationReceivedDuringStudy;
  toCopy[28] |= 0x4000000u;
  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_29:
    *(toCopy + 106) = self->_isPingEnqueueFailing;
    toCopy[28] |= 0x2000000u;
  }

LABEL_30:
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
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_152;
  }

  has = self->_has;
  v6 = *(equalCopy + 28);
  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_totalDnsServers != *(equalCopy + 23))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_numIpv4DnsServers != *(equalCopy + 13))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_numIpv6DnsServers != *(equalCopy + 14))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_numLocalDnsServers != *(equalCopy + 15))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_numRemoteDnsServers != *(equalCopy + 16))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_configType != *(equalCopy + 4))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_netscoreAtStudyStart != *(equalCopy + 10))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_stallscoreAtStudyStart != *(equalCopy + 18))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_impactedServersAtStudyStart != *(equalCopy + 6))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_netscoreHealthBeforeDecision != *(equalCopy + 12))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_stallscoreHealthBeforeDecision != *(equalCopy + 20))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_lanHealthBeforeDecision != *(equalCopy + 8))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_wanHealthBeforeDecision != *(equalCopy + 25))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_152;
    }

    v7 = *(equalCopy + 105);
    if (self->_isCaptiveServerIPResolved)
    {
      if ((*(equalCopy + 105) & 1) == 0)
      {
        goto LABEL_152;
      }
    }

    else if (*(equalCopy + 105))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_152;
    }

    v8 = *(equalCopy + 108);
    if (self->_symptomsDnsscreenStateOn)
    {
      if ((*(equalCopy + 108) & 1) == 0)
      {
        goto LABEL_152;
      }
    }

    else if (*(equalCopy + 108))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_symptomsDnsRecommendation != *(equalCopy + 22))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_suppressedReason != *(equalCopy + 21))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_netscoreAtStudyEnd != *(equalCopy + 9))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_stallscoreAtStudyEnd != *(equalCopy + 17))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_impactedServersAtStudyEnd != *(equalCopy + 5))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_netscoreHealthAfterDecision != *(equalCopy + 11))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_stallscoreHealthAfterDecision != *(equalCopy + 19))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_lanHealthAfterDecision != *(equalCopy + 7))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_wanHealthAfterDecision != *(equalCopy + 24))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_152;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_symptomsDnsTimeSincePreviousTriggerMinutes != *(equalCopy + 1))
    {
      goto LABEL_152;
    }
  }

  else if (v6)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_152;
    }

    v9 = *(equalCopy + 104);
    if (self->_dpsNotificationReceivedDuringStudy)
    {
      if ((*(equalCopy + 104) & 1) == 0)
      {
        goto LABEL_152;
      }
    }

    else if (*(equalCopy + 104))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_152;
    }

    v10 = *(equalCopy + 107);
    if (self->_slowWiFiNotificationReceivedDuringStudy)
    {
      if ((*(equalCopy + 107) & 1) == 0)
      {
        goto LABEL_152;
      }
    }

    else if (*(equalCopy + 107))
    {
      goto LABEL_152;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_152;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) != 0)
    {
      if (self->_isPingEnqueueFailing)
      {
        if ((*(equalCopy + 106) & 1) == 0)
        {
          goto LABEL_152;
        }
      }

      else if (*(equalCopy + 106))
      {
        goto LABEL_152;
      }

      v11 = 1;
      goto LABEL_153;
    }

LABEL_152:
    v11 = 0;
    goto LABEL_153;
  }

  v11 = (v6 & 0x2000000) == 0;
LABEL_153:

  return v11;
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
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x100000) != 0)
  {
    self->_totalDnsServers = *(fromCopy + 23);
    *&self->_has |= 0x100000u;
    v5 = *(fromCopy + 28);
    if ((v5 & 0x400) == 0)
    {
LABEL_3:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_3;
  }

  self->_numIpv4DnsServers = *(fromCopy + 13);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_4:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_numIpv6DnsServers = *(fromCopy + 14);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x1000) == 0)
  {
LABEL_5:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_numLocalDnsServers = *(fromCopy + 15);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x2000) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_numRemoteDnsServers = *(fromCopy + 16);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 28);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_configType = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_netscoreAtStudyStart = *(fromCopy + 10);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_stallscoreAtStudyStart = *(fromCopy + 18);
  *&self->_has |= 0x8000u;
  v5 = *(fromCopy + 28);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_impactedServersAtStudyStart = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_netscoreHealthBeforeDecision = *(fromCopy + 12);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x20000) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_stallscoreHealthBeforeDecision = *(fromCopy + 20);
  *&self->_has |= 0x20000u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_13:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_lanHealthBeforeDecision = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x400000) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_wanHealthBeforeDecision = *(fromCopy + 25);
  *&self->_has |= 0x400000u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_isCaptiveServerIPResolved = *(fromCopy + 105);
  *&self->_has |= 0x1000000u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_symptomsDnsscreenStateOn = *(fromCopy + 108);
  *&self->_has |= 0x8000000u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x80000) == 0)
  {
LABEL_17:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_symptomsDnsRecommendation = *(fromCopy + 22);
  *&self->_has |= 0x80000u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x40000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_suppressedReason = *(fromCopy + 21);
  *&self->_has |= 0x40000u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x40) == 0)
  {
LABEL_19:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_netscoreAtStudyEnd = *(fromCopy + 9);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x4000) == 0)
  {
LABEL_20:
    if ((v5 & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_stallscoreAtStudyEnd = *(fromCopy + 17);
  *&self->_has |= 0x4000u;
  v5 = *(fromCopy + 28);
  if ((v5 & 4) == 0)
  {
LABEL_21:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_impactedServersAtStudyEnd = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x100) == 0)
  {
LABEL_22:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_netscoreHealthAfterDecision = *(fromCopy + 11);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x10000) == 0)
  {
LABEL_23:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_stallscoreHealthAfterDecision = *(fromCopy + 19);
  *&self->_has |= 0x10000u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_24:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_lanHealthAfterDecision = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x200000) == 0)
  {
LABEL_25:
    if ((v5 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_wanHealthAfterDecision = *(fromCopy + 24);
  *&self->_has |= 0x200000u;
  v5 = *(fromCopy + 28);
  if ((v5 & 1) == 0)
  {
LABEL_26:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_symptomsDnsTimeSincePreviousTriggerMinutes = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x800000) == 0)
  {
LABEL_27:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_dpsNotificationReceivedDuringStudy = *(fromCopy + 104);
  *&self->_has |= 0x800000u;
  v5 = *(fromCopy + 28);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_59:
  self->_slowWiFiNotificationReceivedDuringStudy = *(fromCopy + 107);
  *&self->_has |= 0x4000000u;
  if ((*(fromCopy + 28) & 0x2000000) != 0)
  {
LABEL_29:
    self->_isPingEnqueueFailing = *(fromCopy + 106);
    *&self->_has |= 0x2000000u;
  }

LABEL_30:
}

@end